Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iseq?download=true
inline.NumInlined: 615
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@rb_iseq_disasm_recursive:bb.a
  %i.h = tail call i64 @rb_ary_hidden_new(i64 noundef 3) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 4, ptr %i.a, align 8, !tbaa !364
  %i.i = getelementptr i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !433  ; 2 uses
  %i.k = inttoptr i64 %1 to ptr                   ; 6 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !579  ; 9 uses
  %i.n = load i64, ptr %i.k, align 8, !tbaa !425
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.k, i64 24       ; 8 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !434
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.q, %bb.b ], [ %i.p, %bb.a ] ; 4 uses
  %i.s = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %i.r, i64 noundef %i.m) #20 ; 0 uses
  %i.t = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.161, i64 noundef 11) #20 ; 0 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !372 ; 6 uses
  %i.u = getelementptr i8, ptr %.val, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !544  ; 2 uses
  %.not.i212 = icmp eq i64 %i.v, 0
  br i1 %.not.i212, label %bb.c, label %bb.d

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.w = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.184) #20
  br label %iseq_inspect.exit

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.x = getelementptr i8, ptr %.val, i64 96
  %i.y = getelementptr i8, ptr %.val, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !545  ; 4 uses
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = and i64 %i.z, 7
  %i.ac = icmp eq i64 %i.ab, 0
  %.not4.i.i = and i1 %i.aa, %i.ac
  %.pre.i.i.i = inttoptr i64 %i.z to ptr          ; 3 uses
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !425 ; 2 uses
  %i.ad = and i64 %.pre.i.i, 31
  %i.ae = icmp eq i64 %i.ad, 5
  %or.cond.i.i = select i1 %.not4.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i.i, label %rb_iseq_path.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i.i:      ; preds = %bb.d
  %i.af = and i64 %.pre.i.i, 8192
  %.not.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i.i
  %i.ag = getelementptr i8, ptr %.pre.i.i.i, i64 16
  br label %RARRAY_AREF.exit.i.i.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i.i
  %i.ah = getelementptr i8, ptr %.pre.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !434
  br label %RARRAY_AREF.exit.i.i.i

RARRAY_AREF.exit.i.i.i:                           ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ai, %bb.f ]
  %i.aj = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !364
  br label %rb_iseq_path.exit.i

rb_iseq_path.exit.i:                              ; preds = %RARRAY_AREF.exit.i.i.i, %bb.d
  %.0.i.i.i = phi i64 [ %i.aj, %RARRAY_AREF.exit.i.i.i ], [ %i.z, %bb.d ]
  %i.ak = load i32, ptr %i.x, align 8, !tbaa !558 ; 2 uses
  %i.al = getelementptr i8, ptr %.val, i64 100
  %i.am = load i32, ptr %i.al, align 4, !tbaa !559
  %i.an = getelementptr i8, ptr %.val, i64 104
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !560
  %i.ap = getelementptr i8, ptr %.val, i64 108
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !561
  %i.ar = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.185, i64 noundef %i.v, i64 noundef %.0.i.i.i, i32 noundef %i.ak, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq) #20
  br label %iseq_inspect.exit

iseq_inspect.exit:                                ; preds = %bb.c, %rb_iseq_path.exit.i
  %.0.i = phi i64 [ %i.ar, %rb_iseq_path.exit.i ], [ %i.w, %bb.c ]
  %i.as = tail call i64 @rb_str_append(i64 noundef %i.g, i64 noundef %.0.i) #20 ; 0 uses
  %i.at = inttoptr i64 %i.g to ptr                ; 5 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16     ; 5 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !579
  %i.aw = sub i64 %i.av, %i.m                     ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 72
  br i1 %i.ax, label %bb.g, label %bb.i

