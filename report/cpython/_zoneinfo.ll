Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_zoneinfo?download=true
inline.NumInlined: 123
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@zoneinfo_ZoneInfo_utcoffset:bb.a
  %.val = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.j = call fastcc ptr @find_ttinfo(ptr noundef readonly %.val.val, ptr noundef readonly %0, ptr noundef %i.g) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %zoneinfo_ZoneInfo_utcoffset_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !58   ; 4 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !19   ; 2 uses
  %i.n = icmp ugt i32 %i.m, -1073741825
  br i1 %i.n, label %zoneinfo_ZoneInfo_utcoffset_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nuw i32 %i.m, 1
  store i32 %i.o, ptr %i.l, align 8, !tbaa !19
  br label %zoneinfo_ZoneInfo_utcoffset_impl.exit

zoneinfo_ZoneInfo_utcoffset_impl.exit:            ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ %i.l, %bb.c ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @zoneinfo_ZoneInfo_dst(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @zoneinfo_ZoneInfo_dst._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %zoneinfo_ZoneInfo_dst_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.j = call fastcc ptr @find_ttinfo(ptr noundef readonly %.val.val, ptr noundef readonly %0, ptr noundef %i.g) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %zoneinfo_ZoneInfo_dst_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59   ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %zoneinfo_ZoneInfo_dst_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !19
  br label %zoneinfo_ZoneInfo_dst_impl.exit

zoneinfo_ZoneInfo_dst_impl.exit:                  ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ %i.m, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @zoneinfo_ZoneInfo_tzname(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp eq ptr %4, null
  %i.c = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @zoneinfo_ZoneInfo_tzname._parser, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %zoneinfo_ZoneInfo_tzname_impl.exit, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.i = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.j = call fastcc ptr @find_ttinfo(ptr noundef readonly %.val.val, ptr noundef readonly %0, ptr noundef %i.g) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %zoneinfo_ZoneInfo_tzname_impl.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60   ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %zoneinfo_ZoneInfo_tzname_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !19
  br label %zoneinfo_ZoneInfo_tzname_impl.exit

zoneinfo_ZoneInfo_tzname_impl.exit:               ; preds = %bb.d, %bb.c, %.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ %i.m, %bb.c ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @zoneinfo_fromutc(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @PyDateTimeAPI, align 8, !tbaa !18
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val114 = load ptr, ptr %i.e, align 8, !tbaa !53 ; 2 uses
  %.not.i115 = icmp eq ptr %.val114, %i.d
  br i1 %.not.i115, label %PyObject_TypeCheck.exit.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.a
  %i.f = tail call i32 @PyType_IsSubtype(ptr noundef %.val114, ptr noundef %i.d) #9
  %.not127 = icmp eq i32 %i.f, 0
  br i1 %.not127, label %bb.b, label %PyObject_TypeCheck.exit.thread

bb.b:                                             ; preds = %PyObject_TypeCheck.exit
  %i.g = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.60) #9
  br label %bb.aw

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.a, %PyObject_TypeCheck.exit
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !118
  %.not88 = icmp eq i8 %i.i, 0
  br i1 %.not88, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PyObject_TypeCheck.exit.thread
  %i.j = getelementptr i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %PyObject_TypeCheck.exit.thread, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ @_Py_NoneStruct, %PyObject_TypeCheck.exit.thread ]
  %.not89 = icmp eq ptr %i.l, %0
  br i1 %.not89, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.61) #9
  br label %bb.aw

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.n = call fastcc i32 @get_local_timestamp(ptr noundef nonnull %1, ptr noundef %i.a)
  %.not90 = icmp eq i32 %i.n, 0
  br i1 %.not90, label %bb.g, label %Py_DECREF.exit105.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !87   ; 6 uses
  %cond = icmp eq i64 %i.p, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !88  ; 11 uses
  br i1 %cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54   ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !88
  %i.t = icmp slt i64 %.pre, %i.s
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %i.p
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !88
  %i.z = icmp sgt i64 %.pre, %i.y
  br i1 %i.z, label %bb.k, label %.lr.ph.i

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.aa = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 184
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !62
  %.not.i116 = icmp eq i8 %i.ac, 0
  br i1 %.not.i116, label %bb.l, label %find_tzrule_ttinfo_fromutc.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %1, i64 25
  %2 = load i16, ptr %i.ad, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %i.ae = zext i16 %3 to i32                      ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !90
  %i.ai = tail call i64 %i.ah(ptr noundef nonnull %i.ag, i32 noundef range(i32 0, 65536) %i.ae) #9, !inline_history !116
  %i.aj = getelementptr i8, ptr %0, i64 176
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.am = tail call i64 %i.al(ptr noundef nonnull %i.ak, i32 noundef range(i32 0, 65536) %i.ae) #9, !inline_history !116
  %i.an = getelementptr i8, ptr %0, i64 120
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !120
  %i.ap = sub i64 %i.ai, %i.ao                    ; 5 uses
  %i.aq = getelementptr i8, ptr %0, i64 152
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !121
  %i.as = sub i64 %i.am, %i.ar                    ; 5 uses
  %i.at = icmp slt i64 %i.ap, %i.as
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.au = icmp sge i64 %.pre, %i.ap
  %i.av = icmp slt i64 %.pre, %i.as
  %i.aw = and i1 %i.au, %i.av
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ax = icmp slt i64 %.pre, %i.as
  %i.ay = icmp sge i64 %.pre, %i.ap
  %i.az = or i1 %i.ay, %i.ax
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.023.in.i = phi i1 [ %i.aw, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = getelementptr i8, ptr %0, i64 160
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !91 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 0                   ; 2 uses
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = add i64 %i.as, %i.bd
  %i.bf = sext i32 %i.bb to i64
  %i.bg = sub i64 %i.ap, %i.bf
  %.022.i = select i1 %i.bc, i64 %i.as, i64 %i.ap
  %.0.i = select i1 %i.bc, i64 %i.be, i64 %i.bg
  %i.bh = icmp sge i64 %.pre, %.022.i
  %i.bi = icmp slt i64 %.pre, %.0.i
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  %i.bk = zext i1 %i.bj to i8
  %.024.idx.i = select i1 %.023.in.i, i64 32, i64 0
  %.024.i = getelementptr i8, ptr %i.aa, i64 %.024.idx.i
  br label %find_tzrule_ttinfo_fromutc.exit

find_tzrule_ttinfo_fromutc.exit:                  ; preds = %bb.k, %bb.o
  %.1120 = phi i8 [ %i.bk, %bb.o ], [ 0, %bb.k ]  ; 3 uses
  %.1.i = phi ptr [ %.024.i, %bb.o ], [ %i.aa, %bb.k ] ; 4 uses
  switch i64 %i.p, label %bb.q [
    i64 0, label %bb.w
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %find_tzrule_ttinfo_fromutc.exit
  %i.bl = getelementptr i8, ptr %0, i64 88
  br label %bb.r

bb.q:                                             ; preds = %find_tzrule_ttinfo_fromutc.exit
  %i.bm = getelementptr i8, ptr %0, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61
  %i.bo = getelementptr [8 x i8], ptr %i.bn, i64 %i.p
  %i.bp = getelementptr i8, ptr %i.bo, i64 -16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.066.in = phi ptr [ %i.bl, %bb.p ], [ %i.bp, %bb.q ]
  %.066 = load ptr, ptr %.066.in, align 8, !tbaa !18
  %i.bq = getelementptr i8, ptr %.066, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !92
  %i.bs = getelementptr i8, ptr %.1.i, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !92
  %i.bu = sub i64 %i.br, %i.bt                    ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr i8, ptr %0, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %i.p
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !88
  %i.cb = add i64 %i.ca, %i.bu
  %i.cc = icmp slt i64 %.pre, %i.cb
  %spec.select = select i1 %i.cc, i8 1, i8 %.1120
  br label %bb.w

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.013.i = phi i64 [ %.1.i118, %.lr.ph.i ], [ %i.p, %bb.j ] ; 2 uses
  %.01012.i = phi i64 [ %.111.i, %.lr.ph.i ], [ 0, %bb.j ] ; 2 uses
  %i.cd = add i64 %.01012.i, %.013.i
  %i.ce = lshr i64 %i.cd, 1                       ; 3 uses
  %i.cf = getelementptr [8 x i8], ptr %i.r, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !88
  %i.ch = icmp sgt i64 %i.cg, %.pre               ; 2 uses
  %i.ci = add nuw i64 %i.ce, 1
  %.111.i = select i1 %i.ch, i64 %.01012.i, i64 %i.ci ; 2 uses
  %.1.i118 = select i1 %i.ch, i64 %i.ce, i64 %.013.i ; 5 uses
  %i.cj = icmp ult i64 %.111.i, %.1.i118
  br i1 %i.cj, label %.lr.ph.i, label %_bisect.exit, !llvm.loop !2

_bisect.exit:                                     ; preds = %.lr.ph.i
  %i.ck = icmp ugt i64 %.1.i118, 1
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_bisect.exit
  %i.cl = getelementptr i8, ptr %0, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !61
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %.1.i118 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -16
  %i.cp = getelementptr i8, ptr %i.cn, i64 -8
  br label %bb.v

bb.u:                                             ; preds = %_bisect.exit
  %i.cq = getelementptr i8, ptr %0, i64 88
  %i.cr = getelementptr i8, ptr %0, i64 80
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !61
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.067.in = phi ptr [ %i.cp, %bb.t ], [ %i.cs, %bb.u ]
  %.0.in = phi ptr [ %i.co, %bb.t ], [ %i.cq, %bb.u ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !18
  %.067 = load ptr, ptr %.067.in, align 8, !tbaa !18 ; 2 uses
  %i.ct = getelementptr i8, ptr %.0, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !92
  %i.cv = getelementptr i8, ptr %.067, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !92
  %i.cx = sub i64 %i.cu, %i.cw
  %i.cy = getelementptr [8 x i8], ptr %i.r, i64 %.1.i118
  %i.cz = getelementptr i8, ptr %i.cy, i64 -8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !88
  %i.db = sub i64 %.pre, %i.da
  %i.dc = icmp sgt i64 %i.cx, %i.db
  %spec.select125 = zext i1 %i.dc to i8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.r, %find_tzrule_ttinfo_fromutc.exit, %bb.i
  %.0119 = phi i8 [ %spec.select, %bb.s ], [ %spec.select125, %bb.v ], [ %.1120, %bb.r ], [ %.1120, %find_tzrule_ttinfo_fromutc.exit ], [ 0, %bb.i ]
  %.1 = phi ptr [ %.1.i, %bb.s ], [ %.067, %bb.v ], [ %.1.i, %bb.r ], [ %.1.i, %find_tzrule_ttinfo_fromutc.exit ], [ %i.v, %bb.i ]
  %i.dd = load ptr, ptr %.1, align 8, !tbaa !58
  %i.de = tail call ptr @PyNumber_Add(ptr noundef nonnull %1, ptr noundef %i.dd) #9 ; 9 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %Py_DECREF.exit105.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not93 = icmp eq i8 %.0119, 0
  br i1 %.not93, label %Py_DECREF.exit105.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = load ptr, ptr @PyDateTimeAPI, align 8, !tbaa !18
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !85
  %i.dj = getelementptr i8, ptr %i.de, i64 8
  %.val = load ptr, ptr %i.dj, align 8, !tbaa !53
  %.not = icmp eq ptr %.val, %i.di
  br i1 %.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr i8, ptr %i.de, i64 35
  store i8 1, ptr %i.dk, align 1, !tbaa !93
  br label %Py_DECREF.exit105.thread

bb.aa:                                            ; preds = %bb.y
  %i.dl = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.de, ptr noundef nonnull @.str.62) #9 ; 11 uses
  %i.dm = load i32, ptr %i.de, align 8, !tbaa !19 ; 2 uses
  %.not.i106 = icmp sgt i32 %i.dm, -1
  br i1 %.not.i106, label %bb.ab, label %Py_DECREF.exit107

bb.ab:                                            ; preds = %bb.aa
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.de, align 8, !tbaa !19
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ac, label %Py_DECREF.exit107

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.de) #9
  br label %Py_DECREF.exit107

Py_DECREF.exit107:                                ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.dp = icmp eq ptr %i.dl, null
  br i1 %i.dp, label %Py_DECREF.exit105.thread, label %bb.ad

bb.ad:                                            ; preds = %Py_DECREF.exit107
  %i.dq = tail call ptr @PyTuple_New(i64 noundef 0) #9 ; 8 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load i32, ptr %i.dl, align 8, !tbaa !19 ; 2 uses
  %.not.i104 = icmp sgt i32 %i.ds, -1
  br i1 %.not.i104, label %bb.af, label %Py_DECREF.exit105.thread

bb.af:                                            ; preds = %bb.ae
  %i.dt = add nsw i32 %i.ds, -1                   ; 2 uses
  store i32 %i.dt, ptr %i.dl, align 8, !tbaa !19
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %Py_DECREF.exit105.thread

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.dl) #9
  br label %Py_DECREF.exit105.thread

