Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/options?download=true
inline.NumInlined: 33
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@parse_options:bb.a
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.bw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bv, i32 noundef 1, ptr noundef nonnull @.str.67) #17 ; 0 uses
  %.pr.pre = load i32, ptr %i.bo, align 8, !tbaa !32
  br label %find_shorthand_operation.exit.thread

find_shorthand_operation.exit.thread:             ; preds = %bb.y, %find_shorthand_operation.exit
  %.pr = phi i32 [ %.pr.pre, %find_shorthand_operation.exit ], [ %i.bp, %bb.y ] ; 3 uses
  %.6.ph = phi i32 [ 1, %find_shorthand_operation.exit ], [ %.5, %bb.y ] ; 2 uses
  %.not.i80 = icmp eq i32 %.pr, 0
  br i1 %.not.i80, label %find_shorthand_operation.exit103.thread, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %find_shorthand_operation.exit.thread
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !33
  %wide.trip.count.i82 = zext i32 %.pr to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, %wide.trip.count.i82
  br i1 %exitcond.not.i85, label %find_shorthand_operation.exit87.thread, label %bb.ab, !llvm.loop !0

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i81
  %indvars.iv.i83 = phi i64 [ 0, %.lr.ph.i81 ], [ %indvars.iv.next.i84, %bb.aa ] ; 2 uses
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.bx, i64 %indvars.iv.i83
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !35
  %i.ca = icmp eq i32 %i.bz, 28
  br i1 %i.ca, label %find_shorthand_operation.exit87, label %bb.aa

find_shorthand_operation.exit87:                  ; preds = %bb.ab
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.cc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cb, i32 noundef 1, ptr noundef nonnull @.str.68) #17 ; 0 uses
  %.pr157.pre = load i32, ptr %i.bo, align 8, !tbaa !32
  br label %find_shorthand_operation.exit87.thread

find_shorthand_operation.exit87.thread:           ; preds = %bb.aa, %find_shorthand_operation.exit87
  %.pr157 = phi i32 [ %.pr157.pre, %find_shorthand_operation.exit87 ], [ %.pr, %bb.aa ] ; 3 uses
  %.7.ph = phi i32 [ 1, %find_shorthand_operation.exit87 ], [ %.6.ph, %bb.aa ] ; 2 uses
  %.not.i88 = icmp eq i32 %.pr157, 0
  br i1 %.not.i88, label %find_shorthand_operation.exit103.thread, label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %find_shorthand_operation.exit87.thread
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !33
  %wide.trip.count.i90 = zext i32 %.pr157 to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i90
  br i1 %exitcond.not.i93, label %find_shorthand_operation.exit95.thread, label %bb.ad, !llvm.loop !0

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i89
  %indvars.iv.i91 = phi i64 [ 0, %.lr.ph.i89 ], [ %indvars.iv.next.i92, %bb.ac ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.cd, i64 %indvars.iv.i91
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !35
  %i.cg = icmp eq i32 %i.cf, 30
  br i1 %i.cg, label %find_shorthand_operation.exit95, label %bb.ac

find_shorthand_operation.exit95:                  ; preds = %bb.ad
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.ci = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ch, i32 noundef 1, ptr noundef nonnull @.str.69) #17 ; 0 uses
  %.pr162.pr.pre = load i32, ptr %i.bo, align 8, !tbaa !32
  br label %find_shorthand_operation.exit95.thread

