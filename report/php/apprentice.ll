Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/apprentice?download=true
inline.NumInlined: 57
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@strcmp
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @apprentice_load(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %4 = alloca [2 x %struct.magic_entry_set], align 16 ; 11 uses
  %5 = alloca %struct._php_stream_dirent, align 1 ; 7 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !53
  %i.e = or i32 %i.d, 64
  store i32 %i.e, ptr %i.c, align 4, !tbaa !53
  %i.f = tail call noalias dereferenceable_or_null(48) ptr @_ecalloc(i64 noundef 1, i64 noundef 48) #29 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  %indvars.iv185.sroa.gep283 = getelementptr inbounds nuw i8, ptr %4, i64 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @file_oomem(ptr noundef nonnull %0, i64 noundef 48) #28
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1, ptr %i.h, align 8, !tbaa !46
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.13, ptr noundef nonnull @usg_hdr) #33 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = call i32 @stat(ptr noundef %1, ptr noundef nonnull %3) #28
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !110
  %i.p = and i32 %i.o, 61440
  %i.q = icmp eq i32 %i.p, 16384
  br i1 %i.q, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.r = tail call ptr @_php_stream_opendir(ptr noundef %1, i32 noundef 8, ptr noundef null) #28 ; 9 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.thread118, label %.preheader125

