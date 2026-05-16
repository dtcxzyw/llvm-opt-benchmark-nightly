inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@pm_parser_init:bb.a
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  store ptr %1, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.14.0..sroa_idx, i8 0, i64 152, i1 false)
  %.sroa.1480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 5 uses
  store ptr @pm_encodings, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  store ptr null, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !16
  %.sroa.1581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 8 uses
  store ptr %1, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.sroa.1783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.16.0..sroa_idx, i8 0, i64 120, i1 false)
  store i32 1, ptr %.sroa.1783.0..sroa_idx, align 8, !tbaa !7
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 668
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.18.0..sroa_idx, i8 0, i64 28, i1 false)
  %.sroa.1884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i8 1, ptr %.sroa.1884.0..sroa_idx, align 8, !tbaa !17
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 697
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.19.0..sroa_idx, i8 0, i64 7, i1 false)
  %.sroa.1985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  store i8 1, ptr %.sroa.1985.0..sroa_idx, align 8, !tbaa !17
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 705
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.0..sroa_idx, i8 0, i64 7, i1 false)
  %i.d = trunc i64 %2 to i32
  %i.e = udiv i32 %i.d, 95
  %i.f = getelementptr i8, ptr %0, i64 576        ; 2 uses
  %i.g = tail call i32 @llvm.umax.i32(i32 %i.e, i32 4)
  %i.h = tail call zeroext i1 @pm_constant_pool_init(ptr noundef %i.f, i32 noundef %i.g) #27 ; 0 uses
  %i.i = udiv i64 %2, 22
  %i.j = getelementptr i8, ptr %0, i64 600        ; 3 uses
  %i.k = tail call i64 @llvm.umax.i64(i64 %i.i, i64 4)
  %i.l = tail call zeroext i1 @pm_newline_list_init(ptr noundef %i.j, ptr noundef nonnull %1, i64 noundef %i.k) #27 ; 0 uses
  %.not213 = icmp eq ptr %3, null                 ; 5 uses
  br i1 %.not213, label %.loopexit263, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 552
  %i.n = getelementptr i8, ptr %3, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !19
  %i.o = getelementptr i8, ptr %3, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !22
  store i32 %i.p, ptr %.sroa.1783.0..sroa_idx, align 8, !tbaa !26
  %i.q = getelementptr i8, ptr %3, i64 48         ; 2 uses
  %i.r = tail call i64 @pm_string_length(ptr noundef %i.q) #27 ; 2 uses
  %.not214 = icmp eq i64 %i.r, 0
  br i1 %.not214, label %parser_lex_magic_comment_encoding_value.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @pm_string_source(ptr noundef %i.q) #27 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.r
  %i.u = tail call ptr @pm_encoding_find(ptr noundef %i.s, ptr noundef %i.t) #27 ; 4 uses
  %.not.i.not = icmp eq ptr %i.u, null
  br i1 %.not.i.not, label %parser_lex_magic_comment_encoding_value.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !40
  %.not15.i = icmp eq ptr %i.v, %i.u
  br i1 %.not15.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.u, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !40
  %i.w = load ptr, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !41 ; 2 uses
  %.not16.i = icmp eq ptr %i.w, null
  br i1 %.not16.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.w(ptr noundef nonnull %0) #27, !inline_history !42
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.x = icmp ne ptr %i.u, @pm_encodings
  %i.y = getelementptr i8, ptr %0, i64 699
  %i.z = zext i1 %i.x to i8
  store i8 %i.z, ptr %i.y, align 1, !tbaa !43
  br label %parser_lex_magic_comment_encoding_value.exit

parser_lex_magic_comment_encoding_value.exit:     ; preds = %bb.i, %bb.e, %bb.d
  %i.aa = getelementptr i8, ptr %3, i64 94
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !44, !range !45, !noundef !46
  %i.ac = getelementptr i8, ptr %0, i64 698
  store i8 %i.ab, ptr %i.ac, align 2, !tbaa !47
  %i.ad = getelementptr i8, ptr %3, i64 93
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !48
  %i.af = getelementptr i8, ptr %0, i64 693
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !49
  %i.ag = getelementptr i8, ptr %3, i64 92
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !50
  %i.ai = getelementptr i8, ptr %0, i64 692
  store i8 %i.ah, ptr %i.ai, align 4, !tbaa !51
  %i.aj = getelementptr i8, ptr %3, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !52
  %i.al = getelementptr i8, ptr %0, i64 688
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !53
  %i.am = getelementptr i8, ptr %3, i64 96
  %i.an = load i8, ptr %i.am, align 8, !tbaa !54, !range !45, !noundef !46
  %i.ao = getelementptr i8, ptr %0, i64 695
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !55
  %i.ap = getelementptr i8, ptr %3, i64 72        ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56
  %i.ar = icmp ne i64 %i.aq, 0                    ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 694
  %i.at = zext i1 %i.ar to i8
  store i8 %i.at, ptr %i.as, align 2, !tbaa !57
  br i1 %i.ar, label %.lr.ph273, label %.loopexit263

.lr.ph273:                                        ; preds = %parser_lex_magic_comment_encoding_value.exit
  store i8 0, ptr %.sroa.1985.0..sroa_idx, align 8, !tbaa !58
  %i.au = getelementptr i8, ptr %0, i64 496       ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph273, %._crit_edge
  %.0271 = phi i64 [ 0, %.lr.ph273 ], [ %i.bj, %._crit_edge ] ; 3 uses
  %i.av = tail call ptr @pm_options_scope_get(ptr noundef nonnull %3, i64 noundef %.0271) #27 ; 4 uses
  %i.aw = icmp eq i64 %.0271, 0
  %i.ax = zext i1 %i.aw to i8
  %i.ay = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #28 ; 8 uses
  %.not260 = icmp eq ptr %i.ay, null
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !59 ; 4 uses
  br i1 %.not260, label %pm_parser_scope_push.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = icmp eq ptr %.pre, null
  br i1 %i.az, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr i8, ptr %.pre, i64 49
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = phi i8 [ %i.bb, %bb.l ], [ 0, %bb.k ]
  store ptr %.pre, ptr %i.ay, align 8, !tbaa !66
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.sroa.3.0..sroa_idx.i, i8 0, i64 41, i1 false)
  store i8 %i.bc, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !67
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 50
  store i8 %i.ax, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !17
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx.i, i8 0, i64 5, i1 false)
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !59
  br label %pm_parser_scope_push.exit

pm_parser_scope_push.exit:                        ; preds = %bb.j, %bb.m
  %i.bd = phi ptr [ %.pre, %bb.j ], [ %i.ay, %bb.m ]
  %i.be = getelementptr i8, ptr %i.av, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !68
  %i.bg = or i8 %i.bf, 16
  %i.bh = getelementptr i8, ptr %i.bd, i64 48
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !70
  %i.bi = load i64, ptr %i.av, align 8, !tbaa !71
  %.not279 = icmp eq i64 %i.bi, 0
  br i1 %.not279, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %pm_parser_local_add_owned.exit, %pm_parser_scope_push.exit
  %i.bj = add nuw i64 %.0271, 1                   ; 2 uses
  %i.bk = load i64, ptr %i.ap, align 8, !tbaa !56
  %i.bl = icmp ult i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.j, label %.loopexit263, !llvm.loop !72

.lr.ph:                                           ; preds = %pm_parser_scope_push.exit, %pm_parser_local_add_owned.exit
  %.0188270 = phi i64 [ %i.bt, %pm_parser_local_add_owned.exit ], [ 0, %pm_parser_scope_push.exit ] ; 2 uses
  %i.bm = tail call ptr @pm_options_scope_local_get(ptr noundef nonnull %i.av, i64 noundef %.0188270) #27 ; 2 uses
  %i.bn = tail call ptr @pm_string_source(ptr noundef %i.bm) #27
  %i.bo = tail call i64 @pm_string_length(ptr noundef %i.bm) #27 ; 3 uses
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #28 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %pm_parser_local_add_owned.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bp, ptr noundef nonnull align 1 %i.bn, i64 noundef %i.bo, i1 noundef false) #27
  %i.br = tail call i32 @pm_constant_pool_insert_owned(ptr noundef %i.f, ptr noundef nonnull %i.bp, i64 noundef %i.bo) #27 ; 2 uses
  %.not.i226 = icmp eq i32 %i.br, 0
  br i1 %.not.i226, label %pm_parser_local_add_owned.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !74 ; 2 uses
  %.val.i = load ptr, ptr %i.au, align 8, !tbaa !59
  tail call fastcc void @pm_parser_local_add(ptr %.val.i, i32 noundef %i.br, ptr noundef %i.bs, ptr noundef %i.bs, i32 noundef 1)
  br label %pm_parser_local_add_owned.exit

pm_parser_local_add_owned.exit:                   ; preds = %bb.o, %bb.n, %.lr.ph
  %i.bt = add nuw i64 %.0188270, 1                ; 2 uses
  %i.bu = load i64, ptr %i.av, align 8, !tbaa !71
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !75

.loopexit263:                                     ; preds = %._crit_edge, %parser_lex_magic_comment_encoding_value.exit, %bb.c
  %i.bw = getelementptr i8, ptr %0, i64 688       ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !53
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit263
  store i32 4, ptr %i.bw, align 8, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit263
  %i.bz = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = shl i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !7
  %i.cc = icmp ugt i64 %2, 2
  br i1 %i.cc, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cd = load i8, ptr %1, align 1, !tbaa !67
  %i.ce = icmp eq i8 %i.cd, -17
  br i1 %i.ce, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %1, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !67
  %i.ch = icmp eq i8 %i.cg, -69
  br i1 %i.ch, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr i8, ptr %1, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !67
  %i.ck = icmp eq i8 %i.cj, -65
  br i1 %i.ck, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !76
  %i.cm = getelementptr i8, ptr %i.cl, i64 3
  store ptr %i.cm, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !76
  %i.cn = load ptr, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !77
  %i.co = getelementptr i8, ptr %i.cn, i64 3
  store ptr %i.co, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !77
  %i.cp = load ptr, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !40
  %.not215 = icmp eq ptr %i.cp, @pm_encodings
  br i1 %.not215, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr @pm_encodings, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !40
  %i.cq = load ptr, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !41 ; 2 uses
  %.not216 = icmp eq ptr %i.cq, null
  br i1 %.not216, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void %i.cq(ptr noundef nonnull %0) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q
  %i.cr = getelementptr i8, ptr %0, i64 692
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !51
  %i.ct = lshr i8 %i.cs, 5                        ; 6 uses
  %i.cu = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !76 ; 4 uses
  %i.cv = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !78 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  br i1 %i.cz, label %next_newline.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 7348, ptr noundef nonnull @__PRETTY_FUNCTION__.next_newline) #26
  unreachable

next_newline.exit:                                ; preds = %bb.x
  %i.da = tail call ptr @memchr(ptr noundef readonly %i.cu, i32 noundef 10, i64 noundef %i.cy) #29 ; 3 uses
  %.not217 = icmp eq ptr %i.da, null              ; 2 uses
  %spec.select258 = select i1 %.not217, ptr %i.cv, ptr %i.da
  %i.db = ptrtoint ptr %spec.select258 to i64
  %i.dc = sub i64 %i.db, %i.cx                    ; 4 uses
  %i.dd = icmp ugt i64 %i.dc, 2
  br i1 %i.dd, label %bb.z, label %bb.ao

bb.z:                                             ; preds = %next_newline.exit
  %i.de = load i8, ptr %i.cu, align 1, !tbaa !67
  %i.df = icmp eq i8 %i.de, 35
  br i1 %i.df, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr i8, ptr %i.cu, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !67
  %i.di = icmp eq i8 %i.dh, 33
  br i1 %i.di, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !74 ; 5 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.dc  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4     ; 2 uses
  %.not16.i227 = icmp ugt ptr %i.dj, %i.dl
  br i1 %.not16.i227, label %.loopexit262, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ad
  %.01517.i = phi ptr [ %i.ds, %bb.ad ], [ %i.dj, %bb.ab ] ; 5 uses
  %i.dm = load i8, ptr %.01517.i, align 1, !tbaa !67
  %i.dn = icmp eq i8 %i.dm, 114
  br i1 %i.dn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i
  %i.do = load i32, ptr %.01517.i, align 1
  %i.dp = icmp ne i32 %i.do, 2036495730
  %i.dq = zext i1 %i.dp to i32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %pm_strnstr.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i
  %i.ds = getelementptr i8, ptr %.01517.i, i64 1  ; 2 uses
  %.not.i228 = icmp ugt ptr %i.ds, %i.dl
  br i1 %.not.i228, label %.loopexit262, label %.lr.ph.i, !llvm.loop !79

pm_strnstr.exit:                                  ; preds = %bb.ac
  br i1 %.not217, label %pm_parser_warn_shebang_carriage_return.exit, label %bb.ae

bb.ae:                                            ; preds = %pm_strnstr.exit
  %i.dt = getelementptr i8, ptr %i.da, i64 1
  store ptr %i.dt, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !77
  br i1 %.not213, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr i8, ptr %3, i64 95
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !80, !range !45, !noundef !46
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dx = add i64 %i.dc, 1                        ; 2 uses
  %i.dy = icmp ugt i64 %i.dx, 2
  br i1 %i.dy, label %bb.ah, label %pm_parser_warn_shebang_carriage_return.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr i8, ptr %i.dj, i64 %i.dx  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !67
  %i.ec = icmp eq i8 %i.eb, 13
  br i1 %i.ec, label %bb.ai, label %pm_parser_warn_shebang_carriage_return.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ed = load i8, ptr %i.dk, align 1, !tbaa !67
  %i.ee = icmp eq i8 %i.ed, 10
  br i1 %i.ee, label %bb.aj, label %pm_parser_warn_shebang_carriage_return.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ef = getelementptr i8, ptr %0, i64 448
  %i.eg = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ef, ptr noundef nonnull %i.dj, ptr noundef %i.dz, i32 noundef 321) #27 ; 0 uses
  br label %pm_parser_warn_shebang_carriage_return.exit

pm_parser_warn_shebang_carriage_return.exit:      ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %pm_strnstr.exit
  br i1 %.not213, label %.thread, label %pm_parser_warn_shebang_carriage_return.exit.thread

pm_parser_warn_shebang_carriage_return.exit.thread: ; preds = %pm_parser_warn_shebang_carriage_return.exit
  %.phi.trans.insert = getelementptr i8, ptr %3, i64 95
  %.pre291 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !80, !range !45
  %i.eh = trunc nuw i8 %.pre291 to i1
  br i1 %i.eh, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %pm_parser_warn_shebang_carriage_return.exit.thread
  %i.ei = load ptr, ptr %3, align 8, !tbaa !81
  %.not219 = icmp eq ptr %i.ei, null
  br i1 %.not219, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !74
  %i.ek = ptrtoint ptr %.01517.i to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %.neg = sub i64 %i.dc, %i.ek
  %i.em = add i64 %.neg, %i.el
  tail call fastcc void @pm_parser_init_shebang(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.01517.i, i64 noundef %i.em)
  br label %.thread

.loopexit262:                                     ; preds = %bb.ad, %bb.ab
  br i1 %.not213, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.loopexit262
  %i.en = getelementptr i8, ptr %3, i64 95
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !80, !range !45, !noundef !46
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eq = getelementptr i8, ptr %0, i64 694
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !57, !range !45, !noundef !46
  %i.es = trunc nuw i8 %i.er to i1
  %spec.select = select i1 %i.es, i8 %i.ct, i8 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.loopexit262, %bb.aa, %bb.z, %next_newline.exit
  %.1190 = phi i8 [ %i.ct, %next_newline.exit ], [ %i.ct, %bb.aa ], [ %i.ct, %bb.z ], [ %i.ct, %.loopexit262 ], [ %spec.select, %bb.an ], [ %i.ct, %bb.am ]
  %i.et = trunc i8 %.1190 to i1
  br i1 %i.et, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.eu = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !74 ; 3 uses
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = sub i64 %i.cw, %i.ev                    ; 2 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %next_newline.exit229, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 7348, ptr noundef nonnull @__PRETTY_FUNCTION__.next_newline) #26
  unreachable

next_newline.exit229:                             ; preds = %bb.ap
  %i.ey = tail call ptr @memchr(ptr noundef readonly %i.eu, i32 noundef 10, i64 noundef %i.ew) #29 ; 2 uses
  %.not220274 = icmp eq ptr %i.ey, null
  br i1 %.not220274, label %._crit_edge277, label %.lr.ph276

.lr.ph276:                                        ; preds = %next_newline.exit229, %.loopexit
  %.0195275 = phi ptr [ %i.fg, %.loopexit ], [ %i.ey, %next_newline.exit229 ] ; 3 uses
end_hunk_0
begin_hunk_1_@pm_missing_node_create:bb.a
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @parse_expression_prefix(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef range(i32 26, 278) %4, i16 noundef zeroext %5) unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.pm_static_literals_t, align 8 ; 5 uses
  %7 = alloca %struct.pm_static_literals_t, align 8 ; 6 uses
  %8 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %9 = alloca %struct.pm_node_list, align 8       ; 7 uses
  %10 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %11 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %12 = alloca %struct.pm_static_literals_t, align 8 ; 5 uses
  %13 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %14 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %15 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %16 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %17 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %18 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %19 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %20 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %21 = alloca %struct.pm_arguments_t, align 8    ; 11 uses
  %22 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %23 = alloca %struct.pm_token_t, align 8        ; 11 uses
  %24 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %25 = alloca %struct.pm_string_t, align 8       ; 2 uses
  %26 = alloca %struct.pm_string_t, align 8       ; 2 uses
  %27 = alloca %struct.pm_node_list, align 8      ; 7 uses
  %28 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %29 = alloca %struct.pm_token_t, align 8        ; 12 uses
  %30 = alloca %struct.pm_node_list, align 8      ; 6 uses
  %31 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %32 = alloca %struct.pm_static_literals_t, align 8 ; 5 uses
  %33 = alloca %struct.pm_constant_id_list_t, align 8 ; 5 uses
  %34 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %35 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %36 = alloca %struct.pm_node_list, align 8      ; 5 uses
  %37 = alloca %struct.pm_node_list, align 8      ; 5 uses
  %38 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %39 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %40 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %41 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %42 = alloca %struct.pm_arguments_t, align 8    ; 8 uses
  %43 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %44 = alloca %struct.pm_arguments_t, align 8    ; 8 uses
  %45 = alloca %struct.pm_token_t, align 8        ; 21 uses
  %46 = alloca %struct.pm_node_list, align 8      ; 6 uses
  %47 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %48 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %49 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %50 = alloca %struct.pm_node_list, align 8      ; 5 uses
  %51 = alloca %struct.pm_token_t, align 8        ; 11 uses
  %52 = alloca %struct.pm_token_t, align 8        ; 10 uses
  %53 = alloca %struct.pm_token_t, align 8        ; 18 uses
  %54 = alloca %struct.pm_token_t, align 8        ; 19 uses
  %55 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %56 = alloca %struct.pm_token_t, align 8        ; 13 uses
  %57 = alloca %struct.pm_token_t, align 8        ; 12 uses
  %58 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %59 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %60 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %61 = alloca %struct.pm_token_t, align 8        ; 12 uses
  %62 = alloca %struct.pm_token_t, align 8        ; 16 uses
  %63 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %64 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %65 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %66 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %67 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %68 = alloca %struct.pm_arguments_t, align 8    ; 7 uses
  %69 = alloca %struct.pm_node_list, align 8      ; 6 uses
  %70 = alloca %struct.pm_token_t, align 8        ; 15 uses
  %71 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %72 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %73 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %74 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %75 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %76 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %77 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %78 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %79 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %80 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %81 = alloca %struct.pm_token_t, align 8        ; 10 uses
  %82 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %83 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %84 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %85 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %86 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %87 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %88 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %89 = alloca %struct.pm_token_t, align 8        ; 10 uses
  %90 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %91 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %92 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %93 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %94 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %95 = alloca %struct.pm_string_t, align 8       ; 7 uses
  %96 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %97 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %98 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %99 = alloca %struct.pm_token_t, align 8        ; 10 uses
  %100 = alloca %struct.pm_token_t, align 8       ; 12 uses
  %101 = alloca %struct.pm_string_t, align 8      ; 6 uses
  %102 = alloca %struct.pm_token_t, align 8       ; 5 uses
  %103 = alloca %struct.pm_token_t, align 8       ; 7 uses
  %104 = alloca %struct.pm_token_t, align 8       ; 7 uses
  %105 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %106 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %107 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %108 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %109 = alloca %struct.pm_token_t, align 8       ; 5 uses
  %110 = alloca %struct.pm_token_t, align 8       ; 5 uses
  %111 = alloca %struct.pm_token_t, align 8       ; 11 uses
  %112 = alloca %struct.pm_token_t, align 8       ; 5 uses
  %113 = alloca %struct.pm_token_t, align 8       ; 7 uses
  %114 = alloca %struct.pm_token_t, align 8       ; 9 uses
  %115 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %116 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 344        ; 164 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170  ; 6 uses
  switch i32 %i.c, label %bb.zx [
    i32 30, label %bb.b
    i32 124, label %bb.aq
    i32 125, label %bb.aq
    i32 28, label %bb.ch
    i32 36, label %bb.cn
    i32 37, label %bb.ct
    i32 41, label %bb.cw
    i32 153, label %bb.dg
    i32 154, label %bb.dk
    i32 155, label %bb.dk
    i32 55, label %bb.dn
    i32 56, label %bb.do
    i32 57, label %bb.dp
    i32 58, label %bb.dq
    i32 123, label %bb.dr
    i32 59, label %bb.du
    i32 24, label %bb.dx
    i32 66, label %bb.ea
    i32 119, label %bb.ea
    i32 65, label %bb.ff
    i32 68, label %bb.gk
    i32 69, label %bb.gn
    i32 70, label %bb.go
    i32 71, label %bb.gp
    i32 72, label %bb.gq
    i32 108, label %bb.gr
    i32 109, label %bb.gs
    i32 110, label %bb.gt
    i32 73, label %bb.gu
    i32 78, label %bb.he
    i32 75, label %bb.iz
    i32 76, label %bb.jd
    i32 77, label %bb.ji
    i32 89, label %bb.ji
    i32 96, label %bb.ji
    i32 98, label %bb.ju
    i32 107, label %bb.ka
    i32 79, label %bb.kg
    i32 80, label %bb.lh
    i32 81, label %bb.nr
    i32 83, label %bb.ob
    i32 84, label %bb.og
    i32 85, label %bb.oh
    i32 86, label %bb.ow
    i32 100, label %bb.oz
    i32 91, label %bb.ph
    i32 101, label %bb.pu
    i32 88, label %bb.pv
    i32 90, label %bb.ql
    i32 93, label %bb.qm
    i32 95, label %bb.qo
    i32 97, label %bb.qp
    i32 99, label %bb.qq
    i32 103, label %bb.qr
    i32 105, label %bb.qx
    i32 128, label %bb.rd
    i32 131, label %bb.sc
    i32 129, label %bb.uh
    i32 132, label %bb.uz
    i32 139, label %bb.wo
    i32 23, label %bb.xi
    i32 130, label %bb.xi
    i32 159, label %bb.yc
    i32 25, label %bb.yk
    i32 151, label %bb.yn
    i32 156, label %bb.yq
    i32 157, label %bb.yt
    i32 122, label %bb.yy
    i32 158, label %bb.zs
    i32 147, label %bb.zv
    i32 150, label %bb.zw
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.d = getelementptr i8, ptr %0, i64 320        ; 6 uses
  %i.e = tail call fastcc ptr @pm_array_node_create(ptr noundef nonnull %0, ptr noundef %i.d) ; 7 uses
  %i.f = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = shl i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !7
  %i.i = getelementptr i8, ptr %i.e, i64 24       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 336        ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 472        ; 8 uses
  %i.l = getelementptr i8, ptr %0, i64 328        ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 496
  %i.n = add i16 %5, 1                            ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 304
  %.sroa.43241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.53242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.63243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.r = getelementptr i8, ptr %i.e, i64 48
  %i.s = getelementptr i8, ptr %i.e, i64 8
  %i.t = getelementptr i8, ptr %i.e, i64 16
  %i.u = getelementptr i8, ptr %i.e, i64 2        ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %bb.b
  %.01873 = phi i8 [ 0, %bb.b ], [ %.11874, %.backedge ] ; 4 uses
  %.val2157 = load i32, ptr %i.b, align 8, !tbaa !170 ; 5 uses
  switch i32 %.val2157, label %bb.d [
    i32 33, label %.loopexit
    i32 1, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %.val2157, 14                ; 2 uses
  br i1 %i.v, label %bb.e, label %accept1.exit

bb.e:                                             ; preds = %bb.d
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2134 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.w = icmp eq i32 %.val2134, 33
  br i1 %i.w, label %accept1.exit2351.thread, label %accept1.exit

accept1.exit:                                     ; preds = %bb.d, %bb.e
  %i.x = phi i32 [ %.val2157, %bb.d ], [ %.val2134, %bb.e ] ; 2 uses
  %i.y = load i64, ptr %i.i, align 8, !tbaa !294
  %.not2035 = icmp eq i64 %i.y, 0
  br i1 %.not2035, label %bb.i, label %bb.f

bb.f:                                             ; preds = %accept1.exit
  %i.z = icmp eq i32 %i.x, 3
  br i1 %i.z, label %bb.g, label %accept1.exit2336

bb.g:                                             ; preds = %bb.f
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !256
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !255
  %i.ac = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %i.aa, ptr noundef %i.ab, i32 noundef 147) #27 ; 0 uses
  br label %bb.i

accept1.exit2336:                                 ; preds = %bb.f
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !255 ; 3 uses
  %i.ae = call ptr @pm_token_type_human(i32 noundef %i.x) #27
  %i.af = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.k, ptr noundef %i.ad, ptr noundef %i.ad, i32 noundef 29, ptr noundef %i.ae) #27 ; 0 uses
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !256
  store i32 163, ptr %i.d, align 8, !tbaa !200
  br label %bb.i

bb.i:                                             ; preds = %accept1.exit2336, %bb.h, %bb.g, %accept1.exit
  %.val2133 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2133, label %bb.w [
    i32 33, label %accept1.exit2351.thread
    i32 159, label %bb.j
    i32 160, label %bb.q
    i32 111, label %bb.q
  ]

bb.j:                                             ; preds = %bb.i
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.33245.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !14 ; 3 uses
  %.sroa.53246.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !14 ; 3 uses
  %.val2166 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2166, label %bb.n [
    i32 33, label %.outer.i.i.preheader
    i32 3, label %.outer.i.i.preheader
    i32 1, label %.outer.i.i.preheader
  ]

.outer.i.i.preheader:                             ; preds = %bb.j, %bb.j, %bb.j
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.outer.i.i.preheader, %bb.m
  %.08.in.ph.i.i = phi ptr [ %.08.i.i, %bb.m ], [ %i.m, %.outer.i.i.preheader ]
  %cond.i = phi i1 [ true, %bb.m ], [ false, %.outer.i.i.preheader ]
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i, %.outer.i.i
  %.08.in.i.i = phi ptr [ %.08.i.i, %._crit_edge.i.i ], [ %.08.in.ph.i.i, %.outer.i.i ]
  %.08.i.i = load ptr, ptr %.08.in.i.i, align 8, !tbaa !66 ; 5 uses
  %.not.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not.i.i, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %.08.i.i, i64 48
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !70
  %i.ai = and i8 %i.ah, 1
  %.not10.i.i = icmp eq i8 %i.ai, 0
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.08.i.i, i64 50
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 2, !tbaa !188, !range !45
  %i.aj = trunc nuw i8 %.pre.i.i to i1            ; 2 uses
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %bb.m

._crit_edge.i.i:                                  ; preds = %bb.l
  br i1 %i.aj, label %.sink.split.i, label %bb.k, !llvm.loop !296

bb.m:                                             ; preds = %bb.l
  br i1 %i.aj, label %pm_parser_scope_forwarding_param_check.exit.i, label %.outer.i.i, !llvm.loop !296

pm_parser_scope_forwarding_param_check.exit.i:    ; preds = %bb.m
  br i1 %cond.i, label %.sink.split.i, label %pm_parser_scope_forwarding_positionals_check.exit

.sink.split.i:                                    ; preds = %._crit_edge.i.i, %bb.k, %pm_parser_scope_forwarding_param_check.exit.i
  %.sink8.i = phi i32 [ 9, %pm_parser_scope_forwarding_param_check.exit.i ], [ 20, %bb.k ], [ 20, %._crit_edge.i.i ]
  %i.ak = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %.sroa.33245.0.copyload, ptr noundef %.sroa.53246.0.copyload, i32 noundef %.sink8.i) #27 ; 0 uses
  br label %pm_parser_scope_forwarding_positionals_check.exit

bb.n:                                             ; preds = %bb.j
  %i.al = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 28, i16 noundef zeroext %i.n), !inline_history !297 ; 3 uses
  %i.am = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.al) ; 3 uses
  %.not.i2979 = icmp eq ptr %i.am, null
  br i1 %.not.i2979, label %pm_parser_scope_forwarding_positionals_check.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val.i2980 = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val5.i = load ptr, ptr %i.ao, align 8, !tbaa !134
  %i.ap = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %.val.i2980, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_parser_scope_forwarding_positionals_check.exit

pm_parser_scope_forwarding_positionals_check.exit: ; preds = %bb.o, %bb.n, %.sink.split.i, %pm_parser_scope_forwarding_param_check.exit.i
  %.01890 = phi ptr [ null, %.sink.split.i ], [ null, %pm_parser_scope_forwarding_param_check.exit.i ], [ %i.al, %bb.n ], [ %i.al, %bb.o ] ; 3 uses
  %i.aq = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.p, label %pm_splat_node_create.exit

bb.p:                                             ; preds = %pm_parser_scope_forwarding_positionals_check.exit
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.at = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.as, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_splat_node_create.exit:                        ; preds = %pm_parser_scope_forwarding_positionals_check.exit
  %i.au = icmp eq ptr %.01890, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.au, label %pm_splat_node_create.exit.cont, label %pm_splat_node_create.exit.else

pm_splat_node_create.exit.else:                   ; preds = %pm_splat_node_create.exit
  %.01890.sroa.gep = getelementptr i8, ptr %.01890, i64 16
  %.sroa.9.0.i.else.val = load ptr, ptr %.01890.sroa.gep, align 8, !tbaa !14
  br label %pm_splat_node_create.exit.cont

pm_splat_node_create.exit.cont:                   ; preds = %pm_splat_node_create.exit, %pm_splat_node_create.exit.else
  %.sroa.9.0.i = phi ptr [ %.sroa.53246.0.copyload, %pm_splat_node_create.exit ], [ %.sroa.9.0.i.else.val, %pm_splat_node_create.exit.else ]
  store i16 139, ptr %i.aq, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.33245.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %.sroa.33245.0.copyload, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %.sroa.53246.0.copyload, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %.01890, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !105
  br label %accept1.exit2344

bb.q:                                             ; preds = %bb.i, %bb.i
  %i.av = trunc nuw i8 %.01873 to i1
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.ay = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %i.aw, ptr noundef %i.ax, i32 noundef 116) #27 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.az = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 6 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.t, label %pm_keyword_hash_node_create.exit

bb.t:                                             ; preds = %bb.s
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_keyword_hash_node_create.exit:                 ; preds = %bb.s
  %i.bd = load i32, ptr %0, align 8, !tbaa !109
end_hunk_1
begin_hunk_2_@parse_expression_prefix:bb.a
  call void @pm_static_literals_free(ptr noundef nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %accept1.exit2344

bb.w:                                             ; preds = %bb.i
  %i.bg = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 27, i16 noundef zeroext %i.n), !inline_history !297 ; 6 uses
  %i.bh = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.bg) ; 3 uses
  %.not.i2981 = icmp eq ptr %i.bh, null
  br i1 %.not.i2981, label %pm_assert_value_expression.exit2984, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %.val.i2982 = load ptr, ptr %i.bi, align 8, !tbaa !133
  %i.bj = getelementptr i8, ptr %i.bh, i64 16
  %.val5.i2983 = load ptr, ptr %i.bj, align 8, !tbaa !134
  %i.bk = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %.val.i2982, ptr noundef %.val5.i2983, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit2984

pm_assert_value_expression.exit2984:              ; preds = %bb.w, %bb.x
  %i.bl = load i16, ptr %i.bg, align 8, !tbaa !115
  switch i16 %i.bl, label %pm_symbol_node_label_p.exit.thread [
    i16 143, label %bb.z
    i16 86, label %bb.y
  ]

bb.y:                                             ; preds = %pm_assert_value_expression.exit2984
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %pm_assert_value_expression.exit2984
  %.sink.i = phi i64 [ 72, %bb.y ], [ 64, %pm_assert_value_expression.exit2984 ]
  %i.bm = getelementptr i8, ptr %i.bg, i64 %.sink.i
  %.0.i = load ptr, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %pm_symbol_node_label_p.exit.thread, label %pm_symbol_node_label_p.exit

pm_symbol_node_label_p.exit:                      ; preds = %bb.z
  %i.bn = getelementptr i8, ptr %.0.i, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !67
  %i.bp = icmp eq i8 %i.bo, 58
  br i1 %i.bp, label %bb.aa, label %pm_symbol_node_label_p.exit.thread

pm_symbol_node_label_p.exit.thread:               ; preds = %bb.z, %pm_assert_value_expression.exit2984, %pm_symbol_node_label_p.exit
  %.val.i2343 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.bq = icmp eq i32 %.val.i2343, 53
  br i1 %i.bq, label %accept1.exit2344.thread, label %accept1.exit2344

accept1.exit2344.thread:                          ; preds = %pm_symbol_node_label_p.exit.thread
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.aa

bb.aa:                                            ; preds = %accept1.exit2344.thread, %pm_symbol_node_label_p.exit
  %i.br = trunc nuw i8 %.01873 to i1
  br i1 %i.br, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !256
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !255
  %i.bu = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %i.bs, ptr noundef %i.bt, i32 noundef 116) #27 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bv = call fastcc ptr @pm_keyword_hash_node_create(ptr noundef nonnull %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 128, i1 false)
  call fastcc void @pm_hash_key_static_literals_add(ptr noundef nonnull %0, ptr noundef %7, ptr noundef nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.bw = load i32, ptr %i.d, align 8, !tbaa !200
  %i.bx = icmp eq i32 %i.bw, 53
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !163
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %.val2235 = load ptr, ptr %i.q, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %8, align 8, !tbaa !7
  store i32 0, ptr %.sroa.43241.0..sroa_idx, align 4
  store ptr %.val2235, ptr %.sroa.53242.0..sroa_idx, align 8, !tbaa !14
  store ptr %.val2235, ptr %.sroa.63243.0..sroa_idx, align 8, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.by = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 136, i16 noundef zeroext %i.n), !inline_history !297 ; 2 uses
  call fastcc void @pm_assert_value_expression(ptr noundef nonnull %0, ptr noundef %i.by), !inline_history !297
  %i.bz = call fastcc ptr @pm_assoc_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, ptr noundef %8, ptr noundef %i.by)
  call fastcc void @pm_keyword_hash_node_elements_append(ptr noundef %i.bv, ptr noundef %i.bz)
  %.val.i2345 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ca = icmp eq i32 %.val.i2345, 3
  br i1 %i.ca, label %bb.ag, label %accept1.exit2346

bb.ag:                                            ; preds = %bb.af
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2132 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.cb = icmp eq i32 %.val2132, 33
  br i1 %i.cb, label %accept1.exit2346, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %i.bv, i16 noundef zeroext %i.n) ; 0 uses
  br label %accept1.exit2346

accept1.exit2346:                                 ; preds = %bb.af, %bb.ah, %bb.ag
  call void @pm_static_literals_free(ptr noundef nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %accept1.exit2344

accept1.exit2344:                                 ; preds = %pm_symbol_node_label_p.exit.thread, %bb.v, %accept1.exit2346, %pm_splat_node_create.exit.cont
  %.01883 = phi ptr [ %i.aq, %pm_splat_node_create.exit.cont ], [ %i.az, %bb.v ], [ %i.bv, %accept1.exit2346 ], [ %i.bg, %pm_symbol_node_label_p.exit.thread ] ; 5 uses
  %.11874 = phi i8 [ %.01873, %pm_splat_node_create.exit.cont ], [ 1, %bb.v ], [ 1, %accept1.exit2346 ], [ %.01873, %pm_symbol_node_label_p.exit.thread ]
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !294
  %.not.i2347 = icmp eq i64 %i.cd, 0
  br i1 %.not.i2347, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %accept1.exit2344
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !298
  %.not15.i = icmp eq ptr %i.ce, null
  br i1 %.not15.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr i8, ptr %.01883, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !133
  store ptr %i.cg, ptr %i.s, align 8, !tbaa !299
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %accept1.exit2344
  call void @pm_node_list_append(ptr noundef nonnull %i.i, ptr noundef nonnull %.01883) #27
  %i.ch = getelementptr i8, ptr %.01883, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !134
  store ptr %i.ci, ptr %i.t, align 8, !tbaa !300
  %i.cj = load i16, ptr %.01883, align 8, !tbaa !115 ; 2 uses
  switch i16 %i.cj, label %bb.al [
    i16 6, label %bb.am
    i16 65, label %bb.am
    i16 122, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ck = getelementptr i8, ptr %.01883, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !116
  %i.cm = and i16 %i.cl, 2
  %.not16.i = icmp eq i16 %i.cm, 0
  br i1 %.not16.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ak, %bb.ak
  %i.cn = load i16, ptr %i.u, align 2, !tbaa !116
  %i.co = and i16 %i.cn, -3
  store i16 %i.co, ptr %i.u, align 2, !tbaa !116
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  switch i16 %i.cj, label %.backedge [
    i16 139, label %pm_array_node_elements_append.exit.thread
    i16 103, label %..thread_crit_edge
  ]

.backedge:                                        ; preds = %bb.an, %pm_array_node_elements_append.exit.thread
  br label %bb.c

..thread_crit_edge:                               ; preds = %bb.an
  %.val.i2348.pr.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %.loopexit

pm_array_node_elements_append.exit.thread:        ; preds = %bb.an
  %i.cp = load i16, ptr %i.u, align 2, !tbaa !116
  %i.cq = or i16 %i.cp, 4
  store i16 %i.cq, ptr %i.u, align 2, !tbaa !116
  br label %.backedge

.loopexit:                                        ; preds = %bb.c, %bb.c, %..thread_crit_edge
  %.val.i2348 = phi i32 [ %.val.i2348.pr.pre, %..thread_crit_edge ], [ %.val2157, %bb.c ], [ %.val2157, %bb.c ] ; 2 uses
  %i.cr = icmp eq i32 %.val.i2348, 14
  br i1 %i.cr, label %bb.ao, label %accept1.exit2349

bb.ao:                                            ; preds = %.loopexit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2350.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit2349

accept1.exit2349:                                 ; preds = %.loopexit, %bb.ao
  %i.cs = phi i32 [ %.val.i2348, %.loopexit ], [ %.val.i2350.pre, %bb.ao ] ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 33
  br i1 %i.ct, label %accept1.exit2351.thread, label %accept1.exit2351

accept1.exit2351.thread:                          ; preds = %bb.e, %bb.i, %accept1.exit2349
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.ap

accept1.exit2351:                                 ; preds = %accept1.exit2349
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.cw = call ptr @pm_token_type_human(i32 noundef %i.cs) #27
  %i.cx = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.k, ptr noundef %i.cu, ptr noundef %i.cv, i32 noundef 30, ptr noundef %i.cw) #27 ; 0 uses
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !255
  store ptr %i.cy, ptr %i.l, align 8, !tbaa !256
  store i32 163, ptr %i.d, align 8, !tbaa !200
  br label %bb.ap

bb.ap:                                            ; preds = %accept1.exit2351.thread, %accept1.exit2351
  call fastcc void @pm_array_node_close_set(ptr noundef %i.e, ptr noundef %i.d)
  %i.cz = load i32, ptr %i.f, align 4, !tbaa !7
  %i.da = lshr i32 %i.cz, 1
  store i32 %i.da, ptr %i.f, align 4, !tbaa !7
  br label %.loopexit3341

bb.aq:                                            ; preds = %bb.a, %bb.a
  %.sroa.43238.0..sroa_idx = getelementptr i8, ptr %0, i64 352 ; 3 uses
  %.sroa.43238.0.copyload = load ptr, ptr %.sroa.43238.0..sroa_idx, align 8, !tbaa !14 ; 5 uses
  %.sroa.83239.0..sroa_idx = getelementptr i8, ptr %0, i64 360 ; 3 uses
  %.sroa.83239.0.copyload = load ptr, ptr %.sroa.83239.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.db = getelementptr i8, ptr %0, i64 680       ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !100 ; 3 uses
  store ptr %9, ptr %i.db, align 8, !tbaa !100
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %.outer

.outer:                                           ; preds = %bb.as, %bb.aq
  %.01891.ph = phi i16 [ 4, %bb.as ], [ 0, %bb.aq ] ; 3 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.outer, %accept1.exit2355.thread
  %.val.i2352 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val.i2352, label %bb.au [
    i32 17, label %bb.as
    i32 14, label %accept1.exit2355.thread
    i32 15, label %bb.at
    i32 1, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %.outer

accept1.exit2355.thread:                          ; preds = %bb.ar
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar, %bb.ar
  call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 110)
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.dc)
  call void @pm_node_list_free(ptr noundef nonnull %9) #27
  %i.dd = getelementptr i8, ptr %0, i64 320
  %i.de = call fastcc ptr @pm_parentheses_node_create(ptr noundef nonnull %0, ptr %.sroa.43238.0.copyload, ptr %.sroa.83239.0.copyload, ptr noundef null, ptr noundef %i.dd, i16 noundef zeroext %.01891.ph)
  br label %context_p.exit

bb.au:                                            ; preds = %bb.ar
  %i.df = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = shl i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !7
  %i.di = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not3337 = icmp eq ptr %i.di, null
  br i1 %.not3337, label %context_push.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 42, ptr %i.di, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i2357 = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i2357, align 4
  %.sroa.3.0..sroa_idx.i2358 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dj = getelementptr i8, ptr %0, i64 504       ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !253
  store ptr %i.dk, ptr %.sroa.3.0..sroa_idx.i2358, align 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.au, %bb.av
  %i.dl = add i16 %5, 1                           ; 3 uses
  %i.dm = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 40, i16 noundef zeroext %i.dl) ; 6 uses
  %i.dn = getelementptr i8, ptr %0, i64 504       ; 7 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !253 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !257
  call void @free(ptr noundef %i.do) #27
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !253
  %.val.i2359 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2359, label %accept1.exit2366 [
    i32 17, label %bb.aw
    i32 14, label %bb.ax
  ]

bb.aw:                                            ; preds = %context_push.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2362.preheader

bb.ax:                                            ; preds = %context_push.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2362.preheader

accept1.exit2362.preheader:                       ; preds = %bb.ax, %bb.aw
  %.31894.ph = phi i16 [ 4, %bb.aw ], [ %.01891.ph, %bb.ax ]
  br label %accept1.exit2362.outer

accept1.exit2362.outer:                           ; preds = %accept1.exit2362.preheader, %bb.ay
  %.31894.ph3735 = phi i16 [ %.31894.ph, %accept1.exit2362.preheader ], [ 4, %bb.ay ]
  br label %accept1.exit2362

accept1.exit2362:                                 ; preds = %accept1.exit2362.outer, %accept1.exit2366.thread
  %.val.i2363 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2363, label %accept1.exit2366 [
    i32 17, label %bb.ay
    i32 14, label %accept1.exit2366.thread
  ]

bb.ay:                                            ; preds = %accept1.exit2362
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2362.outer

accept1.exit2366.thread:                          ; preds = %accept1.exit2362
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2362

accept1.exit2366:                                 ; preds = %accept1.exit2362, %context_push.exit
  %.val2131 = phi i32 [ %.val.i2359, %context_push.exit ], [ %.val.i2363, %accept1.exit2362 ]
  %.018973252 = phi i1 [ false, %context_push.exit ], [ true, %accept1.exit2362 ]
  %.51896 = phi i16 [ %.01891.ph, %context_push.exit ], [ %.31894.ph3735, %accept1.exit2362 ] ; 2 uses
  %i.dr = icmp eq i32 %.val2131, 15
  br i1 %i.dr, label %bb.az, label %bb.bn

bb.az:                                            ; preds = %accept1.exit2366
  %i.ds = icmp eq i32 %i.c, 125
  br i1 %i.ds, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dt = getelementptr i8, ptr %0, i64 4
  store i32 4, ptr %i.dt, align 4, !tbaa !195
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.du = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dv = lshr i32 %i.du, 1
  store i32 %i.dv, ptr %i.df, align 4, !tbaa !7
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.dc)
  call void @pm_node_list_free(ptr noundef nonnull %9) #27
  %i.dw = load i16, ptr %i.dm, align 8, !tbaa !115
  switch i16 %i.dw, label %bb.bm [
    i16 105, label %bb.bc
    i16 139, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.dx = getelementptr i8, ptr %i.dm, i64 80
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !301
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.ea = call fastcc ptr @pm_multi_target_node_create(ptr noundef nonnull %0) ; 2 uses
  call fastcc void @pm_multi_target_node_targets_append(ptr noundef nonnull %0, ptr noundef %i.ea, ptr noundef nonnull %i.dm)
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %.01899 = phi ptr [ %i.ea, %bb.bd ], [ %i.dm, %bb.bc ] ; 7 uses
  %i.eb = getelementptr i8, ptr %0, i64 328
  %i.ec = getelementptr i8, ptr %0, i64 336
  %i.ed = getelementptr i8, ptr %.01899, i64 80
  %.sroa.5518.0..sroa_idx = getelementptr i8, ptr %.01899, i64 88
  %i.ee = getelementptr i8, ptr %.01899, i64 96
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !255
  %i.eg = load <2 x ptr>, ptr %i.eb, align 8, !tbaa !14
  store ptr %.sroa.43238.0.copyload, ptr %i.ed, align 8, !tbaa !14
  store ptr %.sroa.83239.0.copyload, ptr %.sroa.5518.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.eg, ptr %i.ee, align 8, !tbaa !14
  %i.eh = getelementptr i8, ptr %.01899, i64 8
  store ptr %.sroa.43238.0.copyload, ptr %i.eh, align 8, !tbaa !303
  %i.ei = getelementptr i8, ptr %.01899, i64 16
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !304
  %.val2130 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ej = icmp eq i32 %.val2130, 3
  %i.ek = icmp eq i32 %1, 2                       ; 2 uses
  %or.cond = and i1 %i.ek, %i.ej
  br i1 %or.cond, label %bb.bf, label %accept1.exit2368

bb.bf:                                            ; preds = %bb.be
  %i.el = call fastcc ptr @parse_targets(ptr noundef nonnull %0, ptr noundef nonnull %.01899, i16 noundef zeroext %i.dl) ; 2 uses
  %.val.i2367 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.em = icmp eq i32 %.val.i2367, 14
  br i1 %i.em, label %bb.bg, label %accept1.exit2368

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2368

accept1.exit2368:                                 ; preds = %bb.bg, %bb.bf, %bb.be
  %.01900 = phi ptr [ %.01899, %bb.be ], [ %i.el, %bb.bf ], [ %i.el, %bb.bg ] ; 10 uses
  %.06.i2369 = load ptr, ptr %i.dn, align 8, !tbaa !213 ; 3 uses
  %.not7.not.i = icmp eq ptr %.06.i2369, null
  br i1 %.not7.not.i, label %context_p.exit2378.thread, label %.lr.ph.i

bb.bh:                                            ; preds = %.lr.ph.i
  %i.en = getelementptr i8, ptr %.08.i, i64 8
  %.0.i2370 = load ptr, ptr %i.en, align 8, !tbaa !213 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i2370, null
  br i1 %.not.not.i, label %.lr.ph.i2373, label %.lr.ph.i, !llvm.loop !214

.lr.ph.i:                                         ; preds = %accept1.exit2368, %bb.bh
  %.08.i = phi ptr [ %.0.i2370, %bb.bh ], [ %.06.i2369, %accept1.exit2368 ] ; 2 uses
  %i.eo = load i32, ptr %.08.i, align 8, !tbaa !215
  %i.ep = icmp eq i32 %i.eo, 41
  br i1 %i.ep, label %context_p.exit, label %bb.bh

bb.bi:                                            ; preds = %.lr.ph.i2373
  %i.eq = getelementptr i8, ptr %.08.i2374, i64 8
  %.0.i2375 = load ptr, ptr %i.eq, align 8, !tbaa !213 ; 2 uses
  %.not.not.i2376 = icmp eq ptr %.0.i2375, null
  br i1 %.not.not.i2376, label %context_p.exit2378.thread, label %.lr.ph.i2373, !llvm.loop !214

.lr.ph.i2373:                                     ; preds = %bb.bh, %bb.bi
  %.08.i2374 = phi ptr [ %.0.i2375, %bb.bi ], [ %.06.i2369, %bb.bh ] ; 2 uses
  %i.er = load i32, ptr %.08.i2374, align 8, !tbaa !215
  %i.es = icmp eq i32 %i.er, 28
  br i1 %i.es, label %context_p.exit2378, label %bb.bi

context_p.exit2378:                               ; preds = %.lr.ph.i2373
  %.val2129 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.et = icmp eq i32 %.val2129, 10
  br i1 %i.et, label %context_p.exit, label %context_p.exit2378.thread

context_p.exit2378.thread:                        ; preds = %bb.bi, %accept1.exit2368, %context_p.exit2378
  br i1 %i.ek, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %context_p.exit2378.thread
  %i.eu = getelementptr i8, ptr %.01900, i64 8
  %.01900.val2182 = load ptr, ptr %i.eu, align 8, !tbaa !133
  %i.ev = getelementptr i8, ptr %.01900, i64 16
  %.01900.val2183 = load ptr, ptr %i.ev, align 8, !tbaa !134
  %i.ew = getelementptr i8, ptr %0, i64 472
  %i.ex = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ew, ptr noundef %.01900.val2182, ptr noundef %.01900.val2183, i32 noundef 294) #27 ; 0 uses
  br label %context_p.exit

bb.bk:                                            ; preds = %context_p.exit2378.thread
  %.val2154 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2154, label %bb.bl [
    i32 50, label %context_p.exit
    i32 15, label %context_p.exit
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.ey = getelementptr i8, ptr %.01900, i64 8
  %.01900.val = load ptr, ptr %i.ey, align 8, !tbaa !133
  %i.ez = getelementptr i8, ptr %.01900, i64 16
  %.01900.val2181 = load ptr, ptr %i.ez, align 8, !tbaa !134
  %i.fa = getelementptr i8, ptr %0, i64 472
  %i.fb = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.fa, ptr noundef %.01900.val, ptr noundef %.01900.val2181, i32 noundef 294) #27 ; 0 uses
  br label %context_p.exit

bb.bm:                                            ; preds = %bb.bb
  %i.fc = call fastcc ptr @pm_statements_node_create(ptr noundef nonnull %0) ; 2 uses
  call fastcc void @pm_statements_node_body_append(ptr noundef nonnull %0, ptr noundef %i.fc, ptr noundef nonnull %i.dm, i1 noundef zeroext true)
  %i.fd = getelementptr i8, ptr %0, i64 320
  %i.fe = call fastcc ptr @pm_parentheses_node_create(ptr noundef nonnull %0, ptr %.sroa.43238.0.copyload, ptr %.sroa.83239.0.copyload, ptr noundef nonnull %i.fc, ptr noundef %i.fd, i16 noundef zeroext %.51896)
  br label %context_p.exit

bb.bn:                                            ; preds = %accept1.exit2366
  %i.ff = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not3338 = icmp eq ptr %i.ff, null
  br i1 %.not3338, label %context_push.exit2382, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i32 42, ptr %i.ff, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i2380 = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i2380, align 4
  %.sroa.3.0..sroa_idx.i2381 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fg = load ptr, ptr %i.dn, align 8, !tbaa !253
  store ptr %i.fg, ptr %.sroa.3.0..sroa_idx.i2381, align 8
  store ptr %i.ff, ptr %i.dn, align 8, !tbaa !253
  br label %context_push.exit2382

context_push.exit2382:                            ; preds = %bb.bn, %bb.bo
  %i.fh = or i16 %.51896, 4
  %i.fi = call fastcc ptr @pm_statements_node_create(ptr noundef nonnull %0) ; 7 uses
  call fastcc void @pm_statements_node_body_append(ptr noundef nonnull %0, ptr noundef %i.fi, ptr noundef %i.dm, i1 noundef zeroext true)
  br i1 %.018973252, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %context_push.exit2382
  %.val2128 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.fj = icmp eq i32 %.val2128, 1
  br i1 %i.fj, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fk = getelementptr i8, ptr %0, i64 472
  %i.fl = load ptr, ptr %.sroa.43238.0..sroa_idx, align 8, !tbaa !166
  %i.fm = load ptr, ptr %.sroa.83239.0..sroa_idx, align 8, !tbaa !76
  %i.fn = call ptr @pm_token_type_human(i32 noundef %.val2128) #27
  %i.fo = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.fk, ptr noundef %i.fl, ptr noundef %i.fm, i32 noundef 90, ptr noundef %i.fn) #27 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %context_push.exit2382
  %i.fp = getelementptr i8, ptr %i.fi, i64 24     ; 5 uses
  %i.fq = getelementptr i8, ptr %i.fi, i64 8      ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fi, i64 16     ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fi, i64 40     ; 4 uses
  %i.ft = getelementptr i8, ptr %0, i64 448
  %i.fu = getelementptr i8, ptr %0, i64 697       ; 2 uses
  %i.fv = getelementptr i8, ptr %0, i64 472       ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.backedge3734, %bb.br
  %i.fw = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 2, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 40, i16 noundef zeroext %i.dl) ; 5 uses
  %i.fx = load i64, ptr %i.fp, align 8, !tbaa !101 ; 2 uses
  %.not.i.i2383 = icmp eq i64 %i.fx, 0            ; 2 uses
  %.phi.trans.insert.i.i2384 = getelementptr i8, ptr %i.fw, i64 8 ; 2 uses
  %.pre.i.i2385 = load ptr, ptr %.phi.trans.insert.i.i2384, align 8, !tbaa !133 ; 2 uses
  br i1 %.not.i.i2383, label %._crit_edge.i.i2387, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fy = load ptr, ptr %i.fq, align 8, !tbaa !121
  %i.fz = icmp ult ptr %.pre.i.i2385, %i.fy
  br i1 %i.fz, label %._crit_edge.i.i2387, label %bb.bu

._crit_edge.i.i2387:                              ; preds = %bb.bt, %bb.bs
  store ptr %.pre.i.i2385, ptr %i.fq, align 8, !tbaa !121
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.i.i2387, %bb.bt
  %i.ga = getelementptr i8, ptr %i.fw, i64 16     ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !134 ; 2 uses
  %i.gc = load ptr, ptr %i.fr, align 8, !tbaa !122
  %i.gd = icmp ugt ptr %i.gb, %i.gc
  br i1 %i.gd, label %bb.bv, label %pm_statements_node_body_update.exit.i

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.gb, ptr %i.fr, align 8, !tbaa !122
  br label %pm_statements_node_body_update.exit.i

pm_statements_node_body_update.exit.i:            ; preds = %bb.bv, %bb.bu
  br i1 %.not.i.i2383, label %pm_statements_node_body_append.exit, label %bb.bw

bb.bw:                                            ; preds = %pm_statements_node_body_update.exit.i
  %i.ge = load ptr, ptr %i.fs, align 8, !tbaa !104
  %i.gf = getelementptr [8 x i8], ptr %i.ge, i64 %i.fx
  %i.gg = getelementptr i8, ptr %i.gf, i64 -8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !105
  %i.gi = load i16, ptr %i.gh, align 8, !tbaa !115
  switch i16 %i.gi, label %pm_statements_node_body_append.exit [
    i16 17, label %bb.bx
    i16 107, label %bb.bx
    i16 124, label %bb.bx
    i16 131, label %bb.bx
    i16 132, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw, %bb.bw, %bb.bw, %bb.bw
  %.val.i2386 = load ptr, ptr %.phi.trans.insert.i.i2384, align 8, !tbaa !133
  %.val11.i = load ptr, ptr %i.ga, align 8, !tbaa !134
  %i.gj = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ft, ptr noundef %.val.i2386, ptr noundef %.val11.i, i32 noundef range(i32 297, 324) 323) #27 ; 0 uses
  br label %pm_statements_node_body_append.exit

pm_statements_node_body_append.exit:              ; preds = %pm_statements_node_body_update.exit.i, %bb.bw, %bb.bx
  call void @pm_node_list_append(ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fw) #27
  %i.gk = getelementptr i8, ptr %i.fw, i64 2      ; 2 uses
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !116
  %i.gm = or i16 %i.gl, 1
  store i16 %i.gm, ptr %i.gk, align 2, !tbaa !116
  %i.gn = load i8, ptr %i.fu, align 1, !tbaa !254, !range !45, !noundef !46
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %pm_statements_node_body_append.exit
  %.val2127 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.gp = icmp eq i32 %.val2127, 15
  br i1 %i.gp, label %bb.bz, label %.loopexit3339

bb.bz:                                            ; preds = %bb.by
  store i8 0, ptr %i.fu, align 1, !tbaa !254
  br label %.loopexit3339

bb.ca:                                            ; preds = %pm_statements_node_body_append.exit
  %i.gq = load i16, ptr %i.fw, align 8, !tbaa !115
  %i.gr = icmp eq i16 %i.gq, 103
  br i1 %i.gr, label %.loopexit3339, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val.i2388 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2388, label %bb.cc [
    i32 17, label %accept2.exit.preheader
    i32 14, label %accept2.exit.preheader
    i32 15, label %.loopexit3339
    i32 1, label %.backedge3734
  ]

.backedge3734:                                    ; preds = %accept2.exit, %bb.cb, %bb.cc
  br label %bb.bs

accept2.exit.preheader:                           ; preds = %bb.cb, %bb.cb
  br label %accept2.exit

accept2.exit:                                     ; preds = %accept2.exit.backedge, %accept2.exit.preheader
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2389 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val.i2389, label %.backedge3734 [
    i32 17, label %accept2.exit.backedge
    i32 14, label %accept2.exit.backedge
    i32 15, label %.loopexit3339
  ]

accept2.exit.backedge:                            ; preds = %accept2.exit, %accept2.exit
  br label %accept2.exit

bb.cc:                                            ; preds = %bb.cb
  %i.gs = load ptr, ptr %.sroa.43238.0..sroa_idx, align 8, !tbaa !166
  %i.gt = load ptr, ptr %.sroa.83239.0..sroa_idx, align 8, !tbaa !76
  %i.gu = call ptr @pm_token_type_human(i32 noundef %.val.i2388) #27
  %i.gv = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.fv, ptr noundef %i.gs, ptr noundef %i.gt, i32 noundef 90, ptr noundef %i.gu) #27 ; 0 uses
  br label %.backedge3734

.loopexit3339:                                    ; preds = %bb.ca, %bb.cb, %accept2.exit, %bb.by, %bb.bz
  %i.gw = load ptr, ptr %i.dn, align 8, !tbaa !253 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !257
  call void @free(ptr noundef %i.gw) #27
  store ptr %i.gy, ptr %i.dn, align 8, !tbaa !253
  %i.gz = load i32, ptr %i.df, align 8, !tbaa !7
  %i.ha = lshr i32 %i.gz, 1
  store i32 %i.ha, ptr %i.df, align 8, !tbaa !7
  call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 110)
  %i.hb = load ptr, ptr %i.fs, align 8, !tbaa !104
  %i.hc = load i64, ptr %i.fp, align 8, !tbaa !101
  %i.hd = getelementptr [8 x i8], ptr %i.hb, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 -8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !105 ; 3 uses
  %i.hg = load i16, ptr %i.hf, align 8, !tbaa !115 ; 2 uses
  %i.hh = icmp eq i16 %i.hg, 139
  br i1 %i.hh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.loopexit3339
  %i.hi = call fastcc ptr @pm_multi_target_node_create(ptr noundef nonnull %0) ; 4 uses
  call fastcc void @pm_multi_target_node_targets_append(ptr noundef nonnull %0, ptr noundef %i.hi, ptr noundef nonnull %i.hf)
  %i.hj = load ptr, ptr %i.fs, align 8, !tbaa !104
  %i.hk = load i64, ptr %i.fp, align 8, !tbaa !101
  %i.hl = getelementptr [8 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -8
  store ptr %i.hi, ptr %i.hm, align 8, !tbaa !105
  %.pr = load i16, ptr %i.hi, align 8, !tbaa !115
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.loopexit3339
  %i.hn = phi i16 [ %.pr, %bb.cd ], [ %i.hg, %.loopexit3339 ]
  %.01901 = phi ptr [ %i.hi, %bb.cd ], [ %i.hf, %.loopexit3339 ] ; 2 uses
  %i.ho = icmp eq i16 %i.hn, 105
  br i1 %i.ho, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hp = getelementptr i8, ptr %.01901, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !134 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store i32 50, ptr %10, align 8, !tbaa !126
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.hr, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !127
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.hq, ptr %i.ht, align 8, !tbaa !128
  %i.hu = call fastcc ptr @pm_missing_node_create(ptr noundef nonnull %0, ptr noundef %i.hq, ptr noundef %i.hq)
  %i.hv = call fastcc ptr @pm_multi_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %.01901, ptr noundef %10, ptr noundef nonnull %i.hu) ; 3 uses
  %i.hw = load ptr, ptr %i.fs, align 8, !tbaa !104
  %i.hx = load i64, ptr %i.fp, align 8, !tbaa !101
  %i.hy = getelementptr [8 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 -8
  store ptr %i.hv, ptr %i.hz, align 8, !tbaa !105
  %i.ia = getelementptr i8, ptr %i.hv, i64 8
  %.val2179 = load ptr, ptr %i.ia, align 8, !tbaa !133
  %i.ib = getelementptr i8, ptr %i.hv, i64 16
  %.val2180 = load ptr, ptr %i.ib, align 8, !tbaa !134
  %i.ic = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.fv, ptr noundef %.val2179, ptr noundef %.val2180, i32 noundef 294) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.dc)
  call void @pm_node_list_free(ptr noundef nonnull %9) #27
  call fastcc void @pm_void_statements_check(ptr noundef nonnull %0, ptr noundef %i.fi, i1 noundef zeroext true)
  %i.id = getelementptr i8, ptr %0, i64 320
  %i.ie = call fastcc ptr @pm_parentheses_node_create(ptr noundef nonnull %0, ptr %.sroa.43238.0.copyload, ptr %.sroa.83239.0.copyload, ptr noundef nonnull %i.fi, ptr noundef %i.id, i16 noundef zeroext %i.fh)
  br label %context_p.exit

context_p.exit:                                   ; preds = %.lr.ph.i, %bb.bk, %bb.bk, %bb.bm, %bb.cg, %context_p.exit2378, %bb.bl, %bb.bj, %bb.at
  %.1 = phi ptr [ %i.de, %bb.at ], [ %i.ie, %bb.cg ], [ %i.fe, %bb.bm ], [ %.01900, %context_p.exit2378 ], [ %.01900, %bb.bk ], [ %.01900, %bb.bl ], [ %.01900, %bb.bj ], [ %.01900, %bb.bk ], [ %.01900, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.loopexit3341

bb.ch:                                            ; preds = %bb.a
  %i.if = getelementptr i8, ptr %0, i64 512       ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !305 ; 2 uses
  store ptr null, ptr %i.if, align 8, !tbaa !305
  %i.ih = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !7
  %i.ij = shl i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !7
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ik = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i64 24, i1 false), !tbaa.struct !163
  %i.il = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val2248 = load ptr, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.val2249 = load ptr, ptr %i.im, align 8
  %i.in = tail call fastcc ptr @pm_hash_node_create(ptr noundef nonnull %0, ptr %.val2248, ptr %.val2249) ; 5 uses
  %.val2153 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.io = add i32 %.val2153, -1
  %i.ip = icmp ult i32 %i.io, 2
  br i1 %i.ip, label %accept1.exit2394, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not2033 = icmp eq ptr %i.ig, null
  br i1 %.not2033, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iq = add i16 %5, 1
  %i.ir = tail call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %i.ig, ptr noundef %i.in, i16 noundef zeroext %i.iq) ; 0 uses
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i64 128, i1 false)
  %i.is = add i16 %5, 1
  %i.it = call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %12, ptr noundef %i.in, i16 noundef zeroext %i.is) ; 0 uses
  call void @pm_static_literals_free(ptr noundef nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.val.i2393 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.iu = icmp eq i32 %.val.i2393, 14
  br i1 %i.iu, label %bb.cm, label %accept1.exit2394

bb.cm:                                            ; preds = %bb.cl
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2394

accept1.exit2394:                                 ; preds = %bb.ch, %bb.cm, %bb.cl
  %i.iv = load i32, ptr %i.ih, align 4, !tbaa !7
  %i.iw = lshr i32 %i.iv, 1
  store i32 %i.iw, ptr %i.ih, align 4, !tbaa !7
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 135, ptr noundef %11)
  %i.ix = getelementptr i8, ptr %0, i64 328
  %i.iy = getelementptr i8, ptr %0, i64 336
  %i.iz = getelementptr i8, ptr %i.in, i64 16
  %i.ja = getelementptr i8, ptr %i.in, i64 64
  %.val2251 = load ptr, ptr %i.iy, align 8, !tbaa !128
  %i.jb = load <2 x ptr>, ptr %i.ix, align 8, !tbaa !14
  store ptr %.val2251, ptr %i.iz, align 8, !tbaa !306
  store <2 x ptr> %i.jb, ptr %i.ja, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.loopexit3341

bb.cn:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.jc = getelementptr i8, ptr %0, i64 304
  %.val2234 = load ptr, ptr %i.jc, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %13, align 8, !tbaa !126, !alias.scope !308
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.jd, align 4, !alias.scope !308
  %i.je = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.val2234, ptr %i.je, align 8, !tbaa !127, !alias.scope !308
  %i.jf = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.val2234, ptr %i.jf, align 8, !tbaa !128, !alias.scope !308
  store i32 147, ptr %14, align 8, !tbaa !126
  %i.jg = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.jg, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ji = getelementptr i8, ptr %0, i64 352
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !166 ; 2 uses
  store ptr %i.jj, ptr %i.jh, align 8, !tbaa !127
  %i.jk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.jl = getelementptr i8, ptr %i.jj, i64 1      ; 2 uses
  store ptr %i.jl, ptr %i.jk, align 8, !tbaa !128
  store i32 148, ptr %15, align 8, !tbaa !126
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 0, ptr %i.jm, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.jl, ptr %i.jn, align 8, !tbaa !127
  %i.jo = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.jp = getelementptr i8, ptr %0, i64 360
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !76
  store ptr %i.jq, ptr %i.jo, align 8, !tbaa !128
  %i.jr = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %13) ; 3 uses
  %i.js = getelementptr i8, ptr %0, i64 672
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !207 ; 2 uses
  %.not.i2396 = icmp eq ptr %i.jt, null
  br i1 %.not.i2396, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ju = icmp eq ptr %i.jt, @pm_encodings
  br i1 %i.ju, label %parse_unescaped_encoding.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jv = getelementptr i8, ptr %0, i64 520
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !40
  %i.jx = icmp eq ptr %i.jw, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.jx, label %parse_unescaped_encoding.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  br label %parse_unescaped_encoding.exit

parse_unescaped_encoding.exit:                    ; preds = %bb.co, %bb.cp, %bb.cq
  %.0.i2397 = phi i16 [ 0, %bb.cq ], [ 4, %bb.co ], [ 8, %bb.cp ]
  %i.jy = getelementptr i8, ptr %i.jr, i64 2      ; 2 uses
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !116
  %i.ka = or i16 %i.jz, %.0.i2397
  store i16 %i.ka, ptr %i.jy, align 2, !tbaa !116
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2123 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.kb = icmp eq i32 %.val2123, 147
  br i1 %i.kb, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %parse_unescaped_encoding.exit
  %i.kc = add i16 %5, 1
  %i.kd = tail call fastcc ptr @parse_strings(ptr noundef nonnull %0, ptr noundef nonnull %i.jr, i1 noundef zeroext false, i16 noundef zeroext %i.kc)
  br label %bb.cs

bb.cs:                                            ; preds = %parse_unescaped_encoding.exit, %bb.cr
  %.2 = phi ptr [ %i.kd, %bb.cr ], [ %i.jr, %parse_unescaped_encoding.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.loopexit3341

bb.ct:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ke = getelementptr i8, ptr %0, i64 320
  %i.kf = tail call fastcc ptr @pm_class_variable_read_node_create(ptr noundef nonnull %0, ptr noundef %i.ke) ; 3 uses
  %i.kg = icmp eq i32 %1, 2
  br i1 %i.kg, label %bb.cu, label %.loopexit3341

bb.cu:                                            ; preds = %bb.ct
  %.val2122 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.kh = icmp eq i32 %.val2122, 3
  br i1 %i.kh, label %bb.cv, label %.loopexit3341

bb.cv:                                            ; preds = %bb.cu
  %i.ki = add i16 %5, 1
  %i.kj = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.kf, i16 noundef zeroext %i.ki)
  br label %.loopexit3341

bb.cw:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.kk = getelementptr i8, ptr %0, i64 320       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.kk, i64 24, i1 false), !tbaa.struct !163
  %.val2121 = load i32, ptr %i.b, align 8, !tbaa !170 ; 3 uses
  %i.kl = icmp eq i32 %.val2121, 124
  br i1 %i.kl, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %2, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.km = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %.val2121)
  br i1 %i.km, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.val2165 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val2165, label %bb.da [
    i32 160, label %bb.db
    i32 159, label %bb.db
    i32 152, label %bb.db
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cx
  %.val2119.pr = phi i32 [ %.val2165, %bb.cz ], [ %.val2121, %bb.cx ] ; 2 uses
  %i.kn = getelementptr i8, ptr %0, i64 24
  %.val2253 = load i32, ptr %i.kn, align 4, !tbaa !7
  %i.ko = trunc i32 %.val2253 to i1
  %.not3614 = xor i1 %i.ko, true
  %i.kp = icmp eq i32 %.val2119.pr, 5
  %or.cond3615 = and i1 %i.kp, %.not3614
  %i.kq = icmp eq i32 %.val2119.pr, 28
  %or.cond3616 = or i1 %or.cond3615, %i.kq
  br i1 %or.cond3616, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cz, %bb.cz, %bb.cy, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, i8 0, i64 56, i1 false)
  %i.kr = add i16 %5, 1
  %i.ks = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %17, i1 noundef zeroext true, i1 noundef zeroext %2, i16 noundef zeroext %i.kr) ; 0 uses
  %i.kt = call fastcc ptr @pm_call_node_fcall_create(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.ku = tail call fastcc ptr @pm_constant_read_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.kk) ; 3 uses
  %i.kv = icmp eq i32 %1, 2
  br i1 %i.kv, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %.val2118 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.kw = icmp eq i32 %.val2118, 3
  br i1 %i.kw, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.kx = add i16 %5, 1
  %i.ky = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.ku, i16 noundef zeroext %i.kx)
  br label %bb.df

bb.df:                                            ; preds = %bb.dc, %bb.dd, %bb.de, %bb.db
  %.3 = phi ptr [ %i.kt, %bb.db ], [ %i.ky, %bb.de ], [ %i.ku, %bb.dd ], [ %i.ku, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.loopexit3341

bb.dg:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.kz = getelementptr i8, ptr %0, i64 320       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.kz, i64 24, i1 false), !tbaa.struct !163
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 41, i32 noundef 61)
  %i.la = call fastcc ptr @pm_constant_path_node_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %18, ptr noundef nonnull %i.kz) ; 3 uses
  %i.lb = icmp eq i32 %1, 2
  br i1 %i.lb, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %.val2117 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.lc = icmp eq i32 %.val2117, 3
  br i1 %i.lc, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ld = add i16 %5, 1
  %i.le = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.la, i16 noundef zeroext %i.ld)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  %.01904 = phi ptr [ %i.le, %bb.di ], [ %i.la, %bb.dh ], [ %i.la, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %.loopexit3341

bb.dk:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !163
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lf = load i32, ptr %19, align 8, !tbaa !126
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !286
  %i.lj = add i16 %5, 1
  %i.lk = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %i.li, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 96, i16 noundef zeroext %i.lj)
  %.val2152 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ll = add i32 %.val2152, -43
  %i.lm = icmp ult i32 %i.ll, 2
  br i1 %i.lm, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ln = getelementptr i8, ptr %0, i64 352
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !166
  %i.lp = getelementptr i8, ptr %0, i64 360
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !76
  %i.lr = getelementptr i8, ptr %0, i64 472
  %i.ls = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.lr, ptr noundef %i.lo, ptr noundef %i.lq, i32 noundef 285) #27 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.lt = call fastcc ptr @pm_range_node_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %19, ptr noundef %i.lk)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.loopexit3341

bb.dn:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lu = getelementptr i8, ptr %0, i64 320
  %i.lv = tail call fastcc ptr @pm_float_node_create(ptr noundef nonnull %0, ptr noundef %i.lu)
  br label %.loopexit3341

bb.do:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lw = getelementptr i8, ptr %0, i64 320
  %i.lx = tail call fastcc ptr @pm_float_node_imaginary_create(ptr noundef nonnull %0, ptr noundef %i.lw)
  br label %.loopexit3341

bb.dp:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ly = getelementptr i8, ptr %0, i64 320
  %i.lz = tail call fastcc ptr @pm_float_node_rational_create(ptr noundef nonnull %0, ptr noundef %i.ly)
  br label %.loopexit3341

bb.dq:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ma = getelementptr i8, ptr %0, i64 320
  %i.mb = tail call fastcc ptr @pm_float_node_rational_imaginary_create(ptr noundef nonnull %0, ptr noundef %i.ma)
  br label %.loopexit3341

bb.dr:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.mc = getelementptr i8, ptr %0, i64 320
  %i.md = tail call fastcc ptr @pm_numbered_reference_read_node_create(ptr noundef nonnull %0, ptr noundef %i.mc) ; 3 uses
  %i.me = icmp eq i32 %1, 2
  br i1 %i.me, label %bb.ds, label %.loopexit3341

bb.ds:                                            ; preds = %bb.dr
  %.val2116 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.mf = icmp eq i32 %.val2116, 3
  br i1 %i.mf, label %bb.dt, label %.loopexit3341

bb.dt:                                            ; preds = %bb.ds
  %i.mg = add i16 %5, 1
  %i.mh = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.md, i16 noundef zeroext %i.mg)
  br label %.loopexit3341

bb.du:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.mi = getelementptr i8, ptr %0, i64 320
  %i.mj = tail call fastcc ptr @pm_global_variable_read_node_create(ptr noundef nonnull %0, ptr noundef %i.mi) ; 3 uses
  %i.mk = icmp eq i32 %1, 2
  br i1 %i.mk, label %bb.dv, label %.loopexit3341

bb.dv:                                            ; preds = %bb.du
  %.val2115 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ml = icmp eq i32 %.val2115, 3
  br i1 %i.ml, label %bb.dw, label %.loopexit3341

bb.dw:                                            ; preds = %bb.dv
  %i.mm = add i16 %5, 1
  %i.mn = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.mj, i16 noundef zeroext %i.mm)
  br label %.loopexit3341

bb.dx:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.mo = getelementptr i8, ptr %0, i64 320
  %i.mp = tail call fastcc ptr @pm_back_reference_read_node_create(ptr noundef nonnull %0, ptr noundef %i.mo) ; 3 uses
  %i.mq = icmp eq i32 %1, 2
  br i1 %i.mq, label %bb.dy, label %.loopexit3341

bb.dy:                                            ; preds = %bb.dx
  %.val2114 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.mr = icmp eq i32 %.val2114, 3
  br i1 %i.mr, label %bb.dz, label %.loopexit3341

bb.dz:                                            ; preds = %bb.dy
  %i.ms = add i16 %5, 1
  %i.mt = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.mp, i16 noundef zeroext %i.ms)
  br label %.loopexit3341

bb.ea:                                            ; preds = %bb.a, %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.mu = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.mu, i64 24, i1 false), !tbaa.struct !163
  %i.mv = tail call fastcc ptr @parse_variable_call(ptr noundef nonnull %0) ; 17 uses
  %i.mw = load i16, ptr %i.mv, align 8, !tbaa !115
  %i.mx = icmp eq i16 %i.mw, 19
  br i1 %i.mx, label %bb.eb, label %bb.en

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %21, i8 0, i64 56, i1 false)
  %i.my = add i16 %5, 1
  %i.mz = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %21, i1 noundef zeroext true, i1 noundef zeroext %2, i16 noundef zeroext %i.my)
  br i1 %i.mz, label %bb.ec, label %bb.em

bb.ec:                                            ; preds = %bb.eb
  %i.na = getelementptr i8, ptr %i.mv, i64 2      ; 2 uses
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !116
  %i.nc = and i16 %i.nb, -9
  store i16 %i.nc, ptr %i.na, align 2, !tbaa !116
  %i.nd = getelementptr i8, ptr %i.mv, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nd, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !311
  %i.ne = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !312 ; 3 uses
  %i.ng = getelementptr i8, ptr %i.mv, i64 88
  store ptr %i.nf, ptr %i.ng, align 8, !tbaa !117
  %i.nh = getelementptr i8, ptr %i.mv, i64 96
  %i.ni = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nh, ptr noundef nonnull align 8 dereferenceable(16) %i.ni, i64 16, i1 false), !tbaa.struct !311
  %i.nj = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !314 ; 3 uses
  %i.nl = getelementptr i8, ptr %i.mv, i64 128
  store ptr %i.nk, ptr %i.nl, align 8, !tbaa !289
  %.not.i2401 = icmp eq ptr %i.nk, null
  br i1 %.not.i2401, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.nm = getelementptr i8, ptr %i.nk, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !134 ; 3 uses
  %i.no = load ptr, ptr %i.ni, align 8, !tbaa !315
  %.not20.i = icmp eq ptr %i.no, null
  br i1 %.not20.i, label %pm_arguments_end.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.np = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !316 ; 2 uses
  %i.nr = icmp ugt ptr %i.nq, %i.nn
  %spec.select.i2402 = select i1 %i.nr, ptr %i.nq, ptr %i.nn
  br label %pm_arguments_end.exit

bb.ef:                                            ; preds = %bb.ec
  %i.ns = load ptr, ptr %i.ni, align 8, !tbaa !315
  %.not18.i = icmp eq ptr %i.ns, null
  br i1 %.not18.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.nt = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !316
  br label %pm_arguments_end.exit

bb.eh:                                            ; preds = %bb.ef
  %.not19.i = icmp eq ptr %i.nf, null
  br i1 %.not19.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.nv = getelementptr i8, ptr %i.nf, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !114
  br label %pm_arguments_end.exit

bb.ej:                                            ; preds = %bb.eh
  %i.nx = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !316
  br label %pm_arguments_end.exit

pm_arguments_end.exit:                            ; preds = %bb.ed, %bb.ee, %bb.eg, %bb.ei, %bb.ej
  %.013.i = phi ptr [ %i.ny, %bb.ej ], [ %i.nu, %bb.eg ], [ %i.nw, %bb.ei ], [ %i.nn, %bb.ed ], [ %spec.select.i2402, %bb.ee ] ; 2 uses
  %.not2032 = icmp eq ptr %.013.i, null
  br i1 %.not2032, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %pm_arguments_end.exit
  %i.nz = getelementptr i8, ptr %i.mv, i64 64
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !292
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %pm_arguments_end.exit
  %.01910 = phi ptr [ %.013.i, %pm_arguments_end.exit ], [ %i.oa, %bb.ek ]
  %i.ob = getelementptr i8, ptr %i.mv, i64 16
  store ptr %.01910, ptr %i.ob, align 8, !tbaa !124
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.fb

bb.en:                                            ; preds = %bb.ea
  br i1 %2, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.oc = load i32, ptr %i.b, align 8, !tbaa !170
  %i.od = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.oc)
  br i1 %i.od, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.val2164 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2164, label %bb.eq [
    i32 160, label %bb.er
    i32 159, label %bb.er
    i32 152, label %bb.er
  ]

bb.eq:                                            ; preds = %bb.ep, %bb.en
  %i.oe = getelementptr i8, ptr %0, i64 24
  %.val2252 = load i32, ptr %i.oe, align 4, !tbaa !7
  %i.of = trunc i32 %.val2252 to i1
  %.val2112.pr = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %.not3642 = xor i1 %i.of, true
  %i.og = icmp eq i32 %.val2112.pr, 5
  %or.cond3643 = select i1 %.not3642, i1 %i.og, i1 false
  %i.oh = icmp eq i32 %.val2112.pr, 28
  %or.cond3644 = select i1 %or.cond3643, i1 true, i1 %i.oh
  br i1 %or.cond3644, label %bb.er, label %bb.fb

bb.er:                                            ; preds = %bb.eq, %bb.ep, %bb.ep, %bb.ep, %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %22, i8 0, i64 56, i1 false)
  %i.oi = add i16 %5, 1
  %i.oj = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %22, i1 noundef zeroext true, i1 noundef zeroext %2, i16 noundef zeroext %i.oi) ; 0 uses
  %i.ok = call fastcc ptr @pm_call_node_fcall_create(ptr noundef nonnull %0, ptr noundef %20, ptr noundef %22)
  %i.ol = load i16, ptr %i.mv, align 8, !tbaa !115
  switch i16 %i.ol, label %bb.et [
    i16 88, label %bb.es
    i16 96, label %bb.eu
  ]

bb.es:                                            ; preds = %bb.er
  tail call void @pm_visit_node(ptr noundef nonnull %i.mv, ptr noundef nonnull @pm_node_unreference_each, ptr noundef nonnull %0) #27
  br label %bb.fa

bb.et:                                            ; preds = %bb.er
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.2, i32 noundef 18004, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.eu:                                            ; preds = %bb.er
  %i.om = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !127 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !128
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = ptrtoint ptr %i.on to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = icmp eq i64 %i.os, 2
  br i1 %i.ot, label %bb.ev, label %pm_token_is_numbered_parameter.exit.thread

bb.ev:                                            ; preds = %bb.eu
  %i.ou = load i8, ptr %i.on, align 1, !tbaa !67
  %i.ov = icmp eq i8 %i.ou, 95
  br i1 %i.ov, label %bb.ew, label %pm_token_is_numbered_parameter.exit.thread

bb.ew:                                            ; preds = %bb.ev
  %i.ow = getelementptr i8, ptr %i.on, i64 1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !67  ; 2 uses
  %.not.i2405 = icmp eq i8 %i.ox, 48
  br i1 %.not.i2405, label %pm_token_is_numbered_parameter.exit.thread, label %pm_token_is_numbered_parameter.exit

pm_token_is_numbered_parameter.exit:              ; preds = %bb.ew
  %i.oy = tail call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %i.ox) #27
  br i1 %i.oy, label %bb.ex, label %pm_token_is_numbered_parameter.exit.thread

bb.ex:                                            ; preds = %pm_token_is_numbered_parameter.exit
  tail call void @pm_visit_node(ptr noundef nonnull %i.mv, ptr noundef nonnull @pm_node_unreference_each, ptr noundef nonnull %0) #27
  br label %bb.fa

pm_token_is_numbered_parameter.exit.thread:       ; preds = %bb.eu, %bb.ev, %bb.ew, %pm_token_is_numbered_parameter.exit
  %i.oz = getelementptr i8, ptr %i.mv, i64 28
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !317 ; 2 uses
  %i.pb = getelementptr i8, ptr %0, i64 496
  %.0.i24063702 = load ptr, ptr %i.pb, align 8, !tbaa !66 ; 2 uses
  %.not.i24073703 = icmp eq i32 %i.pa, 0
  br i1 %.not.i24073703, label %pm_parser_scope_find.exit, label %.lr.ph3706

bb.ey:                                            ; preds = %.lr.ph3706
  %i.pc = add i32 %.04.i3704, -1                  ; 2 uses
  %.0.i2406 = load ptr, ptr %.0.i24063705, align 8, !tbaa !66 ; 2 uses
  %.not.i2407 = icmp eq i32 %i.pc, 0
  br i1 %.not.i2407, label %pm_parser_scope_find.exit, label %.lr.ph3706, !llvm.loop !319

.lr.ph3706:                                       ; preds = %pm_token_is_numbered_parameter.exit.thread, %bb.ey
  %.0.i24063705 = phi ptr [ %.0.i2406, %bb.ey ], [ %.0.i24063702, %pm_token_is_numbered_parameter.exit.thread ] ; 2 uses
  %.04.i3704 = phi i32 [ %i.pc, %bb.ey ], [ %i.pa, %pm_token_is_numbered_parameter.exit.thread ]
  %.not5.i = icmp eq ptr %.0.i24063705, null
  br i1 %.not5.i, label %bb.ez, label %bb.ey, !llvm.loop !319

bb.ez:                                            ; preds = %.lr.ph3706
  tail call void @__assert_fail(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 626, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_parser_scope_find) #26
  unreachable

pm_parser_scope_find.exit:                        ; preds = %bb.ey, %pm_token_is_numbered_parameter.exit.thread
  %.0.i2406.lcssa = phi ptr [ %.0.i24063702, %pm_token_is_numbered_parameter.exit.thread ], [ %.0.i2406, %bb.ey ]
  %i.pd = getelementptr i8, ptr %.0.i2406.lcssa, i64 8
  %i.pe = getelementptr i8, ptr %i.mv, i64 24
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !320
  tail call fastcc void @pm_locals_unread(ptr noundef %i.pd, i32 noundef %i.pf)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ex, %pm_parser_scope_find.exit, %bb.es
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef nonnull %i.mv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.fe

bb.fb:                                            ; preds = %bb.eq, %bb.em
  %i.pg = icmp eq i32 %1, 2
  br i1 %i.pg, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %.val2111 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ph = icmp eq i32 %.val2111, 3
  br i1 %i.ph, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.pi = add i16 %5, 1
  %i.pj = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.mv, i16 noundef zeroext %i.pi)
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fb, %bb.fc, %bb.fd, %bb.fa
  %.4 = phi ptr [ %i.ok, %bb.fa ], [ %i.pj, %bb.fd ], [ %i.mv, %bb.fc ], [ %i.mv, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %.loopexit3341

bb.ff:                                            ; preds = %bb.a
  %i.pk = getelementptr i8, ptr %0, i64 32
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !91 ; 6 uses
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !99
  %i.pn = icmp eq i32 %i.pm, 3
  br i1 %i.pn, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  tail call void @__assert_fail(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.2, i32 noundef 18028, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.fh:                                            ; preds = %bb.ff
  %i.po = getelementptr i8, ptr %i.pl, i64 8
  %.sroa.0428.0.copyload = load ptr, ptr %i.po, align 8, !tbaa !14 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.pl, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !20 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr i8, ptr %i.pl, i64 24
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !7 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr i8, ptr %i.pl, i64 28
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 -1, ptr %i.a, align 8, !tbaa !20
  %i.pp = getelementptr i8, ptr %i.pl, i64 40
  store ptr %i.a, ptr %i.pp, align 8, !tbaa !67
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.pq = getelementptr i8, ptr %0, i64 320       ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %i.pq, i64 24, i1 false), !tbaa.struct !163
  %.val2151 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2151, label %bb.fm [
    i32 64, label %bb.fi
    i32 1, label %bb.fi
  ]

bb.fi:                                            ; preds = %bb.fh, %bb.fh
  call fastcc void @expect1_heredoc_term(ptr noundef nonnull %0, ptr noundef %.sroa.0428.0.copyload, i64 noundef %.sroa.7.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.pr = getelementptr i8, ptr %0, i64 328
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !256 ; 2 uses
  store i32 148, ptr %24, align 8, !tbaa !126, !alias.scope !321
  %i.pt = getelementptr inbounds nuw i8, ptr %24, i64 4
  store i32 0, ptr %i.pt, align 4, !alias.scope !321
  %i.pu = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.ps, ptr %i.pu, align 8, !tbaa !127, !alias.scope !321
  %i.pv = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %i.ps, ptr %i.pv, align 8, !tbaa !128, !alias.scope !321
  %i.pw = icmp eq i32 %.sroa.11.0.copyload, 96
  br i1 %i.pw, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.px = call fastcc ptr @pm_xstring_node_create_unescaped(ptr noundef nonnull %0, ptr noundef %23, ptr noundef %24, ptr noundef nonnull %i.pq, ptr noundef %25)
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.py = call fastcc ptr @pm_string_node_create_unescaped(ptr noundef nonnull %0, ptr noundef %23, ptr noundef nonnull %24, ptr noundef nonnull %i.pq, ptr noundef nonnull %26)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.01911 = phi ptr [ %i.px, %bb.fj ], [ %i.py, %bb.fk ] ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !128
  %i.qb = getelementptr i8, ptr %.01911, i64 16
  store ptr %i.qa, ptr %i.qb, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.gh

bb.fm:                                            ; preds = %bb.fh
  %i.qc = add i16 %5, 1                           ; 2 uses
  %i.qd = call fastcc ptr @parse_string_part(ptr noundef nonnull %0, i16 noundef zeroext %i.qc) ; 10 uses
  %i.qe = icmp eq ptr %i.qd, null
  br i1 %i.qe, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.qf = getelementptr i8, ptr %0, i64 328
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !256
  %i.qh = getelementptr i8, ptr %0, i64 336
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !255
  %i.qj = call fastcc ptr @pm_missing_node_create(ptr noundef nonnull %0, ptr noundef %i.qg, ptr noundef %i.qi)
  br label %bb.gh

bb.fo:                                            ; preds = %bb.fm
  %i.qk = load i16, ptr %i.qd, align 8, !tbaa !115
  %i.ql = icmp eq i16 %i.qk, 141
end_hunk_2
begin_hunk_3_@parse_expression_prefix:bb.a
bb.io:                                            ; preds = %thread-pre-split3550, %accept1.exit2468
  %.val2161 = phi i32 [ %.val2161.pr, %thread-pre-split3550 ], [ %.val.i2467, %accept1.exit2468 ]
  %.sroa.03209.0 = phi i1 [ %i.yv, %thread-pre-split3550 ], [ true, %accept1.exit2468 ] ; 3 uses
  %.sroa.83214.0 = phi ptr [ %.sroa.83214.0.ph, %thread-pre-split3550 ], [ %.val2232, %accept1.exit2468 ] ; 2 uses
  %.sroa.103217.0 = phi ptr [ %.sroa.103217.0.copyload3219, %thread-pre-split3550 ], [ %.val2232, %accept1.exit2468 ] ; 3 uses
  switch i32 %.val2161, label %bb.ip [
    i32 10, label %.thread3262
    i32 8, label %.thread3262
    i32 6, label %.thread3262
  ]

bb.ip:                                            ; preds = %bb.io
  %i.yw = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 12, i16 noundef zeroext %i.xz) ; 3 uses
  %i.yx = call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 3 uses
  %i.yy = icmp eq ptr %i.yx, null
  br i1 %i.yy, label %bb.iq, label %pm_node_alloc.exit.i

.thread3262:                                      ; preds = %bb.io, %bb.io, %bb.io
  %i.yz = call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 2 uses
  %i.za = icmp eq ptr %i.yz, null
  br i1 %i.za, label %bb.iq, label %pm_node_alloc.exit.i.thread

bb.iq:                                            ; preds = %.thread3262, %bb.ip
  %i.zb = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.zc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.zb, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.ip
  %.not.i2475 = icmp eq ptr %i.yw, null
  br i1 %.not.i2475, label %pm_node_alloc.exit.i.thread, label %bb.ir

pm_node_alloc.exit.i.thread:                      ; preds = %.thread3262, %pm_node_alloc.exit.i
  %i.zd = phi ptr [ %i.yx, %pm_node_alloc.exit.i ], [ %i.yz, %.thread3262 ] ; 2 uses
  %i.ze = load i32, ptr %0, align 8, !tbaa !109
  %i.zf = add i32 %i.ze, 1                        ; 4 uses
  br i1 %.sroa.03209.0, label %.thread.i, label %.thread4.i

.thread4.i:                                       ; preds = %pm_node_alloc.exit.i.thread
  store i32 %i.zf, ptr %0, align 8, !tbaa !109
  br label %pm_case_match_node_condition_append.exit

.thread.i:                                        ; preds = %pm_node_alloc.exit.i.thread
  %i.zg = getelementptr i8, ptr %.01920, i64 16
  %.02.i = load ptr, ptr %i.zg, align 8, !tbaa !14
  store i32 %i.zf, ptr %0, align 8, !tbaa !109
  br label %pm_case_match_node_condition_append.exit

bb.ir:                                            ; preds = %pm_node_alloc.exit.i
  %i.zh = getelementptr i8, ptr %i.yw, i64 16
  %.0.i2476 = load ptr, ptr %i.zh, align 8, !tbaa !14
  %i.zi = load i32, ptr %0, align 8, !tbaa !109
  %i.zj = add i32 %i.zi, 1                        ; 2 uses
  store i32 %i.zj, ptr %0, align 8, !tbaa !109
  %spec.select = select i1 %.sroa.03209.0, ptr null, ptr %.sroa.83214.0
  %spec.select3328 = select i1 %.sroa.03209.0, ptr null, ptr %.sroa.103217.0
  br label %pm_case_match_node_condition_append.exit

pm_case_match_node_condition_append.exit:         ; preds = %bb.ir, %.thread.i, %.thread4.i
  %.0192132643268 = phi ptr [ null, %.thread.i ], [ %i.yw, %bb.ir ], [ null, %.thread4.i ]
  %i.zk = phi ptr [ %i.zd, %.thread.i ], [ %i.yx, %bb.ir ], [ %i.zd, %.thread4.i ] ; 10 uses
  %i.zl = phi i32 [ %i.zf, %.thread.i ], [ %i.zj, %bb.ir ], [ %i.zf, %.thread4.i ]
  %.03.i = phi ptr [ %.02.i, %.thread.i ], [ %.0.i2476, %bb.ir ], [ %.sroa.103217.0, %.thread4.i ]
  %.sroa.10.0.i = phi ptr [ null, %.thread.i ], [ %spec.select, %bb.ir ], [ %.sroa.83214.0, %.thread4.i ]
  %.sroa.12.0.i = phi ptr [ null, %.thread.i ], [ %spec.select3328, %bb.ir ], [ %.sroa.103217.0, %.thread4.i ]
  store i16 71, ptr %i.zk, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i2477 = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  store i32 %i.zl, ptr %.sroa.3.0..sroa_idx.i2477, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2478 = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  store ptr %.sroa.33227.0.copyload, ptr %.sroa.4.0..sroa_idx.i2478, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i2479 = getelementptr inbounds nuw i8, ptr %i.zk, i64 16 ; 2 uses
  store ptr %.03.i, ptr %.sroa.5.0..sroa_idx.i2479, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2480 = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  store ptr %.01920, ptr %.sroa.6.0..sroa_idx.i2480, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx.i2481 = getelementptr inbounds nuw i8, ptr %i.zk, i64 32
  store ptr %.0192132643268, ptr %.sroa.7.0..sroa_idx.i2481, align 8, !tbaa !136
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 40
  store <2 x ptr> %i.ye, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 56
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i2483 = getelementptr inbounds nuw i8, ptr %i.zk, i64 64
  store ptr %.sroa.12.0.i, ptr %.sroa.12.0..sroa_idx.i2483, align 8, !tbaa !14
  call void @pm_node_list_append(ptr noundef %i.yb, ptr noundef nonnull %i.zk) #27
  %i.zm = load ptr, ptr %.sroa.5.0..sroa_idx.i2479, align 8, !tbaa !134
  store ptr %i.zm, ptr %i.yc, align 8, !tbaa !341
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  %.val2105 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.zn = icmp eq i32 %.val2105, 10
  br i1 %i.zn, label %bb.ih, label %._crit_edge3401, !llvm.loop !343

._crit_edge3401:                                  ; preds = %pm_case_match_node_condition_append.exit, %bb.ig
  %i.zo = getelementptr i8, ptr %i.xr, i64 32
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !344
  %i.zq = icmp eq i64 %i.zp, 0
  br i1 %i.zq, label %bb.is, label %bb.it

bb.is:                                            ; preds = %._crit_edge3401
  %i.zr = getelementptr i8, ptr %0, i64 472
  %i.zs = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.zr, ptr noundef %.val2260, ptr noundef %.val2261, i32 noundef 45) #27 ; 0 uses
  br label %bb.it

bb.it:                                            ; preds = %._crit_edge3401, %bb.is, %bb.id
  %.01919 = phi ptr [ %i.ux, %bb.id ], [ %i.xr, %bb.is ], [ %i.xr, %._crit_edge3401 ] ; 5 uses
  %.val.i2486 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2486, label %accept2.exit2488 [
    i32 17, label %bb.iu
    i32 14, label %bb.iu
  ]

bb.iu:                                            ; preds = %bb.it, %bb.it
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2489.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept2.exit2488

accept2.exit2488:                                 ; preds = %bb.it, %bb.iu
  %.val.i2489 = phi i32 [ %.val.i2486, %bb.it ], [ %.val.i2489.pr, %bb.iu ]
  %i.zt = icmp eq i32 %.val.i2489, 6
  br i1 %i.zt, label %bb.iv, label %accept1.exit2490

bb.iv:                                            ; preds = %accept2.exit2488
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false), !tbaa.struct !163
  %.val2104 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.zu = icmp eq i32 %.val2104, 8
  br i1 %i.zu, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.zv = add i16 %5, 1
  %i.zw = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 24, i16 noundef zeroext %i.zv)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iv, %bb.iw
  %.sink3637 = phi ptr [ %i.zw, %bb.iw ], [ null, %bb.iv ]
  %i.zx = call fastcc ptr @pm_else_node_create(ptr noundef nonnull %0, ptr noundef %34, ptr noundef %.sink3637, ptr noundef nonnull %i.b) ; 2 uses
  %.sink.in = getelementptr i8, ptr %i.zx, i64 16
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !345
  %i.zy = getelementptr i8, ptr %.01919, i64 56
  store ptr %i.zx, ptr %i.zy, align 8, !tbaa !347
  %i.zz = getelementptr i8, ptr %.01919, i64 16
  store ptr %.sink, ptr %i.zz, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %accept1.exit2490

accept1.exit2490:                                 ; preds = %accept2.exit2488, %bb.ix
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.ud, ptr noundef %29, i1 noundef zeroext false, i1 noundef zeroext false)
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 46, ptr noundef %29)
  %.val2282.sink.in = getelementptr i8, ptr %0, i64 328
  %.val2283.sink3442.in = getelementptr i8, ptr %0, i64 336
  %i.aaa = getelementptr i8, ptr %.01919, i64 16
  %i.aab = getelementptr i8, ptr %.01919, i64 80
  %.val2283.sink3442 = load ptr, ptr %.val2283.sink3442.in, align 8, !tbaa !128
  %i.aac = load <2 x ptr>, ptr %.val2282.sink.in, align 8, !tbaa !14
  store ptr %.val2283.sink3442, ptr %i.aaa, align 8, !tbaa !14
  store <2 x ptr> %i.aac, ptr %i.aab, align 8, !tbaa !14
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.ug)
  call void @pm_node_list_free(ptr noundef nonnull %30) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %bb.iy

bb.iy:                                            ; preds = %accept1.exit2490, %bb.hi
  %.7 = phi ptr [ %i.up, %bb.hi ], [ %.01919, %accept1.exit2490 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %.loopexit3341

bb.iz:                                            ; preds = %bb.a
  %i.aad = tail call fastcc i64 @token_newline_index(ptr noundef nonnull %0)
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  %i.aae = getelementptr i8, ptr %0, i64 320      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %i.aae, i64 24, i1 false), !tbaa.struct !163
  %.val.i2493 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2493, label %accept2.exit2495 [
    i32 17, label %bb.ja
    i32 14, label %bb.ja
  ]

bb.ja:                                            ; preds = %bb.iz, %bb.iz
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2258.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept2.exit2495

accept2.exit2495:                                 ; preds = %bb.iz, %bb.ja
  %.val2258 = phi i32 [ %.val.i2493, %bb.iz ], [ %.val2258.pre, %bb.ja ]
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.aaf = getelementptr i8, ptr %0, i64 680      ; 2 uses
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !100
  store ptr %36, ptr %i.aaf, align 8, !tbaa !100
  %switch.tableidx = add i32 %.val2258, -6        ; 2 uses
  %i.aah = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 45, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond3707 = select i1 %i.aah, i1 %switch.lobit, i1 false
  br i1 %or.cond3707, label %accept2.exit2501, label %bb.jb

bb.jb:                                            ; preds = %accept2.exit2495
  %i.aai = getelementptr i8, ptr %0, i64 24       ; 4 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !7
  %i.aak = shl i32 %i.aaj, 1
  store i32 %i.aak, ptr %i.aai, align 4, !tbaa !7
  %i.aal = add i16 %5, 1
  %i.aam = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 1, i16 noundef zeroext %i.aal) ; 2 uses
  %i.aan = load i32, ptr %i.aai, align 4, !tbaa !7
  %i.aao = lshr i32 %i.aan, 1
  store i32 %i.aao, ptr %i.aai, align 4, !tbaa !7
  %.val.i2499 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val.i2499, label %accept2.exit2501 [
    i32 17, label %bb.jc
    i32 14, label %bb.jc
  ]

bb.jc:                                            ; preds = %bb.jb, %bb.jb
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit2501

accept2.exit2501:                                 ; preds = %accept2.exit2495, %bb.jb, %bb.jc
  %.01923 = phi ptr [ %i.aam, %bb.jc ], [ %i.aam, %bb.jb ], [ null, %accept2.exit2495 ]
  %i.aap = call fastcc ptr @pm_begin_node_create(ptr noundef nonnull %0, ptr noundef %35, ptr noundef %.01923) ; 4 uses
  %i.aaq = add i16 %5, 1
  call fastcc void @parse_rescues(ptr noundef nonnull %0, i64 noundef %i.aad, ptr noundef nonnull %35, ptr noundef %i.aap, i32 noundef 1, i16 noundef zeroext %i.aaq)
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 32, ptr noundef %35)
  %i.aar = getelementptr i8, ptr %0, i64 336
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !255
  %i.aat = getelementptr i8, ptr %i.aap, i64 16
  store ptr %i.aas, ptr %i.aat, align 8, !tbaa !348
  call fastcc void @pm_begin_node_end_keyword_set(ptr noundef %i.aap, ptr noundef nonnull %i.aae)
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.aag)
  call void @pm_node_list_free(ptr noundef nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %.loopexit3341

bb.jd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %i.aau = getelementptr i8, ptr %0, i64 680      ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !100
  store ptr %37, ptr %i.aau, align 8, !tbaa !100
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.aaw = getelementptr i8, ptr %0, i64 352
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !166
  %i.aay = getelementptr i8, ptr %0, i64 360
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !76
  %i.aba = getelementptr i8, ptr %0, i64 472
  %i.abb = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.aba, ptr noundef %i.aax, ptr noundef %i.aaz, i32 noundef 264) #27 ; 0 uses
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.jd
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.abc = getelementptr i8, ptr %0, i64 320      ; 2 uses
  %.sroa.33203.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.33203.0.copyload = load ptr, ptr %.sroa.33203.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.53204.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.53204.0.copyload = load ptr, ptr %.sroa.53204.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 28, i32 noundef 33)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %i.abc, i64 24, i1 false), !tbaa.struct !163
  %i.abd = add i16 %5, 1
  %i.abe = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 45, i16 noundef zeroext %i.abd)
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 34, ptr noundef %38)
  %i.abf = getelementptr i8, ptr %0, i64 504
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !253
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !215
  switch i32 %i.abh, label %bb.jg [
    i32 45, label %bb.jh
    i32 36, label %bb.jh
  ]

bb.jg:                                            ; preds = %bb.jf
  %i.abi = getelementptr i8, ptr %0, i64 472
  %i.abj = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.abi, ptr noundef %.sroa.33203.0.copyload, ptr noundef %.sroa.53204.0.copyload, i32 noundef 35) #27 ; 0 uses
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jf, %bb.jf, %bb.jg
  call fastcc void @flush_block_exits(ptr noundef nonnull %0, ptr noundef %i.aav)
  call void @pm_node_list_free(ptr noundef nonnull %37) #27
  %i.abk = getelementptr inbounds nuw i8, ptr %38, i64 8
  %.val2286 = load ptr, ptr %i.abk, align 8
  %i.abl = getelementptr inbounds nuw i8, ptr %38, i64 16
  %.val2287 = load ptr, ptr %i.abl, align 8
  %i.abm = call fastcc ptr @pm_pre_execution_node_create(ptr noundef nonnull %0, ptr %.sroa.33203.0.copyload, ptr %.sroa.53204.0.copyload, ptr %.val2286, ptr %.val2287, ptr noundef %i.abe, ptr noundef nonnull %i.abc)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  br label %.loopexit3341

bb.ji:                                            ; preds = %bb.a, %bb.a, %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  %i.abn = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %i.abn, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %40, i8 0, i64 56, i1 false)
  %i.abo = load i32, ptr %i.b, align 8, !tbaa !170
  %i.abp = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.abo)
  %.pre3461 = load i32, ptr %i.b, align 8, !tbaa !170 ; 3 uses
  %i.abq = add i32 %.pre3461, -159
  %i.abr = icmp ult i32 %i.abq, 2
  %or.cond3639 = select i1 %i.abp, i1 true, i1 %i.abr
  br i1 %or.cond3639, label %bb.jj, label %bb.jm

bb.jj:                                            ; preds = %bb.ji
  %i.abs = zext i32 %.pre3461 to i64
  %i.abt = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.abs
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !286
  %i.abv = add i32 %i.abu, -22
  %or.cond14 = icmp ult i32 %i.abv, -21
  br i1 %or.cond14, label %bb.jk, label %bb.jm

bb.jk:                                            ; preds = %bb.jj
  %.sroa.4312.0..sroa_idx = getelementptr i8, ptr %0, i64 352
  %.sroa.4312.0.copyload = load ptr, ptr %.sroa.4312.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %0, i64 360
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %i.abw = add i16 %5, 1
  call fastcc void @parse_arguments(ptr noundef nonnull %0, ptr noundef %40, i1 noundef zeroext false, i32 noundef 1, i16 noundef zeroext %i.abw)
  %i.abx = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.aby = load ptr, ptr %i.abx, align 8          ; 3 uses
  %i.abz = icmp eq ptr %i.aby, null
  %or.cond17.not = select i1 %2, i1 true, i1 %i.abz
  br i1 %or.cond17.not, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.aca = getelementptr i8, ptr %0, i64 472
  %i.acb = tail call ptr @pm_token_type_human(i32 noundef %.pre3461) #27
  %i.acc = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.aca, ptr noundef %.sroa.4312.0.copyload, ptr noundef %.sroa.5.0.copyload, i32 noundef 90, ptr noundef %i.acb) #27 ; 0 uses
  br label %bb.jm

bb.jm:                                            ; preds = %bb.ji, %bb.jj, %bb.jl, %bb.jk
  %i.acd = phi ptr [ null, %bb.ji ], [ null, %bb.jj ], [ %i.aby, %bb.jl ], [ %i.aby, %bb.jk ] ; 3 uses
  %i.ace = load i32, ptr %39, align 8, !tbaa !126
  switch i32 %i.ace, label %bb.js [
    i32 77, label %bb.jn
    i32 89, label %bb.jp
    i32 96, label %bb.jr
  ]

bb.jn:                                            ; preds = %bb.jm
  %i.acf = call fastcc ptr @pm_break_node_create(ptr noundef nonnull %0, ptr noundef %39, ptr noundef %i.acd) ; 3 uses
  %i.acg = getelementptr i8, ptr %0, i64 695
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !55, !range !45, !noundef !46
  %i.aci = trunc nuw i8 %i.ach to i1
  br i1 %i.aci, label %bb.jt, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  tail call fastcc void @parse_block_exit(ptr noundef nonnull %0, ptr noundef %i.acf)
  br label %bb.jt

bb.jp:                                            ; preds = %bb.jm
  %i.acj = call fastcc ptr @pm_next_node_create(ptr noundef nonnull %0, ptr noundef %39, ptr noundef %i.acd) ; 3 uses
  %i.ack = getelementptr i8, ptr %0, i64 695
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !55, !range !45, !noundef !46
  %i.acm = trunc nuw i8 %i.acl to i1
  br i1 %i.acm, label %bb.jt, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  tail call fastcc void @parse_block_exit(ptr noundef nonnull %0, ptr noundef %i.acj)
  br label %bb.jt

bb.jr:                                            ; preds = %bb.jm
  %i.acn = call fastcc ptr @pm_return_node_create(ptr noundef nonnull %0, ptr noundef %39, ptr noundef %i.acd) ; 2 uses
  tail call fastcc void @parse_return(ptr noundef nonnull %0, ptr noundef %i.acn)
  br label %bb.jt

bb.js:                                            ; preds = %bb.jm
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 18534, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.jt:                                            ; preds = %bb.jp, %bb.jq, %bb.jn, %bb.jo, %bb.jr
  %.8 = phi ptr [ %i.acn, %bb.jr ], [ %i.acf, %bb.jn ], [ %i.acf, %bb.jo ], [ %i.acj, %bb.jq ], [ %i.acj, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  br label %.loopexit3341

bb.ju:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  %i.aco = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(24) %i.aco, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %42, i8 0, i64 56, i1 false)
  %i.acp = add i16 %5, 1
  %i.acq = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %42, i1 noundef zeroext true, i1 noundef zeroext %2, i16 noundef zeroext %i.acp) ; 0 uses
  %i.acr = load ptr, ptr %42, align 8, !tbaa !352
  %i.acs = icmp eq ptr %i.acr, null
  %i.act = getelementptr inbounds nuw i8, ptr %42, i64 16
  %i.acu = load ptr, ptr %i.act, align 8
  %i.acv = icmp eq ptr %i.acu, null
  %or.cond20 = select i1 %i.acs, i1 %i.acv, i1 false
  br i1 %or.cond20, label %bb.jv, label %bb.jy

bb.jv:                                            ; preds = %bb.ju
  %i.acw = getelementptr inbounds nuw i8, ptr %42, i64 40
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !314 ; 3 uses
  %i.acy = icmp eq ptr %i.acx, null
  br i1 %i.acy, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.acz = load i16, ptr %i.acx, align 8, !tbaa !115
  %i.ada = icmp eq i16 %i.acz, 14
  br i1 %i.ada, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.adb = call fastcc ptr @pm_forwarding_super_node_create(ptr noundef nonnull %0, ptr noundef %41, ptr %i.acx)
  br label %bb.jz

bb.jy:                                            ; preds = %bb.jw, %bb.ju
  %i.adc = call fastcc ptr @pm_super_node_create(ptr noundef nonnull %0, ptr noundef %41, ptr noundef %42)
  br label %bb.jz

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %.9 = phi ptr [ %i.adb, %bb.jx ], [ %i.adc, %bb.jy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27
  br label %.loopexit3341

bb.ka:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27
  %i.add = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, ptr noundef nonnull align 8 dereferenceable(24) %i.add, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %44, i8 0, i64 56, i1 false)
  %i.ade = add i16 %5, 1
  %i.adf = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %44, i1 noundef zeroext false, i1 noundef zeroext %2, i16 noundef zeroext %i.ade) ; 0 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %44, i64 40 ; 3 uses
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !314 ; 3 uses
  %.not2027 = icmp eq ptr %i.adh, null
  br i1 %.not2027, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.adi = getelementptr i8, ptr %i.adh, i64 8
  %.val2171 = load ptr, ptr %i.adi, align 8, !tbaa !133
  %i.adj = getelementptr i8, ptr %i.adh, i64 16
  %.val2172 = load ptr, ptr %i.adj, align 8, !tbaa !134
  %i.adk = getelementptr i8, ptr %0, i64 472
  %i.adl = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.adk, ptr noundef %.val2171, ptr noundef %.val2172, i32 noundef 279) #27 ; 0 uses
  %i.adm = load ptr, ptr %i.adg, align 8, !tbaa !314 ; 2 uses
  tail call void @pm_visit_node(ptr noundef %i.adm, ptr noundef nonnull @pm_node_unreference_each, ptr noundef nonnull %0) #27
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef %i.adm) #27
  store ptr null, ptr %i.adg, align 8, !tbaa !314
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.adn = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !312
  %i.adp = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.adq = call fastcc ptr @pm_yield_node_create(ptr noundef nonnull %0, ptr noundef %43, ptr noundef %44, ptr noundef %i.ado, ptr noundef nonnull %i.adp) ; 2 uses
  %i.adr = getelementptr i8, ptr %0, i64 694
  %i.ads = load i8, ptr %i.adr, align 2, !tbaa !57, !range !45, !noundef !46
  %i.adt = trunc nuw i8 %i.ads to i1
  br i1 %i.adt, label %bb.kf, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.adu = getelementptr i8, ptr %0, i64 695
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !55, !range !45, !noundef !46
  %i.adw = trunc nuw i8 %i.adv to i1
  br i1 %i.adw, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  tail call fastcc void @parse_yield(ptr noundef nonnull %0, ptr noundef %i.adq)
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27
  br label %.loopexit3341

bb.kg:                                            ; preds = %bb.a
  %i.adx = tail call fastcc i64 @token_newline_index(ptr noundef nonnull %0) ; 6 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  %i.ady = getelementptr i8, ptr %0, i64 320      ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) %i.ady, i64 24, i1 false), !tbaa.struct !163
  %i.adz = getelementptr i8, ptr %0, i64 20       ; 6 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !7
  %i.aeb = shl i32 %i.aea, 1
  store i32 %i.aeb, ptr %i.adz, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %i.aec = getelementptr i8, ptr %0, i64 680      ; 2 uses
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !100 ; 2 uses
  store ptr %46, ptr %i.aec, align 8, !tbaa !100
  %.val.i2503 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.aee = icmp eq i32 %.val.i2503, 117
  br i1 %i.aee, label %bb.kh, label %accept1.exit2504

bb.kh:                                            ; preds = %bb.kg
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.33200.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.33200.0.copyload = load ptr, ptr %.sroa.33200.0..sroa_idx, align 8, !tbaa !14
  %.sroa.43201.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.43201.0.copyload = load ptr, ptr %.sroa.43201.0..sroa_idx, align 8, !tbaa !14
  %i.aef = add i16 %5, 1                          ; 4 uses
  %i.aeg = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 94, i16 noundef zeroext %i.aef), !inline_history !297 ; 2 uses
  call fastcc void @pm_assert_value_expression(ptr noundef nonnull %0, ptr noundef %i.aeg), !inline_history !297
  call fastcc void @pm_parser_scope_push(ptr noundef nonnull %0, i1 noundef zeroext true)
  %.val2147 = load i32, ptr %i.b, align 8, !tbaa !170 ; 4 uses
  switch i32 %.val2147, label %bb.ki [
    i32 17, label %bb.kj
    i32 14, label %bb.kj
  ]

bb.ki:                                            ; preds = %bb.kh
  %i.aeh = getelementptr i8, ptr %0, i64 472
  %i.aei = getelementptr i8, ptr %0, i64 352
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !166
  %i.aek = getelementptr i8, ptr %0, i64 360
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !76
  %i.aem = call ptr @pm_token_type_human(i32 noundef %.val2147) #27
  %i.aen = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.aeh, ptr noundef %i.aej, ptr noundef %i.ael, i32 noundef 113, ptr noundef %i.aem) #27 ; 0 uses
  %.val2257.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %bb.kj

bb.kj:                                            ; preds = %bb.kh, %bb.kh, %bb.ki
  %.val21463272 = phi i32 [ %.val2147, %bb.kh ], [ %.val2147, %bb.kh ], [ %.val2257.pre, %bb.ki ]
  switch i32 %.val21463272, label %bb.kk [
    i32 11, label %.split1977
    i32 9, label %.split1977
    i32 6, label %bb.ko
    i32 8, label %bb.ko
  ]

bb.kk:                                            ; preds = %bb.kj
  %i.aeo = getelementptr i8, ptr %0, i64 24       ; 4 uses
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !7
  %i.aeq = shl i32 %i.aep, 1
  store i32 %i.aeq, ptr %i.aeo, align 4, !tbaa !7
  %i.aer = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 47, i16 noundef zeroext %i.aef) ; 4 uses
  %i.aes = load i32, ptr %i.aeo, align 4, !tbaa !7
  %i.aet = lshr i32 %i.aes, 1
  store i32 %i.aet, ptr %i.aeo, align 4, !tbaa !7
  %.val2146 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2146, label %bb.ko [
    i32 11, label %bb.kl
    i32 9, label %bb.kl
  ]

bb.kl:                                            ; preds = %bb.kk, %bb.kk
  %i.aeu = icmp eq ptr %i.aer, null
  br i1 %i.aeu, label %.split1977, label %bb.km

.split1977:                                       ; preds = %bb.kj, %bb.kj, %bb.kl
  %i.aev = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !127
  %i.aex = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.adx, ptr noundef nonnull %45, ptr noundef %i.aew, ptr noundef null, i32 noundef 7, i16 noundef zeroext %i.aef)
  br label %bb.kp

bb.km:                                            ; preds = %bb.kl
  %i.aey = load i16, ptr %i.aer, align 8, !tbaa !115
  %i.aez = icmp eq i16 %i.aey, 140
  br i1 %i.aez, label %.split, label %bb.kn

.split:                                           ; preds = %bb.km
  %i.afa = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !127
  %i.afc = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.adx, ptr noundef nonnull %45, ptr noundef %i.afb, ptr noundef nonnull %i.aer, i32 noundef 7, i16 noundef zeroext %i.aef)
  br label %bb.kp

bb.kn:                                            ; preds = %bb.km
  call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.2, i32 noundef 18605, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.ko:                                            ; preds = %bb.kj, %bb.kj, %bb.kk
  %.019243275 = phi ptr [ null, %bb.kj ], [ %i.aer, %bb.kk ], [ null, %bb.kj ]
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.adx, ptr noundef %45, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.kp

bb.kp:                                            ; preds = %.split, %.split1977, %bb.ko
  %.11925 = phi ptr [ %.019243275, %bb.ko ], [ %i.afc, %.split ], [ %i.aex, %.split1977 ]
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 50, ptr noundef %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  %i.afd = getelementptr i8, ptr %0, i64 496
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !59
  %i.aff = getelementptr i8, ptr %i.afe, i64 8
  call fastcc void @pm_locals_order(ptr noundef nonnull %0, ptr noundef %i.aff, ptr noundef %47, i1 noundef zeroext false)
  call fastcc void @pm_parser_scope_pop(ptr noundef nonnull %0)
  %i.afg = load i32, ptr %i.adz, align 4, !tbaa !7
  %i.afh = lshr i32 %i.afg, 1
  store i32 %i.afh, ptr %i.adz, align 4, !tbaa !7
  call fastcc void @flush_block_exits(ptr noundef nonnull %0, ptr noundef %i.aed)
  call void @pm_node_list_free(ptr noundef nonnull %46) #27
  %i.afi = getelementptr inbounds nuw i8, ptr %45, i64 8
  %.val2289 = load ptr, ptr %i.afi, align 8
  %i.afj = getelementptr inbounds nuw i8, ptr %45, i64 16
  %.val2290 = load ptr, ptr %i.afj, align 8
  %i.afk = call fastcc ptr @pm_singleton_class_node_create(ptr noundef nonnull %0, ptr noundef %47, ptr %.val2289, ptr %.val2290, ptr %.sroa.33200.0.copyload, ptr %.sroa.43201.0.copyload, ptr noundef %i.aeg, ptr noundef %.11925, ptr noundef nonnull %i.ady)
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  br label %bb.lg

accept1.exit2504:                                 ; preds = %bb.kg
  %i.afl = add i16 %5, 1                          ; 5 uses
  %i.afm = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 48, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 48, i16 noundef zeroext %i.afl) ; 4 uses
  %.sroa.03195.0.copyload = load i32, ptr %i.ady, align 8, !tbaa !7
  %.sroa.43197.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.43197.0.copyload = load ptr, ptr %.sroa.43197.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.63198.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.63198.0.copyload = load ptr, ptr %.sroa.63198.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.not2025 = icmp eq i32 %.sroa.03195.0.copyload, 41
  br i1 %.not2025, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %accept1.exit2504
  %i.afn = getelementptr i8, ptr %0, i64 472
  %i.afo = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.afn, ptr noundef %.sroa.43197.0.copyload, ptr noundef %.sroa.63198.0.copyload, i32 noundef 48) #27 ; 0 uses
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %accept1.exit2504
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27
  %.val2103 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.afp = icmp eq i32 %.val2103, 114
  br i1 %i.afp, label %bb.ks, label %.thread3551

.thread3551:                                      ; preds = %bb.kr
  %i.afq = getelementptr i8, ptr %0, i64 304
  %.val2231 = load ptr, ptr %i.afq, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %48, align 8, !tbaa !7
  %.sroa.43192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 4
  store i32 0, ptr %.sroa.43192.0..sroa_idx, align 4
  %.sroa.53193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %.val2231, ptr %.sroa.53193.0..sroa_idx, align 8, !tbaa !14
  %.sroa.63194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %.val2231, ptr %.sroa.63194.0..sroa_idx, align 8, !tbaa !14
  call fastcc void @pm_parser_scope_push(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %bb.ku

bb.ks:                                            ; preds = %bb.kr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !163
  %i.afr = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.afr, align 4, !tbaa !195
  %i.afs = getelementptr i8, ptr %0, i64 696
  store i8 1, ptr %i.afs, align 8, !tbaa !164
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.aft = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 49, i16 noundef zeroext %i.afl), !inline_history !297 ; 3 uses
  call fastcc void @pm_assert_value_expression(ptr noundef nonnull %0, ptr noundef %i.aft), !inline_history !297
  %.pre3459 = load i32, ptr %48, align 8, !tbaa !126
  %i.afu = icmp eq i32 %.pre3459, 164
  call fastcc void @pm_parser_scope_push(ptr noundef nonnull %0, i1 noundef zeroext true)
  br i1 %i.afu, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  call fastcc void @expect2(ptr noundef nonnull %0, i32 noundef 14, i32 noundef 17, i32 noundef 51)
  br label %accept2.exit2512thread-pre-split

bb.ku:                                            ; preds = %.thread3551, %bb.ks
  %.019283555 = phi ptr [ null, %.thread3551 ], [ %i.aft, %bb.ks ] ; 2 uses
  %.val.i2510 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2510, label %accept2.exit2512 [
    i32 17, label %bb.kv
    i32 14, label %bb.kv
  ]

bb.kv:                                            ; preds = %bb.ku, %bb.ku
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit2512thread-pre-split

accept2.exit2512thread-pre-split:                 ; preds = %bb.kt, %bb.kv
  %.019283554.ph = phi ptr [ %i.aft, %bb.kt ], [ %.019283555, %bb.kv ]
  %.val2256.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept2.exit2512

accept2.exit2512:                                 ; preds = %accept2.exit2512thread-pre-split, %bb.ku
  %.val2256 = phi i32 [ %.val2256.pr, %accept2.exit2512thread-pre-split ], [ %.val.i2510, %bb.ku ]
  %.019283554 = phi ptr [ %.019283554.ph, %accept2.exit2512thread-pre-split ], [ %.019283555, %bb.ku ]
  switch i32 %.val2256, label %bb.kw [
    i32 11, label %.split1979
    i32 9, label %.split1979
    i32 6, label %bb.la
    i32 8, label %bb.la
  ]

bb.kw:                                            ; preds = %accept2.exit2512
  %i.afv = getelementptr i8, ptr %0, i64 24       ; 4 uses
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !7
  %i.afx = shl i32 %i.afw, 1
  store i32 %i.afx, ptr %i.afv, align 4, !tbaa !7
  %i.afy = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 13, i16 noundef zeroext %i.afl) ; 4 uses
  %i.afz = load i32, ptr %i.afv, align 4, !tbaa !7
  %i.aga = lshr i32 %i.afz, 1
  store i32 %i.aga, ptr %i.afv, align 4, !tbaa !7
  %.val2145 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2145, label %bb.la [
    i32 11, label %bb.kx
    i32 9, label %bb.kx
  ]

bb.kx:                                            ; preds = %bb.kw, %bb.kw
  %i.agb = icmp eq ptr %i.afy, null
  br i1 %i.agb, label %.split1979, label %bb.ky

.split1979:                                       ; preds = %accept2.exit2512, %accept2.exit2512, %bb.kx
  %i.agc = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !127
  %i.age = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.adx, ptr noundef nonnull %45, ptr noundef %i.agd, ptr noundef null, i32 noundef 3, i16 noundef zeroext %i.afl)
  br label %bb.lb

bb.ky:                                            ; preds = %bb.kx
  %i.agf = load i16, ptr %i.afy, align 8, !tbaa !115
  %i.agg = icmp eq i16 %i.agf, 140
  br i1 %i.agg, label %.split1978, label %bb.kz

.split1978:                                       ; preds = %bb.ky
  %i.agh = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !127
  %i.agj = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.adx, ptr noundef nonnull %45, ptr noundef %i.agi, ptr noundef nonnull %i.afy, i32 noundef 3, i16 noundef zeroext %i.afl)
  br label %bb.lb

bb.kz:                                            ; preds = %bb.ky
  call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.2, i32 noundef 18663, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.la:                                            ; preds = %accept2.exit2512, %accept2.exit2512, %bb.kw
  %.019293283 = phi ptr [ null, %accept2.exit2512 ], [ %i.afy, %bb.kw ], [ null, %accept2.exit2512 ]
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.adx, ptr noundef %45, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.lb

bb.lb:                                            ; preds = %.split1978, %.split1979, %bb.la
  %.11930 = phi ptr [ %.019293283, %bb.la ], [ %i.agj, %.split1978 ], [ %i.age, %.split1979 ]
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 50, ptr noundef %45)
  %i.agk = getelementptr i8, ptr %0, i64 504
  %.06.i2517 = load ptr, ptr %i.agk, align 8, !tbaa !213 ; 2 uses
  %.not7.i = icmp eq ptr %.06.i2517, null
  br i1 %.not7.i, label %context_def_p.exit, label %.lr.ph.i2518

.lr.ph.i2518:                                     ; preds = %bb.lb, %bb.lc
  %.08.i2519 = phi ptr [ %.0.i2520, %bb.lc ], [ %.06.i2517, %bb.lb ] ; 2 uses
  %i.agl = load i32, ptr %.08.i2519, align 8, !tbaa !215
  switch i32 %i.agl, label %bb.lc [
    i32 17, label %bb.ld
    i32 21, label %bb.ld
    i32 18, label %bb.ld
    i32 20, label %bb.ld
    i32 19, label %bb.ld
    i32 13, label %context_def_p.exit
    i32 14, label %context_def_p.exit
    i32 16, label %context_def_p.exit
    i32 15, label %context_def_p.exit
    i32 37, label %context_def_p.exit
    i32 38, label %context_def_p.exit
    i32 40, label %context_def_p.exit
    i32 39, label %context_def_p.exit
    i32 47, label %context_def_p.exit
    i32 48, label %context_def_p.exit
    i32 50, label %context_def_p.exit
    i32 49, label %context_def_p.exit
  ]

bb.lc:                                            ; preds = %.lr.ph.i2518
  %i.agm = getelementptr i8, ptr %.08.i2519, i64 8
  %.0.i2520 = load ptr, ptr %i.agm, align 8, !tbaa !213 ; 2 uses
  %.not.i2521 = icmp eq ptr %.0.i2520, null
  br i1 %.not.i2521, label %context_def_p.exit, label %.lr.ph.i2518, !llvm.loop !353

bb.ld:                                            ; preds = %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518
  %i.agn = getelementptr inbounds nuw i8, ptr %45, i64 8
  %.val2062 = load ptr, ptr %i.agn, align 8, !tbaa !127
  %i.ago = getelementptr inbounds nuw i8, ptr %45, i64 16
  %.val2063 = load ptr, ptr %i.ago, align 8, !tbaa !128
  %i.agp = getelementptr i8, ptr %0, i64 472
  %i.agq = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.agp, ptr noundef %.val2062, ptr noundef %.val2063, i32 noundef 47) #27 ; 0 uses
  br label %context_def_p.exit

context_def_p.exit:                               ; preds = %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %.lr.ph.i2518, %bb.lc, %bb.lb, %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  %i.agr = getelementptr i8, ptr %0, i64 496
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !59
  %i.agt = getelementptr i8, ptr %i.ags, i64 8
  call fastcc void @pm_locals_order(ptr noundef %0, ptr noundef %i.agt, ptr noundef %49, i1 noundef zeroext false)
  call fastcc void @pm_parser_scope_pop(ptr noundef %0)
  %i.agu = load i32, ptr %i.adz, align 4, !tbaa !7
  %i.agv = lshr i32 %i.agu, 1
  store i32 %i.agv, ptr %i.adz, align 4, !tbaa !7
  %i.agw = load i16, ptr %i.afm, align 8, !tbaa !115
  switch i16 %i.agw, label %bb.le [
    i16 37, label %bb.lf
    i16 42, label %bb.lf
  ]

bb.le:                                            ; preds = %context_def_p.exit
  %i.agx = getelementptr i8, ptr %i.afm, i64 8
  %.val2169 = load ptr, ptr %i.agx, align 8, !tbaa !133
  %i.agy = getelementptr i8, ptr %i.afm, i64 16
  %.val2170 = load ptr, ptr %i.agy, align 8, !tbaa !134
  %i.agz = getelementptr i8, ptr %0, i64 472
  %i.aha = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.agz, ptr noundef %.val2169, ptr noundef %.val2170, i32 noundef 48) #27 ; 0 uses
  br label %bb.lf

bb.lf:                                            ; preds = %context_def_p.exit, %context_def_p.exit, %bb.le
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.aed)
  call void @pm_node_list_free(ptr noundef nonnull %46) #27
  %i.ahb = getelementptr inbounds nuw i8, ptr %45, i64 8
  %.val2293 = load ptr, ptr %i.ahb, align 8
  %i.ahc = getelementptr inbounds nuw i8, ptr %45, i64 16
  %.val2294 = load ptr, ptr %i.ahc, align 8
  %i.ahd = call fastcc ptr @pm_class_node_create(ptr noundef nonnull %0, ptr noundef %49, ptr %.val2293, ptr %.val2294, ptr noundef nonnull %i.afm, ptr %.sroa.43197.0.copyload, ptr %.sroa.63198.0.copyload, ptr noundef %48, ptr noundef %.019283554, ptr noundef %.11930, ptr noundef nonnull %i.ady)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.kp
  %.10 = phi ptr [ %i.afk, %bb.kp ], [ %i.ahd, %bb.lf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  br label %.loopexit3341

bb.lh:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  %i.ahe = getelementptr i8, ptr %0, i64 680      ; 2 uses
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !100
  store ptr %50, ptr %i.ahe, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !163
  %i.ahg = call fastcc i64 @token_newline_index(ptr noundef nonnull %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27
  %i.ahh = getelementptr i8, ptr %0, i64 304      ; 5 uses
  %.val2230 = load ptr, ptr %i.ahh, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %52, align 8, !tbaa !126, !alias.scope !354
  %i.ahi = getelementptr inbounds nuw i8, ptr %52, i64 4
  store i32 0, ptr %i.ahi, align 4, !alias.scope !354
  %i.ahj = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %.val2230, ptr %i.ahj, align 8, !tbaa !127, !alias.scope !354
  %i.ahk = getelementptr inbounds nuw i8, ptr %52, i64 16
  store ptr %.val2230, ptr %i.ahk, align 8, !tbaa !128, !alias.scope !354
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27
  %i.ahl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not3333 = icmp eq ptr %i.ahl, null
  br i1 %.not3333, label %context_push.exit2524, label %bb.li

bb.li:                                            ; preds = %bb.lh
  store i32 21, ptr %i.ahl, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i2522 = getelementptr inbounds nuw i8, ptr %i.ahl, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i2522, align 4
  %.sroa.3.0..sroa_idx.i2523 = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahm = getelementptr i8, ptr %0, i64 504      ; 2 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !253
  store ptr %i.ahn, ptr %.sroa.3.0..sroa_idx.i2523, align 8
  store ptr %i.ahl, ptr %i.ahm, align 8, !tbaa !253
  br label %context_push.exit2524

context_push.exit2524:                            ; preds = %bb.lh, %bb.li
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.aho = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %i.aho, label %bb.mj [
    i32 18, label %bb.lj
    i32 23, label %bb.lj
    i32 26, label %bb.lj
    i32 27, label %bb.lj
    i32 25, label %bb.lj
    i32 32, label %bb.lj
    i32 31, label %bb.lj
    i32 34, label %bb.lj
    i32 52, label %bb.lj
    i32 51, label %bb.lj
    i32 54, label %bb.lj
    i32 61, label %bb.lj
    i32 62, label %bb.lj
    i32 60, label %bb.lj
    i32 116, label %bb.lj
    i32 115, label %bb.lj
    i32 117, label %bb.lj
    i32 114, label %bb.lj
    i32 120, label %bb.lj
    i32 126, label %bb.lj
    i32 16, label %bb.lj
    i32 136, label %bb.lj
    i32 141, label %bb.lj
    i32 145, label %bb.lj
    i32 143, label %bb.lj
    i32 151, label %bb.lj
    i32 152, label %bb.lj
    i32 156, label %bb.lj
    i32 157, label %bb.lj
    i32 158, label %bb.lj
    i32 159, label %bb.lj
    i32 160, label %bb.lj
    i32 66, label %bb.lk
    i32 68, label %bb.ln
    i32 37, label %bb.ln
    i32 59, label %bb.ln
end_hunk_3
begin_hunk_4_@parse_expression_prefix:bb.a
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.akr = load i32, ptr %53, align 8, !tbaa !126 ; 2 uses
  switch i32 %i.akr, label %token_is_setter_name.exit.thread [
    i32 32, label %.token_is_setter_name.exit.thread3290_crit_edge
    i32 66, label %bb.mu
  ]

.token_is_setter_name.exit.thread3290_crit_edge:  ; preds = %bb.mt
  %.phi.trans.insert3454 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %.val2060.pre = load ptr, ptr %.phi.trans.insert3454, align 8, !tbaa !127
  %.phi.trans.insert3456 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %.val2061.pre = load ptr, ptr %.phi.trans.insert3456, align 8, !tbaa !128
  br label %token_is_setter_name.exit.thread3290

bb.mu:                                            ; preds = %bb.mt
  %i.aks = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !128 ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !127 ; 2 uses
  %i.akw = ptrtoint ptr %i.akt to i64
  %i.akx = ptrtoint ptr %i.akv to i64
  %i.aky = sub i64 %i.akw, %i.akx
  %i.akz = icmp sgt i64 %i.aky, 1
  br i1 %i.akz, label %token_is_setter_name.exit, label %token_is_setter_name.exit.thread

token_is_setter_name.exit:                        ; preds = %bb.mu
  %i.ala = getelementptr i8, ptr %i.akt, i64 -1
  %i.alb = load i8, ptr %i.ala, align 1, !tbaa !67
  %i.alc = icmp eq i8 %i.alb, 61
  br i1 %i.alc, label %token_is_setter_name.exit.thread3290, label %token_is_setter_name.exit.thread

token_is_setter_name.exit.thread3290:             ; preds = %.token_is_setter_name.exit.thread3290_crit_edge, %token_is_setter_name.exit
  %.val2061 = phi ptr [ %.val2061.pre, %.token_is_setter_name.exit.thread3290_crit_edge ], [ %i.akt, %token_is_setter_name.exit ]
  %.val2060 = phi ptr [ %.val2060.pre, %.token_is_setter_name.exit.thread3290_crit_edge ], [ %i.akv, %token_is_setter_name.exit ]
  %i.ald = getelementptr i8, ptr %0, i64 472
  %i.ale = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ald, ptr noundef %.val2060, ptr noundef %.val2061, i32 noundef 64) #27 ; 0 uses
  br label %token_is_setter_name.exit.thread

token_is_setter_name.exit.thread:                 ; preds = %bb.mt, %bb.mu, %token_is_setter_name.exit.thread3290, %token_is_setter_name.exit
  br i1 %.01937, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %token_is_setter_name.exit.thread
  %i.alf = getelementptr i8, ptr %0, i64 328
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !256
  %i.alh = getelementptr i8, ptr %0, i64 336
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !255
  %i.alj = getelementptr i8, ptr %0, i64 472
  %i.alk = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.alj, ptr noundef %i.alg, ptr noundef %i.ali, i32 noundef 63) #27 ; 0 uses
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %token_is_setter_name.exit.thread
  %i.all = getelementptr i8, ptr %0, i64 504      ; 9 uses
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !253 ; 2 uses
  %i.aln = load i32, ptr %i.alm, align 8, !tbaa !215
  %i.alo = icmp eq i32 %i.aln, 23
  br i1 %i.alo, label %bb.mx, label %bb.mz

bb.mx:                                            ; preds = %bb.mw
  %i.alp = getelementptr i8, ptr %i.alm, i64 8
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !257
  %i.alr = load i32, ptr %i.alq, align 8, !tbaa !215
  %i.als = icmp eq i32 %i.alr, 9
  br i1 %i.als, label %bb.my, label %bb.mz

bb.my:                                            ; preds = %bb.mx
  %i.alt = getelementptr i8, ptr %0, i64 472
  %i.alu = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !127
  %i.alw = getelementptr i8, ptr %0, i64 336
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !255
  %i.aly = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.alt, ptr noundef %i.alv, ptr noundef %i.alx, i32 noundef 284, ptr noundef nonnull @.str.108) #27 ; 0 uses
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx, %bb.mw
  %i.alz = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(24) %i.alz, i64 24, i1 false), !tbaa.struct !163
  %i.ama = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not3335 = icmp eq ptr %i.ama, null
  br i1 %.not3335, label %context_push.exit2538, label %bb.na

bb.na:                                            ; preds = %bb.mz
  store i32 17, ptr %i.ama, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i2536 = getelementptr inbounds nuw i8, ptr %i.ama, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i2536, align 4
  %.sroa.3.0..sroa_idx.i2537 = getelementptr inbounds nuw i8, ptr %i.ama, i64 8
  %i.amb = load ptr, ptr %i.all, align 8, !tbaa !253
  store ptr %i.amb, ptr %.sroa.3.0..sroa_idx.i2537, align 8
  store ptr %i.ama, ptr %i.all, align 8, !tbaa !253
  br label %context_push.exit2538

context_push.exit2538:                            ; preds = %bb.mz, %bb.na
  %i.amc = getelementptr i8, ptr %0, i64 20       ; 4 uses
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !7
  %i.ame = shl i32 %i.amd, 1
  store i32 %i.ame, ptr %i.amc, align 4, !tbaa !7
  %i.amf = call fastcc ptr @pm_statements_node_create(ptr noundef nonnull %0) ; 2 uses
  %i.amg = getelementptr i8, ptr %0, i64 688
  %i.amh = load i32, ptr %i.amg, align 8, !tbaa !53
  %i.ami = icmp ugt i32 %i.amh, 2
  br i1 %i.ami, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %context_push.exit2538
  %i.amj = icmp eq i32 %1, 18
  %i.amk = icmp ult i32 %1, 8
  %i.aml = or i1 %i.amj, %i.amk
  br label %bb.nc

bb.nc:                                            ; preds = %context_push.exit2538, %bb.nb
  %.01941.in = phi i1 [ %i.aml, %bb.nb ], [ %2, %context_push.exit2538 ]
  %i.amm = add i16 %5, 1                          ; 2 uses
  %i.amn = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 15, i1 noundef zeroext %.01941.in, i1 noundef zeroext false, i32 noundef 62, i16 noundef zeroext %i.amm) ; 2 uses
  %.val.i2539 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.amo = icmp eq i32 %.val.i2539, 94
  br i1 %i.amo, label %bb.nd, label %accept1.exit2540

bb.nd:                                            ; preds = %bb.nc
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.amp = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not3336 = icmp eq ptr %i.amp, null
  br i1 %.not3336, label %context_push.exit2543, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  store i32 46, ptr %i.amp, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i2541 = getelementptr inbounds nuw i8, ptr %i.amp, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i2541, align 4
  %.sroa.3.0..sroa_idx.i2542 = getelementptr inbounds nuw i8, ptr %i.amp, i64 8
  %i.amq = load ptr, ptr %i.all, align 8, !tbaa !253
  store ptr %i.amq, ptr %.sroa.3.0..sroa_idx.i2542, align 8
  store ptr %i.amp, ptr %i.all, align 8, !tbaa !253
  br label %context_push.exit2543

context_push.exit2543:                            ; preds = %bb.nd, %bb.ne
  %.sroa.33170.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.33170.0.copyload = load ptr, ptr %.sroa.33170.0..sroa_idx, align 8, !tbaa !14
  %.sroa.43171.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.43171.0.copyload = load ptr, ptr %.sroa.43171.0..sroa_idx, align 8, !tbaa !14
  %i.amr = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 13, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 256, i16 noundef zeroext %i.amm)
  %i.ams = load ptr, ptr %i.all, align 8, !tbaa !253 ; 2 uses
  %i.amt = getelementptr i8, ptr %i.ams, i64 8
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !257
  call void @free(ptr noundef %i.ams) #27
  store ptr %i.amu, ptr %i.all, align 8, !tbaa !253
  %i.amv = call fastcc ptr @pm_rescue_modifier_node_create(ptr noundef nonnull %0, ptr noundef %i.amn, ptr %.sroa.33170.0.copyload, ptr %.sroa.43171.0.copyload, ptr noundef %i.amr)
  br label %accept1.exit2540

accept1.exit2540:                                 ; preds = %bb.nc, %context_push.exit2543
  %.01942 = phi ptr [ %i.amv, %context_push.exit2543 ], [ %i.amn, %bb.nc ]
  call fastcc void @pm_statements_node_body_append(ptr noundef nonnull %0, ptr noundef %i.amf, ptr noundef %.01942, i1 noundef zeroext false)
  %i.amw = load i32, ptr %i.amc, align 4, !tbaa !7
  %i.amx = lshr i32 %i.amw, 1
  store i32 %i.amx, ptr %i.amc, align 4, !tbaa !7
  %i.amy = load ptr, ptr %i.all, align 8, !tbaa !253 ; 2 uses
  %i.amz = getelementptr i8, ptr %i.amy, i64 8
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !257
  call void @free(ptr noundef %i.amy) #27
  store ptr %i.ana, ptr %i.all, align 8, !tbaa !253
  %.val2225 = load ptr, ptr %i.ahh, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %59, align 8, !tbaa !7
  %.sroa.43166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %59, i64 4
  store i32 0, ptr %.sroa.43166.0..sroa_idx, align 4
  %.sroa.53167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr %.val2225, ptr %.sroa.53167.0..sroa_idx, align 8, !tbaa !14
  %.sroa.63168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %59, i64 16
  store ptr %.val2225, ptr %.sroa.63168.0..sroa_idx, align 8, !tbaa !14
  br label %bb.np

accept1.exit2535:                                 ; preds = %bb.ms
  %.val2224 = load ptr, ptr %i.ahh, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %58, align 8, !tbaa !7
  %.sroa.43162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %58, i64 4
  store i32 0, ptr %.sroa.43162.0..sroa_idx, align 4
  %.sroa.53163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr %.val2224, ptr %.sroa.53163.0..sroa_idx, align 8, !tbaa !14
  %.sroa.63164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %58, i64 16
  store ptr %.val2224, ptr %.sroa.63164.0..sroa_idx, align 8, !tbaa !14
  %i.anb = load i32, ptr %56, align 8, !tbaa !126
  %i.anc = icmp eq i32 %i.anb, 164
  br i1 %i.anc, label %bb.nf, label %bb.ng

bb.nf:                                            ; preds = %accept1.exit2535
  %i.and = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.and, align 4, !tbaa !195
  %i.ane = getelementptr i8, ptr %0, i64 696
  store i8 1, ptr %i.ane, align 8, !tbaa !164
  call fastcc void @expect2(ptr noundef nonnull %0, i32 noundef 14, i32 noundef 17, i32 noundef 66)
  br label %accept2.exit2546

bb.ng:                                            ; preds = %accept1.exit2535
  switch i32 %.val.i2534, label %accept2.exit2546 [
    i32 17, label %bb.nh
    i32 14, label %bb.nh
  ]

bb.nh:                                            ; preds = %bb.ng, %bb.ng
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit2546

accept2.exit2546:                                 ; preds = %bb.ng, %bb.nh, %bb.nf
  %i.anf = getelementptr i8, ptr %0, i64 24       ; 4 uses
  %i.ang = getelementptr i8, ptr %0, i64 20       ; 4 uses
  %i.anh = load i32, ptr %i.anf, align 4, !tbaa !7
  %i.ani = load <2 x i32>, ptr %i.ang, align 4, !tbaa !7
  %i.anj = shl <2 x i32> %i.ani, splat (i32 1)
  store <2 x i32> %i.anj, ptr %i.ang, align 4, !tbaa !7
  %.val2255 = load i32, ptr %i.b, align 8, !tbaa !170
  %switch.tableidx3708 = add i32 %.val2255, -6    ; 3 uses
  %i.ank = icmp ult i32 %switch.tableidx3708, 6
  %switch.maskindex3709 = trunc i32 %switch.tableidx3708 to i8
  %switch.shifted3710 = lshr i8 45, %switch.maskindex3709
  %switch.lobit3711 = trunc i8 %switch.shifted3710 to i1
  %or.cond3712 = select i1 %i.ank, i1 %switch.lobit3711, i1 false
  br i1 %or.cond3712, label %switch.lookup, label %bb.ni

bb.ni:                                            ; preds = %accept2.exit2546
  %i.anl = shl i32 %i.anh, 2
  store i32 %i.anl, ptr %i.anf, align 4, !tbaa !7
  %i.anm = add i16 %5, 1
  %i.ann = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 17, i16 noundef zeroext %i.anm)
  %i.ano = load i32, ptr %i.anf, align 4, !tbaa !7
  %i.anp = lshr i32 %i.ano, 1
  store i32 %i.anp, ptr %i.anf, align 4, !tbaa !7
  br label %bb.nj

switch.lookup:                                    ; preds = %accept2.exit2546
  %i.anq = zext nneg i32 %switch.tableidx3708 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.parse_expression_prefix.108, i64 %i.anq
  br label %bb.nj

bb.nj:                                            ; preds = %switch.lookup, %bb.ni
  %.val2160.in = phi ptr [ %switch.gep, %switch.lookup ], [ %i.b, %bb.ni ]
  %.01938 = phi ptr [ null, %switch.lookup ], [ %i.ann, %bb.ni ] ; 4 uses
  %.val2160 = load i32, ptr %.val2160.in, align 4
  switch i32 %.val2160, label %bb.nn [
    i32 11, label %bb.nk
    i32 9, label %bb.nk
    i32 6, label %bb.nk
  ]

bb.nk:                                            ; preds = %bb.nj, %bb.nj, %bb.nj
  %i.anr = icmp eq ptr %.01938, null
  br i1 %i.anr, label %.split1982, label %bb.nl

.split1982:                                       ; preds = %bb.nk
  %i.ans = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !127
  %i.anu = add i16 %5, 1
  %i.anv = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.ahg, ptr noundef nonnull %51, ptr noundef %i.ant, ptr noundef null, i32 noundef 4, i16 noundef zeroext %i.anu)
  br label %bb.no

bb.nl:                                            ; preds = %bb.nk
  %i.anw = load i16, ptr %.01938, align 8, !tbaa !115
  %i.anx = icmp eq i16 %i.anw, 140
  br i1 %i.anx, label %.split1981, label %bb.nm

.split1981:                                       ; preds = %bb.nl
  %i.any = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !127
  %i.aoa = add i16 %5, 1
  %i.aob = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.ahg, ptr noundef nonnull %51, ptr noundef %i.anz, ptr noundef nonnull %.01938, i32 noundef 4, i16 noundef zeroext %i.aoa)
  br label %bb.no

bb.nm:                                            ; preds = %bb.nl
  call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.2, i32 noundef 18990, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.nn:                                            ; preds = %bb.nj
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.ahg, ptr noundef %51, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.no

bb.no:                                            ; preds = %.split1981, %.split1982, %bb.nn
  %.11939 = phi ptr [ %.01938, %bb.nn ], [ %i.aob, %.split1981 ], [ %i.anv, %.split1982 ]
  %i.aoc = load <2 x i32>, ptr %i.ang, align 4, !tbaa !7
  %i.aod = lshr <2 x i32> %i.aoc, splat (i32 1)
  store <2 x i32> %i.aod, ptr %i.ang, align 4, !tbaa !7
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 70, ptr noundef %51)
  %i.aoe = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %i.aoe, i64 24, i1 false), !tbaa.struct !163
  %.pre3458 = load i32, ptr %53, align 8, !tbaa !126
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %accept1.exit2540
  %i.aof = phi i32 [ %i.akr, %accept1.exit2540 ], [ %.pre3458, %bb.no ]
  %.21940 = phi ptr [ %i.amf, %accept1.exit2540 ], [ %.11939, %bb.no ]
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #27
  %i.aog = getelementptr i8, ptr %0, i64 496
  %i.aoh = load ptr, ptr %i.aog, align 8, !tbaa !59
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 8
  call fastcc void @pm_locals_order(ptr noundef nonnull %0, ptr noundef %i.aoi, ptr noundef %60, i1 noundef zeroext false)
  call fastcc void @pm_parser_scope_pop(ptr noundef nonnull %0)
  %i.aoj = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i2552 = getelementptr inbounds nuw i8, ptr %53, i64 16
  %.pre.i2553 = load ptr, ptr %.phi.trans.insert.i2552, align 8, !tbaa !128 ; 3 uses
  switch i32 %i.aof, label %parse_operator_symbol_name.exit [
    i32 151, label %bb.nq
    i32 25, label %bb.nq
  ]

bb.nq:                                            ; preds = %bb.np, %bb.np
  %i.aol = getelementptr i8, ptr %.pre.i2553, i64 -1 ; 2 uses
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !67
  %i.aon = icmp eq i8 %i.aom, 64
  %spec.select.i2554 = select i1 %i.aon, ptr %i.aol, ptr %.pre.i2553
  br label %parse_operator_symbol_name.exit

parse_operator_symbol_name.exit:                  ; preds = %bb.np, %bb.nq
  %.0.i2556 = phi ptr [ %spec.select.i2554, %bb.nq ], [ %.pre.i2553, %bb.np ]
  %i.aoo = getelementptr i8, ptr %0, i64 576
  %i.aop = ptrtoint ptr %.0.i2556 to i64
  %i.aoq = ptrtoint ptr %i.aok to i64
  %i.aor = sub i64 %i.aop, %i.aoq
  %i.aos = call i32 @pm_constant_pool_insert_shared(ptr noundef %i.aoo, ptr noundef %i.aok, i64 noundef %i.aor) #27
  call fastcc void @flush_block_exits(ptr noundef nonnull %0, ptr noundef %i.ahf)
  call void @pm_node_list_free(ptr noundef nonnull %50) #27
  %i.aot = call fastcc ptr @pm_def_node_create(ptr noundef nonnull %0, i32 noundef %i.aos, ptr noundef %53, ptr noundef %.21933, ptr noundef %.11936, ptr noundef %.21940, ptr noundef %60, ptr noundef %51, ptr noundef %52, ptr noundef %56, ptr noundef %57, ptr noundef %58, ptr noundef %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  br label %.loopexit3341

bb.nr:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.aou = getelementptr i8, ptr %0, i64 320      ; 3 uses
  %.sroa.33159.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.33159.0.copyload = load ptr, ptr %.sroa.33159.0..sroa_idx, align 8, !tbaa !14
  %.sroa.43160.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.43160.0.copyload = load ptr, ptr %.sroa.43160.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #27
  %i.aov = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not3332 = icmp eq ptr %i.aov, null
  br i1 %.not3332, label %context_push.exit2559, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  store i32 22, ptr %i.aov, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i2557 = getelementptr inbounds nuw i8, ptr %i.aov, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i2557, align 4
  %.sroa.3.0..sroa_idx.i2558 = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.aow = getelementptr i8, ptr %0, i64 504      ; 2 uses
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !253
  store ptr %i.aox, ptr %.sroa.3.0..sroa_idx.i2558, align 8
  store ptr %i.aov, ptr %i.aow, align 8, !tbaa !253
  br label %context_push.exit2559

context_push.exit2559:                            ; preds = %bb.nr, %bb.ns
  %.val.i2560 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.aoy = icmp eq i32 %.val.i2560, 14            ; 2 uses
  br i1 %i.aoy, label %bb.nt, label %accept1.exit2561

bb.nt:                                            ; preds = %context_push.exit2559
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2562.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit2561

accept1.exit2561:                                 ; preds = %context_push.exit2559, %bb.nt
  %.val.i2562 = phi i32 [ %.val.i2560, %context_push.exit2559 ], [ %.val.i2562.pr, %bb.nt ]
  %i.aoz = icmp eq i32 %.val.i2562, 124
  br i1 %i.aoz, label %bb.nu, label %accept1.exit2563

bb.nu:                                            ; preds = %accept1.exit2561
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %i.aou, i64 24, i1 false), !tbaa.struct !163
  br i1 %i.aoy, label %bb.nv, label %accept1.exit2565

bb.nv:                                            ; preds = %bb.nu
  %.val.i2564 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.apa = icmp eq i32 %.val.i2564, 15
  br i1 %i.apa, label %bb.nw, label %accept1.exit2565

bb.nw:                                            ; preds = %bb.nv
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.apb = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %.val2238 = load ptr, ptr %i.apb, align 8
  %i.apc = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %.val2239 = load ptr, ptr %i.apc, align 8
  %i.apd = tail call fastcc ptr @pm_parentheses_node_create(ptr noundef nonnull %0, ptr %.val2238, ptr %.val2239, ptr noundef null, ptr noundef nonnull %i.aou, i16 noundef zeroext 0)
  %i.ape = getelementptr i8, ptr %0, i64 304
  %.val2223 = load ptr, ptr %i.ape, align 8, !tbaa !74 ; 4 uses
  store i32 164, ptr %61, align 8, !tbaa !7
  %.sroa.43155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %61, i64 4
  store i32 0, ptr %.sroa.43155.0..sroa_idx, align 4
  store ptr %.val2223, ptr %i.apb, align 8, !tbaa !14
  store ptr %.val2223, ptr %i.apc, align 8, !tbaa !14
  store i32 164, ptr %62, align 8, !tbaa !7
  %.sroa.43151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 4
  store i32 0, ptr %.sroa.43151.0..sroa_idx, align 4
  %.sroa.53152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %.val2223, ptr %.sroa.53152.0..sroa_idx, align 8, !tbaa !14
  %.sroa.63153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 16
  store ptr %.val2223, ptr %.sroa.63153.0..sroa_idx, align 8, !tbaa !14
  br label %bb.oa

accept1.exit2565:                                 ; preds = %bb.nv, %bb.nu
  %i.apf = add i16 %5, 1
  %i.apg = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 71, i16 noundef zeroext %i.apf) ; 2 uses
  %i.aph = getelementptr i8, ptr %0, i64 697
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !254, !range !45, !noundef !46
  %i.apj = trunc nuw i8 %i.api to i1
  br i1 %i.apj, label %bb.nx, label %bb.ny

bb.nx:                                            ; preds = %accept1.exit2565
  %i.apk = getelementptr i8, ptr %0, i64 304
  %.val2221 = load ptr, ptr %i.apk, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %62, align 8, !tbaa !7
  %.sroa.43147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 4
  store i32 0, ptr %.sroa.43147.0..sroa_idx, align 4
  %.sroa.53148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %.val2221, ptr %.sroa.53148.0..sroa_idx, align 8, !tbaa !14
  %.sroa.63149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 16
  store ptr %.val2221, ptr %.sroa.63149.0..sroa_idx, align 8, !tbaa !14
  br label %bb.oa

bb.ny:                                            ; preds = %accept1.exit2565
  %.val.i2566 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.apl = icmp eq i32 %.val.i2566, 14
end_hunk_4
begin_hunk_5_@parse_expression_prefix:bb.a
  %i.aum = getelementptr i8, ptr %0, i64 360
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !76
  %i.auo = tail call fastcc ptr @pm_missing_node_create(ptr noundef nonnull %0, ptr noundef %i.aul, ptr noundef %i.aun)
  br label %bb.pt

bb.pm:                                            ; preds = %bb.ph
  %i.aup = icmp eq i32 %.val.i2588.pr, 14
  br i1 %i.aup, label %bb.pn, label %accept1.exit2589

bb.pn:                                            ; preds = %bb.pm
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2590.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit2589

accept1.exit2589:                                 ; preds = %bb.pm, %bb.pn
  %.val.i2590 = phi i32 [ %.val.i2590.pr, %bb.pn ], [ %.val.i2588.pr, %bb.pm ]
  %i.auq = icmp eq i32 %.val.i2590, 124
  br i1 %i.auq, label %accept1.exit2591.thread3302, label %bb.pr

accept1.exit2591.thread3302:                      ; preds = %bb.pi, %accept1.exit2589
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.33126.0..sroa_idx = getelementptr i8, ptr %0, i64 328 ; 2 uses
  %.sroa.33126.0.copyload = load ptr, ptr %.sroa.33126.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.53127.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.53127.0.copyload = load ptr, ptr %.sroa.53127.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.val.i2592 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.aur = icmp eq i32 %.val.i2592, 15
  br i1 %i.aur, label %bb.po, label %accept1.exit2593

bb.po:                                            ; preds = %accept1.exit2591.thread3302
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.aus = tail call fastcc ptr @pm_parentheses_node_create(ptr noundef nonnull %0, ptr %.sroa.33126.0.copyload, ptr %.sroa.53127.0.copyload, ptr noundef null, ptr noundef nonnull %i.aty, i16 noundef zeroext 0)
  br label %bb.ps

accept1.exit2593:                                 ; preds = %accept1.exit2591.thread3302
  store ptr %.sroa.33126.0.copyload, ptr %68, align 8, !tbaa !14
  %.sroa.2241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 8
  store ptr %.sroa.53127.0.copyload, ptr %.sroa.2241.0..sroa_idx, align 8, !tbaa !14
  %i.aut = add i16 %5, 1
  %i.auu = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 196, i16 noundef zeroext %i.aut) ; 2 uses
  %i.auv = getelementptr i8, ptr %0, i64 697
  %i.auw = load i8, ptr %i.auv, align 1, !tbaa !254, !range !45, !noundef !46
  %i.aux = trunc nuw i8 %i.auw to i1
  br i1 %i.aux, label %bb.ps, label %bb.pp

bb.pp:                                            ; preds = %accept1.exit2593
  %.val.i2594 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.auy = icmp eq i32 %.val.i2594, 14
  br i1 %i.auy, label %bb.pq, label %accept1.exit2595

bb.pq:                                            ; preds = %bb.pp
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2595

accept1.exit2595:                                 ; preds = %bb.pp, %bb.pq
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 110)
  %i.auz = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.ava = load <2 x ptr>, ptr %.sroa.33126.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.ava, ptr %i.auz, align 8, !tbaa !14
  br label %bb.ps

bb.pr:                                            ; preds = %accept1.exit2589
  %i.avb = add i16 %5, 1
  %i.avc = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 10, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 196, i16 noundef zeroext %i.avb)
  br label %bb.ps

bb.ps:                                            ; preds = %bb.po, %accept1.exit2595, %accept1.exit2593, %bb.pr
  %.11955 = phi ptr [ %i.avc, %bb.pr ], [ %i.aus, %bb.po ], [ %i.auu, %accept1.exit2593 ], [ %i.auu, %accept1.exit2595 ]
  %i.avd = call fastcc ptr @pm_call_node_not_create(ptr noundef nonnull %0, ptr noundef %.11955, ptr noundef %67, ptr noundef %68)
  br label %bb.pt

bb.pt:                                            ; preds = %bb.ps, %bb.pl
  %.11 = phi ptr [ %i.avd, %bb.ps ], [ %i.auo, %bb.pl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #27
  br label %.loopexit3341

bb.pu:                                            ; preds = %bb.a
  %i.ave = tail call fastcc i64 @token_newline_index(ptr noundef nonnull %0)
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.avf = add i16 %5, 1
  %i.avg = tail call fastcc ptr @parse_conditional(ptr noundef nonnull %0, i32 noundef 52, i64 noundef %i.ave, i1 noundef zeroext false, i16 noundef zeroext %i.avf)
  br label %.loopexit3341

bb.pv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, i8 0, i64 24, i1 false)
  %i.avh = getelementptr i8, ptr %0, i64 680      ; 2 uses
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !100 ; 2 uses
  store ptr %69, ptr %i.avh, align 8, !tbaa !100
  %i.avj = call fastcc i64 @token_newline_index(ptr noundef nonnull %0) ; 3 uses
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #27
  %i.avk = getelementptr i8, ptr %0, i64 320      ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(24) %i.avk, i64 24, i1 false), !tbaa.struct !163
  %i.avl = add i16 %5, 1                          ; 4 uses
  %i.avm = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 48, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 189, i16 noundef zeroext %i.avl) ; 4 uses
  %i.avn = load i16, ptr %i.avm, align 8, !tbaa !115
  %i.avo = icmp eq i16 %i.avn, 103
  br i1 %i.avo, label %bb.pw, label %.preheader

.preheader:                                       ; preds = %bb.pv
  %.val.i25963391 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.avp = icmp eq i32 %.val.i25963391, 39
  br i1 %i.avp, label %.lr.ph3393, label %accept1.exit2597

.lr.ph3393:                                       ; preds = %.preheader
  %i.avq = getelementptr i8, ptr %0, i64 336
  %i.avr = getelementptr i8, ptr %0, i64 472
  %i.avs = getelementptr i8, ptr %0, i64 328
  br label %bb.px

bb.pw:                                            ; preds = %bb.pv
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.avi)
  call void @pm_node_list_free(ptr noundef nonnull %69) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #27
  store i32 163, ptr %71, align 8, !tbaa !126
  %i.avt = getelementptr inbounds nuw i8, ptr %71, i64 4
  store i32 0, ptr %i.avt, align 4
  %i.avu = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.avv = getelementptr i8, ptr %0, i64 336
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !255 ; 4 uses
  store ptr %i.avw, ptr %i.avu, align 8, !tbaa !127
  %i.avx = getelementptr inbounds nuw i8, ptr %71, i64 16
  store ptr %i.avw, ptr %i.avx, align 8, !tbaa !128
  %i.avy = getelementptr inbounds nuw i8, ptr %70, i64 8
  %.val2313 = load ptr, ptr %i.avy, align 8
  %i.avz = getelementptr inbounds nuw i8, ptr %70, i64 16
  %.val2314 = load ptr, ptr %i.avz, align 8
  %i.awa = call fastcc ptr @pm_module_node_create(ptr noundef nonnull %0, ptr noundef null, ptr %.val2313, ptr %.val2314, ptr noundef nonnull %i.avm, ptr %i.avw, ptr %i.avw, ptr noundef null, ptr noundef nonnull %71)
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27
  br label %bb.qk

bb.px:                                            ; preds = %.lr.ph3393, %expect1.exit2601
  %.019563392 = phi ptr [ %i.avm, %.lr.ph3393 ], [ %i.awe, %expect1.exit2601 ]
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %i.avk, i64 24, i1 false), !tbaa.struct !163
  %.val.i.i2598 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.awb = icmp eq i32 %.val.i.i2598, 41
  br i1 %i.awb, label %accept1.exit.thread.i2600, label %accept1.exit.i2599

accept1.exit.thread.i2600:                        ; preds = %bb.px
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit2601

accept1.exit.i2599:                               ; preds = %bb.px
  %i.awc = load ptr, ptr %i.avq, align 8, !tbaa !255 ; 3 uses
  %i.awd = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.avr, ptr noundef %i.awc, ptr noundef %i.awc, i32 noundef 61) #27 ; 0 uses
  store ptr %i.awc, ptr %i.avs, align 8, !tbaa !256
  store i32 163, ptr %i.avk, align 8, !tbaa !200
  br label %expect1.exit2601

expect1.exit2601:                                 ; preds = %accept1.exit.thread.i2600, %accept1.exit.i2599
  %i.awe = call fastcc ptr @pm_constant_path_node_create(ptr noundef nonnull %0, ptr noundef nonnull %.019563392, ptr noundef %72, ptr noundef nonnull %i.avk) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #27
  %.val.i2596 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.awf = icmp eq i32 %.val.i2596, 39
  br i1 %i.awf, label %bb.px, label %accept1.exit2597, !llvm.loop !360

accept1.exit2597:                                 ; preds = %expect1.exit2601, %.preheader
  %.01956.lcssa = phi ptr [ %i.avm, %.preheader ], [ %i.awe, %expect1.exit2601 ]
  %.sroa.03121.0.copyload = load i32, ptr %i.avk, align 8, !tbaa !7
  %.sroa.43123.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.43123.0.copyload = load ptr, ptr %.sroa.43123.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.63124.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.63124.0.copyload = load ptr, ptr %.sroa.63124.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.not2022 = icmp eq i32 %.sroa.03121.0.copyload, 41
  br i1 %.not2022, label %bb.pz, label %bb.py

bb.py:                                            ; preds = %accept1.exit2597
  %i.awg = getelementptr i8, ptr %0, i64 472
  %i.awh = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.awg, ptr noundef %.sroa.43123.0.copyload, ptr noundef %.sroa.63124.0.copyload, i32 noundef 189) #27 ; 0 uses
  br label %bb.pz

bb.pz:                                            ; preds = %bb.py, %accept1.exit2597
  call fastcc void @pm_parser_scope_push(ptr noundef nonnull %0, i1 noundef zeroext true)
  %.val.i2602 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2602, label %accept2.exit2604 [
    i32 17, label %bb.qa
    i32 14, label %bb.qa
  ]

bb.qa:                                            ; preds = %bb.pz, %bb.pz
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2254.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept2.exit2604

accept2.exit2604:                                 ; preds = %bb.pz, %bb.qa
  %.val2254 = phi i32 [ %.val.i2602, %bb.pz ], [ %.val2254.pre, %bb.qa ]
  %switch.tableidx3713 = add i32 %.val2254, -6    ; 3 uses
  %i.awi = icmp ult i32 %switch.tableidx3713, 6
  %switch.maskindex3716 = trunc i32 %switch.tableidx3713 to i8
  %switch.shifted3717 = lshr i8 45, %switch.maskindex3716
  %switch.lobit3718 = trunc i8 %switch.shifted3717 to i1
  %or.cond3721 = select i1 %i.awi, i1 %switch.lobit3718, i1 false
  br i1 %or.cond3721, label %switch.lookup3715, label %bb.qb

bb.qb:                                            ; preds = %accept2.exit2604
  %i.awj = getelementptr i8, ptr %0, i64 24       ; 4 uses
  %i.awk = load i32, ptr %i.awj, align 4, !tbaa !7
  %i.awl = shl i32 %i.awk, 1
  store i32 %i.awl, ptr %i.awj, align 4, !tbaa !7
  %i.awm = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 37, i16 noundef zeroext %i.avl)
  %i.awn = load i32, ptr %i.awj, align 4, !tbaa !7
  %i.awo = lshr i32 %i.awn, 1
  store i32 %i.awo, ptr %i.awj, align 4, !tbaa !7
  br label %bb.qc

switch.lookup3715:                                ; preds = %accept2.exit2604
  %i.awp = zext nneg i32 %switch.tableidx3713 to i64
  %switch.gep3719 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.parse_expression_prefix.108, i64 %i.awp
  br label %bb.qc

bb.qc:                                            ; preds = %switch.lookup3715, %bb.qb
  %.val2159.in = phi ptr [ %switch.gep3719, %switch.lookup3715 ], [ %i.b, %bb.qb ]
  %.01957 = phi ptr [ null, %switch.lookup3715 ], [ %i.awm, %bb.qb ] ; 4 uses
  %.val2159 = load i32, ptr %.val2159.in, align 4
  switch i32 %.val2159, label %bb.qg [
    i32 11, label %bb.qd
    i32 9, label %bb.qd
    i32 6, label %bb.qd
  ]

bb.qd:                                            ; preds = %bb.qc, %bb.qc, %bb.qc
  %i.awq = icmp eq ptr %.01957, null
  br i1 %i.awq, label %.split1985, label %bb.qe

.split1985:                                       ; preds = %bb.qd
  %i.awr = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !127
  %i.awt = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.avj, ptr noundef nonnull %70, ptr noundef %i.aws, ptr noundef null, i32 noundef 6, i16 noundef zeroext %i.avl)
  br label %bb.qh

bb.qe:                                            ; preds = %bb.qd
  %i.awu = load i16, ptr %.01957, align 8, !tbaa !115
  %i.awv = icmp eq i16 %i.awu, 140
  br i1 %i.awv, label %.split1984, label %bb.qf

.split1984:                                       ; preds = %bb.qe
  %i.aww = getelementptr inbounds nuw i8, ptr %70, i64 8
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !127
  %i.awy = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.avj, ptr noundef nonnull %70, ptr noundef %i.awx, ptr noundef nonnull %.01957, i32 noundef 6, i16 noundef zeroext %i.avl)
  br label %bb.qh

bb.qf:                                            ; preds = %bb.qe
  call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.2, i32 noundef 19298, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.qg:                                            ; preds = %bb.qc
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.avj, ptr noundef %70, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.qh

bb.qh:                                            ; preds = %.split1984, %.split1985, %bb.qg
  %.11958 = phi ptr [ %.01957, %bb.qg ], [ %i.awy, %.split1984 ], [ %i.awt, %.split1985 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #27
  %i.awz = getelementptr i8, ptr %0, i64 496
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !59
  %i.axb = getelementptr i8, ptr %i.axa, i64 8
  call fastcc void @pm_locals_order(ptr noundef nonnull %0, ptr noundef %i.axb, ptr noundef %73, i1 noundef zeroext false)
  call fastcc void @pm_parser_scope_pop(ptr noundef nonnull %0)
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 190, ptr noundef %70)
  %i.axc = getelementptr i8, ptr %0, i64 504
  %.06.i2610 = load ptr, ptr %i.axc, align 8, !tbaa !213 ; 2 uses
  %.not7.i2611 = icmp eq ptr %.06.i2610, null
  br i1 %.not7.i2611, label %context_def_p.exit2619, label %.lr.ph.i2612

.lr.ph.i2612:                                     ; preds = %bb.qh, %bb.qi
  %.08.i2613 = phi ptr [ %.0.i2617, %bb.qi ], [ %.06.i2610, %bb.qh ] ; 2 uses
  %i.axd = load i32, ptr %.08.i2613, align 8, !tbaa !215
  switch i32 %i.axd, label %bb.qi [
    i32 17, label %bb.qj
    i32 21, label %bb.qj
    i32 18, label %bb.qj
    i32 20, label %bb.qj
    i32 19, label %bb.qj
    i32 13, label %context_def_p.exit2619
    i32 14, label %context_def_p.exit2619
    i32 16, label %context_def_p.exit2619
    i32 15, label %context_def_p.exit2619
    i32 37, label %context_def_p.exit2619
    i32 38, label %context_def_p.exit2619
    i32 40, label %context_def_p.exit2619
    i32 39, label %context_def_p.exit2619
    i32 47, label %context_def_p.exit2619
    i32 48, label %context_def_p.exit2619
    i32 50, label %context_def_p.exit2619
    i32 49, label %context_def_p.exit2619
  ]

bb.qi:                                            ; preds = %.lr.ph.i2612
  %i.axe = getelementptr i8, ptr %.08.i2613, i64 8
  %.0.i2617 = load ptr, ptr %i.axe, align 8, !tbaa !213 ; 2 uses
  %.not.i2618 = icmp eq ptr %.0.i2617, null
  br i1 %.not.i2618, label %context_def_p.exit2619, label %.lr.ph.i2612, !llvm.loop !353

bb.qj:                                            ; preds = %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612
  %i.axf = getelementptr inbounds nuw i8, ptr %70, i64 8
  %.val2054 = load ptr, ptr %i.axf, align 8, !tbaa !127
  %i.axg = getelementptr inbounds nuw i8, ptr %70, i64 16
  %.val2055 = load ptr, ptr %i.axg, align 8, !tbaa !128
  %i.axh = getelementptr i8, ptr %0, i64 472
  %i.axi = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.axh, ptr noundef %.val2054, ptr noundef %.val2055, i32 noundef 188) #27 ; 0 uses
  br label %context_def_p.exit2619

context_def_p.exit2619:                           ; preds = %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %.lr.ph.i2612, %bb.qi, %bb.qh, %bb.qj
  call fastcc void @pop_block_exits(ptr noundef %0, ptr noundef %i.avi)
  call void @pm_node_list_free(ptr noundef nonnull %69) #27
  %i.axj = getelementptr inbounds nuw i8, ptr %70, i64 8
  %.val2309 = load ptr, ptr %i.axj, align 8
  %i.axk = getelementptr inbounds nuw i8, ptr %70, i64 16
  %.val2310 = load ptr, ptr %i.axk, align 8
  %i.axl = call fastcc ptr @pm_module_node_create(ptr noundef %0, ptr noundef nonnull %73, ptr %.val2309, ptr %.val2310, ptr noundef nonnull %.01956.lcssa, ptr %.sroa.43123.0.copyload, ptr %.sroa.63124.0.copyload, ptr noundef %.11958, ptr noundef nonnull %i.avk)
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #27
  br label %bb.qk

bb.qk:                                            ; preds = %context_def_p.exit2619, %bb.pw
  %.12 = phi ptr [ %i.awa, %bb.pw ], [ %i.axl, %context_def_p.exit2619 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #27
  br label %.loopexit3341

bb.ql:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.axm = getelementptr i8, ptr %0, i64 320
  %i.axn = tail call fastcc ptr @pm_nil_node_create(ptr noundef nonnull %0, ptr noundef %i.axm)
  br label %.loopexit3341

bb.qm:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.axo = getelementptr i8, ptr %0, i64 320
  %i.axp = tail call fastcc ptr @pm_redo_node_create(ptr noundef nonnull %0, ptr noundef %i.axo) ; 3 uses
  %i.axq = getelementptr i8, ptr %0, i64 695
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !55, !range !45, !noundef !46
  %i.axs = trunc nuw i8 %i.axr to i1
  br i1 %i.axs, label %.loopexit3341, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  tail call fastcc void @parse_block_exit(ptr noundef nonnull %0, ptr noundef %i.axp)
  br label %.loopexit3341

bb.qo:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.axt = getelementptr i8, ptr %0, i64 320
  %i.axu = tail call fastcc ptr @pm_retry_node_create(ptr noundef nonnull %0, ptr noundef %i.axt) ; 2 uses
  tail call fastcc void @parse_retry(ptr noundef nonnull %0, ptr noundef %i.axu)
  br label %.loopexit3341

bb.qp:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.axv = getelementptr i8, ptr %0, i64 320
  %i.axw = tail call fastcc ptr @pm_self_node_create(ptr noundef nonnull %0, ptr noundef %i.axv)
  br label %.loopexit3341

bb.qq:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.axx = getelementptr i8, ptr %0, i64 320
  %i.axy = tail call fastcc ptr @pm_true_node_create(ptr noundef nonnull %0, ptr noundef %i.axx)
  br label %.loopexit3341

bb.qr:                                            ; preds = %bb.a
  %i.axz = tail call fastcc i64 @token_newline_index(ptr noundef nonnull %0)
  %i.aya = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not3330 = icmp eq ptr %i.aya, null
  br i1 %.not3330, label %context_push.exit2622, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  store i32 35, ptr %i.aya, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i2620 = getelementptr inbounds nuw i8, ptr %i.aya, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i2620, align 4
  %.sroa.3.0..sroa_idx.i2621 = getelementptr inbounds nuw i8, ptr %i.aya, i64 8
  %i.ayb = getelementptr i8, ptr %0, i64 504      ; 2 uses
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !253
  store ptr %i.ayc, ptr %.sroa.3.0..sroa_idx.i2621, align 8
  store ptr %i.aya, ptr %i.ayb, align 8, !tbaa !253
  br label %context_push.exit2622

context_push.exit2622:                            ; preds = %bb.qr, %bb.qs
  %i.ayd = getelementptr i8, ptr %0, i64 20       ; 4 uses
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !7
  %i.ayf = shl i32 %i.aye, 1
  %i.ayg = or disjoint i32 %i.ayf, 1
  store i32 %i.ayg, ptr %i.ayd, align 4, !tbaa !7
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #27
  %i.ayh = getelementptr i8, ptr %0, i64 320      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(24) %i.ayh, i64 24, i1 false), !tbaa.struct !163
  %i.ayi = add i16 %5, 1                          ; 2 uses
  %i.ayj = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 59, i16 noundef zeroext %i.ayi), !inline_history !297 ; 2 uses
  tail call fastcc void @pm_assert_value_expression(ptr noundef nonnull %0, ptr noundef %i.ayj), !inline_history !297
  %i.ayk = load i32, ptr %i.ayd, align 4, !tbaa !7
  %i.ayl = lshr i32 %i.ayk, 1
  store i32 %i.ayl, ptr %i.ayd, align 4, !tbaa !7
  %i.aym = getelementptr i8, ptr %0, i64 504      ; 2 uses
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !253 ; 2 uses
  %i.ayo = getelementptr i8, ptr %i.ayn, i64 8
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.ayn) #27
  store ptr %i.ayp, ptr %i.aym, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #27
  %.val.i2623 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ayq = icmp eq i32 %.val.i2623, 82
  br i1 %i.ayq, label %bb.qt, label %accept1.exit2624

bb.qt:                                            ; preds = %context_push.exit2622
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef nonnull align 8 dereferenceable(24) %i.ayh, i64 24, i1 false), !tbaa.struct !163
  br label %bb.qu

accept1.exit2624:                                 ; preds = %context_push.exit2622
  %i.ayr = getelementptr i8, ptr %0, i64 304
  %.val2217 = load ptr, ptr %i.ayr, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %75, align 8, !tbaa !7
  %.sroa.43118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %75, i64 4
  store i32 0, ptr %.sroa.43118.0..sroa_idx, align 4
  %.sroa.53119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr %.val2217, ptr %.sroa.53119.0..sroa_idx, align 8, !tbaa !14
  %.sroa.63120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %75, i64 16
  store ptr %.val2217, ptr %.sroa.63120.0..sroa_idx, align 8, !tbaa !14
  tail call fastcc void @expect2(ptr noundef nonnull %0, i32 noundef 14, i32 noundef 17, i32 noundef 59)
  br label %bb.qu

bb.qu:                                            ; preds = %accept1.exit2624, %bb.qt
  %.val2096 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ays = icmp eq i32 %.val2096, 8
  br i1 %i.ays, label %accept2.exit2627, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.ayt = getelementptr i8, ptr %0, i64 24       ; 4 uses
  %i.ayu = load i32, ptr %i.ayt, align 4, !tbaa !7
  %i.ayv = shl i32 %i.ayu, 1
  store i32 %i.ayv, ptr %i.ayt, align 4, !tbaa !7
  %i.ayw = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 53, i16 noundef zeroext %i.ayi) ; 2 uses
  %i.ayx = load i32, ptr %i.ayt, align 4, !tbaa !7
  %i.ayy = lshr i32 %i.ayx, 1
  store i32 %i.ayy, ptr %i.ayt, align 4, !tbaa !7
  %.val.i2625 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val.i2625, label %accept2.exit2627 [
    i32 17, label %bb.qw
    i32 14, label %bb.qw
  ]

bb.qw:                                            ; preds = %bb.qv, %bb.qv
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit2627

accept2.exit2627:                                 ; preds = %bb.qv, %bb.qw, %bb.qu
  %.01959 = phi ptr [ null, %bb.qu ], [ %i.ayw, %bb.qv ], [ %i.ayw, %bb.qw ]
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.axz, ptr noundef %74, i1 noundef zeroext false, i1 noundef zeroext false)
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 289, ptr noundef %74)
  %i.ayz = getelementptr inbounds nuw i8, ptr %74, i64 8
  %.val2317 = load ptr, ptr %i.ayz, align 8
  %i.aza = getelementptr inbounds nuw i8, ptr %74, i64 16
  %.val2318 = load ptr, ptr %i.aza, align 8
  %i.azb = call fastcc ptr @pm_until_node_create(ptr noundef nonnull %0, ptr %.val2317, ptr %.val2318, ptr noundef %75, ptr noundef nonnull %i.ayh, ptr noundef %i.ayj, ptr noundef %.01959)
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #27
  br label %.loopexit3341

bb.qx:                                            ; preds = %bb.a
  %i.azc = tail call fastcc i64 @token_newline_index(ptr noundef nonnull %0)
  %i.azd = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not3329 = icmp eq ptr %i.azd, null
  br i1 %.not3329, label %context_push.exit2630, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  store i32 35, ptr %i.azd, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i2628 = getelementptr inbounds nuw i8, ptr %i.azd, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i2628, align 4
  %.sroa.3.0..sroa_idx.i2629 = getelementptr inbounds nuw i8, ptr %i.azd, i64 8
  %i.aze = getelementptr i8, ptr %0, i64 504      ; 2 uses
  %i.azf = load ptr, ptr %i.aze, align 8, !tbaa !253
  store ptr %i.azf, ptr %.sroa.3.0..sroa_idx.i2629, align 8
  store ptr %i.azd, ptr %i.aze, align 8, !tbaa !253
  br label %context_push.exit2630

context_push.exit2630:                            ; preds = %bb.qx, %bb.qy
  %i.azg = getelementptr i8, ptr %0, i64 20       ; 4 uses
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !7
  %i.azi = shl i32 %i.azh, 1
  %i.azj = or disjoint i32 %i.azi, 1
  store i32 %i.azj, ptr %i.azg, align 4, !tbaa !7
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #27
  %i.azk = getelementptr i8, ptr %0, i64 320      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(24) %i.azk, i64 24, i1 false), !tbaa.struct !163
  %i.azl = add i16 %5, 1                          ; 2 uses
  %i.azm = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 60, i16 noundef zeroext %i.azl), !inline_history !297 ; 2 uses
  tail call fastcc void @pm_assert_value_expression(ptr noundef nonnull %0, ptr noundef %i.azm), !inline_history !297
  %i.azn = load i32, ptr %i.azg, align 4, !tbaa !7
  %i.azo = lshr i32 %i.azn, 1
  store i32 %i.azo, ptr %i.azg, align 4, !tbaa !7
  %i.azp = getelementptr i8, ptr %0, i64 504      ; 2 uses
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !253 ; 2 uses
  %i.azr = getelementptr i8, ptr %i.azq, i64 8
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.azq) #27
  store ptr %i.azs, ptr %i.azp, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #27
  %.val.i2631 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.azt = icmp eq i32 %.val.i2631, 82
  br i1 %i.azt, label %bb.qz, label %accept1.exit2632

bb.qz:                                            ; preds = %context_push.exit2630
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef nonnull align 8 dereferenceable(24) %i.azk, i64 24, i1 false), !tbaa.struct !163
  br label %bb.ra

accept1.exit2632:                                 ; preds = %context_push.exit2630
  %i.azu = getelementptr i8, ptr %0, i64 304
  %.val2216 = load ptr, ptr %i.azu, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %77, align 8, !tbaa !7
  %.sroa.43114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %77, i64 4
  store i32 0, ptr %.sroa.43114.0..sroa_idx, align 4
  %.sroa.53115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %77, i64 8
  store ptr %.val2216, ptr %.sroa.53115.0..sroa_idx, align 8, !tbaa !14
  %.sroa.63116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %77, i64 16
  store ptr %.val2216, ptr %.sroa.63116.0..sroa_idx, align 8, !tbaa !14
  tail call fastcc void @expect2(ptr noundef nonnull %0, i32 noundef 14, i32 noundef 17, i32 noundef 60)
  br label %bb.ra

bb.ra:                                            ; preds = %accept1.exit2632, %bb.qz
  %.val2095 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.azv = icmp eq i32 %.val2095, 8
  br i1 %i.azv, label %accept2.exit2635, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.azw = getelementptr i8, ptr %0, i64 24       ; 4 uses
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !7
  %i.azy = shl i32 %i.azx, 1
  store i32 %i.azy, ptr %i.azw, align 4, !tbaa !7
  %i.azz = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 54, i16 noundef zeroext %i.azl) ; 2 uses
  %i.baa = load i32, ptr %i.azw, align 4, !tbaa !7
  %i.bab = lshr i32 %i.baa, 1
  store i32 %i.bab, ptr %i.azw, align 4, !tbaa !7
  %.val.i2633 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val.i2633, label %accept2.exit2635 [
    i32 17, label %bb.rc
    i32 14, label %bb.rc
  ]

bb.rc:                                            ; preds = %bb.rb, %bb.rb
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit2635

accept2.exit2635:                                 ; preds = %bb.rb, %bb.rc, %bb.ra
  %.01964 = phi ptr [ null, %bb.ra ], [ %i.azz, %bb.rb ], [ %i.azz, %bb.rc ]
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.azc, ptr noundef %76, i1 noundef zeroext false, i1 noundef zeroext false)
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 291, ptr noundef %76)
  %i.bac = getelementptr inbounds nuw i8, ptr %76, i64 8
  %.val2319 = load ptr, ptr %i.bac, align 8
  %i.bad = getelementptr inbounds nuw i8, ptr %76, i64 16
  %.val2320 = load ptr, ptr %i.bad, align 8
  %i.bae = call fastcc ptr @pm_while_node_create(ptr noundef nonnull %0, ptr %.val2319, ptr %.val2320, ptr noundef %77, ptr noundef nonnull %i.azk, ptr noundef %i.azm, ptr noundef %.01964)
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #27
  br label %.loopexit3341

bb.rd:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #27
  %i.baf = getelementptr i8, ptr %0, i64 320      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %i.baf, i64 24, i1 false), !tbaa.struct !163
  %i.bag = call fastcc ptr @pm_array_node_create(ptr noundef nonnull %0, ptr noundef nonnull %78) ; 7 uses
  %i.bah = getelementptr i8, ptr %0, i64 304
  %i.bai = getelementptr inbounds nuw i8, ptr %79, i64 4
  %i.baj = getelementptr inbounds nuw i8, ptr %79, i64 8
  %i.bak = getelementptr inbounds nuw i8, ptr %79, i64 16
  %i.bal = getelementptr inbounds nuw i8, ptr %80, i64 4
  %i.bam = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.ban = getelementptr inbounds nuw i8, ptr %80, i64 16
  %i.bao = getelementptr i8, ptr %0, i64 693
  %i.bap = getelementptr i8, ptr %i.bag, i64 24   ; 2 uses
  %i.baq = getelementptr i8, ptr %i.bag, i64 48
  %i.bar = getelementptr i8, ptr %i.bag, i64 8
  %i.bas = getelementptr i8, ptr %i.bag, i64 16
  %i.bat = getelementptr i8, ptr %i.bag, i64 2    ; 4 uses
  %i.bau = getelementptr i8, ptr %0, i64 336      ; 2 uses
  %i.bav = getelementptr i8, ptr %0, i64 472      ; 2 uses
  %i.baw = getelementptr i8, ptr %0, i64 328
  br label %pm_array_node_elements_append.exit2670

pm_array_node_elements_append.exit2670:           ; preds = %pm_array_node_elements_append.exit2670.backedge, %bb.rd
  %.val2141 = load i32, ptr %i.b, align 8, !tbaa !170 ; 3 uses
  switch i32 %.val2141, label %accept1.exit2638 [
    i32 149, label %bb.ry
    i32 1, label %bb.ry
    i32 161, label %bb.re
  ]

bb.re:                                            ; preds = %pm_array_node_elements_append.exit2670
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2094.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit2638

accept1.exit2638:                                 ; preds = %pm_array_node_elements_append.exit2670, %bb.re
  %.val2094 = phi i32 [ %.val2141, %pm_array_node_elements_append.exit2670 ], [ %.val2094.pre, %bb.re ]
  switch i32 %.val2094, label %expect1.exit2674 [
    i32 149, label %.thread3307
    i32 148, label %.lr.ph3388
  ]

.thread3307:                                      ; preds = %accept1.exit2638
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !163
  br label %bb.sa

.lr.ph3388:                                       ; preds = %accept1.exit2638, %bb.rq
  %.119663387 = phi ptr [ %.21967, %bb.rq ], [ null, %accept1.exit2638 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #27
  %.val2215 = load ptr, ptr %i.bah, align 8, !tbaa !74 ; 5 uses
  store i32 164, ptr %79, align 8, !tbaa !126, !alias.scope !361
  store i32 0, ptr %i.bai, align 4, !alias.scope !361
  store ptr %.val2215, ptr %i.baj, align 8, !tbaa !127, !alias.scope !361
  store ptr %.val2215, ptr %i.bak, align 8, !tbaa !128, !alias.scope !361
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #27
  store i32 164, ptr %80, align 8, !tbaa !126, !alias.scope !364
  store i32 0, ptr %i.bal, align 4, !alias.scope !364
  store ptr %.val2215, ptr %i.bam, align 8, !tbaa !127, !alias.scope !364
  store ptr %.val2215, ptr %i.ban, align 8, !tbaa !128, !alias.scope !364
  %i.bax = icmp eq ptr %.119663387, null
  br i1 %i.bax, label %bb.rf, label %bb.rg

bb.rf:                                            ; preds = %.lr.ph3388
  %i.bay = call fastcc ptr @pm_symbol_node_create_current_string(ptr noundef nonnull %0, ptr noundef %79, ptr noundef nonnull %i.b, ptr noundef %80)
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.rq

bb.rg:                                            ; preds = %.lr.ph3388
  %i.baz = load i16, ptr %.119663387, align 8, !tbaa !115
  switch i16 %i.baz, label %bb.rp [
    i16 86, label %bb.rh
    i16 143, label %bb.rk
  ]

bb.rh:                                            ; preds = %bb.rg
  %i.bba = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %79, ptr noundef nonnull %i.b, ptr noundef %80) ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bbb = getelementptr i8, ptr %.119663387, i64 40 ; 2 uses
  %i.bbc = load i64, ptr %i.bbb, align 8, !tbaa !367
  %i.bbd = icmp eq i64 %i.bbc, 0
  br i1 %i.bbd, label %bb.ri, label %pm_interpolated_symbol_node_append.exit

bb.ri:                                            ; preds = %bb.rh
  %i.bbe = getelementptr i8, ptr %.119663387, i64 24
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !369
  %i.bbg = icmp eq ptr %i.bbf, null
  br i1 %i.bbg, label %bb.rj, label %pm_interpolated_symbol_node_append.exit

bb.rj:                                            ; preds = %bb.ri
  %i.bbh = getelementptr i8, ptr %i.bba, i64 8
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !133
  %i.bbj = getelementptr i8, ptr %.119663387, i64 8
  store ptr %i.bbi, ptr %i.bbj, align 8, !tbaa !370
  br label %pm_interpolated_symbol_node_append.exit

pm_interpolated_symbol_node_append.exit:          ; preds = %bb.rh, %bb.ri, %bb.rj
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %.119663387, ptr noundef nonnull %i.bbb, ptr noundef nonnull %i.bba)
  %i.bbk = getelementptr i8, ptr %.119663387, i64 16 ; 2 uses
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !371 ; 2 uses
  %i.bbm = getelementptr i8, ptr %i.bba, i64 16
  %i.bbn = load ptr, ptr %i.bbm, align 8, !tbaa !134 ; 2 uses
  %i.bbo = icmp ugt ptr %i.bbl, %i.bbn
  %..i2639 = select i1 %i.bbo, ptr %i.bbl, ptr %i.bbn
  store ptr %..i2639, ptr %i.bbk, align 8, !tbaa !371
  br label %bb.rq

bb.rk:                                            ; preds = %bb.rg
  %i.bbp = getelementptr i8, ptr %.119663387, i64 40
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !372 ; 2 uses
  %i.bbr = getelementptr i8, ptr %.119663387, i64 48
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !374 ; 2 uses
  %i.bbt = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.bbu = icmp eq ptr %i.bbt, null
  br i1 %i.bbu, label %bb.rl, label %pm_string_node_create_unescaped.exit

bb.rl:                                            ; preds = %bb.rk
  %i.bbv = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bbw = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bbv, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_string_node_create_unescaped.exit:             ; preds = %bb.rk
  %i.bbx = getelementptr i8, ptr %.119663387, i64 72
  %i.bby = load i8, ptr %i.bao, align 1, !tbaa !49 ; 2 uses
  %i.bbz = load i32, ptr %0, align 8, !tbaa !109
  %i.bca = add i32 %i.bbz, 1                      ; 2 uses
  store i32 %i.bca, ptr %0, align 8, !tbaa !109
  %switch.selectcmp24.i = icmp eq i8 %i.bby, -1
  %switch.selectcmp.i = icmp eq i8 %i.bby, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i16 18, i16 0
  %switch.select25.i = select i1 %switch.selectcmp24.i, i16 32, i16 %switch.select.i
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bbt, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bbx, i64 24, i1 false)
  store i16 141, ptr %i.bbt, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2642 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 2
  store i16 %switch.select25.i, ptr %.sroa.2.0..sroa_idx.i2642, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2643 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 4
  store i32 %i.bca, ptr %.sroa.3.0..sroa_idx.i2643, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2644 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 8 ; 2 uses
  store ptr %i.bbq, ptr %.sroa.4.0..sroa_idx.i2644, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i2645 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 16 ; 2 uses
  store ptr %i.bbs, ptr %.sroa.5.0..sroa_idx.i2645, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2646 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 24
  %.sroa.10.0..sroa_idx.i2648 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i2646, i8 0, i64 16, i1 false)
  store ptr %i.bbq, ptr %.sroa.10.0..sroa_idx.i2648, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i2649 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 48
  store ptr %i.bbs, ptr %.sroa.11.0..sroa_idx.i2649, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i2650 = getelementptr inbounds nuw i8, ptr %i.bbt, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i2650, i8 0, i64 16, i1 false)
  %i.bcb = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %79, ptr noundef nonnull %i.baf, ptr noundef %80) ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bcc = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.bcd = icmp eq ptr %i.bcc, null
  br i1 %i.bcd, label %bb.rm, label %pm_interpolated_symbol_node_append.exit2664

bb.rm:                                            ; preds = %pm_string_node_create_unescaped.exit
  %i.bce = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bcf = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bce, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_interpolated_symbol_node_append.exit2664:      ; preds = %pm_string_node_create_unescaped.exit
  %i.bcg = load i32, ptr %0, align 8, !tbaa !109
  %i.bch = add i32 %i.bcg, 1                      ; 2 uses
  store i32 %i.bch, ptr %0, align 8, !tbaa !109
  store i16 86, ptr %i.bcc, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i2654 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx.i2654, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i2655 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 4
  store i32 %i.bch, ptr %.sroa.3.0..sroa_idx.i2655, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2656 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i2657 = getelementptr inbounds nuw i8, ptr %i.bcc, i64 16 ; 5 uses
  store ptr %.val2215, ptr %.sroa.5.0..sroa_idx.i2657, align 8, !tbaa !14
end_hunk_5
begin_hunk_6_@parse_expression_prefix:bb.a
bb.yj:                                            ; preds = %bb.yi, %bb.yh
  %.19 = phi ptr [ %i.bwm, %bb.yh ], [ %i.bwn, %bb.yi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #27
  br label %.loopexit3341

bb.yk:                                            ; preds = %bb.a
  %i.bwo = icmp ugt i32 %1, 46
  br i1 %i.bwo, label %bb.yl, label %bb.ym

bb.yl:                                            ; preds = %bb.yk
  tail call fastcc void @pm_parser_err_prefix(ptr noundef nonnull %0, i32 noundef 276)
  br label %bb.ym

bb.ym:                                            ; preds = %bb.yl, %bb.yk
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #27
  %i.bwp = getelementptr i8, ptr %0, i64 320      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %106, ptr noundef nonnull align 8 dereferenceable(24) %i.bwp, i64 24, i1 false), !tbaa.struct !163
  %i.bwq = load i32, ptr %i.bwp, align 8, !tbaa !200
  %i.bwr = zext i32 %i.bwq to i64
  %i.bws = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.bwr
  %i.bwt = getelementptr i8, ptr %i.bws, i64 4
  %i.bwu = load i32, ptr %i.bwt, align 4, !tbaa !418
  %i.bwv = icmp ult i32 %1, 12
  %i.bww = add i16 %5, 1
  %i.bwx = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %i.bwu, i1 noundef zeroext %i.bwv, i1 noundef zeroext false, i32 noundef 277, i16 noundef zeroext %i.bww) ; 2 uses
  %i.bwy = call fastcc ptr @pm_call_node_unary_create(ptr noundef nonnull %0, ptr noundef %106, ptr noundef %i.bwx, ptr noundef nonnull @.str.109)
  tail call fastcc void @pm_conditional_predicate(ptr noundef nonnull %0, ptr noundef %i.bwx, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #27
  br label %.loopexit3341

bb.yn:                                            ; preds = %bb.a
  %i.bwz = icmp ugt i32 %1, 46
  br i1 %i.bwz, label %bb.yo, label %bb.yp

bb.yo:                                            ; preds = %bb.yn
  tail call fastcc void @pm_parser_err_prefix(ptr noundef nonnull %0, i32 noundef 276)
  br label %bb.yp

bb.yp:                                            ; preds = %bb.yo, %bb.yn
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #27
  %i.bxa = getelementptr i8, ptr %0, i64 320      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %107, ptr noundef nonnull align 8 dereferenceable(24) %i.bxa, i64 24, i1 false), !tbaa.struct !163
  %i.bxb = load i32, ptr %i.bxa, align 8, !tbaa !200
  %i.bxc = zext i32 %i.bxb to i64
  %i.bxd = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.bxc
  %i.bxe = getelementptr i8, ptr %i.bxd, i64 4
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !418
  %i.bxg = add i16 %5, 1
  %i.bxh = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %i.bxf, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 277, i16 noundef zeroext %i.bxg)
  %i.bxi = call fastcc ptr @pm_call_node_unary_create(ptr noundef nonnull %0, ptr noundef %107, ptr noundef %i.bxh, ptr noundef nonnull @.str.110)
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #27
  br label %.loopexit3341

bb.yq:                                            ; preds = %bb.a
  %i.bxj = icmp ugt i32 %1, 46
  br i1 %i.bxj, label %bb.yr, label %bb.ys

bb.yr:                                            ; preds = %bb.yq
  tail call fastcc void @pm_parser_err_prefix(ptr noundef nonnull %0, i32 noundef 276)
  br label %bb.ys

bb.ys:                                            ; preds = %bb.yr, %bb.yq
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #27
  %i.bxk = getelementptr i8, ptr %0, i64 320      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %108, ptr noundef nonnull align 8 dereferenceable(24) %i.bxk, i64 24, i1 false), !tbaa.struct !163
  %i.bxl = load i32, ptr %i.bxk, align 8, !tbaa !200
  %i.bxm = zext i32 %i.bxl to i64
  %i.bxn = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.bxm
  %i.bxo = getelementptr i8, ptr %i.bxn, i64 4
  %i.bxp = load i32, ptr %i.bxo, align 4, !tbaa !418
  %i.bxq = add i16 %5, 1
  %i.bxr = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %i.bxp, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 277, i16 noundef zeroext %i.bxq)
  %i.bxs = call fastcc ptr @pm_call_node_unary_create(ptr noundef nonnull %0, ptr noundef %108, ptr noundef %i.bxr, ptr noundef nonnull @.str.111)
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #27
  br label %.loopexit3341

bb.yt:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #27
  %i.bxt = getelementptr i8, ptr %0, i64 320      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %109, ptr noundef nonnull align 8 dereferenceable(24) %i.bxt, i64 24, i1 false), !tbaa.struct !163
  %i.bxu = load i32, ptr %i.bxt, align 8, !tbaa !200
  %i.bxv = zext i32 %i.bxu to i64
  %i.bxw = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.bxv
  %i.bxx = getelementptr i8, ptr %i.bxw, i64 4
  %i.bxy = load i32, ptr %i.bxx, align 4, !tbaa !418
  %i.bxz = add i16 %5, 1                          ; 2 uses
  %i.bya = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %i.bxy, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 277, i16 noundef zeroext %i.bxz) ; 5 uses
  %.val.i2965 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.byb = icmp eq i32 %.val.i2965, 145
  br i1 %i.byb, label %bb.yu, label %accept1.exit2966

bb.yu:                                            ; preds = %bb.yt
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %110, ptr noundef nonnull align 8 dereferenceable(24) %i.bxt, i64 24, i1 false), !tbaa.struct !163
  %i.byc = load i32, ptr %110, align 8, !tbaa !126
  %i.byd = zext i32 %i.byc to i64
  %i.bye = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.byd
  %i.byf = getelementptr i8, ptr %i.bye, i64 4
  %i.byg = load i32, ptr %i.byf, align 4, !tbaa !418
  %i.byh = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %i.byg, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 89, i16 noundef zeroext %i.bxz)
  %i.byi = call fastcc ptr @pm_call_node_binary_create(ptr noundef nonnull %0, ptr noundef %i.bya, ptr noundef %110, ptr noundef %i.byh, i16 noundef zeroext 0)
  %i.byj = call fastcc ptr @pm_call_node_unary_create(ptr noundef nonnull %0, ptr noundef %109, ptr noundef nonnull %i.byi, ptr noundef nonnull @.str.111)
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #27
  br label %bb.yx

accept1.exit2966:                                 ; preds = %bb.yt
  %i.byk = load i16, ptr %i.bya, align 8, !tbaa !115
  switch i16 %i.byk, label %bb.yw [
    i16 82, label %bb.yv
    i16 54, label %bb.yv
    i16 123, label %bb.yv
    i16 68, label %bb.yv
  ]

bb.yv:                                            ; preds = %accept1.exit2966, %accept1.exit2966, %accept1.exit2966, %accept1.exit2966
  tail call fastcc void @parse_negative_numeric(ptr noundef nonnull %i.bya)
  br label %bb.yx

bb.yw:                                            ; preds = %accept1.exit2966
  %i.byl = call fastcc ptr @pm_call_node_unary_create(ptr noundef nonnull %0, ptr noundef %109, ptr noundef nonnull %i.bya, ptr noundef nonnull @.str.111)
  br label %bb.yx

bb.yx:                                            ; preds = %bb.yv, %bb.yw, %bb.yu
  %.01898 = phi ptr [ %i.byj, %bb.yu ], [ %i.byl, %bb.yw ], [ %i.bya, %bb.yv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #27
  br label %.loopexit3341

bb.yy:                                            ; preds = %bb.a
  %i.bym = getelementptr i8, ptr %0, i64 12       ; 3 uses
  %i.byn = load i32, ptr %i.bym, align 4, !tbaa !202
  %i.byo = getelementptr i8, ptr %0, i64 8
  %i.byp = load i32, ptr %i.byo, align 8, !tbaa !201
  store i32 %i.byp, ptr %i.bym, align 4, !tbaa !202
  %i.byq = tail call fastcc i64 @token_newline_index(ptr noundef nonnull %0) ; 4 uses
  %i.byr = getelementptr i8, ptr %0, i64 24       ; 12 uses
  %i.bys = load i32, ptr %i.byr, align 8, !tbaa !7
  %i.byt = shl i32 %i.bys, 1
  store i32 %i.byt, ptr %i.byr, align 8, !tbaa !7
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #27
  %i.byu = getelementptr i8, ptr %0, i64 320      ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %111, ptr noundef nonnull align 8 dereferenceable(24) %i.byu, i64 24, i1 false), !tbaa.struct !163
  tail call fastcc void @pm_parser_scope_push(ptr noundef nonnull %0, i1 noundef zeroext false)
  %i.byv = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %i.byv, label %bb.zf [
    i32 124, label %bb.yz
    i32 152, label %bb.ze
    i32 18, label %bb.ze
    i32 155, label %bb.ze
    i32 66, label %bb.ze
    i32 111, label %bb.ze
    i32 159, label %bb.ze
    i32 143, label %bb.ze
    i32 145, label %bb.ze
    i32 160, label %bb.ze
    i32 41, label %bb.ze
    i32 68, label %bb.ze
    i32 59, label %bb.ze
    i32 37, label %bb.ze
  ]

bb.yz:                                            ; preds = %bb.yy
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %112, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !163
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2077 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.byw = icmp eq i32 %.val2077, 15
  br i1 %i.byw, label %bb.za, label %bb.zb

bb.za:                                            ; preds = %bb.yz
  %i.byx = call fastcc ptr @pm_block_parameters_node_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %112)
  br label %bb.zc

bb.zb:                                            ; preds = %bb.yz
  %i.byy = add i16 %5, 1
  %i.byz = call fastcc ptr @parse_block_parameters(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef %112, i1 noundef zeroext true, i1 noundef zeroext true, i16 noundef zeroext %i.byy)
  br label %bb.zc

bb.zc:                                            ; preds = %bb.zb, %bb.za
  %.01888 = phi ptr [ %i.byx, %bb.za ], [ %i.byz, %bb.zb ] ; 2 uses
  %.val.i2967 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.bza = icmp eq i32 %.val.i2967, 14
  br i1 %i.bza, label %bb.zd, label %accept1.exit2968

bb.zd:                                            ; preds = %bb.zc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2968

accept1.exit2968:                                 ; preds = %bb.zc, %bb.zd
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 110)
  tail call fastcc void @pm_block_parameters_node_closing_set(ptr noundef %.01888, ptr noundef nonnull %i.byu)
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #27
  br label %thread-pre-split3317

bb.ze:                                            ; preds = %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy, %bb.yy
  %i.bzb = load i32, ptr %i.byr, align 4, !tbaa !7
  %i.bzc = shl i32 %i.bzb, 1
  %i.bzd = or disjoint i32 %i.bzc, 1
  store i32 %i.bzd, ptr %i.byr, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #27
  %i.bze = getelementptr i8, ptr %0, i64 304
  %.val2185 = load ptr, ptr %i.bze, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %113, align 8, !tbaa !126, !alias.scope !419
  %i.bzf = getelementptr inbounds nuw i8, ptr %113, i64 4
  store i32 0, ptr %i.bzf, align 4, !alias.scope !419
  %i.bzg = getelementptr inbounds nuw i8, ptr %113, i64 8
  store ptr %.val2185, ptr %i.bzg, align 8, !tbaa !127, !alias.scope !419
  %i.bzh = getelementptr inbounds nuw i8, ptr %113, i64 16
  store ptr %.val2185, ptr %i.bzh, align 8, !tbaa !128, !alias.scope !419
  %i.bzi = add i16 %5, 1
  %i.bzj = call fastcc ptr @parse_block_parameters(ptr noundef nonnull %0, i1 noundef zeroext false, ptr noundef %113, i1 noundef zeroext true, i1 noundef zeroext false, i16 noundef zeroext %i.bzi)
  %i.bzk = load i32, ptr %i.byr, align 8, !tbaa !7
  %i.bzl = lshr i32 %i.bzk, 1
  store i32 %i.bzl, ptr %i.byr, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #27
  br label %thread-pre-split3317

thread-pre-split3317:                             ; preds = %accept1.exit2968, %bb.ze
  %.11889.ph = phi ptr [ %.01888, %accept1.exit2968 ], [ %i.bzj, %bb.ze ]
  %.val.i2969.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %bb.zf

bb.zf:                                            ; preds = %thread-pre-split3317, %bb.yy
  %.val.i2969 = phi i32 [ %.val.i2969.pr, %thread-pre-split3317 ], [ %i.byv, %bb.yy ]
  %.11889 = phi ptr [ %.11889.ph, %thread-pre-split3317 ], [ null, %bb.yy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #27
  store i32 %i.byn, ptr %i.bym, align 4, !tbaa !202
  %i.bzm = icmp eq i32 %.val.i2969, 113
  br i1 %i.bzm, label %bb.zg, label %accept1.exit2970

bb.zg:                                            ; preds = %bb.zf
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef nonnull align 8 dereferenceable(24) %i.byu, i64 24, i1 false), !tbaa.struct !163
  %.val2076 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.bzn = icmp eq i32 %.val2076, 2
  br i1 %i.bzn, label %bb.zi, label %bb.zh

bb.zh:                                            ; preds = %bb.zg
  %i.bzo = add i16 %5, 1
  %i.bzp = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 30, i16 noundef zeroext %i.bzo)
  br label %bb.zi

bb.zi:                                            ; preds = %bb.zh, %bb.zg
  %.01884 = phi ptr [ null, %bb.zg ], [ %i.bzp, %bb.zh ]
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.byq, ptr noundef %111, i1 noundef zeroext false, i1 noundef zeroext false)
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 176, ptr noundef %114)
  br label %bb.zp

accept1.exit2970:                                 ; preds = %bb.zf
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 5, i32 noundef 175)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %114, ptr noundef nonnull align 8 dereferenceable(24) %i.byu, i64 24, i1 false), !tbaa.struct !163
  %.val2158 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2158, label %bb.zj [
    i32 11, label %.split1988
    i32 9, label %.split1988
    i32 8, label %bb.zn
  ]

bb.zj:                                            ; preds = %accept1.exit2970
  %i.bzq = load i32, ptr %i.byr, align 4, !tbaa !7
  %i.bzr = shl i32 %i.bzq, 1
  store i32 %i.bzr, ptr %i.byr, align 4, !tbaa !7
  %i.bzs = add i16 %5, 1                          ; 2 uses
  %i.bzt = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 31, i16 noundef zeroext %i.bzs) ; 4 uses
  %i.bzu = load i32, ptr %i.byr, align 4, !tbaa !7
  %i.bzv = lshr i32 %i.bzu, 1
  store i32 %i.bzv, ptr %i.byr, align 4, !tbaa !7
  %.val2135 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2135, label %bb.zn [
    i32 11, label %bb.zk
    i32 9, label %bb.zk
  ]

bb.zk:                                            ; preds = %bb.zj, %bb.zj
  %i.bzw = icmp eq ptr %i.bzt, null
  br i1 %i.bzw, label %.split1988, label %bb.zl

.split1988:                                       ; preds = %accept1.exit2970, %accept1.exit2970, %bb.zk
  %i.bzx = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.bzy = load ptr, ptr %i.bzx, align 8, !tbaa !127
  %i.bzz = add i16 %5, 1
  %i.caa = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.byq, ptr noundef nonnull %111, ptr noundef %i.bzy, ptr noundef null, i32 noundef 5, i16 noundef zeroext %i.bzz)
  br label %bb.zo

bb.zl:                                            ; preds = %bb.zk
  %i.cab = load i16, ptr %i.bzt, align 8, !tbaa !115
  %i.cac = icmp eq i16 %i.cab, 140
  br i1 %i.cac, label %.split1987, label %bb.zm

.split1987:                                       ; preds = %bb.zl
  %i.cad = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !127
  %i.caf = call fastcc ptr @parse_rescues_implicit_begin(ptr noundef nonnull %0, i64 noundef %i.byq, ptr noundef nonnull %111, ptr noundef %i.cae, ptr noundef nonnull %i.bzt, i32 noundef 5, i16 noundef zeroext %i.bzs)
  br label %bb.zo

bb.zm:                                            ; preds = %bb.zl
  tail call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.2, i32 noundef 20166, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_prefix) #26
  unreachable

bb.zn:                                            ; preds = %accept1.exit2970, %bb.zj
  %.118853323 = phi ptr [ null, %accept1.exit2970 ], [ %i.bzt, %bb.zj ]
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.byq, ptr noundef %111, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.zo

bb.zo:                                            ; preds = %.split1987, %.split1988, %bb.zn
  %.21886 = phi ptr [ %.118853323, %bb.zn ], [ %i.caf, %.split1987 ], [ %i.caa, %.split1988 ]
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 177, ptr noundef %111)
  br label %bb.zp

bb.zp:                                            ; preds = %bb.zo, %bb.zi
  %.31887 = phi ptr [ %.01884, %bb.zi ], [ %.21886, %bb.zo ]
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #27
  %i.cag = getelementptr i8, ptr %0, i64 496
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !59 ; 2 uses
  %i.cai = getelementptr i8, ptr %i.cah, i64 8
  br label %bb.zq

bb.zq:                                            ; preds = %bb.zr, %bb.zp
  %.0.i2974 = phi ptr [ %i.cah, %bb.zp ], [ %i.caj, %bb.zr ] ; 2 uses
  %i.caj = load ptr, ptr %.0.i2974, align 8, !tbaa !92 ; 2 uses
  %i.cak = icmp eq ptr %i.caj, null               ; 2 uses
  br i1 %i.cak, label %pm_parser_scope_toplevel_p.exit, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  %i.cal = getelementptr i8, ptr %.0.i2974, i64 50
  %i.cam = load i8, ptr %i.cal, align 2, !tbaa !188, !range !45, !noundef !46
  %i.can = trunc nuw i8 %i.cam to i1
  br i1 %i.can, label %pm_parser_scope_toplevel_p.exit, label %bb.zq

pm_parser_scope_toplevel_p.exit:                  ; preds = %bb.zq, %bb.zr
  call fastcc void @pm_locals_order(ptr noundef %0, ptr noundef %i.cai, ptr noundef %115, i1 noundef zeroext %i.cak)
  %i.cao = call fastcc ptr @parse_blocklike_parameters(ptr noundef %0, ptr noundef %.11889, ptr noundef %111, ptr noundef nonnull %i.byu)
  call fastcc void @pm_parser_scope_pop(ptr noundef %0)
  %i.cap = load i32, ptr %i.byr, align 4, !tbaa !7
  %i.caq = lshr i32 %i.cap, 1
  store i32 %i.caq, ptr %i.byr, align 4, !tbaa !7
  %i.car = getelementptr inbounds nuw i8, ptr %111, i64 8
  %.val2331 = load ptr, ptr %i.car, align 8
  %i.cas = getelementptr inbounds nuw i8, ptr %111, i64 16
  %.val2332 = load ptr, ptr %i.cas, align 8
  %i.cat = getelementptr inbounds nuw i8, ptr %114, i64 8
  %.val2333 = load ptr, ptr %i.cat, align 8
  %i.cau = getelementptr inbounds nuw i8, ptr %114, i64 16
  %.val2334 = load ptr, ptr %i.cau, align 8
  %i.cav = call fastcc ptr @pm_lambda_node_create(ptr noundef %0, ptr noundef %115, ptr %.val2331, ptr %.val2332, ptr %.val2333, ptr %.val2334, ptr noundef nonnull %i.byu, ptr noundef %i.cao, ptr noundef %.31887)
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #27
  br label %.loopexit3341

bb.zs:                                            ; preds = %bb.a
  %i.caw = icmp ugt i32 %1, 46
  br i1 %i.caw, label %bb.zt, label %bb.zu

bb.zt:                                            ; preds = %bb.zs
  tail call fastcc void @pm_parser_err_prefix(ptr noundef nonnull %0, i32 noundef 276)
  br label %bb.zu

bb.zu:                                            ; preds = %bb.zt, %bb.zs
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #27
  %i.cax = getelementptr i8, ptr %0, i64 320      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %116, ptr noundef nonnull align 8 dereferenceable(24) %i.cax, i64 24, i1 false), !tbaa.struct !163
  %i.cay = load i32, ptr %i.cax, align 8, !tbaa !200
  %i.caz = zext i32 %i.cay to i64
  %i.cba = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.caz
  %i.cbb = getelementptr i8, ptr %i.cba, i64 4
  %i.cbc = load i32, ptr %i.cbb, align 4, !tbaa !418
  %i.cbd = add i16 %5, 1
  %i.cbe = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %i.cbc, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 277, i16 noundef zeroext %i.cbd)
  %i.cbf = call fastcc ptr @pm_call_node_unary_create(ptr noundef nonnull %0, ptr noundef %116, ptr noundef %i.cbe, ptr noundef nonnull @.str.113)
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #27
  br label %.loopexit3341

bb.zv:                                            ; preds = %bb.a
  %i.cbg = add i16 %5, 1
  %i.cbh = tail call fastcc ptr @parse_strings(ptr noundef nonnull %0, ptr noundef null, i1 noundef zeroext %3, i16 noundef zeroext %i.cbg)
  br label %.loopexit3341

bb.zw:                                            ; preds = %bb.a
  %i.cbi = getelementptr i8, ptr %0, i64 32
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !91 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.cbj, align 8, !tbaa !7
  %.sroa.43004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cbj, i64 16
  %.sroa.43004.0.copyload = load i8, ptr %.sroa.43004.0..sroa_idx, align 8
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.cbk = add i16 %5, 1
  %i.cbl = tail call fastcc ptr @parse_symbol(ptr noundef nonnull %0, i32 %.sroa.0.0.copyload, i8 %.sroa.43004.0.copyload, i32 noundef 2, i16 noundef zeroext %i.cbk)
  br label %.loopexit3341

bb.zx:                                            ; preds = %bb.a
  %i.cbm = getelementptr i8, ptr %0, i64 504
  %.08.i2975 = load ptr, ptr %i.cbm, align 8, !tbaa !213 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i2975, null
  br i1 %.not9.i, label %context_recoverable.exit.thread, label %.lr.ph.i2976

.lr.ph.i2976:                                     ; preds = %bb.zx
  %i.cbn = icmp ult i32 %i.c, 32
  %i.cbo = shl nuw i32 1, %i.c
  br i1 %i.cbn, label %context_terminator.exit.us.i, label %context_recoverable.exit.thread

context_terminator.exit.us.i:                     ; preds = %.lr.ph.i2976, %context_terminator.exit.thread.us.i
  %.010.us.i = phi ptr [ %.0.us.i, %context_terminator.exit.thread.us.i ], [ %.08.i2975, %.lr.ph.i2976 ] ; 2 uses
  %i.cbp = load i32, ptr %.010.us.i, align 8, !tbaa !215 ; 3 uses
  %i.cbq = zext i32 %i.cbp to i64
  %i.cbr = getelementptr [4 x i8], ptr @context_terminators, i64 %i.cbq
  %i.cbs = load i32, ptr %i.cbr, align 4, !tbaa !7
  %i.cbt = and i32 %i.cbs, %i.cbo
  %.not7.us.i = icmp eq i32 %i.cbt, 0
  br i1 %.not7.us.i, label %context_terminator.exit.thread.us.i, label %context_recoverable.exit

context_terminator.exit.thread.us.i:              ; preds = %context_terminator.exit.us.i
  %i.cbu = getelementptr i8, ptr %.010.us.i, i64 8
  %.0.us.i = load ptr, ptr %i.cbu, align 8, !tbaa !213 ; 2 uses
  %.not.us.i = icmp eq ptr %.0.us.i, null
  br i1 %.not.us.i, label %context_recoverable.exit.thread, label %context_terminator.exit.us.i, !llvm.loop !422

context_recoverable.exit:                         ; preds = %context_terminator.exit.us.i
  %.not2036 = icmp eq i32 %i.cbp, 0
  br i1 %.not2036, label %context_recoverable.exit.thread, label %bb.zy

bb.zy:                                            ; preds = %context_recoverable.exit
  %i.cbv = getelementptr i8, ptr %0, i64 697
  store i8 1, ptr %i.cbv, align 1, !tbaa !254
  %.not2037 = icmp eq i32 %4, 40
  br i1 %.not2037, label %bb.aaa, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  tail call fastcc void @pm_parser_err_prefix(ptr noundef nonnull %0, i32 noundef %4)
  %.pre3474 = load i32, ptr %i.b, align 8, !tbaa !170
  br label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz, %bb.zy
  %i.cbw = phi i32 [ %.pre3474, %bb.zz ], [ %i.c, %bb.zy ]
  %i.cbx = getelementptr i8, ptr %0, i64 472
  %i.cby = getelementptr i8, ptr %0, i64 352
  %i.cbz = load ptr, ptr %i.cby, align 8, !tbaa !166
  %i.cca = getelementptr i8, ptr %0, i64 360
  %i.ccb = load ptr, ptr %i.cca, align 8, !tbaa !76
  %i.ccc = tail call ptr @pm_token_type_human(i32 noundef %i.cbw) #27
  %i.ccd = tail call fastcc ptr @context_human(i32 noundef %i.cbp)
  %i.cce = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.cbx, ptr noundef %i.cbz, ptr noundef %i.ccb, i32 noundef 287, ptr noundef %i.ccc, ptr noundef nonnull %i.ccd) #27 ; 0 uses
  br label %bb.aad

context_recoverable.exit.thread:                  ; preds = %context_terminator.exit.thread.us.i, %bb.zx, %.lr.ph.i2976, %context_recoverable.exit
  %i.ccf = icmp eq i32 %4, 40
  br i1 %i.ccf, label %bb.aab, label %bb.aac

bb.aab:                                           ; preds = %context_recoverable.exit.thread
  %i.ccg = getelementptr i8, ptr %0, i64 472
  %i.cch = getelementptr i8, ptr %0, i64 352
  %i.cci = load ptr, ptr %i.cch, align 8, !tbaa !166
  %i.ccj = getelementptr i8, ptr %0, i64 360
  %i.cck = load ptr, ptr %i.ccj, align 8, !tbaa !76
  %i.ccl = tail call ptr @pm_token_type_human(i32 noundef %i.c) #27
  %i.ccm = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ccg, ptr noundef %i.cci, ptr noundef %i.cck, i32 noundef 288, ptr noundef %i.ccl) #27 ; 0 uses
  br label %bb.aad

bb.aac:                                           ; preds = %context_recoverable.exit.thread
  tail call fastcc void @pm_parser_err_prefix(ptr noundef %0, i32 noundef %4)
  br label %bb.aad

bb.aad:                                           ; preds = %bb.aab, %bb.aac, %bb.aaa
  %i.ccn = getelementptr i8, ptr %0, i64 328
  %i.cco = load ptr, ptr %i.ccn, align 8, !tbaa !256
  %i.ccp = getelementptr i8, ptr %0, i64 336
  %i.ccq = load ptr, ptr %i.ccp, align 8, !tbaa !255
  %i.ccr = tail call fastcc ptr @pm_missing_node_create(ptr noundef %0, ptr noundef %i.cco, ptr noundef %i.ccq)
  br label %.loopexit3341

.loopexit3341:                                    ; preds = %bb.pg, %bb.pd, %bb.qm, %bb.qn, %bb.pc, %bb.pf, %bb.gk, %bb.gl, %bb.gm, %bb.dx, %bb.dy, %bb.dz, %bb.du, %bb.dv, %bb.dw, %bb.dr, %bb.ds, %bb.dt, %bb.ct, %bb.cu, %bb.cv, %bb.aad, %bb.zw, %bb.zv, %bb.zu, %pm_parser_scope_toplevel_p.exit, %bb.yx, %bb.ys, %bb.yp, %bb.ym, %bb.yj, %bb.yd, %bb.yb, %bb.xh, %bb.wn, %bb.uy, %bb.ug, %bb.sb, %accept2.exit2635, %accept2.exit2627, %bb.qq, %bb.qp, %bb.qo, %bb.ql, %bb.qk, %bb.pu, %bb.pt, %bb.oy, %bb.ov, %bb.og, %context_def_p.exit2577, %bb.oa, %parse_operator_symbol_name.exit, %bb.lg, %bb.kf, %bb.jz, %bb.jt, %bb.jh, %accept2.exit2501, %bb.iy, %bb.hd, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gj, %bb.fe, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dj, %bb.df, %bb.cs, %accept1.exit2394, %context_p.exit, %bb.ap
  %.20 = phi ptr [ %i.ccr, %bb.aad ], [ %i.e, %bb.ap ], [ %.1, %context_p.exit ], [ %i.in, %accept1.exit2394 ], [ %.2, %bb.cs ], [ %i.cbl, %bb.zw ], [ %.3, %bb.df ], [ %.01904, %bb.dj ], [ %i.lt, %bb.dm ], [ %i.lv, %bb.dn ], [ %i.lx, %bb.do ], [ %i.lz, %bb.dp ], [ %i.mb, %bb.dq ], [ %i.kf, %bb.ct ], [ %i.md, %bb.dr ], [ %i.mj, %bb.du ], [ %.4, %bb.fe ], [ %.5, %bb.gj ], [ %i.mp, %bb.dx ], [ %i.sn, %bb.gn ], [ %i.sr, %bb.go ], [ %i.sv, %bb.gp ], [ %i.sz, %bb.gq ], [ %i.tb, %bb.gr ], [ %i.td, %bb.gs ], [ %i.tf, %bb.gt ], [ %.6, %bb.hd ], [ %.7, %bb.iy ], [ %i.aap, %accept2.exit2501 ], [ %i.abm, %bb.jh ], [ %.8, %bb.jt ], [ %.9, %bb.jz ], [ %i.adq, %bb.kf ], [ %.10, %bb.lg ], [ %i.aot, %parse_operator_symbol_name.exit ], [ %i.apt, %bb.oa ], [ %i.aqk, %context_def_p.exit2577 ], [ %i.aqm, %bb.og ], [ %i.asi, %bb.ov ], [ %i.asz, %bb.oy ], [ %i.sf, %bb.gk ], [ %.11, %bb.pt ], [ %i.avg, %bb.pu ], [ %.12, %bb.qk ], [ %i.axn, %bb.ql ], [ %i.ath, %bb.pc ], [ %i.axu, %bb.qo ], [ %i.axw, %bb.qp ], [ %i.axy, %bb.qq ], [ %i.azb, %accept2.exit2627 ], [ %i.bae, %accept2.exit2635 ], [ %i.bag, %bb.sb ], [ %i.bdv, %bb.ug ], [ %i.bls, %bb.uy ], [ %i.bnr, %bb.wn ], [ %.15, %bb.xh ], [ %.18, %bb.yb ], [ %i.bwd, %bb.yd ], [ %.19, %bb.yj ], [ %i.bwy, %bb.ym ], [ %i.bxi, %bb.yp ], [ %i.bxs, %bb.ys ], [ %.01898, %bb.yx ], [ %i.cav, %pm_parser_scope_toplevel_p.exit ], [ %i.cbf, %bb.zu ], [ %i.cbh, %bb.zv ], [ %i.kj, %bb.cv ], [ %i.kf, %bb.cu ], [ %i.mh, %bb.dt ], [ %i.md, %bb.ds ], [ %i.mn, %bb.dw ], [ %i.mj, %bb.dv ], [ %i.mt, %bb.dz ], [ %i.mp, %bb.dy ], [ %i.sj, %bb.gm ], [ %i.sf, %bb.gl ], [ %i.axp, %bb.qm ], [ %i.ath, %bb.pf ], [ %i.axp, %bb.qn ], [ %i.ath, %bb.pd ], [ %i.ath, %bb.pg ]
  ret ptr %.20
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @parse_expression_infix(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i16 noundef zeroext range(i16 1, 10001) %5) unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.pm_token_t, align 8         ; 71 uses
  %7 = alloca %struct.pm_string_t, align 8        ; 5 uses
  %8 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %9 = alloca %struct.pm_arguments_t, align 8     ; 9 uses
  %10 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %11 = alloca %struct.pm_node_list, align 8      ; 6 uses
  %12 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %13 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %14 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %15 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %16 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %17 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %18 = alloca %struct.pm_arguments_t, align 16   ; 11 uses
  %19 = alloca %struct.pm_constant_id_list_t, align 8 ; 5 uses
  %20 = alloca %struct.pm_constant_id_list_t, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.a = getelementptr i8, ptr %0, i64 344        ; 15 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !163
  %i.b = load i32, ptr %6, align 8, !tbaa !126
  switch i32 %i.b, label %bb.fi [
    i32 50, label %bb.b
    i32 20, label %bb.k
    i32 135, label %bb.ag
    i32 22, label %bb.bc
    i32 35, label %bb.bc
    i32 63, label %bb.bc
    i32 118, label %bb.bc
    i32 121, label %bb.bc
    i32 127, label %bb.bc
    i32 133, label %bb.bc
    i32 137, label %bb.bc
    i32 142, label %bb.bc
    i32 144, label %bb.bc
    i32 146, label %bb.bc
    i32 19, label %bb.cd
    i32 74, label %bb.cd
    i32 92, label %bb.cg
    i32 134, label %bb.cg
    i32 54, label %bb.cj
    i32 152, label %bb.cs
    i32 159, label %bb.cs
    i32 160, label %bb.cs
    i32 26, label %bb.cs
    i32 27, label %bb.cs
    i32 51, label %bb.cs
    i32 52, label %bb.cs
    i32 116, label %bb.cs
    i32 34, label %bb.cs
    i32 16, label %bb.cs
    i32 18, label %bb.cs
    i32 62, label %bb.cs
    i32 117, label %bb.cs
    i32 120, label %bb.cs
    i32 136, label %bb.cs
    i32 126, label %bb.cs
    i32 141, label %bb.cs
    i32 143, label %bb.cs
    i32 145, label %bb.cs
end_hunk_6
begin_hunk_7_@parse_expression_infix:bb.a
    i32 75, label %bb.em
    i32 76, label %bb.em
    i32 77, label %bb.em
    i32 78, label %bb.em
    i32 79, label %bb.em
    i32 80, label %bb.em
    i32 81, label %bb.em
    i32 5, label %bb.em
    i32 82, label %bb.em
    i32 6, label %bb.em
    i32 7, label %bb.em
    i32 8, label %bb.em
    i32 83, label %bb.em
    i32 9, label %bb.em
    i32 84, label %bb.em
    i32 85, label %bb.em
    i32 86, label %bb.em
    i32 10, label %bb.em
    i32 88, label %bb.em
    i32 89, label %bb.em
    i32 90, label %bb.em
    i32 91, label %bb.em
    i32 92, label %bb.em
    i32 93, label %bb.em
    i32 11, label %bb.em
    i32 95, label %bb.em
    i32 96, label %bb.em
    i32 97, label %bb.em
    i32 98, label %bb.em
    i32 12, label %bb.em
    i32 99, label %bb.em
    i32 100, label %bb.em
    i32 101, label %bb.em
    i32 103, label %bb.em
    i32 13, label %bb.em
    i32 105, label %bb.em
    i32 107, label %bb.em
    i32 66, label %bb.em
    i32 119, label %bb.em
    i32 124, label %bb.eq
  ]

bb.ed:                                            ; preds = %bb.ec
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ty = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.tz = icmp eq i32 %i.ty, 124
  br i1 %i.tz, label %bb.eh, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  br i1 %4, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.ua = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.ty)
  br i1 %i.ua, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %.val1001 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val1001, label %bb.ei [
    i32 160, label %bb.eh
    i32 159, label %bb.eh
    i32 152, label %bb.eh
  ]

bb.eh:                                            ; preds = %bb.eg, %bb.eg, %bb.eg, %bb.ef, %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.tw, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %14, i8 0, i64 56, i1 false)
  %narrow916 = add nuw nsw i16 %5, 1
  %i.ub = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %14, i1 noundef zeroext true, i1 noundef zeroext %4, i16 noundef zeroext %narrow916) ; 0 uses
  %i.uc = call fastcc ptr @pm_call_node_call_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg, %bb.ee
  %i.ud = call fastcc ptr @pm_constant_path_node_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %12, ptr noundef nonnull %i.tw)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.0894 = phi ptr [ %i.uc, %bb.eh ], [ %i.ud, %bb.ei ] ; 3 uses
  %i.ue = icmp eq i32 %2, 2
  br i1 %i.ue, label %bb.ek, label %bb.es

bb.ek:                                            ; preds = %bb.ej
  %.val998 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.uf = icmp eq i32 %.val998, 3
  br i1 %i.uf, label %bb.el, label %bb.es

bb.el:                                            ; preds = %bb.ek
  %narrow917 = add nuw nsw i16 %5, 1
  %i.ug = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %.0894, i16 noundef zeroext %narrow917)
  br label %bb.es

bb.em:                                            ; preds = %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec, %bb.ec
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.tw, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %16, i8 0, i64 56, i1 false)
  %narrow915 = add nuw nsw i16 %5, 1              ; 2 uses
  %i.uh = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %16, i1 noundef zeroext true, i1 noundef zeroext %4, i16 noundef zeroext %narrow915) ; 0 uses
  %i.ui = call fastcc ptr @pm_call_node_call_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %12, ptr noundef %15, ptr noundef %16) ; 3 uses
  %i.uj = icmp eq i32 %2, 2
  br i1 %i.uj, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %.val997 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.uk = icmp eq i32 %.val997, 3
  br i1 %i.uk, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.ul = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.ui, i16 noundef zeroext %narrow915)
  br label %bb.ep

bb.ep:                                            ; preds = %bb.em, %bb.en, %bb.eo
  %.7 = phi ptr [ %i.ul, %bb.eo ], [ %i.ui, %bb.en ], [ %i.ui, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.es

bb.eq:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, i8 0, i64 56, i1 false)
  %narrow914 = add nuw nsw i16 %5, 1
  %i.um = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %17, i1 noundef zeroext true, i1 noundef zeroext false, i16 noundef zeroext %narrow914) ; 0 uses
  %i.un = call fastcc ptr @pm_call_node_shorthand_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %12, ptr noundef %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.es

bb.er:                                            ; preds = %bb.ec
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 41, i32 noundef 61)
  %i.uo = call fastcc ptr @pm_constant_path_node_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %12, ptr noundef nonnull %i.tw)
  br label %bb.es

bb.es:                                            ; preds = %bb.el, %bb.ek, %bb.ej, %bb.er, %bb.eq, %bb.ep
  %.8 = phi ptr [ %i.uo, %bb.er ], [ %i.un, %bb.eq ], [ %.7, %bb.ep ], [ %i.ug, %bb.el ], [ %.0894, %bb.ek ], [ %.0894, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.critedge.thread

bb.et:                                            ; preds = %bb.a
  %i.up = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not = icmp eq ptr %i.up, null
  br i1 %.not, label %context_push.exit1072, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store i32 46, ptr %i.up, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i1070 = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i1070, align 4
  %.sroa.3.0..sroa_idx.i1071 = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.uq = getelementptr i8, ptr %0, i64 504       ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !253
  store ptr %i.ur, ptr %.sroa.3.0..sroa_idx.i1071, align 8
  store ptr %i.up, ptr %i.uq, align 8, !tbaa !253
  br label %context_push.exit1072

context_push.exit1072:                            ; preds = %bb.et, %bb.eu
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i1073 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.us = icmp eq i32 %.val.i1073, 14
  br i1 %i.us, label %bb.ev, label %accept1.exit1074

bb.ev:                                            ; preds = %context_push.exit1072
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit1074

accept1.exit1074:                                 ; preds = %context_push.exit1072, %bb.ev
  %narrow913 = add nuw nsw i16 %5, 1
  %i.ut = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 256, i16 noundef zeroext %narrow913)
  %i.uu = getelementptr i8, ptr %0, i64 504       ; 2 uses
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !253 ; 2 uses
  %i.uw = getelementptr i8, ptr %i.uv, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.uv) #27
  store ptr %i.ux, ptr %i.uu, align 8, !tbaa !253
  %i.uy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1016 = load ptr, ptr %i.uy, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1017 = load ptr, ptr %i.uz, align 8
  %i.va = tail call fastcc ptr @pm_rescue_modifier_node_create(ptr noundef nonnull %0, ptr noundef %1, ptr %.val1016, ptr %.val1017, ptr noundef %i.ut)
  br label %.critedge.thread

bb.ew:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.vb = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.vb, i8 0, i64 40, i1 false)
  %i.vc = getelementptr i8, ptr %0, i64 328       ; 2 uses
  %i.vd = load <2 x ptr>, ptr %i.vc, align 8, !tbaa !14
  store <2 x ptr> %i.vd, ptr %18, align 16, !tbaa !14
  %.val.i1075 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.ve = icmp eq i32 %.val.i1075, 33
  br i1 %i.ve, label %accept1.exit1076.thread, label %accept1.exit1076

accept1.exit1076.thread:                          ; preds = %bb.ew
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.ex

accept1.exit1076:                                 ; preds = %bb.ew
  %i.vf = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !7
  %i.vh = shl i32 %i.vg, 1
  store i32 %i.vh, ptr %i.vf, align 4, !tbaa !7
  %narrow907 = add nuw nsw i16 %5, 1
  call fastcc void @parse_arguments(ptr noundef nonnull %0, ptr noundef %18, i1 noundef zeroext false, i32 noundef 33, i16 noundef zeroext %narrow907)
  %i.vi = load i32, ptr %i.vf, align 4, !tbaa !7
  %i.vj = lshr i32 %i.vi, 1
  store i32 %i.vj, ptr %i.vf, align 4, !tbaa !7
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 33, i32 noundef 109)
  br label %bb.ex

bb.ex:                                            ; preds = %accept1.exit1076.thread, %accept1.exit1076
  %i.vk = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.vl = load <2 x ptr>, ptr %i.vc, align 8, !tbaa !14
  store <2 x ptr> %i.vl, ptr %i.vk, align 8, !tbaa !14
  %i.vm = icmp eq i32 %2, 2
  %.val996 = load i32, ptr %i.a, align 8, !tbaa !170 ; 3 uses
  %i.vn = icmp eq i32 %.val996, 3
  %or.cond1154 = select i1 %i.vm, i1 %i.vn, i1 false
  br i1 %or.cond1154, label %bb.ey, label %thread-pre-split1104

bb.ey:                                            ; preds = %bb.ex
  %i.vo = call fastcc ptr @pm_call_node_aref_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %18)
  %narrow912 = add nuw nsw i16 %5, 1
  %i.vp = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.vo, i16 noundef zeroext %narrow912)
  br label %bb.ff

thread-pre-split1104:                             ; preds = %bb.ex
  %i.vq = icmp eq i32 %.val996, 28
  br i1 %i.vq, label %bb.ez, label %accept1.exit1078

bb.ez:                                            ; preds = %thread-pre-split1104
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow909 = add nuw nsw i16 %5, 1
  %i.vr = tail call fastcc ptr @parse_block(ptr noundef nonnull %0, i16 noundef zeroext %narrow909) ; 2 uses
  call fastcc void @pm_arguments_validate_block(ptr noundef nonnull %0, ptr noundef %18, ptr noundef %i.vr)
  br label %accept1.exit1080

accept1.exit1078:                                 ; preds = %thread-pre-split1104
  %i.vs = getelementptr i8, ptr %0, i64 24
  %.val1011 = load i32, ptr %i.vs, align 4, !tbaa !7
  %i.vt = trunc i32 %.val1011 to i1
  %i.vu = icmp ne i32 %.val996, 5
  %or.cond1153.not = or i1 %i.vu, %i.vt
  br i1 %or.cond1153.not, label %accept1.exit1080.thread1105, label %bb.fa

bb.fa:                                            ; preds = %accept1.exit1078
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow908 = add nuw nsw i16 %5, 1
  %i.vv = tail call fastcc ptr @parse_block(ptr noundef nonnull %0, i16 noundef zeroext %narrow908)
  br label %accept1.exit1080

accept1.exit1080:                                 ; preds = %bb.ez, %bb.fa
  %.0888 = phi ptr [ %i.vr, %bb.ez ], [ %i.vv, %bb.fa ] ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !314 ; 2 uses
  %.not911 = icmp eq ptr %i.vx, null
  br i1 %.not911, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %accept1.exit1080
  %i.vy = getelementptr i8, ptr %.0888, i64 8
  %.0888.val = load ptr, ptr %i.vy, align 8, !tbaa !133
  %i.vz = getelementptr i8, ptr %.0888, i64 16
  %.0888.val1002 = load ptr, ptr %i.vz, align 8, !tbaa !134
  %i.wa = getelementptr i8, ptr %0, i64 472
  %i.wb = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.wa, ptr noundef %.0888.val, ptr noundef %.0888.val1002, i32 noundef 3) #27 ; 0 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 16, !tbaa !312 ; 2 uses
  %i.we = icmp eq ptr %i.wd, null
  br i1 %i.we, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.wf = tail call fastcc ptr @pm_arguments_node_create(ptr noundef nonnull %0) ; 2 uses
  store ptr %i.wf, ptr %i.wc, align 16, !tbaa !312
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.wg = phi ptr [ %i.wf, %bb.fc ], [ %i.wd, %bb.fb ]
  tail call fastcc void @pm_arguments_node_arguments_append(ptr noundef nonnull %i.wg, ptr noundef nonnull %i.vx)
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %accept1.exit1080
  store ptr %.0888, ptr %i.vw, align 8, !tbaa !314
  br label %accept1.exit1080.thread1105

accept1.exit1080.thread1105:                      ; preds = %accept1.exit1078, %bb.fe
  %i.wh = call fastcc ptr @pm_call_node_aref_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %18)
  br label %bb.ff

bb.ff:                                            ; preds = %accept1.exit1080.thread1105, %bb.ey
  %.9 = phi ptr [ %i.vp, %bb.ey ], [ %i.wh, %accept1.exit1080.thread1105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %.critedge.thread

bb.fg:                                            ; preds = %bb.a
  %i.wi = getelementptr i8, ptr %0, i64 700       ; 3 uses
  %i.wj = load i8, ptr %i.wi, align 4, !tbaa !196, !range !45, !noundef !46
  store i8 1, ptr %i.wi, align 4, !tbaa !196
  %.sroa.31084.0..sroa_idx = getelementptr i8, ptr %0, i64 352
  %.sroa.31084.0.copyload = load ptr, ptr %.sroa.31084.0..sroa_idx, align 8, !tbaa !14
  %.sroa.41085.0..sroa_idx = getelementptr i8, ptr %0, i64 360
  %.sroa.41085.0.copyload = load ptr, ptr %.sroa.41085.0..sroa_idx, align 8, !tbaa !14
  %i.wk = getelementptr i8, ptr %0, i64 696
  store i8 0, ptr %i.wk, align 8, !tbaa !164
  %i.wl = getelementptr i8, ptr %0, i64 4
  store i32 1025, ptr %i.wl, align 4, !tbaa !195
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %narrow906 = add nuw nsw i16 %5, 1
  %i.wm = call fastcc ptr @parse_pattern(ptr noundef nonnull %0, ptr noundef %19, i8 noundef zeroext 3, i32 noundef 226, i16 noundef zeroext %narrow906)
  store i8 %i.wj, ptr %i.wi, align 4, !tbaa !196
  call void @pm_constant_id_list_free(ptr noundef nonnull %19) #27
  %i.wn = call fastcc ptr @pm_match_predicate_node_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.wm, ptr %.sroa.31084.0.copyload, ptr %.sroa.41085.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.critedge.thread

bb.fh:                                            ; preds = %bb.a
  %i.wo = getelementptr i8, ptr %0, i64 700       ; 3 uses
  %i.wp = load i8, ptr %i.wo, align 4, !tbaa !196, !range !45, !noundef !46
  store i8 1, ptr %i.wo, align 4, !tbaa !196
  %.sroa.3.0..sroa_idx1081 = getelementptr i8, ptr %0, i64 352
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx1081, align 8, !tbaa !14
  %.sroa.4.0..sroa_idx1082 = getelementptr i8, ptr %0, i64 360
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx1082, align 8, !tbaa !14
  %i.wq = getelementptr i8, ptr %0, i64 696
  store i8 0, ptr %i.wq, align 8, !tbaa !164
  %i.wr = getelementptr i8, ptr %0, i64 4
  store i32 1025, ptr %i.wr, align 4, !tbaa !195
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %narrow = add nuw nsw i16 %5, 1
  %i.ws = call fastcc ptr @parse_pattern(ptr noundef nonnull %0, ptr noundef %20, i8 noundef zeroext 3, i32 noundef 225, i16 noundef zeroext %narrow)
  store i8 %i.wp, ptr %i.wo, align 4, !tbaa !196
  call void @pm_constant_id_list_free(ptr noundef nonnull %20) #27
  %i.wt = call fastcc ptr @pm_match_required_node_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.ws, ptr %.sroa.3.0.copyload, ptr %.sroa.4.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %.critedge.thread

bb.fi:                                            ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 21590, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_infix) #26
  unreachable

.critedge.thread:                                 ; preds = %bb.cm, %bb.ck, %bb.cr, %.critedge5, %.critedge, %bb.cj, %bb.bu, %bb.bw, %bb.ca, %bb.at, %bb.av, %bb.az, %bb.x, %bb.z, %bb.ad, %bb.fh, %bb.fg, %bb.ff, %accept1.exit1074, %bb.es, %bb.eb, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.do, %bb.da, %bb.cw, %pm_or_node_create.exit, %pm_and_node_create.exit, %bb.cc, %bb.cb, %pm_token_is_numbered_parameter.exit1049.thread, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %pm_global_variable_operator_write_node_create.exit, %bb.bb, %bb.ba, %pm_token_is_numbered_parameter.exit1047.thread, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae, %pm_token_is_numbered_parameter.exit.thread, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g
  %.10 = phi ptr [ %1, %bb.j ], [ %i.ad, %bb.g ], [ %i.ag, %bb.h ], [ %i.ai, %bb.i ], [ %1, %bb.af ], [ %i.az, %bb.m ], [ %i.bb, %bb.n ], [ %i.be, %bb.o ], [ %i.bh, %bb.p ], [ %i.bj, %bb.q ], [ %i.bm, %bb.r ], [ %i.cj, %pm_token_is_numbered_parameter.exit.thread ], [ %i.wt, %bb.fh ], [ %1, %bb.ae ], [ %1, %bb.bb ], [ %i.ec, %bb.ai ], [ %i.ee, %bb.aj ], [ %i.eh, %bb.ak ], [ %i.ek, %bb.al ], [ %i.em, %bb.am ], [ %i.ep, %bb.an ], [ %i.fm, %pm_token_is_numbered_parameter.exit1047.thread ], [ %i.dh, %bb.ad ], [ %1, %bb.ba ], [ %1, %bb.cc ], [ %i.hf, %pm_global_variable_operator_write_node_create.exit ], [ %i.io, %bb.bk ], [ %i.it, %bb.bl ], [ %i.iy, %bb.bm ], [ %i.jc, %bb.bn ], [ %i.jh, %bb.bo ], [ %i.kg, %pm_token_is_numbered_parameter.exit1049.thread ], [ %i.gk, %bb.az ], [ %1, %bb.cb ], [ %i.mc, %pm_and_node_create.exit ], [ %i.mx, %pm_or_node_create.exit ], [ %i.lg, %bb.ca ], [ %i.pr, %bb.cw ], [ %i.qi, %bb.da ], [ %.4, %bb.do ], [ %i.sf, %bb.dr ], [ %i.sh, %bb.ds ], [ %i.sj, %bb.dt ], [ %i.sp, %bb.du ], [ %i.sx, %bb.dv ], [ %.5, %bb.eb ], [ %.8, %bb.es ], [ %i.va, %accept1.exit1074 ], [ %.9, %bb.ff ], [ %i.wn, %bb.fg ], [ %i.cv, %bb.x ], [ %i.cz, %bb.z ], [ %i.fy, %bb.at ], [ %i.gc, %bb.av ], [ %i.kv, %bb.bu ], [ %i.ky, %bb.bw ], [ %i.nk, %bb.cj ], [ %i.oy, %bb.cr ], [ %i.ol, %.critedge5 ], [ %i.nk, %.critedge ], [ %i.nk, %bb.ck ], [ %i.nk, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret ptr %.10
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_array_node_create(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !126
  %i.l = icmp eq i32 %i.k, 164                    ; 2 uses
  %.sroa.9.015 = select i1 %i.l, ptr null, ptr %i.j ; 2 uses
  %.sroa.7.014 = select i1 %i.l, ptr null, ptr %i.h ; 2 uses
  store i16 6, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.014, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sroa.9.015, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.7.014, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.9.015, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_splat_node_create(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = icmp eq ptr %2, null
  %. = select i1 %i.e, ptr %1, ptr %2
  %storemerge.in = load i32, ptr %0, align 8, !tbaa !109
  %storemerge = add i32 %storemerge.in, 1         ; 2 uses
  store i32 %storemerge, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %.sroa.9.0.in = getelementptr i8, ptr %., i64 16
  %.sroa.9.0 = load ptr, ptr %.sroa.9.0.in, align 8, !tbaa !14
  store i16 139, ptr %i.a, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load <2 x ptr>, ptr %.sroa.7.0.in, align 8, !tbaa !14
  %.sroa.7.0 = load ptr, ptr %.sroa.7.0.in, align 8, !tbaa !127
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.f, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_keyword_hash_node_create(ptr noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit
end_hunk_7
begin_hunk_8_@parse_strings:bb.a
  %.sroa.2.0..sroa_idx.i432 = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  store i16 %switch.select28.i, ptr %.sroa.2.0..sroa_idx.i432, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i433 = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 %i.iw, ptr %.sroa.3.0..sroa_idx.i433, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i434 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store ptr %.val208, ptr %.sroa.4.0..sroa_idx.i434, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i435 = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store ptr %.val208, ptr %.sroa.5.0..sroa_idx.i435, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i436 = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %.sroa.11.0..sroa_idx.i438 = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i436, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i438, i8 0, i64 16, i1 false)
  call fastcc void @pm_interpolated_string_node_append(ptr noundef %i.iq, ptr noundef nonnull %.0159535)
  br label %bb.bv

bb.bv:                                            ; preds = %pm_interpolated_string_node_create.exit, %bb.bq
  %.1160 = phi ptr [ %.0159535, %bb.bq ], [ %i.iq, %pm_interpolated_string_node_create.exit ] ; 2 uses
  call fastcc void @pm_interpolated_string_node_append(ptr noundef %.1160, ptr noundef nonnull %.4)
  br label %thread-pre-split

bb.bw:                                            ; preds = %bb.bn, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.loopexit, !llvm.loop !445

.loopexit:                                        ; preds = %thread-pre-split, %bb.bw
  %.2 = phi ptr [ %.4, %bb.bw ], [ %.2161, %thread-pre-split ]
  ret ptr %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_class_variable_read_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 37
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.2, i32 noundef 3327, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_class_variable_read_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 576
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.m, ptr noundef %i.j, i64 noundef %i.p) #27
  store i16 30, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_targets_validate(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @parse_targets(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.c = icmp eq i32 %.val.i, 14
  br i1 %i.c, label %bb.b, label %accept1.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit

accept1.exit:                                     ; preds = %bb.a, %bb.b
  %.val = phi i32 [ %.val.i, %bb.a ], [ %.val.pre, %bb.b ]
  switch i32 %.val, label %bb.c [
    i32 50, label %bb.d
    i32 15, label %bb.d
  ]

bb.c:                                             ; preds = %accept1.exit
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %.val8 = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %.val9 = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.f = getelementptr i8, ptr %0, i64 472
  %i.g = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.f, ptr noundef %.val8, ptr noundef %.val9, i32 noundef 294) #27 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %accept1.exit, %accept1.exit, %bb.c
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc zeroext i1 @token_begins_expression_p(i32 noundef %0) unnamed_addr #8 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 53, label %bb.f
    i32 10, label %bb.f
    i32 2, label %bb.b
    i32 33, label %bb.b
    i32 38, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 1, label %bb.b
    i32 113, label %bb.b
    i32 5, label %bb.b
    i32 82, label %bb.b
    i32 8, label %bb.b
    i32 6, label %bb.b
    i32 7, label %bb.b
    i32 9, label %bb.b
    i32 12, label %bb.b
    i32 11, label %bb.b
    i32 13, label %bb.b
    i32 14, label %bb.b
    i32 15, label %bb.b
    i32 17, label %bb.b
    i32 152, label %bb.f
    i32 153, label %bb.d
    i32 156, label %bb.d
    i32 157, label %bb.d
    i32 158, label %bb.d
    i32 25, label %bb.d
    i32 151, label %bb.d
    i32 154, label %bb.d
    i32 155, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !286
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.2, i32 noundef 12526, ptr noundef nonnull @__PRETTY_FUNCTION__.token_begins_expression_p) #26
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = zext i32 %0 to i64
  %i.f = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !286
  %i.h = icmp eq i32 %i.g, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d
  %.0 = phi i1 [ %i.h, %bb.e ], [ true, %bb.d ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @parse_arguments_list(ptr noundef %0, ptr noundef nonnull captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i16 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344        ; 6 uses
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.b = icmp eq i32 %.val.i, 124
  br i1 %i.b, label %bb.b, label %accept1.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.c = getelementptr i8, ptr %0, i64 320
  %i.d = getelementptr i8, ptr %0, i64 328        ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 336
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !14
  store <2 x ptr> %i.f, ptr %1, align 8, !tbaa !14
  %.val.i81 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.g = icmp eq i32 %.val.i81, 15
  br i1 %i.g, label %bb.c, label %accept1.exit82

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load <2 x ptr>, ptr %i.d, align 8, !tbaa !14
  store <2 x ptr> %i.i, ptr %i.h, align 8, !tbaa !14
  br label %bb.k

accept1.exit82:                                   ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = shl i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !7
  %i.m = add i16 %4, 1
  tail call fastcc void @parse_arguments(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef 15, i16 noundef zeroext %i.m)
  %.val.i83 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.n = icmp eq i32 %.val.i83, 15
  br i1 %i.n, label %accept1.exit84.thread, label %accept1.exit84

accept1.exit84.thread:                            ; preds = %accept1.exit82
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.o = load <2 x ptr>, ptr %i.d, align 8, !tbaa !14
  br label %bb.d

accept1.exit84:                                   ; preds = %accept1.exit82
  %i.p = getelementptr i8, ptr %0, i64 472
  %i.q = getelementptr i8, ptr %0, i64 352
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !166
  %i.s = getelementptr i8, ptr %0, i64 360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.u = tail call ptr @pm_token_type_human(i32 noundef %.val.i83) #27
  %i.v = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t, i32 noundef 24, ptr noundef %i.u) #27 ; 0 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !255  ; 2 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !256
  store i32 163, ptr %i.c, align 8, !tbaa !200
  %i.x = insertelement <2 x ptr> poison, ptr %i.w, i64 0
  %i.y = shufflevector <2 x ptr> %i.x, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %accept1.exit84.thread, %accept1.exit84
  %i.z = phi <2 x ptr> [ %i.o, %accept1.exit84.thread ], [ %i.y, %accept1.exit84 ]
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !7
  %i.ab = lshr i32 %i.aa, 1
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !7
  %i.ac = getelementptr i8, ptr %1, i64 24
  store <2 x ptr> %i.z, ptr %i.ac, align 8, !tbaa !14
  br label %bb.k

accept1.exit:                                     ; preds = %bb.a
  br i1 %3, label %bb.e, label %bb.k

bb.e:                                             ; preds = %accept1.exit
  %i.ad = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %.val.i)
  %.val77.pre = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %.val77.pre, label %bb.k [
    i32 160, label %.thread
    i32 159, label %.thread
    i32 152, label %.thread
  ]

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp eq i32 %.val77.pre, 28
  br i1 %i.ae, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.f, %bb.f, %bb.f, %bb.g
  %i.af = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = shl i32 %i.ag, 1
  %i.ai = or disjoint i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !7
  %i.aj = add i16 %4, 1
  tail call fastcc void @parse_arguments(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef 1, i16 noundef zeroext %i.aj)
  %i.ak = getelementptr i8, ptr %0, i64 320
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !200
  %i.am = icmp eq i32 %i.al, 3
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.thread
  %.val = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.an = icmp eq i32 %.val, 17
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr i8, ptr %0, i64 472
  %i.ap = getelementptr i8, ptr %0, i64 328
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !256
  %i.ar = getelementptr i8, ptr %0, i64 336
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !255
  %i.at = tail call ptr @pm_token_type_human(i32 noundef %.val) #27
  %i.au = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.as, i32 noundef 89, ptr noundef %i.at) #27 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  %i.av = load i32, ptr %i.af, align 4, !tbaa !7
  %i.aw = lshr i32 %i.av, 1
  store i32 %i.aw, ptr %i.af, align 4, !tbaa !7
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %accept1.exit, %bb.g, %bb.j, %bb.c, %bb.d
  %.075 = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.g ], [ true, %bb.j ], [ false, %bb.f ], [ false, %accept1.exit ] ; 2 uses
  br i1 %2, label %bb.l, label %pm_arguments_validate_block.exit

bb.l:                                             ; preds = %bb.k
  %.val.i85 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.ax = icmp eq i32 %.val.i85, 28
  br i1 %i.ax, label %bb.m, label %accept1.exit86

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ay = add i16 %4, 1
  %i.az = tail call fastcc ptr @parse_block(ptr noundef nonnull %0, i16 noundef zeroext %i.ay) ; 6 uses
  %i.ba = getelementptr i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !312 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !315
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr i8, ptr %i.bb, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !111
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr i8, ptr %i.bb, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !446
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !105
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !115
  %i.bm = icmp eq i16 %i.bl, 116
  br i1 %i.bm, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bn = getelementptr i8, ptr %i.az, i64 8
  %.val.i87 = load ptr, ptr %i.bn, align 8, !tbaa !133
  %i.bo = getelementptr i8, ptr %i.az, i64 16
  %.val6.i = load ptr, ptr %i.bo, align 8, !tbaa !134
  %i.bp = getelementptr i8, ptr %0, i64 472
  %i.bq = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bp, ptr noundef %.val.i87, ptr noundef %.val6.i, i32 noundef 25) #27 ; 0 uses
  br label %bb.s

accept1.exit86:                                   ; preds = %bb.l
  %i.br = getelementptr i8, ptr %0, i64 24
  %.val80 = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bs = trunc i32 %.val80 to i1
  %i.bt = icmp ne i32 %.val.i85, 5
  %or.cond.not = or i1 %i.bt, %i.bs
  br i1 %or.cond.not, label %pm_arguments_validate_block.exit, label %bb.r

bb.r:                                             ; preds = %accept1.exit86
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bu = add i16 %4, 1
  %i.bv = tail call fastcc ptr @parse_block(ptr noundef nonnull %0, i16 noundef zeroext %i.bu)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.m, %bb.n, %bb.p
  %.0.ph = phi ptr [ %i.az, %bb.p ], [ %i.az, %bb.n ], [ %i.az, %bb.m ], [ %i.az, %bb.q ], [ %i.bv, %bb.r ] ; 3 uses
  %i.bw = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !314
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr i8, ptr %1, i64 48
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !447, !range !45, !noundef !46
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.u, label %pm_arguments_validate_block.exit.sink.split

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cc = getelementptr i8, ptr %.0.ph, i64 8
  %.0.val = load ptr, ptr %i.cc, align 8, !tbaa !133
  %i.cd = getelementptr i8, ptr %.0.ph, i64 16
  %.0.val79 = load ptr, ptr %i.cd, align 8, !tbaa !134
  %i.ce = getelementptr i8, ptr %0, i64 472
  %i.cf = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ce, ptr noundef %.0.val, ptr noundef %.0.val79, i32 noundef 7) #27 ; 0 uses
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !314 ; 5 uses
  %.not76 = icmp eq ptr %i.cg, null
  br i1 %.not76, label %pm_arguments_validate_block.exit.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !312 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ck = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.x, label %pm_arguments_node_create.exit

bb.x:                                             ; preds = %bb.w
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.cn = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cm, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_arguments_node_create.exit:                    ; preds = %bb.w
  %i.co = load i32, ptr %0, align 8, !tbaa !109
  %i.cp = add i32 %i.co, 1                        ; 2 uses
  store i32 %i.cp, ptr %0, align 8, !tbaa !109
  %i.cq = getelementptr i8, ptr %0, i64 304
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !74 ; 2 uses
  store i16 5, ptr %i.ck, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %i.cp, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.cr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !312
  br label %bb.y

bb.y:                                             ; preds = %pm_arguments_node_create.exit, %bb.v
  %i.cs = phi ptr [ %i.ck, %pm_arguments_node_create.exit ], [ %i.ci, %bb.v ] ; 4 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 24     ; 2 uses
  %.val.i90 = load i64, ptr %i.ct, align 8, !tbaa !111
  %i.cu = icmp eq i64 %.val.i90, 0
  br i1 %i.cu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cv = getelementptr i8, ptr %i.cg, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !133
  %i.cx = getelementptr i8, ptr %i.cs, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !113
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cy = getelementptr i8, ptr %i.cs, i64 16     ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !114
  %i.da = getelementptr i8, ptr %i.cg, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !134 ; 2 uses
  %i.dc = icmp ult ptr %i.cz, %i.db
  br i1 %i.dc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.db, ptr %i.cy, align 8, !tbaa !114
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @pm_node_list_append(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cg) #27
  %i.dd = load i16, ptr %i.cg, align 8, !tbaa !115
  %i.de = icmp eq i16 %i.dd, 139
  br i1 %i.de, label %.sink.split.i, label %pm_arguments_validate_block.exit.sink.split

.sink.split.i:                                    ; preds = %bb.ac
  %i.df = getelementptr i8, ptr %i.cs, i64 2      ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !116 ; 2 uses
  %i.dh = and i16 %i.dg, 32
  %..i = add nuw nsw i16 %i.dh, 32
  %i.di = or i16 %..i, %i.dg
  store i16 %i.di, ptr %i.df, align 2, !tbaa !116
  br label %pm_arguments_validate_block.exit.sink.split

pm_arguments_validate_block.exit.sink.split:      ; preds = %bb.u, %bb.ac, %.sink.split.i, %bb.t
  store ptr %.0.ph, ptr %i.bw, align 8, !tbaa !314
  br label %pm_arguments_validate_block.exit

pm_arguments_validate_block.exit:                 ; preds = %pm_arguments_validate_block.exit.sink.split, %accept1.exit86, %bb.k
  %.2 = phi i1 [ %.075, %bb.k ], [ %.075, %accept1.exit86 ], [ true, %pm_arguments_validate_block.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_call_node_fcall_create(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_call_node_create.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 32, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 4 uses
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  %i.i = getelementptr i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !314  ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %pm_call_node_create.exit
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134  ; 3 uses
  %i.m = getelementptr i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !315
  %.not20.i = icmp eq ptr %i.n, null
  br i1 %.not20.i, label %pm_arguments_end.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !316  ; 2 uses
  %i.q = icmp ugt ptr %i.p, %i.l
  %spec.select.i = select i1 %i.q, ptr %i.p, ptr %i.l
  br label %pm_arguments_end.exit

bb.e:                                             ; preds = %pm_call_node_create.exit
  %i.r = getelementptr i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !315
  %.not18.i = icmp eq ptr %i.s, null
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !316
  br label %pm_arguments_end.exit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !312  ; 2 uses
  %.not19.i = icmp eq ptr %i.w, null
  br i1 %.not19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  br label %pm_arguments_end.exit

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %2, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !316
  br label %pm_arguments_end.exit

pm_arguments_end.exit:                            ; preds = %bb.c, %bb.d, %bb.f, %bb.h, %bb.i
  %.013.i = phi ptr [ %i.aa, %bb.i ], [ %i.u, %bb.f ], [ %i.y, %bb.h ], [ %i.l, %bb.c ], [ %spec.select.i, %bb.d ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.013.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.ab = load i32, ptr %1, align 8, !tbaa !126
  %i.ac = icmp eq i32 %i.ab, 164                  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 16
  %.val23.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !128 ; 2 uses
  %. = select i1 %i.ac, ptr null, ptr %i.h
end_hunk_8
begin_hunk_9_@pm_xstring_node_create_unescaped:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = getelementptr i8, ptr %3, i64 16
  %i.i = getelementptr i8, ptr %2, i64 8
  %i.j = getelementptr i8, ptr %3, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !127
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load <2 x ptr>, ptr %i.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !128
  %i.o = load <2 x ptr>, ptr %i.j, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i16 150, ptr %i.a, align 8, !tbaa !110
  store i16 16, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.k, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.m, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.o, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_string_node_create_unescaped(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4) unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 693
  %i.f = load i8, ptr %i.e, align 1, !tbaa !49    ; 2 uses
  %i.g = load i32, ptr %1, align 8, !tbaa !126
  %i.h = icmp eq i32 %i.g, 164                    ; 2 uses
  %.pn = select i1 %i.h, ptr %2, ptr %1
  %.in = getelementptr i8, ptr %.pn, i64 8
  %i.i = load ptr, ptr %.in, align 8, !tbaa !127
  %i.j = load i32, ptr %3, align 8, !tbaa !126
  %i.k = icmp eq i32 %i.j, 164                    ; 2 uses
  %.pn23 = select i1 %i.k, ptr %2, ptr %3
  %.in22 = getelementptr i8, ptr %.pn23, i64 16
  %i.l = load ptr, ptr %.in22, align 8, !tbaa !128
  %i.m = load i32, ptr %0, align 8, !tbaa !109
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !109
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %i.q = phi <2 x ptr> [ %i.p, %bb.c ], [ splat (ptr null), %pm_node_alloc.exit ]
  %i.r = getelementptr i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !14
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %3, i64 8
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi <2 x ptr> [ %i.u, %bb.e ], [ splat (ptr null), %bb.d ]
  %switch.selectcmp24 = icmp eq i8 %i.f, -1
  %switch.selectcmp = icmp eq i8 %i.f, 1
  %switch.select = select i1 %switch.selectcmp, i16 18, i16 0
  %switch.select25 = select i1 %switch.selectcmp24, i16 32, i16 %switch.select
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store i16 141, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %switch.select25, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.n, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x ptr> %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x ptr> %i.s, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store <2 x ptr> %i.v, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @parse_string_part(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %3 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 344        ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %i.b, label %bb.v [
    i32 148, label %bb.b
    i32 48, label %bb.f
    i32 49, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.c = getelementptr i8, ptr %0, i64 304
  %.val63 = load ptr, ptr %i.c, align 8, !tbaa !74 ; 4 uses
  store i32 164, ptr %2, align 8, !tbaa !126, !alias.scope !467
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.d, align 4, !alias.scope !467
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val63, ptr %i.e, align 8, !tbaa !127, !alias.scope !467
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.val63, ptr %i.f, align 8, !tbaa !128, !alias.scope !467
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 164, ptr %3, align 8, !tbaa !126, !alias.scope !470
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.g, align 4, !alias.scope !470
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.val63, ptr %i.h, align 8, !tbaa !127, !alias.scope !470
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.val63, ptr %i.i, align 8, !tbaa !128, !alias.scope !470
  %i.j = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %3) ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 672
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !207  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq ptr %i.l, @pm_encodings
  br i1 %i.m, label %parse_unescaped_encoding.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 520
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = icmp eq ptr %i.o, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.p, label %parse_unescaped_encoding.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  br label %parse_unescaped_encoding.exit

parse_unescaped_encoding.exit:                    ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i16 [ 0, %bb.e ], [ 4, %bb.c ], [ 8, %bb.d ]
  %i.q = getelementptr i8, ptr %i.j, i64 2        ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !116
  %i.s = or i16 %i.r, %.0.i
  store i16 %i.s, ptr %i.q, align 2, !tbaa !116
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.t, align 8, !tbaa !207
  %i.u = getelementptr i8, ptr %0, i64 4          ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !195  ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !203  ; 2 uses
  store i32 0, ptr %i.w, align 8, !tbaa !203
  store i32 1, ptr %i.u, align 4, !tbaa !195
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.y = getelementptr i8, ptr %0, i64 320
  %.sroa.391.0..sroa_idx = getelementptr i8, ptr %0, i64 328 ; 4 uses
  %.sroa.492.0..sroa_idx = getelementptr i8, ptr %0, i64 336 ; 2 uses
  %i.z = load <2 x ptr>, ptr %.sroa.391.0..sroa_idx, align 8, !tbaa !14
  %.sroa.391.0.copyload = load ptr, ptr %.sroa.391.0..sroa_idx, align 8, !tbaa !14
  %.val = load i32, ptr %i.a, align 8, !tbaa !170
  %i.aa = icmp eq i32 %.val, 4
  br i1 %i.aa, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  store i32 %i.x, ptr %i.w, align 8, !tbaa !203
  store i32 %i.v, ptr %i.u, align 4, !tbaa !195
  br label %accept1.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = shl i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !7
  %i.ae = add i16 %1, 1
  %i.af = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 26, i16 noundef zeroext %i.ae) ; 2 uses
  %i.ag = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ah = lshr i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ab, align 4, !tbaa !7
  %.val.i.i.pr = load i32, ptr %i.a, align 8, !tbaa !170
  store i32 %i.x, ptr %i.w, align 8, !tbaa !203
  store i32 %i.v, ptr %i.u, align 4, !tbaa !195
  %i.ai = icmp eq i32 %.val.i.i.pr, 4
  br i1 %i.ai, label %accept1.exit.thread.i, label %accept1.exit.i

accept1.exit.thread.i:                            ; preds = %.thread, %bb.g
  %.06096 = phi ptr [ null, %.thread ], [ %i.af, %bb.g ]
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.388.0.copyload.pre = load ptr, ptr %.sroa.391.0..sroa_idx, align 8, !tbaa !14
  br label %expect1.exit

accept1.exit.i:                                   ; preds = %bb.g
  %i.aj = load ptr, ptr %.sroa.492.0..sroa_idx, align 8, !tbaa !255 ; 4 uses
  %i.ak = getelementptr i8, ptr %0, i64 472
  %i.al = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ak, ptr noundef %i.aj, ptr noundef %i.aj, i32 noundef 73) #27 ; 0 uses
  store ptr %i.aj, ptr %.sroa.391.0..sroa_idx, align 8, !tbaa !256
  store i32 163, ptr %i.y, align 8, !tbaa !200
  br label %expect1.exit

expect1.exit:                                     ; preds = %accept1.exit.thread.i, %accept1.exit.i
  %.sroa.388.0.copyload = phi ptr [ %.sroa.388.0.copyload.pre, %accept1.exit.thread.i ], [ %i.aj, %accept1.exit.i ]
  %.06095 = phi ptr [ %.06096, %accept1.exit.thread.i ], [ %i.af, %accept1.exit.i ] ; 4 uses
  %.sroa.489.0.copyload = load ptr, ptr %.sroa.492.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %.06095, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %expect1.exit
  %i.am = getelementptr i8, ptr %.06095, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !101
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %.06095, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !104
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105
  %i.as = getelementptr i8, ptr %i.ar, i64 2      ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !116
  %i.au = and i16 %i.at, -2
  store i16 %i.au, ptr %i.as, align 2, !tbaa !116
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %expect1.exit
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 10 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %pm_embedded_statements_node_create.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ay = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ax, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_embedded_statements_node_create.exit:          ; preds = %bb.j
  %i.az = load i32, ptr %0, align 8, !tbaa !109
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %0, align 8, !tbaa !109
  store i16 48, ptr %i.av, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.ba, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.391.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %.sroa.489.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store <2 x ptr> %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %.06095, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !136
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr %.sroa.388.0.copyload, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store ptr %.sroa.489.0.copyload, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.bb = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.bb, align 8, !tbaa !207
  %i.bc = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.bc, align 4, !tbaa !195
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bd = getelementptr i8, ptr %0, i64 320       ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %0, i64 328 ; 3 uses
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %0, i64 336 ; 2 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14 ; 4 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %i.be, label %accept1.exit.i75 [
    i32 24, label %bb.m
    i32 123, label %bb.n
    i32 59, label %bb.o
    i32 68, label %bb.q
    i32 37, label %bb.r
    i32 66, label %accept1.exit.thread.i76
  ]

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bf = tail call fastcc ptr @pm_back_reference_read_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.bd)
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bg = tail call fastcc ptr @pm_numbered_reference_read_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.bd)
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bh = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.p, label %pm_global_variable_read_node_create.exit

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bk = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bj, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_global_variable_read_node_create.exit:         ; preds = %bb.o
  %i.bl = load i32, ptr %0, align 8, !tbaa !109
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr %0, align 8, !tbaa !109
  %i.bn = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !127 ; 3 uses
  %i.bo = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !128 ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 576
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.bp, ptr noundef %i.bn, i64 noundef %i.bs) #27
  store i16 62, ptr %i.bh, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bm, ptr %.sroa.3.0..sroa_idx.i70, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx.i71, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.bo, ptr %.sroa.5.0..sroa_idx.i72, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 %i.bt, ptr %.sroa.6.0..sroa_idx.i73, align 8, !tbaa !7
  br label %bb.t

bb.q:                                             ; preds = %bb.l
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bu = tail call fastcc ptr @pm_instance_variable_read_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.bd)
  br label %bb.t

bb.r:                                             ; preds = %bb.l
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bv = tail call fastcc ptr @pm_class_variable_read_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.bd)
  br label %bb.t

accept1.exit.thread.i76:                          ; preds = %bb.l
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit77

accept1.exit.i75:                                 ; preds = %bb.l
  %i.bw = getelementptr i8, ptr %0, i64 472
  %i.bx = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bw, ptr noundef %.sroa.4.0.copyload, ptr noundef %.sroa.4.0.copyload, i32 noundef 74) #27 ; 0 uses
  store ptr %.sroa.4.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !256
  store i32 163, ptr %i.bd, align 8, !tbaa !200
  br label %expect1.exit77

expect1.exit77:                                   ; preds = %accept1.exit.thread.i76, %accept1.exit.i75
  %i.by = getelementptr i8, ptr %0, i64 352
  %i.bz = load <2 x ptr>, ptr %i.by, align 8, !tbaa !14
  %i.ca = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 5 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.s, label %pm_missing_node_create.exit

bb.s:                                             ; preds = %expect1.exit77
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.cd = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cc, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_missing_node_create.exit:                      ; preds = %expect1.exit77
  %i.ce = load i32, ptr %0, align 8, !tbaa !109
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %0, align 8, !tbaa !109
  store i16 103, ptr %i.ca, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 %i.cf, ptr %.sroa.3.0..sroa_idx.i78, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store <2 x ptr> %i.bz, ptr %.sroa.4.0..sroa_idx.i79, align 8, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %pm_missing_node_create.exit, %bb.r, %bb.q, %pm_global_variable_read_node_create.exit, %bb.n, %bb.m
  %.0 = phi ptr [ %i.ca, %pm_missing_node_create.exit ], [ %i.bf, %bb.m ], [ %i.bg, %bb.n ], [ %i.bh, %pm_global_variable_read_node_create.exit ], [ %i.bu, %bb.q ], [ %i.bv, %bb.r ] ; 2 uses
  %i.cg = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.u, label %pm_embedded_variable_node_create.exit

bb.u:                                             ; preds = %bb.t
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.cj = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ci, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_embedded_variable_node_create.exit:            ; preds = %bb.t
  %i.ck = load i32, ptr %0, align 8, !tbaa !109
  %i.cl = add i32 %i.ck, 1                        ; 2 uses
end_hunk_9
begin_hunk_10_@parse_rescues:bb.a
bb.h:                                             ; preds = %bb.g
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.aa = icmp eq i32 %.val152, 159
  br i1 %i.aa, label %bb.i, label %accept1.exit.thread222

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr i8, ptr %i.o, i64 40
  br label %bb.j

bb.j:                                             ; preds = %accept1.exit165, %bb.i
  %.val.i214 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.ac = icmp eq i32 %.val.i214, 159
  br i1 %i.ac, label %bb.k, label %accept1.exit215

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3220.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %.sroa.4221.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.ad = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 101, i16 noundef zeroext %i.g), !inline_history !493 ; 4 uses
  %i.ae = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.ad), !inline_history !493 ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i210, label %parse_value_expression.exit213, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val.i.i211 = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val5.i.i212 = load ptr, ptr %i.ag, align 8, !tbaa !134
  %i.ah = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.f, ptr noundef %.val.i.i211, ptr noundef %.val5.i.i212, i32 noundef 290) #27, !inline_history !493 ; 0 uses
  br label %parse_value_expression.exit213

parse_value_expression.exit213:                   ; preds = %bb.k, %bb.l
  %i.ai = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.m, label %pm_splat_node_create.exit

bb.m:                                             ; preds = %parse_value_expression.exit213
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.al = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ak, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_splat_node_create.exit:                        ; preds = %parse_value_expression.exit213
  %i.am = icmp eq ptr %i.ad, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.am, label %pm_splat_node_create.exit.cont, label %pm_splat_node_create.exit.else

pm_splat_node_create.exit.else:                   ; preds = %pm_splat_node_create.exit
  %.sroa.gep218 = getelementptr i8, ptr %i.ad, i64 16
  %.sroa.9.0.i203.else.val = load ptr, ptr %.sroa.gep218, align 8, !tbaa !14
  br label %pm_splat_node_create.exit.cont

pm_splat_node_create.exit.cont:                   ; preds = %pm_splat_node_create.exit, %pm_splat_node_create.exit.else
  %.sroa.9.0.i203 = phi ptr [ %.sroa.4221.0.copyload, %pm_splat_node_create.exit ], [ %.sroa.9.0.i203.else.val, %pm_splat_node_create.exit.else ]
  store i16 139, ptr %i.ai, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i204 = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i204, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i205 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.3220.0.copyload, ptr %.sroa.7.0..sroa_idx.i205, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.9.0.i203, ptr %.sroa.9.0..sroa_idx.i206, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %.sroa.3220.0.copyload, ptr %.sroa.11.0..sroa_idx.i207, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %.sroa.4221.0.copyload, ptr %.sroa.12.0..sroa_idx.i208, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.ad, ptr %.sroa.13.0..sroa_idx.i209, align 8, !tbaa !105
  br label %parse_starred_expression.exit

accept1.exit215:                                  ; preds = %bb.j
  %i.an = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 255, i16 noundef zeroext %i.e), !inline_history !493 ; 3 uses
  %i.ao = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.an), !inline_history !493 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %parse_starred_expression.exit, label %bb.n

bb.n:                                             ; preds = %accept1.exit215
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i200 = load ptr, ptr %i.ap, align 8, !tbaa !133
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  %.val5.i.i = load ptr, ptr %i.aq, align 8, !tbaa !134
  %i.ar = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.f, ptr noundef %.val.i.i200, ptr noundef %.val5.i.i, i32 noundef 290) #27, !inline_history !493 ; 0 uses
  br label %parse_starred_expression.exit

parse_starred_expression.exit:                    ; preds = %bb.n, %accept1.exit215, %pm_splat_node_create.exit.cont
  %.0.i = phi ptr [ %i.ai, %pm_splat_node_create.exit.cont ], [ %i.an, %accept1.exit215 ], [ %i.an, %bb.n ] ; 2 uses
  tail call void @pm_node_list_append(ptr noundef %i.ab, ptr noundef %.0.i) #27
  %i.as = getelementptr i8, ptr %.0.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !134
  store ptr %i.at, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  %.val156 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val156, label %accept1.exit.thread222 [
    i32 3, label %accept1.exit165
    i32 53, label %bb.o
  ]

bb.o:                                             ; preds = %parse_starred_expression.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.au = load i32, ptr %i.b, align 8, !tbaa !126
  %i.av = icmp eq i32 %i.au, 164
  br i1 %i.av, label %accept1.exit.thread222thread-pre-split, label %accept1.exit.thread222thread-pre-split.sink.split

accept1.exit165:                                  ; preds = %parse_starred_expression.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.j, !llvm.loop !496

accept1.exit.thread222thread-pre-split.sink.split: ; preds = %bb.o, %bb.f
  %i.aw = load <2 x ptr>, ptr %i.c, align 8, !tbaa !14
  br label %accept1.exit.thread222thread-pre-split

accept1.exit.thread222thread-pre-split:           ; preds = %accept1.exit.thread222thread-pre-split.sink.split, %bb.o, %bb.f
  %i.ax = phi <2 x ptr> [ splat (ptr null), %bb.f ], [ splat (ptr null), %bb.o ], [ %i.aw, %accept1.exit.thread222thread-pre-split.sink.split ]
  %i.ay = getelementptr i8, ptr %i.o, i64 64
  store <2 x ptr> %i.ax, ptr %i.ay, align 8, !tbaa !14
  %i.az = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 48, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 258, i16 noundef zeroext %i.e)
  %i.ba = tail call fastcc ptr @parse_target(ptr noundef nonnull %0, ptr noundef %i.az, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %i.bb = getelementptr i8, ptr %i.o, i64 80
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !497
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !134
  store ptr %i.bd, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  %.val.i166.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %accept1.exit.thread222

accept1.exit.thread222:                           ; preds = %parse_starred_expression.exit, %accept1.exit.thread222thread-pre-split, %bb.h, %pm_rescue_node_create.exit, %pm_rescue_node_create.exit, %pm_rescue_node_create.exit
  %.val.i166 = phi i32 [ %.val.i166.pr, %accept1.exit.thread222thread-pre-split ], [ %.val152, %bb.h ], [ %i.w, %pm_rescue_node_create.exit ], [ %i.w, %pm_rescue_node_create.exit ], [ %i.w, %pm_rescue_node_create.exit ], [ %.val156, %parse_starred_expression.exit ]
  switch i32 %.val.i166, label %expect1.exit.thread [
    i32 17, label %bb.p
    i32 14, label %bb.p
    i32 12, label %expect1.exit
  ]

bb.p:                                             ; preds = %accept1.exit.thread222, %accept1.exit.thread222
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i167 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.be = icmp eq i32 %.val.i167, 12
  br i1 %i.be, label %bb.q, label %accept1.exit168

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bf = getelementptr i8, ptr %i.o, i64 88      ; 2 uses
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !200
  %i.bh = icmp eq i32 %i.bg, 164
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br label %accept1.exit168thread-pre-split

bb.s:                                             ; preds = %bb.q
  %i.bi = load <2 x ptr>, ptr %i.c, align 8, !tbaa !14
  store <2 x ptr> %i.bi, ptr %i.bf, align 8, !tbaa !14
  br label %accept1.exit168thread-pre-split

expect1.exit.thread:                              ; preds = %accept1.exit.thread222
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !255 ; 4 uses
  %i.bk = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.f, ptr noundef %i.bj, ptr noundef %i.bj, i32 noundef 257) #27 ; 0 uses
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !256
  store i32 163, ptr %i.b, align 8, !tbaa !200
  %i.bl = getelementptr i8, ptr %i.o, i64 88
  br label %bb.u

expect1.exit:                                     ; preds = %accept1.exit.thread222
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.b, align 8, !tbaa !200
  %i.bm = getelementptr i8, ptr %i.o, i64 88      ; 2 uses
  %i.bn = icmp eq i32 %.pr, 164
  br i1 %i.bn, label %bb.t, label %expect1.exit._crit_edge

expect1.exit._crit_edge:                          ; preds = %expect1.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !256
  br label %bb.u

bb.t:                                             ; preds = %expect1.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %accept1.exit168thread-pre-split

bb.u:                                             ; preds = %expect1.exit._crit_edge, %expect1.exit.thread
  %i.bo = phi ptr [ %i.bj, %expect1.exit.thread ], [ %.pre, %expect1.exit._crit_edge ]
  %i.bp = phi ptr [ %i.bl, %expect1.exit.thread ], [ %i.bm, %expect1.exit._crit_edge ]
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !255
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !14
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %i.o, i64 96
  store ptr %i.bq, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  br label %accept1.exit168thread-pre-split

accept1.exit168thread-pre-split:                  ; preds = %bb.r, %bb.s, %bb.u, %bb.t
  %.val155.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %accept1.exit168

accept1.exit168:                                  ; preds = %accept1.exit168thread-pre-split, %bb.p
  %.val155 = phi i32 [ %.val155.pr, %accept1.exit168thread-pre-split ], [ %.val.i167, %bb.p ]
  switch i32 %.val155, label %switch.lookup [
    i32 9, label %accept2.exit173
    i32 8, label %accept2.exit173
    i32 6, label %accept2.exit173
  ]

switch.lookup:                                    ; preds = %accept1.exit168
  %i.br = load i32, ptr %i.h, align 4, !tbaa !7
  %i.bs = shl i32 %i.br, 1
  store i32 %i.bs, ptr %i.h, align 4, !tbaa !7
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.bt = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef %switch.load, i16 noundef zeroext %i.e) ; 4 uses
  %.not148 = icmp eq ptr %i.bt, null
  br i1 %.not148, label %pm_rescue_node_statements_set.exit, label %bb.v

bb.v:                                             ; preds = %switch.lookup
  %i.bu = getelementptr i8, ptr %i.o, i64 104
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !498
  %i.bv = getelementptr i8, ptr %i.bt, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !101
  %.not5.i = icmp eq i64 %i.bw, 0
  br i1 %.not5.i, label %pm_rescue_node_statements_set.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr i8, ptr %i.bt, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !122
  store ptr %i.by, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  br label %pm_rescue_node_statements_set.exit

pm_rescue_node_statements_set.exit:               ; preds = %bb.w, %bb.v, %switch.lookup
  %i.bz = load i32, ptr %i.h, align 4, !tbaa !7
  %i.ca = lshr i32 %i.bz, 1
  store i32 %i.ca, ptr %i.h, align 4, !tbaa !7
  %.val.i171 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val.i171, label %accept2.exit173 [
    i32 17, label %bb.x
    i32 14, label %bb.x
  ]

bb.x:                                             ; preds = %pm_rescue_node_statements_set.exit, %pm_rescue_node_statements_set.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit173

accept2.exit173:                                  ; preds = %pm_rescue_node_statements_set.exit, %accept1.exit168, %accept1.exit168, %accept1.exit168, %bb.x
  %i.cb = icmp eq ptr %.0138236, null
  br i1 %i.cb, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %accept2.exit173
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !499
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %bb.z, label %pm_begin_node_rescue_clause_set.exit

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !500
  store ptr %i.cd, ptr %i.j, align 8, !tbaa !501
  br label %pm_begin_node_rescue_clause_set.exit

pm_begin_node_rescue_clause_set.exit:             ; preds = %bb.y, %bb.z
  %i.ce = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  store ptr %i.ce, ptr %i.k, align 8, !tbaa !348
  store ptr %i.o, ptr %i.l, align 8, !tbaa !502
  br label %bb.ab

bb.aa:                                            ; preds = %accept2.exit173
  %i.cf = getelementptr i8, ptr %.0138236, i64 112
  store ptr %i.o, ptr %i.cf, align 8, !tbaa !503
  %i.cg = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  %i.ch = getelementptr i8, ptr %.0138236, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !494
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %pm_begin_node_rescue_clause_set.exit
  %.val153 = load i32, ptr %i.a, align 8, !tbaa !170 ; 3 uses
  %i.ci = icmp eq i32 %.val153, 11
  br i1 %i.ci, label %bb.b, label %._crit_edge, !llvm.loop !504

._crit_edge:                                      ; preds = %bb.ab
  %i.cj = getelementptr i8, ptr %i.o, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !494
  %i.cl = getelementptr i8, ptr %3, i64 48
  %.0137239 = load ptr, ptr %i.cl, align 8, !tbaa !505 ; 2 uses
  %.not143240 = icmp eq ptr %.0137239, null
  br i1 %.not143240, label %.loopexit, label %.lr.ph243

.lr.ph243:                                        ; preds = %._crit_edge, %.lr.ph243
  %.0137241 = phi ptr [ %.0137, %.lr.ph243 ], [ %.0137239, %._crit_edge ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.0137241, i64 16
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !494
  %i.cn = getelementptr i8, ptr %.0137241, i64 112
  %.0137 = load ptr, ptr %i.cn, align 8, !tbaa !505 ; 2 uses
  %.not143 = icmp eq ptr %.0137, null
  br i1 %.not143, label %.loopexit, label %.lr.ph243, !llvm.loop !506

.loopexit:                                        ; preds = %.lr.ph243, %bb.a, %._crit_edge
  %.val153.lcssa263 = phi i32 [ %.val153235, %bb.a ], [ %.val153, %._crit_edge ], [ %.val153, %.lr.ph243 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.co = icmp eq i32 %.val153.lcssa263, 6
  br i1 %i.co, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %.loopexit
  %.not144 = icmp eq ptr %2, null
  br i1 %.not144, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = getelementptr i8, ptr %0, i64 376
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !168
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr i8, ptr %0, i64 608
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !483
  %i.cu = add i64 %i.ct, -1
  br label %token_newline_index.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cv = getelementptr i8, ptr %0, i64 600
  %i.cw = getelementptr i8, ptr %0, i64 352
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !166
  %i.cy = tail call i32 @pm_newline_list_line(ptr noundef %i.cv, ptr noundef %i.cx, i32 noundef 0) #27
  %i.cz = sext i32 %i.cy to i64
  br label %token_newline_index.exit

token_newline_index.exit:                         ; preds = %bb.af, %bb.ag
  %.0.i174 = phi i64 [ %i.cu, %bb.af ], [ %i.cz, %bb.ag ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !163
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i175 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i175, label %accept2.exit177 [
    i32 17, label %bb.ah
    i32 14, label %bb.ah
  ]

bb.ah:                                            ; preds = %token_newline_index.exit, %token_newline_index.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val154.pre = load i32, ptr %i.a, align 8, !tbaa !170
  br label %accept2.exit177

accept2.exit177:                                  ; preds = %token_newline_index.exit, %bb.ah
  %.val154 = phi i32 [ %.val.i175, %token_newline_index.exit ], [ %.val154.pre, %bb.ah ]
  %i.da = and i32 %.val154, -2
  %i.db = icmp eq i32 %i.da, 8
  br i1 %i.db, label %accept2.exit181, label %switch.lookup278

switch.lookup278:                                 ; preds = %accept2.exit177
  %i.dc = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = shl i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !7
  %i.df = zext nneg i32 %4 to i64
  %i.dg = getelementptr [4 x i8], ptr @switch.table.parse_rescues.109, i64 %i.df
  %switch.gep279 = getelementptr i8, ptr %i.dg, i64 -4
  %switch.load280 = load i32, ptr %switch.gep279, align 4
  %i.dh = add i16 %5, 1
  %i.di = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef %switch.load280, i16 noundef zeroext %i.dh) ; 2 uses
  %i.dj = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.dk = lshr i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dc, align 4, !tbaa !7
  %.val.i179 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val.i179, label %accept2.exit181 [
    i32 17, label %bb.ai
    i32 14, label %bb.ai
  ]

bb.ai:                                            ; preds = %switch.lookup278, %switch.lookup278
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit181

accept2.exit181:                                  ; preds = %switch.lookup278, %accept2.exit177, %bb.ai
  %.0136 = phi ptr [ null, %accept2.exit177 ], [ %i.di, %switch.lookup278 ], [ %i.di, %bb.ai ] ; 3 uses
  %i.dl = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 10 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.aj, label %pm_node_alloc.exit.i

bb.aj:                                            ; preds = %accept2.exit181
  %i.dn = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.do = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dn, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %accept2.exit181
  %i.dp = load i32, ptr %i.a, align 8, !tbaa !126
  %i.dq = icmp eq i32 %i.dp, 164                  ; 2 uses
  %i.dr = icmp ne ptr %.0136, null
  %or.cond.i182 = and i1 %i.dr, %i.dq
  %i.ds = load i32, ptr %0, align 8, !tbaa !109
  %i.dt = add i32 %i.ds, 1                        ; 2 uses
  store i32 %i.dt, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in20.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.du = load <2 x ptr>, ptr %.sroa.7.0.in20.i, align 8, !tbaa !14
  %.sroa.7.021.i = load ptr, ptr %.sroa.7.0.in20.i, align 8, !tbaa !127 ; 2 uses
  br i1 %or.cond.i182, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %pm_node_alloc.exit.i
  %.sroa.9.0.in22.i = getelementptr i8, ptr %.0136, i64 16
  %.sroa.9.023.i = load ptr, ptr %.sroa.9.0.in22.i, align 8, !tbaa !14
  br label %pm_else_node_create.exit

bb.ak:                                            ; preds = %pm_node_alloc.exit.i
  %.sroa.9.0.in.i = getelementptr i8, ptr %0, i64 360
  %.sroa.9.0.i = load ptr, ptr %.sroa.9.0.in.i, align 8, !tbaa !14 ; 3 uses
  br i1 %i.dq, label %pm_else_node_create.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = getelementptr i8, ptr %0, i64 352
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !127
  br label %pm_else_node_create.exit

pm_else_node_create.exit:                         ; preds = %.thread.i, %bb.ak, %bb.al
  %.sroa.9.026.i = phi ptr [ %.sroa.9.0.i, %bb.al ], [ %.sroa.9.0.i, %bb.ak ], [ %.sroa.9.023.i, %.thread.i ] ; 3 uses
  %.sroa.14.0.i = phi ptr [ %i.dw, %bb.al ], [ null, %bb.ak ], [ null, %.thread.i ]
  %.sroa.16.0.i = phi ptr [ %.sroa.9.0.i, %bb.al ], [ null, %bb.ak ], [ null, %.thread.i ]
  store i16 47, ptr %i.dl, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i183 = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 %i.dt, ptr %.sroa.5.0..sroa_idx.i183, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i184 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %.sroa.7.021.i, ptr %.sroa.7.0..sroa_idx.i184, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %.sroa.9.026.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store <2 x ptr> %i.du, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store ptr %.0136, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !136
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store ptr %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store ptr %.sroa.16.0.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !14
  %i.dx = getelementptr i8, ptr %3, i64 16
  store ptr %.sroa.9.026.i, ptr %i.dx, align 8, !tbaa !348
  %i.dy = getelementptr i8, ptr %3, i64 56
  store ptr %i.dl, ptr %i.dy, align 8, !tbaa !507
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %pm_else_node_create.exit
  %i.dz = getelementptr i8, ptr %0, i64 472
  %i.ea = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.dz, ptr noundef %.sroa.7.021.i, ptr noundef %.sroa.9.026.i, i32 noundef 31) #27 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %pm_else_node_create.exit, %bb.am, %.loopexit
  %.0134 = phi ptr [ %2, %.loopexit ], [ %6, %bb.am ], [ %6, %pm_else_node_create.exit ] ; 4 uses
  %.0 = phi i64 [ %1, %.loopexit ], [ %.0.i174, %bb.am ], [ %.0.i174, %pm_else_node_create.exit ] ; 2 uses
  %.val150 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.eb = icmp eq i32 %.val150, 9
  br i1 %i.eb, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %.not145 = icmp eq ptr %.0134, null
  br i1 %.not145, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %.0, ptr noundef %.0134, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %0, i64 352 ; 3 uses
  %.sroa.4217.0..sroa_idx = getelementptr i8, ptr %0, i64 360
  %i.ec = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i185 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i185, label %accept2.exit187 [
    i32 17, label %bb.ar
    i32 14, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val149.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %accept2.exit187

accept2.exit187:                                  ; preds = %bb.aq, %bb.ar
  %.val149 = phi i32 [ %.val.i185, %bb.aq ], [ %.val149.pr, %bb.ar ]
  %i.ed = icmp eq i32 %.val149, 8
  br i1 %i.ed, label %accept2.exit190, label %switch.lookup282

switch.lookup282:                                 ; preds = %accept2.exit187
  %i.ee = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.eg = shl i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !7
  %i.eh = zext nneg i32 %4 to i64
  %i.ei = getelementptr [4 x i8], ptr @switch.table.parse_rescues.110, i64 %i.eh
  %switch.gep283 = getelementptr i8, ptr %i.ei, i64 -4
  %switch.load284 = load i32, ptr %switch.gep283, align 4
  %i.ej = add i16 %5, 1
  %i.ek = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef %switch.load284, i16 noundef zeroext %i.ej) ; 2 uses
  %i.el = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.em = lshr i32 %i.el, 1
  store i32 %i.em, ptr %i.ee, align 4, !tbaa !7
  %.val.i188 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val.i188, label %accept2.exit190 [
    i32 17, label %bb.as
    i32 14, label %bb.as
  ]

bb.as:                                            ; preds = %switch.lookup282, %switch.lookup282
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit190

accept2.exit190:                                  ; preds = %switch.lookup282, %bb.as, %accept2.exit187
  %.0133 = phi ptr [ null, %accept2.exit187 ], [ %i.ek, %switch.lookup282 ], [ %i.ek, %bb.as ]
  %i.en = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 9 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.at, label %pm_ensure_node_create.exit

bb.at:                                            ; preds = %accept2.exit190
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.eq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ep, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_ensure_node_create.exit:                       ; preds = %accept2.exit190
  %i.er = load i32, ptr %0, align 8, !tbaa !109
  %i.es = add i32 %i.er, 1                        ; 2 uses
  store i32 %i.es, ptr %0, align 8, !tbaa !109
  store i16 50, ptr %i.en, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i192 = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %i.es, ptr %.sroa.3.0..sroa_idx.i192, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.4.0..sroa_idx.i193, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i194 = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.sroa.6.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store <2 x ptr> %i.ec, ptr %.sroa.6.0..sroa_idx.i195, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store ptr %.0133, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !136
  %.sroa.9.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.et = load ptr, ptr %.sroa.4217.0..sroa_idx, align 8, !tbaa !128 ; 2 uses
  %i.eu = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14
  store ptr %i.et, ptr %.sroa.5.0..sroa_idx.i194, align 8, !tbaa !14
  store <2 x ptr> %i.eu, ptr %.sroa.9.0..sroa_idx.i197, align 8, !tbaa !14
  %i.ev = getelementptr i8, ptr %3, i64 16
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !348
  %i.ew = getelementptr i8, ptr %3, i64 64
  store ptr %i.en, ptr %i.ew, align 8, !tbaa !508
  %.val.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %bb.au

bb.au:                                            ; preds = %pm_ensure_node_create.exit, %bb.an
  %.val = phi i32 [ %.val.pr, %pm_ensure_node_create.exit ], [ %.val150, %bb.an ]
  %i.ex = icmp eq i32 %.val, 8
  br i1 %i.ex, label %bb.av, label %pm_begin_node_end_keyword_set.exit199

bb.av:                                            ; preds = %bb.au
  %.not146 = icmp eq ptr %.0134, null
  br i1 %.not146, label %pm_begin_node_end_keyword_set.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %.0, ptr noundef %.0134, i1 noundef zeroext false, i1 noundef zeroext false)
  %.pre249 = load i32, ptr %i.a, align 8, !tbaa !126
  switch i32 %.pre249, label %bb.ax [
    i32 8, label %pm_begin_node_end_keyword_set.exit
    i32 163, label %pm_begin_node_end_keyword_set.exit
  ]

bb.ax:                                            ; preds = %bb.aw
  call void @__assert_fail(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.2, i32 noundef 2384, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_begin_node_end_keyword_set) #26
  unreachable

pm_begin_node_end_keyword_set.exit:               ; preds = %bb.av, %bb.aw, %bb.aw
  %i.ey = getelementptr i8, ptr %0, i64 360
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !128 ; 2 uses
  %i.fa = getelementptr i8, ptr %3, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !348
  %i.fb = getelementptr i8, ptr %3, i64 72
  %i.fc = getelementptr i8, ptr %0, i64 352
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !127
  store ptr %i.fd, ptr %i.fb, align 8, !tbaa !14
  br label %bb.ay

pm_begin_node_end_keyword_set.exit199:            ; preds = %bb.au
  %i.fe = getelementptr i8, ptr %0, i64 336
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !255 ; 3 uses
  %i.fg = getelementptr i8, ptr %3, i64 16
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !348
  %i.fh = getelementptr i8, ptr %3, i64 72
  store ptr %i.ff, ptr %i.fh, align 8, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %pm_begin_node_end_keyword_set.exit199, %pm_begin_node_end_keyword_set.exit
  %.sink = phi ptr [ %i.ff, %pm_begin_node_end_keyword_set.exit199 ], [ %i.ez, %pm_begin_node_end_keyword_set.exit ]
  %.sroa.2.0..sroa_idx.i198 = getelementptr i8, ptr %3, i64 80
  store ptr %.sink, ptr %.sroa.2.0..sroa_idx.i198, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_begin_node_end_keyword_set(ptr noundef nonnull writeonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  switch i32 %i.a, label %bb.b [
    i32 8, label %bb.c
    i32 163, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.2, i32 noundef 2384, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_begin_node_end_keyword_set) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !14
  store ptr %i.f, ptr %i.c, align 8, !tbaa !348
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_pre_execution_node_create(ptr noundef captures(none) %0, ptr %.8.val, ptr %.16.val, ptr %.8.val1, ptr %.16.val3, ptr noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = getelementptr i8, ptr %2, i64 8
  store i16 120, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.8.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.16.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val3, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !14
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.j, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_arguments(ptr noundef %0, ptr noundef nonnull captures(none) %1, i1 noundef zeroext %2, i32 noundef range(i32 1, 34) %3, i16 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.pm_static_literals_t, align 8 ; 5 uses
  %6 = alloca %struct.pm_token_t, align 8         ; 4 uses
  %7 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %8 = alloca %struct.pm_static_literals_t, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 344        ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170  ; 6 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !286
  %i.f = icmp eq i32 %i.b, %3
  %i.g = icmp eq i32 %i.b, 1
  %spec.select.i = or i1 %i.f, %i.g
  %i.h = add i32 %i.e, -1
  %or.cond = icmp ult i32 %i.h, 21
  %or.cond164 = select i1 %spec.select.i, i1 true, i1 %or.cond
  br i1 %or.cond164, label %accept1.exit272.thread301, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.b, 32
  br i1 %i.i, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 504
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253
  %i.l = load i32, ptr %i.k, align 8, !tbaa !215
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr [4 x i8], ptr @context_terminators, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = shl nuw i32 1, %i.b
  %i.q = and i32 %i.o, %i.p
  %.not303 = icmp eq i32 %i.q, 0
  br i1 %.not303, label %thread-pre-split, label %accept1.exit272.thread301
end_hunk_10
begin_hunk_11_@parse_parameters:bb.a
  %i.dt = select <2 x i1> %i.do, <2 x i1> splat (i1 true), <2 x i1> %i.ds
  %i.du = select <2 x i1> %i.dt, <2 x ptr> %i.dp, <2 x ptr> %i.dn
  store <2 x ptr> %i.du, ptr %i.t, align 8, !tbaa !14
  tail call void @pm_node_list_append(ptr noundef %i.v, ptr noundef nonnull %i.dl) #27
  br i1 %i.cx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dv = load ptr, ptr %i.p, align 8, !tbaa !256
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !255
  %i.dx = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %i.dv, ptr noundef %i.dw, i32 noundef 217) #27 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dy = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  br label %pm_parameters_node_keyword_rest_set.exit

pm_parameters_node_keyword_rest_set.exit:         ; preds = %pm_forwarding_parameter_node_create.exit, %bb.x
  %i.dz = phi <2 x ptr> [ %i.dk, %pm_forwarding_parameter_node_create.exit ], [ %i.dy, %bb.x ] ; 3 uses
  %i.ea = load <2 x ptr>, ptr %i.t, align 8, !tbaa !14 ; 4 uses
  %i.eb = icmp eq <2 x ptr> %i.ea, splat (ptr null)
  %i.ec = shufflevector <2 x ptr> %i.ea, <2 x ptr> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.ed = shufflevector <2 x ptr> %i.dz, <2 x ptr> %i.ea, <2 x i32> <i32 0, i32 3>
  %i.ee = icmp uge <2 x ptr> %i.ec, %i.ed
  %i.ef = select <2 x i1> %i.eb, <2 x i1> splat (i1 true), <2 x i1> %i.ee
  %i.eg = select <2 x i1> %i.ef, <2 x ptr> %i.dz, <2 x ptr> %i.ea
  store <2 x ptr> %i.eg, ptr %i.t, align 8, !tbaa !14
  store ptr %i.de, ptr %i.s, align 8, !tbaa !523
  br label %.critedge

bb.y:                                             ; preds = %.critedge245, %.critedge245, %.critedge245, %.critedge245, %.critedge245, %.critedge245
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.eh = load i32, ptr %i.l, align 8, !tbaa !200
  switch i32 %i.eh, label %bb.ad [
    i32 41, label %.sink.split
    i32 68, label %bb.z
    i32 59, label %bb.aa
    i32 37, label %bb.ab
    i32 119, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  br label %.sink.split

bb.aa:                                            ; preds = %bb.y
  br label %.sink.split

bb.ab:                                            ; preds = %bb.y
  br label %.sink.split

bb.ac:                                            ; preds = %bb.y
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sink644 = phi i32 [ 209, %bb.ac ], [ 11, %bb.ab ], [ 13, %bb.aa ], [ 14, %bb.z ], [ 12, %bb.y ]
  %i.ei = load ptr, ptr %i.p, align 8, !tbaa !256
  %i.ej = load ptr, ptr %i.q, align 8, !tbaa !255
  %i.ek = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %i.ei, ptr noundef %i.ej, i32 noundef %.sink644) #27 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.y
  %i.el = load i32, ptr %i.k, align 8, !tbaa !170
  %i.em = icmp eq i32 %i.el, 50
  %. = select i1 %i.em, ptr %i.k, ptr %i.l
  %i.en = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %., ptr noundef %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !163
  %i.eo = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %10) ; 3 uses
  %.val271 = load ptr, ptr %i.ag, align 8, !tbaa !127 ; 17 uses
  %.val272 = load ptr, ptr %i.ah, align 8, !tbaa !128 ; 8 uses
  %i.ep = ptrtoint ptr %.val272 to i64
  %i.eq = ptrtoint ptr %.val271 to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 6 uses
  %i.es = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27 ; 2 uses
  %.not.i.i294 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i294, label %pm_parser_local_add_token.exit296, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i295 = load ptr, ptr %i.n, align 8, !tbaa !59
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i295, i32 noundef %i.es, ptr noundef %.val271, ptr noundef %.val272, i32 noundef 1)
  br label %pm_parser_local_add_token.exit296

pm_parser_local_add_token.exit296:                ; preds = %bb.ad, %bb.ae
  %.val250 = load i32, ptr %i.k, align 8, !tbaa !170
  %i.et = icmp eq i32 %.val250, 50
  br i1 %i.et, label %bb.af, label %bb.be

bb.af:                                            ; preds = %pm_parser_local_add_token.exit296
  %i.eu = load <2 x ptr>, ptr %.sroa.3523.0..sroa_idx, align 8, !tbaa !14
  %i.ev = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not547 = icmp eq ptr %i.ev, null
  br i1 %.not547, label %context_push.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 23, ptr %i.ev, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ew = load ptr, ptr %i.y, align 8, !tbaa !253
  store ptr %i.ew, ptr %.sroa.3.0..sroa_idx.i297, align 8
  store ptr %i.ev, ptr %i.y, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.af, %bb.ag
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ex = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27 ; 8 uses
  %i.ey = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ez = icmp ult i32 %i.ey, 2
  br i1 %i.ez, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %context_push.exit
  %i.fa = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !93 ; 2 uses
  %i.fd = icmp ult i32 %i.fc, 9
  br i1 %i.fd, label %.preheader.i.i, label %bb.ak

.preheader.i.i:                                   ; preds = %bb.ah
  %i.fe = getelementptr i8, ptr %i.fa, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i = icmp eq i32 %i.ff, 0
  br i1 %.not58.i.i, label %pm_locals_find.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.fg = getelementptr i8, ptr %i.fa, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.ff to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.aj ] ; 3 uses
  %i.fi = getelementptr [40 x i8], ptr %i.fh, i64 %indvars.iv.i.i
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !156
  %.not39.i.i = icmp eq i32 %i.fj, %i.ex
  br i1 %.not39.i.i, label %.thread.loopexit.split.loop.exit66.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pm_locals_find.exit.thread.i, label %bb.ai, !llvm.loop !233

bb.ak:                                            ; preds = %bb.ah
  %i.fk = add i32 %i.fc, -1                       ; 2 uses
  %i.fl = lshr i32 %i.ex, 16
  %i.fm = xor i32 %i.fl, %i.ex
  %i.fn = mul i32 %i.fm, 73244475                 ; 2 uses
  %i.fo = lshr i32 %i.fn, 16
  %i.fp = xor i32 %i.fo, %i.fn
  %i.fq = mul i32 %i.fp, 73244475                 ; 2 uses
  %i.fr = lshr i32 %i.fq, 16
  %i.fs = xor i32 %i.fr, %i.fq                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fa, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !94 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.031.i.i = phi i32 [ %i.fs, %bb.ak ], [ %i.gb, %bb.an ] ; 2 uses
  %i.fv = and i32 %.031.i.i, %i.fk                ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr [40 x i8], ptr %i.fu, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !156 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %pm_locals_find.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ga = icmp eq i32 %i.fy, %i.ex
  br i1 %i.ga, label %pm_locals_find.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gb = add i32 %.031.i.i, 1                    ; 2 uses
  %i.gc = xor i32 %i.gb, %i.fs
  %i.gd = and i32 %i.gc, %i.fk
  %.not.i.i298 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i298, label %pm_locals_find.exit.thread.i, label %bb.al, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i:           ; preds = %bb.ai
  %i.ge = trunc nuw i64 %indvars.iv.i.i to i32
  br label %pm_locals_find.exit.i

pm_locals_find.exit.i:                            ; preds = %bb.am, %.thread.loopexit.split.loop.exit66.i.i
  %i.gf = phi ptr [ %i.fh, %.thread.loopexit.split.loop.exit66.i.i ], [ %i.fu, %bb.am ]
  %.5.i.i = phi i32 [ %i.ge, %.thread.loopexit.split.loop.exit66.i.i ], [ %i.fv, %bb.am ] ; 2 uses
  %.not.i = icmp eq i32 %.5.i.i, -1
  br i1 %.not.i, label %pm_locals_find.exit.thread.i, label %pm_locals_reads.exit

pm_locals_find.exit.thread.i:                     ; preds = %pm_locals_find.exit.i, %.preheader.i.i, %bb.an, %bb.al, %bb.aj
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit:                             ; preds = %pm_locals_find.exit.i
  %i.gg = zext i32 %.5.i.i to i64
  %i.gh = getelementptr [40 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 28
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !265
  br label %bb.ao

bb.ao:                                            ; preds = %context_push.exit, %pm_locals_reads.exit
  %i.gk = phi i32 [ %i.gj, %pm_locals_reads.exit ], [ 0, %context_push.exit ]
  br i1 %5, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gl = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.gm = shl i32 %i.gl, 1
  store i32 %i.gm, ptr %i.ad, align 4, !tbaa !7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gn = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 211, i16 noundef zeroext %i.ae), !inline_history !297 ; 3 uses
  %i.go = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.gn) ; 3 uses
  %.not.i493 = icmp eq ptr %i.go, null
  br i1 %.not.i493, label %pm_assert_value_expression.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %.val.i494 = load ptr, ptr %i.gp, align 8, !tbaa !133
  %i.gq = getelementptr i8, ptr %i.go, i64 16
  %.val5.i = load ptr, ptr %i.gq, align 8, !tbaa !134
  %i.gr = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.val.i494, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.aq, %bb.ar
  br i1 %5, label %bb.as, label %bb.at

bb.as:                                            ; preds = %pm_assert_value_expression.exit
  %i.gs = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.gt = lshr i32 %i.gs, 1
  store i32 %i.gt, ptr %i.ad, align 4, !tbaa !7
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %pm_assert_value_expression.exit
  %i.gu = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 12 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.au, label %pm_optional_parameter_node_create.exit

bb.au:                                            ; preds = %bb.at
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.gx = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.gw, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_optional_parameter_node_create.exit:           ; preds = %bb.at
  %i.gy = load i32, ptr %0, align 8, !tbaa !109
  %i.gz = add i32 %i.gy, 1                        ; 2 uses
  store i32 %i.gz, ptr %0, align 8, !tbaa !109
  %i.ha = getelementptr i8, ptr %i.gn, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !134 ; 3 uses
  %i.hc = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27
  store i16 113, ptr %i.gu, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i300 = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %i.gz, ptr %.sroa.3.0..sroa_idx.i300, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i301 = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i301, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i302 = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store ptr %i.hb, ptr %.sroa.5.0..sroa_idx.i302, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i32 %i.hc, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  store ptr %.val271, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i303 = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  store ptr %.val272, ptr %.sroa.9.0..sroa_idx.i303, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  store <2 x ptr> %i.eu, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  store ptr %i.gn, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !105
  br i1 %i.eo, label %pm_node_flag_set_repeated_parameter.exit305, label %bb.av

pm_node_flag_set_repeated_parameter.exit305:      ; preds = %pm_optional_parameter_node_create.exit
  %i.hd = getelementptr i8, ptr %i.gu, i64 2      ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !116
  %i.hf = or i16 %i.he, 4
  store i16 %i.hf, ptr %i.hd, align 2, !tbaa !116
  br label %bb.av

bb.av:                                            ; preds = %pm_node_flag_set_repeated_parameter.exit305, %pm_optional_parameter_node_create.exit
  %i.hg = load ptr, ptr %i.t, align 8, !tbaa !524 ; 3 uses
  %i.hh = icmp eq ptr %i.hg, null
  %i.hi = icmp uge ptr %i.hg, %.val271
  %i.hj = or i1 %i.hh, %i.hi
  %storemerge.i.i306 = select i1 %i.hj, ptr %.val271, ptr %i.hg
  store ptr %storemerge.i.i306, ptr %i.t, align 8, !tbaa !524
  %i.hk = load ptr, ptr %i.u, align 8, !tbaa !525 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  %i.hm = icmp ule ptr %i.hk, %i.hb
  %i.hn = select i1 %i.hl, i1 true, i1 %i.hm
  %storemerge19.i.i307 = select i1 %i.hn, ptr %i.hb, ptr %i.hk
  store ptr %storemerge19.i.i307, ptr %i.u, align 8, !tbaa !525
  tail call void @pm_node_list_append(ptr noundef %i.aj, ptr noundef nonnull %i.gu) #27
  %i.ho = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.hp = icmp ult i32 %i.ho, 2
  br i1 %i.hp, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  %i.hq = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 12
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !93 ; 2 uses
  %i.ht = icmp ult i32 %i.hs, 9
  br i1 %i.ht, label %.preheader.i.i314, label %bb.az

.preheader.i.i314:                                ; preds = %bb.aw
  %i.hu = getelementptr i8, ptr %i.hq, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i315 = icmp eq i32 %i.hv, 0
  br i1 %.not58.i.i315, label %pm_locals_find.exit.thread.i310, label %.lr.ph.i.i316

.lr.ph.i.i316:                                    ; preds = %.preheader.i.i314
  %i.hw = getelementptr i8, ptr %i.hq, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i317 = zext i32 %i.hv to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i.i316
  %indvars.iv.i.i318 = phi i64 [ 0, %.lr.ph.i.i316 ], [ %indvars.iv.next.i.i320, %bb.ay ] ; 3 uses
  %i.hy = getelementptr [40 x i8], ptr %i.hx, i64 %indvars.iv.i.i318
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !156
  %.not39.i.i319 = icmp eq i32 %i.hz, %i.ex
  br i1 %.not39.i.i319, label %.thread.loopexit.split.loop.exit66.i.i322, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next.i.i320 = add nuw nsw i64 %indvars.iv.i.i318, 1 ; 2 uses
  %exitcond.not.i.i321 = icmp eq i64 %indvars.iv.next.i.i320, %wide.trip.count.i.i317
  br i1 %exitcond.not.i.i321, label %pm_locals_find.exit.thread.i310, label %bb.ax, !llvm.loop !233

bb.az:                                            ; preds = %bb.aw
  %i.ia = add i32 %i.hs, -1                       ; 2 uses
  %i.ib = lshr i32 %i.ex, 16
  %i.ic = xor i32 %i.ib, %i.ex
  %i.id = mul i32 %i.ic, 73244475                 ; 2 uses
  %i.ie = lshr i32 %i.id, 16
  %i.if = xor i32 %i.ie, %i.id
  %i.ig = mul i32 %i.if, 73244475                 ; 2 uses
  %i.ih = lshr i32 %i.ig, 16
  %i.ii = xor i32 %i.ih, %i.ig                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.hq, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !94 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %.031.i.i308 = phi i32 [ %i.ii, %bb.az ], [ %i.ir, %bb.bc ] ; 2 uses
  %i.il = and i32 %.031.i.i308, %i.ia             ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr [40 x i8], ptr %i.ik, i64 %i.im
  %i.io = load i32, ptr %i.in, align 8, !tbaa !156 ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %pm_locals_find.exit.thread.i310, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iq = icmp eq i32 %i.io, %i.ex
  br i1 %i.iq, label %pm_locals_find.exit.i311, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ir = add i32 %.031.i.i308, 1                 ; 2 uses
  %i.is = xor i32 %i.ir, %i.ii
  %i.it = and i32 %i.is, %i.ia
  %.not.i.i309 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i309, label %pm_locals_find.exit.thread.i310, label %bb.ba, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i322:        ; preds = %bb.ax
  %i.iu = trunc nuw i64 %indvars.iv.i.i318 to i32
  br label %pm_locals_find.exit.i311

pm_locals_find.exit.i311:                         ; preds = %bb.bb, %.thread.loopexit.split.loop.exit66.i.i322
  %i.iv = phi ptr [ %i.hx, %.thread.loopexit.split.loop.exit66.i.i322 ], [ %i.ik, %bb.bb ]
  %.5.i.i312 = phi i32 [ %i.iu, %.thread.loopexit.split.loop.exit66.i.i322 ], [ %i.il, %bb.bb ] ; 2 uses
  %.not.i313 = icmp eq i32 %.5.i.i312, -1
  br i1 %.not.i313, label %pm_locals_find.exit.thread.i310, label %pm_locals_reads.exit323

pm_locals_find.exit.thread.i310:                  ; preds = %pm_locals_find.exit.i311, %.preheader.i.i314, %bb.bc, %bb.ba, %bb.ay
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit323:                          ; preds = %pm_locals_find.exit.i311
  %i.iw = zext i32 %.5.i.i312 to i64
  %i.ix = getelementptr [40 x i8], ptr %i.iv, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 28
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !265
  %.not242 = icmp eq i32 %i.iz, %i.gk
  br i1 %.not242, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %pm_locals_reads.exit323
  %i.ja = trunc i64 %i.er to i32
  %i.jb = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %.val271, ptr noundef %.val272, i32 noundef 207, i32 noundef %i.ja, ptr noundef %.val271) #27 ; 0 uses
  br label %bb.bj

bb.be:                                            ; preds = %pm_parser_local_add_token.exit296
  %i.jc = load i32, ptr %i.a, align 4, !tbaa !7
  %i.jd = icmp ugt i32 %i.jc, 5
  %i.je = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 13 uses
  %i.jf = icmp eq ptr %i.je, null                 ; 2 uses
  br i1 %i.jd, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  br i1 %i.jf, label %bb.bg, label %pm_required_parameter_node_create.exit

bb.bg:                                            ; preds = %bb.bf
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.jh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_parameter_node_create.exit:           ; preds = %bb.bf
  %i.ji = load i32, ptr %0, align 8, !tbaa !109
  %i.jj = add i32 %i.ji, 1                        ; 2 uses
  store i32 %i.jj, ptr %0, align 8, !tbaa !109
  %i.jk = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27
  store i16 127, ptr %i.je, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 %i.jj, ptr %.sroa.3.0..sroa_idx.i325, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i326, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.val272, ptr %.sroa.5.0..sroa_idx.i327, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 %i.jk, ptr %.sroa.6.0..sroa_idx.i328, align 8, !tbaa !7
  br i1 %i.eo, label %.thread542.sink.split, label %.thread542

bb.bh:                                            ; preds = %bb.be
  br i1 %i.jf, label %bb.bi, label %pm_required_parameter_node_create.exit337

bb.bi:                                            ; preds = %bb.bh
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.jm = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jl, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_parameter_node_create.exit337:        ; preds = %bb.bh
  %i.jn = load i32, ptr %0, align 8, !tbaa !109
  %i.jo = add i32 %i.jn, 1                        ; 2 uses
end_hunk_11
begin_hunk_12_@parse_parameters:bb.a
  %i.lj = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27 ; 2 uses
  %.not.i.i344 = icmp eq i32 %i.lj, 0
  br i1 %.not.i.i344, label %pm_parser_local_add_token.exit346, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.val.i.i345 = load ptr, ptr %i.n, align 8, !tbaa !59
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i345, i32 noundef %i.lj, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 1)
  br label %pm_parser_local_add_token.exit346

pm_parser_local_add_token.exit346:                ; preds = %bb.bt, %bb.bu
  %i.lk = load i32, ptr %i.k, align 8, !tbaa !170 ; 2 uses
  switch i32 %i.lk, label %bb.ca [
    i32 3, label %bb.bv
    i32 15, label %bb.bv
    i32 16, label %bb.bv
    i32 17, label %bb.bx
    i32 14, label %bb.bx
  ]

bb.bv:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.ll = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.ll) #27
  store ptr %i.ln, ptr %i.y, align 8, !tbaa !253
  %i.lo = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 10 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bw, label %pm_required_keyword_parameter_node_create.exit

bb.bw:                                            ; preds = %bb.bv
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.lr = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.lq, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit:   ; preds = %bb.bv
  %i.ls = load i32, ptr %0, align 8, !tbaa !109
  %i.lt = add i32 %i.ls, 1                        ; 2 uses
  store i32 %i.lt, ptr %0, align 8, !tbaa !109
  %i.lu = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.lo, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i348 = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 %i.lt, ptr %.sroa.3.0..sroa_idx.i348, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i349, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx.i350, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store i32 %i.lu, ptr %.sroa.6.0..sroa_idx.i351, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i352, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i353, align 8, !tbaa !14
  br i1 %i.lf, label %.thread.sink.split, label %.thread

bb.bx:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.lv = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.lw = getelementptr i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.lv) #27
  store ptr %i.lx, ptr %i.y, align 8, !tbaa !253
  br i1 %2, label %.thread534, label %bb.by

.thread534:                                       ; preds = %bb.bx
  store i8 0, ptr %i.x, align 1, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.critedge245.thread

bb.by:                                            ; preds = %bb.bx
  %i.ly = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 10 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %bb.bz, label %pm_required_keyword_parameter_node_create.exit364

bb.bz:                                            ; preds = %bb.by
  %i.ma = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.mb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ma, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit364: ; preds = %bb.by
  %i.mc = load i32, ptr %0, align 8, !tbaa !109
  %i.md = add i32 %i.mc, 1                        ; 2 uses
  store i32 %i.md, ptr %0, align 8, !tbaa !109
  %i.me = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.ly, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i358 = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i32 %i.md, ptr %.sroa.3.0..sroa_idx.i358, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i359, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i360 = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx.i360, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i361 = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  store i32 %i.me, ptr %.sroa.6.0..sroa_idx.i361, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i362, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i363, align 8, !tbaa !14
  br i1 %i.lf, label %.thread.sink.split, label %.thread

bb.ca:                                            ; preds = %pm_parser_local_add_token.exit346
  %i.mf = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.lk)
  br i1 %i.mf, label %bb.cb, label %bb.cz

bb.cb:                                            ; preds = %bb.ca
  %i.mg = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27 ; 8 uses
  %i.mh = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.mi = icmp ult i32 %i.mh, 2
  br i1 %i.mi, label %bb.cc, label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.mj = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !93 ; 2 uses
  %i.mm = icmp ult i32 %i.ml, 9
  br i1 %i.mm, label %.preheader.i.i374, label %bb.cf

.preheader.i.i374:                                ; preds = %bb.cc
  %i.mn = getelementptr i8, ptr %i.mj, i64 8
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i375 = icmp eq i32 %i.mo, 0
  br i1 %.not58.i.i375, label %pm_locals_find.exit.thread.i370, label %.lr.ph.i.i376

.lr.ph.i.i376:                                    ; preds = %.preheader.i.i374
  %i.mp = getelementptr i8, ptr %i.mj, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i377 = zext i32 %i.mo to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.lr.ph.i.i376
  %indvars.iv.i.i378 = phi i64 [ 0, %.lr.ph.i.i376 ], [ %indvars.iv.next.i.i380, %bb.ce ] ; 3 uses
  %i.mr = getelementptr [40 x i8], ptr %i.mq, i64 %indvars.iv.i.i378
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !156
  %.not39.i.i379 = icmp eq i32 %i.ms, %i.mg
  br i1 %.not39.i.i379, label %.thread.loopexit.split.loop.exit66.i.i382, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next.i.i380 = add nuw nsw i64 %indvars.iv.i.i378, 1 ; 2 uses
  %exitcond.not.i.i381 = icmp eq i64 %indvars.iv.next.i.i380, %wide.trip.count.i.i377
  br i1 %exitcond.not.i.i381, label %pm_locals_find.exit.thread.i370, label %bb.cd, !llvm.loop !233

bb.cf:                                            ; preds = %bb.cc
  %i.mt = add i32 %i.ml, -1                       ; 2 uses
  %i.mu = lshr i32 %i.mg, 16
  %i.mv = xor i32 %i.mu, %i.mg
  %i.mw = mul i32 %i.mv, 73244475                 ; 2 uses
  %i.mx = lshr i32 %i.mw, 16
  %i.my = xor i32 %i.mx, %i.mw
  %i.mz = mul i32 %i.my, 73244475                 ; 2 uses
  %i.na = lshr i32 %i.mz, 16
  %i.nb = xor i32 %i.na, %i.mz                    ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mj, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !94 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.031.i.i368 = phi i32 [ %i.nb, %bb.cf ], [ %i.nk, %bb.ci ] ; 2 uses
  %i.ne = and i32 %.031.i.i368, %i.mt             ; 2 uses
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr [40 x i8], ptr %i.nd, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !156 ; 2 uses
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %pm_locals_find.exit.thread.i370, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nj = icmp eq i32 %i.nh, %i.mg
  br i1 %i.nj, label %pm_locals_find.exit.i371, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nk = add i32 %.031.i.i368, 1                 ; 2 uses
  %i.nl = xor i32 %i.nk, %i.nb
  %i.nm = and i32 %i.nl, %i.mt
  %.not.i.i369 = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i369, label %pm_locals_find.exit.thread.i370, label %bb.cg, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i382:        ; preds = %bb.cd
  %i.nn = trunc nuw i64 %indvars.iv.i.i378 to i32
  br label %pm_locals_find.exit.i371

pm_locals_find.exit.i371:                         ; preds = %bb.ch, %.thread.loopexit.split.loop.exit66.i.i382
  %i.no = phi ptr [ %i.mq, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.nd, %bb.ch ]
  %.5.i.i372 = phi i32 [ %i.nn, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.ne, %bb.ch ] ; 2 uses
  %.not.i373 = icmp eq i32 %.5.i.i372, -1
  br i1 %.not.i373, label %pm_locals_find.exit.thread.i370, label %pm_locals_reads.exit383

pm_locals_find.exit.thread.i370:                  ; preds = %pm_locals_find.exit.i371, %.preheader.i.i374, %bb.ci, %bb.cg, %bb.ce
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit383:                          ; preds = %pm_locals_find.exit.i371
  %i.np = zext i32 %.5.i.i372 to i64
  %i.nq = getelementptr [40 x i8], ptr %i.no, i64 %i.np
  %i.nr = getelementptr i8, ptr %i.nq, i64 28
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !265
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cb, %pm_locals_reads.exit383
  %i.nt = phi i32 [ %i.ns, %pm_locals_reads.exit383 ], [ 0, %bb.cb ]
  br i1 %5, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.nu = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.nv = shl i32 %i.nu, 1
  store i32 %i.nv, ptr %i.ad, align 4, !tbaa !7
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.nw = tail call fastcc ptr @parse_expression(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 212, i16 noundef zeroext %i.ae), !inline_history !297 ; 3 uses
  %i.nx = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %i.nw) ; 3 uses
  %.not.i495 = icmp eq ptr %i.nx, null
  br i1 %.not.i495, label %pm_assert_value_expression.exit498, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ny = getelementptr i8, ptr %i.nx, i64 8
  %.val.i496 = load ptr, ptr %i.ny, align 8, !tbaa !133
  %i.nz = getelementptr i8, ptr %i.nx, i64 16
  %.val5.i497 = load ptr, ptr %i.nz, align 8, !tbaa !134
  %i.oa = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.val.i496, ptr noundef %.val5.i497, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit498

pm_assert_value_expression.exit498:               ; preds = %bb.cl, %bb.cm
  br i1 %5, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %pm_assert_value_expression.exit498
  %i.ob = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.oc = lshr i32 %i.ob, 1
  store i32 %i.oc, ptr %i.ad, align 4, !tbaa !7
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %pm_assert_value_expression.exit498
  %i.od = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.oe = icmp ult i32 %i.od, 2
  br i1 %i.oe, label %bb.cp, label %bb.cx

bb.cp:                                            ; preds = %bb.co
  %i.of = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.og = getelementptr i8, ptr %i.of, i64 12
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !93 ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 9
  br i1 %i.oi, label %.preheader.i.i390, label %bb.cs

.preheader.i.i390:                                ; preds = %bb.cp
  %i.oj = getelementptr i8, ptr %i.of, i64 8
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i391 = icmp eq i32 %i.ok, 0
  br i1 %.not58.i.i391, label %pm_locals_find.exit.thread.i386, label %.lr.ph.i.i392

.lr.ph.i.i392:                                    ; preds = %.preheader.i.i390
  %i.ol = getelementptr i8, ptr %i.of, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i393 = zext i32 %i.ok to i64
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cr, %.lr.ph.i.i392
  %indvars.iv.i.i394 = phi i64 [ 0, %.lr.ph.i.i392 ], [ %indvars.iv.next.i.i396, %bb.cr ] ; 3 uses
  %i.on = getelementptr [40 x i8], ptr %i.om, i64 %indvars.iv.i.i394
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !156
  %.not39.i.i395 = icmp eq i32 %i.oo, %i.mg
  br i1 %.not39.i.i395, label %.thread.loopexit.split.loop.exit66.i.i398, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %indvars.iv.next.i.i396 = add nuw nsw i64 %indvars.iv.i.i394, 1 ; 2 uses
  %exitcond.not.i.i397 = icmp eq i64 %indvars.iv.next.i.i396, %wide.trip.count.i.i393
  br i1 %exitcond.not.i.i397, label %pm_locals_find.exit.thread.i386, label %bb.cq, !llvm.loop !233

bb.cs:                                            ; preds = %bb.cp
  %i.op = add i32 %i.oh, -1                       ; 2 uses
  %i.oq = lshr i32 %i.mg, 16
  %i.or = xor i32 %i.oq, %i.mg
  %i.os = mul i32 %i.or, 73244475                 ; 2 uses
  %i.ot = lshr i32 %i.os, 16
  %i.ou = xor i32 %i.ot, %i.os
  %i.ov = mul i32 %i.ou, 73244475                 ; 2 uses
  %i.ow = lshr i32 %i.ov, 16
  %i.ox = xor i32 %i.ow, %i.ov                    ; 2 uses
  %i.oy = getelementptr i8, ptr %i.of, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !94 ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  %.031.i.i384 = phi i32 [ %i.ox, %bb.cs ], [ %i.pg, %bb.cv ] ; 2 uses
  %i.pa = and i32 %.031.i.i384, %i.op             ; 2 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr [40 x i8], ptr %i.oz, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !156 ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %pm_locals_find.exit.thread.i386, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pf = icmp eq i32 %i.pd, %i.mg
  br i1 %i.pf, label %pm_locals_find.exit.i387, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pg = add i32 %.031.i.i384, 1                 ; 2 uses
  %i.ph = xor i32 %i.pg, %i.ox
  %i.pi = and i32 %i.ph, %i.op
  %.not.i.i385 = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i385, label %pm_locals_find.exit.thread.i386, label %bb.ct, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i398:        ; preds = %bb.cq
  %i.pj = trunc nuw i64 %indvars.iv.i.i394 to i32
  br label %pm_locals_find.exit.i387

pm_locals_find.exit.i387:                         ; preds = %bb.cu, %.thread.loopexit.split.loop.exit66.i.i398
  %i.pk = phi ptr [ %i.om, %.thread.loopexit.split.loop.exit66.i.i398 ], [ %i.oz, %bb.cu ]
  %.5.i.i388 = phi i32 [ %i.pj, %.thread.loopexit.split.loop.exit66.i.i398 ], [ %i.pa, %bb.cu ] ; 2 uses
  %.not.i389 = icmp eq i32 %.5.i.i388, -1
  br i1 %.not.i389, label %pm_locals_find.exit.thread.i386, label %pm_locals_reads.exit399

pm_locals_find.exit.thread.i386:                  ; preds = %pm_locals_find.exit.i387, %.preheader.i.i390, %bb.cv, %bb.ct, %bb.cr
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit399:                          ; preds = %pm_locals_find.exit.i387
  %i.pl = zext i32 %.5.i.i388 to i64
  %i.pm = getelementptr [40 x i8], ptr %i.pk, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pm, i64 28
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !265
  %.not = icmp eq i32 %i.po, %i.nt
  br i1 %.not, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %pm_locals_reads.exit399
  %i.pp = trunc i64 %i.li to i32
  %i.pq = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 207, i32 noundef %i.pp, ptr noundef %i.kh) #27 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %pm_locals_reads.exit399, %bb.co
  %i.pr = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %bb.cy, label %pm_optional_keyword_parameter_node_create.exit

bb.cy:                                            ; preds = %bb.cx
  %i.pt = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.pu = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.pt, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_optional_keyword_parameter_node_create.exit:   ; preds = %bb.cx
  %i.pv = load i32, ptr %0, align 8, !tbaa !109
  %i.pw = add i32 %i.pv, 1                        ; 2 uses
  store i32 %i.pw, ptr %0, align 8, !tbaa !109
  %i.px = getelementptr i8, ptr %i.nw, i64 16
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !134
  %i.pz = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 112, ptr %i.pr, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store i32 %i.pw, ptr %.sroa.3.0..sroa_idx.i401, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i402, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i403 = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store ptr %i.py, ptr %.sroa.5.0..sroa_idx.i403, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store i32 %i.pz, ptr %.sroa.6.0..sroa_idx.i404, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i405 = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i405, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i406 = getelementptr inbounds nuw i8, ptr %i.pr, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i406, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i407 = getelementptr inbounds nuw i8, ptr %i.pr, i64 48
  store ptr %i.nw, ptr %.sroa.10.0..sroa_idx.i407, align 8, !tbaa !105
  br label %bb.db

bb.cz:                                            ; preds = %bb.ca
  %i.qa = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.qb = icmp eq ptr %i.qa, null
  br i1 %i.qb, label %bb.da, label %pm_required_keyword_parameter_node_create.exit415

bb.da:                                            ; preds = %bb.cz
  %i.qc = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.qd = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.qc, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit415: ; preds = %bb.cz
  %i.qe = load i32, ptr %0, align 8, !tbaa !109
  %i.qf = add i32 %i.qe, 1                        ; 2 uses
  store i32 %i.qf, ptr %0, align 8, !tbaa !109
  %i.qg = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.qa, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i409 = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store i32 %i.qf, ptr %.sroa.3.0..sroa_idx.i409, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i410 = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i410, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i411 = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx.i411, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  store i32 %i.qg, ptr %.sroa.6.0..sroa_idx.i412, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i413 = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i413, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i414 = getelementptr inbounds nuw i8, ptr %i.qa, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i414, align 8, !tbaa !14
  br label %bb.db

bb.db:                                            ; preds = %pm_required_keyword_parameter_node_create.exit415, %pm_optional_keyword_parameter_node_create.exit
  %.0239 = phi ptr [ %i.pr, %pm_optional_keyword_parameter_node_create.exit ], [ %i.qa, %pm_required_keyword_parameter_node_create.exit415 ] ; 3 uses
  br i1 %i.lf, label %pm_node_flag_set_repeated_parameter.exit416, label %bb.ee

pm_node_flag_set_repeated_parameter.exit416:      ; preds = %bb.db
  %i.qh = getelementptr i8, ptr %.0239, i64 2     ; 2 uses
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !116
  %i.qj = or i16 %i.qi, 4
  store i16 %i.qj, ptr %i.qh, align 2, !tbaa !116
  br label %bb.ee

bb.dc:                                            ; preds = %.critedge245, %.critedge245
  %i.qk = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !14 ; 5 uses
  %.sroa.5504.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %.val.i419 = load i32, ptr %i.k, align 8, !tbaa !170
  %i.ql = icmp eq i32 %.val.i419, 66
  br i1 %i.ql, label %bb.dd, label %accept1.exit420

bb.dd:                                            ; preds = %bb.dc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !163
  %i.qm = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %12) ; 2 uses
  %.val267 = load ptr, ptr %.sroa.5501.0..sroa_idx, align 8, !tbaa !127 ; 5 uses
  %.val268 = load ptr, ptr %.sroa.6502.0..sroa_idx, align 8, !tbaa !128 ; 4 uses
  %i.qn = ptrtoint ptr %.val268 to i64
  %i.qo = ptrtoint ptr %.val267 to i64
  %i.qp = sub i64 %i.qn, %i.qo
  %i.qq = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val267, i64 noundef %i.qp) #27 ; 2 uses
  %.not.i.i421 = icmp eq i32 %i.qq, 0
  br i1 %.not.i.i421, label %pm_parser_local_add_token.exit423, label %bb.de

bb.de:                                            ; preds = %bb.dd
end_hunk_12
begin_hunk_13_@parse_target:bb.a
  %i.fh = getelementptr i8, ptr %1, i64 72
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 16, i1 false)
  %i.fi = load ptr, ptr %i.dw, align 8, !tbaa !117
  %i.fj = getelementptr i8, ptr %1, i64 96
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false)
  store i16 75, ptr %i.ds, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i16 %i.fb, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.fd, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.fk = load <2 x ptr>, ptr %i.fe, align 8, !tbaa !14
  store <2 x ptr> %i.fk, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %i.fg, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store ptr %i.fi, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !511
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  store ptr %i.ex, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !536
  tail call void @free(ptr noundef nonnull %1) #27
  br label %common.ret172

bb.bb:                                            ; preds = %bb.a, %bb.ap
  %i.fl = getelementptr i8, ptr %1, i64 8
  %.val108 = load ptr, ptr %i.fl, align 8, !tbaa !133
  %i.fm = getelementptr i8, ptr %1, i64 16
  %.val109 = load ptr, ptr %i.fm, align 8, !tbaa !134
  %i.fn = getelementptr i8, ptr %0, i64 472
  %i.fo = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.fn, ptr noundef %.val108, ptr noundef %.val109, i32 noundef 294) #27 ; 0 uses
  br label %common.ret172
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_for_node_create(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %.8.val, ptr %.16.val, ptr %.8.val1, ptr %.16.val3, ptr noundef nonnull readonly captures(none) %4, ptr noundef readonly captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(112) ptr @calloc(i64 noundef 1, i64 noundef 112) #30 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 112) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %5, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !126
  %i.j = icmp eq i32 %i.i, 164
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.k = getelementptr i8, ptr %4, i64 8
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %i.m = phi <2 x ptr> [ %i.l, %bb.c ], [ splat (ptr null), %pm_node_alloc.exit ]
  %i.n = getelementptr i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127
  store i16 55, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !136
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.8.val1, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.16.val3, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x ptr> %i.m, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.o, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !14
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.h, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_conditional(ptr noundef %0, i32 noundef range(i32 29, 53) %1, i64 noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4) unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.pm_node_list, align 8       ; 5 uses
  %6 = alloca %struct.pm_token_t, align 8         ; 12 uses
  %7 = alloca %struct.pm_token_t, align 8         ; 11 uses
  %8 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %9 = alloca %struct.pm_token_t, align 8         ; 4 uses
  %10 = alloca %struct.pm_token_t, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 680        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  store ptr %5, ptr %i.a, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.c = getelementptr i8, ptr %0, i64 320        ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = getelementptr i8, ptr %0, i64 304        ; 2 uses
  %.val97 = load ptr, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %7, align 8, !tbaa !126, !alias.scope !538
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.e, align 4, !alias.scope !538
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.val97, ptr %i.f, align 8, !tbaa !127, !alias.scope !538
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.val97, ptr %i.g, align 8, !tbaa !128, !alias.scope !538
  %i.h = add i16 %4, 1                            ; 3 uses
  %i.i = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %context_push.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 44, ptr %i.i, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i134, align 4
  %.sroa.3.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.j = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253
  store ptr %i.k, ptr %.sroa.3.0..sroa_idx.i135, align 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.a, %bb.b
  %i.l = icmp eq i32 %1, 29
  %i.m = select i1 %i.l, i32 54, i32 58
  %i.n = add i16 %4, 2                            ; 2 uses
  %i.o = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 6, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef range(i32 26, 256) %i.m, i16 noundef zeroext %i.n), !inline_history !541 ; 5 uses
  %i.p = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.o), !inline_history !541 ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %parse_value_expression.exit, label %bb.c

bb.c:                                             ; preds = %context_push.exit
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val.i.i133 = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %.val5.i.i = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.s = getelementptr i8, ptr %0, i64 472
  %i.t = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.s, ptr noundef %.val.i.i133, ptr noundef %.val5.i.i, i32 noundef 290) #27, !inline_history !541 ; 0 uses
  br label %parse_value_expression.exit

parse_value_expression.exit:                      ; preds = %context_push.exit, %bb.c
  %i.u = getelementptr i8, ptr %0, i64 344        ; 14 uses
  %.val.i130 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i130, label %accept1.exit.thread149 [
    i32 17, label %accept2.exit132
    i32 14, label %accept2.exit132
    i32 12, label %.critedge.i
  ]

accept2.exit132:                                  ; preds = %parse_value_expression.exit, %parse_value_expression.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i129.pr = load i32, ptr %i.u, align 8, !tbaa !170
  %i.v = icmp eq i32 %.val.i129.pr, 12
  br i1 %i.v, label %.critedge.i, label %parse_predicate.exit

.critedge.i:                                      ; preds = %parse_value_expression.exit, %accept2.exit132
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  br label %parse_predicate.exit

accept1.exit.thread149:                           ; preds = %parse_value_expression.exit
  %i.w = getelementptr i8, ptr %0, i64 352
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166
  %i.y = getelementptr i8, ptr %0, i64 360
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = getelementptr i8, ptr %0, i64 472
  %i.ab = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.aa, ptr noundef %i.x, ptr noundef %i.z, i32 noundef 55) #27 ; 0 uses
  br label %parse_predicate.exit

parse_predicate.exit:                             ; preds = %accept2.exit132, %.critedge.i, %accept1.exit.thread149
  %i.ac = getelementptr i8, ptr %0, i64 504       ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !257
  call void @free(ptr noundef %i.ad) #27
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !253
  %.val95 = load i32, ptr %i.u, align 8, !tbaa !170
  %i.ag = add i32 %.val95, -6
  %i.ah = icmp ult i32 %i.ag, 3
  br i1 %i.ah, label %accept2.exit, label %bb.d

bb.d:                                             ; preds = %parse_predicate.exit
  %i.ai = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = shl i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !7
  %i.al = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef %1, i16 noundef zeroext %i.h) ; 2 uses
  %i.am = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.an = lshr i32 %i.am, 1
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !7
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i, label %accept2.exit [
    i32 17, label %bb.e
    i32 14, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit

accept2.exit:                                     ; preds = %bb.d, %parse_predicate.exit, %bb.e
  %.090 = phi ptr [ null, %parse_predicate.exit ], [ %i.al, %bb.d ], [ %i.al, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val96 = load ptr, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %8, align 8, !tbaa !126, !alias.scope !542
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.ao, align 4, !alias.scope !542
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.val96, ptr %i.ap, align 8, !tbaa !127, !alias.scope !542
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.val96, ptr %i.aq, align 8, !tbaa !128, !alias.scope !542
  switch i32 %1, label %bb.h [
    i32 29, label %bb.i
    i32 52, label %bb.f
  ]

bb.f:                                             ; preds = %accept2.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8
  %.val98 = load ptr, ptr %i.ar, align 8
  call fastcc void @pm_conditional_predicate(ptr noundef nonnull %0, ptr noundef %i.o, i32 noundef 0)
  %i.at = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.g, label %pm_node_alloc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.aw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.av, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.f
  %i.ax = icmp eq ptr %.090, null
  %i.ay = select i1 %i.ax, ptr %i.o, ptr %.090
  %i.az = load i32, ptr %0, align 8, !tbaa !109
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %0, align 8, !tbaa !109
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !134
  %i.bd = load i32, ptr %7, align 8, !tbaa !126
  %i.be = icmp eq i32 %i.bd, 164
  store i16 146, ptr %i.at, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 1, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.ba, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.val98, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.bc, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store <2 x ptr> %i.as, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.o, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bf = load <2 x ptr>, ptr %i.f, align 8
  %i.bg = insertelement <2 x i1> poison, i1 %i.be, i64 0
  %i.bh = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x ptr> splat (ptr null), <2 x ptr> %i.bf
  store <2 x ptr> %i.bi, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store ptr %.090, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !136
  %.val.pr = load i32, ptr %i.u, align 8, !tbaa !170
  br label %.loopexit156

bb.h:                                             ; preds = %accept2.exit
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 15202, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_conditional) #26
  unreachable

bb.i:                                             ; preds = %accept2.exit
  %i.bj = call fastcc ptr @pm_if_node_create(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %i.o, ptr noundef %7, ptr noundef %.090, ptr noundef %8) ; 4 uses
  %.val94157 = load i32, ptr %i.u, align 8, !tbaa !170 ; 2 uses
  %i.bk = icmp eq i32 %.val94157, 7
  br i1 %i.bk, label %.lr.ph, label %.loopexit156

.lr.ph:                                           ; preds = %bb.i
  %i.bl = getelementptr i8, ptr %0, i64 360       ; 3 uses
  %i.bm = getelementptr i8, ptr %0, i64 312
  %i.bn = getelementptr i8, ptr %0, i64 448
  %i.bo = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 472       ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 24        ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %accept2.exit109
  %.092158 = phi ptr [ %i.bj, %.lr.ph ], [ %i.cx, %accept2.exit109 ]
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.br, %bb.j ], [ %i.bv, %bb.m ] ; 3 uses
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !78
  %i.bt = icmp ult ptr %.0.i, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bu = load i8, ptr %.0.i, align 1, !tbaa !67  ; 2 uses
  switch i8 %i.bu, label %bb.m [
    i8 10, label %bb.n
    i8 35, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr i8, ptr %.0.i, i64 1
  %i.bw = call zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext %i.bu) #27
  br i1 %i.bw, label %bb.k, label %parser_end_of_line_p.exit, !llvm.loop !275

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.k
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !166 ; 3 uses
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !76 ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.bn, ptr noundef %i.bx, ptr noundef %i.by, i32 noundef 317, i32 noundef %i.cc, ptr noundef %i.bx) #27 ; 0 uses
  br label %parser_end_of_line_p.exit

parser_end_of_line_p.exit:                        ; preds = %bb.m, %bb.n
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %2, ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa.struct !163
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ce = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not155 = icmp eq ptr %i.ce, null
  br i1 %.not155, label %context_push.exit147, label %bb.o

bb.o:                                             ; preds = %parser_end_of_line_p.exit
  store i32 44, ptr %i.ce, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i145, align 4
  %.sroa.3.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cf = load ptr, ptr %i.ac, align 8, !tbaa !253
  store ptr %i.cf, ptr %.sroa.3.0..sroa_idx.i146, align 8
  store ptr %i.ce, ptr %i.ac, align 8, !tbaa !253
  br label %context_push.exit147

context_push.exit147:                             ; preds = %parser_end_of_line_p.exit, %bb.o
  %i.cg = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 6, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 58, i16 noundef zeroext %i.n), !inline_history !541 ; 2 uses
  %i.ch = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.cg), !inline_history !541 ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i141, label %parse_value_expression.exit144, label %bb.p

bb.p:                                             ; preds = %context_push.exit147
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i142 = load ptr, ptr %i.ci, align 8, !tbaa !133
  %i.cj = getelementptr i8, ptr %i.ch, i64 16
  %.val5.i.i143 = load ptr, ptr %i.cj, align 8, !tbaa !134
  %i.ck = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bp, ptr noundef %.val.i.i142, ptr noundef %.val5.i.i143, i32 noundef 290) #27, !inline_history !541 ; 0 uses
  br label %parse_value_expression.exit144

parse_value_expression.exit144:                   ; preds = %context_push.exit147, %bb.p
  %.val.i138 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i138, label %accept1.exit137.thread154 [
    i32 17, label %accept2.exit140
    i32 14, label %accept2.exit140
    i32 12, label %.critedge.i105
  ]

accept2.exit140:                                  ; preds = %parse_value_expression.exit144, %parse_value_expression.exit144
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i136.pr = load i32, ptr %i.u, align 8, !tbaa !170
  %i.cl = icmp eq i32 %.val.i136.pr, 12
  br i1 %i.cl, label %.critedge.i105, label %parse_predicate.exit106

.critedge.i105:                                   ; preds = %parse_value_expression.exit144, %accept2.exit140
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  br label %parse_predicate.exit106

accept1.exit137.thread154:                        ; preds = %parse_value_expression.exit144
  %i.cm = load ptr, ptr %i.bo, align 8, !tbaa !166
  %i.cn = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.co = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bp, ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef 55) #27 ; 0 uses
  br label %parse_predicate.exit106

parse_predicate.exit106:                          ; preds = %accept2.exit140, %.critedge.i105, %accept1.exit137.thread154
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !257
  call void @free(ptr noundef %i.cp) #27
  store ptr %i.cr, ptr %i.ac, align 8, !tbaa !253
  %i.cs = load i32, ptr %i.bq, align 8, !tbaa !7
  %i.ct = shl i32 %i.cs, 1
  store i32 %i.ct, ptr %i.bq, align 8, !tbaa !7
  %i.cu = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 25, i16 noundef zeroext %i.h)
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !7
  %i.cw = lshr i32 %i.cv, 1
  store i32 %i.cw, ptr %i.bq, align 8, !tbaa !7
  %.val.i107 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i107, label %accept2.exit109 [
    i32 17, label %bb.q
    i32 14, label %bb.q
  ]

bb.q:                                             ; preds = %parse_predicate.exit106, %parse_predicate.exit106
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit109

accept2.exit109:                                  ; preds = %parse_predicate.exit106, %bb.q
  %i.cx = call fastcc ptr @pm_if_node_create(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %i.cg, ptr noundef %7, ptr noundef %i.cu, ptr noundef %8) ; 3 uses
  %i.cy = getelementptr i8, ptr %.092158, i64 72
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !545
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.val94 = load i32, ptr %i.u, align 8, !tbaa !170 ; 2 uses
  %i.cz = icmp eq i32 %.val94, 7
  br i1 %i.cz, label %bb.j, label %.loopexit156, !llvm.loop !547

.loopexit156:                                     ; preds = %accept2.exit109, %bb.i, %pm_node_alloc.exit.i
  %.val = phi i32 [ %.val.pr, %pm_node_alloc.exit.i ], [ %.val94157, %bb.i ], [ %.val94, %accept2.exit109 ]
  %.091151 = phi ptr [ %i.at, %pm_node_alloc.exit.i ], [ %i.bj, %bb.i ], [ %i.bj, %accept2.exit109 ] ; 5 uses
  %.193 = phi ptr [ %i.at, %pm_node_alloc.exit.i ], [ %i.bj, %bb.i ], [ %i.cx, %accept2.exit109 ]
  %i.da = icmp eq i32 %.val, 6
  br i1 %i.da, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %.loopexit156
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %2, ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.db = getelementptr i8, ptr %0, i64 376
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !168
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr i8, ptr %0, i64 608
  %i.df = load i64, ptr %i.de, align 8, !tbaa !483
  %i.dg = add i64 %i.df, -1
  br label %token_newline_index.exit

bb.t:                                             ; preds = %bb.r
  %i.dh = getelementptr i8, ptr %0, i64 600
  %i.di = getelementptr i8, ptr %0, i64 352
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !166
  %i.dk = call i32 @pm_newline_list_line(ptr noundef %i.dh, ptr noundef %i.dj, i32 noundef 0) #27
  %i.dl = sext i32 %i.dk to i64
  br label %token_newline_index.exit

token_newline_index.exit:                         ; preds = %bb.s, %bb.t
  %.0.i110 = phi i64 [ %i.dg, %bb.s ], [ %i.dl, %bb.t ]
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  %i.dm = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.do = shl i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !7
  %i.dp = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 24, i16 noundef zeroext %i.h) ; 3 uses
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.dr = lshr i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dm, align 4, !tbaa !7
  %.val.i111 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i111, label %accept2.exit113 [
    i32 17, label %bb.u
    i32 14, label %bb.u
  ]

bb.u:                                             ; preds = %token_newline_index.exit, %token_newline_index.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit113

accept2.exit113:                                  ; preds = %token_newline_index.exit, %bb.u
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %.0.i110, ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext false)
  %.val.i.i = load i32, ptr %i.u, align 8, !tbaa !170
  %i.ds = icmp eq i32 %.val.i.i, 8
  br i1 %i.ds, label %accept1.exit.thread.i, label %accept1.exit.i

accept1.exit.thread.i:                            ; preds = %accept2.exit113
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1_opening.exit

accept1.exit.i:                                   ; preds = %accept2.exit113
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !127
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !128 ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 472
  %i.dy = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.dx, ptr noundef %i.du, ptr noundef %i.dw, i32 noundef 57) #27 ; 0 uses
  %i.dz = getelementptr i8, ptr %0, i64 328
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !256
  store i32 163, ptr %i.c, align 8, !tbaa !200
  br label %expect1_opening.exit

expect1_opening.exit:                             ; preds = %accept1.exit.thread.i, %accept1.exit.i
  %i.ea = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 10 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.v, label %pm_node_alloc.exit.i114

bb.v:                                             ; preds = %expect1_opening.exit
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ed = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ec, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i114:                          ; preds = %expect1_opening.exit
  %i.ee = load i32, ptr %i.c, align 8, !tbaa !126
  %i.ef = icmp eq i32 %i.ee, 164                  ; 2 uses
  %i.eg = icmp ne ptr %i.dp, null
  %or.cond.i115 = and i1 %i.eg, %i.ef
  %i.eh = load i32, ptr %0, align 8, !tbaa !109
  %i.ei = add i32 %i.eh, 1                        ; 2 uses
  store i32 %i.ei, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in20.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ej = load <2 x ptr>, ptr %.sroa.7.0.in20.i, align 8, !tbaa !14
  %.sroa.7.021.i = load ptr, ptr %.sroa.7.0.in20.i, align 8, !tbaa !127
  br i1 %or.cond.i115, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %pm_node_alloc.exit.i114
  %.sroa.9.0.in22.i = getelementptr i8, ptr %i.dp, i64 16
  %.sroa.9.023.i = load ptr, ptr %.sroa.9.0.in22.i, align 8, !tbaa !14
  br label %pm_else_node_create.exit

bb.w:                                             ; preds = %pm_node_alloc.exit.i114
  %.sroa.9.0.in.i = getelementptr i8, ptr %0, i64 336
  %.sroa.9.0.i116 = load ptr, ptr %.sroa.9.0.in.i, align 8, !tbaa !14 ; 3 uses
  br i1 %i.ef, label %pm_else_node_create.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr i8, ptr %0, i64 328
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !127
  br label %pm_else_node_create.exit

pm_else_node_create.exit:                         ; preds = %.thread.i, %bb.w, %bb.x
  %.sroa.9.026.i = phi ptr [ %.sroa.9.0.i116, %bb.x ], [ %.sroa.9.0.i116, %bb.w ], [ %.sroa.9.023.i, %.thread.i ]
  %.sroa.14.0.i = phi ptr [ %i.el, %bb.x ], [ null, %bb.w ], [ null, %.thread.i ]
  %.sroa.16.0.i = phi ptr [ %.sroa.9.0.i116, %bb.x ], [ null, %bb.w ], [ null, %.thread.i ]
  store i16 47, ptr %i.ea, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 %i.ei, ptr %.sroa.5.0..sroa_idx.i117, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %.sroa.7.021.i, ptr %.sroa.7.0..sroa_idx.i118, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %.sroa.9.026.i, ptr %.sroa.9.0..sroa_idx.i119, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store <2 x ptr> %i.ej, ptr %.sroa.11.0..sroa_idx.i120, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %i.dp, ptr %.sroa.13.0..sroa_idx.i121, align 8, !tbaa !136
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr %.sroa.16.0.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !14
  switch i32 %1, label %bb.z [
    i32 29, label %bb.aa
    i32 52, label %bb.y
  ]

bb.y:                                             ; preds = %pm_else_node_create.exit
  br label %bb.aa

bb.z:                                             ; preds = %pm_else_node_create.exit
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 15258, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_conditional) #26
  unreachable

bb.aa:                                            ; preds = %pm_else_node_create.exit, %bb.y
  %.091151.sink = phi ptr [ %.091151, %bb.y ], [ %.193, %pm_else_node_create.exit ]
  %i.em = getelementptr i8, ptr %.091151.sink, i64 72
  store ptr %i.ea, ptr %i.em, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %expect1_opening.exit125

bb.ab:                                            ; preds = %.loopexit156
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %2, ptr noundef %6, i1 noundef zeroext %3, i1 noundef zeroext false)
  %.val.i.i122 = load i32, ptr %i.u, align 8, !tbaa !170
  %i.en = icmp eq i32 %.val.i.i122, 8
  br i1 %i.en, label %accept1.exit.thread.i124, label %accept1.exit.i123

accept1.exit.thread.i124:                         ; preds = %bb.ab
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1_opening.exit125

accept1.exit.i123:                                ; preds = %bb.ab
  %i.eo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !127
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !128 ; 2 uses
  %i.es = getelementptr i8, ptr %0, i64 472
  %i.et = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.es, ptr noundef %i.ep, ptr noundef %i.er, i32 noundef 56) #27 ; 0 uses
  %i.eu = getelementptr i8, ptr %0, i64 328
  store ptr %i.er, ptr %i.eu, align 8, !tbaa !256
  store i32 163, ptr %i.c, align 8, !tbaa !200
  br label %expect1_opening.exit125

expect1_opening.exit125:                          ; preds = %accept1.exit.i123, %accept1.exit.thread.i124, %bb.aa
  switch i32 %1, label %bb.ag [
    i32 29, label %.preheader
    i32 52, label %bb.af
  ]

.preheader:                                       ; preds = %expect1_opening.exit125
  %i.ev = getelementptr i8, ptr %0, i64 328       ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 336       ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader, %bb.ae
  %.088160 = phi ptr [ %.091151, %.preheader ], [ %i.ff, %bb.ae ] ; 6 uses
  %i.ex = load i16, ptr %.088160, align 8, !tbaa !115
  switch i16 %i.ex, label %.loopexit [
    i16 67, label %bb.ae
    i16 47, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.ey = getelementptr i8, ptr %.088160, i64 16
  %i.ez = getelementptr i8, ptr %.088160, i64 48
  %.val103 = load ptr, ptr %i.ew, align 8, !tbaa !128
  %i.fa = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !14
  store ptr %.val103, ptr %i.ey, align 8, !tbaa !345
  store <2 x ptr> %i.fa, ptr %i.ez, align 8, !tbaa !14
  br label %.loopexit

bb.ae:                                            ; preds = %bb.ac
  %i.fb = getelementptr i8, ptr %.088160, i64 16
  %i.fc = getelementptr i8, ptr %.088160, i64 80
  %.val101 = load ptr, ptr %i.ew, align 8, !tbaa !128
  %i.fd = load <2 x ptr>, ptr %i.ev, align 8, !tbaa !14
  store ptr %.val101, ptr %i.fb, align 8, !tbaa !548
  store <2 x ptr> %i.fd, ptr %i.fc, align 8, !tbaa !14
  %i.fe = getelementptr i8, ptr %.088160, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !545 ; 2 uses
  %.not170 = icmp eq ptr %i.ff, null
  br i1 %.not170, label %.loopexit, label %bb.ac, !llvm.loop !549

bb.af:                                            ; preds = %expect1_opening.exit125
  %i.fg = getelementptr i8, ptr %.091151, i64 80
  %i.fh = getelementptr i8, ptr %0, i64 328
  %i.fi = getelementptr i8, ptr %0, i64 336
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !128
  %i.fk = load <2 x ptr>, ptr %i.fh, align 8, !tbaa !14
  store <2 x ptr> %i.fk, ptr %i.fg, align 8, !tbaa !14
  %i.fl = getelementptr i8, ptr %.091151, i64 16
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !550
  br label %.loopexit

bb.ag:                                            ; preds = %expect1_opening.exit125
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 15295, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_conditional) #26
  unreachable

.loopexit:                                        ; preds = %bb.ac, %bb.ae, %bb.ad, %bb.af
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.b)
  call void @pm_node_list_free(ptr noundef nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %.091151
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_undef_node_create(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
end_hunk_13
begin_hunk_14_@parse_symbol_encoding:bb.a
bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.018.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.l, %bb.f ] ; 3 uses
  %i.i = ptrtoint ptr %.018.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef %.018.i, i64 noundef %i.j) #27 ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %parse_symbol_encoding_validate_utf8.exit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.018.i, i64 %i.k  ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.f
  br i1 %i.m, label %bb.e, label %parse_symbol_encoding_validate_utf8.exit, !llvm.loop !621

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 520
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  %i.p = icmp ne ptr %i.o, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48) ; 2 uses
  %brmerge.not = and i1 %3, %i.p
  %.mux = select i1 %i.p, i16 0, i16 8
  br i1 %brmerge.not, label %bb.h, label %parse_symbol_encoding_validate_utf8.exit

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @pm_string_source(ptr noundef %2) #27 ; 3 uses
  %i.r = tail call i64 @pm_string_length(ptr noundef %2) #27
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r     ; 3 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.i21, label %parse_symbol_encoding_validate_utf8.exit

.lr.ph.i21:                                       ; preds = %bb.h
  %i.u = ptrtoint ptr %i.s to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i21
  %.020.i = phi ptr [ %i.q, %.lr.ph.i21 ], [ %i.z, %bb.j ] ; 3 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !151
  %i.w = ptrtoint ptr %.020.i to i64
  %i.x = sub i64 %i.u, %i.w
  %i.y = tail call i64 %i.v(ptr noundef %.020.i, i64 noundef %i.x) #27, !inline_history !622 ; 2 uses
  %.not.i22 = icmp eq i64 %i.y, 0
  br i1 %.not.i22, label %parse_symbol_encoding_validate_utf8.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %.020.i, i64 %i.y  ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.s
  br i1 %i.aa, label %bb.i, label %parse_symbol_encoding_validate_utf8.exit, !llvm.loop !623

bb.k:                                             ; preds = %bb.a
  %i.ab = tail call i64 @pm_string_length(ptr noundef %2) #27 ; 2 uses
  %i.ac = tail call ptr @pm_string_source(ptr noundef %2) #27
  %.not1011.i = icmp eq i64 %i.ab, 0
  br i1 %.not1011.i, label %parse_symbol_encoding_validate_utf8.exit, label %.lr.ph.i24

bb.l:                                             ; preds = %.lr.ph.i24
  %i.ad = add nuw i64 %.0812.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.ab
  br i1 %exitcond.not.i, label %parse_symbol_encoding_validate_utf8.exit, label %.lr.ph.i24, !llvm.loop !482

.lr.ph.i24:                                       ; preds = %bb.k, %bb.l
  %.0812.i = phi i64 [ %i.ad, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 %.0812.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !67
  %.not.i25 = icmp sgt i8 %i.af, -1
  br i1 %.not.i25, label %bb.l, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i24
  br i1 %3, label %bb.n, label %parse_symbol_encoding_validate_utf8.exit

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %0, i64 520
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = tail call ptr @pm_string_source(ptr noundef %2) #27 ; 3 uses
  %i.aj = tail call i64 @pm_string_length(ptr noundef %2) #27
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj  ; 3 uses
  %i.al = icmp ult ptr %i.ai, %i.ak
  br i1 %i.al, label %.lr.ph.i26, label %parse_symbol_encoding_validate_utf8.exit

.lr.ph.i26:                                       ; preds = %bb.n
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i26
  %.020.i27 = phi ptr [ %i.ai, %.lr.ph.i26 ], [ %i.ar, %bb.p ] ; 3 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !151
  %i.ao = ptrtoint ptr %.020.i27 to i64
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = tail call i64 %i.an(ptr noundef %.020.i27, i64 noundef %i.ap) #27, !inline_history !622 ; 2 uses
  %.not.i28 = icmp eq i64 %i.aq, 0
  br i1 %.not.i28, label %parse_symbol_encoding_validate_utf8.exit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr i8, ptr %.020.i27, i64 %i.aq ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.ak
  br i1 %i.as, label %bb.o, label %parse_symbol_encoding_validate_utf8.exit, !llvm.loop !623

parse_symbol_encoding_validate_utf8.exit.sink.split: ; preds = %bb.i, %bb.e, %bb.o
  %.0.ph = phi i16 [ 0, %bb.o ], [ 4, %bb.e ], [ 0, %bb.i ]
  %i.at = getelementptr i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127
  %i.av = getelementptr i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !128
  %i.ax = getelementptr i8, ptr %0, i64 472
  %i.ay = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ax, ptr noundef %i.au, ptr noundef %i.aw, i32 noundef 169) #27 ; 0 uses
  br label %parse_symbol_encoding_validate_utf8.exit

parse_symbol_encoding_validate_utf8.exit:         ; preds = %bb.j, %bb.f, %bb.l, %bb.p, %parse_symbol_encoding_validate_utf8.exit.sink.split, %bb.k, %bb.n, %bb.h, %bb.d, %bb.m, %bb.g, %bb.c
  %.0 = phi i16 [ %.mux, %bb.g ], [ 4, %bb.c ], [ 0, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ 4, %bb.d ], [ 4, %bb.f ], [ 0, %bb.h ], [ 0, %bb.p ], [ %.0.ph, %parse_symbol_encoding_validate_utf8.exit.sink.split ], [ 0, %bb.n ], [ 0, %bb.j ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_local_variable_read_node_create_constant_id(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, -1) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  br i1 %4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 496
  %.0.i15 = load ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  %.not.i16 = icmp eq i32 %3, 0
  br i1 %.not.i16, label %pm_parser_scope_find.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.b = add i32 %.04.i17, -1                     ; 2 uses
  %.0.i = load ptr, ptr %.0.i18, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %pm_parser_scope_find.exit, label %.lr.ph, !llvm.loop !319

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.0.i18 = phi ptr [ %.0.i, %bb.c ], [ %.0.i15, %bb.b ] ; 2 uses
  %.04.i17 = phi i32 [ %i.b, %bb.c ], [ %3, %bb.b ]
  %.not5.i = icmp eq ptr %.0.i18, null
  br i1 %.not5.i, label %bb.d, label %bb.c, !llvm.loop !319

bb.d:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 626, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_parser_scope_find) #26
  unreachable

pm_parser_scope_find.exit:                        ; preds = %bb.c, %bb.b
  %.0.i.lcssa = phi ptr [ %.0.i15, %bb.b ], [ %.0.i, %bb.c ]
  %i.c = getelementptr i8, ptr %.0.i.lcssa, i64 8
  tail call fastcc void @pm_locals_read(ptr noundef %i.c, i32 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %pm_parser_scope_find.exit, %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %pm_node_alloc.exit

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.e
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8
  store i16 96, ptr %i.d, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.i, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !14
  store <2 x ptr> %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %3, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !7
  ret ptr %i.d
}

declare ptr @pm_static_literals_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @pm_static_literal_inspect(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @pm_newline_list_line_column(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pm_node_list_concat(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_block(ptr noundef %0, i16 noundef zeroext %1) unnamed_addr #1 {
bb.a:
  %.sroa.7.i = alloca %struct.pm_node_list, align 8 ; 4 uses
  %2 = alloca %struct.pm_token_t, align 8         ; 12 uses
  %3 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %4 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr i8, ptr %0, i64 320        ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !163
  %i.b = getelementptr i8, ptr %0, i64 344        ; 10 uses
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !170
  %i.c = icmp eq i32 %.val.i, 14
  br i1 %i.c, label %bb.b, label %accept1.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit

accept1.exit:                                     ; preds = %bb.a, %bb.b
  %i.d = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = shl i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !7
  %i.g = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #28 ; 6 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %pm_parser_scope_push.exit, label %bb.c

bb.c:                                             ; preds = %accept1.exit
  %i.h = getelementptr i8, ptr %0, i64 496        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.i, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = phi i8 [ %i.l, %bb.d ], [ 0, %bb.c ]
  store ptr %i.i, ptr %i.g, align 8, !tbaa !66
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.sroa.3.0..sroa_idx.i, i8 0, i64 41, i1 false)
  store i8 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !67
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.0..sroa_idx.i, i8 0, i64 6, i1 false)
  store ptr %i.g, ptr %i.h, align 8, !tbaa !59
  br label %pm_parser_scope_push.exit

pm_parser_scope_push.exit:                        ; preds = %accept1.exit, %bb.e
  %.val.i56 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.n = icmp eq i32 %.val.i56, 16
  br i1 %i.n, label %bb.f, label %accept1.exit57

bb.f:                                             ; preds = %pm_parser_scope_push.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !163
  %.val50 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.o = icmp eq i32 %.val50, 16
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.p = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 9 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %pm_node_alloc.exit.i

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.s = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.r, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.g
  %i.t = load i32, ptr %3, align 8, !tbaa !126
  %.not.i = icmp eq i32 %i.t, 164                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %.01837.i = select i1 %.not.i, ptr null, ptr %i.x ; 2 uses
  %.02536.i = select i1 %.not.i, ptr null, ptr %i.v ; 2 uses
  %.sink.i.sink.in = load i32, ptr %0, align 8, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i8 0, i64 24, i1 false)
  %.sink.i.sink = add i32 %.sink.i.sink.in, 1     ; 2 uses
  store i32 %.sink.i.sink, ptr %0, align 8, !tbaa !109
  store i16 16, ptr %i.p, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %.sink.i.sink, ptr %.sroa.3.0..sroa_idx.i58, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.02536.i, ptr %.sroa.4.0..sroa_idx.i59, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.01837.i, ptr %.sroa.5.0..sroa_idx.i60, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !tbaa.struct !594
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %.02536.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %.01837.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.y = getelementptr i8, ptr %0, i64 696
  store i8 1, ptr %i.y, align 8, !tbaa !164
  br label %expect1.exit

bb.i:                                             ; preds = %bb.f
  %i.z = add i16 %1, 1
  %i.aa = call fastcc ptr @parse_block_parameters(ptr noundef nonnull %0, i1 noundef zeroext true, ptr noundef %3, i1 noundef zeroext false, i1 noundef zeroext true, i16 noundef zeroext %i.z) ; 2 uses
  %.val.i62 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.ab = icmp eq i32 %.val.i62, 14
  br i1 %i.ab, label %bb.j, label %accept1.exit63

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i.i.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit63

accept1.exit63:                                   ; preds = %bb.i, %bb.j
  %.val.i.i = phi i32 [ %.val.i62, %bb.i ], [ %.val.i.i.pr, %bb.j ]
  %i.ac = getelementptr i8, ptr %0, i64 696
  store i8 1, ptr %i.ac, align 8, !tbaa !164
  %i.ad = icmp eq i32 %.val.i.i, 16
  br i1 %i.ad, label %expect1.exit, label %expect1.exit.thread

expect1.exit.thread:                              ; preds = %accept1.exit63
  %i.ae = getelementptr i8, ptr %0, i64 336
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !255 ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 472
  %i.ah = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ag, ptr noundef %i.af, ptr noundef %i.af, i32 noundef 37) #27 ; 0 uses
  %i.ai = getelementptr i8, ptr %0, i64 328
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !256
  store i32 163, ptr %i.a, align 8, !tbaa !200
  br label %pm_block_parameters_node_closing_set.exit

expect1.exit:                                     ; preds = %accept1.exit63, %pm_node_alloc.exit.i
  %.0.ph = phi ptr [ %i.p, %pm_node_alloc.exit.i ], [ %i.aa, %accept1.exit63 ] ; 3 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.a, align 8, !tbaa !126
  switch i32 %.pr, label %bb.k [
    i32 16, label %pm_block_parameters_node_closing_set.exit
    i32 15, label %pm_block_parameters_node_closing_set.exit
    i32 163, label %pm_block_parameters_node_closing_set.exit
  ]

bb.k:                                             ; preds = %expect1.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.2, i32 noundef 2492, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_block_parameters_node_closing_set) #26
  unreachable

pm_block_parameters_node_closing_set.exit:        ; preds = %expect1.exit.thread, %expect1.exit, %expect1.exit, %expect1.exit
  %.0113 = phi ptr [ %i.aa, %expect1.exit.thread ], [ %.0.ph, %expect1.exit ], [ %.0.ph, %expect1.exit ], [ %.0.ph, %expect1.exit ] ; 3 uses
  %i.aj = getelementptr i8, ptr %0, i64 336
  %i.ak = getelementptr i8, ptr %.0113, i64 16
  %i.al = getelementptr i8, ptr %.0113, i64 72
  %i.am = getelementptr i8, ptr %0, i64 328
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !128
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !14
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !600
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.val.i64.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit57

accept1.exit57:                                   ; preds = %pm_parser_scope_push.exit, %pm_block_parameters_node_closing_set.exit
  %.val.i64 = phi i32 [ %.val.i56, %pm_parser_scope_push.exit ], [ %.val.i64.pr, %pm_block_parameters_node_closing_set.exit ]
  %.1 = phi ptr [ null, %pm_parser_scope_push.exit ], [ %.0113, %pm_block_parameters_node_closing_set.exit ]
  %i.ap = icmp eq i32 %.val.i64, 14
  br i1 %i.ap, label %bb.l, label %accept1.exit65

bb.l:                                             ; preds = %accept1.exit57
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit65

accept1.exit65:                                   ; preds = %accept1.exit57, %bb.l
  %i.aq = load i32, ptr %2, align 8, !tbaa !126
  %i.ar = icmp eq i32 %i.aq, 28
  %.val49 = load i32, ptr %i.b, align 8, !tbaa !170 ; 3 uses
  br i1 %i.ar, label %bb.m, label %bb.o

bb.m:                                             ; preds = %accept1.exit65
  %i.as = icmp eq i32 %.val49, 2
  br i1 %i.as, label %accept1.exit.thread.i68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add i16 %1, 1
  %i.au = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 5, i16 noundef zeroext %i.at) ; 2 uses
  %.val.i.i66.pr = load i32, ptr %i.b, align 8, !tbaa !170
  %i.av = icmp eq i32 %.val.i.i66.pr, 2
  br i1 %i.av, label %accept1.exit.thread.i68, label %accept1.exit.i67

accept1.exit.thread.i68:                          ; preds = %bb.m, %bb.n
  %.046117 = phi ptr [ %i.au, %bb.n ], [ null, %bb.m ]
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1_opening.exit

accept1.exit.i67:                                 ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128 ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 472
  %i.bb = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ba, ptr noundef %i.ax, ptr noundef %i.az, i32 noundef 38) #27 ; 0 uses
  %i.bc = getelementptr i8, ptr %0, i64 328
  store ptr %i.az, ptr %i.bc, align 8, !tbaa !256
  store i32 163, ptr %i.a, align 8, !tbaa !200
  br label %expect1_opening.exit

bb.o:                                             ; preds = %accept1.exit65
  switch i32 %.val49, label %bb.p [
    i32 8, label %accept1.exit.thread.i74
    i32 11, label %.split48
    i32 9, label %.split48
    i32 6, label %bb.v
  ]

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !7
  %i.be = shl i32 %i.bd, 1
  store i32 %i.be, ptr %i.d, align 4, !tbaa !7
  %i.bf = add i16 %1, 1
  %i.bg = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 6, i16 noundef zeroext %i.bf) ; 5 uses
  %i.bh = load i32, ptr %i.d, align 4, !tbaa !7
  %i.bi = lshr i32 %i.bh, 1
  store i32 %i.bi, ptr %i.d, align 4, !tbaa !7
  %.val51 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val51, label %bb.v [
    i32 11, label %bb.q
    i32 9, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.bj = icmp eq ptr %i.bg, null
  br i1 %i.bj, label %.split48, label %bb.s

.split48:                                         ; preds = %bb.o, %bb.o, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !127
  %i.bm = getelementptr i8, ptr %0, i64 304
  %.val.i70 = load ptr, ptr %i.bm, align 8, !tbaa !74 ; 2 uses
  %i.bn = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 8 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.r, label %pm_begin_node_create.exit

bb.r:                                             ; preds = %.split48
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bq = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bp, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_begin_node_create.exit:                        ; preds = %.split48
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  store i16 11, ptr %i.bn, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i85, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store ptr %.val.i70, ptr %.sroa.7.0..sroa_idx.i86, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %.val.i70, ptr %.sroa.9.0..sroa_idx.i87, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = add i16 %1, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx.i88, i8 0, i64 24, i1 false)
  tail call fastcc void @parse_rescues(ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %i.bn, i32 noundef 2, i16 noundef zeroext %i.br), !inline_history !624
  store ptr %i.bl, ptr %.sroa.7.0..sroa_idx.i86, align 8, !tbaa !501
  br label %thread-pre-split

bb.s:                                             ; preds = %bb.q
  %i.bs = load i16, ptr %i.bg, align 8, !tbaa !115
  %i.bt = icmp eq i16 %i.bs, 140
  br i1 %i.bt, label %.split, label %bb.u

.split:                                           ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !127
  %i.bw = getelementptr i8, ptr %0, i64 304
  %.val.i71 = load ptr, ptr %i.bw, align 8, !tbaa !74
  %i.bx = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 9 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.t, label %pm_begin_node_create.exit104

bb.t:                                             ; preds = %.split
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ca = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bz, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_begin_node_create.exit104:                     ; preds = %.split
  %storemerge.in.i90 = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i91 = add i32 %storemerge.in.i90, 1 ; 2 uses
  store i32 %storemerge.i91, ptr %0, align 8, !tbaa !109
  %.147.sroa.gep = getelementptr i8, ptr %i.bg, i64 16
  %.sroa.9.0.i95.else.val = load ptr, ptr %.147.sroa.gep, align 8, !tbaa !14
  store i16 11, ptr %i.bx, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %storemerge.i91, ptr %.sroa.5.0..sroa_idx.i98, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr %.val.i71, ptr %.sroa.7.0..sroa_idx.i99, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %.sroa.9.0.i95.else.val, ptr %.sroa.9.0..sroa_idx.i100, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.15.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx.i101, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %.sroa.15.0..sroa_idx.i103, align 8, !tbaa !136
  %i.cb = add i16 %1, 2
  tail call fastcc void @parse_rescues(ptr noundef nonnull %0, i64 noundef 0, ptr noundef null, ptr noundef %i.bx, i32 noundef 2, i16 noundef zeroext %i.cb), !inline_history !624
  store ptr %i.bv, ptr %.sroa.7.0..sroa_idx.i99, align 8, !tbaa !501
  br label %thread-pre-split

bb.u:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.2, i32 noundef 14816, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_block) #26
  unreachable

thread-pre-split:                                 ; preds = %pm_begin_node_create.exit, %pm_begin_node_create.exit104
  %.2.ph = phi ptr [ %i.bn, %pm_begin_node_create.exit ], [ %i.bx, %pm_begin_node_create.exit104 ]
  %.val.i.i72.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %bb.v

bb.v:                                             ; preds = %bb.o, %bb.p, %thread-pre-split
  %.val.i.i72 = phi i32 [ %.val.i.i72.pr, %thread-pre-split ], [ %.val49, %bb.o ], [ %.val51, %bb.p ]
  %.2 = phi ptr [ %.2.ph, %thread-pre-split ], [ null, %bb.o ], [ %i.bg, %bb.p ] ; 2 uses
  %i.cc = icmp eq i32 %.val.i.i72, 8
  br i1 %i.cc, label %accept1.exit.thread.i74, label %accept1.exit.i73

accept1.exit.thread.i74:                          ; preds = %bb.o, %bb.v
  %.2129 = phi ptr [ %.2, %bb.v ], [ null, %bb.o ]
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1_opening.exit

accept1.exit.i73:                                 ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !127
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !128 ; 2 uses
  %i.ch = getelementptr i8, ptr %0, i64 472
  %i.ci = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ch, ptr noundef %i.ce, ptr noundef %i.cg, i32 noundef 39) #27 ; 0 uses
  %i.cj = getelementptr i8, ptr %0, i64 328
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !256
  store i32 163, ptr %i.a, align 8, !tbaa !200
  br label %expect1_opening.exit

expect1_opening.exit:                             ; preds = %accept1.exit.i73, %accept1.exit.thread.i74, %accept1.exit.i67, %accept1.exit.thread.i68
  %.3 = phi ptr [ %i.au, %accept1.exit.i67 ], [ %.046117, %accept1.exit.thread.i68 ], [ %.2129, %accept1.exit.thread.i74 ], [ %.2, %accept1.exit.i73 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ck = getelementptr i8, ptr %0, i64 496       ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !59 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %expect1_opening.exit
  %.0.i = phi ptr [ %i.cl, %expect1_opening.exit ], [ %i.cn, %bb.x ] ; 2 uses
  %i.cn = load ptr, ptr %.0.i, align 8, !tbaa !92 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null                 ; 2 uses
  br i1 %i.co, label %pm_parser_scope_toplevel_p.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr i8, ptr %.0.i, i64 50
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !188, !range !45, !noundef !46
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %pm_parser_scope_toplevel_p.exit, label %bb.w

pm_parser_scope_toplevel_p.exit:                  ; preds = %bb.w, %bb.x
  call fastcc void @pm_locals_order(ptr noundef %0, ptr noundef %i.cm, ptr noundef %4, i1 noundef zeroext %i.co)
  %i.cs = call fastcc ptr @parse_blocklike_parameters(ptr noundef %0, ptr noundef %.1, ptr noundef %2, ptr noundef nonnull %i.a)
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !59 ; 5 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !92
  store ptr %i.cu, ptr %i.ck, align 8, !tbaa !59
  %i.cv = getelementptr i8, ptr %i.ct, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !93
  %.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i, label %pm_parser_scope_pop.exit, label %bb.y

bb.y:                                             ; preds = %pm_parser_scope_toplevel_p.exit
  %i.cx = getelementptr i8, ptr %i.ct, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !94
  call void @free(ptr noundef %i.cy) #27
  br label %pm_parser_scope_pop.exit

pm_parser_scope_pop.exit:                         ; preds = %pm_parser_scope_toplevel_p.exit, %bb.y
  %i.cz = getelementptr i8, ptr %i.ct, i64 24
  call void @pm_node_list_free(ptr noundef %i.cz) #27
  call void @free(ptr noundef nonnull %i.ct) #27
  %i.da = load i32, ptr %i.d, align 4, !tbaa !7
  %i.db = lshr i32 %i.da, 1
  store i32 %i.db, ptr %i.d, align 4, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dd = load <2 x ptr>, ptr %i.dc, align 8
  %.val54 = load ptr, ptr %i.dc, align 8
  %i.de = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.z, label %pm_block_node_create.exit

bb.z:                                             ; preds = %pm_parser_scope_pop.exit
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.dh = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_block_node_create.exit:                        ; preds = %pm_parser_scope_pop.exit
  %i.di = load i32, ptr %0, align 8, !tbaa !109
  %i.dj = add i32 %i.di, 1                        ; 2 uses
  store i32 %i.dj, ptr %0, align 8, !tbaa !109
  %i.dk = getelementptr i8, ptr %0, i64 336
  %.sroa.6.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i77, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.dl = getelementptr i8, ptr %0, i64 328
  store i16 14, ptr %i.de, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dj, ptr %.sroa.3.0..sroa_idx.i78, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %.val54, ptr %.sroa.4.0..sroa_idx.i79, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.7.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store ptr %i.cs, ptr %.sroa.7.0..sroa_idx.i81, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  store ptr %.3, ptr %.sroa.8.0..sroa_idx.i82, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 64
  store <2 x ptr> %i.dd, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !128
  %i.dn = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !14
  store ptr %i.dm, ptr %.sroa.5.0..sroa_idx.i80, align 8, !tbaa !14
  store <2 x ptr> %i.dn, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %i.de
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_arguments_validate_block(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !315
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !111
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.b, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !446
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = load i16, ptr %i.k, align 8, !tbaa !115
  %i.m = icmp eq i16 %i.l, 116
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.o = getelementptr i8, ptr %2, i64 16
  %.val6 = load ptr, ptr %i.o, align 8, !tbaa !134
  %i.p = getelementptr i8, ptr %0, i64 472
  %i.q = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.p, ptr noundef %.val, ptr noundef %.val6, i32 noundef 25) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_arguments_node_create(ptr noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74   ; 2 uses
  store i16 5, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_arguments_node_arguments_append(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !111
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = getelementptr i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !113
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !114
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.f, align 8, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @pm_node_list_append(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #27
  %i.k = load i16, ptr %1, align 8, !tbaa !115
  %i.l = icmp eq i16 %i.k, 139
  br i1 %i.l, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !116  ; 2 uses
  %i.o = and i16 %i.n, 32
  %. = add nuw nsw i16 %i.o, 32
  %i.p = or i16 %i.n, %.
  store i16 %i.p, ptr %i.m, align 2, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  ret void
}

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

declare void @pm_integer_parse(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pm_integers_reduce(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @parse_variable(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 328        ; 4 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !127 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 336        ; 3 uses
  %.val42 = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.d = getelementptr i8, ptr %0, i64 576        ; 2 uses
  %i.e = ptrtoint ptr %.val42 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.d, ptr noundef %.val, i64 noundef %i.g) #27 ; 6 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !256  ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !255
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.b, label %pm_token_is_numbered_parameter.exit.thread

bb.b:                                             ; preds = %bb.a
end_hunk_14
begin_hunk_15_@pm_call_node_writable_p:bb.a
  %i.u = load i8, ptr %i.b, align 1, !tbaa !67    ; 2 uses
  %i.v = icmp eq i8 %i.u, 95
  br i1 %i.v, label %char_is_identifier_start.exit.thread17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp slt i8 %i.u, 0
  br i1 %i.w, label %bb.h, label %char_is_identifier_start.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !151
  %i.z = tail call i64 %i.y(ptr noundef nonnull %i.b, i64 noundef %i.k) #27, !inline_history !225
  br label %char_is_identifier_start.exit

bb.i:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.b, align 1, !tbaa !67   ; 3 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = zext nneg i8 %i.aa to i64
  %i.ad = getelementptr i8, ptr @pm_encoding_unicode_table, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !67
  %.not.i = trunc i8 %i.ae to i1
  %i.af = icmp eq i8 %i.aa, 95
  %narrow.i = or i1 %i.af, %.not.i
  %i.ag = zext i1 %narrow.i to i64
  br label %char_is_identifier_start.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.b, i64 noundef %i.k) #27
  br label %char_is_identifier_start.exit

char_is_identifier_start.exit:                    ; preds = %bb.h, %bb.j, %bb.k
  %.1.i = phi i64 [ %i.ah, %bb.k ], [ %i.z, %bb.h ], [ %i.ag, %bb.j ]
  %.not13 = icmp eq i64 %.1.i, 0
  br i1 %.not13, label %char_is_identifier_start.exit.thread, label %char_is_identifier_start.exit.thread17

char_is_identifier_start.exit.thread17:           ; preds = %bb.e, %bb.f, %char_is_identifier_start.exit
  %i.ai = getelementptr i8, ptr %1, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !288
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %char_is_identifier_start.exit.thread

bb.l:                                             ; preds = %char_is_identifier_start.exit.thread17
  %i.al = getelementptr i8, ptr %1, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !117
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.m, label %char_is_identifier_start.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %1, i64 128
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !289
  %i.aq = icmp eq ptr %i.ap, null
  br label %char_is_identifier_start.exit.thread

char_is_identifier_start.exit.thread:             ; preds = %bb.g, %bb.c, %bb.b, %bb.b, %bb.m, %bb.l, %char_is_identifier_start.exit.thread17, %char_is_identifier_start.exit, %bb.a
  %i.ar = phi i1 [ false, %bb.l ], [ false, %char_is_identifier_start.exit.thread17 ], [ false, %char_is_identifier_start.exit ], [ false, %bb.b ], [ false, %bb.b ], [ false, %bb.a ], [ %i.aq, %bb.m ], [ false, %bb.c ], [ false, %bb.g ]
  ret i1 %i.ar
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_call_operator_write(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 88         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val18 = load ptr, ptr %i.c, align 8, !tbaa !127
  %i.d = getelementptr i8, ptr %2, i64 16
  %.val19 = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.e = getelementptr i8, ptr %0, i64 472
  %i.f = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.e, ptr noundef %.val18, ptr noundef %.val19, i32 noundef 203) #27 ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !117
  tail call void @pm_visit_node(ptr noundef %i.g, ptr noundef nonnull @pm_node_unreference_each, ptr noundef %0) #27
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !117
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef %i.h) #27
  store ptr null, ptr %i.a, align 8, !tbaa !117
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr i8, ptr %1, i64 128        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !289
  %.not16 = icmp eq ptr %i.j, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.l = getelementptr i8, ptr %2, i64 16
  %.val17 = load ptr, ptr %i.l, align 8, !tbaa !128
  %i.m = getelementptr i8, ptr %0, i64 472
  %i.n = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.m, ptr noundef %.val, ptr noundef %.val17, i32 noundef 204) #27 ; 0 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !289
  tail call void @pm_visit_node(ptr noundef %i.o, ptr noundef nonnull @pm_node_unreference_each, ptr noundef %0) #27
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !289
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef %i.p) #27
  store ptr null, ptr %i.i, align 8, !tbaa !289
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_call_and_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.2, i32 noundef 2866, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8, !tbaa !126
  %i.e = icmp eq i32 %i.d, 20
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 2867, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_and_write_node_create) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 14 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %pm_node_alloc.exit

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !116
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = getelementptr i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  %i.r = getelementptr i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  %i.t = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr i8, ptr %1, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr i8, ptr %1, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !120  ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 8
  store i16 18, ptr %i.f, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 %i.k, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.m, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %i.w, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !14
  store <2 x ptr> %i.y, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %3, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !105
  %i.z = getelementptr i8, ptr %0, i64 576        ; 3 uses
  %i.aa = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.z, i32 noundef %i.w) #27 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.ad = add i64 %i.ac, -1                       ; 3 uses
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #28 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull align 1 %i.af, i64 noundef %i.ad, i1 noundef false) #27
  %i.ag = tail call i32 @pm_constant_pool_insert_owned(ptr noundef %i.z, ptr noundef nonnull %i.ae, i64 noundef %i.ad) #27
  br label %pm_call_write_read_name_init.exit

bb.h:                                             ; preds = %pm_node_alloc.exit
  %i.ah = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.z, ptr noundef nonnull @.str.103, i64 noundef 0) #27
  br label %pm_call_write_read_name_init.exit

pm_call_write_read_name_init.exit:                ; preds = %bb.g, %bb.h
  %storemerge.i = phi i32 [ %i.ah, %bb.h ], [ %i.ag, %bb.g ]
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %storemerge.i, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !7
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_global_variable_or_write_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 4205, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133  ; 3 uses
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.m, label %bb.h [
    i16 62, label %bb.e
    i16 10, label %bb.f
    i16 111, label %bb.g
  ]

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !423
  br label %pm_global_variable_write_name.exit

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !425
  br label %pm_global_variable_write_name.exit

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr i8, ptr %0, i64 576
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.t, ptr noundef %i.j, i64 noundef %i.w) #27
  br label %pm_global_variable_write_name.exit

bb.h:                                             ; preds = %pm_node_alloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 4157, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_write_name) #26
  unreachable

pm_global_variable_write_name.exit:               ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.y = getelementptr i8, ptr %2, i64 8
  store i16 61, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !14
  store <2 x ptr> %i.z, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_class_variable_or_write_node_create(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3308, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_class_variable_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !674
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.o = getelementptr i8, ptr %2, i64 8
  store i16 29, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !14
  store <2 x ptr> %i.p, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_constant_path_or_write_node_create(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3412, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_constant_path_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %2, i64 8
  store i16 39, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !676
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14
  store <2 x ptr> %i.n, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %3, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_constant_or_write_node_create(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 135
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3520, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_constant_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
end_hunk_15
begin_hunk_16_@pm_index_or_write_node_create:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !446
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.u = add nuw i64 %.022.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.r
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.h, !llvm.loop !535

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.022.i = phi i64 [ 0, %.lr.ph.i ], [ %i.u, %bb.g ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %.022.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105  ; 4 uses
  %.not17.i = icmp eq ptr %i.w, null
  br i1 %.not17.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i16, ptr %i.w, align 8, !tbaa !115
  %i.y = icmp eq i16 %i.x, 90
  br i1 %i.y, label %bb.j, label %bb.g

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %.val20.i = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.aa = getelementptr i8, ptr %i.w, i64 16
  %.val21.i = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ab = getelementptr i8, ptr %0, i64 472
  %i.ac = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ab, ptr noundef %.val20.i, ptr noundef %.val21.i, i32 noundef 281) #27 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %bb.g, %bb.j, %.preheader.i, %bb.f, %bb.e
  %.not18.i = icmp eq ptr %i.j, null
  br i1 %.not18.i, label %pm_index_arguments_check.exitthread-pre-split, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %i.ad = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !133
  %i.ae = getelementptr i8, ptr %i.j, i64 16
  %.val19.i = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.af = getelementptr i8, ptr %0, i64 472
  %i.ag = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.af, ptr noundef %.val.i, ptr noundef %.val19.i, i32 noundef 280) #27 ; 0 uses
  br label %pm_index_arguments_check.exitthread-pre-split

pm_index_arguments_check.exitthread-pre-split:    ; preds = %bb.k, %.critedge.i
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !289
  br label %pm_index_arguments_check.exit

pm_index_arguments_check.exit:                    ; preds = %pm_index_arguments_check.exitthread-pre-split, %pm_node_alloc.exit
  %i.ah = phi ptr [ %.pr, %pm_index_arguments_check.exitthread-pre-split ], [ %i.j, %pm_node_alloc.exit ] ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %pm_index_arguments_check.exit
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !115
  %i.aj = icmp eq i16 %i.ai, 12
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.2, i32 noundef 3046, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_or_write_node_create) #26
  unreachable

bb.n:                                             ; preds = %pm_index_arguments_check.exit, %bb.l
  %i.ak = getelementptr i8, ptr %1, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !116
  %i.am = load i32, ptr %0, align 8, !tbaa !109
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %0, align 8, !tbaa !109
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !133
  %i.aq = getelementptr i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !134
  %i.as = getelementptr i8, ptr %1, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !125
  %i.au = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.av = getelementptr i8, ptr %1, i64 72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.ax = getelementptr i8, ptr %1, i64 96
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = getelementptr i8, ptr %2, i64 8
  store i16 74, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.al, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.an, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ar, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.at, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.aw, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !511
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.ah, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !536
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !14
  store <2 x ptr> %i.az, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %3, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !105
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_call_or_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.2, i32 noundef 3011, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_or_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 8, !tbaa !126
  %i.e = icmp eq i32 %i.d, 135
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.2, i32 noundef 3012, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_or_write_node_create) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 14 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %pm_node_alloc.exit

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.e
  %i.j = getelementptr i8, ptr %1, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !116
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  %i.p = getelementptr i8, ptr %3, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  %i.r = getelementptr i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125
  %i.t = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr i8, ptr %1, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr i8, ptr %1, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !120  ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 8
  store i16 21, ptr %i.f, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 %i.k, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.m, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %i.w, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !14
  store <2 x ptr> %i.y, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %3, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !105
  %i.z = getelementptr i8, ptr %0, i64 576        ; 3 uses
  %i.aa = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.z, i32 noundef %i.w) #27 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.ad = add i64 %i.ac, -1                       ; 3 uses
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #28 ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ae, ptr noundef nonnull align 1 %i.af, i64 noundef %i.ad, i1 noundef false) #27
  %i.ag = tail call i32 @pm_constant_pool_insert_owned(ptr noundef %i.z, ptr noundef nonnull %i.ae, i64 noundef %i.ad) #27
  br label %pm_call_write_read_name_init.exit

bb.h:                                             ; preds = %pm_node_alloc.exit
  %i.ah = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.z, ptr noundef nonnull @.str.103, i64 noundef 0) #27
  br label %pm_call_write_read_name_init.exit

pm_call_write_read_name_init.exit:                ; preds = %bb.g, %bb.h
  %storemerge.i = phi i32 [ %i.ah, %bb.h ], [ %i.ag, %bb.g ]
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %storemerge.i, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !7
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_class_variable_operator_write_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr %.8.val, ptr %.16.val, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !674
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.m = getelementptr i8, ptr %.16.val, i64 -1
  %i.n = getelementptr i8, ptr %0, i64 576
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %.8.val to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.n, ptr noundef %.8.val, i64 noundef %i.q) #27
  store i16 28, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.r, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_constant_path_operator_write_node_create(ptr noundef %0, ptr noundef %1, ptr %.8.val, ptr %.16.val, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr i8, ptr %.16.val, i64 -1
  %i.l = getelementptr i8, ptr %0, i64 576
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %.8.val to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.l, ptr noundef %.8.val, i64 noundef %i.o) #27
  store i16 38, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !676
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.8.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.16.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 %i.p, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_constant_operator_write_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr %.8.val, ptr %.16.val, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !678
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.m = getelementptr i8, ptr %.16.val, i64 -1
  %i.n = getelementptr i8, ptr %0, i64 576
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %.8.val to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.n, ptr noundef %.8.val, i64 noundef %i.q) #27
  store i16 34, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.r, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_instance_variable_operator_write_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr %.8.val, ptr %.16.val, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !680
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.m = getelementptr i8, ptr %.16.val, i64 -1
  %i.n = getelementptr i8, ptr %0, i64 576
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %.8.val to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.n, ptr noundef %.8.val, i64 noundef %i.q) #27
  store i16 77, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
end_hunk_16
begin_hunk_17_@pm_index_operator_write_node_create:bb.a
  %.not17.i = icmp eq ptr %i.u, null
  br i1 %.not17.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i16, ptr %i.u, align 8, !tbaa !115
  %i.w = icmp eq i16 %i.v, 90
  br i1 %i.w, label %bb.h, label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val20.i = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.y = getelementptr i8, ptr %i.u, i64 16
  %.val21.i = load ptr, ptr %i.y, align 8, !tbaa !134
  %i.z = getelementptr i8, ptr %0, i64 472
  %i.aa = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.z, ptr noundef %.val20.i, ptr noundef %.val21.i, i32 noundef 281) #27 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.e, %bb.h, %.preheader.i, %bb.d, %bb.c
  %.not18.i = icmp eq ptr %i.h, null
  br i1 %.not18.i, label %pm_index_arguments_check.exitthread-pre-split, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.ab = getelementptr i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.ac = getelementptr i8, ptr %i.h, i64 16
  %.val19.i = load ptr, ptr %i.ac, align 8, !tbaa !134
  %i.ad = getelementptr i8, ptr %0, i64 472
  %i.ae = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ad, ptr noundef %.val.i, ptr noundef %.val19.i, i32 noundef 280) #27 ; 0 uses
  br label %pm_index_arguments_check.exitthread-pre-split

pm_index_arguments_check.exitthread-pre-split:    ; preds = %bb.i, %.critedge.i
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !289
  br label %pm_index_arguments_check.exit

pm_index_arguments_check.exit:                    ; preds = %pm_index_arguments_check.exitthread-pre-split, %pm_node_alloc.exit
  %i.af = phi ptr [ %.pr, %pm_index_arguments_check.exitthread-pre-split ], [ %i.h, %pm_node_alloc.exit ] ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %pm_index_arguments_check.exit
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !115
  %i.ah = icmp eq i16 %i.ag, 12
  br i1 %i.ah, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.2, i32 noundef 2984, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_operator_write_node_create) #26
  unreachable

bb.l:                                             ; preds = %pm_index_arguments_check.exit, %bb.j
  %i.ai = getelementptr i8, ptr %1, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !116
  %i.ak = load i32, ptr %0, align 8, !tbaa !109
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %0, align 8, !tbaa !109
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !133
  %i.ao = getelementptr i8, ptr %3, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !134
  %i.aq = getelementptr i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !125
  %i.as = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = getelementptr i8, ptr %1, i64 72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.av = getelementptr i8, ptr %1, i64 96
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.aw = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127 ; 2 uses
  %i.ay = getelementptr i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  %i.bb = getelementptr i8, ptr %0, i64 576
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.bb, ptr noundef %i.ax, i64 noundef %i.be) #27
  store i16 73, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.aj, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.al, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ar, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.au, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !511
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.af, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !536
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %i.bf, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bg = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !14
  store <2 x ptr> %i.bg, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %3, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !105
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_call_operator_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.2, i32 noundef 2950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_operator_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #30 ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 104) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !116
  %i.j = load i32, ptr %0, align 8, !tbaa !109
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !109
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.n = getelementptr i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.r = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = getelementptr i8, ptr %1, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr i8, ptr %1, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !120  ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127  ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = getelementptr i8, ptr %0, i64 576       ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.aa, ptr noundef %i.w, i64 noundef %i.ad) #27
  store i16 20, ptr %i.d, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.i, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.k, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.u, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.ae, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !7
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.af = load <2 x ptr>, ptr %i.v, align 8, !tbaa !14
  store <2 x ptr> %i.af, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %3, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !105
  %i.ag = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.aa, i32 noundef %i.u) #27 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.aj = add i64 %i.ai, -1                       ; 3 uses
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #28 ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.al, i64 noundef %i.aj, i1 noundef false) #27
  %i.am = tail call i32 @pm_constant_pool_insert_owned(ptr noundef %i.aa, ptr noundef nonnull %i.ak, i64 noundef %i.aj) #27
  br label %pm_call_write_read_name_init.exit

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.an = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.aa, ptr noundef nonnull @.str.103, i64 noundef 0) #27
  br label %pm_call_write_read_name_init.exit

pm_call_write_read_name_init.exit:                ; preds = %bb.e, %bb.f
  %storemerge.i = phi i32 [ %i.an, %bb.f ], [ %i.am, %bb.e ]
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %storemerge.i, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !7
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_regular_expression_named_captures(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.parse_regular_expression_named_capture_data_t, align 8 ; 9 uses
  %5 = alloca %struct.parse_regular_expression_error_data_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !682
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !686
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !569
  %i.g = icmp eq i32 %i.f, 1
  %i.h = zext i1 %i.g to i8                       ; 2 uses
  store i8 %i.h, ptr %i.d, align 8, !tbaa !687
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8, !tbaa !566
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14
  store <2 x ptr> %i.n, ptr %i.j, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.h, ptr %i.o, align 8, !tbaa !570
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, i8 0, i64 7, i1 false)
  %i.q = tail call ptr @pm_string_source(ptr noundef %1) #27
  %i.r = tail call i64 @pm_string_length(ptr noundef %1) #27
  call void @pm_regexp_parse(ptr noundef %0, ptr noundef %i.q, i64 noundef %i.r, i1 noundef zeroext %3, ptr noundef nonnull @parse_regular_expression_named_capture, ptr noundef nonnull %4, ptr noundef nonnull @parse_regular_expression_error, ptr noundef nonnull %5) #27
  call void @pm_constant_id_list_free(ptr noundef nonnull %i.c) #27
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !688  ; 2 uses
  %.not = icmp eq ptr %i.s, null
  %. = select i1 %.not, ptr %2, ptr %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %.
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_call_node_shorthand_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133
  %i.g = select i1 %i.f, i16 32, i16 0            ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 14 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %pm_call_node_create.exit

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %pm_assert_value_expression.exit
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.h, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  store i16 %i.g, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  %i.p = getelementptr i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !314  ; 3 uses
  %.not.i29 = icmp eq ptr %i.q, null
  br i1 %.not.i29, label %bb.f, label %bb.d

bb.d:                                             ; preds = %pm_call_node_create.exit
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134  ; 3 uses
  %i.t = getelementptr i8, ptr %3, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !315
  %.not20.i = icmp eq ptr %i.u, null
  br i1 %.not20.i, label %pm_arguments_end.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !316  ; 2 uses
  %i.x = icmp ugt ptr %i.w, %i.s
  %spec.select.i = select i1 %i.x, ptr %i.w, ptr %i.s
  br label %pm_arguments_end.exit

bb.f:                                             ; preds = %pm_call_node_create.exit
  %i.y = getelementptr i8, ptr %3, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !315
  %.not18.i = icmp eq ptr %i.z, null
  br i1 %.not18.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %3, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !316
  br label %pm_arguments_end.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !312 ; 2 uses
  %.not19.i = icmp eq ptr %i.ad, null
  br i1 %.not19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  br label %pm_arguments_end.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !316
  br label %pm_arguments_end.exit

pm_arguments_end.exit:                            ; preds = %bb.d, %bb.e, %bb.g, %bb.i, %bb.j
  %.013.i = phi ptr [ %i.ah, %bb.j ], [ %i.ab, %bb.g ], [ %i.af, %bb.i ], [ %i.s, %bb.d ], [ %spec.select.i, %bb.e ]
  store ptr %.013.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.ai = getelementptr i8, ptr %i.h, i64 24
  store ptr %1, ptr %i.ai, align 8, !tbaa !125
  %i.aj = getelementptr i8, ptr %i.h, i64 32
  %i.ak = load i32, ptr %2, align 8, !tbaa !126   ; 2 uses
  %i.al = icmp eq i32 %i.ak, 164
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %pm_arguments_end.exit
  %i.am = getelementptr i8, ptr %2, i64 8
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %pm_arguments_end.exit, %bb.k
  %i.ao = phi <2 x ptr> [ %i.an, %bb.k ], [ splat (ptr null), %pm_arguments_end.exit ]
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !14
  %i.ap = getelementptr i8, ptr %i.h, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !311
  %i.aq = getelementptr i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !312
  %i.as = getelementptr i8, ptr %i.h, i64 88
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %i.at = getelementptr i8, ptr %i.h, i64 96
  %i.au = getelementptr i8, ptr %3, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !311
  %i.av = getelementptr i8, ptr %i.h, i64 128
  store ptr %i.q, ptr %i.av, align 8, !tbaa !289
  %i.aw = icmp eq i32 %i.ak, 21
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = or disjoint i16 %i.g, 4
  store i16 %i.ax, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !116
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = getelementptr i8, ptr %0, i64 576
  %i.az = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.ay, ptr noundef nonnull @.str.240, i64 noundef 4) #27
  %i.ba = getelementptr i8, ptr %i.h, i64 48
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !120
  ret ptr %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_call_node_call_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef nonnull readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

end_hunk_17
