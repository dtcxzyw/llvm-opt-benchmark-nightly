Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zOut?download=true
inline.NumInlined: 358
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8NArchive3N7z11COutArchive11WriteUInt32Ej:bb.a
  br i1 %i.ar, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i64, ptr %i.c, align 8, !tbaa !72
  %i.at = load i64, ptr %i.d, align 8, !tbaa !66  ; 3 uses
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.1

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.1: ; preds = %bb.h
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.aw = add i64 %i.at, 1
  store i64 %i.aw, ptr %i.d, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 %i.an, ptr %i.ax, align 1, !tbaa !49
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.1

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.az = load i32, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.g, align 8, !tbaa !68
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  store i8 %i.an, ptr %i.bc, align 1, !tbaa !49
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !68
  %i.be = load i32, ptr %i.h, align 4, !tbaa !69
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.j, label %_ZN10COutBuffer9WriteByteEh.exit.i.1

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.f)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i.1

_ZN10COutBuffer9WriteByteEh.exit.i.1:             ; preds = %bb.j, %bb.i
  %i.bg = load i32, ptr %i.i, align 8, !tbaa !71  ; 2 uses
  %.narrow.i5.1 = xor i32 %i.bg, %i.am
  %i.bh = and i32 %.narrow.i5.1, 255
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !10
  %i.bl = lshr i32 %i.bg, 8
  %i.bm = xor i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %i.i, align 8, !tbaa !71
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.1

bb.k:                                             ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
  %i.bn = load i64, ptr %i.j, align 8, !tbaa !64
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.j, align 8, !tbaa !64
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.1

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.1: ; preds = %bb.k, %_ZN10COutBuffer9WriteByteEh.exit.i.1, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.1
  %i.bp = lshr i32 %1, 16                         ; 2 uses
  %i.bq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.br = load i8, ptr %i.a, align 8, !tbaa !61, !range !62, !noundef !63
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.1
  %i.bt = load i8, ptr %i.b, align 1, !tbaa !65, !range !62, !noundef !63
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = load i64, ptr %i.c, align 8, !tbaa !72
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !66  ; 3 uses
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.f, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.2

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.2: ; preds = %bb.m
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.bz = add i64 %i.bw, 1
  store i64 %i.bz, ptr %i.d, align 8, !tbaa !66
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 %i.bq, ptr %i.ca, align 1, !tbaa !49
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.2

bb.n:                                             ; preds = %bb.l
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.cc = load i32, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.g, align 8, !tbaa !68
  %i.ce = zext i32 %i.cc to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ce
  store i8 %i.bq, ptr %i.cf, align 1, !tbaa !49
  %i.cg = load i32, ptr %i.g, align 8, !tbaa !68
  %i.ch = load i32, ptr %i.h, align 4, !tbaa !69
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.o, label %_ZN10COutBuffer9WriteByteEh.exit.i.2

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.f)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i.2

_ZN10COutBuffer9WriteByteEh.exit.i.2:             ; preds = %bb.o, %bb.n
  %i.cj = load i32, ptr %i.i, align 8, !tbaa !71  ; 2 uses
  %.narrow.i5.2 = xor i32 %i.cj, %i.bp
  %i.ck = and i32 %.narrow.i5.2, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !10
  %i.co = lshr i32 %i.cj, 8
  %i.cp = xor i32 %i.cn, %i.co
  store i32 %i.cp, ptr %i.i, align 8, !tbaa !71
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.2

bb.p:                                             ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.1
  %i.cq = load i64, ptr %i.j, align 8, !tbaa !64
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %i.j, align 8, !tbaa !64
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.2

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.2: ; preds = %bb.p, %_ZN10COutBuffer9WriteByteEh.exit.i.2, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.2
  %i.cs = lshr i32 %1, 24                         ; 2 uses
  %i.ct = trunc nuw i32 %i.cs to i8               ; 2 uses
  %i.cu = load i8, ptr %i.a, align 8, !tbaa !61, !range !62, !noundef !63
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.2
  %i.cw = load i8, ptr %i.b, align 1, !tbaa !65, !range !62, !noundef !63
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = load i64, ptr %i.c, align 8, !tbaa !72
  %i.cz = load i64, ptr %i.d, align 8, !tbaa !66  ; 3 uses
  %i.da = icmp eq i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.f, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.3

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i.3: ; preds = %bb.r
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.dc = add i64 %i.cz, 1
  store i64 %i.dc, ptr %i.d, align 8, !tbaa !66
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 %i.ct, ptr %i.dd, align 1, !tbaa !49
  br label %.split9