.preheader125:                                    ; preds = %bb.g
  %i.s = call ptr @_php_stream_readdir(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #28
  %.not92142146 = icmp eq ptr %i.s, null
  br i1 %.not92142146, label %.outer._crit_edge.thread, label %.lr.ph

.outer._crit_edge.thread:                         ; preds = %.preheader125
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
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !32
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  br label %.thread118

bb.j:                                             ; preds = %bb.h
  %i.ad = call i32 @stat(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #28
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.n, align 8, !tbaa !110
  %i.ag = and i32 %i.af, 61440
  %i.ah = icmp eq i32 %i.ag, 32768
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = call ptr @_php_stream_readdir(ptr noundef nonnull %i.r, ptr noundef nonnull %5) #28
  %.not92 = icmp eq ptr %i.ai, null
  br i1 %.not92, label %.outer._crit_edge, label %bb.h, !llvm.loop !99

bb.m:                                             ; preds = %bb.k
  %.not94 = icmp ult i64 %.079.ph147, %.077.ph148
  br i1 %.not94, label %.outer, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = shl i64 %.077.ph148, 1
  %i.ak = or i64 %i.aj, 2                         ; 2 uses
  %i.al = shl i64 %i.ak, 3                        ; 2 uses
  %i.am = call ptr @_erealloc(ptr noundef %.075.ph149, i64 noundef %i.al) #35 ; 2 uses
  %.not95 = icmp eq ptr %i.am, null
  br i1 %.not95, label %.thread, label %.outer

.thread:                                          ; preds = %bb.n
  call void @file_oomem(ptr noundef %0, i64 noundef %i.al) #28
  %i.an = call i32 @_php_stream_free(ptr noundef nonnull %i.r, i32 noundef 3) #28 ; 0 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !32
  %i.ap = add nsw i32 %i.ao, 1
  br label %.thread118

.outer:                                           ; preds = %bb.n, %bb.m
  %.178 = phi i64 [ %.077.ph148, %bb.m ], [ %i.ak, %bb.n ]
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
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !66 ; 10 uses
  %.not165 = icmp eq i32 %i.bn, 0
  %.pre = load ptr, ptr %indvars.iv185.sroa.phi, align 16, !tbaa !67 ; 20 uses
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
  %i.bw = phi ptr [ %i.ez, %bb.am ], [ %i.br, %bb.s ] ; 3 uses
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
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 2 ; 5 uses
  %.pre.i.pre.i = load i8, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62
  %i.cn = trunc i32 %i.cm to i8                   ; 2 uses
  %i.co = lshr i8 %i.cn, 1
  %i.cp = and i8 %i.co, 32
  %.pre.i.i = or i8 %i.cp, %.pre.i.pre.i
  %i.cq = shl i8 %i.cn, 1
  %i.cr = and i8 %i.cq, 64
  %i.cs = or i8 %.pre.i.i, %i.cr                  ; 2 uses
  %i.ct = and i32 %i.cm, 96
  %.not123 = icmp eq i32 %i.ct, 0
  br i1 %.not123, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i
  store i8 %i.cs, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i, %bb.y
  %i.cu = and i8 %i.cs, 96
  %.not15.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not15.i.i, label %bb.aa, label %set_test_type.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !59
  %i.cy = zext i8 %i.cx to i64
  %i.cz = call i32 @file_looks_utf8(ptr noundef nonnull %i.cv, i64 noundef %i.cy, ptr noundef null, ptr noundef null) #28
  %i.da = icmp slt i32 %i.cz, 1
  %i.db = load i8, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62 ; 2 uses
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dc = or i8 %i.db, 32
  store i8 %i.dc, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62
  br label %set_test_type.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dd = or i8 %i.db, 64
  store i8 %i.dd, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 2, !tbaa !62
  br label %set_test_type.exit.i

set_test_type.exit.i:                             ; preds = %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.w, %bb.u, %.preheader
  %i.de = load i32, ptr %i.c, align 4, !tbaa !53
  %i.df = and i32 %i.de, 1
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %set_test_type.exit.i
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !58
  %i.di = load ptr, ptr %i.by, align 8, !tbaa !69 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 224 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !43
  %i.dl = icmp eq i8 %i.dk, 0
  %i.dm = select i1 %i.dl, ptr @.str.91, ptr @.str.92
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 160 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !43
  %.not.i = icmp eq i8 %i.do, 0
  %spec.select.i = select i1 %.not.i, ptr @.str.93, ptr %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !62
  %i.dr = and i8 %i.dq, 32
  %.not36.i = icmp eq i8 %i.dr, 0
  %i.ds = select i1 %.not36.i, ptr @set_text_binary.text, ptr @set_text_binary.binary
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dm, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %i.ds) #33 ; 0 uses
  %i.du = load ptr, ptr %i.by, align 8, !tbaa !69 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !62
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
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !71
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !43
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !36
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
  %i.eo = load i8, ptr %i.ej, align 1, !tbaa !43  ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = tail call ptr @__ctype_b_loc() #30
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !71
  %i.es = zext i8 %i.eo to i64
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %i.es
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !36
  %i.ev = and i16 %i.eu, 8192
  %.not40.i = icmp eq i16 %i.ev, 0
  br i1 %.not40.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !58
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.94, i64 39, i64 1, ptr %i.ew) #36 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.ae, %bb.ad, %set_test_type.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ex = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.ex, label %bb.am, label %.loopexit220

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !69 ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 8, !tbaa !48
  %.not41.i = icmp eq i16 %i.fa, 0
  br i1 %.not41.i, label %.backedge.loopexit, label %.preheader, !llvm.loop !102

._crit_edge158:                                   ; preds = %.preheader124
  %.not97 = icmp eq ptr %.pre, null
  br i1 %.not97, label %set_last_default.exit.thread, label %.thread219

.thread219:                                       ; preds = %._crit_edge158
  %i.fb = zext nneg i32 %i.bn to i64
  call void @qsort(ptr noundef nonnull %.pre, i64 noundef %i.fb, i64 noundef 16, ptr noundef nonnull @apprentice_sort) #28
  br label %set_last_default.exit.thread

