Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/optparser?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@optparse:bb.a
bb.cz:                                            ; preds = %bb.cx
  %i.jo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jj, ptr noundef nonnull @.str.762, ptr noundef %i.jl) #22 ; 0 uses
  br label %.critedge414

bb.da:                                            ; preds = %.critedge13
  %.not382 = icmp eq ptr %.2298, null
  br i1 %.not382, label %.critedge413, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jp = call i64 @__isoc23_strtol(ptr noundef nonnull %.2298, ptr noundef null, i32 noundef 10) #20, !inline_history !46
  %sext450 = shl i64 %i.jp, 32
  %i.jq = ashr exact i64 %sext450, 32
  br label %.critedge413

bb.dc:                                            ; preds = %.critedge13, %.critedge13
  %i.jr = tail call ptr @__errno_location() #23   ; 3 uses
  store i32 0, ptr %i.jr, align 4, !tbaa !43
  %.not376 = icmp eq ptr %.2298, null
  br i1 %.not376, label %.critedge413, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.js = call i64 @__isoc23_strtoll(ptr noundef nonnull %.2298, ptr noundef nonnull %i.e, i32 noundef 0) #20 ; 7 uses
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !43
  %.not377 = icmp eq i32 %i.jt, 34
  br i1 %.not377, label %.thread428, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ju = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !23
  switch i8 %i.jv, label %bb.dl [
    i8 71, label %bb.df
    i8 103, label %bb.df
    i8 77, label %bb.dh
    i8 109, label %bb.dh
    i8 75, label %bb.dj
    i8 107, label %bb.dj
    i8 0, label %.thread430
  ]

bb.df:                                            ; preds = %bb.de, %bb.de
  %i.jw = icmp slt i64 %i.js, 8589934592
  br i1 %i.jw, label %bb.dg, label %.thread428.sink.split

bb.dg:                                            ; preds = %bb.df
  %i.jx = shl nsw i64 %i.js, 30
  br label %.thread430

bb.dh:                                            ; preds = %bb.de, %bb.de
  %i.jy = icmp slt i64 %i.js, 8796093022208
  br i1 %i.jy, label %bb.di, label %.thread428.sink.split

bb.di:                                            ; preds = %bb.dh
  %i.jz = shl nsw i64 %i.js, 20
  br label %.thread430

bb.dj:                                            ; preds = %bb.de, %bb.de
  %i.ka = icmp slt i64 %i.js, 9007199254740992
  br i1 %i.ka, label %bb.dk, label %.thread428.sink.split

bb.dk:                                            ; preds = %bb.dj
  %i.kb = shl nsw i64 %i.js, 10
  br label %.thread430

bb.dl:                                            ; preds = %bb.de
  br i1 %i.cx, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.kc = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.kd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kc, ptr noundef nonnull @.str.763, ptr noundef nonnull %.1302) #22 ; 0 uses
  br label %.critedge414

bb.dn:                                            ; preds = %bb.dl
  %i.ke = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.kf = load i8, ptr %i.ke, align 8, !tbaa !33  ; 2 uses
  %.not378 = icmp eq i8 %i.kf, 0
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !41 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !28 ; 2 uses
  br i1 %.not378, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.kj = sext i8 %i.kf to i32
  %i.kk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.764, ptr noundef %i.ki, i32 noundef %i.kj) #22 ; 0 uses
  br label %.critedge414

bb.dp:                                            ; preds = %bb.dn
  %i.kl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.765, ptr noundef %i.ki) #22 ; 0 uses
  br label %.critedge414

.thread428.sink.split:                            ; preds = %bb.dj, %bb.dh, %bb.df
  store i32 34, ptr %i.jr, align 4, !tbaa !43
  br label %.thread428

.thread428:                                       ; preds = %.thread428.sink.split, %bb.dd
  br i1 %i.cx, label %.critedge413.thread444, label %bb.dq

bb.dq:                                            ; preds = %.thread428
  %i.km = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !33  ; 2 uses
  %.not380 = icmp eq i8 %i.kn, 0
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !41 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !28 ; 2 uses
  br i1 %.not380, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kr = sext i8 %i.kn to i32
  %i.ks = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ko, ptr noundef nonnull @.str.767, ptr noundef %i.kq, i32 noundef %i.kr, i64 noundef 9223372036854775807) #22 ; 0 uses
  br label %.critedge413

bb.ds:                                            ; preds = %bb.dq
  %i.kt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ko, ptr noundef nonnull @.str.766, ptr noundef %i.kq, i64 noundef 9223372036854775807) #22 ; 0 uses
  br label %.critedge413