find_shorthand_operation.exit95.thread:           ; preds = %bb.ac, %find_shorthand_operation.exit95
  %.pr162.pr = phi i32 [ %.pr162.pr.pre, %find_shorthand_operation.exit95 ], [ %.pr157, %bb.ac ] ; 2 uses
  %.8.ph.ph = phi i32 [ 1, %find_shorthand_operation.exit95 ], [ %.7.ph, %bb.ac ] ; 4 uses
  %.not.i96 = icmp eq i32 %.pr162.pr, 0
  br i1 %.not.i96, label %find_shorthand_operation.exit103.thread, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %find_shorthand_operation.exit95.thread
  %i.cj = load ptr, ptr %i.bq, align 8, !tbaa !33 ; 4 uses
  %wide.trip.count.i98 = zext i32 %.pr162.pr to i64 ; 2 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i98
  br i1 %exitcond.not.i101, label %find_shorthand_operation.exit103.thread, label %bb.af, !llvm.loop !0

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i97
  %indvars.iv.i99 = phi i64 [ 0, %.lr.ph.i97 ], [ %indvars.iv.next.i100, %bb.ae ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %indvars.iv.i99
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !35
  %i.cm = icmp eq i32 %i.cl, 25
  br i1 %i.cm, label %find_shorthand_operation.exit103, label %bb.ae

find_shorthand_operation.exit103:                 ; preds = %bb.af
  %i.cn = load i32, ptr %i.cj, align 8, !tbaa !35
  %i.co = icmp eq i32 %i.cn, 25
  br i1 %i.co, label %find_shorthand_operation.exit111, label %.lr.ph180

.lr.ph180:                                        ; preds = %find_shorthand_operation.exit103, %.lr.ph180
  %indvars.iv.i107179 = phi i64 [ %indvars.iv.next.i108, %.lr.ph180 ], [ 0, %find_shorthand_operation.exit103 ]
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107179, 1 ; 3 uses
  %exitcond.not.i109 = icmp ne i64 %indvars.iv.next.i108, %wide.trip.count.i98
  call void @llvm.assume(i1 %exitcond.not.i109)
  %i.cp = getelementptr inbounds nuw [48 x i8], ptr %i.cj, i64 %indvars.iv.next.i108 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !35
  %i.cr = icmp eq i32 %i.cq, 25
  br i1 %i.cr, label %find_shorthand_operation.exit111, label %.lr.ph180

find_shorthand_operation.exit111:                 ; preds = %.lr.ph180, %find_shorthand_operation.exit103
  %.lcssa177 = phi ptr [ %i.cj, %find_shorthand_operation.exit103 ], [ %i.cp, %.lr.ph180 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.lcssa177, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1
  %.not = icmp eq i8 %i.cu, 45
  br i1 %.not, label %find_shorthand_operation.exit111.tail, label %find_shorthand_operation.exit103.thread

find_shorthand_operation.exit111.tail:            ; preds = %find_shorthand_operation.exit111
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %find_shorthand_operation.exit103.thread.sink.split, label %find_shorthand_operation.exit103.thread

find_shorthand_operation.exit103.thread.sink.split: ; preds = %find_shorthand_operation.exit111.tail, %bb.s
  %.str.65.sink = phi ptr [ @.str.65, %bb.s ], [ @.str.71, %find_shorthand_operation.exit111.tail ]
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.cz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cy, i32 noundef 1, ptr noundef nonnull %.str.65.sink) #17 ; 0 uses
  br label %find_shorthand_operation.exit103.thread

find_shorthand_operation.exit103.thread:          ; preds = %bb.ae, %find_shorthand_operation.exit103.thread.sink.split, %find_shorthand_operation.exit111, %find_shorthand_operation.exit.thread, %bb.x, %find_shorthand_operation.exit87.thread, %find_shorthand_operation.exit95.thread, %find_shorthand_operation.exit111.tail, %bb.u, %bb.t
  %.9 = phi i32 [ 1, %bb.t ], [ %.8.ph.ph, %find_shorthand_operation.exit111 ], [ %.8.ph.ph, %find_shorthand_operation.exit111.tail ], [ 1, %find_shorthand_operation.exit103.thread.sink.split ], [ 0, %bb.u ], [ %.8.ph.ph, %find_shorthand_operation.exit95.thread ], [ %.6.ph, %find_shorthand_operation.exit.thread ], [ %.7.ph, %find_shorthand_operation.exit87.thread ], [ %.5, %bb.x ], [ %.8.ph.ph, %bb.ae ]
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.db = load i32, ptr %i.da, align 8, !tbaa !37
  %.not73 = icmp eq i32 %i.db, 0
  br i1 %.not73, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %find_shorthand_operation.exit103.thread
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !38
  %.not74 = icmp eq i32 %i.dd, 0
  br i1 %.not74, label %bb.ah, label %.thread146

.thread146:                                       ; preds = %bb.ag
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.df = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.de, i32 noundef 1, ptr noundef nonnull @.str.72) #17 ; 0 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %find_shorthand_operation.exit103.thread
  %.not75 = icmp eq i32 %.9, 0
  br i1 %.not75, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread146, %bb.ah
  %i.dg = call i32 (ptr, ...) @short_usage(ptr noundef null) #17 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.10150 = phi i32 [ 1, %bb.ai ], [ 0, %bb.ah ]
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !19
  %.not76 = icmp eq i32 %i.di, 0
  br i1 %.not76, label %find_shorthand_operation.exit119.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !32 ; 2 uses
  %.not.i112 = icmp eq i32 %i.dk, 0
  br i1 %.not.i112, label %find_shorthand_operation.exit119.thread, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !33 ; 2 uses
  %wide.trip.count.i114 = zext i32 %i.dk to i64   ; 2 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1 ; 2 uses
  %exitcond.not.i117 = icmp eq i64 %indvars.iv.next.i116, %wide.trip.count.i114
  br i1 %exitcond.not.i117, label %find_shorthand_operation.exit119.thread, label %bb.am, !llvm.loop !0

