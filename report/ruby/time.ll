inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@time_to_a:bb.a
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 40    ; 5 uses
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = and i64 %i.v, 61572651155456
  %.not.i = icmp eq i64 %i.w, 26388279066624
  br i1 %.not.i, label %bb.e, label %get_timeval.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.y = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.92, i64 noundef %i.y) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.z = and i64 %i.v, 70368744177664
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %time_get_tm.exit

bb.f:                                             ; preds = %get_timeval.exit
  %i.ab = lshr i64 %i.v, 43
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 7
  switch i32 %i.ad, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.h:                                             ; preds = %bb.f
  %i.af = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.i, %bb.h, %bb.g, %get_timeval.exit
  %i.ah = load i64, ptr %i.u, align 8             ; 2 uses
  %i.ai = and i64 %i.ah, 511
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.j, label %force_make_tm.exit

bb.j:                                             ; preds = %time_get_tm.exit
  %i.aj = getelementptr i8, ptr %.1.i.i, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !25 ; 4 uses
  %i.al = icmp eq i64 %i.ak, 4
  %i.am = load i64, ptr @str_empty, align 8
  %.not.i17 = icmp eq i64 %i.ak, %i.am
  %or.cond.i = select i1 %i.al, i1 true, i1 %.not.i17
  %i.an = load i64, ptr @str_utc, align 8
  %.not8.i = icmp eq i64 %i.ak, %i.an
  %or.cond10.i = select i1 %or.cond.i, i1 true, i1 %.not8.i
  br i1 %or.cond10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call fastcc i32 @zone_localtime(i64 noundef %i.ak, i64 noundef %0)
  %.not9.i = icmp eq i32 %i.ao, 0
  br i1 %.not9.i, label %._crit_edge, label %force_make_tm.exit

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i64, ptr %i.u, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ap = phi i64 [ %.pre, %._crit_edge ], [ %i.ah, %bb.j ] ; 2 uses
  %i.aq = and i64 %i.ap, -70368744177665
  store i64 %i.aq, ptr %i.u, align 8
  %i.ar = lshr i64 %i.ap, 43
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = and i32 %i.as, 7
  switch i32 %i.at, label %bb.o [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.au = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

bb.n:                                             ; preds = %bb.l
  %i.av = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

bb.o:                                             ; preds = %bb.l
  %i.aw = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

force_make_tm.exit:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %time_get_tm.exit
  %i.ax = getelementptr i8, ptr %.1.i.i, i64 8
  %i.ay = load i64, ptr %i.u, align 8             ; 8 uses
  %i.az = lshr i64 %i.ay, 31
  %i.ba = and i64 %i.az, 126
  %i.bb = or disjoint i64 %i.ba, 1
  %i.bc = lshr i64 %i.ay, 22
  %i.bd = and i64 %i.bc, 126
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = lshr i64 %i.ay, 17
  %i.bg = and i64 %i.bf, 62
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = lshr i64 %i.ay, 12
  %i.bj = and i64 %i.bi, 62
  %i.bk = or disjoint i64 %i.bj, 1
  %i.bl = lshr i64 %i.ay, 8
  %i.bm = and i64 %i.bl, 30
  %i.bn = or disjoint i64 %i.bm, 1
  %i.bo = load i64, ptr %i.ax, align 8, !tbaa !45
  %i.bp = lshr i64 %i.ay, 37
  %i.bq = and i64 %i.bp, 14
  %i.br = or disjoint i64 %i.bq, 1
  %i.bs = shl i64 %i.ay, 1
  %i.bt = and i64 %i.bs, 1022
  %i.bu = or disjoint i64 %i.bt, 1
  %i.bv = and i64 %i.ay, 6597069766656
  %.not16 = icmp eq i64 %i.bv, 0
  %i.bw = select i1 %.not16, i64 0, i64 20
  %i.bx = tail call i64 @time_zone(i64 noundef %0)
  %i.by = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 10, i64 noundef %i.bb, i64 noundef %i.be, i64 noundef %i.bh, i64 noundef %i.bk, i64 noundef %i.bn, i64 noundef %i.bo, i64 noundef %i.br, i64 noundef %i.bu, i64 noundef %i.bw, i64 noundef %i.bx) #18
  ret i64 %i.by
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @time_deconstruct_keys(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !31

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 7 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 40    ; 18 uses
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = and i64 %i.v, 61572651155456
  %.not.i = icmp eq i64 %i.w, 26388279066624
  br i1 %.not.i, label %bb.e, label %get_timeval.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.y = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.92, i64 noundef %i.y) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.z = getelementptr i8, ptr %.1.i.i, i64 8     ; 2 uses
  %i.aa = and i64 %i.v, 70368744177664
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %time_get_tm.exit

bb.f:                                             ; preds = %get_timeval.exit
  %i.ac = lshr i64 %i.v, 43
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 7
  switch i32 %i.ae, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.af = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.i, %bb.h, %bb.g, %get_timeval.exit
  %i.ai = load i64, ptr %i.u, align 8             ; 2 uses
  %i.aj = and i64 %i.ai, 511
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %bb.j, label %force_make_tm.exit

bb.j:                                             ; preds = %time_get_tm.exit
  %i.ak = getelementptr i8, ptr %.1.i.i, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !25 ; 4 uses
  %i.am = icmp eq i64 %i.al, 4
  %i.an = load i64, ptr @str_empty, align 8
  %.not.i88 = icmp eq i64 %i.al, %i.an
  %or.cond.i = select i1 %i.am, i1 true, i1 %.not.i88
  %i.ao = load i64, ptr @str_utc, align 8
  %.not8.i = icmp eq i64 %i.al, %i.ao
  %or.cond10.i = select i1 %or.cond.i, i1 true, i1 %.not8.i
  br i1 %or.cond10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call fastcc i32 @zone_localtime(i64 noundef %i.al, i64 noundef %0)
  %.not9.i = icmp eq i32 %i.ap, 0
  br i1 %.not9.i, label %._crit_edge, label %force_make_tm.exit

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i64, ptr %i.u, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.aq = phi i64 [ %.pre, %._crit_edge ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ar = and i64 %i.aq, -70368744177665
  store i64 %i.ar, ptr %i.u, align 8
  %i.as = lshr i64 %i.aq, 43
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = and i32 %i.at, 7
  switch i32 %i.au, label %bb.o [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

bb.n:                                             ; preds = %bb.l
  %i.aw = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

bb.o:                                             ; preds = %bb.l
  %i.ax = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

force_make_tm.exit:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %time_get_tm.exit
  %i.ay = icmp eq i64 %1, 4
  br i1 %i.ay, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %force_make_tm.exit
  %i.az = tail call i64 @rb_hash_new_with_size(i64 noundef 11) #18 ; 12 uses
  %i.ba = load i64, ptr @sym_year, align 8, !tbaa !13
  %i.bb = load i64, ptr %i.z, align 8, !tbaa !45
  %i.bc = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.ba, i64 noundef %i.bb) #18 ; 0 uses
  %i.bd = load i64, ptr @sym_month, align 8, !tbaa !13
  %i.be = load i64, ptr %i.u, align 8
  %i.bf = lshr i64 %i.be, 8
  %i.bg = and i64 %i.bf, 30
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.bd, i64 noundef %i.bh) #18 ; 0 uses
  %i.bj = load i64, ptr @sym_day, align 8, !tbaa !13
  %i.bk = load i64, ptr %i.u, align 8
  %i.bl = lshr i64 %i.bk, 12
  %i.bm = and i64 %i.bl, 62
  %i.bn = or disjoint i64 %i.bm, 1
  %i.bo = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.bj, i64 noundef %i.bn) #18 ; 0 uses
  %i.bp = load i64, ptr @sym_yday, align 8, !tbaa !13
  %i.bq = load i64, ptr %i.u, align 8
  %i.br = shl i64 %i.bq, 1
  %i.bs = and i64 %i.br, 1022
  %i.bt = or disjoint i64 %i.bs, 1
  %i.bu = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.bp, i64 noundef %i.bt) #18 ; 0 uses
  %i.bv = load i64, ptr @sym_wday, align 8, !tbaa !13
  %i.bw = load i64, ptr %i.u, align 8
  %i.bx = lshr i64 %i.bw, 37
  %i.by = and i64 %i.bx, 14
  %i.bz = or disjoint i64 %i.by, 1
  %i.ca = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.bv, i64 noundef %i.bz) #18 ; 0 uses
  %i.cb = load i64, ptr @sym_hour, align 8, !tbaa !13
  %i.cc = load i64, ptr %i.u, align 8
  %i.cd = lshr i64 %i.cc, 17
  %i.ce = and i64 %i.cd, 62
  %i.cf = or disjoint i64 %i.ce, 1
  %i.cg = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.cb, i64 noundef %i.cf) #18 ; 0 uses
  %i.ch = load i64, ptr @sym_min, align 8, !tbaa !13
  %i.ci = load i64, ptr %i.u, align 8
  %i.cj = lshr i64 %i.ci, 22
  %i.ck = and i64 %i.cj, 126
  %i.cl = or disjoint i64 %i.ck, 1
  %i.cm = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.ch, i64 noundef %i.cl) #18 ; 0 uses
  %i.cn = load i64, ptr @sym_sec, align 8, !tbaa !13
  %.shift87 = getelementptr i8, ptr %.1.i.i, i64 44
  %2 = load i32, ptr %.shift87, align 4
  %3 = shl i32 %2, 1
  %4 = and i32 %3, 126
  %5 = or disjoint i32 %4, 1
  %6 = zext nneg i32 %5 to i64
  %i.co = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.cn, i64 noundef %6) #18 ; 0 uses
  %i.cp = load i64, ptr @sym_subsec, align 8, !tbaa !13
  %i.cq = load i64, ptr %.1.i.i, align 8, !tbaa !22 ; 7 uses
  %i.cr = trunc i64 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = ashr i64 %i.cq, 1
  %i.ct = srem i64 %i.cs, 1000000000              ; 2 uses
  %i.cu = icmp slt i64 %i.ct, 0
  %i.cv = shl nsw i64 %i.ct, 1                    ; 2 uses
  %i.cw = add nsw i64 %i.cv, 2000000000
  %i.cx = select i1 %i.cu, i64 %i.cw, i64 %i.cv
  %i.cy = or disjoint i64 %i.cx, 1
  br label %modv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cz = icmp eq i64 %i.cq, 0
  %i.da = and i64 %i.cq, 6
  %i.db = icmp ne i64 %i.da, 0
  %i.dc = or i1 %i.cz, %i.db
  br i1 %i.dc, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i89

