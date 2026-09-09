Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/crx?download=true
inline.NumInlined: 287
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_Z22crxIdwt53FilterGetLineP12CrxPlaneCompi:bb.a
  %i.k = add nsw i32 %i.g, 5
  %i.l = sub nsw i32 %i.k, %i.j
  %i.m = srem i32 %i.l, 5
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr [8 x i8], ptr %i.d, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !116
  %i.r = add i16 %i.i, -1
  store i16 %i.r, ptr %i.h, align 2, !tbaa !115
  ret ptr %i.q
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_Z21crxIdwt53FilterDecodeP12CrxPlaneCompiP8CrxQStep(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [112 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  %i.f = load i16, ptr %i.e, align 2, !tbaa !115
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.i = mul nsw i32 %1, 3
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [88 x i8], ptr %i.h, i64 %i.j ; 6 uses
  %.not36 = icmp eq ptr %2, null
  %i.l = getelementptr inbounds [16 x i8], ptr %2, i64 %i.c
  %i.m = select i1 %.not36, ptr null, ptr %i.l    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 102
  %i.o = load i16, ptr %i.n, align 2, !tbaa !118  ; 2 uses
  %i.p = sext i16 %i.o to i32
  %i.q = add nsw i32 %i.p, -3
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.s = load i16, ptr %i.r, align 8, !tbaa !119
  %i.t = sext i16 %i.s to i32
  %.not37 = icmp sgt i32 %i.q, %i.t
  br i1 %.not37, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load i8, ptr %i.u, align 4, !tbaa !120
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %i.c ; 28 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 98 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !115
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 7 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !119  ; 2 uses
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 102 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !118  ; 2 uses
  %i.l = sext i16 %i.k to i32
  %i.m = add nsw i32 %i.l, -3
  %.not293 = icmp sgt i32 %i.m, %i.i
  br i1 %.not293, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !120
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
  %.pre381 = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -14
  %i.s = load i16, ptr %i.r, align 2, !tbaa !115
  %.not307 = icmp eq i16 %i.s, 0
  %i.t = add i32 %1, -1                           ; 2 uses
  br i1 %.not307, label %bb.g, label %._crit_edge385

bb.g:                                             ; preds = %bb.f
  %i.u = tail call noundef i32 @_Z24crxIdwt53FilterTransformP12CrxPlaneCompj(ptr noundef nonnull %0, i32 noundef %i.t) ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !113
  br label %._crit_edge385

._crit_edge385:                                   ; preds = %bb.f, %bb.g
  %i.v = phi ptr [ %.pre, %bb.g ], [ %i.b, %bb.f ]
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [112 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.z = load i8, ptr %i.y, align 4, !tbaa !114
  %i.aa = sext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 98 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !115 ; 2 uses
  %i.ad = sext i16 %i.ac to i32
  %i.ae = add nsw i32 %i.aa, 5
  %i.af = sub nsw i32 %i.ae, %i.ad
  %i.ag = srem i32 %i.af, 5
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.x, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !116 ; 2 uses
  %i.al = add i16 %i.ac, -1
  store i16 %i.al, ptr %i.ab, align 2, !tbaa !115
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !105
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge380, %._crit_edge385
  %i.am = phi ptr [ %.pre381, %._crit_edge380 ], [ %i.ak, %._crit_edge385 ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !106 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 100 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !114 ; 3 uses
  %i.as = sext i8 %i.ar to i16
  %i.at = sext i8 %i.ar to i64
  %i.au = getelementptr [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !116 ; 6 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64              ; 2 uses
  %2 = sext i8 %i.ar to i16
  %i.ay = insertelement <2 x i16> poison, i16 %2, i64 0
  %i.az = shufflevector <2 x i16> %i.ay, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ba = add nsw <2 x i16> %i.az, <i16 1, i16 2>
  %i.bb = srem <2 x i16> %i.ba, splat (i16 5)     ; 2 uses
  %i.bc = extractelement <2 x i16> %i.bb, i64 0
  %i.bd = sext i16 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr %i.ap, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !116 ; 6 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64              ; 4 uses
  %i.bi = extractelement <2 x i16> %i.bb, i64 1
  %i.bj = sext i16 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.ap, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !116 ; 6 uses
  %i.bn = ptrtoaddr ptr %i.bm to i64              ; 4 uses
  %i.bo = load ptr, ptr %i.ap, align 8, !tbaa !116 ; 15 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !116
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !116 ; 7 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64              ; 2 uses
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !116
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !116
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bw = load i16, ptr %i.bv, align 8, !tbaa !109 ; 9 uses
  %i.bx = icmp slt i16 %i.bw, 2
  br i1 %i.bx, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = load i8, ptr %i.n, align 4, !tbaa !120  ; 2 uses
  %i.bz = and i8 %i.by, 2
  %.not308 = icmp eq i8 %i.bz, 0
  %i.ca = load i32, ptr %i.am, align 4, !tbaa !29
  %i.cb = load i32, ptr %i.ao, align 4, !tbaa !29 ; 2 uses
  br i1 %.not308, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !29
  %i.ce = add i32 %i.cb, 2
  %i.cf = add i32 %i.ce, %i.cd
  %i.cg = ashr i32 %i.cf, 2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ch = add nsw i32 %i.cb, 1
  %i.ci = ashr i32 %i.ch, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink407.a = phi i32 [ %i.ci, %bb.k ], [ %i.cg, %bb.j ]
  %.0287 = phi ptr [ %i.ao, %bb.k ], [ %i.cc, %bb.j ] ; 7 uses
  %i.cj = sub nsw i32 %i.ca, %.sink407.a          ; 5 uses
  store i32 %i.cj, ptr %i.bo, align 4, !tbaa !29
  %i.ck = zext nneg i16 %i.bw to i32              ; 3 uses
  %i.cl = add nsw i32 %i.ck, -3
  %.0285323 = getelementptr i8, ptr %i.am, i64 4  ; 6 uses
  %i.cm = icmp samesign ugt i16 %i.bw, 3
  br i1 %i.cm, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.cn = add nsw i32 %i.ck, -4                   ; 2 uses
  %i.co = lshr i32 %i.cn, 1
  %narrow = add nuw i32 %i.co, 1
  %i.cp = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.cn, 30
  br i1 %min.iters.check, label %.lr.ph.preheader570, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.bo, i64 4   ; 2 uses
  %i.cq = add nsw i32 %i.ck, -4
  %i.cr = lshr i32 %i.cq, 1
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = shl nuw nsw i64 %i.cs, 3
  %i.cu = getelementptr i8, ptr %i.bo, i64 %i.ct
  %scevgep423 = getelementptr i8, ptr %i.cu, i64 12 ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cs, 2
  %i.cw = add nuw nsw i64 %i.cv, 8                ; 2 uses
  %scevgep424 = getelementptr i8, ptr %i.am, i64 %i.cw
  %scevgep425 = getelementptr i8, ptr %.0287, i64 %i.cw
  %bound0 = icmp ult ptr %scevgep, %scevgep424
  %bound1 = icmp ult ptr %.0285323, %scevgep423
  %found.conflict = and i1 %bound0, %bound1
  %bound0426 = icmp ult ptr %scevgep, %scevgep425
  %bound1427 = icmp ult ptr %.0287, %scevgep423
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx = or i1 %found.conflict, %found.conflict428
  br i1 %conflict.rdx, label %.lr.ph.preheader570, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 4294967288              ; 5 uses
  %i.cx = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.cy = getelementptr i8, ptr %.0285323, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %.0287, i64 %i.cx ; 2 uses
  %i.da = trunc nuw i64 %n.vec to i32
  %i.db = shl i32 %i.da, 1
  %i.dc = shl nuw nsw i64 %n.vec, 3
  %i.dd = getelementptr i8, ptr %i.bo, i64 %i.dc  ; 2 uses
  %vector.recur.init = insertelement <8 x i32> poison, i32 %i.cj, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph ], [ %i.dk, %vector.body ]
  %i.de = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0285323, i64 %i.de
  %next.gep429 = getelementptr i8, ptr %.0287, i64 %i.de ; 2 uses
  %i.df = shl i64 %index, 3
  %next.gep430 = getelementptr i8, ptr %i.bo, i64 %i.df
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !29, !alias.scope !248
  %wide.load431 = load <8 x i32>, ptr %next.gep429, align 4, !tbaa !29, !alias.scope !249 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %next.gep429, i64 4
  %wide.load432 = load <8 x i32>, ptr %i.dg, align 4, !tbaa !29, !alias.scope !249
  %i.dh = add <8 x i32> %wide.load431, splat (i32 2)
  %i.di = add <8 x i32> %i.dh, %wide.load432
  %i.dj = ashr <8 x i32> %i.di, splat (i32 2)
  %i.dk = sub nsw <8 x i32> %wide.load, %i.dj     ; 5 uses
  %i.dl = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.dk, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.dm = add nsw <8 x i32> %i.dk, %i.dl
  %i.dn = ashr <8 x i32> %i.dm, splat (i32 1)
  %i.do = add nsw <8 x i32> %i.dn, %wide.load431
  %i.dp = getelementptr inbounds nuw i8, ptr %next.gep430, i64 4
  %interleaved.vec = shufflevector <8 x i32> %i.do, <8 x i32> %i.dk, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.dp, align 4, !tbaa !29, !alias.scope !250, !noalias !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !235

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i32> %i.dk, i64 7 ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cp
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader570

.lr.ph.preheader570:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.0285327.ph = phi ptr [ %.0285323, %vector.memcheck ], [ %.0285323, %.lr.ph.preheader ], [ %i.cy, %middle.block ]
  %.1288326.ph = phi ptr [ %.0287, %vector.memcheck ], [ %.0287, %.lr.ph.preheader ], [ %i.cz, %middle.block ]
  %.0289325.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.db, %middle.block ]
  %.0290324.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.l
  %i.dr = phi i32 [ %i.cj, %bb.l ], [ %vector.recur.extract, %middle.block ], [ %i.eb, %.lr.ph ] ; 3 uses
  %.0290.lcssa = phi ptr [ %i.bo, %bb.l ], [ %i.dd, %middle.block ], [ %i.eg, %.lr.ph ] ; 3 uses
  %.1288.lcssa = phi ptr [ %.0287, %bb.l ], [ %i.cz, %middle.block ], [ %i.dw, %.lr.ph ] ; 4 uses
  %.0285.lcssa = phi ptr [ %.0285323, %bb.l ], [ %i.cy, %middle.block ], [ %.0285, %.lr.ph ] ; 2 uses
  %i.ds = and i8 %i.by, 1
  %.not310 = icmp eq i8 %i.ds, 0
  br i1 %.not310, label %bb.n, label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader570, %.lr.ph
  %i.dt = phi i32 [ %i.eb, %.lr.ph ], [ %.ph, %.lr.ph.preheader570 ]
  %.0285327 = phi ptr [ %.0285, %.lr.ph ], [ %.0285327.ph, %.lr.ph.preheader570 ] ; 2 uses
  %.1288326 = phi ptr [ %i.dw, %.lr.ph ], [ %.1288326.ph, %.lr.ph.preheader570 ] ; 2 uses
  %.0289325 = phi i32 [ %i.eh, %.lr.ph ], [ %.0289325.ph, %.lr.ph.preheader570 ]
  %.0290324 = phi ptr [ %i.eg, %.lr.ph ], [ %.0290324.ph, %.lr.ph.preheader570 ] ; 2 uses
  %i.du = load i32, ptr %.0285327, align 4, !tbaa !29
  %i.dv = load i32, ptr %.1288326, align 4, !tbaa !29 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1288326, i64 4 ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !29
  %i.dy = add i32 %i.dv, 2
  %i.dz = add i32 %i.dy, %i.dx
  %i.ea = ashr i32 %i.dz, 2
  %i.eb = sub nsw i32 %i.du, %i.ea                ; 4 uses
  %i.ec = add nsw i32 %i.eb, %i.dt
  %i.ed = ashr i32 %i.ec, 1
  %i.ee = add nsw i32 %i.ed, %i.dv
  %i.ef = getelementptr inbounds nuw i8, ptr %.0290324, i64 4
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !29
  %i.eg = getelementptr inbounds nuw i8, ptr %.0290324, i64 8 ; 3 uses
  store i32 %i.eb, ptr %i.eg, align 4, !tbaa !29
  %i.eh = add nuw nsw i32 %.0289325, 2            ; 2 uses
  %.0285 = getelementptr inbounds nuw i8, ptr %.0285327, i64 4 ; 2 uses
  %i.ei = icmp slt i32 %i.eh, %i.cl
  br i1 %i.ei, label %.lr.ph, label %._crit_edge, !llvm.loop !236

bb.m:                                             ; preds = %._crit_edge
  %i.ej = load i32, ptr %.0285.lcssa, align 4, !tbaa !29
  %i.ek = load i32, ptr %.1288.lcssa, align 4, !tbaa !29 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1288.lcssa, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !29
  %i.en = add i32 %i.ek, 2
  %i.eo = add i32 %i.en, %i.em
  %i.ep = ashr i32 %i.eo, 2
  %i.eq = sub nsw i32 %i.ej, %i.ep                ; 2 uses
  %i.er = add nsw i32 %i.eq, %i.dr
  %i.es = ashr i32 %i.er, 1
  %i.et = add nsw i32 %i.es, %i.ek
  %i.eu = getelementptr inbounds nuw i8, ptr %.0290.lcssa, i64 4
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !29
  %i.ev = and i16 %i.bw, 1
  %.not312 = icmp eq i16 %i.ev, 0
  br i1 %.not312, label %iter.check, label %.lr.ph332.preheader.sink.split

bb.n:                                             ; preds = %._crit_edge
  %i.ew = and i16 %i.bw, 1
  %.not311 = icmp eq i16 %i.ew, 0
  br i1 %.not311, label %bb.p, label %bb.o

end_hunk_0
begin_hunk_1_@_Z24crxIdwt53FilterTransformP12CrxPlaneCompj:bb.a
  %wide.trip.count = zext i16 %i.bw to i64        ; 8 uses
  %min.iters.check450 = icmp ult i16 %i.bw, 4
  br i1 %min.iters.check450, label %.lr.ph332.preheader, label %vector.memcheck436

vector.memcheck436:                               ; preds = %iter.check
  %i.fl = sub i64 %i.bh, %i.bn
  %diff.check = icmp ugt i64 %i.fl, -64
  %i.fm = sub i64 %i.bp, %i.bh
  %diff.check437 = icmp ugt i64 %i.fm, -64
  %conflict.rdx438 = or i1 %diff.check, %diff.check437
  %i.fn = sub i64 %i.bu, %i.bh
  %diff.check439 = icmp ugt i64 %i.fn, -64
  %conflict.rdx440 = or i1 %conflict.rdx438, %diff.check439
  %i.fo = sub i64 %i.ax, %i.bh
  %diff.check441 = icmp ugt i64 %i.fo, -64
  %conflict.rdx442 = or i1 %conflict.rdx440, %diff.check441
  %i.fp = sub i64 %i.bp, %i.bn
  %diff.check443 = icmp ugt i64 %i.fp, -64
  %conflict.rdx444 = or i1 %conflict.rdx442, %diff.check443
  %i.fq = sub i64 %i.bu, %i.bn
  %diff.check445 = icmp ugt i64 %i.fq, -64
  %conflict.rdx446 = or i1 %conflict.rdx444, %diff.check445
  %i.fr = sub i64 %i.ax, %i.bn
  %diff.check447 = icmp ugt i64 %i.fr, -64
  %conflict.rdx448 = or i1 %conflict.rdx446, %diff.check447
  br i1 %conflict.rdx448, label %.lr.ph332.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck436
  %min.iters.check451 = icmp ult i16 %i.bw, 16
  br i1 %min.iters.check451, label %vec.epilog.ph, label %vector.ph452

vector.ph452:                                     ; preds = %vector.main.loop.iter.check
  %i.fs = and i64 %wide.trip.count, 12
  %n.vec453 = and i64 %wide.trip.count, 32752     ; 4 uses
  br label %vector.body454

vector.body454:                                   ; preds = %vector.body454, %vector.ph452
  %index455 = phi i64 [ 0, %vector.ph452 ], [ %index.next462, %vector.body454 ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index455 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %wide.load456.a = load <8 x i32>, ptr %i.ft, align 4, !tbaa !29
  %wide.load457.a = load <8 x i32>, ptr %i.fu, align 4, !tbaa !29
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index455 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %wide.load458.a = load <8 x i32>, ptr %i.fv, align 4, !tbaa !29 ; 2 uses
  %wide.load459 = load <8 x i32>, ptr %i.fw, align 4, !tbaa !29 ; 2 uses
  %i.fx = add nsw <8 x i32> %wide.load458.a, splat (i32 1)
  %i.fy = add nsw <8 x i32> %wide.load459, splat (i32 1)
  %i.fz = ashr <8 x i32> %i.fx, splat (i32 1)
  %i.ga = ashr <8 x i32> %i.fy, splat (i32 1)
  %i.gb = sub nsw <8 x i32> %wide.load456.a, %i.fz ; 2 uses
  %i.gc = sub nsw <8 x i32> %wide.load457.a, %i.ga ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index455 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %wide.load460 = load <8 x i32>, ptr %i.gd, align 4, !tbaa !29
  %wide.load461 = load <8 x i32>, ptr %i.ge, align 4, !tbaa !29
  %i.gf = add nsw <8 x i32> %i.gb, %wide.load460
  %i.gg = add nsw <8 x i32> %i.gc, %wide.load461
  %i.gh = ashr <8 x i32> %i.gf, splat (i32 1)
  %i.gi = ashr <8 x i32> %i.gg, splat (i32 1)
  %i.gj = add nsw <8 x i32> %i.gh, %wide.load458.a
  %i.gk = add nsw <8 x i32> %i.gi, %wide.load459
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index455 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  store <8 x i32> %i.gj, ptr %i.gl, align 4, !tbaa !29
  store <8 x i32> %i.gk, ptr %i.gm, align 4, !tbaa !29
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index455 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store <8 x i32> %i.gb, ptr %i.gn, align 4, !tbaa !29
  store <8 x i32> %i.gc, ptr %i.go, align 4, !tbaa !29
  %index.next462 = add nuw i64 %index455, 16      ; 2 uses
  %i.gp = icmp eq i64 %index.next462, %n.vec453
  br i1 %i.gp, label %middle.block463, label %vector.body454, !llvm.loop !237

middle.block463:                                  ; preds = %vector.body454
  %cmp.n464 = icmp eq i64 %n.vec453, %wide.trip.count
  br i1 %cmp.n464, label %._crit_edge333, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block463
  %min.epilog.iters.check = icmp eq i64 %i.fs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph332.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec453, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec465 = and i64 %wide.trip.count, 32764     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index466 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next470, %vec.epilog.vector.body ] ; 6 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index466
  %wide.load467 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !29
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index466
  %wide.load468 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !29 ; 2 uses
  %i.gs = add nsw <4 x i32> %wide.load468, splat (i32 1)
  %i.gt = ashr <4 x i32> %i.gs, splat (i32 1)
  %i.gu = sub nsw <4 x i32> %wide.load467, %i.gt  ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index466
  %wide.load469 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !29
  %i.gw = add nsw <4 x i32> %i.gu, %wide.load469
  %i.gx = ashr <4 x i32> %i.gw, splat (i32 1)
  %i.gy = add nsw <4 x i32> %i.gx, %wide.load468
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index466
  store <4 x i32> %i.gy, ptr %i.gz, align 4, !tbaa !29
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index466
  store <4 x i32> %i.gu, ptr %i.ha, align 4, !tbaa !29
  %index.next470 = add nuw i64 %index466, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next470, %n.vec465
  br i1 %i.hb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !238

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n471 = icmp eq i64 %n.vec465, %wide.trip.count
  br i1 %cmp.n471, label %._crit_edge333, label %.lr.ph332.preheader

.lr.ph332.preheader:                              ; preds = %vector.memcheck436, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck436 ], [ %n.vec453, %vec.epilog.iter.check ], [ %n.vec465, %vec.epilog.middle.block ] ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph332.prol.loopexit, label %.lr.ph332.prol

.lr.ph332.prol:                                   ; preds = %.lr.ph332.preheader
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.ph
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !29
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.ph
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !29 ; 2 uses
  %i.hg = add nsw i32 %i.hf, 1
  %i.hh = ashr i32 %i.hg, 1
  %i.hi = sub nsw i32 %i.hd, %i.hh                ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.ph
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !29
  %i.hl = add nsw i32 %i.hi, %i.hk
  %i.hm = ashr i32 %i.hl, 1
  %i.hn = add nsw i32 %i.hm, %i.hf
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.ph
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !29
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.ph
  store i32 %i.hi, ptr %i.hp, align 4, !tbaa !29
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph332.prol.loopexit

.lr.ph332.prol.loopexit:                          ; preds = %.lr.ph332.prol, %.lr.ph332.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph332.preheader ], [ %indvars.iv.next.prol, %.lr.ph332.prol ]
  %i.hq = add nsw i64 %wide.trip.count, -1
  %i.hr = icmp eq i64 %indvars.iv.ph, %i.hq
  br i1 %i.hr, label %._crit_edge333, label %.lr.ph332

._crit_edge333:                                   ; preds = %.lr.ph332.prol.loopexit, %.lr.ph332, %middle.block463, %vec.epilog.middle.block, %bb.q
  %i.hs = load <2 x i16>, ptr %i.g, align 8, !tbaa !122
  %i.ht = add <2 x i16> %i.hs, splat (i16 3)
  store <2 x i16> %i.ht, ptr %i.g, align 8, !tbaa !122
  %.lhs.trunc396 = add nsw i16 %i.as, 3
  %i.hu = srem i16 %.lhs.trunc396, 5
  %i.hv = trunc nsw i16 %i.hu to i8
  store i8 %i.hv, ptr %i.aq, align 4, !tbaa !114
  br label %bb.ag

.lr.ph332:                                        ; preds = %.lr.ph332.prol.loopexit, %.lr.ph332
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph332 ], [ %indvars.iv.unr, %.lr.ph332.prol.loopexit ] ; 7 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !29
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !29 ; 2 uses
  %i.ia = add nsw i32 %i.hz, 1
  %i.ib = ashr i32 %i.ia, 1
  %i.ic = sub nsw i32 %i.hx, %i.ib                ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !29
  %i.if = add nsw i32 %i.ic, %i.ie
  %i.ig = ashr i32 %i.if, 1
  %i.ih = add nsw i32 %i.ig, %i.hz
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !29
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.ic, ptr %i.ij, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !29
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.in = load i32, ptr %i.im, align 4, !tbaa !29 ; 2 uses
  %i.io = add nsw i32 %i.in, 1
  %i.ip = ashr i32 %i.io, 1
  %i.iq = sub nsw i32 %i.il, %i.ip                ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !29
  %i.it = add nsw i32 %i.iq, %i.is
  %i.iu = ashr i32 %i.it, 1
  %i.iv = add nsw i32 %i.iu, %i.in
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !29
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next
  store i32 %i.iq, ptr %i.ix, align 4, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge333, label %.lr.ph332, !llvm.loop !239