bb.s:                                             ; preds = %bb.q
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.df = load i32, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.g, align 8, !tbaa !68
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dh
  store i8 %i.ct, ptr %i.di, align 1, !tbaa !49
  %i.dj = load i32, ptr %i.g, align 8, !tbaa !68
  %i.dk = load i32, ptr %i.h, align 4, !tbaa !69
  %i.dl = icmp eq i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.t, label %_ZN10COutBuffer9WriteByteEh.exit.i.3

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.f)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i.3

_ZN10COutBuffer9WriteByteEh.exit.i.3:             ; preds = %bb.t, %bb.s
  %i.dm = load i32, ptr %i.i, align 8, !tbaa !71  ; 2 uses
  %.masked = and i32 %i.dm, 255
  %i.dn = xor i32 %.masked, %i.cs
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  %i.dr = lshr i32 %i.dm, 8
  %i.ds = xor i32 %i.dq, %i.dr
  store i32 %i.ds, ptr %i.i, align 8, !tbaa !71
  br label %.split9

bb.u:                                             ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit.2
  %i.dt = load i64, ptr %i.j, align 8, !tbaa !64
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.j, align 8, !tbaa !64
  br label %.split9
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z11COutArchive11WriteUInt64Ey(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1) local_unnamed_addr #0 align 2 !guid !141 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load i8, ptr %i.a, align 8, !tbaa !61, !range !62, !noundef !63
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %.promoted = load i64, ptr %i.j, align 8, !tbaa !64
  %i.m = add i64 %.promoted, 8
  store i64 %i.m, ptr %i.j, align 8, !tbaa !64
  br label %.split8

.split8:                                          ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit, %.split.us
  ret void

.splitthread-pre-split:                           ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
  %2 = lshr i64 %.045, 8
  %.pr = load i8, ptr %i.a, align 8, !tbaa !61
  br label %.split

.split:                                           ; preds = %bb.a, %.splitthread-pre-split
  %3 = phi i8 [ %.pr, %.splitthread-pre-split ], [ 0, %bb.a ]
  %.06 = phi i32 [ %i.ao, %.splitthread-pre-split ], [ 0, %bb.a ]
  %.045 = phi i64 [ %2, %.splitthread-pre-split ], [ %1, %bb.a ] ; 3 uses
  %i.n = trunc i64 %.045 to i8                    ; 2 uses
  %i.o = trunc nuw i8 %3 to i1
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  %i.p = load i64, ptr %i.j, align 8, !tbaa !64
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.j, align 8, !tbaa !64
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

bb.c:                                             ; preds = %.split
  %i.r = load i8, ptr %i.b, align 1, !tbaa !65, !range !62, !noundef !63
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.u = load i32, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.g, align 8, !tbaa !68
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  store i8 %i.n, ptr %i.x, align 1, !tbaa !49
  %i.y = load i32, ptr %i.g, align 8, !tbaa !68
  %i.z = load i32, ptr %i.h, align 4, !tbaa !69
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN10COutBuffer9WriteByteEh.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.f)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i

_ZN10COutBuffer9WriteByteEh.exit.i:               ; preds = %bb.e, %bb.d
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !71  ; 2 uses
  %.tr.i = zext i32 %i.ab to i64
  %.narrow.i = xor i64 %.045, %.tr.i
  %i.ac = and i64 %.narrow.i, 255
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.af = lshr i32 %i.ab, 8
  %i.ag = xor i32 %i.ae, %i.af
  store i32 %i.ag, ptr %i.i, align 8, !tbaa !71
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