bb.ah:                                            ; preds = %bb.ad
  %i.dv = tail call ptr @PyDict_New() #9          ; 6 uses
  %i.dw = icmp eq ptr %i.dv, null
end_hunk_0
begin_hunk_1_@parse_transition_time:bb.a
  store i32 %i.l, ptr %1, align 4, !tbaa !12
  %i.m = getelementptr i8, ptr %.0, i64 1         ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = and i32 %i.q, 4
  %.not.i.1 = icmp eq i32 %i.r, 0
  br i1 %.not.i.1, label %parse_digits.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = mul nsw i32 %i.l, 10                     ; 2 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !12
  %i.t = load i8, ptr %i.m, align 1, !tbaa !19
  %i.u = sext i8 %i.t to i32
  %i.v = add nsw i32 %i.s, -48
  %i.w = add nsw i32 %i.v, %i.u                   ; 3 uses
  store i32 %i.w, ptr %1, align 4, !tbaa !12
  %i.x = getelementptr i8, ptr %.0, i64 2         ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !12
  %i.ac = and i32 %i.ab, 4
  %.not.i.2 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.2, label %parse_digits.exit.thread, label %parse_digits.exit.thread.loopexit

parse_digits.exit.thread.loopexit:                ; preds = %bb.e
  %i.ad = mul nsw i32 %i.w, 10                    ; 2 uses
  store i32 %i.ad, ptr %1, align 4, !tbaa !12
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !19
  %i.af = sext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.ad, -48
  %i.ah = add nsw i32 %i.ag, %i.af
  %i.ai = getelementptr i8, ptr %.0, i64 3
  br label %parse_digits.exit.thread

