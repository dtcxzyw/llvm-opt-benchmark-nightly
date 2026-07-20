inline.NumInlined: 47
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Py_GetForceASCII:bb.a

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_force_ascii() unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 25 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i32], align 4                ; 5 uses
  %i.d = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #17 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.critedge, label %sub_0

sub_0:                                            ; preds = %bb.a
  %i.f = load i8, ptr %i.d, align 1
  %.not37 = icmp eq i8 %i.f, 67
  br i1 %.not37, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(6) @.str.7) #18
  %.not26 = icmp eq i32 %i.j, 0
  br i1 %.not26, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.tail.thread, %.tail
  %i.k = tail call ptr @nl_langinfo(i32 noundef 14) #17 ; 3 uses
  %.not27 = icmp eq ptr %i.k, null
  br i1 %.not27, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.k, align 1, !tbaa !187
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @_Py_normalize_encoding(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, i64 noundef 20, i32 noundef 1) #17
  %.not28 = icmp eq i32 %i.n, 0
  br i1 %.not28, label %.critedge, label %.preheader34.preheader

.preheader34.preheader:                           ; preds = %bb.d
  %i.o = load i32, ptr %i.a, align 16
  %i.p = xor i32 %i.o, 1768125281
  %i.q = getelementptr i8, ptr %i.a, i64 4
  %i.r = load i16, ptr %i.q, align 4
  %i.s = zext i16 %i.r to i32
  %i.t = xor i32 %i.s, 105
  %i.u = or i32 %i.p, %i.t
  %i.v = icmp ne i32 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  %lhsv = load i32, ptr %i.a, align 16
  %.not42 = icmp eq i32 %lhsv, 3552310
  %or.cond = select i1 %i.x, i1 true, i1 %.not42
  br i1 %or.cond, label %.preheader.preheader, label %.preheader34.2

.preheader34.2:                                   ; preds = %.preheader34.preheader
  %i.y = load i64, ptr %i.a, align 16
  %i.z = xor i64 %i.y, 3329136900743327329
  %i.aa = getelementptr i8, ptr %i.a, i64 7
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = xor i64 %i.ab, 15822217965155374
  %i.ad = or i64 %i.z, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.preheader.preheader, label %.preheader34.3

.preheader34.3:                                   ; preds = %.preheader34.2
  %i.ah = load i64, ptr %i.a, align 16
  %i.ai = xor i64 %i.ah, 3329136900743327329
  %i.aj = getelementptr i8, ptr %i.a, i64 7
  %i.ak = load i64, ptr %i.aj, align 1
  %i.al = xor i64 %i.ak, 15261467034989614
  %i.am = or i64 %i.ai, %i.al
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.preheader.preheader, label %.preheader34.4

.preheader34.4:                                   ; preds = %.preheader34.3
  %i.aq = load i64, ptr %i.a, align 16
  %i.ar = xor i64 %i.aq, 6859959008601796193
  %i.as = getelementptr i8, ptr %i.a, i64 7
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 15822217965155423
  %i.av = or i64 %i.ar, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.preheader.preheader, label %.preheader34.5

.preheader34.5:                                   ; preds = %.preheader34.4
  %i.az = load i32, ptr %i.a, align 16
  %i.ba = xor i32 %i.az, 909340771
  %i.bb = getelementptr i8, ptr %i.a, i64 4
  %i.bc = load i16, ptr %i.bb, align 4
  %i.bd = zext i16 %i.bc to i32
  %i.be = xor i32 %i.bd, 55
  %i.bf = or i32 %i.ba, %i.be
  %i.bg = icmp ne i32 %i.bf, 0
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  %lhsv47 = load i64, ptr %i.a, align 16
  %.not49 = icmp eq i64 %lhsv47, 29670748413064035
  %or.cond59 = select i1 %i.bi, i1 true, i1 %.not49
  br i1 %or.cond59, label %.preheader.preheader, label %.preheader34.7

.preheader34.7:                                   ; preds = %.preheader34.5
  %i.bj = load i32, ptr %i.a, align 16
  %i.bk = xor i32 %i.bj, 862806633
  %i.bl = getelementptr i8, ptr %i.a, i64 3
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = xor i32 %i.bm, 3618355
  %i.bo = or i32 %i.bk, %i.bn
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.preheader.preheader, label %.preheader34.8

.preheader34.8:                                   ; preds = %.preheader34.7
  %i.bs = load i64, ptr %i.a, align 16
  %i.bt = xor i64 %i.bs, 8457538223104553833
  %i.bu = getelementptr i8, ptr %i.a, i64 8
  %i.bv = load i16, ptr %i.bu, align 8
  %i.bw = zext i16 %i.bv to i64
  %i.bx = xor i64 %i.bw, 115
  %i.by = or i64 %i.bt, %i.bx
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %.preheader.preheader, label %.preheader34.9

.preheader34.9:                                   ; preds = %.preheader34.8
  %i.cc = load i128, ptr %i.a, align 16
  %i.cd = xor i128 %i.cc, 65429292723469003761038880354627187561
  %i.ce = getelementptr i8, ptr %i.a, i64 16
  %i.cf = load i8, ptr %i.ce, align 16
  %i.cg = zext i8 %i.cf to i128
  %i.ch = or i128 %i.cd, %i.cg
  %i.ci = icmp ne i128 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.preheader.preheader, label %.preheader34.10

.preheader34.10:                                  ; preds = %.preheader34.9
  %i.cl = load i64, ptr %i.a, align 16
  %i.cm = xor i64 %i.cl, 3917975997733892969
  %i.cn = getelementptr i8, ptr %i.a, i64 8
  %i.co = load i8, ptr %i.cn, align 8
  %i.cp = zext i8 %i.co to i64
  %i.cq = or i64 %i.cm, %i.cp
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.preheader.preheader, label %.preheader34.11

.preheader34.11:                                  ; preds = %.preheader34.10
  %i.cu = load i16, ptr %i.a, align 16
  %i.cv = xor i16 %i.cu, 29557
  %i.cw = getelementptr i8, ptr %i.a, i64 2
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = zext i8 %i.cx to i16
  %i.cz = or i16 %i.cv, %i.cy
  %i.da = icmp ne i16 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.preheader.preheader, label %.preheader34.12

.preheader34.12:                                  ; preds = %.preheader34.11
  %i.dd = load i64, ptr %i.a, align 16
  %i.de = xor i64 %i.dd, 7595711593743086453
  %i.df = getelementptr i8, ptr %i.a, i64 8
  %i.dg = load i8, ptr %i.df, align 8
  %i.dh = zext i8 %i.dg to i64
  %i.di = or i64 %i.de, %i.dh
  %i.dj = icmp ne i64 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader34.12, %.preheader34.11, %.preheader34.10, %.preheader34.9, %.preheader34.8, %.preheader34.7, %.preheader34.5, %.preheader34.4, %.preheader34.3, %.preheader34.2, %.preheader34.preheader
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_Py_mbstowcs.exit.thread
  %.02036 = phi i32 [ %i.ds, %_Py_mbstowcs.exit.thread ], [ 128, %.preheader.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.dm = trunc nuw i32 %.02036 to i8
  store i8 %i.dm, ptr %i.b, align 1, !tbaa !187
  %i.dn = call i64 @mbstowcs(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %i.do = add i64 %i.dn, -1
  %i.dp = icmp ult i64 %i.do, -2
  br i1 %i.dp, label %.lr.ph.i.preheader, label %_Py_mbstowcs.exit

.lr.ph.i.preheader:                               ; preds = %.preheader
  %i.dq = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.dr = and i32 %i.dq, -2048
  %0 = icmp ne i32 %i.dr, 55296
  %1 = icmp slt i32 %i.dq, 1114112
  %narrow.i.i = and i1 %1, %0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %narrow.i.i, label %.critedge, label %_Py_mbstowcs.exit.thread

_Py_mbstowcs.exit:                                ; preds = %.preheader
  %.not31 = icmp eq i64 %i.dn, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br i1 %.not31, label %_Py_mbstowcs.exit.thread, label %.critedge

_Py_mbstowcs.exit.thread:                         ; preds = %.lr.ph.i.preheader, %_Py_mbstowcs.exit
  %i.ds = add nuw nsw i32 %.02036, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ds, 256
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !189

.critedge:                                        ; preds = %_Py_mbstowcs.exit, %_Py_mbstowcs.exit.thread, %.lr.ph.i.preheader, %.preheader34.12, %bb.a, %bb.c, %bb.b, %bb.d, %.tail.thread
  %.3 = phi i32 [ 1, %bb.b ], [ 0, %.tail.thread ], [ 1, %bb.c ], [ 0, %.preheader34.12 ], [ 1, %bb.a ], [ 1, %bb.d ], [ 1, %.lr.ph.i.preheader ], [ 1, %_Py_mbstowcs.exit ], [ 0, %_Py_mbstowcs.exit.thread ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Py_ResetForceASCII() local_unnamed_addr #4 {
bb.a:
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10168), align 8, !tbaa !188
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_Py_DecodeLocaleEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @decode_current_locale(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5)
  br label %decode_ascii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10644), align 4, !tbaa !11
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.e = tail call i32 @_Py_DecodeUTF8Ex(ptr noundef nonnull %0, i64 noundef %i.d, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5) #17
  br label %decode_ascii.exit

bb.e:                                             ; preds = %bb.c
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10168), align 8, !tbaa !188 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call fastcc i32 @check_force_ascii() ; 2 uses
  store i32 %i.h, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10168), align 8, !tbaa !188
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = phi i32 [ %i.h, %bb.f ], [ %i.f, %bb.e ]
  %.not23 = icmp eq i32 %i.i, 0
  br i1 %.not23, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.k = add i64 %i.j, 1                          ; 2 uses
  switch i32 %5, label %decode_ascii.exit [
    i32 1, label %.sink.split.i.i
    i32 2, label %bb.i
  ]

