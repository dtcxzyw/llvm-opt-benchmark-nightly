inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@unicode_encode_call_errorhandler:bb.a
  %.not.i38 = icmp sgt i32 %i.am, -1
  br i1 %.not.i38, label %bb.u, label %Py_DECREF.exit45

bb.u:                                             ; preds = %bb.t
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.j, align 8, !tbaa !205
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.v, label %Py_DECREF.exit45

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #33
  br label %Py_DECREF.exit45

bb.w:                                             ; preds = %bb.s
  %i.ap = load i32, ptr %i.w, align 8, !tbaa !205 ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, -1073741825
  br i1 %i.aq, label %Py_INCREF.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = add nuw i32 %i.ap, 1
  store i32 %i.ar, ptr %i.w, align 8, !tbaa !205
  br label %Py_INCREF.exit

Py_INCREF.exit:                                   ; preds = %bb.w, %bb.x
  %i.as = load i32, ptr %i.j, align 8, !tbaa !205 ; 2 uses
  %.not.i = icmp sgt i32 %i.as, -1
  br i1 %.not.i, label %bb.y, label %Py_DECREF.exit

bb.y:                                             ; preds = %Py_INCREF.exit
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.j, align 8, !tbaa !205
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.z, label %Py_DECREF.exit

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %i.j) #33
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_INCREF.exit, %bb.y, %bb.z
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !194
  br label %Py_DECREF.exit45

