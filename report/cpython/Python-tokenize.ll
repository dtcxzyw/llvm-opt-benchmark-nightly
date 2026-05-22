inline.NumInlined: 20
inline.NumDeleted: 11
begin_hunk_0_@PyObject_SelfIter
declare ptr @PyObject_SelfIter(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @tokenizeriter_next(ptr noundef captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.token, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @_PyToken_Init(ptr noundef nonnull %1) #6
  %i.a = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = call i32 @_PyTokenizer_Get(ptr noundef %i.b, ptr noundef nonnull %1) #6 ; 14 uses
  %i.d = icmp eq i32 %i.c, 67
  br i1 %i.d, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @PyErr_Occurred() #6
  %.not98 = icmp eq ptr %i.e, null
  br i1 %.not98, label %bb.c, label %_tokenizer_error.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @PyErr_Occurred() #6
  %.not.i109 = icmp eq ptr %i.f, null
  br i1 %.not.i109, label %bb.d, label %_tokenizer_error.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !25 ; 4 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !38   ; 10 uses
  %i.i = getelementptr i8, ptr %i.h, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !48
  switch i32 %i.j, label %bb.m [
    i32 13, label %bb.n
    i32 11, label %bb.e
    i32 21, label %bb.f
    i32 12, label %bb.g
    i32 15, label %bb.i
    i32 18, label %bb.j
    i32 20, label %bb.k
    i32 25, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.18) #6
  %i.k = getelementptr i8, ptr %i.h, i64 2336
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr i8, ptr %i.h, i64 512
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr i8, ptr %i.h, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %spec.select94.i = call i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %spec.select.i = trunc i64 %spec.select94.i to i32
  call void @PyErr_SyntaxLocationObject(ptr noundef %i.l, i32 noundef %i.n, i32 noundef %spec.select.i) #6
  br label %_tokenizer_error.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.u = load ptr, ptr @PyExc_IndentationError, align 8, !tbaa !25
  br label %bb.n

bb.g:                                             ; preds = %bb.d
  %i.v = call ptr @PyErr_Occurred() #6
  %.not50.i = icmp eq ptr %i.v, null
  br i1 %.not50.i, label %bb.h, label %_tokenizer_error.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr @PyExc_KeyboardInterrupt, align 8, !tbaa !25
  call void @PyErr_SetNone(ptr noundef %i.w) #6
  br label %_tokenizer_error.exit.thread

bb.i:                                             ; preds = %bb.d
  %i.x = call ptr @PyErr_NoMemory() #6            ; 0 uses
  br label %_tokenizer_error.exit.thread

bb.j:                                             ; preds = %bb.d
  %i.y = load ptr, ptr @PyExc_TabError, align 8, !tbaa !25
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.z = load ptr, ptr @PyExc_IndentationError, align 8, !tbaa !25
  br label %bb.n

bb.l:                                             ; preds = %bb.d
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.f, %bb.d
  %.040.i = phi ptr [ %i.g, %bb.m ], [ %i.g, %bb.l ], [ %i.u, %bb.f ], [ %i.y, %bb.j ], [ %i.z, %bb.k ], [ %i.g, %bb.d ]
  %.035.i = phi ptr [ @.str.23, %bb.m ], [ @.str.22, %bb.l ], [ @.str.19, %bb.f ], [ @.str.20, %bb.j ], [ @.str.21, %bb.k ], [ @.str.17, %bb.d ]
  %i.aa = getelementptr i8, ptr %i.h, i64 16      ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !51  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = xor i64 %i.ae, -1
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.ac, i64 noundef %i.ag, ptr noundef nonnull @.str.24) #6 ; 6 uses
  %.not51.i = icmp eq ptr %i.ah, null
  br i1 %.not51.i, label %_tokenizer_error.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = call i64 @_PyPegen_byte_offset_to_character_offset(ptr noundef nonnull %i.ah, i64 noundef %i.am) #6 ; 2 uses
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %Py_XDECREF.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %i.h, i64 2336
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr i8, ptr %i.h, i64 512
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !49
  %i.at = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.25, ptr noundef %i.aq, i32 noundef %i.as, i64 noundef %i.an, ptr noundef nonnull %i.ah, ptr noundef nonnull @_Py_NoneStruct, ptr noundef nonnull @_Py_NoneStruct) #6 ; 6 uses
  %.not52.i = icmp eq ptr %i.at, null
  br i1 %.not52.i, label %Py_XDECREF.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = call ptr @PyUnicode_FromString(ptr noundef nonnull %.035.i) #6 ; 5 uses
  %.not53.i = icmp eq ptr %i.au, null
  br i1 %.not53.i, label %Py_XDECREF.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %i.au, ptr noundef nonnull %i.at) #6 ; 5 uses
  %.not54.i = icmp eq ptr %i.av, null
  br i1 %.not54.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @PyErr_SetObject(ptr noundef %.040.i, ptr noundef nonnull %i.av) #6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.aw, -1
  br i1 %.not.i.i.i, label %bb.u, label %Py_XDECREF.exit.thread.i

