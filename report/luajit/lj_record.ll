Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@lj_record_setup:bb.a
bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !193
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !88
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  %i.bs = icmp ugt ptr %i.aq, %i.br
  br i1 %i.bs, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bt = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !37 ; 2 uses
  %i.bv = and i32 %i.bu, 255
  %i.bw = icmp eq i32 %i.bv, 78
  br i1 %i.bw, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bx = lshr i32 %i.bu, 16
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %i.aq, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 -131076
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !37
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = icmp eq i32 %i.cc, %i.be
  br i1 %i.cd, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void @lj_snap_add(ptr noundef nonnull %0) #8
  %i.ce = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  tail call fastcc void @rec_for_loop(ptr noundef nonnull %0, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.c, i32 noundef 1)
  br label %bb.j

bb.h:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.ar, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.h
  tail call void @lj_snap_replay(ptr noundef nonnull %0, ptr noundef nonnull %i.ba) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.cg = load ptr, ptr %i.av, align 8, !tbaa !101 ; 2 uses
  %i.ch = load i16, ptr %i.bg, align 4, !tbaa !34
  %i.ci = zext i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !71
  %i.cl = inttoptr i64 %i.ck to ptr
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 100
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !194
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !37
  %.not97 = icmp sgt i32 %i.cq, %i.co
  br i1 %.not97, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !193
  %i.ct = load i32, ptr %i.s, align 4, !tbaa !58
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 11
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !195
  %i.cy = zext i8 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1668
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !37
  %i.dd = add nsw i32 %i.dc, %i.da
  %.not98 = icmp sgt i32 %i.dd, %i.cy
  br i1 %.not98, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.df = load i32, ptr %i.de, align 4, !tbaa !37 ; 2 uses
  %i.dg = and i32 %i.df, 255
  %i.dh = icmp eq i32 %i.dg, 87
  br i1 %i.dh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.di = lshr i32 %i.df, 16
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !71
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !102 ; 3 uses
  %i.dp = and i32 %i.do, 255
  %i.dq = icmp eq i32 %i.dp, 70
  br i1 %i.dq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dr = lshr i32 %i.do, 8
  %i.ds = and i32 %i.dr, 255
  %i.dt = lshr i32 %i.do, 24
  %i.du = tail call fastcc i32 @rec_itern(ptr noundef nonnull %0, i32 noundef %i.ds, i32 noundef %i.dt) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  tail call void @lj_record_stop(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0)
  br label %bb.af

bb.p:                                             ; preds = %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i16 0, ptr %i.dv, align 4, !tbaa !34
  %i.dw = load i32, ptr %i.aq, align 4, !tbaa !37 ; 7 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !59
  %i.dy = lshr i32 %i.dw, 8
  %i.dz = and i32 %i.dy, 255                      ; 4 uses
  %trunc.i = trunc i32 %i.dw to i8
  switch i8 %trunc.i, label %rec_setup_root.exit [
    i8 79, label %bb.q
    i8 82, label %bb.r
    i8 70, label %bb.u
    i8 85, label %bb.v
    i8 74, label %bb.y
    i8 75, label %bb.y
    i8 76, label %bb.y
    i8 96, label %bb.z
    i8 65, label %bb.aa
    i8 66, label %bb.aa
    i8 69, label %bb.aa
  ]

bb.q:                                             ; preds = %bb.p
  %i.ea = lshr i32 %i.dw, 16                      ; 2 uses
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl nuw nsw i32 %i.ea, 2
  %i.ed = sub nsw i32 131072, %i.ec
  store i32 %i.ed, ptr %i.q, align 8, !tbaa !91
  %i.ee = getelementptr [4 x i8], ptr %i.aq, i64 %i.eb
  %i.ef = getelementptr i8, ptr %i.ee, i64 -131068 ; 2 uses
  store ptr %i.ef, ptr %i.p, align 8, !tbaa !90
  br label %rec_setup_root.exit

bb.r:                                             ; preds = %bb.p
  %i.eg = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !37 ; 2 uses
  %i.ei = and i32 %i.eh, 255
  %i.ej = icmp eq i32 %i.ei, 87
  br i1 %i.ej, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 9) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ek = lshr i32 %i.eh, 24
  %i.el = add nsw i32 %i.dz, -1
  %i.em = add nsw i32 %i.el, %i.ek
  store i32 %i.em, ptr %i.h, align 4, !tbaa !36
  %i.en = lshr i32 %i.dw, 16                      ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw nsw i32 %i.en, 2
  %i.eq = sub nsw i32 131072, %i.ep
  store i32 %i.eq, ptr %i.q, align 8, !tbaa !91
  %i.er = getelementptr [4 x i8], ptr %i.aq, i64 %i.eo
  %i.es = getelementptr i8, ptr %i.er, i64 -131068 ; 2 uses
  store ptr %i.es, ptr %i.p, align 8, !tbaa !90
  br label %rec_setup_root.exit

