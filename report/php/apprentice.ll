inline.NumInlined: 57
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@apprentice_load:bb.a
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %4 = alloca [2 x %struct.magic_entry_set], align 16 ; 11 uses
  %5 = alloca %struct._php_stream_dirent, align 1 ; 7 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !71
  %i.e = or i32 %i.d, 64
  store i32 %i.e, ptr %i.c, align 4, !tbaa !71
  %i.f = tail call noalias dereferenceable_or_null(48) ptr @_ecalloc(i64 noundef 1, i64 noundef 48) #29 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  %indvars.iv186.sroa.gep285 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @file_oomem(ptr noundef nonnull %0, i64 noundef 48) #28
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !62
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.13, ptr noundef nonnull @usg_hdr) #33 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call i32 @stat(ptr noundef %1, ptr noundef nonnull %3) #28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !88
  %i.p = and i32 %i.o, 61440
  %i.q = icmp eq i32 %i.p, 16384
  br i1 %i.q, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.r = tail call ptr @_php_stream_opendir(ptr noundef %1, i32 noundef 8, ptr noundef null) #28 ; 9 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread119, label %.preheader126

.preheader126:                                    ; preds = %bb.g
  %i.s = call ptr @_php_stream_readdir(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #28
  %.not92143147 = icmp eq ptr %i.s, null
  br i1 %.not92143147, label %.outer._crit_edge.thread, label %.lr.ph

.outer._crit_edge.thread:                         ; preds = %.preheader126
  %i.t = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %i.u = call i32 (ptr, i64, ptr, ...) @ap_php_snprintf(ptr noundef nonnull %i.b, i64 noundef 4096, ptr noundef nonnull @.str.14, ptr noundef %1, ptr noundef nonnull %5) #28 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #31
  %i.y = add i64 %i.w, 2
  %i.z = add i64 %i.y, %i.x
  call void @file_oomem(ptr noundef %0, i64 noundef %i.z) #28
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  br label %.thread119

bb.j:                                             ; preds = %bb.h
  %i.ad = call i32 @stat(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #28
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.n, align 8, !tbaa !88
  %i.ag = and i32 %i.af, 61440
  %i.ah = icmp eq i32 %i.ag, 32768
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = call ptr @_php_stream_readdir(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #28
  %.not92 = icmp eq ptr %i.ai, null
  br i1 %.not92, label %.outer._crit_edge, label %bb.h, !llvm.loop !89

bb.m:                                             ; preds = %bb.k
  %.not94 = icmp ult i64 %.080.ph150, %.083.ph148
  br i1 %.not94, label %.outer, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = shl i64 %.083.ph148, 1
  %i.ak = or i64 %i.aj, 2                         ; 2 uses
  %i.al = shl i64 %i.ak, 3                        ; 2 uses
  %i.am = call ptr @_erealloc(ptr noundef %.081.ph149, i64 noundef %i.al) #35 ; 2 uses
  %.not95 = icmp eq ptr %i.am, null
  br i1 %.not95, label %.thread, label %.outer

.thread:                                          ; preds = %bb.n
  call void @file_oomem(ptr noundef %0, i64 noundef %i.al) #28
  %i.an = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ap = add nsw i32 %i.ao, 1
  br label %.thread119

.outer:                                           ; preds = %bb.n, %bb.m
  %.184 = phi i64 [ %.083.ph148, %bb.m ], [ %i.ak, %bb.n ]
  %.182 = phi ptr [ %.081.ph149, %bb.m ], [ %i.am, %bb.n ] ; 3 uses
  %i.aq = call i32 @llvm.umin.i32(i32 %i.u, i32 4095)
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = call noalias ptr @_estrndup(ptr noundef nonnull %i.b, i64 noundef %i.ar) #28
  %i.at = add i64 %.080.ph150, 1                  ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.182, i64 %.080.ph150
  store ptr %i.as, ptr %i.au, align 8, !tbaa !51
  %i.av = call ptr @_php_stream_readdir(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #28
  %.not92143 = icmp eq ptr %i.av, null
  br i1 %.not92143, label %.outer._crit_edge.thread212, label %.lr.ph, !llvm.loop !89

.outer._crit_edge.thread212:                      ; preds = %.outer
  %i.aw = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  br label %bb.o

.lr.ph:                                           ; preds = %.preheader126, %.outer
  %.080.ph150 = phi i64 [ %i.at, %.outer ], [ 0, %.preheader126 ] ; 4 uses
  %.081.ph149 = phi ptr [ %.182, %.outer ], [ null, %.preheader126 ] ; 4 uses
  %.083.ph148 = phi i64 [ %.184, %.outer ], [ 0, %.preheader126 ] ; 3 uses
  br label %bb.h

.outer._crit_edge:                                ; preds = %bb.l
  %i.ax = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  %.not93 = icmp eq ptr %.081.ph149, null
  br i1 %.not93, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.outer._crit_edge.thread212, %.outer._crit_edge
  %.080.ph.lcssa140217 = phi i64 [ %i.at, %.outer._crit_edge.thread212 ], [ %.080.ph150, %.outer._crit_edge ] ; 3 uses
  %.081.ph.lcssa142216 = phi ptr [ %.182, %.outer._crit_edge.thread212 ], [ %.081.ph149, %.outer._crit_edge ] ; 3 uses
  call void @qsort(ptr noundef nonnull %.081.ph.lcssa142216, i64 noundef %.080.ph.lcssa140217, i64 noundef 8, ptr noundef nonnull @cmpstrp) #28
  %.not165 = icmp eq i64 %.080.ph.lcssa140217, 0
  br i1 %.not165, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.o, %.lr.ph155
  %i.ay = phi i64 [ %i.bd, %.lr.ph155 ], [ 0, %bb.o ]
  %.075153 = phi i32 [ %i.bc, %.lr.ph155 ], [ 0, %bb.o ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.081.ph.lcssa142216, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !51
  call fastcc void @load_1(ptr noundef %0, i32 noundef %2, ptr noundef %i.ba, ptr noundef %i.a, ptr noundef %4)
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !51
  call void @_efree(ptr noundef %i.bb) #28
  %i.bc = add i32 %.075153, 1                     ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = icmp ugt i64 %.080.ph.lcssa140217, %i.bd
  br i1 %i.be, label %.lr.ph155, label %._crit_edge156, !llvm.loop !90

._crit_edge156:                                   ; preds = %.lr.ph155, %bb.o
  call void @_efree(ptr noundef nonnull %.081.ph.lcssa142216) #28
  br label %bb.p

.thread119:                                       ; preds = %bb.g, %bb.i, %.thread
  %i.bf = phi i32 [ %i.ab, %bb.i ], [ %i.ap, %.thread ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bg = icmp eq i32 %i.bf, 0
  br label %.loopexit

bb.p:                                             ; preds = %.outer._crit_edge.thread, %.outer._crit_edge, %._crit_edge156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bh = load i32, ptr %i.a, align 4
  %.not96 = icmp eq i32 %i.bh, 0
  br i1 %.not96, label %bb.r, label %.loopexit

bb.q:                                             ; preds = %bb.f, %bb.e
  call fastcc void @load_1(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %1, ptr noundef %i.a, ptr noundef %4)
  %.old = load i32, ptr %i.a, align 4, !tbaa !35
  %.not96.old = icmp eq i32 %.old, 0
  br i1 %.not96.old, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %.preheader125

.preheader125:                                    ; preds = %bb.r, %set_last_default.exit.thread
  %i.bl = phi i1 [ true, %bb.r ], [ false, %set_last_default.exit.thread ]
  %indvars.iv186.sroa.phi = phi ptr [ %4, %bb.r ], [ %indvars.iv186.sroa.gep285, %set_last_default.exit.thread ] ; 2 uses
  %indvars.iv186 = phi i64 [ 0, %bb.r ], [ 1, %set_last_default.exit.thread ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %indvars.iv186.sroa.phi, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !91 ; 11 uses
  %.not166 = icmp eq i32 %i.bn, 0
  %.pre = load ptr, ptr %indvars.iv186.sroa.phi, align 16, !tbaa !94 ; 21 uses
  br i1 %.not166, label %._crit_edge159, label %.lr.ph158

.lr.ph158:                                        ; preds = %.preheader125
  %i.bo = zext i32 %i.bn to i64                   ; 3 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph158, %.backedge
  %.1157 = phi i32 [ 0, %.lr.ph158 ], [ %.1.be, %.backedge ] ; 2 uses
  %i.bp = zext i32 %.1157 to i64                  ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !95 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !64
  %.not98 = icmp eq i16 %i.bs, 0
  br i1 %.not98, label %.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = add nuw i32 %.1157, 1
  br label %.backedge

.backedge.loopexit:                               ; preds = %bb.am
  %i.bu = trunc nuw i64 %indvars.iv.next to i32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit, %bb.t
  %.1.be = phi i32 [ %i.bt, %bb.t ], [ %i.bu, %.backedge.loopexit ] ; 2 uses
  %i.bv = icmp ult i32 %.1.be, %i.bn
  br i1 %i.bv, label %bb.s, label %.loopexit222, !llvm.loop !97

.preheader:                                       ; preds = %bb.s, %bb.am
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.am ], [ %i.bp, %bb.s ] ; 2 uses
  %i.bw = phi ptr [ %i.fa, %bb.am ], [ %i.br, %bb.s ] ; 3 uses
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !95 ; 5 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 6
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !69
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
  %i.cc = load i8, ptr %i.cb, align 2, !tbaa !80
  %i.cd = or i8 %i.cc, 32
  store i8 %i.cd, ptr %i.cb, align 2, !tbaa !80
  br label %set_test_type.exit.i

bb.v:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !56
  %i.cg = and i32 %i.cf, 32
  %.not16.i.i = icmp eq i32 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 3 uses
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !80  ; 2 uses
  br i1 %.not16.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = or i8 %i.ci, 64
  store i8 %i.cj, ptr %i.ch, align 2, !tbaa !80
  br label %set_test_type.exit.i

bb.x:                                             ; preds = %bb.v
  %i.ck = or i8 %i.ci, 32
  store i8 %i.ck, ptr %i.ch, align 2, !tbaa !80
  br label %set_test_type.exit.i

._crit_edge.i:                                    ; preds = %.preheader, %.preheader
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !56 ; 2 uses
  %.phi.trans.insert.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 5 uses
  %.pre.i.pre.i = load i8, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !80
  %i.cn = trunc i32 %i.cm to i8                   ; 2 uses
  %i.co = lshr i8 %i.cn, 1
  %i.cp = and i8 %i.co, 32
  %.pre.i.i = or i8 %i.cp, %.pre.i.pre.i
  %i.cq = shl i8 %i.cn, 1
  %i.cr = and i8 %i.cq, 64
  %i.cs = or i8 %.pre.i.i, %i.cr                  ; 2 uses
  %i.ct = and i32 %i.cm, 96
  %.not124 = icmp eq i32 %i.ct, 0
  br i1 %.not124, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i
  store i8 %i.cs, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !80
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %bb.y
  %i.cu = and i8 %i.cs, 96
  %.not15.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not15.i.i, label %bb.aa, label %set_test_type.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !77
  %i.cy = zext i8 %i.cx to i64
  %i.cz = call i32 @file_looks_utf8(ptr noundef nonnull %i.cv, i64 noundef %i.cy, ptr noundef null, ptr noundef null) #28
  %i.da = icmp slt i32 %i.cz, 1
  %i.db = load i8, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !80 ; 2 uses
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = or i8 %i.db, 32
  store i8 %i.dc, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !80
  br label %set_test_type.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dd = or i8 %i.db, 64
  store i8 %i.dd, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !80
  br label %set_test_type.exit.i

set_test_type.exit.i:                             ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.u, %.preheader
  %i.de = load i32, ptr %i.c, align 4, !tbaa !71
  %i.df = and i32 %i.de, 1
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %set_test_type.exit.i
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.di = load ptr, ptr %i.by, align 8, !tbaa !95 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 224 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !56
  %i.dl = icmp eq i8 %i.dk, 0
  %i.dm = select i1 %i.dl, ptr @.str.91, ptr @.str.92
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 160 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !56
  %.not.i = icmp eq i8 %i.do, 0
  %spec.select.i = select i1 %.not.i, ptr @.str.93, ptr %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !80
  %i.dr = and i8 %i.dq, 32
  %.not36.i = icmp eq i8 %i.dr, 0
  %i.ds = select i1 %.not36.i, ptr @set_text_binary.text, ptr @set_text_binary.binary
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dm, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %i.ds) #33 ; 0 uses
  %i.du = load ptr, ptr %i.by, align 8, !tbaa !95 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !80
  %i.dx = and i8 %i.dw, 32
  %.not37.i = icmp eq i8 %i.dx, 0
  br i1 %.not37.i, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 160 ; 3 uses
  %i.dz = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dy, ptr noundef nonnull dereferenceable(1) @set_text_binary.text) #31 ; 4 uses
  %.not38.i = icmp eq ptr %i.dz, null
  br i1 %.not38.i, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = icmp eq ptr %i.dz, %i.dy
  br i1 %i.ea, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = tail call ptr @__ctype_b_loc() #30
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !98
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !56
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !43
  %i.ei = and i16 %i.eh, 8192
  %.not39.i = icmp eq i16 %i.ei, 0
  br i1 %.not39.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 5 ; 2 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.dy to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = icmp eq i64 %i.em, 128
  br i1 %i.en, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = load i8, ptr %i.ej, align 1, !tbaa !56  ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = tail call ptr @__ctype_b_loc() #30
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !98
  %i.es = zext i8 %i.eo to i64
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !43
  %i.ev = and i16 %i.eu, 8192
  %.not40.i = icmp eq i16 %i.ev, 0
  br i1 %.not40.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !75
  %i.ex = call i64 @fwrite(ptr nonnull @.str.94, i64 39, i64 1, ptr %i.ew) #36 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.ae, %bb.ad, %set_test_type.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ey = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.ey, label %bb.am, label %.loopexit222

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !95 ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !64
  %.not41.i = icmp eq i16 %i.fb, 0
  br i1 %.not41.i, label %.backedge.loopexit, label %.preheader, !llvm.loop !100

._crit_edge159:                                   ; preds = %.preheader125
  %.not97 = icmp eq ptr %.pre, null
  br i1 %.not97, label %set_last_default.exit.thread, label %.thread221

.thread221:                                       ; preds = %._crit_edge159
  %i.fc = zext nneg i32 %i.bn to i64
  call void @qsort(ptr noundef nonnull %.pre, i64 noundef %i.fc, i64 noundef 16, ptr noundef nonnull @apprentice_sort) #28
  br label %set_last_default.exit.thread

.loopexit222:                                     ; preds = %.backedge, %bb.al
  %i.fd = zext i32 %i.bn to i64
  call void @qsort(ptr noundef nonnull %.pre, i64 noundef %i.fd, i64 noundef 16, ptr noundef nonnull @apprentice_sort) #28
  %wide.trip.count.i = zext i32 %i.bn to i64      ; 6 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %.loopexit222
  %indvars.iv27.i = phi i32 [ 1, %.loopexit222 ], [ %indvars.iv.next28.i, %bb.ap ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.loopexit222 ], [ %indvars.iv.next.i, %bb.ap ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !95 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 8, !tbaa !64
  %i.fh = icmp eq i16 %i.fg, 0
  br i1 %i.fh, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.lr.ph.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 6
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !69
  %i.fk = icmp eq i8 %i.fj, 3
  br i1 %i.fk, label %.preheader.preheader.i, label %bb.ap

.preheader.preheader.i:                           ; preds = %bb.an
  %umax.i = call i32 @llvm.umax.i32(i32 %i.bn, i32 %indvars.iv27.i) ; 2 uses
  %indvars.iv.next26.i259 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fl = icmp samesign ult i64 %indvars.iv.next26.i259, %wide.trip.count.i
  br i1 %i.fl, label %.lr.ph261, label %.split.loop.exit33.i

.preheader.i:                                     ; preds = %.lr.ph261
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv.next26.i260, 1 ; 2 uses
  %i.fm = icmp samesign ult i64 %indvars.iv.next26.i, %wide.trip.count.i
  br i1 %i.fm, label %.lr.ph261, label %.split.loop.exit33.i, !llvm.loop !101

.lr.ph261:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %indvars.iv.next26.i260 = phi i64 [ %indvars.iv.next26.i, %.preheader.i ], [ %indvars.iv.next26.i259, %.preheader.preheader.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.next26.i260
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !95
  %i.fp = load i16, ptr %i.fo, align 8, !tbaa !64
  %i.fq = icmp eq i16 %i.fp, 0
  br i1 %i.fq, label %.split.loop.exit.i, label %.preheader.i, !llvm.loop !101

.split.loop.exit.i:                               ; preds = %.lr.ph261
  %i.fr = trunc nuw i64 %indvars.iv.next26.i260 to i32
  br label %.split.loop.exit33.i

.split.loop.exit33.i:                             ; preds = %.preheader.i, %.preheader.preheader.i, %.split.loop.exit.i
  %.lcssa.i = phi i32 [ %i.fr, %.split.loop.exit.i ], [ %umax.i, %.preheader.preheader.i ], [ %umax.i, %.preheader.i ] ; 2 uses
  %.not.i100 = icmp eq i32 %.lcssa.i, %i.bn
  br i1 %.not.i100, label %set_last_default.exit, label %bb.ao

bb.ao:                                            ; preds = %.split.loop.exit33.i
  %i.fs = zext i32 %.lcssa.i to i64
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !95
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !68
  %i.fx = zext i32 %i.fw to i64
  store i64 %i.fx, ptr %i.bi, align 8, !tbaa !40
  call void (ptr, ptr, ...) @file_magwarn(ptr noundef %0, ptr noundef nonnull @.str.95) #28
  br label %set_last_default.exit

bb.ap:                                            ; preds = %bb.an, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %indvars.iv.next28.i = add i32 %indvars.iv27.i, 1
  br i1 %exitcond.not.i, label %set_last_default.exit, label %.lr.ph.i, !llvm.loop !102

set_last_default.exit:                            ; preds = %bb.ap, %bb.ao, %.split.loop.exit33.i
  %min.iters.check = icmp ult i32 %i.bn, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %set_last_default.exit
  %n.mod.vf = and i64 %wide.trip.count.i, 7       ; 2 uses
  %i.fy = icmp eq i64 %n.mod.vf, 0
  %i.fz = select i1 %i.fy, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.fz  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hg, %vector.body ]
  %vec.phi262 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hh, %vector.body ]
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 120
  %i.gq = load i32, ptr %i.gi, align 8, !tbaa !103
  %i.gr = load i32, ptr %i.gj, align 8, !tbaa !103
  %i.gs = load i32, ptr %i.gk, align 8, !tbaa !103
  %i.gt = load i32, ptr %i.gl, align 8, !tbaa !103
  %i.gu = insertelement <4 x i32> poison, i32 %i.gq, i64 0
  %i.gv = insertelement <4 x i32> %i.gu, i32 %i.gr, i64 1
  %i.gw = insertelement <4 x i32> %i.gv, i32 %i.gs, i64 2
  %i.gx = insertelement <4 x i32> %i.gw, i32 %i.gt, i64 3
  %i.gy = load i32, ptr %i.gm, align 8, !tbaa !103
  %i.gz = load i32, ptr %i.gn, align 8, !tbaa !103
  %i.ha = load i32, ptr %i.go, align 8, !tbaa !103
  %i.hb = load i32, ptr %i.gp, align 8, !tbaa !103
  %i.hc = insertelement <4 x i32> poison, i32 %i.gy, i64 0
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gz, i64 1
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 2
  %i.hf = insertelement <4 x i32> %i.he, i32 %i.hb, i64 3
  %i.hg = add <4 x i32> %i.gx, %vec.phi           ; 2 uses
  %i.hh = add <4 x i32> %i.hf, %vec.phi262        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hi = icmp eq i64 %index.next, %n.vec
  br i1 %i.hi, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hh, %i.hg
  %i.hj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %set_last_default.exit, %middle.block
  %indvars.iv.i102.ph = phi i64 [ 0, %set_last_default.exit ], [ %n.vec, %middle.block ]
  %.06268.i.ph = phi i32 [ 0, %set_last_default.exit ], [ %i.hj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i103, %scalar.ph ], [ %indvars.iv.i102.ph, %scalar.ph.preheader ] ; 2 uses
  %.06268.i = phi i32 [ %i.hn, %scalar.ph ], [ %.06268.i.ph, %scalar.ph.preheader ]
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.i102
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !103
  %i.hn = add i32 %i.hm, %.06268.i                ; 3 uses
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i103, %wide.trip.count.i
  br i1 %exitcond.not.i104, label %bb.aq, label %scalar.ph, !llvm.loop !107

bb.aq:                                            ; preds = %scalar.ph
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv186 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv186 ; 2 uses
  %i.hq = icmp eq i32 %i.hn, 0
  br i1 %i.hq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr null, ptr %i.ho, align 8, !tbaa !32
  store i32 0, ptr %i.hp, align 4, !tbaa !35
  br label %set_last_default.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.hr = zext i32 %i.hn to i64
  %i.hs = mul nuw nsw i64 %i.hr, 432              ; 2 uses
  %i.ht = call noalias ptr @_emalloc(i64 noundef %i.hs) #32 ; 5 uses
  store ptr %i.ht, ptr %i.ho, align 8, !tbaa !32
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.au, label %.preheader.i105.preheader

.preheader.i105.preheader:                        ; preds = %bb.as
  %xtraiter = and i64 %i.bo, 1
  %i.hv = icmp eq i32 %i.bn, 1
  br i1 %i.hv, label %.preheader.i105.epil.preheader, label %.preheader.i105.preheader.new

.preheader.i105.preheader.new:                    ; preds = %.preheader.i105.preheader
  %unroll_iter = and i64 %i.bo, 4294967294
  br label %.preheader.i105

.preheader.i105:                                  ; preds = %.preheader.i105, %.preheader.i105.preheader.new
  %indvars.iv73.i = phi i64 [ 0, %.preheader.i105.preheader.new ], [ %indvars.iv.next74.i.1, %.preheader.i105 ] ; 3 uses
  %.170.i = phi i32 [ 0, %.preheader.i105.preheader.new ], [ %i.iq, %.preheader.i105 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i105.preheader.new ], [ %niter.next.1, %.preheader.i105 ]
  %i.hw = zext i32 %.170.i to i64
  %i.hx = getelementptr inbounds nuw [432 x i8], ptr %i.ht, i64 %i.hw
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !95
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !103
  %i.ic = zext i32 %i.ib to i64
  %i.id = mul nuw nsw i64 %i.ic, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr align 8 %i.hz, i64 %i.id, i1 false)
  %i.ie = load i32, ptr %i.ia, align 8, !tbaa !103
  %i.if = add i32 %i.ie, %.170.i                  ; 2 uses
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [432 x i8], ptr %i.ht, i64 %i.ig
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !95
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8, !tbaa !103
  %i.in = zext i32 %i.im to i64
  %i.io = mul nuw nsw i64 %i.in, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr align 8 %i.ik, i64 %i.io, i1 false)
  %i.ip = load i32, ptr %i.il, align 8, !tbaa !103
  %i.iq = add i32 %i.ip, %i.if                    ; 3 uses
  %indvars.iv.next74.i.1 = add nuw nsw i64 %indvars.iv73.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i105, !llvm.loop !108

.unr-lcssa:                                       ; preds = %.preheader.i105
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.at, label %.preheader.i105.epil.preheader

.preheader.i105.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader.i105.preheader
  %indvars.iv73.i.epil.init = phi i64 [ 0, %.preheader.i105.preheader ], [ %indvars.iv.next74.i.1, %.unr-lcssa ]
  %.170.i.epil.init = phi i32 [ 0, %.preheader.i105.preheader ], [ %i.iq, %.unr-lcssa ] ; 2 uses
  %lcmp.mod284 = trunc i32 %i.bn to i1
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.ir = zext i32 %.170.i.epil.init to i64
  %i.is = getelementptr inbounds nuw [432 x i8], ptr %i.ht, i64 %i.ir
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i.epil.init ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !95
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 8 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !103
  %i.ix = zext i32 %i.iw to i64
  %i.iy = mul nuw nsw i64 %i.ix, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.is, ptr align 8 %i.iu, i64 %i.iy, i1 false)
  %i.iz = load i32, ptr %i.iv, align 8, !tbaa !103
  %i.ja = add i32 %i.iz, %.170.i.epil.init
  br label %bb.at

bb.at:                                            ; preds = %.unr-lcssa, %.preheader.i105.epil.preheader
  %.lcssa270 = phi i32 [ %i.iq, %.unr-lcssa ], [ %i.ja, %.preheader.i105.epil.preheader ]
  store i32 %.lcssa270, ptr %i.hp, align 4, !tbaa !35
  br label %set_last_default.exit.thread

bb.au:                                            ; preds = %bb.as
  call void @file_oomem(ptr noundef %0, i64 noundef %i.hs) #28
  br label %.loopexit

set_last_default.exit.thread:                     ; preds = %._crit_edge159, %.thread221, %bb.at, %bb.ar
  br i1 %i.bl, label %.preheader125, label %.loopexit, !llvm.loop !109

.loopexit:                                        ; preds = %set_last_default.exit.thread, %.thread119, %bb.p, %bb.q, %bb.au
  %.not99 = phi i1 [ false, %bb.au ], [ %i.bg, %.thread119 ], [ false, %bb.p ], [ false, %bb.q ], [ true, %set_last_default.exit.thread ]
  %i.jb = load ptr, ptr %4, align 16, !tbaa !94   ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !91 ; 2 uses
  %i.je = icmp eq ptr %i.jb, null
  br i1 %i.je, label %magic_entry_free.exit, label %.preheader.i107

.preheader.i107:                                  ; preds = %.loopexit
  %.not.i108 = icmp eq i32 %i.jd, 0
  br i1 %.not.i108, label %._crit_edge.i115, label %.lr.ph.preheader.i109

.lr.ph.preheader.i109:                            ; preds = %.preheader.i107
  %wide.trip.count.i110 = zext i32 %i.jd to i64
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %.lr.ph.i111, %.lr.ph.preheader.i109
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.preheader.i109 ], [ %indvars.iv.next.i113, %.lr.ph.i111 ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %indvars.iv.i112
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !95
  call void @_efree(ptr noundef %i.jg) #28
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i110
  br i1 %exitcond.not.i114, label %._crit_edge.i115, label %.lr.ph.i111, !llvm.loop !110

._crit_edge.i115:                                 ; preds = %.lr.ph.i111, %.preheader.i107
  call void @_efree(ptr noundef nonnull %i.jb) #28
  br label %magic_entry_free.exit

magic_entry_free.exit:                            ; preds = %.loopexit, %._crit_edge.i115
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ji = load ptr, ptr %i.jh, align 16, !tbaa !94 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !91 ; 2 uses
  %i.jl = icmp eq ptr %i.ji, null
  br i1 %i.jl, label %magic_entry_free.exit.1, label %.preheader.i107.1

.preheader.i107.1:                                ; preds = %magic_entry_free.exit
  %.not.i108.1 = icmp eq i32 %i.jk, 0
  br i1 %.not.i108.1, label %._crit_edge.i115.1, label %.lr.ph.preheader.i109.1

end_hunk_0