bb.g:                                             ; preds = %iseq_inspect.exit
  %i.ay = sub i64 72, %i.aw                       ; 2 uses
  tail call void @rb_str_modify_expand(i64 noundef %i.g, i64 noundef %i.ay) #20
  %i.az = load i64, ptr %i.at, align 8, !tbaa !425
  %i.ba = and i64 %i.az, 8192
  %.not.i213 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  br i1 %.not.i213, label %RSTRING_END.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !434
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.g, %bb.h
  %i.bd = phi ptr [ %i.bc, %bb.h ], [ %i.bb, %bb.g ]
  %i.be = load i64, ptr %i.au, align 8, !tbaa !579
  %i.bf = getelementptr i8, ptr %i.bd, i64 %i.be
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bf, i8 noundef 61, i64 noundef range(i64 1, -9223372036854775735) %i.ay, i1 noundef false) #20
  br label %bb.i

bb.i:                                             ; preds = %RSTRING_END.exit, %iseq_inspect.exit
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !372
  %i.bh = getelementptr i8, ptr %i.bg, i64 268
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !758 ; 3 uses
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = and i32 %i.bi, 1
  %.not182 = icmp eq i32 %i.bj, 0
  br i1 %.not182, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.162, i64 noundef 5) #20 ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !372
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 268
  %.pre255 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !758
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = phi i32 [ %.pre255, %bb.k ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bm = and i32 %i.bl, 2
  %.not183 = icmp eq i32 %i.bm, 0
  br i1 %.not183, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.163, i64 noundef 18) #20 ; 0 uses
  %.pre256 = load ptr, ptr %i.e, align 8, !tbaa !372
  %.phi.trans.insert257 = getelementptr i8, ptr %.pre256, i64 268
  %.pre258 = load i32, ptr %.phi.trans.insert257, align 4, !tbaa !758
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bo = phi i32 [ %.pre258, %bb.m ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bp = and i32 %i.bo, 4
  %.not184 = icmp eq i32 %i.bp, 0
  br i1 %.not184, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.164, i64 noundef 13) #20 ; 0 uses
  %.pre259 = load ptr, ptr %i.e, align 8, !tbaa !372
  %.phi.trans.insert260 = getelementptr i8, ptr %.pre259, i64 268
  %.pre261 = load i32, ptr %.phi.trans.insert260, align 4, !tbaa !758
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.br = phi i32 [ %.pre261, %bb.o ], [ %i.bo, %bb.n ]
  %i.bs = and i32 %i.br, 8
  %.not185 = icmp eq i32 %i.bs, 0
  br i1 %.not185, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.165, i64 noundef 8) #20 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.i
  %i.bu = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.57, i64 noundef 1) #20 ; 0 uses
  %i.bv = getelementptr i8, ptr %i.f, i64 160     ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !431
  %.not186 = icmp eq ptr %i.bw, null
  br i1 %.not186, label %RSTRING_PTR.exit220.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %i.r, i64 noundef %i.m) #20 ; 0 uses
  %i.by = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.166, i64 noundef 15) #20 ; 0 uses
  %.pr = load ptr, ptr %i.bv, align 8, !tbaa !431
  %.not187 = icmp eq ptr %.pr, null
  br i1 %.not187, label %RSTRING_PTR.exit220.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = tail call i64 @rb_str_cat(i64 noundef %1, ptr noundef nonnull @.str.167, i64 noundef 2) #20 ; 0 uses
  %i.ca = load i64, ptr %i.k, align 8, !tbaa !425
  %i.cb = and i64 %i.ca, 8192
  %.not.i214 = icmp eq i64 %i.cb, 0
  br i1 %.not.i214, label %RSTRING_PTR.exit215, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !434
  br label %RSTRING_PTR.exit215

