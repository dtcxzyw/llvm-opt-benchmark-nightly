Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/apprentice?download=true
inline.NumInlined: 57
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@apprentice_load:bb.a
  %.176 = phi ptr [ %.075.ph149, %bb.m ], [ %i.am, %bb.n ] ; 3 uses
  %i.aq = call i32 @llvm.umin.i32(i32 %i.u, i32 4095)
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = call noalias ptr @_estrndup(ptr noundef nonnull %i.b, i64 noundef %i.ar) #28
  %i.at = add i64 %.079.ph147, 1                  ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.176, i64 %.079.ph147
  store ptr %i.as, ptr %i.au, align 8, !tbaa !40
  %i.av = call ptr @_php_stream_readdir(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #28
  %.not92142 = icmp eq ptr %i.av, null
  br i1 %.not92142, label %.outer._crit_edge.thread210, label %.lr.ph, !llvm.loop !99

.outer._crit_edge.thread210:                      ; preds = %.outer
  %i.aw = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  br label %bb.o

.lr.ph:                                           ; preds = %.preheader125, %.outer
  %.075.ph149 = phi ptr [ %.176, %.outer ], [ null, %.preheader125 ] ; 4 uses
  %.077.ph148 = phi i64 [ %.178, %.outer ], [ 0, %.preheader125 ] ; 3 uses
  %.079.ph147 = phi i64 [ %i.at, %.outer ], [ 0, %.preheader125 ] ; 4 uses
  br label %bb.h

.outer._crit_edge:                                ; preds = %bb.l
  %i.ax = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  %.not93 = icmp eq ptr %.075.ph149, null
  br i1 %.not93, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.outer._crit_edge.thread210, %.outer._crit_edge
  %.075.ph.lcssa139215 = phi ptr [ %.176, %.outer._crit_edge.thread210 ], [ %.075.ph149, %.outer._crit_edge ] ; 3 uses
  %.079.ph.lcssa141214 = phi i64 [ %i.at, %.outer._crit_edge.thread210 ], [ %.079.ph147, %.outer._crit_edge ] ; 3 uses
  call void @qsort(ptr noundef nonnull %.075.ph.lcssa139215, i64 noundef %.079.ph.lcssa141214, i64 noundef 8, ptr noundef nonnull @cmpstrp) #28
  %.not164 = icmp eq i64 %.079.ph.lcssa141214, 0
  br i1 %.not164, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.o, %.lr.ph154
  %i.ay = phi i64 [ %i.bd, %.lr.ph154 ], [ 0, %bb.o ]
  %.082152 = phi i32 [ %i.bc, %.lr.ph154 ], [ 0, %bb.o ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.075.ph.lcssa139215, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  call fastcc void @load_1(ptr noundef %0, i32 noundef %2, ptr noundef %i.ba, ptr noundef %i.a, ptr noundef %4)
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !40
  call void @_efree(ptr noundef %i.bb) #28
  %i.bc = add i32 %.082152, 1                     ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = icmp ugt i64 %.079.ph.lcssa141214, %i.bd
  br i1 %i.be, label %.lr.ph154, label %._crit_edge155, !llvm.loop !100

._crit_edge155:                                   ; preds = %.lr.ph154, %bb.o
  call void @_efree(ptr noundef nonnull %.075.ph.lcssa139215) #28
  br label %bb.p

.thread118:                                       ; preds = %bb.g, %bb.i, %.thread
  %i.bf = phi i32 [ %i.ab, %bb.i ], [ %i.ap, %.thread ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bg = icmp eq i32 %i.bf, 0
  br label %.loopexit

bb.p:                                             ; preds = %.outer._crit_edge.thread, %.outer._crit_edge, %._crit_edge155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bh = load i32, ptr %i.a, align 4
  %.not96 = icmp eq i32 %i.bh, 0
  br i1 %.not96, label %bb.r, label %.loopexit

bb.q:                                             ; preds = %bb.f, %bb.e
  call fastcc void @load_1(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %1, ptr noundef %i.a, ptr noundef %4)
  %.old = load i32, ptr %i.a, align 4, !tbaa !32
  %.not96.old = icmp eq i32 %.old, 0
  br i1 %.not96.old, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %.preheader124

.preheader124:                                    ; preds = %bb.r, %set_last_default.exit.thread
  %i.bl = phi i1 [ true, %bb.r ], [ false, %set_last_default.exit.thread ]
  %indvars.iv185.sroa.phi = phi ptr [ %4, %bb.r ], [ %indvars.iv185.sroa.gep283, %set_last_default.exit.thread ] ; 2 uses
  %indvars.iv185 = phi i64 [ 0, %bb.r ], [ 1, %set_last_default.exit.thread ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %indvars.iv185.sroa.phi, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !66 ; 11 uses
  %.not165 = icmp eq i32 %i.bn, 0
  %.pre = load ptr, ptr %indvars.iv185.sroa.phi, align 16, !tbaa !67 ; 21 uses
  br i1 %.not165, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader124
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph157, %.backedge
  %.183156 = phi i32 [ 0, %.lr.ph157 ], [ %.183.be, %.backedge ] ; 2 uses
  %i.bp = zext i32 %.183156 to i64                ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !69 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !48
  %.not98 = icmp eq i16 %i.bs, 0
  br i1 %.not98, label %.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = add nuw i32 %.183156, 1
  br label %.backedge

.backedge.loopexit:                               ; preds = %bb.am
  %i.bu = trunc nuw i64 %indvars.iv.next to i32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit, %bb.t
  %.183.be = phi i32 [ %i.bt, %bb.t ], [ %i.bu, %.backedge.loopexit ] ; 2 uses
  %i.bv = icmp ult i32 %.183.be, %i.bn
  br i1 %i.bv, label %bb.s, label %.loopexit220, !llvm.loop !101

.preheader:                                       ; preds = %bb.s, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ %i.bp, %bb.s ] ; 2 uses
  %i.bw = phi ptr [ %i.ex, %bb.am ], [ %i.br, %bb.s ] ; 3 uses
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !69 ; 5 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !52
  switch i8 %i.ca, label %set_test_type.exit.i [
    i8 1, label %bb.u
    i8 2, label %bb.u
    i8 4, label %bb.u
    i8 6, label %bb.u
    i8 7, label %bb.u
    i8 8, label %bb.u
    i8 9, label %bb.u
    i8 10, label %bb.u
    i8 11, label %bb.u
    i8 12, label %bb.u
    i8 14, label %bb.u
    i8 15, label %bb.u
    i8 16, label %bb.u
    i8 21, label %bb.u
    i8 22, label %bb.u
    i8 23, label %bb.u
    i8 24, label %bb.u
    i8 25, label %bb.u
    i8 26, label %bb.u
    i8 27, label %bb.u
    i8 28, label %bb.u
    i8 29, label %bb.u
    i8 30, label %bb.u
    i8 31, label %bb.u
    i8 32, label %bb.u
    i8 42, label %bb.u
    i8 43, label %bb.u
    i8 44, label %bb.u
    i8 33, label %bb.u
    i8 34, label %bb.u
    i8 35, label %bb.u
    i8 36, label %bb.u
    i8 37, label %bb.u
    i8 38, label %bb.u
    i8 51, label %bb.u
    i8 52, label %bb.u
    i8 48, label %bb.u
    i8 49, label %bb.u
    i8 50, label %bb.u
    i8 53, label %bb.u
    i8 55, label %bb.u
    i8 54, label %bb.u
    i8 56, label %bb.u
    i8 58, label %bb.u
    i8 57, label %bb.u
    i8 59, label %bb.u
    i8 5, label %bb.v
    i8 13, label %bb.v
    i8 18, label %bb.v
    i8 19, label %bb.v
    i8 17, label %._crit_edge.i
    i8 20, label %._crit_edge.i
  ]

bb.u:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !62
  %i.cd = or i8 %i.cc, 32
  store i8 %i.cd, ptr %i.cb, align 2, !tbaa !62
  br label %set_test_type.exit.i

bb.v:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !43
  %i.cg = and i32 %i.cf, 32
  %.not16.i.i = icmp eq i32 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !62  ; 2 uses
  br i1 %.not16.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = or i8 %i.ci, 64
  store i8 %i.cj, ptr %i.ch, align 2, !tbaa !62
  br label %set_test_type.exit.i

bb.x:                                             ; preds = %bb.v
  %i.ck = or i8 %i.ci, 32
  store i8 %i.ck, ptr %i.ch, align 2, !tbaa !62
  br label %set_test_type.exit.i

._crit_edge.i:                                    ; preds = %.preheader, %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !43 ; 3 uses
  %.phi.trans.insert.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 5 uses
  %.pre.i.pre.i = load i8, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62
  %6 = lshr i32 %i.cm, 1
  %7 = trunc i32 %6 to i8
  %i.cn = and i8 %7, 32
  %.pre.i.i = or i8 %i.cn, %.pre.i.pre.i
  %8 = trunc i32 %i.cm to i8
  %i.co = shl i8 %8, 1
  %i.cp = and i8 %i.co, 64
  %i.cq = or i8 %.pre.i.i, %i.cp                  ; 2 uses
  %i.cr = and i32 %i.cm, 96
  %.not123 = icmp eq i32 %i.cr, 0
  br i1 %.not123, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i
  store i8 %i.cq, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %bb.y
  %i.cs = and i8 %i.cq, 96
  %.not15.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not15.i.i, label %bb.aa, label %set_test_type.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !59
  %i.cw = zext i8 %i.cv to i64
  %i.cx = call i32 @file_looks_utf8(ptr noundef nonnull %i.ct, i64 noundef %i.cw, ptr noundef null, ptr noundef null) #28
  %i.cy = icmp slt i32 %i.cx, 1
  %i.cz = load i8, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62 ; 2 uses
  br i1 %i.cy, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.da = or i8 %i.cz, 32
  store i8 %i.da, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62
  br label %set_test_type.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.db = or i8 %i.cz, 64
  store i8 %i.db, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62
  br label %set_test_type.exit.i

set_test_type.exit.i:                             ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.u, %.preheader
  %i.dc = load i32, ptr %i.c, align 4, !tbaa !53
  %i.dd = and i32 %i.dc, 1
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %set_test_type.exit.i
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.dg = load ptr, ptr %i.by, align 8, !tbaa !69 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 224 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !43
  %i.dj = icmp eq i8 %i.di, 0
  %i.dk = select i1 %i.dj, ptr @.str.91, ptr @.str.92
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 160 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !43
  %.not.i = icmp eq i8 %i.dm, 0
  %spec.select.i = select i1 %.not.i, ptr @.str.93, ptr %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.do = load i8, ptr %i.dn, align 2, !tbaa !62
  %i.dp = and i8 %i.do, 32
  %.not36.i = icmp eq i8 %i.dp, 0
  %i.dq = select i1 %.not36.i, ptr @set_text_binary.text, ptr @set_text_binary.binary
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dk, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %i.dq) #33 ; 0 uses
  %i.ds = load ptr, ptr %i.by, align 8, !tbaa !69 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !62
  %i.dv = and i8 %i.du, 32
  %.not37.i = icmp eq i8 %i.dv, 0
  br i1 %.not37.i, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 160 ; 3 uses
  %i.dx = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dw, ptr noundef nonnull dereferenceable(1) @set_text_binary.text) #31 ; 4 uses
  %.not38.i = icmp eq ptr %i.dx, null
  br i1 %.not38.i, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = icmp eq ptr %i.dx, %i.dw
  br i1 %i.dy, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = tail call ptr @__ctype_b_loc() #30
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !71
  %i.eb = getelementptr inbounds i8, ptr %i.dx, i64 -1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !43
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !36
  %i.eg = and i16 %i.ef, 8192
  %.not39.i = icmp eq i16 %i.eg, 0
  br i1 %.not39.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 5 ; 2 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.dw to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = icmp eq i64 %i.ek, 128
  br i1 %i.el, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.em = load i8, ptr %i.eh, align 1, !tbaa !43  ; 2 uses
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = tail call ptr @__ctype_b_loc() #30
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !71
  %i.eq = zext i8 %i.em to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !36
  %i.et = and i16 %i.es, 8192
  %.not40.i = icmp eq i16 %i.et, 0
  br i1 %.not40.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !58
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.94, i64 39, i64 1, ptr %i.eu) #36 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.ae, %bb.ad, %set_test_type.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ev = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.ev, label %bb.am, label %.loopexit220

