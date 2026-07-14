inline.NumInlined: 780
inline.NumDeleted: 160
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@insert_combined_dict:bb.a
  br label %dictkeys_get_index.exit.i

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr [4 x i8], ptr %i.ar, i64 %i.an
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = sext i32 %i.av to i64
  br label %dictkeys_get_index.exit.i

dictkeys_get_index.exit.i:                        ; preds = %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.aw, %bb.k ], [ %i.at, %bb.j ]
  %i.ax = icmp slt i64 %.0.i.i, 0
  br i1 %i.ax, label %.thread, label %.lr.ph.i

dictkeys_get_index.exit.i.thread:                 ; preds = %bb.h
  %i.ay = getelementptr i8, ptr %i.ah, i64 32
  %i.az = getelementptr [2 x i8], ptr %i.ay, i64 %i.an
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !44
  %i.bb = icmp slt i16 %i.ba, 0
  br i1 %i.bb, label %.sink.split, label %.lr.ph.i.thread

.lr.ph.i.thread:                                  ; preds = %dictkeys_get_index.exit.i.thread
  %i.bc = getelementptr i8, ptr %i.ah, i64 32
  br label %dictkeys_get_index.exit16.us21.i

dictkeys_get_index.exit.thread.i:                 ; preds = %_PyDict_NotifyEvent.exit
  %i.bd = getelementptr i8, ptr %i.ah, i64 32     ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.an
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !36
  %i.bg = icmp slt i8 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %dictkeys_get_index.exit16.us.i

.lr.ph.i:                                         ; preds = %dictkeys_get_index.exit.i
  %i.bh = getelementptr i8, ptr %i.ah, i64 32     ; 2 uses
  %i.bi = icmp ugt i8 %i.ak, 31
  br i1 %i.bi, label %dictkeys_get_index.exit16.us27.i, label %dictkeys_get_index.exit16.i

dictkeys_get_index.exit16.us.i:                   ; preds = %dictkeys_get_index.exit.thread.i, %dictkeys_get_index.exit16.us.i
  %.018.us.i = phi i64 [ %i.bj, %dictkeys_get_index.exit16.us.i ], [ %1, %dictkeys_get_index.exit.thread.i ]
  %.01417.us.i = phi i64 [ %i.bn, %dictkeys_get_index.exit16.us.i ], [ %i.an, %dictkeys_get_index.exit.thread.i ]
  %i.bj = lshr i64 %.018.us.i, 5                  ; 2 uses
  %i.bk = mul nsw i64 %.01417.us.i, 5
  %i.bl = add nuw nsw i64 %i.bj, 1
  %i.bm = add nuw i64 %i.bl, %i.bk
  %i.bn = and i64 %i.bm, %i.am                    ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bd, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !36
  %i.bq = icmp slt i8 %i.bp, 0
  br i1 %i.bq, label %.loopexit, label %dictkeys_get_index.exit16.us.i, !llvm.loop !264

dictkeys_get_index.exit16.us21.i:                 ; preds = %.lr.ph.i.thread, %dictkeys_get_index.exit16.us21.i
  %.018.us19.i = phi i64 [ %i.br, %dictkeys_get_index.exit16.us21.i ], [ %1, %.lr.ph.i.thread ]
  %.01417.us20.i = phi i64 [ %i.bv, %dictkeys_get_index.exit16.us21.i ], [ %i.an, %.lr.ph.i.thread ]
  %i.br = lshr i64 %.018.us19.i, 5                ; 2 uses
  %i.bs = mul nsw i64 %.01417.us20.i, 5
  %i.bt = add nuw nsw i64 %i.br, 1
  %i.bu = add nuw i64 %i.bt, %i.bs
  %i.bv = and i64 %i.bu, %i.am                    ; 3 uses
  %i.bw = getelementptr [2 x i8], ptr %i.bc, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !44
  %i.by = icmp slt i16 %i.bx, 0
  br i1 %i.by, label %.sink.split, label %dictkeys_get_index.exit16.us21.i, !llvm.loop !264

dictkeys_get_index.exit16.us27.i:                 ; preds = %.lr.ph.i, %dictkeys_get_index.exit16.us27.i
  %.018.us25.i = phi i64 [ %i.bz, %dictkeys_get_index.exit16.us27.i ], [ %1, %.lr.ph.i ]
  %.01417.us26.i = phi i64 [ %i.cd, %dictkeys_get_index.exit16.us27.i ], [ %i.an, %.lr.ph.i ]
  %i.bz = lshr i64 %.018.us25.i, 5                ; 2 uses
  %i.ca = mul i64 %.01417.us26.i, 5
  %i.cb = add nuw nsw i64 %i.bz, 1
  %i.cc = add i64 %i.cb, %i.ca
  %i.cd = and i64 %i.cc, %i.am                    ; 3 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bh, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !37
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %.thread, label %dictkeys_get_index.exit16.us27.i, !llvm.loop !264