parse_digits.exit.thread:                         ; preds = %bb.d, %bb.e, %parse_digits.exit.thread.loopexit
  %i.aj = phi i32 [ %i.ah, %parse_digits.exit.thread.loopexit ], [ %i.w, %bb.e ], [ %i.l, %bb.d ]
  %.332 = phi ptr [ %i.ai, %parse_digits.exit.thread.loopexit ], [ %i.x, %bb.e ], [ %i.m, %bb.d ] ; 8 uses
  %i.ak = mul nsw i32 %i.aj, %.1
  store i32 %i.ak, ptr %1, align 4, !tbaa !12
  %i.al = load i8, ptr %.332, align 1, !tbaa !19
  %i.am = icmp eq i8 %i.al, 58
  br i1 %i.am, label %bb.f, label %bb.j

bb.f:                                             ; preds = %parse_digits.exit.thread
  %i.an = getelementptr i8, ptr %.332, i64 1      ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !12
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = and i32 %i.ar, 4
  %.not.i17 = icmp eq i32 %i.as, 0
  br i1 %.not.i17, label %parse_digits.exit19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load i8, ptr %i.an, align 1, !tbaa !19
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  store i32 %i.av, ptr %2, align 4, !tbaa !12
  %i.aw = getelementptr i8, ptr %.332, i64 2      ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bb = and i32 %i.ba, 4
  %.not.i17.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.i17.1, label %parse_digits.exit19, label %parse_digits.exit19.thread

parse_digits.exit19.thread:                       ; preds = %bb.g
  %i.bc = mul nsw i32 %i.av, 10                   ; 2 uses
  store i32 %i.bc, ptr %2, align 4, !tbaa !12
  %i.bd = load i8, ptr %i.aw, align 1, !tbaa !19
  %i.be = sext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.bc, -48
  %i.bg = add nsw i32 %i.bf, %i.be
  %i.bh = getelementptr i8, ptr %.332, i64 3      ; 2 uses
  %i.bi = mul nsw i32 %i.bg, %.1
  store i32 %i.bi, ptr %2, align 4, !tbaa !12
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bk = icmp eq i8 %i.bj, 58
  br i1 %i.bk, label %bb.h, label %bb.j

