inline.NumInlined: 580
inline.NumDeleted: 115
begin_hunk_0_@rb_reg_quote:bb.a
  %i.do = call i32 %i.dn(i32 noundef 110, ptr noundef %i.dm, ptr noundef %i.b) #28, !inline_history !92
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr i8, ptr %i.dm, i64 %i.dp
  br label %.backedge

bb.t:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.ds = call i32 %i.dr(i32 noundef 92, ptr noundef %.099124, ptr noundef %i.b) #28, !inline_history !92
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr i8, ptr %.099124, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.dw = call i32 %i.dv(i32 noundef 114, ptr noundef %i.du, ptr noundef %i.b) #28, !inline_history !92
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr i8, ptr %i.du, i64 %i.dx
  br label %.backedge

bb.u:                                             ; preds = %bb.o
  %i.dz = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.ea = call i32 %i.dz(i32 noundef 92, ptr noundef %.099124, ptr noundef %i.b) #28, !inline_history !92
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %.099124, i64 %i.eb ; 2 uses
  %i.ed = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.ee = call i32 %i.ed(i32 noundef 102, ptr noundef %i.ec, ptr noundef %i.b) #28, !inline_history !92
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr i8, ptr %i.ec, i64 %i.ef
  br label %.backedge

bb.v:                                             ; preds = %bb.o
  %i.eh = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.ei = call i32 %i.eh(i32 noundef 92, ptr noundef %.099124, ptr noundef %i.b) #28, !inline_history !92
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr i8, ptr %.099124, i64 %i.ej ; 2 uses
  %i.el = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.em = call i32 %i.el(i32 noundef 118, ptr noundef %i.ek, ptr noundef %i.b) #28, !inline_history !92
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr i8, ptr %i.ek, i64 %i.en
  br label %.backedge

bb.w:                                             ; preds = %bb.p, %bb.o
  %.2101 = phi ptr [ %.099124, %bb.o ], [ %i.cr, %bb.p ] ; 2 uses
  %i.ep = load ptr, ptr %i.ao, align 8, !tbaa !91
  %i.eq = call i32 %i.ep(i32 noundef range(i32 0, -1) %i.ap, ptr noundef %.2101, ptr noundef %i.b) #28, !inline_history !92
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr i8, ptr %.2101, i64 %i.er
  br label %.backedge

._crit_edge127:                                   ; preds = %.backedge, %ruby_nonempty_memcpy.exit
  %.099.lcssa = phi ptr [ %i.am, %ruby_nonempty_memcpy.exit ], [ %.099.be, %.backedge ]
  %i.et = load i64, ptr %i.z, align 8, !tbaa !37
  %i.eu = and i64 %i.et, 8192
  %.not.i112 = icmp eq i64 %i.eu, 0
  br i1 %.not.i112, label %RSTRING_PTR.exit113, label %bb.x

bb.x:                                             ; preds = %._crit_edge127
  %i.ev = load ptr, ptr %i.ac, align 8, !tbaa !13
  br label %RSTRING_PTR.exit113

RSTRING_PTR.exit113:                              ; preds = %._crit_edge127, %bb.x
  %i.ew = phi ptr [ %i.ev, %bb.x ], [ %i.ac, %._crit_edge127 ]
  %i.ex = ptrtoint ptr %.099.lcssa to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = call i64 @rb_str_resize(i64 noundef %i.w, i64 noundef %i.ez) #28 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.e, %RSTRING_PTR.exit113
  %.097 = phi i64 [ %i.w, %RSTRING_PTR.exit113 ], [ %i.r, %bb.e ], [ %i.r, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.097
}

declare i32 @rb_enc_str_asciionly_p(i64 noundef) local_unnamed_addr #4

declare i32 @rb_enc_ascget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @rb_enc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_str_new_shared(i64 noundef) local_unnamed_addr #4

declare i64 @rb_enc_associate(i64 noundef, ptr noundef) local_unnamed_addr #4

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #4

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_enc_copy(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 64) i32 @rb_reg_options(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not3.i = icmp eq i64 %i.e, 0
  br i1 %.not3.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = and i64 %i.g, 8192
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.e, label %rb_reg_check.exit

bb.e:                                             ; preds = %RREGEXP_SRC_PTR.exit.i, %bb.b, %bb.a
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  %i.m = getelementptr i8, ptr %i.c, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !60
  %i.o = and i32 %i.n, 7
  %i.p = load i64, ptr %i.a, align 8, !tbaa !37
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = lshr i32 %i.q, 12
  %i.s = and i32 %i.r, 16
  %spec.select = or disjoint i32 %i.s, %i.o
  %i.t = lshr i32 %i.q, 13
  %i.u = and i32 %i.t, 32
  %.1 = or disjoint i32 %spec.select, %i.u
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_reg_regsub(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call ptr @rb_enc_get(i64 noundef %0) #28 ; 16 uses
  %i.c = tail call ptr @rb_enc_get(i64 noundef %1) #28 ; 3 uses
  %i.d = getelementptr i8, ptr %i.b, i64 20
  %.val.i = load i32, ptr %i.d, align 4, !tbaa !14
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %bb.b, label %rb_enc_asciicompat.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.b) #27
  %.not3.i = icmp eq i32 %i.e, 0
  br label %rb_enc_asciicompat.exit

rb_enc_asciicompat.exit:                          ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ false, %bb.a ], [ %.not3.i, %bb.b ] ; 4 uses
  %i.f = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = and i64 %i.g, 8192
  %.not.i178 = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 4 uses
  br i1 %.not.i178, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %rb_enc_asciicompat.exit
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_enc_asciicompat.exit, %bb.c
  %i.k = phi ptr [ %i.j, %bb.c ], [ %i.i, %rb_enc_asciicompat.exit ] ; 4 uses
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 17 uses
  %i.o = icmp ult ptr %i.k, %i.n
  br i1 %i.o, label %.lr.ph218, label %._crit_edge.thread

.lr.ph218:                                        ; preds = %RSTRING_PTR.exit
  %i.p = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %i.q = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.r = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 24       ; 6 uses
  %i.t = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %i.v = icmp eq i64 %3, 4                        ; 2 uses
  %i.w = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = getelementptr i8, ptr %i.w, i64 16       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph218, %bb.an
  %.0150217 = phi i64 [ 0, %.lr.ph218 ], [ %.2, %bb.an ] ; 4 uses
  %.0151216 = phi ptr [ %i.k, %.lr.ph218 ], [ %.2153, %bb.an ] ; 4 uses
  %.0154215 = phi ptr [ %i.k, %.lr.ph218 ], [ %.2156, %bb.an ] ; 9 uses
  br i1 %.0.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.a, align 4, !tbaa !7
  %i.z = load i8, ptr %.0154215, align 1, !tbaa !13
  %.fr = freeze i8 %i.z                           ; 2 uses
  %i.aa = zext nneg i8 %.fr to i32
  %i.ab = icmp slt i8 %.fr, 0
  br i1 %i.ab, label %.thread, label %.thread242

bb.f:                                             ; preds = %bb.d
  %i.ac = call i32 @rb_enc_ascget(ptr noundef %.0154215, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef %i.b) #28 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  br i1 %i.ad, label %.thread, label %.thread242