bb.r:                                             ; preds = %bb.d
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !116 ; 13 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 100 ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 4, !tbaa !114 ; 3 uses
  %i.je = sext i8 %i.jd to i16
  %i.jf = sext i8 %i.jd to i64
  %i.jg = getelementptr [8 x i8], ptr %i.iy, i64 %i.jf
  %i.jh = getelementptr i8, ptr %i.jg, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !116 ; 12 uses
  %i.jj = ptrtoaddr ptr %i.ji to i64
  %3 = sext i8 %i.jd to i16
  %.lhs.trunc316 = add nsw i16 %3, 1
  %i.jk = srem i16 %.lhs.trunc316, 5
  %i.jl = sext i16 %i.jk to i64
  %i.jm = getelementptr [8 x i8], ptr %i.iy, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !116 ; 12 uses
  %i.jp = ptrtoaddr ptr %i.jo to i64              ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.ja, ptr %i.jq, align 8, !tbaa !116
  %i.jr = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.js = load i16, ptr %i.jr, align 8, !tbaa !109 ; 4 uses
  %i.jt = icmp sgt i16 %i.js, 0
  br i1 %i.jt, label %iter.check497, label %._crit_edge337

iter.check497:                                    ; preds = %bb.r
  %wide.trip.count372 = zext nneg i16 %i.js to i64 ; 8 uses
  %min.iters.check478 = icmp ult i16 %i.js, 4
  br i1 %min.iters.check478, label %.lr.ph336.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %iter.check497
  %i.ju = sub i64 %i.jj, %i.jp
  %diff.check474 = icmp ugt i64 %i.ju, -128
  %i.jv = sub i64 %i.jb, %i.jp
  %diff.check475 = icmp ugt i64 %i.jv, -128
  %conflict.rdx476 = or i1 %diff.check474, %diff.check475
  br i1 %conflict.rdx476, label %.lr.ph336.preheader, label %vector.main.loop.iter.check479