RSTRING_PTR.exit215:                              ; preds = %bb.t, %bb.u
  %i.cd = phi ptr [ %i.cc, %bb.u ], [ %i.p, %bb.t ]
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !431 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 1, !tbaa !17
  %.not250 = icmp eq i32 %i.cf, 0
  br i1 %.not250, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %RSTRING_PTR.exit215, %RSTRING_PTR.exit218
  %indvars.iv = phi i64 [ %indvars.iv.next, %RSTRING_PTR.exit218 ], [ 0, %RSTRING_PTR.exit215 ] ; 2 uses
  %i.cg = phi ptr [ %i.dn, %RSTRING_PTR.exit218 ], [ %i.ce, %RSTRING_PTR.exit215 ]
  %.0241 = phi ptr [ %.1, %RSTRING_PTR.exit218 ], [ %i.cd, %RSTRING_PTR.exit215 ] ; 3 uses
  %.0167240 = phi ptr [ %.2169, %RSTRING_PTR.exit218 ], [ null, %RSTRING_PTR.exit215 ] ; 5 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %i.ci = getelementptr [32 x i8], ptr %i.ch, i64 %indvars.iv ; 6 uses
  %i.cj = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %.0241, i64 noundef %i.m) #20 ; 0 uses
  %i.ck = load i32, ptr %i.ci, align 8, !tbaa !580 ; 2 uses
  %switch.tableidx = add i32 %i.ck, -3            ; 3 uses
  %i.cl = icmp ult i32 %switch.tableidx, 11
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1365, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond284 = select i1 %i.cl, i1 %switch.lobit, i1 false
  br i1 %or.cond284, label %switch.lookup, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.190, i32 noundef %i.ck) #23
  unreachable

switch.lookup:                                    ; preds = %.lr.ph
  %i.cm = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_iseq_disasm_recursive, i64 %i.cm
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.cn = getelementptr i8, ptr %i.ci, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !581
  %i.cp = getelementptr i8, ptr %i.ci, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !582
  %i.cr = getelementptr i8, ptr %i.ci, i64 28
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !583
  %i.ct = getelementptr i8, ptr %i.ci, i64 24
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !584
  %i.cv = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.g, ptr noundef nonnull @.str.168, ptr noundef nonnull %switch.load, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.cu) #20 ; 0 uses
  %i.cw = getelementptr i8, ptr %i.ci, i64 8      ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !465 ; 3 uses
  %.not209 = icmp eq ptr %i.cx, null
  br i1 %.not209, label %RSTRING_PTR.exit218, label %bb.w

bb.w:                                             ; preds = %switch.lookup
  %.not210 = icmp eq ptr %.0167240, null
  br i1 %.not210, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = tail call i32 @rb_st_lookup(ptr noundef nonnull %.0167240, i64 noundef %i.cy, ptr noundef null) #20
  %.not211 = icmp eq i32 %i.cz, 0
  br i1 %.not211, label %bb.y, label %RSTRING_PTR.exit218

bb.y:                                             ; preds = %bb.x
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !465
  %i.db = tail call fastcc i64 @rb_iseq_disasm_recursive(ptr noundef %i.da, i64 noundef %1)
  %i.dc = tail call i64 @rb_str_concat(i64 noundef %i.g, i64 noundef %i.db) #20 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.dd = tail call fastcc i64 @rb_iseq_disasm_recursive(ptr noundef nonnull %i.cx, i64 noundef %1)
  %i.de = tail call i64 @rb_str_concat(i64 noundef %i.g, i64 noundef %i.dd) #20 ; 0 uses
  %i.df = tail call ptr @rb_st_init_numtable() #20 ; 2 uses
  %i.dg = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef %i.df, ptr noundef nonnull @tmp_set) #20
  store i64 %i.dg, ptr %i.a, align 8, !tbaa !364
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.1168 = phi ptr [ %.0167240, %bb.y ], [ %i.df, %bb.z ] ; 3 uses
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !465
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = tail call i32 @rb_st_insert(ptr noundef %.1168, i64 noundef %i.di, i64 noundef 0) #20 ; 0 uses
  %i.dk = load i64, ptr %i.k, align 8, !tbaa !425
  %i.dl = and i64 %i.dk, 8192
  %.not.i217 = icmp eq i64 %i.dl, 0
  br i1 %.not.i217, label %RSTRING_PTR.exit218, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !434
  br label %RSTRING_PTR.exit218

