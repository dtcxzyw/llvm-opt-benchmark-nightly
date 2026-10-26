Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/manager?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0_@print_chain:bb.a
bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.02430, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.02430
  store i8 33, ptr %i.h, align 1, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.1 = phi i64 [ %i.g, %bb.b ], [ 0, %.lr.ph ]   ; 3 uses
  %i.i = add i64 %.1, %i.f                        ; 3 uses
  %i.j = add i64 %i.i, -127
  %i.k = icmp ult i64 %i.j, -129
  br i1 %i.k, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.m = load ptr, ptr %0, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02529
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.o, i64 %i.f, i1 false)
  %i.p = add nuw i64 %.02529, 1                   ; 3 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !39
  %i.r = add i64 %i.q, -1
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c, %bb.a
  %.025.lcssa = phi i64 [ 0, %bb.a ], [ %.02529, %bb.c ], [ %i.p, %bb.d ]
  %.3 = phi i64 [ 0, %bb.a ], [ %.1, %bb.c ], [ %i.i, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.3
  store i8 0, ptr %i.t, align 1, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 127
  store i8 0, ptr %i.u, align 1, !tbaa !21
  %i.v = load i64, ptr %i.a, align 8, !tbaa !39
  %i.w = add i64 %i.v, -1
  %i.x = icmp ne i64 %.025.lcssa, %i.w
  %i.y = zext i1 %i.x to i32
  ret i32 %i.y
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @filelist(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc void @scanfile(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.stat, align 8               ; 9 uses
  %5 = alloca %struct.metachain, align 8          ; 16 uses
  %6 = alloca %struct.clamscan_cb_data, align 8   ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %struct.action_source, align 8      ; 10 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr null, ptr %i.c, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr null, ptr %i.d, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr null, ptr %i.e, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store ptr null, ptr %i.f, align 8, !tbaa !41
  call void @action_source_init(ptr noundef nonnull %7) #22
  %i.h = icmp eq ptr %2, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.201) #22 ; 0 uses
  br label %bb.by

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 @cli_realpath(ptr noundef nonnull %0, ptr noundef nonnull %i.f) #22
  %i.k = icmp eq i32 %i.j, 0
  %i.l = load ptr, ptr %i.f, align 8
  %spec.select = select i1 %i.k, ptr %i.l, ptr %0 ; 8 uses
  %i.m = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.202) #22 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp ne ptr %i.m, null
  %or.cond25 = and i1 %i.q, %i.p
  br i1 %or.cond25, label %.preheader186, label %.loopexit187

.preheader186:                                    ; preds = %bb.c, %bb.f
  %.0108 = phi ptr [ %i.y, %bb.f ], [ %i.m, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0108, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = call i32 @match_regex(ptr noundef %spec.select, ptr noundef %i.s) #22
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.preheader186
  %i.v = load i16, ptr @printinfected, align 2, !tbaa !47
  %.not165 = icmp eq i16 %i.v, 0
  br i1 %.not165, label %bb.e, label %bb.by

bb.e:                                             ; preds = %bb.d
  %i.w = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.203, ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.by

bb.f:                                             ; preds = %.preheader186
  %i.x = getelementptr inbounds nuw i8, ptr %.0108, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %.old24.not = icmp eq ptr %i.y, null
  br i1 %.old24.not, label %.loopexit187, label %.preheader186

.loopexit187:                                     ; preds = %bb.f, %bb.c
  %i.z = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.204) #22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !17
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit187, %bb.g
  %.1109189 = phi ptr [ %i.ah, %bb.g ], [ %i.z, %.loopexit187 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1109189, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = call i32 @match_regex(ptr noundef %spec.select, ptr noundef %i.ad) #22
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %.1109189, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 2 uses
  %.not134 = icmp eq ptr %i.ah, null
  br i1 %.not134, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.g
  %i.ai = load i16, ptr @printinfected, align 2, !tbaa !47
  %.not136 = icmp eq i16 %i.ai, 0
  br i1 %.not136, label %bb.h, label %bb.by

bb.h:                                             ; preds = %.critedge
  %i.aj = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.203, ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.by

.loopexit:                                        ; preds = %.lr.ph, %.loopexit187
  %i.ak = load ptr, ptr @action, align 8, !tbaa !68 ; 2 uses
  %.not137 = icmp eq ptr %i.ak, null
  br i1 %.not137, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.al = call i32 @stat(ptr noundef %spec.select, ptr noundef nonnull %4) #22
  %.not138 = icmp ne i32 %i.al, -1
  %.pre = load ptr, ptr @action, align 8, !tbaa !68
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.am = phi ptr [ %i.ak, %.loopexit ], [ %.pre, %bb.i ] ; 2 uses
  %.0100 = phi i1 [ false, %.loopexit ], [ %.not138, %bb.i ]
  %i.an = icmp ne ptr %i.am, null
  %i.ao = load i64, ptr @procdev, align 8
  %i.ap = icmp ne i64 %i.ao, 0
  %or.cond9 = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond9, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aq = call i32 @stat(ptr noundef %spec.select, ptr noundef nonnull %4) #22
  %.not139 = icmp eq i32 %i.aq, -1
  br i1 %.not139, label %thread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %4, align 8, !tbaa !28
  %i.as = load i64, ptr @procdev, align 8, !tbaa !27
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %bb.m, label %thread-pre-split

bb.m:                                             ; preds = %bb.l
  %i.au = load i16, ptr @printinfected, align 2, !tbaa !47
  %.not164 = icmp eq i16 %i.au, 0
  br i1 %.not164, label %bb.n, label %bb.by

bb.n:                                             ; preds = %bb.m
  %i.av = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.205, ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.by

thread-pre-split:                                 ; preds = %bb.k, %bb.l
  %.pr = load ptr, ptr @action, align 8, !tbaa !68
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split, %bb.j
  %i.aw = phi ptr [ %.pr, %thread-pre-split ], [ %i.am, %bb.j ]
  %.not140 = icmp ne ptr %i.aw, null              ; 10 uses
  br i1 %.not140, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ax = call i32 @action_source_open_path(ptr noundef nonnull %0, ptr noundef %spec.select, ptr noundef nonnull %7) #22 ; 2 uses
  %.not141 = icmp eq i32 %i.ax, 0
  br i1 %.not141, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = call ptr @cl_strerror(i32 noundef %i.ax) #22
  %i.az = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.206, ptr noundef nonnull %0, ptr noundef %i.ay) #22 ; 0 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  br label %bb.by

bb.r:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !71 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 168
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !72, !range !73, !noundef !74
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !75 ; 2 uses
  store i64 %i.bi, ptr %4, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !76
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !77
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.o
  %.0112 = phi i32 [ -1, %bb.o ], [ %i.bd, %bb.r ] ; 2 uses
  br i1 %.0100, label %._crit_edge193, label %bb.aa

._crit_edge193:                                   ; preds = %bb.s
  %.pre194 = load i64, ptr %4, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge193, %.thread
  %i.bm = phi i64 [ %i.bi, %.thread ], [ %.pre194, %._crit_edge193 ]
  %.0112178.a = phi i32 [ %i.bd, %.thread ], [ %.0112, %._crit_edge193 ] ; 5 uses
  %i.bn = load i64, ptr @procdev, align 8, !tbaa !27 ; 2 uses
  %.not142 = icmp ne i64 %i.bn, 0
  %i.bo = icmp eq i64 %i.bm, %i.bn
  %or.cond = select i1 %.not142, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bp = load i16, ptr @printinfected, align 2, !tbaa !47
  %.not163 = icmp eq i16 %i.bp, 0
  br i1 %.not163, label %bb.v, label %bb.by

bb.v:                                             ; preds = %bb.u
  %i.bq = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.205, ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.by

bb.w:                                             ; preds = %bb.t
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !77 ; 2 uses
  %.not143 = icmp eq i64 %i.bs, 0
  br i1 %.not143, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bt = load i16, ptr @printinfected, align 2, !tbaa !47
  %.not144 = icmp eq i16 %i.bt, 0
  br i1 %.not144, label %bb.y, label %bb.by

bb.y:                                             ; preds = %bb.x
  %i.bu = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.207, ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.by

bb.z:                                             ; preds = %bb.w
  %i.bv = load i64, ptr getelementptr inbounds nuw (i8, ptr @info, i64 32), align 8, !tbaa !45
  %i.bw = add i64 %i.bv, %i.bs
  store i64 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @info, i64 32), align 8, !tbaa !45
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s
  %.0112179 = phi i32 [ %.0112178.a, %bb.z ], [ %.0112, %bb.s ] ; 3 uses
  %i.bx = call i32 @geteuid() #22
  %i.by = icmp eq i32 %i.bx, 0
  %or.cond11 = or i1 %.not140, %i.by
  br i1 %or.cond11, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bz = call i32 @geteuid() #22
  %.not.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i, label %bb.ac, label %.split