.sink.split.i.i:                                  ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i, %bb.h
  %.not45.i = phi i1 [ true, %.sink.split.i.i ], [ false, %bb.h ]
  %i.l = icmp ugt i64 %i.k, 2305843009213693951
  br i1 %i.l, label %decode_ascii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = tail call ptr @PyMem_RawMalloc(i64 noundef %i.m) #17 ; 7 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %decode_ascii.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.o = load i8, ptr %0, align 1, !tbaa !187     ; 3 uses
  %.not4353.i = icmp eq i8 %i.o, 0
  br i1 %.not4353.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  br i1 %.not45.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.k
  %i.p = phi i8 [ %i.t, %bb.k ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.03155.us.i = phi ptr [ %i.s, %bb.k ], [ %0, %.lr.ph.i ] ; 2 uses
  %.03254.us.i = phi ptr [ %.133.us.i, %bb.k ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.k, label %.split.us.i

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.r = zext nneg i8 %i.p to i32
  %.133.us.i = getelementptr i8, ptr %.03254.us.i, i64 4 ; 2 uses
  store i32 %i.r, ptr %.03254.us.i, align 4, !tbaa !7
  %i.s = getelementptr i8, ptr %.03155.us.i, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !187   ; 2 uses
  %.not43.us.i = icmp eq i8 %i.t, 0
  br i1 %.not43.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !191

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %i.u = phi i8 [ %i.z, %.lr.ph.split.i ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.03155.i = phi ptr [ %i.y, %.lr.ph.split.i ], [ %0, %.lr.ph.i ]
  %.03254.i = phi ptr [ %.133.i, %.lr.ph.split.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = or disjoint i32 %i.v, 56320
  %i.x = icmp slt i8 %i.u, 0
  %spec.select.i = select i1 %i.x, i32 %i.w, i32 %i.v
  %.133.i = getelementptr i8, ptr %.03254.i, i64 4 ; 2 uses
  store i32 %spec.select.i, ptr %.03254.i, align 4, !tbaa !7
  %i.y = getelementptr i8, ptr %.03155.i, i64 1   ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !187   ; 2 uses
  %.not43.i = icmp eq i8 %i.z, 0
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !191

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.n) #17
  %.not46.i = icmp eq ptr %2, null
  br i1 %.not46.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split.us.i
  %i.aa = ptrtoint ptr %.03155.us.i to i64
  %i.ab = ptrtoint ptr %0 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %2, align 8, !tbaa !192
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split.us.i
  %.not47.i = icmp eq ptr %3, null
  br i1 %.not47.i, label %decode_ascii.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr @.str.21, ptr %3, align 8, !tbaa !193
  br label %decode_ascii.exit

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %bb.k, %.preheader.i
  %.032.lcssa.i = phi ptr [ %i.n, %.preheader.i ], [ %.133.us.i, %bb.k ], [ %.133.i, %.lr.ph.split.i ] ; 2 uses
  store i32 0, ptr %.032.lcssa.i, align 4, !tbaa !7
  %.not44.i = icmp eq ptr %2, null
  br i1 %.not44.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ad = ptrtoint ptr %.032.lcssa.i to i64
  %i.ae = ptrtoint ptr %i.n to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  store i64 %i.ag, ptr %2, align 8, !tbaa !192
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  store ptr %i.n, ptr %1, align 8, !tbaa !194
  br label %decode_ascii.exit

bb.q:                                             ; preds = %bb.g
  %i.ah = tail call fastcc i32 @decode_current_locale(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5)
  br label %decode_ascii.exit

decode_ascii.exit:                                ; preds = %bb.p, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.d, %bb.q, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.e, %bb.d ], [ %i.ah, %bb.q ], [ -1, %bb.i ], [ -2, %bb.n ], [ -1, %bb.j ], [ 0, %bb.p ], [ -2, %bb.m ], [ -3, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 1) i32 @decode_current_locale(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.__mbstate_t, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  switch i32 %4, label %get_surrogateescape.exit [
    i32 1, label %.sink.split.i
    i32 2, label %bb.b
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split.i
  %.not72 = phi i1 [ true, %.sink.split.i ], [ false, %bb.a ]
  %i.a = tail call i64 @mbstowcs(ptr noundef null, ptr noundef %0, i64 noundef 0) #17 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %i.a, 2305843009213693950
  br i1 %i.b, label %get_surrogateescape.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = tail call ptr @PyMem_RawMalloc(i64 noundef %i.d) #17 ; 5 uses
  %.not68 = icmp eq ptr %i.e, null
  br i1 %.not68, label %get_surrogateescape.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i64 @mbstowcs(ptr noundef nonnull %i.e, ptr noundef %0, i64 noundef range(i64 0, 2305843009213693952) %i.c) #17 ; 4 uses
  %i.g = add i64 %i.f, -1
  %i.h = icmp ult i64 %i.g, -2
  br i1 %i.h, label %.lr.ph.i, label %_Py_mbstowcs.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.i = add nuw i64 %.01823.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.f
  br i1 %exitcond.not.i, label %_Py_mbstowcs.exit, label %.lr.ph.i, !llvm.loop !195

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.01823.i = phi i64 [ %i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.e, i64 %.01823.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %i.l = and i32 %i.k, -2048
  %6 = icmp ne i32 %i.l, 55296
  %7 = icmp slt i32 %i.k, 1114112
  %narrow.i.i = and i1 %7, %6
  br i1 %narrow.i.i, label %bb.f, label %_Py_mbstowcs.exit.thread

_Py_mbstowcs.exit:                                ; preds = %bb.f, %bb.e
  %.not69 = icmp eq i64 %i.f, -1
  br i1 %.not69, label %_Py_mbstowcs.exit.thread, label %bb.g

bb.g:                                             ; preds = %_Py_mbstowcs.exit
  store ptr %i.e, ptr %1, align 8, !tbaa !194
  %.not76 = icmp eq ptr %2, null
  br i1 %.not76, label %get_surrogateescape.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.f, ptr %2, align 8, !tbaa !192
  br label %get_surrogateescape.exit

_Py_mbstowcs.exit.thread:                         ; preds = %.lr.ph.i, %_Py_mbstowcs.exit
  tail call void @PyMem_RawFree(ptr noundef nonnull %i.e) #17
  br label %bb.i

bb.i:                                             ; preds = %_Py_mbstowcs.exit.thread, %bb.b
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %i.n = add i64 %i.m, 1                          ; 5 uses
  %i.o = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.o, label %get_surrogateescape.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call ptr @PyMem_RawMalloc(i64 noundef %i.p) #17 ; 7 uses
  %.not70 = icmp eq ptr %i.q, null
  br i1 %.not70, label %get_surrogateescape.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %5, align 8
  %.not71104 = icmp eq i64 %i.n, 0
  br i1 %.not71104, label %.thread91, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  br i1 %.not72, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %.053107.us = phi ptr [ %.1.us, %bb.m ], [ %i.q, %.lr.ph ] ; 4 uses
  %.054106.us = phi ptr [ %i.w, %bb.m ], [ %0, %.lr.ph ] ; 3 uses
  %.056105.us = phi i64 [ %i.x, %bb.m ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.r = call i64 @mbrtowc(ptr noundef %.053107.us, ptr noundef %.054106.us, i64 noundef range(i64 1, 0) %.056105.us, ptr noundef nonnull %5) #17 ; 4 uses
  %i.s = add i64 %i.r, -1
  %or.cond3.i.us = icmp ult i64 %i.s, -3
  br i1 %or.cond3.i.us, label %bb.l, label %_Py_mbrtowc.exit.us

_Py_mbrtowc.exit.us:                              ; preds = %.lr.ph.split.us
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %.thread91, label %.split.us

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.u = load i32, ptr %.053107.us, align 4, !tbaa !7 ; 2 uses
  %i.v = and i32 %i.u, -2048
  %8 = icmp ne i32 %i.v, 55296
  %9 = icmp slt i32 %i.u, 1114112
  %narrow.i.i78.us = and i1 %9, %8
  br i1 %narrow.i.i78.us, label %bb.m, label %.split.us

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %.054106.us, i64 %i.r
  %i.x = sub i64 %.056105.us, %i.r                ; 2 uses
  %.1.us = getelementptr i8, ptr %.053107.us, i64 4 ; 2 uses
  %.not71.us = icmp eq i64 %i.x, 0
  br i1 %.not71.us, label %.thread91, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %.053107 = phi ptr [ %.1, %bb.p ], [ %i.q, %.lr.ph ] ; 5 uses
  %.054106 = phi ptr [ %.155, %bb.p ], [ %0, %.lr.ph ] ; 4 uses
  %.056105 = phi i64 [ %.157, %bb.p ], [ %i.n, %.lr.ph ] ; 3 uses
  %i.y = call i64 @mbrtowc(ptr noundef %.053107, ptr noundef %.054106, i64 noundef range(i64 1, 0) %.056105, ptr noundef nonnull %5) #17 ; 4 uses
  %i.z = add i64 %i.y, -1
  %or.cond3.i = icmp ult i64 %i.z, -3
  br i1 %or.cond3.i, label %bb.n, label %_Py_mbrtowc.exit

bb.n:                                             ; preds = %.lr.ph.split
  %i.aa = load i32, ptr %.053107, align 4, !tbaa !7 ; 2 uses
  %i.ab = and i32 %i.aa, -2048
  %10 = icmp ne i32 %i.ab, 55296
  %11 = icmp slt i32 %i.aa, 1114112
  %narrow.i.i78 = and i1 %11, %10
  br i1 %narrow.i.i78, label %bb.o, label %_Py_mbrtowc.exit.thread

_Py_mbrtowc.exit:                                 ; preds = %.lr.ph.split
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %.thread91, label %_Py_mbrtowc.exit.thread

_Py_mbrtowc.exit.thread:                          ; preds = %bb.n, %_Py_mbrtowc.exit
  %i.ad = getelementptr i8, ptr %.054106, i64 1
  %i.ae = load i8, ptr %.054106, align 1, !tbaa !187
  %i.af = zext i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.af, 56320
  store i32 %i.ag, ptr %.053107, align 4, !tbaa !7
  %i.ah = add i64 %.056105, -1
  store i64 0, ptr %5, align 8
  br label %bb.p, !llvm.loop !196

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr i8, ptr %.054106, i64 %i.y
  %i.aj = sub i64 %.056105, %i.y
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_Py_mbrtowc.exit.thread
  %.157 = phi i64 [ %i.aj, %bb.o ], [ %i.ah, %_Py_mbrtowc.exit.thread ] ; 2 uses
  %.155 = phi ptr [ %i.ai, %bb.o ], [ %i.ad, %_Py_mbrtowc.exit.thread ]
  %.1 = getelementptr i8, ptr %.053107, i64 4     ; 2 uses
  %.not71 = icmp eq i64 %.157, 0
  br i1 %.not71, label %.thread91, label %.lr.ph.split

.thread91:                                        ; preds = %bb.p, %_Py_mbrtowc.exit, %bb.m, %_Py_mbrtowc.exit.us, %bb.k
  %.053.lcssa = phi ptr [ %i.q, %bb.k ], [ %.1.us, %bb.m ], [ %.053107.us, %_Py_mbrtowc.exit.us ], [ %.1, %bb.p ], [ %.053107, %_Py_mbrtowc.exit ]
  %.not75 = icmp eq ptr %2, null
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread91
  %i.ak = ptrtoint ptr %.053.lcssa to i64
  %i.al = ptrtoint ptr %i.q to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  store i64 %i.an, ptr %2, align 8, !tbaa !192
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread91
  store ptr %i.q, ptr %1, align 8, !tbaa !194
  br label %get_surrogateescape.exit

.split.us:                                        ; preds = %bb.l, %_Py_mbrtowc.exit.us
  call void @PyMem_RawFree(ptr noundef nonnull %i.q) #17
  %.not73 = icmp eq ptr %2, null
  br i1 %.not73, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.split.us
  %i.ao = ptrtoint ptr %.054106.us to i64
  %i.ap = ptrtoint ptr %0 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %2, align 8, !tbaa !192
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.us
  %.not74 = icmp eq ptr %3, null
  br i1 %.not74, label %get_surrogateescape.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr @.str.21, ptr %3, align 8, !tbaa !193
  br label %get_surrogateescape.exit

get_surrogateescape.exit:                         ; preds = %bb.a, %bb.t, %bb.u, %bb.j, %bb.i, %bb.g, %bb.h, %bb.d, %bb.c, %bb.r
  %.0 = phi i32 [ -1, %bb.c ], [ -2, %bb.t ], [ -1, %bb.d ], [ 0, %bb.g ], [ -1, %bb.j ], [ 0, %bb.r ], [ 0, %bb.h ], [ -1, %bb.i ], [ -2, %bb.u ], [ -3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.0
}

declare i32 @_Py_DecodeUTF8Ex(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @Py_DecodeLocale(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call i32 @_Py_DecodeLocaleEx(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 2) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = sext i32 %i.b to i64
  store i64 %i.c, ptr %1, align 8, !tbaa !192
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !194
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.d, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Py_EncodeLocale(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 2) ; 2 uses
  %i.c = icmp ne i32 %i.b, -2
  %i.d = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %encode_locale.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8, !tbaa !192
  br label %encode_locale.exit

encode_locale.exit:                               ; preds = %bb.a, %bb.b
  %.not.i = icmp eq i32 %i.b, 0
  %i.e = load ptr, ptr %i.a, align 8
  %.0.i = select i1 %.not.i, ptr %i.e, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_EncodeLocaleRaw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 2) ; 2 uses
  %i.c = icmp ne i32 %i.b, -2
  %i.d = icmp ne ptr %1, null
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %bb.b, label %encode_locale.exit

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8, !tbaa !192
  br label %encode_locale.exit

encode_locale.exit:                               ; preds = %bb.a, %bb.b
  %.not.i = icmp eq i32 %i.b, 0
  %i.e = load ptr, ptr %i.a, align 8
  %.0.i = select i1 %.not.i, ptr %i.e, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_Py_EncodeLocaleEx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, i32 noundef %4, i32 noundef %5)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @encode_current_locale(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %6)
  br label %encode_ascii.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10644), align 4, !tbaa !11
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @_Py_EncodeUTF8Ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %6) #17
  br label %encode_ascii.exit

bb.e:                                             ; preds = %bb.c
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10168), align 8, !tbaa !188 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call fastcc i32 @check_force_ascii() ; 2 uses
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10168), align 8, !tbaa !188
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = phi i32 [ %i.g, %bb.f ], [ %i.e, %bb.e ]
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %6, label %encode_ascii.exit [
    i32 1, label %.sink.split.i.i
    i32 2, label %bb.i
  ]

.sink.split.i.i:                                  ; preds = %bb.h
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i.i, %bb.h
  %i.i = phi i1 [ false, %.sink.split.i.i ], [ true, %bb.h ]
  %i.j = tail call i64 @wcslen(ptr noundef readonly %0) #18 ; 4 uses
  %.not.i = trunc nuw i32 %4 to i1                ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.l = tail call ptr @PyMem_RawMalloc(i64 noundef %i.k) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.m = tail call ptr @PyMem_Malloc(i64 noundef %i.k) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.034.i = phi ptr [ %i.l, %bb.j ], [ %i.m, %bb.k ] ; 7 uses
  %i.n = icmp eq ptr %.034.i, null
  br i1 %i.n, label %encode_ascii.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %.not53.i = icmp eq i64 %i.j, 0
  br i1 %.not53.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  br i1 %i.i, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.m
  %.03349.us.i = phi i64 [ %i.r, %bb.m ], [ 0, %.lr.ph.i ] ; 3 uses
  %.03548.us.i = phi ptr [ %.1.us.i, %bb.m ], [ %.034.i, %.lr.ph.i ] ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %0, i64 %.03349.us.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 2 uses
  %i.q = icmp slt i32 %i.p, 128
  br i1 %i.q, label %bb.m, label %.split.us.i

bb.m:                                             ; preds = %.lr.ph.split.us.i
  %.1.us.i = getelementptr i8, ptr %.03548.us.i, i64 1 ; 2 uses
  %storemerge.us.i = trunc i32 %i.p to i8
  store i8 %storemerge.us.i, ptr %.03548.us.i, align 1, !tbaa !187
  %i.r = add nuw i64 %.03349.us.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.j
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !197

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.03349.i = phi i64 [ %i.x, %bb.t ], [ 0, %.lr.ph.i ] ; 3 uses
  %.03548.i = phi ptr [ %.1.i, %bb.t ], [ %.034.i, %.lr.ph.i ] ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %0, i64 %.03349.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7    ; 3 uses
  %i.u = icmp slt i32 %i.t, 128
  %i.v = and i32 %i.t, 2147483520
  %i.w = icmp eq i32 %i.v, 56448
  %or.cond.i = or i1 %i.u, %i.w
  br i1 %or.cond.i, label %bb.t, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i, %.lr.ph.split.i
  %.us-phi.i = phi i64 [ %.03349.i, %.lr.ph.split.i ], [ %.03349.us.i, %.lr.ph.split.us.i ]
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split.us.i
  tail call void @PyMem_RawFree(ptr noundef nonnull %.034.i) #17
  br label %bb.p

bb.o:                                             ; preds = %.split.us.i
  tail call void @PyMem_Free(ptr noundef nonnull %.034.i) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not40.i = icmp eq ptr %2, null
  br i1 %.not40.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.us-phi.i, ptr %2, align 8, !tbaa !192
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not41.i = icmp eq ptr %3, null
  br i1 %.not41.i, label %encode_ascii.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr @.str.22, ptr %3, align 8, !tbaa !193
  br label %encode_ascii.exit

bb.t:                                             ; preds = %.lr.ph.split.i
  %.1.i = getelementptr i8, ptr %.03548.i, i64 1  ; 2 uses
  %storemerge.i = trunc i32 %i.t to i8
  store i8 %storemerge.i, ptr %.03548.i, align 1, !tbaa !187
  %i.x = add nuw i64 %.03349.i, 1                 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %i.x, %i.j
  br i1 %exitcond58.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !197

._crit_edge.i:                                    ; preds = %bb.m, %bb.t, %.preheader.i
  %.035.lcssa.i = phi ptr [ %.034.i, %.preheader.i ], [ %.1.i, %bb.t ], [ %.1.us.i, %bb.m ]
  store i8 0, ptr %.035.lcssa.i, align 1, !tbaa !187
  store ptr %.034.i, ptr %1, align 8, !tbaa !193
  br label %encode_ascii.exit

bb.u:                                             ; preds = %bb.g
  %i.y = tail call fastcc i32 @encode_current_locale(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %6)
  br label %encode_ascii.exit

encode_ascii.exit:                                ; preds = %._crit_edge.i, %bb.s, %bb.r, %bb.l, %bb.h, %bb.d, %bb.u, %bb.b
  %.1 = phi i32 [ %i.a, %bb.b ], [ %i.d, %bb.d ], [ %i.y, %bb.u ], [ 0, %._crit_edge.i ], [ -2, %bb.r ], [ -1, %bb.l ], [ -2, %bb.s ], [ -3, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_Py_GetLocaleEncoding() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call ptr @nl_langinfo(i32 noundef 14) #17 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !187
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @_PyMem_RawWcsdup(ptr noundef nonnull @.str) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.f = call fastcc i32 @decode_current_locale(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 2)
  %i.g = icmp slt i32 %i.f, 0
  %i.h = load ptr, ptr %i.a, align 8
  %.0 = select i1 %i.g, ptr null, ptr %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.e, %bb.c ], [ %.0, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare ptr @nl_langinfo(i32 noundef) local_unnamed_addr #3

declare ptr @_PyMem_RawWcsdup(ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

declare ptr @PyUnicode_FromWideChar(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @_Py_fstat_noraise(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @fstat64(i32 noundef %0, ptr noundef %1) #17
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_fstat(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyEval_SaveThread() #17
  %i.b = tail call noundef i32 @fstat64(i32 noundef %0, ptr noundef %1) #17
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.d = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.c) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @PyErr_SetFromErrno(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_Py_wstat(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  %.not.i.i = icmp ne i32 %i.b, 0
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.d = icmp eq ptr %i.c, null
  %i.e = select i1 %.not.i.i, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.f, align 4, !tbaa !7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = call i32 @stat64(ptr noundef nonnull %i.c, ptr noundef %1) #17
  call void @PyMem_RawFree(ptr noundef nonnull %i.c) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.g, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_Py_stat(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call ptr @PyUnicode_EncodeFSDefault(ptr noundef %0) #17 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @PyBytes_AsStringAndSize(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null) #17
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i8 = icmp slt i32 %i.f, 0
  br i1 %.not.i8, label %Py_DECREF.exit9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !187
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %Py_DECREF.exit9.sink.split, label %Py_DECREF.exit9

bb.e:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.j = call i32 @stat64(ptr noundef %i.i, ptr noundef %1) #17 ; 3 uses
  %i.k = load i32, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp slt i32 %i.k, 0
  br i1 %.not.i, label %Py_DECREF.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.b, align 8, !tbaa !187
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %Py_DECREF.exit9.sink.split, label %Py_DECREF.exit9

Py_DECREF.exit9.sink.split:                       ; preds = %bb.f, %bb.d
  %.0.ph = phi i32 [ -2, %bb.d ], [ %i.j, %bb.f ]
  call void @_Py_Dealloc(ptr noundef nonnull %i.b) #17
  br label %Py_DECREF.exit9

Py_DECREF.exit9:                                  ; preds = %Py_DECREF.exit9.sink.split, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ %i.j, %bb.f ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.d ], [ %i.j, %bb.e ], [ %.0.ph, %Py_DECREF.exit9.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare ptr @PyUnicode_EncodeFSDefault(ptr noundef) local_unnamed_addr #2

declare i32 @PyBytes_AsStringAndSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @_Py_get_inheritable(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.d = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.c) #17 ; 0 uses
  br label %get_inheritable.exit

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.a, 1
  %i.f = xor i32 %i.e, 1
  br label %get_inheritable.exit

get_inheritable.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.f, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_set_inheritable(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @set_inheritable(i32 noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @set_inheritable(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  %i.b = icmp ne i32 %1, 0                        ; 3 uses
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %3 monotonic, align 4
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %get_inheritable.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = trunc nuw i32 %2 to i1
  br i1 %.not.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.h = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.g) #17 ; 0 uses
  br label %.critedge

get_inheritable.exit:                             ; preds = %bb.c
  store atomic i32 %i.e, ptr %3 monotonic, align 4
  br label %bb.f

bb.f:                                             ; preds = %get_inheritable.exit, %bb.b
  %i.i = load atomic i32, ptr %3 monotonic, align 4
  %.not37 = icmp eq i32 %i.i, 0
  br i1 %.not37, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.a
  %.not38 = trunc nuw i32 %2 to i1                ; 2 uses
  br i1 %.not38, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.j = load atomic i32, ptr @set_inheritable.ioctl_works monotonic, align 4
  %.not39 = icmp eq i32 %i.j, 0
  br i1 %.not39, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %. = select i1 %i.b, i64 21584, i64 21585
  %i.k = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef %., ptr noundef null) #17
  %.not40 = icmp eq i32 %i.k, 0
  br i1 %.not40, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.l = load atomic i32, ptr @set_inheritable.ioctl_works monotonic, align 4
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  store atomic i32 1, ptr @set_inheritable.ioctl_works monotonic, align 4
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.n = tail call ptr @__errno_location() #19
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  switch i32 %i.o, label %bb.m [
    i32 9, label %bb.o
    i32 25, label %bb.n
    i32 13, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.p = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.q = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.p) #17 ; 0 uses
  br label %.critedge

bb.n:                                             ; preds = %bb.l, %bb.l
  store atomic i32 0, ptr @set_inheritable.ioctl_works monotonic, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.h
  %i.r = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1) #17 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.p, label %bb.q

.thread:                                          ; preds = %bb.g
  %i.t = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1) #17 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.critedge, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.v = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.w = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.v) #17 ; 0 uses
  br label %.critedge

bb.q:                                             ; preds = %.thread, %bb.o
  %i.x = phi i32 [ %i.t, %.thread ], [ %i.r, %bb.o ] ; 3 uses
  %i.y = and i32 %i.x, 2147483646
  %i.z = or i32 %i.x, 1
  %.031 = select i1 %i.b, i32 %i.y, i32 %i.z      ; 2 uses
  %i.aa = icmp eq i32 %.031, %i.x
  br i1 %i.aa, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 2, i32 noundef %.031) #17 ; 2 uses
  %4 = icmp slt i32 %i.ab, 0
  %brmerge.not = and i1 %4, %.not38
  %.lobit = ashr i32 %i.ab, 31
  br i1 %brmerge.not, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.ac = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.ad = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ac) #17 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.d, %bb.e, %bb.r, %bb.s, %bb.q, %bb.p, %bb.j, %bb.k, %bb.f, %bb.m
  %.1 = phi i32 [ 0, %bb.j ], [ -1, %bb.e ], [ 0, %bb.q ], [ -1, %bb.s ], [ -1, %bb.m ], [ 0, %bb.f ], [ %.lobit, %bb.r ], [ -1, %.thread ], [ 0, %bb.k ], [ -1, %bb.p ], [ -1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_Py_set_inheritable_async_safe(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = icmp ne i32 %1, 0                        ; 2 uses
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i32, ptr %2 monotonic, align 4
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %set_inheritable.exit, label %get_inheritable.exit.i

get_inheritable.exit.i:                           ; preds = %bb.c
  store atomic i32 %i.e, ptr %2 monotonic, align 4
  br label %bb.d

bb.d:                                             ; preds = %get_inheritable.exit.i, %bb.b
  %i.g = load atomic i32, ptr %2 monotonic, align 4
  %.not37.i = icmp eq i32 %i.g, 0
  br i1 %.not37.i, label %bb.e, label %set_inheritable.exit

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1) #17 ; 4 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %set_inheritable.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = and i32 %i.h, 2147483646
  %i.k = or i32 %i.h, 1
  %.031.i = select i1 %i.b, i32 %i.j, i32 %i.k    ; 2 uses
  %i.l = icmp eq i32 %.031.i, %i.h
  br i1 %i.l, label %set_inheritable.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 2, i32 noundef %.031.i) #17
  %.lobit = ashr i32 %i.m, 31
  br label %set_inheritable.exit

set_inheritable.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ %.lobit, %bb.g ], [ -1, %bb.e ], [ 0, %bb.f ], [ 0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @_Py_open(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_Py_open_impl(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @_Py_open_impl(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = or i32 %1, 524288                        ; 3 uses
  %.not = trunc nuw i32 %2 to i1
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyUnicode_DecodeFSDefault(ptr noundef %0) #17 ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.b, ptr noundef nonnull @_Py_NoneStruct, i32 noundef %i.a) #17
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i44 = icmp slt i32 %i.f, 0
  br i1 %.not.i44, label %.critedge39, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !187
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %.critedge39

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #17
  br label %.critedge39

.preheader:                                       ; preds = %bb.c, %bb.h
  %i.i = tail call ptr @PyEval_SaveThread() #17
  %i.j = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef %i.a) #17 ; 3 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.i) #17
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %.split

bb.g:                                             ; preds = %.preheader
  %i.l = tail call ptr @__errno_location() #19
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @PyErr_CheckSignals() #17
  %.not36 = icmp eq i32 %i.o, 0
  br i1 %.not36, label %.preheader, label %.critedge, !llvm.loop !199

.critedge:                                        ; preds = %bb.h
  %i.p = load i32, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i42 = icmp slt i32 %i.p, 0
  br i1 %.not.i42, label %.critedge39, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.b, align 8, !tbaa !187
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %.critedge39

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #17
  br label %.critedge39

bb.k:                                             ; preds = %bb.g
  %i.s = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.t = tail call ptr @PyErr_SetFromErrnoWithFilenameObjects(ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef null) #17 ; 0 uses
  %i.u = load i32, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i40 = icmp slt i32 %i.u, 0
  br i1 %.not.i40, label %.critedge39, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.b, align 8, !tbaa !187
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.m, label %.critedge39

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #17
  br label %.critedge39

.split:                                           ; preds = %.preheader
  %i.x = load i32, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp slt i32 %i.x, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.n

bb.n:                                             ; preds = %.split
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %i.b, align 8, !tbaa !187
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.o, label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.b) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.split, %bb.n, %bb.o
  %i.aa = tail call fastcc i32 @set_inheritable(i32 noundef %i.j, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @_Py_open_cloexec_works)
  br label %set_inheritable.exit

bb.p:                                             ; preds = %bb.a
  %i.ab = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef %i.a) #17 ; 9 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.critedge39, label %.split31

.split31:                                         ; preds = %bb.p
  %i.ad = load atomic i32, ptr @_Py_open_cloexec_works monotonic, align 4
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split31
  %i.af = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.ab, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %set_inheritable.exit.thread, label %get_inheritable.exit.i

get_inheritable.exit.i:                           ; preds = %bb.q
  store atomic i32 %i.af, ptr @_Py_open_cloexec_works monotonic, align 4
  br label %bb.r

bb.r:                                             ; preds = %get_inheritable.exit.i, %.split31
  %i.ah = load atomic i32, ptr @_Py_open_cloexec_works monotonic, align 4
  %.not37.i = icmp eq i32 %i.ah, 0
  br i1 %.not37.i, label %bb.s, label %.critedge39

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.ab, i32 noundef 1) #17 ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %set_inheritable.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = or i32 %i.ai, 1                         ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.ai
  br i1 %i.al, label %.critedge39, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.am = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.ab, i32 noundef 2, i32 noundef %i.ak) #17
  %.lobit = ashr i32 %i.am, 31
  br label %set_inheritable.exit

set_inheritable.exit:                             ; preds = %bb.u, %Py_DECREF.exit
  %phi.call = phi i32 [ %i.aa, %Py_DECREF.exit ], [ %.lobit, %bb.u ]
  %.128 = phi i32 [ %i.j, %Py_DECREF.exit ], [ %i.ab, %bb.u ] ; 2 uses
  %i.an = icmp slt i32 %phi.call, 0
  br i1 %i.an, label %set_inheritable.exit.thread, label %.critedge39

set_inheritable.exit.thread:                      ; preds = %bb.q, %bb.s, %set_inheritable.exit
  %.12853 = phi i32 [ %.128, %set_inheritable.exit ], [ %i.ab, %bb.s ], [ %i.ab, %bb.q ]
  %i.ao = tail call i32 @close(i32 noundef %.12853) #17 ; 0 uses
  br label %.critedge39

.critedge39:                                      ; preds = %bb.t, %bb.r, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.critedge, %bb.f, %bb.e, %bb.d, %bb.b, %set_inheritable.exit, %bb.p, %set_inheritable.exit.thread
  %.1 = phi i32 [ -1, %set_inheritable.exit.thread ], [ -1, %bb.p ], [ %.128, %set_inheritable.exit ], [ -1, %bb.b ], [ -1, %bb.j ], [ -1, %bb.f ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %.critedge ], [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ], [ %i.ab, %bb.r ], [ %i.ab, %bb.t ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @_Py_open_noraise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_Py_open_impl(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_Py_wfopen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [10 x i8], align 1                ; 4 uses
  %i.c = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %0, ptr noundef %1, i32 noundef 0) #17
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = call i64 @wcstombs(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef 10) #17
  %i.f = icmp ugt i64 %i.e, 9
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.g, align 4, !tbaa !7
  br label %make_non_inheritable.exit.thread17

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  %.not.i.i = icmp ne i32 %i.h, 0
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.j = icmp eq ptr %i.i, null
  %i.k = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %i.k, label %make_non_inheritable.exit.thread17, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = call noalias ptr @fopen64(ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) ; 5 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.i) #17
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %make_non_inheritable.exit.thread17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @fileno(ptr noundef nonnull %i.l) #17 ; 2 uses
  %i.o = call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.n, i32 noundef 1) #17 ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %make_non_inheritable.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = or i32 %i.o, 1                           ; 2 uses
  %i.r = icmp eq i32 %i.q, %i.o
  br i1 %i.r, label %make_non_inheritable.exit.thread17, label %make_non_inheritable.exit

make_non_inheritable.exit:                        ; preds = %bb.g
  %i.s = call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.n, i32 noundef 2, i32 noundef %i.q) #17
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %make_non_inheritable.exit.thread, label %make_non_inheritable.exit.thread17

make_non_inheritable.exit.thread:                 ; preds = %bb.f, %make_non_inheritable.exit
  %i.u = call i32 @fclose(ptr noundef nonnull %i.l) ; 0 uses
  br label %make_non_inheritable.exit.thread17

make_non_inheritable.exit.thread17:               ; preds = %bb.g, %make_non_inheritable.exit, %bb.e, %bb.d, %make_non_inheritable.exit.thread, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ null, %make_non_inheritable.exit.thread ], [ %i.l, %make_non_inheritable.exit ], [ %i.l, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %make_non_inheritable.exit.thread17
  %.1 = phi ptr [ %.0, %make_non_inheritable.exit.thread17 ], [ null, %bb.a ]
  ret ptr %.1
}

declare i32 @PySys_Audit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @wcstombs(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Py_fopen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, ptr noundef %0, ptr noundef %1, i32 noundef 0) #17
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.d = call i32 @PyUnicode_FSConverter(ptr noundef %0, ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.f = getelementptr i8, ptr %i.e, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.g = call ptr @PyEval_SaveThread() #17
  %i.h = call noalias ptr @fopen64(ptr noundef %i.f, ptr noundef %1) ; 4 uses
  call void @PyEval_RestoreThread(ptr noundef %i.g) #17
  %i.i = icmp eq ptr %i.h, null                   ; 2 uses
  %i.j = tail call ptr @__errno_location() #19    ; 3 uses
  br i1 %i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %.not26.not = icmp eq i32 %i.k, 4
  br i1 %.not26.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.l = call i32 @PyErr_CheckSignals() #17
  %.not17 = icmp eq i32 %i.l, 0
  br i1 %.not17, label %bb.d, label %.critedge, !llvm.loop !200

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d
  %.115 = phi i1 [ true, %bb.e ], [ false, %bb.f ], [ true, %bb.d ]
  %i.m = load i32, ptr %i.j, align 4, !tbaa !7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !198  ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !187  ; 2 uses
  %.not.i = icmp slt i32 %i.o, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !187
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.n) #17
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %.critedge, %bb.g, %bb.h
  br i1 %.115, label %bb.i, label %bb.m

bb.i:                                             ; preds = %Py_DECREF.exit
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.m, ptr %i.j, align 4, !tbaa !7
  %i.r = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.s = call ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef %i.r, ptr noundef %0) #17 ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.t = call i32 @fileno(ptr noundef nonnull %i.h) #17
  %i.u = call fastcc i32 @set_inheritable(i32 noundef %i.t, i32 noundef 0, i32 noundef 1, ptr noundef null)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %Py_DECREF.exit, %bb.k, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %Py_DECREF.exit ], [ null, %bb.j ], [ null, %bb.l ], [ %i.h, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.2 = phi ptr [ %.1, %bb.m ], [ null, %bb.a ]
  ret ptr %.2
}

