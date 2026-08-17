inline.NumInlined: 26
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zend_lookup_class_ex:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.060 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.not69 = icmp eq ptr %1, null                  ; 6 uses
  br i1 %.not69, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !170  ; 2 uses
  %.not70 = icmp eq i64 %i.o, 0
  br i1 %.not70, label %zend_string_release_ex.exit94, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !12
  %i.r = icmp eq i8 %i.q, 92
  br i1 %i.r, label %zend_string_alloc.exit98, label %bb.g

zend_string_alloc.exit98:                         ; preds = %bb.f
  %i.s = add i64 %i.o, -1                         ; 2 uses
  %i.t = and i64 %i.s, -8
  %i.u = add i64 %i.t, 32
  %i.v = tail call noalias ptr @_emalloc(i64 noundef %i.u) #27 ; 6 uses
  store i32 1, ptr %i.v, align 4, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 22, ptr %i.w, align 4, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !168
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.s, ptr %i.y, align 8, !tbaa !170
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !170
  %i.ac = add i64 %i.ab, -1
  %i.ad = tail call ptr @zend_str_tolower_copy(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #23 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call ptr @zend_string_tolower_ex(ptr noundef nonnull %0, i1 noundef zeroext false) #23
  br label %bb.h

bb.h:                                             ; preds = %zend_string_alloc.exit98, %bb.g
  %.062 = phi ptr [ %i.ae, %bb.g ], [ %i.v, %zend_string_alloc.exit98 ] ; 6 uses
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 464), align 8, !tbaa !67
  %i.ag = tail call ptr @zend_hash_find(ptr noundef %i.af, ptr noundef %.062) #23 ; 4 uses
  %.not71 = icmp eq ptr %i.ag, null
  br i1 %.not71, label %bb.t, label %bb.i

.thread:                                          ; preds = %bb.d
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 464), align 8, !tbaa !67
  %i.ai = tail call ptr @zend_hash_find(ptr noundef %i.ah, ptr noundef nonnull %1) #23 ; 2 uses
  %.not71100 = icmp eq ptr %i.ai, null
  br i1 %.not71100, label %bb.t, label %zend_string_release_ex.exit96

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.062, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = and i32 %i.ak, 64
  %.not.i95 = icmp eq i32 %i.al, 0
  br i1 %.not.i95, label %bb.j, label %zend_string_release_ex.exit96

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %.062, align 4, !tbaa !95 ; 2 uses
  %i.an = icmp ne i32 %i.am, 0
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.ao, ptr %.062, align 4, !tbaa !95
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %zend_string_release_ex.exit96

bb.k:                                             ; preds = %bb.j
  tail call void @_efree(ptr noundef nonnull %.062) #23
  br label %zend_string_release_ex.exit96

zend_string_release_ex.exit96:                    ; preds = %.thread, %bb.k, %bb.j, %bb.i
  %i.aq = phi ptr [ %i.ag, %bb.k ], [ %i.ai, %.thread ], [ %i.ag, %bb.i ], [ %i.ag, %bb.j ]
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !12 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !136 ; 3 uses
  %i.au = and i32 %i.at, 8
  %.not77 = icmp eq i32 %i.au, 0
  br i1 %.not77, label %bb.l, label %bb.q, !prof !97

bb.l:                                             ; preds = %zend_string_release_ex.exit96
  %i.av = and i32 %2, 1024
  %.not80 = icmp eq i32 %i.av, 0
  br i1 %.not80, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = and i32 %2, 2048
  %.not81 = icmp eq i32 %i.aw, 0
  %i.ax = and i32 %i.at, 1048576
  %.not82 = icmp eq i32 %i.ax, 0
  %or.cond = or i1 %.not81, %.not82
  br i1 %or.cond, label %zend_string_release_ex.exit94, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 552), align 8, !tbaa !218 ; 2 uses
  %.not83 = icmp eq ptr %i.ay, null
  br i1 %.not83, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = tail call noalias ptr @_emalloc_56() #23 ; 2 uses
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 552), align 8, !tbaa !218
  tail call void @_zend_hash_init(ptr noundef %i.az, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #23
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 552), align 8, !tbaa !218
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ba = phi ptr [ %.pre, %bb.o ], [ %i.ay, %bb.n ]
  %i.bb = ptrtoint ptr %i.ar to i64
  %i.bc = tail call ptr @zend_hash_index_add_empty_element(ptr noundef %i.ba, i64 noundef %i.bb) #23 ; 0 uses
  br label %zend_string_release_ex.exit94

