Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Py_EncodeUTF8Ex:bb.a
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @PyMem_RawFree(ptr noundef nonnull %.076) #33
  br label %.critedge

bb.an:                                            ; preds = %bb.al
  tail call void @PyMem_Free(ptr noundef nonnull %.076) #33
  br label %.critedge

bb.ao:                                            ; preds = %bb.ai
  store ptr %.0, ptr %1, align 8, !tbaa !259
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.z, %bb.aa, %bb.ao, %bb.an, %bb.am, %bb.d, %bb.a
  %.5 = phi i32 [ -1, %bb.d ], [ -3, %bb.a ], [ -1, %bb.h ], [ -1, %bb.am ], [ 0, %bb.ao ], [ -1, %bb.an ], [ -2, %bb.aa ], [ -2, %bb.z ]
  ret i32 %.5
}

declare ptr @PyMem_RawRealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUTF8String(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @unicode_encode_utf8(ptr noundef %0, i32 noundef 0, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF32Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct._PyUnicodeWriter, align 8   ; 18 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %0, ptr %i.a, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr null, ptr %i.f, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr null, ptr %i.g, align 8, !tbaa !227
  store ptr %0, ptr %i.d, align 8, !tbaa !259
  %i.h = getelementptr i8, ptr %0, i64 %1         ; 3 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !259
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %3, align 4, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.059 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.j = icmp eq i32 %.059, 0
  %i.k = icmp sgt i64 %1, 3
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %0, align 1
  switch i32 %i.l, label %bb.f [
    i32 65279, label %.sink.split
    i32 -131072, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.160.ph = phi i32 [ 1, %bb.e ], [ -1, %bb.d ]
  %i.m = getelementptr i8, ptr %0, i64 4          ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !259
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.n = phi ptr [ %0, %bb.d ], [ %i.m, %.sink.split ] ; 2 uses
  %.160 = phi i32 [ 0, %bb.d ], [ %.160.ph, %.sink.split ] ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.160, ptr %3, align 4, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %i.o = phi ptr [ %0, %bb.c ], [ %i.n, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %.261 = phi i32 [ %.059, %bb.c ], [ %.160, %bb.g ], [ %.160, %bb.f ]
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not89 = icmp eq ptr %4, null
  br i1 %.not89, label %Py_XDECREF.exit102, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %1, ptr %4, align 8, !tbaa !226
  br label %Py_XDECREF.exit102

bb.k:                                             ; preds = %bb.h
  %i.q = icmp slt i32 %.261, 1                    ; 2 uses
  %i.r = select i1 %i.q, ptr @.str.71, ptr @.str.72
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %5) #33
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = add i64 %i.u, 3
  %i.w = sdiv i64 %i.v, 4                         ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.w, ptr %i.x, align 8, !tbaa !255
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  %i.aa = icmp ugt i32 %i.z, 126
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !248
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !249
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = icmp sle i64 %i.w, %i.af
  %.off78 = add i64 %i.u, 6
  %i.ah = icmp ult i64 %.off78, 7
  %or.cond6 = or i1 %i.ah, %i.ag
  br i1 %or.cond6, label %.preheader121, label %bb.n

bb.m:                                             ; preds = %bb.k
  %.off = add i64 %i.u, 6
  %.old5 = icmp ult i64 %.off, 7
  br i1 %.old5, label %.preheader121, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ai = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %5, i64 noundef %i.w, i32 noundef 127) #33
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %.thread110.thread, label %.preheader121

.thread110.thread:                                ; preds = %bb.n
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  br label %Py_XDECREF.exit99

.preheader121:                                    ; preds = %bb.l, %bb.m, %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.an = icmp ne ptr %4, null
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.backedge, %.preheader121
  %i.ap = load ptr, ptr %5, align 8, !tbaa !257
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %.val = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.ar = and i32 %.val, 64
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.o, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.o:                                             ; preds = %select.unfold
  %i.as = lshr i32 %.val, 2
  %i.at = and i32 %i.as, 7                        ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.at, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.at, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %select.unfold, %bb.o
  %.0.i = phi i32 [ %switch.select6.i, %bb.o ], [ 127, %select.unfold ] ; 5 uses
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !259 ; 3 uses
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !259 ; 6 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp sgt i64 %i.ay, 3
  br i1 %i.az, label %bb.p, label %.thread106

bb.p:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.ba = load i32, ptr %i.ak, align 8, !tbaa !250
  %.fr = freeze i32 %i.ba                         ; 2 uses
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !251 ; 6 uses
  %i.bc = getelementptr i8, ptr %i.au, i64 -4     ; 4 uses
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !249 ; 4 uses
  %.not82 = icmp eq i32 %.fr, 1                   ; 2 uses
  %cond = icmp eq i32 %.fr, 2                     ; 2 uses
  br i1 %i.q, label %.preheader, label %.preheader118

.preheader118:                                    ; preds = %bb.p
  br i1 %.not82, label %.preheader118.split.us, label %.preheader118.split

.preheader118.split.us:                           ; preds = %.preheader118, %.split64.us
  %i.be = phi ptr [ %i.bi, %.split64.us ], [ %i.av, %.preheader118 ] ; 5 uses
  %.1.us = phi i64 [ %i.bh, %.split64.us ], [ %i.bd, %.preheader118 ] ; 3 uses
  %6 = load i16, ptr %i.be, align 1
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %8 = zext i16 %7 to i32
  %9 = shl nuw i32 %8, 16
  %10 = getelementptr i8, ptr %i.be, i64 2
  %11 = load i8, ptr %10, align 1, !tbaa !237
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr i8, ptr %i.be, i64 3
  %16 = load i8, ptr %15, align 1, !tbaa !237     ; 2 uses
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17                  ; 3 uses
  %i.bf = icmp ugt i32 %18, %.0.i
  br i1 %i.bf, label %.loopexit, label %.split64.us

.split64.us:                                      ; preds = %.preheader118.split.us
  %i.bg = getelementptr i8, ptr %i.bb, i64 %.1.us
  store i8 %16, ptr %i.bg, align 1, !tbaa !237
  %i.bh = add i64 %.1.us, 1                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 4      ; 3 uses
  %.not81.us = icmp ugt ptr %i.bi, %i.bc
  br i1 %.not81.us, label %.loopexit, label %.preheader118.split.us, !llvm.loop !575

.preheader:                                       ; preds = %bb.p
  br i1 %.not82, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.split.us
  %i.bj = phi ptr [ %i.bz, %.split.us ], [ %i.av, %.preheader ] ; 5 uses
  %.0.us = phi i64 [ %i.by, %.split.us ], [ %i.bd, %.preheader ] ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  %i.bl = load i16, ptr %i.bk, align 1
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 16
  %i.bo = getelementptr i8, ptr %i.bj, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !237
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 8
  %i.bs = or disjoint i32 %i.br, %i.bn
  %i.bt = load i8, ptr %i.bj, align 1, !tbaa !237 ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu            ; 3 uses
  %i.bw = icmp ugt i32 %i.bv, %.0.i
  br i1 %i.bw, label %.loopexit, label %.split.us

.split.us:                                        ; preds = %.preheader.split.us
  %i.bx = getelementptr i8, ptr %i.bb, i64 %.0.us
  store i8 %i.bt, ptr %i.bx, align 1, !tbaa !237
  %i.by = add i64 %.0.us, 1                       ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bj, i64 4      ; 3 uses
  %.not84.us = icmp ugt ptr %i.bz, %i.bc
  br i1 %.not84.us, label %.loopexit, label %.preheader.split.us, !llvm.loop !576

.preheader.split:                                 ; preds = %.preheader, %PyUnicode_WRITE.exit
  %i.ca = phi ptr [ %i.ct, %PyUnicode_WRITE.exit ], [ %i.av, %.preheader ] ; 5 uses
  %.0 = phi i64 [ %i.cs, %PyUnicode_WRITE.exit ], [ %i.bd, %.preheader ] ; 4 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 2
  %i.cc = load i16, ptr %i.cb, align 1
  %i.cd = zext i16 %i.cc to i32
  %i.ce = shl nuw i32 %i.cd, 16
  %i.cf = getelementptr i8, ptr %i.ca, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !237
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = or disjoint i32 %i.ci, %i.ce            ; 2 uses
  %i.ck = load i8, ptr %i.ca, align 1, !tbaa !237
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.cj, %i.cl            ; 5 uses
  %i.cn = icmp ugt i32 %i.cm, %.0.i
  %i.co = and i32 %i.cj, -2048
  %.not116 = icmp eq i32 %i.co, 55296
  %or.cond129 = or i1 %i.cn, %.not116
  br i1 %or.cond129, label %.loopexit, label %.split63

.split63:                                         ; preds = %.preheader.split
  br i1 %cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split63
  %i.cp = trunc i32 %i.cm to i16
  %i.cq = getelementptr [2 x i8], ptr %i.bb, i64 %.0
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !240
  br label %PyUnicode_WRITE.exit

bb.r:                                             ; preds = %.split63
  %i.cr = getelementptr [4 x i8], ptr %i.bb, i64 %.0
  store i32 %i.cm, ptr %i.cr, align 4, !tbaa !43
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.r, %bb.q
  %i.cs = add i64 %.0, 1                          ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ca, i64 4      ; 3 uses
  %.not84 = icmp ugt ptr %i.ct, %i.bc
  br i1 %.not84, label %.loopexit, label %.preheader.split, !llvm.loop !576

.preheader118.split:                              ; preds = %.preheader118, %PyUnicode_WRITE.exit90
  %i.cu = phi ptr [ %i.dm, %PyUnicode_WRITE.exit90 ], [ %i.av, %.preheader118 ] ; 5 uses
  %.1 = phi i64 [ %i.dl, %PyUnicode_WRITE.exit90 ], [ %i.bd, %.preheader118 ] ; 4 uses
  %19 = load i16, ptr %i.cu, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %i.cv = zext i16 %20 to i32
  %i.cw = shl nuw i32 %i.cv, 16
  %i.cx = getelementptr i8, ptr %i.cu, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !237
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = or disjoint i32 %i.cw, %i.da            ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cu, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !237
  %i.de = zext i8 %i.dd to i32
  %i.df = or disjoint i32 %i.db, %i.de            ; 5 uses
  %i.dg = icmp ugt i32 %i.df, %.0.i
  %i.dh = and i32 %i.db, -2048
  %.not115 = icmp eq i32 %i.dh, 55296
  %or.cond130 = or i1 %i.dg, %.not115
  br i1 %or.cond130, label %.loopexit, label %.split65

.split65:                                         ; preds = %.preheader118.split
  br i1 %cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.split65
  %i.di = trunc i32 %i.df to i16
  %i.dj = getelementptr [2 x i8], ptr %i.bb, i64 %.1
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !240
  br label %PyUnicode_WRITE.exit90

bb.t:                                             ; preds = %.split65
  %i.dk = getelementptr [4 x i8], ptr %i.bb, i64 %.1
  store i32 %i.df, ptr %i.dk, align 4, !tbaa !43
  br label %PyUnicode_WRITE.exit90

PyUnicode_WRITE.exit90:                           ; preds = %bb.t, %bb.s
  %i.dl = add i64 %.1, 1                          ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cu, i64 4      ; 3 uses
  %.not81 = icmp ugt ptr %i.dm, %i.bc
  br i1 %.not81, label %.loopexit, label %.preheader118.split, !llvm.loop !575

.loopexit:                                        ; preds = %PyUnicode_WRITE.exit90, %.preheader118.split, %.split64.us, %.preheader118.split.us, %PyUnicode_WRITE.exit, %.preheader.split, %.split.us, %.preheader.split.us
  %i.dn = phi ptr [ %i.be, %.preheader118.split.us ], [ %i.bj, %.preheader.split.us ], [ %i.ct, %PyUnicode_WRITE.exit ], [ %i.bz, %.split.us ], [ %i.ca, %.preheader.split ], [ %i.bi, %.split64.us ], [ %i.dm, %PyUnicode_WRITE.exit90 ], [ %i.cu, %.preheader118.split ] ; 5 uses
  %.055 = phi i32 [ %18, %.split64.us ], [ %i.bv, %.split.us ], [ %i.cm, %PyUnicode_WRITE.exit ], [ %i.bv, %.preheader.split.us ], [ %i.cm, %.preheader.split ], [ %18, %.preheader118.split.us ], [ %i.df, %.preheader118.split ], [ %i.df, %PyUnicode_WRITE.exit90 ] ; 8 uses
  %i.do = phi i64 [ %.1.us, %.preheader118.split.us ], [ %.0.us, %.preheader.split.us ], [ %i.cs, %PyUnicode_WRITE.exit ], [ %i.by, %.split.us ], [ %.0, %.preheader.split ], [ %i.bh, %.split64.us ], [ %i.dl, %PyUnicode_WRITE.exit90 ], [ %.1, %.preheader118.split ] ; 3 uses
  store ptr %i.dn, ptr %i.d, align 8
  store i64 %i.do, ptr %i.am, align 8, !tbaa !249
  %i.dp = and i32 %.055, -2048
  %.not117 = icmp eq i32 %i.dp, 55296
  br i1 %.not117, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds                    ; 2 uses
  store i64 %i.dt, ptr %i.b, align 8, !tbaa !226
  %i.du = add i64 %i.dt, 4
  br label %bb.ag

bb.v:                                             ; preds = %.loopexit
  %.not86 = icmp ugt i32 %.055, %.0.i
  br i1 %.not86, label %bb.x, label %.thread106

.thread106:                                       ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %bb.v
  %i.dv = phi ptr [ %i.av, %PyUnicode_MAX_CHAR_VALUE.exit ], [ %i.dn, %bb.v ] ; 3 uses
  %i.dw = icmp eq ptr %i.dv, %i.au
  %or.cond3 = or i1 %i.an, %i.dw
  br i1 %or.cond3, label %bb.ah, label %bb.w

bb.w:                                             ; preds = %.thread106
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.dy = ptrtoint ptr %i.dv to i64
  %i.dz = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ea = sub i64 %i.dy, %i.dz
  store i64 %i.ea, ptr %i.b, align 8, !tbaa !226
  %i.eb = sub i64 %i.aw, %i.dz
  br label %bb.ag

bb.x:                                             ; preds = %bb.v
  %i.ec = icmp ult i32 %.055, 1114112
  br i1 %i.ec, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.ed = load i32, ptr %i.y, align 4, !tbaa !247
  %.not.i91 = icmp ugt i32 %.055, %i.ed
  br i1 %.not.i91, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = load i64, ptr %i.ao, align 8, !tbaa !248
  %i.ef = sub i64 %i.ee, %i.do
  %i.eg = icmp sgt i64 %i.ef, 0
  br i1 %i.eg, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eh = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %5, i64 noundef 1, i32 noundef %.055) #33
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %.thread110, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.aa
  %.pre.i = load i64, ptr %i.am, align 8, !tbaa !249
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.z
  %i.ej = phi i64 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.do, %bb.z ] ; 5 uses
  %i.ek = load i32, ptr %i.ak, align 8, !tbaa !250
  %i.el = load ptr, ptr %i.al, align 8, !tbaa !251 ; 3 uses
  switch i32 %i.ek, label %bb.ad [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
  ]