.loopexit220:                                     ; preds = %.backedge, %bb.al
  %i.fc = zext i32 %i.bn to i64
  call void @qsort(ptr noundef nonnull %.pre, i64 noundef %i.fc, i64 noundef 16, ptr noundef nonnull @apprentice_sort) #28
  %wide.trip.count.i = zext i32 %i.bn to i64      ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %.loopexit220
  %indvars.iv.i = phi i64 [ 0, %.loopexit220 ], [ %indvars.iv.next.i, %bb.ap ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !69 ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 8, !tbaa !48
  %i.fg = icmp eq i16 %i.ff, 0
  br i1 %i.fg, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %.lr.ph.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 6
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !52
  %i.fj = icmp eq i8 %i.fi, 3
  br i1 %i.fj, label %.preheader.preheader.i, label %bb.ap

.preheader.preheader.i:                           ; preds = %bb.an
  %6 = add i32 %i.bn, -1
  %wide.trip.count28.i = zext i32 %6 to i64       ; 2 uses
  %exitcond29.not.i258 = icmp eq i64 %indvars.iv.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i258, label %set_last_default.exit, label %.lr.ph259

.preheader.i:                                     ; preds = %.lr.ph259
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %set_last_default.exit, label %.lr.ph259, !llvm.loop !103

.lr.ph259:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %indvars.iv.next26.i258 = phi i64 [ %indvars.iv.next26.i, %.preheader.i ], [ %indvars.iv.i, %.preheader.preheader.i ]
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv.next26.i258, 1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.next26.i
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !69 ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 8, !tbaa !48
  %i.fn = icmp eq i16 %i.fm, 0
  br i1 %i.fn, label %bb.ao, label %.preheader.i, !llvm.loop !103

bb.ao:                                            ; preds = %.lr.ph259
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !51
  %i.fq = zext i32 %i.fp to i64
  store i64 %i.fq, ptr %i.bi, align 8, !tbaa !34
  call void (ptr, ptr, ...) @file_magwarn(ptr noundef %0, ptr noundef nonnull @.str.95) #28
  br label %set_last_default.exit

bb.ap:                                            ; preds = %bb.an, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %set_last_default.exit, label %.lr.ph.i, !llvm.loop !104

set_last_default.exit:                            ; preds = %bb.ap, %.preheader.i, %.preheader.preheader.i, %bb.ao
  %min.iters.check = icmp ult i32 %i.bn, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %set_last_default.exit
  %i.fr = and i64 %wide.trip.count.i, 7           ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  %i.ft = select i1 %i.fs, i64 8, i64 %i.fr
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.ft  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ha, %vector.body ]
  %vec.phi260 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hb, %vector.body ]
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %index
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 72
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 88
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 104
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 120
  %i.gk = load i32, ptr %i.gc, align 8, !tbaa !72
  %i.gl = load i32, ptr %i.gd, align 8, !tbaa !72
  %i.gm = load i32, ptr %i.ge, align 8, !tbaa !72
  %i.gn = load i32, ptr %i.gf, align 8, !tbaa !72
  %i.go = insertelement <4 x i32> poison, i32 %i.gk, i64 0
  %i.gp = insertelement <4 x i32> %i.go, i32 %i.gl, i64 1
  %i.gq = insertelement <4 x i32> %i.gp, i32 %i.gm, i64 2
  %i.gr = insertelement <4 x i32> %i.gq, i32 %i.gn, i64 3
  %i.gs = load i32, ptr %i.gg, align 8, !tbaa !72
  %i.gt = load i32, ptr %i.gh, align 8, !tbaa !72
  %i.gu = load i32, ptr %i.gi, align 8, !tbaa !72
  %i.gv = load i32, ptr %i.gj, align 8, !tbaa !72
  %i.gw = insertelement <4 x i32> poison, i32 %i.gs, i64 0
  %i.gx = insertelement <4 x i32> %i.gw, i32 %i.gt, i64 1
  %i.gy = insertelement <4 x i32> %i.gx, i32 %i.gu, i64 2
  %i.gz = insertelement <4 x i32> %i.gy, i32 %i.gv, i64 3
  %i.ha = add <4 x i32> %i.gr, %vec.phi           ; 2 uses
  %i.hb = add <4 x i32> %i.gz, %vec.phi260        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hb, %i.ha
  %i.hd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %set_last_default.exit, %middle.block
  %indvars.iv.i102.ph = phi i64 [ 0, %set_last_default.exit ], [ %n.vec, %middle.block ]
  %.068.i.ph = phi i32 [ 0, %set_last_default.exit ], [ %i.hd, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i103, %scalar.ph ], [ %indvars.iv.i102.ph, %scalar.ph.preheader ] ; 2 uses
  %.068.i = phi i32 [ %i.hh, %scalar.ph ], [ %.068.i.ph, %scalar.ph.preheader ]
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.i102
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !72
  %i.hh = add i32 %i.hg, %.068.i                  ; 3 uses
  %indvars.iv.next.i103 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %indvars.iv.next.i103, %wide.trip.count.i
  br i1 %exitcond.not.i104, label %bb.aq, label %scalar.ph, !llvm.loop !106

