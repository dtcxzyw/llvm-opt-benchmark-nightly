Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pm_parser_init:bb.a

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @pm_string_source(ptr noundef %i.q) #27 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %i.r
  %i.u = tail call ptr @pm_encoding_find(ptr noundef %i.s, ptr noundef %i.t) #27 ; 4 uses
  %.not.i.not = icmp eq ptr %i.u, null
  br i1 %.not.i.not, label %parser_lex_magic_comment_encoding_value.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !371
  %.not15.i = icmp eq ptr %i.v, %i.u
  br i1 %.not15.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.u, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !371
  %i.w = load ptr, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !372 ; 2 uses
  %.not16.i = icmp eq ptr %i.w, null
  br i1 %.not16.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.w(ptr noundef nonnull %0) #27, !inline_history !373
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.x = icmp ne ptr %i.u, @pm_encodings
  %i.y = getelementptr i8, ptr %0, i64 699
  %i.z = zext i1 %i.x to i8
  store i8 %i.z, ptr %i.y, align 1, !tbaa !374
  br label %parser_lex_magic_comment_encoding_value.exit

parser_lex_magic_comment_encoding_value.exit:     ; preds = %bb.i, %bb.e, %bb.d
  %i.aa = getelementptr i8, ptr %3, i64 94
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !640, !range !375, !noundef !376
  %i.ac = getelementptr i8, ptr %0, i64 698
  store i8 %i.ab, ptr %i.ac, align 2, !tbaa !377
  %i.ad = getelementptr i8, ptr %3, i64 93
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !378
  %i.af = getelementptr i8, ptr %0, i64 693
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !379
  %i.ag = getelementptr i8, ptr %3, i64 92
  %i.ah = load i8, ptr %i.ag, align 4, !tbaa !380
  %i.ai = getelementptr i8, ptr %0, i64 692
  store i8 %i.ah, ptr %i.ai, align 4, !tbaa !381
  %i.aj = getelementptr i8, ptr %3, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !641
  %i.al = getelementptr i8, ptr %0, i64 688
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !382
  %i.am = getelementptr i8, ptr %3, i64 96
  %i.an = load i8, ptr %i.am, align 8, !tbaa !642, !range !375, !noundef !376
  %i.ao = getelementptr i8, ptr %0, i64 695
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !383
  %i.ap = getelementptr i8, ptr %3, i64 72        ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !643
  %i.ar = icmp ne i64 %i.aq, 0                    ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 694
  %i.at = zext i1 %i.ar to i8
  store i8 %i.at, ptr %i.as, align 2, !tbaa !384
  br i1 %i.ar, label %.lr.ph273, label %.loopexit263

.lr.ph273:                                        ; preds = %parser_lex_magic_comment_encoding_value.exit
  store i8 0, ptr %.sroa.1985.0..sroa_idx, align 8, !tbaa !385
  %i.au = getelementptr i8, ptr %0, i64 496       ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph273, %._crit_edge
  %.0271 = phi i64 [ 0, %.lr.ph273 ], [ %i.bj, %._crit_edge ] ; 3 uses
  %i.av = tail call ptr @pm_options_scope_get(ptr noundef nonnull %3, i64 noundef %.0271) #27 ; 4 uses
  %i.aw = icmp eq i64 %.0271, 0
  %i.ax = zext i1 %i.aw to i8
  %i.ay = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #28 ; 8 uses
  %.not260.a = icmp eq ptr %i.ay, null
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !386 ; 4 uses
  br i1 %.not260.a, label %pm_parser_scope_push.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = icmp eq ptr %.pre, null
  br i1 %i.az, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr i8, ptr %.pre, i64 49
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !392
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = phi i8 [ %i.bb, %bb.l ], [ 0, %bb.k ]
  store ptr %.pre, ptr %i.ay, align 8, !tbaa !393
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.sroa.3.0..sroa_idx.i, i8 0, i64 41, i1 false)
  store i8 %i.bc, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !394
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 50
  store i8 %i.ax, ptr %.sroa.5.0..sroa_idx.i, align 2, !tbaa !350
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx.i, i8 0, i64 5, i1 false)
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !386
  br label %pm_parser_scope_push.exit