bb.ab:                                            ; preds = %.critedge.i
  %i.em = trunc i32 %.055 to i8
  %i.en = getelementptr i8, ptr %i.el, i64 %i.ej
  store i8 %i.em, ptr %i.en, align 1, !tbaa !237
  %.pre11.i = load i64, ptr %i.am, align 8, !tbaa !249
  br label %bb.ae

bb.ac:                                            ; preds = %.critedge.i
  %i.eo = trunc i32 %.055 to i16
  %i.ep = getelementptr [2 x i8], ptr %i.el, i64 %i.ej
  store i16 %i.eo, ptr %i.ep, align 2, !tbaa !240
  br label %bb.ae

bb.ad:                                            ; preds = %.critedge.i
  %i.eq = getelementptr [4 x i8], ptr %i.el, i64 %i.ej
  store i32 %.055, ptr %i.eq, align 4, !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.er = phi i64 [ %.pre11.i, %bb.ab ], [ %i.ej, %bb.ac ], [ %i.ej, %bb.ad ]
  %i.es = add i64 %i.er, 1
  store i64 %i.es, ptr %i.am, align 8, !tbaa !249
  %i.et = getelementptr i8, ptr %i.dn, i64 4
  store ptr %i.et, ptr %i.d, align 8, !tbaa !259
  br label %select.unfold.backedge