bb.h:                                             ; preds = %parse_digits.exit19.thread
  %i.bl = getelementptr i8, ptr %.332, i64 4      ; 2 uses
  store i32 0, ptr %3, align 4, !tbaa !12
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !12
  %i.bq = and i32 %i.bp, 4
  %.not.i22 = icmp eq i32 %i.bq, 0
  br i1 %.not.i22, label %parse_digits.exit19, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !19
  %i.bs = sext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  store i32 %i.bt, ptr %3, align 4, !tbaa !12
  %i.bu = getelementptr i8, ptr %.332, i64 5      ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !19
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.bz = and i32 %i.by, 4
  %.not.i22.1 = icmp eq i32 %i.bz, 0
  br i1 %.not.i22.1, label %parse_digits.exit19, label %parse_digits.exit24.thread

parse_digits.exit24.thread:                       ; preds = %bb.i
  %i.ca = mul nsw i32 %i.bt, 10                   ; 2 uses
  store i32 %i.ca, ptr %3, align 4, !tbaa !12
  %i.cb = load i8, ptr %i.bu, align 1, !tbaa !19
  %i.cc = sext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.ca, -48
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = getelementptr i8, ptr %.332, i64 6
  %i.cg = mul nsw i32 %i.ce, %.1
  store i32 %i.cg, ptr %3, align 4, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %parse_digits.exit19.thread, %parse_digits.exit24.thread, %parse_digits.exit.thread
  %.129 = phi ptr [ %i.cf, %parse_digits.exit24.thread ], [ %i.bh, %parse_digits.exit19.thread ], [ %.332, %parse_digits.exit.thread ]
  store ptr %.129, ptr %0, align 8, !tbaa !95
  br label %parse_digits.exit19

parse_digits.exit19:                              ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.c, %bb.j
  %.011 = phi i32 [ 0, %bb.j ], [ -1, %bb.h ], [ -1, %bb.c ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.f ]
  ret i32 %.011
}