pm_parser_scope_push.exit:                        ; preds = %bb.j, %bb.m
  %i.bd = phi ptr [ %.pre, %bb.j ], [ %i.ay, %bb.m ]
  %i.be = getelementptr i8, ptr %i.av, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !645
  %i.bg = or i8 %i.bf, 16
  %i.bh = getelementptr i8, ptr %i.bd, i64 48
  store i8 %i.bg, ptr %i.bh, align 8, !tbaa !395
  %i.bi = load i64, ptr %i.av, align 8, !tbaa !646
  %.not279 = icmp eq i64 %i.bi, 0
  br i1 %.not279, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %pm_parser_local_add_owned.exit, %pm_parser_scope_push.exit
  %i.bj = add nuw i64 %.0271, 1                   ; 2 uses
  %i.bk = load i64, ptr %i.ap, align 8, !tbaa !643
  %i.bl = icmp ult i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.j, label %.loopexit263, !llvm.loop !636

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
  %i.bs = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !397 ; 2 uses
  %.val.i = load ptr, ptr %i.au, align 8, !tbaa !386
  tail call fastcc void @pm_parser_local_add(ptr %.val.i, i32 noundef %i.br, ptr noundef %i.bs, ptr noundef %i.bs, i32 noundef 1)
  br label %pm_parser_local_add_owned.exit

pm_parser_local_add_owned.exit:                   ; preds = %bb.o, %bb.n, %.lr.ph
  %i.bt = add nuw i64 %.0188270, 1                ; 2 uses
  %i.bu = load i64, ptr %i.av, align 8, !tbaa !646
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !637

.loopexit263:                                     ; preds = %._crit_edge, %parser_lex_magic_comment_encoding_value.exit, %bb.c
  %i.bw = getelementptr i8, ptr %0, i64 688       ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !382
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit263
  store i32 4, ptr %i.bw, align 8, !tbaa !382
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit263
  %i.bz = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !31
  %i.cb = shl i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 8, !tbaa !31
  %i.cc = icmp ugt i64 %2, 2
  br i1 %i.cc, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cd = load i8, ptr %1, align 1, !tbaa !394
  %i.ce = icmp eq i8 %i.cd, -17
  br i1 %i.ce, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %1, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !394
  %i.ch = icmp eq i8 %i.cg, -69
  br i1 %i.ch, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.ci = getelementptr i8, ptr %1, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !394
  %i.ck = icmp eq i8 %i.cj, -65
  br i1 %i.ck, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !398
  %i.cm = getelementptr i8, ptr %i.cl, i64 3
  store ptr %i.cm, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !398
  %i.cn = load ptr, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !399
  %i.co = getelementptr i8, ptr %i.cn, i64 3
  store ptr %i.co, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !399
  %i.cp = load ptr, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !371
  %.not215 = icmp eq ptr %i.cp, @pm_encodings
  br i1 %.not215, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr @pm_encodings, ptr %.sroa.1480.0..sroa_idx, align 8, !tbaa !371
  %i.cq = load ptr, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !372 ; 2 uses
  %.not216 = icmp eq ptr %i.cq, null
  br i1 %.not216, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void %i.cq(ptr noundef nonnull %0) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %bb.q
  %i.cr = getelementptr i8, ptr %0, i64 692
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !381
  %i.ct = lshr i8 %i.cs, 5                        ; 6 uses
  %i.cu = load ptr, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !398 ; 4 uses
  %i.cv = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !400 ; 2 uses
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
  %i.de = load i8, ptr %i.cu, align 1, !tbaa !394
  %i.df = icmp eq i8 %i.de, 35
  br i1 %i.df, label %bb.aa, label %bb.ao

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr i8, ptr %i.cu, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !394
  %i.di = icmp eq i8 %i.dh, 33
  br i1 %i.di, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !397 ; 5 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.dc  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4     ; 2 uses
  %.not16.i227 = icmp ugt ptr %i.dj, %i.dl
  br i1 %.not16.i227, label %.loopexit262, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %bb.ad
  %.01517.i = phi ptr [ %i.ds, %bb.ad ], [ %i.dj, %bb.ab ] ; 5 uses
  %i.dm = load i8, ptr %.01517.i, align 1, !tbaa !394
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
  br i1 %.not.i228, label %.loopexit262, label %.lr.ph.i, !llvm.loop !0

pm_strnstr.exit:                                  ; preds = %bb.ac
  br i1 %.not217, label %pm_parser_warn_shebang_carriage_return.exit, label %bb.ae

