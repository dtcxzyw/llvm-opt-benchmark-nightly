inline.NumInlined: 6675
inline.NumDeleted: 333
begin_hunk_0_@iseq_setup_insn:ISEQ_COMPILE_DATA.exit
  %.0 = phi i32 [ 1, %iseq_insert_nop_between_end_and_cont.exit ], [ 0, %ISEQ_COMPILE_DATA.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @iseq_setup(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #1 {
ISEQ_COMPILE_DATA.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.cdhash_set_label_struct, align 8 ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = and i64 %i.e, -5
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.a, label %iseq_set_sequence.exit.thread

bb.a:                                             ; preds = %ISEQ_COMPILE_DATA.exit
  %i.g = getelementptr i8, ptr %0, i64 16         ; 11 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 15 uses
  %i.i = getelementptr i8, ptr %1, i64 8          ; 12 uses
  %.097157.i.i = load ptr, ptr %i.i, align 8, !tbaa !35 ; 2 uses
  %.not158.i.i = icmp eq ptr %.097157.i.i, null
  br i1 %.not158.i.i, label %._crit_edge.i, label %.lr.ph.i.i

.preheader125.i.i:                                ; preds = %bb.c
  %.198163.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !35 ; 2 uses
  %.not106164.i.i = icmp eq ptr %.198163.pre.i.i, null
  br i1 %.not106164.i.i, label %._crit_edge.i, label %.lr.ph169.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.c
  %.097159.i.i = phi ptr [ %.097.i.i, %bb.c ], [ %.097157.i.i, %bb.a ] ; 3 uses
  %i.j = load i32, ptr %.097159.i.i, align 8, !tbaa !64
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr i8, ptr %.097159.i.i, i64 44 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.o = getelementptr i8, ptr %.097159.i.i, i64 8
  %.097.i.i = load ptr, ptr %i.o, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %.097.i.i, null
  br i1 %.not.i.i, label %.preheader125.i.i, label %.lr.ph.i.i, !llvm.loop !91

.lr.ph169.i.i:                                    ; preds = %.preheader125.i.i, %.loopexit.i.i
  %.198168.i.i = phi ptr [ %.198.i.i, %.loopexit.i.i ], [ %.198163.pre.i.i, %.preheader125.i.i ] ; 20 uses
  %.084167.i.i = phi i32 [ %.387.i.i, %.loopexit.i.i ], [ 0, %.preheader125.i.i ] ; 5 uses
  %.088166.i.i = phi i32 [ %.290.i.i, %.loopexit.i.i ], [ 0, %.preheader125.i.i ] ; 6 uses
  %.091165.i.i = phi i32 [ %.293.i.i, %.loopexit.i.i ], [ 0, %.preheader125.i.i ] ; 5 uses
  %i.p = load i32, ptr %.198168.i.i, align 8, !tbaa !64
  switch i32 %i.p, label %bb.q [
    i32 2, label %bb.d
    i32 1, label %bb.l
    i32 4, label %.loopexit.i.i
    i32 3, label %bb.n
  ]

bb.d:                                             ; preds = %.lr.ph169.i.i
  %i.q = getelementptr i8, ptr %.198168.i.i, i64 24 ; 2 uses
  %.198.val.i.i = load i32, ptr %i.q, align 8, !tbaa !65
  %i.r = getelementptr i8, ptr %.198168.i.i, i64 40 ; 2 uses
  %.198.val119.i.i = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.s = tail call fastcc i32 @calc_sp_depth(i32 noundef %.088166.i.i, i32 %.198.val.i.i, ptr %.198.val119.i.i) ; 5 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val116.i.i.a = load ptr, ptr %i.i, align 8, !tbaa !63
  tail call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val116.i.i.a, ptr noundef %.198168.i.i)
  %i.u = getelementptr i8, ptr %.198168.i.i, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !92
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.v, ptr noundef nonnull @.str.40, i32 noundef %i.s)
  br label %iseq_set_sequence.exit.thread

bb.f:                                             ; preds = %bb.d
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %.084167.i.i)
  %i.w = getelementptr i8, ptr %.198168.i.i, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !92
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.z = load i32, ptr %i.q, align 8, !tbaa !65
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !82
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.ad
  %i.af = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.aa
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !20
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr i8, ptr %.198168.i.i, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !80
  %i.ak = add nsw i32 %i.ah, -1                   ; 2 uses
  %.not109.i.i = icmp eq i32 %i.aj, %i.ak
  br i1 %.not109.i.i, label %.preheader.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %.198168.i.i, i64 48
  %i.am = getelementptr i8, ptr %.198168.i.i, i64 28
  %.val115.i.i.a = load ptr, ptr %i.i, align 8, !tbaa !63
  tail call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val115.i.i.a, ptr noundef %.198168.i.i)
  %i.an = load i32, ptr %i.al, align 8, !tbaa !92
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !80
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.an, ptr noundef nonnull @.str.41, i32 noundef %i.ao, i32 noundef %i.ak)
  br label %iseq_set_sequence.exit.thread

.preheader.i.i:                                   ; preds = %bb.f, %.thread.i.i
  %.099.i.i = phi i32 [ %i.bf, %.thread.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.ap = sext i32 %.099.i.i to i64               ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  switch i8 %i.ar, label %.thread.i.i [
    i8 0, label %.loopexit.i.i
    i8 79, label %bb.h
  ]

bb.h:                                             ; preds = %.preheader.i.i
  %i.as = getelementptr [8 x i8], ptr %i.y, i64 %i.ap
  %i.at = load i64, ptr %i.as, align 8, !tbaa !36
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 44
  %i.aw = load i8, ptr %i.av, align 4
  %i.ax = and i8 %i.aw, 1
  %.not111.not.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not111.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr i8, ptr %i.au, i64 36     ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !93
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.s, ptr %i.ay, align 4, !tbaa !93
  br label %.thread.i.i

bb.k:                                             ; preds = %bb.h
  %i.bb = getelementptr i8, ptr %.198168.i.i, i64 48
  %.val114.i.i = load ptr, ptr %i.i, align 8, !tbaa !63
  tail call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val114.i.i, ptr noundef %.198168.i.i)
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !92
  %i.bd = getelementptr i8, ptr %i.au, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !95
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.bc, ptr noundef nonnull @.str.42, i32 noundef %i.be)
  br label %iseq_set_sequence.exit.thread

.thread.i.i:                                      ; preds = %bb.j, %bb.i, %.preheader.i.i
  %i.bf = add i32 %.099.i.i, 1
  br label %.preheader.i.i, !llvm.loop !96

bb.l:                                             ; preds = %.lr.ph169.i.i
  %i.bg = getelementptr i8, ptr %.198168.i.i, i64 36 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !93 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %bb.l
  store i32 %.088166.i.i, ptr %i.bg, align 4, !tbaa !93
  br label %.loopexit.i.i

bb.n:                                             ; preds = %.lr.ph169.i.i
  %i.bj = getelementptr i8, ptr %.198168.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97 ; 2 uses
  %.not107.i.i = icmp eq ptr %i.bk, null
  br i1 %.not107.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr i8, ptr %i.bk, i64 36
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !93
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bn = phi i32 [ %i.bm, %bb.o ], [ 0, %bb.n ]  ; 3 uses
  %i.bo = getelementptr i8, ptr %.198168.i.i, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !99
  %.not108.i.i = icmp ne i32 %i.bp, -1
  %i.bq = sub i32 %.088166.i.i, %i.bn
  %i.br = icmp slt i32 %i.bq, 0
  %or.cond.i.i = select i1 %.not108.i.i, i1 %i.br, i1 false
  br i1 %or.cond.i.i, label %.critedge.i.i, label %.loopexit.i.i

.critedge.i.i:                                    ; preds = %bb.p
  %i.bs = getelementptr i8, ptr %.198168.i.i, i64 32
  %.val113.i.i = load ptr, ptr %i.i, align 8, !tbaa !63
  tail call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val113.i.i, ptr noundef %.198168.i.i)
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !99
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.bt, ptr noundef nonnull @.str.43, i32 noundef %.088166.i.i, i32 noundef %i.bn)
  br label %iseq_set_sequence.exit.thread

bb.q:                                             ; preds = %.lr.ph169.i.i
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !63
  tail call fastcc void @dump_disasm_list_with_cursor(ptr noundef %.val.i.i, ptr noundef %.198168.i.i)
  %i.bu = load i32, ptr %.198168.i.i, align 8, !tbaa !64
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %.091165.i.i, ptr noundef nonnull @.str.44, i32 noundef %i.bu)
  br label %iseq_set_sequence.exit.thread

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.p, %bb.m, %bb.l, %.lr.ph169.i.i
  %.293.i.i = phi i32 [ %.091165.i.i, %bb.p ], [ %.091165.i.i, %bb.m ], [ %.091165.i.i, %.lr.ph169.i.i ], [ %.091165.i.i, %bb.l ], [ %i.x, %.preheader.i.i ]
  %.290.i.i = phi i32 [ %i.bn, %bb.p ], [ %.088166.i.i, %bb.m ], [ %.088166.i.i, %.lr.ph169.i.i ], [ %i.bh, %bb.l ], [ %i.s, %.preheader.i.i ]
  %.387.i.i = phi i32 [ %.084167.i.i, %bb.p ], [ %.084167.i.i, %bb.m ], [ %.084167.i.i, %.lr.ph169.i.i ], [ %.084167.i.i, %bb.l ], [ %spec.select.i.i, %.preheader.i.i ] ; 3 uses
  %i.bv = getelementptr i8, ptr %.198168.i.i, i64 8
  %.198.i.i = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 2 uses
  %.not106.i.i = icmp eq ptr %.198.i.i, null
  br i1 %.not106.i.i, label %fix_sp_depth.exit.thread488.i, label %.lr.ph169.i.i, !llvm.loop !100

fix_sp_depth.exit.thread488.i:                    ; preds = %.loopexit.i.i
  %.0329575.pre.i = load ptr, ptr %i.i, align 8, !tbaa !35 ; 2 uses
  %.not576.i = icmp eq ptr %.0329575.pre.i, null
  br i1 %.not576.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %fix_sp_depth.exit.thread488.i, %bb.au
  %.0329582.i = phi ptr [ %.0329.i, %bb.au ], [ %.0329575.pre.i, %fix_sp_depth.exit.thread488.i ] ; 12 uses
  %.0331581.i = phi i32 [ %.1332.i, %bb.au ], [ 0, %fix_sp_depth.exit.thread488.i ] ; 7 uses
  %.0333580.i = phi i64 [ %.2335.i, %bb.au ], [ 0, %fix_sp_depth.exit.thread488.i ] ; 7 uses
  %.0336579.i = phi i32 [ %.3339.i, %bb.au ], [ 0, %fix_sp_depth.exit.thread488.i ] ; 8 uses
  %.0340578.i = phi i32 [ %.4344.i, %bb.au ], [ 0, %fix_sp_depth.exit.thread488.i ] ; 10 uses
  %.0357577.i = phi i32 [ %.2359.i, %bb.au ], [ 0, %fix_sp_depth.exit.thread488.i ] ; 6 uses
  %i.bw = load i32, ptr %.0329582.i, align 8, !tbaa !64
  switch i32 %i.bw, label %bb.au [
    i32 2, label %bb.r
    i32 1, label %bb.am
    i32 4, label %bb.an
    i32 3, label %bb.ap
  ]

bb.r:                                             ; preds = %.lr.ph.i
  %i.bx = getelementptr i8, ptr %.0329582.i, i64 24 ; 2 uses
  %.0329.val.i = load i32, ptr %i.bx, align 8, !tbaa !65
  %i.by = getelementptr i8, ptr %.0329582.i, i64 40
  %.0329.val425.i = load ptr, ptr %i.by, align 8, !tbaa !69
  %i.bz = tail call fastcc i32 @calc_sp_depth(i32 noundef %.0357577.i, i32 %.0329.val.i, ptr %.0329.val425.i)
  %i.ca = add i32 %.0336579.i, 1
  %i.cb = getelementptr i8, ptr %.0329582.i, i64 48
  %i.cc = getelementptr i8, ptr %.0329582.i, i64 56 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !81
  %i.ce = or i32 %i.cd, %.0331581.i               ; 3 uses
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !81
  %i.cf = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.cg = getelementptr i8, ptr %i.cf, i64 216
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !101 ; 2 uses
  %.not410.i = icmp eq i64 %i.ch, 0
  br i1 %.not410.i, label %bb.al, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !75
  %i.ck = and i64 %i.cj, 8192
  %.not.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr i8, ptr %i.ci, i64 16
  br label %RARRAY_AREF.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cm = getelementptr i8, ptr %i.ci, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !20
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.u, %bb.t
  %.0.i.i.i = phi ptr [ %i.cl, %bb.t ], [ %i.cn, %bb.u ]
  %i.co = load i64, ptr %.0.i.i.i, align 8, !tbaa !36
  %.not411.i = icmp eq i64 %i.co, 0
  %i.cp = and i32 %i.ce, 65536
  %.not412.i = icmp eq i32 %i.cp, 0
  %or.cond.i = select i1 %.not411.i, i1 true, i1 %.not412.i
  br i1 %or.cond.i, label %bb.ad, label %bb.v

bb.v:                                             ; preds = %RARRAY_AREF.exit.i
  %i.cq = tail call i32 @rb_get_coverage_mode() #37
  %i.cr = and i32 %i.cq, 8
  %.not413.i = icmp eq i32 %i.cr, 0
  br i1 %.not413.i, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.cs = load i32, ptr %i.cb, align 8, !tbaa !92
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, -1
  br i1 %i.cu, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.cv = zext nneg i32 %i.ct to i64              ; 2 uses
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.cx = getelementptr i8, ptr %i.cw, i64 216
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !101
  %i.cz = inttoptr i64 %i.cy to ptr               ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !75
  %i.db = and i64 %i.da, 8192
  %.not.i.i429.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i429.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr i8, ptr %i.cz, i64 16
  br label %RARRAY_AREF.exit431.i

bb.z:                                             ; preds = %bb.x
  %i.dd = getelementptr i8, ptr %i.cz, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20
  br label %RARRAY_AREF.exit431.i

RARRAY_AREF.exit431.i:                            ; preds = %bb.z, %bb.y
  %.0.i.i430.i = phi ptr [ %i.dc, %bb.y ], [ %i.de, %bb.z ]
  %i.df = load i64, ptr %.0.i.i430.i, align 8, !tbaa !36 ; 3 uses
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !75 ; 2 uses
  %i.di = and i64 %i.dh, 8192
  %.not.i432.i = icmp eq i64 %i.di, 0
  br i1 %.not.i432.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %RARRAY_AREF.exit431.i
  %i.dj = lshr i64 %i.dh, 15
  %i.dk = and i64 %i.dj, 127
  br label %rb_array_len.exit.i

bb.ab:                                            ; preds = %RARRAY_AREF.exit431.i
  %i.dl = getelementptr i8, ptr %i.dg, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !20
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ab, %bb.aa
  %.0.i.i = phi i64 [ %i.dk, %bb.aa ], [ %i.dm, %bb.ab ]
  %i.dn = icmp sgt i64 %.0.i.i, %i.cv
  br i1 %i.dn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %rb_array_len.exit.i
  %i.do = tail call ptr @rb_ary_ptr_use_start(i64 noundef %i.df) #37
  %i.dp = getelementptr [8 x i8], ptr %i.do, i64 %i.cv
  store i64 1, ptr %i.dp, align 8, !tbaa !36
  tail call void @rb_ary_ptr_use_end(i64 noundef %i.df) #37
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %rb_array_len.exit.i, %bb.w, %bb.v, %RARRAY_AREF.exit.i
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 216
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !101
  %i.dt = inttoptr i64 %i.ds to ptr               ; 3 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !75
  %i.dv = and i64 %i.du, 8192
  %.not.i.i433.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i433.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr i8, ptr %i.dt, i64 16
  br label %RARRAY_AREF.exit435.i

bb.af:                                            ; preds = %bb.ad
  %i.dx = getelementptr i8, ptr %i.dt, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !20
  br label %RARRAY_AREF.exit435.i

RARRAY_AREF.exit435.i:                            ; preds = %bb.af, %bb.ae
  %.0.i.i434.i = phi ptr [ %i.dw, %bb.ae ], [ %i.dy, %bb.af ]
  %i.dz = getelementptr i8, ptr %.0.i.i434.i, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  %.not414.i = icmp eq i64 %i.ea, 0
  %i.eb = and i32 %i.ce, 131072
  %.not415.i = icmp eq i32 %i.eb, 0
  %or.cond417.i = select i1 %.not414.i, i1 true, i1 %.not415.i
  br i1 %or.cond417.i, label %bb.al, label %.preheader.i

.preheader.i:                                     ; preds = %RARRAY_AREF.exit435.i
  %i.ec = sext i32 %.0340578.i to i64             ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %.preheader.i
  %i.ed = phi ptr [ %i.dq, %.preheader.i ], [ %.pre.i, %bb.aj ]
  %i.ee = getelementptr i8, ptr %i.ed, i64 224
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !102 ; 4 uses
  %i.eg = inttoptr i64 %i.ef to ptr               ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !75 ; 2 uses
  %i.ei = and i64 %i.eh, 8192
  %.not.i436.i = icmp eq i64 %i.ei, 0
  br i1 %.not.i436.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = lshr i64 %i.eh, 15
  %i.ek = and i64 %i.ej, 127
  br label %rb_array_len.exit438.i

bb.ai:                                            ; preds = %bb.ag
  %i.el = getelementptr i8, ptr %i.eg, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !20
  br label %rb_array_len.exit438.i

rb_array_len.exit438.i:                           ; preds = %bb.ai, %bb.ah
  %.0.i437.i = phi i64 [ %i.ek, %bb.ah ], [ %i.em, %bb.ai ]
  %.not416.i = icmp sgt i64 %.0.i437.i, %i.ec
  br i1 %.not416.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %rb_array_len.exit438.i
  %i.en = tail call i64 @rb_ary_push(i64 noundef %i.ef, i64 noundef 4) #37 ; 0 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !46
  br label %bb.ag, !llvm.loop !103

bb.ak:                                            ; preds = %rb_array_len.exit438.i
  %i.eo = shl i64 %.0333580.i, 1
  %i.ep = or disjoint i64 %i.eo, 1
  %i.eq = tail call ptr @rb_ary_ptr_use_start(i64 noundef %i.ef) #37
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %i.ec
  store i64 %i.ep, ptr %i.er, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@iseq_setup:ISEQ_COMPILE_DATA.exit
  %i.wi = getelementptr i8, ptr %i.wh, i64 28
  %.val.i28.3 = load i32, ptr %i.wi, align 4, !tbaa !104
  %i.wj = sext i32 %.val.i28.3 to i64
  store i64 %i.wj, ptr %i.wf, align 8, !tbaa !36
  %indvars.iv.next.i29.3 = add nuw nsw i64 %indvars.iv.i27, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %iseq_set_optargs_table.exit.loopexit.unr-lcssa, label %.lr.ph.i26, !llvm.loop !164

iseq_set_optargs_table.exit.loopexit.unr-lcssa:   ; preds = %.lr.ph.i26
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %iseq_set_optargs_table.exit, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %iseq_set_optargs_table.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i27.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i29.3, %iseq_set_optargs_table.exit.loopexit.unr-lcssa ]
  %lcmp.mod292 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod292)
  br label %.lr.ph.i26.epil

.lr.ph.i26.epil:                                  ; preds = %.lr.ph.i26.epil, %.lr.ph.i26.epil.preheader
  %indvars.iv.i27.epil = phi i64 [ %indvars.iv.i27.epil.init, %.lr.ph.i26.epil.preheader ], [ %indvars.iv.next.i29.epil, %.lr.ph.i26.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i26.epil.preheader ], [ %epil.iter.next, %.lr.ph.i26.epil ]
  %i.wk = getelementptr [8 x i8], ptr %i.vf, i64 %indvars.iv.i27.epil ; 2 uses
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !36
  %i.wm = inttoptr i64 %i.wl to ptr
  %i.wn = getelementptr i8, ptr %i.wm, i64 28
  %.val.i28.epil = load i32, ptr %i.wn, align 4, !tbaa !104
  %i.wo = sext i32 %.val.i28.epil to i64
  store i64 %i.wo, ptr %i.wk, align 8, !tbaa !36
  %indvars.iv.next.i29.epil = add nuw nsw i64 %indvars.iv.i27.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iseq_set_optargs_table.exit, label %.lr.ph.i26.epil, !llvm.loop !165

iseq_set_optargs_table.exit:                      ; preds = %iseq_set_optargs_table.exit.loopexit.unr-lcssa, %.lr.ph.i26.epil, %iseq_set_exception_table.exit, %.preheader.i25
  %i.wp = call ptr @rb_vm_get_insns_address_table() #37
  %i.wq = load ptr, ptr %i.g, align 8, !tbaa !46  ; 3 uses
  %i.wr = getelementptr i8, ptr %i.wq, i64 8      ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !144
  %i.wt = getelementptr i8, ptr %i.wq, i64 4      ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !145 ; 2 uses
  %.not.i30 = icmp eq i32 %i.wu, 0                ; 2 uses
  br i1 %.not.i30, label %._crit_edge.i33, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %iseq_set_optargs_table.exit, %.lr.ph.i31
  %.012.i = phi i32 [ %i.xf, %.lr.ph.i31 ], [ 0, %iseq_set_optargs_table.exit ] ; 2 uses
  %i.wv = zext i32 %.012.i to i64
  %i.ww = getelementptr [8 x i8], ptr %i.ws, i64 %i.wv ; 2 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !36
  %sext.i32 = shl i64 %i.wx, 32
  %i.wy = ashr exact i64 %sext.i32, 32            ; 2 uses
  %i.wz = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.wy
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !20
  %i.xb = zext i8 %i.xa to i32
  %i.xc = getelementptr [8 x i8], ptr %i.wp, i64 %i.wy
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !167
  %i.xe = ptrtoint ptr %i.xd to i64
  store i64 %i.xe, ptr %i.ww, align 8, !tbaa !36
  %i.xf = add i32 %.012.i, %i.xb                  ; 2 uses
  %i.xg = icmp ult i32 %i.xf, %i.wu
  br i1 %i.xg, label %.lr.ph.i31, label %._crit_edge.i33, !llvm.loop !168

._crit_edge.i33:                                  ; preds = %.lr.ph.i31, %iseq_set_optargs_table.exit
  %i.xh = ptrtoint ptr %0 to i64
  %i.xi = and i64 %i.xh, 7
  %i.xj = icmp eq i64 %i.xi, 0
  br i1 %i.xj, label %bb.dk, label %rb_iseq_translate_threaded_code.exit

bb.dk:                                            ; preds = %._crit_edge.i33
  %i.xk = load i64, ptr %0, align 8, !tbaa !75
  %i.xl = or i64 %i.xk, 524288
  store i64 %i.xl, ptr %0, align 8, !tbaa !75
  br label %rb_iseq_translate_threaded_code.exit

rb_iseq_translate_threaded_code.exit:             ; preds = %._crit_edge.i33, %bb.dk
  %i.xm = load i64, ptr @rb_yjit_live_iseq_count, align 8, !tbaa !36
  %i.xn = add i64 %i.xm, 1
  store i64 %i.xn, ptr @rb_yjit_live_iseq_count, align 8, !tbaa !36
  %i.xo = load i64, ptr @rb_yjit_iseq_alloc_count, align 8, !tbaa !36
  %i.xp = add i64 %i.xo, 1
  store i64 %i.xp, ptr @rb_yjit_iseq_alloc_count, align 8, !tbaa !36
  %i.xq = getelementptr i8, ptr %i.wq, i64 160
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !152 ; 3 uses
  br i1 %.not.i30, label %set_catch_except_p.exit.i, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %rb_iseq_translate_threaded_code.exit, %bb.dn
  %.031.i = phi i32 [ %i.ym, %bb.dn ], [ 0, %rb_iseq_translate_threaded_code.exit ] ; 2 uses
  %i.xs = load ptr, ptr %i.wr, align 8, !tbaa !144
  %i.xt = zext i32 %.031.i to i64
  %i.xu = getelementptr [8 x i8], ptr %i.xs, i64 %i.xt
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !36
  %i.xw = call i32 @rb_vm_insn_decode(i64 noundef %i.xv) #37 ; 2 uses
  %i.xx = icmp eq i32 %i.xw, 71
  br i1 %i.xx, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %.lr.ph.i35
  %.pre10.i.i = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %ISEQ_COMPILE_DATA.exit7.i.i, %bb.dl
  %i.xy = phi ptr [ %.pre10.i.i, %bb.dl ], [ %i.yh, %ISEQ_COMPILE_DATA.exit7.i.i ]
  %.tr.i.i = phi ptr [ %0, %bb.dl ], [ %i.yd, %ISEQ_COMPILE_DATA.exit7.i.i ]
  %i.xz = getelementptr i8, ptr %i.xy, i64 184
  store i8 1, ptr %i.xz, align 8, !tbaa !169
  %i.ya = getelementptr i8, ptr %.tr.i.i, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !46
  %i.yc = getelementptr i8, ptr %i.yb, i64 168
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !170 ; 4 uses
  %.not.i.i40 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i40, label %set_catch_except_p.exit.i, label %bb.dm

bb.dm:                                            ; preds = %tailrecurse.i.i
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !37
  %i.yf = and i64 %i.ye, 262144
  %.not.i5.i.i = icmp eq i64 %i.yf, 0
  br i1 %.not.i5.i.i, label %set_catch_except_p.exit.i, label %ISEQ_COMPILE_DATA.exit7.i.i

ISEQ_COMPILE_DATA.exit7.i.i:                      ; preds = %bb.dm
  %i.yg = getelementptr i8, ptr %i.yd, i64 24
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !20 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.yh, null
  br i1 %.not4.i.i, label %set_catch_except_p.exit.i, label %tailrecurse.i.i

bb.dn:                                            ; preds = %.lr.ph.i35
  %i.yi = sext i32 %i.xw to i64
  %i.yj = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !20
  %i.yl = zext i8 %i.yk to i32
  %i.ym = add i32 %.031.i, %i.yl                  ; 2 uses
  %i.yn = load i32, ptr %i.wt, align 4, !tbaa !145
  %i.yo = icmp ult i32 %i.ym, %i.yn
  br i1 %i.yo, label %.lr.ph.i35, label %set_catch_except_p.exit.i, !llvm.loop !171

set_catch_except_p.exit.i:                        ; preds = %bb.dn, %ISEQ_COMPILE_DATA.exit7.i.i, %bb.dm, %tailrecurse.i.i, %rb_iseq_translate_threaded_code.exit
  %i.yp = icmp eq ptr %i.xr, null
  br i1 %i.yp, label %update_catch_except_flags.exit, label %.preheader.i36

.preheader.i36:                                   ; preds = %set_catch_except_p.exit.i
  %i.yq = load i32, ptr %i.xr, align 1, !tbaa !7  ; 2 uses
  %i.yr = zext i32 %i.yq to i64
  %.not34.i = icmp eq i32 %i.yq, 0
  br i1 %.not34.i, label %update_catch_except_flags.exit, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.preheader.i36
  %i.ys = getelementptr i8, ptr %i.xr, i64 4
  br label %bb.do