declare i32 @PyUnicode_FSConverter(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyErr_CheckSignals() local_unnamed_addr #2

declare ptr @PyErr_SetFromErrnoWithFilenameObject(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @Py_fclose(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @fclose(ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden range(i64 -1, -9223372036854775808) i64 @_Py_read(i32 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 9223372036854775807)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call ptr @PyEval_SaveThread() #17
  %i.b = tail call ptr @__errno_location() #19    ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = tail call i64 @read(i32 noundef %0, ptr noundef %1, i64 noundef %spec.store.select) #17 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #17
  %i.e = icmp slt i64 %i.c, 0                     ; 2 uses
  %i.f = icmp eq i32 %i.d, 4
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @PyErr_CheckSignals() #17
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.sink.split, !llvm.loop !201

bb.d:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.i = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.h) #17 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink = phi i32 [ %i.d, %bb.e ], [ 4, %bb.c ]
  store i32 %.sink, ptr %i.b, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i64 [ %i.c, %bb.d ], [ -1, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @_Py_write(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 9223372036854775807)
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %bb.b, %bb.a
  %i.a = tail call ptr @PyEval_SaveThread() #17
  %i.b = tail call ptr @__errno_location() #19    ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !7
  %i.c = tail call i64 @write(i32 noundef %0, ptr noundef readonly %1, i64 noundef %spec.store.select.i) #17 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !7    ; 2 uses
  tail call void @PyEval_RestoreThread(ptr noundef %i.a) #17
  %i.e = icmp slt i64 %i.c, 0                     ; 2 uses
  %i.f = icmp eq i32 %i.d, 4
  %or.cond.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader39.i
  %i.g = tail call i32 @PyErr_CheckSignals() #17
  %.not25.i = icmp eq i32 %i.g, 0
  br i1 %.not25.i, label %.preheader39.i, label %_Py_write_impl.exit.sink.split, !llvm.loop !202

bb.c:                                             ; preds = %.preheader39.i
  br i1 %i.e, label %bb.d, label %_Py_write_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_OSError, align 8, !tbaa !198
  %i.i = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.h) #17 ; 0 uses
  br label %_Py_write_impl.exit.sink.split

_Py_write_impl.exit.sink.split:                   ; preds = %bb.b, %bb.d
  %.sink = phi i32 [ %i.d, %bb.d ], [ 4, %bb.b ]
  store i32 %.sink, ptr %i.b, align 4, !tbaa !7
  br label %_Py_write_impl.exit

_Py_write_impl.exit:                              ; preds = %_Py_write_impl.exit.sink.split, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.c ], [ -1, %_Py_write_impl.exit.sink.split ]
  ret i64 %.0.i
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 -1, -9223372036854775808) i64 @_Py_write_noraise(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %2, i64 9223372036854775807)
  %i.a = tail call ptr @__errno_location() #19    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.b = tail call i64 @write(i32 noundef %0, ptr noundef readonly %1, i64 noundef %spec.store.select.i) #17 ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  %i.d = icmp slt i64 %i.b, 0                     ; 2 uses
  %i.e = icmp eq i32 %i.c, 4
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %.thread.i, !llvm.loop !203

.thread.i:                                        ; preds = %bb.b
  %spec.select = select i1 %i.d, i64 -1, i64 %i.b
  ret i64 %spec.select
}