bb.ac:                                            ; preds = %bb.ab
  %i.ca = call ptr @getpwnam(ptr noundef null)    ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %checkaccess.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = call i32 @fork() #22
  switch i32 %i.cc, label %checkaccess.exit [
    i32 -1, label %checkaccess.exit.thread
    i32 0, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !79
  %i.cf = call i32 @setgid(i32 noundef %i.ce) #22
  %.not12.i = icmp eq i32 %i.cf, 0
  br i1 %.not12.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.ch = load i32, ptr %i.cd, align 4, !tbaa !79
  %i.ci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.215, i32 noundef %i.ch) #27 ; 0 uses
  call void @exit(i32 noundef 0) #28
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !80
  %i.cl = call i32 @setuid(i32 noundef %i.ck) #22
  %.not13.i = icmp eq i32 %i.cl, 0
  br i1 %.not13.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.cn = load i32, ptr %i.cj, align 8, !tbaa !80
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.216, i32 noundef %i.cn) #27 ; 0 uses
  call void @exit(i32 noundef 0) #28
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cp = call i32 @access(ptr noundef readonly %spec.select, i32 noundef 4) #22
  %.not14.i = icmp eq i32 %i.cp, 0
  br i1 %.not14.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @exit(i32 noundef 0) #28
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @exit(i32 noundef 1) #29
  unreachable