declare ptr @PyObject_Repr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_ttinfo(ptr nofree noundef readnone captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 200
  %i.d = load i8, ptr %i.c, align 8, !tbaa !94
  %.not26 = icmp eq i8 %i.d, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 96
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 56
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.g = call fastcc i32 @get_local_timestamp(ptr noundef %2, ptr noundef %i.a)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %find_tzrule_ttinfo.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %2, i64 35
  %i.i = load i8, ptr %i.h, align 1, !tbaa !93    ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 64
  %i.k = zext i8 %i.i to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 3 uses
  %i.n = getelementptr i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !87   ; 3 uses
  %.not25 = icmp eq i64 %i.o, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !88  ; 7 uses
  br i1 %.not25, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.m, align 8, !tbaa !88
  %i.q = icmp slt i64 %.pre, %i.p
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %1, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !89
  br label %find_tzrule_ttinfo.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr [8 x i8], ptr %i.m, i64 %i.o
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !88
  %i.w = icmp sgt i64 %.pre, %i.v
  br i1 %i.w, label %.critedge, label %.lr.ph.i

.critedge:                                        ; preds = %bb.f, %bb.i
  %i.x = getelementptr i8, ptr %1, i64 96         ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 184
  %i.z = load i8, ptr %i.y, align 8, !tbaa !62
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.j, label %find_tzrule_ttinfo.exit

bb.j:                                             ; preds = %.critedge
  %i.aa = getelementptr i8, ptr %2, i64 25
  %3 = load i16, ptr %i.aa, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.ab = zext i16 %4 to i32                      ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90
  %i.af = tail call i64 %i.ae(ptr noundef nonnull %i.ad, i32 noundef range(i32 0, 65536) %i.ab) #9, !inline_history !138
  %i.ag = getelementptr i8, ptr %1, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !90
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull %i.ah, i32 noundef range(i32 0, 65536) %i.ab) #9, !inline_history !138
  %i.ak = getelementptr i8, ptr %1, i64 160
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !91 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  %i.an = zext i1 %i.am to i8
  %i.ao = icmp eq i8 %i.i, %i.an                  ; 2 uses
  %i.ap = sext i32 %i.al to i64                   ; 2 uses
  %i.aq = select i1 %i.ao, i64 0, i64 %i.ap
  %.023.i = add i64 %i.aq, %i.af                  ; 3 uses
  %i.ar = select i1 %i.ao, i64 %i.ap, i64 0
  %.0.i = sub i64 %i.aj, %i.ar                    ; 3 uses
  %i.as = icmp slt i64 %.023.i, %.0.i
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = icmp sge i64 %.pre, %.023.i
  %i.au = icmp slt i64 %.pre, %.0.i
  %i.av = and i1 %i.at, %i.au
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aw = icmp slt i64 %.pre, %.0.i
  %i.ax = icmp sge i64 %.pre, %.023.i
  %i.ay = or i1 %i.aw, %i.ax
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.in.i = phi i1 [ %i.av, %bb.k ], [ %i.ay, %bb.l ]
  %.015.idx.i = select i1 %.0.in.i, i64 32, i64 0
  %.015.i = getelementptr i8, ptr %i.x, i64 %.015.idx.i
  br label %find_tzrule_ttinfo.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.013.i = phi i64 [ %.1.i28, %.lr.ph.i ], [ %i.o, %bb.i ] ; 2 uses
  %.01012.i = phi i64 [ %.111.i, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %i.az = add i64 %.01012.i, %.013.i
  %i.ba = lshr i64 %i.az, 1                       ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %i.m, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !88
  %i.bd = icmp sgt i64 %i.bc, %.pre               ; 2 uses
  %i.be = add nuw i64 %i.ba, 1
  %.111.i = select i1 %i.bd, i64 %.01012.i, i64 %i.be ; 2 uses
  %.1.i28 = select i1 %i.bd, i64 %i.ba, i64 %.013.i ; 3 uses
  %i.bf = icmp ult i64 %.111.i, %.1.i28
  br i1 %i.bf, label %.lr.ph.i, label %_bisect.exit, !llvm.loop !2

_bisect.exit:                                     ; preds = %.lr.ph.i
  %i.bg = getelementptr i8, ptr %1, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !61
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %.1.i28
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !18
  br label %find_tzrule_ttinfo.exit

find_tzrule_ttinfo.exit:                          ; preds = %bb.m, %.critedge, %bb.h, %_bisect.exit, %bb.e
  %.1 = phi ptr [ null, %bb.e ], [ %i.s, %bb.h ], [ %i.bk, %_bisect.exit ], [ %.015.i, %bb.m ], [ %i.x, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.n

bb.n:                                             ; preds = %find_tzrule_ttinfo.exit, %bb.d, %bb.c
  %.2 = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %.1, %find_tzrule_ttinfo.exit ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @get_local_timestamp(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @PyDateTimeAPI, align 8, !tbaa !18
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !53
  %.not = icmp eq ptr %.val, %i.c
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 25
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr i8, ptr %0, i64 26
  %i.j = load i8, ptr %i.i, align 2, !tbaa !19
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 27
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19    ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 28
  %i.p = load i8, ptr %i.o, align 4, !tbaa !19
  %i.q = zext i8 %i.p to i32
  %i.r = getelementptr i8, ptr %0, i64 29
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr i8, ptr %0, i64 30
  %i.v = load i8, ptr %i.u, align 2, !tbaa !19
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr i8, ptr %0, i64 31
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19
  %i.z = zext i8 %i.y to i64
  %i.aa = zext i8 %i.n to i64
  %i.ab = getelementptr [4 x i8], ptr @DAYS_BEFORE_MONTH, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12 ; 4 uses
  %i.ad = icmp ugt i8 %i.n, 2
  br i1 %i.ad, label %bb.c, label %ymd_to_ord.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = and i32 %i.k, 3
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.d, label %is_leap_year.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc = trunc nuw i32 %i.l to i16         ; 2 uses
  %i.ag = urem i16 %.lhs.trunc, 100
  %.not.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.i, label %is_leap_year.exit.i, label %is_leap_year.exit.thread13.i

is_leap_year.exit.thread13.i:                     ; preds = %bb.d
  %i.ah = add i32 %i.ac, 1
  br label %ymd_to_ord.exit

is_leap_year.exit.i:                              ; preds = %bb.d
  %i.ai = urem i16 %.lhs.trunc, 400
  %.not.i70 = icmp eq i16 %i.ai, 0
  %i.aj = add i32 %i.ac, 1
  br i1 %.not.i70, label %ymd_to_ord.exit, label %is_leap_year.exit.thread.i

is_leap_year.exit.thread.i:                       ; preds = %is_leap_year.exit.i, %bb.c
  br label %ymd_to_ord.exit

ymd_to_ord.exit:                                  ; preds = %bb.b, %is_leap_year.exit.thread13.i, %is_leap_year.exit.i, %is_leap_year.exit.thread.i
  %.0.i = phi i32 [ %i.ac, %bb.b ], [ %i.ac, %is_leap_year.exit.thread.i ], [ %i.aj, %is_leap_year.exit.i ], [ %i.ah, %is_leap_year.exit.thread13.i ]
  %i.ak = add nsw i32 %i.l, -1                    ; 4 uses
  %.neg.i = sdiv i32 %i.ak, -100
  %i.al = mul nsw i32 %i.ak, 365
  %i.am = sdiv i32 %i.ak, 4
  %i.an = sdiv i32 %i.ak, 400
  %i.ao = add nuw nsw i32 %i.am, %i.q
  %i.ap = add nsw i32 %i.ao, %i.al
  %i.aq = add nsw i32 %i.ap, %.neg.i
  %i.ar = add nsw i32 %i.aq, %i.an
  %i.as = add i32 %i.ar, %.0.i
  br label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.at = tail call ptr (ptr, ptr, ptr, ...) @PyObject_CallMethod(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, ptr noundef null) #9 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = tail call i64 @PyLong_AsLong(ptr noundef nonnull %i.at) #9
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = load i32, ptr %i.at, align 8, !tbaa !19 ; 2 uses
  %.not.i65 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i65, label %bb.g, label %Py_DECREF.exit66

bb.g:                                             ; preds = %bb.f
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.at, align 8, !tbaa !19
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.h, label %Py_DECREF.exit66

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.at) #9
  br label %Py_DECREF.exit66

Py_DECREF.exit66:                                 ; preds = %bb.f, %bb.g, %bb.h
  %i.ba = icmp eq i32 %i.aw, -1
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %Py_DECREF.exit66
  %i.bb = tail call ptr @PyErr_Occurred() #9
  %.not57 = icmp eq ptr %i.bb, null
  br i1 %.not57, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %Py_DECREF.exit66
  %i.bc = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #9 ; 5 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = tail call i64 @PyLong_AsLong(ptr noundef nonnull %i.bc) #9 ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 8, !tbaa !19 ; 2 uses
  %.not.i63 = icmp sgt i32 %i.bf, -1
  br i1 %.not.i63, label %bb.l, label %Py_DECREF.exit64

bb.l:                                             ; preds = %bb.k
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %i.bc, align 8, !tbaa !19
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %Py_DECREF.exit64

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bc) #9
  br label %Py_DECREF.exit64

Py_DECREF.exit64:                                 ; preds = %bb.k, %bb.l, %bb.m
  %i.bi = and i64 %i.be, 4294967295
  %i.bj = icmp eq i64 %i.bi, 4294967295
  br i1 %i.bj, label %.critedge, label %bb.n

bb.n:                                             ; preds = %Py_DECREF.exit64
  %i.bk = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %0, ptr noundef nonnull @.str.58) #9 ; 5 uses