bb.do:                                            ; preds = %bb.dq, %.lr.ph33.i
  %.02132.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.yx, %bb.dq ] ; 2 uses
  %i.yt = getelementptr [32 x i8], ptr %i.ys, i64 %.02132.i
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !153
  switch i32 %i.yu, label %bb.dp [
    i32 9, label %bb.dq
    i32 13, label %bb.dq
    i32 11, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.yv = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.yw = getelementptr i8, ptr %i.yv, i64 184
  store i8 1, ptr %i.yw, align 8, !tbaa !169
  br label %update_catch_except_flags.exit

bb.dq:                                            ; preds = %bb.do, %bb.do, %bb.do
  %i.yx = add nuw nsw i64 %.02132.i, 1            ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %i.yx, %i.yr
  br i1 %exitcond.not.i37, label %update_catch_except_flags.exit, label %bb.do, !llvm.loop !172

update_catch_except_flags.exit:                   ; preds = %bb.dq, %set_catch_except_p.exit.i, %.preheader.i36, %bb.dp
  %i.yy = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.yz = getelementptr i8, ptr %i.yy, i64 184
  %i.za = load i8, ptr %i.yz, align 8, !tbaa !169, !range !147, !noundef !148
  %i.zb = trunc nuw i8 %i.za to i1
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !46  ; 3 uses
  br i1 %i.zb, label %bb.dt, label %bb.dr

bb.dr:                                            ; preds = %update_catch_except_flags.exit
  %i.zc = getelementptr i8, ptr %.pre, i64 160
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !152 ; 2 uses
  %.not16 = icmp eq ptr %i.zd, null
  br i1 %.not16, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @ruby_xfree(ptr noundef nonnull %i.zd) #37
  %i.ze = load ptr, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 160
  store ptr null, ptr %i.zf, align 8, !tbaa !152
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %update_catch_except_flags.exit
  %i.zg = phi ptr [ %i.ze, %bb.ds ], [ %.pre, %bb.dr ], [ %.pre, %update_catch_except_flags.exit ]
  %i.zh = getelementptr i8, ptr %i.zg, i64 136
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !173
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.du, label %iseq_set_sequence.exit.thread

bb.du:                                            ; preds = %bb.dt
  call void @rb_iseq_insns_info_encode_positions(ptr noundef nonnull %0) #37
  br label %iseq_set_sequence.exit.thread

iseq_set_sequence.exit.thread:                    ; preds = %bb.e, %.critedge.i.i, %bb.k, %bb.q, %bb.ct, %bb.ce, %bb.g, %bb.dt, %bb.du, %ISEQ_COMPILE_DATA.exit
  %.0 = phi i32 [ 0, %ISEQ_COMPILE_DATA.exit ], [ 1, %bb.dt ], [ 1, %bb.du ], [ 0, %bb.g ], [ 0, %bb.ce ], [ 0, %bb.ct ], [ 0, %bb.q ], [ 0, %bb.k ], [ 0, %.critedge.i.i ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 2) i64 @rb_iseq_compile_node(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 38 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr %2, ptr %i.a, align 8, !tbaa !11
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %iseq_compile_each.exit

bb.c:                                             ; preds = %bb.b
  %i.h = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.i = call i64 @rb_fix2int(i64 noundef %i.h) #37, !inline_history !174
  %i.j = trunc i64 %i.i to i32
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.n, align 8, !tbaa !35
  store ptr %i.k, ptr %i.a, align 8, !tbaa !11
  %.phi.trans.insert.i = getelementptr i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  %i.o = getelementptr i8, ptr %.pre.i, i64 240
  store i32 0, ptr %i.o, align 8, !tbaa !175
  br label %bb.eg

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8, !tbaa !176   ; 3 uses
  %i.p = and i64 %.val, 32512
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.ea

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178  ; 3 uses
  %i.t = getelementptr i8, ptr %1, i64 56         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !182  ; 6 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.s, align 8, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi i32 [ %i.v, %bb.f ], [ 0, %bb.e ]    ; 6 uses
  %.not40.i = icmp eq ptr %i.u, null
  br i1 %.not40.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.u, i64 104
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 2
  %.not41.i = icmp eq i8 %i.z, 0
  br i1 %.not41.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.u, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !183
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.u, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !187
  %.not42.i = icmp eq ptr %i.ae, null
  br i1 %.not42.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.af = icmp ugt i32 %i.w, 2
  br i1 %i.af, label %bb.l, label %iseq_set_local_table.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = add i32 %i.w, -3
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.j, %bb.i, %bb.h, %bb.g
  %.235.i = phi i64 [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 3, %bb.l ], [ 0, %bb.j ]
  %.2.i = phi i32 [ %i.w, %bb.g ], [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %i.ag, %bb.l ], [ %i.w, %bb.j ] ; 3 uses
  %.not43.i = icmp eq i32 %.2.i, 0
  br i1 %.not43.i, label %.thread._crit_edge.i, label %rbimpl_size_mul_or_raise.exit.i

.thread._crit_edge.i:                             ; preds = %.thread.i
  %.phi.trans.insert.i116 = getelementptr i8, ptr %0, i64 16
  %.pre.i117 = load ptr, ptr %.phi.trans.insert.i116, align 8, !tbaa !46
  br label %iseq_set_local_table.exit

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %.thread.i
  %i.ah = zext i32 %.2.i to i64                   ; 4 uses
  %i.ai = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ah, i64 noundef 8) #39 ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ah, 3
  %i.ak = getelementptr i8, ptr %i.s, i64 8
  %i.al = getelementptr [8 x i8], ptr %i.ak, i64 %.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ai, ptr noundef nonnull readonly align 1 %i.al, i64 noundef range(i64 1, 0) %i.aj, i1 noundef false) #37
  %i.am = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr i8, ptr %i.an, i64 144
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !188
  %i.ap = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ah, i64 noundef 4) #39 ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ap, i8 0, i64 %i.aq, i1 false), !tbaa !7
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !46 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 152
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !189
  %.pre.pre = load ptr, ptr %i.t, align 8, !tbaa !182
  br label %iseq_set_local_table.exit

iseq_set_local_table.exit:                        ; preds = %.thread._crit_edge.i, %rbimpl_size_mul_or_raise.exit.i
  %.pre = phi ptr [ %i.u, %.thread._crit_edge.i ], [ %.pre.pre, %rbimpl_size_mul_or_raise.exit.i ] ; 2 uses
  %i.at = phi ptr [ %.pre.i117, %.thread._crit_edge.i ], [ %i.ar, %rbimpl_size_mul_or_raise.exit.i ]
  %i.au = getelementptr i8, ptr %i.at, i64 240
  store i32 %.2.i, ptr %i.au, align 8, !tbaa !175
  %.not.i118 = icmp eq ptr %.pre, null
  br i1 %.not.i118, label %iseq_set_arguments.exit, label %iseq_set_local_table.exit.thread

iseq_set_local_table.exit.thread:                 ; preds = %bb.k, %iseq_set_local_table.exit
  %i.av = phi ptr [ %.pre, %iseq_set_local_table.exit ], [ %i.u, %bb.k ] ; 14 uses
  %i.aw = getelementptr i8, ptr %0, i64 16        ; 6 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 12 uses
  %i.ay = getelementptr i8, ptr %i.av, i64 32
  %i.az = load i64, ptr %i.av, align 8, !tbaa !176 ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = and i32 %i.bb, 127                      ; 2 uses
  %.not142.not.i = icmp eq i32 %i.bc, 71
  br i1 %.not142.not.i, label %.critedge.i, label %.thread209.i

.thread209.i:                                     ; preds = %iseq_set_local_table.exit.thread
  %i.bd = lshr i64 %i.az, 15
  %i.be = trunc i64 %i.bd to i32
  %i.bf = call ptr @ruby_node_name(i32 noundef %i.bc) #37
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.be, ptr noundef nonnull @.str.74, ptr noundef %i.bf)
  br label %iseq_set_arguments.exit

.critedge.i:                                      ; preds = %iseq_set_local_table.exit.thread
  %i.bg = getelementptr i8, ptr %i.av, i64 48     ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !183 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 16     ; 21 uses
  %i.bj = getelementptr i8, ptr %i.ax, i64 24     ; 2 uses
  store i32 %i.bh, ptr %i.bj, align 8, !tbaa !190
  %i.bk = icmp sgt i32 %i.bh, 0
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge.i
  %i.bl = load i16, ptr %i.bi, align 8
  %i.bm = or i16 %i.bl, 1
  store i16 %i.bm, ptr %i.bi, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.bn = getelementptr i8, ptr %i.av, i64 64
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !191 ; 2 uses
  %i.bp = icmp ne i64 %i.bo, 1                    ; 2 uses
  %spec.select.i = select i1 %i.bp, i64 %i.bo, i64 0 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.av, i64 72
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !192 ; 3 uses
  %i.bs = getelementptr i8, ptr %i.av, i64 104    ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8
  %i.bu = and i8 %i.bt, 2
  %.not143.i = icmp eq i8 %i.bu, 0
  br i1 %.not143.i, label %.thread206.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.bg, align 8, !tbaa !183
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %.thread206.i

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr i8, ptr %i.av, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !187
  %.fr.i = freeze ptr %i.by
  %.not144.i = icmp eq ptr %.fr.i, null
  br i1 %.not144.i, label %.thread206.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  br label %.thread206.i

.thread206.i:                                     ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bz = phi i64 [ %i.br, %bb.n ], [ %i.br, %bb.q ], [ %i.br, %bb.o ], [ 0, %bb.p ]
  %i.ca = phi i1 [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.o ], [ true, %bb.p ] ; 2 uses
  %i.cb = phi i64 [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.q ], [ %spec.select.i, %bb.o ], [ 0, %bb.p ] ; 2 uses
  %i.cc = getelementptr i8, ptr %i.av, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %.not145.i = icmp eq ptr %i.cd, null
  br i1 %.not145.i, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %.thread206.i
  %i.ce = call i64 @rb_ary_hidden_new(i64 noundef 1) #37 ; 4 uses
  %i.cf = getelementptr i8, ptr %0, i64 24        ; 4 uses
  br label %nd_line.exit169.i

nd_line.exit169.i:                                ; preds = %iseq_compile_each.exit.i, %bb.r
  %indvars.iv229.i = phi i32 [ 2, %bb.r ], [ %indvars.iv.next230.i, %iseq_compile_each.exit.i ] ; 3 uses
  %.0130218.i = phi i32 [ 0, %bb.r ], [ %i.ee, %iseq_compile_each.exit.i ] ; 2 uses
  %.0134217.i = phi ptr [ %i.cd, %bb.r ], [ %i.ed, %iseq_compile_each.exit.i ] ; 2 uses
  %i.cg = load i64, ptr %0, align 8, !tbaa !37
  %i.ch = and i64 %i.cg, 262144
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %nd_line.exit169.i
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i.i

ISEQ_COMPILE_DATA.exit.i.i.i.i:                   ; preds = %bb.s, %nd_line.exit169.i
  %.0.i.i.i.i.i = phi ptr [ %i.ci, %bb.s ], [ null, %nd_line.exit169.i ]
  %i.cj = getelementptr i8, ptr %.0.i.i.i.i.i, i64 96 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !40 ; 4 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !7  ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cn, 48
  %i.cp = getelementptr i8, ptr %i.ck, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7  ; 4 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp samesign ugt i64 %i.co, %i.cr
  br i1 %i.cs, label %.preheader.i.i.i.i.i, label %new_label_body.exit.i

.preheader.i.i.i.i.i:                             ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i.i
  %i.ct = icmp ult i32 %i.cq, 48
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.u
  %.027.i.i.i.i.i = phi i32 [ %i.cv, %bb.u ], [ %i.cq, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.cu = icmp samesign ugt i32 %.027.i.i.i.i.i, 1073741822
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cv = shl nuw nsw i32 %.027.i.i.i.i.i, 1      ; 3 uses
  %i.cw = icmp samesign ult i32 %.027.i.i.i.i.i, 24
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i.i, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i.i:                   ; preds = %bb.u
  %i.cx = zext nneg i32 %i.cv to i64
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.loopexit.i.i.i, %.preheader.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.cq, %.preheader.i.i.i.i.i ], [ %i.cv, %._crit_edge.i.i.loopexit.i.i.i ]
  %.lcssa.i.i.i.i.i = phi i64 [ %i.cr, %.preheader.i.i.i.i.i ], [ %i.cx, %._crit_edge.i.i.loopexit.i.i.i ]
  %i.cy = add nuw nsw i64 %.lcssa.i.i.i.i.i, 16
  %i.cz = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.cy, i64 noundef 1) #39 ; 6 uses
  store ptr %i.cz, ptr %i.ck, align 8, !tbaa !40
  store ptr %i.cz, ptr %i.cj, align 8, !tbaa !40
  store ptr null, ptr %i.cz, align 8, !tbaa !40
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  store i32 0, ptr %i.da, align 8, !tbaa !7
  %i.db = getelementptr i8, ptr %i.cz, i64 12
  store i32 %.0.lcssa.i.i.i.i.i, ptr %i.db, align 4, !tbaa !7
  br label %new_label_body.exit.i

new_label_body.exit.i:                            ; preds = %._crit_edge.i.i.i.i.i, %ISEQ_COMPILE_DATA.exit.i.i.i.i
  %i.dc = phi i32 [ %i.cm, %ISEQ_COMPILE_DATA.exit.i.i.i.i ], [ 0, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i.i = phi ptr [ %i.ck, %ISEQ_COMPILE_DATA.exit.i.i.i.i ], [ %i.cz, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dd = getelementptr i8, ptr %.022.i.i.i.i.i, i64 16
  %i.de = getelementptr i8, ptr %.022.i.i.i.i.i, i64 8
  %i.df = zext i32 %i.dc to i64
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df  ; 9 uses
  %i.dh = add i32 %i.dc, 48
  store i32 %i.dh, ptr %i.de, align 8, !tbaa !7
  store i32 1, ptr %i.dg, align 8, !tbaa !193
  %i.di = getelementptr i8, ptr %i.dg, i64 8
  store ptr null, ptr %i.di, align 8, !tbaa !194
  %i.dj = load ptr, ptr %i.cf, align 8, !tbaa !20
  %i.dk = getelementptr i8, ptr %i.dj, i64 132    ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !195 ; 2 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !195
  %i.dn = getelementptr i8, ptr %i.dg, i64 24
  store i32 %i.dl, ptr %i.dn, align 8, !tbaa !95
  %i.do = getelementptr i8, ptr %i.dg, i64 44     ; 2 uses
  %i.dp = load i8, ptr %i.do, align 4
  %i.dq = and i8 %i.dp, -16
  store i8 %i.dq, ptr %i.do, align 4
  %i.dr = getelementptr i8, ptr %i.dg, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.dr, align 4, !tbaa !7
end_hunk_1
begin_hunk_2_@iseq_peephole_optimize:bb.a
  %i.aqz = load i32, ptr %i.aqy, align 8, !tbaa !65
  %i.ara = icmp eq i32 %i.aqz, 70
  br i1 %i.ara, label %bb.ka, label %ELEM_REMOVE.exit.thread

bb.ka:                                            ; preds = %bb.jz
  store i32 102, ptr %i.a, align 8, !tbaa !65
  %i.arb = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.arc = load i64, ptr %i.arb, align 8, !tbaa !36
  %i.ard = inttoptr i64 %i.arc to ptr
  %i.are = getelementptr i8, ptr %i.ard, i64 8
  %i.arf = load i32, ptr %i.are, align 8, !tbaa !818
  %i.arg = icmp eq i32 %i.arf, 0
  br i1 %i.arg, label %bb.kb, label %ELEM_REMOVE.exit.thread

bb.kb:                                            ; preds = %bb.ka
  %i.arh = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.ari = getelementptr i8, ptr %i.arh, i64 268  ; 2 uses
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !414 ; 2 uses
  %i.ark = and i32 %i.arj, 1
  %.not635 = icmp eq i32 %i.ark, 0
  br i1 %.not635, label %ELEM_REMOVE.exit.thread, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.arl = or i32 %i.arj, 2
  store i32 %i.arl, ptr %i.ari, align 4, !tbaa !414
  br label %ELEM_REMOVE.exit.thread

bb.kd:                                            ; preds = %rb_obj_written.exit886
  %i.arm = load ptr, ptr %i.d, align 8, !tbaa !68 ; 3 uses
  %.not636 = icmp eq ptr %i.arm, null
  br i1 %.not636, label %ELEM_REMOVE.exit.thread, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.arn = load i32, ptr %i.arm, align 8, !tbaa !64
  %i.aro = icmp eq i32 %i.arn, 2
  br i1 %i.aro, label %bb.kf, label %ELEM_REMOVE.exit.thread

bb.kf:                                            ; preds = %bb.ke
  %i.arp = getelementptr i8, ptr %i.arm, i64 24
  %i.arq = load i32, ptr %i.arp, align 8, !tbaa !65
  %.off1350 = add i32 %i.arq, -73
  %switch1351 = icmp ult i32 %.off1350, 2
  br i1 %switch1351, label %.thread1037, label %ELEM_REMOVE.exit.thread

.thread1037:                                      ; preds = %bb.kf
  store i32 5, ptr %i.a, align 8, !tbaa !65
  br label %ELEM_REMOVE.exit.thread

bb.kg:                                            ; preds = %rb_obj_written.exit886
  %i.arr = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.ars = load i64, ptr %i.arr, align 8, !tbaa !36
  %i.art = icmp eq i64 %i.ars, 0
  br i1 %i.art, label %bb.kh, label %ELEM_REMOVE.exit.thread

bb.kh:                                            ; preds = %bb.kg
  %i.aru = load ptr, ptr %i.d, align 8, !tbaa !35 ; 5 uses
  %.not638 = icmp eq ptr %i.aru, null
  br i1 %.not638, label %ELEM_REMOVE.exit.thread, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.arv = load i32, ptr %i.aru, align 8, !tbaa !64
  %i.arw = icmp eq i32 %i.arv, 2
  br i1 %i.arw, label %bb.kj, label %ELEM_REMOVE.exit.thread

bb.kj:                                            ; preds = %bb.ki
  %i.arx = getelementptr i8, ptr %i.aru, i64 24   ; 2 uses
  %i.ary = load i32, ptr %i.arx, align 8, !tbaa !65
  %i.arz = icmp eq i32 %i.ary, 30
  br i1 %i.arz, label %bb.kk, label %ELEM_REMOVE.exit.thread

bb.kk:                                            ; preds = %bb.kj
  %i.asa = getelementptr i8, ptr %i.aru, i64 8
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !35 ; 5 uses
  %.not639 = icmp eq ptr %i.asb, null
  br i1 %.not639, label %ELEM_REMOVE.exit.thread, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.asc = load i32, ptr %i.asb, align 8, !tbaa !64
  %i.asd = icmp eq i32 %i.asc, 2
  br i1 %i.asd, label %bb.km, label %ELEM_REMOVE.exit.thread

bb.km:                                            ; preds = %bb.kl
  %i.ase = getelementptr i8, ptr %i.asb, i64 24
  %i.asf = load i32, ptr %i.ase, align 8, !tbaa !65
  switch i32 %i.asf, label %ELEM_REMOVE.exit.thread [
    i32 55, label %bb.kq
    i32 1, label %bb.kn
    i32 8, label %bb.kn
    i32 5, label %bb.kn
  ]

bb.kn:                                            ; preds = %bb.km, %bb.km, %bb.km
  %i.asg = getelementptr i8, ptr %i.asb, i64 8
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !35 ; 4 uses
  %.not643 = icmp eq ptr %i.ash, null
  br i1 %.not643, label %ELEM_REMOVE.exit.thread, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.asi = load i32, ptr %i.ash, align 8, !tbaa !64
  %i.asj = icmp eq i32 %i.asi, 2
  br i1 %i.asj, label %bb.kp, label %ELEM_REMOVE.exit.thread

bb.kp:                                            ; preds = %bb.ko
  %i.ask = getelementptr i8, ptr %i.ash, i64 24
  %i.asl = load i32, ptr %i.ask, align 8, !tbaa !65
  %i.asm = icmp eq i32 %i.asl, 55
  br i1 %i.asm, label %bb.kq, label %ELEM_REMOVE.exit.thread

bb.kq:                                            ; preds = %bb.km, %bb.kp
  %.0540 = phi ptr [ %i.asb, %bb.km ], [ %i.ash, %bb.kp ]
  %i.asn = phi i32 [ -2114, %bb.km ], [ -2116, %bb.kp ]
  %.0538 = phi i32 [ 2, %bb.km ], [ 0, %bb.kp ]
  %i.aso = getelementptr i8, ptr %.0540, i64 40   ; 2 uses
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !69
  %i.asq = load i64, ptr %i.asp, align 8, !tbaa !36 ; 5 uses
  %i.asr = inttoptr i64 %i.asq to ptr             ; 4 uses
  %.not.i.i912 = trunc i64 %i.asq to i1           ; 2 uses
  br i1 %.not.i.i912, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.ass = trunc i64 %i.asq to i32
  %i.ast = lshr i32 %i.ass, 16
  br label %vm_ci_flag.exit914

bb.ks:                                            ; preds = %bb.kq
  %i.asu = getelementptr i8, ptr %i.asr, i64 24
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !70
  %i.asw = trunc i64 %i.asv to i32
  br label %vm_ci_flag.exit914

vm_ci_flag.exit914:                               ; preds = %bb.kr, %bb.ks
  %.0.i913 = phi i32 [ %i.ast, %bb.kr ], [ %i.asw, %bb.ks ] ; 3 uses
  %i.asx = or i32 %.0.i913, %i.asn
  %i.asy = icmp eq i32 %i.asx, -1
  %i.asz = and i32 %.0.i913, %.0538
  %.not645 = icmp eq i32 %i.asz, 0
  %or.cond650 = and i1 %i.asy, %.not645
  br i1 %or.cond650, label %bb.kt, label %ELEM_REMOVE.exit.thread

bb.kt:                                            ; preds = %vm_ci_flag.exit914
  store i32 19, ptr %i.arx, align 8, !tbaa !65
  %i.ata = getelementptr i8, ptr %i.aru, i64 40
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !69 ; 2 uses
  %i.atc = load i64, ptr %i.atb, align 8, !tbaa !36
  %i.atd = tail call i64 @rb_hash_resurrect(i64 noundef %i.atc) #37
  %i.ate = tail call i64 @rb_hash_freeze(i64 noundef %i.atd) #37
  %i.atf = tail call i64 @rb_obj_set_shareable(i64 noundef %i.ate) #37 ; 4 uses
  store i64 %i.atf, ptr %i.atb, align 8, !tbaa !36
  %i.atg = icmp eq i64 %i.atf, 0
  %i.ath = and i64 %i.atf, 7
  %i.ati = icmp ne i64 %i.ath, 0
  %i.atj = or i1 %i.atg, %i.ati
  br i1 %i.atj, label %rb_obj_write.exit915, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  tail call void @rb_gc_writebarrier(i64 noundef %i.h, i64 noundef %i.atf) #37
  br label %rb_obj_write.exit915

rb_obj_write.exit915:                             ; preds = %bb.kt, %bb.ku
  br i1 %.not.i.i912, label %vm_ci_argc.exit921.thread, label %bb.kv

vm_ci_argc.exit921.thread:                        ; preds = %rb_obj_write.exit915
  %i.atk = lshr i64 %i.asq, 32
  %i.atl = trunc i64 %i.asq to i32
  %i.atm = lshr i32 %i.atl, 1
  %i.atn = and i32 %i.atm, 32767
  br label %vm_ci_kwarg.exit

bb.kv:                                            ; preds = %rb_obj_write.exit915
  %i.ato = getelementptr i8, ptr %i.asr, i64 16
  %i.atp = load i64, ptr %i.ato, align 8, !tbaa !74
  %i.atq = getelementptr i8, ptr %i.asr, i64 32
  %i.atr = load i64, ptr %i.atq, align 8, !tbaa !73
  %i.ats = trunc i64 %i.atr to i32
  %i.att = getelementptr i8, ptr %i.asr, i64 8
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !77
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %vm_ci_argc.exit921.thread, %bb.kv
  %.0.i9201065 = phi i32 [ %i.ats, %bb.kv ], [ %i.atn, %vm_ci_argc.exit921.thread ]
  %.0.i91710601064 = phi i64 [ %i.atp, %bb.kv ], [ %i.atk, %vm_ci_argc.exit921.thread ]
  %.0.i923 = phi ptr [ %i.atu, %bb.kv ], [ null, %vm_ci_argc.exit921.thread ]
  %i.atv = and i32 %.0.i913, -2049
  %i.atw = tail call fastcc ptr @vm_ci_new_(i64 noundef %.0.i91710601064, i32 noundef %i.atv, i32 noundef %.0.i9201065, ptr noundef %.0.i923) ; 2 uses
  %i.atx = ptrtoint ptr %i.atw to i64             ; 3 uses
  %i.aty = icmp eq ptr %i.atw, null
  %i.atz = and i64 %i.atx, 7
  %i.aua = icmp ne i64 %i.atz, 0
  %i.aub = or i1 %i.aty, %i.aua
  br i1 %i.aub, label %rb_obj_written.exit924, label %bb.kw

bb.kw:                                            ; preds = %vm_ci_kwarg.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.h, i64 noundef %i.atx) #37
  br label %rb_obj_written.exit924

rb_obj_written.exit924:                           ; preds = %vm_ci_kwarg.exit, %bb.kw
  %i.auc = load ptr, ptr %i.aso, align 8, !tbaa !69
  store i64 %i.atx, ptr %i.auc, align 8, !tbaa !36
  br label %ELEM_REMOVE.exit.thread

ELEM_REMOVE.exit.thread:                          ; preds = %bb.kf, %bb.km, %rb_obj_written.exit886, %bb.jc, %bb.jn, %bb.jm, %bb.jy, %bb.jz, %bb.jw, %bb.kc, %bb.kb, %bb.ka, %bb.jv, %ELEM_REMOVE.exit909, %bb.jo, %bb.jp, %bb.jq, %bb.js, %bb.jr, %bb.jl, %ELEM_REMOVE.exit905, %bb.ja, %bb.jf, %ELEM_REMOVE.exit901, %bb.je, %bb.jd, %bb.jj, %bb.jk, %bb.ji, %bb.jh, %bb.jg, %bb.ix, %bb.iy, %bb.iz, %bb.jb, %bb.jx, %bb.kd, %bb.ke, %bb.kl, %bb.kk, %bb.kn, %bb.ko, %bb.kp, %bb.bg, %replace_destination.exit696, %bb.bk, %bb.bl, %bb.al, %unref_destination.exit, %.thread1037, %bb.kg, %rb_obj_written.exit924, %vm_ci_flag.exit914, %bb.kj, %bb.ki, %bb.kh
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @remove_unreachable_chunk(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !37
  %i.b = and i64 %i.a, 262144
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %ISEQ_COMPILE_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %ISEQ_COMPILE_DATA.exit
  %i.e = getelementptr i8, ptr %.0.i, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !195  ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp slt i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %rbimpl_size_mul_or_raise.exit59, !prof !200

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.g) #41
  unreachable

rbimpl_size_mul_or_raise.exit59:                  ; preds = %bb.c
  %i.i = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.j = alloca i8, i64 %i.i, align 16            ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 %i.j, i8 noundef 0, i64 noundef %i.i, i1 noundef false) #37
  br label %bb.e