bb.aq:                                            ; preds = %scalar.ph
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv185 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv185 ; 2 uses
  %i.hk = icmp eq i32 %i.hh, 0
  br i1 %i.hk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr null, ptr %i.hi, align 8, !tbaa !30
  store i32 0, ptr %i.hj, align 4, !tbaa !32
  br label %set_last_default.exit.thread

bb.as:                                            ; preds = %bb.aq
  %i.hl = zext i32 %i.hh to i64
  %i.hm = mul nuw nsw i64 %i.hl, 432              ; 2 uses
  %i.hn = call noalias ptr @_emalloc(i64 noundef %i.hm) #32 ; 5 uses
  store ptr %i.hn, ptr %i.hi, align 8, !tbaa !30
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.au, label %.preheader.i105.preheader

.preheader.i105.preheader:                        ; preds = %bb.as
  %xtraiter = and i64 %i.bo, 1
  %i.hp = icmp eq i32 %i.bn, 1
  br i1 %i.hp, label %.preheader.i105.epil.preheader, label %.preheader.i105.preheader.new

.preheader.i105.preheader.new:                    ; preds = %.preheader.i105.preheader
  %unroll_iter = and i64 %i.bo, 4294967294
  br label %.preheader.i105

.preheader.i105:                                  ; preds = %.preheader.i105, %.preheader.i105.preheader.new
  %indvars.iv73.i = phi i64 [ 0, %.preheader.i105.preheader.new ], [ %indvars.iv.next74.i.1, %.preheader.i105 ] ; 3 uses
  %.170.i = phi i32 [ 0, %.preheader.i105.preheader.new ], [ %i.ik, %.preheader.i105 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i105.preheader.new ], [ %niter.next.1, %.preheader.i105 ]
  %i.hq = zext i32 %.170.i to i64
  %i.hr = getelementptr inbounds nuw [432 x i8], ptr %i.hn, i64 %i.hq
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !69
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !72
  %i.hw = zext i32 %i.hv to i64
  %i.hx = mul nuw nsw i64 %i.hw, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hr, ptr align 8 %i.ht, i64 %i.hx, i1 false)
  %i.hy = load i32, ptr %i.hu, align 8, !tbaa !72
  %i.hz = add i32 %i.hy, %.170.i                  ; 2 uses
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [432 x i8], ptr %i.hn, i64 %i.ia
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !69
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 24 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !72
  %i.ih = zext i32 %i.ig to i64
  %i.ii = mul nuw nsw i64 %i.ih, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr align 8 %i.ie, i64 %i.ii, i1 false)
  %i.ij = load i32, ptr %i.if, align 8, !tbaa !72
  %i.ik = add i32 %i.ij, %i.hz                    ; 3 uses
  %indvars.iv.next74.i.1 = add nuw nsw i64 %indvars.iv73.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader.i105, !llvm.loop !107

.unr-lcssa:                                       ; preds = %.preheader.i105
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.at, label %.preheader.i105.epil.preheader