.thread:                                          ; preds = %bb.e, %bb.f
  %i.ae = call i32 @rb_enc_mbclen(ptr noundef %.0154215, ptr noundef nonnull %i.n, ptr noundef %i.b) #28
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %.0154215, i64 %i.af
  br label %bb.an, !llvm.loop !94

.thread242:                                       ; preds = %bb.e, %bb.f
  %i.ah = phi i32 [ %i.ac, %bb.f ], [ %i.aa, %bb.e ]
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !7
  %i.aj = sext i32 %i.ai to i64                   ; 4 uses
  %i.ak = getelementptr i8, ptr %.0154215, i64 %i.aj ; 8 uses
  %.not167 = icmp ne i32 %i.ah, 92
  %i.al = icmp eq ptr %i.ak, %i.n
  %or.cond = select i1 %.not167, i1 true, i1 %i.al
  br i1 %or.cond, label %bb.an, label %bb.g, !llvm.loop !94

bb.g:                                             ; preds = %.thread242
  %.not168 = icmp eq i64 %.0150217, 0
  %i.am = ptrtoint ptr %.0154215 to i64
  %i.an = ptrtoint ptr %.0151216 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  br i1 %.not168, label %bb.h, label %._crit_edge225

bb.h:                                             ; preds = %bb.g
  %i.ap = call i64 @rb_str_buf_new(i64 noundef %i.ao) #28
  br label %._crit_edge225

._crit_edge225:                                   ; preds = %bb.g, %bb.h
  %.1 = phi i64 [ %i.ap, %bb.h ], [ %.0150217, %bb.g ] ; 20 uses
  %i.aq = call i64 @rb_enc_str_buf_cat(i64 noundef %.1, ptr noundef %.0151216, i64 noundef %i.ao, ptr noundef %i.b) #28 ; 0 uses
  br i1 %.0.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge225
  store i32 1, ptr %i.a, align 4, !tbaa !7
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !13
  %.fr205 = freeze i8 %i.ar                       ; 2 uses
  %i.as = zext nneg i8 %.fr205 to i32
  %i.at = icmp slt i8 %.fr205, 0
  br i1 %i.at, label %.thread190, label %.thread243

bb.j:                                             ; preds = %._crit_edge225
  %i.au = call i32 @rb_enc_ascget(ptr noundef %i.ak, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef %i.b) #28 ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %.thread190, label %.thread243

.thread190:                                       ; preds = %bb.i, %bb.j
  %i.aw = call i32 @rb_enc_mbclen(ptr noundef %i.ak, ptr noundef nonnull %i.n, ptr noundef %i.b) #28
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ak, i64 %i.ax  ; 2 uses
  %i.az = add nsw i64 %i.ax, %i.aj
  %i.ba = call i64 @rb_enc_str_buf_cat(i64 noundef %.1, ptr noundef %.0154215, i64 noundef %i.az, ptr noundef %i.b) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

.thread243:                                       ; preds = %bb.i, %bb.j
  %i.bb = phi i32 [ %i.au, %bb.j ], [ %i.as, %bb.i ] ; 2 uses
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bd = sext i32 %i.bc to i64                   ; 4 uses
  %i.be = getelementptr i8, ptr %i.ak, i64 %i.bd  ; 24 uses
  switch i32 %i.bb, label %bb.aj [
    i32 49, label %bb.k
    i32 50, label %bb.k
    i32 51, label %bb.k
    i32 52, label %bb.k
    i32 53, label %bb.k
    i32 54, label %bb.k
    i32 55, label %bb.k
    i32 56, label %bb.k
    i32 57, label %bb.k
    i32 107, label %bb.n
    i32 48, label %.thread199
    i32 38, label %.thread199
    i32 96, label %bb.ab
    i32 39, label %bb.ad
    i32 43, label %bb.af
    i32 92, label %bb.ai
  ]

bb.k:                                             ; preds = %.thread243, %.thread243, %.thread243, %.thread243, %.thread243, %.thread243, %.thread243, %.thread243, %.thread243
  br i1 %i.v, label %bb.an, label %bb.l, !llvm.loop !94

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.bg = call i32 @onig_noname_group_capture_is_active(ptr noundef %i.bf) #28
  %.not173 = icmp eq i32 %i.bg, 0
  br i1 %.not173, label %bb.an, label %bb.m, !llvm.loop !94

bb.m:                                             ; preds = %bb.l
  %i.bh = add nsw i32 %i.bb, -48
  br label %.thread199

bb.n:                                             ; preds = %.thread243
  %i.bi = icmp ult ptr %i.be, %i.n
  br i1 %i.bi, label %bb.o, label %.thread193

bb.o:                                             ; preds = %bb.n
  br i1 %.0.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.a, align 4, !tbaa !7
  %i.bj = load i8, ptr %i.be, align 1, !tbaa !13
  %.fr206 = freeze i8 %i.bj                       ; 2 uses
  %i.bk = zext nneg i8 %.fr206 to i32
  %i.bl = icmp slt i8 %.fr206, 0
  br i1 %i.bl, label %.thread193, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bm = call i32 @rb_enc_ascget(ptr noundef %i.be, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef %i.b) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bn = phi i32 [ %i.bm, %bb.q ], [ %i.bk, %bb.p ]
  %i.bo = icmp eq i32 %i.bn, 60
  br i1 %i.bo, label %bb.s, label %.thread193

bb.s:                                             ; preds = %bb.r
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.be, i64 %i.bq  ; 5 uses
  %i.bs = icmp ult ptr %i.br, %i.n
  br i1 %i.bs, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.s
  br i1 %.0.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.u
  %.0149213.us = phi ptr [ %i.by, %bb.u ], [ %i.br, %.lr.ph ] ; 4 uses
  store i32 1, ptr %i.a, align 4, !tbaa !7
  %i.bt = load i8, ptr %.0149213.us, align 1, !tbaa !13
  %.fr207.us = freeze i8 %i.bt                    ; 2 uses
  %i.bu = icmp slt i8 %.fr207.us, 0
  br i1 %i.bu, label %.thread196.us, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us
  %cond = icmp eq i8 %.fr207.us, 62
  br i1 %cond, label %.split.us, label %bb.u

.thread196.us:                                    ; preds = %.lr.ph.split.us
  %i.bv = call i32 @rb_enc_mbclen(ptr noundef nonnull %.0149213.us, ptr noundef nonnull %i.n, ptr noundef %i.b) #28
  %i.bw = sext i32 %i.bv to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread196.us
  %i.bx = phi i64 [ %i.bw, %.thread196.us ], [ 1, %bb.t ]
  %i.by = getelementptr i8, ptr %.0149213.us, i64 %i.bx ; 2 uses
  %i.bz = icmp ult ptr %i.by, %i.n
  br i1 %i.bz, label %.lr.ph.split.us, label %.critedge, !llvm.loop !95

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.w
  %.0149213 = phi ptr [ %i.cf, %bb.w ], [ %i.br, %.lr.ph ] ; 4 uses
  %i.ca = call i32 @rb_enc_ascget(ptr noundef %.0149213, ptr noundef nonnull %i.n, ptr noundef nonnull %i.a, ptr noundef %i.b) #28
  switch i32 %i.ca, label %bb.v [
    i32 62, label %.split.us
    i32 -1, label %.thread196.a
  ]