.split:                                           ; preds = %bb.ab
  %i.cq = call i32 @access(ptr noundef readonly %spec.select, i32 noundef 4) #22
  %.not15.i = icmp eq i32 %i.cq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %.not15.i, label %bb.ao, label %bb.al

checkaccess.exit.thread:                          ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.al

checkaccess.exit:                                 ; preds = %bb.ad
  %i.cr = call i32 @wait(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !43
  %i.ct = and i32 %i.cs, 65407
  %or.cond.i = icmp eq i32 %i.ct, 256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %or.cond.i, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %.split, %checkaccess.exit.thread, %checkaccess.exit
  %i.cu = load i16, ptr @printinfected, align 2, !tbaa !47
  %.not146 = icmp eq i16 %i.cu, 0
  br i1 %.not146, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cv = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.208, ptr noundef nonnull %0) #22 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  br label %bb.by

bb.ao:                                            ; preds = %.split, %checkaccess.exit, %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.cy = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.63) #22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !17
  %.not147 = icmp eq i32 %i.da, 0
  br i1 %.not147, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.db = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #25 ; 3 uses
  store ptr %i.db, ptr %5, align 8, !tbaa !40
  %.not148 = icmp eq ptr %i.db, null
  br i1 %.not148, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dc = call noalias ptr @strdup(ptr noundef nonnull %0) #22 ; 2 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !41
  %.not149 = icmp eq ptr %i.dc, null
  br i1 %.not149, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dd = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.209) #22 ; 0 uses
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  br label %bb.by