rbimpl_RB_TYPE_P_fastpath.exit.i.i89:             ; preds = %bb.r
  %i.dd = inttoptr i64 %i.cq to ptr
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !30
  %i.df = and i64 %i.de, 31
  %i.dg = icmp eq i64 %i.df, 10
  br i1 %i.dg, label %bb.s, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i89
  %i.dh = tail call i64 @rb_big_modulo(i64 noundef %i.cq, i64 noundef 2000000001) #18
  br label %modv.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i89, %bb.r
  %i.di = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cq, i64 noundef 37, i32 noundef 1, i64 noundef 2000000001) #18
  br label %modv.exit.i

modv.exit.i:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %bb.s, %bb.q
  %.0.i.i = phi i64 [ %i.di, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.dh, %bb.s ], [ %i.cy, %bb.q ] ; 6 uses
  %i.dj = icmp eq i64 %.0.i.i, 0
  %i.dk = and i64 %.0.i.i, 7
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = or i1 %i.dj, %i.dl
  br i1 %i.dm, label %wmod.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i2.i

rbimpl_RB_TYPE_P_fastpath.exit.i2.i:              ; preds = %modv.exit.i
  %i.dn = inttoptr i64 %.0.i.i to ptr             ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !30
  %i.dp = and i64 %i.do, 31
  %i.dq = icmp eq i64 %i.dp, 15
  br i1 %i.dq, label %bb.t, label %wmod.exit

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i2.i
  %i.dr = getelementptr i8, ptr %i.dn, i64 24
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !39
  %.not.i.i90 = icmp eq i64 %i.ds, 3
  br i1 %.not.i.i90, label %bb.u, label %wmod.exit

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr i8, ptr %i.dn, i64 16
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !41
  br label %wmod.exit

wmod.exit:                                        ; preds = %modv.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i2.i, %bb.t, %bb.u
  %.06.i.i = phi i64 [ %.0.i.i, %bb.t ], [ %i.du, %bb.u ], [ %.0.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i2.i ], [ %.0.i.i, %modv.exit.i ] ; 3 uses
  %i.dv = and i64 %.06.i.i, 1
  %or.cond24.not.i.i = icmp eq i64 %i.dv, 0
  br i1 %or.cond24.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %wmod.exit
  %i.dw = ashr i64 %.06.i.i, 1                    ; 2 uses
  %i.dx = sdiv i64 %i.dw, 1000000000              ; 2 uses
  %i.dy = mul nsw i64 %i.dx, 1000000000
  %i.dz = icmp eq i64 %i.dy, %i.dw
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = shl nsw i64 %i.dx, 1
  %i.eb = or disjoint i64 %i.ea, 1
  br label %quor.exit.i

bb.x:                                             ; preds = %bb.v, %wmod.exit
  %i.ec = tail call i64 @rb_numeric_quo(i64 noundef %.06.i.i, i64 noundef 2000000001) #18
  br label %quor.exit.i

quor.exit.i:                                      ; preds = %bb.x, %bb.w
  %.1.i.i91 = phi i64 [ %i.ec, %bb.x ], [ %i.eb, %bb.w ] ; 6 uses
  %i.ed = icmp eq i64 %.1.i.i91, 0
  %i.ee = and i64 %.1.i.i91, 7
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = or i1 %i.ed, %i.ef
  br i1 %i.eg, label %quov.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %quor.exit.i
  %i.eh = inttoptr i64 %.1.i.i91 to ptr           ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !30
  %i.ej = and i64 %i.ei, 31
  %i.ek = icmp eq i64 %i.ej, 15
  br i1 %i.ek, label %bb.y, label %quov.exit

bb.y:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.el = getelementptr i8, ptr %i.eh, i64 24
  %i.em = load i64, ptr %i.el, align 8, !tbaa !39
  %i.en = icmp eq i64 %i.em, 3
  br i1 %i.en, label %bb.z, label %quov.exit

bb.z:                                             ; preds = %bb.y
  %i.eo = getelementptr i8, ptr %i.eh, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !41
  br label %quov.exit

quov.exit:                                        ; preds = %quor.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.y, %bb.z
  %.0.i92 = phi i64 [ %i.ep, %bb.z ], [ %.1.i.i91, %bb.y ], [ %.1.i.i91, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.1.i.i91, %quor.exit.i ]
  %i.eq = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.cp, i64 noundef %.0.i92) #18 ; 0 uses
  %i.er = load i64, ptr @sym_dst, align 8, !tbaa !13
  %i.es = load i64, ptr %i.u, align 8
  %i.et = and i64 %i.es, 6597069766656
  %.not87 = icmp eq i64 %i.et, 0
  %i.eu = select i1 %.not87, i64 0, i64 20
  %i.ev = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.er, i64 noundef %i.eu) #18 ; 0 uses
  %i.ew = load i64, ptr @sym_zone, align 8, !tbaa !13
  %i.ex = tail call i64 @time_zone(i64 noundef %0)
  %i.ey = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.ew, i64 noundef %i.ex) #18 ; 0 uses
  br label %.loopexit

bb.aa:                                            ; preds = %force_make_tm.exit
  %i.ez = icmp eq i64 %1, 0
  %i.fa = and i64 %1, 7
  %i.fb = icmp ne i64 %i.fa, 0
  %i.fc = or i1 %i.ez, %i.fb
  br i1 %i.fc, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.aa
  %i.fd = inttoptr i64 %1 to ptr                  ; 5 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !30 ; 3 uses
  %i.ff = and i64 %i.fe, 31
  %i.fg = icmp eq i64 %i.ff, 7
  br i1 %i.fg, label %bb.ab, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, !prof !43

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.aa, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.fh = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.fi = tail call i64 @rb_obj_class(i64 noundef %1) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fh, ptr noundef nonnull @.str.128, i64 noundef %i.fi) #19
  unreachable

bb.ab:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.fj = and i64 %i.fe, 8192
  %.not.i93 = icmp eq i64 %i.fj, 0
  br i1 %.not.i93, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fk = lshr i64 %i.fe, 15
  %i.fl = and i64 %i.fk, 127
  br label %rb_array_len.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fm = getelementptr i8, ptr %i.fd, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !53
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.ac, %bb.ad
  %.0.i94 = phi i64 [ %i.fl, %bb.ac ], [ %i.fn, %bb.ad ]
  %i.fo = tail call i64 @rb_hash_new_with_size(i64 noundef %.0.i94) #18 ; 13 uses
  %i.fp = getelementptr i8, ptr %i.fd, i64 16     ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fd, i64 32
  %.shift = getelementptr i8, ptr %.1.i.i, i64 44
  br label %bb.ae

bb.ae:                                            ; preds = %bb.bl, %rb_array_len.exit
  %.084 = phi i64 [ 0, %rb_array_len.exit ], [ %i.kl, %bb.bl ] ; 4 uses
  %i.fr = load i64, ptr %i.fd, align 8, !tbaa !30 ; 2 uses
  %i.fs = and i64 %i.fr, 8192
  %.not.i95 = icmp eq i64 %i.fs, 0
  br i1 %.not.i95, label %rb_array_len.exit97, label %rb_array_len.exit97.thread

rb_array_len.exit97:                              ; preds = %bb.ae
  %i.ft = load i64, ptr %i.fp, align 8, !tbaa !53
  %i.fu = icmp slt i64 %.084, %i.ft
  br i1 %i.fu, label %bb.af, label %.loopexit

rb_array_len.exit97.thread:                       ; preds = %bb.ae
  %i.fv = lshr i64 %i.fr, 15
  %i.fw = and i64 %i.fv, 127
  %i.fx = icmp samesign ult i64 %.084, %i.fw
  br i1 %i.fx, label %RARRAY_AREF.exit, label %.loopexit

bb.af:                                            ; preds = %rb_array_len.exit97
  %i.fy = load ptr, ptr %i.fq, align 8, !tbaa !53
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit97.thread, %bb.af
  %.0.i.i99 = phi ptr [ %i.fy, %bb.af ], [ %i.fp, %rb_array_len.exit97.thread ]
  %i.fz = getelementptr [8 x i8], ptr %.0.i.i99, i64 %.084
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !13 ; 22 uses
  %i.gb = load i64, ptr @sym_year, align 8, !tbaa !13
  %i.gc = icmp eq i64 %i.gb, %i.ga
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %RARRAY_AREF.exit
  %i.gd = load i64, ptr %i.z, align 8, !tbaa !45
  %i.ge = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.gd) #18 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %RARRAY_AREF.exit
  %i.gf = load i64, ptr @sym_month, align 8, !tbaa !13
  %i.gg = icmp eq i64 %i.gf, %i.ga
  br i1 %i.gg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gh = load i64, ptr %i.u, align 8
  %i.gi = lshr i64 %i.gh, 8
  %i.gj = and i64 %i.gi, 30
  %i.gk = or disjoint i64 %i.gj, 1
  %i.gl = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.gk) #18 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gm = load i64, ptr @sym_day, align 8, !tbaa !13
  %i.gn = icmp eq i64 %i.gm, %i.ga
  br i1 %i.gn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.go = load i64, ptr %i.u, align 8
  %i.gp = lshr i64 %i.go, 12
  %i.gq = and i64 %i.gp, 62
  %i.gr = or disjoint i64 %i.gq, 1
  %i.gs = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.gr) #18 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gt = load i64, ptr @sym_yday, align 8, !tbaa !13
  %i.gu = icmp eq i64 %i.gt, %i.ga
  br i1 %i.gu, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gv = load i64, ptr %i.u, align 8
  %i.gw = shl i64 %i.gv, 1
  %i.gx = and i64 %i.gw, 1022
  %i.gy = or disjoint i64 %i.gx, 1
  %i.gz = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.gy) #18 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ha = load i64, ptr @sym_wday, align 8, !tbaa !13
  %i.hb = icmp eq i64 %i.ha, %i.ga
  br i1 %i.hb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hc = load i64, ptr %i.u, align 8
  %i.hd = lshr i64 %i.hc, 37
  %i.he = and i64 %i.hd, 14
  %i.hf = or disjoint i64 %i.he, 1
  %i.hg = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.hf) #18 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hh = load i64, ptr @sym_hour, align 8, !tbaa !13
  %i.hi = icmp eq i64 %i.hh, %i.ga
  br i1 %i.hi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hj = load i64, ptr %i.u, align 8
  %i.hk = lshr i64 %i.hj, 17
  %i.hl = and i64 %i.hk, 62
  %i.hm = or disjoint i64 %i.hl, 1
  %i.hn = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.hm) #18 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ho = load i64, ptr @sym_min, align 8, !tbaa !13
  %i.hp = icmp eq i64 %i.ho, %i.ga
  br i1 %i.hp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hq = load i64, ptr %i.u, align 8
  %i.hr = lshr i64 %i.hq, 22
  %i.hs = and i64 %i.hr, 126
  %i.ht = or disjoint i64 %i.hs, 1
  %i.hu = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.ht) #18 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hv = load i64, ptr @sym_sec, align 8, !tbaa !13
  %i.hw = icmp eq i64 %i.hv, %i.ga
  br i1 %i.hw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %7 = load i32, ptr %.shift, align 4
  %8 = shl i32 %7, 1
  %9 = and i32 %8, 126
  %10 = or disjoint i32 %9, 1
  %11 = zext nneg i32 %10 to i64
  %i.hx = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %11) #18 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hy = load i64, ptr @sym_subsec, align 8, !tbaa !13
  %i.hz = icmp eq i64 %i.hy, %i.ga
  br i1 %i.hz, label %bb.aw, label %bb.bh