bb.am:                                            ; preds = %bb.al, %.lr.ph.i113
  %indvars.iv.i115 = phi i64 [ 0, %.lr.ph.i113 ], [ %indvars.iv.next.i116, %bb.al ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [48 x i8], ptr %i.dm, i64 %indvars.iv.i115 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !35
  %i.dp = icmp eq i32 %i.do, 27
  br i1 %i.dp, label %.lr.ph.i121, label %bb.al

bb.an:                                            ; preds = %.lr.ph.i121
  %indvars.iv.next.i124 = add nuw nsw i64 %indvars.iv.i123, 1 ; 2 uses
  %exitcond.not.i125 = icmp eq i64 %indvars.iv.next.i124, %wide.trip.count.i114
  br i1 %exitcond.not.i125, label %.lr.ph.i129, label %.lr.ph.i121, !llvm.loop !0

.lr.ph.i121:                                      ; preds = %bb.am, %bb.an
  %indvars.iv.i123 = phi i64 [ %indvars.iv.next.i124, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [48 x i8], ptr %i.dm, i64 %indvars.iv.i123 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !35
  %i.ds = icmp eq i32 %i.dr, 31
  br i1 %i.ds, label %find_shorthand_operation.exit127, label %bb.an

.lr.ph.i129:                                      ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 noundef 0, i64 noundef 48, i1 noundef false) #17
  store i32 31, ptr %3, align 8, !tbaa !35
  call fastcc void @append_new_operation(ptr noundef %2, ptr noundef nonnull byval(%struct.Operation) align 8 %3)
  %i.dt = load i32, ptr %i.au, align 8, !tbaa !30
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.au, align 8, !tbaa !30
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !33 ; 4 uses
  %i.dw = load i32, ptr %i.dj, align 8, !tbaa !32 ; 3 uses
  %4 = add i32 %i.dw, -1
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds nuw [48 x i8], ptr %i.dv, i64 %5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not.i128 = icmp ne i32 %i.dw, 0
  call void @llvm.assume(i1 %.not.i128)
  %wide.trip.count.i130 = zext i32 %i.dw to i64
  %i.dx = load i32, ptr %i.dv, align 8, !tbaa !35
  %i.dy = icmp eq i32 %i.dx, 27
  br i1 %i.dy, label %find_shorthand_operation.exit127, label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph.i129, %.lr.ph182
  %indvars.iv.i131181 = phi i64 [ %indvars.iv.next.i132, %.lr.ph182 ], [ 0, %.lr.ph.i129 ]
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i131181, 1 ; 3 uses
  %exitcond.not.i133 = icmp ne i64 %indvars.iv.next.i132, %wide.trip.count.i130
  call void @llvm.assume(i1 %exitcond.not.i133)
  %i.dz = getelementptr inbounds nuw [48 x i8], ptr %i.dv, i64 %indvars.iv.next.i132 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !35
  %i.eb = icmp eq i32 %i.ea, 27
  br i1 %i.eb, label %find_shorthand_operation.exit127, label %.lr.ph182

find_shorthand_operation.exit127:                 ; preds = %.lr.ph.i121, %.lr.ph182, %.lr.ph.i129
  %.049 = phi ptr [ %i.dz, %.lr.ph182 ], [ %i.dv, %.lr.ph.i129 ], [ %i.dn, %.lr.ph.i121 ]
  %.0 = phi ptr [ %6, %.lr.ph182 ], [ %6, %.lr.ph.i129 ], [ %i.dq, %.lr.ph.i121 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.049, i64 16
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !36
  br label %find_shorthand_operation.exit119.thread

find_shorthand_operation.exit119.thread:          ; preds = %bb.al, %bb.ak, %find_shorthand_operation.exit127, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.10150
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @share__getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @parse_option(i32 noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = sext i32 %0 to i64
  %i.j = getelementptr inbounds [32 x i8], ptr @long_options_, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 16, !tbaa !50  ; 96 uses
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(17) @.str.1) #18
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 8, !tbaa !51
  br label %bb.gf

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(14) @.str.2) #18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.p, align 4, !tbaa !22
  br label %bb.gf

bb.e:                                             ; preds = %bb.c
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(12) @.str.3) #18
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !22
  br label %bb.gf

