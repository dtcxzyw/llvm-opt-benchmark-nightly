Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/class?download=true
inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@rb_include_module:bb.a
  unreachable

ensure_includable.exit:                           ; preds = %Check_Type.exit.i
  %i.q = inttoptr i64 %0 to ptr                   ; 14 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = and i64 %i.r, 65536
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %ensure_includable.exit
  %i.t = getelementptr i8, ptr %i.q, i64 160      ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %ensure_includable.exit
  %i.w = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.x = tail call ptr @rb_current_box() #18      ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.x, i64 128
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !75, !range !76, !noundef !77
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !19
  %i.ad = and i64 %i.ac, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !21  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.af = load i64, ptr %i.x, align 8, !tbaa !11
  %i.ag = call i32 @rb_st_lookup(ptr noundef nonnull %i.ae, i64 noundef %i.af, ptr noundef nonnull %i.d) #18
  %.not5.i.i13.i = icmp eq i32 %i.ag, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !17
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.ai, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.aj = getelementptr i8, ptr %i.q, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.aj, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.ak = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i27 = phi ptr [ %i.w, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ak, %bb.g ], [ %i.y, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.al = getelementptr i8, ptr %.0.i27, i64 96
  %i.am = load i64, ptr %i.al, align 8, !tbaa !63
  %i.an = call fastcc range(i32 -1, 2) i32 @do_include_modules_at(i64 noundef %0, i64 noundef %i.am, i64 noundef %1, i32 noundef 1, i1 noundef zeroext true)
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ap = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ap, ptr noundef nonnull @.str.21) #22
  unreachable

bb.i:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.aq = icmp eq i64 %0, 0
  %i.ar = and i64 %0, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %rbimpl_RB_TYPE_P_fastpath.exit26.thread, label %rbimpl_RB_TYPE_P_fastpath.exit26

rbimpl_RB_TYPE_P_fastpath.exit26:                 ; preds = %bb.i
  %i.au = load i64, ptr %i.q, align 8, !tbaa !19  ; 2 uses
  %i.av = and i64 %i.au, 31
  %i.aw = icmp eq i64 %i.av, 3
  br i1 %i.aw, label %bb.j, label %rbimpl_RB_TYPE_P_fastpath.exit26.thread

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit26
  %i.ax = and i64 %i.au, 65536
  %.not.i.i28 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i28, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i46, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i29

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i29:        ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.q, i64 160     ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i46, label %bb.k

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i46: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i29, %bb.j
  %i.bb = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit47

bb.k:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i29
  %i.bc = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i30 = icmp eq ptr %i.bc, null
  br i1 %.not.i30, label %.split.i41, label %bb.l

.split.i41:                                       ; preds = %bb.k
  %i.bd = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit47

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr i8, ptr %i.bc, i64 128
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !75, !range !76, !noundef !77
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.split7.i32, label %bb.o

.split7.i32:                                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.bh = load i64, ptr %i.q, align 8, !tbaa !19
  %i.bi = and i64 %i.bh, 65536
  %.not.i.i.i10.i33 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i10.i33, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i37, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i34

RCLASS_CLASSEXT_TBL.exit.i.i11.i34:               ; preds = %.split7.i32
  %i.bj = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i35 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i12.i35, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i37, label %bb.m

bb.m:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i34
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.bl = call i32 @rb_st_lookup(ptr noundef nonnull %i.bj, i64 noundef %i.bk, ptr noundef nonnull %i.c) #18
  %.not5.i.i13.i36 = icmp eq i32 %i.bl, 0
  br i1 %.not5.i.i13.i36, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i37, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !17
  %i.bn = inttoptr i64 %i.bm to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i37