bb.u:                                             ; preds = %bb.p
  store i32 %i.dz, ptr %i.h, align 4, !tbaa !36
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !37
  %i.ev = lshr i32 %i.eu, 14
  %i.ew = and i32 %i.ev, 262140
  %i.ex = sub nsw i32 131072, %i.ew
  store i32 %i.ex, ptr %i.q, align 8, !tbaa !91
  %i.ey = load i32, ptr %i.et, align 4, !tbaa !37
  %i.ez = lshr i32 %i.ey, 16
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %i.aq, i64 -131064
  %i.fc = getelementptr [4 x i8], ptr %i.fb, i64 %i.fa
  store ptr %i.fc, ptr %i.p, align 8, !tbaa !90
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 18, ptr %i.fd, align 4, !tbaa !29
  br label %rec_setup_root.exit

bb.v:                                             ; preds = %bb.p
  %i.fe = lshr i32 %i.dw, 16
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr [4 x i8], ptr %i.aq, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -131072
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !37 ; 2 uses
  %i.fj = and i32 %i.fi, -2147483393
  %or.cond.i = icmp eq i32 %i.fj, 88
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fk = lshr i32 %i.fi, 16                      ; 2 uses
  %i.fl = zext nneg i32 %i.fk to i64
  %1 = getelementptr i8, ptr %i.fg, i64 -262140
  %2 = getelementptr [4 x i8], ptr %1, i64 %i.fl
  store ptr %2, ptr %i.p, align 8, !tbaa !90
  %i.fm = shl nuw nsw i32 %i.fk, 2
  %i.fn = sub nuw nsw i32 131072, %i.fm
  store i32 %i.fn, ptr %i.q, align 8, !tbaa !91
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.dz, ptr %i.h, align 4, !tbaa !36
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  br label %rec_setup_root.exit

bb.y:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.fp = lshr i32 %i.dw, 16
  %i.fq = add nsw i32 %i.fp, -1
  %i.fr = add nsw i32 %i.fq, %i.dz
  store i32 %i.fr, ptr %i.h, align 4, !tbaa !36
  br label %rec_setup_root.exit

bb.z:                                             ; preds = %bb.p
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !55
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 10
  %i.fv = load i8, ptr %i.fu, align 2, !tbaa !104
  %i.fw = zext i8 %i.fv to i32
  store i32 %i.fw, ptr %i.h, align 4, !tbaa !36
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  br label %rec_setup_root.exit

bb.aa:                                            ; preds = %bb.p, %bb.p, %bb.p
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  br label %rec_setup_root.exit

rec_setup_root.exit:                              ; preds = %bb.p, %bb.q, %bb.t, %bb.u, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i = phi ptr [ %i.aq, %bb.p ], [ %i.ef, %bb.q ], [ %i.es, %bb.t ], [ %i.aq, %bb.u ], [ %i.fo, %bb.x ], [ %i.aq, %bb.y ], [ %i.fx, %bb.z ], [ %i.fy, %bb.aa ]
  store ptr %.0.i, ptr %i.ap, align 8, !tbaa !56
  tail call void @lj_snap_add(ptr noundef nonnull %0) #8
  %i.fz = load i32, ptr %i.dx, align 8, !tbaa !59
  %trunc = trunc i32 %i.fz to i8
  switch i8 %trunc, label %bb.ad [
    i8 79, label %bb.ab
    i8 69, label %bb.ac
  ]

bb.ab:                                            ; preds = %rec_setup_root.exit
  %i.ga = load ptr, ptr %i.ap, align 8, !tbaa !56
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -4
  tail call fastcc void @rec_for_loop(ptr noundef nonnull %0, ptr noundef nonnull %i.gb, ptr noundef nonnull %i.c, i32 noundef 1)
  br label %bb.ad

bb.ac:                                            ; preds = %rec_setup_root.exit
  store ptr null, ptr %i.ar, align 8, !tbaa !70
  br label %bb.ad

bb.ad:                                            ; preds = %rec_setup_root.exit, %bb.ac, %bb.ab
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !55
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 11
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !60
  %i.gg = icmp ugt i8 %i.gf, -8
  br i1 %i.gg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @lj_trace_err(ptr noundef nonnull %0, i32 noundef 3) #9
  unreachable

bb.af:                                            ; preds = %bb.k, %bb.o, %bb.ad
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 3112
  store ptr null, ptr %i.gh, align 8, !tbaa !92
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 3120
  store i32 -1, ptr %i.gi, align 8, !tbaa !93
  ret void
}

