Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dbsize?download=true
inline.NumInlined: 75
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@pg_size_bytes:bb.a
  %.pre = load i8, ptr %i.n, align 1              ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64
  %.phi.trans.insert111 = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %.phi.trans.insert
  %.pre112 = load i16, ptr %.phi.trans.insert111, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.o = phi i16 [ %.pre112, %bb.d ], [ %i.l, %bb.c ]
  %i.p = phi i8 [ %.pre, %bb.d ], [ %i.i, %bb.c ]
  %.062 = phi ptr [ %i.n, %bb.d ], [ %.065, %bb.c ] ; 2 uses
  %i.q = and i16 %i.o, 2048
  %.not73.not = icmp eq i16 %i.q, 0               ; 2 uses
  br i1 %.not73.not, label %.loopexit, label %.preheader90

.preheader90:                                     ; preds = %bb.e, %.preheader90
  %.163 = phi ptr [ %i.r, %.preheader90 ], [ %.062, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.163, i64 1 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2
  %i.w = and i16 %i.v, 2048
  %.not74 = icmp eq i16 %i.w, 0
  br i1 %.not74, label %.loopexit, label %.preheader90, !llvm.loop !11

.loopexit:                                        ; preds = %.preheader90, %bb.e
  %i.x = phi i8 [ %i.p, %bb.e ], [ %i.s, %.preheader90 ] ; 2 uses
  %.264 = phi ptr [ %.062, %bb.e ], [ %i.r, %.preheader90 ] ; 2 uses
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %.264, i64 1 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = and i16 %i.ad, 2048
  %.not75 = icmp eq i16 %i.ae, 0
  br i1 %.not75, label %bb.g, label %.preheader89

.preheader89:                                     ; preds = %bb.f, %.preheader89
  %.3 = phi ptr [ %i.af, %.preheader89 ], [ %i.z, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = and i16 %i.aj, 2048
  %.not76 = icmp eq i16 %i.ak, 0
  br i1 %.not76, label %.thread, label %.preheader89, !llvm.loop !12

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.al = phi i8 [ %i.x, %.loopexit ], [ %i.aa, %bb.f ]
  %.4 = phi ptr [ %.264, %.loopexit ], [ %i.z, %bb.f ]
  br i1 %.not73.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.am = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.an = tail call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.ao = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5, ptr noundef %i.f) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 782, ptr noundef nonnull @__func__.pg_size_bytes) #7
  unreachable

.thread:                                          ; preds = %.preheader89, %bb.g
  %i.ap = phi i8 [ %i.al, %bb.g ], [ %i.ag, %.preheader89 ] ; 2 uses
  %.484 = phi ptr [ %.4, %bb.g ], [ %i.af, %.preheader89 ] ; 3 uses
  switch i8 %i.ap, label %bb.j [
    i8 101, label %bb.i
    i8 69, label %bb.i
  ]

