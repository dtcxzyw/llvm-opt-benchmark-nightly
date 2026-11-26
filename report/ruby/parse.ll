Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parse?download=true
inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@nextline:bb.a
  %i.ci = sub i64 %spec.select.i.i, %i.cg
  %xtraiter = and i64 %i.ci, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.01.i.i.i.prol = phi i64 [ %i.cl, %.lr.ph.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !1252
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %.01.i.i.i.prol
  store ptr null, ptr %i.ck, align 8, !tbaa !1255
  %i.cl = add nsw i64 %.01.i.i.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1750

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.01.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.prol ]
  %i.cm = sub i64 %i.cg, %spec.select.i.i
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %rb_parser_ary_push_script_line.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01.i.i.i = phi i64 [ %i.cz, %.lr.ph.i.i.i ], [ %.01.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.co = load ptr, ptr %i.cc, align 8, !tbaa !1252
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %.01.i.i.i
  store ptr null, ptr %i.cp, align 8, !tbaa !1255
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !1252
  %i.cr = getelementptr [8 x i8], ptr %i.cq, i64 %.01.i.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  store ptr null, ptr %i.cs, align 8, !tbaa !1255
  %i.ct = load ptr, ptr %i.cc, align 8, !tbaa !1252
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %.01.i.i.i
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  store ptr null, ptr %i.cv, align 8, !tbaa !1255
  %i.cw = load ptr, ptr %i.cc, align 8, !tbaa !1252
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %.01.i.i.i
  %i.cy = getelementptr i8, ptr %i.cx, i64 24
  store ptr null, ptr %i.cy, align 8, !tbaa !1255
  %i.cz = add nsw i64 %.01.i.i.i, 4               ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cz, %spec.select.i.i
  br i1 %exitcond.not.i.i.i.3, label %rb_parser_ary_push_script_line.exit, label %.lr.ph.i.i.i, !llvm.loop !5

rb_parser_ary_push_script_line.exit:              ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.r, %bb.s, %bb.t
  %i.da = phi i64 [ %i.bv, %bb.r ], [ %i.cg, %bb.t ], [ %i.bv, %bb.s ], [ %i.cg, %.lr.ph.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.db = getelementptr i8, ptr %i.bs, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1252
  %i.dd = add i64 %i.da, 1
  store i64 %i.dd, ptr %i.bu, align 8, !tbaa !1254
  %i.de = getelementptr [8 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.bj, ptr %i.de, align 8, !tbaa !1255
  br label %bb.u

bb.u:                                             ; preds = %rb_parser_ary_push_script_line.exit, %lex_getline.exit
  %i.df = load i32, ptr %i.c, align 8
  %i.dg = and i32 %i.df, -1025
  store i32 %i.dg, ptr %i.c, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  %.036 = phi ptr [ %i.b, %bb.a ], [ %i.r, %bb.u ] ; 3 uses
  %i.dh = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1033
  %i.dj = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1293
  tail call fastcc void @parser_add_delayed_token(ptr noundef nonnull %0, ptr noundef %i.di, ptr noundef %i.dk, i32 noundef 7680)
  %i.dl = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !1348 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.w, label %._crit_edge

._crit_edge:                                      ; preds = %bb.v
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 196
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !1032
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.dl, align 8, !tbaa !1348
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.w
  %i.do = phi i32 [ %.pre, %._crit_edge ], [ %i.dm, %bb.w ]
  %i.dp = getelementptr i8, ptr %0, i64 196
  %i.dq = add i32 %i.do, 1
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !1032
  %i.dr = getelementptr i8, ptr %.036, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1007 ; 4 uses
  %i.dt = getelementptr i8, ptr %0, i64 80
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !1161
  %i.du = getelementptr i8, ptr %0, i64 72
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !1034
  %i.dv = getelementptr i8, ptr %.036, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !1008
  %i.dx = getelementptr i8, ptr %i.ds, i64 %i.dw
  store ptr %i.dx, ptr %i.dj, align 8, !tbaa !1293
  %i.dy = getelementptr i8, ptr %0, i64 56
  store ptr %.036, ptr %i.dy, align 8, !tbaa !1162
  store ptr %i.ds, ptr %i.dh, align 8, !tbaa !1033
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.x, %lex_getline.exit.thread
  %.0 = phi i32 [ -1, %lex_getline.exit.thread ], [ 0, %bb.x ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_add_delayed_token(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 7680, 8663) %3) unnamed_addr #0 !guid !1752 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1161
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1033
  %i.h = getelementptr i8, ptr %0, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1032
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1034
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.p = sub i64 %i.o, %i.l
  %i.q = getelementptr i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1293
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.o
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.594, i32 noundef %3, i32 noundef %i.i, i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.t)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = icmp ult ptr %1, %2
  br i1 %i.u, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %0, i64 264        ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1047 ; 4 uses
  %.not51 = icmp eq ptr %i.w, null
  br i1 %.not51, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1008 ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %parser_string_char_at_end.exit, label %parser_string_char_at_end.exit.thread

parser_string_char_at_end.exit.thread:            ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %0, i64 280
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1349
  br label %bb.f

parser_string_char_at_end.exit:                   ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.w, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1007
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.y
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1000
  %i.ah = icmp eq i8 %i.ag, 10                    ; 2 uses
  %i.ai = zext i1 %i.ah to i32
  %i.aj = getelementptr i8, ptr %0, i64 280
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1349
  %i.al = add i32 %i.ak, %i.ai                    ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %parser_string_char_at_end.exit.thread, %parser_string_char_at_end.exit
  %i.am = phi i32 [ %i.ab, %parser_string_char_at_end.exit.thread ], [ %i.al, %parser_string_char_at_end.exit ]
  %i.an = getelementptr i8, ptr %0, i64 284
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1350
  %i.ap = sext i32 %i.ao to i64
  br label %bb.g

bb.g:                                             ; preds = %parser_string_char_at_end.exit, %bb.f
  %i.aq = phi i32 [ %i.am, %bb.f ], [ %i.al, %parser_string_char_at_end.exit ]
  %i.ar = phi i64 [ %i.ap, %bb.f ], [ 0, %parser_string_char_at_end.exit ]
  %i.as = getelementptr i8, ptr %0, i64 196
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1032
  %.not52 = icmp eq i32 %i.aq, %i.at
  br i1 %.not52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %0, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1034
  %i.aw = ptrtoint ptr %1 to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %.not53 = icmp eq i64 %i.ar, %i.ay
  br i1 %.not53, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call fastcc void @parser_dispatch_delayed_token(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 7624)
  %.pr.pre = load ptr, ptr %i.v, align 8, !tbaa !1047 ; 2 uses
  %.not54 = icmp eq ptr %.pr.pre, null
  br i1 %.not54, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.i
  %.pr69 = phi ptr [ %.pr.pre, %bb.i ], [ %i.w, %bb.h ] ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pr69, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !1008
  %.pre60 = ptrtoint ptr %1 to i64
  br label %bb.n

.thread:                                          ; preds = %bb.d, %bb.i
  %i.az = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 7 uses
  %i.ba = tail call noalias nonnull dereferenceable(1) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 1) #33 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !1007
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 0, ptr %i.bc, align 8, !tbaa !1008
  store i8 0, ptr %i.ba, align 1, !tbaa !1000
  store ptr %i.az, ptr %i.v, align 8, !tbaa !1047
  %i.bd = getelementptr i8, ptr %0, i64 216
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1149 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !1010
  %i.bg = icmp eq ptr %.val.i, %i.be
  br i1 %i.bg, label %rb_parser_enc_associate.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %.val9.i = load i32, ptr %i.az, align 8, !tbaa !1009
  %i.bh = icmp eq i32 %.val9.i, 1
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.az, align 8, !tbaa !1009
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1010
  br label %rb_parser_enc_associate.exit

rb_parser_enc_associate.exit:                     ; preds = %.thread, %bb.l
  %i.bi = getelementptr i8, ptr %0, i64 196
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !1032
  %i.bk = getelementptr i8, ptr %0, i64 272
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !1753
  %i.bl = getelementptr i8, ptr %0, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1034
  %i.bn = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = add i64 %i.bp, 2147483648
  %.not.i = icmp ult i64 %i.bq, 4294967296
  br i1 %.not.i, label %rb_long2int_inline.exit, label %bb.m

bb.m:                                             ; preds = %rb_parser_enc_associate.exit
  tail call void @rb_out_of_int(i64 noundef %i.bp) #32
  unreachable

rb_long2int_inline.exit:                          ; preds = %rb_parser_enc_associate.exit
  %i.br = trunc nsw i64 %i.bp to i32
  %i.bs = getelementptr i8, ptr %0, i64 276
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !1754
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %rb_long2int_inline.exit
  %.pre-phi = phi i64 [ %.pre60, %._crit_edge ], [ %i.bn, %rb_long2int_inline.exit ] ; 2 uses
  %4 = phi i64 [ %.pre, %._crit_edge ], [ 0, %rb_long2int_inline.exit ] ; 4 uses
  %i.bt = phi ptr [ %.pr69, %._crit_edge ], [ %i.az, %rb_long2int_inline.exit ] ; 3 uses
  %i.bu = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bv = sub i64 %i.bu, %.pre-phi                ; 3 uses
  store i32 0, ptr %i.bt, align 8, !tbaa !1009
  %i.bw = sub i64 9223372036854775807, %i.bv
  %i.bx = icmp sgt i64 %4, %i.bw
  br i1 %i.bx, label %bb.o, label %ruby_nonempty_memcpy.exit.i

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.747)
  br label %rb_parser_str_buf_cat.exit

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.n
  %5 = getelementptr i8, ptr %i.bt, i64 16        ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 24     ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1007 ; 4 uses
  %.not.i55 = icmp ult ptr %1, %i.bz
  %i.ca = getelementptr i8, ptr %i.bz, i64 %4
  %.not40.i = icmp ugt ptr %1, %i.ca
  %or.cond.i = or i1 %.not.i55, %.not40.i
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %.pre-phi, %i.cb
  %.0.i = select i1 %or.cond.i, i64 -1, i64 %i.cc ; 2 uses
  %i.cd = add i64 %4, %i.bv                       ; 4 uses
  %i.ce = add i64 %i.cd, 1
  %i.cf = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bz, i64 noundef %i.ce, i64 noundef 1) #38 ; 3 uses
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !1007
  store i64 %i.cd, ptr %5, align 8, !tbaa !1008
  %.not41.i = icmp eq i64 %.0.i, -1
  %i.cg = getelementptr i8, ptr %i.cf, i64 %.0.i
  %spec.select.i = select i1 %.not41.i, ptr %1, ptr %i.cg
  %i.ch = getelementptr i8, ptr %i.cf, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ch, ptr noundef nonnull readonly align 1 %spec.select.i, i64 noundef range(i64 1, 0) %i.bv, i1 noundef false) #31
  store i64 %i.cd, ptr %5, align 8, !tbaa !1008
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !1007
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.cd
  store i8 0, ptr %i.cj, align 1, !tbaa !1000
  br label %rb_parser_str_buf_cat.exit