.thread196.a:                                     ; preds = %.lr.ph.split
  %i.cb = call i32 @rb_enc_mbclen(ptr noundef %.0149213, ptr noundef nonnull %i.n, ptr noundef %i.b) #28
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.split
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread196.a
  %i.cd = phi i32 [ %i.cb, %.thread196.a ], [ %i.cc, %bb.v ]
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr i8, ptr %.0149213, i64 %i.ce ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.n
  br i1 %i.cg, label %.lr.ph.split, label %.critedge, !llvm.loop !95

.split.us:                                        ; preds = %.lr.ph.split, %bb.t
  %.us-phi = phi ptr [ %.0149213.us, %bb.t ], [ %.0149213, %.lr.ph.split ] ; 3 uses
  %i.ch = load i64, ptr %i.f, align 8, !tbaa !37
  %i.ci = and i64 %i.ch, 8192
  %.not.i179 = icmp eq i64 %i.ci, 0
  br i1 %.not.i179, label %RSTRING_PTR.exit180, label %bb.x

bb.x:                                             ; preds = %.split.us
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %RSTRING_PTR.exit180

RSTRING_PTR.exit180:                              ; preds = %.split.us, %bb.x
  %i.ck = phi ptr [ %i.cj, %bb.x ], [ %i.i, %.split.us ]
  %i.cl = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ptrtoint ptr %.us-phi to i64
  %i.cp = sub i64 %i.co, %i.cl
  %i.cq = call i64 @rb_str_subseq(i64 noundef %0, i64 noundef %i.cn, i64 noundef %i.cp) #28 ; 2 uses
  br i1 %i.v, label %.thread197, label %bb.y

bb.y:                                             ; preds = %RSTRING_PTR.exit180
  %i.cr = load i64, ptr %i.x, align 8, !tbaa !55
  %i.cs = call ptr @rb_enc_compatible(i64 noundef %i.cr, i64 noundef %i.cq) #28
  %.not172 = icmp eq ptr %i.cs, null
  br i1 %.not172, label %.thread197, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.cu = call i32 @onig_name_to_backref_number(ptr noundef %i.ct, ptr noundef %i.br, ptr noundef %.us-phi, ptr noundef %2) #28 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %.thread197, label %bb.aa

.thread197:                                       ; preds = %bb.y, %RSTRING_PTR.exit180, %bb.z
  call fastcc void @name_to_backref_error(i64 noundef %i.cq) #30
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !7
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %.us-phi, i64 %i.cx
  br label %.thread199

.critedge:                                        ; preds = %bb.s, %bb.w, %bb.u
  %i.cz = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cz, ptr noundef nonnull @.str.3) #29
  unreachable

.thread193:                                       ; preds = %bb.p, %bb.r, %bb.n
  %i.da = add nsw i64 %i.bd, %i.aj
  %i.db = call i64 @rb_enc_str_buf_cat(i64 noundef %.1, ptr noundef %.0154215, i64 noundef %i.da, ptr noundef %i.b) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

bb.ab:                                            ; preds = %.thread243
  %i.dc = load i64, ptr %i.r, align 8, !tbaa !37
  %i.dd = and i64 %i.dc, 8192
  %.not.i182 = icmp eq i64 %i.dd, 0
  br i1 %.not.i182, label %RSTRING_PTR.exit183, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !13
  br label %RSTRING_PTR.exit183

RSTRING_PTR.exit183:                              ; preds = %bb.ab, %bb.ac
  %i.df = phi ptr [ %i.de, %bb.ac ], [ %i.s, %bb.ab ]
  %i.dg = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.di = call i64 @rb_enc_str_buf_cat(i64 noundef %.1, ptr noundef %i.df, i64 noundef %i.dh, ptr noundef %i.c) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

bb.ad:                                            ; preds = %.thread243
  %i.dj = load i64, ptr %i.r, align 8, !tbaa !37
  %i.dk = and i64 %i.dj, 8192
  %.not.i184 = icmp eq i64 %i.dk, 0
  br i1 %.not.i184, label %RSTRING_PTR.exit185, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !13
  br label %RSTRING_PTR.exit185

RSTRING_PTR.exit185:                              ; preds = %bb.ad, %bb.ae
  %i.dm = phi ptr [ %i.dl, %bb.ae ], [ %i.s, %bb.ad ]
  %i.dn = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dm, i64 %i.do
  %i.dq = load i64, ptr %i.u, align 8, !tbaa !38
  %i.dr = sub i64 %i.dq, %i.do
  %i.ds = call i64 @rb_enc_str_buf_cat(i64 noundef %.1, ptr noundef %i.dp, i64 noundef %i.dr, ptr noundef %i.c) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

bb.af:                                            ; preds = %.thread243
  %i.dt = load i32, ptr %i.p, align 4, !tbaa !43
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !73
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %bb.af
  %.0157.in = phi i32 [ %i.dt, %bb.af ], [ %.0157, %bb.ag ] ; 2 uses
  %.0157 = add i32 %.0157.in, -1                  ; 4 uses
  %i.dv = sext i32 %.0157 to i64
  %i.dw = getelementptr [8 x i8], ptr %i.du, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !19
  %i.dy = icmp eq i64 %i.dx, -1
  %i.dz = icmp sgt i32 %.0157, 0
  %i.ea = and i1 %i.dz, %i.dy
  br i1 %i.ea, label %bb.ag, label %bb.ah, !llvm.loop !96

bb.ah:                                            ; preds = %bb.ag
  %i.eb = add i32 %.0157.in, -2
  %or.cond204 = icmp ult i32 %i.eb, 2147483647
  br i1 %or.cond204, label %.thread199, label %bb.an, !llvm.loop !94

bb.ai:                                            ; preds = %.thread243
  %i.ec = call i64 @rb_enc_str_buf_cat(i64 noundef %.1, ptr noundef %i.ak, i64 noundef %i.bd, ptr noundef %i.b) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

bb.aj:                                            ; preds = %.thread243
  %i.ed = add nsw i64 %i.bd, %i.aj
  %i.ee = call i64 @rb_enc_str_buf_cat(i64 noundef %.1, ptr noundef %.0154215, i64 noundef %i.ed, ptr noundef %i.b) #28 ; 0 uses
  br label %bb.an, !llvm.loop !94

.thread199:                                       ; preds = %bb.ah, %.thread243, %.thread243, %bb.aa, %bb.m
  %.1152203 = phi ptr [ %i.be, %bb.ah ], [ %i.be, %.thread243 ], [ %i.be, %.thread243 ], [ %i.cy, %bb.aa ], [ %i.be, %bb.m ] ; 6 uses
  %.1158202 = phi i32 [ %.0157, %bb.ah ], [ 0, %.thread243 ], [ 0, %.thread243 ], [ %i.cu, %bb.aa ], [ %i.bh, %bb.m ] ; 2 uses
  %i.ef = load i32, ptr %i.p, align 4, !tbaa !43
  %.not174 = icmp slt i32 %.1158202, %i.ef
  br i1 %.not174, label %bb.ak, label %bb.an, !llvm.loop !94