bb.af:                                            ; preds = %bb.x
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.ev = ptrtoint ptr %i.dn to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  store i64 %i.ex, ptr %i.b, align 8, !tbaa !226
  %i.ey = add i64 %i.ex, 4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.af, %bb.u
  %.sink = phi i64 [ %i.eb, %bb.w ], [ %i.ey, %bb.af ], [ %i.du, %bb.u ]
  %.058 = phi ptr [ @.str.74, %bb.w ], [ @.str.75, %bb.af ], [ @.str.73, %bb.u ]
  store i64 %.sink, ptr %i.c, align 8, !tbaa !226
  %i.ez = call fastcc i32 @unicode_decode_call_errorhandler_writer(ptr noundef %2, ptr noundef %i.f, ptr noundef nonnull %i.r, ptr noundef nonnull %.058, ptr noundef %i.a, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.g, ptr noundef %i.d, ptr noundef nonnull %5)
  %.not87 = icmp eq i32 %i.ez, 0
  br i1 %.not87, label %select.unfold.backedge, label %.thread110

select.unfold.backedge:                           ; preds = %bb.ag, %bb.ae
  br label %select.unfold

bb.ah:                                            ; preds = %.thread106
  %.not88 = icmp eq ptr %4, null
  br i1 %.not88, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !259
  %i.fb = ptrtoint ptr %i.dv to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  store i64 %i.fd, ptr %4, align 8, !tbaa !226
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fe = load ptr, ptr %i.f, align 8, !tbaa !227 ; 4 uses
  %.not.i93 = icmp eq ptr %i.fe, null
  br i1 %.not.i93, label %Py_XDECREF.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !237 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ff, -1
  br i1 %.not.i.i, label %bb.al, label %Py_XDECREF.exit