bb.e:                                             ; preds = %find_destination.exit.thread, %rbimpl_size_mul_or_raise.exit59
  %.046 = phi ptr [ %1, %rbimpl_size_mul_or_raise.exit59 ], [ %.147.ph, %find_destination.exit.thread ] ; 2 uses
  %.044 = phi ptr [ %1, %rbimpl_size_mul_or_raise.exit59 ], [ %i.aw, %find_destination.exit.thread ] ; 14 uses
  %i.k = load i32, ptr %.044, align 8, !tbaa !64
  switch i32 %i.k, label %find_destination.exit.thread [
    i32 2, label %bb.f
    i32 1, label %bb.k
    i32 3, label %.critedge
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %.044, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !65   ; 2 uses
  %i.n = icmp eq i32 %i.m, 70
  br i1 %i.n, label %.loopexit75, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = zext i32 %i.m to i64                     ; 2 uses
  %i.p = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20    ; 2 uses
  %.not.i60 = icmp eq i8 %i.q, 0
  br i1 %.not.i60, label %find_destination.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.r = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.o
  %i.s = load i16, ptr %i.r, align 2, !tbaa !82
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.t
  %wide.trip.count.i = zext i8 %i.q to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_destination.exit.thread, label %bb.i, !llvm.loop !819

bb.i:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 %indvars.iv.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = icmp eq i8 %i.w, 79
  br i1 %i.x, label %find_destination.exit, label %bb.h

find_destination.exit:                            ; preds = %bb.i
  %i.y = getelementptr i8, ptr %.044, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !69
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %.not55 = icmp eq i64 %i.ab, 0
  br i1 %.not55, label %find_destination.exit.thread, label %bb.j

bb.j:                                             ; preds = %find_destination.exit
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !95
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.j, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !7
  br label %find_destination.exit.thread

bb.k:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %.044, i64 44
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, 8
  %.not54 = icmp eq i8 %i.al, 0
  br i1 %.not54, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %.044, i64 40
  %i.an = load i32, ptr %i.am, align 8, !tbaa !273
  %i.ao = getelementptr i8, ptr %.044, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !95
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.j, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = icmp sgt i32 %i.an, %i.as
  br i1 %i.at, label %bb.m, label %find_destination.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.au = icmp eq ptr %.044, %1
  br i1 %i.au, label %.critedge, label %.loopexit75

find_destination.exit.thread:                     ; preds = %bb.h, %find_destination.exit, %bb.j, %bb.e, %bb.g, %bb.l
  %.147.ph = phi ptr [ %.046, %bb.l ], [ %.044, %find_destination.exit ], [ %.044, %bb.g ], [ %.044, %bb.e ], [ %.044, %bb.j ], [ %.044, %bb.h ] ; 2 uses
  %i.av = getelementptr i8, ptr %.044, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35 ; 2 uses
  %.not56 = icmp eq ptr %i.aw, null
  br i1 %.not56, label %.loopexit75, label %bb.e, !llvm.loop !820

.loopexit75:                                      ; preds = %bb.f, %find_destination.exit.thread, %bb.m
  %.14772 = phi ptr [ %.046, %bb.m ], [ %.044, %bb.f ], [ %.147.ph, %find_destination.exit.thread ]
  %i.ax = getelementptr i8, ptr %0, i64 16
  br label %bb.n

bb.n:                                             ; preds = %ELEM_REMOVE.exit, %.loopexit75
  %.145 = phi ptr [ %1, %.loopexit75 ], [ %i.cd, %ELEM_REMOVE.exit ] ; 6 uses
  %i.ay = load i32, ptr %.145, align 8, !tbaa !64
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr i8, ptr %.145, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !65
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr i8, ptr @rb_vm_insn_len_info, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20  ; 2 uses
  %.not82 = icmp eq i8 %i.be, 0
  br i1 %.not82, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !46
  %i.bg = getelementptr [2 x i8], ptr @rb_vm_insn_op_offset, i64 %i.bc
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !82
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr i8, ptr @rb_vm_insn_op_base, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bf, i64 260    ; 2 uses
  %i.bl = getelementptr i8, ptr %.145, i64 40
  %wide.trip.count = zext i8 %i.be to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %unref_destination.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %unref_destination.exit ] ; 3 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 %indvars.iv
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  switch i8 %i.bn, label %unref_destination.exit [
    i8 79, label %bb.q
    i8 67, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  %.145.val = load ptr, ptr %i.bl, align 8, !tbaa !69
  %i.bo = getelementptr [8 x i8], ptr %.145.val, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36
  %i.bq = inttoptr i64 %i.bp to ptr               ; 3 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 40     ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !273
  %i.bt = add i32 %i.bs, -1                       ; 2 uses
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !273
  %.not.i62 = icmp eq i32 %i.bt, 0
  br i1 %.not.i62, label %bb.r, label %unref_destination.exit

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr i8, ptr %i.bq, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !35 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bq, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %unref_destination.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr i8, ptr %i.bv, i64 16
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !34
  br label %unref_destination.exit

bb.t:                                             ; preds = %bb.p
  %i.ca = load i32, ptr %i.bk, align 4, !tbaa !110
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !110
end_hunk_2
begin_hunk_3_@compile_if:bb.a
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i98

ISEQ_COMPILE_DATA.exit.i.i.i98:                   ; preds = %bb.e, %new_label_body.exit
  %.0.i.i.i.i99 = phi ptr [ %i.ay, %bb.e ], [ null, %new_label_body.exit ]
  %i.az = getelementptr i8, ptr %.0.i.i.i.i99, i64 96 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !7  ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %i.bd, 48
  %i.bf = getelementptr i8, ptr %i.ba, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7  ; 4 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = icmp samesign ugt i64 %i.be, %i.bh
  br i1 %i.bi, label %.preheader.i.i.i.i103, label %new_label_body.exit112

.preheader.i.i.i.i103:                            ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i98
  %i.bj = icmp ult i32 %i.bg, 48
  br i1 %i.bj, label %.lr.ph.i.i.i.i109, label %._crit_edge.i.i.i.i104

.lr.ph.i.i.i.i109:                                ; preds = %.preheader.i.i.i.i103, %bb.g
  %.027.i.i.i.i110 = phi i32 [ %i.bl, %bb.g ], [ %i.bg, %.preheader.i.i.i.i103 ] ; 3 uses
  %i.bk = icmp samesign ugt i32 %.027.i.i.i.i110, 1073741822
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i109
  call void @rb_memerror() #38
  unreachable

bb.g:                                             ; preds = %.lr.ph.i.i.i.i109
  %i.bl = shl nuw nsw i32 %.027.i.i.i.i110, 1     ; 3 uses
  %i.bm = icmp samesign ult i32 %.027.i.i.i.i110, 24
  br i1 %i.bm, label %.lr.ph.i.i.i.i109, label %._crit_edge.i.i.loopexit.i.i111, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i111:                  ; preds = %bb.g
  %i.bn = zext nneg i32 %i.bl to i64
  br label %._crit_edge.i.i.i.i104

._crit_edge.i.i.i.i104:                           ; preds = %._crit_edge.i.i.loopexit.i.i111, %.preheader.i.i.i.i103
  %.0.lcssa.i.i.i.i105 = phi i32 [ %i.bg, %.preheader.i.i.i.i103 ], [ %i.bl, %._crit_edge.i.i.loopexit.i.i111 ]
  %.lcssa.i.i.i.i106 = phi i64 [ %i.bh, %.preheader.i.i.i.i103 ], [ %i.bn, %._crit_edge.i.i.loopexit.i.i111 ]
  %i.bo = add nuw nsw i64 %.lcssa.i.i.i.i106, 16
  %i.bp = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bo, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bp, ptr %i.ba, align 8, !tbaa !40
  store ptr %i.bp, ptr %i.az, align 8, !tbaa !40
  store ptr null, ptr %i.bp, align 8, !tbaa !40
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  store i32 0, ptr %i.bq, align 8, !tbaa !7
  %i.br = getelementptr i8, ptr %i.bp, i64 12
  store i32 %.0.lcssa.i.i.i.i105, ptr %i.br, align 4, !tbaa !7
  br label %new_label_body.exit112

new_label_body.exit112:                           ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i98, %._crit_edge.i.i.i.i104
  %i.bs = phi i32 [ %i.bc, %ISEQ_COMPILE_DATA.exit.i.i.i98 ], [ 0, %._crit_edge.i.i.i.i104 ] ; 2 uses
  %.022.i.i.i.i101 = phi ptr [ %i.ba, %ISEQ_COMPILE_DATA.exit.i.i.i98 ], [ %i.bp, %._crit_edge.i.i.i.i104 ] ; 2 uses
  %i.bt = getelementptr i8, ptr %.022.i.i.i.i101, i64 16
  %i.bu = getelementptr i8, ptr %.022.i.i.i.i101, i64 8
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr i8, ptr %i.bt, i64 %i.bv  ; 10 uses
  %i.bx = add i32 %i.bs, 48
  store i32 %i.bx, ptr %i.bu, align 8, !tbaa !7
  store i32 1, ptr %i.bw, align 8, !tbaa !193
  %i.by = getelementptr i8, ptr %i.bw, i64 8
  store ptr null, ptr %i.by, align 8, !tbaa !194
  %i.bz = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.ca = getelementptr i8, ptr %i.bz, i64 132    ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !195 ; 2 uses
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !195
  %i.cd = getelementptr i8, ptr %i.bw, i64 24
  store i32 %i.cb, ptr %i.cd, align 8, !tbaa !95
  %i.ce = getelementptr i8, ptr %i.bw, i64 40     ; 3 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 44     ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4
  %i.ch = and i8 %i.cg, -16
  store i8 %i.ch, ptr %i.cf, align 4
  %i.ci = getelementptr i8, ptr %i.bw, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.ci, align 4, !tbaa !7
  %i.cj = getelementptr i8, ptr %2, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !930 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !176
  %i.cm = and i64 %i.cl, 32512
  %i.cn = icmp eq i64 %i.cm, 256
  br i1 %i.cn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %new_label_body.exit112
  %i.co = getelementptr i8, ptr %i.ck, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !926
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %new_label_body.exit112
  %.082 = phi ptr [ %i.cp, %bb.h ], [ %i.ck, %new_label_body.exit112 ]
  %i.cq = call fastcc i32 @compile_branch_condition(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %.082, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.bw)
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.aj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = load ptr, ptr %i.g, align 8, !tbaa !63  ; 2 uses
  %.not.i = icmp eq ptr %i.cr, null
  br i1 %.not.i, label %APPEND_LIST.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cs = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !11 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !35
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !34
  %i.cx = load ptr, ptr %i.f, align 8, !tbaa !11
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.j, %bb.k
  %i.cy = load i32, ptr %i.ar, align 8, !tbaa !273
  %.not85 = icmp eq i32 %i.cy, 0
  br i1 %.not85, label %.thread, label %bb.l

bb.l:                                             ; preds = %APPEND_LIST.exit
  %i.cz = load i32, ptr %i.ce, align 8, !tbaa !273
  %.not86 = icmp eq i32 %i.cz, 0
  br i1 %.not86, label %.thread154, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.db = add i64 %i.da, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.db, -1
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dc = shl nsw i64 %i.da, 1
  %i.dd = or disjoint i64 %i.dc, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.de = call i64 @rb_int2big(i64 noundef %i.da) #37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi i64 [ %i.dd, %bb.n ], [ %i.de, %bb.o ]
  %i.df = getelementptr i8, ptr %2, i64 8
  %i.dg = select i1 %i.a, ptr @.str.85, ptr @.str.86
  %i.dh = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.dh, align 8, !tbaa !46
  %i.di = getelementptr i8, ptr %.val, i64 216
  %.val.val = load i64, ptr %i.di, align 8, !tbaa !101
  %i.dj = call fastcc i64 @decl_branch_base(i64 %.val.val, i64 noundef %.0.i, ptr noundef %i.df, ptr noundef nonnull %i.dg) ; 2 uses
  %.pr = load i32, ptr %i.ar, align 8, !tbaa !273
  %.not87 = icmp eq i32 %.pr, 0
  br i1 %.not87, label %.thread, label %.thread154

.thread154:                                       ; preds = %bb.l, %bb.p
  %.083157 = phi i64 [ %i.dj, %bb.p ], [ 0, %bb.l ] ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !11 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.ai, i64 16
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !34
  %i.dn = getelementptr i8, ptr %i.dl, i64 8
  store ptr %i.ai, ptr %i.dn, align 8, !tbaa !35
  store ptr %i.ai, ptr %i.dk, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.do, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dq = icmp eq ptr %i.d, null                  ; 2 uses
  br i1 %i.dq, label %bb.q, label %iseq_compile_each.exit

bb.q:                                             ; preds = %.thread154
  %.not.i113 = icmp eq i32 %3, 0
  br i1 %.not.i113, label %ISEQ_COMPILE_DATA.exit.i, label %iseq_compile_each.exit.thread

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.q
  %i.dr = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.ds = getelementptr i8, ptr %i.dr, i64 128
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !21 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.dv = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.dw = call i64 @rb_fix2int(i64 noundef %i.dv) #37, !inline_history !174
  %i.dx = trunc i64 %i.dw to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %ISEQ_COMPILE_DATA.exit.i
  %.0.i115 = phi i32 [ %i.dx, %bb.r ], [ %i.dt, %ISEQ_COMPILE_DATA.exit.i ]
  %i.dy = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i115, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dy, i64 16
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !34
  %i.eb = getelementptr i8, ptr %i.dz, i64 8
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !35
  store ptr %i.dy, ptr %i.do, align 8, !tbaa !11
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit:                           ; preds = %.thread154
  %i.ec = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %i.d, i32 noundef %3), !inline_history !174
  %.not88.not = icmp eq i32 %i.ec, 0
  br i1 %.not88.not, label %APPEND_LIST.exit138.thread, label %iseq_compile_each.exit.thread

APPEND_LIST.exit138.thread:                       ; preds = %iseq_compile_each.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.aj

iseq_compile_each.exit.thread:                    ; preds = %bb.q, %bb.s, %iseq_compile_each.exit
  %i.ed = load i32, ptr %i.ce, align 8, !tbaa !273
  %.not89 = icmp eq i32 %i.ed, 0
  br i1 %.not89, label %bb.y, label %bb.t

bb.t:                                             ; preds = %iseq_compile_each.exit.thread
  %i.ee = select i1 %i.dq, ptr %2, ptr %i.d       ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = getelementptr i8, ptr %i.ee, i64 24
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !278
  %i.ei = select i1 %i.a, ptr @.str.87, ptr @.str.88
  call fastcc void @add_trace_branch_coverage(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.ef, i32 noundef %i.eh, i32 noundef 0, ptr noundef nonnull %i.ei, i64 noundef %.083157)
  %i.ej = load i64, ptr %0, align 8, !tbaa !37
  %i.ek = and i64 %i.ej, 262144
  %.not.i.i.i.i116 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i.i.i116, label %ISEQ_COMPILE_DATA.exit.i.i.i117, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = load ptr, ptr %i.al, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i117

ISEQ_COMPILE_DATA.exit.i.i.i117:                  ; preds = %bb.u, %bb.t
  %.0.i.i.i.i118 = phi ptr [ %i.el, %bb.u ], [ null, %bb.t ]
  %i.em = getelementptr i8, ptr %.0.i.i.i.i118, i64 96 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !40 ; 4 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !7  ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eq, 48
  %i.es = getelementptr i8, ptr %i.en, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !7  ; 4 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = icmp samesign ugt i64 %i.er, %i.eu
  br i1 %i.ev, label %.preheader.i.i.i.i122, label %new_label_body.exit131

.preheader.i.i.i.i122:                            ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i117
  %i.ew = icmp ult i32 %i.et, 48
  br i1 %i.ew, label %.lr.ph.i.i.i.i128, label %._crit_edge.i.i.i.i123

.lr.ph.i.i.i.i128:                                ; preds = %.preheader.i.i.i.i122, %bb.w
  %.027.i.i.i.i129 = phi i32 [ %i.ey, %bb.w ], [ %i.et, %.preheader.i.i.i.i122 ] ; 3 uses
  %i.ex = icmp samesign ugt i32 %.027.i.i.i.i129, 1073741822
  br i1 %i.ex, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i.i.i128
  call void @rb_memerror() #38
  unreachable

bb.w:                                             ; preds = %.lr.ph.i.i.i.i128
  %i.ey = shl nuw nsw i32 %.027.i.i.i.i129, 1     ; 3 uses
  %i.ez = icmp samesign ult i32 %.027.i.i.i.i129, 24
  br i1 %i.ez, label %.lr.ph.i.i.i.i128, label %._crit_edge.i.i.loopexit.i.i130, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i130:                  ; preds = %bb.w
  %i.fa = zext nneg i32 %i.ey to i64
  br label %._crit_edge.i.i.i.i123

._crit_edge.i.i.i.i123:                           ; preds = %._crit_edge.i.i.loopexit.i.i130, %.preheader.i.i.i.i122
  %.0.lcssa.i.i.i.i124 = phi i32 [ %i.et, %.preheader.i.i.i.i122 ], [ %i.ey, %._crit_edge.i.i.loopexit.i.i130 ]
  %.lcssa.i.i.i.i125 = phi i64 [ %i.eu, %.preheader.i.i.i.i122 ], [ %i.fa, %._crit_edge.i.i.loopexit.i.i130 ]
  %i.fb = add nuw nsw i64 %.lcssa.i.i.i.i125, 16
  %i.fc = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.fb, i64 noundef 1) #39 ; 6 uses
  store ptr %i.fc, ptr %i.en, align 8, !tbaa !40
  store ptr %i.fc, ptr %i.em, align 8, !tbaa !40
  store ptr null, ptr %i.fc, align 8, !tbaa !40
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  store i32 0, ptr %i.fd, align 8, !tbaa !7
  %i.fe = getelementptr i8, ptr %i.fc, i64 12
  store i32 %.0.lcssa.i.i.i.i124, ptr %i.fe, align 4, !tbaa !7
  br label %new_label_body.exit131

new_label_body.exit131:                           ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i117, %._crit_edge.i.i.i.i123
  %i.ff = phi i32 [ %i.ep, %ISEQ_COMPILE_DATA.exit.i.i.i117 ], [ 0, %._crit_edge.i.i.i.i123 ] ; 2 uses
  %.022.i.i.i.i120 = phi ptr [ %i.en, %ISEQ_COMPILE_DATA.exit.i.i.i117 ], [ %i.fc, %._crit_edge.i.i.i.i123 ] ; 2 uses
  %i.fg = getelementptr i8, ptr %.022.i.i.i.i120, i64 16
  %i.fh = getelementptr i8, ptr %.022.i.i.i.i120, i64 8
  %i.fi = zext i32 %i.ff to i64
  %i.fj = getelementptr i8, ptr %i.fg, i64 %i.fi  ; 9 uses
  %i.fk = add i32 %i.ff, 48
  store i32 %i.fk, ptr %i.fh, align 8, !tbaa !7
  store i32 1, ptr %i.fj, align 8, !tbaa !193
  %i.fl = getelementptr i8, ptr %i.fj, i64 8
  store ptr null, ptr %i.fl, align 8, !tbaa !194
  %i.fm = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.fn = getelementptr i8, ptr %i.fm, i64 132    ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !195 ; 2 uses
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !195
  %i.fq = getelementptr i8, ptr %i.fj, i64 24
  store i32 %i.fo, ptr %i.fq, align 8, !tbaa !95
  %i.fr = getelementptr i8, ptr %i.fj, i64 40     ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fj, i64 44     ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 4
  %i.fu = and i8 %i.ft, -16
  store i8 %i.fu, ptr %i.fs, align 4
  %i.fv = getelementptr i8, ptr %i.fj, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.fv, align 4, !tbaa !7
  %i.fw = load i64, ptr %2, align 8, !tbaa !176
  %i.fx = lshr i64 %i.fw, 15
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !278
  %i.gb = ptrtoint ptr %i.fj to i64
  %i.gc = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.fy, i32 noundef %i.ga, i32 noundef 72, i32 noundef 1, i64 noundef %i.gb) ; 3 uses
  %i.gd = load ptr, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gc, i64 16
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !34
  %i.gf = getelementptr i8, ptr %i.gd, i64 8
  store ptr %i.gc, ptr %i.gf, align 8, !tbaa !35
  store ptr %i.gc, ptr %i.do, align 8, !tbaa !11
  %i.gg = load i32, ptr %i.fr, align 8, !tbaa !273
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.fr, align 8, !tbaa !273
  %.not91 = icmp eq i32 %3, 0
  br i1 %.not91, label %bb.x, label %bb.y

bb.x:                                             ; preds = %new_label_body.exit131
  %i.gi = load i64, ptr %2, align 8, !tbaa !176
  %i.gj = lshr i64 %i.gi, 15
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = load i32, ptr %i.fz, align 8, !tbaa !278
  %i.gm = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gk, i32 noundef %i.gl, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.gn = load ptr, ptr %i.do, align 8, !tbaa !11 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gm, i64 16
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !34
  %i.gp = getelementptr i8, ptr %i.gn, i64 8
  store ptr %i.gm, ptr %i.gp, align 8, !tbaa !35
  store ptr %i.gm, ptr %i.do, align 8, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %new_label_body.exit131, %bb.x, %iseq_compile_each.exit.thread
  %.077 = phi ptr [ null, %iseq_compile_each.exit.thread ], [ %i.fj, %bb.x ], [ %i.fj, %new_label_body.exit131 ]
  %i.gq = load ptr, ptr %i.dp, align 8, !tbaa !63 ; 2 uses
  %.not.i137 = icmp eq ptr %i.gq, null
  br i1 %.not.i137, label %.thread.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gr = load ptr, ptr %i.dk, align 8, !tbaa !11 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  store ptr %i.gq, ptr %i.gs, align 8, !tbaa !35
  %i.gt = load ptr, ptr %i.dp, align 8, !tbaa !63
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !34
  %i.gv = load ptr, ptr %i.do, align 8, !tbaa !11
  store ptr %i.gv, ptr %i.dk, align 8, !tbaa !11
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %APPEND_LIST.exit, %bb.p
  %.083152 = phi i64 [ 0, %APPEND_LIST.exit ], [ %i.dj, %bb.p ], [ %.083157, %.thread.sink.split ]
  %.279 = phi ptr [ null, %APPEND_LIST.exit ], [ null, %bb.p ], [ %.077, %.thread.sink.split ] ; 4 uses
  %i.gw = load i32, ptr %i.ce, align 8, !tbaa !273
  %.not92 = icmp eq i32 %i.gw, 0
  br i1 %.not92, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %.thread
  %i.gx = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !11 ; 2 uses
  %i.gz = getelementptr i8, ptr %i.bw, i64 16
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !34
  %i.ha = getelementptr i8, ptr %i.gy, i64 8
  store ptr %i.bw, ptr %i.ha, align 8, !tbaa !35
  store ptr %i.bw, ptr %i.gx, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %7, ptr %i.hb, align 8, !tbaa !11
  %i.hc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hd = icmp eq ptr %i.e, null                  ; 2 uses
  br i1 %i.hd, label %bb.ab, label %iseq_compile_each.exit145

bb.ab:                                            ; preds = %bb.aa
  %.not.i140 = icmp eq i32 %3, 0
  br i1 %.not.i140, label %ISEQ_COMPILE_DATA.exit.i142, label %iseq_compile_each.exit145.thread

ISEQ_COMPILE_DATA.exit.i142:                      ; preds = %bb.ab
  %i.he = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.hf = getelementptr i8, ptr %i.he, i64 128
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !21 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %ISEQ_COMPILE_DATA.exit.i142
  %i.hi = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.hj = call i64 @rb_fix2int(i64 noundef %i.hi) #37, !inline_history !174
  %i.hk = trunc i64 %i.hj to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %ISEQ_COMPILE_DATA.exit.i142
  %.0.i144 = phi i32 [ %i.hk, %bb.ac ], [ %i.hg, %ISEQ_COMPILE_DATA.exit.i142 ]
  %i.hl = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i144, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.hm = load ptr, ptr %i.hb, align 8, !tbaa !11 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hl, i64 16
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !34
  %i.ho = getelementptr i8, ptr %i.hm, i64 8
  store ptr %i.hl, ptr %i.ho, align 8, !tbaa !35
  store ptr %i.hl, ptr %i.hb, align 8, !tbaa !11
  br label %iseq_compile_each.exit145.thread

iseq_compile_each.exit145:                        ; preds = %bb.aa
  %i.hp = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef %i.e, i32 noundef %3), !inline_history !174
  %.not93.not = icmp eq i32 %i.hp, 0
  br i1 %.not93.not, label %.critedge.a, label %iseq_compile_each.exit145.thread

iseq_compile_each.exit145.thread:                 ; preds = %bb.ab, %bb.ad, %iseq_compile_each.exit145
  %i.hq = load i32, ptr %i.ar, align 8, !tbaa !273
  %.not94 = icmp eq i32 %i.hq, 0
  br i1 %.not94, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %iseq_compile_each.exit145.thread
  %i.hr = select i1 %i.hd, ptr %2, ptr %i.e       ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 8
  %i.ht = getelementptr i8, ptr %i.hr, i64 24
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !278
  %i.hv = select i1 %i.a, ptr @.str.88, ptr @.str.87
  call fastcc void @add_trace_branch_coverage(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.hs, i32 noundef %i.hu, i32 noundef 1, ptr noundef nonnull %i.hv, i64 noundef %.083152)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %iseq_compile_each.exit145.thread
  %i.hw = load ptr, ptr %i.hc, align 8, !tbaa !63 ; 2 uses
  %.not.i146 = icmp eq ptr %i.hw, null
  br i1 %.not.i146, label %APPEND_LIST.exit147, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hx = load ptr, ptr %i.gx, align 8, !tbaa !11 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  store ptr %i.hw, ptr %i.hy, align 8, !tbaa !35
  %i.hz = load ptr, ptr %i.hc, align 8, !tbaa !63
  %i.ia = getelementptr i8, ptr %i.hz, i64 16
  store ptr %i.hx, ptr %i.ia, align 8, !tbaa !34
  %i.ib = load ptr, ptr %i.hb, align 8, !tbaa !11
  store ptr %i.ib, ptr %i.gx, align 8, !tbaa !11
  br label %APPEND_LIST.exit147

APPEND_LIST.exit147:                              ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ah

bb.ah:                                            ; preds = %APPEND_LIST.exit147, %.thread
  %.not96 = icmp eq ptr %.279, null
  br i1 %.not96, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ic = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !11 ; 2 uses
  %i.ie = getelementptr i8, ptr %.279, i64 16
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !34
  %i.if = getelementptr i8, ptr %i.id, i64 8
  store ptr %.279, ptr %i.if, align 8, !tbaa !35
  store ptr %.279, ptr %i.ic, align 8, !tbaa !11
  br label %bb.aj

.critedge.a:                                      ; preds = %iseq_compile_each.exit145
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.aj