; Function Attrs: nounwind uwtable
define hidden i32 @_Py_wreadlink(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [4096 x i8], align 16             ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = call fastcc i32 @encode_locale_ex(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, i32 noundef 1, i32 noundef 0, i32 noundef 2)
  %.not.i.i = icmp ne i32 %i.e, 0
  %i.f = load ptr, ptr %i.b, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.g = icmp eq ptr %i.f, null
  %i.h = select i1 %.not.i.i, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.i, align 4, !tbaa !7
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = call i64 @readlink(ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, i64 noundef 4096) #17 ; 2 uses
  call void @PyMem_RawFree(ptr noundef nonnull %i.f) #17
  switch i64 %i.j, label %bb.e [
    i64 -1, label %bb.j
    i64 4096, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = tail call ptr @__errno_location() #19
  store i32 22, ptr %i.k, align 4, !tbaa !7
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.c, i64 %i.j
end_hunk_0
begin_hunk_1_@_Py_GetLocaleconvNumeric:bb.a
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not = phi i1 [ false, %bb.c ], [ true, %bb.b ]
  %i.f = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #18
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %i.g, align 1, !tbaa !187
  %i.k = icmp sgt i8 %i.j, -1
  %or.cond = and i1 %.not, %i.k
  br i1 %or.cond, label %.thread39, label %.thread

.thread:                                          ; preds = %bb.e, %bb.d
  %i.l = tail call ptr @setlocale(i32 noundef 0, ptr noundef null) #17 ; 2 uses
  %.not32 = icmp eq ptr %i.l, null
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.m = load ptr, ptr @PyExc_RuntimeWarning, align 8, !tbaa !198
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.5) #17
  br label %bb.p

bb.g:                                             ; preds = %.thread
  %i.n = tail call ptr @_PyMem_Strdup(ptr noundef nonnull %i.l) #17 ; 5 uses
  %.not33 = icmp eq ptr %i.n, null
  br i1 %.not33, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @PyErr_NoMemory() #17      ; 0 uses
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.p = tail call ptr @setlocale(i32 noundef 1, ptr noundef null) #17 ; 3 uses
  %.not34 = icmp eq ptr %i.p, null
  br i1 %.not34, label %.thread39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %i.n) #18
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread39, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @setlocale(i32 noundef 0, ptr noundef nonnull %i.p) #17 ; 0 uses
  br label %.thread39