bb.as:                                            ; preds = %bb.aq
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 1, ptr %i.dg, align 8, !tbaa !39
  br label %bb.at

bb.at:                                            ; preds = %bb.ap, %bb.as, %bb.ao
  %i.dh = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.188) #22 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !17
  %.not150 = icmp eq i32 %i.dj, 0
  br i1 %.not150, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !18
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0105 = phi ptr [ %i.dl, %bb.au ], [ null, %bb.at ] ; 3 uses
  %i.dm = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.189) #22 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !17
  %.not151 = icmp eq i32 %i.do, 0
  br i1 %.not151, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0107 = phi ptr [ %i.dq, %bb.aw ], [ null, %bb.av ]
  %i.dr = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.190) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !17
  %.not152 = icmp eq i32 %i.dt, 0
  %spec.select173 = select i1 %.not152, ptr null, ptr %i.d
  %i.du = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.191) #22 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !17
  %.not153 = icmp eq i32 %i.dw, 0
  br i1 %.not153, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !18
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0104 = phi ptr [ %i.dy, %bb.ay ], [ null, %bb.ax ]
  %i.dz = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.192) #22
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !17
  %.not154 = icmp eq i32 %i.eb, 0
  %spec.select174 = select i1 %.not154, ptr null, ptr %i.e
  %i.ec = call i32 (i32, ptr, ...) @logg(i32 noundef 2, ptr noundef nonnull @.str.193, ptr noundef nonnull %0) #22 ; 0 uses
  %i.ed = load ptr, ptr @action, align 8, !tbaa !68
  %.not155 = icmp eq ptr %i.ed, null
  br i1 %.not155, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.ee = call i32 (ptr, i32, ...) @open(ptr noundef %spec.select, i32 noundef 0) #22 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, -1
  br i1 %i.ef, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.eg = tail call ptr @__errno_location() #30
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !43
  %i.ei = call ptr @strerror(i32 noundef %i.eh) #22
  %i.ej = call i32 (i32, ptr, ...) @logg(i32 noundef 4, ptr noundef nonnull @.str.210, ptr noundef nonnull %0, ptr noundef %i.ei) #22 ; 0 uses
  %i.ek = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  br label %bb.by

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %.1113 = phi i32 [ %.0112179, %bb.az ], [ %i.ee, %bb.ba ] ; 3 uses
  store ptr %5, ptr %6, align 8, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.em, align 8, !tbaa !34
  %i.en = call i32 @cl_scandesc_ex(i32 noundef %.1113, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @info, i64 24), ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %.0107, ptr noundef %spec.select173, ptr noundef %.0105, ptr noundef %.0104, ptr noundef %spec.select174) #22 ; 2 uses
  %i.eo = load i32, ptr %i.b, align 4, !tbaa !43
  switch i32 %i.eo, label %bb.bu [
    i32 0, label %bb.bd
    i32 1, label %bb.bk
    i32 2, label %bb.bn
    i32 3, label %bb.bn
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ep = icmp eq i32 %i.en, 0
  %i.eq = load i16, ptr @printinfected, align 2, !tbaa !47
  %i.er = icmp eq i16 %i.eq, 0                    ; 2 uses
  br i1 %i.ep, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.es = load i16, ptr @printclean, align 2
  %i.et = icmp ne i16 %i.es, 0
  %or.cond14 = select i1 %i.er, i1 %i.et, i1 false
  br i1 %or.cond14, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.211, ptr noundef nonnull %0) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !44
  %i.ev = add i32 %i.eu, 1
  store i32 %i.ev, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !44
  br label %bb.bu

bb.bh:                                            ; preds = %bb.bd
  br i1 %i.er, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ew = call ptr @cl_strerror(i32 noundef %i.en) #22
  %i.ex = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.212, ptr noundef nonnull %0, ptr noundef %i.ew) #22 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr getelementptr inbounds nuw (i8, ptr @info, i64 16), align 8, !tbaa !48
  br label %bb.bu