vector.main.loop.iter.check479:                   ; preds = %vector.memcheck473
  %min.iters.check480 = icmp ult i16 %i.js, 32
  br i1 %min.iters.check480, label %vec.epilog.ph501, label %vector.ph481

vector.ph481:                                     ; preds = %vector.main.loop.iter.check479
  %i.jw = and i64 %wide.trip.count372, 28
  %n.vec482 = and i64 %wide.trip.count372, 32736  ; 4 uses
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next493, %vector.body483 ] ; 4 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %index484 ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 96
  %wide.load485.a = load <8 x i32>, ptr %i.jx, align 4, !tbaa !29
  %wide.load486.a = load <8 x i32>, ptr %i.jy, align 4, !tbaa !29
  %wide.load487.a = load <8 x i32>, ptr %i.jz, align 4, !tbaa !29
  %wide.load488.a = load <8 x i32>, ptr %i.ka, align 4, !tbaa !29
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index484 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  %wide.load489.a = load <8 x i32>, ptr %i.kb, align 4, !tbaa !29
  %wide.load490 = load <8 x i32>, ptr %i.kc, align 4, !tbaa !29
  %wide.load491 = load <8 x i32>, ptr %i.kd, align 4, !tbaa !29
  %wide.load492 = load <8 x i32>, ptr %i.ke, align 4, !tbaa !29
  %i.kf = add nsw <8 x i32> %wide.load489.a, %wide.load485.a
  %i.kg = add nsw <8 x i32> %wide.load490, %wide.load486.a
  %i.kh = add nsw <8 x i32> %wide.load491, %wide.load487.a
  %i.ki = add nsw <8 x i32> %wide.load492, %wide.load488.a
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %index484 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 64
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 96
  store <8 x i32> %i.kf, ptr %i.kj, align 4, !tbaa !29
  store <8 x i32> %i.kg, ptr %i.kk, align 4, !tbaa !29
  store <8 x i32> %i.kh, ptr %i.kl, align 4, !tbaa !29
  store <8 x i32> %i.ki, ptr %i.km, align 4, !tbaa !29
  %index.next493 = add nuw i64 %index484, 32      ; 2 uses
  %i.kn = icmp eq i64 %index.next493, %n.vec482
  br i1 %i.kn, label %middle.block494, label %vector.body483, !llvm.loop !240