end_hunk_1
begin_hunk_2_@zoneinfo_ZoneInfo_impl:bb.a
  %i.br = add nuw i32 %i.bp, 1
  store i32 %i.br, ptr %1, align 8, !tbaa !19
  br label %_Py_NewRef.exit.i.i

_Py_NewRef.exit.i.i:                              ; preds = %bb.an, %bb.am
  %i.bs = getelementptr i8, ptr %i.bn, i64 16
  store ptr %1, ptr %i.bs, align 8, !tbaa !23
  %i.bt = load i32, ptr %.1, align 8, !tbaa !19   ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, -1073741825
  br i1 %i.bu, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_Py_NewRef.exit.i.i
  %i.bv = add nuw i32 %i.bt, 1
  store i32 %i.bv, ptr %.1, align 8, !tbaa !19
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_Py_NewRef.exit.i.i
  %i.bw = getelementptr i8, ptr %i.bn, i64 24
  store ptr %.1, ptr %i.bw, align 8, !tbaa !24
  %i.bx = getelementptr i8, ptr %i.b, i64 48      ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !140 ; 4 uses
  %i.bz = icmp eq ptr %i.by, %i.bn
  %.01828.pre32.i = load ptr, ptr %i.bn, align 8, !tbaa !25 ; 4 uses
  br i1 %i.bz, label %move_strong_cache_node_to_front.exit.i77, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ca = getelementptr i8, ptr %i.bn, i64 8      ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i73, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %.01828.pre32.i, ptr %i.cb, align 8, !tbaa !25
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not14.i.i.i74 = icmp eq ptr %.01828.pre32.i, null
  br i1 %.not14.i.i.i74, label %remove_from_strong_cache.exit.i.i75, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cc = getelementptr i8, ptr %.01828.pre32.i, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !82
  br label %remove_from_strong_cache.exit.i.i75

remove_from_strong_cache.exit.i.i75:              ; preds = %bb.at, %bb.as
  store i64 0, ptr %i.ca, align 8
  store ptr %i.by, ptr %i.bn, align 8, !tbaa !25
  %.not.i.i76 = icmp eq ptr %i.by, null
  br i1 %.not.i.i76, label %bb.av, label %bb.au

bb.au:                                            ; preds = %remove_from_strong_cache.exit.i.i75
  %i.cd = getelementptr i8, ptr %i.by, i64 8
  store ptr %i.bn, ptr %i.cd, align 8, !tbaa !82
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %remove_from_strong_cache.exit.i.i75
  store ptr %i.bn, ptr %i.bx, align 8, !tbaa !140
  %.01828.pre.i = load ptr, ptr %i.bn, align 8, !tbaa !25
  br label %move_strong_cache_node_to_front.exit.i77

move_strong_cache_node_to_front.exit.i77:         ; preds = %bb.av, %bb.ap
  %.01828.i = phi ptr [ %.01828.pre32.i, %bb.ap ], [ %.01828.pre.i, %bb.av ] ; 2 uses
  %i.ce = icmp eq ptr %.01828.i, null
  br i1 %i.ce, label %update_strong_cache.exit, label %bb.aw

bb.aw:                                            ; preds = %move_strong_cache_node_to_front.exit.i77
  %.018.i = load ptr, ptr %.01828.i, align 8, !tbaa !25 ; 2 uses
  %i.cf = icmp eq ptr %.018.i, null
  br i1 %i.cf, label %update_strong_cache.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.018.1.i = load ptr, ptr %.018.i, align 8, !tbaa !25 ; 2 uses
  %i.cg = icmp eq ptr %.018.1.i, null
  br i1 %i.cg, label %update_strong_cache.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.018.2.i = load ptr, ptr %.018.1.i, align 8, !tbaa !25 ; 2 uses
  %i.ch = icmp eq ptr %.018.2.i, null
  br i1 %i.ch, label %update_strong_cache.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.018.3.i = load ptr, ptr %.018.2.i, align 8, !tbaa !25 ; 2 uses
  %i.ci = icmp eq ptr %.018.3.i, null
  br i1 %i.ci, label %update_strong_cache.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.018.4.i = load ptr, ptr %.018.3.i, align 8, !tbaa !25 ; 2 uses
  %i.cj = icmp eq ptr %.018.4.i, null
  br i1 %i.cj, label %update_strong_cache.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.018.5.i = load ptr, ptr %.018.4.i, align 8, !tbaa !25 ; 2 uses
  %i.ck = icmp eq ptr %.018.5.i, null
  br i1 %i.ck, label %update_strong_cache.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bb
  %.018.6.i = load ptr, ptr %.018.5.i, align 8, !tbaa !25 ; 3 uses
  %.not22.old.i = icmp eq ptr %.018.6.i, null
  br i1 %.not22.old.i, label %update_strong_cache.exit, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i
  %i.cl = getelementptr i8, ptr %.018.6.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !82 ; 2 uses
  %.not23.i = icmp eq ptr %i.cm, null
  br i1 %.not23.i, label %.lr.ph.i.i78.preheader, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr null, ptr %i.cm, align 8, !tbaa !25
  br label %.lr.ph.i.i78.preheader