bb.f:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !72
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !66  ; 3 uses
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.ak, align 16, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIi, ptr null) #17
  unreachable

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i: ; preds = %bb.f
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.am = add i64 %i.ai, 1
  store i64 %i.am, ptr %i.d, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ai
  store i8 %i.n, ptr %i.an, align 1, !tbaa !49
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit:   ; preds = %bb.b, %_ZN10COutBuffer9WriteByteEh.exit.i, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
  %i.ao = add nuw nsw i32 %.06, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ao, 8
  br i1 %exitcond.not, label %.split8, label %.splitthread-pre-split, !llvm.loop !140
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z11COutArchive11WriteNumberEy(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1) local_unnamed_addr #0 align 2 !guid !143 {
bb.a:
  %i.a = icmp ult i64 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.030.lcssa.wide = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ] ; 2 uses
  %.01628.lcssa = phi i8 [ 0, %bb.a ], [ -128, %bb.c ], [ -64, %bb.d ], [ -32, %bb.e ], [ -16, %bb.f ], [ -8, %bb.g ], [ -4, %bb.h ], [ -2, %bb.i ]
  %i.b = shl nuw nsw i32 %.030.lcssa.wide, 3
  %i.c = zext nneg i32 %i.b to i64
  %i.d = lshr i64 %1, %i.c
  %i.e = trunc i64 %i.d to i8
  %i.f = or i8 %.01628.lcssa, %i.e
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %1, 16384
  br i1 %i.g, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %1, 2097152
  br i1 %i.h, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp ult i64 %1, 268435456
  br i1 %i.i, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp ult i64 %1, 34359738368
  br i1 %i.j, label %bb.b, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp ult i64 %1, 4398046511104
  br i1 %i.k, label %bb.b, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = icmp ult i64 %1, 562949953421312
  br i1 %i.l, label %bb.b, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = icmp ult i64 %1, 72057594037927936
  br i1 %i.m, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.b
  %.026 = phi i32 [ %.030.lcssa.wide, %bb.b ], [ 8, %bb.i ] ; 3 uses
  %.117 = phi i8 [ %i.f, %bb.b ], [ -1, %bb.i ]   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !61, !range !62, !noundef !63
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !64
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !64
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

bb.k:                                             ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !65, !range !62, !noundef !63
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !68   ; 2 uses
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !68
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  store i8 %.117, ptr %i.ac, align 1, !tbaa !49
  %i.ad = load i32, ptr %i.y, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !69
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.m, label %_ZN10COutBuffer9WriteByteEh.exit.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.w)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i

_ZN10COutBuffer9WriteByteEh.exit.i:               ; preds = %bb.m, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !71 ; 2 uses
  %.tr.i = trunc i32 %i.ai to i8
  %.narrow.i = xor i8 %.117, %.tr.i
  %i.aj = zext i8 %.narrow.i to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !10
  %i.am = lshr i32 %i.ai, 8
  %i.an = xor i32 %i.al, %i.am
  store i32 %i.an, ptr %i.ah, align 8, !tbaa !71
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

bb.n:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !72
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !66 ; 3 uses
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.o, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i

bb.o:                                             ; preds = %bb.n
  %i.at = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.at, align 16, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.at, ptr nonnull @_ZTIi, ptr null) #17
  unreachable

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i: ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !73
  %i.aw = add i64 %i.ar, 1
  store i64 %i.aw, ptr %i.aq, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar
  store i8 %.117, ptr %i.ax, align 1, !tbaa !49
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit:   ; preds = %bb.j, %_ZN10COutBuffer9WriteByteEh.exit.i, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
  %.not = icmp eq i32 %.026, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bh = load i8, ptr %i.n, align 8, !tbaa !61, !range !62, !noundef !63
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.promoted = load i64, ptr %i.bg, align 8, !tbaa !64
  %i.bj = add nsw i32 %.026, -1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = add i64 %.promoted, %i.bk
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bg, align 8, !tbaa !64
  br label %._crit_edge

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit24
  %2 = add nsw i32 %.132, -1
  %3 = lshr i64 %.01831, 8
  %.pr = load i8, ptr %i.n, align 8, !tbaa !61
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %4 = phi i8 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %.132 = phi i32 [ %2, %.lr.ph.splitthread-pre-split ], [ %.026, %.lr.ph ] ; 2 uses
  %.01831 = phi i64 [ %3, %.lr.ph.splitthread-pre-split ], [ %1, %.lr.ph ] ; 3 uses
  %i.bn = trunc i64 %.01831 to i8                 ; 2 uses
  %i.bo = trunc nuw i8 %4 to i1
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split
  %i.bp = load i64, ptr %i.bg, align 8, !tbaa !64
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bg, align 8, !tbaa !64
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit24