bb.am:                                            ; preds = %bb.al
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !69 ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !48
  %.not41.i = icmp eq i16 %i.ey, 0
  br i1 %.not41.i, label %.backedge.loopexit, label %.preheader, !llvm.loop !102

._crit_edge158:                                   ; preds = %.preheader124
  %.not97 = icmp eq ptr %.pre, null
  br i1 %.not97, label %set_last_default.exit.thread, label %.thread219

.thread219:                                       ; preds = %._crit_edge158
  %i.ez = zext nneg i32 %i.bn to i64
  call void @qsort(ptr noundef nonnull %.pre, i64 noundef %i.ez, i64 noundef 16, ptr noundef nonnull @apprentice_sort) #28
  br label %set_last_default.exit.thread

.loopexit220:                                     ; preds = %.backedge, %bb.al
  %i.fa = zext i32 %i.bn to i64
  call void @qsort(ptr noundef nonnull %.pre, i64 noundef %i.fa, i64 noundef 16, ptr noundef nonnull @apprentice_sort) #28
  %wide.trip.count.i = zext i32 %i.bn to i64      ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %.loopexit220
  %indvars.iv27.i = phi i32 [ 1, %.loopexit220 ], [ %indvars.iv.next28.i, %bb.ap ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.loopexit220 ], [ %indvars.iv.next.i, %bb.ap ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !69 ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 8, !tbaa !48
  %i.fe = icmp eq i16 %i.fd, 0
  br i1 %i.fe, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.lr.ph.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 6
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !52
  %i.fh = icmp eq i8 %i.fg, 3
  br i1 %i.fh, label %.preheader.preheader.i, label %bb.ap

.preheader.preheader.i:                           ; preds = %bb.an
  %umax.i = call i32 @llvm.umax.i32(i32 %i.bn, i32 %indvars.iv27.i) ; 2 uses
  %indvars.iv.next26.i257 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fi = icmp samesign ult i64 %indvars.iv.next26.i257, %wide.trip.count.i
  br i1 %i.fi, label %.lr.ph259, label %.split.loop.exit33.i

.preheader.i:                                     ; preds = %.lr.ph259
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv.next26.i258, 1 ; 2 uses
  %i.fj = icmp samesign ult i64 %indvars.iv.next26.i, %wide.trip.count.i
  br i1 %i.fj, label %.lr.ph259, label %.split.loop.exit33.i, !llvm.loop !103

.lr.ph259:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %indvars.iv.next26.i258 = phi i64 [ %indvars.iv.next26.i, %.preheader.i ], [ %indvars.iv.next26.i257, %.preheader.preheader.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.next26.i258
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !69
  %i.fm = load i16, ptr %i.fl, align 8, !tbaa !48
  %i.fn = icmp eq i16 %i.fm, 0
  br i1 %i.fn, label %.split.loop.exit.i, label %.preheader.i, !llvm.loop !103

.split.loop.exit.i:                               ; preds = %.lr.ph259
  %i.fo = trunc nuw i64 %indvars.iv.next26.i258 to i32
  br label %.split.loop.exit33.i

.split.loop.exit33.i:                             ; preds = %.preheader.i, %.preheader.preheader.i, %.split.loop.exit.i
  %.lcssa.i = phi i32 [ %i.fo, %.split.loop.exit.i ], [ %umax.i, %.preheader.preheader.i ], [ %umax.i, %.preheader.i ] ; 2 uses
  %.not.i100 = icmp eq i32 %.lcssa.i, %i.bn
  br i1 %.not.i100, label %set_last_default.exit, label %bb.ao

bb.ao:                                            ; preds = %.split.loop.exit33.i
  %i.fp = zext i32 %.lcssa.i to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !69
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !51
  %i.fu = zext i32 %i.ft to i64
  store i64 %i.fu, ptr %i.bi, align 8, !tbaa !34
  call void (ptr, ptr, ...) @file_magwarn(ptr noundef %0, ptr noundef nonnull @.str.95) #28
  br label %set_last_default.exit

bb.ap:                                            ; preds = %bb.an, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %indvars.iv.next28.i = add i32 %indvars.iv27.i, 1
end_hunk_0