bb.u:                                             ; preds = %bb.t
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.au, align 8, !tbaa !16
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.v, label %Py_XDECREF.exit.thread.i

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.au) #6
  br label %Py_XDECREF.exit.thread.i

Py_XDECREF.exit.thread.i:                         ; preds = %bb.v, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o
  %.0386979.i = phi ptr [ %i.at, %bb.v ], [ %i.at, %bb.t ], [ %i.at, %bb.u ], [ %i.at, %bb.q ], [ null, %bb.p ], [ null, %bb.o ] ; 4 uses
  %.0377077.i = phi ptr [ %i.av, %bb.v ], [ %i.av, %bb.t ], [ %i.av, %bb.u ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ] ; 4 uses
  %i.az = load i32, ptr %i.ah, align 8, !tbaa !16 ; 2 uses
  %.not.i.i56.i = icmp sgt i32 %i.az, -1
  br i1 %.not.i.i56.i, label %bb.w, label %Py_XDECREF.exit57.i

bb.w:                                             ; preds = %Py_XDECREF.exit.thread.i
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.ah, align 8, !tbaa !16
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.x, label %Py_XDECREF.exit57.i

bb.x:                                             ; preds = %bb.w
  call void @_Py_Dealloc(ptr noundef nonnull %i.ah) #6
  br label %Py_XDECREF.exit57.i

Py_XDECREF.exit57.i:                              ; preds = %bb.x, %bb.w, %Py_XDECREF.exit.thread.i
  %.not.i58.i = icmp eq ptr %.0386979.i, null
  br i1 %.not.i58.i, label %Py_XDECREF.exit60.i, label %bb.y

bb.y:                                             ; preds = %Py_XDECREF.exit57.i
  %i.bc = load i32, ptr %.0386979.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i59.i = icmp sgt i32 %i.bc, -1
  br i1 %.not.i.i59.i, label %bb.z, label %Py_XDECREF.exit60.i

bb.z:                                             ; preds = %bb.y
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  store i32 %i.bd, ptr %.0386979.i, align 8, !tbaa !16
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.aa, label %Py_XDECREF.exit60.i

bb.aa:                                            ; preds = %bb.z
  call void @_Py_Dealloc(ptr noundef nonnull %.0386979.i) #6
  br label %Py_XDECREF.exit60.i

Py_XDECREF.exit60.i:                              ; preds = %bb.aa, %bb.z, %bb.y, %Py_XDECREF.exit57.i
  %.not.i61.i = icmp eq ptr %.0377077.i, null
  br i1 %.not.i61.i, label %_tokenizer_error.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %Py_XDECREF.exit60.i
  %i.bf = load i32, ptr %.0377077.i, align 8, !tbaa !16 ; 2 uses
  %.not.i.i62.i = icmp sgt i32 %i.bf, -1
  br i1 %.not.i.i62.i, label %bb.ac, label %_tokenizer_error.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.bg = add nsw i32 %i.bf, -1                   ; 2 uses
  store i32 %i.bg, ptr %.0377077.i, align 8, !tbaa !16
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %2, label %_tokenizer_error.exit.thread

2:                                                ; preds = %bb.ac
  call void @_Py_Dealloc(ptr noundef nonnull %.0377077.i) #6
  br label %_tokenizer_error.exit.thread

bb.ad:                                            ; preds = %bb.a
  %i.bi = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !45
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !25
  call void @PyErr_SetString(ptr noundef %i.bk, ptr noundef nonnull @.str.13) #6
  store i32 1, ptr %i.bi, align 8, !tbaa !45
  br label %_tokenizer_error.exit