bb.aj:                                            ; preds = %APPEND_LIST.exit138.thread, %bb.ah, %bb.ai, %.critedge.a, %bb.i
  %.3 = phi i32 [ 0, %.critedge.a ], [ 0, %APPEND_LIST.exit138.thread ], [ 1, %bb.ah ], [ 0, %bb.i ], [ 1, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret i32 %.3
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_case(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 9 uses
  %6 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store ptr %4, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 15 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.c, align 8, !tbaa !11
  %i.d = call i64 @rb_hash_new() #37              ; 8 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !35
  store ptr %5, ptr %i.b, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr null, ptr %i.f, align 8, !tbaa !35
  store ptr %6, ptr %i.c, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr null, ptr %i.g, align 8, !tbaa !35
  %i.h = call ptr @rb_hash_tbl_raw(i64 noundef %i.d, ptr noundef nonnull @.str, i32 noundef 7060) #37
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr @cdhash_type, ptr %i.i, align 8, !tbaa !308
  %i.j = getelementptr i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !932  ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ISEQ_COMPILE_DATA.exit.i, label %iseq_compile_each.exit

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr i8, ptr %i.n, i64 128
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %iseq_compile_each.exit.thread

bb.b:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.r = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.s = call i64 @rb_fix2int(i64 noundef %i.r) #37, !inline_history !174
  %i.t = trunc i64 %i.s to i32
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit.thread:                    ; preds = %ISEQ_COMPILE_DATA.exit.i, %bb.b
  %.0.i = phi i32 [ %i.t, %bb.b ], [ %i.p, %ISEQ_COMPILE_DATA.exit.i ]
  %i.u = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.x, align 8, !tbaa !35
  store ptr %i.u, ptr %i.a, align 8, !tbaa !11
  br label %bb.c

iseq_compile_each.exit:                           ; preds = %bb.a
  %i.y = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.k, i32 noundef 0), !inline_history !174
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %iseq_compile_each.exit.thread, %iseq_compile_each.exit
  %i.z = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.aa = add i64 %i.z, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.aa, -1
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl nsw i64 %i.z, 1
  %i.ac = or disjoint i64 %i.ab, 1
  br label %rb_long2num_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = call i64 @rb_int2big(i64 noundef %i.z) #37
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i163 = phi i64 [ %i.ac, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ag = getelementptr i8, ptr %.val, i64 216
  %.val.val = load i64, ptr %i.ag, align 8, !tbaa !101
  %i.ah = call fastcc i64 @decl_branch_base(i64 %.val.val, i64 noundef %.0.i163, ptr noundef %i.ae, ptr noundef nonnull @.str.89) ; 3 uses
  %i.ai = getelementptr i8, ptr %2, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !934 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !176 ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 8
  %i.an = and i32 %i.am, 127                      ; 2 uses
  %.not152 = icmp eq i32 %i.an, 7
  br i1 %.not152, label %nd_line.exit167, label %nd_line.exit

nd_line.exit:                                     ; preds = %rb_long2num_inline.exit
  %i.ao = lshr i64 %i.ak, 15
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = call ptr @ruby_node_name(i32 noundef %i.an) #37
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.ap, ptr noundef nonnull @.str.90, ptr noundef %i.aq)
  br label %.thread

nd_line.exit167:                                  ; preds = %rb_long2num_inline.exit
  %i.ar = load i64, ptr %0, align 8, !tbaa !37
  %i.as = and i64 %i.ar, 262144
  %.not.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %nd_line.exit167
  %i.at = getelementptr i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i

ISEQ_COMPILE_DATA.exit.i.i.i:                     ; preds = %bb.f, %nd_line.exit167
  %.0.i.i.i.i = phi ptr [ %i.au, %bb.f ], [ null, %nd_line.exit167 ]
  %i.av = getelementptr i8, ptr %.0.i.i.i.i, i64 96 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !40 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !7  ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 48
  %i.bb = getelementptr i8, ptr %i.aw, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7  ; 4 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = icmp samesign ugt i64 %i.ba, %i.bd
  br i1 %i.be, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i
  %i.bf = icmp ult i32 %i.bc, 48
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.h
  %.027.i.i.i.i = phi i32 [ %i.bh, %bb.h ], [ %i.bc, %.preheader.i.i.i.i ] ; 3 uses
  %i.bg = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.bi = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.h
  %i.bj = zext nneg i32 %i.bh to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.bc, %.preheader.i.i.i.i ], [ %i.bh, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.bd, %.preheader.i.i.i.i ], [ %i.bj, %._crit_edge.i.i.loopexit.i.i ]
  %i.bk = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.bl = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bk, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bl, ptr %i.aw, align 8, !tbaa !40
  store ptr %i.bl, ptr %i.av, align 8, !tbaa !40
  store ptr null, ptr %i.bl, align 8, !tbaa !40
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  store i32 0, ptr %i.bm, align 8, !tbaa !7
  %i.bn = getelementptr i8, ptr %i.bl, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.bn, align 4, !tbaa !7
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i, %._crit_edge.i.i.i.i
  %i.bo = phi i32 [ %i.ay, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.aw, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ %i.bl, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.bq = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.br = zext i32 %i.bo to i64
  %i.bs = getelementptr i8, ptr %i.bp, i64 %i.br  ; 11 uses
  %i.bt = add i32 %i.bo, 48
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !7
  store i32 1, ptr %i.bs, align 8, !tbaa !193
  %i.bu = getelementptr i8, ptr %i.bs, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !194
  %i.bv = getelementptr i8, ptr %0, i64 24        ; 7 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr i8, ptr %i.bw, i64 132    ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !195 ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !195
  %i.ca = getelementptr i8, ptr %i.bs, i64 24
  store i32 %i.by, ptr %i.ca, align 8, !tbaa !95
  %i.cb = getelementptr i8, ptr %i.bs, i64 40     ; 4 uses
  %i.cc = getelementptr i8, ptr %i.bs, i64 44     ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = and i8 %i.cd, -16
  store i8 %i.ce, ptr %i.cc, align 4
  %i.cf = getelementptr i8, ptr %i.bs, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.cf, align 4, !tbaa !7
  %i.cg = load i64, ptr %0, align 8, !tbaa !37
  %i.ch = and i64 %i.cg, 262144
  %.not.i.i.i.i169 = icmp eq i64 %i.ch, 0
end_hunk_3
begin_hunk_4_@compile_case2:bb.a
  br i1 %i.fc, label %.lr.ph.i.i.i.i152, label %._crit_edge.i.i.loopexit.i.i154, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i154:                  ; preds = %bb.q
  %i.fd = zext nneg i32 %i.fb to i64
  br label %._crit_edge.i.i.i.i147

._crit_edge.i.i.i.i147:                           ; preds = %._crit_edge.i.i.loopexit.i.i154, %.preheader.i.i.i.i146
  %.0.lcssa.i.i.i.i148 = phi i32 [ %i.ew, %.preheader.i.i.i.i146 ], [ %i.fb, %._crit_edge.i.i.loopexit.i.i154 ]
  %.lcssa.i.i.i.i149 = phi i64 [ %i.ex, %.preheader.i.i.i.i146 ], [ %i.fd, %._crit_edge.i.i.loopexit.i.i154 ]
  %i.fe = add nuw nsw i64 %.lcssa.i.i.i.i149, 16
  %i.ff = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.fe, i64 noundef 1) #39 ; 6 uses
  store ptr %i.ff, ptr %i.eq, align 8, !tbaa !40
  store ptr %i.ff, ptr %i.ep, align 8, !tbaa !40
  store ptr null, ptr %i.ff, align 8, !tbaa !40
  %i.fg = getelementptr i8, ptr %i.ff, i64 8
  store i32 0, ptr %i.fg, align 8, !tbaa !7
  %i.fh = getelementptr i8, ptr %i.ff, i64 12
  store i32 %.0.lcssa.i.i.i.i148, ptr %i.fh, align 4, !tbaa !7
  br label %new_label_body.exit155

new_label_body.exit155:                           ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i141, %._crit_edge.i.i.i.i147
  %i.fi = phi i32 [ %i.es, %ISEQ_COMPILE_DATA.exit.i.i.i141 ], [ 0, %._crit_edge.i.i.i.i147 ] ; 2 uses
  %.022.i.i.i.i144 = phi ptr [ %i.eq, %ISEQ_COMPILE_DATA.exit.i.i.i141 ], [ %i.ff, %._crit_edge.i.i.i.i147 ] ; 2 uses
  %i.fj = getelementptr i8, ptr %.022.i.i.i.i144, i64 16
  %i.fk = getelementptr i8, ptr %.022.i.i.i.i144, i64 8
  %i.fl = zext i32 %i.fi to i64
  %i.fm = getelementptr i8, ptr %i.fj, i64 %i.fl  ; 9 uses
  %i.fn = add i32 %i.fi, 48
  store i32 %i.fn, ptr %i.fk, align 8, !tbaa !7
  store i32 1, ptr %i.fm, align 8, !tbaa !193
  %i.fo = getelementptr i8, ptr %i.fm, i64 8
  store ptr null, ptr %i.fo, align 8, !tbaa !194
  %i.fp = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.fq = getelementptr i8, ptr %i.fp, i64 132    ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !195 ; 2 uses
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !195
  %i.ft = getelementptr i8, ptr %i.fm, i64 24
  store i32 %i.fr, ptr %i.ft, align 8, !tbaa !95
  %i.fu = getelementptr i8, ptr %i.fm, i64 44     ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 4
  %i.fw = and i8 %i.fv, -16
  store i8 %i.fw, ptr %i.fu, align 4
  %i.fx = getelementptr i8, ptr %i.fm, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.fx, align 4, !tbaa !7
  %i.fy = call fastcc i32 @compile_branch_condition(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.el, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.fm)
  %.not107.not = icmp eq i32 %i.fy, 0
  br i1 %.not107.not, label %.thread191, label %bb.r

bb.r:                                             ; preds = %new_label_body.exit155
  %i.fz = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fm, i64 16
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !34
  %i.gb = getelementptr i8, ptr %i.fz, i64 8
  store ptr %i.fm, ptr %i.gb, align 8, !tbaa !35
  store ptr %i.fm, ptr %i.bd, align 8, !tbaa !11
  %i.gc = getelementptr i8, ptr %.092219, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !943 ; 2 uses
  %.not106 = icmp eq ptr %i.gd, null
  br i1 %.not106, label %.loopexit, label %nd_line.exit139, !llvm.loop !944

iseq_compile_each.exit165:                        ; preds = %bb.n, %bb.n, %bb.n
  %i.ge = lshr i64 %i.eg, 15
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr i8, ptr %i.ec, i64 24     ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !278
  %i.gi = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gf, i32 noundef %i.gh, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.gj = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gi, i64 16
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !34
  %i.gl = getelementptr i8, ptr %i.gj, i64 8
  store ptr %i.gi, ptr %i.gl, align 8, !tbaa !35
  store ptr %i.gi, ptr %i.bd, align 8, !tbaa !11
  %i.gm = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ec, i32 noundef 0), !inline_history !174
  %.not105 = icmp eq i32 %i.gm, 0
  br i1 %.not105, label %.thread191, label %nd_line.exit171

nd_line.exit171:                                  ; preds = %iseq_compile_each.exit165
  %i.gn = load i64, ptr %i.ec, align 8, !tbaa !176
  %i.go = lshr i64 %i.gn, 15
  %i.gp = trunc i64 %i.go to i32
  %i.gq = load i32, ptr %i.gg, align 8, !tbaa !278
  %i.gr = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.gp, i32 noundef %i.gq, i32 noundef 49, i32 noundef 1, i64 noundef 11) ; 3 uses
  %i.gs = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gr, i64 16
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !34
  %i.gu = getelementptr i8, ptr %i.gs, i64 8
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !35
  store ptr %i.gr, ptr %i.bd, align 8, !tbaa !11
  %i.gv = load i64, ptr %i.ec, align 8, !tbaa !176
  %i.gw = lshr i64 %i.gv, 15
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = load i32, ptr %i.gg, align 8, !tbaa !278
  %i.gz = ptrtoint ptr %i.cg to i64
  %i.ha = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef 73, i32 noundef 1, i64 noundef %i.gz) ; 3 uses
  %i.hb = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 16
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !34
  %i.hd = getelementptr i8, ptr %i.hb, i64 8
  store ptr %i.ha, ptr %i.hd, align 8, !tbaa !35
  store ptr %i.ha, ptr %i.bd, align 8, !tbaa !11
  %i.he = load i32, ptr %i.co, align 8, !tbaa !273
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.co, align 8, !tbaa !273
  br label %.loopexit

nd_line.exit174:                                  ; preds = %bb.n
  %i.hg = lshr i64 %i.eg, 15
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = call ptr @ruby_node_name(i32 noundef %i.ej) #37
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.hh, ptr noundef nonnull @.str.95, ptr noundef %i.hi)
  br label %.thread191

.loopexit:                                        ; preds = %bb.r, %nd_line.exit171
  %i.hj = getelementptr i8, ptr %.094222, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !938 ; 2 uses
  %.not = icmp eq ptr %i.hk, null
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !945

._crit_edge:                                      ; preds = %.loopexit, %new_label_body.exit
  %.098.lcssa = phi i32 [ 0, %new_label_body.exit ], [ %i.db, %.loopexit ]
  %i.hl = getelementptr i8, ptr %2, i64 24
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !278
  call fastcc void @add_trace_branch_coverage(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.i, i32 noundef %i.hm, i32 noundef %.098.lcssa, ptr noundef nonnull @.str.88, i64 noundef %i.l)
  %.not.i176 = icmp eq i32 %3, 0
  br i1 %.not.i176, label %ISEQ_COMPILE_DATA.exit.i178, label %iseq_compile_each.exit181.thread

ISEQ_COMPILE_DATA.exit.i178:                      ; preds = %._crit_edge
  %i.hn = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.ho = getelementptr i8, ptr %i.hn, i64 128
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !21 ; 2 uses
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i178
  %i.hr = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.hs = call i64 @rb_fix2int(i64 noundef %i.hr) #37, !inline_history !174
  %i.ht = trunc i64 %i.hs to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %ISEQ_COMPILE_DATA.exit.i178
  %.0.i180 = phi i32 [ %i.ht, %bb.s ], [ %i.hp, %ISEQ_COMPILE_DATA.exit.i178 ]
  %i.hu = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i180, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.hv = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !11 ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hu, i64 16
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !34
  %i.hy = getelementptr i8, ptr %i.hw, i64 8
  store ptr %i.hu, ptr %i.hy, align 8, !tbaa !35
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !11
  br label %iseq_compile_each.exit181.thread

iseq_compile_each.exit181:                        ; preds = %bb.g
  %i.hz = getelementptr i8, ptr %.094222, i64 8
  %i.ia = getelementptr i8, ptr %.094222, i64 24
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !278
  call fastcc void @add_trace_branch_coverage(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.hz, i32 noundef %i.ib, i32 noundef %.098221, ptr noundef nonnull @.str.88, i64 noundef %i.l)
  %i.ic = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.094222, i32 noundef %3), !inline_history !174
  %.not101 = icmp eq i32 %i.ic, 0
  br i1 %.not101, label %.thread191, label %iseq_compile_each.exit181.thread

iseq_compile_each.exit181.thread:                 ; preds = %._crit_edge, %bb.t, %iseq_compile_each.exit181
  %i.id = load i64, ptr %2, align 8, !tbaa !176
  %i.ie = lshr i64 %i.id, 15
  %i.if = trunc i64 %i.ie to i32
  %i.ig = getelementptr i8, ptr %2, i64 24
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !278
  %i.ii = ptrtoint ptr %i.ao to i64
  %i.ij = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.if, i32 noundef %i.ih, i32 noundef 72, i32 noundef 1, i64 noundef %i.ii) ; 5 uses
  %i.ik = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !11 ; 2 uses
  %i.im = getelementptr i8, ptr %i.ij, i64 16
  store ptr %i.il, ptr %i.im, align 8, !tbaa !34
  %i.in = getelementptr i8, ptr %i.il, i64 8
  store ptr %i.ij, ptr %i.in, align 8, !tbaa !35
  %i.io = load i32, ptr %i.ax, align 8, !tbaa !273
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr %i.ax, align 8, !tbaa !273
  %i.iq = load ptr, ptr %i.m, align 8, !tbaa !63  ; 2 uses
  %.not.i184 = icmp eq ptr %i.iq, null
  br i1 %.not.i184, label %APPEND_LIST.exit, label %bb.u

bb.u:                                             ; preds = %iseq_compile_each.exit181.thread
  %i.ir = getelementptr i8, ptr %i.ij, i64 8
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !35
  %i.is = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.it = getelementptr i8, ptr %i.is, i64 16
  store ptr %i.ij, ptr %i.it, align 8, !tbaa !34
  %i.iu = load ptr, ptr %i.c, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %iseq_compile_each.exit181.thread, %bb.u
  %i.iv = phi ptr [ %i.ij, %iseq_compile_each.exit181.thread ], [ %i.iu, %bb.u ] ; 2 uses
  %i.iw = getelementptr i8, ptr %i.ao, i64 16
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !34
  %i.ix = getelementptr i8, ptr %i.iv, i64 8
  store ptr %i.ao, ptr %i.ix, align 8, !tbaa !35
  store ptr %i.ao, ptr %i.ik, align 8, !tbaa !11
  br label %.thread191

.thread191:                                       ; preds = %iseq_compile_each.exit165, %iseq_compile_each.exit, %new_label_body.exit155, %nd_line.exit136, %nd_line.exit174, %APPEND_LIST.exit, %iseq_compile_each.exit181
  %.6 = phi i32 [ 0, %iseq_compile_each.exit181 ], [ 1, %APPEND_LIST.exit ], [ 0, %nd_line.exit174 ], [ 0, %new_label_body.exit155 ], [ 0, %nd_line.exit136 ], [ 0, %iseq_compile_each.exit ], [ 0, %iseq_compile_each.exit165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret i32 %.6
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_case3(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 7 uses
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  %6 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 12 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 73 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %4, ptr %i.a, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !35
  store ptr %5, ptr %i.b, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !35
  store ptr %6, ptr %i.c, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.h = add i64 %i.g, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.h, -1
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = shl nsw i64 %i.g, 1
  %i.j = or disjoint i64 %i.i, 1
  br label %rb_long2num_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.k = call i64 @rb_int2big(i64 noundef %i.g) #37
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  %i.l = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr i8, ptr %.val, i64 216
  %.val.val = load i64, ptr %i.n, align 8, !tbaa !101
  %i.o = call fastcc i64 @decl_branch_base(i64 %.val.val, i64 noundef %.0.i, ptr noundef %i.l, ptr noundef nonnull @.str.89) ; 3 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !946  ; 10 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !176  ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 127                        ; 2 uses
  %.not = icmp eq i32 %i.u, 8
  br i1 %.not, label %nd_line.exit283, label %nd_line.exit

nd_line.exit:                                     ; preds = %rb_long2num_inline.exit
  %i.v = lshr i64 %i.r, 15
  %i.w = trunc i64 %i.v to i32
  %i.x = call ptr @ruby_node_name(i32 noundef %i.u) #37
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.w, ptr noundef nonnull @.str.96, ptr noundef %i.x)
  br label %.critedge279.thread

nd_line.exit283:                                  ; preds = %rb_long2num_inline.exit
  %i.y = getelementptr i8, ptr %i.q, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !948
  %.not265 = icmp eq ptr %i.z, null               ; 5 uses
  %i.aa = load i64, ptr %0, align 8, !tbaa !37
  %i.ab = and i64 %i.aa, 262144
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %nd_line.exit283
  %i.ac = getelementptr i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i

ISEQ_COMPILE_DATA.exit.i.i.i:                     ; preds = %bb.d, %nd_line.exit283
  %.0.i.i.i.i = phi ptr [ %i.ad, %bb.d ], [ null, %nd_line.exit283 ]
  %i.ae = getelementptr i8, ptr %.0.i.i.i.i, i64 96 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 4 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !7  ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 48
  %i.ak = getelementptr i8, ptr %i.af, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7  ; 4 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp samesign ugt i64 %i.aj, %i.am
  br i1 %i.an, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i
  %i.ao = icmp ult i32 %i.al, 48
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.f
  %.027.i.i.i.i = phi i32 [ %i.aq, %bb.f ], [ %i.al, %.preheader.i.i.i.i ] ; 3 uses
  %i.ap = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aq = shl nuw nsw i32 %.027.i.i.i.i, 1        ; 3 uses
  %i.ar = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.f
  %i.as = zext nneg i32 %i.aq to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.al, %.preheader.i.i.i.i ], [ %i.aq, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.am, %.preheader.i.i.i.i ], [ %i.as, %._crit_edge.i.i.loopexit.i.i ]
  %i.at = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.au = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.at, i64 noundef 1) #39 ; 6 uses
  store ptr %i.au, ptr %i.af, align 8, !tbaa !40
  store ptr %i.au, ptr %i.ae, align 8, !tbaa !40
  store ptr null, ptr %i.au, align 8, !tbaa !40
  %i.av = getelementptr i8, ptr %i.au, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !7
  %i.aw = getelementptr i8, ptr %i.au, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.aw, align 4, !tbaa !7
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i, %._crit_edge.i.i.i.i
  %i.ax = phi i32 [ %i.ah, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.af, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ %i.au, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.az = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.ba  ; 11 uses
  %i.bc = add i32 %i.ax, 48
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !7
  store i32 1, ptr %i.bb, align 8, !tbaa !193
  %i.bd = getelementptr i8, ptr %i.bb, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !194
  %i.be = getelementptr i8, ptr %0, i64 24        ; 13 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20
  %i.bg = getelementptr i8, ptr %i.bf, i64 132    ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !195 ; 2 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !195
  %i.bj = getelementptr i8, ptr %i.bb, i64 24
  store i32 %i.bh, ptr %i.bj, align 8, !tbaa !95
  %i.bk = getelementptr i8, ptr %i.bb, i64 40     ; 6 uses
  %i.bl = getelementptr i8, ptr %i.bb, i64 44     ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 4
  %i.bn = and i8 %i.bm, -16
  store i8 %i.bn, ptr %i.bl, align 4
  %i.bo = getelementptr i8, ptr %i.bb, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.bo, align 4, !tbaa !7
  %i.bp = load i64, ptr %0, align 8, !tbaa !37
  %i.bq = and i64 %i.bp, 262144
  %.not.i.i.i.i284 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i284, label %ISEQ_COMPILE_DATA.exit.i.i.i285, label %bb.g

bb.g:                                             ; preds = %new_label_body.exit
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i285

ISEQ_COMPILE_DATA.exit.i.i.i285:                  ; preds = %bb.g, %new_label_body.exit
  %.0.i.i.i.i286 = phi ptr [ %i.br, %bb.g ], [ null, %new_label_body.exit ]
  %i.bs = getelementptr i8, ptr %.0.i.i.i.i286, i64 96 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40 ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !7  ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %i.bx = add nuw nsw i64 %i.bw, 48
  %i.by = getelementptr i8, ptr %i.bt, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7  ; 4 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = icmp samesign ugt i64 %i.bx, %i.ca
  br i1 %i.cb, label %.preheader.i.i.i.i290, label %new_label_body.exit299

.preheader.i.i.i.i290:                            ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i285
  %i.cc = icmp ult i32 %i.bz, 48
  br i1 %i.cc, label %.lr.ph.i.i.i.i296, label %._crit_edge.i.i.i.i291

.lr.ph.i.i.i.i296:                                ; preds = %.preheader.i.i.i.i290, %bb.i
  %.027.i.i.i.i297 = phi i32 [ %i.ce, %bb.i ], [ %i.bz, %.preheader.i.i.i.i290 ] ; 3 uses
  %i.cd = icmp samesign ugt i32 %.027.i.i.i.i297, 1073741822
  br i1 %i.cd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i296
  call void @rb_memerror() #38
  unreachable

bb.i:                                             ; preds = %.lr.ph.i.i.i.i296
  %i.ce = shl nuw nsw i32 %.027.i.i.i.i297, 1     ; 3 uses
  %i.cf = icmp samesign ult i32 %.027.i.i.i.i297, 24
  br i1 %i.cf, label %.lr.ph.i.i.i.i296, label %._crit_edge.i.i.loopexit.i.i298, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i298:                  ; preds = %bb.i
  %i.cg = zext nneg i32 %i.ce to i64
  br label %._crit_edge.i.i.i.i291
end_hunk_4
begin_hunk_5_@compile_massign:bb.a
  %i.h = icmp eq ptr %i.e, null
  br i1 %i.h, label %compile_massign_opt.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !176
  %i.i = and i64 %.val.i, 32512
  %i.j = icmp eq i64 %i.i, 11008
  br i1 %i.j, label %.preheader80, label %compile_massign_opt.exit.thread

.preheader80:                                     ; preds = %bb.d
  %.not.i90 = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not.i90, label %.preheader78, label %.lr.ph94

.preheader78.loopexit:                            ; preds = %bb.i
  %indvars = trunc i64 %indvars.iv.next118 to i32
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader78.loopexit, %.preheader80
  %.050.i.lcssa = phi i32 [ 0, %.preheader80 ], [ %indvars, %.preheader78.loopexit ] ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = getelementptr i8, ptr %1, i64 24         ; 6 uses
  br label %bb.j

.lr.ph94:                                         ; preds = %.preheader80, %bb.i
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.i ], [ 0, %.preheader80 ] ; 4 uses
  %.046.i93 = phi ptr [ %i.z, %bb.i ], [ %i.g, %.preheader80 ] ; 2 uses
  %indvars119 = trunc i64 %indvars.iv117 to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars119, i32 1)
  %i.m = getelementptr i8, ptr %.046.i93, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !941  ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !176
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 8
  %i.r = and i32 %i.q, 127                        ; 5 uses
  switch i32 %i.r, label %compile_massign_opt.exit.thread [
    i32 25, label %bb.e
    i32 26, label %bb.e
    i32 28, label %bb.e
    i32 30, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph94, %.lr.ph94, %.lr.ph94, %.lr.ph94
  switch i64 %indvars.iv117, label %.lr.ph [
    i64 64, label %compile_massign_opt.exit.thread
    i64 0, label %._crit_edge
  ]

.lr.ph:                                           ; preds = %bb.e
  switch i32 %i.r, label %bb.g [
    i32 25, label %.lr.ph.split
    i32 26, label %.lr.ph.split
    i32 28, label %.lr.ph.split
    i32 30, label %.lr.ph.split
  ]

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.0.in.i64 = getelementptr i8, ptr %i.n, i64 32
  %.0.i65 = load i64, ptr %.0.in.i64, align 8, !tbaa !36
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %get_nd_vid.exit66

bb.f:                                             ; preds = %get_nd_vid.exit66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %get_nd_vid.exit66, !llvm.loop !1005

get_nd_vid.exit66:                                ; preds = %.lr.ph.split, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  %i.u = icmp eq i64 %i.t, %.0.i65
  br i1 %i.u, label %compile_massign_opt.exit.thread, label %bb.f

bb.g:                                             ; preds = %.lr.ph
  %i.v = tail call ptr @ruby_node_name(i32 noundef %i.r) #37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.76, ptr noundef %i.v) #38
  unreachable

._crit_edge:                                      ; preds = %bb.f, %bb.e
  switch i32 %i.r, label %bb.h [
    i32 25, label %bb.i
    i32 26, label %bb.i
    i32 28, label %bb.i
    i32 30, label %bb.i
  ]

bb.h:                                             ; preds = %._crit_edge
  %i.w = tail call ptr @ruby_node_name(i32 noundef %i.r) #37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.76, ptr noundef %i.w) #38
  unreachable

bb.i:                                             ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %.0.in.i = getelementptr i8, ptr %i.n, i64 32
  %.0.i63 = load i64, ptr %.0.in.i, align 8, !tbaa !36
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.x = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv117
  store i64 %.0.i63, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr i8, ptr %.046.i93, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !943  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %.preheader78.loopexit, label %.lr.ph94, !llvm.loop !1006

bb.j:                                             ; preds = %.preheader78, %iseq_compile_each.exit62
  %indvars.iv122.in = phi i32 [ %.050.i.lcssa, %.preheader78 ], [ %indvars.iv122, %iseq_compile_each.exit62 ]
  %.049.i96 = phi i32 [ 0, %.preheader78 ], [ %i.as, %iseq_compile_each.exit62 ] ; 2 uses
  %.055.i95 = phi ptr [ %i.e, %.preheader78 ], [ %i.ar, %iseq_compile_each.exit62 ] ; 2 uses
  %indvars.iv122 = add i32 %indvars.iv122.in, -1  ; 3 uses
  %.not58.i = icmp sgt i32 %.050.i.lcssa, %.049.i96
  %i.aa = getelementptr i8, ptr %.055.i95, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !941 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null                 ; 2 uses
  br i1 %.not58.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ac, label %iseq_compile_each.exit62, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.ab, i32 noundef 1), !inline_history !1007 ; 0 uses
  br label %iseq_compile_each.exit62

bb.m:                                             ; preds = %bb.j
  br i1 %i.ac, label %ISEQ_COMPILE_DATA.exit.i, label %bb.p

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.m
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.af = getelementptr i8, ptr %i.ae, i64 128
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !21 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.ai = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !1007
  %i.aj = tail call i64 @rb_fix2int(i64 noundef %i.ai) #37, !inline_history !1007
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %ISEQ_COMPILE_DATA.exit.i
  %.0.i60 = phi i32 [ %i.ak, %bb.n ], [ %i.ag, %ISEQ_COMPILE_DATA.exit.i ]
  %i.al = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i60, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !1007 ; 3 uses
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !11  ; 2 uses
  %i.an = getelementptr i8, ptr %i.al, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !34
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !35
  store ptr %i.al, ptr %i.l, align 8, !tbaa !11
  br label %iseq_compile_each.exit62