bb.ak:                                            ; preds = %.thread199
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.eh = zext nneg i32 %.1158202 to i64          ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !19 ; 3 uses
  %i.ek = icmp eq i64 %i.ej, -1
  br i1 %i.ek, label %bb.an, label %bb.al, !llvm.loop !94

bb.al:                                            ; preds = %bb.ak
  %i.el = load i64, ptr %i.r, align 8, !tbaa !37
  %i.em = and i64 %i.el, 8192
  %.not.i186 = icmp eq i64 %i.em, 0
  br i1 %.not.i186, label %RSTRING_PTR.exit187, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.en = load ptr, ptr %i.s, align 8, !tbaa !13
  br label %RSTRING_PTR.exit187

RSTRING_PTR.exit187:                              ; preds = %bb.al, %bb.am
  %i.eo = phi ptr [ %i.en, %bb.am ], [ %i.s, %bb.al ]
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ej
  %i.eq = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %i.eh
  %i.es = load i64, ptr %i.er, align 8, !tbaa !19
  %i.et = sub i64 %i.es, %i.ej
  %i.eu = call i64 @rb_enc_str_buf_cat(i64 noundef %.1, ptr noundef %i.ep, i64 noundef %i.et, ptr noundef %i.c) #28 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %RSTRING_PTR.exit187, %bb.ak, %.thread199, %bb.ah, %bb.k, %bb.l, %.thread242, %bb.aj, %bb.ai, %RSTRING_PTR.exit185, %RSTRING_PTR.exit183, %.thread193, %.thread190, %.thread
  %.2156 = phi ptr [ %i.ag, %.thread ], [ %i.be, %bb.ai ], [ %i.ay, %.thread190 ], [ %i.be, %bb.aj ], [ %i.ak, %.thread242 ], [ %i.be, %bb.ah ], [ %.1152203, %.thread199 ], [ %.1152203, %bb.ak ], [ %i.be, %.thread193 ], [ %i.be, %RSTRING_PTR.exit183 ], [ %i.be, %RSTRING_PTR.exit185 ], [ %i.be, %bb.k ], [ %i.be, %bb.l ], [ %.1152203, %RSTRING_PTR.exit187 ] ; 2 uses
  %.2153 = phi ptr [ %.0151216, %.thread ], [ %i.be, %bb.ai ], [ %i.ay, %.thread190 ], [ %i.be, %bb.aj ], [ %.0151216, %.thread242 ], [ %i.be, %bb.ah ], [ %.1152203, %.thread199 ], [ %.1152203, %bb.ak ], [ %i.be, %.thread193 ], [ %i.be, %RSTRING_PTR.exit183 ], [ %i.be, %RSTRING_PTR.exit185 ], [ %i.be, %bb.k ], [ %i.be, %bb.l ], [ %.1152203, %RSTRING_PTR.exit187 ] ; 4 uses
  %.2 = phi i64 [ %.0150217, %.thread ], [ %.1, %bb.ai ], [ %.1, %.thread190 ], [ %.1, %bb.aj ], [ %.0150217, %.thread242 ], [ %.1, %bb.ah ], [ %.1, %.thread199 ], [ %.1, %bb.ak ], [ %.1, %.thread193 ], [ %.1, %RSTRING_PTR.exit183 ], [ %.1, %RSTRING_PTR.exit185 ], [ %.1, %bb.k ], [ %.1, %bb.l ], [ %.1, %RSTRING_PTR.exit187 ] ; 5 uses
  %i.ev = icmp ult ptr %.2156, %i.n
  br i1 %i.ev, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.an
  %.not = icmp eq i64 %.2, 0
end_hunk_0
begin_hunk_1_@rb_reg_named_captures:bb.a
  br i1 %.not3.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = and i64 %i.g, 8192
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.e, label %rb_reg_check.exit

bb.e:                                             ; preds = %RREGEXP_SRC_PTR.exit.i, %bb.b, %bb.a
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  %i.m = tail call i32 @onig_number_of_names(ptr noundef nonnull %i.c) #28
  %i.n = sext i32 %i.m to i64
  %i.o = tail call i64 @rb_hash_new_with_size(i64 noundef %i.n) #28 ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = tail call i32 @onig_foreach_name(ptr noundef nonnull %i.c, ptr noundef nonnull @reg_named_captures_iter, ptr noundef %i.p) #28 ; 0 uses
  ret i64 %i.o
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_timeout_get(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %.not3.i = icmp eq i64 %i.e, 0
  br i1 %.not3.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = and i64 %i.g, 8192
  %.not.i.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RREGEXP_SRC_PTR.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i

RREGEXP_SRC_PTR.exit.i:                           ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ]
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.e, label %rb_reg_check.exit

bb.e:                                             ; preds = %RREGEXP_SRC_PTR.exit.i, %bb.b, %bb.a
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_check.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i
  %i.m = getelementptr i8, ptr %i.c, i64 440
  %i.n = load i64, ptr %i.m, align 8, !tbaa !56
  %i.o = uitofp i64 %i.n to double
  %i.p = fdiv double %i.o, 1.000000e+09           ; 2 uses
  %i.q = fcmp oeq double %i.p, 0.000000e+00
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_reg_check.exit
  %i.r = tail call i64 @rb_float_new(double noundef %i.p) #28
  br label %bb.g

bb.g:                                             ; preds = %rb_reg_check.exit, %bb.f
  %.0 = phi i64 [ %i.r, %bb.f ], [ 4, %rb_reg_check.exit ]
  ret i64 %.0
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_reg_s_timeout_get(i64 %0) #2 {
bb.a:
  %i.a = load i64, ptr @rb_reg_match_time_limit, align 8, !tbaa !19
  %i.b = uitofp i64 %i.a to double
  %i.c = fdiv double %i.b, 1.000000e+09           ; 2 uses
  %i.d = fcmp oeq double %i.c, 0.000000e+00
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_float_new(double noundef %i.c) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_reg_s_timeout_set(i64 %0, i64 noundef returned %1) #2 {
bb.a:
  tail call void @rb_ractor_ensure_main_ractor(ptr noundef nonnull @.str.119) #28
  %i.a = icmp eq i64 %1, 4
  br i1 %i.a, label %set_timeout.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @rb_num2dbl(i64 noundef %1) #28
  %.fr.i = freeze double %i.b                     ; 3 uses
  %i.c = fcmp ugt double %.fr.i, 0.000000e+00
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.117, i64 noundef %1) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = fcmp ult double %.fr.i, f0x43E0000000000000
  br i1 %i.e, label %.thread12.i, label %set_timeout.exit

.thread12.i:                                      ; preds = %bb.d
  %i.f = fmul double %.fr.i, 1.000000e+09
  %i.g = fptoui double %i.f to i64
  br label %set_timeout.exit