bb.bk:                                            ; preds = %bb.bc
  %i.fa = load i16, ptr @printinfected, align 2, !tbaa !47
  %i.fb = icmp eq i16 %i.fa, 0
  %i.fc = load i16, ptr @printclean, align 2
  %i.fd = icmp ne i16 %i.fc, 0
  %or.cond17 = select i1 %i.fb, i1 %i.fd, i1 false
  br i1 %or.cond17, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void (i32, ptr, ...) @mprintf(i32 noundef 0, ptr noundef nonnull @.str.211, ptr noundef nonnull %0) #22
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !44
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !44
  br label %bb.bu

bb.bn:                                            ; preds = %bb.bc, %bb.bc
  %i.fg = call ptr @optget(ptr noundef nonnull %2, ptr noundef nonnull @.str.63) #22
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !17
  %.not156 = icmp eq i32 %i.fi, 0
  br i1 %.not156, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !39
  %i.fl = icmp ugt i64 %i.fk, 1
  br i1 %i.fl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.fm = call fastcc i32 @print_chain(ptr noundef %5, ptr noundef %i.g)
  %.not158 = icmp eq i32 %i.fm, 0
  %i.fn = select i1 %.not158, ptr @.str.177, ptr @.str.176
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !42
  %i.fq = add i64 %i.fp, -1
  %i.fr = load ptr, ptr %5, align 8, !tbaa !40
  %i.fs = load i64, ptr %i.fj, align 8, !tbaa !39
  %i.ft = getelementptr [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.ft, i64 -8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !41
  %i.fw = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.fx = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.213, ptr noundef nonnull %i.g, ptr noundef nonnull %i.fn, i64 noundef %i.fq, ptr noundef %i.fv, ptr noundef %i.fw) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !42 ; 2 uses
  %.not157 = icmp eq i64 %i.fz, 0
  br i1 %.not157, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ga = add i64 %i.fz, -1
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.gc = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.214, ptr noundef nonnull %0, i64 noundef %i.ga, ptr noundef %i.gb) #22 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %bb.br, %bb.bq, %bb.bn
  %i.gd = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !43
  %i.ge = add <2 x i32> %i.gd, splat (i32 1)
  store <2 x i32> %i.ge, ptr getelementptr inbounds nuw (i8, ptr @info, i64 8), align 8, !tbaa !43
  %i.gf = load i16, ptr @bell, align 2, !tbaa !47
  %.not159 = icmp eq i16 %i.gf, 0
  br i1 %.not159, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !20
  %fputc = call i32 @fputc(i32 7, ptr %i.gg)      ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bg, %bb.bj, %bb.bm, %bb.bc
  %i.gh = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %.not161 = icmp eq ptr %i.gh, null
  br i1 %.not161, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gi = icmp eq ptr %.0105, null
  %spec.store.select = select i1 %i.gi, ptr @.str.198, ptr %.0105
  %i.gj = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.199, ptr noundef nonnull %0, ptr noundef nonnull %i.gh, ptr noundef nonnull %spec.store.select) #22 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.gk = load ptr, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %.not162 = icmp eq ptr %i.gk, null
  br i1 %.not162, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gl = call i32 (i32, ptr, ...) @logg(i32 noundef 0, ptr noundef nonnull @.str.200, ptr noundef nonnull %0, ptr noundef nonnull %i.gk) #22 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx, %bb.x, %bb.y, %bb.u, %bb.v, %bb.m, %bb.n, %.critedge, %bb.h, %bb.d, %bb.e, %bb.bb, %bb.ar, %bb.an, %bb.q, %bb.b
  %.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.q ], [ %.0112178.a, %bb.u ], [ %.0112178.a, %bb.v ], [ %.1113, %bb.bx ], [ %.1113, %bb.bw ], [ -1, %bb.bb ], [ %.0112179, %bb.ar ], [ %.0112179, %bb.an ], [ %.0112178.a, %bb.x ], [ %.0112178.a, %bb.y ], [ -1, %.critedge ], [ -1, %bb.h ] ; 2 uses
  %.1102 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.q ], [ %.not140, %bb.u ], [ %.not140, %bb.v ], [ %.not140, %bb.bx ], [ %.not140, %bb.bw ], [ %.not140, %bb.bb ], [ %.not140, %bb.ar ], [ false, %bb.an ], [ %.not140, %bb.x ], [ %.not140, %bb.y ], [ false, %.critedge ], [ false, %bb.h ] ; 2 uses
  %i.gm = load i32, ptr %i.b, align 4, !tbaa !43
  %i.gn = and i32 %i.gm, -2
  %or.cond19 = icmp eq i32 %i.gn, 2
  %i.go = load ptr, ptr @action, align 8          ; 2 uses
  %i.gp = icmp ne ptr %i.go, null
  %or.cond21 = select i1 %or.cond19, i1 %i.gp, i1 false
  %or.cond23 = and i1 %.1102, %or.cond21
  br i1 %or.cond23, label %.thread184, label %bb.bz