bb.aw:                                            ; preds = %bb.av
  %i.ia = load i64, ptr %.1.i.i, align 8, !tbaa !22 ; 7 uses
  %i.ib = trunc i64 %i.ia to i1
  br i1 %i.ib, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ic = ashr i64 %i.ia, 1
  %i.id = srem i64 %i.ic, 1000000000              ; 2 uses
  %i.ie = icmp slt i64 %i.id, 0
  %i.if = shl nsw i64 %i.id, 1                    ; 2 uses
  %i.ig = add nsw i64 %i.if, 2000000000
  %i.ih = select i1 %i.ie, i64 %i.ig, i64 %i.if
  %i.ii = or disjoint i64 %i.ih, 1
  br label %modv.exit.i102

bb.ay:                                            ; preds = %bb.aw
  %i.ij = icmp eq i64 %i.ia, 0
  %i.ik = and i64 %i.ia, 6
  %i.il = icmp ne i64 %i.ik, 0
  %i.im = or i1 %i.ij, %i.il
  br i1 %i.im, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i101, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i100

rbimpl_RB_TYPE_P_fastpath.exit.i.i100:            ; preds = %bb.ay
  %i.in = inttoptr i64 %i.ia to ptr
  %i.io = load i64, ptr %i.in, align 8, !tbaa !30
  %i.ip = and i64 %i.io, 31
  %i.iq = icmp eq i64 %i.ip, 10
  br i1 %i.iq, label %bb.az, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i101

bb.az:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i100
  %i.ir = tail call i64 @rb_big_modulo(i64 noundef %i.ia, i64 noundef 2000000001) #18
  br label %modv.exit.i102

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i101:     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i100, %bb.ay
  %i.is = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ia, i64 noundef 37, i32 noundef 1, i64 noundef 2000000001) #18
  br label %modv.exit.i102

modv.exit.i102:                                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i101, %bb.az, %bb.ax
  %.0.i.i103 = phi i64 [ %i.is, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i101 ], [ %i.ir, %bb.az ], [ %i.ii, %bb.ax ] ; 6 uses
  %i.it = icmp eq i64 %.0.i.i103, 0
  %i.iu = and i64 %.0.i.i103, 7
  %i.iv = icmp ne i64 %i.iu, 0
  %i.iw = or i1 %i.it, %i.iv
  br i1 %i.iw, label %wmod.exit108, label %rbimpl_RB_TYPE_P_fastpath.exit.i2.i104

rbimpl_RB_TYPE_P_fastpath.exit.i2.i104:           ; preds = %modv.exit.i102
  %i.ix = inttoptr i64 %.0.i.i103 to ptr          ; 3 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !30
  %i.iz = and i64 %i.iy, 31
  %i.ja = icmp eq i64 %i.iz, 15
  br i1 %i.ja, label %bb.ba, label %wmod.exit108

bb.ba:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i2.i104
  %i.jb = getelementptr i8, ptr %i.ix, i64 24
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !39
  %.not.i.i106 = icmp eq i64 %i.jc, 3
  br i1 %.not.i.i106, label %bb.bb, label %wmod.exit108

bb.bb:                                            ; preds = %bb.ba
  %i.jd = getelementptr i8, ptr %i.ix, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !41
  br label %wmod.exit108

wmod.exit108:                                     ; preds = %modv.exit.i102, %rbimpl_RB_TYPE_P_fastpath.exit.i2.i104, %bb.ba, %bb.bb
  %.06.i.i105 = phi i64 [ %.0.i.i103, %bb.ba ], [ %i.je, %bb.bb ], [ %.0.i.i103, %rbimpl_RB_TYPE_P_fastpath.exit.i2.i104 ], [ %.0.i.i103, %modv.exit.i102 ] ; 3 uses
  %i.jf = and i64 %.06.i.i105, 1
  %or.cond24.not.i.i109 = icmp eq i64 %i.jf, 0
  br i1 %or.cond24.not.i.i109, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %wmod.exit108
  %i.jg = ashr i64 %.06.i.i105, 1                 ; 2 uses
  %i.jh = sdiv i64 %i.jg, 1000000000              ; 2 uses
  %i.ji = mul nsw i64 %i.jh, 1000000000
  %i.jj = icmp eq i64 %i.ji, %i.jg
  br i1 %i.jj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jk = shl nsw i64 %i.jh, 1
  %i.jl = or disjoint i64 %i.jk, 1
  br label %quor.exit.i110

bb.be:                                            ; preds = %bb.bc, %wmod.exit108
  %i.jm = tail call i64 @rb_numeric_quo(i64 noundef %.06.i.i105, i64 noundef 2000000001) #18
  br label %quor.exit.i110

quor.exit.i110:                                   ; preds = %bb.be, %bb.bd
  %.1.i.i111 = phi i64 [ %i.jm, %bb.be ], [ %i.jl, %bb.bd ] ; 6 uses
  %i.jn = icmp eq i64 %.1.i.i111, 0
  %i.jo = and i64 %.1.i.i111, 7
  %i.jp = icmp ne i64 %i.jo, 0
  %i.jq = or i1 %i.jn, %i.jp
  br i1 %i.jq, label %quov.exit114, label %rbimpl_RB_TYPE_P_fastpath.exit.i112

rbimpl_RB_TYPE_P_fastpath.exit.i112:              ; preds = %quor.exit.i110
  %i.jr = inttoptr i64 %.1.i.i111 to ptr          ; 3 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !30
  %i.jt = and i64 %i.js, 31
  %i.ju = icmp eq i64 %i.jt, 15
  br i1 %i.ju, label %bb.bf, label %quov.exit114

bb.bf:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i112
  %i.jv = getelementptr i8, ptr %i.jr, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !39
  %i.jx = icmp eq i64 %i.jw, 3
  br i1 %i.jx, label %bb.bg, label %quov.exit114

bb.bg:                                            ; preds = %bb.bf
  %i.jy = getelementptr i8, ptr %i.jr, i64 16
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !41
  br label %quov.exit114

quov.exit114:                                     ; preds = %quor.exit.i110, %rbimpl_RB_TYPE_P_fastpath.exit.i112, %bb.bf, %bb.bg
  %.0.i113 = phi i64 [ %i.jz, %bb.bg ], [ %.1.i.i111, %bb.bf ], [ %.1.i.i111, %rbimpl_RB_TYPE_P_fastpath.exit.i112 ], [ %.1.i.i111, %quor.exit.i110 ]
  %i.ka = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %.0.i113) #18 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %quov.exit114, %bb.av
  %i.kb = load i64, ptr @sym_dst, align 8, !tbaa !13
  %i.kc = icmp eq i64 %i.kb, %i.ga
  br i1 %i.kc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kd = load i64, ptr %i.u, align 8
  %i.ke = and i64 %i.kd, 6597069766656
  %.not86 = icmp eq i64 %i.ke, 0
  %i.kf = select i1 %.not86, i64 0, i64 20
  %i.kg = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.kf) #18 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.kh = load i64, ptr @sym_zone, align 8, !tbaa !13
  %i.ki = icmp eq i64 %i.kh, %i.ga
  br i1 %i.ki, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.kj = tail call i64 @time_zone(i64 noundef %0)
  %i.kk = tail call i64 @rb_hash_aset(i64 noundef %i.fo, i64 noundef %i.ga, i64 noundef %i.kj) #18 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kl = add nuw nsw i64 %.084, 1
  br label %bb.ae, !llvm.loop !63