set_timeout.exit:                                 ; preds = %bb.a, %bb.d, %.thread12.i
  %i.h = phi i64 [ -1, %bb.d ], [ 0, %bb.a ], [ %i.g, %.thread12.i ]
  store i64 %i.h, ptr @rb_reg_match_time_limit, align 8, !tbaa !19
  ret i64 %1
}

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_global_variable(ptr noundef) local_unnamed_addr #4

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @match_init_copy(i64 noundef returned %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  %.not = icmp eq i64 %0, %1
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_obj_init_copy(i64 noundef %0, i64 noundef %1) #28 ; 0 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !75   ; 4 uses
  store i64 %i.h, ptr %i.e, align 8, !tbaa !19
  %i.i = icmp eq i64 %i.h, 0
  %i.j = and i64 %i.h, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rb_obj_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.h) #28
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.b, %bb.c
  %i.m = getelementptr i8, ptr %i.d, i64 24
  %i.n = getelementptr i8, ptr %i.f, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34   ; 4 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !19
  %i.p = icmp eq i64 %i.o, 0
  %i.q = and i64 %i.o, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %rb_obj_write.exit24, label %bb.d

bb.d:                                             ; preds = %rb_obj_write.exit
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.o) #28
  br label %rb_obj_write.exit24

rb_obj_write.exit24:                              ; preds = %rb_obj_write.exit, %bb.d
  %i.t = getelementptr i8, ptr %i.d, i64 32       ; 4 uses
  %i.u = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  tail call void @onig_region_copy(ptr noundef %i.t, ptr noundef %i.u) #28
  %i.v = load i32, ptr %i.t, align 8, !tbaa !31
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_obj_write.exit24
  tail call void @rb_gc() #28
  tail call void @onig_region_copy(ptr noundef nonnull %i.t, ptr noundef %i.u) #28
  %i.w = load i32, ptr %i.t, align 8, !tbaa !31
  %.fr = freeze i32 %i.w
  %.not6.i = icmp eq i32 %.fr, 0
  br i1 %.not6.i, label %rb_reg_region_copy.exit, label %bb.f

rb_reg_region_copy.exit:                          ; preds = %bb.e
  tail call void @rb_memerror() #31
  unreachable

bb.f:                                             ; preds = %rb_obj_write.exit24, %bb.e
  %i.x = getelementptr i8, ptr %i.f, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !104
  %.not23 = icmp eq i32 %i.y, 0
  br i1 %.not23, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.d, i64 64       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !104
  %i.ab = getelementptr i8, ptr %i.d, i64 36      ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105 ; 3 uses
  %i.ad = icmp slt i32 %i.aa, %i.ac
  %i.ae = getelementptr i8, ptr %i.d, i64 56      ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !106 ; 2 uses
  br i1 %i.ad, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ag = sext i32 %i.ac to i64
  %i.ah = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.af, i64 noundef %i.ag, i64 noundef 16) #35 ; 2 uses
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !106
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !105 ; 2 uses
  store i32 %i.ai, ptr %i.z, align 8, !tbaa !104
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %i.aj = phi i32 [ %i.ai, %bb.h ], [ %i.ac, %bb.g ] ; 3 uses
  %i.ak = phi ptr [ %i.ah, %bb.h ], [ %i.af, %bb.g ]
  %i.al = getelementptr i8, ptr %i.f, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !106
  %i.an = sext i32 %i.aj to i64                   ; 2 uses
  %i.ao = icmp slt i32 %i.aj, 0
  br i1 %i.ao, label %bb.i, label %rbimpl_size_mul_or_raise.exit, !prof !107

bb.i:                                             ; preds = %._crit_edge
  tail call void @ruby_malloc_size_overflow(i64 noundef 16, i64 noundef %i.an) #29
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %._crit_edge
  %.not.i25 = icmp eq i32 %i.aj, 0
  br i1 %.not.i25, label %ruby_nonempty_memcpy.exit, label %bb.j

bb.j:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ap = shl nuw nsw i64 %i.an, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull readonly align 1 %i.am, i64 noundef range(i64 1, 0) %i.ap, i1 noundef false) #28
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.a, ptr %i.b, align 8, !tbaa !66
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #28, !srcloc !108
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.ar = load volatile i64, ptr %i.aq, align 8, !tbaa !19 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %ruby_nonempty_memcpy.exit, %bb.a
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @match_regexp(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  switch i64 %i.c, label %rb_obj_write.exit [
    i64 0, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.76) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %0, 4
  br i1 %i.e, label %rb_reg_nth_match.exit, label %match_check.exit.i

match_check.exit.i:                               ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.a, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43
  %.not.i9 = icmp sgt i32 %i.g, 0
  br i1 %.not.i9, label %bb.d, label %rb_reg_nth_match.exit

bb.d:                                             ; preds = %match_check.exit.i
  %i.h = getelementptr i8, ptr %i.a, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.j = load i64, ptr %i.i, align 8, !tbaa !19   ; 3 uses
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %rb_reg_nth_match.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.a, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = sub i64 %i.n, %i.j
  %i.p = getelementptr i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75
  %i.r = tail call i64 @rb_str_subseq(i64 noundef %i.q, i64 noundef %i.j, i64 noundef %i.o) #28
  br label %rb_reg_nth_match.exit

rb_reg_nth_match.exit:                            ; preds = %bb.c, %match_check.exit.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.r, %bb.e ], [ 4, %bb.c ], [ 4, %match_check.exit.i ], [ 4, %bb.d ]
  %i.s = tail call i64 @rb_reg_quote(i64 noundef %.0.i)
  %i.t = tail call i64 @rb_reg_regcomp(i64 noundef %i.s) ; 6 uses
  store i64 %i.t, ptr %i.b, align 8, !tbaa !19
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %rb_obj_write.exit, label %bb.f

bb.f:                                             ; preds = %rb_reg_nth_match.exit
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.t) #28
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.a, %bb.f, %rb_reg_nth_match.exit
  %.0 = phi i64 [ %i.c, %bb.a ], [ %i.t, %rb_reg_nth_match.exit ], [ %i.t, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @match_names(i64 noundef %0) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  switch i64 %i.c, label %bb.d [
    i64 0, label %bb.b
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.76) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_ary_new_capa(i64 noundef 0) #28
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %.not3.i.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37
  %i.m = and i64 %i.l, 8192
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  %i.n = getelementptr i8, ptr %i.k, i64 24       ; 2 uses
  br i1 %.not.i.i.i.i, label %RREGEXP_SRC_PTR.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  br label %RREGEXP_SRC_PTR.exit.i.i

RREGEXP_SRC_PTR.exit.i.i:                         ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.o, %bb.g ], [ %i.n, %bb.f ]
  %.not4.i.i = icmp eq ptr %i.p, null
  br i1 %.not4.i.i, label %bb.h, label %rb_reg_names.exit

bb.h:                                             ; preds = %RREGEXP_SRC_PTR.exit.i.i, %bb.e, %bb.d
  %i.q = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.71) #29
  unreachable