bb.ae:                                            ; preds = %pm_strnstr.exit
  %i.dt = getelementptr i8, ptr %i.da, i64 1
  store ptr %i.dt, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !399
  br i1 %.not213, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr i8, ptr %3, i64 95
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !647, !range !375, !noundef !376
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dx = add i64 %i.dc, 1                        ; 2 uses
  %i.dy = icmp ugt i64 %i.dx, 2
  br i1 %i.dy, label %bb.ah, label %pm_parser_warn_shebang_carriage_return.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dz = getelementptr i8, ptr %i.dj, i64 %i.dx  ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 -2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !394
  %i.ec = icmp eq i8 %i.eb, 13
  br i1 %i.ec, label %bb.ai, label %pm_parser_warn_shebang_carriage_return.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ed = load i8, ptr %i.dk, align 1, !tbaa !394
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
  %.pre292 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !647, !range !375
  %i.eh = trunc nuw i8 %.pre292 to i1
  br i1 %i.eh, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %pm_parser_warn_shebang_carriage_return.exit.thread
  %i.ei = load ptr, ptr %3, align 8, !tbaa !401
  %.not219 = icmp eq ptr %i.ei, null
  br i1 %.not219, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !397
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
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !647, !range !375, !noundef !376
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eq = getelementptr i8, ptr %0, i64 694
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !384, !range !375, !noundef !376
  %i.es = trunc nuw i8 %i.er to i1
  %spec.select = select i1 %i.es, i8 %i.ct, i8 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.loopexit262, %bb.aa, %bb.z, %next_newline.exit
  %.1195 = phi i8 [ %i.ct, %next_newline.exit ], [ %i.ct, %bb.aa ], [ %i.ct, %bb.z ], [ %i.ct, %.loopexit262 ], [ %spec.select, %bb.an ], [ %i.ct, %bb.am ]
  %i.et = trunc i8 %.1195 to i1
  br i1 %i.et, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %4 = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !397 ; 3 uses
  %i.eu = ptrtoint ptr %4 to i64
  %i.ev = sub i64 %i.cw, %i.eu                    ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  br i1 %i.ew, label %next_newline.exit229, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 7348, ptr noundef nonnull @__PRETTY_FUNCTION__.next_newline) #26
  unreachable

next_newline.exit229:                             ; preds = %bb.ap
  %i.ex = tail call ptr @memchr(ptr noundef readonly %4, i32 noundef 10, i64 noundef %i.ev) #29 ; 2 uses
  %.not220274 = icmp eq ptr %i.ex, null
  br i1 %.not220274, label %._crit_edge277, label %.lr.ph276

.lr.ph276:                                        ; preds = %next_newline.exit229, %.loopexit
  %.0189275 = phi ptr [ %i.ff, %.loopexit ], [ %i.ex, %next_newline.exit229 ] ; 3 uses
  %i.ey = tail call zeroext i1 @pm_newline_list_append(ptr noundef %i.j, ptr noundef nonnull %.0189275) #27 ; 0 uses
  %i.ez = getelementptr i8, ptr %.0189275, i64 1  ; 12 uses
  %i.fa = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !400 ; 2 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 2 uses
  %i.fe = icmp sgt i64 %i.fd, -1
  br i1 %i.fe, label %next_newline.exit230, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph276
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 7348, ptr noundef nonnull @__PRETTY_FUNCTION__.next_newline) #26
  unreachable

next_newline.exit230:                             ; preds = %.lr.ph276
  %i.ff = tail call ptr @memchr(ptr noundef readonly %i.ez, i32 noundef 10, i64 noundef %i.fd) #29 ; 4 uses
  %.not221 = icmp eq ptr %i.ff, null              ; 3 uses
  %spec.select259 = select i1 %.not221, ptr %i.fa, ptr %i.ff
  %i.fg = ptrtoint ptr %spec.select259 to i64     ; 2 uses
  %i.fh = sub i64 %i.fg, %i.fc                    ; 3 uses
  %i.fi = icmp ugt i64 %i.fh, 2
  br i1 %i.fi, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %next_newline.exit230
  %i.fj = load i8, ptr %i.ez, align 1, !tbaa !394
  %i.fk = icmp eq i8 %i.fj, 35
  br i1 %i.fk, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %bb.as
  %i.fl = getelementptr i8, ptr %.0189275, i64 2
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !394
  %i.fn = icmp eq i8 %i.fm, 33
  br i1 %i.fn, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %bb.at
  %i.fo = getelementptr i8, ptr %i.ez, i64 %i.fh  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 -4     ; 2 uses
  %.not16.i231 = icmp ugt ptr %i.ez, %i.fp
  br i1 %.not16.i231, label %.loopexit, label %.lr.ph.i232