bb.q:                                             ; preds = %zend_string_release_ex.exit96
  %.not78 = icmp eq i32 %.060, 0
  br i1 %.not78, label %zend_string_release_ex.exit94, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 81), align 1, !tbaa !219, !range !88, !noundef !89
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = and i32 %i.at, 128
  %.not79 = icmp eq i32 %i.bf, 0
  %or.cond84 = and i1 %.not79, %i.be
  br i1 %or.cond84, label %zend_string_release_ex.exit94, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !120
  %i.bh = zext i32 %.060 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  store ptr %i.ar, ptr %i.bi, align 8, !tbaa !217
  br label %zend_string_release_ex.exit94

bb.t:                                             ; preds = %.thread, %bb.h
  %.062101 = phi ptr [ %1, %.thread ], [ %.062, %bb.h ] ; 23 uses
  %i.bj = and i32 %2, 128
  %.not72 = icmp eq i32 %i.bj, 0
  br i1 %.not72, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bk = tail call zeroext i1 @zend_is_compiling() #23
  br i1 %i.bk, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not69, label %bb.w, label %zend_string_release_ex.exit94

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.062101, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !12
  %i.bn = and i32 %i.bm, 64
  %.not.i93 = icmp eq i32 %i.bn, 0
  br i1 %.not.i93, label %bb.x, label %zend_string_release_ex.exit94

bb.x:                                             ; preds = %bb.w
  %i.bo = load i32, ptr %.062101, align 4, !tbaa !95 ; 2 uses
  %i.bp = icmp ne i32 %i.bo, 0
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bq, ptr %.062101, align 4, !tbaa !95
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.y, label %zend_string_release_ex.exit94

bb.y:                                             ; preds = %bb.x
  tail call void @_efree(ptr noundef nonnull %.062101) #23
  br label %zend_string_release_ex.exit94

bb.z:                                             ; preds = %bb.u
  %i.bs = load ptr, ptr @zend_autoload, align 8, !tbaa !121
  %.not73 = icmp eq ptr %i.bs, null
  br i1 %.not73, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  br i1 %.not69, label %bb.ab, label %zend_string_release_ex.exit94

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %.062101, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12
  %i.bv = and i32 %i.bu, 64
  %.not.i91 = icmp eq i32 %i.bv, 0
  br i1 %.not.i91, label %bb.ac, label %zend_string_release_ex.exit94

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load i32, ptr %.062101, align 4, !tbaa !95 ; 2 uses
  %i.bx = icmp ne i32 %i.bw, 0
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.by, ptr %.062101, align 4, !tbaa !95
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ad, label %zend_string_release_ex.exit94

bb.ad:                                            ; preds = %bb.ac
  tail call void @_efree(ptr noundef nonnull %.062101) #23
  br label %zend_string_release_ex.exit94

bb.ae:                                            ; preds = %bb.z
  br i1 %.not69, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ca = load i32, ptr %i.a, align 4, !tbaa !12
  %i.cb = and i32 %i.ca, 32
  %.not74 = icmp eq i32 %i.cb, 0
  br i1 %.not74, label %3, label %bb.ak

3:                                                ; preds = %bb.af
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !170      ; 2 uses
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %bb.ak, label %bb.ag

8:                                                ; preds = %bb.ag
  %9 = add nuw i64 %.01112.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %9, %6
  br i1 %exitcond.not.i, label %bb.ak, label %bb.ag, !llvm.loop !215

bb.ag:                                            ; preds = %3, %8
  %.01112.i = phi i64 [ %9, %8 ], [ 0, %3 ]       ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 %.01112.i
  %11 = load i8, ptr %10, align 1, !tbaa !12      ; 2 uses
  %12 = lshr i8 %11, 5
  %13 = zext nneg i8 %12 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr @valid_chars, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !106
  %16 = and i8 %11, 31
  %17 = zext nneg i8 %16 to i32
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %15
  %.not.not.not.i = icmp eq i32 %19, 0
  br i1 %.not.not.not.i, label %bb.ah, label %8

bb.ah:                                            ; preds = %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %.062101, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !12
  %i.ce = and i32 %i.cd, 64
  %.not.i89 = icmp eq i32 %i.ce, 0
  br i1 %.not.i89, label %bb.ai, label %zend_string_release_ex.exit94