.thread430:                                       ; preds = %bb.dg, %bb.di, %bb.dk, %bb.de
  %.1278 = phi i64 [ %i.js, %bb.de ], [ %i.kb, %bb.dk ], [ %i.jz, %bb.di ], [ %i.jx, %bb.dg ]
  %.1278.fr = freeze i64 %.1278                   ; 2 uses
  %.not381 = icmp eq i64 %.1278.fr, 0
  %spec.select449 = select i1 %.not381, i64 9223372036854775807, i64 %.1278.fr
  br label %.critedge413

bb.dt:                                            ; preds = %.critedge13
  %i.ku = call i32 @strcasecmp(ptr noundef %.2298, ptr noundef nonnull @.str.170) #19
  %.not373 = icmp eq i32 %i.ku, 0
  br i1 %.not373, label %.critedge413, label %sub_0

sub_0:                                            ; preds = %bb.dt
  %i.kv = load i8, ptr %.2298, align 1
  %.not551 = icmp eq i8 %i.kv, 49
  br i1 %.not551, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.kw = getelementptr inbounds nuw i8, ptr %.2298, i64 1
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = icmp eq i8 %i.kx, 0
  br i1 %i.ky, label %.critedge413, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.kz = call i32 @strcasecmp(ptr noundef nonnull %.2298, ptr noundef nonnull @.str.769) #19
  %.not375 = icmp eq i32 %i.kz, 0
  %spec.select415 = zext i1 %.not375 to i64
  br label %.critedge413

.critedge413:                                     ; preds = %.thread430, %bb.ds, %bb.dr, %.tail.thread, %.critedge13, %bb.da, %bb.db, %bb.dc, %bb.dt, %.tail
  %.4300 = phi ptr [ %.2298, %.critedge13 ], [ null, %.thread430 ], [ null, %bb.ds ], [ null, %bb.dc ], [ null, %.tail ], [ null, %bb.dt ], [ null, %bb.da ], [ null, %bb.db ], [ null, %.tail.thread ], [ null, %bb.dr ]
  %.2281 = phi i64 [ -1, %.critedge13 ], [ %spec.select449, %.thread430 ], [ 9223372036854775807, %bb.ds ], [ 0, %bb.dc ], [ 1, %.tail ], [ 1, %bb.dt ], [ 0, %bb.da ], [ %i.jq, %bb.db ], [ %spec.select415, %.tail.thread ], [ 9223372036854775807, %bb.dr ]
  %i.la = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.lb = call fastcc i32 @optaddarg(ptr noundef %i.la, ptr noundef nonnull %.1302, ptr noundef %.4300, i64 noundef %.2281)
  %i.lc = icmp slt i32 %i.lb, 0
  br i1 %i.lc, label %bb.du, label %.outer.backedge

.outer.backedge:                                  ; preds = %.critedge413, %.critedge413.thread, %.critedge413.thread440, %.critedge413.thread444
  %.be = phi ptr [ %i.la, %.critedge413 ], [ %i.ll, %.critedge413.thread ], [ %i.li, %.critedge413.thread440 ], [ %i.lf, %.critedge413.thread444 ]
  br label %.outer

.critedge413.thread444:                           ; preds = %.thread428
  %i.ld = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.le = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ld, ptr noundef nonnull @.str.766, ptr noundef nonnull %.1302, i64 noundef 9223372036854775807) #22 ; 0 uses
  %i.lf = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.lg = call fastcc i32 @optaddarg(ptr noundef %i.lf, ptr noundef nonnull %.1302, ptr noundef null, i64 noundef 9223372036854775807)
  %i.lh = icmp slt i32 %i.lg, 0
  br i1 %i.lh, label %.thread443, label %.outer.backedge

.critedge413.thread440:                           ; preds = %bb.cv
  %i.li = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.lj = call fastcc i32 @optaddarg(ptr noundef %i.li, ptr noundef nonnull %.1302, ptr noundef %.3299, i64 noundef -1)
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %.thread443, label %.outer.backedge

.critedge413.thread:                              ; preds = %bb.cw
  %i.ll = load ptr, ptr %i.b, align 8, !tbaa !22  ; 2 uses
  %i.lm = call fastcc i32 @optaddarg(ptr noundef %i.ll, ptr noundef nonnull %.1302, ptr noundef nonnull %.3299, i64 noundef -1)
  %i.ln = icmp slt i32 %i.lm, 0
  br i1 %i.ln, label %.thread439, label %.outer.backedge

bb.du:                                            ; preds = %.critedge413
  br i1 %i.cx, label %.thread443, label %.thread439