dictkeys_get_index.exit16.i:                      ; preds = %.lr.ph.i, %dictkeys_get_index.exit16.i
  %.018.i = phi i64 [ %i.ch, %dictkeys_get_index.exit16.i ], [ %1, %.lr.ph.i ]
  %.01417.i = phi i64 [ %i.cl, %dictkeys_get_index.exit16.i ], [ %i.an, %.lr.ph.i ]
  %i.ch = lshr i64 %.018.i, 5                     ; 2 uses
  %i.ci = mul nsw i64 %.01417.i, 5
  %i.cj = add nuw nsw i64 %i.ch, 1
  %i.ck = add nuw i64 %i.cj, %i.ci
  %i.cl = and i64 %i.ck, %i.am                    ; 3 uses
  %i.cm = getelementptr [4 x i8], ptr %i.bh, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %.thread, label %dictkeys_get_index.exit16.i, !llvm.loop !264

.loopexit:                                        ; preds = %dictkeys_get_index.exit16.us.i, %dictkeys_get_index.exit.thread.i
  %.014.lcssa.i = phi i64 [ %i.an, %dictkeys_get_index.exit.thread.i ], [ %i.bn, %dictkeys_get_index.exit16.us.i ]
  %i.cp = getelementptr i8, ptr %i.ah, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !37
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = getelementptr i8, ptr %i.bd, i64 %.014.lcssa.i
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !36
  %.pre51 = load ptr, ptr %i.a, align 8, !tbaa !31
  br label %dictkeys_set_index.exit

.sink.split:                                      ; preds = %dictkeys_get_index.exit16.us21.i, %dictkeys_get_index.exit.i.thread
  %.014.lcssa.i.ph41.ph = phi i64 [ %i.an, %dictkeys_get_index.exit.i.thread ], [ %i.bv, %dictkeys_get_index.exit16.us21.i ]
  %i.ct = getelementptr i8, ptr %i.ah, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !37
  %i.cv = trunc i64 %i.cu to i16
  %i.cw = getelementptr i8, ptr %i.ah, i64 32
  %i.cx = getelementptr [2 x i8], ptr %i.cw, i64 %.014.lcssa.i.ph41.ph
  store i16 %i.cv, ptr %i.cx, align 2, !tbaa !44
  br label %dictkeys_set_index.exit

.thread:                                          ; preds = %dictkeys_get_index.exit16.i, %dictkeys_get_index.exit16.us27.i, %dictkeys_get_index.exit.i
  %.014.lcssa.i.ph38 = phi i64 [ %i.cd, %dictkeys_get_index.exit16.us27.i ], [ %i.an, %dictkeys_get_index.exit.i ], [ %i.cl, %dictkeys_get_index.exit16.i ] ; 2 uses
  %.in = getelementptr i8, ptr %i.ah, i64 24
  %i.cy = load i64, ptr %.in, align 8, !tbaa !37  ; 2 uses
  %i.cz = icmp ugt i8 %i.ak, 31
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.da = getelementptr i8, ptr %i.ah, i64 32
  %i.db = getelementptr [8 x i8], ptr %i.da, i64 %.014.lcssa.i.ph38
  store i64 %i.cy, ptr %i.db, align 8, !tbaa !37
  br label %dictkeys_set_index.exit

bb.m:                                             ; preds = %.thread
  %i.dc = trunc i64 %i.cy to i32
  %i.dd = getelementptr i8, ptr %i.ah, i64 32
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %.014.lcssa.i.ph38
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !7
  br label %dictkeys_set_index.exit