RCLASS_EXT_READABLE_LOOKUP.exit17.i37:            ; preds = %bb.n, %bb.m, %RCLASS_CLASSEXT_TBL.exit.i.i11.i34, %.split7.i32
  %.0.i.i14.i38 = phi ptr [ %i.bn, %bb.n ], [ null, %bb.m ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i34 ], [ null, %.split7.i32 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not.i15.i39 = icmp eq ptr %.0.i.i14.i38, null
  %i.bo = getelementptr i8, ptr %i.q, i64 24
  %.0.i16.i40 = select i1 %.not.i15.i39, ptr %i.bo, ptr %.0.i.i14.i38
  br label %RCLASS_EXT_READABLE.exit47

bb.o:                                             ; preds = %bb.l
  %i.bp = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit47

RCLASS_EXT_READABLE.exit47:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i46, %.split.i41, %RCLASS_EXT_READABLE_LOOKUP.exit17.i37, %bb.o
  %.0.i31 = phi ptr [ %i.bb, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i46 ], [ %i.bp, %bb.o ], [ %i.bd, %.split.i41 ], [ %.0.i16.i40, %RCLASS_EXT_READABLE_LOOKUP.exit17.i37 ]
  %i.bq = getelementptr i8, ptr %.0.i31, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !36
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !44
  %.021.in94 = getelementptr i8, ptr %i.bt, i64 8
  %.02195 = load ptr, ptr %.021.in94, align 8, !tbaa !45 ; 2 uses
  %.not96 = icmp eq ptr %.02195, null
  br i1 %.not96, label %rbimpl_RB_TYPE_P_fastpath.exit26.thread, label %.lr.ph98

.lr.ph98:                                         ; preds = %RCLASS_EXT_READABLE.exit47, %bb.aa
  %.02197 = phi ptr [ %.021, %bb.aa ], [ %.02195, %RCLASS_EXT_READABLE.exit47 ] ; 3 uses
  %i.bu = load i64, ptr %.02197, align 8, !tbaa !66 ; 3 uses
  %i.bv = call i32 @rb_objspace_garbage_object_p(i64 noundef %i.bu) #18
  %.not22 = icmp eq i32 %i.bv, 0
  br i1 %.not22, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %.lr.ph98
  %.not2391 = icmp eq i64 %i.bu, 0
  br i1 %.not2391, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %RCLASS_EXT_READABLE.exit67
  %.093 = phi i64 [ %i.cz, %RCLASS_EXT_READABLE.exit67 ], [ %i.bu, %.preheader ] ; 2 uses
  %.02092 = phi i32 [ %.1, %RCLASS_EXT_READABLE.exit67 ], [ 1, %.preheader ] ; 3 uses
  %i.bw = and i64 %.093, 7
  %.not90 = icmp eq i64 %i.bw, 0
  %i.bx = inttoptr i64 %.093 to ptr               ; 9 uses
  br i1 %.not90, label %rbimpl_RB_TYPE_P_fastpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %.lr.ph
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.bz = and i64 %i.by, 31
  %i.ca = icmp eq i64 %i.bz, 28
  br i1 %i.ca, label %bb.p, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cb = getelementptr i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !67
  %i.cd = icmp eq i64 %i.cc, %1
  %spec.select = select i1 %i.cd, i32 0, i32 %.02092
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %.lr.ph, %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit
  %.1 = phi i32 [ %.02092, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %spec.select, %bb.p ], [ %.02092, %.lr.ph ] ; 2 uses
  %i.ce = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.cf = and i64 %i.ce, 65536
  %.not.i.i48 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i48, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i66, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i49

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i49:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cg = getelementptr i8, ptr %i.bx, i64 160    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i66, label %bb.q

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i66: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i49, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cj = getelementptr i8, ptr %i.bx, i64 24
  br label %RCLASS_EXT_READABLE.exit67

bb.q:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i49
  %i.ck = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i50 = icmp eq ptr %i.ck, null
  br i1 %.not.i50, label %.split.i61, label %bb.r

.split.i61:                                       ; preds = %bb.q
  %i.cl = getelementptr i8, ptr %i.bx, i64 24
  br label %RCLASS_EXT_READABLE.exit67

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr i8, ptr %i.ck, i64 128
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !75, !range !76, !noundef !77
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %.split7.i52, label %bb.u

.split7.i52:                                      ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cp = load i64, ptr %i.bx, align 8, !tbaa !19
  %i.cq = and i64 %i.cp, 65536
  %.not.i.i.i10.i53 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i10.i53, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i57, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i54

RCLASS_CLASSEXT_TBL.exit.i.i11.i54:               ; preds = %.split7.i52
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i55 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i12.i55, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i57, label %bb.s

bb.s:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i54
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !11
  %i.ct = call i32 @rb_st_lookup(ptr noundef nonnull %i.cr, i64 noundef %i.cs, ptr noundef nonnull %i.b) #18
  %.not5.i.i13.i56 = icmp eq i32 %i.ct, 0
  br i1 %.not5.i.i13.i56, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i57, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !17
  %i.cv = inttoptr i64 %i.cu to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i57

RCLASS_EXT_READABLE_LOOKUP.exit17.i57:            ; preds = %bb.t, %bb.s, %RCLASS_CLASSEXT_TBL.exit.i.i11.i54, %.split7.i52
  %.0.i.i14.i58 = phi ptr [ %i.cv, %bb.t ], [ null, %bb.s ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i54 ], [ null, %.split7.i52 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not.i15.i59 = icmp eq ptr %.0.i.i14.i58, null
  %i.cw = getelementptr i8, ptr %i.bx, i64 24
  %.0.i16.i60 = select i1 %.not.i15.i59, ptr %i.cw, ptr %.0.i.i14.i58
  br label %RCLASS_EXT_READABLE.exit67

bb.u:                                             ; preds = %bb.r
  %i.cx = getelementptr i8, ptr %i.bx, i64 24
  br label %RCLASS_EXT_READABLE.exit67

RCLASS_EXT_READABLE.exit67:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i66, %.split.i61, %RCLASS_EXT_READABLE_LOOKUP.exit17.i57, %bb.u
  %.0.i51 = phi ptr [ %i.cj, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i66 ], [ %i.cx, %bb.u ], [ %i.cl, %.split.i61 ], [ %.0.i16.i60, %RCLASS_EXT_READABLE_LOOKUP.exit17.i57 ]
  %i.cy = getelementptr i8, ptr %.0.i51, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !58 ; 2 uses
  %.not23 = icmp eq i64 %i.cz, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %RCLASS_EXT_READABLE.exit67
  %i.da = icmp eq i32 %.1, 0
  br i1 %i.da, label %bb.aa, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.db = load i64, ptr %.02197, align 8, !tbaa !66 ; 2 uses
  %i.dc = inttoptr i64 %i.db to ptr               ; 7 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !19
  %i.de = and i64 %i.dd, 65536
  %.not.i.i68 = icmp eq i64 %i.de, 0
  br i1 %.not.i.i68, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i86, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i69

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i69:        ; preds = %._crit_edge.thread
  %i.df = getelementptr i8, ptr %i.dc, i64 160    ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !21
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i86, label %bb.v

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i86: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i69, %._crit_edge.thread
  %i.di = getelementptr i8, ptr %i.dc, i64 24
  br label %RCLASS_EXT_READABLE.exit87

bb.v:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i69
  %i.dj = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i70 = icmp eq ptr %i.dj, null
  br i1 %.not.i70, label %.split.i81, label %bb.w

.split.i81:                                       ; preds = %bb.v
  %i.dk = getelementptr i8, ptr %i.dc, i64 24
  br label %RCLASS_EXT_READABLE.exit87

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr i8, ptr %i.dj, i64 128
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !75, !range !76, !noundef !77
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %.split7.i72, label %bb.z

.split7.i72:                                      ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.do = load i64, ptr %i.dc, align 8, !tbaa !19
  %i.dp = and i64 %i.do, 65536
  %.not.i.i.i10.i73 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i10.i73, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i77, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i74

RCLASS_CLASSEXT_TBL.exit.i.i11.i74:               ; preds = %.split7.i72
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i75 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i12.i75, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i77, label %bb.x

bb.x:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i74
  %i.dr = load i64, ptr %i.dj, align 8, !tbaa !11
  %i.ds = call i32 @rb_st_lookup(ptr noundef nonnull %i.dq, i64 noundef %i.dr, ptr noundef nonnull %i.a) #18
  %.not5.i.i13.i76 = icmp eq i32 %i.ds, 0
  br i1 %.not5.i.i13.i76, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i77, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dt = load i64, ptr %i.a, align 8, !tbaa !17
  %i.du = inttoptr i64 %i.dt to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i77

RCLASS_EXT_READABLE_LOOKUP.exit17.i77:            ; preds = %bb.y, %bb.x, %RCLASS_CLASSEXT_TBL.exit.i.i11.i74, %.split7.i72
  %.0.i.i14.i78 = phi ptr [ %i.du, %bb.y ], [ null, %bb.x ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i74 ], [ null, %.split7.i72 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i15.i79 = icmp eq ptr %.0.i.i14.i78, null
  %i.dv = getelementptr i8, ptr %i.dc, i64 24
  %.0.i16.i80 = select i1 %.not.i15.i79, ptr %i.dv, ptr %.0.i.i14.i78
  br label %RCLASS_EXT_READABLE.exit87

bb.z:                                             ; preds = %bb.w
  %i.dw = getelementptr i8, ptr %i.dc, i64 24
  br label %RCLASS_EXT_READABLE.exit87

RCLASS_EXT_READABLE.exit87:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i86, %.split.i81, %RCLASS_EXT_READABLE_LOOKUP.exit17.i77, %bb.z
  %.0.i71 = phi ptr [ %i.di, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i86 ], [ %i.dw, %bb.z ], [ %i.dk, %.split.i81 ], [ %.0.i16.i80, %RCLASS_EXT_READABLE_LOOKUP.exit17.i77 ]
  %i.dx = getelementptr i8, ptr %.0.i71, i64 96
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !63
  %i.dz = call fastcc range(i32 -1, 2) i32 @do_include_modules_at(i64 noundef %i.db, i64 noundef %i.dy, i64 noundef %1, i32 noundef 1, i1 noundef zeroext true) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %RCLASS_EXT_READABLE.exit87, %.lr.ph98
  %.021.in = getelementptr i8, ptr %.02197, i64 8
  %.021 = load ptr, ptr %.021.in, align 8, !tbaa !45 ; 2 uses
  %.not = icmp eq ptr %.021, null
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit26.thread, label %.lr.ph98, !llvm.loop !120

rbimpl_RB_TYPE_P_fastpath.exit26.thread:          ; preds = %bb.aa, %RCLASS_EXT_READABLE.exit47, %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit26
  ret void
}

declare i32 @rb_objspace_garbage_object_p(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_prepend_module(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  tail call void @rb_class_modify_check(i64 noundef %0) #18
  %i.h = icmp eq i64 %1, 0
  %i.i = and i64 %1, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %.split16.i.i, !prof !92

.split16.i.i:                                     ; preds = %bb.a
  %i.l = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 3
  br i1 %i.o, label %Check_Type.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, !prof !93

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %.split16.i.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 3) #19
  unreachable

Check_Type.exit.i:                                ; preds = %.split16.i.i
  %i.p = or i64 %i.m, 32768
  store i64 %i.p, ptr %i.l, align 8, !tbaa !19
  %i.q = tail call i64 @rb_refinement_module_get_refined_class(i64 noundef %1) #18
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %ensure_includable.exit, label %bb.b

bb.b:                                             ; preds = %Check_Type.exit.i
  %i.s = load i64, ptr @rb_eArgError, align 8, !tbaa !17
end_hunk_0