middle.block494:                                  ; preds = %vector.body483
  %cmp.n495 = icmp eq i64 %n.vec482, %wide.trip.count372
  br i1 %cmp.n495, label %._crit_edge337, label %vec.epilog.iter.check499

vec.epilog.iter.check499:                         ; preds = %middle.block494
  %min.epilog.iters.check500 = icmp eq i64 %i.jw, 0
  br i1 %min.epilog.iters.check500, label %.lr.ph336.preheader, label %vec.epilog.ph501, !prof !101

vec.epilog.ph501:                                 ; preds = %vector.main.loop.iter.check479, %vec.epilog.iter.check499
  %vec.epilog.resume.val496 = phi i64 [ %n.vec482, %vec.epilog.iter.check499 ], [ 0, %vector.main.loop.iter.check479 ]
  %n.vec502 = and i64 %wide.trip.count372, 32764  ; 3 uses
  br label %vec.epilog.vector.body503

vec.epilog.vector.body503:                        ; preds = %vec.epilog.vector.body503, %vec.epilog.ph501
  %index504 = phi i64 [ %vec.epilog.resume.val496, %vec.epilog.ph501 ], [ %index.next507, %vec.epilog.vector.body503 ] ; 4 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %index504
  %wide.load505 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !29
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index504
  %wide.load506 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !29
  %i.kq = add nsw <4 x i32> %wide.load506, %wide.load505
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %index504
  store <4 x i32> %i.kq, ptr %i.kr, align 4, !tbaa !29
  %index.next507 = add nuw i64 %index504, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.ks, label %vec.epilog.middle.block508, label %vec.epilog.vector.body503, !llvm.loop !241