rb_reg_names.exit:                                ; preds = %RREGEXP_SRC_PTR.exit.i.i
  %i.r = tail call i32 @onig_number_of_names(ptr noundef nonnull %i.h) #28
  %i.s = sext i32 %i.r to i64
  %i.t = tail call i64 @rb_ary_new_capa(i64 noundef %i.s) #28 ; 2 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.v = inttoptr i64 %i.t to ptr
  %i.w = tail call i32 @onig_foreach_name(ptr noundef %i.u, ptr noundef nonnull @reg_names_iter, ptr noundef %i.v) #28 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %rb_reg_names.exit, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.t, %rb_reg_names.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @match_size(i64 noundef %0) #2 {
bb.a:
end_hunk_1
begin_hunk_2_@unescape_nonascii0:bb.a
  %scevgep288 = getelementptr i8, ptr %scevgep286, i64 %i.bh ; 2 uses
  br label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %bb.ak
  %i.bi = phi ptr [ %i.bj, %bb.ak ], [ %i.v, %.lr.ph259.preheader ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 1      ; 3 uses
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !13  ; 3 uses
  store i8 %i.bk, ptr %i.c, align 1, !tbaa !13
  %.not198 = icmp eq i8 %i.bk, 10
  br i1 %.not198, label %.critedge.loopexit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph259
  %.not199 = icmp sgt i8 %i.bk, -1
  br i1 %.not199, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bl = load ptr, ptr %4, align 8, !tbaa !64
  %.not200 = icmp eq ptr %i.bl, null
  br i1 %.not200, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.bm = call nonnull ptr @rb_utf8_encoding() #28
  %i.bn = icmp eq ptr %2, %i.bm
  br i1 %i.bn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr %2, ptr %4, align 8, !tbaa !64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %exitcond289.not = icmp eq ptr %i.bj, %scevgep288
  br i1 %exitcond289.not, label %.critedge.loopexit, label %.lr.ph259, !llvm.loop !130

bb.al:                                            ; preds = %bb.af
  %i.bo = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.am:                                            ; preds = %bb.i
  store ptr %i.v, ptr %i.b, align 8
  %i.bp = add i32 %.4149396, 1
  %i.bq = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.an:                                            ; preds = %bb.i
  store ptr %i.v, ptr %i.b, align 8
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.4149396, i32 1)
  %i.br = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

bb.ao:                                            ; preds = %bb.i
  store ptr %i.v, ptr %i.b, align 8
  %i.bs = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  %i.bt = icmp eq i32 %.4149396, 0
  %or.cond3 = and i1 %i.g, %i.bt
  br i1 %or.cond3, label %bb.ap, label %.loopexit229.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.bu = add i32 %.5155395, -1                   ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.aq, label %.loopexit229.loopexit

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.v, ptr %0, align 8, !tbaa !63
  br label %.thread220

bb.ar:                                            ; preds = %bb.i
  store ptr %i.v, ptr %i.b, align 8
  %i.bw = ptrtoint ptr %i.l to i64
  %.not192 = icmp eq i32 %.4149396, 0             ; 2 uses
  br i1 %.not192, label %bb.as, label %bb.bl

bb.as:                                            ; preds = %bb.ar
  %i.bx = getelementptr i8, ptr %i.l, i64 2       ; 3 uses
  %i.by = icmp ult ptr %i.bx, %1
  br i1 %i.by, label %bb.at, label %bb.bl

bb.at:                                            ; preds = %bb.as
  %i.bz = load i8, ptr %i.v, align 1, !tbaa !13
  %i.ca = icmp eq i8 %i.bz, 63
  br i1 %i.ca, label %bb.au, label %bb.bl

bb.au:                                            ; preds = %bb.at
  %i.cb = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.cc = icmp eq i8 %i.cb, 35
  br i1 %i.cc, label %.preheader227, label %.lr.ph.preheader

.preheader227:                                    ; preds = %bb.au
  %i.cd = icmp ult ptr %i.v, %1
  br i1 %i.cd, label %.lr.ph256, label %._crit_edge.thread

.lr.ph256:                                        ; preds = %.preheader227, %bb.bb
  %i.ce = phi ptr [ %i.cp, %bb.bb ], [ %i.v, %.preheader227 ] ; 5 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 1      ; 3 uses
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !13  ; 3 uses
  store i8 %i.cg, ptr %i.c, align 1, !tbaa !13
  switch i8 %i.cg, label %bb.av [
    i8 92, label %bb.az
    i8 41, label %._crit_edge
  ]

bb.av:                                            ; preds = %.lr.ph256
  %.not195 = icmp sgt i8 %i.cg, -1
  br i1 %.not195, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ch = load ptr, ptr %4, align 8, !tbaa !64
  %.not196 = icmp eq ptr %i.ch, null
  br i1 %.not196, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ci = call nonnull ptr @rb_utf8_encoding() #28
  %i.cj = icmp eq ptr %2, %i.ci
  br i1 %i.cj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store ptr %2, ptr %4, align 8, !tbaa !64
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ax, %bb.ay, %.lr.ph256
  %i.ck = phi ptr [ %i.cf, %.lr.ph256 ], [ %i.ce, %bb.ay ], [ %i.ce, %bb.ax ], [ %i.ce, %bb.aw ] ; 2 uses
  %i.cl = call i32 @rb_enc_precise_mbclen(ptr noundef %i.ck, ptr noundef nonnull %1, ptr noundef %2) #28 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ba, label %.loopexit228

bb.ba:                                            ; preds = %bb.az
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = getelementptr i8, ptr %i.ck, i64 %i.cn
  br label %bb.bb

bb.bb:                                            ; preds = %bb.av, %bb.ba
  %i.cp = phi ptr [ %i.co, %bb.ba ], [ %i.cf, %bb.av ] ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %1
  br i1 %i.cq, label %.lr.ph256, label %._crit_edge.thread, !llvm.loop !131

._crit_edge:                                      ; preds = %.lr.ph256
  store ptr %i.cf, ptr %i.b, align 8
  br label %.loopexit229.loopexit

._crit_edge.thread:                               ; preds = %bb.bb, %.preheader227
  store ptr %i.v, ptr %i.b, align 8, !tbaa !63
  store i8 40, ptr %i.c, align 1, !tbaa !13
  %i.cr = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