.thread184:                                       ; preds = %bb.by
  call void %i.go(ptr noundef nonnull %7) #22
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.thread184
  br i1 %.1102, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @action_source_close(ptr noundef nonnull %7) #22
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %.not166 = icmp eq i32 %.2, -1
  br i1 %.not166, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gq = call i32 @close(i32 noundef %.2) #22    ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %bb.ca
  %i.gr = load ptr, ptr %i.d, align 8, !tbaa !41  ; 2 uses
  %.not167 = icmp eq ptr %i.gr, null
  br i1 %.not167, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @free(ptr noundef nonnull %i.gr) #22
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.gs = load ptr, ptr %i.e, align 8, !tbaa !41  ; 2 uses
  %.not168 = icmp eq ptr %i.gs, null
  br i1 %.not168, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef nonnull %i.gs) #22
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.gt = load ptr, ptr %i.f, align 8, !tbaa !41  ; 2 uses
  %.not169 = icmp eq ptr %i.gt, null
  br i1 %.not169, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @free(ptr noundef nonnull %i.gt) #22
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.gu = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %.not170 = icmp eq ptr %i.gu, null
  br i1 %.not170, label %bb.ck, label %.preheader

.preheader:                                       ; preds = %bb.cj
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !39
  %.not192 = icmp eq i64 %i.gw, 0
  br i1 %.not192, label %._crit_edge, label %.lr.ph191

.lr.ph191:                                        ; preds = %.preheader, %.lr.ph191
  %i.gx = phi i64 [ %i.hc, %.lr.ph191 ], [ 0, %.preheader ]
  %.0110190 = phi i32 [ %i.hb, %.lr.ph191 ], [ 0, %.preheader ]
  %i.gy = load ptr, ptr %5, align 8, !tbaa !40
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.gx
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !41
  call void @free(ptr noundef %i.ha) #22
  %i.hb = add i32 %.0110190, 1                    ; 2 uses
  %i.hc = zext i32 %i.hb to i64                   ; 2 uses
  %i.hd = load i64, ptr %i.gv, align 8, !tbaa !39
  %i.he = icmp ugt i64 %i.hd, %i.hc
  br i1 %i.he, label %.lr.ph191, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph191
  %.pre195 = load ptr, ptr %5, align 8, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.hf = phi ptr [ %.pre195, %._crit_edge.loopexit ], [ %i.gu, %.preheader ]
  call void @free(ptr noundef %i.hf) #22
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

declare ptr @cl_engine_get_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cli_gettmpdir() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #6

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @cl_scanfile_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare void @action_source_init(ptr noundef) local_unnamed_addr #3

declare i32 @cli_realpath(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @match_regex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @action_source_open_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #17

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #18

declare i32 @cl_scandesc_ex(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @action_source_close(ptr noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef ptr @getpwnam(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @setgid(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @setuid(i32 noundef) local_unnamed_addr #5

declare i32 @wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { cold }
attributes #27 = { cold nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { nounwind willreturn memory(none) }
end_hunk_0