bb.i:                                             ; preds = %.thread, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %.484, i64 1 ; 2 uses
  %i.ar = call i64 @__isoc23_strtol(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.a, i32 noundef 10) #7 ; 0 uses
  %i.as = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.at = icmp ugt ptr %i.as, %i.aq
  %spec.select = select i1 %i.at, ptr %i.as, ptr %.484 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pre113 = load i8, ptr %spec.select, align 1
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %i.au = phi i8 [ %.pre113, %bb.i ], [ %i.ap, %.thread ] ; 3 uses
  %.6 = phi ptr [ %spec.select, %bb.i ], [ %.484, %.thread ] ; 4 uses
  store i8 0, ptr %.6, align 1
  %i.av = ptrtoint ptr %.065 to i64
  %i.aw = call i64 @DirectFunctionCall3Coll(ptr noundef nonnull @numeric_in, i32 noundef 0, i64 noundef %i.av, i64 noundef 0, i64 noundef -1) #7
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = call ptr @pg_detoast_datum(ptr noundef %i.ax) #7 ; 3 uses
  store i8 %i.au, ptr %.6, align 1
  %i.az = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.ba = zext i8 %i.au to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = and i16 %i.bc, 8192
  %.not7799 = icmp eq i16 %i.bd, 0
  br i1 %.not7799, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.166100 = phi ptr [ %i.be, %.lr.ph ], [ %.6, %bb.j ]
  %i.be = getelementptr inbounds nuw i8, ptr %.166100, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.be, align 1              ; 2 uses
  %i.bf = zext i8 %.pr to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = and i16 %i.bh, 8192
  %.not77 = icmp eq i16 %i.bi, 0
  br i1 %.not77, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %bb.j
  %.lcssa93 = phi i8 [ %i.au, %bb.j ], [ %.pr, %.lr.ph ]
  %.166.lcssa = phi ptr [ %.6, %bb.j ], [ %i.be, %.lr.ph ] ; 8 uses
  %.not78 = icmp eq i8 %.lcssa93, 0
  br i1 %.not78, label %bb.y, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bj = load i8, ptr %i.e, align 1              ; 2 uses
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = icmp eq i8 %i.bj, 1
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr i8, ptr %i.e, i64 1
  %.val.i = load i8, ptr %i.bm, align 1           ; 2 uses
  %i.bn = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.bn, 3
  %i.bo = icmp eq i8 %.val.i, 18
  %i.bp = select i1 %i.bo, i64 16, i64 0
  %i.bq = select i1 %or.cond.i.i.i, i64 8, i64 %i.bp
  br label %VARSIZE_ANY_EXHDR.exit

bb.m:                                             ; preds = %bb.k
  %i.br = and i32 %i.bk, 1
  %.not.i = icmp eq i32 %i.br, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = lshr i32 %i.bk, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bt, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.o:                                             ; preds = %bb.m
  %i.bv = load i32, ptr %i.e, align 4
  %i.bw = lshr i32 %i.bv, 2
  %i.bx = add nsw i32 %i.bw, -4
  %i.by = zext i32 %i.bx to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.bq, %bb.l ], [ %i.bu, %bb.n ], [ %i.by, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 %.0.i
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %VARSIZE_ANY_EXHDR.exit
  %.pn = phi ptr [ %i.bz, %VARSIZE_ANY_EXHDR.exit ], [ %.7, %bb.p ] ; 2 uses
  %.7 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.ca = load i8, ptr %.7, align 1
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = and i16 %i.cd, 8192
  %.not79 = icmp eq i16 %i.ce, 0
  br i1 %.not79, label %bb.q, label %bb.p, !llvm.loop !14

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %.pn, align 1
  %i.cf = call i32 @pg_strcasecmp(ptr noundef nonnull %.166.lcssa, ptr noundef nonnull @.str.22) #7
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread85.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = call i32 @pg_strcasecmp(ptr noundef nonnull %.166.lcssa, ptr noundef nonnull @.str.23) #7
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.thread85.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = call i32 @pg_strcasecmp(ptr noundef nonnull %.166.lcssa, ptr noundef nonnull @.str.24) #7
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.thread85.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = call i32 @pg_strcasecmp(ptr noundef nonnull %.166.lcssa, ptr noundef nonnull @.str.25) #7
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.thread85.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = call i32 @pg_strcasecmp(ptr noundef nonnull %.166.lcssa, ptr noundef nonnull @.str.26) #7
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.thread85.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = call i32 @pg_strcasecmp(ptr noundef nonnull %.166.lcssa, ptr noundef nonnull @.str.27) #7
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.thread85.thread, label %.preheader

.preheader:                                       ; preds = %bb.v
  %i.cr = call i32 @pg_strcasecmp(ptr noundef nonnull %.166.lcssa, ptr noundef nonnull @.str.29) #7
  %i.cs = icmp eq i32 %i.cr, 0                    ; 2 uses
  %spec.select122 = select i1 %i.cs, ptr @size_pretty_units, ptr getelementptr inbounds nuw (i8, ptr @size_pretty_units, i64 96)
  br i1 %i.cs, label %.thread85.thread, label %bb.w

bb.w:                                             ; preds = %.preheader
  %i.ct = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.cu = call i32 @errcode(i32 noundef 50856066) #7 ; 0 uses
  %i.cv = call ptr @text_to_cstring(ptr noundef nonnull %i.e) #7
  %i.cw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5, ptr noundef %i.cv) #7 ; 0 uses
  %i.cx = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.6, ptr noundef nonnull %.166.lcssa) #7 ; 0 uses
  %i.cy = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.7) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 860, ptr noundef nonnull @__func__.pg_size_bytes) #7
  unreachable