.loopexit:                                        ; preds = %rb_array_len.exit97.thread, %rb_array_len.exit97, %quov.exit
  %.0 = phi i64 [ %i.az, %quov.exit ], [ %i.fo, %rb_array_len.exit97 ], [ %i.fo, %rb_array_len.exit97.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @time_plus(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !31

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

end_hunk_0
begin_hunk_1_@time_ceil:bb.a
  %i.au = icmp ne i64 %i.at, 0
  %i.av = or i1 %i.as, %i.au
  br i1 %i.av, label %rb_time_unmagnify.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i14

rbimpl_RB_TYPE_P_fastpath.exit.i.i14:             ; preds = %rb_time_unmagnify_to_rational.exit.i
  %i.aw = inttoptr i64 %.1.i.i.i to ptr           ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.ay = and i64 %i.ax, 31
  %i.az = icmp eq i64 %i.ay, 15
  br i1 %i.az, label %bb.q, label %rb_time_unmagnify.exit

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i14
  %i.ba = getelementptr i8, ptr %i.aw, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !39
  %.not.i.i15 = icmp eq i64 %i.bb, 3
  br i1 %.not.i.i15, label %bb.r, label %rb_time_unmagnify.exit

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr i8, ptr %i.aw, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41
  br label %rb_time_unmagnify.exit

rb_time_unmagnify.exit:                           ; preds = %rb_time_unmagnify_to_rational.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i14, %bb.q, %bb.r
  %.06.i.i = phi i64 [ %.1.i.i.i, %bb.q ], [ %i.bd, %bb.r ], [ %.1.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i14 ], [ %.1.i.i.i, %rb_time_unmagnify_to_rational.exit.i ] ; 7 uses
  %i.be = trunc i64 %.012 to i1
  br i1 %i.be, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %rb_time_unmagnify.exit
  %i.bf = ashr i64 %.012, 1                       ; 5 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @rb_num_zerodiv() #22
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bh = trunc i64 %.06.i.i to i1
  br i1 %i.bh, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.bi = ashr i64 %.06.i.i, 1                    ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -4611686018427387904
  %i.bk = icmp eq i64 %i.bf, -1
  %or.cond.i.i.i = and i1 %i.bk, %i.bj
  br i1 %or.cond.i.i.i, label %modv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = srem i64 %i.bi, %i.bf                   ; 5 uses
  %i.bm = icmp sgt i64 %i.bf, 0
  br i1 %i.bm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bn = icmp slt i64 %i.bl, 0
  br i1 %i.bn, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bo = icmp sgt i64 %i.bl, 0
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bp = add nsw i64 %i.bl, %i.bf
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0.i.i.i = phi i64 [ %i.bp, %bb.z ], [ %i.bl, %bb.x ], [ %i.bl, %bb.y ]
  %i.bq = shl i64 %.0.i.i.i, 1
  %i.br = or disjoint i64 %i.bq, 1
  br label %modv.exit

bb.ab:                                            ; preds = %bb.u, %rb_time_unmagnify.exit
  %i.bs = icmp eq i64 %.06.i.i, 0
  %i.bt = and i64 %.06.i.i, 7
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = or i1 %i.bs, %i.bu
  br i1 %i.bv, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.ab
  %i.bw = inttoptr i64 %.06.i.i to ptr
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !30
  %i.by = and i64 %i.bx, 31
  %i.bz = icmp eq i64 %i.by, 10
  br i1 %i.bz, label %bb.ac, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.ac:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ca = tail call i64 @rb_big_modulo(i64 noundef %.06.i.i, i64 noundef %.012) #18
  br label %modv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.ab
  %i.cb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.06.i.i, i64 noundef 37, i32 noundef 1, i64 noundef %.012) #18
  br label %modv.exit

modv.exit:                                        ; preds = %bb.v, %bb.aa, %bb.ac, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i16 = phi i64 [ %i.cb, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.ca, %bb.ac ], [ %i.br, %bb.aa ], [ 1, %bb.v ] ; 6 uses
  %i.cc = tail call i64 @rb_equal(i64 noundef %.0.i16, i64 noundef 1) #18
  %.not13 = icmp eq i64 %i.cc, 0
  br i1 %.not13, label %bb.ad, label %subv.exit

bb.ad:                                            ; preds = %modv.exit
  %i.cd = and i64 %.012, 1
  %i.ce = and i64 %i.cd, %.0.i16
  %or.cond.not.i = icmp eq i64 %i.ce, 0
  br i1 %or.cond.not.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = ashr i64 %.012, 1
  %i.cg = ashr i64 %.0.i16, 1
  %i.ch = sub nsw i64 %i.cf, %i.cg                ; 3 uses
  %i.ci = add i64 %i.ch, 4611686018427387904
  %or.cond.i.i = icmp sgt i64 %i.ci, -1
  br i1 %or.cond.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cj = shl nsw i64 %i.ch, 1
  %i.ck = or disjoint i64 %i.cj, 1
  br label %subv.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cl = tail call i64 @rb_int2big(i64 noundef %i.ch) #18
  br label %subv.exit

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp eq i64 %.012, 0
  %i.cn = and i64 %.012, 7
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = or i1 %i.cm, %i.co
  br i1 %i.cp, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i19, label %rbimpl_RB_TYPE_P_fastpath.exit.i18

rbimpl_RB_TYPE_P_fastpath.exit.i18:               ; preds = %bb.ah
  %i.cq = inttoptr i64 %.012 to ptr
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !30
  %i.cs = and i64 %i.cr, 31
  %i.ct = icmp eq i64 %i.cs, 10
  br i1 %i.ct, label %bb.ai, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i19

bb.ai:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i18
  %i.cu = tail call i64 @rb_big_minus(i64 noundef %.012, i64 noundef %.0.i16) #18
  br label %subv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i19:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i18, %bb.ah
  %i.cv = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.012, i64 noundef 45, i32 noundef 1, i64 noundef %.0.i16) #18
  br label %subv.exit

subv.exit:                                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i19, %bb.ai, %bb.ag, %bb.af, %modv.exit
  %.0 = phi i64 [ %.0.i16, %modv.exit ], [ %i.cv, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i19 ], [ %i.cu, %bb.ai ], [ %i.ck, %bb.af ], [ %i.cl, %bb.ag ]
  %i.cw = load i64, ptr @rb_cTime, align 8, !tbaa !13
  %i.cx = tail call fastcc i64 @time_add0(i64 noundef %i.cw, ptr noundef nonnull readonly %.1.i.i, i64 noundef %.0, i32 noundef 1)
  ret i64 %i.cx
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 128) i64 @time_sec(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !31

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 40
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = and i64 %i.v, 61572651155456
  %.not.i = icmp eq i64 %i.w, 26388279066624
  br i1 %.not.i, label %bb.e, label %get_timeval.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.y = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.92, i64 noundef %i.y) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.z = and i64 %i.v, 70368744177664
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %time_get_tm.exit

bb.f:                                             ; preds = %get_timeval.exit
  %i.ab = lshr i64 %i.v, 43
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 7
  switch i32 %i.ad, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.h:                                             ; preds = %bb.f
  %i.af = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.i, %bb.h, %bb.g, %get_timeval.exit
  %.shift = getelementptr i8, ptr %.1.i.i, i64 44
  %1 = load i32, ptr %.shift, align 4
  %2 = shl i32 %1, 1
  %3 = and i32 %2, 126
  %4 = or disjoint i32 %3, 1
  %5 = zext nneg i32 %4 to i64
  ret i64 %5
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 128) i64 @time_min(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !31

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 40    ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = and i64 %i.v, 61572651155456
  %.not.i = icmp eq i64 %i.w, 26388279066624
  br i1 %.not.i, label %bb.e, label %get_timeval.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.y = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.92, i64 noundef %i.y) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.z = and i64 %i.v, 70368744177664
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %time_get_tm.exit

bb.f:                                             ; preds = %get_timeval.exit
  %i.ab = lshr i64 %i.v, 43
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 7
  switch i32 %i.ad, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.h:                                             ; preds = %bb.f
  %i.af = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.i, %bb.h, %bb.g, %get_timeval.exit
  %i.ah = load i64, ptr %i.u, align 8
  %i.ai = lshr i64 %i.ah, 22
  %i.aj = and i64 %i.ai, 126
  %i.ak = or disjoint i64 %i.aj, 1
  ret i64 %i.ak
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 64) i64 @time_hour(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !31

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp eq ptr %i.r, @time_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 40    ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 3 uses
  %i.w = and i64 %i.v, 61572651155456
  %.not.i = icmp eq i64 %i.w, 26388279066624
  br i1 %.not.i, label %bb.e, label %get_timeval.exit

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.y = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.92, i64 noundef %i.y) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.z = and i64 %i.v, 70368744177664
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %time_get_tm.exit

bb.f:                                             ; preds = %get_timeval.exit
  %i.ab = lshr i64 %i.v, 43
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 7
  switch i32 %i.ad, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.h:                                             ; preds = %bb.f
  %i.af = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.i, %bb.h, %bb.g, %get_timeval.exit
  %i.ah = load i64, ptr %i.u, align 8
  %i.ai = lshr i64 %i.ah, 17
  %i.aj = and i64 %i.ai, 62
  %i.ak = or disjoint i64 %i.aj, 1
  ret i64 %i.ak
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 64) i64 @time_mday(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
end_hunk_1
begin_hunk_2_@time_strftime:bb.a
  %i.ak = and i64 %i.aj, 511
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.j, label %force_make_tm.exit

bb.j:                                             ; preds = %time_get_tm.exit
  %i.al = getelementptr i8, ptr %.1.i.i, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25 ; 4 uses
  %i.an = icmp eq i64 %i.am, 4
  %i.ao = load i64, ptr @str_empty, align 8
  %.not.i24 = icmp eq i64 %i.am, %i.ao
  %or.cond.i = select i1 %i.an, i1 true, i1 %.not.i24
  %i.ap = load i64, ptr @str_utc, align 8
  %.not8.i = icmp eq i64 %i.am, %i.ap
  %or.cond10.i = select i1 %or.cond.i, i1 true, i1 %.not8.i
  br i1 %or.cond10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call fastcc i32 @zone_localtime(i64 noundef %i.am, i64 noundef %0)
  %.not9.i = icmp eq i32 %i.aq, 0
  br i1 %.not9.i, label %._crit_edge, label %force_make_tm.exit

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i64, ptr %i.v, align 8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ar = phi i64 [ %.pre, %._crit_edge ], [ %i.aj, %bb.j ] ; 2 uses
  %i.as = and i64 %i.ar, -70368744177665
  store i64 %i.as, ptr %i.v, align 8
  %i.at = lshr i64 %i.ar, 43
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = and i32 %i.au, 7
  switch i32 %i.av, label %bb.o [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call i64 @time_gmtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = tail call fastcc i64 @time_fixoff(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

bb.o:                                             ; preds = %bb.l
  %i.ay = tail call fastcc i64 @time_localtime(i64 noundef %0), !inline_history !61 ; 0 uses
  br label %force_make_tm.exit

force_make_tm.exit:                               ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %time_get_tm.exit
  %i.az = call i64 @rb_string_value(ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bb = call ptr @rb_enc_get(i64 noundef %i.ba) #18 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 20
  %.val.i.i = load i32, ptr %i.bc, align 4, !tbaa !54
  %.not.i.i25 = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i25, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %force_make_tm.exit
  %i.bd = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.bb) #21
  %.not3.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not3.i.i, label %bb.p, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %force_make_tm.exit, %rb_enc_str_asciicompat_p.exit
  %i.be = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @.str.132) #19
  unreachable

bb.p:                                             ; preds = %rb_enc_str_asciicompat_p.exit
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bg = call i64 @rb_str_tmp_frozen_acquire(i64 noundef %i.bf) #18 ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !30
  %i.bj = and i64 %i.bi, 8192
  %.not.i26 = icmp eq i64 %i.bj, 0
  %i.bk = getelementptr i8, ptr %i.bh, i64 24     ; 2 uses
  br i1 %.not.i26, label %RSTRING_PTR.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.p, %bb.q
  %i.bm = phi ptr [ %i.bl, %bb.q ], [ %i.bk, %bb.p ]
  %i.bn = getelementptr i8, ptr %i.bh, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !56 ; 2 uses
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bq = call ptr @rb_enc_get(i64 noundef %i.bp) #18 ; 2 uses
  %i.br = icmp eq i64 %i.bo, 0
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %RSTRING_PTR.exit
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.133) #18
  %i.bs = call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %i.bq) #18
  br label %bb.u