.thread443:                                       ; preds = %.critedge413.thread444, %.critedge413.thread440, %bb.du
  %i.lo = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.lp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lo, ptr noundef nonnull @.str.751, ptr noundef nonnull %.1302) #22 ; 0 uses
  br label %.critedge414

.thread439:                                       ; preds = %.critedge413.thread, %bb.du
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.lr = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !28
  %i.lt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lq, ptr noundef nonnull @.str.752, ptr noundef %i.ls) #22 ; 0 uses
  br label %.critedge414

.critedge414:                                     ; preds = %bb.ba, %bb.aj, %bb.cy, %bb.cz, %bb.dm, %bb.dp, %bb.do, %.thread443, %.thread439, %bb.cn, %bb.cq, %bb.cp, %bb.bx, %bb.by, %.loopexit451, %bb.bl, %bb.ay, %bb.az, %bb.av, %bb.aw, %.critedge8.thread682, %bb.at, %bb.aq, %bb.ar, %bb.an, %bb.ao, %bb.ck, %bb.bf, %.thread, %bb.bb
  %.not394 = phi i1 [ false, %.loopexit451 ], [ false, %bb.ck ], [ false, %bb.bx ], [ false, %.thread443 ], [ false, %bb.cn ], [ false, %bb.ay ], [ false, %bb.bf ], [ false, %bb.av ], [ false, %.critedge8.thread682 ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %.thread ], [ false, %bb.cz ], [ false, %bb.cy ], [ false, %bb.bb ], [ false, %bb.ao ], [ false, %bb.ar ], [ false, %bb.at ], [ false, %bb.aw ], [ false, %bb.az ], [ false, %bb.bl ], [ false, %bb.by ], [ false, %bb.cp ], [ false, %bb.cq ], [ false, %.thread439 ], [ false, %bb.do ], [ false, %bb.dp ], [ false, %bb.dm ], [ true, %bb.aj ], [ true, %bb.ba ]
  %.not393 = icmp eq ptr %.0303, null
  br i1 %.not393, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.critedge414
  %i.lu = call i32 @fclose(ptr noundef nonnull %.0303) ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.critedge414
  %i.lv = load ptr, ptr %i.b, align 8             ; 9 uses
  br i1 %.not394, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @optfree(ptr noundef %i.lv)
  br label %.loopexit

bb.dy:                                            ; preds = %bb.dw
  %i.lw = icmp ne ptr %i.lv, null
  %or.cond17 = select i1 %.not401677, i1 %i.lw, i1 false
  br i1 %or.cond17, label %bb.dz, label %.loopexit

bb.dz:                                            ; preds = %bb.dy
  %i.lx = load i32, ptr @optind, align 4, !tbaa !43 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, %1
  br i1 %i.ly, label %bb.ea, label %.loopexit

bb.ea:                                            ; preds = %bb.dz
  %i.lz = add i32 %1, 1
  %i.ma = sub i32 %i.lz, %i.lx
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = call noalias ptr @calloc(i64 noundef %i.mb, i64 noundef 8) #24 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.lv, i64 64
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !18
  %.not395 = icmp eq ptr %i.mc, null
  br i1 %.not395, label %bb.eb, label %11

bb.eb:                                            ; preds = %bb.ea
  %9 = load ptr, ptr @stderr, align 8, !tbaa !41
  %10 = call i64 @fwrite(ptr nonnull @.str.770, i64 31, i64 1, ptr %9) #21 ; 0 uses
  call void @optfree(ptr noundef nonnull %i.lv)
  br label %.loopexit

11:                                               ; preds = %bb.ea
  %12 = load i32, ptr @optind, align 4, !tbaa !43 ; 2 uses
  %13 = icmp slt i32 %12, %1
  br i1 %13, label %.lr.ph550.preheader, label %.loopexit

.lr.ph550.preheader:                              ; preds = %11
  %14 = sext i32 %12 to i64
  %wide.trip.count634 = sext i32 %1 to i64
  br label %.lr.ph550

bb.ec:                                            ; preds = %.lr.ph550
  %indvars.iv.next632 = add nsw i64 %indvars.iv631, 1 ; 2 uses
  %exitcond635.not = icmp eq i64 %indvars.iv.next632, %wide.trip.count634
  br i1 %exitcond635.not, label %.loopexit, label %.lr.ph550