.lr.ph.i.i78.preheader:                           ; preds = %bb.bd, %bb.bc
  br label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %.lr.ph.i.i78.preheader, %strong_cache_node_free.exit.i.i
  %.06.i.i = phi ptr [ %i.cn, %strong_cache_node_free.exit.i.i ], [ %.018.6.i, %.lr.ph.i.i78.preheader ] ; 4 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !25 ; 2 uses
  %i.co = getelementptr i8, ptr %.06.i.i, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !23 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i, label %Py_XDECREF.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i78
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.cq, -1
  br i1 %.not.i.i.i.i.i, label %bb.bf, label %Py_XDECREF.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.cr = add nsw i32 %i.cq, -1                   ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !19
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.bg, label %Py_XDECREF.exit.i.i.i

bb.bg:                                            ; preds = %bb.bf
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cp) #9
  br label %Py_XDECREF.exit.i.i.i

Py_XDECREF.exit.i.i.i:                            ; preds = %bb.bg, %bb.bf, %bb.be, %.lr.ph.i.i78
  %i.ct = getelementptr i8, ptr %.06.i.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !24 ; 4 uses
  %.not.i3.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i3.i.i.i, label %strong_cache_node_free.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %Py_XDECREF.exit.i.i.i
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !19 ; 2 uses
  %.not.i.i4.i.i.i = icmp sgt i32 %i.cv, -1
  br i1 %.not.i.i4.i.i.i, label %bb.bi, label %strong_cache_node_free.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.cw = add nsw i32 %i.cv, -1                   ; 2 uses
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !19
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.bj, label %strong_cache_node_free.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cu) #9
  br label %strong_cache_node_free.exit.i.i

strong_cache_node_free.exit.i.i:                  ; preds = %bb.bj, %bb.bi, %bb.bh, %Py_XDECREF.exit.i.i.i
  tail call void @PyMem_Free(ptr noundef nonnull %.06.i.i) #9
  %.not.i25.i = icmp eq ptr %i.cn, null
  br i1 %.not.i25.i, label %update_strong_cache.exit, label %.lr.ph.i.i78, !llvm.loop !0

update_strong_cache.exit:                         ; preds = %strong_cache_node_free.exit.i.i, %PyObject_TypeCheck.exit.thread, %bb.al, %move_strong_cache_node_to_front.exit.i77, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %.critedge.i
  %i.cy = load i32, ptr %.0.i, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.cy, -1
  br i1 %.not.i, label %bb.bk, label %.critedge

bb.bk:                                            ; preds = %update_strong_cache.exit
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %.0.i, align 8, !tbaa !19
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.bl, label %.critedge

bb.bl:                                            ; preds = %bb.bk
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.bl, %bb.bk, %update_strong_cache.exit, %bb.ak, %bb.aj, %Py_DECREF.exit52, %bb.ae, %bb.ad, %bb.ac, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.k, %move_strong_cache_node_to_front.exit.i, %.loopexit
  %.2 = phi ptr [ null, %bb.r ], [ null, %.loopexit ], [ %i.r, %bb.k ], [ null, %bb.ak ], [ null, %bb.ae ], [ null, %bb.y ], [ %i.r, %move_strong_cache_node_to_front.exit.i ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %Py_DECREF.exit52 ], [ null, %bb.aj ], [ %.1, %update_strong_cache.exit ], [ %.1, %bb.bk ], [ %.1, %bb.bl ]
  ret ptr %.2
}

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #3