.thread39:                                        ; preds = %bb.e, %bb.j, %bb.i, %bb.k
  %.024 = phi ptr [ %i.n, %bb.k ], [ null, %bb.e ], [ %i.n, %bb.i ], [ %i.n, %bb.j ] ; 2 uses
  %.1 = phi i1 [ false, %bb.k ], [ true, %bb.e ], [ true, %bb.i ], [ true, %bb.j ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !210
  %i.u = tail call ptr @PyUnicode_DecodeLocale(ptr noundef %i.t, ptr noundef null) #17 ; 2 uses
  store ptr %i.u, ptr %1, align 8, !tbaa !198
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread39
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !212
  %i.x = tail call ptr @PyUnicode_DecodeLocale(ptr noundef %i.w, ptr noundef null) #17 ; 2 uses
  store ptr %i.x, ptr %2, align 8, !tbaa !198
  %i.y = icmp eq ptr %i.x, null
  %spec.select = sext i1 %i.y to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread39
  %.0 = phi i32 [ -1, %.thread39 ], [ %spec.select, %bb.l ]
  br i1 %.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call ptr @setlocale(i32 noundef 0, ptr noundef %.024) #17 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @PyMem_Free(ptr noundef %.024) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h, %bb.f
  %.027 = phi i32 [ %.0, %bb.o ], [ -1, %bb.h ], [ -1, %bb.f ]
  ret i32 %.027
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @_PyMem_Strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @PyUnicode_DecodeLocale(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @_Py_closerange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %0, i32 0) ; 4 uses
  %i.b = tail call i32 @close_range(i32 noundef %i.a, i32 noundef %1, i32 noundef 0) #17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64
  %i.e = tail call i64 @sysconf(i32 noundef 4) #17
  %.not = icmp sgt i64 %i.e, %i.d
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not1112 = icmp sgt i32 %i.a, %1
  br i1 %.not1112, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  tail call void @closefrom(i32 noundef %i.a) #17
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.013 = phi i32 [ %i.g, %.lr.ph ], [ %i.a, %.preheader ] ; 2 uses
  %i.f = tail call i32 @close(i32 noundef %.013) #17 ; 0 uses
  %i.g = add i32 %.013, 1                         ; 2 uses
  %.not11 = icmp sgt i32 %i.g, %1
  br i1 %.not11, label %.loopexit, label %.lr.ph, !llvm.loop !213

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @close_range(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @closefrom(i32 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_Py_GetTicksPerSecond(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 2) #17 ; 2 uses
  %i.b = icmp slt i64 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %0, align 8, !tbaa !192
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @_Py_IsValidFD(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 1) #17
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @_Py_normalize_encoding(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @mbstowcs(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @mbrtowc(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -3, 1) i32 @encode_current_locale(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 10 uses
  %i.b = tail call i64 @wcslen(ptr noundef %0) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  switch i32 %5, label %get_surrogateescape.exit [
    i32 1, label %.sink.split.i
    i32 2, label %.thread
  ]

.sink.split.i:                                    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !7
  %.not134 = icmp eq i64 %i.b, 0
  %.not56 = trunc nuw i32 %4 to i1                ; 5 uses
  br i1 %.not134, label %.split92, label %.lr.ph.us.us

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !7
  %.not134165 = icmp eq i64 %i.b, 0
  %.not56166 = trunc nuw i32 %4 to i1             ; 4 uses
  br i1 %.not134165, label %.split92, label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.sink.split.i, %bb.e
  %.048.us.us = phi ptr [ %.152.us.us, %bb.e ], [ null, %.sink.split.i ] ; 6 uses
  %.046.us.us = phi i64 [ %i.e, %bb.e ], [ 0, %.sink.split.i ]
  br label %bb.f

bb.b:                                             ; preds = %._crit_edge.split.us.us.us
  %i.e = add i64 %.2.us.us.us, 1                  ; 3 uses
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @PyMem_Malloc(i64 noundef %i.e) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = call ptr @PyMem_RawMalloc(i64 noundef %i.e) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.152.us.us = phi ptr [ %i.g, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.h = icmp eq ptr %.152.us.us, null
  br i1 %i.h, label %get_surrogateescape.exit, label %.lr.ph.us.us

bb.f:                                             ; preds = %bb.j, %.lr.ph.us.us
  %.180.us.us.us = phi i64 [ %.046.us.us, %.lr.ph.us.us ], [ %.2.us.us.us, %bb.j ] ; 3 uses
  %.04779.us.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.s, %bb.j ] ; 5 uses
  %.14978.us.us.us = phi ptr [ %.048.us.us, %.lr.ph.us.us ], [ %.250.us.us.us, %bb.j ] ; 3 uses
  %i.i = getelementptr [4 x i8], ptr %0, i64 %.04779.us.us.us
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 2 uses
  %i.k = and i32 %i.j, -128
  %or.cond.us.us.us = icmp eq i32 %i.k, 56448
  br i1 %or.cond.us.us.us, label %.split.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.j, ptr %i.a, align 4, !tbaa !7
  %.not57.us.us.us = icmp eq ptr %.14978.us.us.us, null
  br i1 %.not57.us.us.us, label %bb.h, label %.thread.us.us.us

.thread.us.us.us:                                 ; preds = %bb.g
  %i.l = call i64 @wcstombs(ptr noundef nonnull %.14978.us.us.us, ptr noundef nonnull %i.a, i64 noundef %.180.us.us.us) #17 ; 3 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %.split.us, label %.thread69.us.us.us

.thread69.us.us.us:                               ; preds = %.thread.us.us.us
  %i.n = getelementptr i8, ptr %.14978.us.us.us, i64 %i.l
  %i.o = sub i64 %.180.us.us.us, %i.l
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0) #17 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %.split.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add i64 %i.p, %.180.us.us.us
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread69.us.us.us
  %.250.us.us.us = phi ptr [ null, %bb.i ], [ %i.n, %.thread69.us.us.us ] ; 2 uses
  %.2.us.us.us = phi i64 [ %i.r, %bb.i ], [ %i.o, %.thread69.us.us.us ] ; 2 uses
  %i.s = add nuw i64 %.04779.us.us.us, 1          ; 2 uses
  %exitcond152.not = icmp eq i64 %i.s, %i.b
  br i1 %exitcond152.not, label %._crit_edge.split.us.us.us, label %bb.f, !llvm.loop !214

._crit_edge.split.us.us.us:                       ; preds = %bb.j
  %.not.us.us = icmp eq ptr %.048.us.us, null
  br i1 %.not.us.us, label %bb.b, label %.split107.us

.lr.ph.us:                                        ; preds = %.thread, %bb.n
  %.048.us = phi ptr [ %.152.us, %bb.n ], [ null, %.thread ] ; 5 uses
  %.046.us = phi i64 [ %i.t, %bb.n ], [ 0, %.thread ]
  br label %bb.o

bb.k:                                             ; preds = %._crit_edge.split.us102
  %i.t = add i64 %.2.us101, 1                     ; 3 uses
  br i1 %.not56166, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = call ptr @PyMem_Malloc(i64 noundef %i.t) #17
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.v = call ptr @PyMem_RawMalloc(i64 noundef %i.t) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.152.us = phi ptr [ %i.v, %bb.m ], [ %i.u, %bb.l ] ; 2 uses
  %i.w = icmp eq ptr %.152.us, null
  br i1 %i.w, label %get_surrogateescape.exit, label %.lr.ph.us

bb.o:                                             ; preds = %.lr.ph.us, %bb.v
  %.180.us93 = phi i64 [ %.046.us, %.lr.ph.us ], [ %.2.us101, %bb.v ] ; 5 uses
  %.04779.us94 = phi i64 [ 0, %.lr.ph.us ], [ %i.al, %bb.v ] ; 4 uses
  %.14978.us95 = phi ptr [ %.048.us, %.lr.ph.us ], [ %.250.us100, %bb.v ] ; 6 uses
  %i.x = getelementptr [4 x i8], ptr %0, i64 %.04779.us94
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7    ; 3 uses
  %i.z = and i32 %i.y, -128
  %or.cond.us96 = icmp eq i32 %i.z, 56448
  br i1 %or.cond.us96, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.y, ptr %i.a, align 4, !tbaa !7
  %.not57.us97 = icmp eq ptr %.14978.us95, null
  br i1 %.not57.us97, label %bb.q, label %.thread.us98

.thread.us98:                                     ; preds = %bb.p
  %i.aa = call i64 @wcstombs(ptr noundef nonnull %.14978.us95, ptr noundef nonnull %i.a, i64 noundef %.180.us93) #17 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %.split.us, label %.thread69.us99

.thread69.us99:                                   ; preds = %.thread.us98
  %i.ac = getelementptr i8, ptr %.14978.us95, i64 %i.aa
  %i.ad = sub i64 %.180.us93, %i.aa
  br label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ae = call i64 @wcstombs(ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 0) #17 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %.split.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = add i64 %i.ae, %.180.us93
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  %.not62.us = icmp eq ptr %.14978.us95, null
  br i1 %.not62.us, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = trunc i32 %i.y to i8
  %i.ai = getelementptr i8, ptr %.14978.us95, i64 1
  store i8 %i.ah, ptr %.14978.us95, align 1, !tbaa !187
  %i.aj = add i64 %.180.us93, -1
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ak = add i64 %.180.us93, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %.thread69.us99
  %.250.us100 = phi ptr [ %i.ai, %bb.t ], [ null, %bb.u ], [ %i.ac, %.thread69.us99 ], [ null, %bb.r ] ; 2 uses
  %.2.us101 = phi i64 [ %i.aj, %bb.t ], [ %i.ak, %bb.u ], [ %i.ad, %.thread69.us99 ], [ %i.ag, %bb.r ] ; 2 uses
  %i.al = add nuw i64 %.04779.us94, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.b
  br i1 %exitcond.not, label %._crit_edge.split.us102, label %bb.o, !llvm.loop !214

._crit_edge.split.us102:                          ; preds = %bb.v
  %.not.us = icmp eq ptr %.048.us, null
  br i1 %.not.us, label %bb.k, label %.split107.us

.split92:                                         ; preds = %.thread, %.sink.split.i
  %.not56169 = phi i1 [ %.not56166, %.thread ], [ %.not56, %.sink.split.i ]
  br i1 %.not56169, label %.split92.split.us, label %.split92.split

.split92.split.us:                                ; preds = %.split92, %bb.w
  %.048.us120 = phi ptr [ %i.an, %bb.w ], [ null, %.split92 ] ; 3 uses
  %.046.us121 = phi i64 [ %i.am, %bb.w ], [ 0, %.split92 ]
  %.not.us122 = icmp eq ptr %.048.us120, null
  br i1 %.not.us122, label %bb.w, label %.split107.us

bb.w:                                             ; preds = %.split92.split.us
  %i.am = add i64 %.046.us121, 1                  ; 2 uses
  %i.an = tail call ptr @PyMem_RawMalloc(i64 noundef %i.am) #17 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %get_surrogateescape.exit, label %.split92.split.us

.split92.split:                                   ; preds = %.split92, %bb.x
  %.048 = phi ptr [ %i.aq, %bb.x ], [ null, %.split92 ] ; 3 uses
  %.046 = phi i64 [ %i.ap, %bb.x ], [ 0, %.split92 ]
  %.not = icmp eq ptr %.048, null
  br i1 %.not, label %bb.x, label %.split107.us

.split107.us:                                     ; preds = %._crit_edge.split.us102, %._crit_edge.split.us.us.us, %.split92.split, %.split92.split.us
  %.us-phi108 = phi ptr [ %.048, %.split92.split ], [ %.048.us120, %.split92.split.us ], [ %.048.us.us, %._crit_edge.split.us.us.us ], [ %.048.us, %._crit_edge.split.us102 ]
  %.us-phi109 = phi ptr [ %.048, %.split92.split ], [ %.048.us120, %.split92.split.us ], [ %.250.us.us.us, %._crit_edge.split.us.us.us ], [ %.250.us100, %._crit_edge.split.us102 ]
  store i8 0, ptr %.us-phi109, align 1, !tbaa !187
  store ptr %.us-phi108, ptr %1, align 8, !tbaa !193
  br label %get_surrogateescape.exit

bb.x:                                             ; preds = %.split92.split
  %i.ap = add i64 %.046, 1                        ; 2 uses
  %i.aq = tail call ptr @PyMem_Malloc(i64 noundef %i.ap) #17 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %get_surrogateescape.exit, label %.split92.split

.split.us:                                        ; preds = %bb.q, %.thread.us98, %bb.f, %bb.h, %.thread.us.us.us
  %.not56170 = phi i1 [ %.not56, %bb.f ], [ %.not56, %.thread.us.us.us ], [ %.not56, %bb.h ], [ %.not56166, %.thread.us98 ], [ %.not56166, %bb.q ]
  %.us-phi = phi ptr [ %.048.us.us, %bb.f ], [ %.048.us.us, %.thread.us.us.us ], [ %.048.us.us, %bb.h ], [ %.048.us, %.thread.us98 ], [ %.048.us, %bb.q ] ; 2 uses
  %.us-phi82 = phi i64 [ %.04779.us.us.us, %bb.f ], [ %.04779.us.us.us, %.thread.us.us.us ], [ %.04779.us.us.us, %bb.h ], [ %.04779.us94, %.thread.us98 ], [ %.04779.us94, %bb.q ]
  br i1 %.not56170, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.split.us
  call void @PyMem_RawFree(ptr noundef %.us-phi) #17
  br label %bb.aa

bb.z:                                             ; preds = %.split.us
  call void @PyMem_Free(ptr noundef %.us-phi) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not60 = icmp eq ptr %2, null
  br i1 %.not60, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %.us-phi82, ptr %2, align 8, !tbaa !192
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not61 = icmp eq ptr %3, null
  br i1 %.not61, label %get_surrogateescape.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr @.str.22, ptr %3, align 8, !tbaa !193
  br label %get_surrogateescape.exit

get_surrogateescape.exit:                         ; preds = %bb.n, %bb.e, %bb.x, %bb.w, %bb.a, %bb.ac, %bb.ad, %.split107.us
  %.0 = phi i32 [ -2, %bb.ac ], [ -3, %bb.a ], [ 0, %.split107.us ], [ -2, %bb.ad ], [ -1, %bb.x ], [ -1, %bb.e ], [ -1, %bb.w ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare i32 @_Py_EncodeUTF8Ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_DecodeFSDefault(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #9

declare ptr @PyErr_SetFromErrnoWithFilenameObjects(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }

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
!11 = !{!12, !8, i64 10644}
!12 = !{!"pyruntimestate", !13, i64 0, !8, i64 824, !8, i64 828, !8, i64 832, !8, i64 836, !8, i64 840, !35, i64 848, !14, i64 856, !37, i64 864, !14, i64 896, !35, i64 904, !40, i64 912, !44, i64 936, !50, i64 1240, !51, i64 1256, !53, i64 1280, !57, i64 1320, !60, i64 2400, !61, i64 2408, !64, i64 2424, !66, i64 2488, !67, i64 2760, !72, i64 2800, !78, i64 10144, !79, i64 10160, !81, i64 10168, !82, i64 10176, !88, i64 10352, !91, i64 10568, !18, i64 10584, !92, i64 10592, !95, i64 10616, !36, i64 10656, !36, i64 10664, !96, i64 10672, !98, i64 10688, !99, i64 10692, !100, i64 10704, !102, i64 10720, !103, i64 14120, !104, i64 14128, !105, i64 14136, !120, i64 119552}
!13 = !{!"_Py_DebugOffsets", !9, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 48, !17, i64 176, !18, i64 296, !19, i64 304, !20, i64 368, !21, i64 456, !22, i64 472, !23, i64 504, !24, i64 528, !25, i64 552, !26, i64 584, !27, i64 608, !28, i64 624, !29, i64 648, !30, i64 672, !31, i64 704, !32, i64 728, !33, i64 760, !34, i64 776}
!14 = !{!"long", !9, i64 0}
!15 = !{!"_runtime_state", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_interpreter_state", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120}
!17 = !{!"_thread_state", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112}
!18 = !{!"", !14, i64 0}
!19 = !{!"_interpreter_frame", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!20 = !{!"_code_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!21 = !{!"_pyobject", !14, i64 0, !14, i64 8}
!22 = !{!"_type_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!23 = !{!"_tuple_object", !14, i64 0, !14, i64 8, !14, i64 16}
!24 = !{!"_list_object", !14, i64 0, !14, i64 8, !14, i64 16}
!25 = !{!"_set_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!26 = !{!"_dict_object", !14, i64 0, !14, i64 8, !14, i64 16}
!27 = !{!"_float_object", !14, i64 0, !14, i64 8}
!28 = !{!"_long_object", !14, i64 0, !14, i64 8, !14, i64 16}
!29 = !{!"_bytes_object", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!"_unicode_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!31 = !{!"_gc", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_gen_object", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!33 = !{!"_llist_node", !14, i64 0, !14, i64 8}
!34 = !{!"_debugger_support", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!35 = !{!"p1 _ZTS3_ts", !36, i64 0}
!36 = !{!"any pointer", !9, i64 0}
!37 = !{!"pyinterpreters", !38, i64 0, !39, i64 8, !39, i64 16, !14, i64 24}
!38 = !{!"PyMutex", !9, i64 0}
!39 = !{!"p1 _ZTS3_is", !36, i64 0}
!40 = !{!"", !41, i64 0}
!41 = !{!"_xid_lookup_state", !42, i64 0}
!42 = !{!"", !8, i64 0, !8, i64 4, !38, i64 8, !43, i64 16}
!43 = !{!"p1 _ZTS12_xid_regitem", !36, i64 0}
!44 = !{!"_pymem_allocators", !38, i64 0, !45, i64 8, !47, i64 128, !8, i64 272, !8, i64 276, !49, i64 280}
!45 = !{!"", !46, i64 0, !46, i64 40, !46, i64 80}
!46 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!47 = !{!"", !48, i64 0, !48, i64 48, !48, i64 96}
!48 = !{!"", !9, i64 0, !46, i64 8}
!49 = !{!"", !36, i64 0, !36, i64 8, !36, i64 16}
!50 = !{!"_obmalloc_global_state", !8, i64 0, !14, i64 8}
!51 = !{!"pyhash_runtime_state", !52, i64 0}
!52 = !{!"", !8, i64 0, !14, i64 8, !14, i64 16}
!53 = !{!"_pythread_runtime_state", !8, i64 0, !54, i64 8, !55, i64 24}
!54 = !{!"", !36, i64 0, !9, i64 8}
!55 = !{!"llist_node", !56, i64 0, !56, i64 8}
!56 = !{!"p1 _ZTS10llist_node", !36, i64 0}
!57 = !{!"_signals_runtime_state", !9, i64 0, !58, i64 1040, !8, i64 1048, !59, i64 1056, !59, i64 1064, !8, i64 1072}
!58 = !{!"", !8, i64 0, !8, i64 4}
!59 = !{!"p1 _ZTS7_object", !36, i64 0}
!60 = !{!"_Py_tss_t", !8, i64 0, !8, i64 4}
!61 = !{!"", !14, i64 0, !62, i64 8}
!62 = !{!"p2 int", !63, i64 0}
!63 = !{!"any p2 pointer", !36, i64 0}
!64 = !{!"_parser_runtime_state", !8, i64 0, !65, i64 8}
!65 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!66 = !{!"_atexit_runtime_state", !38, i64 0, !9, i64 8, !8, i64 264}
!67 = !{!"_import_runtime_state", !68, i64 0, !14, i64 8, !69, i64 16, !71, i64 32}
!68 = !{!"p1 _ZTS8_inittab", !36, i64 0}
!69 = !{!"", !38, i64 0, !70, i64 8}
!70 = !{!"p1 _ZTS15_Py_hashtable_t", !36, i64 0}
!71 = !{!"p1 omnipotent char", !36, i64 0}
!72 = !{!"_ceval_runtime_state", !73, i64 0, !77, i64 112}
!73 = !{!"", !8, i64 0, !8, i64 4, !14, i64 8, !74, i64 16, !75, i64 24, !76, i64 72, !14, i64 80, !36, i64 88, !14, i64 96, !8, i64 104}
!74 = !{!"p1 _ZTS13code_arena_st", !36, i64 0}
!75 = !{!"trampoline_api_st", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !14, i64 32, !14, i64 40}
!76 = !{!"p1 _ZTS8_IO_FILE", !36, i64 0}
!77 = !{!"_pending_calls", !35, i64 0, !38, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!78 = !{!"_gilstate_runtime_state", !8, i64 0, !39, i64 8}
!79 = !{!"_getargs_runtime_state", !80, i64 0}
!80 = !{!"p1 _ZTS13_PyArg_Parser", !36, i64 0}
!81 = !{!"_fileutils_state", !8, i64 0}
!82 = !{!"_faulthandler_runtime_state", !83, i64 0, !84, i64 40, !86, i64 120, !87, i64 128, !87, i64 152}
!83 = !{!"", !8, i64 0, !59, i64 8, !8, i64 16, !8, i64 20, !39, i64 24, !8, i64 32}
!84 = !{!"", !59, i64 0, !8, i64 8, !85, i64 16, !8, i64 24, !39, i64 32, !8, i64 40, !71, i64 48, !14, i64 56, !36, i64 64, !36, i64 72}
!85 = !{!"long long", !9, i64 0}
!86 = !{!"p1 _ZTS24faulthandler_user_signal", !36, i64 0}
!87 = !{!"", !36, i64 0, !8, i64 8, !14, i64 16}
!88 = !{!"_tracemalloc_runtime_state", !89, i64 0, !45, i64 16, !38, i64 136, !14, i64 144, !14, i64 152, !70, i64 160, !90, i64 168, !70, i64 176, !70, i64 184, !70, i64 192, !90, i64 200, !60, i64 208}
!89 = !{!"_PyTraceMalloc_Config", !8, i64 0, !8, i64 4, !8, i64 8}
!90 = !{!"p1 _ZTS21tracemalloc_traceback", !36, i64 0}
!91 = !{!"_reftracer_runtime_state", !36, i64 0, !36, i64 8}
!92 = !{!"_stoptheworld_state", !38, i64 0, !93, i64 1, !93, i64 2, !93, i64 3, !94, i64 4, !14, i64 8, !35, i64 16}
!93 = !{!"_Bool", !9, i64 0}
!94 = !{!"", !9, i64 0}
!95 = !{!"PyPreConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!96 = !{!"", !38, i64 0, !97, i64 8}
!97 = !{!"p1 _ZTS18_Py_AuditHookEntry", !36, i64 0}
!98 = !{!"_py_object_runtime_state", !8, i64 0}
!99 = !{!"_Py_float_runtime_state", !8, i64 0, !8, i64 4}
!100 = !{!"_Py_unicode_runtime_state", !101, i64 0}
!101 = !{!"_Py_unicode_runtime_ids", !38, i64 0, !14, i64 8}
!102 = !{!"_types_runtime_state", !8, i64 0, !94, i64 8}
!103 = !{!"_Py_time_runtime_state", !9, i64 0}
!104 = !{!"_Py_cached_objects", !70, i64 0}
!105 = !{!"_Py_static_objects", !106, i64 0}
!106 = !{!"", !9, i64 0, !107, i64 32960, !9, i64 33000, !111, i64 45288, !117, i64 105288, !107, i64 105304, !117, i64 105344, !118, i64 105360, !119, i64 105400}
!107 = !{!"", !108, i64 0, !14, i64 24, !9, i64 32}
!108 = !{!"PyVarObject", !109, i64 0, !14, i64 16}
!109 = !{!"_object", !9, i64 0, !110, i64 8}
!110 = !{!"p1 _ZTS11_typeobject", !36, i64 0}
!111 = !{!"_Py_global_strings", !112, i64 0, !116, i64 1336, !9, i64 45664, !9, i64 51808}
!112 = !{!"", !113, i64 0, !113, i64 56, !113, i64 112, !113, i64 168, !113, i64 224, !113, i64 280, !113, i64 328, !113, i64 384, !113, i64 440, !113, i64 496, !113, i64 544, !113, i64 592, !113, i64 640, !113, i64 696, !113, i64 752, !113, i64 800, !113, i64 848, !113, i64 896, !113, i64 952, !113, i64 1008, !113, i64 1064, !113, i64 1128, !113, i64 1184, !113, i64 1232, !113, i64 1288}
!113 = !{!"", !114, i64 0, !9, i64 40}
!114 = !{!"", !109, i64 0, !14, i64 16, !14, i64 24, !115, i64 32}
!115 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!116 = !{!"", !113, i64 0, !113, i64 56, !113, i64 112, !113, i64 168, !113, i64 224, !113, i64 280, !113, i64 336, !113, i64 392, !113, i64 448, !113, i64 504, !113, i64 552, !113, i64 600, !113, i64 656, !113, i64 704, !113, i64 760, !113, i64 816, !113, i64 872, !113, i64 928, !113, i64 984, !113, i64 1032, !113, i64 1080, !113, i64 1136, !113, i64 1184, !113, i64 1240, !113, i64 1304, !113, i64 1360, !113, i64 1416, !113, i64 1464, !113, i64 1528, !113, i64 1576, !113, i64 1632, !113, i64 1688, !113, i64 1744, !113, i64 1792, !113, i64 1840, !113, i64 1896, !113, i64 1952, !113, i64 2016, !113, i64 2072, !113, i64 2136, !113, i64 2192, !113, i64 2248, !113, i64 2304, !113, i64 2360, !113, i64 2416, !113, i64 2472, !113, i64 2528, !113, i64 2584, !113, i64 2640, !113, i64 2696, !113, i64 2752, !113, i64 2808, !113, i64 2872, !113, i64 2928, !113, i64 2984, !113, i64 3048, !113, i64 3104, !113, i64 3176, !113, i64 3232, !113, i64 3304, !113, i64 3352, !113, i64 3408, !113, i64 3464, !113, i64 3520, !113, i64 3576, !113, i64 3632, !113, i64 3680, !113, i64 3736, !113, i64 3784, !113, i64 3840, !113, i64 3888, !113, i64 3944, !113, i64 4000, !113, i64 4056, !113, i64 4112, !113, i64 4168, !113, i64 4224, !113, i64 4280, !113, i64 4336, !113, i64 4384, !113, i64 4432, !113, i64 4488, !113, i64 4552, !113, i64 4608, !113, i64 4664, !113, i64 4720, !113, i64 4784, !113, i64 4840, !113, i64 4888, !113, i64 4944, !113, i64 5000, !113, i64 5056, !113, i64 5112, !113, i64 5168, !113, i64 5224, !113, i64 5280, !113, i64 5336, !113, i64 5392, !113, i64 5448, !113, i64 5504, !113, i64 5568, !113, i64 5632, !113, i64 5680, !113, i64 5736, !113, i64 5784, !113, i64 5840, !113, i64 5896, !113, i64 5960, !113, i64 6016, !113, i64 6072, !113, i64 6128, !113, i64 6184, !113, i64 6240, !113, i64 6304, !113, i64 6352, !113, i64 6400, !113, i64 6456, !113, i64 6512, !113, i64 6568, !113, i64 6624, !113, i64 6672, !113, i64 6728, !113, i64 6784, !113, i64 6840, !113, i64 6896, !113, i64 6944, !113, i64 7000, !113, i64 7056, !113, i64 7104, !113, i64 7160, !113, i64 7208, !113, i64 7256, !113, i64 7304, !113, i64 7360, !113, i64 7416, !113, i64 7472, !113, i64 7528, !113, i64 7576, !113, i64 7632, !113, i64 7688, !113, i64 7744, !113, i64 7800, !113, i64 7856, !113, i64 7904, !113, i64 7952, !113, i64 8008, !113, i64 8064, !113, i64 8120, !113, i64 8176, !113, i64 8232, !113, i64 8288, !113, i64 8344, !113, i64 8408, !113, i64 8464, !113, i64 8520, !113, i64 8576, !113, i64 8632, !113, i64 8688, !113, i64 8744, !113, i64 8800, !113, i64 8848, !113, i64 8904, !113, i64 8960, !113, i64 9016, !113, i64 9072, !113, i64 9128, !113, i64 9184, !113, i64 9240, !113, i64 9288, !113, i64 9344, !113, i64 9400, !113, i64 9456, !113, i64 9512, !113, i64 9568, !113, i64 9624, !113, i64 9680, !113, i64 9736, !113, i64 9800, !113, i64 9848, !113, i64 9896, !113, i64 9960, !113, i64 10024, !113, i64 10080, !113, i64 10136, !113, i64 10192, !113, i64 10272, !113, i64 10344, !113, i64 10408, !113, i64 10480, !113, i64 10544, !113, i64 10608, !113, i64 10664, !113, i64 10712, !113, i64 10768, !113, i64 10824, !113, i64 10872, !113, i64 10928, !113, i64 10984, !113, i64 11040, !113, i64 11112, !113, i64 11168, !113, i64 11224, !113, i64 11280, !113, i64 11336, !113, i64 11400, !113, i64 11456, !113, i64 11512, !113, i64 11568, !113, i64 11624, !113, i64 11680, !113, i64 11736, !113, i64 11784, !113, i64 11840, !113, i64 11904, !113, i64 11960, !113, i64 12016, !113, i64 12064, !113, i64 12128, !113, i64 12192, !113, i64 12248, !113, i64 12296, !113, i64 12360, !113, i64 12408, !113, i64 12472, !113, i64 12528, !113, i64 12584, !113, i64 12640, !113, i64 12696, !113, i64 12752, !113, i64 12808, !113, i64 12872, !113, i64 12944, !113, i64 13008, !113, i64 13056, !113, i64 13128, !113, i64 13200, !113, i64 13256, !113, i64 13304, !113, i64 13352, !113, i64 13400, !113, i64 13448, !113, i64 13512, !113, i64 13560, !113, i64 13616, !113, i64 13672, !113, i64 13720, !113, i64 13768, !113, i64 13816, !113, i64 13872, !113, i64 13928, !113, i64 13976, !113, i64 14024, !113, i64 14072, !113, i64 14120, !113, i64 14168, !113, i64 14224, !113, i64 14272, !113, i64 14336, !113, i64 14384, !113, i64 14432, !113, i64 14480, !113, i64 14536, !113, i64 14592, !113, i64 14648, !113, i64 14696, !113, i64 14744, !113, i64 14792, !113, i64 14848, !113, i64 14904, !113, i64 14960, !113, i64 15008, !113, i64 15064, !113, i64 15112, !113, i64 15160, !113, i64 15216, !113, i64 15272, !113, i64 15328, !113, i64 15376, !113, i64 15424, !113, i64 15480, !113, i64 15536, !113, i64 15592, !113, i64 15648, !113, i64 15696, !113, i64 15752, !113, i64 15800, !113, i64 15856, !113, i64 15920, !113, i64 15976, !113, i64 16024, !113, i64 16080, !113, i64 16144, !113, i64 16208, !113, i64 16256, !113, i64 16304, !113, i64 16352, !113, i64 16416, !113, i64 16472, !113, i64 16528, !113, i64 16584, !113, i64 16632, !113, i64 16680, !113, i64 16736, !113, i64 16792, !113, i64 16840, !113, i64 16896, !113, i64 16944, !113, i64 17008, !113, i64 17056, !113, i64 17104, !113, i64 17152, !113, i64 17200, !113, i64 17248, !113, i64 17296, !113, i64 17352, !113, i64 17408, !113, i64 17456, !113, i64 17512, !113, i64 17576, !113, i64 17632, !113, i64 17688, !113, i64 17744, !113, i64 17800, !113, i64 17864, !113, i64 17920, !113, i64 17968, !113, i64 18024, !113, i64 18080, !113, i64 18144, !113, i64 18200, !113, i64 18256, !113, i64 18312, !113, i64 18360, !113, i64 18416, !113, i64 18472, !113, i64 18520, !113, i64 18576, !113, i64 18632, !113, i64 18688, !113, i64 18736, !113, i64 18784, !113, i64 18832, !113, i64 18888, !113, i64 18944, !113, i64 18992, !113, i64 19040, !113, i64 19088, !113, i64 19136, !113, i64 19184, !113, i64 19240, !113, i64 19288, !113, i64 19336, !113, i64 19400, !113, i64 19448, !113, i64 19504, !113, i64 19552, !113, i64 19600, !113, i64 19648, !113, i64 19696, !113, i64 19744, !113, i64 19792, !113, i64 19840, !113, i64 19896, !113, i64 19944, !113, i64 19992, !113, i64 20048, !113, i64 20104, !113, i64 20160, !113, i64 20208, !113, i64 20256, !113, i64 20320, !113, i64 20368, !113, i64 20424, !113, i64 20480, !113, i64 20528, !113, i64 20576, !113, i64 20632, !113, i64 20688, !113, i64 20736, !113, i64 20784, !113, i64 20832, !113, i64 20888, !113, i64 20936, !113, i64 20992, !113, i64 21048, !113, i64 21104, !113, i64 21160, !113, i64 21216, !113, i64 21264, !113, i64 21320, !113, i64 21368, !113, i64 21424, !113, i64 21480, !113, i64 21536, !113, i64 21584, !113, i64 21640, !113, i64 21688, !113, i64 21736, !113, i64 21784, !113, i64 21840, !113, i64 21888, !113, i64 21936, !113, i64 21992, !113, i64 22040, !113, i64 22096, !113, i64 22152, !113, i64 22208, !113, i64 22272, !113, i64 22320, !113, i64 22368, !113, i64 22424, !113, i64 22472, !113, i64 22528, !113, i64 22584, !113, i64 22632, !113, i64 22688, !113, i64 22736, !113, i64 22784, !113, i64 22832, !113, i64 22880, !113, i64 22928, !113, i64 22976, !113, i64 23024, !113, i64 23072, !113, i64 23120, !113, i64 23176, !113, i64 23232, !113, i64 23280, !113, i64 23336, !113, i64 23392, !113, i64 23440, !113, i64 23488, !113, i64 23536, !113, i64 23592, !113, i64 23648, !113, i64 23696, !113, i64 23744, !113, i64 23792, !113, i64 23848, !113, i64 23904, !113, i64 23952, !113, i64 24008, !113, i64 24064, !113, i64 24120, !113, i64 24176, !113, i64 24232, !113, i64 24288, !113, i64 24336, !113, i64 24384, !113, i64 24440, !113, i64 24488, !113, i64 24536, !113, i64 24584, !113, i64 24640, !113, i64 24688, !113, i64 24744, !113, i64 24800, !113, i64 24856, !113, i64 24912, !113, i64 24960, !113, i64 25016, !113, i64 25064, !113, i64 25112, !113, i64 25168, !113, i64 25216, !113, i64 25264, !113, i64 25320, !113, i64 25376, !113, i64 25432, !113, i64 25480, !113, i64 25528, !113, i64 25576, !113, i64 25624, !113, i64 25672, !113, i64 25720, !113, i64 25768, !113, i64 25816, !113, i64 25872, !113, i64 25920, !113, i64 25976, !113, i64 26024, !113, i64 26080, !113, i64 26136, !113, i64 26184, !113, i64 26240, !113, i64 26296, !113, i64 26344, !113, i64 26400, !113, i64 26448, !113, i64 26504, !113, i64 26560, !113, i64 26616, !113, i64 26664, !113, i64 26720, !113, i64 26776, !113, i64 26832, !113, i64 26888, !113, i64 26936, !113, i64 26992, !113, i64 27040, !113, i64 27096, !113, i64 27152, !113, i64 27208, !113, i64 27256, !113, i64 27312, !113, i64 27368, !113, i64 27416, !113, i64 27472, !113, i64 27520, !113, i64 27576, !113, i64 27632, !113, i64 27680, !113, i64 27736, !113, i64 27792, !113, i64 27848, !113, i64 27896, !113, i64 27944, !113, i64 27992, !113, i64 28040, !113, i64 28096, !113, i64 28152, !113, i64 28200, !113, i64 28248, !113, i64 28304, !113, i64 28352, !113, i64 28400, !113, i64 28448, !113, i64 28496, !113, i64 28544, !113, i64 28592, !113, i64 28640, !113, i64 28688, !113, i64 28744, !113, i64 28792, !113, i64 28840, !113, i64 28896, !113, i64 28952, !113, i64 29008, !113, i64 29064, !113, i64 29120, !113, i64 29168, !113, i64 29224, !113, i64 29272, !113, i64 29320, !113, i64 29368, !113, i64 29416, !113, i64 29464, !113, i64 29512, !113, i64 29568, !113, i64 29616, !113, i64 29664, !113, i64 29712, !113, i64 29760, !113, i64 29808, !113, i64 29864, !113, i64 29912, !113, i64 29968, !113, i64 30016, !113, i64 30064, !113, i64 30112, !113, i64 30168, !113, i64 30224, !113, i64 30280, !113, i64 30328, !113, i64 30376, !113, i64 30424, !113, i64 30480, !113, i64 30536, !113, i64 30592, !113, i64 30648, !113, i64 30696, !113, i64 30752, !113, i64 30808, !113, i64 30856, !113, i64 30912, !113, i64 30968, !113, i64 31024, !113, i64 31072, !113, i64 31120, !113, i64 31168, !113, i64 31216, !113, i64 31264, !113, i64 31320, !113, i64 31368, !113, i64 31416, !113, i64 31464, !113, i64 31512, !113, i64 31560, !113, i64 31608, !113, i64 31656, !113, i64 31712, !113, i64 31776, !113, i64 31840, !113, i64 31888, !113, i64 31944, !113, i64 32008, !113, i64 32064, !113, i64 32112, !113, i64 32160, !113, i64 32208, !113, i64 32264, !113, i64 32320, !113, i64 32368, !113, i64 32424, !113, i64 32472, !113, i64 32520, !113, i64 32576, !113, i64 32632, !113, i64 32680, !113, i64 32728, !113, i64 32776, !113, i64 32824, !113, i64 32872, !113, i64 32920, !113, i64 32968, !113, i64 33016, !113, i64 33072, !113, i64 33128, !113, i64 33184, !113, i64 33240, !113, i64 33304, !113, i64 33360, !113, i64 33408, !113, i64 33456, !113, i64 33504, !113, i64 33552, !113, i64 33600, !113, i64 33656, !113, i64 33712, !113, i64 33760, !113, i64 33808, !113, i64 33856, !113, i64 33904, !113, i64 33952, !113, i64 34008, !113, i64 34056, !113, i64 34112, !113, i64 34160, !113, i64 34208, !113, i64 34256, !113, i64 34312, !113, i64 34360, !113, i64 34416, !113, i64 34464, !113, i64 34512, !113, i64 34560, !113, i64 34616, !113, i64 34672, !113, i64 34720, !113, i64 34776, !113, i64 34824, !113, i64 34880, !113, i64 34928, !113, i64 34976, !113, i64 35024, !113, i64 35072, !113, i64 35120, !113, i64 35168, !113, i64 35224, !113, i64 35288, !113, i64 35344, !113, i64 35400, !113, i64 35464, !113, i64 35528, !113, i64 35576, !113, i64 35632, !113, i64 35680, !113, i64 35728, !113, i64 35776, !113, i64 35832, !113, i64 35880, !113, i64 35936, !113, i64 35992, !113, i64 36040, !113, i64 36088, !113, i64 36136, !113, i64 36192, !113, i64 36240, !113, i64 36296, !113, i64 36352, !113, i64 36408, !113, i64 36464, !113, i64 36512, !113, i64 36568, !113, i64 36632, !113, i64 36688, !113, i64 36736, !113, i64 36784, !113, i64 36832, !113, i64 36880, !113, i64 36928, !113, i64 36976, !113, i64 37024, !113, i64 37080, !113, i64 37136, !113, i64 37184, !113, i64 37240, !113, i64 37296, !113, i64 37344, !113, i64 37392, !113, i64 37448, !113, i64 37504, !113, i64 37552, !113, i64 37616, !113, i64 37672, !113, i64 37728, !113, i64 37776, !113, i64 37824, !113, i64 37872, !113, i64 37936, !113, i64 37984, !113, i64 38040, !113, i64 38096, !113, i64 38144, !113, i64 38192, !113, i64 38240, !113, i64 38296, !113, i64 38352, !113, i64 38408, !113, i64 38456, !113, i64 38512, !113, i64 38560, !113, i64 38616, !113, i64 38672, !113, i64 38728, !113, i64 38776, !113, i64 38824, !113, i64 38872, !113, i64 38928, !113, i64 38976, !113, i64 39024, !113, i64 39072, !113, i64 39128, !113, i64 39192, !113, i64 39264, !113, i64 39312, !113, i64 39360, !113, i64 39408, !113, i64 39456, !113, i64 39520, !113, i64 39568, !113, i64 39616, !113, i64 39672, !113, i64 39728, !113, i64 39784, !113, i64 39832, !113, i64 39888, !113, i64 39944, !113, i64 39992, !113, i64 40040, !113, i64 40088, !113, i64 40136, !113, i64 40184, !113, i64 40232, !113, i64 40280, !113, i64 40336, !113, i64 40392, !113, i64 40448, !113, i64 40496, !113, i64 40552, !113, i64 40600, !113, i64 40648, !113, i64 40704, !113, i64 40776, !113, i64 40824, !113, i64 40872, !113, i64 40928, !113, i64 40976, !113, i64 41040, !113, i64 41088, !113, i64 41144, !113, i64 41200, !113, i64 41256, !113, i64 41304, !113, i64 41352, !113, i64 41408, !113, i64 41456, !113, i64 41504, !113, i64 41552, !113, i64 41608, !113, i64 41656, !113, i64 41704, !113, i64 41752, !113, i64 41800, !113, i64 41848, !113, i64 41904, !113, i64 41960, !113, i64 42016, !113, i64 42072, !113, i64 42128, !113, i64 42176, !113, i64 42232, !113, i64 42288, !113, i64 42344, !113, i64 42392, !113, i64 42440, !113, i64 42496, !113, i64 42544, !113, i64 42592, !113, i64 42640, !113, i64 42696, !113, i64 42744, !113, i64 42792, !113, i64 42840, !113, i64 42888, !113, i64 42944, !113, i64 42992, !113, i64 43048, !113, i64 43096, !113, i64 43144, !113, i64 43200, !113, i64 43248, !113, i64 43296, !113, i64 43344, !113, i64 43392, !113, i64 43448, !113, i64 43512, !113, i64 43568, !113, i64 43624, !113, i64 43672, !113, i64 43720, !113, i64 43768, !113, i64 43816, !113, i64 43864, !113, i64 43912, !113, i64 43968, !113, i64 44016, !113, i64 44072, !113, i64 44120, !113, i64 44176, !113, i64 44224, !113, i64 44272}
!117 = !{!"", !14, i64 0, !14, i64 8}
!118 = !{!"", !108, i64 0, !8, i64 24, !9, i64 32}
end_hunk_1