declare hidden i32 @lj_ir_emit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @rec_for_loop(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 18)) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !37
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 255                        ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = zext nneg i32 %i.c to i64                ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37   ; 3 uses
  %.not = icmp eq i32 %i.m, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i32 %i.m, 24
  %i.o = and i32 %i.n, 31
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not70 = icmp eq i32 %3, 0
  br i1 %.not70, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @lj_opt_narrow_forl(ptr noundef nonnull %0, ptr noundef %i.i) #8
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ %i.k, %bb.b ], [ %.pre, %bb.d ]
  %i.r = phi i32 [ %i.o, %bb.b ], [ %i.p, %bb.d ] ; 3 uses
  %i.s = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !37   ; 6 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.h, label %bb.f

.thread:                                          ; preds = %bb.c
  %i.w = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !37   ; 2 uses
  %.not.i81 = icmp eq i32 %i.z, 0
  br i1 %.not.i81, label %bb.h, label %.thread82

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq i32 %i.r, 19
  br i1 %i.aa, label %bb.g, label %.thread82

bb.g:                                             ; preds = %bb.f
  %i.ab = lshr i32 %i.v, 24
  %i.ac = and i32 %i.ab, 31
  %i.ad = add nsw i32 %i.ac, -15
  %i.ae = icmp ult i32 %i.ad, 5
  br i1 %i.ae, label %fori_arg.exit.thread, label %.sink.split.i.i

.thread82:                                        ; preds = %.thread, %bb.f
  %i.af = phi i32 [ %i.r, %bb.f ], [ 14, %.thread ] ; 2 uses
  %i.ag = phi i32 [ %i.v, %bb.f ], [ %i.z, %.thread ] ; 3 uses
  %i.ah = and i32 %i.ag, 520093696
  %i.ai = icmp eq i32 %i.ah, 234881024
  br i1 %i.ai, label %fori_arg.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.thread82, %bb.g
  %i.aj = phi i32 [ 19, %bb.g ], [ %i.af, %.thread82 ]
  %i.ak = phi i32 [ %i.v, %bb.g ], [ %i.ag, %.thread82 ]
  %i.al = phi <2 x i16> [ <i16 12910, i16 23443>, %bb.g ], [ <i16 467, i16 23310>, %.thread82 ]
  %i.am = trunc i32 %i.ak to i16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i16 %i.am, ptr %i.an, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 186
  store <2 x i16> %i.al, ptr %i.ao, align 2, !tbaa !9
  %i.ap = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %fori_arg.exit

bb.h:                                             ; preds = %.thread, %bb.e
  %i.aq = phi i64 [ %i.x, %.thread ], [ %i.t, %bb.e ]
  %i.ar = phi i32 [ %i.w, %.thread ], [ %i.s, %bb.e ] ; 2 uses
  %i.as = phi i32 [ 14, %.thread ], [ %i.r, %bb.e ] ; 5 uses
  %i.at = tail call fastcc i32 @find_kinit(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i32 noundef range(i32 1, 258) %i.ar, i32 noundef %i.as) ; 2 uses
  %.not17.i = icmp eq i32 %i.at, 0
  br i1 %.not17.i, label %bb.i, label %fori_arg.exit

bb.i:                                             ; preds = %bb.h
  %.not18.i = icmp eq i32 %i.as, 19               ; 2 uses
  %i.au = select i1 %.not18.i, i32 128, i32 0
  %i.av = add i32 %i.au, %i.as
  %i.aw = trunc i32 %i.av to i16
  %i.ax = or i16 %i.aw, 18176
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !35
  %i.ba = add nsw i32 %i.az, %i.ar
  %i.bb = trunc i32 %i.ba to i16
  %i.bc = select i1 %.not18.i, i16 56, i16 48
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.ax, ptr %i.be, align 4, !tbaa !9
  store i16 %i.bb, ptr %i.bd, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.bc, ptr %i.bf, align 2, !tbaa !9
  %i.bg = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8 ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.aq
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !37
  br label %fori_arg.exit

fori_arg.exit:                                    ; preds = %.thread82, %.sink.split.i.i, %bb.h, %bb.i
  %i.bj = phi i32 [ %i.as, %bb.i ], [ %i.as, %bb.h ], [ %i.af, %.thread82 ], [ %i.aj, %.sink.split.i.i ] ; 4 uses
  %.0.i = phi i32 [ %i.bg, %bb.i ], [ %i.at, %bb.h ], [ %i.ag, %.thread82 ], [ %i.ap, %.sink.split.i.i ] ; 4 uses
  %i.bk = add nuw nsw i32 %i.c, 2                 ; 2 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.bm = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !37 ; 5 uses
  %.not.i72 = icmp eq i32 %i.bo, 0
  br i1 %.not.i72, label %bb.l, label %bb.j

fori_arg.exit.thread:                             ; preds = %bb.g
  %i.bp = add nuw nsw i32 %i.c, 2                 ; 2 uses
end_hunk_0