Py_DECREF.exit45:                                 ; preds = %bb.v, %bb.u, %bb.t, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %Py_DECREF.exit
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.p ], [ %i.av, %Py_DECREF.exit ], [ null, %bb.l ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.j ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @raise_encode_exception(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  tail call fastcc void @make_encode_exception(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5)
  %i.a = load ptr, ptr %0, align 8, !tbaa !194    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyCodec_StrictErrors(ptr noundef nonnull %i.a) #33 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsUTF32String(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_PyUnicode_EncodeUTF32(ptr noundef %0, ptr noundef null, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_DecodeUTF16Stateful(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct._PyUnicodeWriter, align 8   ; 18 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %0, ptr %i.a, align 8, !tbaa !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr null, ptr %i.f, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr null, ptr %i.g, align 8, !tbaa !194
  store ptr %0, ptr %i.d, align 8, !tbaa !355
  %i.h = getelementptr i8, ptr %0, i64 %1         ; 4 uses
  store ptr %i.h, ptr %i.e, align 8, !tbaa !355
  %.not = icmp eq ptr %3, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %3, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.041 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %i.j = icmp eq i32 %.041, 0
  %i.k = icmp sgt i64 %1, 1
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = load i16, ptr %0, align 1
  switch i16 %i.l, label %bb.f [
    i16 -257, label %.sink.split
    i16 -2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.142.ph = phi i32 [ 1, %bb.e ], [ -1, %bb.d ]
  %i.m = getelementptr i8, ptr %0, i64 2          ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !355
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %i.n = phi ptr [ %0, %bb.d ], [ %i.m, %.sink.split ] ; 2 uses
  %.142 = phi i32 [ 0, %bb.d ], [ %.142.ph, %.sink.split ] ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.142, ptr %3, align 4, !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c
  %.pre350 = phi ptr [ %0, %bb.c ], [ %i.n, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  %.2 = phi i32 [ %.041, %bb.c ], [ %.142, %bb.g ], [ %.142, %bb.f ]
  %i.o = icmp eq ptr %.pre350, %i.h
  br i1 %i.o, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not56 = icmp eq ptr %4, null
  br i1 %.not56, label %Py_XDECREF.exit159, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %1, ptr %4, align 8, !tbaa !193
  br label %Py_XDECREF.exit159

bb.k:                                             ; preds = %bb.h
  %i.p = icmp slt i32 %.2, 1                      ; 7 uses
  %i.q = select i1 %i.p, ptr @.str.78, ptr @.str.79
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %5) #33
  %i.r = ptrtoint ptr %i.h to i64
  %i.s = ptrtoint ptr %.pre350 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = add i64 %i.t, 1
  %i.v = sdiv i64 %i.u, 2                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.v, ptr %i.w, align 8, !tbaa !346
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !276
  %i.z = icmp ugt i32 %i.y, 126
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !278
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !279
  %i.ae = sub i64 %i.ab, %i.ad
  %i.af = icmp sle i64 %i.v, %i.ae
  %.off51 = add i64 %i.t, 2
  %i.ag = icmp ult i64 %.off51, 3
  %or.cond6 = or i1 %i.ag, %i.af
  br i1 %or.cond6, label %.preheader, label %bb.n

bb.m:                                             ; preds = %bb.k
  %.off = add i64 %i.t, 2
  %.old5 = icmp ult i64 %.off, 3
  br i1 %.old5, label %.preheader, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ah = call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %5, i64 noundef %i.v, i32 noundef 127) #33
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %.thread165.thread, label %.preheader

.thread165.thread:                                ; preds = %bb.n
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %5) #33
  br label %Py_XDECREF.exit156

.preheader:                                       ; preds = %bb.l, %bb.m, %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  %i.am = xor i1 %i.p, true
  %i.an = zext i1 %i.p to i64                     ; 8 uses
  %i.ao = zext i1 %i.am to i64                    ; 8 uses
  %.not53 = icmp eq ptr %4, null                  ; 2 uses
  %i.ap = icmp ne ptr %4, null
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.preheader, %select.unfold
  %i.ar = phi ptr [ %.pre350, %.preheader ], [ %i.pu, %select.unfold ] ; 21 uses
  %i.as = phi ptr [ %i.h, %.preheader ], [ %.pre, %select.unfold ] ; 5 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp sgt i64 %i.av, 1
  br i1 %i.aw, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ax = load i32, ptr %i.aj, align 8, !tbaa !280
  switch i32 %i.ax, label %bb.as [
    i32 1, label %bb.q
    i32 2, label %bb.al
  ]

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %5, align 8, !tbaa !352
  %i.az = getelementptr i8, ptr %i.ay, i64 32
  %.val = load i32, ptr %i.az, align 8
  %i.ba = and i32 %.val, 64
  %.not52 = icmp eq i32 %i.ba, 0
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !281 ; 3 uses
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !193
  %i.bd = getelementptr i8, ptr %i.bb, i64 %i.bc  ; 8 uses
  %i.be = getelementptr i8, ptr %i.as, i64 -1     ; 19 uses
  %i.bf = icmp ult ptr %i.ar, %i.be               ; 4 uses
  br i1 %.not52, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.p, label %.split.i.preheader, label %.split.us.i.preheader

.split.us.i.preheader:                            ; preds = %bb.r
  br i1 %i.bf, label %.lr.ph228, label %asciilib_utf16_decode.exit

.split.i.preheader:                               ; preds = %bb.r
  br i1 %i.bf, label %.lr.ph240, label %asciilib_utf16_decode.exit

.lr.ph228:                                        ; preds = %.split.us.i.preheader, %.split.us.i
  %.067.us.i227 = phi ptr [ %i.bs, %.split.us.i ], [ %i.bd, %.split.us.i.preheader ] ; 3 uses
  %.070.us.i226 = phi ptr [ %i.bp, %.split.us.i ], [ %i.ar, %.split.us.i.preheader ] ; 5 uses
  %i.bg = ptrtoint ptr %.070.us.i226 to i64
  %i.bh = and i64 %i.bg, 7
  %.not81.us.i = icmp eq i64 %i.bh, 0
  br i1 %.not81.us.i, label %.preheader.us.i, label %bb.s

.thread.us.i:                                     ; preds = %bb.u, %.lr.ph.us.i, %.preheader.us.i
  %.168.lcssa.us.i = phi ptr [ %.067.us.i227, %.preheader.us.i ], [ %i.cj, %bb.u ], [ %.168128.us.us.i, %.lr.ph.us.i ] ; 2 uses
  %.060.lcssa.us.i = phi ptr [ %.070.us.i226, %.preheader.us.i ], [ %i.bv, %bb.u ], [ %.060129.us.us.i, %.lr.ph.us.i ] ; 3 uses
  %.not85.us.i = icmp ult ptr %.060.lcssa.us.i, %i.be
  br i1 %.not85.us.i, label %bb.s, label %asciilib_utf16_decode.exit

bb.s:                                             ; preds = %.thread.us.i, %.lr.ph228
  %.171.us.i = phi ptr [ %.070.us.i226, %.lr.ph228 ], [ %.060.lcssa.us.i, %.thread.us.i ] ; 4 uses
  %.4.us.i = phi ptr [ %.067.us.i227, %.lr.ph228 ], [ %.168.lcssa.us.i, %.thread.us.i ] ; 4 uses
  %i.bi = load i8, ptr %.171.us.i, align 1, !tbaa !205
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr i8, ptr %.171.us.i, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !205 ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bk, %i.bn            ; 3 uses
  %i.bp = getelementptr i8, ptr %.171.us.i, i64 2 ; 5 uses
  %i.bq = and i32 %i.bj, 248
  %.not120.us.i = icmp eq i32 %i.bq, 216
  br i1 %.not120.us.i, label %.split143.us.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = icmp samesign ugt i32 %i.bo, 127
  br i1 %i.br, label %asciilib_utf16_decode.exit, label %.split.us.i

.split.us.i:                                      ; preds = %bb.t
  %i.bs = getelementptr i8, ptr %.4.us.i, i64 1   ; 2 uses
  store i8 %i.bm, ptr %.4.us.i, align 1, !tbaa !205
  %i.bt = icmp ult ptr %i.bp, %i.be
  br i1 %i.bt, label %.lr.ph228, label %asciilib_utf16_decode.exit

.preheader.us.i:                                  ; preds = %.lr.ph228
  %i.bu = getelementptr i8, ptr %.070.us.i226, i64 8 ; 2 uses
  %.not82127.us.i = icmp ugt ptr %i.bu, %i.be
  br i1 %.not82127.us.i, label %.thread.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.preheader.us.i, %bb.u
  %i.bv = phi ptr [ %i.ck, %bb.u ], [ %i.bu, %.preheader.us.i ] ; 3 uses
  %.060129.us.us.i = phi ptr [ %i.bv, %bb.u ], [ %.070.us.i226, %.preheader.us.i ] ; 2 uses
  %.168128.us.us.i = phi ptr [ %i.cj, %bb.u ], [ %.067.us.i227, %.preheader.us.i ] ; 6 uses
  %i.bw = load i64, ptr %.060129.us.us.i, align 8, !tbaa !193 ; 5 uses
  %i.bx = and i64 %i.bw, -9151454082924314369
  %.not83.us.us.i = icmp eq i64 %i.bx, 0
  br i1 %.not83.us.us.i, label %bb.u, label %.thread.us.i

bb.u:                                             ; preds = %.lr.ph.us.i
  %i.by = lshr exact i64 %i.bw, 8
  %i.bz = trunc i64 %i.by to i8
  store i8 %i.bz, ptr %.168128.us.us.i, align 1, !tbaa !205
  %i.ca = lshr i64 %i.bw, 24
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = getelementptr i8, ptr %.168128.us.us.i, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !205
  %i.cd = lshr i64 %i.bw, 40
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = getelementptr i8, ptr %.168128.us.us.i, i64 2
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !205
  %i.cg = lshr i64 %i.bw, 56
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  %i.ci = getelementptr i8, ptr %.168128.us.us.i, i64 3
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !205
  %i.cj = getelementptr i8, ptr %.168128.us.us.i, i64 4 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bv, i64 8      ; 2 uses
  %.not82.us.us.i = icmp ugt ptr %i.ck, %i.be
  br i1 %.not82.us.us.i, label %.thread.us.i, label %.lr.ph.us.i

.lr.ph240:                                        ; preds = %.split.i.preheader, %.split.i
  %.067.i239 = phi ptr [ %i.ed, %.split.i ], [ %i.bd, %.split.i.preheader ] ; 3 uses
  %.070.i238 = phi ptr [ %i.dl, %.split.i ], [ %i.ar, %.split.i.preheader ] ; 5 uses
  %i.cl = ptrtoint ptr %.070.i238 to i64
  %i.cm = and i64 %i.cl, 7
  %.not81.i = icmp eq i64 %i.cm, 0
  br i1 %.not81.i, label %.preheader.i, label %bb.w

.preheader.i:                                     ; preds = %.lr.ph240
  %i.cn = getelementptr i8, ptr %.070.i238, i64 8 ; 2 uses
  %.not82127.i = icmp ugt ptr %i.cn, %i.be
  br i1 %.not82127.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.v
  %i.co = phi ptr [ %i.dc, %bb.v ], [ %i.cn, %.preheader.i ] ; 3 uses
  %.060129.i = phi ptr [ %i.co, %bb.v ], [ %.070.i238, %.preheader.i ] ; 2 uses
  %.168128.i = phi ptr [ %i.db, %bb.v ], [ %.067.i239, %.preheader.i ] ; 6 uses
  %i.cp = load i64, ptr %.060129.i, align 8, !tbaa !193 ; 5 uses
  %i.cq = and i64 %i.cp, -35747867511423104
  %.not84.i = icmp eq i64 %i.cq, 0
  br i1 %.not84.i, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.cr = trunc i64 %i.cp to i8
  store i8 %i.cr, ptr %.168128.i, align 1, !tbaa !205
  %i.cs = lshr i64 %i.cp, 16
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr i8, ptr %.168128.i, i64 1
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !205
  %i.cv = lshr i64 %i.cp, 32
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = getelementptr i8, ptr %.168128.i, i64 2
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !205
  %i.cy = lshr i64 %i.cp, 48
  %i.cz = trunc nuw nsw i64 %i.cy to i8
  %i.da = getelementptr i8, ptr %.168128.i, i64 3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !205
  %i.db = getelementptr i8, ptr %.168128.i, i64 4 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.co, i64 8      ; 2 uses
  %.not82.i = icmp ugt ptr %i.dc, %i.be
  br i1 %.not82.i, label %.thread.i, label %.lr.ph.i

.thread.i:                                        ; preds = %bb.v, %.lr.ph.i, %.preheader.i
  %.168.lcssa.i = phi ptr [ %.067.i239, %.preheader.i ], [ %i.db, %bb.v ], [ %.168128.i, %.lr.ph.i ] ; 2 uses
  %.060.lcssa.i = phi ptr [ %.070.i238, %.preheader.i ], [ %i.co, %bb.v ], [ %.060129.i, %.lr.ph.i ] ; 3 uses
  %.not85.i = icmp ult ptr %.060.lcssa.i, %i.be
  br i1 %.not85.i, label %bb.w, label %asciilib_utf16_decode.exit

bb.w:                                             ; preds = %.thread.i, %.lr.ph240
  %.171.i = phi ptr [ %.070.i238, %.lr.ph240 ], [ %.060.lcssa.i, %.thread.i ] ; 4 uses
  %.4.i = phi ptr [ %.067.i239, %.lr.ph240 ], [ %.168.lcssa.i, %.thread.i ] ; 4 uses
  %i.dd = getelementptr i8, ptr %.171.i, i64 %i.an
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !205
  %i.df = zext i8 %i.de to i32                    ; 3 uses
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = getelementptr i8, ptr %.171.i, i64 %i.ao
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !205 ; 2 uses
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj            ; 3 uses
  %i.dl = getelementptr i8, ptr %.171.i, i64 2    ; 5 uses
  %i.dm = and i32 %i.df, 248
  %.not120.i = icmp eq i32 %i.dm, 216
  br i1 %.not120.i, label %.split143.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dn = icmp samesign ugt i32 %i.dk, 127
  br i1 %i.dn, label %asciilib_utf16_decode.exit, label %.split.i

.split143.us.i:                                   ; preds = %bb.s, %bb.w
  %.us-phi144.i = phi ptr [ %.171.i, %bb.w ], [ %.171.us.i, %bb.s ]
  %.us-phi145.i = phi ptr [ %.4.i, %bb.w ], [ %.4.us.i, %bb.s ] ; 4 uses
  %.us-phi147.i = phi i32 [ %i.df, %bb.w ], [ %i.bj, %bb.s ]
  %.us-phi149.i = phi i32 [ %i.dk, %bb.w ], [ %i.bo, %bb.s ]
  %.us-phi150.i = phi ptr [ %i.dl, %bb.w ], [ %i.bp, %bb.s ] ; 5 uses
  %i.do = and i32 %.us-phi147.i, 220
  %.not121.i = icmp eq i32 %i.do, 216
  br i1 %.not121.i, label %bb.y, label %asciilib_utf16_decode.exit

bb.y:                                             ; preds = %.split143.us.i
  %.not88.i = icmp ult ptr %.us-phi150.i, %i.be
  br i1 %.not88.i, label %bb.z, label %asciilib_utf16_decode.exit

bb.z:                                             ; preds = %bb.y
  %i.dp = getelementptr i8, ptr %.us-phi150.i, i64 %i.an
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !205
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = getelementptr i8, ptr %.us-phi144.i, i64 4 ; 2 uses
  %i.dt = and i32 %i.dr, 252
  %.not122.i = icmp eq i32 %i.dt, 220
  br i1 %.not122.i, label %bb.aa, label %asciilib_utf16_decode.exit

bb.aa:                                            ; preds = %bb.z
  %i.du = shl nuw nsw i32 %i.dr, 8
  %i.dv = getelementptr i8, ptr %.us-phi150.i, i64 %i.ao
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !205
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %.us-phi149.i, 10
  %i.dz = and i32 %i.dy, 1047552
  %.masked.i = and i32 %i.du, 768
  %i.ea = or disjoint i32 %.masked.i, %i.dx
  %i.eb = add nuw nsw i32 %i.dz, 65536
  %i.ec = or disjoint i32 %i.ea, %i.eb
  br label %asciilib_utf16_decode.exit

.split.i:                                         ; preds = %bb.x
  %i.ed = getelementptr i8, ptr %.4.i, i64 1      ; 2 uses
  store i8 %i.di, ptr %.4.i, align 1, !tbaa !205
  %i.ee = icmp ult ptr %i.dl, %i.be
  br i1 %i.ee, label %.lr.ph240, label %asciilib_utf16_decode.exit

asciilib_utf16_decode.exit:                       ; preds = %bb.t, %.thread.us.i, %.split.us.i, %bb.x, %.thread.i, %.split.i, %.split.us.i.preheader, %.split.i.preheader, %.split143.us.i, %bb.y, %bb.z, %bb.aa
  %.474.i = phi ptr [ %.us-phi150.i, %bb.y ], [ %i.ds, %bb.aa ], [ %i.ds, %bb.z ], [ %.us-phi150.i, %.split143.us.i ], [ %i.dl, %.split.i ], [ %i.ar, %.split.i.preheader ], [ %i.ar, %.split.us.i.preheader ], [ %.060.lcssa.i, %.thread.i ], [ %i.dl, %bb.x ], [ %i.bp, %bb.t ], [ %i.bp, %.split.us.i ], [ %.060.lcssa.us.i, %.thread.us.i ] ; 2 uses
  %.7.i = phi ptr [ %.us-phi145.i, %bb.y ], [ %.us-phi145.i, %bb.aa ], [ %.us-phi145.i, %bb.z ], [ %.us-phi145.i, %.split143.us.i ], [ %i.ed, %.split.i ], [ %i.bd, %.split.i.preheader ], [ %i.bd, %.split.us.i.preheader ], [ %.168.lcssa.i, %.thread.i ], [ %.4.i, %bb.x ], [ %.4.us.i, %bb.t ], [ %i.bs, %.split.us.i ], [ %.168.lcssa.us.i, %.thread.us.i ]
  %.266.i = phi i32 [ 1, %bb.y ], [ %i.ec, %bb.aa ], [ 3, %bb.z ], [ 2, %.split143.us.i ], [ 0, %.split.i ], [ 0, %.split.i.preheader ], [ 0, %.split.us.i.preheader ], [ 0, %.thread.i ], [ %i.dk, %bb.x ], [ %i.bo, %bb.t ], [ 0, %.split.us.i ], [ 0, %.thread.us.i ]
  store ptr %.474.i, ptr %i.d, align 8, !tbaa !355
  %i.ef = ptrtoint ptr %.7.i to i64
  %i.eg = ptrtoint ptr %i.bb to i64
  %i.eh = sub i64 %i.ef, %i.eg
  br label %bb.bf

bb.ab:                                            ; preds = %bb.q
  br i1 %i.p, label %.split.i59.preheader, label %.split.us.i79.preheader

.split.us.i79.preheader:                          ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph252, label %ucs1lib_utf16_decode.exit

.split.i59.preheader:                             ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph259, label %ucs1lib_utf16_decode.exit

.lr.ph252:                                        ; preds = %.split.us.i79.preheader, %.split.us.i79
  %.067.us.i81251 = phi ptr [ %i.eq, %.split.us.i79 ], [ %i.bd, %.split.us.i79.preheader ] ; 3 uses
  %.070.us.i80250 = phi ptr [ %i.eo, %.split.us.i79 ], [ %i.ar, %.split.us.i79.preheader ] ; 5 uses
  %i.ei = ptrtoint ptr %.070.us.i80250 to i64
  %i.ej = and i64 %i.ei, 7
  %.not81.us.i82 = icmp eq i64 %i.ej, 0
  br i1 %.not81.us.i82, label %.preheader.us.i85, label %bb.ac

.thread.us.i88:                                   ; preds = %bb.ae, %.lr.ph.us.i86, %.preheader.us.i85
  %.168.lcssa.us.i89 = phi ptr [ %.067.us.i81251, %.preheader.us.i85 ], [ %i.fh, %bb.ae ], [ %.168129.us.us.i, %.lr.ph.us.i86 ] ; 2 uses
  %.060.lcssa.us.i90 = phi ptr [ %.070.us.i80250, %.preheader.us.i85 ], [ %i.et, %bb.ae ], [ %.060130.us.us.i, %.lr.ph.us.i86 ] ; 3 uses
  %.not85.us.i91 = icmp ult ptr %.060.lcssa.us.i90, %i.be
  br i1 %.not85.us.i91, label %bb.ac, label %ucs1lib_utf16_decode.exit

bb.ac:                                            ; preds = %.thread.us.i88, %.lr.ph252
  %.171.us.i83 = phi ptr [ %.070.us.i80250, %.lr.ph252 ], [ %.060.lcssa.us.i90, %.thread.us.i88 ] ; 4 uses
  %.4.us.i84 = phi ptr [ %.067.us.i81251, %.lr.ph252 ], [ %.168.lcssa.us.i89, %.thread.us.i88 ] ; 4 uses
  %i.ek = load i8, ptr %.171.us.i83, align 1, !tbaa !205 ; 2 uses
  %i.el = zext i8 %i.ek to i32                    ; 3 uses
  %i.em = getelementptr i8, ptr %.171.us.i83, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !205 ; 3 uses
  %i.eo = getelementptr i8, ptr %.171.us.i83, i64 2 ; 5 uses
  %i.ep = and i32 %i.el, 248
  %.not121.us.i = icmp eq i32 %i.ep, 216
  br i1 %.not121.us.i, label %.split160.us.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not87.us.i = icmp eq i8 %i.ek, 0
  br i1 %.not87.us.i, label %.split.us.i79, label %.thread107.loopexit.split.loop.exit141.i

.split.us.i79:                                    ; preds = %bb.ad
  %i.eq = getelementptr i8, ptr %.4.us.i84, i64 1 ; 2 uses
  store i8 %i.en, ptr %.4.us.i84, align 1, !tbaa !205
  %i.er = icmp ult ptr %i.eo, %i.be
  br i1 %i.er, label %.lr.ph252, label %ucs1lib_utf16_decode.exit

.preheader.us.i85:                                ; preds = %.lr.ph252
  %i.es = getelementptr i8, ptr %.070.us.i80250, i64 8 ; 2 uses
  %.not82128.us.i = icmp ugt ptr %i.es, %i.be
  br i1 %.not82128.us.i, label %.thread.us.i88, label %.lr.ph.us.i86

.lr.ph.us.i86:                                    ; preds = %.preheader.us.i85, %bb.ae
  %i.et = phi ptr [ %i.fi, %bb.ae ], [ %i.es, %.preheader.us.i85 ] ; 3 uses
  %.060130.us.us.i = phi ptr [ %i.et, %bb.ae ], [ %.070.us.i80250, %.preheader.us.i85 ] ; 2 uses
  %.168129.us.us.i = phi ptr [ %i.fh, %bb.ae ], [ %.067.us.i81251, %.preheader.us.i85 ] ; 6 uses
  %i.eu = load i64, ptr %.060130.us.us.i, align 8, !tbaa !193 ; 5 uses
  %i.ev = and i64 %i.eu, 71777214294589695
  %.not83.us.us.i87 = icmp eq i64 %i.ev, 0
  br i1 %.not83.us.us.i87, label %bb.ae, label %.thread.us.i88

bb.ae:                                            ; preds = %.lr.ph.us.i86
  %i.ew = lshr exact i64 %i.eu, 8
  %i.ex = trunc i64 %i.ew to i8
  store i8 %i.ex, ptr %.168129.us.us.i, align 1, !tbaa !205
  %i.ey = lshr i64 %i.eu, 24
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = getelementptr i8, ptr %.168129.us.us.i, i64 1
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !205
  %i.fb = lshr i64 %i.eu, 40
  %i.fc = trunc i64 %i.fb to i8
  %i.fd = getelementptr i8, ptr %.168129.us.us.i, i64 2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !205
  %i.fe = lshr i64 %i.eu, 56
  %i.ff = trunc nuw i64 %i.fe to i8
  %i.fg = getelementptr i8, ptr %.168129.us.us.i, i64 3
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !205
  %i.fh = getelementptr i8, ptr %.168129.us.us.i, i64 4 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.et, i64 8      ; 2 uses
  %.not82.us.us.i92 = icmp ugt ptr %i.fi, %i.be
  br i1 %.not82.us.us.i92, label %.thread.us.i88, label %.lr.ph.us.i86

.lr.ph259:                                        ; preds = %.split.i59.preheader, %.split.i59
  %.067.i61258 = phi ptr [ %i.gz, %.split.i59 ], [ %i.bd, %.split.i59.preheader ] ; 3 uses
  %.070.i60257 = phi ptr [ %i.gg, %.split.i59 ], [ %i.ar, %.split.i59.preheader ] ; 5 uses
  %i.fj = ptrtoint ptr %.070.i60257 to i64
  %i.fk = and i64 %i.fj, 7
  %.not81.i65 = icmp eq i64 %i.fk, 0
  br i1 %.not81.i65, label %.preheader.i71, label %bb.ag

.preheader.i71:                                   ; preds = %.lr.ph259
  %i.fl = getelementptr i8, ptr %.070.i60257, i64 8 ; 2 uses
  %.not82128.i = icmp ugt ptr %i.fl, %i.be
  br i1 %.not82128.i, label %.thread.i74, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.preheader.i71, %bb.af
  %i.fm = phi ptr [ %i.ga, %bb.af ], [ %i.fl, %.preheader.i71 ] ; 3 uses
  %.060130.i = phi ptr [ %i.fm, %bb.af ], [ %.070.i60257, %.preheader.i71 ] ; 2 uses
  %.168129.i = phi ptr [ %i.fz, %bb.af ], [ %.067.i61258, %.preheader.i71 ] ; 6 uses
  %i.fn = load i64, ptr %.060130.i, align 8, !tbaa !193 ; 5 uses
  %i.fo = and i64 %i.fn, -71777214294589696
  %.not84.i73 = icmp eq i64 %i.fo, 0
  br i1 %.not84.i73, label %bb.af, label %.thread.i74

bb.af:                                            ; preds = %.lr.ph.i72
  %i.fp = trunc i64 %i.fn to i8
  store i8 %i.fp, ptr %.168129.i, align 1, !tbaa !205
  %i.fq = lshr i64 %i.fn, 16
  %i.fr = trunc i64 %i.fq to i8
  %i.fs = getelementptr i8, ptr %.168129.i, i64 1
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !205
  %i.ft = lshr i64 %i.fn, 32
  %i.fu = trunc i64 %i.ft to i8
  %i.fv = getelementptr i8, ptr %.168129.i, i64 2
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !205
  %i.fw = lshr i64 %i.fn, 48
  %i.fx = trunc nuw i64 %i.fw to i8
  %i.fy = getelementptr i8, ptr %.168129.i, i64 3
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !205
  %i.fz = getelementptr i8, ptr %.168129.i, i64 4 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fm, i64 8      ; 2 uses
  %.not82.i78 = icmp ugt ptr %i.ga, %i.be
  br i1 %.not82.i78, label %.thread.i74, label %.lr.ph.i72

.thread.i74:                                      ; preds = %bb.af, %.lr.ph.i72, %.preheader.i71
  %.168.lcssa.i75 = phi ptr [ %.067.i61258, %.preheader.i71 ], [ %i.fz, %bb.af ], [ %.168129.i, %.lr.ph.i72 ] ; 2 uses
  %.060.lcssa.i76 = phi ptr [ %.070.i60257, %.preheader.i71 ], [ %i.fm, %bb.af ], [ %.060130.i, %.lr.ph.i72 ] ; 3 uses
  %.not85.i77 = icmp ult ptr %.060.lcssa.i76, %i.be
  br i1 %.not85.i77, label %bb.ag, label %ucs1lib_utf16_decode.exit

bb.ag:                                            ; preds = %.thread.i74, %.lr.ph259
  %.171.i66 = phi ptr [ %.070.i60257, %.lr.ph259 ], [ %.060.lcssa.i76, %.thread.i74 ] ; 4 uses
  %.4.i67 = phi ptr [ %.067.i61258, %.lr.ph259 ], [ %.168.lcssa.i75, %.thread.i74 ] ; 4 uses
  %i.gb = getelementptr i8, ptr %.171.i66, i64 %i.an
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !205 ; 2 uses
  %i.gd = zext i8 %i.gc to i32                    ; 3 uses
  %i.ge = getelementptr i8, ptr %.171.i66, i64 %i.ao
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !205 ; 3 uses
  %i.gg = getelementptr i8, ptr %.171.i66, i64 2  ; 5 uses
  %i.gh = and i32 %i.gd, 248
  %.not121.i68 = icmp eq i32 %i.gh, 216
  br i1 %.not121.i68, label %.split160.us.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not87.i = icmp eq i8 %i.gc, 0
  br i1 %.not87.i, label %.split.i59, label %.thread107.loopexit.split.loop.exit141.i

.split160.us.i:                                   ; preds = %bb.ac, %bb.ag
  %.us-phi161.i = phi i32 [ %i.gd, %bb.ag ], [ %i.el, %bb.ac ] ; 2 uses
  %.us-phi162.i = phi i8 [ %i.gf, %bb.ag ], [ %i.en, %bb.ac ]
  %.us-phi163.i = phi ptr [ %.171.i66, %bb.ag ], [ %.171.us.i83, %bb.ac ]
  %.us-phi164.i = phi ptr [ %.4.i67, %bb.ag ], [ %.4.us.i84, %bb.ac ] ; 4 uses
  %.us-phi168.i = phi ptr [ %i.gg, %bb.ag ], [ %i.eo, %bb.ac ] ; 5 uses
  %i.gi = zext i8 %.us-phi162.i to i32
  %i.gj = and i32 %.us-phi161.i, 220
  %.not122.i69 = icmp eq i32 %i.gj, 216
  br i1 %.not122.i69, label %bb.ai, label %ucs1lib_utf16_decode.exit

bb.ai:                                            ; preds = %.split160.us.i
  %.not89.i = icmp ult ptr %.us-phi168.i, %i.be
  br i1 %.not89.i, label %bb.aj, label %ucs1lib_utf16_decode.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gk = getelementptr i8, ptr %.us-phi168.i, i64 %i.an
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !205
  %i.gm = zext i8 %i.gl to i32                    ; 2 uses
  %i.gn = getelementptr i8, ptr %.us-phi163.i, i64 4 ; 2 uses
  %i.go = and i32 %i.gm, 252
  %.not123.i = icmp eq i32 %i.go, 220
  br i1 %.not123.i, label %bb.ak, label %ucs1lib_utf16_decode.exit

bb.ak:                                            ; preds = %bb.aj
  %i.gp = shl nuw nsw i32 %i.gm, 8
  %i.gq = getelementptr i8, ptr %.us-phi168.i, i64 %i.ao
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !205
  %i.gs = zext i8 %i.gr to i32
  %i.gt = shl nuw nsw i32 %.us-phi161.i, 18
  %i.gu = shl nuw nsw i32 %i.gi, 10
  %.masked176.i = and i32 %i.gt, 786432
  %.masked.i70 = and i32 %i.gp, 768
  %i.gv = or disjoint i32 %.masked.i70, %i.gs
  %i.gw = or disjoint i32 %.masked176.i, 65536
  %i.gx = add nuw nsw i32 %i.gw, %i.gu
  %i.gy = or disjoint i32 %i.gx, %i.gv
  br label %ucs1lib_utf16_decode.exit

.split.i59:                                       ; preds = %bb.ah
  %i.gz = getelementptr i8, ptr %.4.i67, i64 1    ; 2 uses
  store i8 %i.gf, ptr %.4.i67, align 1, !tbaa !205
  %i.ha = icmp ult ptr %i.gg, %i.be
  br i1 %i.ha, label %.lr.ph259, label %ucs1lib_utf16_decode.exit

.thread107.loopexit.split.loop.exit141.i:         ; preds = %bb.ad, %bb.ah
  %.us-phi169.i = phi i32 [ %i.gd, %bb.ah ], [ %i.el, %bb.ad ]
  %.us-phi170.i = phi i8 [ %i.gf, %bb.ah ], [ %i.en, %bb.ad ]
  %.us-phi171.i = phi ptr [ %i.gg, %bb.ah ], [ %i.eo, %bb.ad ]
  %.us-phi172.i = phi ptr [ %.4.i67, %bb.ah ], [ %.4.us.i84, %bb.ad ]
  %i.hb = shl nuw nsw i32 %.us-phi169.i, 8
  %i.hc = zext i8 %.us-phi170.i to i32
  %i.hd = or disjoint i32 %i.hb, %i.hc
  br label %ucs1lib_utf16_decode.exit

ucs1lib_utf16_decode.exit:                        ; preds = %.thread.us.i88, %.split.us.i79, %.thread.i74, %.split.i59, %.split.us.i79.preheader, %.split.i59.preheader, %.split160.us.i, %bb.ai, %bb.aj, %bb.ak, %.thread107.loopexit.split.loop.exit141.i
  %.474.i62 = phi ptr [ %.us-phi168.i, %bb.ai ], [ %i.gn, %bb.ak ], [ %i.gn, %bb.aj ], [ %.us-phi168.i, %.split160.us.i ], [ %.us-phi171.i, %.thread107.loopexit.split.loop.exit141.i ], [ %i.ar, %.split.us.i79.preheader ], [ %i.ar, %.split.i59.preheader ], [ %i.gg, %.split.i59 ], [ %.060.lcssa.i76, %.thread.i74 ], [ %.060.lcssa.us.i90, %.thread.us.i88 ], [ %i.eo, %.split.us.i79 ] ; 2 uses
  %.7.i63 = phi ptr [ %.us-phi164.i, %bb.ai ], [ %.us-phi164.i, %bb.ak ], [ %.us-phi164.i, %bb.aj ], [ %.us-phi164.i, %.split160.us.i ], [ %.us-phi172.i, %.thread107.loopexit.split.loop.exit141.i ], [ %i.bd, %.split.us.i79.preheader ], [ %i.bd, %.split.i59.preheader ], [ %i.gz, %.split.i59 ], [ %.168.lcssa.i75, %.thread.i74 ], [ %.168.lcssa.us.i89, %.thread.us.i88 ], [ %i.eq, %.split.us.i79 ]
  %.266.i64 = phi i32 [ 1, %bb.ai ], [ %i.gy, %bb.ak ], [ 3, %bb.aj ], [ 2, %.split160.us.i ], [ %i.hd, %.thread107.loopexit.split.loop.exit141.i ], [ 0, %.split.us.i79.preheader ], [ 0, %.split.i59.preheader ], [ 0, %.thread.i74 ], [ 0, %.split.i59 ], [ 0, %.split.us.i79 ], [ 0, %.thread.us.i88 ]
  store ptr %.474.i62, ptr %i.d, align 8, !tbaa !355
  %i.he = ptrtoint ptr %.7.i63 to i64
  %i.hf = ptrtoint ptr %i.bb to i64
  %i.hg = sub i64 %i.he, %i.hf
  br label %bb.bf

bb.al:                                            ; preds = %bb.p
  %i.hh = load ptr, ptr %i.ak, align 8, !tbaa !281 ; 2 uses
  %i.hi = load i64, ptr %i.al, align 8, !tbaa !193
  %i.hj = getelementptr [2 x i8], ptr %i.hh, i64 %i.hi ; 4 uses
  %i.hk = getelementptr i8, ptr %i.as, i64 -1     ; 10 uses
  %i.hl = icmp ult ptr %i.ar, %i.hk               ; 2 uses
  br i1 %i.p, label %.split.i94.preheader, label %.split.us.i110.preheader

.split.us.i110.preheader:                         ; preds = %bb.al
  br i1 %i.hl, label %.lr.ph, label %ucs2lib_utf16_decode.exit

.split.i94.preheader:                             ; preds = %bb.al
  br i1 %i.hl, label %.lr.ph221, label %ucs2lib_utf16_decode.exit

.lr.ph:                                           ; preds = %.split.us.i110.preheader, %.split.us.i110
  %.067.us.i112215 = phi ptr [ %i.hy, %.split.us.i110 ], [ %i.hj, %.split.us.i110.preheader ] ; 3 uses
  %.070.us.i111214 = phi ptr [ %i.hv, %.split.us.i110 ], [ %i.ar, %.split.us.i110.preheader ] ; 5 uses
  %i.hm = ptrtoint ptr %.070.us.i111214 to i64
  %i.hn = and i64 %i.hm, 7
  %.not79.us.i = icmp eq i64 %i.hn, 0
  br i1 %.not79.us.i, label %.preheader.us.i115, label %bb.am

.thread.us.i117:                                  ; preds = %bb.an, %.lr.ph.us.i116, %.preheader.us.i115
  %.168.lcssa.us.i118 = phi ptr [ %.067.us.i112215, %.preheader.us.i115 ], [ %i.ij, %bb.an ], [ %.168125.us.us.i, %.lr.ph.us.i116 ] ; 2 uses
  %.060.lcssa.us.i119 = phi ptr [ %.070.us.i111214, %.preheader.us.i115 ], [ %i.ib, %bb.an ], [ %.060126.us.us.i, %.lr.ph.us.i116 ] ; 3 uses
  %.not83.us.i = icmp ult ptr %.060.lcssa.us.i119, %i.hk
  br i1 %.not83.us.i, label %bb.am, label %ucs2lib_utf16_decode.exit

bb.am:                                            ; preds = %.thread.us.i117, %.lr.ph
  %.171.us.i113 = phi ptr [ %.070.us.i111214, %.lr.ph ], [ %.060.lcssa.us.i119, %.thread.us.i117 ] ; 4 uses
  %.4.us.i114 = phi ptr [ %.067.us.i112215, %.lr.ph ], [ %.168.lcssa.us.i118, %.thread.us.i117 ] ; 3 uses
  %i.ho = load i8, ptr %.171.us.i113, align 1, !tbaa !205
  %i.hp = zext i8 %i.ho to i32                    ; 3 uses
  %i.hq = shl nuw nsw i32 %i.hp, 8
  %i.hr = getelementptr i8, ptr %.171.us.i113, i64 1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !205
  %i.ht = zext i8 %i.hs to i32
  %i.hu = or disjoint i32 %i.hq, %i.ht            ; 2 uses
  %i.hv = getelementptr i8, ptr %.171.us.i113, i64 2 ; 4 uses
  %i.hw = and i32 %i.hp, 248
  %.not117.us.i = icmp eq i32 %i.hw, 216
  br i1 %.not117.us.i, label %.split139.us.i, label %.split.us.i110

.split.us.i110:                                   ; preds = %bb.am
  %i.hx = trunc nuw i32 %i.hu to i16
  %i.hy = getelementptr i8, ptr %.4.us.i114, i64 2 ; 2 uses
  store i16 %i.hx, ptr %.4.us.i114, align 2, !tbaa !208
  %i.hz = icmp ult ptr %i.hv, %i.hk
  br i1 %i.hz, label %.lr.ph, label %ucs2lib_utf16_decode.exit

.preheader.us.i115:                               ; preds = %.lr.ph
  %i.ia = getelementptr i8, ptr %.070.us.i111214, i64 8 ; 2 uses
  %.not80124.us.i = icmp ugt ptr %i.ia, %i.hk
  br i1 %.not80124.us.i, label %.thread.us.i117, label %.lr.ph.us.i116

.lr.ph.us.i116:                                   ; preds = %.preheader.us.i115, %bb.an
  %i.ib = phi ptr [ %i.ik, %bb.an ], [ %i.ia, %.preheader.us.i115 ] ; 3 uses
  %.060126.us.us.i = phi ptr [ %i.ib, %bb.an ], [ %.070.us.i111214, %.preheader.us.i115 ] ; 2 uses
  %.168125.us.us.i = phi ptr [ %i.ij, %bb.an ], [ %.067.us.i112215, %.preheader.us.i115 ] ; 3 uses
  %i.ic = load i64, ptr %.060126.us.us.i, align 8, !tbaa !193 ; 3 uses
  %i.id = and i64 %i.ic, 36029346783166592
  %.not81.us.us.i = icmp eq i64 %i.id, 0
  br i1 %.not81.us.us.i, label %bb.an, label %.thread.us.i117

bb.an:                                            ; preds = %.lr.ph.us.i116
  %i.ie = lshr i64 %i.ic, 8
  %i.if = and i64 %i.ie, 71777214294589695
  %i.ig = shl i64 %i.ic, 8
  %i.ih = and i64 %i.ig, 9151454082924314368
  %i.ii = or disjoint i64 %i.if, %i.ih
  store i64 %i.ii, ptr %.168125.us.us.i, align 2
  %i.ij = getelementptr i8, ptr %.168125.us.us.i, i64 8 ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ib, i64 8      ; 2 uses
  %.not80.us.us.i = icmp ugt ptr %i.ik, %i.hk
  br i1 %.not80.us.us.i, label %.thread.us.i117, label %.lr.ph.us.i116

.lr.ph221:                                        ; preds = %.split.i94.preheader, %.split.i94
  %.067.i96220 = phi ptr [ %i.jt, %.split.i94 ], [ %i.hj, %.split.i94.preheader ] ; 3 uses
  %.070.i95219 = phi ptr [ %i.jb, %.split.i94 ], [ %i.ar, %.split.i94.preheader ] ; 5 uses
  %i.il = ptrtoint ptr %.070.i95219 to i64
  %i.im = and i64 %i.il, 7
  %.not79.i = icmp eq i64 %i.im, 0
  br i1 %.not79.i, label %.preheader.i104, label %bb.ap

.preheader.i104:                                  ; preds = %.lr.ph221
  %i.in = getelementptr i8, ptr %.070.i95219, i64 8 ; 2 uses
  %.not80124.i = icmp ugt ptr %i.in, %i.hk
  br i1 %.not80124.i, label %.thread.i107, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.preheader.i104, %bb.ao
  %i.io = phi ptr [ %i.is, %bb.ao ], [ %i.in, %.preheader.i104 ] ; 3 uses
  %.060126.i = phi ptr [ %i.io, %bb.ao ], [ %.070.i95219, %.preheader.i104 ] ; 2 uses
  %.168125.i = phi ptr [ %i.ir, %bb.ao ], [ %.067.i96220, %.preheader.i104 ] ; 3 uses
  %i.ip = load i64, ptr %.060126.i, align 8, !tbaa !193 ; 2 uses
  %i.iq = and i64 %i.ip, -9223231297218904064
  %.not82.i106 = icmp eq i64 %i.iq, 0
  br i1 %.not82.i106, label %bb.ao, label %.thread.i107

bb.ao:                                            ; preds = %.lr.ph.i105
  store i64 %i.ip, ptr %.168125.i, align 2
  %i.ir = getelementptr i8, ptr %.168125.i, i64 8 ; 2 uses
  %i.is = getelementptr i8, ptr %i.io, i64 8      ; 2 uses
  %.not80.i = icmp ugt ptr %i.is, %i.hk
  br i1 %.not80.i, label %.thread.i107, label %.lr.ph.i105

.thread.i107:                                     ; preds = %bb.ao, %.lr.ph.i105, %.preheader.i104
  %.168.lcssa.i108 = phi ptr [ %.067.i96220, %.preheader.i104 ], [ %i.ir, %bb.ao ], [ %.168125.i, %.lr.ph.i105 ] ; 2 uses
  %.060.lcssa.i109 = phi ptr [ %.070.i95219, %.preheader.i104 ], [ %i.io, %bb.ao ], [ %.060126.i, %.lr.ph.i105 ] ; 3 uses
  %.not83.i = icmp ult ptr %.060.lcssa.i109, %i.hk
  br i1 %.not83.i, label %bb.ap, label %ucs2lib_utf16_decode.exit

bb.ap:                                            ; preds = %.thread.i107, %.lr.ph221
  %.171.i100 = phi ptr [ %.070.i95219, %.lr.ph221 ], [ %.060.lcssa.i109, %.thread.i107 ] ; 4 uses
  %.4.i101 = phi ptr [ %.067.i96220, %.lr.ph221 ], [ %.168.lcssa.i108, %.thread.i107 ] ; 3 uses
  %i.it = getelementptr i8, ptr %.171.i100, i64 %i.an
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !205
  %i.iv = zext i8 %i.iu to i32                    ; 3 uses
  %i.iw = shl nuw nsw i32 %i.iv, 8
  %i.ix = getelementptr i8, ptr %.171.i100, i64 %i.ao
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !205
  %i.iz = zext i8 %i.iy to i32
  %i.ja = or disjoint i32 %i.iw, %i.iz            ; 2 uses
  %i.jb = getelementptr i8, ptr %.171.i100, i64 2 ; 4 uses
  %i.jc = and i32 %i.iv, 248
  %.not117.i = icmp eq i32 %i.jc, 216
  br i1 %.not117.i, label %.split139.us.i, label %.split.i94

.split139.us.i:                                   ; preds = %bb.am, %bb.ap
  %.us-phi140.i = phi ptr [ %.171.i100, %bb.ap ], [ %.171.us.i113, %bb.am ]
  %.us-phi141.i = phi ptr [ %.4.i101, %bb.ap ], [ %.4.us.i114, %bb.am ] ; 4 uses
  %.us-phi143.i = phi i32 [ %i.iv, %bb.ap ], [ %i.hp, %bb.am ]
  %.us-phi145.i102 = phi i32 [ %i.ja, %bb.ap ], [ %i.hu, %bb.am ]
  %.us-phi146.i = phi ptr [ %i.jb, %bb.ap ], [ %i.hv, %bb.am ] ; 5 uses
  %i.jd = and i32 %.us-phi143.i, 220
  %.not118.i = icmp eq i32 %i.jd, 216
  br i1 %.not118.i, label %bb.aq, label %ucs2lib_utf16_decode.exit

bb.aq:                                            ; preds = %.split139.us.i
  %.not86.i = icmp ult ptr %.us-phi146.i, %i.hk
  br i1 %.not86.i, label %bb.ar, label %ucs2lib_utf16_decode.exit

bb.ar:                                            ; preds = %bb.aq
  %i.je = getelementptr i8, ptr %.us-phi146.i, i64 %i.an
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !205
  %i.jg = zext i8 %i.jf to i32                    ; 2 uses
  %i.jh = getelementptr i8, ptr %.us-phi140.i, i64 4 ; 2 uses
  %i.ji = and i32 %i.jg, 252
  %.not119.i = icmp eq i32 %i.ji, 220
  br i1 %.not119.i, label %.thread91.i, label %ucs2lib_utf16_decode.exit

.thread91.i:                                      ; preds = %bb.ar
  %i.jj = shl nuw nsw i32 %i.jg, 8
  %i.jk = getelementptr i8, ptr %.us-phi146.i, i64 %i.ao
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !205
  %i.jm = zext i8 %i.jl to i32
  %i.jn = shl nuw nsw i32 %.us-phi145.i102, 10
  %i.jo = and i32 %i.jn, 1047552
  %.masked.i103 = and i32 %i.jj, 768
  %i.jp = or disjoint i32 %.masked.i103, %i.jm
  %i.jq = add nuw nsw i32 %i.jo, 65536
  %i.jr = or disjoint i32 %i.jp, %i.jq
  br label %ucs2lib_utf16_decode.exit

.split.i94:                                       ; preds = %bb.ap
  %i.js = trunc nuw i32 %i.ja to i16
  %i.jt = getelementptr i8, ptr %.4.i101, i64 2   ; 2 uses
  store i16 %i.js, ptr %.4.i101, align 2, !tbaa !208
  %i.ju = icmp ult ptr %i.jb, %i.hk
  br i1 %i.ju, label %.lr.ph221, label %ucs2lib_utf16_decode.exit

ucs2lib_utf16_decode.exit:                        ; preds = %.thread.us.i117, %.split.us.i110, %.thread.i107, %.split.i94, %.split.us.i110.preheader, %.split.i94.preheader, %.split139.us.i, %bb.aq, %bb.ar, %.thread91.i
  %.474.i97 = phi ptr [ %.us-phi146.i, %.split139.us.i ], [ %i.jh, %bb.ar ], [ %i.jh, %.thread91.i ], [ %.us-phi146.i, %bb.aq ], [ %i.ar, %.split.us.i110.preheader ], [ %i.jb, %.split.i94 ], [ %i.ar, %.split.i94.preheader ], [ %.060.lcssa.i109, %.thread.i107 ], [ %.060.lcssa.us.i119, %.thread.us.i117 ], [ %i.hv, %.split.us.i110 ] ; 2 uses
  %.7.i98 = phi ptr [ %.us-phi141.i, %.split139.us.i ], [ %.us-phi141.i, %bb.ar ], [ %.us-phi141.i, %.thread91.i ], [ %.us-phi141.i, %bb.aq ], [ %i.hj, %.split.us.i110.preheader ], [ %i.jt, %.split.i94 ], [ %i.hj, %.split.i94.preheader ], [ %.168.lcssa.i108, %.thread.i107 ], [ %.168.lcssa.us.i118, %.thread.us.i117 ], [ %i.hy, %.split.us.i110 ]
  %.266.i99 = phi i32 [ 2, %.split139.us.i ], [ 3, %bb.ar ], [ %i.jr, %.thread91.i ], [ 1, %bb.aq ], [ 0, %.split.us.i110.preheader ], [ 0, %.thread.i107 ], [ 0, %.split.i94.preheader ], [ 0, %.split.i94 ], [ 0, %.split.us.i110 ], [ 0, %.thread.us.i117 ]
  store ptr %.474.i97, ptr %i.d, align 8, !tbaa !355
  %i.jv = ptrtoint ptr %.7.i98 to i64
  %i.jw = ptrtoint ptr %i.hh to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = ashr exact i64 %i.jx, 1
  br label %bb.bf

bb.as:                                            ; preds = %bb.p
  %i.jz = load ptr, ptr %i.ak, align 8, !tbaa !281 ; 2 uses
  %i.ka = load i64, ptr %i.al, align 8, !tbaa !193
  %i.kb = getelementptr [4 x i8], ptr %i.jz, i64 %i.ka ; 4 uses
  %i.kc = getelementptr i8, ptr %i.as, i64 -1     ; 11 uses
  %i.kd = icmp ult ptr %i.ar, %i.kc               ; 2 uses
  br i1 %i.p, label %.split.i121.preheader, label %.split.us.i136.preheader

.split.us.i136.preheader:                         ; preds = %bb.as
  br i1 %i.kd, label %.lr.ph266, label %ucs4lib_utf16_decode.exit

.split.i121.preheader:                            ; preds = %bb.as
  br i1 %i.kd, label %.lr.ph286, label %ucs4lib_utf16_decode.exit

.lr.ph266:                                        ; preds = %.split.us.i136.preheader, %.split.us.i136
  %.067.us.i138265 = phi ptr [ %i.ld, %.split.us.i136 ], [ %i.kb, %.split.us.i136.preheader ] ; 3 uses
  %.070.us.i137264 = phi ptr [ %.272.us.i, %.split.us.i136 ], [ %i.ar, %.split.us.i136.preheader ] ; 5 uses
  %i.ke = ptrtoint ptr %.070.us.i137264 to i64
  %i.kf = and i64 %i.ke, 7
  %.not79.us.i139 = icmp eq i64 %i.kf, 0
  br i1 %.not79.us.i139, label %.preheader.us.i142, label %bb.at

.thread.us.i145:                                  ; preds = %bb.ay, %.lr.ph.us.i143, %.preheader.us.i142
  %.168.lcssa.us.i146 = phi ptr [ %.067.us.i138265, %.preheader.us.i142 ], [ %i.lz, %bb.ay ], [ %.168113.us.us.i, %.lr.ph.us.i143 ] ; 2 uses
  %.062.lcssa.us.i = phi ptr [ %.070.us.i137264, %.preheader.us.i142 ], [ %i.lg, %bb.ay ], [ %.062114.us.us.i, %.lr.ph.us.i143 ] ; 3 uses
  %.not83.us.i147 = icmp ult ptr %.062.lcssa.us.i, %i.kc
  br i1 %.not83.us.i147, label %bb.at, label %ucs4lib_utf16_decode.exit

bb.at:                                            ; preds = %.thread.us.i145, %.lr.ph266
  %.171.us.i140 = phi ptr [ %.070.us.i137264, %.lr.ph266 ], [ %.062.lcssa.us.i, %.thread.us.i145 ] ; 5 uses
  %.4.us.i141 = phi ptr [ %.067.us.i138265, %.lr.ph266 ], [ %.168.lcssa.us.i146, %.thread.us.i145 ] ; 5 uses
  %i.kg = load i8, ptr %.171.us.i140, align 1, !tbaa !205
  %i.kh = zext i8 %i.kg to i32                    ; 3 uses
  %i.ki = shl nuw nsw i32 %i.kh, 8
  %i.kj = getelementptr i8, ptr %.171.us.i140, i64 1
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !205
  %i.kl = zext i8 %i.kk to i32
  %i.km = or disjoint i32 %i.ki, %i.kl            ; 2 uses
  %i.kn = getelementptr i8, ptr %.171.us.i140, i64 2 ; 5 uses
  %i.ko = and i32 %i.kh, 248
  %.not109.us.i = icmp eq i32 %i.ko, 216
  br i1 %.not109.us.i, label %bb.au, label %.split.us.i136, !llvm.loop !505

bb.au:                                            ; preds = %bb.at
  %i.kp = and i32 %i.kh, 220
  %.not110.us.i = icmp eq i32 %i.kp, 216
  br i1 %.not110.us.i, label %bb.av, label %ucs4lib_utf16_decode.exit

bb.av:                                            ; preds = %bb.au
  %.not86.us.i = icmp ult ptr %i.kn, %i.kc
  br i1 %.not86.us.i, label %bb.aw, label %ucs4lib_utf16_decode.exit

bb.aw:                                            ; preds = %bb.av
  %i.kq = load i8, ptr %i.kn, align 1, !tbaa !205
  %i.kr = zext i8 %i.kq to i32                    ; 2 uses
  %i.ks = getelementptr i8, ptr %.171.us.i140, i64 4 ; 2 uses
  %i.kt = and i32 %i.kr, 252
  %.not111.us.i = icmp eq i32 %i.kt, 220
  br i1 %.not111.us.i, label %bb.ax, label %ucs4lib_utf16_decode.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ku = shl nuw nsw i32 %i.kr, 8
  %i.kv = getelementptr i8, ptr %.171.us.i140, i64 3
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !205
  %i.kx = zext i8 %i.kw to i32
  %i.ky = shl nuw nsw i32 %i.km, 10
  %i.kz = and i32 %i.ky, 1047552
  %.masked.us.i = and i32 %i.ku, 768
  %i.la = or disjoint i32 %.masked.us.i, %i.kx
  %i.lb = add nuw nsw i32 %i.kz, 65536
  %i.lc = or disjoint i32 %i.la, %i.lb
  br label %.split.us.i136

.split.us.i136:                                   ; preds = %bb.ax, %bb.at
  %.sink.i = phi i32 [ %i.lc, %bb.ax ], [ %i.km, %bb.at ]
  %.272.us.i = phi ptr [ %i.ks, %bb.ax ], [ %i.kn, %bb.at ] ; 3 uses
  %i.ld = getelementptr i8, ptr %.4.us.i141, i64 4 ; 2 uses
  store i32 %.sink.i, ptr %.4.us.i141, align 4, !tbaa !7
  %i.le = icmp ult ptr %.272.us.i, %i.kc
  br i1 %i.le, label %.lr.ph266, label %ucs4lib_utf16_decode.exit

.preheader.us.i142:                               ; preds = %.lr.ph266
  %i.lf = getelementptr i8, ptr %.070.us.i137264, i64 8 ; 2 uses
  %.not80112.us.i = icmp ugt ptr %i.lf, %i.kc
  br i1 %.not80112.us.i, label %.thread.us.i145, label %.lr.ph.us.i143

.lr.ph.us.i143:                                   ; preds = %.preheader.us.i142, %bb.ay
  %i.lg = phi ptr [ %i.ma, %bb.ay ], [ %i.lf, %.preheader.us.i142 ] ; 3 uses
  %.062114.us.us.i = phi ptr [ %i.lg, %bb.ay ], [ %.070.us.i137264, %.preheader.us.i142 ] ; 2 uses
  %.168113.us.us.i = phi ptr [ %i.lz, %bb.ay ], [ %.067.us.i138265, %.preheader.us.i142 ] ; 6 uses
  %i.lh = load i64, ptr %.062114.us.us.i, align 8, !tbaa !193 ; 3 uses
  %i.li = and i64 %i.lh, 36029346783166592
  %.not81.us.us.i144 = icmp eq i64 %i.li, 0
  br i1 %.not81.us.us.i144, label %bb.ay, label %.thread.us.i145

bb.ay:                                            ; preds = %.lr.ph.us.i143
  %i.lj = lshr i64 %i.lh, 8
  %i.lk = and i64 %i.lj, 71777214294589695
  %i.ll = shl i64 %i.lh, 8
  %i.lm = and i64 %i.ll, 9151454082924314368
  %i.ln = or disjoint i64 %i.lk, %i.lm            ; 3 uses
  %i.lo = trunc i64 %i.ln to i32                  ; 2 uses
  %i.lp = and i32 %i.lo, 32767
  store i32 %i.lp, ptr %.168113.us.us.i, align 4, !tbaa !7
  %i.lq = lshr i32 %i.lo, 16
  %i.lr = getelementptr i8, ptr %.168113.us.us.i, i64 4
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !7
  %i.ls = lshr i64 %i.ln, 32
  %i.lt = trunc nuw nsw i64 %i.ls to i32
  %i.lu = and i32 %i.lt, 32767
  %i.lv = getelementptr i8, ptr %.168113.us.us.i, i64 8
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !7
  %i.lw = lshr i64 %i.ln, 48
  %i.lx = trunc nuw nsw i64 %i.lw to i32
  %i.ly = getelementptr i8, ptr %.168113.us.us.i, i64 12
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !7
  %i.lz = getelementptr i8, ptr %.168113.us.us.i, i64 16 ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lg, i64 8      ; 2 uses
  %.not80.us.us.i148 = icmp ugt ptr %i.ma, %i.kc
  br i1 %.not80.us.us.i148, label %.thread.us.i145, label %.lr.ph.us.i143

.lr.ph286:                                        ; preds = %.split.i121.preheader, %.split.i121
  %.067.i123285 = phi ptr [ %i.nt, %.split.i121 ], [ %i.kb, %.split.i121.preheader ] ; 3 uses
  %.070.i122284 = phi ptr [ %.272.i, %.split.i121 ], [ %i.ar, %.split.i121.preheader ] ; 5 uses
  %i.mb = ptrtoint ptr %.070.i122284 to i64
  %i.mc = and i64 %i.mb, 7
  %.not79.i124 = icmp eq i64 %i.mc, 0
  br i1 %.not79.i124, label %.preheader.i129, label %bb.ba

.preheader.i129:                                  ; preds = %.lr.ph286
  %i.md = getelementptr i8, ptr %.070.i122284, i64 8 ; 2 uses
  %.not80112.i = icmp ugt ptr %i.md, %i.kc
  br i1 %.not80112.i, label %.thread.i132, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.preheader.i129, %bb.az
  %i.me = phi ptr [ %i.mt, %bb.az ], [ %i.md, %.preheader.i129 ] ; 3 uses
  %.062114.i = phi ptr [ %i.me, %bb.az ], [ %.070.i122284, %.preheader.i129 ] ; 2 uses
  %.168113.i = phi ptr [ %i.ms, %bb.az ], [ %.067.i123285, %.preheader.i129 ] ; 6 uses
  %i.mf = load i64, ptr %.062114.i, align 8, !tbaa !193 ; 4 uses
  %i.mg = and i64 %i.mf, -9223231297218904064
  %.not82.i131 = icmp eq i64 %i.mg, 0
  br i1 %.not82.i131, label %bb.az, label %.thread.i132

bb.az:                                            ; preds = %.lr.ph.i130
  %i.mh = trunc i64 %i.mf to i32                  ; 2 uses
  %i.mi = and i32 %i.mh, 32767
  store i32 %i.mi, ptr %.168113.i, align 4, !tbaa !7
  %i.mj = lshr i32 %i.mh, 16
  %i.mk = getelementptr i8, ptr %.168113.i, i64 4
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !7
  %i.ml = lshr i64 %i.mf, 32
  %i.mm = trunc nuw nsw i64 %i.ml to i32
  %i.mn = and i32 %i.mm, 32767
  %i.mo = getelementptr i8, ptr %.168113.i, i64 8
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !7
  %i.mp = lshr i64 %i.mf, 48
  %i.mq = trunc nuw nsw i64 %i.mp to i32
  %i.mr = getelementptr i8, ptr %.168113.i, i64 12
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !7
  %i.ms = getelementptr i8, ptr %.168113.i, i64 16 ; 2 uses
  %i.mt = getelementptr i8, ptr %i.me, i64 8      ; 2 uses
  %.not80.i135 = icmp ugt ptr %i.mt, %i.kc
  br i1 %.not80.i135, label %.thread.i132, label %.lr.ph.i130

.thread.i132:                                     ; preds = %bb.az, %.lr.ph.i130, %.preheader.i129
  %.168.lcssa.i133 = phi ptr [ %.067.i123285, %.preheader.i129 ], [ %i.ms, %bb.az ], [ %.168113.i, %.lr.ph.i130 ] ; 2 uses
  %.062.lcssa.i = phi ptr [ %.070.i122284, %.preheader.i129 ], [ %i.me, %bb.az ], [ %.062114.i, %.lr.ph.i130 ] ; 3 uses
  %.not83.i134 = icmp ult ptr %.062.lcssa.i, %i.kc
  br i1 %.not83.i134, label %bb.ba, label %ucs4lib_utf16_decode.exit

bb.ba:                                            ; preds = %.thread.i132, %.lr.ph286
  %.171.i125 = phi ptr [ %.070.i122284, %.lr.ph286 ], [ %.062.lcssa.i, %.thread.i132 ] ; 4 uses
  %.4.i126 = phi ptr [ %.067.i123285, %.lr.ph286 ], [ %.168.lcssa.i133, %.thread.i132 ] ; 5 uses
  %i.mu = getelementptr i8, ptr %.171.i125, i64 %i.an
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !205
  %i.mw = zext i8 %i.mv to i32                    ; 3 uses
  %i.mx = shl nuw nsw i32 %i.mw, 8
  %i.my = getelementptr i8, ptr %.171.i125, i64 %i.ao
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !205
  %i.na = zext i8 %i.mz to i32
  %i.nb = or disjoint i32 %i.mx, %i.na            ; 2 uses
  %i.nc = getelementptr i8, ptr %.171.i125, i64 2 ; 6 uses
  %i.nd = and i32 %i.mw, 248
  %.not109.i = icmp eq i32 %i.nd, 216
  br i1 %.not109.i, label %bb.bb, label %.split.i121, !llvm.loop !505

bb.bb:                                            ; preds = %bb.ba
  %i.ne = and i32 %i.mw, 220
  %.not110.i = icmp eq i32 %i.ne, 216
  br i1 %.not110.i, label %bb.bc, label %ucs4lib_utf16_decode.exit

bb.bc:                                            ; preds = %bb.bb
  %.not86.i127 = icmp ult ptr %i.nc, %i.kc
  br i1 %.not86.i127, label %bb.bd, label %ucs4lib_utf16_decode.exit

bb.bd:                                            ; preds = %bb.bc
  %i.nf = getelementptr i8, ptr %i.nc, i64 %i.an
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !205
  %i.nh = zext i8 %i.ng to i32                    ; 2 uses
  %i.ni = getelementptr i8, ptr %.171.i125, i64 4 ; 2 uses
  %i.nj = and i32 %i.nh, 252
  %.not111.i = icmp eq i32 %i.nj, 220
  br i1 %.not111.i, label %bb.be, label %ucs4lib_utf16_decode.exit

bb.be:                                            ; preds = %bb.bd
  %i.nk = shl nuw nsw i32 %i.nh, 8
  %i.nl = getelementptr i8, ptr %i.nc, i64 %i.ao
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !205
  %i.nn = zext i8 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nb, 10
  %i.np = and i32 %i.no, 1047552
  %.masked.i128 = and i32 %i.nk, 768
  %i.nq = or disjoint i32 %.masked.i128, %i.nn
  %i.nr = add nuw nsw i32 %i.np, 65536
  %i.ns = or disjoint i32 %i.nq, %i.nr
  br label %.split.i121

.split.i121:                                      ; preds = %bb.be, %bb.ba
  %.sink148.i = phi i32 [ %i.ns, %bb.be ], [ %i.nb, %bb.ba ]
  %.272.i = phi ptr [ %i.ni, %bb.be ], [ %i.nc, %bb.ba ] ; 3 uses
  %i.nt = getelementptr i8, ptr %.4.i126, i64 4   ; 2 uses
  store i32 %.sink148.i, ptr %.4.i126, align 4, !tbaa !7
  %i.nu = icmp ult ptr %.272.i, %i.kc
  br i1 %i.nu, label %.lr.ph286, label %ucs4lib_utf16_decode.exit

ucs4lib_utf16_decode.exit:                        ; preds = %bb.aw, %bb.av, %bb.au, %.thread.us.i145, %.split.us.i136, %bb.bd, %bb.bc, %bb.bb, %.thread.i132, %.split.i121, %.split.us.i136.preheader, %.split.i121.preheader
  %.us-phi.i = phi ptr [ %i.ar, %.split.us.i136.preheader ], [ %i.ar, %.split.i121.preheader ], [ %.272.i, %.split.i121 ], [ %i.nc, %bb.bc ], [ %i.ni, %bb.bd ], [ %i.nc, %bb.bb ], [ %.062.lcssa.i, %.thread.i132 ], [ %.062.lcssa.us.i, %.thread.us.i145 ], [ %i.ks, %bb.aw ], [ %i.kn, %bb.au ], [ %i.kn, %bb.av ], [ %.272.us.i, %.split.us.i136 ] ; 2 uses
  %.us-phi125.i = phi ptr [ %i.kb, %.split.us.i136.preheader ], [ %i.kb, %.split.i121.preheader ], [ %i.nt, %.split.i121 ], [ %.4.i126, %bb.bc ], [ %.4.i126, %bb.bd ], [ %.4.i126, %bb.bb ], [ %.168.lcssa.i133, %.thread.i132 ], [ %.168.lcssa.us.i146, %.thread.us.i145 ], [ %.4.us.i141, %bb.aw ], [ %.4.us.i141, %bb.au ], [ %.4.us.i141, %bb.av ], [ %i.ld, %.split.us.i136 ]
  %.us-phi126.i = phi i32 [ 0, %.split.us.i136.preheader ], [ 0, %.split.i121.preheader ], [ 0, %.split.i121 ], [ 1, %bb.bc ], [ 3, %bb.bd ], [ 2, %bb.bb ], [ 0, %.thread.i132 ], [ 0, %.thread.us.i145 ], [ 3, %bb.aw ], [ 2, %bb.au ], [ 1, %bb.av ], [ 0, %.split.us.i136 ]
  store ptr %.us-phi.i, ptr %i.d, align 8, !tbaa !355
  %i.nv = ptrtoint ptr %.us-phi125.i to i64
  %i.nw = ptrtoint ptr %i.jz to i64
  %i.nx = sub i64 %i.nv, %i.nw
  %i.ny = ashr exact i64 %i.nx, 2
  br label %bb.bf

bb.bf:                                            ; preds = %ucs1lib_utf16_decode.exit, %asciilib_utf16_decode.exit, %ucs4lib_utf16_decode.exit, %ucs2lib_utf16_decode.exit
  %.sink = phi i64 [ %i.hg, %ucs1lib_utf16_decode.exit ], [ %i.eh, %asciilib_utf16_decode.exit ], [ %i.ny, %ucs4lib_utf16_decode.exit ], [ %i.jy, %ucs2lib_utf16_decode.exit ] ; 3 uses
  %i.nz = phi ptr [ %.474.i62, %ucs1lib_utf16_decode.exit ], [ %.474.i, %asciilib_utf16_decode.exit ], [ %.us-phi.i, %ucs4lib_utf16_decode.exit ], [ %.474.i97, %ucs2lib_utf16_decode.exit ] ; 5 uses
  %.1 = phi i32 [ %.266.i64, %ucs1lib_utf16_decode.exit ], [ %.266.i, %asciilib_utf16_decode.exit ], [ %.us-phi126.i, %ucs4lib_utf16_decode.exit ], [ %.266.i99, %ucs2lib_utf16_decode.exit ] ; 6 uses
  store i64 %.sink, ptr %i.al, align 8, !tbaa !193
  switch i32 %.1, label %bb.bl [
    i32 0, label %..thread_crit_edge
    i32 1, label %bb.bh
    i32 2, label %bb.bj
    i32 3, label %bb.bk
  ]

..thread_crit_edge:                               ; preds = %bb.bf
  %.pre351 = load ptr, ptr %i.e, align 8, !tbaa !355
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.o
  %i.oa = phi ptr [ %i.as, %bb.o ], [ %.pre351, %..thread_crit_edge ] ; 2 uses
  %i.ob = phi ptr [ %i.ar, %bb.o ], [ %i.nz, %..thread_crit_edge ] ; 3 uses
  %i.oc = icmp eq ptr %i.ob, %i.oa
  %or.cond3 = or i1 %i.ap, %i.oc
  br i1 %or.cond3, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %.thread
  %i.od = load ptr, ptr %i.a, align 8, !tbaa !355
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = ptrtoint ptr %i.od to i64               ; 2 uses
end_hunk_0
