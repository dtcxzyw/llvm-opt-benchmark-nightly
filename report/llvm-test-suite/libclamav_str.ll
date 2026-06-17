inline.NumInlined: 8
inline.NumDeleted: 2
begin_hunk_0_@cli_hex2str:bb.a
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !12
  %i.ae = and i16 %i.ad, 2048
  %.not.i30 = icmp eq i16 %i.ae, 0
  br i1 %.not.i30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.z, -48
  br label %cli_hex2int.exit35

bb.j:                                             ; preds = %bb.h
  %i.ag = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i31 = load ptr, ptr %i.ag, align 8, !tbaa !14
  %.020.in.i32 = getelementptr inbounds nuw [4 x i8], ptr %.pn.i31, i64 %i.ab
  %.020.i33 = load i32, ptr %.020.in.i32, align 4, !tbaa !4 ; 3 uses
  %i.ah = add i32 %.020.i33, -97
  %or.cond3.i34 = icmp ult i32 %i.ah, 6
  br i1 %or.cond3.i34, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %.020.i33, -87
  br label %cli_hex2int.exit35

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i33) #14
  br label %cli_hex2int.exit35.thread

cli_hex2int.exit35:                               ; preds = %bb.i, %bb.k
  %.0.i29 = phi i32 [ %i.af, %bb.i ], [ %i.ai, %bb.k ] ; 2 uses
  %sext28.mask = and i32 %.0.i29, 128
  %i.aj = icmp eq i32 %sext28.mask, 0
  br i1 %i.aj, label %bb.m, label %cli_hex2int.exit35.thread

bb.m:                                             ; preds = %cli_hex2int.exit35
  %i.ak = shl nuw nsw i32 %.0.i47, 4
  %i.al = add nuw nsw i32 %.0.i29, %i.ak
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.02340, i64 1
  store i8 %i.am, ptr %.02340, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.next to i32
  %i.ap = icmp slt i32 %i.ao, %i.b
  br i1 %i.ap, label %.lr.ph, label %.loopexit, !llvm.loop !18

cli_hex2int.exit35.thread:                        ; preds = %bb.g, %cli_hex2int.exit35, %bb.l
  tail call void @free(ptr noundef %i.g) #14
  br label %.loopexit

cli_hex2int.exit.thread:                          ; preds = %.lr.ph, %cli_hex2int.exit, %bb.f
  tail call void @free(ptr noundef %i.g) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.c, %cli_hex2int.exit.thread, %cli_hex2int.exit35.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %cli_hex2int.exit35.thread ], [ null, %cli_hex2int.exit.thread ], [ null, %bb.c ], [ %i.g, %.preheader ], [ %i.g, %bb.m ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cli_hex2num(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph.preheader, label %cli_hex2int.exit.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %0, i32 noundef %i.b) #14
  br label %cli_hex2int.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.01320 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.u, %bb.f ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp sgt i8 %i.f, -1
  br i1 %i.h, label %bb.c, label %cli_hex2int.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call ptr @__ctype_b_loc() #15
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = zext nneg i32 %i.g to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !12
  %i.n = and i16 %i.m, 2048
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %bb.d, label %cli_hex2int.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i = load ptr, ptr %i.o, align 8, !tbaa !14
  %.020.in.i = getelementptr inbounds nuw [4 x i8], ptr %.pn.i, i64 %i.k
  %.020.i = load i32, ptr %.020.in.i, align 4, !tbaa !4 ; 3 uses
  %i.p = add i32 %.020.i, -97
  %or.cond3.i = icmp ult i32 %i.p, 6
  br i1 %or.cond3.i, label %cli_hex2int.exit.thread16, label %bb.e

cli_hex2int.exit.thread16:                        ; preds = %bb.d
  %i.q = add nsw i32 %.020.i, -87
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i) #14
  br label %cli_hex2int.exit.thread

cli_hex2int.exit:                                 ; preds = %bb.c
  %i.r = add nsw i32 %i.g, -48
  %i.s = icmp samesign ult i8 %i.f, 48
  br i1 %i.s, label %cli_hex2int.exit.thread, label %bb.f

bb.f:                                             ; preds = %cli_hex2int.exit.thread16, %cli_hex2int.exit
  %.0.i18 = phi i32 [ %i.q, %cli_hex2int.exit.thread16 ], [ %i.r, %cli_hex2int.exit ]
  %i.t = shl i32 %.01320, 4
  %i.u = or i32 %.0.i18, %i.t                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cli_hex2int.exit.thread, label %.lr.ph, !llvm.loop !19