bb.ai:                                            ; preds = %bb.ah
  %i.cf = load i32, ptr %.062101, align 4, !tbaa !95 ; 2 uses
  %i.cg = icmp ne i32 %i.cf, 0
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.ch, ptr %.062101, align 4, !tbaa !95
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.aj, label %zend_string_release_ex.exit94

bb.aj:                                            ; preds = %bb.ai
  tail call void @_efree(ptr noundef nonnull %.062101) #23
  br label %zend_string_release_ex.exit94

bb.ak:                                            ; preds = %8, %3, %bb.af, %bb.ae
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 576), align 8, !tbaa !52 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cl = tail call noalias ptr @_emalloc_56() #23 ; 2 uses
  store ptr %i.cl, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 576), align 8, !tbaa !52
  tail call void @_zend_hash_init(ptr noundef %i.cl, i32 noundef 8, ptr noundef null, i1 noundef zeroext false) #23
  %.pre105 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 576), align 8, !tbaa !52
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cm = phi ptr [ %.pre105, %bb.al ], [ %i.cj, %bb.ak ]
  %i.cn = tail call ptr @zend_hash_add_empty_element(ptr noundef %i.cm, ptr noundef %.062101) #23
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  br i1 %.not69, label %bb.ao, label %zend_string_release_ex.exit94

bb.ao:                                            ; preds = %bb.an
  %i.cp = getelementptr inbounds nuw i8, ptr %.062101, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !12
  %i.cr = and i32 %i.cq, 64
  %.not.i87 = icmp eq i32 %i.cr, 0
  br i1 %.not.i87, label %bb.ap, label %zend_string_release_ex.exit94

bb.ap:                                            ; preds = %bb.ao
  %i.cs = load i32, ptr %.062101, align 4, !tbaa !95 ; 2 uses
  %i.ct = icmp ne i32 %i.cs, 0
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.cu, ptr %.062101, align 4, !tbaa !95
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.aq, label %zend_string_release_ex.exit94

bb.aq:                                            ; preds = %bb.ap
  tail call void @_efree(ptr noundef nonnull %.062101) #23
  br label %zend_string_release_ex.exit94

bb.ar:                                            ; preds = %bb.am
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !12
  %i.cy = icmp eq i8 %i.cx, 92
  br i1 %i.cy, label %zend_string_alloc.exit, label %bb.as

zend_string_alloc.exit:                           ; preds = %bb.ar
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !170
  %i.dc = add i64 %i.db, -1                       ; 4 uses
  %i.dd = and i64 %i.dc, -8
  %i.de = add i64 %i.dd, 32
  %i.df = tail call noalias ptr @_emalloc(i64 noundef %i.de) #27 ; 6 uses
  store i32 1, ptr %i.df, align 4, !tbaa !95
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 22, ptr %i.dg, align 4, !tbaa !12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 0, ptr %i.dh, align 8, !tbaa !168
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 %i.dc, ptr %i.di, align 8, !tbaa !170
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull align 1 %i.cz, i64 %i.dc, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dc
  store i8 0, ptr %i.dk, align 1, !tbaa !12
  br label %zend_string_copy.exit

bb.as:                                            ; preds = %bb.ar
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !12
  %i.dm = and i32 %i.dl, 64
  %.not.i97 = icmp eq i32 %i.dm, 0
  br i1 %.not.i97, label %bb.at, label %zend_string_copy.exit

bb.at:                                            ; preds = %bb.as
  %i.dn = load i32, ptr %0, align 8, !tbaa !95
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %0, align 8, !tbaa !95
  br label %zend_string_copy.exit

zend_string_copy.exit:                            ; preds = %bb.at, %bb.as, %zend_string_alloc.exit
  %.061 = phi ptr [ %i.df, %zend_string_alloc.exit ], [ %0, %bb.as ], [ %0, %bb.at ] ; 5 uses
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1808), align 8, !tbaa !175
  %i.dq = load i64, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1816), align 8, !tbaa !70
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1808), align 8, !tbaa !175
  store i64 -1, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1816), align 8, !tbaa !70
  tail call void @zend_exception_save() #23
  %i.dr = load ptr, ptr @zend_autoload, align 8, !tbaa !121
  %i.ds = tail call ptr %i.dr(ptr noundef nonnull %.061, ptr noundef %.062101) #23 ; 4 uses
  tail call void @zend_exception_restore() #23
  store ptr %i.dp, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1808), align 8, !tbaa !175
  store i64 %i.dq, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 1816), align 8, !tbaa !70
  %i.dt = getelementptr inbounds nuw i8, ptr %.061, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !12
  %i.dv = and i32 %i.du, 64
  %.not.i85 = icmp eq i32 %i.dv, 0
  br i1 %.not.i85, label %bb.au, label %zend_string_release_ex.exit86