bb.g:                                             ; preds = %bb.e
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(16) @.str.4) #18
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !52
  br label %bb.gf

bb.i:                                             ; preds = %bb.g
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(17) @.str.5) #18
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !53
  br label %bb.gf

bb.k:                                             ; preds = %bb.i
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(19) @.str.6) #18
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !19
  br label %bb.gf

bb.m:                                             ; preds = %bb.k
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(12) @.str) #18
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  store ptr %1, ptr %i.ae, align 8, !tbaa !31
  br label %bb.gf

bb.o:                                             ; preds = %bb.m
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(12) @.str.7) #18
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 0) ; 0 uses
  br label %bb.gf

bb.q:                                             ; preds = %bb.o
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(19) @.str.8) #18
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 1) ; 0 uses
  br label %bb.gf

bb.s:                                             ; preds = %bb.q
  %i.al = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(19) @.str.9) #18
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.an = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 2) ; 0 uses
  br label %bb.gf

bb.u:                                             ; preds = %bb.s
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(19) @.str.10) #18
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 3) ; 0 uses
  br label %bb.gf

bb.w:                                             ; preds = %bb.u
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(19) @.str.11) #18
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.at = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 4) ; 0 uses
  br label %bb.gf

bb.y:                                             ; preds = %bb.w
  %i.au = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(17) @.str.12) #18
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aw = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 5) ; 0 uses
  br label %bb.gf

bb.aa:                                            ; preds = %bb.y
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(14) @.str.13) #18
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.az = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 6) ; 0 uses
  br label %bb.gf

bb.ac:                                            ; preds = %bb.aa
  %i.ba = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(9) @.str.14) #18
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bc = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 7) ; 0 uses
  br label %bb.gf

bb.ae:                                            ; preds = %bb.ac
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(19) @.str.15) #18
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bf = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 8) ; 0 uses
  br label %bb.gf

bb.ag:                                            ; preds = %bb.ae
  %i.bg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(11) @.str.16) #18
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.bi = tail call fastcc ptr @append_shorthand_operation(ptr noundef %2, i32 noundef 9)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = tail call fastcc i32 @parse_md5(ptr noundef %1, ptr noundef nonnull %i.bj)
  %.not305 = icmp eq i32 %i.bk, 0
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !26 ; 2 uses
  br i1 %.not305, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bm = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bl, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull %i.k) #17 ; 0 uses
  br label %bb.gf

bb.aj:                                            ; preds = %bb.ah
  %i.bn = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bl, i32 noundef 1, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.k) #17 ; 0 uses
  br label %bb.gf

bb.ak:                                            ; preds = %bb.ag
end_hunk_0