bb.p:                                             ; preds = %bb.m
  %i.ap = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.ab, i32 noundef 0), !inline_history !1007 ; 0 uses
  br label %iseq_compile_each.exit62

iseq_compile_each.exit62:                         ; preds = %bb.p, %bb.o, %bb.l, %bb.k
  %i.aq = getelementptr i8, ptr %.055.i95, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !943 ; 2 uses
  %i.as = add i32 %.049.i96, 1                    ; 3 uses
  %.not57.i = icmp eq ptr %i.ar, null
  br i1 %.not57.i, label %bb.q, label %bb.j, !llvm.loop !1008

bb.q:                                             ; preds = %iseq_compile_each.exit62
  %i.at = icmp sgt i32 %.050.i.lcssa, %i.as
  %i.au = sub i32 %.050.i.lcssa, %i.as
  %i.av = icmp sgt i32 %i.au, 0
  %or.cond154 = and i1 %i.at, %i.av
  br i1 %or.cond154, label %.lr.ph98.a, label %compile_massign_opt.exit

.lr.ph98.a:                                       ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %i.g, i64 24      ; 2 uses
  br i1 %.not.i90, label %nd_line.exit59.us, label %nd_line.exit59

nd_line.exit59.us:                                ; preds = %.lr.ph98.a, %nd_line.exit59.us
  %.048.i97.us = phi i32 [ %i.bc, %nd_line.exit59.us ], [ 0, %.lr.ph98.a ]
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !278
  %i.ay = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef -1, i32 noundef %i.ax, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !11  ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !34
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !35
  store ptr %i.ay, ptr %i.l, align 8, !tbaa !11
  %i.bc = add nuw nsw i32 %.048.i97.us, 1         ; 2 uses
  %exitcond126.not = icmp eq i32 %i.bc, %indvars.iv122
  br i1 %exitcond126.not, label %compile_massign_opt.exit, label %nd_line.exit59.us, !llvm.loop !1009

nd_line.exit59:                                   ; preds = %.lr.ph98.a, %nd_line.exit59
  %.048.i97 = phi i32 [ %i.bl, %nd_line.exit59 ], [ 0, %.lr.ph98.a ]
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !176
  %i.be = lshr i64 %i.bd, 15
  %i.bf = trunc i64 %i.be to i32
  %i.bg = load i32, ptr %i.aw, align 8, !tbaa !278
  %i.bh = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bf, i32 noundef %i.bg, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bi = load ptr, ptr %i.l, align 8, !tbaa !11  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !34
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !35
  store ptr %i.bh, ptr %i.l, align 8, !tbaa !11
  %i.bl = add nuw nsw i32 %.048.i97, 1            ; 2 uses
  %exitcond124.not = icmp eq i32 %i.bl, %indvars.iv122
  br i1 %exitcond124.not, label %compile_massign_opt.exit, label %nd_line.exit59, !llvm.loop !1009

compile_massign_opt.exit.thread:                  ; preds = %.lr.ph94, %bb.e, %get_nd_vid.exit66, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.r

compile_massign_opt.exit:                         ; preds = %nd_line.exit59, %nd_line.exit59.us, %bb.q
  %i.bm = tail call fastcc i32 @compile_massign_opt_lhs(ptr noundef %0, ptr noundef %1, ptr noundef %i.g), !inline_history !1010 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.ad

bb.r:                                             ; preds = %compile_massign_opt.exit.thread, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bn = zext i1 %.not to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !1011
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.bp, align 8, !tbaa !1014
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !1015
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.br, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.bt, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %7, ptr %i.bv, align 8, !tbaa !11
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %8, ptr %i.bx, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = call fastcc i32 @compile_massign0(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %4, i32 noundef %3)
  %i.ca = load ptr, ptr %4, align 8, !tbaa !1016  ; 2 uses
  %.not42103 = icmp eq ptr %i.ca, null
  br i1 %.not42103, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.r
  %i.cb = load i32, ptr %i.bq, align 4, !tbaa !1015
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph106, %._crit_edge102
  %.039104 = phi ptr [ %i.ca, %.lr.ph106 ], [ %i.cq, %._crit_edge102 ] ; 7 uses
  %i.cc = getelementptr i8, ptr %.039104, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1017
  %i.ce = sub i32 %i.cb, %i.cd
  %i.cf = getelementptr i8, ptr %.039104, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !1020
  %i.ch = add i32 %i.ce, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = shl nsw i64 %i.ci, 1
  %i.ck = or disjoint i64 %i.cj, 1
  %i.cl = getelementptr i8, ptr %.039104, i64 28  ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !1021
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %bb.s
  %i.co = getelementptr i8, ptr %.039104, i64 16
  br label %bb.t

._crit_edge102:                                   ; preds = %ELEM_INSERT_PREV.exit, %bb.s
  %i.cp = getelementptr i8, ptr %.039104, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1022 ; 2 uses
  call void @free(ptr noundef nonnull %.039104) #37
  %.not42 = icmp eq ptr %i.cq, null
  br i1 %.not42, label %._crit_edge107, label %bb.s, !llvm.loop !1023

bb.t:                                             ; preds = %.lr.ph101, %ELEM_INSERT_PREV.exit
  %.03799 = phi i32 [ 0, %.lr.ph101 ], [ %i.df, %ELEM_INSERT_PREV.exit ]
  %i.cr = load ptr, ptr %.039104, align 8, !tbaa !1024 ; 2 uses
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !1025 ; 3 uses
  %.not.i44 = icmp eq ptr %i.cs, null
  br i1 %.not.i44, label %nd_line.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !176
  %i.cu = lshr i64 %i.ct, 15
  %i.cv = trunc i64 %i.cu to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.t, %bb.u
  %.0.i45 = phi i32 [ %i.cv, %bb.u ], [ -1, %bb.t ]
  %i.cw = getelementptr i8, ptr %i.cs, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !278
  %i.cy = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i45, i32 noundef %i.cx, i32 noundef 44, i32 noundef 1, i64 noundef %i.ck) ; 4 uses
  %i.cz = getelementptr i8, ptr %i.cr, i64 16     ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !34
  %i.db = getelementptr i8, ptr %i.cy, i64 16     ; 2 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !34
  %i.dc = getelementptr i8, ptr %i.cy, i64 8
  store ptr %i.cr, ptr %i.dc, align 8, !tbaa !35
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !34
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !34 ; 2 uses
  %.not.i46 = icmp eq ptr %i.dd, null
  br i1 %.not.i46, label %ELEM_INSERT_PREV.exit, label %bb.v

bb.v:                                             ; preds = %nd_line.exit
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  store ptr %i.cy, ptr %i.de, align 8, !tbaa !35
  br label %ELEM_INSERT_PREV.exit

ELEM_INSERT_PREV.exit:                            ; preds = %nd_line.exit, %bb.v
  %i.df = add nuw nsw i32 %.03799, 1              ; 2 uses
  %i.dg = load i32, ptr %i.cl, align 4, !tbaa !1021
  %i.dh = icmp slt i32 %i.df, %i.dg
  br i1 %i.dh, label %bb.t, label %._crit_edge102, !llvm.loop !1026

._crit_edge107:                                   ; preds = %._crit_edge102, %bb.r
  %.not43 = icmp eq i32 %i.bz, 0
  br i1 %.not43, label %APPEND_LIST.exit55, label %bb.w

bb.w:                                             ; preds = %._crit_edge107
  %i.di = load ptr, ptr %i.bs, align 8, !tbaa !63 ; 2 uses
  %.not.i47 = icmp eq ptr %i.di, null
  br i1 %.not.i47, label %APPEND_LIST.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !11 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !35
  %i.dm = load ptr, ptr %i.bs, align 8, !tbaa !63
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !34
  %i.do = load ptr, ptr %i.br, align 8, !tbaa !11
  store ptr %i.do, ptr %i.dj, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.w, %bb.x
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !63 ; 2 uses
  %.not.i48 = icmp eq ptr %i.dp, null
  br i1 %.not.i48, label %APPEND_LIST.exit49, label %bb.y

bb.y:                                             ; preds = %APPEND_LIST.exit
  %i.dq = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !11 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !35
  %i.dt = load ptr, ptr %i.bu, align 8, !tbaa !63
  %i.du = getelementptr i8, ptr %i.dt, i64 16
  store ptr %i.dr, ptr %i.du, align 8, !tbaa !34
  %i.dv = load ptr, ptr %i.bt, align 8, !tbaa !11
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !11
  br label %APPEND_LIST.exit49

APPEND_LIST.exit49:                               ; preds = %APPEND_LIST.exit, %bb.y
  %i.dw = load ptr, ptr %i.bw, align 8, !tbaa !63 ; 2 uses
  %.not.i50 = icmp eq ptr %i.dw, null
  br i1 %.not.i50, label %APPEND_LIST.exit51, label %bb.z

bb.z:                                             ; preds = %APPEND_LIST.exit49
  %i.dx = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !11 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !35
  %i.ea = load ptr, ptr %i.bw, align 8, !tbaa !63
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  store ptr %i.dy, ptr %i.eb, align 8, !tbaa !34
  %i.ec = load ptr, ptr %i.bv, align 8, !tbaa !11
  store ptr %i.ec, ptr %i.dx, align 8, !tbaa !11
  br label %APPEND_LIST.exit51

APPEND_LIST.exit51:                               ; preds = %APPEND_LIST.exit49, %bb.z
  %i.ed = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  %or.cond = select i1 %.not, i1 %i.ee, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %APPEND_LIST.exit51
  %i.ef = load i64, ptr %2, align 8, !tbaa !176
  %i.eg = lshr i64 %i.ef, 15
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr i8, ptr %2, i64 24
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !278
  %i.ek = shl nuw i32 %i.ed, 1
  %i.el = or disjoint i32 %i.ek, 1
  %i.em = zext i32 %i.el to i64
  %i.en = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.eh, i32 noundef %i.ej, i32 noundef 45, i32 noundef 1, i64 noundef %i.em) ; 3 uses
  %i.eo = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !11 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.en, i64 16
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !34
  %i.er = getelementptr i8, ptr %i.ep, i64 8
  store ptr %i.en, ptr %i.er, align 8, !tbaa !35
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %APPEND_LIST.exit51
  %i.es = load ptr, ptr %i.by, align 8, !tbaa !63 ; 2 uses
  %.not.i54 = icmp eq ptr %i.es, null
  br i1 %.not.i54, label %APPEND_LIST.exit55.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
end_hunk_5
begin_hunk_6_@compile_call_precheck_freeze:bb.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !622
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %ISEQ_COMPILE_DATA.exit39, label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit39:                         ; preds = %ISEQ_COMPILE_DATA.exit.thread
  %i.ac = getelementptr i8, ptr %i.y, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = and i16 %i.ae, 8
  %.not29 = icmp eq i16 %i.af, 0
  br i1 %.not29, label %ISEQ_COMPILE_DATA.exit, label %bb.m

bb.m:                                             ; preds = %ISEQ_COMPILE_DATA.exit39
  %i.ag = tail call fastcc ptr @get_nd_recv(ptr noundef nonnull %2) ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !176
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = and i32 %i.aj, 127                      ; 2 uses
  switch i32 %i.ak, label %bb.p [
    i32 63, label %bb.n
    i32 110, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.al = tail call i64 @rb_node_str_string_val(ptr noundef nonnull %i.ag) #37
  br label %get_string_value.exit

bb.o:                                             ; preds = %bb.m
  %i.am = tail call i64 @rb_node_file_path_val(ptr noundef nonnull %i.ag) #37
  br label %get_string_value.exit

bb.p:                                             ; preds = %bb.m
  %i.an = tail call ptr @ruby_node_name(i32 noundef %i.ak) #37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.76, ptr noundef %i.an) #38
  unreachable

get_string_value.exit:                            ; preds = %bb.n, %bb.o
  %.sink.i40 = phi i64 [ %i.am, %bb.o ], [ %i.al, %bb.n ]
  %i.ao = tail call i64 @rb_obj_set_shareable(i64 noundef %.sink.i40) #37 ; 4 uses
  %i.ap = load i64, ptr %2, align 8, !tbaa !176
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 127                      ; 2 uses
  switch i32 %i.as, label %bb.r [
    i32 36, label %get_node_call_nd_mid.exit43
    i32 37, label %get_node_call_nd_mid.exit43
    i32 38, label %bb.q
    i32 40, label %get_node_call_nd_mid.exit43
    i32 39, label %bb.q
    i32 103, label %get_node_call_nd_mid.exit43
  ]

bb.q:                                             ; preds = %get_string_value.exit, %get_string_value.exit
  br label %get_node_call_nd_mid.exit43

bb.r:                                             ; preds = %get_string_value.exit
  %i.at = tail call ptr @ruby_node_name(i32 noundef %i.as) #37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.76, ptr noundef %i.at) #38
  unreachable

get_node_call_nd_mid.exit43:                      ; preds = %get_string_value.exit, %get_string_value.exit, %get_string_value.exit, %get_string_value.exit, %bb.q
  %.sink.i41 = phi i64 [ 40, %get_string_value.exit ], [ 40, %get_string_value.exit ], [ 40, %get_string_value.exit ], [ 32, %bb.q ], [ 40, %get_string_value.exit ]
  %i.au = getelementptr i8, ptr %2, i64 %.sink.i41
  %.0.i42 = load i64, ptr %i.au, align 8, !tbaa !36
  %i.av = icmp eq i64 %.0.i42, 133                ; 2 uses
  %i.aw = load i64, ptr %3, align 8, !tbaa !176
  %i.ax = lshr i64 %i.aw, 15
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr i8, ptr %3, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !278
  %i.bb = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %. = select i1 %i.av, i64 133, i64 2801
  %.63 = select i1 %i.av, i32 64, i32 62
  %i.bc = tail call fastcc ptr @new_callinfo(ptr noundef nonnull %0, i64 noundef %., i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0)
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef %.63, i32 noundef 2, i64 noundef %i.ao, i64 noundef %i.bd) ; 3 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !35
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !11
  %i.bi = icmp eq i64 %i.ao, 0
  %i.bj = and i64 %i.ao, 7
  %i.bk = icmp ne i64 %i.bj, 0
  %i.bl = or i1 %i.bi, %i.bk
  br i1 %i.bl, label %rb_obj_written.exit, label %bb.s

bb.s:                                             ; preds = %get_node_call_nd_mid.exit43
  %i.bm = ptrtoint ptr %0 to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.bm, i64 noundef %i.ao) #37
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %get_node_call_nd_mid.exit43, %bb.s
  %.not30 = icmp eq i32 %4, 0
  br i1 %.not30, label %ISEQ_COMPILE_DATA.exit, label %bb.t

bb.t:                                             ; preds = %rb_obj_written.exit
  %i.bn = load i64, ptr %3, align 8, !tbaa !176
  %i.bo = lshr i64 %i.bn, 15
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr i8, ptr %3, i64 24
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !278
  %i.bs = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.bp, i32 noundef %i.br, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bt = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !11 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bs, i64 16
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !34
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  store ptr %i.bs, ptr %i.bw, align 8, !tbaa !35
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !11
  br label %ISEQ_COMPILE_DATA.exit

ISEQ_COMPILE_DATA.exit:                           ; preds = %get_nd_args.exit.thread, %ISEQ_COMPILE_DATA.exit.thread, %bb.a, %bb.c, %get_node_call_nd_mid.exit34, %get_nd_args.exit, %ISEQ_COMPILE_DATA.exit39, %rb_obj_written.exit, %bb.t
  %.0 = phi i32 [ 1, %rb_obj_written.exit ], [ 1, %bb.t ], [ 0, %ISEQ_COMPILE_DATA.exit39 ], [ 0, %ISEQ_COMPILE_DATA.exit.thread ], [ 0, %get_nd_args.exit ], [ 0, %get_node_call_nd_mid.exit34 ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %get_nd_args.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_call(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 128) %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #1 {
bb.a:
  %7 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 9 uses
  %8 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 9 uses
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store ptr %7, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %8, ptr %i.e, align 8, !tbaa !11
  %i.f = load i64, ptr %2, align 8, !tbaa !176
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 127                        ; 2 uses
  switch i32 %i.i, label %bb.c [
    i32 36, label %get_node_call_nd_mid.exit
    i32 37, label %get_node_call_nd_mid.exit
    i32 38, label %bb.b
    i32 40, label %get_node_call_nd_mid.exit
    i32 39, label %bb.b
    i32 103, label %get_node_call_nd_mid.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %get_node_call_nd_mid.exit

bb.c:                                             ; preds = %bb.a
  %i.j = call ptr @ruby_node_name(i32 noundef %i.i) #37
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.76, ptr noundef %i.j) #38
  unreachable

get_node_call_nd_mid.exit:                        ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.sink.i = phi i64 [ 40, %bb.a ], [ 40, %bb.a ], [ 40, %bb.a ], [ 32, %bb.b ], [ 40, %bb.a ]
  %i.k = getelementptr i8, ptr %2, i64 %.sink.i
  %.0.i = load i64, ptr %i.k, align 8, !tbaa !36  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr null, ptr %i.b, align 8, !tbaa !1058
  %i.l = getelementptr i8, ptr %0, i64 24         ; 9 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = getelementptr i8, ptr %i.m, i64 72       ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !622  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store i64 0, ptr %i.c, align 8, !tbaa !36
  store ptr null, ptr %i.n, align 8, !tbaa !622
  store ptr %7, ptr %i.d, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr null, ptr %i.p, align 8, !tbaa !35
  store ptr %8, ptr %i.e, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !35
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.s = getelementptr i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1059
  %.not299 = icmp eq ptr %i.t, null
  br i1 %.not299, label %bb.f, label %bb.d, !prof !125

bb.d:                                             ; preds = %get_node_call_nd_mid.exit
  %i.u = call fastcc ptr @get_nd_recv(ptr noundef nonnull %2)
  %i.v = call fastcc ptr @iseq_builtin_function_name(i32 noundef %3, ptr noundef %i.u, i64 noundef %.0.i) ; 2 uses
  %.not145 = icmp eq ptr %i.v, null
  br i1 %.not145, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call fastcc i32 @compile_builtin_function_call(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %4, i32 noundef %5, ptr noundef %i.o, ptr noundef %8, ptr noundef %i.v)
  br label %bb.bh

bb.f:                                             ; preds = %bb.d, %get_node_call_nd_mid.exit
  br i1 %6, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = and i32 %3, 126                          ; 2 uses
  %or.cond = icmp eq i32 %i.x, 36
  %i.y = icmp eq i32 %3, 40                       ; 4 uses
  %or.cond3 = or i1 %i.y, %or.cond
  br i1 %or.cond3, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %.0.i, 3473
  br i1 %i.z, label %bb.i, label %iseq_block_param_id_p.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = call fastcc ptr @get_nd_recv(ptr noundef nonnull %2)
  %.val = load i64, ptr %i.aa, align 8, !tbaa !176
  %i.ab = and i64 %.val, 32512
  %i.ac = icmp eq i64 %i.ab, 12288
  br i1 %i.ac, label %bb.j, label %iseq_block_param_id_p.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ad = call fastcc ptr @get_nd_recv(ptr noundef nonnull %2)
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !856
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %get_dyna_var_idx_at_raw.exit.thread.i.i
  %.032.i.i = phi ptr [ %i.as, %get_dyna_var_idx_at_raw.exit.thread.i.i ], [ %0, %bb.j ]
  %.01531.i.i = phi i32 [ %i.at, %get_dyna_var_idx_at_raw.exit.thread.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.032.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 240
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !175 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %get_dyna_var_idx_at_raw.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !188
  %wide.trip.count.i.i.i = zext i32 %i.aj to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %indvars.iv.i.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36
  %i.ao = icmp eq i64 %i.an, %i.af
  br i1 %i.ao, label %get_dyna_var_idx_at_raw.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %get_dyna_var_idx_at_raw.exit.thread.i.i, label %bb.k, !llvm.loop !1027

get_dyna_var_idx_at_raw.exit.i.i:                 ; preds = %bb.k
  %i.ap = trunc nuw i64 %indvars.iv.i.i.i to i32  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %get_dyna_var_idx.exit.i, label %get_dyna_var_idx_at_raw.exit.thread.i.i

get_dyna_var_idx_at_raw.exit.thread.i.i:          ; preds = %bb.l, %get_dyna_var_idx_at_raw.exit.i.i, %.lr.ph.i.i
  %.07.i20.i.i = phi i32 [ %i.ap, %get_dyna_var_idx_at_raw.exit.i.i ], [ -1, %.lr.ph.i.i ], [ -1, %bb.l ]
  %i.ar = getelementptr i8, ptr %i.ah, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !170 ; 2 uses
  %i.at = add i32 %.01531.i.i, 1                  ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.as, null
  br i1 %.not.i.i164, label %ISEQ_COMPILE_DATA.exit.i.i, label %.lr.ph.i.i, !llvm.loop !1032

ISEQ_COMPILE_DATA.exit.i.i:                       ; preds = %get_dyna_var_idx_at_raw.exit.thread.i.i
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.av = getelementptr i8, ptr %i.au, i64 128
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !21
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %0, i32 noundef %i.aw, ptr noundef nonnull @.str.147)
  %.pre.i.i = load ptr, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !46
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre.i.i, i64 240
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !175
  br label %get_dyna_var_idx.exit.i

get_dyna_var_idx.exit.i:                          ; preds = %get_dyna_var_idx_at_raw.exit.i.i, %ISEQ_COMPILE_DATA.exit.i.i
  %i.ax = phi i32 [ %.pre.i, %ISEQ_COMPILE_DATA.exit.i.i ], [ %i.aj, %get_dyna_var_idx_at_raw.exit.i.i ]
  %.01529.i.i = phi i32 [ %i.at, %ISEQ_COMPILE_DATA.exit.i.i ], [ %.01531.i.i, %get_dyna_var_idx_at_raw.exit.i.i ] ; 6 uses
  %.122.i.i = phi i32 [ %.07.i20.i.i, %ISEQ_COMPILE_DATA.exit.i.i ], [ %i.ap, %get_dyna_var_idx_at_raw.exit.i.i ]
  %i.ay = sub i32 %i.ax, %.122.i.i                ; 2 uses
  %.not13.i.i = icmp eq i32 %.01529.i.i, 0
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %.lr.ph.i7.i.preheader

.lr.ph.i7.i.preheader:                            ; preds = %get_dyna_var_idx.exit.i
  %xtraiter = and i32 %.01529.i.i, 7              ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i7.i.prol.loopexit, label %.lr.ph.i7.i.prol

.lr.ph.i7.i.prol:                                 ; preds = %.lr.ph.i7.i.preheader, %.lr.ph.i7.i.prol
  %.01015.i.i.prol = phi i32 [ %i.bd, %.lr.ph.i7.i.prol ], [ %.01529.i.i, %.lr.ph.i7.i.preheader ]
  %.01114.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i7.i.prol ], [ %0, %.lr.ph.i7.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i7.i.prol ], [ 0, %.lr.ph.i7.i.preheader ]
  %i.az = getelementptr i8, ptr %.01114.i.i.prol, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !46
  %i.bb = getelementptr i8, ptr %i.ba, i64 168
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !170 ; 3 uses
  %i.bd = add i32 %.01015.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i7.i.prol.loopexit, label %.lr.ph.i7.i.prol, !llvm.loop !1060

.lr.ph.i7.i.prol.loopexit:                        ; preds = %.lr.ph.i7.i.prol, %.lr.ph.i7.i.preheader
  %.lcssa379.unr = phi ptr [ poison, %.lr.ph.i7.i.preheader ], [ %i.bc, %.lr.ph.i7.i.prol ]
  %.01015.i.i.unr = phi i32 [ %.01529.i.i, %.lr.ph.i7.i.preheader ], [ %i.bd, %.lr.ph.i7.i.prol ]
  %.01114.i.i.unr = phi ptr [ %0, %.lr.ph.i7.i.preheader ], [ %i.bc, %.lr.ph.i7.i.prol ]
  %i.be = icmp ult i32 %.01529.i.i, 8
  br i1 %i.be, label %._crit_edge.i.i, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i
  %.01015.i.i = phi i32 [ %i.cl, %.lr.ph.i7.i ], [ %.01015.i.i.unr, %.lr.ph.i7.i.prol.loopexit ]
  %.01114.i.i = phi ptr [ %i.ck, %.lr.ph.i7.i ], [ %.01114.i.i.unr, %.lr.ph.i7.i.prol.loopexit ]
  %i.bf = getelementptr i8, ptr %.01114.i.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !46
  %i.bh = getelementptr i8, ptr %i.bg, i64 168
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !170
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46
  %i.bl = getelementptr i8, ptr %i.bk, i64 168
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !170
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46
  %i.bp = getelementptr i8, ptr %i.bo, i64 168
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !170
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !46
  %i.bt = getelementptr i8, ptr %i.bs, i64 168
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !170
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !46
  %i.bx = getelementptr i8, ptr %i.bw, i64 168
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !170
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !46
  %i.cb = getelementptr i8, ptr %i.ca, i64 168
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !170
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46
  %i.cf = getelementptr i8, ptr %i.ce, i64 168
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !170
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !46
  %i.cj = getelementptr i8, ptr %i.ci, i64 168
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !170 ; 2 uses
  %i.cl = add i32 %.01015.i.i, -8                 ; 2 uses
  %.not.i8.i.7 = icmp eq i32 %i.cl, 0
  br i1 %.not.i8.i.7, label %._crit_edge.i.i, label %.lr.ph.i7.i, !llvm.loop !277

._crit_edge.i.i:                                  ; preds = %.lr.ph.i7.i.prol.loopexit, %.lr.ph.i7.i, %get_dyna_var_idx.exit.i
  %.011.lcssa.i.i = phi ptr [ %0, %get_dyna_var_idx.exit.i ], [ %.lcssa379.unr, %.lr.ph.i7.i.prol.loopexit ], [ %i.ck, %.lr.ph.i7.i ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.011.lcssa.i.i, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !46 ; 4 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 176
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !275
  %i.cq = icmp eq ptr %i.cp, %.011.lcssa.i.i
  br i1 %i.cq, label %bb.m, label %iseq_block_param_id_p.exit.thread

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.cr = getelementptr i8, ptr %i.cn, i64 16
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = and i16 %i.cs, 64
  %.not12.i.i = icmp eq i16 %i.ct, 0
  br i1 %.not12.i.i, label %iseq_block_param_id_p.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr i8, ptr %i.cn, i64 240
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !175
  %i.cw = getelementptr i8, ptr %i.cn, i64 44
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !231
  %i.cy = sub i32 %i.cv, %i.cx
  %i.cz = icmp eq i32 %i.cy, %i.ay
  br i1 %i.cz, label %iseq_block_param_id_p.exit, label %iseq_block_param_id_p.exit.thread

iseq_block_param_id_p.exit:                       ; preds = %bb.n
  %i.da = call fastcc ptr @get_nd_recv(ptr noundef nonnull %2) ; 2 uses
  %.not.i166 = icmp eq ptr %i.da, null
  br i1 %.not.i166, label %nd_line.exit, label %bb.o

bb.o:                                             ; preds = %iseq_block_param_id_p.exit
  %i.db = load i64, ptr %i.da, align 8, !tbaa !176
  %i.dc = lshr i64 %i.db, 15
  %i.dd = trunc i64 %i.dc to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %iseq_block_param_id_p.exit, %bb.o
  %.0.i167 = phi i32 [ %i.dd, %bb.o ], [ -1, %iseq_block_param_id_p.exit ]
  %i.de = call fastcc ptr @get_nd_recv(ptr noundef nonnull %2)
  %i.df = getelementptr i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !278
  %i.dh = add i32 %i.ay, 2
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 1
  %i.dk = or disjoint i64 %i.dj, 1
  %i.dl = sext i32 %.01529.i.i to i64
  %i.dm = shl nsw i64 %i.dl, 1
  %i.dn = or disjoint i64 %i.dm, 1
  %i.do = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i167, i32 noundef %i.dg, i32 noundef 5, i32 noundef 2, i64 noundef %i.dk, i64 noundef %i.dn) ; 3 uses
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 16
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !34
  %i.dr = getelementptr i8, ptr %i.dp, i64 8
  store ptr %i.do, ptr %i.dr, align 8, !tbaa !35
  store ptr %i.do, ptr %i.d, align 8, !tbaa !11
  br label %bb.r

