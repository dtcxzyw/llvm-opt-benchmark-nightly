inline.NumInlined: 253
inline.NumDeleted: 55
begin_hunk_0_@fetch_named_backref_token:bb.a

onig_name_to_group_numbers.exit:                  ; preds = %bb.bk
  %i.fg = getelementptr i8, ptr %.pre.i.i61, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !46
  %i.fi = icmp slt i32 %i.fe, 1
  br i1 %i.fi, label %onig_name_to_group_numbers.exit.thread, label %bb.bl

onig_name_to_group_numbers.exit.thread:           ; preds = %bb.bk, %name_find.exit.i, %name_find.exit.thread.i, %onig_name_to_group_numbers.exit
  %i.fj = getelementptr i8, ptr %4, i64 56
  store ptr %i.e, ptr %i.fj, align 8, !tbaa !95
  %i.fk = getelementptr i8, ptr %4, i64 64
  store ptr %.077, ptr %i.fk, align 8, !tbaa !96
  br label %.loopexit

bb.bl:                                            ; preds = %onig_name_to_group_numbers.exit.thread105, %onig_name_to_group_numbers.exit
  %.076108 = phi ptr [ %i.ff, %onig_name_to_group_numbers.exit.thread105 ], [ %i.fh, %onig_name_to_group_numbers.exit ] ; 3 uses
  %i.fl = getelementptr i8, ptr %i.d, i64 8       ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !60
  %i.fn = and i32 %i.fm, 32
  %.not54.not = icmp eq i32 %i.fn, 0
  br i1 %.not54.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bl
  %i.fo = getelementptr i8, ptr %4, i64 92
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !92
  %i.fq = getelementptr i8, ptr %4, i64 168
  %i.fr = getelementptr i8, ptr %4, i64 104
  %wide.trip.count = zext nneg i32 %i.fe to i64
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bo
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.bn, !llvm.loop !121

bb.bn:                                            ; preds = %.lr.ph, %bb.bm
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bm ] ; 2 uses
  %i.fs = getelementptr [4 x i8], ptr %.076108, i64 %indvars.iv
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7  ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, %i.fp
  br i1 %i.fu, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fv = load ptr, ptr %i.fq, align 8, !tbaa !93 ; 2 uses
  %.not55 = icmp eq ptr %i.fv, null
  %i.fw = select i1 %.not55, ptr %i.fr, ptr %i.fv
  %i.fx = sext i32 %i.ft to i64
  %i.fy = getelementptr [8 x i8], ptr %i.fw, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !90
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %.loopexit, label %bb.bm

