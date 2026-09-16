Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_luv?download=true
inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@LogLuvVSetField:bb.a
bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q, %bb.l, %bb.i
  %.029 = phi i32 [ %i.aq, %bb.r ], [ 0, %bb.i ], [ 1, %bb.l ], [ 0, %bb.q ], [ 1, %bb.p ]
  ret i32 %.029
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #10

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LogLuvInitState(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.d = load i16, ptr %i.c, align 2, !tbaa !85
  %.not = icmp eq i16 %i.d, 1
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !36   ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.i = load i16, ptr %i.h, align 4, !tbaa !47
  %i.j = zext i16 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.m = load i16, ptr %i.l, align 2, !tbaa !48
  %i.n = zext i16 %i.m to i32
  %i.o = or i32 %i.k, %i.n
  switch i32 %i.o, label %bb.g [
    i32 259, label %bb.h
    i32 260, label %bb.d
    i32 257, label %bb.d
    i32 258, label %bb.d
    i32 132, label %bb.e
    i32 130, label %bb.e
    i32 129, label %bb.e
    i32 68, label %bb.f
    i32 65, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.c
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %spec.store.select1.i = phi i32 [ -1, %bb.g ], [ 3, %bb.f ], [ -1, %bb.d ], [ 1, %bb.e ], [ 0, %bb.c ]
  %.not.i = phi i32 [ -1, %bb.g ], [ -1, %bb.f ], [ 2, %bb.d ], [ -1, %bb.e ], [ -1, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.q = load i16, ptr %i.p, align 2, !tbaa !46
  switch i16 %i.q, label %bb.j [
    i16 1, label %LogLuvGuessDataFmt.exit
    i16 3, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %LogLuvGuessDataFmt.exit

bb.j:                                             ; preds = %bb.h
  br label %LogLuvGuessDataFmt.exit

LogLuvGuessDataFmt.exit:                          ; preds = %bb.h, %bb.i, %bb.j
  %.1.i = phi i32 [ -1, %bb.j ], [ %spec.store.select1.i, %bb.i ], [ %.not.i, %bb.h ] ; 2 uses
  store i32 %.1.i, ptr %i.e, align 4, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %LogLuvGuessDataFmt.exit, %bb.b
  %i.r = phi i32 [ %.1.i, %LogLuvGuessDataFmt.exit ], [ %i.f, %bb.b ] ; 2 uses
  %i.s = icmp ult i32 %i.r, 4
  br i1 %i.s, label %switch.lookup, label %.sink.split

switch.lookup:                                    ; preds = %bb.k
  %i.t = zext nneg i32 %i.r to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.LogLuvInitState, i64 %i.t
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %switch.ext, ptr %i.u, align 4, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !50
  %i.x = and i32 %i.w, 1024
  %.not32 = icmp eq i32 %i.x, 0
  br i1 %.not32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %switch.lookup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !52
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !53
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.aa, i64 noundef range(i64 0, 4294967296) %i.ad, ptr noundef null) #16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !54
  br label %bb.p

bb.m:                                             ; preds = %switch.lookup
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !55 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !56 ; 2 uses
  %i.ak = icmp ult i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !57
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = zext i32 %i.ah to i64
  %i.aq = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.an, i64 noundef range(i64 0, 4294967296) %i.ap, ptr noundef null) #16 ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !54
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = zext i32 %i.aj to i64
  %i.as = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.an, i64 noundef range(i64 0, 4294967296) %i.ar, ptr noundef null) #16 ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.at = phi i64 [ %i.aq, %bb.n ], [ %i.as, %bb.o ], [ %i.ae, %bb.l ]
  %i.au = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.at, i64 noundef 4, ptr noundef null) #16
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !54
  %i.ay = shl i64 %i.ax, 2
  %i.az = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ay) #16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !49
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %bb.k, %bb.p, %bb.q, %bb.a
  %.str.8.sink = phi ptr [ @.str.7, %bb.k ], [ @.str.6, %bb.a ], [ @.str.8, %bb.q ], [ @.str.8, %bb.p ]
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvInitState.module, ptr noundef nonnull %.str.8.sink) #16
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %.0 = phi i32 [ 1, %bb.q ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogLuvDecode24(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = sdiv i64 %2, %i.e                        ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode24.module, ptr noundef nonnull @.str.9) #16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59   ; 9 uses
  %i.s = icmp sgt i64 %i.f, 0
  %i.t = icmp sgt i64 %i.r, 2
  %4 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %5 = tail call i64 @llvm.smin.i64(i64 %i.r, i64 5)
  %i.u = add nuw i64 %i.r, 2
  %6 = sub i64 %i.u, %5
  %.fr = freeze i64 %6
  %i.v = udiv i64 %.fr, 3
  %i.w = add nsw i64 %i.f, -1
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.w) ; 2 uses
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.x, 27
  br i1 %min.iters.check, label %.lr.ph.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.z = add nuw i64 %i.r, 2
  %smin = tail call i64 @llvm.smin.i64(i64 %i.r, i64 5)
  %7 = sub i64 %i.z, %smin
  %.fr60 = freeze i64 %7
  %i.aa = udiv i64 %.fr60, 3
  %i.ab = add nsw i64 %i.f, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab) ; 2 uses
  %i.ac = shl i64 %umin, 2
  %i.ad = getelementptr i8, ptr %.0, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ad, i64 4
  %i.ae = mul nuw i64 %umin, 3
  %i.af = getelementptr i8, ptr %i.p, i64 %i.ae
  %scevgep54 = getelementptr i8, ptr %i.af, i64 3
  %bound0 = icmp ult ptr %.0, %scevgep54
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775804      ; 6 uses
  %i.ag = mul i64 %n.vec, 3
  %i.ah = getelementptr i8, ptr %i.p, i64 %i.ag   ; 2 uses
  %i.ai = mul i64 %n.vec, -3
  %i.aj = add i64 %i.r, %i.ai                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = mul i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ak ; 3 uses
  %i.al = getelementptr i8, ptr %i.p, i64 %i.ak   ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.al, i64 3
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak   ; 3 uses
  %next.gep56 = getelementptr i8, ptr %i.am, i64 6
  %i.an = getelementptr i8, ptr %i.p, i64 %i.ak   ; 3 uses
  %next.gep57 = getelementptr i8, ptr %i.an, i64 9
  %i.ao = load i8, ptr %next.gep, align 1, !tbaa !9, !alias.scope !91
  %i.ap = load i8, ptr %next.gep55, align 1, !tbaa !9, !alias.scope !91
  %i.aq = load i8, ptr %next.gep56, align 1, !tbaa !9, !alias.scope !91
  %i.ar = load i8, ptr %next.gep57, align 1, !tbaa !9, !alias.scope !91
  %i.as = insertelement <4 x i8> poison, i8 %i.ao, i64 0
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 1
  %i.au = insertelement <4 x i8> %i.at, i8 %i.aq, i64 2
  %i.av = insertelement <4 x i8> %i.au, i8 %i.ar, i64 3
  %i.aw = zext <4 x i8> %i.av to <4 x i32>
  %i.ax = shl nuw nsw <4 x i32> %i.aw, splat (i32 16)
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.az = getelementptr i8, ptr %i.al, i64 4
  %i.ba = getelementptr i8, ptr %i.am, i64 7
  %i.bb = getelementptr i8, ptr %i.an, i64 10
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !9, !alias.scope !91
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !9, !alias.scope !91
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !9, !alias.scope !91
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !9, !alias.scope !91
  %i.bg = insertelement <4 x i8> poison, i8 %i.bc, i64 0
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.bd, i64 1
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.be, i64 2
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 3
  %i.bk = zext <4 x i8> %i.bj to <4 x i32>
  %i.bl = shl nuw nsw <4 x i32> %i.bk, splat (i32 8)
  %i.bm = or disjoint <4 x i32> %i.bl, %i.ax
  %i.bn = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.bo = getelementptr i8, ptr %i.al, i64 5
  %i.bp = getelementptr i8, ptr %i.am, i64 8
  %i.bq = getelementptr i8, ptr %i.an, i64 11
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !9, !alias.scope !91
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !9, !alias.scope !91
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !9, !alias.scope !91
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !9, !alias.scope !91
  %i.bv = insertelement <4 x i8> poison, i8 %i.br, i64 0
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bs, i64 1
  %i.bx = insertelement <4 x i8> %i.bw, i8 %i.bt, i64 2
  %i.by = insertelement <4 x i8> %i.bx, i8 %i.bu, i64 3
  %i.bz = zext <4 x i8> %i.by to <4 x i32>
  %i.ca = or disjoint <4 x i32> %i.bm, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %index
  store <4 x i32> %i.ca, ptr %i.cb, align 4, !tbaa !6, !alias.scope !92, !noalias !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader61