bb.al:                                            ; preds = %bb.ak
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.fe, align 8, !tbaa !237
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.am, label %Py_XDECREF.exit

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %i.fe) #33
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !227 ; 4 uses
  %.not.i94 = icmp eq ptr %i.fi, null
  br i1 %.not.i94, label %Py_XDECREF.exit96, label %bb.an

bb.an:                                            ; preds = %Py_XDECREF.exit
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !237 ; 2 uses
  %.not.i.i95 = icmp sgt i32 %i.fj, -1
  br i1 %.not.i.i95, label %bb.ao, label %Py_XDECREF.exit96

bb.ao:                                            ; preds = %bb.an
  %i.fk = add nsw i32 %i.fj, -1                   ; 2 uses
  store i32 %i.fk, ptr %i.fi, align 8, !tbaa !237
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.ap, label %Py_XDECREF.exit96

bb.ap:                                            ; preds = %bb.ao
  call void @_Py_Dealloc(ptr noundef nonnull %i.fi) #33
  br label %Py_XDECREF.exit96

Py_XDECREF.exit96:                                ; preds = %Py_XDECREF.exit, %bb.an, %bb.ao, %bb.ap
  %i.fm = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %5) #33
  br label %Py_XDECREF.exit102

.thread110:                                       ; preds = %bb.aa, %bb.ag
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !227 ; 4 uses
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  %.not.i97 = icmp eq ptr %.pre, null
  br i1 %.not.i97, label %Py_XDECREF.exit99, label %bb.aq

bb.aq:                                            ; preds = %.thread110
  %i.fn = load i32, ptr %.pre, align 8, !tbaa !237 ; 2 uses
  %.not.i.i98 = icmp sgt i32 %i.fn, -1
  br i1 %.not.i.i98, label %bb.ar, label %Py_XDECREF.exit99

bb.ar:                                            ; preds = %bb.aq
  %i.fo = add nsw i32 %i.fn, -1                   ; 2 uses
  store i32 %i.fo, ptr %.pre, align 8, !tbaa !237
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.as, label %Py_XDECREF.exit99

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %.pre) #33
  br label %Py_XDECREF.exit99

Py_XDECREF.exit99:                                ; preds = %.thread110.thread, %.thread110, %bb.aq, %bb.ar, %bb.as
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !227 ; 4 uses
  %.not.i100 = icmp eq ptr %i.fq, null
  br i1 %.not.i100, label %Py_XDECREF.exit102, label %bb.at

bb.at:                                            ; preds = %Py_XDECREF.exit99
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !237 ; 2 uses
  %.not.i.i101 = icmp sgt i32 %i.fr, -1
  br i1 %.not.i.i101, label %bb.au, label %Py_XDECREF.exit102
end_hunk_0