cli_hex2int.exit.thread:                          ; preds = %cli_hex2int.exit, %bb.f, %.lr.ph, %.preheader, %bb.e, %bb.b
  %.012 = phi i32 [ -1, %bb.b ], [ %.01320, %bb.e ], [ 0, %.preheader ], [ %.01320, %cli_hex2int.exit ], [ %i.u, %bb.f ], [ %.01320, %.lr.ph ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_str2hex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 1
  %i.b = or disjoint i32 %i.a, 1
  %i.c = zext i32 %i.b to i64
  %i.d = tail call ptr @cli_calloc(i64 noundef %i.c, i64 noundef 1) #14 ; 4 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.018 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = lshr i8 %i.h, 4
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = zext i32 %.018 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !tbaa !8
  %i.o = load i8, ptr %i.g, align 1, !tbaa !8
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = or disjoint i32 %.018, 1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  store i8 %i.s, ptr %i.v, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = add i32 %.018, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_utf16toascii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.3) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add nuw i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @cli_calloc(i64 noundef %i.d, i64 noundef 1) #14 ; 12 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.f = add i32 %1, -2                           ; 5 uses
  %i.g = lshr i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.g, 1
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 7 uses
  %min.iters.check = icmp ult i32 %i.f, 14
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.e, i64 %wide.trip.count
  %i.i = and i32 %i.f, -2
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep31 = getelementptr i8, ptr %i.k, i64 2
  %bound0 = icmp ult ptr %i.e, %scevgep31
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i32 %i.f, 30
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 8
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 5 uses
  %i.l = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl i64 %index, 1                        ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 18
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 22
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 30
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 23
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 29
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 31
  %i.bi = load i8, ptr %i.as, align 1, !tbaa !8, !alias.scope !21
  %i.bj = load i8, ptr %i.at, align 1, !tbaa !8, !alias.scope !21
  %i.bk = load i8, ptr %i.au, align 1, !tbaa !8, !alias.scope !21
  %i.bl = load i8, ptr %i.av, align 1, !tbaa !8, !alias.scope !21
  %i.bm = load i8, ptr %i.aw, align 1, !tbaa !8, !alias.scope !21
  %i.bn = load i8, ptr %i.ax, align 1, !tbaa !8, !alias.scope !21
  %i.bo = load i8, ptr %i.ay, align 1, !tbaa !8, !alias.scope !21
  %i.bp = load i8, ptr %i.az, align 1, !tbaa !8, !alias.scope !21
  %i.bq = load i8, ptr %i.ba, align 1, !tbaa !8, !alias.scope !21
  %i.br = load i8, ptr %i.bb, align 1, !tbaa !8, !alias.scope !21
  %i.bs = load i8, ptr %i.bc, align 1, !tbaa !8, !alias.scope !21
  %i.bt = load i8, ptr %i.bd, align 1, !tbaa !8, !alias.scope !21
  %i.bu = load i8, ptr %i.be, align 1, !tbaa !8, !alias.scope !21
  %i.bv = load i8, ptr %i.bf, align 1, !tbaa !8, !alias.scope !21
  %i.bw = load i8, ptr %i.bg, align 1, !tbaa !8, !alias.scope !21
  %i.bx = load i8, ptr %i.bh, align 1, !tbaa !8, !alias.scope !21
  %i.by = insertelement <16 x i8> poison, i8 %i.bi, i64 0
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 1
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 2
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 3
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 4
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 5
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 6
  %i.cf = insertelement <16 x i8> %i.ce, i8 %i.bp, i64 7
  %i.cg = insertelement <16 x i8> %i.cf, i8 %i.bq, i64 8
  %i.ch = insertelement <16 x i8> %i.cg, i8 %i.br, i64 9
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 10
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 11
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 12
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 13
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 14
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 15
  %i.co = shl <16 x i8> %i.cn, splat (i8 4)       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  store <16 x i8> %i.co, ptr %i.cp, align 1, !tbaa !8, !alias.scope !24, !noalias !21
  %i.cq = load i8, ptr %i.n, align 1, !tbaa !8, !alias.scope !21
  %i.cr = load i8, ptr %i.p, align 1, !tbaa !8, !alias.scope !21
  %i.cs = load i8, ptr %i.r, align 1, !tbaa !8, !alias.scope !21
  %i.ct = load i8, ptr %i.t, align 1, !tbaa !8, !alias.scope !21
  %i.cu = load i8, ptr %i.v, align 1, !tbaa !8, !alias.scope !21
  %i.cv = load i8, ptr %i.x, align 1, !tbaa !8, !alias.scope !21
  %i.cw = load i8, ptr %i.z, align 1, !tbaa !8, !alias.scope !21
  %i.cx = load i8, ptr %i.ab, align 1, !tbaa !8, !alias.scope !21
  %i.cy = load i8, ptr %i.ad, align 1, !tbaa !8, !alias.scope !21
  %i.cz = load i8, ptr %i.af, align 1, !tbaa !8, !alias.scope !21
  %i.da = load i8, ptr %i.ah, align 1, !tbaa !8, !alias.scope !21
  %i.db = load i8, ptr %i.aj, align 1, !tbaa !8, !alias.scope !21
  %i.dc = load i8, ptr %i.al, align 1, !tbaa !8, !alias.scope !21
  %i.dd = load i8, ptr %i.an, align 1, !tbaa !8, !alias.scope !21
  %i.de = load i8, ptr %i.ap, align 1, !tbaa !8, !alias.scope !21
  %i.df = load i8, ptr %i.ar, align 1, !tbaa !8, !alias.scope !21
  %i.dg = insertelement <16 x i8> poison, i8 %i.cq, i64 0
  %i.dh = insertelement <16 x i8> %i.dg, i8 %i.cr, i64 1
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 2
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 3
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 4
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 5
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 6
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 7
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 8
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 9
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 10
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 11
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 12
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 13
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 14
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 15
  %i.dw = add <16 x i8> %i.dv, %i.co
  store <16 x i8> %i.dw, ptr %i.cp, align 1, !tbaa !8, !alias.scope !24, !noalias !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.dy = shl nuw nsw i64 %n.vec34, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.dz = shl i64 %index35, 1                     ; 8 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 10
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 14
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 7
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 9
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 11
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 13
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 15
  %14 = load i8, ptr %i.ed, align 1, !tbaa !8, !alias.scope !21
  %15 = load i8, ptr %i.ee, align 1, !tbaa !8, !alias.scope !21
  %16 = load i8, ptr %i.ef, align 1, !tbaa !8, !alias.scope !21
  %17 = load i8, ptr %i.eg, align 1, !tbaa !8, !alias.scope !21
  %i.el = load i8, ptr %i.eh, align 1, !tbaa !8, !alias.scope !21
  %i.em = load i8, ptr %i.ei, align 1, !tbaa !8, !alias.scope !21
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !8, !alias.scope !21
  %i.eo = load i8, ptr %i.ek, align 1, !tbaa !8, !alias.scope !21
  %18 = insertelement <8 x i8> poison, i8 %14, i64 0
  %19 = insertelement <8 x i8> %18, i8 %15, i64 1
  %20 = insertelement <8 x i8> %19, i8 %16, i64 2
  %21 = insertelement <8 x i8> %20, i8 %17, i64 3
  %22 = insertelement <8 x i8> %21, i8 %i.el, i64 4
  %23 = insertelement <8 x i8> %22, i8 %i.em, i64 5
  %24 = insertelement <8 x i8> %23, i8 %i.en, i64 6
  %25 = insertelement <8 x i8> %24, i8 %i.eo, i64 7
  %26 = shl <8 x i8> %25, splat (i8 4)            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 %index35 ; 2 uses
  store <8 x i8> %26, ptr %i.ep, align 1, !tbaa !8, !alias.scope !24, !noalias !21
  %27 = load i8, ptr %2, align 1, !tbaa !8, !alias.scope !21
  %28 = load i8, ptr %4, align 1, !tbaa !8, !alias.scope !21
  %29 = load i8, ptr %6, align 1, !tbaa !8, !alias.scope !21
  %30 = load i8, ptr %8, align 1, !tbaa !8, !alias.scope !21
  %i.eq = load i8, ptr %10, align 1, !tbaa !8, !alias.scope !21
  %i.er = load i8, ptr %12, align 1, !tbaa !8, !alias.scope !21
  %i.es = load i8, ptr %i.ea, align 1, !tbaa !8, !alias.scope !21
  %i.et = load i8, ptr %i.ec, align 1, !tbaa !8, !alias.scope !21
  %31 = insertelement <8 x i8> poison, i8 %27, i64 0
  %32 = insertelement <8 x i8> %31, i8 %28, i64 1
  %33 = insertelement <8 x i8> %32, i8 %29, i64 2
  %34 = insertelement <8 x i8> %33, i8 %30, i64 3
  %35 = insertelement <8 x i8> %34, i8 %i.eq, i64 4
  %36 = insertelement <8 x i8> %35, i8 %i.er, i64 5
  %37 = insertelement <8 x i8> %36, i8 %i.es, i64 6
  %38 = insertelement <8 x i8> %37, i8 %i.et, i64 7
  %39 = add <8 x i8> %38, %26
  store <8 x i8> %39, ptr %i.ep, align 1, !tbaa !8, !alias.scope !24, !noalias !21
  %index.next36 = add nuw i64 %index35, 8         ; 2 uses
  %i.eu = icmp eq i64 %index.next36, %n.vec34
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %n.vec34, %wide.trip.count
  br i1 %cmp.n37, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv25.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.dy, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec34, %vec.epilog.middle.block ] ; 4 uses
  %i.ev = lshr i32 %i.f, 1
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ex, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25.ph
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fb = shl i8 %i.fa, 4                         ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.ph ; 2 uses
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25.ph
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !8
  %i.ff = add i8 %i.fe, %i.fb
  store i8 %i.ff, ptr %i.fc, align 1, !tbaa !8
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.ph, 2
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv25.unr = phi i64 [ %indvars.iv25.ph, %.lr.ph.preheader ], [ %indvars.iv.next26.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.fg = icmp eq i64 %indvars.iv.ph, %i.ew
  br i1 %i.fg, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.1, %.lr.ph ], [ %indvars.iv25.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !8
  %i.fk = shl i8 %i.fj, 4                         ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv ; 2 uses
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !8
  %i.fo = add i8 %i.fn, %i.fk
  store i8 %i.fo, ptr %i.fl, align 1, !tbaa !8
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next26
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !8
  %i.fs = shl i8 %i.fr, 4                         ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 2 uses
  store i8 %i.fs, ptr %i.fu, align 1, !tbaa !8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next26
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !8
  %i.fx = add i8 %i.fw, %i.fs
  store i8 %i.fx, ptr %i.fu, align 1, !tbaa !8
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c, %bb.b
  %.018 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %middle.block ], [ %i.e, %vec.epilog.middle.block ], [ %i.e, %.lr.ph ], [ %i.e, %.lr.ph.prol.loopexit ]
  ret ptr %.018
}

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @cli_strbcasestr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 %i.a, %i.c
  %i.g = and i64 %i.f, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = tail call i32 @strcasecmp(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #13
  %.not = icmp eq i32 %i.i, 0
  %i.j = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @cli_chomp(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = and i64 %i.b, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge2 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  switch i8 %i.h, label %.critedge.loopexit.split.loop.exit25 [
    i8 10, label %.critedge2
    i8 13, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  store i8 0, ptr %i.g, align 1, !tbaa !8
  %i.i = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !32

.critedge.loopexit.split.loop.exit25:             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %.critedge.loopexit.split.loop.exit25, %.preheader, %bb.b, %bb.a
  %.014 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %i.c, %.preheader ], [ %i.j, %.critedge.loopexit.split.loop.exit25 ], [ 0, %.critedge2 ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_strtok(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne i32 %1, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.e = phi i8 [ %i.r, %.critedge ], [ %i.a, %bb.a ]
  %.03855 = phi i32 [ %i.o, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %.03954 = phi i32 [ %.140, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.f) #13
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i32 %.03954, 1
  %i.i = sext i32 %.03855 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not50 = icmp eq i8 %i.k, 0
  br i1 %.not50, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i8 %i.k to i32
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.l) #13
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %.critedge.loopexit, label %bb.c, !llvm.loop !33

.critedge.loopexit:                               ; preds = %bb.d, %bb.c
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph
  %.140 = phi i32 [ %.03954, %.lr.ph ], [ %i.h, %.critedge.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.03855, %.lr.ph ], [ %i.n, %.critedge.loopexit ]
  %i.o = add nsw i32 %.2, 1                       ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 3 uses
  %i.s = icmp ne i8 %i.r, 0
  %i.t = icmp ne i32 %.140, %1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.lcssa53 = phi i64 [ 0, %bb.a ], [ %i.p, %.critedge ]
end_hunk_0
begin_hunk_1_@cli_strtokbuf:bb.a

bb.g:                                             ; preds = %._crit_edge55, %._crit_edge, %bb.f
  %.038 = phi ptr [ %3, %bb.f ], [ null, %._crit_edge ], [ null, %._crit_edge55 ]
  ret ptr %.038
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cli_memstr(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %2
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = sext i32 %3 to i64                       ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %i.c)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = load i8, ptr %2, align 1, !tbaa !8
  %i.e = sext i8 %i.d to i32                      ; 2 uses
  %i.f = sext i32 %1 to i64
  %i.g = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.e, i64 noundef %i.f) #13 ; 2 uses
  %.not3842 = icmp eq ptr %i.g, null
  br i1 %.not3842, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.h = phi ptr [ %i.q, %bb.e ], [ %i.g, %.preheader ] ; 5 uses
  %.044 = phi i32 [ %.1, %bb.e ], [ %1, %.preheader ]
  %.02843 = phi ptr [ %.129, %bb.e ], [ %0, %.preheader ] ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.02843 to i64
  %.neg = sub i64 %i.j, %i.i
  %.neg39 = trunc i64 %.neg to i32
  %i.k = add i32 %.044, %.neg39                   ; 2 uses
  %i.l = icmp slt i32 %i.k, %3
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %bcmp40 = tail call i32 @bcmp(ptr nonnull %i.h, ptr nonnull %2, i64 %i.c)
  %.not41 = icmp eq i32 %bcmp40, 0
  br i1 %.not41, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %.02843, %i.h                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02843, i64 1
  %.129 = select i1 %i.m, ptr %i.n, ptr %i.h      ; 2 uses
  %i.o = sext i1 %i.m to i32
  %.1 = add nsw i32 %i.k, %i.o                    ; 2 uses
  %i.p = sext i32 %.1 to i64
  %i.q = tail call ptr @memchr(ptr noundef nonnull %.129, i32 noundef %i.e, i64 noundef %i.p) #13 ; 2 uses
  %.not38 = icmp eq ptr %i.q, null
  br i1 %.not38, label %.loopexit, label %.lr.ph, !llvm.loop !39

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %bb.e, %.preheader, %bb.c, %bb.b, %bb.a
  %.030 = phi ptr [ %0, %bb.b ], [ null, %bb.a ], [ %0, %bb.c ], [ null, %.preheader ], [ null, %.lr.ph ], [ %i.h, %bb.d ], [ null, %bb.e ]
  ret ptr %.030
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cli_strrcpy(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4) #14
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.e, %.preheader ], [ %0, %bb.a ] ; 3 uses
  %.0 = phi ptr [ %i.c, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.d = load i8, ptr %.0, align 1, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 1
  store i8 %i.d, ptr %.07, align 1, !tbaa !8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !40

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.08 = phi ptr [ null, %bb.b ], [ %.07, %.preheader ]
  ret ptr %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cli_strtokenize(ptr noundef %0, i8 noundef signext %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sext i8 %1 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.b, %bb.c ] ; 4 uses
  %.01216 = phi ptr [ %0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.b = add nuw i64 %.017, 1                     ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.017
  store ptr %.01216, ptr %i.c, align 8, !tbaa !41
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.01216, i32 noundef %i.a) #13 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = icmp ult i64 %i.b, %2
  br i1 %i.e, label %.lr.ph19.preheader, label %.loopexit

.lr.ph19.preheader:                               ; preds = %.preheader
  %i.f = shl i64 %.017, 3
  %i.g = getelementptr i8, ptr %3, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.h = shl i64 %2, 3
  %i.i = add i64 %i.h, -8
  %i.j = shl i64 %.017, 3
  %i.k = sub i64 %i.i, %i.j
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !41
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !8
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !43

.loopexit:                                        ; preds = %bb.c, %.lr.ph19.preheader, %bb.a, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 short", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !17, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 8, i32 8}
!30 = distinct !{!30, !17, !27, !28}
!31 = distinct !{!31, !17, !27}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 omnipotent char", !11, i64 0}
!43 = distinct !{!43, !17}
end_hunk_1