bb.s:                                             ; preds = %RSTRING_PTR.exit
  %i.bt = load i64, ptr %.1.i.i, align 8, !tbaa !22
  %i.bu = load i64, ptr %i.v, align 8
  %i.bv = and i64 %i.bu, 61572651155456
  %i.bw = icmp eq i64 %i.bv, 8796093022208
  %i.bx = zext i1 %i.bw to i32
  %i.by = call fastcc i64 @rb_strftime_alloc(ptr noundef %i.bm, i64 noundef %i.bo, ptr noundef %i.bq, i64 noundef %0, ptr noundef %i.aa, i64 noundef %i.bt, i32 noundef %i.bx) ; 2 uses
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !13
  call void @rb_str_tmp_frozen_release(i64 noundef %i.bz, i64 noundef %i.bg) #18
  %.not23 = icmp eq i64 %i.by, 0
  br i1 %.not23, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ca, ptr noundef nonnull @.str.134, i64 noundef %i.cb) #19
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i64 [ %i.bs, %bb.r ], [ %i.by, %bb.s ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @time_xmlschema(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #19
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.c, label %bb.f

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = ashr i64 %i.b, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @rb_num2long(i64 noundef %i.b) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i, i64 0)
  br label %bb.f

bb.f:                                             ; preds = %rb_num2long_inline.exit, %rb_check_arity.exit
  %.0 = phi i64 [ %spec.store.select, %rb_num2long_inline.exit ], [ 0, %rb_check_arity.exit ] ; 12 uses
  %i.f = icmp eq i64 %2, 0
  %i.g = and i64 %2, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.f
  %i.j = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30
  %i.l = and i64 %i.k, 95
  %or.cond.not.i.i = icmp eq i64 %i.l, 76
  br i1 %or.cond.not.i.i, label %bb.g, label %.critedge.i.i, !prof !31

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = and i64 %i.n, -2                         ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = trunc i64 %i.n to i1
  %i.r = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  br i1 %i.q, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.h, %bb.g
  %i.t = phi ptr [ %i.s, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = icmp eq i64 %i.o, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.i
  %.016.i.i = phi ptr [ %i.w, %bb.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.v = getelementptr i8, ptr %.016.i.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp eq ptr %i.w, @time_data_type
  br i1 %i.x, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %i.y = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.i, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.y, %.critedge.i.i ], [ %i.t, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.t, %bb.i ] ; 4 uses
  %i.z = getelementptr i8, ptr %.1.i.i, i64 40    ; 10 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 61572651155456
  %.not.i = icmp eq i64 %i.ab, 26388279066624
  br i1 %.not.i, label %bb.j, label %get_timeval.exit

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.ac = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.ad = tail call i64 @rb_obj_class(i64 noundef %2) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.92, i64 noundef %i.ad) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.ae = getelementptr i8, ptr %.1.i.i, i64 8
  %i.af = and i64 %i.aa, 70368744177664
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %time_get_tm.exit

bb.k:                                             ; preds = %get_timeval.exit
  %i.ah = lshr i64 %i.aa, 43
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 7
  switch i32 %i.aj, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call i64 @time_gmtime(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.m:                                             ; preds = %bb.k
  %i.al = tail call fastcc i64 @time_fixoff(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.n:                                             ; preds = %bb.k
  %i.am = tail call fastcc i64 @time_localtime(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.n, %bb.m, %bb.l, %get_timeval.exit
  %i.an = add nuw i64 %.0, 22
  %i.ao = icmp ne i64 %.0, 0                      ; 2 uses
  %i.ap = zext i1 %i.ao to i64
  %i.aq = add nuw i64 %i.an, %i.ap                ; 2 uses
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.o, label %bb.q

bb.o:                                             ; preds = %time_get_tm.exit
  %i.at = ashr i64 %i.ar, 1                       ; 3 uses
  %.lobit = lshr i64 %i.at, 63
  %i.au = trunc nuw nsw i64 %.lobit to i32        ; 2 uses
  %i.av = or disjoint i32 %i.au, 4                ; 2 uses
  %i.aw = add nsw i64 %i.at, 9999
  %or.cond = icmp ult i64 %i.aw, 19999
  %i.ax = or disjoint i32 %i.au, 20
  %i.ay = select i1 %or.cond, i32 %i.av, i32 %i.ax ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add nuw i64 %i.aq, %i.az
  %i.bb = tail call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %i.ba) #18, !callees !64 ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.be = and i64 %i.bd, 8192
  %.not.i142 = icmp eq i64 %i.be, 0
  %i.bf = getelementptr i8, ptr %i.bc, i64 24     ; 2 uses
  br i1 %.not.i142, label %RSTRING_PTR.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.o, %bb.p
  %i.bh = phi ptr [ %i.bg, %bb.p ], [ %i.bf, %bb.o ] ; 2 uses
  %i.bi = add nuw nsw i32 %i.ay, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.bh, i64 noundef %i.bj, ptr noundef nonnull @.str.135, i32 noundef %i.av, i64 noundef %i.at) #18
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bl
  br label %bb.s

bb.q:                                             ; preds = %time_get_tm.exit
  %i.bn = tail call i64 @rb_int2str(i64 noundef %i.ar, i32 noundef 10) #18 ; 3 uses
  tail call void @rb_str_modify_expand(i64 noundef %i.bn, i64 noundef %i.aq) #18
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !30
  %i.bq = and i64 %i.bp, 8192
  %.not.i143 = icmp eq i64 %i.bq, 0
  %i.br = getelementptr i8, ptr %i.bo, i64 24     ; 2 uses
  br i1 %.not.i143, label %RSTRING_END.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.q, %bb.r
  %i.bt = phi ptr [ %i.bs, %bb.r ], [ %i.br, %bb.q ]
  %i.bu = getelementptr i8, ptr %i.bo, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !56
  %i.bw = getelementptr i8, ptr %i.bt, i64 %i.bv
  br label %bb.s

bb.s:                                             ; preds = %RSTRING_PTR.exit, %RSTRING_END.exit
  %.1 = phi ptr [ %i.bw, %RSTRING_END.exit ], [ %i.bm, %RSTRING_PTR.exit ] ; 17 uses
  %.0126 = phi i64 [ %i.bn, %RSTRING_END.exit ], [ %i.bb, %RSTRING_PTR.exit ] ; 3 uses
  %i.bx = getelementptr i8, ptr %.1, i64 1
  store i8 45, ptr %.1, align 1, !tbaa !53
  %i.by = load i64, ptr %i.z, align 8
  %i.bz = and i64 %i.by, 7168
  %.cmp = icmp samesign ugt i64 %i.bz, 4608
  %i.ca = zext i1 %.cmp to i8
  %i.cb = or disjoint i8 %i.ca, 48
  %i.cc = getelementptr i8, ptr %.1, i64 2
  store i8 %i.cb, ptr %i.bx, align 1, !tbaa !53
  %i.cd = load i64, ptr %i.z, align 8
  %.fr = freeze i64 %i.cd
  %i.ce = trunc i64 %.fr to i32
  %i.cf = lshr i32 %i.ce, 9
  %i.cg = and i32 %i.cf, 15                       ; 3 uses
  %.urem = add nuw nsw i32 %i.cg, 246
  %.cmp159 = icmp samesign ult i32 %i.cg, 10
  %i.ch = select i1 %.cmp159, i32 %i.cg, i32 %.urem
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = getelementptr i8, ptr %.1, i64 3
  store i8 %i.cj, ptr %i.cc, align 1, !tbaa !53
  %i.cl = getelementptr i8, ptr %.1, i64 4
  store i8 45, ptr %i.ck, align 1, !tbaa !53
  %i.cm = load i64, ptr %i.z, align 8
  %i.cn = lshr i64 %i.cm, 13
  %i.co = trunc i64 %i.cn to i8
  %.lhs.trunc = and i8 %i.co, 30
  %i.cp = udiv i8 %.lhs.trunc, 10
  %i.cq = or disjoint i8 %i.cp, 48
  %i.cr = getelementptr i8, ptr %.1, i64 5
  store i8 %i.cq, ptr %i.cl, align 1, !tbaa !53
  %i.cs = load i64, ptr %i.z, align 8
  %i.ct = lshr i64 %i.cs, 13
  %i.cu = trunc i64 %i.ct to i8
  %.lhs.trunc160 = and i8 %i.cu, 31
  %i.cv = urem i8 %.lhs.trunc160, 10
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = getelementptr i8, ptr %.1, i64 6
  store i8 %i.cw, ptr %i.cr, align 1, !tbaa !53
  %i.cy = getelementptr i8, ptr %.1, i64 7
  store i8 84, ptr %i.cx, align 1, !tbaa !53
  %i.cz = load i64, ptr %i.z, align 8
  %i.da = lshr i64 %i.cz, 18
  %i.db = trunc i64 %i.da to i8
  %.lhs.trunc162 = and i8 %i.db, 30
  %i.dc = udiv i8 %.lhs.trunc162, 10
  %i.dd = or disjoint i8 %i.dc, 48
  %i.de = getelementptr i8, ptr %.1, i64 8
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !53
  %i.df = load i64, ptr %i.z, align 8
  %i.dg = lshr i64 %i.df, 18
  %i.dh = trunc i64 %i.dg to i8
  %.lhs.trunc164 = and i8 %i.dh, 31
  %i.di = urem i8 %.lhs.trunc164, 10
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr i8, ptr %.1, i64 9
  store i8 %i.dj, ptr %i.de, align 1, !tbaa !53
  %i.dl = getelementptr i8, ptr %.1, i64 10
  store i8 58, ptr %i.dk, align 1, !tbaa !53
  %i.dm = load i64, ptr %i.z, align 8
  %i.dn = lshr i64 %i.dm, 23
  %i.do = trunc i64 %i.dn to i8
  %.lhs.trunc166 = and i8 %i.do, 62
  %i.dp = udiv i8 %.lhs.trunc166, 10
  %i.dq = or disjoint i8 %i.dp, 48
  %i.dr = getelementptr i8, ptr %.1, i64 11
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !53
  %i.ds = load i64, ptr %i.z, align 8
  %i.dt = lshr i64 %i.ds, 23
  %i.du = trunc i64 %i.dt to i8
  %.lhs.trunc168 = and i8 %i.du, 63
  %i.dv = urem i8 %.lhs.trunc168, 10
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = getelementptr i8, ptr %.1, i64 12
  store i8 %i.dw, ptr %i.dr, align 1, !tbaa !53
  %i.dy = getelementptr i8, ptr %.1, i64 13
  store i8 58, ptr %i.dx, align 1, !tbaa !53
  %.shift = getelementptr i8, ptr %.1.i.i, i64 44 ; 2 uses
  %3 = load i32, ptr %.shift, align 4
  %i.dz = trunc i32 %3 to i8
  %i.ea = and i8 %i.dz, 62
  %i.eb = udiv i8 %i.ea, 10
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = getelementptr i8, ptr %.1, i64 14
  store i8 %i.ec, ptr %i.dy, align 1, !tbaa !53
  %4 = load i32, ptr %.shift, align 4
  %i.ee = trunc i32 %4 to i8
  %i.ef = and i8 %i.ee, 63
  %i.eg = urem i8 %i.ef, 10
  %i.eh = or disjoint i8 %i.eg, 48
  %i.ei = getelementptr i8, ptr %.1, i64 15       ; 2 uses
  store i8 %i.eh, ptr %i.ed, align 1, !tbaa !53
  br i1 %i.ao, label %bb.t, label %ruby_nonempty_memcpy.exit

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr i8, ptr %.1.i.i, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !46 ; 8 uses
  %i.el = getelementptr i8, ptr %.1, i64 16       ; 4 uses
  store i8 46, ptr %i.ei, align 1, !tbaa !53
  %i.em = icmp samesign ult i64 %.0, 10
  br i1 %i.em, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.en = trunc nuw nsw i64 %.0 to i32
  %i.eo = sub nuw nsw i32 9, %i.en
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.ep = add nsw i64 %.0, -9
  %i.eq = tail call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.ep) #18 ; 4 uses
  %i.er = and i64 %i.ek, 1
  %i.es = and i64 %i.er, %i.eq
  %or.cond.not.i = icmp eq i64 %i.es, 0
  br i1 %or.cond.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.et = ashr i64 %i.ek, 1
  %i.eu = ashr i64 %i.eq, 1
  %i.ev = sext i64 %i.et to i128
  %i.ew = sext i64 %i.eu to i128
  %i.ex = mul nsw i128 %i.ew, %i.ev               ; 3 uses
  %i.ey = add nsw i128 %i.ex, 4611686018427387904
  %or.cond.i.i = icmp ult i128 %i.ey, 9223372036854775808
  br i1 %or.cond.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ez = trunc nsw i128 %i.ex to i64
  %i.fa = shl nsw i64 %i.ez, 1
  %i.fb = or disjoint i64 %i.fa, 1
  br label %mulv.exit

bb.y:                                             ; preds = %bb.w
  %i.fc = tail call i64 @rb_int128t2big(i128 noundef %i.ex) #18
  br label %mulv.exit

bb.z:                                             ; preds = %bb.v
  %i.fd = icmp eq i64 %i.ek, 0
  %i.fe = and i64 %i.ek, 7
  %i.ff = icmp ne i64 %i.fe, 0
  %i.fg = or i1 %i.fd, %i.ff
  br i1 %i.fg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.z
  %i.fh = inttoptr i64 %i.ek to ptr
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !30
  %i.fj = and i64 %i.fi, 31
  %i.fk = icmp eq i64 %i.fj, 10
  br i1 %i.fk, label %bb.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.aa:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.fl = tail call i64 @rb_big_mul(i64 noundef %i.ek, i64 noundef %i.eq) #18
  br label %mulv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.z
  %i.fm = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ek, i64 noundef 42, i32 noundef 1, i64 noundef %i.eq) #18
  br label %mulv.exit