.critedge:                                        ; preds = %bb.bm, %bb.bl
  store i32 7, ptr %1, align 8, !tbaa !99
  %i.gb = getelementptr i8, ptr %1, i64 40
  store i32 1, ptr %i.gb, align 8, !tbaa !13
  %i.gc = icmp eq i32 %i.fe, 1
  br i1 %i.gc, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.critedge
  %i.gd = load i32, ptr %i.fl, align 4, !tbaa !60
  %i.ge = and i32 %i.gd, 2048
  %.not57 = icmp eq i32 %i.ge, 0
  br i1 %.not57, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.critedge
  store i32 1, ptr %i.f, align 8, !tbaa !13
  %i.gf = load i32, ptr %.076108, align 4, !tbaa !7
  %i.gg = getelementptr i8, ptr %1, i64 28
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !13
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  store i32 %i.fe, ptr %i.f, align 8, !tbaa !13
  %i.gh = getelementptr i8, ptr %1, i64 32
  store ptr %.076108, ptr %i.gh, align 8, !tbaa !13
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bi
  store ptr %.078, ptr %2, align 8, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bo, %bb.bn, %.thread98, %bb.bg, %bb.bh, %bb.be, %bb.bb, %bb.bs, %onig_name_to_group_numbers.exit.thread
  %.1 = phi i32 [ %.1.i.ph, %.thread98 ], [ %.1.i, %bb.bb ], [ -208, %bb.be ], [ 0, %bb.bs ], [ -217, %onig_name_to_group_numbers.exit.thread ], [ -208, %bb.bh ], [ -208, %bb.bg ], [ -208, %bb.bn ], [ -208, %bb.bo ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @onig_syntax_warn(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  call void @onig_vsnprintf_with_pattern(ptr noundef nonnull %i.a, i32 noundef 256, ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %1, ptr noundef nonnull %2) #25
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.h = getelementptr i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 192
  %i.l = load i32, ptr %i.k, align 8, !tbaa !123
  call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef nonnull %i.i, i32 noundef %i.l, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -216, 1) i32 @fetch_name(i32 noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 19 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !69     ; 7 uses
  store i32 0, ptr %5, align 4, !tbaa !7
  switch i32 %0, label %bb.e [
    i32 60, label %get_name_end_code_point.exit
    i32 39, label %bb.b
    i32 40, label %bb.c
    i32 123, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  br label %get_name_end_code_point.exit

bb.c:                                             ; preds = %bb.a
  br label %get_name_end_code_point.exit

bb.d:                                             ; preds = %bb.a
  br label %get_name_end_code_point.exit

bb.e:                                             ; preds = %bb.a
  br label %get_name_end_code_point.exit

get_name_end_code_point.exit:                     ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 0, %bb.e ], [ 125, %bb.d ], [ 39, %bb.b ], [ 41, %bb.c ], [ 62, %bb.a ] ; 4 uses
  %i.d = icmp ult ptr %i.c, %2
  br i1 %i.d, label %bb.f, label %bb.au

bb.f:                                             ; preds = %get_name_end_code_point.exit
  %i.e = getelementptr i8, ptr %i.b, i64 16       ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !70
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = load i8, ptr %i.c, align 1, !tbaa !13
  %i.i = zext i8 %i.h to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.j = getelementptr i8, ptr %i.b, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = tail call i32 %i.k(ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #25
  %.pre = load i32, ptr %i.e, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = phi i32 [ 1, %bb.g ], [ %.pre, %bb.h ]   ; 2 uses
  %i.n = phi i32 [ %i.i, %bb.g ], [ %i.l, %bb.h ] ; 4 uses
  %i.o = getelementptr i8, ptr %i.b, i64 20       ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !47
  %i.q = icmp eq i32 %i.m, %i.p
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call i32 @onigenc_mbclen(ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.s = phi i32 [ %i.r, %bb.j ], [ %i.m, %bb.i ]
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.c, i64 %i.t     ; 6 uses
  %i.v = icmp eq i32 %i.n, %.0.i
  br i1 %i.v, label %bb.au, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %i.b, i64 88       ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = tail call i32 %i.x(i32 noundef %i.n, i32 noundef 4, ptr noundef nonnull %i.b) #25
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not134 = trunc nuw i32 %6 to i1
  br i1 %.not134, label %.preheader, label %.thread

bb.n:                                             ; preds = %bb.l
  %i.z = icmp eq i32 %i.n, 45
  br i1 %i.z, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  %.not133 = icmp eq i32 %6, 0
  br i1 %.not133, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.n, %bb.o, %bb.m
  %.0120151.ph = phi i32 [ 1, %bb.m ], [ 1, %bb.n ], [ -1, %bb.o ]
  %.0145150.ph = phi ptr [ %i.c, %bb.m ], [ %i.c, %bb.n ], [ %i.u, %bb.o ] ; 2 uses
  %.1122.ph = phi i32 [ 1, %bb.m ], [ 0, %bb.n ], [ 2, %bb.o ] ; 2 uses
  %.not135170 = icmp ult ptr %i.u, %2
  br i1 %.not135170, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr i8, ptr %i.b, i64 32
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.z
  %.0172 = phi ptr [ %i.u, %.lr.ph ], [ %i.ao, %bb.z ] ; 6 uses
  %.1122171 = phi i32 [ %.1122.ph, %.lr.ph ], [ %.2123, %bb.z ] ; 3 uses
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !70
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ad = load i8, ptr %.0172, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !71
  %i.ag = tail call i32 %i.af(ptr noundef %.0172, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #25
  %.pre196 = load i32, ptr %i.e, align 8, !tbaa !70
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ah = phi i32 [ 1, %bb.q ], [ %.pre196, %bb.r ] ; 2 uses
  %i.ai = phi i32 [ %i.ae, %bb.q ], [ %i.ag, %bb.r ] ; 6 uses
  %i.aj = load i32, ptr %i.o, align 4, !tbaa !47
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = tail call i32 @onigenc_mbclen(ptr noundef %.0172, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.am = phi i32 [ %i.al, %bb.t ], [ %i.ah, %bb.s ]
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %.0172, i64 %i.an ; 6 uses
  %i.ap = icmp eq i32 %i.ai, %.0.i
  %i.aq = icmp eq i32 %i.ai, 41
  %or.cond = or i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ar = icmp eq i32 %.1122171, 2
  br i1 %i.ar, label %.thread, label %.loopexit

bb.w:                                             ; preds = %bb.u
  %.not136 = icmp eq i32 %.1122171, 0
  br i1 %.not136, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.at = tail call i32 %i.as(i32 noundef %i.ai, i32 noundef 4, ptr noundef nonnull %i.b) #25
  %.not137 = icmp eq i32 %i.at, 0
  br i1 %.not137, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.au = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.av = tail call i32 %i.au(i32 noundef %i.ai, i32 noundef 12, ptr noundef nonnull %i.b) #25
  %.not138 = icmp eq i32 %i.av, 0
  %.144 = select i1 %.not138, i32 -216, i32 -215
  br label %.thread

bb.z:                                             ; preds = %bb.x, %bb.w
  %.2123 = phi i32 [ 0, %bb.w ], [ 1, %bb.x ]     ; 2 uses
  %.not135 = icmp ult ptr %i.ao, %2
  br i1 %.not135, label %bb.p, label %.loopexit, !llvm.loop !124

.loopexit:                                        ; preds = %bb.z, %.preheader, %bb.v
  %.1122166 = phi i32 [ %.1122171, %bb.v ], [ %.1122.ph, %.preheader ], [ %.2123, %bb.z ]
  %.1116 = phi i32 [ %i.ai, %bb.v ], [ %i.n, %.preheader ], [ %i.ai, %bb.z ]
  %.1110 = phi ptr [ %.0172, %bb.v ], [ %2, %.preheader ], [ %.0172, %bb.z ] ; 7 uses
  %.1 = phi ptr [ %i.ao, %bb.v ], [ %i.u, %.preheader ], [ %i.ao, %bb.z ]
  %.not139 = icmp eq i32 %.1116, %.0.i
  br i1 %.not139, label %bb.aa, label %._crit_edge181

bb.aa:                                            ; preds = %.loopexit
  %.not140 = icmp eq i32 %.1122166, 0
  br i1 %.not140, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not37.i = icmp ult ptr %.0145150.ph, %.1110
  br i1 %.not37.i, label %.lr.ph.i, label %.thread156

.thread156:                                       ; preds = %bb.ab
  store i32 0, ptr %5, align 4, !tbaa !7
  br label %._crit_edge181

.lr.ph.i:                                         ; preds = %bb.ab
  %i.aw = getelementptr i8, ptr %i.b, i64 32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aj, %.lr.ph.i
  %.039.i = phi ptr [ %.0145150.ph, %.lr.ph.i ], [ %i.bk, %bb.aj ] ; 4 uses
  %.03238.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bu, %bb.aj ] ; 3 uses
  %i.ax = load i32, ptr %i.e, align 8, !tbaa !70
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.az = load i8, ptr %.039.i, align 1, !tbaa !13
  %i.ba = zext i8 %i.az to i32
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !71
  %i.bc = tail call i32 %i.bb(ptr noundef %.039.i, ptr noundef nonnull %.1110, ptr noundef nonnull %i.b) #25, !inline_history !115
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !70
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bd = phi i32 [ 1, %bb.ad ], [ %.pre.i, %bb.ae ] ; 2 uses
  %i.be = phi i32 [ %i.ba, %bb.ad ], [ %i.bc, %bb.ae ] ; 2 uses
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !47
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bh = tail call i32 @onigenc_mbclen(ptr noundef %.039.i, ptr noundef nonnull %.1110, ptr noundef nonnull %i.b) #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bi = phi i32 [ %i.bh, %bb.ag ], [ %i.bd, %bb.af ]
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr i8, ptr %.039.i, i64 %i.bj ; 2 uses
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.bm = tail call i32 %i.bl(i32 noundef %i.be, i32 noundef 4, ptr noundef nonnull %i.b) #25, !inline_history !115
  %.not34.i = icmp eq i32 %i.bm, 0
  br i1 %.not34.i, label %onig_scan_unsigned_number.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bn = add i32 %i.be, -48                      ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = sub nsw i64 2147483647, %i.bo
  %i.bq = udiv i64 %i.bp, 10
  %i.br = zext i32 %.03238.i to i64
  %i.bs = icmp samesign ult i64 %i.bq, %i.br
  br i1 %i.bs, label %onig_scan_unsigned_number.exit.thread, label %bb.aj

onig_scan_unsigned_number.exit.thread:            ; preds = %bb.ai
  store i32 -1, ptr %5, align 4, !tbaa !7
  br label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.bt = mul i32 %.03238.i, 10
  %i.bu = add i32 %i.bn, %i.bt                    ; 2 uses
  %.not.i = icmp ult ptr %i.bk, %.1110
  br i1 %.not.i, label %bb.ac, label %onig_scan_unsigned_number.exit, !llvm.loop !73

onig_scan_unsigned_number.exit:                   ; preds = %bb.ah, %bb.aj
  %.031.i = phi i32 [ %i.bu, %bb.aj ], [ %.03238.i, %bb.ah ] ; 4 uses
  store i32 %.031.i, ptr %5, align 4, !tbaa !7
  %i.bv = icmp slt i32 %.031.i, 0
  br i1 %i.bv, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %onig_scan_unsigned_number.exit
  %i.bw = icmp eq i32 %.031.i, 0
  br i1 %i.bw, label %._crit_edge181, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = mul nsw i32 %.031.i, %.0120151.ph
  store i32 %i.bx, ptr %5, align 4, !tbaa !7
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aa
  store ptr %.1110, ptr %3, align 8, !tbaa !69
  store ptr %.1, ptr %1, align 8, !tbaa !69
  br label %bb.au

.thread:                                          ; preds = %bb.o, %bb.m, %bb.y, %bb.v
  %.1118 = phi i32 [ -215, %bb.m ], [ -215, %bb.v ], [ %.144, %bb.y ], [ -215, %bb.o ] ; 3 uses
  %.2 = phi ptr [ %i.u, %bb.m ], [ %i.ao, %bb.v ], [ %i.ao, %bb.y ], [ %i.u, %bb.o ] ; 2 uses
  %.not141176 = icmp ult ptr %.2, %2
  br i1 %.not141176, label %.lr.ph178, label %._crit_edge181

.lr.ph178:                                        ; preds = %.thread
  %i.by = getelementptr i8, ptr %i.b, i64 32
  br label %bb.ao

bb.an:                                            ; preds = %bb.at
  br i1 %i.cp, label %bb.ao, label %._crit_edge181, !llvm.loop !125

bb.ao:                                            ; preds = %.lr.ph178, %bb.an
  %.3177 = phi ptr [ %.2, %.lr.ph178 ], [ %i.cm, %bb.an ] ; 5 uses
end_hunk_0
begin_hunk_1_@or_code_range_buf:bb.a

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp eq ptr %.mux158, null
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !47
  %i.ad = icmp sgt i32 %i.ac, 1
  %i.ae = select i1 %i.ad, i32 0, i32 128
  br label %.thread.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %.mux158, align 8, !tbaa !66 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %i.ai = icmp slt i32 %i.ag, 1
  br i1 %i.ai, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %0, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !47
  %i.al = icmp sgt i32 %i.ak, 1
  %i.am = select i1 %i.al, i32 0, i32 128
  %wide.trip.count.i = zext nneg i32 %i.ag to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %indvars.iv.i = phi i64 [ 0, %bb.m ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  %.03350.i = phi i32 [ %i.am, %bb.m ], [ %i.aw, %bb.q ] ; 2 uses
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.an = shl i32 %indvars.iv.tr.i, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr [4 x i8], ptr %i.ah, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = getelementptr i8, ptr %i.ap, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7  ; 2 uses
  %i.at = add i32 %i.aq, -1                       ; 2 uses
  %.not.i81 = icmp ugt i32 %.03350.i, %i.at
  br i1 %.not.i81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.03350.i, i32 noundef %i.at, i32 noundef 1) ; 2 uses
  %.not44.i = icmp eq i32 %i.au, 0
  br i1 %.not44.i, label %bb.p, label %bbuf_clone.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.av = icmp eq i32 %i.as, -1
  br i1 %i.av, label %bbuf_clone.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nuw i32 %i.as, 1                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.sink.split.i, label %bb.n, !llvm.loop !194

.thread.sink.split.i:                             ; preds = %bb.q, %bb.k
  %.lcssa.sink.i = phi i32 [ %i.ae, %bb.k ], [ %i.aw, %bb.q ]
  %i.ax = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.lcssa.sink.i, i32 noundef -1, i32 noundef 1)
  br label %bbuf_clone.exit

bb.r:                                             ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ay = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 4      ; 2 uses
  %i.bb = icmp eq i32 %4, 0
  br i1 %i.bb, label %bb.t, label %.thread112

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 5 uses
  store ptr %i.bc, ptr %5, align 8, !tbaa !138
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bbuf_clone.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = getelementptr i8, ptr %3, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !181
  %i.bg = zext i32 %i.bf to i64
  %i.bh = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #25 ; 2 uses
  %.not.i82 = icmp eq i32 %i.bh, 0
  br i1 %.not.i82, label %bb.v, label %bbuf_clone.exit

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr i8, ptr %3, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !183 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bc, i64 8
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !183
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !66
  %i.bm = load ptr, ptr %3, align 8, !tbaa !66
  %i.bn = zext i32 %i.bj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bl, ptr noundef nonnull align 1 %i.bm, i64 noundef %i.bn, i1 noundef false) #25
  br label %.preheader

bb.w:                                             ; preds = %bb.r
  %i.bo = icmp eq i32 %4, 0
  %i.bp = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 4      ; 2 uses
  br i1 %i.bo, label %.thread112, label %.preheader

.thread112:                                       ; preds = %bb.s, %bb.w
  %.170110115 = phi ptr [ %1, %bb.w ], [ %3, %bb.s ]
  %i.bs = phi i32 [ %i.bq, %bb.w ], [ %i.az, %bb.s ] ; 2 uses
  %i.bt = phi ptr [ %i.br, %bb.w ], [ %i.ba, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %.170110115, align 8, !tbaa !66 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 4
  %i.bx = icmp slt i32 %i.bv, 1
  %i.by = getelementptr i8, ptr %0, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !47
  %i.ca = icmp sgt i32 %i.bz, 1
  %i.cb = select i1 %i.ca, i32 0, i32 128         ; 2 uses
  br i1 %i.bx, label %bbuf_clone.exit84, label %bb.x

bb.x:                                             ; preds = %.thread112
  %wide.trip.count.i85 = zext nneg i32 %i.bv to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ab, %bb.x
  %indvars.iv.i86 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i92, %bb.ab ] ; 2 uses
  %.03350.i87 = phi i32 [ %i.cb, %bb.x ], [ %i.cl, %bb.ab ] ; 2 uses
  %indvars.iv.tr.i88 = trunc i64 %indvars.iv.i86 to i32
  %i.cc = shl i32 %indvars.iv.tr.i88, 1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %i.bw, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = getelementptr i8, ptr %i.ce, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7  ; 2 uses
  %i.ci = add i32 %i.cf, -1                       ; 2 uses
  %.not.i89 = icmp ugt i32 %.03350.i87, %i.ci
  br i1 %.not.i89, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.03350.i87, i32 noundef %i.ci, i32 noundef 1) ; 2 uses
  %.not44.i90 = icmp eq i32 %i.cj, 0
  br i1 %.not44.i90, label %bb.aa, label %bbuf_clone.exit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ck = icmp eq i32 %i.ch, -1
  br i1 %i.ck, label %.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = add nuw i32 %i.ch, 1                    ; 2 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i85
  br i1 %exitcond.not.i93, label %bbuf_clone.exit84, label %bb.y, !llvm.loop !194

bbuf_clone.exit84:                                ; preds = %bb.ab, %.thread112
  %.lcssa.sink.i95 = phi i32 [ %i.cb, %.thread112 ], [ %i.cl, %bb.ab ]
  %i.cm = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %.lcssa.sink.i95, i32 noundef -1, i32 noundef 1) ; 2 uses
  %.not78 = icmp eq i32 %i.cm, 0
  br i1 %.not78, label %.preheader, label %bbuf_clone.exit

.preheader:                                       ; preds = %bb.aa, %bb.v, %bb.w, %bbuf_clone.exit84
  %i.cn = phi i32 [ %i.bs, %bbuf_clone.exit84 ], [ %i.bq, %bb.w ], [ %i.az, %bb.v ], [ %i.bs, %bb.aa ] ; 2 uses
  %i.co = phi ptr [ %i.bt, %bbuf_clone.exit84 ], [ %i.br, %bb.w ], [ %i.ba, %bb.v ], [ %i.bt, %bb.aa ] ; 2 uses
  %.not127 = icmp eq i32 %i.cn, 0
  br i1 %.not127, label %bbuf_clone.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.cn to i64
  br label %.lr.ph

bb.ac:                                            ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bbuf_clone.exit, label %.lr.ph, !llvm.loop !204

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv to i32
  %i.cq = shl i32 %i.cp, 1                        ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr [4 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %i.cu = or disjoint i32 %i.cq, 1
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr [4 x i8], ptr %i.co, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.ct, i32 noundef %i.cx, i32 noundef 1) ; 2 uses
  %.not79 = icmp eq i32 %i.cy, 0
  br i1 %.not79, label %bb.ac, label %bbuf_clone.exit

bbuf_clone.exit:                                  ; preds = %bb.z, %.lr.ph, %bb.ac, %bb.p, %bb.o, %.preheader, %bb.t, %bb.u, %.thread.sink.split.i, %bb.i, %bb.h, %bb.g, %bbuf_clone.exit84, %bb.b, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 0, %.preheader ], [ %i.m, %bb.e ], [ 0, %bb.p ], [ %i.t, %bb.h ], [ 0, %bb.b ], [ %i.cm, %bbuf_clone.exit84 ], [ 0, %bb.i ], [ -5, %bb.g ], [ -5, %bb.t ], [ %i.bh, %bb.u ], [ %i.ax, %.thread.sink.split.i ], [ 0, %bb.ac ], [ %i.au, %bb.o ], [ %i.cy, %.lr.ph ], [ %i.cj, %bb.z ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @and_code_range_buf(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %4, ptr nofree noundef captures(none) %5) unnamed_addr #5 {
bb.a:
  store ptr null, ptr %4, align 8, !tbaa !138
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %6 = trunc nuw i32 %1 to i1
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.b, %6
  br i1 %or.cond, label %bb.c, label %bbuf_clone.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !138
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bbuf_clone.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !181
  %i.g = zext i32 %i.f to i64
  %i.h = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.c, i64 noundef %i.g) #25 ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bbuf_clone.exit.sink.split, label %bbuf_clone.exit