bb.au:                                            ; preds = %zend_string_copy.exit
  %i.dw = load i32, ptr %.061, align 4, !tbaa !95 ; 2 uses
  %i.dx = icmp ne i32 %i.dw, 0
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = add i32 %i.dw, -1                       ; 2 uses
  store i32 %i.dy, ptr %.061, align 4, !tbaa !95
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.av, label %zend_string_release_ex.exit86

bb.av:                                            ; preds = %bb.au
  tail call void @_efree(ptr noundef nonnull %.061) #23
  br label %zend_string_release_ex.exit86

zend_string_release_ex.exit86:                    ; preds = %zend_string_copy.exit, %bb.au, %bb.av
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 576), align 8, !tbaa !52
  %i.eb = tail call i32 @zend_hash_del(ptr noundef %i.ea, ptr noundef %.062101) #23 ; 0 uses
  br i1 %.not69, label %bb.aw, label %zend_string_release_ex.exit

bb.aw:                                            ; preds = %zend_string_release_ex.exit86
  %i.ec = getelementptr inbounds nuw i8, ptr %.062101, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !12
  %i.ee = and i32 %i.ed, 64
  %.not.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i, label %bb.ax, label %zend_string_release_ex.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ef = load i32, ptr %.062101, align 4, !tbaa !95 ; 2 uses
  %i.eg = icmp ne i32 %i.ef, 0
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eh, ptr %.062101, align 4, !tbaa !95
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ay, label %zend_string_release_ex.exit

bb.ay:                                            ; preds = %bb.ax
  tail call void @_efree(ptr noundef nonnull %.062101) #23
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.ay, %bb.ax, %bb.aw, %zend_string_release_ex.exit86
  %.not75 = icmp eq ptr %i.ds, null
  br i1 %.not75, label %zend_string_release_ex.exit94, label %bb.az

bb.az:                                            ; preds = %zend_string_release_ex.exit
  %.not76 = icmp eq i32 %.060, 0
  br i1 %.not76, label %zend_string_release_ex.exit94, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 512), align 8, !tbaa !120
  %i.ek = zext i32 %.060 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek
  store ptr %i.ds, ptr %i.el, align 8, !tbaa !217
  br label %zend_string_release_ex.exit94

zend_string_release_ex.exit94:                    ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.aj, %bb.ai, %bb.ah, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.w, %zend_string_release_ex.exit, %bb.ba, %bb.az, %bb.an, %bb.aa, %bb.v, %bb.q, %bb.s, %bb.r, %bb.m, %bb.e, %bb.c, %bb.p
  %.0 = phi ptr [ %i.m, %bb.c ], [ %i.ar, %bb.p ], [ null, %bb.e ], [ null, %bb.m ], [ %i.ar, %bb.q ], [ null, %bb.aa ], [ null, %bb.an ], [ null, %bb.ad ], [ null, %bb.v ], [ %i.ar, %bb.r ], [ %i.ar, %bb.s ], [ null, %zend_string_release_ex.exit ], [ null, %bb.y ], [ null, %bb.aj ], [ %i.ds, %bb.az ], [ %i.ds, %bb.ba ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ah ], [ null, %bb.ai ], [ null, %bb.ao ], [ null, %bb.ap ], [ null, %bb.aq ]
  ret ptr %.0
}

declare ptr @zend_str_tolower_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @_emalloc_56() local_unnamed_addr #1

declare ptr @zend_hash_index_add_empty_element(ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @zend_is_compiling() local_unnamed_addr #1

declare ptr @zend_hash_add_empty_element(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @zend_exception_save() local_unnamed_addr #1

declare void @zend_exception_restore() local_unnamed_addr #1

declare i32 @zend_hash_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @zend_lookup_class(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @zend_lookup_class_ex(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @zend_get_called_scope(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not17 = icmp eq ptr %0, null
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.018 = phi ptr [ %i.n, %bb.g ], [ %0, %bb.a ]  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.018, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %.018, i64 40
  %i.c = load i8, ptr %i.b, align 8, !tbaa !12
  %i.d = icmp eq i8 %i.c, 8
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213
  br label %.loopexit

end_hunk_0
