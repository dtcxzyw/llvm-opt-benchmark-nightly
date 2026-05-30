inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
@.str.39 = private unnamed_addr constant [34 x i8] c"SH: difference_of_pic_nums_minus1\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"SH: long_term_pic_num\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"SH: long_term_frame_idx\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"SH: max_long_term_pic_idx_plus1\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"SH: luma_log_weight_denom\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"SH: chroma_log_weight_denom\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l0\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l0\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l0\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l0\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"chroma_weight_l0\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"chroma_offset_l0\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"SH: luma_weight_flag_l1\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"SH: luma_weight_l1\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"SH: luma_offset_l1\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"chroma_weight_flag_l1\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"chroma_weight_l1\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"chroma_offset_l1\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @SliceHeader() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4016
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @assignSE2partition, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = load ptr, ptr @img, align 8, !tbaa !8    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 14216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = sext i32 %i.g to i64
  %i.n = getelementptr inbounds [104 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36   ; 62 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 15268
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  %.not = icmp ne i32 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !40
  %i.t = zext i1 %.not to i32
  %.sink = ashr i32 %i.s, %i.t
  %i.u = tail call i32 @ue_v(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef %i.o) #4
  %i.v = load ptr, ptr @img, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41   ; 2 uses
  %i.y = icmp ult i32 %i.x, 4
  br i1 %i.y, label %switch.lookup.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @error(ptr noundef nonnull @.str.25, i32 noundef 1) #4
  br label %get_picture_type.exit

switch.lookup.i:                                  ; preds = %bb.a
  %switch.offset.i = add nuw nsw i32 %i.x, 5
  br label %get_picture_type.exit

get_picture_type.exit:                            ; preds = %bb.b, %switch.lookup.i
  %.0.i = phi i32 [ 0, %bb.b ], [ %switch.offset.i, %switch.lookup.i ]
  %i.z = tail call i32 @ue_v(ptr noundef nonnull @.str.1, i32 noundef %.0.i, ptr noundef %i.o) #4
  %i.aa = add nsw i32 %i.z, %i.u
  %i.ab = load ptr, ptr @active_pps, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !42
  %i.ae = tail call i32 @ue_v(ptr noundef nonnull @.str.2, i32 noundef %i.ad, ptr noundef %i.o) #4
  %i.af = add nsw i32 %i.aa, %i.ae
  %i.ag = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !4
  %i.ah = add i32 %i.ag, 4
  %i.ai = load ptr, ptr @img, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 15332
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !44
  %i.al = tail call i32 @u_v(i32 noundef %i.ah, ptr noundef nonnull @.str.3, i32 noundef %i.ak, ptr noundef %i.o) #4
  %i.am = add nsw i32 %i.af, %i.al                ; 2 uses
  %i.an = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1148
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !45
  %.not79 = icmp eq i32 %i.ap, 0
  br i1 %.not79, label %bb.c, label %bb.e

bb.c:                                             ; preds = %get_picture_type.exit
  %i.aq = load ptr, ptr @img, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !49
  %i.at = add i32 %i.as, -1
  %spec.select = icmp ult i32 %i.at, 2            ; 2 uses
  %i.au = zext i1 %spec.select to i32
  %i.av = tail call i32 @u_1(ptr noundef nonnull @.str.4, i32 noundef %i.au, ptr noundef %i.o) #4
  %i.aw = add i32 %i.av, %i.am                    ; 2 uses
  br i1 %spec.select, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr @img, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !49
  %i.ba = icmp eq i32 %i.az, 2
  %i.bb = zext i1 %i.ba to i32
  %i.bc = tail call i32 @u_1(ptr noundef nonnull @.str.5, i32 noundef %i.bb, ptr noundef %i.o) #4
  %i.bd = add i32 %i.bc, %i.aw
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %get_picture_type.exit
  %.not82 = phi i1 [ true, %get_picture_type.exit ], [ false, %bb.d ], [ true, %bb.c ]
  %i.be = phi i1 [ false, %get_picture_type.exit ], [ true, %bb.d ], [ false, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.am, %get_picture_type.exit ], [ %i.bd, %bb.d ], [ %i.aw, %bb.c ] ; 2 uses
  %i.bf = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 14208
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !51
  %.not80 = icmp eq i32 %i.bj, 0
  br i1 %.not80, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = load i32, ptr %i.bf, align 8, !tbaa !53
  %i.bl = srem i32 %i.bk, 2
  %i.bm = tail call i32 @ue_v(ptr noundef nonnull @.str.6, i32 noundef %i.bl, ptr noundef %i.o) #4
  %i.bn = add nsw i32 %i.bm, %.1
  %.pre = load ptr, ptr @img, align 8, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = phi ptr [ %.pre, %bb.f ], [ %i.bf, %bb.e ] ; 10 uses
  %.2 = phi i32 [ %i.bn, %bb.f ], [ %.1, %bb.e ]  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 15272
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr @active_sps, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1148
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !45
  %.not81 = icmp eq i32 %i.bu, 0
  br i1 %.not81, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 15316
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !55
  %i.bx = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !4
  %i.by = add i32 %i.bx, 4                        ; 2 uses
  %i.bz = shl nsw i32 -1, %i.by
  %i.ca = xor i32 %i.bz, -1
  %i.cb = and i32 %i.bw, %i.ca                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 15296
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !56
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  br i1 %.not82, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !49
  switch i32 %i.ce, label %._crit_edge [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

._crit_edge:                                      ; preds = %bb.k
  %.pre114 = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bo, i64 15296
  %.pre115 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !56
  %.pre130 = add i32 %.pre114, 4
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 15316
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !55
  %i.ch = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !4
  %i.ci = add i32 %i.ch, 4                        ; 2 uses
  %i.cj = shl nsw i32 -1, %i.ci
  %i.ck = xor i32 %i.cj, -1
  %i.cl = and i32 %i.cg, %i.ck                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 15296
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !56
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bo, i64 15320
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !57
  %i.cp = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !4
  %i.cq = add i32 %i.cp, 4                        ; 2 uses
  %i.cr = shl nsw i32 -1, %i.cq
  %i.cs = xor i32 %i.cr, -1
  %i.ct = and i32 %i.co, %i.cs                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bo, i64 15296
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !56
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %bb.m, %bb.i
  %.pre-phi = phi i32 [ %.pre130, %._crit_edge ], [ %i.ci, %bb.l ], [ %i.cq, %bb.m ], [ %i.by, %bb.i ]
  %i.cv = phi i32 [ %.pre115, %._crit_edge ], [ %i.cl, %bb.l ], [ %i.ct, %bb.m ], [ %i.cb, %bb.i ]
  %i.cw = tail call i32 @u_v(i32 noundef %.pre-phi, ptr noundef nonnull @.str.7, i32 noundef %i.cv, ptr noundef %i.o) #4
  %i.cx = add nsw i32 %i.cw, %.2                  ; 2 uses
  %i.cy = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 15356
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !58
  %i.db = icmp eq i32 %i.da, 0
  %or.cond = or i1 %i.db, %i.be
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 15300
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !59
  %i.de = tail call i32 @se_v(ptr noundef nonnull @.str.8, i32 noundef %i.dd, ptr noundef %i.o) #4
  %i.df = add nsw i32 %i.de, %i.cx
  %.pre116 = load ptr, ptr @img, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.g
  %i.dg = phi ptr [ %i.cy, %bb.n ], [ %.pre116, %bb.o ], [ %i.bo, %bb.g ] ; 5 uses
  %.3 = phi i32 [ %i.cx, %bb.n ], [ %i.df, %bb.o ], [ %.2, %bb.g ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 15272
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !54
  %i.dj = icmp eq i32 %i.di, 1
  br i1 %i.dj, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 15276
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !60
  %.not83 = icmp eq i32 %i.dl, 0
  br i1 %.not83, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 15304
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !4
  %i.do = tail call i32 @se_v(ptr noundef nonnull @.str.9, i32 noundef %i.dn, ptr noundef %i.o) #4
  %i.dp = add nsw i32 %i.do, %.3                  ; 2 uses
  %i.dq = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 15356
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !58
  %i.dt = icmp eq i32 %i.ds, 0
  %or.cond3 = or i1 %i.dt, %i.be
  br i1 %or.cond3, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 15308
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = tail call i32 @se_v(ptr noundef nonnull @.str.10, i32 noundef %i.dv, ptr noundef %i.o) #4
  %i.dx = add nsw i32 %i.dw, %i.dp
  %.pre118.pre = load ptr, ptr @img, align 8, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.p
  %.pre118 = phi ptr [ %i.dg, %bb.q ], [ %i.dq, %bb.r ], [ %.pre118.pre, %bb.s ], [ %i.dg, %bb.p ] ; 2 uses
  %.4 = phi i32 [ %.3, %bb.q ], [ %i.dp, %bb.r ], [ %i.dx, %bb.s ], [ %.3, %bb.p ] ; 2 uses
  %i.dy = load ptr, ptr @active_pps, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 228
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !61
  %.not84 = icmp eq i32 %i.ea, 0
  br i1 %.not84, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre118, i64 15264
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !62
  %i.ed = tail call i32 @ue_v(ptr noundef nonnull @.str.11, i32 noundef %i.ec, ptr noundef %i.o) #4
  %i.ee = add nsw i32 %i.ed, %.4
  %.pre117 = load ptr, ptr @img, align 8, !tbaa !8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ef = phi ptr [ %.pre117, %bb.u ], [ %.pre118, %bb.t ] ; 3 uses
  %.5 = phi i32 [ %i.ee, %bb.u ], [ %.4, %bb.t ]  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !41 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 14452
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !63
  %i.el = tail call i32 @u_1(ptr noundef nonnull @.str.12, i32 noundef %i.ek, ptr noundef %i.o) #4
  %i.em = add i32 %i.el, %.5
  %.pre119 = load ptr, ptr @img, align 8, !tbaa !8 ; 2 uses
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %.pre119, i64 20
  %.pre121 = load i32, ptr %.phi.trans.insert120, align 4, !tbaa !41
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.en = phi i32 [ %.pre121, %bb.w ], [ %i.eh, %bb.v ]
  %i.eo = phi ptr [ %.pre119, %bb.w ], [ %i.ef, %bb.v ] ; 3 uses
  %.6 = phi i32 [ %i.em, %bb.w ], [ %.5, %bb.v ]  ; 4 uses
  switch i32 %i.en, label %bb.ad [
    i32 0, label %bb.y
    i32 3, label %bb.y
    i32 1, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 14456
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !64
  %i.er = load ptr, ptr @active_pps, align 8, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 184
  %i.et = load i32, ptr %i.es, align 8, !tbaa !65
  %i.eu = add nsw i32 %i.et, 1
  %.not86 = icmp ne i32 %i.eq, %i.eu              ; 2 uses
  %.0135 = zext i1 %.not86 to i32
  %i.ev = tail call i32 @u_1(ptr noundef nonnull @.str.13, i32 noundef %.0135, ptr noundef %i.o) #4
  %i.ew = add i32 %i.ev, %.6                      ; 2 uses
  br i1 %.not86, label %bb.ab, label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 14456
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !64
  %i.ez = load ptr, ptr @active_pps, align 8, !tbaa !8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 184
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !65
  %i.fc = add nsw i32 %i.fb, 1
  %.not85 = icmp eq i32 %i.ey, %i.fc
  br i1 %.not85, label %bb.aa, label %.thread

.thread:                                          ; preds = %bb.z
  %i.fd = tail call i32 @u_1(ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef %i.o) #4
  %i.fe = add i32 %i.fd, %.6
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 14460
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !66
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 188
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !67
  %i.fj = add nsw i32 %i.fi, 1
  %i.fk = icmp ne i32 %i.fg, %i.fj                ; 2 uses
  %.0 = zext i1 %i.fk to i32
  %i.fl = tail call i32 @u_1(ptr noundef nonnull @.str.13, i32 noundef %.0, ptr noundef %i.o) #4
  %i.fm = add i32 %i.fl, %.6                      ; 2 uses
  br i1 %i.fk, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.y, %.thread, %bb.aa
  %i.fn = phi i32 [ %i.fe, %.thread ], [ %i.fm, %bb.aa ], [ %i.ew, %bb.y ]
  %i.fo = load ptr, ptr @img, align 8, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 14456
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !64
  %i.fr = add nsw i32 %i.fq, -1
  %i.fs = tail call i32 @ue_v(ptr noundef nonnull @.str.14, i32 noundef %i.fr, ptr noundef %i.o) #4
  %i.ft = add nsw i32 %i.fs, %i.fn                ; 2 uses
  %i.fu = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !41
  %i.fx = icmp eq i32 %i.fw, 1
  br i1 %i.fx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 14460
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !66
  %i.ga = add nsw i32 %i.fz, -1
  %i.gb = tail call i32 @ue_v(ptr noundef nonnull @.str.15, i32 noundef %i.ga, ptr noundef %i.o) #4
  %i.gc = add nsw i32 %i.gb, %i.ft
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.aa, %bb.ac, %bb.ab
  %.8 = phi i32 [ %.6, %bb.x ], [ %i.gc, %bb.ac ], [ %i.ft, %bb.ab ], [ %i.fm, %bb.aa ], [ %i.ew, %bb.y ]
  %i.gd = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 14216
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !16 ; 12 uses
  %i.gg = load ptr, ptr @input, align 8, !tbaa !8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 5084
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !68
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = load i32, ptr @redundant_coding, align 4
  %i.gl = icmp ne i32 %i.gk, 0
  %or.cond.i = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %or.cond.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  store i32 1, ptr %i.gm, align 8, !tbaa !69
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !70 ; 3 uses
  store i32 0, ptr %i.go, align 4, !tbaa !4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 3, ptr %i.gp, align 4, !tbaa !4
  %i.gq = load i32, ptr @redundant_ref_idx, align 4, !tbaa !4
  %i.gr = add nsw i32 %i.gq, -1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !71 ; 2 uses
  store i32 %i.gr, ptr %i.gt, align 4, !tbaa !4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !72 ; 2 uses
  store i32 0, ptr %i.gv, align 4, !tbaa !4
  %i.gw = load ptr, ptr @listX, align 16, !tbaa !73
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gd, i64 14456
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !64
  %i.gz = add nsw i32 %i.gy, -1
  tail call void @reorder_ref_pic_list(ptr noundef %i.gw, ptr noundef nonnull @listXsize, i32 noundef %i.gz, ptr noundef nonnull %i.go, ptr noundef nonnull %i.gt, ptr noundef nonnull %i.gv) #4
  %.pre.i = load ptr, ptr @img, align 8, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ha = phi ptr [ %.pre.i, %bb.ae ], [ %i.gd, %bb.ad ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 20
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !41
  %.not.i = icmp eq i32 %i.hc, 2
  br i1 %.not.i, label %.loopexit68.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gf, i64 48 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !69
  %i.hf = tail call i32 @u_1(ptr noundef nonnull @.str.26, i32 noundef %i.he, ptr noundef %i.o) #4 ; 2 uses
  %i.hg = load i32, ptr %i.hd, align 8, !tbaa !69
  %.not63.i = icmp eq i32 %i.hg, 0
  br i1 %.not63.i, label %.loopexit68.i, label %.preheader67.i

.preheader67.i:                                   ; preds = %bb.ag
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gf, i64 56 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gf, i64 64 ; 2 uses
  %.pre73.i = load ptr, ptr %i.hh, align 8, !tbaa !70
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.preheader67.i
  %i.hk = phi ptr [ %.pre73.i, %.preheader67.i ], [ %i.hx, %bb.aj ]
  %indvars.iv.i = phi i64 [ -1, %.preheader67.i ], [ %indvars.iv.next.i, %bb.aj ]
  %.0.i97 = phi i32 [ %i.hf, %.preheader67.i ], [ %.1.i, %bb.aj ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %indvars.iv.next.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !4
  %i.hn = tail call i32 @ue_v(ptr noundef nonnull @.str.27, i32 noundef %i.hm, ptr noundef %i.o) #4
  %i.ho = add nsw i32 %i.hn, %.0.i97              ; 2 uses
  %i.hp = load ptr, ptr %i.hh, align 8, !tbaa !70 ; 2 uses
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %indvars.iv.next.i
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4  ; 2 uses
  switch i32 %i.hr, label %bb.aj [
    i32 0, label %.sink.split.i
    i32 1, label %.sink.split.i
    i32 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ah, %bb.ah, %bb.ai
  %.sink76.in.i = phi ptr [ %i.hi, %bb.ai ], [ %i.hj, %bb.ah ], [ %i.hj, %bb.ah ]
end_hunk_0