RSTRING_PTR.exit218:                              ; preds = %bb.ab, %bb.aa, %bb.x, %switch.lookup
  %.2169 = phi ptr [ %.0167240, %bb.x ], [ %.0167240, %switch.lookup ], [ %.1168, %bb.aa ], [ %.1168, %bb.ab ] ; 2 uses
  %.1 = phi ptr [ %.0241, %bb.x ], [ %.0241, %switch.lookup ], [ %i.p, %bb.aa ], [ %i.dm, %bb.ab ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = load ptr, ptr %i.bv, align 8, !tbaa !431 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 1, !tbaa !17
  %i.dp = zext i32 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next, %i.dp
  br i1 %i.dq, label %.lr.ph, label %._crit_edge, !llvm.loop !753

._crit_edge:                                      ; preds = %RSTRING_PTR.exit218, %RSTRING_PTR.exit215
  %.0167.lcssa = phi ptr [ null, %RSTRING_PTR.exit215 ], [ %.2169, %RSTRING_PTR.exit218 ] ; 2 uses
  %i.dr = tail call i64 @rb_str_resize(i64 noundef %1, i64 noundef %i.m) #20 ; 0 uses
  %i.ds = load i64, ptr %i.k, align 8, !tbaa !425
  %i.dt = and i64 %i.ds, 8192
  %.not.i219 = icmp eq i64 %i.dt, 0
  br i1 %.not.i219, label %RSTRING_PTR.exit220, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.du = load ptr, ptr %i.p, align 8, !tbaa !434
  br label %RSTRING_PTR.exit220

RSTRING_PTR.exit220:                              ; preds = %bb.ac, %._crit_edge
  %.2.ph = phi ptr [ %i.p, %._crit_edge ], [ %i.du, %bb.ac ] ; 3 uses
  %.pr229 = load ptr, ptr %i.bv, align 8, !tbaa !431
  %.not188 = icmp eq ptr %.pr229, null
  br i1 %.not188, label %RSTRING_PTR.exit220.thread, label %bb.ad

bb.ad:                                            ; preds = %RSTRING_PTR.exit220
  %i.dv = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %.2.ph, i64 noundef %i.m) #20 ; 0 uses
  %i.dw = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef nonnull @.str.169, i64 noundef 74) #20 ; 0 uses
  br label %RSTRING_PTR.exit220.thread