iseq_block_param_id_p.exit.thread:                ; preds = %bb.n, %bb.m, %._crit_edge.i.i, %bb.i, %bb.h
  %i.ds = call fastcc ptr @get_nd_recv(ptr noundef nonnull readonly %2) ; 3 uses
  %.not.i168 = icmp eq ptr %i.ds, null
  br i1 %.not.i168, label %private_recv_p.exit.thread, label %bb.p

bb.p:                                             ; preds = %iseq_block_param_id_p.exit.thread
  %.val.i = load i64, ptr %i.ds, align 8, !tbaa !176
  %i.dt = and i64 %.val.i, 32512
  %i.du = icmp eq i64 %i.dt, 24064
  br i1 %i.du, label %private_recv_p.exit, label %private_recv_p.exit.thread

private_recv_p.exit:                              ; preds = %bb.p
  %i.dv = getelementptr i8, ptr %i.ds, i64 32
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !1038
  %.not = icmp eq i64 %i.dw, 0
  br i1 %.not, label %private_recv_p.exit.thread, label %nd_line.exit172

nd_line.exit172:                                  ; preds = %private_recv_p.exit
  %i.dx = load i64, ptr %2, align 8, !tbaa !176
  %i.dy = lshr i64 %i.dx, 15
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = getelementptr i8, ptr %2, i64 24
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !278
  %i.ec = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef 18, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 16
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !34
  %i.ef = getelementptr i8, ptr %i.ed, i64 8
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !35
  store ptr %i.ec, ptr %i.d, align 8, !tbaa !11
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !7
  %i.eh = or i32 %i.eg, 4
  store i32 %i.eh, ptr %i.a, align 4, !tbaa !7
  br label %bb.r

private_recv_p.exit.thread:                       ; preds = %iseq_block_param_id_p.exit.thread, %bb.p, %private_recv_p.exit
  %i.ei = call fastcc ptr @get_nd_recv(ptr noundef nonnull %2) ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %ISEQ_COMPILE_DATA.exit.i, label %iseq_compile_each.exit

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %private_recv_p.exit.thread
  %i.ek = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.el = getelementptr i8, ptr %i.ek, i64 128
  %i.em = load i32, ptr %i.el, align 8, !tbaa !21 ; 2 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.q, label %iseq_compile_each.exit.thread

bb.q:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.eo = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.ep = call i64 @rb_fix2int(i64 noundef %i.eo) #37, !inline_history !174
  %i.eq = trunc i64 %i.ep to i32
  br label %iseq_compile_each.exit.thread

iseq_compile_each.exit:                           ; preds = %private_recv_p.exit.thread
  %9 = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %i.ei, i32 noundef 0), !inline_history !174
  %10 = icmp ne i32 %9, 0                         ; 2 uses
  %brmerge.not = and i1 %10, %i.y
  br i1 %brmerge.not, label %.thread.thread, label %11

iseq_compile_each.exit.thread:                    ; preds = %ISEQ_COMPILE_DATA.exit.i, %bb.q
  %.0.i175 = phi i32 [ %i.eq, %bb.q ], [ %i.em, %ISEQ_COMPILE_DATA.exit.i ]
  %i.er = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i175, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.es = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.et = getelementptr i8, ptr %i.er, i64 16
  store ptr %i.es, ptr %i.et, align 8, !tbaa !34
  %i.eu = getelementptr i8, ptr %i.es, i64 8
  store ptr %i.er, ptr %i.eu, align 8, !tbaa !35
  store ptr %i.er, ptr %i.d, align 8, !tbaa !11
  br i1 %i.y, label %.thread.thread, label %.thread

bb.r:                                             ; preds = %nd_line.exit172, %nd_line.exit
  br i1 %i.y, label %.thread.thread, label %.thread

.thread.thread:                                   ; preds = %iseq_compile_each.exit.thread, %bb.r, %iseq_compile_each.exit
  %i.ev = call fastcc ptr @qcall_branch_start(ptr noundef %0, ptr noundef %7, ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef %4)
  br label %bb.v

11:                                               ; preds = %iseq_compile_each.exit
  br i1 %10, label %.thread, label %bb.bh

bb.s:                                             ; preds = %bb.g
  %or.cond5 = icmp eq i32 %i.x, 38
  br i1 %or.cond5, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %.not.i176 = icmp eq ptr %4, null
  br i1 %.not.i176, label %nd_line.exit178, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = load i64, ptr %4, align 8, !tbaa !176
  %i.ex = lshr i64 %i.ew, 15
  %i.ey = trunc i64 %i.ex to i32
  br label %nd_line.exit178

nd_line.exit178:                                  ; preds = %bb.t, %bb.u
  %.0.i177 = phi i32 [ %i.ey, %bb.u ], [ -1, %bb.t ]
  %i.ez = getelementptr i8, ptr %4, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !278
  %i.fb = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i177, i32 noundef %i.fa, i32 noundef 18, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fc = load ptr, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 16
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !34
  %i.fe = getelementptr i8, ptr %i.fc, i64 8
  store ptr %i.fb, ptr %i.fe, align 8, !tbaa !35
  store ptr %i.fb, ptr %i.d, align 8, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %iseq_compile_each.exit.thread, %bb.r, %11, %bb.s, %nd_line.exit178, %bb.f
  %.not149 = icmp eq i32 %3, 39
  br i1 %.not149, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.thread.thread, %.thread
  %.2297 = phi ptr [ %i.ev, %.thread.thread ], [ null, %.thread ]
  %i.ff = load i64, ptr %2, align 8, !tbaa !176
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = and i32 %i.fh, 127                      ; 2 uses
  switch i32 %i.fi, label %bb.x [
    i32 36, label %.sink.split.i
    i32 37, label %.sink.split.i
    i32 38, label %bb.w
    i32 40, label %.sink.split.i
    i32 39, label %get_nd_args.exit
    i32 103, label %.sink.split.i
  ]

bb.w:                                             ; preds = %bb.v
  br label %.sink.split.i

bb.x:                                             ; preds = %bb.v
  %i.fj = call ptr @ruby_node_name(i32 noundef %i.fi) #37
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.76, ptr noundef %i.fj) #38
  unreachable

.sink.split.i:                                    ; preds = %bb.w, %bb.v, %bb.v, %bb.v, %bb.v
  %.sink8.i = phi i64 [ 48, %bb.v ], [ 48, %bb.v ], [ 40, %bb.w ], [ 48, %bb.v ], [ 48, %bb.v ]
  %i.fk = getelementptr i8, ptr %2, i64 %.sink8.i
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !219
  br label %get_nd_args.exit

get_nd_args.exit:                                 ; preds = %bb.v, %.sink.split.i
  %.0.i180 = phi ptr [ null, %bb.v ], [ %i.fl, %.sink.split.i ]
  %i.fm = call fastcc i64 @setup_args(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %.0.i180, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4
  br i1 %i.fn, label %bb.bh, label %bb.y

bb.y:                                             ; preds = %.thread, %get_nd_args.exit
  %.2298 = phi ptr [ %.2297, %get_nd_args.exit ], [ null, %.thread ]
  %.0140 = phi i64 [ %i.fm, %get_nd_args.exit ], [ 1, %.thread ] ; 8 uses
  %i.fo = load ptr, ptr %i.p, align 8, !tbaa !63  ; 2 uses
  %.not.i181 = icmp eq ptr %i.fo, null
  br i1 %.not.i181, label %APPEND_LIST.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !11 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 8
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !35
  %i.fs = load ptr, ptr %i.p, align 8, !tbaa !63
  %i.ft = getelementptr i8, ptr %i.fs, i64 16
  store ptr %i.fq, ptr %i.ft, align 8, !tbaa !34
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !11
  store ptr %i.fu, ptr %i.fp, align 8, !tbaa !11
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.y, %bb.z
  %i.fv = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.fw = getelementptr i8, ptr %i.fv, i64 152
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !45
  %i.fy = load i16, ptr %i.fx, align 4
  %i.fz = and i16 %i.fy, 8
  %.not150 = icmp eq i16 %i.fz, 0
  br i1 %.not150, label %.thread294, label %bb.aa

bb.aa:                                            ; preds = %APPEND_LIST.exit
  %.pr.i = load i64, ptr @compile_call.rbimpl_id, align 8, !tbaa !36 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.i
  %i.ga = call i64 @rb_intern2(ptr noundef nonnull @.str.104, i64 noundef 3) #37 ; 3 uses
  store i64 %i.ga, ptr @compile_call.rbimpl_id, align 8, !tbaa !36
  %.not.i185 = icmp eq i64 %i.ga, 0
  br i1 %.not.i185, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !230

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.aa
  %.lcssa.i = phi i64 [ %.pr.i, %bb.aa ], [ %i.ga, %.lr.ph.i ]
  %i.gb = icmp eq i64 %.0.i, %.lcssa.i
  %i.gc = icmp eq ptr %i.o, null
  %or.cond7 = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond7, label %bb.ab, label %.thread294

bb.ab:                                            ; preds = %rbimpl_intern_const.exit
  %i.gd = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ge = and i32 %i.gd, 2
  %.not151 = icmp eq i32 %i.ge, 0
  br i1 %.not151, label %nd_line.exit192, label %.thread294

nd_line.exit192:                                  ; preds = %bb.ab
  %i.gf = load i64, ptr %2, align 8, !tbaa !176
  %i.gg = lshr i64 %i.gf, 15
  %i.gh = trunc i64 %i.gg to i32
  %i.gi = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !278
  %i.gk = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gh, i32 noundef %i.gj, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.gl = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !11 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gk, i64 16
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !34
  %i.go = getelementptr i8, ptr %i.gm, i64 8
  store ptr %i.gk, ptr %i.go, align 8, !tbaa !35
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !11
  %i.gp = load i64, ptr %2, align 8, !tbaa !176
  %i.gq = lshr i64 %i.gp, 15
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = load i32, ptr %i.gi, align 8, !tbaa !278
  %i.gt = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gr, i32 noundef %i.gs, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.gu = load ptr, ptr %i.gl, align 8, !tbaa !11 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gt, i64 16
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !34
  %i.gw = getelementptr i8, ptr %i.gu, i64 8
  store ptr %i.gt, ptr %i.gw, align 8, !tbaa !35
  store ptr %i.gt, ptr %i.gl, align 8, !tbaa !11
  br label %.thread294

.thread294:                                       ; preds = %APPEND_LIST.exit, %rbimpl_intern_const.exit, %nd_line.exit192, %bb.ab
  %i.gx = phi i1 [ false, %bb.ab ], [ true, %nd_line.exit192 ], [ false, %rbimpl_intern_const.exit ], [ false, %APPEND_LIST.exit ]
  %i.gy = load ptr, ptr %i.q, align 8, !tbaa !63  ; 2 uses
  %.not.i194 = icmp eq ptr %i.gy, null
  br i1 %.not.i194, label %APPEND_LIST.exit195, label %bb.ac

bb.ac:                                            ; preds = %.thread294
  %i.gz = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !11 ; 2 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 8
  store ptr %i.gy, ptr %i.hb, align 8, !tbaa !35
  %i.hc = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.hd = getelementptr i8, ptr %i.hc, i64 16
  store ptr %i.ha, ptr %i.hd, align 8, !tbaa !34
  %i.he = load ptr, ptr %i.e, align 8, !tbaa !11
  store ptr %i.he, ptr %i.gz, align 8, !tbaa !11
  br label %APPEND_LIST.exit195

APPEND_LIST.exit195:                              ; preds = %.thread294, %bb.ac
  %.pre322 = load i32, ptr %i.a, align 4, !tbaa !7 ; 3 uses
  switch i32 %3, label %APPEND_LIST.exit195._crit_edge321 [
    i32 39, label %bb.ad
    i32 38, label %APPEND_LIST.exit195._crit_edge
  ]

bb.ad:                                            ; preds = %APPEND_LIST.exit195
  %i.hf = or i32 %.pre322, 8
  br label %APPEND_LIST.exit195._crit_edge

APPEND_LIST.exit195._crit_edge:                   ; preds = %APPEND_LIST.exit195, %bb.ad
  %i.hg = phi i32 [ %i.hf, %bb.ad ], [ %.pre322, %APPEND_LIST.exit195 ]
  %i.hh = or i32 %i.hg, 4                         ; 2 uses
  store i32 %i.hh, ptr %i.a, align 4, !tbaa !7
  br label %APPEND_LIST.exit195._crit_edge321

APPEND_LIST.exit195._crit_edge321:                ; preds = %APPEND_LIST.exit195, %APPEND_LIST.exit195._crit_edge
  %i.hi = phi i32 [ %i.hh, %APPEND_LIST.exit195._crit_edge ], [ %.pre322, %APPEND_LIST.exit195 ]
  %i.hj = and i32 %i.hi, 2114
  %or.cond158 = icmp eq i32 %i.hj, 66
  br i1 %or.cond158, label %bb.ae, label %nd_line.exit202

bb.ae:                                            ; preds = %APPEND_LIST.exit195._crit_edge321
  %.not.i196 = icmp eq ptr %4, null
  br i1 %.not.i196, label %nd_line.exit198, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hk = load i64, ptr %4, align 8, !tbaa !176
  %i.hl = lshr i64 %i.hk, 15
  %i.hm = trunc i64 %i.hl to i32
  br label %nd_line.exit198

nd_line.exit198:                                  ; preds = %bb.ae, %bb.af
  %.0.i197 = phi i32 [ %i.hm, %bb.af ], [ -1, %bb.ae ]
  %i.hn = getelementptr i8, ptr %4, i64 24
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !278
  %i.hp = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i197, i32 noundef %i.ho, i32 noundef 36, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.hq = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !11 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hp, i64 16
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !34
  %i.ht = getelementptr i8, ptr %i.hr, i64 8
  store ptr %i.hp, ptr %i.ht, align 8, !tbaa !35
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !11
  br label %nd_line.exit202

nd_line.exit202:                                  ; preds = %nd_line.exit198, %APPEND_LIST.exit195._crit_edge321
  %i.hu = load i64, ptr %0, align 8, !tbaa !37
  %i.hv = and i64 %i.hu, 262144
  %.not.i.i.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %nd_line.exit202
  %i.hw = load ptr, ptr %i.l, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i

ISEQ_COMPILE_DATA.exit.i.i.i:                     ; preds = %bb.ag, %nd_line.exit202
  %.0.i.i.i.i = phi ptr [ %i.hw, %bb.ag ], [ null, %nd_line.exit202 ]
  %i.hx = getelementptr i8, ptr %.0.i.i.i.i, i64 96 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !40 ; 4 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 8
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !7  ; 2 uses
  %i.ib = zext i32 %i.ia to i64
  %i.ic = add nuw nsw i64 %i.ib, 48
end_hunk_6
begin_hunk_7_@compile_call:bb.a
  %i.my = shl nuw i32 %spec.select.i235, 16
  %i.mz = zext i32 %i.my to i64
  %i.na = or disjoint i64 %i.mx, %i.mz
  %i.nb = shl nuw nsw i32 %.0.i233, 1
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = or disjoint i64 %i.na, %i.nc
  %i.ne = or disjoint i64 %i.nd, 1
  %i.nf = inttoptr i64 %i.ne to ptr
  br label %vm_ci_new_.exit.i239

bb.bc:                                            ; preds = %bb.ba, %bb.az
  %i.ng = call ptr @rb_vm_ci_lookup(i64 noundef %.0.i, i32 noundef %spec.select.i235, i32 noundef %.0.i233, ptr noundef %i.mj) #37
  br label %vm_ci_new_.exit.i239

vm_ci_new_.exit.i239:                             ; preds = %bb.bc, %bb.bb
  %.0.i.i240 = phi ptr [ %i.ng, %bb.bc ], [ %i.nf, %bb.bb ] ; 2 uses
  %i.nh = ptrtoint ptr %.0.i.i240 to i64          ; 3 uses
  %i.ni = icmp eq ptr %.0.i.i240, null
  %i.nj = and i64 %i.nh, 7
  %i.nk = icmp ne i64 %i.nj, 0
  %i.nl = or i1 %i.ni, %i.nk
  br i1 %i.nl, label %nd_line.exit244, label %nd_line.exit244.sink.split

nd_line.exit244.sink.split:                       ; preds = %vm_ci_new_.exit.i239, %vm_ci_new_.exit.i
  %.sink364 = phi i64 [ %i.ma, %vm_ci_new_.exit.i ], [ %i.nh, %vm_ci_new_.exit.i239 ] ; 2 uses
  %.ph = phi ptr [ %i.lc, %vm_ci_new_.exit.i ], [ %i.mj, %vm_ci_new_.exit.i239 ]
  %i.nm = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.nm, i64 noundef %.sink364) #37
  br label %nd_line.exit244

nd_line.exit244:                                  ; preds = %nd_line.exit244.sink.split, %vm_ci_new_.exit.i239, %vm_ci_new_.exit.i
  %.0139.pre-phi = phi i64 [ %i.ma, %vm_ci_new_.exit.i ], [ %i.nh, %vm_ci_new_.exit.i239 ], [ %.sink364, %nd_line.exit244.sink.split ]
  %i.nn = phi ptr [ %i.lc, %vm_ci_new_.exit.i ], [ %i.mj, %vm_ci_new_.exit.i239 ], [ %.ph, %nd_line.exit244.sink.split ] ; 2 uses
  %i.no = load i64, ptr %2, align 8, !tbaa !176
  %i.np = lshr i64 %i.no, 15
  %i.nq = trunc i64 %i.np to i32
  %i.nr = getelementptr i8, ptr %2, i64 24
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !278
  %i.nt = ptrtoint ptr %i.iu to i64
  %i.nu = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.nq, i32 noundef %i.ns, i32 noundef 58, i32 noundef 2, i64 noundef %.0139.pre-phi, i64 noundef %i.nt) ; 3 uses
  %i.nv = getelementptr i8, ptr %1, i64 24        ; 12 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !11 ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nu, i64 16
  store ptr %i.nw, ptr %i.nx, align 8, !tbaa !34
  %i.ny = getelementptr i8, ptr %i.nw, i64 8
  store ptr %i.nu, ptr %i.ny, align 8, !tbaa !35
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !11
  %i.nz = load i32, ptr %i.jc, align 8, !tbaa !273
  %i.oa = add i32 %i.nz, 1
  store i32 %i.oa, ptr %i.jc, align 8, !tbaa !273
  %.not.i245 = icmp eq ptr %4, null
  br i1 %.not.i245, label %nd_line.exit247, label %bb.bd

bb.bd:                                            ; preds = %nd_line.exit244
  %i.ob = load i64, ptr %4, align 8, !tbaa !176
  %i.oc = lshr i64 %i.ob, 15
  %i.od = trunc i64 %i.oc to i32
  br label %nd_line.exit247

nd_line.exit247:                                  ; preds = %nd_line.exit244, %bb.bd
  %.0.i246 = phi i32 [ %i.od, %bb.bd ], [ -1, %nd_line.exit244 ]
  %i.oe = getelementptr i8, ptr %4, i64 24        ; 5 uses
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !278
  %.pr.i248 = load i64, ptr @compile_call.rbimpl_id.158, align 8, !tbaa !36 ; 2 uses
  %.not4.i249 = icmp eq i64 %.pr.i248, 0
  br i1 %.not4.i249, label %.lr.ph.i251, label %nd_line.exit266

.lr.ph.i251:                                      ; preds = %nd_line.exit247, %.lr.ph.i251
  %i.og = call i64 @rb_intern2(ptr noundef nonnull @.str.159, i64 noundef 10) #37 ; 3 uses
  store i64 %i.og, ptr @compile_call.rbimpl_id.158, align 8, !tbaa !36
  %.not.i252 = icmp eq i64 %i.og, 0
  br i1 %.not.i252, label %.lr.ph.i251, label %nd_line.exit266, !llvm.loop !230

nd_line.exit266:                                  ; preds = %.lr.ph.i251, %nd_line.exit247
  %.lcssa.i250 = phi i64 [ %.pr.i248, %nd_line.exit247 ], [ %i.og, %.lr.ph.i251 ]
  %i.oh = load i32, ptr %i.a, align 4, !tbaa !7
  %i.oi = or i32 %i.oh, 4
  %i.oj = zext i32 %i.oi to i64
  %i.ok = shl nuw nsw i64 %i.oj, 1
  %i.ol = or disjoint i64 %i.ok, 1
  %i.om = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %.0.i246, i32 noundef %i.of, i64 noundef %.lcssa.i250, i64 noundef %.0140, ptr noundef %i.o, i64 noundef %i.ol, ptr noundef %i.nn) ; 3 uses
  %i.on = load ptr, ptr %i.nv, align 8, !tbaa !11 ; 2 uses
  %i.oo = getelementptr i8, ptr %i.om, i64 16
  store ptr %i.on, ptr %i.oo, align 8, !tbaa !34
  %i.op = getelementptr i8, ptr %i.on, i64 8
  store ptr %i.om, ptr %i.op, align 8, !tbaa !35
  store ptr %i.om, ptr %i.nv, align 8, !tbaa !11
  %i.oq = load i64, ptr %4, align 8, !tbaa !176
  %i.or = lshr i64 %i.oq, 15
  %i.os = trunc i64 %i.or to i32
  %i.ot = load i32, ptr %i.oe, align 8, !tbaa !278
  %i.ou = ptrtoint ptr %i.kh to i64
  %i.ov = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.os, i32 noundef %i.ot, i32 noundef 72, i32 noundef 1, i64 noundef %i.ou) ; 4 uses
  %i.ow = load ptr, ptr %i.nv, align 8, !tbaa !11 ; 2 uses
  %i.ox = getelementptr i8, ptr %i.ov, i64 16
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !34
  %i.oy = getelementptr i8, ptr %i.ow, i64 8
  store ptr %i.ov, ptr %i.oy, align 8, !tbaa !35
  %i.oz = load i32, ptr %i.kp, align 8, !tbaa !273
  %i.pa = add i32 %i.oz, 1
  store i32 %i.pa, ptr %i.kp, align 8, !tbaa !273
  %i.pb = getelementptr i8, ptr %i.iu, i64 16
  store ptr %i.ov, ptr %i.pb, align 8, !tbaa !34
  %i.pc = getelementptr i8, ptr %i.ov, i64 8
  store ptr %i.iu, ptr %i.pc, align 8, !tbaa !35
  store ptr %i.iu, ptr %i.nv, align 8, !tbaa !11
  %i.pd = load i64, ptr %4, align 8, !tbaa !176
  %i.pe = lshr i64 %i.pd, 15
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = load i32, ptr %i.oe, align 8, !tbaa !278
  %i.ph = load i32, ptr %i.a, align 4, !tbaa !7
  %i.pi = zext i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 1
  %i.pk = or disjoint i64 %i.pj, 1
  %i.pl = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.pf, i32 noundef %i.pg, i64 noundef %.0.i, i64 noundef %.0140, ptr noundef %i.o, i64 noundef %i.pk, ptr noundef %i.nn) ; 3 uses
  %i.pm = load ptr, ptr %i.nv, align 8, !tbaa !11 ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pl, i64 16
  store ptr %i.pm, ptr %i.pn, align 8, !tbaa !34
  %i.po = getelementptr i8, ptr %i.pm, i64 8
  store ptr %i.pl, ptr %i.po, align 8, !tbaa !35
  store ptr %i.pl, ptr %i.nv, align 8, !tbaa !11
  %i.pp = load i64, ptr %4, align 8, !tbaa !176
  %i.pq = lshr i64 %i.pp, 15
  %i.pr = trunc i64 %i.pq to i32
  %i.ps = load i32, ptr %i.oe, align 8, !tbaa !278
  %i.pt = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.pr, i32 noundef %i.ps, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.pu = load ptr, ptr %i.nv, align 8, !tbaa !11 ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pt, i64 16
  store ptr %i.pu, ptr %i.pv, align 8, !tbaa !34
  %i.pw = getelementptr i8, ptr %i.pu, i64 8
  store ptr %i.pt, ptr %i.pw, align 8, !tbaa !35
  %i.px = getelementptr i8, ptr %i.kh, i64 16
  store ptr %i.pt, ptr %i.px, align 8, !tbaa !34
  %i.py = getelementptr i8, ptr %i.pt, i64 8
  store ptr %i.kh, ptr %i.py, align 8, !tbaa !35
  store ptr %i.kh, ptr %i.nv, align 8, !tbaa !11
  %i.pz = load i64, ptr %4, align 8, !tbaa !176
  %i.qa = lshr i64 %i.pz, 15
  %i.qb = trunc i64 %i.qa to i32
  %i.qc = load i32, ptr %i.oe, align 8, !tbaa !278
  %i.qd = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.qb, i32 noundef %i.qc, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.qe = load ptr, ptr %i.nv, align 8, !tbaa !11 ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qd, i64 16
  store ptr %i.qe, ptr %i.qf, align 8, !tbaa !34
  %i.qg = getelementptr i8, ptr %i.qe, i64 8
  store ptr %i.qd, ptr %i.qg, align 8, !tbaa !35
  store ptr %i.qd, ptr %i.nv, align 8, !tbaa !11
  br label %bb.bg

bb.be:                                            ; preds = %new_label_body.exit223
  %.not.i268 = icmp eq ptr %4, null
  br i1 %.not.i268, label %nd_line.exit270, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.qh = load i64, ptr %4, align 8, !tbaa !176
  %i.qi = lshr i64 %i.qh, 15
  %i.qj = trunc i64 %i.qi to i32
  br label %nd_line.exit270

nd_line.exit270:                                  ; preds = %bb.be, %bb.bf
  %.0.i269 = phi i32 [ %i.qj, %bb.bf ], [ -1, %bb.be ]
  %i.qk = getelementptr i8, ptr %4, i64 24
  %i.ql = load i32, ptr %i.qk, align 8, !tbaa !278
  %i.qm = load i32, ptr %i.a, align 4, !tbaa !7
  %i.qn = zext i32 %i.qm to i64
  %i.qo = shl nuw nsw i64 %i.qn, 1
  %i.qp = or disjoint i64 %i.qo, 1
  %i.qq = load ptr, ptr %i.b, align 8, !tbaa !1058
  %i.qr = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %.0.i269, i32 noundef %i.ql, i64 noundef %.0.i, i64 noundef %.0140, ptr noundef %i.o, i64 noundef %i.qp, ptr noundef %i.qq) ; 3 uses
  %i.qs = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !11 ; 2 uses
  %i.qu = getelementptr i8, ptr %i.qr, i64 16
  store ptr %i.qt, ptr %i.qu, align 8, !tbaa !34
  %i.qv = getelementptr i8, ptr %i.qt, i64 8
  store ptr %i.qr, ptr %i.qv, align 8, !tbaa !35
  store ptr %i.qr, ptr %i.qs, align 8, !tbaa !11
  br label %bb.bg

bb.bg:                                            ; preds = %nd_line.exit270, %nd_line.exit266
  %i.qw = load i64, ptr %i.c, align 8, !tbaa !36
  call fastcc void @qcall_branch_end(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %.2298, i64 noundef %i.qw, ptr noundef nonnull %2, ptr noundef nonnull %4)
  %.not156 = icmp eq i32 %5, 0
  br i1 %.not156, label %bb.bh, label %nd_line.exit273