dictkeys_set_index.exit:                          ; preds = %.loopexit, %.sink.split, %bb.l, %bb.m
  %i.df = phi ptr [ %.pre51, %.loopexit ], [ %i.ah, %.sink.split ], [ %i.ah, %bb.l ], [ %i.ah, %bb.m ] ; 6 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 10
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !36
  %.not34 = icmp eq i8 %i.dh, 0
  %i.di = getelementptr i8, ptr %i.df, i64 32
  %i.dj = getelementptr i8, ptr %i.df, i64 9
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = getelementptr i8, ptr %i.di, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.df, i64 24     ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !37 ; 3 uses
  br i1 %.not34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %dictkeys_set_index.exit
  %i.dq = getelementptr [16 x i8], ptr %i.dn, i64 %i.dp ; 2 uses
  store ptr %2, ptr %i.dq, align 8, !tbaa !53
  %i.dr = getelementptr i8, ptr %i.dq, i64 8
  store ptr %3, ptr %i.dr, align 8, !tbaa !55
  br label %bb.p

bb.o:                                             ; preds = %dictkeys_set_index.exit
  %i.ds = getelementptr [24 x i8], ptr %i.dn, i64 %i.dp ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  store ptr %2, ptr %i.dt, align 8, !tbaa !45
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  store ptr %3, ptr %i.du, align 8, !tbaa !48
  store i64 %1, ptr %i.ds, align 8, !tbaa !47
  %.pre52 = load i64, ptr %i.do, align 8, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dv = phi i64 [ %.pre52, %bb.o ], [ %i.dp, %bb.n ]
  %i.dw = getelementptr i8, ptr %i.df, i64 16     ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !37
  %i.dy = add i64 %i.dx, -1
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !37
  %i.dz = getelementptr i8, ptr %i.df, i64 24
  %i.ea = add i64 %i.dv, 1
  store i64 %i.ea, ptr %i.dz, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.c, %bb.p
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.p ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dictresize(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i8 %1, 63
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @PyErr_NoMemory() #21      ; 0 uses
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 14 uses
  %i.e = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35   ; 8 uses
  %i.g = getelementptr i8, ptr %i.d, i64 10       ; 3 uses
  %i.h = load i8, ptr %i.g, align 2, !tbaa !36
  %.not = icmp ne i8 %i.h, 0
  %i.i = icmp ne i32 %2, 0
  %i.j = and i1 %i.i, %.not                       ; 4 uses
  %i.k = select i1 %i.j, i64 16, i64 24
  %i.l = zext nneg i8 %1 to i32                   ; 4 uses
  %i.m = zext nneg i8 %1 to i64
  %i.n = shl i64 2, %i.m
  %i.o = udiv i64 %i.n, 3                         ; 3 uses
  %i.p = icmp samesign ult i8 %1, 8
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ult i8 %1, 16
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw nsw i32 %i.l, 1
  br label %.thread.i

bb.f:                                             ; preds = %bb.d
  %i.s = icmp samesign ugt i8 %1, 31
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw nsw i32 %i.l, 3
  br label %.thread.i

bb.h:                                             ; preds = %bb.f
  %i.u = add nuw nsw i32 %i.l, 2
  br label %.thread.i

bb.i:                                             ; preds = %bb.c
  %i.v = icmp eq i8 %1, 3
  %or.cond.i = and i1 %i.v, %i.j
  br i1 %or.cond.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 11600    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %.thread.i, label %_PyFreeList_PopMem.exit.i

_PyFreeList_PopMem.exit.i:                        ; preds = %bb.j
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !61
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !60
  %i.ab = getelementptr i8, ptr %i.x, i64 11608   ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !62
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !62
  %.pre.i = shl nuw nsw i64 %i.o, 4
  br label %bb.k

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.e
  %.03642.ph.i = phi i32 [ 3, %bb.j ], [ %i.l, %bb.i ], [ %i.t, %bb.g ], [ %i.r, %bb.e ], [ %i.u, %bb.h ] ; 2 uses
  %i.ae = zext nneg i32 %.03642.ph.i to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = mul i64 %i.k, %i.o                      ; 2 uses
  %i.ah = add i64 %i.ag, 32
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = tail call ptr @PyMem_Malloc(i64 noundef %i.ai) #21 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %new_keys_object.exit.thread, label %bb.k

new_keys_object.exit.thread:                      ; preds = %.thread.i
  %i.al = tail call ptr @PyErr_NoMemory() #21     ; 0 uses
  br label %bb.aw

bb.k:                                             ; preds = %.thread.i, %_PyFreeList_PopMem.exit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_PyFreeList_PopMem.exit.i ], [ %i.ag, %.thread.i ]
  %.0364246.i = phi i32 [ 3, %_PyFreeList_PopMem.exit.i ], [ %.03642.ph.i, %.thread.i ] ; 2 uses
  %.1.i = phi ptr [ %i.z, %_PyFreeList_PopMem.exit.i ], [ %i.aj, %.thread.i ] ; 15 uses
  store i64 1, ptr %.1.i, align 8, !tbaa !37
  %i.am = getelementptr i8, ptr %.1.i, i64 8
  store i8 %1, ptr %i.am, align 8, !tbaa !36
  %i.an = trunc nuw nsw i32 %.0364246.i to i8
  %i.ao = getelementptr i8, ptr %.1.i, i64 9      ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !36
  %i.ap = zext i1 %i.j to i8
  %i.aq = getelementptr i8, ptr %.1.i, i64 10     ; 2 uses
  store i8 %i.ap, ptr %i.aq, align 2, !tbaa !36
  %i.ar = getelementptr i8, ptr %.1.i, i64 24
  store i64 0, ptr %i.ar, align 8, !tbaa !37
  %i.as = getelementptr i8, ptr %.1.i, i64 16
  store i64 %i.o, ptr %i.as, align 8, !tbaa !37
  %i.at = getelementptr i8, ptr %.1.i, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !7
  %i.au = getelementptr i8, ptr %.1.i, i64 32     ; 3 uses
  %i.av = zext nneg i32 %.0364246.i to i64
  %i.aw = shl nuw i64 1, %i.av                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, i8 -1, i64 %i.aw, i1 false)
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.aw
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 0, i64 %.pre-phi.i, i1 false)
  %i.ay = getelementptr i8, ptr %0, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !38 ; 29 uses
  %.not144 = icmp eq ptr %i.f, null
  %i.ba = load i8, ptr %i.ao, align 1, !tbaa !36
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = getelementptr i8, ptr %i.au, i64 %i.bc  ; 18 uses
  br i1 %.not144, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr i8, ptr %i.d, i64 32
  %i.bf = getelementptr i8, ptr %i.d, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !36
  %i.bh = zext nneg i8 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = getelementptr i8, ptr %i.be, i64 %i.bi  ; 2 uses
  %i.bk = load i8, ptr %i.aq, align 2, !tbaa !36
  %i.bl = icmp eq i8 %i.bk, 0
  %i.bm = icmp sgt i64 %i.az, 0                   ; 2 uses
  br i1 %i.bl, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %i.bm, label %.lr.ph159, label %._crit_edge160