RSTRING_PTR.exit220.thread:                       ; preds = %bb.r, %bb.s, %bb.ad, %RSTRING_PTR.exit220
  %.2234 = phi ptr [ %.2.ph, %RSTRING_PTR.exit220 ], [ %.2.ph, %bb.ad ], [ %i.r, %bb.s ], [ %i.r, %bb.r ] ; 3 uses
  %.3233 = phi ptr [ %.0167.lcssa, %RSTRING_PTR.exit220 ], [ %.0167.lcssa, %bb.ad ], [ null, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.dx = getelementptr i8, ptr %i.f, i64 144
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !439
  %.not189 = icmp eq ptr %i.dy, null
  br i1 %.not189, label %bb.bl, label %bb.ae

bb.ae:                                            ; preds = %RSTRING_PTR.exit220.thread
  %i.dz = getelementptr i8, ptr %i.f, i64 16      ; 3 uses
  %i.ea = getelementptr i8, ptr %i.f, i64 56
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !436 ; 4 uses
  %i.ec = tail call i64 @rb_str_cat(i64 noundef %i.g, ptr noundef %.2234, i64 noundef %i.m) #20 ; 0 uses
  %i.ed = getelementptr i8, ptr %i.f, i64 240     ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !469
  %i.ef = getelementptr i8, ptr %i.f, i64 24      ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !585
  %i.eh = getelementptr i8, ptr %i.f, i64 28      ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !470
  %i.ej = load i16, ptr %i.dz, align 8            ; 4 uses
  %i.ek = and i16 %i.ej, 4
  %.not190 = icmp eq i16 %i.ek, 0
  br i1 %.not190, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr i8, ptr %i.f, i64 32
  %i.em = load i32, ptr %i.el, align 8, !tbaa !586
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.en = phi i32 [ %i.em, %bb.af ], [ -1, %bb.ae ]
  %i.eo = getelementptr i8, ptr %i.f, i64 40      ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !587
  %i.eq = and i16 %i.ej, 64
  %.not191 = icmp eq i16 %i.eq, 0
  br i1 %.not191, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.er = getelementptr i8, ptr %i.f, i64 44
  %i.es = load i32, ptr %i.er, align 4, !tbaa !588
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.et = phi i32 [ %i.es, %bb.ah ], [ -1, %bb.ag ]
  %i.eu = and i16 %i.ej, 16
  %.not192 = icmp eq i16 %i.eu, 0
  br i1 %.not192, label %.thread235, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ev = load i32, ptr %i.eb, align 8, !tbaa !441
  %i.ew = getelementptr i8, ptr %i.eb, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !463
  br label %.thread235

.thread235:                                       ; preds = %bb.ai, %bb.aj
  %i.ey = phi i32 [ %i.ev, %bb.aj ], [ -1, %bb.ai ]
  %i.ez = phi i32 [ %i.ex, %bb.aj ], [ -1, %bb.ai ]
  %i.fa = and i16 %i.ej, 32
  %.not194 = icmp eq i16 %i.fa, 0
  br i1 %.not194, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread235
  %i.fb = getelementptr i8, ptr %i.eb, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !589
  br label %bb.al

bb.al:                                            ; preds = %.thread235, %bb.ak
  %i.fd = phi i32 [ %i.fc, %bb.ak ], [ -1, %.thread235 ]
  %i.fe = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.g, ptr noundef nonnull @.str.170, i32 noundef %i.ee, i32 noundef %i.eg, i32 noundef %i.ei, i32 noundef %i.en, i32 noundef %i.ep, i32 noundef %i.et, i32 noundef %i.ey, i32 noundef %i.ez, i32 noundef %i.fd) #20 ; 0 uses
  %i.ff = load i32, ptr %i.ed, align 8, !tbaa !469 ; 2 uses
  %.not195242 = icmp eq i32 %i.ff, 0
  br i1 %.not195242, label %._crit_edge246, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.al
  %i.fg = getelementptr i8, ptr %i.f, i64 48
  %i.fh = getelementptr i8, ptr %i.f, i64 32
  %i.fi = getelementptr i8, ptr %i.f, i64 36
  %i.fj = getelementptr i8, ptr %i.eb, i64 12
  %i.fk = getelementptr i8, ptr %i.f, i64 44
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph245, %bb.bi
  %.1173243 = phi i32 [ %i.ff, %.lr.ph245 ], [ %i.fm, %bb.bi ] ; 4 uses
  %i.fl = load i32, ptr %i.ed, align 8, !tbaa !469
  %i.fm = add i32 %.1173243, -1                   ; 2 uses
  %i.fn = sub i32 %i.fl, %.1173243                ; 9 uses
  %i.fo = load ptr, ptr %i.e, align 8, !tbaa !372 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 240
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !469
  %i.fr = sub i32 %i.fq, %.1173243                ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fo, i64 144
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !439
  %i.fu = sext i32 %i.fr to i64
  %i.fv = getelementptr [8 x i8], ptr %i.ft, i64 %i.fu
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !364 ; 2 uses
  %i.fx = call i64 @rb_id2str(i64 noundef %i.fw) #20 ; 3 uses
  %.not.i221 = icmp eq i64 %i.fx, 0
  br i1 %.not.i221, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fy = call i64 @rb_str_new_static(ptr noundef nonnull @.str.159, i64 noundef 1) #20
  br label %local_var_name.exit