rb_parser_str_buf_cat.exit:                       ; preds = %bb.o, %ruby_nonempty_memcpy.exit.i
  %i.ck = getelementptr i8, ptr %0, i64 196
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !1032
  %i.cm = getelementptr i8, ptr %0, i64 280
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !1349
  %i.cn = getelementptr i8, ptr %0, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1034
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.bu, %i.cp                    ; 3 uses
  %i.cr = add i64 %i.cq, 2147483648
  %.not.i56 = icmp ult i64 %i.cr, 4294967296
  br i1 %.not.i56, label %rb_long2int_inline.exit57, label %bb.p

bb.p:                                             ; preds = %rb_parser_str_buf_cat.exit
  tail call void @rb_out_of_int(i64 noundef %i.cq) #32
  unreachable

rb_long2int_inline.exit57:                        ; preds = %rb_parser_str_buf_cat.exit
  %i.cs = trunc nsw i64 %i.cq to i32
  %i.ct = getelementptr i8, ptr %0, i64 284
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !1350
  %i.cu = getelementptr i8, ptr %0, i64 96
  store ptr %2, ptr %i.cu, align 8, !tbaa !1033
  br label %bb.q

bb.q:                                             ; preds = %rb_long2int_inline.exit57, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_dispatch_delayed_token(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 7624, 11229) %2) unnamed_addr #0 !guid !1755 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1161
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1033
  %i.h = getelementptr i8, ptr %0, i64 196
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1032
  %i.j = getelementptr i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1034
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.p = sub i64 %i.o, %i.l
  %i.q = getelementptr i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1293
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.o
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.595, i32 noundef %2, i32 noundef %i.i, i64 noundef %i.n, i64 noundef %i.p, i64 noundef %i.t)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = getelementptr i8, ptr %0, i64 264        ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1047 ; 4 uses
  %.not22 = icmp eq ptr %i.v, null
  br i1 %.not22, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1046
  %i.y = getelementptr i8, ptr %0, i64 272
  %i.z = load <4 x i32>, ptr %i.y, align 8, !tbaa !26
  store <4 x i32> %i.z, ptr %i.x, align 4, !tbaa !26
  %i.aa = load i32, ptr %i.a, align 8
  %i.ab = and i32 %i.aa, 65536
  %.not23 = icmp eq i32 %i.ab, 0
  br i1 %.not23, label %rb_parser_string_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @parser_append_tokens(ptr noundef nonnull %0, ptr noundef nonnull %i.v, i32 noundef %1, i32 noundef %2)
  br label %bb.f