bb.q:                                             ; preds = %.lr.ph.split
  %i.br = load i8, ptr %i.ay, align 1, !tbaa !65, !range !62, !noundef !63
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bc, align 8, !tbaa !67
  %i.bu = load i32, ptr %i.bd, align 8, !tbaa !68 ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bd, align 8, !tbaa !68
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw
  store i8 %i.bn, ptr %i.bx, align 1, !tbaa !49
  %i.by = load i32, ptr %i.bd, align 8, !tbaa !68
  %i.bz = load i32, ptr %i.be, align 4, !tbaa !69
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.s, label %_ZN10COutBuffer9WriteByteEh.exit.i21

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.bc)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i21

_ZN10COutBuffer9WriteByteEh.exit.i21:             ; preds = %bb.s, %bb.r
  %i.cb = load i32, ptr %i.bf, align 8, !tbaa !71 ; 2 uses
  %.tr.i22 = zext i32 %i.cb to i64
  %.narrow.i23 = xor i64 %.01831, %.tr.i22
  %i.cc = and i64 %.narrow.i23, 255
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !10
  %i.cf = lshr i32 %i.cb, 8
  %i.cg = xor i32 %i.ce, %i.cf
  store i32 %i.cg, ptr %i.bf, align 8, !tbaa !71
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit24

bb.t:                                             ; preds = %bb.q
  %i.ch = load i64, ptr %i.az, align 8, !tbaa !72
  %i.ci = load i64, ptr %i.ba, align 8, !tbaa !66 ; 3 uses
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.u, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i20

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.ck, align 16, !tbaa !10
  tail call void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTIi, ptr null) #17
  unreachable

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i20: ; preds = %bb.t
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !73
  %i.cm = add i64 %i.ci, 1
  store i64 %i.cm, ptr %i.ba, align 8, !tbaa !66
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci
  store i8 %i.bn, ptr %i.cn, align 1, !tbaa !49
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit24

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit24: ; preds = %bb.p, %_ZN10COutBuffer9WriteByteEh.exit.i21, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i20
  %i.co = icmp sgt i32 %.132, 1
  br i1 %i.co, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !142

._crit_edge:                                      ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit24, %.lr.ph.split.us, %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z11COutArchive11WriteFolderERKNS0_7CFolderE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(133) %1) local_unnamed_addr #0 align 2 !guid !148 {
bb.a:
  %i.a = alloca [15 x i8], align 1                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !76
  %i.d = sext i32 %i.c to i64
  tail call void @_ZN8NArchive3N7z11COutArchive11WriteNumberEy(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.d)
  %i.e = load i32, ptr %i.b, align 4, !tbaa !76
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.preheader53

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

.preheader53:                                     ; preds = %bb.u, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !76
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph60, label %._crit_edge