.lr.ph.i232:                                      ; preds = %bb.au, %bb.aw
  %.01517.i233 = phi ptr [ %i.fw, %bb.aw ], [ %i.ez, %bb.au ] ; 5 uses
  %i.fq = load i8, ptr %.01517.i233, align 1, !tbaa !394
  %i.fr = icmp eq i8 %i.fq, 114
  br i1 %i.fr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i232
  %i.fs = load i32, ptr %.01517.i233, align 1
  %i.ft = icmp ne i32 %i.fs, 2036495730
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %pm_strnstr.exit237, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i232
  %i.fw = getelementptr i8, ptr %.01517.i233, i64 1 ; 2 uses
  %.not.i234 = icmp ugt ptr %i.fw, %i.fp
  br i1 %.not.i234, label %.loopexit, label %.lr.ph.i232, !llvm.loop !0

pm_strnstr.exit237:                               ; preds = %bb.av
  br i1 %.not221, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %pm_strnstr.exit237
  %i.fx = add i64 %i.fh, 1                        ; 2 uses
  %i.fy = icmp ugt i64 %i.fx, 2
  br i1 %i.fy, label %bb.ay, label %pm_parser_warn_shebang_carriage_return.exit238

bb.ay:                                            ; preds = %bb.ax
  %i.fz = getelementptr i8, ptr %i.ez, i64 %i.fx  ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -2
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !394
  %i.gc = icmp eq i8 %i.gb, 13
  br i1 %i.gc, label %bb.az, label %pm_parser_warn_shebang_carriage_return.exit238

bb.az:                                            ; preds = %bb.ay
  %i.gd = load i8, ptr %i.fo, align 1, !tbaa !394
  %i.ge = icmp eq i8 %i.gd, 10
  br i1 %i.ge, label %bb.ba, label %pm_parser_warn_shebang_carriage_return.exit238

bb.ba:                                            ; preds = %bb.az
  %i.gf = getelementptr i8, ptr %0, i64 448
  %i.gg = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gf, ptr noundef nonnull %i.ez, ptr noundef %i.fz, i32 noundef 321) #27 ; 0 uses
  br label %pm_parser_warn_shebang_carriage_return.exit238

pm_parser_warn_shebang_carriage_return.exit238:   ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba
  %i.gh = getelementptr i8, ptr %i.ff, i64 1
  store ptr %i.gh, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !399
  br label %bb.bb

bb.bb:                                            ; preds = %pm_parser_warn_shebang_carriage_return.exit238, %pm_strnstr.exit237
  br i1 %.not213, label %.thread254, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gi = load ptr, ptr %3, align 8, !tbaa !401
  %.not223 = icmp eq ptr %i.gi, null
  br i1 %.not223, label %.thread254, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gj = ptrtoint ptr %.01517.i233 to i64
  %i.gk = sub i64 %i.fg, %i.gj
  tail call fastcc void @pm_parser_init_shebang(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.01517.i233, i64 noundef %i.gk)
  br label %.thread254

.loopexit:                                        ; preds = %bb.aw, %bb.au, %next_newline.exit230, %bb.as, %bb.at
  br i1 %.not221, label %._crit_edge277.loopexit, label %.lr.ph276

.thread254:                                       ; preds = %bb.bc, %bb.bd, %bb.bb
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !31
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  store ptr %i.ez, ptr %.sroa.978.0..sroa_idx, align 8, !tbaa !347
  store ptr %i.ez, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !347
  store i32 1, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !31
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 4
  store ptr %i.ez, ptr %.sroa.1279.0..sroa_idx, align 8, !tbaa !347
  store ptr %i.ez, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !347
  br label %.thread

._crit_edge277.loopexit:                          ; preds = %.loopexit
  %.pre293 = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !397
  br label %._crit_edge277

._crit_edge277:                                   ; preds = %._crit_edge277.loopexit, %next_newline.exit229
  %i.gl = phi ptr [ %.pre293, %._crit_edge277.loopexit ], [ %4, %next_newline.exit229 ] ; 2 uses
  %i.gm = getelementptr i8, ptr %0, i64 472
  %i.gn = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gm, ptr noundef %i.gl, ptr noundef %i.gl, i32 noundef 260) #27 ; 0 uses
  tail call void @pm_newline_list_clear(ptr noundef %i.j) #27
  br label %.thread