.preheader.i105.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader.i105.preheader
  %indvars.iv73.i.epil.init = phi i64 [ 0, %.preheader.i105.preheader ], [ %indvars.iv.next74.i.1, %.unr-lcssa ]
  %.170.i.epil.init = phi i32 [ 0, %.preheader.i105.preheader ], [ %i.ik, %.unr-lcssa ] ; 2 uses
  %lcmp.mod282 = trunc i32 %i.bn to i1
  call void @llvm.assume(i1 %lcmp.mod282)
  %i.il = zext i32 %.170.i.epil.init to i64
  %i.im = getelementptr inbounds nuw [432 x i8], ptr %i.hn, i64 %i.il
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv73.i.epil.init ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !69
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !72
  %i.ir = zext i32 %i.iq to i64
  %i.is = mul nuw nsw i64 %i.ir, 432
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.im, ptr align 8 %i.io, i64 %i.is, i1 false)
  %i.it = load i32, ptr %i.ip, align 8, !tbaa !72
  %i.iu = add i32 %i.it, %.170.i.epil.init
  br label %bb.at

bb.at:                                            ; preds = %.unr-lcssa, %.preheader.i105.epil.preheader
  %.lcssa268 = phi i32 [ %i.ik, %.unr-lcssa ], [ %i.iu, %.preheader.i105.epil.preheader ]
  store i32 %.lcssa268, ptr %i.hj, align 4, !tbaa !32
  br label %set_last_default.exit.thread

bb.au:                                            ; preds = %bb.as
  call void @file_oomem(ptr noundef %0, i64 noundef %i.hm) #28
  br label %.loopexit

set_last_default.exit.thread:                     ; preds = %._crit_edge158, %.thread219, %bb.at, %bb.ar
  br i1 %i.bl, label %.preheader124, label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %set_last_default.exit.thread, %.thread118, %bb.p, %bb.q, %bb.au
  %.not99 = phi i1 [ false, %bb.au ], [ %i.bg, %.thread118 ], [ false, %bb.p ], [ false, %bb.q ], [ true, %set_last_default.exit.thread ]
  %i.iv = load ptr, ptr %4, align 16, !tbaa !67   ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !66 ; 2 uses
  %i.iy = icmp eq ptr %i.iv, null
  br i1 %i.iy, label %magic_entry_free.exit, label %.preheader.i106

.preheader.i106:                                  ; preds = %.loopexit
  %.not.i107 = icmp eq i32 %i.ix, 0
  br i1 %.not.i107, label %._crit_edge.i114, label %.lr.ph.preheader.i108