.thread85.thread:                                 ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %.preheader
  %.288 = phi ptr [ %spec.select122, %.preheader ], [ @size_pretty_units, %bb.q ], [ getelementptr inbounds nuw (i8, ptr @size_pretty_units, i64 16), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @size_pretty_units, i64 32), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @size_pretty_units, i64 48), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @size_pretty_units, i64 64), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @size_pretty_units, i64 80), %bb.v ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.288, i64 13
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext nneg i8 %i.da to i64
  %i.dc = shl nuw i64 1, %i.db                    ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 1
  br i1 %i.dd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread85.thread
  %i.de = call ptr @int64_to_numeric(i64 noundef %i.dc) #7
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.ay to i64
  %i.dh = call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @numeric_mul, i32 noundef 0, i64 noundef %i.df, i64 noundef %i.dg) #7
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = call ptr @pg_detoast_datum(ptr noundef %i.di) #7
  br label %bb.y

bb.y:                                             ; preds = %.thread85.thread, %bb.x, %._crit_edge
  %.161 = phi ptr [ %i.ay, %._crit_edge ], [ %i.dj, %bb.x ], [ %i.ay, %.thread85.thread ]
  %i.dk = ptrtoint ptr %.161 to i64
  %i.dl = call i64 @DirectFunctionCall1Coll(ptr noundef nonnull @numeric_int8, i32 noundef 0, i64 noundef %i.dk) #7
  ret i64 %i.dl
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @DirectFunctionCall3Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @numeric_in(ptr noundef) #2

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #2

declare i64 @DirectFunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @numeric_mul(ptr noundef) #2

declare i64 @DirectFunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @numeric_int8(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @pg_relation_filenode(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i64 %i.b, 4294967295
  %i.e = tail call ptr @SearchSysCache1(i32 noundef 65, i64 noundef %i.d) #7 ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.f, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.i = load i8, ptr %i.h, align 2
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 119
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %.thread [
    i8 114, label %bb.d
    i8 105, label %bb.d
    i8 83, label %bb.d
    i8 116, label %bb.d
    i8 109, label %bb.d
  ]

.thread:                                          ; preds = %bb.c
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.e) #7
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %bb.e, label %.thread26

.thread26:                                        ; preds = %bb.d
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.e) #7
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 117
  %i.q = load i8, ptr %i.p, align 1, !range !6, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = tail call i32 @RelationMapOidToFilenumber(i32 noundef %i.c, i1 noundef zeroext %i.r) #7 ; 2 uses
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.e) #7
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.t, align 4
  br label %bb.h

bb.g:                                             ; preds = %.thread26, %bb.e
  %.029 = phi i32 [ %i.o, %.thread26 ], [ %i.s, %bb.e ]
  %i.u = zext i32 %.029 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b
  %.018 = phi i64 [ %i.u, %bb.g ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i64 %.018
}

declare ptr @SearchSysCache1(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @RelationMapOidToFilenumber(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @pg_filenode_relation(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.d, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call i32 @RelidByRelfilenumber(i32 noundef %i.g, i32 noundef %i.c) #7 ; 2 uses
  %.not11 = icmp eq i32 %i.h, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.i, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.h to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.j, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i64 %.0
}

declare i32 @RelidByRelfilenumber(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @pg_relation_filepath(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RelPathStr, align 1         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.d = and i64 %i.b, 4294967295
  %i.e = tail call ptr @SearchSysCache1(i32 noundef 65, i64 noundef %i.d) #7 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.f, align 4
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.i = load i8, ptr %i.h, align 2
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 %i.j ; 6 uses
end_hunk_0