bb.af:                                            ; preds = %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  %or.cond4 = select i1 %i.bn, i1 true, i1 %i.bq
  br i1 %or.cond4, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.br = call ptr @Py_GetConstant(i32 noundef 7) #6
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = call ptr @PyUnicode_FromStringAndSize(ptr noundef nonnull %i.bm, i64 noundef %i.bu) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.082 = phi ptr [ %i.br, %bb.ag ], [ %i.bv, %bb.ah ] ; 15 uses
  %i.bw = icmp eq ptr %.082, null
  br i1 %i.bw, label %_tokenizer_error.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  switch i32 %i.c, label %bb.am [
    i32 0, label %bb.al
    i32 6, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 64
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !48
  %i.ca = icmp eq i32 %i.bz, 11
  br i1 %i.ca, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.aj, %bb.ak
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.al
  %i.cb = phi i1 [ true, %bb.al ], [ false, %bb.aj ] ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  switch i32 %i.c, label %.thread [
    i32 63, label %bb.an
    i32 60, label %bb.an
    i32 3, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.am
  %i.cc = getelementptr i8, ptr %.pre, i64 2784
  br label %bb.ao

.thread:                                          ; preds = %bb.am, %bb.ak
  %i.cd = phi ptr [ %i.bx, %bb.ak ], [ %.pre, %bb.am ] ; 2 uses
  %i.ce = phi i1 [ false, %bb.ak ], [ %i.cb, %bb.am ]
  %i.cf = getelementptr i8, ptr %i.cd, i64 2776
  br label %bb.ao

bb.ao:                                            ; preds = %.thread, %bb.an
  %i.cg = phi ptr [ %.pre, %bb.an ], [ %i.cd, %.thread ] ; 4 uses
  %i.ch = phi i1 [ %i.cb, %bb.an ], [ %i.ce, %.thread ] ; 2 uses
  %.in = phi ptr [ %i.cc, %bb.an ], [ %i.cf, %.thread ]
  %i.ci = load ptr, ptr %.in, align 8, !tbaa !54  ; 4 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 18468
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !44
  %i.cl = icmp ne i32 %i.ck, 0
  %or.cond10 = and i1 %i.ch, %i.cl
  br i1 %or.cond10, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cm = call ptr @Py_GetConstant(i32 noundef 7) #6
  br label %_get_current_line.exit

bb.aq:                                            ; preds = %bb.ao
  %i.cn = getelementptr i8, ptr %i.cg, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !50
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = ptrtoint ptr %i.ci to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ct = getelementptr i8, ptr %i.cg, i64 18476
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !55
  %.not93 = icmp ne i32 %i.cu, 0
  %i.cv = sext i1 %.not93 to i64
  %spec.select = add nsw i64 %i.cr, %i.cv
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.078 = phi i64 [ %i.cr, %bb.aq ], [ %spec.select, %bb.ar ]
  %i.cw = getelementptr i8, ptr %i.cg, i64 512
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !49
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr i8, ptr %0, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !56
  %.not.i110 = icmp eq i64 %i.da, %i.cy
  %i.db = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !46 ; 5 uses
  br i1 %.not.i110, label %_get_current_line.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %Py_XDECREF.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !16 ; 2 uses
  %.not.i.i.i111 = icmp sgt i32 %i.dd, -1
  br i1 %.not.i.i.i111, label %bb.av, label %Py_XDECREF.exit.i

bb.av:                                            ; preds = %bb.au
  %i.de = add nsw i32 %i.dd, -1                   ; 2 uses
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !16
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.aw, label %Py_XDECREF.exit.i

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %i.dc) #6
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.aw, %bb.av, %bb.au, %bb.at
  %i.dg = call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.ci, i64 noundef %.078, ptr noundef nonnull @.str.24) #6 ; 2 uses
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !46
  %i.dh = getelementptr i8, ptr %0, i64 56
  store i64 0, ptr %i.dh, align 8, !tbaa !57
  br label %_get_current_line.exit