rb_parser_string_free.exit:                       ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %i.v, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1007
  tail call void @ruby_xfree(ptr noundef %i.ad) #31
  tail call void @ruby_xfree(ptr noundef nonnull %i.v) #31
  br label %bb.f

bb.f:                                             ; preds = %rb_parser_string_free.exit, %bb.e
  store ptr null, ptr %i.u, align 8, !tbaa !1047
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_append_tokens(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 7624, 11231) %3) unnamed_addr #0 !guid !1760 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 9 uses
  %i.b = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 9 uses
  %i.c = getelementptr i8, ptr %0, i64 392        ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1337
  store i32 %i.d, ptr %i.b, align 8, !tbaa !1761
  switch i32 %2, label %bb.ez [
    i32 32, label %parser_token2char.exit
    i32 33, label %bb.b
    i32 37, label %bb.c
    i32 38, label %bb.d
    i32 42, label %bb.e
    i32 43, label %bb.f
    i32 45, label %bb.g
    i32 47, label %bb.h
    i32 60, label %bb.i
    i32 61, label %bb.j
    i32 62, label %bb.k
    i32 63, label %bb.l
    i32 94, label %bb.m
    i32 124, label %bb.n
    i32 126, label %bb.o
    i32 58, label %bb.p
    i32 44, label %bb.q
    i32 46, label %bb.r
    i32 59, label %bb.s
    i32 96, label %bb.t
    i32 10, label %bb.u
    i32 123, label %bb.v
    i32 125, label %bb.w
    i32 91, label %bb.x
    i32 93, label %bb.y
    i32 40, label %bb.z
    i32 41, label %bb.aa
    i32 92, label %bb.ab
    i32 258, label %bb.ac
    i32 259, label %bb.ad
    i32 260, label %bb.ae
    i32 261, label %bb.af
    i32 262, label %bb.ag
    i32 263, label %bb.ah
    i32 264, label %bb.ai
    i32 265, label %bb.aj
    i32 266, label %bb.ak
    i32 267, label %bb.al
    i32 268, label %bb.am
    i32 269, label %bb.an
    i32 270, label %bb.ao
    i32 271, label %bb.ap
    i32 272, label %bb.aq
    i32 273, label %bb.ar
    i32 274, label %bb.as
    i32 275, label %bb.at
    i32 276, label %bb.au
    i32 277, label %bb.av
    i32 278, label %bb.aw
    i32 279, label %bb.ax
    i32 280, label %bb.ay
    i32 281, label %bb.az
    i32 282, label %bb.ba
    i32 283, label %bb.bb
    i32 284, label %bb.bc
    i32 285, label %bb.bd
    i32 286, label %bb.be
    i32 287, label %bb.bf
    i32 288, label %bb.bg
    i32 289, label %bb.bh
    i32 290, label %bb.bi
    i32 291, label %bb.bj
    i32 292, label %bb.bk
    i32 293, label %bb.bl
    i32 294, label %bb.bm
    i32 295, label %bb.bn
    i32 296, label %bb.bo
    i32 297, label %bb.bp
    i32 298, label %bb.bq
    i32 299, label %bb.br
    i32 300, label %bb.bs
    i32 301, label %bb.bt
    i32 302, label %bb.bu
    i32 303, label %bb.bv
    i32 304, label %bb.bw
    i32 305, label %bb.bx
    i32 306, label %bb.by
    i32 307, label %bb.bz
    i32 308, label %bb.ca
    i32 309, label %bb.cb
    i32 310, label %bb.cc
    i32 311, label %bb.cd
    i32 312, label %bb.ce
    i32 313, label %bb.cf
    i32 314, label %bb.cg
end_hunk_0