.lr.ph159:                                        ; preds = %bb.m
  %i.bn = getelementptr i8, ptr %i.f, i64 8
  br label %bb.n

._crit_edge160:                                   ; preds = %_Py_NewRef.exit, %bb.m
  tail call fastcc void @build_indices_generic(ptr noundef %.1.i, ptr noundef %i.bd, i64 noundef %i.az)
  br label %bb.s

bb.n:                                             ; preds = %.lr.ph159, %_Py_NewRef.exit
  %.0137157 = phi i64 [ 0, %.lr.ph159 ], [ %i.ch, %_Py_NewRef.exit ] ; 3 uses
  %.val149 = load ptr, ptr %i.e, align 8, !tbaa !35 ; 2 uses
  %i.bo = getelementptr i8, ptr %.val149, i64 8
  %i.bp = load i8, ptr %.val149, align 8, !tbaa !57
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr [8 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 %.0137157
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !36
  %i.bu = zext i8 %i.bt to i64                    ; 2 uses
  %i.bv = getelementptr [16 x i8], ptr %i.bj, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !53 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !36 ; 2 uses
  %i.by = icmp ugt i32 %i.bx, -1073741825
  br i1 %i.by, label %_Py_NewRef.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = add nuw i32 %i.bx, 1
  store i32 %i.bz, ptr %i.bw, align 8, !tbaa !36
  %.pre = load ptr, ptr %i.bv, align 8, !tbaa !53
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.n, %bb.o
  %i.ca = phi ptr [ %i.bw, %bb.n ], [ %.pre, %bb.o ]
  %i.cb = getelementptr [24 x i8], ptr %i.bd, i64 %.0137157 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  store ptr %i.bw, ptr %i.cc, align 8, !tbaa !45
  %i.cd = getelementptr i8, ptr %i.ca, i64 24
  %.val147 = load i64, ptr %i.cd, align 8, !tbaa !49
  store i64 %.val147, ptr %i.cb, align 8, !tbaa !47
  %i.ce = getelementptr [8 x i8], ptr %i.bn, i64 %i.bu
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !58
  %i.cg = getelementptr i8, ptr %i.cb, i64 16
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !48
  %i.ch = add nuw nsw i64 %.0137157, 1            ; 2 uses
  %exitcond168.not = icmp eq i64 %i.ch, %i.az
  br i1 %exitcond168.not, label %._crit_edge160, label %bb.n, !llvm.loop !297

bb.p:                                             ; preds = %bb.l
  br i1 %i.bm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p
  %i.ci = getelementptr i8, ptr %i.f, i64 8
  br label %bb.q

._crit_edge:                                      ; preds = %_Py_NewRef.exit150, %bb.p
  tail call fastcc void @build_indices_unicode(ptr noundef %.1.i, ptr noundef %i.bd, i64 noundef %i.az)
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph, %_Py_NewRef.exit150
  %.0138156 = phi i64 [ 0, %.lr.ph ], [ %i.cz, %_Py_NewRef.exit150 ] ; 3 uses
  %.val148 = load ptr, ptr %i.e, align 8, !tbaa !35 ; 2 uses
  %i.cj = getelementptr i8, ptr %.val148, i64 8
  %i.ck = load i8, ptr %.val148, align 8, !tbaa !57
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 %.0138156
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !36
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  %i.cq = getelementptr [16 x i8], ptr %i.bj, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !53 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !36 ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, -1073741825
  br i1 %i.ct, label %_Py_NewRef.exit150, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = add nuw i32 %i.cs, 1
  store i32 %i.cu, ptr %i.cr, align 8, !tbaa !36
  br label %_Py_NewRef.exit150

_Py_NewRef.exit150:                               ; preds = %bb.q, %bb.r
  %i.cv = getelementptr [16 x i8], ptr %i.bd, i64 %.0138156 ; 2 uses
  store ptr %i.cr, ptr %i.cv, align 8, !tbaa !53
  %i.cw = getelementptr [8 x i8], ptr %i.ci, i64 %i.cp
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !58
  %i.cy = getelementptr i8, ptr %i.cv, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !55
  %i.cz = add nuw nsw i64 %.0138156, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %i.az
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !298

bb.s:                                             ; preds = %._crit_edge, %._crit_edge160
  store ptr %.1.i, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @dictkeys_decref(ptr noundef nonnull %i.d)
  store ptr null, ptr %i.e, align 8, !tbaa !35
  %i.da = getelementptr i8, ptr %i.f, i64 2
  %i.db = load i8, ptr %i.da, align 2, !tbaa !39
  %.not146 = icmp eq i8 %i.db, 0
  br i1 %.not146, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr i8, ptr %i.f, i64 3
  store i8 0, ptr %i.dc, align 1, !tbaa !41
  %i.dd = load i8, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq i8 %i.dd, 0
  br i1 %.not.i, label %invalidate_and_clear_inline_values.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.de = getelementptr i8, ptr %i.f, i64 8
  %i.df = zext i8 %i.dd to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.de, i8 0, i64 %i.dg, i1 false), !tbaa !58
  br label %invalidate_and_clear_inline_values.exit