.lr.ph550:                                        ; preds = %.lr.ph550.preheader, %bb.ec
  %indvars.iv631 = phi i64 [ %14, %.lr.ph550.preheader ], [ %indvars.iv.next632, %bb.ec ] ; 3 uses
  %i.me = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv631
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !19
  %i.mg = call noalias ptr @strdup(ptr noundef %i.mf) #20 ; 2 uses
  %15 = load i32, ptr @optind, align 4, !tbaa !43
  %16 = sext i32 %15 to i64
  %i.mh = sub nsw i64 %indvars.iv631, %16
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mh
  store ptr %i.mg, ptr %i.mi, align 8, !tbaa !19
  %.not396 = icmp eq ptr %i.mg, null
  br i1 %.not396, label %bb.ed, label %bb.ec

bb.ed:                                            ; preds = %.lr.ph550
  %i.mj = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.mk = call i64 @fwrite(ptr nonnull @.str.771, i64 31, i64 1, ptr %i.mj) #21 ; 0 uses
  call void @optfree(ptr noundef nonnull %i.lv)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ec, %11, %bb.dy, %bb.dz, %bb.ed, %bb.eb, %bb.dx, %bb.ag, %bb.ae, %.split520.us, %.split518.us, %.split516.us
  %.0304 = phi ptr [ null, %.split518.us ], [ null, %.split520.us ], [ null, %.split516.us ], [ null, %bb.ae ], [ null, %bb.dx ], [ null, %bb.ed ], [ null, %bb.ag ], [ null, %bb.eb ], [ %i.lv, %bb.dy ], [ %i.lv, %bb.dz ], [ %i.lv, %11 ], [ %i.lv, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0304
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @optadd(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #25 ; 22 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not54 = icmp eq ptr %2, null
  br i1 %.not54, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias ptr @strdup(ptr noundef nonnull %2) #20 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !8
  %.not55 = icmp eq ptr %i.b, null
  br i1 %.not55, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #20
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.c = phi ptr [ %i.b, %bb.c ], [ null, %bb.e ] ; 2 uses
  %.not56 = icmp eq ptr %3, null
  br i1 %.not56, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.d = tail call noalias ptr @strdup(ptr noundef nonnull %3) #20 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !16
  %.not57 = icmp eq ptr %i.d, null
  br i1 %.not57, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef %i.c) #20
  tail call void @free(ptr noundef nonnull %i.a) #20
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !16
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i
  %i.g = phi ptr [ %i.d, %bb.g ], [ null, %bb.i ]
  %.not58 = icmp eq ptr %4, null
  br i1 %.not58, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.h = tail call noalias ptr @strdup(ptr noundef nonnull %4) #20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !21
  %.not59 = icmp eq ptr %i.h, null
  br i1 %.not59, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.g) #20
  tail call void @free(ptr noundef %i.c) #20
  tail call void @free(ptr noundef nonnull %i.a) #20
  br label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.sink = phi i32 [ 0, %bb.m ], [ 1, %bb.k ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 %.sink, ptr %i.k, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %5, ptr %i.l, align 8, !tbaa !48
  %i.m = add i64 %5, -1
  %or.cond = icmp ult i64 %i.m, -2
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.n, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.p, align 4, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i32 %6, ptr %i.q, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 %7, ptr %i.r, align 4, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.s, align 8, !tbaa !18
  %i.t = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %.not60 = icmp eq ptr %i.t, null
  br i1 %.not60, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.v = load ptr, ptr %0, align 8, !tbaa !22
  store ptr %i.v, ptr %i.u, align 8, !tbaa !17
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr %i.a, ptr %i.w, align 8, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %i.a, ptr %1, align 8, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s, %bb.l, %bb.h, %bb.d
  %.0 = phi i32 [ 0, %bb.s ], [ -1, %bb.l ], [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @my_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @optaddarg(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %.not17.i = icmp eq ptr %0, null
  br i1 %.not17.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.01018.i = phi ptr [ %i.g, %bb.e ], [ %0, %bb.a ] ; 15 uses
  %i.a = load ptr, ptr %.01018.i, align 8, !tbaa !8 ; 2 uses
  %.not13.i = icmp eq ptr %i.a, null
  br i1 %.not13.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull readonly dereferenceable(1) %1) #19
  %.not14.i = icmp eq i32 %i.b, 0
  br i1 %.not14.i, label %optget_i.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.01018.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not15.i = icmp eq ptr %i.d, null
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull readonly dereferenceable(1) %1) #19
  %.not16.i = icmp eq i32 %i.e, 0
  br i1 %.not16.i, label %optget_i.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.01018.i, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.e, %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !41
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.776, ptr noundef %1) #22 ; 0 uses
  br label %bb.ab

optget_i.exit:                                    ; preds = %bb.d, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.01018.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !50
end_hunk_0