bb.ao:                                            ; preds = %bb.am
  %i.fz = call i32 @rb_is_local_id(i64 noundef %i.fw) #26
  %.not18.i = icmp eq i32 %i.fz, 0
  br i1 %.not18.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ga = call i64 @rb_str_inspect(i64 noundef %i.fx) #20
  br label %local_var_name.exit

bb.aq:                                            ; preds = %bb.ao
  %i.gb = call i64 @rb_str_dup(i64 noundef %i.fx) #20
  br label %local_var_name.exit

local_var_name.exit:                              ; preds = %bb.an, %bb.ap, %bb.aq
  %.0.i222 = phi i64 [ %i.gb, %bb.aq ], [ %i.ga, %bb.ap ], [ %i.fy, %bb.an ] ; 2 uses
  %i.gc = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.0.i222, ptr noundef nonnull @.str.160, i32 noundef %i.fr) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 0, ptr %i.c, align 16, !tbaa !434
  %i.gd = load i16, ptr %i.dz, align 8            ; 3 uses
  %i.ge = and i16 %i.gd, 2
  %.not198 = icmp eq i16 %i.ge, 0
  %.pre263 = load i32, ptr %i.ef, align 8, !tbaa !585 ; 5 uses
  %.not199 = icmp slt i32 %i.fn, %.pre263
  %or.cond = select i1 %.not198, i1 true, i1 %.not199
  br i1 %or.cond, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %local_var_name.exit
  %i.gf = load i32, ptr %i.eh, align 4, !tbaa !470
  %i.gg = add i32 %i.gf, %.pre263
  %i.gh = icmp slt i32 %i.fn, %i.gg
  br i1 %i.gh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gi = load ptr, ptr %i.fg, align 8, !tbaa !432
  %i.gj = sub i32 %i.fn, %.pre263
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr [8 x i8], ptr %i.gi, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !364
  %i.gn = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull @.str.171, i64 noundef %i.gm) #20 ; 0 uses
  %.pre262 = load i32, ptr %i.ef, align 8, !tbaa !585
  %.pre264.pre = load i16, ptr %i.dz, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %local_var_name.exit
  %.pre264 = phi i16 [ %i.gd, %local_var_name.exit ], [ %i.gd, %bb.ar ], [ %.pre264.pre, %bb.as ] ; 7 uses
  %i.go = phi i32 [ %.pre263, %local_var_name.exit ], [ %.pre263, %bb.ar ], [ %.pre262, %bb.as ]
  %i.gp = icmp sgt i32 %i.go, %i.fn
  %i.gq = and i16 %.pre264, 128
  %.not200 = icmp eq i16 %i.gq, 0
  %i.gr = select i1 %.not200, ptr @.str.174, ptr @.str.173
  %i.gs = select i1 %i.gp, ptr %i.gr, ptr @.str.43
  %i.gt = and i16 %.pre264, 4
  %.not201 = icmp eq i16 %i.gt, 0
  br i1 %.not201, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gu = load i32, ptr %i.fh, align 8, !tbaa !586
  %i.gv = icmp eq i32 %i.gu, %i.fn
  br i1 %i.gv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gw = and i16 %.pre264, 1024
  %.not202 = icmp eq i16 %i.gw, 0
  %i.gx = select i1 %.not202, ptr @.str.176, ptr @.str.175
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.au, %bb.av
  %i.gy = phi ptr [ %i.gx, %bb.av ], [ @.str.43, %bb.au ], [ @.str.43, %bb.at ]
  %i.gz = and i16 %.pre264, 8
  %.not203 = icmp eq i16 %i.gz, 0
  br i1 %.not203, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ha = load i32, ptr %i.fi, align 4, !tbaa !590 ; 2 uses
  %.not204 = icmp sgt i32 %i.ha, %i.fn
end_hunk_0