bb.e:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %2, null
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not95 = icmp eq i32 %3, 0
  br i1 %.not95, label %bbuf_clone.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26 ; 4 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !138
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bbuf_clone.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !181
  %i.n = zext i32 %i.m to i64
  %i.o = tail call i32 @onig_bbuf_init(ptr noundef nonnull %i.j, i64 noundef %i.n) #25 ; 2 uses
  %.not.i96 = icmp eq i32 %i.o, 0
  br i1 %.not.i96, label %bbuf_clone.exit.sink.split, label %bbuf_clone.exit

bb.i:                                             ; preds = %bb.e
  %.not = icmp eq i32 %1, 0
  %i.p = load ptr, ptr %2, align 8, !tbaa !66     ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 4 uses
  %i.r = getelementptr i8, ptr %i.p, i64 4        ; 3 uses
  br i1 %.not, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.s = icmp eq i32 %3, 0
  %i.t = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  br i1 %i.s, label %.preheader111, label %bbuf_clone.exit

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 4        ; 3 uses
  %i.y = icmp eq i32 %3, 0
  br i1 %i.y, label %.preheader, label %.preheader111

.preheader111:                                    ; preds = %.thread, %bb.j
  %.ph = phi i32 [ %i.w, %bb.j ], [ %i.q, %.thread ] ; 2 uses
  %.ph112 = phi i32 [ %i.q, %bb.j ], [ %i.u, %.thread ] ; 2 uses
  %.ph113 = phi ptr [ %i.x, %bb.j ], [ %i.r, %.thread ] ; 4 uses
  %i.z = phi ptr [ %i.p, %bb.j ], [ %i.t, %.thread ]
  %.not128 = icmp eq i32 %.ph, 0
  br i1 %.not128, label %bbuf_clone.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader111
  %i.aa = icmp sgt i32 %.ph112, 0
  %wide.trip.count.i = zext nneg i32 %.ph112 to i64
  %wide.trip.count139 = zext i32 %.ph to i64      ; 2 uses
  br i1 %i.aa, label %.lr.ph.preheader.i.us.preheader, label %._crit_edge.i

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %and_code_range1.exit.us
  %indvars.iv136 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader ], [ %indvars.iv.next137, %and_code_range1.exit.us ] ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv136 to i32
  %i.ad = shl i32 %i.ac, 1                        ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr %.ph113, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = or disjoint i32 %i.ad, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [4 x i8], ptr %.ph113, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.s, %.lr.ph.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us, %bb.s ] ; 2 uses
  %.03755.i.us = phi i32 [ %i.ag, %.lr.ph.preheader.i.us ], [ %.2.i.us, %bb.s ] ; 6 uses
  %.03953.i.us = phi i32 [ %i.ak, %.lr.ph.preheader.i.us ], [ %.241.i.us, %bb.s ] ; 6 uses
  %indvars.iv.tr.i.us = trunc i64 %indvars.iv.i.us to i32
  %i.al = shl i32 %indvars.iv.tr.i.us, 1
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr %i.ab, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7  ; 4 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 4 uses
  %i.ar = icmp ult i32 %i.ao, %.03755.i.us
  br i1 %i.ar, label %bb.p, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.us
  %.not.i100.us = icmp ugt i32 %i.ao, %.03953.i.us
  br i1 %.not.i100.us, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = icmp ult i32 %i.aq, %.03953.i.us
  %i.at = add i32 %i.ao, -1                       ; 3 uses
  br i1 %i.as, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %.not49.i.us = icmp ugt i32 %.03755.i.us, %i.at
  br i1 %.not49.i.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.03755.i.us, i32 noundef %i.at, i32 noundef 1) ; 2 uses
  %.not50.i.us = icmp eq i32 %i.au, 0
  br i1 %.not50.i.us, label %bb.o, label %bbuf_clone.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = add nuw i32 %i.aq, 1
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.us
  %i.aw = icmp ult i32 %i.aq, %.03755.i.us
  br i1 %i.aw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add i32 %i.aq, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.l, %bb.k
  %.140.i.us = phi i32 [ %.03953.i.us, %bb.q ], [ %.03953.i.us, %bb.o ], [ %.03953.i.us, %bb.k ], [ %i.at, %bb.l ] ; 3 uses
  %.1.i.us = phi i32 [ %i.ax, %bb.q ], [ %i.av, %bb.o ], [ %i.ao, %bb.k ], [ %.03755.i.us, %bb.l ] ; 3 uses
  %i.ay = icmp ugt i32 %.1.i.us, %.140.i.us
  br i1 %i.ay, label %._crit_edge.i.loopexit.us, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.241.i.us = phi i32 [ %.03953.i.us, %bb.p ], [ %.140.i.us, %bb.r ] ; 2 uses
  %.2.i.us = phi i32 [ %.03755.i.us, %bb.p ], [ %.1.i.us, %bb.r ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %._crit_edge.i.loopexit.us, label %.lr.ph.i.us, !llvm.loop !205

bb.t:                                             ; preds = %._crit_edge.i.loopexit.us
  %i.az = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.3.i.ph.us, i32 noundef %.342.i.ph.us, i32 noundef 1) ; 2 uses
  %.not52.i.us = icmp eq i32 %i.az, 0
  br i1 %.not52.i.us, label %and_code_range1.exit.us, label %bbuf_clone.exit