.lr.ph60:                                         ; preds = %.preheader53
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.v

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv65 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next66, %bb.u ] ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv65
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !80   ; 3 uses
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !82  ; 8 uses
  %i.ab = icmp ult i64 %i.aa, 256
  br i1 %i.ab, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.aa, 65536
  br i1 %i.ac, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.aa, 16777216
  br i1 %i.ad, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp ult i64 %i.aa, 4294967296
  br i1 %i.ae, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = icmp ult i64 %i.aa, 1099511627776
  br i1 %i.af, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp ult i64 %i.aa, 281474976710656
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp ult i64 %i.aa, 72057594037927936
  %spec.select = select i1 %i.ah, i32 7, i32 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.049.lcssa54 = phi i32 [ 1, %bb.b ], [ 6, %bb.g ], [ 2, %bb.c ], [ %spec.select, %bb.h ], [ 3, %bb.d ], [ 5, %bb.f ], [ 4, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ai = zext nneg i32 %.049.lcssa54 to i64      ; 2 uses
  br label %bb.q

bb.j:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !149
  %i.al = icmp eq i32 %i.ak, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = select i1 %i.al, i1 %i.ao, i1 false     ; 2 uses
  %i.aq = select i1 %i.ap, i32 0, i32 16
  %.not = icmp eq i64 %i.z, 0                     ; 2 uses
  %i.ar = select i1 %.not, i32 0, i32 32
  %i.as = or disjoint i32 %i.ar, %i.aq
  %i.at = or disjoint i32 %i.as, %.049.lcssa54    ; 2 uses
  %i.au = trunc nuw nsw i32 %i.at to i8           ; 2 uses
  %i.av = load i8, ptr %i.h, align 8, !tbaa !61, !range !62, !noundef !63
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !64
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.q, align 8, !tbaa !64
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr %i.i, align 1, !tbaa !65, !range !62, !noundef !63
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.bc = load i32, ptr %i.n, align 8, !tbaa !68  ; 2 uses
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.n, align 8, !tbaa !68
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  store i8 %i.au, ptr %i.bf, align 1, !tbaa !49
  %i.bg = load i32, ptr %i.n, align 8, !tbaa !68
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !69
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.n, label %_ZN10COutBuffer9WriteByteEh.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_ZN10COutBuffer14FlushWithCheckEv(ptr noundef nonnull align 8 dereferenceable(49) %i.m)
  br label %_ZN10COutBuffer9WriteByteEh.exit.i

_ZN10COutBuffer9WriteByteEh.exit.i:               ; preds = %bb.n, %bb.m
  %i.bj = load i32, ptr %i.p, align 8, !tbaa !71  ; 2 uses
  %.masked = and i32 %i.bj, 255
  %i.bk = xor i32 %.masked, %i.at
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @g_CrcTable, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !10
  %i.bo = lshr i32 %i.bj, 8
  %i.bp = xor i32 %i.bn, %i.bo
  store i32 %i.bp, ptr %i.p, align 8, !tbaa !71
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

bb.o:                                             ; preds = %bb.l
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !72
  %i.br = load i64, ptr %i.k, align 8, !tbaa !66  ; 3 uses
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.p, label %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bt = call ptr @__cxa_allocate_exception(i64 4) #16 ; 2 uses
  store i32 1, ptr %i.bt, align 16, !tbaa !10
  call void @__cxa_throw(ptr nonnull %i.bt, ptr nonnull @_ZTIi, ptr null) #17
  unreachable

_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i: ; preds = %bb.o
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.bv = add i64 %i.br, 1
  store i64 %i.bv, ptr %i.k, align 8, !tbaa !66
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br
  store i8 %i.au, ptr %i.bw, align 1, !tbaa !49
  br label %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit

_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit:   ; preds = %bb.k, %_ZN10COutBuffer9WriteByteEh.exit.i, %_ZN8NArchive3N7z15CWriteBufferLoc9WriteByteEh.exit.i
  call void @_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.a, i64 noundef %i.ai)
  br i1 %i.ap, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.i, %bb.q
  %indvars.iv = phi i64 [ %i.ai, %bb.i ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.05056 = phi i64 [ %i.aa, %bb.i ], [ %i.bz, %bb.q ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bx = trunc i64 %.05056 to i8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !49
  %i.bz = lshr i64 %.05056, 8
  %i.ca = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ca, label %bb.q, label %bb.j, !llvm.loop !144

bb.r:                                             ; preds = %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
  %i.cb = load i32, ptr %i.aj, align 8, !tbaa !149
  %i.cc = zext i32 %i.cb to i64
  call void @_ZN8NArchive3N7z11COutArchive11WriteNumberEy(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.cc)
  %i.cd = load i32, ptr %i.am, align 4, !tbaa !150
  %i.ce = zext i32 %i.cd to i64
  call void @_ZN8NArchive3N7z11COutArchive11WriteNumberEy(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ce)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN8NArchive3N7z11COutArchive9WriteByteEh.exit
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN8NArchive3N7z11COutArchive11WriteNumberEy(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.z)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !83
  call void @_ZN8NArchive3N7z11COutArchive10WriteBytesEPKvm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.cg, i64 noundef %i.z)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.ch = load i32, ptr %i.b, align 4, !tbaa !76
  %i.ci = sext i32 %i.ch to i64
end_hunk_0