nd_line.exit273:                                  ; preds = %bb.bg
  %i.qx = load i64, ptr %4, align 8, !tbaa !176
  %i.qy = lshr i64 %i.qx, 15
  %i.qz = trunc i64 %i.qy to i32
  %i.ra = getelementptr i8, ptr %4, i64 24
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !278
  %i.rc = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.qz, i32 noundef %i.rb, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.rd = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !11 ; 2 uses
  %i.rf = getelementptr i8, ptr %i.rc, i64 16
  store ptr %i.re, ptr %i.rf, align 8, !tbaa !34
  %i.rg = getelementptr i8, ptr %i.re, i64 8
  store ptr %i.rc, ptr %i.rg, align 8, !tbaa !35
  store ptr %i.rc, ptr %i.rd, align 8, !tbaa !11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %nd_line.exit273, %get_nd_args.exit, %11, %bb.e
  %.1 = phi i32 [ %i.w, %bb.e ], [ 0, %11 ], [ 0, %get_nd_args.exit ], [ 1, %nd_line.exit273 ], [ 1, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_super(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef range(i32 0, 128) %4) unnamed_addr #1 {
ISEQ_COMPILE_DATA.exit198:
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 16 uses
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store ptr null, ptr %i.b, align 8, !tbaa !1058
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = getelementptr i8, ptr %i.g, i64 72       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !622  ; 3 uses
  store ptr %5, ptr %i.e, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr null, ptr %i.j, align 8, !tbaa !35
  store ptr null, ptr %i.h, align 8, !tbaa !622
  %i.k = icmp eq i32 %4, 41
  br i1 %i.k, label %bb.a, label %bb.e

bb.a:                                             ; preds = %ISEQ_COMPILE_DATA.exit198
  %i.l = getelementptr i8, ptr %2, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1061
  %i.n = call fastcc i64 @setup_args(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %i.m, ptr noundef %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = call i64 @rb_fix2int(i64 noundef %i.n) #37
  %i.q = trunc i64 %i.p to i32
  %i.r = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.s = and i32 %i.r, 2114
  %or.cond194 = icmp eq i32 %i.s, 66
  br i1 %or.cond194, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %2, align 8, !tbaa !176
  %i.u = lshr i64 %i.t, 15
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr i8, ptr %2, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !278
  %i.y = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef %i.x, i32 noundef 36, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !34
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !35
  store ptr %i.y, ptr %i.e, align 8, !tbaa !11
  %.pre290 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ac = phi i32 [ %i.r, %bb.b ], [ %.pre290, %bb.c ]
  %i.ad = and i32 %i.ac, 2
  %i.ae = icmp eq i32 %i.ad, 0
  br label %bb.ab

bb.e:                                             ; preds = %ISEQ_COMPILE_DATA.exit198
  %i.af = getelementptr i8, ptr %i.d, i64 176
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !275 ; 6 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 16     ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 15 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 16     ; 7 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211 ; 5 uses
  %.not5.i = icmp eq ptr %0, %i.ag
  br i1 %.not5.i, label %get_lvar_level.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.am = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.d, %bb.e ]
  %.06.i = phi i32 [ %i.an, %.lr.ph.i ], [ 0, %bb.e ]
  %i.an = add i32 %.06.i, 1                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !170 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 176
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !275
  %.not.i202 = icmp eq ptr %i.ap, %i.at
  br i1 %.not.i202, label %get_lvar_level.exit, label %.lr.ph.i, !llvm.loop !838

get_lvar_level.exit:                              ; preds = %.lr.ph.i, %bb.e
  %.0.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.an, %.lr.ph.i ] ; 9 uses
  %i.au = getelementptr i8, ptr %i.ai, i64 24     ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !190 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %get_lvar_level.exit
  %i.ax = getelementptr i8, ptr %i.ai, i64 240
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.0174262 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.f ] ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !175
  %i.az = sub i32 %i.ay, %.0174262
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.az, i32 noundef %.0.lcssa.i)
  %i.ba = add nuw nsw i32 %.0174262, 1            ; 3 uses
  %i.bb = load i32, ptr %i.au, align 8, !tbaa !190
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.f, label %._crit_edge, !llvm.loop !1063

._crit_edge:                                      ; preds = %bb.f, %get_lvar_level.exit
  %.0174.lcssa = phi i32 [ 0, %get_lvar_level.exit ], [ %i.ba, %bb.f ] ; 2 uses
  %i.bd = load i16, ptr %i.aj, align 8            ; 2 uses
  %i.be = and i16 %i.bd, 8192
  %.not = icmp eq i16 %i.be, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  store i32 8192, ptr %i.a, align 4, !tbaa !7
  %i.bf = getelementptr i8, ptr %i.ai, i64 240
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !175
  %i.bh = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.bi = getelementptr i8, ptr %i.bh, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !275
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 240
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !175 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %get_dyna_var_idx_at_raw.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.bo = getelementptr i8, ptr %i.bl, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !188
  %wide.trip.count.i.i = zext i32 %i.bn to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !36
  %i.bs = icmp eq i64 %i.br, 129
  br i1 %i.bs, label %get_dyna_var_idx_at_raw.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %get_dyna_var_idx_at_raw.exit.thread.i, label %bb.h, !llvm.loop !1027

get_dyna_var_idx_at_raw.exit.i:                   ; preds = %bb.h
  %i.bt = trunc nuw i64 %indvars.iv.i.i to i32    ; 3 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %get_dyna_var_idx_at_raw.exit.thread.i, label %get_local_var_idx.exit

get_dyna_var_idx_at_raw.exit.thread.i:            ; preds = %bb.i, %get_dyna_var_idx_at_raw.exit.i, %bb.g
  %.07.i8.i = phi i32 [ %i.bt, %get_dyna_var_idx_at_raw.exit.i ], [ -1, %bb.g ], [ -1, %bb.i ] ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ag, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.bx = getelementptr i8, ptr %i.bw, i64 128
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !21
  call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef nonnull %i.ag, i32 noundef %i.by, ptr noundef nonnull @.str.146, i32 noundef %.07.i8.i)
  br label %get_local_var_idx.exit

get_local_var_idx.exit:                           ; preds = %get_dyna_var_idx_at_raw.exit.i, %get_dyna_var_idx_at_raw.exit.thread.i
  %.07.i9.i = phi i32 [ %.07.i8.i, %get_dyna_var_idx_at_raw.exit.thread.i ], [ %i.bt, %get_dyna_var_idx_at_raw.exit.i ]
  %i.bz = sub i32 %i.bg, %.07.i9.i
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.bz, i32 noundef %.0.lcssa.i)
  %.pre = load i16, ptr %i.aj, align 8
  br label %bb.j

bb.j:                                             ; preds = %get_local_var_idx.exit, %._crit_edge
  %i.ca = phi i32 [ 8192, %get_local_var_idx.exit ], [ 0, %._crit_edge ] ; 2 uses
  %i.cb = phi i16 [ %.pre, %get_local_var_idx.exit ], [ %i.bd, %._crit_edge ] ; 3 uses
  %i.cc = and i16 %i.cb, 2
  %.not179 = icmp eq i16 %i.cc, 0
  br i1 %.not179, label %bb.l, label %.preheader258

.preheader258:                                    ; preds = %bb.j
  %i.cd = getelementptr i8, ptr %i.ai, i64 28     ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !163
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %.preheader258
  %i.cg = getelementptr i8, ptr %i.ai, i64 240
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph264, %bb.k
  %.0176263 = phi i32 [ 0, %.lr.ph264 ], [ %i.ck, %bb.k ] ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !175
  %i.ci = add nuw i32 %.0176263, %.0174.lcssa
  %i.cj = sub i32 %i.ch, %i.ci
  call fastcc void @iseq_add_getlocal(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef %i.cj, i32 noundef %.0.lcssa.i)
  %i.ck = add nuw nsw i32 %.0176263, 1            ; 3 uses
end_hunk_7
begin_hunk_8_@setup_args_core:bb.a
bb.e:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i198
  %i.w = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !1155
  %i.x = tail call i64 @rb_fix2int(i64 noundef %i.w) #37, !inline_history !1155
  %i.y = trunc i64 %i.x to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ISEQ_COMPILE_DATA.exit.i198
  %.0.i200 = phi i32 [ %i.y, %bb.e ], [ %i.u, %ISEQ_COMPILE_DATA.exit.i198 ]
  %i.z = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i200, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !1155 ; 3 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !34
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !35
  store ptr %i.z, ptr %i.g, align 8, !tbaa !11
  br label %iseq_compile_each.exit201

keyword_node_p.exit203.thread.thread:             ; preds = %keyword_node_p.exit203, %bb.d, %keyword_node_p.exit203.thread
  %i.ad = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.l, i32 noundef 0), !inline_history !1155 ; 0 uses
  br label %iseq_compile_each.exit201

iseq_compile_each.exit201:                        ; preds = %keyword_node_p.exit203.thread.thread, %bb.f, %keyword_node_p.exit203
  %.3 = phi ptr [ %i.l, %keyword_node_p.exit203 ], [ %.2286, %bb.f ], [ %.2286, %keyword_node_p.exit203.thread.thread ] ; 5 uses
  %i.ae = add i32 %.0.i288, 1                     ; 4 uses
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !943 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %compile_args.exit, label %bb.c, !llvm.loop !1156

compile_args.exit:                                ; preds = %iseq_compile_each.exit201
  %.not138 = icmp eq ptr %.3, null
  br i1 %.not138, label %bb.bd, label %bb.g

bb.g:                                             ; preds = %compile_args.exit
  %i.ag = getelementptr i8, ptr %.3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1073 ; 7 uses
  %.not.i146 = icmp eq ptr %i.ah, null
  br i1 %.not.i146, label %.thread.a, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val58.i = load i64, ptr %i.ah, align 8, !tbaa !176
  %i.ai = and i64 %.val58.i, 32512
  %i.aj = icmp eq i64 %i.ai, 11008
  br i1 %i.aj, label %.preheader, label %.thread.a

.preheader:                                       ; preds = %bb.h, %bb.n
  %.041.i291 = phi ptr [ %i.ba, %bb.n ], [ %i.ah, %bb.h ] ; 3 uses
  %.047.i290 = phi i32 [ %i.am, %bb.n ], [ 0, %bb.h ]
  %i.ak = getelementptr i8, ptr %.041.i291, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !941 ; 2 uses
  %i.am = add i32 %.047.i290, 1                   ; 2 uses
  %.not55.i = icmp eq ptr %i.al, null
  br i1 %.not55.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %.val.i = load i64, ptr %i.al, align 8, !tbaa !176
  %i.an = and i64 %.val.i, 32512
  %i.ao = icmp eq i64 %i.an, 25856
  br i1 %i.ao, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader
  %.not56.i = icmp eq ptr %4, null
  br i1 %.not56.i, label %.thread.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i32, ptr %4, align 4, !tbaa !7     ; 2 uses
  %i.aq = or i32 %i.ap, 64
  store i32 %i.aq, ptr %4, align 4, !tbaa !7
  %i.ar = icmp sgt i32 %i.am, 1
  br i1 %i.ar, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr i8, ptr %.041.i291, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !943
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !943
  %.not57.i = icmp eq ptr %i.av, null
  br i1 %.not57.i, label %.thread.a, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = or i32 %i.ap, 2112
  store i32 %i.aw, ptr %4, align 4, !tbaa !7
  br label %.thread.a

bb.n:                                             ; preds = %bb.i
  %i.ax = getelementptr i8, ptr %.041.i291, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !943
  %i.az = getelementptr i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !943 ; 2 uses
  %.not52.i = icmp eq ptr %i.ba, null
  br i1 %.not52.i, label %bb.o, label %.preheader, !llvm.loop !1157

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.bb = call fastcc i64 @node_hash_unique_key_index(ptr noundef %0, ptr nonnull %i.ah, ptr noundef %i.a), !inline_history !1158
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !7   ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = tail call noalias ptr @rb_xmalloc_mul_add(i64 noundef %i.bd, i64 noundef 8, i64 noundef 8) #37, !inline_history !1158 ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = getelementptr i8, ptr %i.be, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !7
  store i32 %i.bc, ptr %i.be, align 8, !tbaa !7
  store ptr %i.be, ptr %5, align 8, !tbaa !1058
  %i.bh = getelementptr i8, ptr %0, i64 24
  %i.bi = getelementptr i8, ptr %1, i64 24        ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %iseq_compile_each.exit213
  %.243.i294 = phi ptr [ %i.ah, %bb.o ], [ %i.cv, %iseq_compile_each.exit213 ] ; 2 uses
  %.044.i293 = phi i32 [ 0, %bb.o ], [ %.145.i, %iseq_compile_each.exit213 ] ; 4 uses
  %.046.i292 = phi i32 [ 0, %bb.o ], [ %i.cs, %iseq_compile_each.exit213 ] ; 2 uses
  %i.bj = getelementptr i8, ptr %.243.i294, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !943
  %i.bl = getelementptr i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !941 ; 4 uses
  %i.bn = sext i32 %.046.i292 to i64
  %i.bo = tail call i64 @rb_ary_entry(i64 noundef %i.bb, i64 noundef %i.bn) #44, !inline_history !1158
  %.not54.i = icmp eq i64 %i.bo, 0
  br i1 %.not54.i, label %.split49.i, label %.split.i

.split49.i:                                       ; preds = %bb.p
  %i.bp = icmp eq ptr %i.bm, null
  br i1 %i.bp, label %iseq_compile_each.exit213, label %bb.q

bb.q:                                             ; preds = %.split49.i
  %i.bq = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.bm, i32 noundef 1), !inline_history !1159 ; 0 uses
  br label %iseq_compile_each.exit213

.split.i:                                         ; preds = %bb.p
  %i.br = getelementptr i8, ptr %.243.i294, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !941 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !176 ; 3 uses
  %i.bu = and i64 %i.bt, 32512
  %cond.i210 = icmp eq i64 %i.bu, 25856
  br i1 %cond.i210, label %bb.r, label %nd_line.exit.i

bb.r:                                             ; preds = %.split.i
  %i.bv = tail call i64 @rb_node_sym_string_val(ptr noundef nonnull %i.bs) #37
  br label %get_symbol_value.exit

nd_line.exit.i:                                   ; preds = %.split.i
  %i.bw = lshr i64 %i.bt, 15
  %i.bx = trunc i64 %i.bw to i32
  %i.by = trunc i64 %i.bt to i32
  %i.bz = lshr i32 %i.by, 8
  %i.ca = and i32 %i.bz, 127
  %i.cb = tail call ptr @ruby_node_name(i32 noundef %i.ca) #37
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %0, i32 noundef %i.bx, ptr noundef nonnull @.str.128, ptr noundef %i.cb)
  br label %get_symbol_value.exit

get_symbol_value.exit:                            ; preds = %bb.r, %nd_line.exit.i
  %.0.i211 = phi i64 [ %i.bv, %bb.r ], [ 4, %nd_line.exit.i ]
  %i.cc = sext i32 %.044.i293 to i64
  %i.cd = getelementptr [8 x i8], ptr %i.bf, i64 %i.cc
  store i64 %.0.i211, ptr %i.cd, align 8, !tbaa !36
  %i.ce = add i32 %.044.i293, 1                   ; 2 uses
  %i.cf = icmp eq ptr %i.bm, null
  br i1 %i.cf, label %ISEQ_COMPILE_DATA.exit.i206, label %bb.u

ISEQ_COMPILE_DATA.exit.i206:                      ; preds = %get_symbol_value.exit
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !20
  %i.ch = getelementptr i8, ptr %i.cg, i64 128
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !21 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i206
  %i.ck = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !1159
  %i.cl = tail call i64 @rb_fix2int(i64 noundef %i.ck) #37, !inline_history !1159
  %i.cm = trunc i64 %i.cl to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %ISEQ_COMPILE_DATA.exit.i206
  %.0.i208 = phi i32 [ %i.cm, %bb.s ], [ %i.ci, %ISEQ_COMPILE_DATA.exit.i206 ]
  %i.cn = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i208, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !1159 ; 3 uses
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !11 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !34
  %i.cq = getelementptr i8, ptr %i.co, i64 8
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !35
  store ptr %i.cn, ptr %i.bi, align 8, !tbaa !11
  br label %iseq_compile_each.exit213

bb.u:                                             ; preds = %get_symbol_value.exit
  %i.cr = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.bm, i32 noundef 0), !inline_history !1159 ; 0 uses
  br label %iseq_compile_each.exit213

iseq_compile_each.exit213:                        ; preds = %bb.u, %bb.t, %bb.q, %.split49.i
  %.145.i = phi i32 [ %.044.i293, %bb.q ], [ %.044.i293, %.split49.i ], [ %i.ce, %bb.t ], [ %i.ce, %bb.u ]
  %i.cs = add i32 %.046.i292, 1
  %i.ct = load ptr, ptr %i.bj, align 8, !tbaa !943
  %i.cu = getelementptr i8, ptr %i.ct, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !943 ; 2 uses
  %.not53.i = icmp eq ptr %i.cv, null
  br i1 %.not53.i, label %bb.v, label %bb.p, !llvm.loop !1160

bb.v:                                             ; preds = %iseq_compile_each.exit213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.bd

.thread.a:                                        ; preds = %bb.j, %bb.m, %bb.l, %bb.h, %bb.g
  %i.cw = getelementptr i8, ptr %i.ah, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !941
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %keyword_node_single_splat_p.exit, label %keyword_node_single_splat_p.exit.thread

keyword_node_single_splat_p.exit:                 ; preds = %.thread.a
  %i.cz = getelementptr i8, ptr %i.ah, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !943
  %i.db = getelementptr i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !943
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.w, label %keyword_node_single_splat_p.exit.thread

bb.w:                                             ; preds = %keyword_node_single_splat_p.exit
  %i.de = load i32, ptr %3, align 4, !tbaa !7
  %i.df = and i32 %i.de, 2
  %.not140 = icmp eq i32 %i.df, 0
  br i1 %.not140, label %keyword_node_single_splat_p.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @compile_single_keyword_splat_mutable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %.3, ptr noundef %4)
  br label %bb.bd

keyword_node_single_splat_p.exit.thread:          ; preds = %.thread.a, %bb.w, %keyword_node_single_splat_p.exit
  %i.dg = tail call fastcc i32 @compile_hash(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %.3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.bd

bb.y:                                             ; preds = %bb.b
  %i.dh = getelementptr i8, ptr %2, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !890 ; 2 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %ISEQ_COMPILE_DATA.exit.i, label %bb.ab

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %bb.y
  %i.dk = getelementptr i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20
  %i.dm = getelementptr i8, ptr %i.dl, i64 128
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !21 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.dp = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !174
  %i.dq = tail call i64 @rb_fix2int(i64 noundef %i.dp) #37, !inline_history !174
  %i.dr = trunc i64 %i.dq to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %ISEQ_COMPILE_DATA.exit.i
  %.0.i147 = phi i32 [ %i.dr, %bb.z ], [ %i.dn, %ISEQ_COMPILE_DATA.exit.i ]
  %i.ds = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i147, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !174 ; 3 uses
  %i.dt = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !11 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.ds, i64 16
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !34
  %i.dw = getelementptr i8, ptr %i.du, i64 8
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !35
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !11
  br label %nd_line.exit

bb.ab:                                            ; preds = %bb.y
  %i.dx = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.di, i32 noundef 0), !inline_history !174 ; 0 uses
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.aa, %bb.ab
  %i.dy = load i64, ptr %2, align 8, !tbaa !176
  %i.dz = lshr i64 %i.dy, 15
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = getelementptr i8, ptr %2, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !278
  %i.ed = load i32, ptr %3, align 4, !tbaa !7
  %i.ee = and i32 %i.ed, 1
  %.not135 = icmp eq i32 %i.ee, 0
  %i.ef = select i1 %.not135, i64 0, i64 20
  %i.eg = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ea, i32 noundef %i.ec, i32 noundef 35, i32 noundef 1, i64 noundef %i.ef) ; 3 uses
  %i.eh = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !11 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eg, i64 16
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !34
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  store ptr %i.eg, ptr %i.ek, align 8, !tbaa !35
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !11
  %i.el = load i32, ptr %3, align 4, !tbaa !7     ; 2 uses
  %i.em = and i32 %i.el, 1
  %.not136 = icmp eq i32 %i.em, 0
  br i1 %.not136, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %nd_line.exit
  %i.en = and i32 %i.el, -2
  store i32 %i.en, ptr %3, align 4, !tbaa !7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %nd_line.exit
  %.not137 = icmp eq ptr %4, null
  br i1 %.not137, label %bb.bd, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load i32, ptr %4, align 4, !tbaa !7
  %i.ep = or i32 %i.eo, 1
  store i32 %i.ep, ptr %4, align 4, !tbaa !7
  br label %bb.bd

bb.af:                                            ; preds = %bb.b
  %.not130 = icmp eq ptr %4, null
  br i1 %.not130, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eq = load i32, ptr %4, align 4, !tbaa !7
  %i.er = or i32 %i.eq, 1
  store i32 %i.er, ptr %4, align 4, !tbaa !7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.es = getelementptr i8, ptr %2, i64 32        ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !882
  %i.eu = tail call fastcc i32 @setup_args_core(ptr noundef %0, ptr noundef %1, ptr noundef %i.et, ptr noundef %3, ptr noundef null, ptr noundef null) ; 3 uses
  %i.ev = getelementptr i8, ptr %2, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !884 ; 3 uses
  %.val143 = load i64, ptr %i.ew, align 8, !tbaa !176
  %i.ex = and i64 %.val143, 32512
  %i.ey = icmp eq i64 %i.ex, 11008
  br i1 %i.ey, label %.preheader276, label %.thread257

.preheader276:                                    ; preds = %bb.ah
  %i.ez = getelementptr i8, ptr %0, i64 24
  %i.fa = getelementptr i8, ptr %1, i64 24        ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader276, %iseq_compile_each.exit219
  %.0.i151284 = phi i32 [ 0, %.preheader276 ], [ %i.fy, %iseq_compile_each.exit219 ]
  %.010.i150283 = phi ptr [ %i.ew, %.preheader276 ], [ %i.fz, %iseq_compile_each.exit219 ] ; 2 uses
  %.4282 = phi ptr [ null, %.preheader276 ], [ %.5, %iseq_compile_each.exit219 ] ; 2 uses
  %i.fb = getelementptr i8, ptr %.010.i150283, i64 48 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !943
  %i.fd = icmp eq ptr %i.fc, null
  %i.fe = getelementptr i8, ptr %.010.i150283, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !941 ; 5 uses
  br i1 %i.fd, label %bb.aj, label %keyword_node_p.exit221.thread

bb.aj:                                            ; preds = %bb.ai
  %.val.i220 = load i64, ptr %i.ff, align 8, !tbaa !176
  %i.fg = and i64 %.val.i220, 32512
  %i.fh = icmp eq i64 %i.fg, 11520
  br i1 %i.fh, label %keyword_node_p.exit221, label %keyword_node_p.exit221.thread.thread

keyword_node_p.exit221:                           ; preds = %bb.aj
  %i.fi = getelementptr i8, ptr %i.ff, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !888
  %i.fk = and i64 %i.fj, 1
  %.not11.i153.not = icmp eq i64 %i.fk, 0
  br i1 %.not11.i153.not, label %iseq_compile_each.exit219, label %keyword_node_p.exit221.thread.thread

keyword_node_p.exit221.thread:                    ; preds = %bb.ai
  %i.fl = icmp eq ptr %i.ff, null
  br i1 %i.fl, label %ISEQ_COMPILE_DATA.exit.i216, label %keyword_node_p.exit221.thread.thread

ISEQ_COMPILE_DATA.exit.i216:                      ; preds = %keyword_node_p.exit221.thread
  %i.fm = load ptr, ptr %i.ez, align 8, !tbaa !20
  %i.fn = getelementptr i8, ptr %i.fm, i64 128
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !21 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %ISEQ_COMPILE_DATA.exit.i216
  %i.fq = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !1155
  %i.fr = tail call i64 @rb_fix2int(i64 noundef %i.fq) #37, !inline_history !1155
  %i.fs = trunc i64 %i.fr to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %ISEQ_COMPILE_DATA.exit.i216
  %.0.i218 = phi i32 [ %i.fs, %bb.ak ], [ %i.fo, %ISEQ_COMPILE_DATA.exit.i216 ]
  %i.ft = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i218, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !1155 ; 3 uses
  %i.fu = load ptr, ptr %i.fa, align 8, !tbaa !11 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.ft, i64 16
  store ptr %i.fu, ptr %i.fv, align 8, !tbaa !34
  %i.fw = getelementptr i8, ptr %i.fu, i64 8
  store ptr %i.ft, ptr %i.fw, align 8, !tbaa !35
  store ptr %i.ft, ptr %i.fa, align 8, !tbaa !11
  br label %iseq_compile_each.exit219

keyword_node_p.exit221.thread.thread:             ; preds = %keyword_node_p.exit221, %bb.aj, %keyword_node_p.exit221.thread
  %i.fx = tail call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef %1, ptr noundef %i.ff, i32 noundef 0), !inline_history !1155 ; 0 uses
  br label %iseq_compile_each.exit219

iseq_compile_each.exit219:                        ; preds = %keyword_node_p.exit221.thread.thread, %bb.al, %keyword_node_p.exit221
  %.5 = phi ptr [ %i.ff, %keyword_node_p.exit221 ], [ %.4282, %bb.al ], [ %.4282, %keyword_node_p.exit221.thread.thread ] ; 4 uses
  %i.fy = add i32 %.0.i151284, 1                  ; 2 uses
  %i.fz = load ptr, ptr %i.fb, align 8, !tbaa !943 ; 2 uses
  %.not.i152 = icmp eq ptr %i.fz, null
  br i1 %.not.i152, label %bb.am, label %bb.ai, !llvm.loop !1156

bb.am:                                            ; preds = %iseq_compile_each.exit219
  %.not131 = icmp ne ptr %.5, null
  %i.ga = sext i1 %.not131 to i32
  %spec.select = add i32 %i.fy, %i.ga
  %i.gb = load i64, ptr %2, align 8, !tbaa !176
  %i.gc = lshr i64 %i.gb, 15
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr i8, ptr %2, i64 24
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !278
  %i.gg = sext i32 %spec.select to i64
end_hunk_8
begin_hunk_9_@compile_named_capture_assign:bb.a
  %.not77 = icmp eq ptr %i.gm, null
  br i1 %.not77, label %bb.q, label %bb.o, !llvm.loop !1177

bb.q:                                             ; preds = %iseq_compile_each.exit100
  %i.gn = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %i.go = getelementptr i8, ptr %i.bp, i64 16
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !34
  %i.gp = getelementptr i8, ptr %i.gn, i64 8
  store ptr %i.bp, ptr %i.gp, align 8, !tbaa !35
  store ptr %i.bp, ptr %i.cj, align 8, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %bb.q
  ret void
}

declare i64 @rb_node_dstr_string_val(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef range(i32 0, 2) i32 @compile_dstr_fragments_0(ptr noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1085 ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1178 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %append_dstr_fragment.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %i.d) #37 ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1097
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_reg_check_preprocess(i64 noundef %i.e) #37 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %.critedge.i, label %append_dstr_fragment.exit

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1092 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.i
  store i64 %i.e, ptr %i.j, align 8, !tbaa !1092
  %i.m = getelementptr i8, ptr %0, i64 24
  store ptr %1, ptr %i.m, align 8, !tbaa !1095
  br label %append_dstr_fragment.exit.thread

bb.e:                                             ; preds = %.critedge.i
  %i.n = tail call i64 @rb_str_buf_append(i64 noundef %i.k, i64 noundef %i.e) #37 ; 0 uses
  br label %append_dstr_fragment.exit.thread

append_dstr_fragment.exit:                        ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !1089
  %i.p = load i64, ptr %1, align 8, !tbaa !176
  %i.q = lshr i64 %i.p, 15
  %i.r = trunc i64 %i.q to i32
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %i.o, i32 noundef %i.r, ptr noundef nonnull @.str.35, i64 noundef %i.h)
  br label %.critedge.thread