bb.u:                                             ; preds = %bb.s
  tail call void @PyMem_Free(ptr noundef nonnull %i.f) #21
  br label %invalidate_and_clear_inline_values.exit

bb.v:                                             ; preds = %bb.k
  %i.dh = load i8, ptr %i.g, align 2, !tbaa !36
  %i.di = icmp eq i8 %i.dh, 0
  %i.dj = getelementptr i8, ptr %i.d, i64 32
  %i.dk = getelementptr i8, ptr %i.d, i64 9
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !36
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = shl nuw i64 1, %i.dm
  %i.do = getelementptr i8, ptr %i.dj, i64 %i.dn  ; 8 uses
  br i1 %i.di, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.dp = getelementptr i8, ptr %i.d, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !37
  %i.dr = icmp eq i64 %i.dq, %i.az
  br i1 %i.dr, label %bb.x, label %.preheader152

.preheader152:                                    ; preds = %bb.w
  %i.ds = icmp sgt i64 %i.az, 0
  br i1 %i.ds, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader152
  %xtraiter203 = and i64 %i.az, 1
  %i.dt = icmp eq i64 %i.az, 1
  br i1 %i.dt, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter206 = and i64 %i.az, 9223372036854775806
  br label %.preheader

bb.x:                                             ; preds = %bb.w
  %i.du = mul i64 %i.az, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bd, ptr align 8 %i.do, i64 %i.du, i1 false)
  br label %.loopexit

.preheader:                                       ; preds = %bb.aa, %.preheader.preheader.new
  %.0134167 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.eg, %bb.aa ] ; 3 uses
end_hunk_0