.lr.ph.preheader:                                 ; preds = %bb.au
  %spec.select209 = add i32 %.5155395, %8         ; 7 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.a
  %i.cs = sub i64 0, %i.bw
  %scevgep285 = getelementptr i8, ptr %scevgep, i64 %i.cs
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bk
  %.0138252 = phi ptr [ %.0138, %bb.bk ], [ %i.bx, %.lr.ph.preheader ] ; 2 uses
  %.0139251 = phi i32 [ %.1140, %bb.bk ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.0141250 = phi i32 [ %.1142, %bb.bk ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.ct = load i8, ptr %.0138252, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.ct, label %.thread215 [
    i8 120, label %bb.bc
    i8 45, label %bb.bd
    i8 58, label %bb.be
    i8 41, label %bb.be
    i8 105, label %bb.bk
    i8 109, label %bb.bk
    i8 97, label %bb.bk
    i8 100, label %bb.bk
    i8 117, label %bb.bk
  ]

bb.bc:                                            ; preds = %.lr.ph
  %.not194 = icmp eq i32 %.0141250, 0
  %i.cu = select i1 %.not194, i32 1, i32 -1
  br label %bb.bk

bb.bd:                                            ; preds = %.lr.ph
  br label %bb.bk

bb.be:                                            ; preds = %.lr.ph, %.lr.ph
  %i.cv = icmp eq i32 %.0139251, 0
  br i1 %i.cv, label %.thread215, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cw = icmp ne i32 %.0139251, -1
  %i.cx = icmp ne i32 %.5161394, 0                ; 2 uses
  %or.cond5 = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond5, label %bb.bg, label %.thread215

bb.bg:                                            ; preds = %bb.bf
  %i.cy = icmp eq i32 %.0139251, 1                ; 3 uses
  %or.cond7 = select i1 %i.cy, i1 %i.cx, i1 false
  br i1 %or.cond7, label %.thread215, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cz = icmp eq i8 %i.ct, 58
  br i1 %i.cz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %masksel = select i1 %i.cy, i32 2, i32 0
  %.0137 = or disjoint i32 %masksel, %i.h
  %i.da = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  %i.db = call fastcc i32 @unescape_nonascii0(ptr noundef %i.b, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %.0137, i32 noundef 1)
  %.fr = freeze i32 %i.db
  %i.dc = icmp slt i32 %.fr, 0
  br i1 %i.dc, label %.thread220, label %.loopexit229.loopexit

bb.bj:                                            ; preds = %bb.bh
  %i.dd = zext i1 %i.cy to i32
  br label %.thread215

bb.bk:                                            ; preds = %bb.bc, %bb.bd, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.1142 = phi i32 [ %.0141250, %bb.bc ], [ 1, %bb.bd ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ], [ %.0141250, %.lr.ph ]
  %.1140 = phi i32 [ %i.cu, %bb.bc ], [ %.0139251, %bb.bd ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ], [ %.0139251, %.lr.ph ]
  %.0138 = getelementptr i8, ptr %.0138252, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %.0138, %scevgep285
  br i1 %exitcond.not, label %.thread215, label %.lr.ph, !llvm.loop !132

bb.bl:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %or.cond9 = and i1 %i.g, %.not192
  %i.de = zext i1 %or.cond9 to i32
  %spec.select210 = add i32 %.5155395, %i.de
  br label %.thread215

.thread215.loopexit318:                           ; preds = %bb.i
  store ptr %i.v, ptr %i.b, align 8
  br label %.thread215

.thread215:                                       ; preds = %.lr.ph, %bb.bk, %.thread215.loopexit318, %bb.bf, %bb.bg, %bb.bj, %bb.be, %bb.bl
  %.2158 = phi i32 [ %.5161394, %.thread215.loopexit318 ], [ %.5161394, %bb.bl ], [ %.5161394, %bb.be ], [ 0, %bb.bf ], [ %.5161394, %bb.bg ], [ %i.dd, %bb.bj ], [ %.5161394, %bb.bk ], [ %.5161394, %.lr.ph ]
  %.2152 = phi i32 [ %.5155395, %.thread215.loopexit318 ], [ %spec.select210, %bb.bl ], [ %spec.select209, %bb.be ], [ %spec.select209, %bb.bf ], [ %spec.select209, %bb.bg ], [ %spec.select209, %bb.bj ], [ %spec.select209, %bb.bk ], [ %spec.select209, %.lr.ph ]
  %i.df = call i64 @rb_str_cat(i64 noundef %3, ptr noundef nonnull %i.c, i64 noundef 1) #28 ; 0 uses
  br label %.loopexit229.loopexit

.critedge.loopexit:                               ; preds = %bb.ak, %.lr.ph259, %.preheader
  %i.dg = phi ptr [ %i.v, %.preheader ], [ %scevgep288, %bb.ak ], [ %i.bj, %.lr.ph259 ]
  store ptr %i.dg, ptr %i.b, align 8
  br label %.loopexit229.loopexit

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.dh = icmp ult ptr %i.s, %1
  br i1 %i.dh, label %bb.b, label %.loopexit229._crit_edge

.loopexit229.loopexit:                            ; preds = %bb.bi, %._crit_edge, %._crit_edge.thread, %bb.s, %bb.ao, %bb.ap, %bb.am, %bb.al, %bb.ae, %bb.t, %bb.z, %bb.ab, %.thread215, %bb.an, %.critedge.loopexit
  %.4160.ph = phi i32 [ %.5161394, %.critedge.loopexit ], [ %.5161394, %bb.an ], [ %.2158, %.thread215 ], [ %.5161394, %bb.ab ], [ %.5161394, %bb.z ], [ %.5161394, %bb.t ], [ %.5161394, %bb.ae ], [ %.5161394, %bb.al ], [ %.5161394, %bb.am ], [ %.5161394, %bb.ap ], [ %.5161394, %bb.ao ], [ %.5161394, %bb.s ], [ %.5161394, %._crit_edge.thread ], [ %.5161394, %._crit_edge ], [ %.5161394, %bb.bi ]
  %.4154.ph = phi i32 [ %.5155395, %.critedge.loopexit ], [ %.5155395, %bb.an ], [ %.2152, %.thread215 ], [ %.5155395, %bb.ab ], [ %.5155395, %bb.z ], [ %.5155395, %bb.t ], [ %.5155395, %bb.ae ], [ %.5155395, %bb.al ], [ %.5155395, %bb.am ], [ %i.bu, %bb.ap ], [ %.5155395, %bb.ao ], [ %.5155395, %bb.s ], [ %.5155395, %._crit_edge.thread ], [ %.5155395, %._crit_edge ], [ %spec.select209, %bb.bi ]
  %.3148.ph = phi i32 [ 0, %.critedge.loopexit ], [ %spec.select, %bb.an ], [ %.4149396, %.thread215 ], [ %.4149396, %bb.ab ], [ %.4149396, %bb.z ], [ %.4149396, %bb.t ], [ %.4149396, %bb.ae ], [ %.4149396, %bb.al ], [ %i.bp, %bb.am ], [ 0, %bb.ap ], [ %.4149396, %bb.ao ], [ %.4149396, %bb.s ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge ], [ 0, %bb.bi ]
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !63 ; 3 uses
  %i.di = icmp ult ptr %.promoted, %1
  br i1 %i.di, label %.lr.ph390, label %.loopexit229._crit_edge

.lr.ph390:                                        ; preds = %.lr.ph390.lr.ph, %.loopexit229.loopexit
  %.promoted397 = phi ptr [ %i.f, %.lr.ph390.lr.ph ], [ %.promoted, %.loopexit229.loopexit ]
  %.4149396 = phi i32 [ 0, %.lr.ph390.lr.ph ], [ %.3148.ph, %.loopexit229.loopexit ] ; 13 uses
  %.5155395 = phi i32 [ 1, %.lr.ph390.lr.ph ], [ %.4154.ph, %.loopexit229.loopexit ] ; 16 uses
  %.5161394 = phi i32 [ %i.k, %.lr.ph390.lr.ph ], [ %.4160.ph, %.loopexit229.loopexit ] ; 22 uses
  br label %bb.b

.loopexit229._crit_edge:                          ; preds = %.loopexit229.loopexit, %.critedge, %bb.a
  %.lcssa372 = phi ptr [ %i.s, %.critedge ], [ %i.f, %bb.a ], [ %.promoted, %.loopexit229.loopexit ] ; 2 uses
  store ptr %.lcssa372, ptr %i.b, align 8
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %.thread220, label %bb.bm

bb.bm:                                            ; preds = %.loopexit229._crit_edge
  store ptr %.lcssa372, ptr %0, align 8, !tbaa !63
  br label %.thread220

.thread220:                                       ; preds = %bb.bi, %bb.r, %bb.x, %bb.t, %bb.ab, %bb.aq, %.loopexit228, %bb.aa, %bb.v, %bb.k, %bb.h, %.loopexit229._crit_edge, %bb.bm
  %.8 = phi i32 [ -1, %bb.k ], [ 0, %bb.bm ], [ 0, %.loopexit229._crit_edge ], [ -1, %bb.v ], [ 0, %bb.aq ], [ -1, %.loopexit228 ], [ -1, %bb.h ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.t ], [ -1, %bb.x ], [ -1, %bb.r ], [ -1, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i32 %.8
}

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
declare i64 @ruby_scan_oct(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 256) i32 @read_escaped_byte(ptr noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !63     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !13
  %.not = icmp eq i8 %i.d, 92
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.b, i64 1        ; 12 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %.outer._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.g = getelementptr i8, ptr %i.b, i64 2        ; 13 uses
  %i.h = load i8, ptr %i.e, align 1, !tbaa !13
  switch i8 %i.h, label %.loopexit [
    i8 92, label %.thread.thread391.thread567
    i8 110, label %.thread.thread391.thread595
    i8 116, label %.thread408
    i8 114, label %.thread.thread391.thread
    i8 102, label %.thread.thread391.thread455
    i8 118, label %.thread.thread391.thread483
    i8 97, label %.thread.thread391.thread511
    i8 101, label %.thread.thread391.thread539
    i8 48, label %.loopexit266
    i8 49, label %.loopexit266
    i8 50, label %.loopexit266
    i8 51, label %.loopexit266
    i8 52, label %.loopexit266
    i8 53, label %.loopexit266
    i8 54, label %.loopexit266
    i8 55, label %.loopexit266
    i8 120, label %.loopexit267
    i8 77, label %.loopexit268
    i8 67, label %bb.r
    i8 99, label %bb.t
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %2, ptr noundef nonnull align 1 dereferenceable(38) @.str.81, i64 noundef 38, i1 false) #28
  br label %bb.ad

.outer._crit_edge:                                ; preds = %.outer, %bb.o, %bb.w, %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %2, ptr noundef nonnull align 1 dereferenceable(26) @.str.79, i64 noundef 26, i1 false) #28
  br label %bb.ad

.loopexit261:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit262:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit263:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit264:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit265:                                     ; preds = %.lr.ph.1
  br label %.thread

.loopexit266:                                     ; preds = %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.lr.ph.1, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1, %.peel.next.1
  %.058.ph173.lcssa246 = phi i32 [ 1, %.peel.next.1 ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 0, %.peel.next ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ], [ 1, %.lr.ph.1 ]
  %.0170.lcssa220 = phi i32 [ 1, %.peel.next.1 ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 1, %.peel.next.1 ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ 0, %.lr.ph.preheader ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ], [ %.0170.lcssa222, %.lr.ph.1 ]
  %.062169.lcssa201 = phi ptr [ %i.at, %.peel.next.1 ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.bg, %.peel.next ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.at, %.peel.next.1 ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.e, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ], [ %i.ai, %.lr.ph.1 ] ; 4 uses
  %i.i = getelementptr i8, ptr %.062169.lcssa201, i64 3
  %i.j = icmp ult ptr %1, %i.i
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.062169.lcssa201 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = select i1 %i.j, i64 %i.m, i64 3
  %i.o = call i64 @ruby_scan_oct(ptr noundef nonnull %.062169.lcssa201, i64 noundef %i.n, ptr noundef nonnull %i.a) #36
  %i.p = load i64, ptr %i.a, align 8, !tbaa !19
  %i.q = getelementptr i8, ptr %.062169.lcssa201, i64 %i.p
  br label %bb.ab

.loopexit267:                                     ; preds = %.lr.ph.preheader, %.lr.ph.1, %.peel.next, %.peel.next.1
  %.058.ph173.lcssa247 = phi i32 [ 1, %.peel.next.1 ], [ 0, %.peel.next ], [ 0, %.lr.ph.preheader ], [ 1, %.lr.ph.1 ]
  %.0170.lcssa221 = phi i32 [ 1, %.peel.next.1 ], [ 1, %.peel.next ], [ 0, %.lr.ph.preheader ], [ %.0170.lcssa222, %.lr.ph.1 ]
  %.062169.lcssa202 = phi ptr [ %i.at, %.peel.next.1 ], [ %i.bg, %.peel.next ], [ %i.e, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.1 ]
  %.lcssa186 = phi ptr [ %i.av, %.peel.next.1 ], [ %i.bi, %.peel.next ], [ %i.g, %.lr.ph.preheader ], [ %i.ak, %.lr.ph.1 ] ; 3 uses
  %i.r = getelementptr i8, ptr %.062169.lcssa202, i64 3
  %i.s = icmp ult ptr %1, %i.r
  %i.t = ptrtoint ptr %1 to i64
  %i.u = ptrtoint ptr %.lcssa186 to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = select i1 %i.s, i64 %i.v, i64 2
  %i.x = call i64 @ruby_scan_hex(ptr noundef %.lcssa186, i64 noundef %i.w, ptr noundef nonnull %i.a) #28
  %i.y = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %2, ptr noundef nonnull align 1 dereferenceable(19) @.str.82, i64 noundef 19, i1 false) #28
  br label %bb.ad

bb.e:                                             ; preds = %.loopexit267
  %i.aa = getelementptr i8, ptr %.lcssa186, i64 %i.y
  br label %bb.ab

.loopexit268:                                     ; preds = %.peel.next, %.lr.ph.preheader
  %.not74.peel.1 = phi i1 [ true, %.lr.ph.preheader ], [ false, %.peel.next ]
  %.0170.lcssa222 = phi i32 [ 0, %.lr.ph.preheader ], [ 1, %.peel.next ] ; 18 uses
  %.062169.lcssa203 = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.bg, %.peel.next ] ; 5 uses
  %.lcssa187 = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.bi, %.peel.next ]
  %i.ab = getelementptr i8, ptr %.062169.lcssa203, i64 2 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %1
  br i1 %i.ac, label %bb.f, label %bb.y

.loopexit268.1:                                   ; preds = %.peel.next.1, %.lr.ph.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %2, ptr noundef nonnull align 1 dereferenceable(22) @.str.83, i64 noundef 22, i1 false) #28
  br label %bb.ad

bb.f:                                             ; preds = %.loopexit268
  %i.ad = load i8, ptr %.lcssa187, align 1, !tbaa !13
  %i.ae = icmp eq i8 %i.ad, 45
  br i1 %i.ae, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
end_hunk_2