mulv.exit:                                        ; preds = %bb.x, %bb.y, %bb.aa, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i144 = phi i64 [ %i.fm, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.fl, %bb.aa ], [ %i.fb, %bb.x ], [ %i.fc, %bb.y ] ; 7 uses
  %i.fn = trunc i64 %.0.i144 to i1
  br i1 %i.fn, label %rb_integer_type_p.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %mulv.exit
  %i.fo = icmp eq i64 %.0.i144, 0
  %i.fp = and i64 %.0.i144, 6
  %i.fq = icmp ne i64 %i.fp, 0
  %i.fr = or i1 %i.fo, %i.fq
  br i1 %i.fr, label %rb_integer_type_p.exit.thread157, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.ab
  %i.fs = inttoptr i64 %.0.i144 to ptr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !30
  %i.fu = and i64 %i.ft, 31
  %i.fv = icmp eq i64 %i.fu, 10
  br i1 %i.fv, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread157

rb_integer_type_p.exit.thread157:                 ; preds = %bb.ab, %rb_integer_type_p.exit
  %i.fw = tail call i64 @rb_Integer(i64 noundef %.0.i144) #18
  br label %rb_integer_type_p.exit.thread

rb_integer_type_p.exit.thread:                    ; preds = %mulv.exit, %rb_integer_type_p.exit.thread157, %rb_integer_type_p.exit
  %.0135 = phi i64 [ %.0.i144, %rb_integer_type_p.exit ], [ %i.fw, %rb_integer_type_p.exit.thread157 ], [ %.0.i144, %mulv.exit ] ; 2 uses
  %i.fx = trunc i64 %.0135 to i32
  %i.fy = or i32 %i.fx, -2
  %.neg = add nsw i32 %i.fy, 1
  br label %bb.ac

bb.ac:                                            ; preds = %rb_integer_type_p.exit.thread, %bb.u
  %.1136 = phi i64 [ %i.ek, %bb.u ], [ %.0135, %rb_integer_type_p.exit.thread ] ; 4 uses
  %.1133 = phi i32 [ %i.eo, %bb.u ], [ %.neg, %rb_integer_type_p.exit.thread ] ; 3 uses
  %i.fz = icmp sgt i32 %.1133, -1
  %i.ga = icmp samesign ult i64 %.0, 2147483647
  %or.cond5 = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond5, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gb = trunc i64 %.1136 to i1
  br i1 %i.gb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gc = ashr i64 %.1136, 1
  br label %rb_num2long_inline.exit147

bb.af:                                            ; preds = %bb.ad
  %i.gd = tail call i64 @rb_num2long(i64 noundef %.1136) #18
  br label %rb_num2long_inline.exit147

rb_num2long_inline.exit147:                       ; preds = %bb.ae, %bb.af
  %.0.i146 = phi i64 [ %i.gc, %bb.ae ], [ %i.gd, %bb.af ] ; 2 uses
  %.not174 = icmp eq i32 %.1133, 0
  br i1 %.not174, label %ruby_nonempty_memcpy.exit.loopexit, label %bb.ag

bb.ag:                                            ; preds = %rb_num2long_inline.exit147
  %i.ge = uitofp nneg i32 %.1133 to double
  %i.gf = tail call double @pow(double noundef 1.000000e+01, double noundef %i.ge) #18, !tbaa !7
  %i.gg = fptosi double %i.gf to i64
  %i.gh = sdiv i64 %.0.i146, %i.gg
  br label %ruby_nonempty_memcpy.exit.loopexit

ruby_nonempty_memcpy.exit.loopexit:               ; preds = %bb.ag, %rb_num2long_inline.exit147
  %.0134 = phi i64 [ %i.gh, %bb.ag ], [ %.0.i146, %rb_num2long_inline.exit147 ]
  %i.gi = add nuw nsw i64 %.0, 1
  %i.gj = trunc nuw nsw i64 %.0 to i32
  %i.gk = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.el, i64 noundef %i.gi, ptr noundef nonnull @.str.135, i32 noundef %i.gj, i64 noundef %.0134) #18
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr i8, ptr %i.el, i64 %i.gl
  br label %ruby_nonempty_memcpy.exit

bb.ah:                                            ; preds = %bb.ac
  %i.gn = tail call i64 @rb_int2str(i64 noundef %.1136, i32 noundef 10) #18
  %i.go = inttoptr i64 %i.gn to ptr               ; 3 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !56 ; 3 uses
  %i.gr = icmp sgt i64 %.0, %i.gq
  br i1 %i.gr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gs = sub i64 %.0, %i.gq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.el, i8 noundef 48, i64 noundef %i.gs, i1 noundef false) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.0128 = phi i64 [ %i.gq, %bb.ai ], [ %.0, %bb.ah ] ; 3 uses
  %i.gt = getelementptr i8, ptr %i.el, i64 %.0    ; 3 uses
  %i.gu = sub i64 0, %.0128
  %i.gv = getelementptr i8, ptr %i.gt, i64 %i.gu
  %i.gw = load i64, ptr %i.go, align 8, !tbaa !30
  %i.gx = and i64 %i.gw, 8192
  %.not.i148 = icmp eq i64 %i.gx, 0
  %i.gy = getelementptr i8, ptr %i.go, i64 24     ; 2 uses
  br i1 %.not.i148, label %RSTRING_PTR.exit149, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !53
  br label %RSTRING_PTR.exit149

RSTRING_PTR.exit149:                              ; preds = %bb.aj, %bb.ak
  %i.ha = phi ptr [ %i.gz, %bb.ak ], [ %i.gy, %bb.aj ]
  %.not.i150 = icmp eq i64 %.0128, 0
  br i1 %.not.i150, label %ruby_nonempty_memcpy.exit, label %bb.al