.lr.ph.preheader.i108:                            ; preds = %.preheader.i106
  %wide.trip.count.i109 = zext i32 %i.ix to i64
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %.lr.ph.i110, %.lr.ph.preheader.i108
  %indvars.iv.i111 = phi i64 [ 0, %.lr.ph.preheader.i108 ], [ %indvars.iv.next.i112, %.lr.ph.i110 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv.i111
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !69
  call void @_efree(ptr noundef %i.ja) #28
  %indvars.iv.next.i112 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i113 = icmp eq i64 %indvars.iv.next.i112, %wide.trip.count.i109
  br i1 %exitcond.not.i113, label %._crit_edge.i114, label %.lr.ph.i110, !llvm.loop !109

._crit_edge.i114:                                 ; preds = %.lr.ph.i110, %.preheader.i106
  call void @_efree(ptr noundef nonnull %i.iv) #28
  br label %magic_entry_free.exit

magic_entry_free.exit:                            ; preds = %.loopexit, %._crit_edge.i114
  %i.jb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jc = load ptr, ptr %i.jb, align 16, !tbaa !67 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_0
begin_hunk_1_@mkdbname:bb.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.f
  %i.l = load i8, ptr %i.k, align 1, !tbaa !43
  %.not34.4 = icmp eq i8 %i.l, 46
  br i1 %.not34.4, label %bb.g, label %.preheader.preheader

bb.g:                                             ; preds = %.lr.ph.4
  %i.m = getelementptr inbounds i8, ptr %scevgep, i64 -5
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.lcssa61 = phi ptr [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ], [ %i.k, %bb.f ], [ %i.m, %bb.g ]
  %.lcssa = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ false, %bb.g ]
  br i1 %.lcssa, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.preheader39, %._crit_edge
  %strlen47 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %.030)
  %scevgep48 = getelementptr i8, ptr %.030, i64 %strlen47
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %._crit_edge
  %.3 = phi ptr [ %.lcssa61, %._crit_edge ], [ %scevgep48, %.preheader.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = and i32 %i.p, 1040
  %.not36 = icmp eq i32 %i.q, 0
  %.pre = ptrtoint ptr %i.n to i64
  %.pre49 = ptrtoint ptr %.030 to i64
  %.pre51 = sub i64 %.pre, %.pre49
  %.pre53 = trunc i64 %.pre51 to i32              ; 2 uses
  br i1 %.not36, label %.loopexit._crit_edge, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.r = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull @.str.99, i32 noundef %.pre53, ptr noundef nonnull %.030, ptr noundef nonnull @ext) #28 ; 0 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.t = call i32 @access(ptr noundef %i.s, i32 noundef 4) #28
  %.not37 = icmp eq i32 %i.t, -1
  br i1 %.not37, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !40
  call void @_efree(ptr noundef %i.u) #28
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit, %bb.i
  %i.v = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.a, i64 noundef 4096, ptr noundef nonnull @.str.100, i32 noundef %.pre53, ptr noundef nonnull %.030, ptr noundef nonnull @ext) #28 ; 0 uses
  %i.w = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.030, ptr noundef nonnull dereferenceable(1) @.str.101) #31
  %.not38 = icmp eq ptr %i.w, null
  br i1 %.not38, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %.loopexit._crit_edge, %bb.h
  %i.x = load i32, ptr %i.o, align 4, !tbaa !53
  %i.y = and i32 %i.x, 16
  store i32 %i.y, ptr %i.o, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %.loopexit._crit_edge
  %.029 = load ptr, ptr %i.a, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %.029
}

declare i64 @_php_stream_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i64 @zend_spprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #8

declare i32 @_php_stream_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_php_stream_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden void @file_badread(ptr noundef) local_unnamed_addr #2

declare hidden void @file_magwarn1(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 1, 0) i64 @nonmagic(ptr nofree noundef readonly captures(none) %0) unnamed_addr #23 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.020 = phi ptr [ %0, %bb.a ], [ %i.k, %bb.g ]  ; 12 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.1, %bb.g ]      ; 11 uses
  %i.a = load i8, ptr %.020, align 1, !tbaa !43   ; 3 uses
  switch i8 %i.a, label %bb.f [
    i8 0, label %bb.h
    i8 92, label %bb.c
    i8 63, label %bb.g
    i8 42, label %bb.g
    i8 46, label %bb.g
    i8 43, label %bb.g
    i8 94, label %bb.g
    i8 36, label %bb.g
    i8 91, label %.preheader
    i8 123, label %.preheader33
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.020, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !43
  %.not30 = icmp eq i8 %i.c, 0
  %spec.select = select i1 %.not30, ptr %.020, ptr %i.b
  %i.d = add i64 %.0, 1
  br label %bb.g

.preheader:                                       ; preds = %bb.b, %bb.d
  %i.e = phi i8 [ %.pr, %bb.d ], [ %i.a, %bb.b ]
  %.2 = phi ptr [ %i.f, %bb.d ], [ %.020, %bb.b ] ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 0, label %.critedge
    i8 93, label %.critedge
  ]

bb.d:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.f, align 1, !tbaa !43
  br label %.preheader, !llvm.loop !159

.critedge:                                        ; preds = %.preheader, %.preheader
  %i.g = getelementptr inbounds i8, ptr %.2, i64 -1
  br label %bb.g

.preheader33:                                     ; preds = %bb.b, %bb.e
  %i.h = phi i8 [ %.pr32, %bb.e ], [ %i.a, %bb.b ] ; 2 uses
  %.3 = phi ptr [ %i.i, %bb.e ], [ %.020, %bb.b ] ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 0, label %.critedge2
    i8 125, label %.critedge2
  ]