_get_current_line.exit:                           ; preds = %Py_XDECREF.exit.i, %bb.as, %bb.ap
  %.not38.i = phi i1 [ false, %bb.ap ], [ false, %Py_XDECREF.exit.i ], [ true, %bb.as ]
  %.079 = phi ptr [ %i.cm, %bb.ap ], [ %i.dg, %Py_XDECREF.exit.i ], [ %i.dc, %bb.as ] ; 7 uses
  %i.di = icmp eq ptr %.079, null
  br i1 %i.di, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %_get_current_line.exit
  %i.dj = load i32, ptr %.082, align 8, !tbaa !16 ; 2 uses
  %.not.i103 = icmp sgt i32 %i.dj, -1
  br i1 %.not.i103, label %bb.ay, label %_tokenizer_error.exit

bb.ay:                                            ; preds = %bb.ax
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %.082, align 8, !tbaa !16
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.az, label %_tokenizer_error.exit

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %.082) #6
  br label %_tokenizer_error.exit

bb.ba:                                            ; preds = %_get_current_line.exit
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  switch i32 %i.c, label %bb.bb [
    i32 63, label %bb.bc
    i32 60, label %bb.bc
    i32 3, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.bb
  %.sink = phi i64 [ 512, %bb.bb ], [ 516, %bb.ba ], [ 516, %bb.ba ], [ 516, %bb.ba ]
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.sink
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !7  ; 2 uses
  %i.dp = sext i32 %i.do to i64                   ; 4 uses
  %i.dq = getelementptr i8, ptr %i.dm, i64 512
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !49 ; 2 uses
  %i.ds = sext i32 %i.dr to i64                   ; 3 uses
  %.val = load ptr, ptr %i.bl, align 8, !tbaa !52 ; 4 uses
  %.val108 = load ptr, ptr %i.bo, align 8         ; 3 uses
  %.not.i112 = icmp eq ptr %.val, null
  %.not37.i = icmp ult ptr %.val, %i.ci
  %or.cond.i = or i1 %.not.i112, %.not37.i
  br i1 %or.cond.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dt = ptrtoint ptr %.val to i64
  %i.du = ptrtoint ptr %i.ci to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 5 uses
  br i1 %.not38.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dw = call i64 @_PyPegen_byte_offset_to_character_offset_line(ptr noundef nonnull %.079, i64 noundef 0, i64 noundef %i.dv) #6 ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = getelementptr i8, ptr %0, i64 56
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !57
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.dz = getelementptr i8, ptr %0, i64 56
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !57
  %i.eb = sub i64 %i.dv, %i.ea
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc
  %.2124 = phi i64 [ -1, %bb.bc ], [ %i.eb, %bb.bf ], [ %i.dw, %bb.be ] ; 3 uses
  %.0.i113 = phi i64 [ -1, %bb.bc ], [ %i.dv, %bb.bf ], [ %i.dv, %bb.be ]
  %.not39.i = icmp eq ptr %.val108, null
  br i1 %.not39.i, label %_get_col_offsets.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ed = getelementptr i8, ptr %i.ec, i64 2776
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !58 ; 3 uses
  %.not40.i = icmp ult ptr %.val108, %i.ee
  br i1 %.not40.i, label %_get_col_offsets.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ef = ptrtoint ptr %.val108 to i64            ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 3 uses
  %i.ei = icmp eq i32 %i.do, %i.dr
  br i1 %i.ei, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ej = call i64 @_PyPegen_byte_offset_to_character_offset_line(ptr noundef nonnull %.079, i64 noundef %.0.i113, i64 noundef %i.eh) #6 ; 2 uses
  %i.ek = add i64 %i.ej, %.2124
  %i.el = ptrtoint ptr %.val to i64
  %i.em = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !57
  %i.eo = add i64 %i.ej, %i.el
  %i.ep = sub i64 %i.ef, %i.eo
  %i.eq = add i64 %i.ep, %i.en
  store i64 %i.eq, ptr %i.em, align 8, !tbaa !57
  br label %_get_col_offsets.exit

bb.bk:                                            ; preds = %bb.bi
  %i.er = call i64 @_PyPegen_byte_offset_to_character_offset_raw(ptr noundef %i.ee, i64 noundef %i.eh) #6 ; 2 uses
  %i.es = sub i64 %i.eh, %i.er
  %i.et = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !57
  %i.ev = add i64 %i.es, %i.eu
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !57
  br label %_get_col_offsets.exit

_get_col_offsets.exit:                            ; preds = %bb.bg, %bb.bh, %bb.bj, %bb.bk
  %.3121 = phi i64 [ -1, %bb.bg ], [ -1, %bb.bh ], [ %i.ek, %bb.bj ], [ %i.er, %bb.bk ] ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 40
  store i64 %i.dp, ptr %i.ew, align 8, !tbaa !56
  %i.ex = getelementptr i8, ptr %0, i64 48
  store i64 %i.ds, ptr %i.ex, align 8, !tbaa !59
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 18468
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !44
  %.not95 = icmp eq i32 %i.fa, 0
  br i1 %.not95, label %.thread127, label %bb.bl

bb.bl:                                            ; preds = %_get_col_offsets.exit
  br i1 %i.ch, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fb = add nsw i64 %i.dp, 1                    ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.0122 = phi i64 [ 0, %bb.bm ], [ %.2124, %bb.bl ] ; 4 uses
  %.0118 = phi i64 [ 0, %bb.bm ], [ %.3121, %bb.bl ] ; 5 uses
  %.076 = phi i64 [ %i.fb, %bb.bm ], [ %i.dp, %bb.bl ] ; 4 uses
  %.0 = phi i64 [ %i.fb, %bb.bm ], [ %i.ds, %bb.bl ] ; 4 uses
  %i.fc = add i32 %i.c, -7
  %or.cond16 = icmp ult i32 %i.fc, 48
  br i1 %or.cond16, label %.thread127, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  switch i32 %i.c, label %.thread127 [
    i32 4, label %bb.bp
    i32 66, label %bb.bt
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.fd = load i32, ptr %.082, align 8, !tbaa !16 ; 2 uses
  %.not.i101 = icmp sgt i32 %i.fd, -1
  br i1 %.not.i101, label %bb.bq, label %Py_DECREF.exit102

bb.bq:                                            ; preds = %bb.bp
  %i.fe = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.fe, ptr %.082, align 8, !tbaa !16
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.br, label %Py_DECREF.exit102

bb.br:                                            ; preds = %bb.bq
  call void @_Py_Dealloc(ptr noundef nonnull %.082) #6
  br label %Py_DECREF.exit102

Py_DECREF.exit102:                                ; preds = %bb.bp, %bb.bq, %bb.br
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 18476
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !55
  %.not97 = icmp eq i32 %i.fi, 0
  br i1 %.not97, label %.sink.split, label %bb.bs

.sink.split:                                      ; preds = %Py_DECREF.exit102
  %i.fj = getelementptr i8, ptr %i.fg, i64 56
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !60
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !16
  %i.fm = icmp eq i8 %i.fl, 13
  %.str.14..str.15 = select i1 %i.fm, ptr @.str.14, ptr @.str.15
  %i.fn = call ptr @PyUnicode_FromString(ptr noundef nonnull %.str.14..str.15) #6
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split, %Py_DECREF.exit102
  %.183 = phi ptr [ %.082, %Py_DECREF.exit102 ], [ %i.fn, %.sink.split ]
  %i.fo = add i64 %.0118, 1
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bo
  %i.fp = getelementptr i8, ptr %i.ey, i64 18476
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !55
  %.not96 = icmp eq i32 %i.fq, 0
  br i1 %.not96, label %.thread127, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fr = load i32, ptr %.082, align 8, !tbaa !16 ; 2 uses
  %.not.i99 = icmp sgt i32 %i.fr, -1
  br i1 %.not.i99, label %bb.bv, label %Py_DECREF.exit100

bb.bv:                                            ; preds = %bb.bu
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %.082, align 8, !tbaa !16
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bw, label %Py_DECREF.exit100

bb.bw:                                            ; preds = %bb.bv
  call void @_Py_Dealloc(ptr noundef nonnull %.082) #6
  br label %Py_DECREF.exit100

Py_DECREF.exit100:                                ; preds = %bb.bu, %bb.bv, %bb.bw
  %i.fu = call ptr @Py_GetConstant(i32 noundef 7) #6
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bs, %Py_DECREF.exit100
  %.1119 = phi i64 [ %i.fo, %bb.bs ], [ %.0118, %Py_DECREF.exit100 ]
  %.2 = phi ptr [ %.183, %bb.bs ], [ %i.fu, %Py_DECREF.exit100 ] ; 2 uses
  %i.fv = icmp eq ptr %.2, null
  br i1 %i.fv, label %bb.by, label %.thread127

bb.by:                                            ; preds = %bb.bx
  %i.fw = load i32, ptr %.079, align 8, !tbaa !16 ; 2 uses
  %.not.i = icmp sgt i32 %i.fw, -1
  br i1 %.not.i, label %bb.bz, label %_tokenizer_error.exit.thread

bb.bz:                                            ; preds = %bb.by
  %i.fx = add nsw i32 %i.fw, -1                   ; 2 uses
  store i32 %i.fx, ptr %.079, align 8, !tbaa !16
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %3, label %_tokenizer_error.exit.thread

3:                                                ; preds = %bb.bz
  call void @_Py_Dealloc(ptr noundef nonnull %.079) #6
  br label %_tokenizer_error.exit.thread

.thread127:                                       ; preds = %bb.bn, %bb.bt, %bb.bo, %bb.bx, %_get_col_offsets.exit
  %.1123 = phi i64 [ %.2124, %_get_col_offsets.exit ], [ %.0122, %bb.bx ], [ %.0122, %bb.bo ], [ %.0122, %bb.bt ], [ %.0122, %bb.bn ]
  %.2120 = phi i64 [ %.3121, %_get_col_offsets.exit ], [ %.1119, %bb.bx ], [ %.0118, %bb.bo ], [ %.0118, %bb.bt ], [ %.0118, %bb.bn ]
  %.185 = phi i32 [ %i.c, %_get_col_offsets.exit ], [ %i.c, %bb.bx ], [ %i.c, %bb.bo ], [ 66, %bb.bt ], [ 55, %bb.bn ] ; 2 uses
  %.3 = phi ptr [ %.082, %_get_col_offsets.exit ], [ %.2, %bb.bx ], [ %.082, %bb.bo ], [ %.082, %bb.bt ], [ %.082, %bb.bn ]
  %.177 = phi i64 [ %i.dp, %_get_col_offsets.exit ], [ %.076, %bb.bx ], [ %.076, %bb.bo ], [ %.076, %bb.bt ], [ %.076, %bb.bn ]
  %.1 = phi i64 [ %i.ds, %_get_col_offsets.exit ], [ %.0, %bb.bx ], [ %.0, %bb.bo ], [ %.0, %bb.bt ], [ %.0, %bb.bn ]
  %i.fz = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.16, i32 noundef %.185, ptr noundef nonnull %.3, i64 noundef %.177, i64 noundef %.1123, i64 noundef %.1, i64 noundef %.2120, ptr noundef nonnull %.079) #6
  br label %_tokenizer_error.exit

_tokenizer_error.exit.thread:                     ; preds = %bb.b, %2, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i, %bb.n, %Py_XDECREF.exit60.i, %bb.ab, %bb.ac, %bb.by, %bb.bz, %3
  call void @_PyToken_Free(ptr noundef nonnull %1) #6
  br label %bb.cb

_tokenizer_error.exit:                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.ai, %.thread127, %bb.ae
  %.286 = phi i32 [ %i.c, %bb.ay ], [ %.185, %.thread127 ], [ %i.c, %bb.ae ], [ %i.c, %bb.ai ], [ %i.c, %bb.ax ], [ %i.c, %bb.az ]
  %.080 = phi ptr [ null, %bb.ay ], [ %i.fz, %.thread127 ], [ null, %bb.ae ], [ null, %bb.ai ], [ null, %bb.ax ], [ null, %bb.az ] ; 2 uses
  call void @_PyToken_Free(ptr noundef nonnull %1) #6
  %i.ga = icmp eq i32 %.286, 0
  br i1 %i.ga, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_tokenizer_error.exit
  store i32 1, ptr %i.bi, align 8, !tbaa !45
  br label %bb.cb

bb.cb:                                            ; preds = %_tokenizer_error.exit.thread, %bb.ca, %_tokenizer_error.exit
  %.080133 = phi ptr [ null, %_tokenizer_error.exit.thread ], [ %.080, %bb.ca ], [ %.080, %_tokenizer_error.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret ptr %.080133
}

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #1

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #1

declare ptr @_PyTokenizer_FromReadline(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare void @_PyTokenizer_Free(ptr noundef) local_unnamed_addr #1

declare void @_PyToken_Init(ptr noundef) local_unnamed_addr #1

declare i32 @_PyTokenizer_Get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #1

declare ptr @PyUnicode_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #1

declare void @_PyToken_Free(ptr noundef) local_unnamed_addr #1

declare void @PyErr_SyntaxLocationObject(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @PyErr_SetNone(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare ptr @PyUnicode_DecodeUTF8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_PyPegen_byte_offset_to_character_offset(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #1

declare void @PyErr_SetObject(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_PyPegen_byte_offset_to_character_offset_line(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @_PyPegen_byte_offset_to_character_offset_raw(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"", !13, i64 0}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !20, i64 16}
!18 = !{!"PyVarObject", !19, i64 0, !20, i64 16}
!19 = !{!"_object", !9, i64 0, !13, i64 8}
!20 = !{!"long", !9, i64 0}
!21 = !{!22, !20, i64 16}
!22 = !{!"", !19, i64 0, !20, i64 16, !20, i64 24, !23, i64 32, !24, i64 40}
!23 = !{!"p1 _ZTS15_dictkeysobject", !14, i64 0}
!24 = !{!"p1 _ZTS11_dictvalues", !14, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS7_object", !14, i64 0}
!27 = !{!19, !13, i64 8}
!28 = !{!29, !20, i64 168}
!29 = !{!"_typeobject", !18, i64 0, !30, i64 24, !20, i64 32, !20, i64 40, !14, i64 48, !20, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !20, i64 168, !30, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !20, i64 208, !14, i64 216, !14, i64 224, !31, i64 232, !32, i64 240, !33, i64 248, !13, i64 256, !26, i64 264, !14, i64 272, !14, i64 280, !20, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !14, i64 360, !26, i64 368, !14, i64 376, !8, i64 384, !14, i64 392, !14, i64 400, !9, i64 408, !34, i64 410}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!32 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!33 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!34 = !{!"short", !9, i64 0}
!35 = !{!20, !20, i64 0}
!36 = !{!29, !14, i64 304}
!37 = distinct !{null}
!38 = !{!39, !40, i64 16}
!39 = !{!"", !19, i64 0, !40, i64 16, !8, i64 24, !26, i64 32, !20, i64 40, !20, i64 48, !20, i64 56}
!40 = !{!"p1 _ZTS9tok_state", !14, i64 0}
!41 = !{!42, !26, i64 2336}
!42 = !{!"tok_state", !30, i64 0, !30, i64 8, !30, i64 16, !8, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !30, i64 56, !8, i64 64, !43, i64 72, !8, i64 80, !8, i64 84, !9, i64 88, !8, i64 488, !8, i64 492, !30, i64 496, !30, i64 504, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !9, i64 532, !9, i64 732, !9, i64 1532, !26, i64 2336, !26, i64 2344, !9, i64 2352, !8, i64 2752, !8, i64 2756, !30, i64 2760, !8, i64 2768, !30, i64 2776, !30, i64 2784, !26, i64 2792, !26, i64 2800, !26, i64 2808, !30, i64 2816, !30, i64 2824, !30, i64 2832, !8, i64 2840, !8, i64 2844, !14, i64 2848, !8, i64 2856, !9, i64 2864, !8, i64 18464, !8, i64 18468, !8, i64 18472, !8, i64 18476}
!43 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!44 = !{!42, !8, i64 18468}
!45 = !{!39, !8, i64 24}
!46 = !{!39, !26, i64 32}
!47 = !{!29, !14, i64 320}
!48 = !{!42, !8, i64 64}
!49 = !{!42, !8, i64 512}
!50 = !{!42, !30, i64 16}
!51 = !{!42, !30, i64 0}
!52 = !{!53, !30, i64 24}
!53 = !{!"token", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !30, i64 24, !30, i64 32, !26, i64 40}
!54 = !{!30, !30, i64 0}
!55 = !{!42, !8, i64 18476}
!56 = !{!39, !20, i64 40}
!57 = !{!39, !20, i64 56}
!58 = !{!42, !30, i64 2776}
!59 = !{!39, !20, i64 48}
!60 = !{!42, !30, i64 56}
end_hunk_0