append_dstr_fragment.exit.thread:                 ; preds = %bb.d, %bb.e, %bb.a
  %.not3154 = icmp eq ptr %i.b, null
  br i1 %.not3154, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %append_dstr_fragment.exit.thread
  %i.s = getelementptr i8, ptr %0, i64 36
  %i.t = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.u = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 32         ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %.02555 = phi ptr [ %i.b, %.lr.ph ], [ %i.bu, %.critedge ] ; 2 uses
  %i.x = getelementptr i8, ptr %.02555, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !941  ; 4 uses
  %.val35 = load i64, ptr %i.y, align 8, !tbaa !176
  %i.z = trunc i64 %.val35 to i32
  %i.aa = lshr i32 %i.z, 8
  %i.ab = and i32 %i.aa, 127
  switch i32 %i.ab, label %bb.n [
    i32 63, label %bb.g
    i32 64, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1179
  %i.ae = tail call i64 @rb_str_new_mutable_parser_string(ptr noundef %i.ad) #37 ; 3 uses
  %i.af = load i32, ptr %i.s, align 4, !tbaa !1097
  %.not.i36 = icmp eq i32 %i.af, 0
  br i1 %.not.i36, label %.critedge.i41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i64 @rb_reg_check_preprocess(i64 noundef %i.ae) #37 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4
  br i1 %i.ah, label %.critedge.i41, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %0, align 8, !tbaa !1089
  %.not.i.i37 = icmp eq ptr %1, null
  br i1 %.not.i.i37, label %append_dstr_fragment.exit42, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %1, align 8, !tbaa !176
  %i.ak = lshr i64 %i.aj, 15
  %i.al = trunc i64 %i.ak to i32
  br label %append_dstr_fragment.exit42

.critedge.i41:                                    ; preds = %bb.h, %bb.g
  %i.am = load i64, ptr %i.t, align 8, !tbaa !1092 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.i41
  store i64 %i.ae, ptr %i.t, align 8, !tbaa !1092
  store ptr %1, ptr %i.u, align 8, !tbaa !1095
  br label %.critedge

bb.l:                                             ; preds = %.critedge.i41
  %i.ao = tail call i64 @rb_str_buf_append(i64 noundef %i.am, i64 noundef %i.ae) #37 ; 0 uses
  br label %.critedge

append_dstr_fragment.exit42:                      ; preds = %bb.i, %bb.j
  %.0.i.i39 = phi i32 [ %i.al, %bb.j ], [ -1, %bb.i ]
  tail call void (ptr, i32, ptr, ...) @append_compile_error(ptr noundef %i.ai, i32 noundef %.0.i.i39, ptr noundef nonnull @.str.35, i64 noundef %i.ag)
  br label %.critedge.thread

bb.m:                                             ; preds = %bb.f
  %i.ap = tail call fastcc i32 @compile_dstr_fragments_0(ptr noundef %0, ptr noundef nonnull %i.y)
  %.not33 = icmp eq i32 %i.ap, 0
  br i1 %.not33, label %.critedge.thread, label %.critedge

bb.n:                                             ; preds = %bb.f
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !1092 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4
  br i1 %i.ar, label %iseq_compile_each.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %0, align 8, !tbaa !1089
  store i64 4, ptr %i.t, align 8, !tbaa !1092
  %i.at = tail call i64 @rb_fstring(i64 noundef %i.aq) #37 ; 4 uses
  %i.au = load ptr, ptr %i.v, align 8, !tbaa !1091
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !1095 ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.av, null
  br i1 %.not.i.i43, label %nd_line.exit.i44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !176
  %i.ax = lshr i64 %i.aw, 15
  %i.ay = trunc i64 %i.ax to i32
  br label %nd_line.exit.i44

nd_line.exit.i44:                                 ; preds = %bb.p, %bb.o
  %.0.i.i45 = phi i32 [ %i.ay, %bb.p ], [ -1, %bb.o ]
  %i.az = getelementptr i8, ptr %i.av, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !278
  %i.bb = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %i.as, i32 noundef %.0.i.i45, i32 noundef %i.ba, i32 noundef 19, i32 noundef 1, i64 noundef %i.at) ; 3 uses
  %i.bc = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !34
  %i.bf = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !35
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !11
  %i.bg = icmp eq i64 %i.at, 0
  %i.bh = and i64 %i.at, 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %rb_obj_written.exit.i, label %bb.q

bb.q:                                             ; preds = %nd_line.exit.i44
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1089
  %i.bl = ptrtoint ptr %i.bk to i64
  tail call void @rb_gc_writebarrier(i64 noundef %i.bl, i64 noundef %i.at) #37
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.q, %nd_line.exit.i44
  %i.bm = load i32, ptr %i.w, align 8, !tbaa !1094
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.w, align 8, !tbaa !1094
  br label %iseq_compile_each.exit

iseq_compile_each.exit:                           ; preds = %bb.n, %rb_obj_written.exit.i
  %i.bo = load ptr, ptr %0, align 8, !tbaa !1089
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !1091
  %i.bq = tail call fastcc i32 @iseq_compile_each0(ptr noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.y, i32 noundef 0), !inline_history !174
  %.not32.not = icmp eq i32 %i.bq, 0
  br i1 %.not32.not, label %.critedge.thread, label %bb.r

bb.r:                                             ; preds = %iseq_compile_each.exit
  %i.br = load i32, ptr %i.w, align 8, !tbaa !1094
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.w, align 8, !tbaa !1094
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.m, %bb.r
  %i.bt = getelementptr i8, ptr %.02555, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !943 ; 2 uses
  %.not31 = icmp eq ptr %i.bu, null
  br i1 %.not31, label %.critedge.thread, label %bb.f, !llvm.loop !1181

.critedge.thread:                                 ; preds = %.critedge, %iseq_compile_each.exit, %bb.m, %append_dstr_fragment.exit.thread, %append_dstr_fragment.exit42, %append_dstr_fragment.exit
  %.4 = phi i32 [ 0, %append_dstr_fragment.exit42 ], [ 0, %append_dstr_fragment.exit ], [ 1, %append_dstr_fragment.exit.thread ], [ 0, %iseq_compile_each.exit ], [ 1, %.critedge ], [ 0, %bb.m ]
  ret i32 %.4
}

declare i64 @rb_str_new_mutable_parser_string(ptr noundef) local_unnamed_addr #4

declare i64 @rb_reg_check_preprocess(i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_buf_append(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @all_string_result_p(ptr noundef readonly captures(address_is_null) %0) unnamed_addr #25 {
bb.a:
  %.not17 = icmp eq ptr %0, null
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr18 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 5 uses
  %i.a = load i64, ptr %.tr18, align 8, !tbaa !176
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %.loopexit [
    i32 63, label %.loopexit.loopexit
    i32 64, label %.loopexit.loopexit
    i32 110, label %.loopexit.loopexit
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 22, label %bb.e
    i32 23, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.e = getelementptr i8, ptr %.tr18, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1132 ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.tr18, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1182 ; 2 uses
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i32 @all_string_result_p(ptr noundef nonnull %i.f)
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %.loopexit, label %tailrecurse.backedge

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %i.j = getelementptr i8, ptr %.tr18, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !833  ; 2 uses
  %.not12 = icmp eq ptr %i.k, null
  %i.l = getelementptr i8, ptr %.tr18, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !831  ; 2 uses
  br i1 %.not12, label %tailrecurse.backedge, label %bb.f

tailrecurse.backedge:                             ; preds = %bb.e, %bb.d, %bb.f
  %.tr.be = phi ptr [ %i.h, %bb.d ], [ %i.k, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.tr.be, null
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.n = tail call fastcc i32 @all_string_result_p(ptr noundef %i.m)
  %.not13 = icmp eq i32 %i.n, 0
  br i1 %.not13, label %.loopexit, label %tailrecurse.backedge

.loopexit.loopexit:                               ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.backedge, %bb.c, %bb.b, %bb.d, %bb.f, %.lr.ph, %.loopexit.loopexit, %bb.a
  %.0 = phi i32 [ 1, %.loopexit.loopexit ], [ 0, %bb.a ], [ 0, %.lr.ph ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %tailrecurse.backedge ]
  ret i32 %.0
}

declare i64 @rb_node_dregx_string_val(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_const_prefix(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !176    ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 8
  %i.d = and i32 %i.c, 127
  switch i32 %i.d, label %iseq_compile_each.exit [
    i32 52, label %nd_line.exit46
    i32 89, label %nd_line.exit59
    i32 88, label %bb.b
  ]

nd_line.exit46:                                   ; preds = %bb.a
  %i.e = lshr i64 %i.a, 15
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !278
  %i.i = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.h, i32 noundef 19, i32 noundef 1, i64 noundef 20) ; 3 uses
  %i.j = getelementptr i8, ptr %3, i64 24         ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %i.m, align 8, !tbaa !35
  store ptr %i.i, ptr %i.j, align 8, !tbaa !11
  %i.n = load i64, ptr %1, align 8, !tbaa !176
  %i.o = lshr i64 %i.n, 15
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.g, align 8, !tbaa !278
  %i.r = getelementptr i8, ptr %1, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !862
  %i.t = tail call i64 @rb_id2sym(i64 noundef %i.s) #37
  %i.u = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.p, i32 noundef %i.q, i32 noundef 13, i32 noundef 1, i64 noundef %i.t) ; 3 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !11   ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.x, align 8, !tbaa !35
  store ptr %i.u, ptr %i.j, align 8, !tbaa !11
  br label %bb.c

nd_line.exit59:                                   ; preds = %bb.a
  %i.y = lshr i64 %i.a, 15
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !278
  %i.ac = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ad = getelementptr i8, ptr %3, i64 24        ; 8 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !35
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !11
  %i.ah = load i64, ptr %1, align 8, !tbaa !176
  %i.ai = lshr i64 %i.ah, 15
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !278
  %i.al = load i64, ptr @rb_cObject, align 8, !tbaa !36
  %i.am = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef 19, i32 noundef 1, i64 noundef %i.al) ; 3 uses
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !34
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !35
  store ptr %i.am, ptr %i.ad, align 8, !tbaa !11
  %i.aq = load i64, ptr %1, align 8, !tbaa !176
  %i.ar = lshr i64 %i.aq, 15
  %i.as = trunc i64 %i.ar to i32
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !278
  %i.au = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.as, i32 noundef %i.at, i32 noundef 19, i32 noundef 1, i64 noundef 20) ; 3 uses
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !34
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !35
  store ptr %i.au, ptr %i.ad, align 8, !tbaa !11
  %i.ay = load i64, ptr %1, align 8, !tbaa !176
  %i.az = lshr i64 %i.ay, 15
  %i.ba = trunc i64 %i.az to i32
  %i.bb = load i32, ptr %i.aa, align 8, !tbaa !278
  %i.bc = getelementptr i8, ptr %1, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1099
  %i.be = tail call i64 @rb_id2sym(i64 noundef %i.bd) #37
  %i.bf = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ba, i32 noundef %i.bb, i32 noundef 13, i32 noundef 1, i64 noundef %i.be) ; 3 uses
  %i.bg = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 16
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !34
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !35
  store ptr %i.bf, ptr %i.ad, align 8, !tbaa !11
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bj = getelementptr i8, ptr %1, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1033
  %i.bl = tail call fastcc i32 @compile_const_prefix(ptr noundef %0, ptr noundef %i.bk, ptr noundef %2, ptr noundef %3)
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.d, label %nd_line.exit65

nd_line.exit65:                                   ; preds = %bb.b
  %i.bm = load i64, ptr %1, align 8, !tbaa !176
  %i.bn = lshr i64 %i.bm, 15
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !278
  %i.br = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef 19, i32 noundef 1, i64 noundef 0) ; 3 uses
  %i.bs = getelementptr i8, ptr %3, i64 24        ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !11 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !34
  %i.bv = getelementptr i8, ptr %i.bt, i64 8
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !35
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !11
  %i.bw = load i64, ptr %1, align 8, !tbaa !176
  %i.bx = lshr i64 %i.bw, 15
end_hunk_9
begin_hunk_10_@pm_compile_alias_global_variable_node:bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !35
  store ptr %i.d, ptr %i.e, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1240 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !606  ; 2 uses
  %i.m = getelementptr i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !784
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr i8, ptr %5, i64 88         ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !766
  %i.t = tail call i64 @rb_intern3(ptr noundef %i.l, i64 noundef %i.q, ptr noundef %i.s) #37
  %i.u = tail call i64 @rb_id2sym(i64 noundef %i.t) #37
  %i.v = load i32, ptr %2, align 4, !tbaa !553
  %i.w = load i32, ptr %i.b, align 4, !tbaa !556
  %i.x = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef 19, i32 noundef 1, i64 noundef %i.u) ; 3 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !35
  store ptr %i.x, ptr %i.e, align 8, !tbaa !11
  %i.ab = getelementptr i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1242 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !606 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !784
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !766
  %i.al = tail call i64 @rb_intern3(ptr noundef %i.ae, i64 noundef %i.aj, ptr noundef %i.ak) #37
  %i.am = tail call i64 @rb_id2sym(i64 noundef %i.al) #37
  %i.an = load i32, ptr %2, align 4, !tbaa !553
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !556
  %i.ap = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef 19, i32 noundef 1, i64 noundef %i.am) ; 3 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !34
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !35
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !11
  %i.at = load i32, ptr %2, align 4, !tbaa !553
  %i.au = load i32, ptr %i.b, align 4, !tbaa !556
  %i.av = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.at, i32 noundef %i.au, i64 noundef 162, i64 noundef 5, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !34
  %i.ay = getelementptr i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !35
  store ptr %i.av, ptr %i.e, align 8, !tbaa !11
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.az = load i32, ptr %2, align 4, !tbaa !553
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !556
  %i.bb = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 16
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !34
  %i.be = getelementptr i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !35
  store ptr %i.bb, ptr %i.e, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_alias_method_node(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !553
  %i.b = getelementptr i8, ptr %2, i64 4          ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !556
  %i.d = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.c, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.e = getelementptr i8, ptr %3, i64 24         ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !35
  store ptr %i.d, ptr %i.e, align 8, !tbaa !11
  %i.i = load i32, ptr %2, align 4, !tbaa !553
  %i.j = load i32, ptr %i.b, align 4, !tbaa !556
  %i.k = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef 20, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.n, align 8, !tbaa !35
  store ptr %i.k, ptr %i.e, align 8, !tbaa !11
  %i.o = getelementptr i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1243
  tail call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef %i.p, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1245
  tail call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef %i.r, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  %i.s = load i32, ptr %2, align 4, !tbaa !553
  %i.t = load i32, ptr %i.b, align 4, !tbaa !556
  %i.u = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.s, i32 noundef %i.t, i64 noundef 161, i64 noundef 7, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.u, ptr %i.x, align 8, !tbaa !35
  store ptr %i.u, ptr %i.e, align 8, !tbaa !11
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr %2, align 4, !tbaa !553
  %i.z = load i32, ptr %i.b, align 4, !tbaa !556
  %i.aa = tail call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.y, i32 noundef %i.z, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !11  ; 2 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !34
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !35
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_and_node(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #17 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !37
  %i.b = and i64 %i.a, 262144
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %ISEQ_COMPILE_DATA.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %ISEQ_COMPILE_DATA.exit.i.i.i

ISEQ_COMPILE_DATA.exit.i.i.i:                     ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr i8, ptr %.0.i.i.i.i, i64 96 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !7    ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 48
  %i.k = getelementptr i8, ptr %i.f, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 4 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = icmp samesign ugt i64 %i.j, %i.m
  br i1 %i.n, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i
  %i.o = icmp ult i32 %i.l, 48
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.027.i.i.i.i = phi i32 [ %i.q, %bb.d ], [ %i.l, %.preheader.i.i.i.i ] ; 3 uses
  %i.p = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = shl nuw nsw i32 %.027.i.i.i.i, 1         ; 3 uses
  %i.r = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !41

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.d
  %i.s = zext nneg i32 %i.q to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.l, %.preheader.i.i.i.i ], [ %i.q, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.m, %.preheader.i.i.i.i ], [ %i.s, %._crit_edge.i.i.loopexit.i.i ]
  %i.t = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.u = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.t, i64 noundef 1) #39 ; 6 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !40
  store ptr %i.u, ptr %i.e, align 8, !tbaa !40
  store ptr null, ptr %i.u, align 8, !tbaa !40
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !7
  %i.w = getelementptr i8, ptr %i.u, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.w, align 4, !tbaa !7
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %ISEQ_COMPILE_DATA.exit.i.i.i, %._crit_edge.i.i.i.i
  %i.x = phi i32 [ %i.h, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.f, %ISEQ_COMPILE_DATA.exit.i.i.i ], [ %i.u, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.y = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.z = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 10 uses
  %i.ac = add i32 %i.x, 48
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !7
  store i32 1, ptr %i.ab, align 8, !tbaa !193
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !194
  %i.ae = getelementptr i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.ag = getelementptr i8, ptr %i.af, i64 132    ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !195 ; 2 uses
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !195
  %i.aj = getelementptr i8, ptr %i.ab, i64 24
  store i32 %i.ah, ptr %i.aj, align 8, !tbaa !95
  %i.ak = getelementptr i8, ptr %i.ab, i64 40     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 44     ; 2 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = and i8 %i.am, -16
  store i8 %i.an, ptr %i.al, align 4
  %i.ao = getelementptr i8, ptr %i.ab, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.ao, align 4, !tbaa !7
  %i.ap = getelementptr i8, ptr %1, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1246
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef %i.aq, ptr noundef %3, i1 noundef zeroext false, ptr noundef %5)
  br i1 %4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %new_label_body.exit
  %i.ar = load i32, ptr %2, align 4, !tbaa !553
  %i.as = getelementptr i8, ptr %2, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !556
  %6 = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %7 = getelementptr i8, ptr %3, i64 24           ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.av = getelementptr i8, ptr %6, i64 16
  store ptr %i.au, ptr %i.av, align 8, !tbaa !34
  %i.aw = getelementptr i8, ptr %i.au, i64 8
  store ptr %6, ptr %i.aw, align 8, !tbaa !35
  store ptr %6, ptr %7, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %new_label_body.exit
  %8 = load i32, ptr %2, align 4, !tbaa !553
  %9 = getelementptr i8, ptr %2, i64 4            ; 2 uses
  %10 = load i32, ptr %9, align 4, !tbaa !556
  %i.ax = ptrtoint ptr %i.ab to i64
  %i.ay = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %8, i32 noundef %10, i32 noundef 74, i32 noundef 1, i64 noundef %i.ax) ; 3 uses
  %i.az = getelementptr i8, ptr %3, i64 24        ; 6 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !34
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !35
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !11
  %i.bd = load i32, ptr %i.ak, align 8, !tbaa !273
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ak, align 8, !tbaa !273
  br i1 %4, label %bb.g, label %11

11:                                               ; preds = %bb.f
  %12 = load i32, ptr %2, align 4, !tbaa !553
  %13 = load i32, ptr %9, align 4, !tbaa !556
  %14 = tail call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %12, i32 noundef %13, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %15 = load ptr, ptr %i.az, align 8, !tbaa !11   ; 2 uses
  %16 = getelementptr i8, ptr %14, i64 16
  store ptr %15, ptr %16, align 8, !tbaa !34
  %17 = getelementptr i8, ptr %15, i64 8
  store ptr %14, ptr %17, align 8, !tbaa !35
  store ptr %14, ptr %i.az, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %11, %bb.f
  %i.bf = getelementptr i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1248
  tail call fastcc void @pm_compile_node(ptr noundef nonnull %0, ptr noundef %i.bg, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ab, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !34
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  store ptr %i.ab, ptr %i.bj, align 8, !tbaa !35
  store ptr %i.ab, ptr %i.az, align 8, !tbaa !11
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_compile_array_node(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef nonnull %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #17 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !562
  %i.d = and i16 %i.c, 2
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %.preheader258, label %bb.b

.preheader258:                                    ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !563    ; 2 uses
  %.not278 = icmp eq i64 %i.e, 0
  br i1 %.not278, label %._crit_edge.thread, label %.lr.ph275

.lr.ph275:                                        ; preds = %.preheader258
  %i.f = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 4          ; 12 uses
  %i.h = getelementptr i8, ptr %4, i64 24         ; 10 uses
  %i.i = getelementptr i8, ptr %6, i64 128
  br label %.outer

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !tbaa !563
  %.not244 = icmp eq i64 %i.j, 0
  br i1 %.not244, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc i64 @pm_static_literal_value(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %6) ; 3 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %i.k) #37
  %i.l = tail call i64 @rb_obj_set_shareable(i64 noundef %i.k) #37 ; 0 uses
  %i.m = load i32, ptr %3, align 4, !tbaa !553
  %i.n = getelementptr i8, ptr %3, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !556
  %i.p = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.m, i32 noundef %i.o, i32 noundef 29, i32 noundef 1, i64 noundef %i.k)
  br label %.sink.split399

bb.e:                                             ; preds = %bb.c
  %i.q = load i32, ptr %3, align 4, !tbaa !553
  %i.r = getelementptr i8, ptr %3, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !556
  %i.t = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef 27, i32 noundef 1, i64 noundef 1)
  br label %.sink.split399

._crit_edge:                                      ; preds = %bb.an
  %.not236 = icmp eq i32 %.8, 0
  br i1 %.not236, label %._crit_edge.thread, label %bb.ao

bb.f:                                             ; preds = %.outer, %.thread296
  %i.u = phi i64 [ %i.fj, %.thread296 ], [ %.ph, %.outer ] ; 4 uses
  %.0274 = phi i32 [ 1, %.thread296 ], [ %.0274.ph, %.outer ] ; 8 uses
  %.0213273 = phi i8 [ %.3216, %.thread296 ], [ %.0213273.ph, %.outer ] ; 9 uses
  %.0225271 = phi i64 [ %i.fi, %.thread296 ], [ %.0225271.ph, %.outer ] ; 16 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !564  ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %.0225271
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !511  ; 8 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !501  ; 2 uses
  switch i16 %i.y, label %bb.y [
    i16 139, label %bb.g
    i16 90, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %.not242 = icmp eq i32 %.0274, 0
  br i1 %.not242, label %bb.h, label %.sink.split

.sink.split:                                      ; preds = %bb.g
  %i.z = trunc nuw i8 %.0213273 to i1
  %i.aa = load i32, ptr %3, align 4, !tbaa !553
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !556
  %i.ac = sext i32 %.0274 to i64
  %i.ad = shl nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %. = select i1 %i.z, i32 27, i32 34
  %i.af = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %., i32 noundef 1, i64 noundef %i.ae) ; 3 uses
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !11  ; 2 uses
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !34
  %i.ai = getelementptr i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !35
  store ptr %i.af, ptr %i.h, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %.1214 = phi i8 [ %.0213273, %bb.g ], [ 0, %.sink.split ]
  %i.aj = getelementptr i8, ptr %i.x, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !732 ; 2 uses
  %.not243 = icmp eq ptr %i.ak, null
  br i1 %.not243, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @pm_compile_node(ptr noundef %0, ptr noundef nonnull %i.ak, ptr noundef %4, i1 noundef zeroext false, ptr noundef %6)
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !536
  %i.am = call i32 @rb_st_lookup(ptr noundef %i.al, i64 noundef 2147483690, ptr noundef nonnull %i.a) #37
  %.not6.i = icmp eq i32 %i.am, 0
  br i1 %.not6.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit

.lr.ph9.i:                                        ; preds = %bb.j, %bb.k
  %.18.i = phi i32 [ %i.ap, %bb.k ], [ 0, %bb.j ]
  %.1127.i = phi ptr [ %i.ao, %bb.k ], [ %6, %bb.j ]
  %i.an = getelementptr i8, ptr %.1127.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !497 ; 4 uses
  %.not14.i = icmp eq ptr %i.ao, null
  br i1 %.not14.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph9.i
  %i.ap = add i32 %.18.i, 1                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !536
  %i.as = call i32 @rb_st_lookup(ptr noundef %i.ar, i64 noundef 2147483690, ptr noundef nonnull %i.a) #37
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %.lr.ph9.i, label %pm_lookup_local_index.exit, !llvm.loop !1249

bb.l:                                             ; preds = %.lr.ph9.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.262, i32 noundef -2147483606) #38
  unreachable

pm_lookup_local_index.exit:                       ; preds = %bb.k, %bb.j
  %.112.lcssa.i = phi ptr [ %6, %bb.j ], [ %i.ao, %bb.k ]
  %.1.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.ap, %bb.k ]
  %i.at = getelementptr i8, ptr %.112.lcssa.i, i64 112
  %i.au = load i32, ptr %i.at, align 8, !tbaa !676
  %i.av = load i64, ptr %i.a, align 8, !tbaa !36
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sub i32 %i.au, %i.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.ay = load i32, ptr %3, align 4, !tbaa !553
  %i.az = load i32, ptr %i.g, align 4, !tbaa !556
  call fastcc void @pm_iseq_add_getlocal(ptr noundef %0, ptr noundef %4, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ax, i32 noundef %.1.lcssa.i)
  br label %bb.m

bb.m:                                             ; preds = %pm_lookup_local_index.exit, %bb.i
  %i.ba = trunc nuw i8 %.1214 to i1
  %i.bb = load i32, ptr %3, align 4, !tbaa !553   ; 2 uses
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !556 ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef 35, i32 noundef 1, i64 noundef 20)
  br label %.sink.split375

bb.o:                                             ; preds = %bb.m
  %i.be = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef 33, i32 noundef 0, ptr noundef null)
  br label %.sink.split375

bb.p:                                             ; preds = %bb.f
  %i.bf = icmp eq i32 %.0274, 0                   ; 2 uses
  %i.bg = trunc nuw i8 %.0213273 to i1            ; 2 uses
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = load i32, ptr %3, align 4, !tbaa !553
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !556
  %i.bj = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef 27, i32 noundef 1, i64 noundef 1)
  br label %.sink.split360

bb.r:                                             ; preds = %bb.p
  br i1 %i.bf, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i32, ptr %3, align 4, !tbaa !553   ; 2 uses
  %i.bl = load i32, ptr %i.g, align 4, !tbaa !556 ; 2 uses
  %i.bm = sext i32 %.0274 to i64
  %i.bn = shl nsw i64 %i.bm, 1
  %i.bo = or disjoint i64 %i.bn, 1                ; 2 uses
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef 27, i32 noundef 1, i64 noundef %i.bo)
  br label %.sink.split360

bb.u:                                             ; preds = %bb.s
  %i.bq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef 34, i32 noundef 1, i64 noundef %i.bo)
  br label %.sink.split360

.sink.split360:                                   ; preds = %bb.q, %bb.u, %bb.t
  %.sink366 = phi ptr [ %i.bp, %bb.t ], [ %i.bq, %bb.u ], [ %i.bj, %bb.q ] ; 3 uses
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !11  ; 2 uses
  %i.bs = getelementptr i8, ptr %.sink366, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !34
  %i.bt = getelementptr i8, ptr %i.br, i64 8
  store ptr %.sink366, ptr %i.bt, align 8, !tbaa !35
  store ptr %.sink366, ptr %i.h, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %.sink.split360, %bb.r
  %.3216 = phi i8 [ %.0213273, %bb.r ], [ 0, %.sink.split360 ] ; 3 uses
  %i.bu = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  call fastcc void @pm_compile_hash_elements(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %i.bu, i16 noundef zeroext 0, i64 noundef 36, i1 noundef zeroext false, ptr noundef %4, ptr noundef %6)
end_hunk_10