bb.e:                                             ; preds = %.preheader33
  %i.i = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %.pr32 = load i8, ptr %i.i, align 1, !tbaa !43
  br label %.preheader33, !llvm.loop !160

.critedge2:                                       ; preds = %.preheader33, %.preheader33
  %.not27 = icmp eq i8 %i.h, 0
  %spec.select31.idx = sext i1 %.not27 to i64
  %spec.select31 = getelementptr inbounds i8, ptr %.3, i64 %spec.select31.idx
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.j = add i64 %.0, 1
  br label %bb.g

bb.g:                                             ; preds = %.critedge2, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.f, %.critedge, %bb.c
  %.4 = phi ptr [ %.020, %bb.f ], [ %spec.select, %bb.c ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %.020, %bb.b ], [ %i.g, %.critedge ], [ %spec.select31, %.critedge2 ]
  %.1 = phi i64 [ %i.j, %bb.f ], [ %i.d, %bb.c ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %bb.b ], [ %.0, %.critedge ], [ %.0, %.critedge2 ]
  %i.k = getelementptr inbounds nuw i8, ptr %.4, i64 1
  br label %bb.b, !llvm.loop !161

bb.h:                                             ; preds = %bb.b
  %i.l = tail call i64 @llvm.umax.i64(i64 %.0, i64 1)
  ret i64 %i.l
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(0,1) }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { cold nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS5mlist", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"p1 _ZTS10level_info", !12, i64 0}
!17 = !{!"cont", !15, i64 0, !16, i64 8}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!"out", !18, i64 0, !15, i64 8, !18, i64 16}
!20 = !{!"short", !8, i64 0}
!21 = !{!"", !18, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!22 = !{!"magic_set", !8, i64 0, !17, i64 16, !19, i64 32, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !18, i64 80, !15, i64 88, !9, i64 96, !20, i64 100, !21, i64 104, !8, i64 136, !20, i64 264, !20, i64 266, !20, i64 268, !20, i64 270, !20, i64 272, !20, i64 274, !20, i64 276, !15, i64 280, !15, i64 288, !15, i64 296}
!23 = !{!22, !16, i64 24}
!24 = !{!"p1 _ZTS5magic", !12, i64 0}
!25 = !{!"mlist", !24, i64 0, !15, i64 8, !12, i64 16, !13, i64 24, !13, i64 32}
!26 = !{!25, !13, i64 24}
!27 = !{!25, !12, i64 16}
!28 = !{!"magic_map", !12, i64 0, !15, i64 8, !9, i64 16, !8, i64 24, !8, i64 40}
!29 = !{!28, !12, i64 0}
!30 = !{!24, !24, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!9, !9, i64 0}
!33 = !{!22, !18, i64 80}
!34 = !{!22, !15, i64 88}
!35 = !{!22, !20, i64 100}
!36 = !{!20, !20, i64 0}
!37 = !{!22, !20, i64 276}
!38 = !{!"type_tbl_s", !8, i64 0, !15, i64 16, !9, i64 24, !9, i64 28}
!39 = !{!38, !9, i64 24}
!40 = !{!18, !18, i64 0}
!41 = !{!38, !15, i64 16}
!42 = !{!25, !13, i64 32}
!43 = !{!8, !8, i64 0}
!44 = !{!"timespec", !15, i64 0, !15, i64 8}
!45 = !{!"stat", !15, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !44, i64 72, !44, i64 88, !44, i64 104, !8, i64 120}
!46 = !{!28, !9, i64 16}
!47 = !{!"magic", !20, i64 0, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8, !8, i64 9, !8, i64 10, !8, i64 11, !9, i64 12, !9, i64 16, !9, i64 20, !8, i64 24, !8, i64 32, !8, i64 160, !8, i64 224, !8, i64 304, !8, i64 312}
!48 = !{!47, !20, i64 0}
!49 = !{!47, !9, i64 12}
!50 = !{!47, !9, i64 16}
!51 = !{!47, !9, i64 20}
!52 = !{!47, !8, i64 6}
!53 = !{!22, !9, i64 68}
!54 = !{!25, !24, i64 0}
!55 = !{!25, !15, i64 8}
!56 = !{!47, !8, i64 11}
!57 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!47, !8, i64 5}
!60 = !{!47, !8, i64 4}
!61 = !{!47, !8, i64 3}
!62 = !{!47, !8, i64 2}
!63 = !{!15, !15, i64 0}
!64 = !{!"p1 _ZTS11magic_entry", !12, i64 0}
!65 = !{!"magic_entry_set", !64, i64 0, !9, i64 8, !9, i64 12}
!66 = !{!65, !9, i64 8}
!67 = !{!65, !64, i64 0}
!68 = !{!"magic_entry", !24, i64 0, !9, i64 8, !9, i64 12}
!69 = !{!68, !24, i64 0}
!70 = !{!"p1 short", !12, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!68, !9, i64 8}
!73 = !{!"p1 int", !12, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!22, !18, i64 48}
!76 = !{!22, !18, i64 32}
!77 = distinct !{!77, !31}
!78 = !{!22, !15, i64 16}
!79 = !{!22, !9, i64 72}
!80 = !{!22, !9, i64 64}
!81 = !{!22, !15, i64 296}
!82 = !{!22, !20, i64 272}
!83 = !{!22, !20, i64 274}
!84 = !{!22, !15, i64 280}
!85 = !{!22, !15, i64 288}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !31}
!88 = !{!38, !9, i64 28}
!89 = distinct !{!89, !31}
!90 = !{!"_php_stream_statbuf", !45, i64 0}
!91 = !{!90, !15, i64 48}
!92 = !{!28, !15, i64 8}
!93 = distinct !{!93, !31}
!94 = distinct !{!94, !31}
!95 = distinct !{!95, !31}
!96 = distinct !{!96, !31}
!97 = distinct !{!97, !31}
!98 = distinct !{!98, !31}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = distinct !{!101, !31}
!102 = distinct !{!102, !31}
!103 = distinct !{!103, !31}
!104 = distinct !{!104, !31}
!105 = distinct !{!105, !31, !111, !112}
!106 = distinct !{!106, !31, !112, !111}
!107 = distinct !{!107, !31}
!108 = distinct !{!108, !31}
!109 = distinct !{!109, !31}
!110 = !{!45, !9, i64 24}
!111 = !{!"llvm.loop.isvectorized", i32 1}
!112 = !{!"llvm.loop.unroll.runtime.disable"}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31}
!118 = distinct !{!118, !31}
!119 = distinct !{!119, !31}
!120 = distinct !{!120, !31}
!121 = distinct !{!121, !31}
!122 = distinct !{!122, !31}
!123 = distinct !{!123, !31}
!124 = distinct !{!124, !31}
!125 = distinct !{!125, !31}
!126 = distinct !{!126, !31}
!127 = distinct !{!127, !31}
!128 = distinct !{!128, !31}
!129 = distinct !{!129, !31}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !31}
!132 = distinct !{!132, !31}
!133 = distinct !{!133, !31}
!134 = distinct !{!134, !31}
!135 = distinct !{!135, !31}
!136 = distinct !{!136, !31}
!137 = distinct !{!137, !31}
!138 = !{!"", !18, i64 0, !15, i64 8, !12, i64 16}
!139 = !{!138, !12, i64 16}
!140 = !{!138, !15, i64 8}
!141 = !{!68, !9, i64 12}
!142 = !{!47, !8, i64 7}
!143 = !{!47, !8, i64 8}
!144 = !{!"cond_tbl_s", !8, i64 0, !15, i64 8, !9, i64 16}
!145 = !{!144, !9, i64 16}
!146 = !{!47, !8, i64 10}
end_hunk_1