.thread:                                          ; preds = %bb.af, %pm_parser_warn_shebang_carriage_return.exit.thread, %bb.ak, %bb.al, %pm_parser_warn_shebang_carriage_return.exit, %.thread254, %._crit_edge277, %bb.ao
  %i.go = load ptr, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !399 ; 2 uses
  %i.gp = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !400
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = tail call i64 @pm_strspn_inline_whitespace(ptr noundef %i.go, i64 noundef %i.gs) #27
  %i.gu = load ptr, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !399
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gt
  store ptr %i.gv, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !399
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare zeroext i1 @pm_constant_pool_init(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @pm_newline_list_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @pm_string_length(ptr noundef) local_unnamed_addr #5

declare ptr @pm_string_source(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @parser_lex_magic_comment_encoding_value(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !guid !648 {
bb.a:
  %i.a = tail call ptr @pm_encoding_find(ptr noundef %1, ptr noundef %2) #27 ; 4 uses
  %.not = icmp ne ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !371
  %.not15 = icmp eq ptr %i.c, %i.a
  br i1 %.not15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.b, align 8, !tbaa !371
  %i.d = getelementptr i8, ptr %0, i64 528
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !372  ; 2 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.e(ptr noundef nonnull %0) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.f = icmp ne ptr %i.a, @pm_encodings
  %i.g = getelementptr i8, ptr %0, i64 699
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 1, !tbaa !374
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare ptr @pm_options_scope_get(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @pm_parser_scope_push(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #6 !guid !649 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #28 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 496        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !386  ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 49
  %i.g = load i8, ptr %i.f, align 1, !tbaa !392
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i8 [ %i.g, %bb.c ], [ 0, %bb.b ]
  store ptr %i.d, ptr %i.b, align 8, !tbaa !393
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.sroa.3.0..sroa_idx, i8 0, i64 41, i1 false)
  store i8 %i.h, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !394
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i8 %i.a, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !350
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx, i8 0, i64 5, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !386
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare ptr @pm_options_scope_local_get(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @next_newline(ptr nofree noundef readonly %0, i64 noundef %1) unnamed_addr #8 !guid !650 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 7348, ptr noundef nonnull @__PRETTY_FUNCTION__.next_newline) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %0, i32 noundef 10, i64 noundef %1) #29
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_parser_init_shebang(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 !guid !651 {
bb.a:
  %4 = alloca %struct.pm_options, align 8         ; 7 uses
  %i.a = getelementptr i8, ptr %2, i64 %3
  %i.b = getelementptr i8, ptr %i.a, i64 -2       ; 2 uses
  %.not16.i = icmp ugt ptr %2, %i.b
  br i1 %.not16.i, label %pm_strnstr.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.01517.i = phi ptr [ %i.i, %bb.c ], [ %2, %bb.a ] ; 5 uses
  %i.c = load i8, ptr %.01517.i, align 1, !tbaa !394
  %i.d = icmp eq i8 %i.c, 32
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = load i16, ptr %.01517.i, align 1
  %i.f = icmp ne i16 %i.e, 11552
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %pm_strnstr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.i = getelementptr i8, ptr %.01517.i, i64 1   ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %i.b
  br i1 %.not.i, label %pm_strnstr.exit.thread, label %.lr.ph.i, !llvm.loop !0

pm_strnstr.exit:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !653
  %i.j = load ptr, ptr %1, align 8, !tbaa !401
  %i.k = getelementptr i8, ptr %.01517.i, i64 1
  %i.l = ptrtoint ptr %.01517.i to i64
  %i.m = ptrtoint ptr %2 to i64
  %.neg = add i64 %i.m, -1
  %i.n = add i64 %.neg, %3
  %i.o = sub i64 %i.n, %i.l
  %i.p = getelementptr i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !654
  call void %i.j(ptr noundef nonnull %4, ptr noundef %i.k, i64 noundef %i.o, ptr noundef %i.q) #27
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.s = call i64 @pm_string_length(ptr noundef nonnull %i.r) #27 ; 2 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %parser_lex_magic_comment_encoding_value.exit, label %bb.d

bb.d:                                             ; preds = %pm_strnstr.exit
  %i.t = call ptr @pm_string_source(ptr noundef nonnull %i.r) #27 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %i.v = call ptr @pm_encoding_find(ptr noundef %i.t, ptr noundef %i.u) #27 ; 4 uses
  %.not.i16.not = icmp eq ptr %i.v, null
  br i1 %.not.i16.not, label %parser_lex_magic_comment_encoding_value.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !371
  %.not15.i = icmp eq ptr %i.x, %i.v
  br i1 %.not15.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.w, align 8, !tbaa !371
  %i.y = getelementptr i8, ptr %0, i64 528
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !372  ; 2 uses
  %.not16.i17 = icmp eq ptr %i.z, null
  br i1 %.not16.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.z(ptr noundef nonnull %0) #27, !inline_history !373
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = icmp ne ptr %i.v, @pm_encodings
end_hunk_0