.lr.ph.preheader61:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03643.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  %.03742.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03841.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader61, %.lr.ph
  %.03643 = phi ptr [ %i.cq, %.lr.ph ], [ %.03643.ph, %.lr.ph.preheader61 ] ; 4 uses
  %.03742 = phi i64 [ %i.cs, %.lr.ph ], [ %.03742.ph, %.lr.ph.preheader61 ] ; 2 uses
  %.03841 = phi i64 [ %i.cr, %.lr.ph ], [ %.03841.ph, %.lr.ph.preheader61 ] ; 2 uses
  %i.cd = load i8, ptr %.03643, align 1, !tbaa !9
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = getelementptr inbounds nuw i8, ptr %.03643, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 8
  %i.ck = or disjoint i32 %i.cj, %i.cf
  %i.cl = getelementptr inbounds nuw i8, ptr %.03643, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9
  %i.cn = zext i8 %i.cm to i32
  %i.co = or disjoint i32 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.03742
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !6
  %i.cq = getelementptr inbounds nuw i8, ptr %.03643, i64 3 ; 2 uses
  %i.cr = add nsw i64 %.03841, -3                 ; 2 uses
  %i.cs = add nuw nsw i64 %.03742, 1              ; 3 uses
  %i.ct = icmp slt i64 %i.cs, %i.f
  %i.cu = icmp samesign ugt i64 %.03841, 5
  %i.cv = select i1 %i.ct, i1 %i.cu, i1 false
  br i1 %i.cv, label %.lr.ph, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  %.038.lcssa = phi i64 [ %i.r, %bb.e ], [ %i.aj, %middle.block ], [ %i.cr, %.lr.ph ]
  %.037.lcssa = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %i.cs, %.lr.ph ] ; 2 uses
  %.036.lcssa = phi ptr [ %i.p, %bb.e ], [ %i.ah, %middle.block ], [ %i.cq, %.lr.ph ]
  store ptr %.036.lcssa, ptr %i.o, align 8, !tbaa !58
  store i64 %.038.lcssa, ptr %i.q, align 8, !tbaa !59
  %.not = icmp eq i64 %.037.lcssa, %i.f
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !62
  %i.cy = sub nsw i64 %i.f, %.037.lcssa
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode24.module, ptr noundef nonnull @.str.10, i32 noundef %i.cx, i64 noundef %i.cy) #16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !38
  tail call void %i.da(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.f) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.039 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.c ]
  ret i32 %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv24toXYZ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi ptr [ %i.f, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.069 = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.078 = phi i64 [ %i.d, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.078, -1
  %i.e = load i32, ptr %.069, align 4, !tbaa !6
  tail call void @LogLuv24toXYZ(i32 noundef %i.e, ptr noundef %.010)
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %.069, i64 4
  %i.h = icmp samesign ugt i64 %.078, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Luv24toLuv48(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.in = phi i64 [ %i.d, %bb.d ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.021 = phi ptr [ %i.al, %bb.d ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.0820 = phi ptr [ %i.am, %bb.d ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.in, -1
  %i.e = load i32, ptr %.0820, align 4, !tbaa !6  ; 2 uses
  %i.f = lshr i32 %i.e, 12
  %i.g = trunc i32 %i.f to i16
  %i.h = and i16 %i.g, 4093
  %i.i = add nuw nsw i16 %i.h, 13314
  %i.j = getelementptr inbounds nuw i8, ptr %.021, i64 2
  store i16 %i.i, ptr %.021, align 2, !tbaa !63
  %i.k = and i32 %i.e, 16383                      ; 3 uses
  %or.cond.i = icmp samesign ugt i32 %i.k, 16288
  br i1 %or.cond.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.c
  %.028.i = phi i32 [ %.1.i, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.02227.i = phi i32 [ %.123.i, %bb.c ], [ 163, %.lr.ph ] ; 2 uses
  %i.l = add nuw i32 %.02227.i, %.028.i
  %i.m = lshr i32 %i.l, 1                         ; 4 uses
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.q = load i16, ptr %i.p, align 2, !tbaa !14
  %i.r = sext i16 %i.q to i32
  %i.s = sub nsw i32 %i.k, %i.r                   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.c, label %uv_decode.exit

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %.123.i = phi i32 [ %.02227.i, %.preheader.i ], [ %i.m, %bb.b ] ; 2 uses
  %.1.i = phi i32 [ %i.m, %.preheader.i ], [ %.028.i, %bb.b ] ; 4 uses
  %i.v = sub nsw i32 %.123.i, %.1.i
  %i.w = icmp ugt i32 %i.v, 1
  br i1 %i.w, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = zext nneg i32 %.1.i to i64 ; 2 uses
  %.phi.trans.insert29.i = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.phi.trans.insert.i
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert29.i, i64 6
  %.pre.i = load i16, ptr %.phi.trans.insert30.i, align 2, !tbaa !14
  %.pre32.i = sext i16 %.pre.i to i32
  %.pre34.i = sub nsw i32 %i.k, %.pre32.i
  %i.x = sitofp i32 %.pre34.i to double
  %i.y = fadd nnan double %i.x, 5.000000e-01
  br label %uv_decode.exit

uv_decode.exit:                                   ; preds = %bb.b, %._crit_edge.i
  %.pre-phi35.i = phi double [ %i.y, %._crit_edge.i ], [ 5.000000e-01, %bb.b ]
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %._crit_edge.i ], [ %i.n, %bb.b ]
  %.2.i = phi i32 [ %.1.i, %._crit_edge.i ], [ %i.m, %bb.b ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.pre-phi.i
  %i.aa = load float, ptr %i.z, align 8, !tbaa !12
  %i.ab = fpext float %i.aa to double
  %i.ac = uitofp i32 %.2.i to double
  %i.ad = fadd nnan double %i.ac, 5.000000e-01
  %i.ae = insertelement <2 x double> poison, double %.pre-phi35.i, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = insertelement <2 x double> <double poison, double f0x3F9158B820000000>, double %i.ab, i64 0
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> splat (double f0x3F6CAC0840000000), <2 x double> %i.ag)
  %i.ai = fmul <2 x double> %i.ah, splat (double 3.276800e+04)
  %i.aj = fptosi <2 x double> %i.ai to <2 x i16>
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %uv_decode.exit
  %i.ak = phi <2 x i16> [ %i.aj, %uv_decode.exit ], [ <i16 6898, i16 15521>, %.lr.ph ]
  %i.al = getelementptr inbounds nuw i8, ptr %.021, i64 6
  store <2 x i16> %i.ak, ptr %i.j, align 2, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0820, i64 4
  %i.an = icmp sgt i64 %.in, 1
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv24toRGB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %XYZtoRGB24.exit
  %.012 = phi ptr [ %i.cx, %XYZtoRGB24.exit ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.0511 = phi ptr [ %i.e, %XYZtoRGB24.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.0610 = phi i64 [ %i.d, %XYZtoRGB24.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.0610, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.0511, i64 4
  %i.f = load i32, ptr %.0511, align 4, !tbaa !6  ; 2 uses
  %i.g = lshr i32 %i.f, 14
  %i.h = and i32 %i.g, 1023                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %LogLuv24toXYZ.exit, label %LogL10toY.exit.i

LogL10toY.exit.i:                                 ; preds = %.lr.ph
  %i.j = uitofp nneg i32 %i.h to double
  %i.k = fadd double %i.j, 5.000000e-01
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double f0x3F862E42FEFA39EF, double f0xC020A2B23F3BAB73)
  %i.m = tail call double @exp(double noundef %i.l) #16, !tbaa !6 ; 3 uses
  %i.n = fcmp ugt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.b, label %LogLuv24toXYZ.exit

bb.b:                                             ; preds = %LogL10toY.exit.i
  %i.o = and i32 %i.f, 16383                      ; 3 uses
  %or.cond.i.i = icmp samesign ugt i32 %i.o, 16288
  br i1 %or.cond.i.i, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %bb.d
  %.028.i.i = phi i32 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.02227.i.i = phi i32 [ %.123.i.i, %bb.d ], [ 163, %bb.b ] ; 2 uses
  %i.p = add nuw i32 %.02227.i.i, %.028.i.i
  %i.q = lshr i32 %i.p, 1                         ; 4 uses
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !14
  %i.v = sext i16 %i.u to i32
  %i.w = sub nsw i32 %i.o, %i.v                   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %bb.d, label %uv_decode.exit.i

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.123.i.i = phi i32 [ %.02227.i.i, %.preheader.i.i ], [ %i.q, %bb.c ] ; 2 uses
end_hunk_0