bb.al:                                            ; preds = %RSTRING_PTR.exit149
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gv, ptr noundef nonnull readonly align 1 %i.ha, i64 noundef %.0128, i1 noundef false) #18
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %ruby_nonempty_memcpy.exit.loopexit, %bb.al, %RSTRING_PTR.exit149, %bb.s
  %.4 = phi ptr [ %i.ei, %bb.s ], [ %i.gt, %bb.al ], [ %i.gt, %RSTRING_PTR.exit149 ], [ %i.gm, %ruby_nonempty_memcpy.exit.loopexit ] ; 9 uses
  %i.hb = load i64, ptr %i.z, align 8
  %i.hc = and i64 %i.hb, 61572651155456
  %i.hd = icmp eq i64 %i.hc, 8796093022208
  br i1 %i.hd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %ruby_nonempty_memcpy.exit
  store i8 90, ptr %.4, align 1, !tbaa !53
  %i.he = getelementptr i8, ptr %.4, i64 1
  br label %bb.aq

bb.an:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.hf = tail call i64 @rb_time_utc_offset(i64 noundef %2) ; 3 uses
  %i.hg = trunc i64 %i.hf to i1
  br i1 %i.hg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hh = ashr i64 %i.hf, 1
  br label %rb_num2long_inline.exit153

bb.ap:                                            ; preds = %bb.an
end_hunk_2
begin_hunk_3_@vtm_add_offset:bb.a
bb.ae:                                            ; preds = %v2w.exit
  %i.ck = icmp eq i64 %i.bn, 0
  %i.cl = and i64 %i.bn, 7
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = or i1 %i.ck, %i.cm
  br i1 %i.cn, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i92, label %rbimpl_RB_TYPE_P_fastpath.exit.i91

rbimpl_RB_TYPE_P_fastpath.exit.i91:               ; preds = %bb.ae
  %i.co = inttoptr i64 %i.bn to ptr
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !30
  %i.cq = and i64 %i.cp, 31
  %i.cr = icmp eq i64 %i.cq, 10
  br i1 %i.cr, label %bb.af, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i92

bb.af:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i91
  %i.cs = tail call i64 @rb_big_plus(i64 noundef %i.bn, i64 noundef %i.ca) #18
  br label %addv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i92:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i91, %bb.ae
  %i.ct = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bn, i64 noundef 43, i32 noundef 1, i64 noundef %i.ca) #18
  br label %addv.exit

addv.exit:                                        ; preds = %bb.ac, %bb.ad, %bb.af, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i92
  %.0.i90 = phi i64 [ %i.ct, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i92 ], [ %i.cs, %bb.af ], [ %i.ci, %bb.ac ], [ %i.cj, %bb.ad ] ; 11 uses
  store i64 %.0.i90, ptr %i.bm, align 8, !tbaa !66
  %i.cu = and i64 %.0.i90, 1
  %or.cond.not.i93 = icmp eq i64 %i.cu, 0
  br i1 %or.cond.not.i93, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %addv.exit
  %i.cv = icmp slt i64 %.0.i90, 1
  br i1 %i.cv, label %cmp.exit98.thread, label %cmp.exit98.thread122

bb.ah:                                            ; preds = %addv.exit
  %i.cw = icmp eq i64 %.0.i90, 0
  %i.cx = and i64 %.0.i90, 6
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = or i1 %i.cw, %i.cy
  br i1 %i.cz, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i97, label %rbimpl_RB_TYPE_P_fastpath.exit.i96

rbimpl_RB_TYPE_P_fastpath.exit.i96:               ; preds = %bb.ah
  %i.da = inttoptr i64 %.0.i90 to ptr
  %i.db = load i64, ptr %i.da, align 8, !tbaa !30
  %i.dc = and i64 %i.db, 31
  %i.dd = icmp eq i64 %i.dc, 10
  br i1 %i.dd, label %bb.ai, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i97

bb.ai:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i96
  %i.de = tail call i64 @rb_big_cmp(i64 noundef %.0.i90, i64 noundef 1) #18
  %i.df = tail call i64 @rb_fix2int(i64 noundef %i.de) #18
  %i.dg = trunc i64 %i.df to i32
  br label %cmp.exit98

rbimpl_RB_TYPE_P_fastpath.exit.thread.i97:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i96, %bb.ah
  %i.dh = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0.i90, i64 noundef 135, i32 noundef 1, i64 noundef 1) #18
  %i.di = tail call i32 @rb_cmpint(i64 noundef %i.dh, i64 noundef %.0.i90, i64 noundef 1) #18
  br label %cmp.exit98

cmp.exit98:                                       ; preds = %bb.ai, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i97
  %.0.i95 = phi i32 [ %i.di, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i97 ], [ %i.dg, %bb.ai ]
  %i.dj = icmp slt i32 %.0.i95, 0
  %.pre128 = load i64, ptr %i.bm, align 8, !tbaa !66 ; 2 uses
  br i1 %i.dj, label %cmp.exit98.thread, label %cmp.exit98.thread122

cmp.exit98.thread:                                ; preds = %cmp.exit98, %bb.ag
  %i.dk = phi i64 [ %.0.i90, %bb.ag ], [ %.pre128, %cmp.exit98 ] ; 7 uses
  %i.dl = and i64 %i.dk, 1
  %or.cond.not.i99 = icmp eq i64 %i.dl, 0
  br i1 %or.cond.not.i99, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %cmp.exit98.thread
  %i.dm = ashr i64 %i.dk, 1                       ; 2 uses
  %i.dn = add nsw i64 %i.dm, 1000000000           ; 2 uses
  %i.do = add i64 %i.dm, 4611686019427387904
  %or.cond.i.i100 = icmp sgt i64 %i.do, -1
  br i1 %or.cond.i.i100, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dp = shl nsw i64 %i.dn, 1
  %i.dq = or disjoint i64 %i.dp, 1
  br label %addv.exit104

bb.al:                                            ; preds = %bb.aj
  %i.dr = tail call i64 @rb_int2big(i64 noundef %i.dn) #18
  br label %addv.exit104

bb.am:                                            ; preds = %cmp.exit98.thread
  %i.ds = icmp eq i64 %i.dk, 0
  %i.dt = and i64 %i.dk, 6
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i103, label %rbimpl_RB_TYPE_P_fastpath.exit.i102

rbimpl_RB_TYPE_P_fastpath.exit.i102:              ; preds = %bb.am
  %i.dw = inttoptr i64 %i.dk to ptr
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !30
  %i.dy = and i64 %i.dx, 31
  %i.dz = icmp eq i64 %i.dy, 10
  br i1 %i.dz, label %bb.an, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i103

bb.an:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i102
  %i.ea = tail call i64 @rb_big_plus(i64 noundef %i.dk, i64 noundef 2000000001) #18
  br label %addv.exit104

rbimpl_RB_TYPE_P_fastpath.exit.thread.i103:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i102, %bb.am
  %i.eb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.dk, i64 noundef 43, i32 noundef 1, i64 noundef 2000000001) #18
  br label %addv.exit104

addv.exit104:                                     ; preds = %bb.ak, %bb.al, %bb.an, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i103
  %.0.i101 = phi i64 [ %i.eb, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i103 ], [ %i.ea, %bb.an ], [ %i.dq, %bb.ak ], [ %i.dr, %bb.al ] ; 2 uses
  store i64 %.0.i101, ptr %i.bm, align 8, !tbaa !66
  %i.ec = add i32 %.056, -1
  br label %cmp.exit98.thread122

cmp.exit98.thread122:                             ; preds = %bb.ag, %addv.exit104, %cmp.exit98
  %i.ed = phi i64 [ %.0.i101, %addv.exit104 ], [ %.pre128, %cmp.exit98 ], [ %.0.i90, %bb.ag ] ; 6 uses
  %.157 = phi i32 [ %i.ec, %addv.exit104 ], [ %.056, %cmp.exit98 ], [ %.056, %bb.ag ] ; 2 uses
  %i.ee = and i64 %i.ed, 1
  %or.cond.not.i105 = icmp eq i64 %i.ee, 0
  br i1 %or.cond.not.i105, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %cmp.exit98.thread122
  %i.ef = icmp sgt i64 %i.ed, 2000000001
  br i1 %i.ef, label %cmp.exit109.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eg = icmp ne i64 %i.ed, 2000000001
  %..i106 = zext i1 %i.eg to i32
  br label %cmp.exit109

bb.aq:                                            ; preds = %cmp.exit98.thread122
  %i.eh = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef 2000000001, i64 noundef 135, i32 noundef 1, i64 noundef %i.ed) #18
  %i.ei = tail call i32 @rb_cmpint(i64 noundef %i.eh, i64 noundef 2000000001, i64 noundef %i.ed) #18
  br label %cmp.exit109

cmp.exit109:                                      ; preds = %bb.ap, %bb.aq
  %.0.i107 = phi i32 [ %i.ei, %bb.aq ], [ %..i106, %bb.ap ]
  %i.ej = icmp slt i32 %.0.i107, 1
  br i1 %i.ej, label %cmp.exit109.cmp.exit109.thread_crit_edge, label %bb.aw

cmp.exit109.cmp.exit109.thread_crit_edge:         ; preds = %cmp.exit109
  %.pre = load i64, ptr %i.bm, align 8, !tbaa !66
  br label %cmp.exit109.thread

cmp.exit109.thread:                               ; preds = %cmp.exit109.cmp.exit109.thread_crit_edge, %bb.ao
  %i.ek = phi i64 [ %.pre, %cmp.exit109.cmp.exit109.thread_crit_edge ], [ %i.ed, %bb.ao ] ; 7 uses
  %i.el = and i64 %i.ek, 1
  %or.cond.not.i110 = icmp eq i64 %i.el, 0
  br i1 %or.cond.not.i110, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %cmp.exit109.thread
  %i.em = ashr i64 %i.ek, 1                       ; 2 uses
  %i.en = add nsw i64 %i.em, -1000000000          ; 2 uses
  %or.cond.i.i111 = icmp sgt i64 %i.em, -4611686017427387905
  br i1 %or.cond.i.i111, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eo = shl nsw i64 %i.en, 1
  %i.ep = or disjoint i64 %i.eo, 1
  br label %subv.exit115

bb.at:                                            ; preds = %bb.ar
  %i.eq = tail call i64 @rb_int2big(i64 noundef %i.en) #18
  br label %subv.exit115