vec.epilog.middle.block508:                       ; preds = %vec.epilog.vector.body503
  %cmp.n509 = icmp eq i64 %n.vec502, %wide.trip.count372
  br i1 %cmp.n509, label %._crit_edge337, label %.lr.ph336.preheader

.lr.ph336.preheader:                              ; preds = %vector.memcheck473, %iter.check497, %vec.epilog.iter.check499, %vec.epilog.middle.block508
  %indvars.iv369.ph = phi i64 [ 0, %iter.check497 ], [ 0, %vector.memcheck473 ], [ %n.vec482, %vec.epilog.iter.check499 ], [ %n.vec502, %vec.epilog.middle.block508 ] ; 4 uses
  %i.kt = sub nsw i64 %wide.trip.count372, %indvars.iv369.ph
  %xtraiter576 = and i64 %i.kt, 7                 ; 2 uses
  %lcmp.mod577.not = icmp eq i64 %xtraiter576, 0
  br i1 %lcmp.mod577.not, label %.lr.ph336.prol.loopexit, label %.lr.ph336.prol

.lr.ph336.prol:                                   ; preds = %.lr.ph336.preheader, %.lr.ph336.prol
  %indvars.iv369.prol = phi i64 [ %indvars.iv.next370.prol, %.lr.ph336.prol ], [ %indvars.iv369.ph, %.lr.ph336.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph336.prol ], [ 0, %.lr.ph336.preheader ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv369.prol
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !29
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv369.prol
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !29
  %i.ky = add nsw i32 %i.kx, %i.kv
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv369.prol
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !29
  %indvars.iv.next370.prol = add nuw nsw i64 %indvars.iv369.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter576
  br i1 %prol.iter.cmp.not, label %.lr.ph336.prol.loopexit, label %.lr.ph336.prol, !llvm.loop !242

.lr.ph336.prol.loopexit:                          ; preds = %.lr.ph336.prol, %.lr.ph336.preheader
  %indvars.iv369.unr = phi i64 [ %indvars.iv369.ph, %.lr.ph336.preheader ], [ %indvars.iv.next370.prol, %.lr.ph336.prol ]
  %i.la = sub nsw i64 %indvars.iv369.ph, %wide.trip.count372
  %i.lb = icmp ugt i64 %i.la, -8
  br i1 %i.lb, label %._crit_edge337, label %.lr.ph336

._crit_edge337:                                   ; preds = %.lr.ph336.prol.loopexit, %.lr.ph336, %middle.block494, %vec.epilog.middle.block508, %bb.r
  store i16 2, ptr %i.e, align 2, !tbaa !115
  %i.lc = add i16 %i.h, 2
  store i16 %i.lc, ptr %i.g, align 8, !tbaa !119
  %.lhs.trunc395 = add nsw i16 %i.je, 2
  %i.ld = srem i16 %.lhs.trunc395, 5
  %i.le = trunc nsw i16 %i.ld to i8
  store i8 %i.le, ptr %i.jc, align 4, !tbaa !114
  br label %bb.ag

.lr.ph336:                                        ; preds = %.lr.ph336.prol.loopexit, %.lr.ph336
  %indvars.iv369 = phi i64 [ %indvars.iv.next370.7, %.lr.ph336 ], [ %indvars.iv369.unr, %.lr.ph336.prol.loopexit ] ; 11 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv369
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !29
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv369
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !29
  %i.lj = add nsw i32 %i.li, %i.lg
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv369
  store i32 %i.lj, ptr %i.lk, align 4, !tbaa !29
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 3 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next370
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !29
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next370
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !29
  %i.lp = add nsw i32 %i.lo, %i.lm
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv.next370
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !29
  %indvars.iv.next370.1 = add nuw nsw i64 %indvars.iv369, 2 ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next370.1
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !29
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next370.1
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !29
  %i.lv = add nsw i32 %i.lu, %i.ls
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv.next370.1
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !29
  %indvars.iv.next370.2 = add nuw nsw i64 %indvars.iv369, 3 ; 3 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next370.2
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !29
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next370.2
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !29
  %i.mb = add nsw i32 %i.ma, %i.ly
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv.next370.2
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !29
  %indvars.iv.next370.3 = add nuw nsw i64 %indvars.iv369, 4 ; 3 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next370.3
  %i.me = load i32, ptr %i.md, align 4, !tbaa !29
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next370.3
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !29
  %i.mh = add nsw i32 %i.mg, %i.me
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv.next370.3
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !29
  %indvars.iv.next370.4 = add nuw nsw i64 %indvars.iv369, 5 ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next370.4
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !29
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next370.4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !29
  %i.mn = add nsw i32 %i.mm, %i.mk
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv.next370.4
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !29
  %indvars.iv.next370.5 = add nuw nsw i64 %indvars.iv369, 6 ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next370.5
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !29
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next370.5
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !29
  %i.mt = add nsw i32 %i.ms, %i.mq
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %indvars.iv.next370.5
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !29
  %indvars.iv.next370.6 = add nuw nsw i64 %indvars.iv369, 7 ; 3 uses
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next370.6
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !29
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next370.6
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !29
  %i.mz = add nsw i32 %i.my, %i.mw
end_hunk_1