declare ptr @PyType_GetModuleByDef(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_SetAttrString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_CallNoArgs(ptr noundef) local_unnamed_addr #3

declare void @PyObject_GC_UnTrack(ptr noundef) local_unnamed_addr #3

declare void @PyObject_ClearWeakRefs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !26}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!"TransitionRuleType", !13, i64 0}
!15 = !{!"short", !10, i64 0}
!16 = !{!"p1 _ZTS7_object", !13, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!15, !15, i64 0}
!21 = !{!"p1 _ZTS15StrongCacheNode", !13, i64 0}
!22 = !{!"StrongCacheNode", !21, i64 0, !21, i64 8, !16, i64 16, !16, i64 24}
!23 = !{!22, !16, i64 16}
!24 = !{!22, !16, i64 24}
!25 = !{!22, !21, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!28 = !{!"long", !10, i64 0}
!29 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !28, i64 24}
!30 = !{!"", !27, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !21, i64 48, !29, i64 56}
!31 = !{!30, !27, i64 0}
!32 = !{!30, !16, i64 8}
!33 = !{!30, !16, i64 16}
!34 = !{!30, !16, i64 24}
!35 = !{!30, !16, i64 32}
!36 = !{!30, !16, i64 40}
!37 = !{!30, !21, i64 48}
!38 = !{!30, !16, i64 56}
!39 = !{!30, !16, i64 64}
!40 = !{!30, !16, i64 72}
!41 = !{!"", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !16, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112}
!42 = !{!"_object", !10, i64 0, !27, i64 8}
!43 = !{!"", !42, i64 0}
!44 = !{!"p1 long", !13, i64 0}
!45 = !{!"any p2 pointer", !13, i64 0}
!46 = !{!"p1 _ZTS18TransitionRuleType", !13, i64 0}
!47 = !{!"", !29, i64 0, !29, i64 32, !11, i64 64, !46, i64 72, !46, i64 80, !10, i64 88}
!48 = !{!"", !43, i64 0, !16, i64 16, !16, i64 24, !16, i64 32, !28, i64 40, !28, i64 48, !44, i64 56, !10, i64 64, !45, i64 80, !13, i64 88, !47, i64 96, !13, i64 192, !10, i64 200, !10, i64 201}
!49 = !{!48, !16, i64 16}
!50 = !{!48, !16, i64 24}
!51 = !{!"PyVarObject", !42, i64 0, !28, i64 16}
!52 = !{!51, !28, i64 16}
!53 = !{!42, !27, i64 8}
!54 = !{!48, !44, i64 56}
!55 = !{!44, !44, i64 0}
!56 = !{!48, !28, i64 48}
!57 = !{!48, !13, i64 192}
!58 = !{!29, !16, i64 0}
!59 = !{!29, !16, i64 8}
!60 = !{!29, !16, i64 16}
!61 = !{!48, !45, i64 80}
!62 = !{!47, !10, i64 88}
!63 = !{!47, !46, i64 72}
!64 = !{!47, !46, i64 80}
!65 = !{!"p1 omnipotent char", !13, i64 0}
!66 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!67 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!68 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!69 = !{!"_typeobject", !51, i64 0, !65, i64 24, !28, i64 32, !28, i64 40, !13, i64 48, !28, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !28, i64 168, !65, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !28, i64 208, !13, i64 216, !13, i64 224, !66, i64 232, !67, i64 240, !68, i64 248, !27, i64 256, !16, i64 264, !13, i64 272, !13, i64 280, !28, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !16, i64 336, !16, i64 344, !16, i64 352, !13, i64 360, !16, i64 368, !13, i64 376, !11, i64 384, !13, i64 392, !13, i64 400, !10, i64 408, !15, i64 410}
!70 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!71 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280}
!72 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!73 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72}
!74 = !{!"", !13, i64 0, !13, i64 8}
!75 = !{!"p1 _ZTS15_dictkeysobject", !13, i64 0}
!76 = !{!"_specialization_cache", !16, i64 0, !11, i64 8, !16, i64 16}
!77 = !{!"_heaptypeobject", !69, i64 0, !70, i64 416, !71, i64 448, !72, i64 736, !73, i64 760, !74, i64 840, !16, i64 856, !16, i64 864, !16, i64 872, !75, i64 880, !16, i64 888, !65, i64 896, !13, i64 904, !76, i64 912}
!78 = !{!77, !16, i64 888}
!79 = !{!"_Bool", !10, i64 0}
!80 = !{!"", !42, i64 0, !16, i64 16, !13, i64 24, !16, i64 32, !16, i64 40, !79, i64 48, !28, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96}
!81 = !{!80, !13, i64 24}
!82 = !{!22, !21, i64 8}
!83 = !{!48, !10, i64 201}
!84 = !{!69, !13, i64 304}
!85 = !{!41, !27, i64 8}
!86 = !{!"", !42, i64 0, !28, i64 16, !10, i64 24, !10, i64 25, !10, i64 35, !16, i64 40}
!87 = !{!48, !28, i64 40}
!88 = !{!28, !28, i64 0}
!89 = !{!48, !13, i64 88}
!90 = !{!14, !13, i64 0}
!91 = !{!47, !11, i64 64}
!92 = !{!29, !28, i64 24}
!93 = !{!86, !10, i64 35}
!94 = !{!48, !10, i64 200}
!95 = !{!65, !65, i64 0}
!96 = !{!"", !14, i64 0, !10, i64 8, !10, i64 9, !10, i64 10, !15, i64 12, !10, i64 14, !10, i64 15}
!97 = !{!96, !10, i64 8}
!98 = !{!96, !10, i64 10}
!99 = !{!96, !10, i64 9}
!100 = !{!96, !15, i64 12}
!101 = !{!96, !10, i64 14}
!102 = !{!96, !10, i64 15}
!103 = !{!"", !14, i64 0, !10, i64 8, !15, i64 10, !15, i64 12, !10, i64 14, !10, i64 15}
!104 = !{!103, !15, i64 10}
!105 = !{!103, !10, i64 8}
!106 = !{!103, !15, i64 12}
!107 = !{!103, !10, i64 14}
!108 = !{!103, !10, i64 15}
!109 = distinct !{!109, !26}
!110 = !{!27, !27, i64 0}
!111 = !{!41, !27, i64 32}
!112 = distinct !{!112, !26}
!113 = !{!48, !16, i64 32}
!114 = !{!69, !13, i64 320}
!115 = distinct !{null}
!116 = distinct !{null, null}
!117 = !{!"", !42, i64 0, !28, i64 16, !10, i64 24}
!118 = !{!117, !10, i64 24}
!119 = !{!86, !16, i64 40}
!120 = !{!47, !28, i64 24}
!121 = !{!47, !28, i64 56}
!122 = distinct !{null}
!123 = distinct !{!123, !26}
!124 = distinct !{!124, !26}
!125 = distinct !{!125, !26}
!126 = distinct !{!126, !26}
!127 = distinct !{!127, !26}
!128 = distinct !{!128, !26}
!129 = !{!48, !10, i64 184}
!130 = distinct !{!130, !26}
!131 = distinct !{!131, !26}
!132 = distinct !{!132, !26}
!133 = distinct !{!133, !26}
!134 = distinct !{!134, !26}
!135 = !{!46, !46, i64 0}
!136 = !{!41, !13, i64 72}
!137 = !{!41, !27, i64 24}
!138 = distinct !{null, null}
!139 = distinct !{null}
!140 = !{!21, !21, i64 0}
end_hunk_2