and_code_range1.exit.us:                          ; preds = %bb.t, %._crit_edge.i.loopexit.us
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %bbuf_clone.exit, label %.lr.ph.preheader.i.us, !llvm.loop !206

._crit_edge.i.loopexit.us:                        ; preds = %bb.s, %bb.r
  %.342.i.ph.us = phi i32 [ %.241.i.us, %bb.s ], [ %.140.i.us, %bb.r ] ; 2 uses
  %.3.i.ph.us = phi i32 [ %.2.i.us, %bb.s ], [ %.1.i.us, %bb.r ] ; 2 uses
  %.not51.i.us = icmp ugt i32 %.3.i.ph.us, %.342.i.ph.us
  br i1 %.not51.i.us, label %and_code_range1.exit.us, label %bb.t

.preheader:                                       ; preds = %bb.j
  %i.ba = icmp ne i32 %i.w, 0
  %i.bb = icmp ne i32 %i.q, 0
  %or.cond127 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond127, label %.lr.ph123.preheader, label %bbuf_clone.exit

.lr.ph123.preheader:                              ; preds = %.preheader
  %wide.trip.count149 = zext i32 %i.w to i64
  %wide.trip.count144 = zext i32 %i.q to i64
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %._crit_edge
  %indvars.iv146 = phi i64 [ 0, %.lr.ph123.preheader ], [ %indvars.iv.next147, %._crit_edge ] ; 2 uses
  %i.bc = trunc nuw i64 %indvars.iv146 to i32
  %i.bd = shl i32 %i.bc, 1                        ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr [4 x i8], ptr %i.x, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7  ; 2 uses
  %i.bh = or disjoint i32 %i.bd, 1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.x, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph123, %bb.x
  %indvars.iv141 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next142, %bb.x ] ; 2 uses
  %i.bl = trunc nuw i64 %indvars.iv141 to i32
  %i.bm = shl i32 %i.bl, 1                        ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr %i.r, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7  ; 2 uses
  %i.bq = or disjoint i32 %i.bm, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.r, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7  ; 2 uses
  %i.bu = icmp ugt i32 %i.bp, %i.bk
  br i1 %i.bu, label %._crit_edge, label %bb.v

end_hunk_1
