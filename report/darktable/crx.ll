inline.NumInlined: 287
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_Z22crxIdwt53FilterGetLineP12CrxPlaneCompi:bb.a
  %i.r = add i16 %i.i, -1
  store i16 %i.r, ptr %i.h, align 2, !tbaa !163
  ret ptr %i.q
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_Z21crxIdwt53FilterDecodeP12CrxPlaneCompiP8CrxQStep(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [112 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  %i.f = load i16, ptr %i.e, align 2, !tbaa !163
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165
  %i.i = mul nsw i32 %1, 3
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [88 x i8], ptr %i.h, i64 %i.j ; 6 uses
  %.not36 = icmp eq ptr %2, null
  %i.l = getelementptr inbounds [16 x i8], ptr %2, i64 %i.c
  %i.m = select i1 %.not36, ptr null, ptr %i.l    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 102
  %i.o = load i16, ptr %i.n, align 2, !tbaa !166  ; 2 uses
  %i.p = sext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, -3
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.s = load i16, ptr %i.r, align 8, !tbaa !167
  %i.t = sext i16 %i.s to i32
  %.not37 = icmp sgt i32 %i.q, %i.t
  br i1 %.not37, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load i8, ptr %i.u, align 4, !tbaa !168
  %i.w = and i8 %i.v, 4
  %.not38 = icmp eq i8 %i.w, 0
  br i1 %.not38, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.x = and i16 %i.o, 1
  %.not39 = icmp eq i16 %i.x, 0
  br i1 %.not39, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not40 = icmp eq i32 %1, 0
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %1, -1
  %i.z = tail call noundef i32 @_Z21crxIdwt53FilterDecodeP12CrxPlaneCompiP8CrxQStep(ptr noundef nonnull %0, i32 noundef %i.y, ptr noundef %2)
  %.not42 = icmp eq i32 %i.z, 0
  br i1 %.not42, label %bb.h, label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.aa = tail call noundef i32 @_Z30crxDecodeLineWithIQuantizationP10CrxSubbandP8CrxQStep(ptr noundef %i.k, ptr noundef %i.m)
  %.not41 = icmp eq i32 %i.aa, 0
  br i1 %.not41, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.ac = tail call noundef i32 @_Z30crxDecodeLineWithIQuantizationP10CrxSubbandP8CrxQStep(ptr noundef nonnull %i.ab, ptr noundef %i.m)
  %.not43 = icmp eq i32 %i.ac, 0
  br i1 %.not43, label %bb.o, label %bb.p

bb.i:                                             ; preds = %bb.c, %bb.b
  %.not44 = icmp eq i32 %1, 0
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = add nsw i32 %1, -1
  %i.ae = tail call noundef i32 @_Z21crxIdwt53FilterDecodeP12CrxPlaneCompiP8CrxQStep(ptr noundef nonnull %0, i32 noundef %i.ad, ptr noundef %2)
  %.not46 = icmp eq i32 %i.ae, 0
  br i1 %.not46, label %bb.l, label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.af = tail call noundef i32 @_Z30crxDecodeLineWithIQuantizationP10CrxSubbandP8CrxQStep(ptr noundef %i.k, ptr noundef %i.m)
  %.not45 = icmp eq i32 %i.af, 0
  br i1 %.not45, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.ah = tail call noundef i32 @_Z30crxDecodeLineWithIQuantizationP10CrxSubbandP8CrxQStep(ptr noundef nonnull %i.ag, ptr noundef %i.m)
  %.not47 = icmp eq i32 %i.ah, 0
  br i1 %.not47, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.aj = tail call noundef i32 @_Z30crxDecodeLineWithIQuantizationP10CrxSubbandP8CrxQStep(ptr noundef nonnull %i.ai, ptr noundef %i.m)
  %.not48 = icmp eq i32 %i.aj, 0
  br i1 %.not48, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.al = tail call noundef i32 @_Z30crxDecodeLineWithIQuantizationP10CrxSubbandP8CrxQStep(ptr noundef nonnull %i.ak, ptr noundef %i.m)
  %.not49 = icmp eq i32 %i.al, 0
  br i1 %.not49, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.d, %bb.h
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %bb.n, %bb.m, %bb.l, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ -1, %bb.h ], [ -1, %bb.k ], [ 0, %bb.o ], [ -1, %bb.j ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.l ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z24crxIdwt53FilterTransformP12CrxPlaneCompj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 3 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %i.c ; 28 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 98 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !163
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 7 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !167  ; 2 uses
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 102 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !166  ; 2 uses
  %i.l = sext i16 %i.k to i32
  %i.m = add nsw i32 %i.l, -3
  %.not293 = icmp sgt i32 %i.m, %i.i
  br i1 %.not293, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !168
  %i.p = and i8 %i.o, 4
  %.not304 = icmp eq i8 %i.p, 0
  br i1 %.not304, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %bb.c
  %i.q = and i16 %i.k, 1
  %.not305 = icmp eq i16 %i.q, 0
  br i1 %.not305, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not306 = icmp eq i32 %1, 0
  br i1 %.not306, label %._crit_edge380, label %bb.f

._crit_edge380:                                   ; preds = %bb.e
  %.pre381 = load ptr, ptr %i.d, align 8, !tbaa !151
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -14
  %i.s = load i16, ptr %i.r, align 2, !tbaa !163
  %.not307 = icmp eq i16 %i.s, 0
  %i.t = add i32 %1, -1                           ; 2 uses
  br i1 %.not307, label %bb.g, label %._crit_edge385

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef i32 @_Z24crxIdwt53FilterTransformP12CrxPlaneCompj(ptr noundef nonnull %0, i32 noundef %i.t) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !158
  br label %._crit_edge385

._crit_edge385:                                   ; preds = %bb.f, %bb.g
  %i.v = phi ptr [ %.pre, %bb.g ], [ %i.b, %bb.f ]
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [112 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.z = load i8, ptr %i.y, align 4, !tbaa !162
  %i.aa = sext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 98 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !163 ; 2 uses
  %i.ad = sext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.aa, 5
  %i.af = sub nsw i32 %i.ae, %i.ad
  %i.ag = srem i32 %i.af, 5
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.x, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !164 ; 2 uses
  %i.al = add i16 %i.ac, -1
  store i16 %i.al, ptr %i.ab, align 2, !tbaa !163
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !151
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge380, %._crit_edge385
  %i.am = phi ptr [ %.pre381, %._crit_edge380 ], [ %i.ak, %._crit_edge385 ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !153 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 100 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !162 ; 3 uses
  %i.as = sext i8 %i.ar to i16
  %i.at = sext i8 %i.ar to i64
  %i.au = getelementptr [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !164 ; 6 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64              ; 2 uses
  %i.ay = sext i8 %i.ar to i16
  %2 = insertelement <2 x i16> poison, i16 %i.ay, i64 0
  %3 = shufflevector <2 x i16> %2, <2 x i16> poison, <2 x i32> zeroinitializer
  %4 = add nsw <2 x i16> %3, <i16 1, i16 2>
  %5 = srem <2 x i16> %4, splat (i16 5)           ; 2 uses
  %6 = extractelement <2 x i16> %5, i64 0
  %i.az = sext i16 %6 to i64
  %i.ba = getelementptr [8 x i8], ptr %i.ap, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !164 ; 6 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 4 uses
  %7 = extractelement <2 x i16> %5, i64 1
  %i.be = sext i16 %7 to i64
  %i.bf = getelementptr [8 x i8], ptr %i.ap, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !164 ; 6 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 4 uses
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !164 ; 15 uses
  %i.bk = ptrtoaddr ptr %i.bj to i64              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !164
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !164 ; 7 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !164
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !164
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !156 ; 9 uses
  %i.bs = icmp slt i16 %i.br, 2
  br i1 %i.bs, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bt = load i8, ptr %i.n, align 4, !tbaa !168  ; 2 uses
  %i.bu = and i8 %i.bt, 2
  %.not308 = icmp eq i8 %i.bu, 0
  %i.bv = load i32, ptr %i.am, align 4, !tbaa !21
  %i.bw = load i32, ptr %i.ao, align 4, !tbaa !21 ; 2 uses
  br i1 %.not308, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !21
  %i.bz = add i32 %i.bw, 2
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = ashr i32 %i.ca, 2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cc = add nsw i32 %i.bw, 1
  %i.cd = ashr i32 %i.cc, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink407 = phi i32 [ %i.cd, %bb.k ], [ %i.cb, %bb.j ]
  %.0277 = phi ptr [ %i.ao, %bb.k ], [ %i.bx, %bb.j ] ; 7 uses
  %i.ce = sub nsw i32 %i.bv, %.sink407            ; 5 uses
  store i32 %i.ce, ptr %i.bj, align 4, !tbaa !21
  %i.cf = zext nneg i16 %i.br to i32              ; 3 uses
  %i.cg = add nsw i32 %i.cf, -3
  %.0276323 = getelementptr i8, ptr %i.am, i64 4  ; 6 uses
  %i.ch = icmp samesign ugt i16 %i.br, 3
  br i1 %i.ch, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ci = add nsw i32 %i.cf, -4                   ; 2 uses
  %i.cj = lshr i32 %i.ci, 1
  %narrow = add nuw i32 %i.cj, 1
  %i.ck = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.ci, 30
  br i1 %min.iters.check, label %.lr.ph.preheader576, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.bj, i64 4   ; 2 uses
  %i.cl = add nsw i32 %i.cf, -4
  %i.cm = lshr i32 %i.cl, 1
  %i.cn = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = getelementptr i8, ptr %i.bj, i64 %i.co
  %scevgep423 = getelementptr i8, ptr %i.cp, i64 12 ; 2 uses
  %i.cq = shl nuw nsw i64 %i.cn, 2
  %i.cr = add nuw nsw i64 %i.cq, 8                ; 2 uses
  %scevgep424 = getelementptr i8, ptr %i.am, i64 %i.cr
  %scevgep425 = getelementptr i8, ptr %.0277, i64 %i.cr
  %bound0 = icmp ult ptr %scevgep, %scevgep424
  %bound1 = icmp ult ptr %.0276323, %scevgep423
  %found.conflict = and i1 %bound0, %bound1
  %bound0426 = icmp ult ptr %scevgep, %scevgep425
  %bound1427 = icmp ult ptr %.0277, %scevgep423
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx = or i1 %found.conflict, %found.conflict428
  br i1 %conflict.rdx, label %.lr.ph.preheader576, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ck, 4294967288              ; 5 uses
  %i.cs = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ct = getelementptr i8, ptr %.0276323, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %.0277, i64 %i.cs ; 2 uses
  %i.cv = shl nuw nsw i64 %n.vec, 3
  %i.cw = getelementptr i8, ptr %i.bj, i64 %i.cv  ; 2 uses
  %i.cx = trunc nuw i64 %n.vec to i32
  %i.cy = shl i32 %i.cx, 1
  %vector.recur.init = insertelement <8 x i32> poison, i32 %i.ce, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph ], [ %i.df, %vector.body ]
  %i.cz = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0276323, i64 %i.cz
  %next.gep429 = getelementptr i8, ptr %.0277, i64 %i.cz ; 2 uses
  %i.da = shl i64 %index, 3
  %next.gep430 = getelementptr i8, ptr %i.bj, i64 %i.da
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !21, !alias.scope !169
  %wide.load431 = load <8 x i32>, ptr %next.gep429, align 4, !tbaa !21, !alias.scope !172 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %next.gep429, i64 4
  %wide.load432 = load <8 x i32>, ptr %i.db, align 4, !tbaa !21, !alias.scope !172
  %i.dc = add <8 x i32> %wide.load431, splat (i32 2)
  %i.dd = add <8 x i32> %i.dc, %wide.load432
  %i.de = ashr <8 x i32> %i.dd, splat (i32 2)
  %i.df = sub nsw <8 x i32> %wide.load, %i.de     ; 5 uses
  %i.dg = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.df, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dh = add nsw <8 x i32> %i.df, %i.dg
  %i.di = ashr <8 x i32> %i.dh, splat (i32 1)
  %i.dj = add nsw <8 x i32> %i.di, %wide.load431
  %i.dk = getelementptr inbounds nuw i8, ptr %next.gep430, i64 4
  %interleaved.vec = shufflevector <8 x i32> %i.dj, <8 x i32> %i.df, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.dk, align 4, !tbaa !21, !alias.scope !174, !noalias !176
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i32> %i.df, i64 7 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ck
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader576

.lr.ph.preheader576:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.0276327.ph = phi ptr [ %.0276323, %vector.memcheck ], [ %.0276323, %.lr.ph.preheader ], [ %i.ct, %middle.block ]
  %.1326.ph = phi ptr [ %.0277, %vector.memcheck ], [ %.0277, %.lr.ph.preheader ], [ %i.cu, %middle.block ]
  %.0278325.ph = phi ptr [ %i.bj, %vector.memcheck ], [ %i.bj, %.lr.ph.preheader ], [ %i.cw, %middle.block ]
  %.0280324.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.l
  %i.dm = phi i32 [ %i.ce, %bb.l ], [ %vector.recur.extract, %middle.block ], [ %i.dw, %.lr.ph ] ; 3 uses
  %.0278.lcssa = phi ptr [ %i.bj, %bb.l ], [ %i.cw, %middle.block ], [ %i.eb, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi ptr [ %.0277, %bb.l ], [ %i.cu, %middle.block ], [ %i.dr, %.lr.ph ] ; 4 uses
  %.0276.lcssa = phi ptr [ %.0276323, %bb.l ], [ %i.ct, %middle.block ], [ %.0276, %.lr.ph ] ; 2 uses
  %i.dn = and i8 %i.bt, 1
  %.not310 = icmp eq i8 %i.dn, 0
  br i1 %.not310, label %bb.n, label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader576, %.lr.ph
  %i.do = phi i32 [ %i.dw, %.lr.ph ], [ %.ph, %.lr.ph.preheader576 ]
  %.0276327 = phi ptr [ %.0276, %.lr.ph ], [ %.0276327.ph, %.lr.ph.preheader576 ] ; 2 uses
  %.1326 = phi ptr [ %i.dr, %.lr.ph ], [ %.1326.ph, %.lr.ph.preheader576 ] ; 2 uses
  %.0278325 = phi ptr [ %i.eb, %.lr.ph ], [ %.0278325.ph, %.lr.ph.preheader576 ] ; 2 uses
  %.0280324 = phi i32 [ %i.ec, %.lr.ph ], [ %.0280324.ph, %.lr.ph.preheader576 ]
  %i.dp = load i32, ptr %.0276327, align 4, !tbaa !21
  %i.dq = load i32, ptr %.1326, align 4, !tbaa !21 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1326, i64 4 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !21
  %i.dt = add i32 %i.dq, 2
  %i.du = add i32 %i.dt, %i.ds
  %i.dv = ashr i32 %i.du, 2
  %i.dw = sub nsw i32 %i.dp, %i.dv                ; 4 uses
  %i.dx = add nsw i32 %i.dw, %i.do
  %i.dy = ashr i32 %i.dx, 1
  %i.dz = add nsw i32 %i.dy, %i.dq
  %i.ea = getelementptr inbounds nuw i8, ptr %.0278325, i64 4
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !21
  %i.eb = getelementptr inbounds nuw i8, ptr %.0278325, i64 8 ; 3 uses
  store i32 %i.dw, ptr %i.eb, align 4, !tbaa !21
  %i.ec = add nuw nsw i32 %.0280324, 2            ; 2 uses
  %.0276 = getelementptr inbounds nuw i8, ptr %.0276327, i64 4 ; 2 uses
  %i.ed = icmp slt i32 %i.ec, %i.cg
  br i1 %i.ed, label %.lr.ph, label %._crit_edge, !llvm.loop !178

bb.m:                                             ; preds = %._crit_edge
  %i.ee = load i32, ptr %.0276.lcssa, align 4, !tbaa !21
  %i.ef = load i32, ptr %.1.lcssa, align 4, !tbaa !21 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !21
  %i.ei = add i32 %i.ef, 2
  %i.ej = add i32 %i.ei, %i.eh
  %i.ek = ashr i32 %i.ej, 2
  %i.el = sub nsw i32 %i.ee, %i.ek                ; 2 uses
  %i.em = add nsw i32 %i.el, %i.dm
  %i.en = ashr i32 %i.em, 1
  %i.eo = add nsw i32 %i.en, %i.ef
  %i.ep = getelementptr inbounds nuw i8, ptr %.0278.lcssa, i64 4
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !21
  %i.eq = and i16 %i.br, 1
  %.not312 = icmp eq i16 %i.eq, 0
  br i1 %.not312, label %iter.check, label %.lr.ph332.preheader.sink.split

bb.n:                                             ; preds = %._crit_edge
  %i.er = and i16 %i.br, 1
  %.not311 = icmp eq i16 %i.er, 0
  br i1 %.not311, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.es = load i32, ptr %.0276.lcssa, align 4, !tbaa !21
  %i.et = load i32, ptr %.1.lcssa, align 4, !tbaa !21 ; 2 uses
  %i.eu = add nsw i32 %i.et, 1
  %i.ev = ashr i32 %i.eu, 1
  %i.ew = sub nsw i32 %i.es, %i.ev                ; 2 uses
  %i.ex = add nsw i32 %i.ew, %i.dm
  %i.ey = ashr i32 %i.ex, 1
  %i.ez = add nsw i32 %i.ey, %i.et
  %i.fa = getelementptr inbounds nuw i8, ptr %.0278.lcssa, i64 4
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !21
end_hunk_0