bb.au:                                            ; preds = %cmp.exit109.thread
  %i.er = icmp eq i64 %i.ek, 0
  %i.es = and i64 %i.ek, 6
  %i.et = icmp ne i64 %i.es, 0
  %i.eu = or i1 %i.er, %i.et
  br i1 %i.eu, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i114, label %rbimpl_RB_TYPE_P_fastpath.exit.i113

rbimpl_RB_TYPE_P_fastpath.exit.i113:              ; preds = %bb.au
  %i.ev = inttoptr i64 %i.ek to ptr
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !30
  %i.ex = and i64 %i.ew, 31
  %i.ey = icmp eq i64 %i.ex, 10
  br i1 %i.ey, label %bb.av, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i114

bb.av:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i113
  %i.ez = tail call i64 @rb_big_minus(i64 noundef %i.ek, i64 noundef 2000000001) #18
  br label %subv.exit115

rbimpl_RB_TYPE_P_fastpath.exit.thread.i114:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i113, %bb.au
  %i.fa = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ek, i64 noundef 45, i32 noundef 1, i64 noundef 2000000001) #18
  br label %subv.exit115

subv.exit115:                                     ; preds = %bb.as, %bb.at, %bb.av, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i114
  %.0.i112 = phi i64 [ %i.fa, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i114 ], [ %i.ez, %bb.av ], [ %i.ep, %bb.as ], [ %i.eq, %bb.at ]
  store i64 %.0.i112, ptr %i.bm, align 8, !tbaa !66
  %i.fb = add i32 %.157, 1
  br label %bb.aw

bb.aw:                                            ; preds = %cmp.exit109, %subv.exit115, %bb.x
  %.258 = phi i32 [ %.056, %bb.x ], [ %i.fb, %subv.exit115 ], [ %.157, %cmp.exit109 ] ; 2 uses
  %.not68 = icmp eq i32 %.258, 0
  br i1 %.not68, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fc = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %.shift = getelementptr i8, ptr %0, i64 36
  %3 = load i32, ptr %.shift, align 4
  %i.fd = and i32 %3, 63
  %i.fe = add i32 %i.fd, %.258                    ; 4 uses
  %i.ff = icmp slt i32 %i.fe, 0
  %i.fg = add nsw i32 %i.fe, 60
  %.359 = select i1 %i.ff, i32 %i.fg, i32 %i.fe   ; 3 uses
  %.lobit = ashr i32 %i.fe, 31
  %.151 = add i32 %.lobit, %.050
  %i.fh = icmp sgt i32 %.359, 59                  ; 2 uses
  %i.fi = add i32 %.359, 4
  %.460 = select i1 %i.fh, i32 %i.fi, i32 %.359
  %i.fj = zext i1 %i.fh to i32
  %.252 = add i32 %.151, %i.fj
  %4 = load i64, ptr %i.fc, align 8
  %i.fk = and i32 %.460, 63
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 32
  %i.fn = and i64 %4, -270582939649
  %i.fo = or disjoint i64 %i.fm, %i.fn
  store i64 %i.fo, ptr %i.fc, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.353 = phi i32 [ %.252, %bb.ax ], [ %.050, %bb.aw ] ; 2 uses
  %.not69 = icmp eq i32 %.353, 0
  br i1 %.not69, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fp = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = lshr i32 %i.fr, 23
  %i.ft = and i32 %i.fs, 63
  %i.fu = add i32 %i.ft, %.353                    ; 4 uses
  %i.fv = icmp slt i32 %i.fu, 0
  %i.fw = add nsw i32 %i.fu, 60
  %.454 = select i1 %i.fv, i32 %i.fw, i32 %i.fu   ; 2 uses
  %.lobit126 = ashr i32 %i.fu, 31
  %.148 = add i32 %.lobit126, %.047
  %i.fx = icmp sgt i32 %.454, 59                  ; 2 uses
  %i.fy = zext i1 %i.fx to i32
  %.249 = add i32 %.148, %i.fy
  %i.fz = shl i32 %.454, 23                       ; 2 uses
  %i.ga = add i32 %i.fz, 33554432
  %i.gb = select i1 %i.fx, i32 %i.ga, i32 %i.fz
  %i.gc = and i32 %i.gb, 528482304
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = and i64 %i.fq, -528482305
  %i.gf = or disjoint i64 %i.ge, %i.gd
  store i64 %i.gf, ptr %i.fp, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.3 = phi i32 [ %.249, %bb.az ], [ %.047, %bb.ay ] ; 2 uses
  %.not70 = icmp eq i32 %.3, 0
  br i1 %.not70, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gg = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8            ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = lshr i32 %i.gi, 18
  %i.gk = and i32 %i.gj, 31
  %i.gl = add i32 %i.gk, %.3                      ; 4 uses
  %i.gm = icmp slt i32 %i.gl, 0
  %i.gn = add nsw i32 %i.gl, 24
  %spec.select = select i1 %i.gm, i32 %i.gn, i32 %i.gl ; 2 uses
  %.lobit127 = ashr i32 %i.gl, 31
  %i.go = icmp sgt i32 %spec.select, 23           ; 2 uses
  %.1 = select i1 %i.go, i32 1, i32 %.lobit127
  %i.gp = shl i32 %spec.select, 18                ; 2 uses
  %i.gq = add i32 %i.gp, 2097152
  %i.gr = select i1 %i.go, i32 %i.gq, i32 %i.gp
  %i.gs = and i32 %i.gr, 8126464
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = and i64 %i.gh, -8126465
  %i.gv = or disjoint i64 %i.gu, %i.gt
  store i64 %i.gv, ptr %i.gg, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2 = phi i32 [ %.1, %bb.bb ], [ 0, %bb.ba ]
  tail call fastcc void @vtm_add_day(ptr noundef %0, i32 noundef %.2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret void
}

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vtm_add_day(ptr noundef captures(none) %0, i32 noundef range(i32 -1, 2) %1) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 32         ; 8 uses
  %i.c = load i64, ptr %i.b, align 8              ; 5 uses
  %i.d = and i64 %i.c, 261632
  %or.cond = icmp eq i64 %i.d, 8704
  br i1 %or.cond, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.e = and i64 %i.c, -261633
  %i.f = or disjoint i64 %i.e, 260096
  store i64 %i.f, ptr %i.b, align 8
  %i.g = load i64, ptr %0, align 8, !tbaa !65     ; 7 uses
  %i.h = and i64 %i.g, 1
  %or.cond.not.i = icmp eq i64 %i.h, 0
  br i1 %or.cond.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = ashr i64 %i.g, 1                         ; 2 uses
  %i.j = add nsw i64 %i.i, -1                     ; 2 uses
  %or.cond.i.i = icmp sgt i64 %i.i, -4611686018427387904
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = shl nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1
  br label %subv.exit

bb.g:                                             ; preds = %bb.e
  %i.m = tail call i64 @rb_int2big(i64 noundef %i.j) #18
  br label %subv.exit

bb.h:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.g, 0
  %i.o = and i64 %i.g, 6
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.h
  %i.r = inttoptr i64 %i.g to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30
  %i.t = and i64 %i.s, 31
  %i.u = icmp eq i64 %i.t, 10
  br i1 %i.u, label %bb.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.v = tail call i64 @rb_big_minus(i64 noundef %i.g, i64 noundef 3) #18
  br label %subv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.h
  %i.w = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.g, i64 noundef 45, i32 noundef 1, i64 noundef 3) #18
  br label %subv.exit

subv.exit:                                        ; preds = %bb.f, %bb.g, %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.w, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.v, %bb.i ], [ %i.l, %bb.f ], [ %i.m, %bb.g ] ; 8 uses
  store i64 %.0.i, ptr %0, align 8, !tbaa !65
  %i.x = load i64, ptr %i.b, align 8              ; 2 uses
  %i.y = and i64 %i.x, 511
  %.not60 = icmp eq i64 %i.y, 0
  br i1 %.not60, label %bb.ae, label %bb.j

bb.j:                                             ; preds = %subv.exit
  %i.z = trunc i64 %.0.i to i1
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = ashr i64 %.0.i, 1
  %i.ab = srem i64 %i.aa, 400                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  %i.ad = shl nsw i64 %i.ab, 1                    ; 2 uses
  %i.ae = add nsw i64 %i.ad, 800
  %i.af = select i1 %i.ac, i64 %i.ae, i64 %i.ad
  %i.ag = or disjoint i64 %i.af, 1
  br label %modv.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = icmp eq i64 %.0.i, 0
  %i.ai = and i64 %.0.i, 6
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i67, label %rbimpl_RB_TYPE_P_fastpath.exit.i66

rbimpl_RB_TYPE_P_fastpath.exit.i66:               ; preds = %bb.l
  %i.al = inttoptr i64 %.0.i to ptr
  %i.am = load i64, ptr %i.al, align 8, !tbaa !30
  %i.an = and i64 %i.am, 31
  %i.ao = icmp eq i64 %i.an, 10
  br i1 %i.ao, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i67

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i66
  %i.ap = tail call i64 @rb_big_modulo(i64 noundef %.0.i, i64 noundef 801) #18
  br label %modv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i67:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i66, %bb.l
  %i.aq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.0.i, i64 noundef 37, i32 noundef 1, i64 noundef 801) #18
  br label %modv.exit

modv.exit:                                        ; preds = %bb.k, %bb.m, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i67
  %.0.i68 = phi i64 [ %i.aq, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i67 ], [ %i.ap, %bb.m ], [ %i.ag, %bb.k ] ; 3 uses
  %i.ar = trunc i64 %.0.i68 to i1
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %modv.exit
  %i.as = ashr i64 %.0.i68, 1
  br label %rb_num2long_inline.exit

bb.o:                                             ; preds = %modv.exit
  %i.at = tail call i64 @rb_num2long(i64 noundef %.0.i68) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.n, %bb.o
  %.0.i69 = phi i64 [ %i.as, %bb.n ], [ %i.at, %bb.o ] ; 3 uses
  %i.au = icmp sgt i64 %.0.i69, -1
  br i1 %i.au, label %bb.q, label %bb.p, !prof !15

bb.p:                                             ; preds = %rb_num2long_inline.exit
  %i.av = sub i64 0, %.0.i69
  br label %bb.q

end_hunk_3
