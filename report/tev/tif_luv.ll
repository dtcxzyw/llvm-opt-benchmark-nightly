Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_luv?download=true
inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@LogLuvVSetField:bb.a

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.ai, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = phi ptr [ %i.ag, %bb.n ], [ %i.aj, %bb.o ]
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.am, ptr %i.an, align 8, !tbaa !40
  %switch = icmp ult i32 %i.am, 2
  br i1 %switch, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvVSetField.module, ptr noundef nonnull @.str.18, i32 noundef %i.am) #16
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !87
  %i.aq = tail call i32 %i.ap(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) #16
  br label %bb.s

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.d = load i16, ptr %i.c, align 2, !tbaa !88
  %.not = icmp eq i16 %i.d, 1
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39   ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.i = load i16, ptr %i.h, align 4, !tbaa !50
  %i.j = zext i16 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.m = load i16, ptr %i.l, align 2, !tbaa !51
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
  %i.q = load i16, ptr %i.p, align 2, !tbaa !49
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
  store i32 %.1.i, ptr %i.e, align 4, !tbaa !39
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
  store i32 %switch.ext, ptr %i.u, align 4, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !53
  %i.x = and i32 %i.w, 1024
  %.not32 = icmp eq i32 %i.x, 0
  br i1 %.not32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %switch.lookup
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !56
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.aa, i64 noundef range(i64 0, 4294967296) %i.ad, ptr noundef null) #16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !57
  br label %bb.p

bb.m:                                             ; preds = %switch.lookup
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !59 ; 2 uses
  %i.ak = icmp ult i32 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !60
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = zext i32 %i.ah to i64
  %i.aq = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.an, i64 noundef range(i64 0, 4294967296) %i.ap, ptr noundef null) #16 ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !57
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ar = zext i32 %i.aj to i64
  %i.as = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.an, i64 noundef range(i64 0, 4294967296) %i.ar, ptr noundef null) #16 ; 2 uses
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !57
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %i.at = phi i64 [ %i.aq, %bb.n ], [ %i.as, %bb.o ], [ %i.ae, %bb.l ]
  %i.au = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.at, i64 noundef 4, ptr noundef null) #16
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !57
  %i.ay = shl i64 %i.ax, 2
  %i.az = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ay) #16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !52
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = sext i32 %i.d to i64
  %i.f = sdiv i64 %2, %i.e                        ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !57
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode24.module, ptr noundef nonnull @.str.9) #16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !62
  %.fr60 = freeze i64 %i.r                        ; 6 uses
  %i.s = icmp sgt i64 %i.f, 0
  %i.t = icmp sgt i64 %.fr60, 2
  %i.u = and i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.v = add nsw i64 %.fr60, -3
  %i.w = udiv i64 %i.v, 3
  %i.x = add nsw i64 %i.f, -1
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.x) ; 4 uses
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.y, 23
  br i1 %min.iters.check, label %.lr.ph.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.aa = shl i64 %i.y, 2
  %i.ab = getelementptr i8, ptr %.0, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.ab, i64 4
  %i.ac = mul nuw i64 %i.y, 3
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ac
  %scevgep54 = getelementptr i8, ptr %i.ad, i64 3
  %bound0 = icmp ult ptr %.0, %scevgep54
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 9223372036854775804      ; 6 uses
  %i.ae = mul i64 %n.vec, 3
  %i.af = getelementptr i8, ptr %i.p, i64 %i.ae   ; 2 uses
  %i.ag = mul i64 %n.vec, -3
  %i.ah = add i64 %.fr60, %i.ag                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = mul i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ai ; 3 uses
  %i.aj = getelementptr i8, ptr %i.p, i64 %i.ai   ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.aj, i64 3
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.ai   ; 3 uses
  %next.gep56 = getelementptr i8, ptr %i.ak, i64 6
  %i.al = getelementptr i8, ptr %i.p, i64 %i.ai   ; 3 uses
  %next.gep57 = getelementptr i8, ptr %i.al, i64 9
  %i.am = load i8, ptr %next.gep, align 1, !tbaa !12, !alias.scope !94
  %i.an = load i8, ptr %next.gep55, align 1, !tbaa !12, !alias.scope !94
  %i.ao = load i8, ptr %next.gep56, align 1, !tbaa !12, !alias.scope !94
  %i.ap = load i8, ptr %next.gep57, align 1, !tbaa !12, !alias.scope !94
  %i.aq = insertelement <4 x i8> poison, i8 %i.am, i64 0
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.an, i64 1
  %i.as = insertelement <4 x i8> %i.ar, i8 %i.ao, i64 2
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 3
  %i.au = zext <4 x i8> %i.at to <4 x i32>
  %i.av = shl nuw nsw <4 x i32> %i.au, splat (i32 16)
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ax = getelementptr i8, ptr %i.aj, i64 4
  %i.ay = getelementptr i8, ptr %i.ak, i64 7
  %i.az = getelementptr i8, ptr %i.al, i64 10
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !12, !alias.scope !94
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !12, !alias.scope !94
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !12, !alias.scope !94
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !12, !alias.scope !94
  %i.be = insertelement <4 x i8> poison, i8 %i.ba, i64 0
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bb, i64 1
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bc, i64 2
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.bd, i64 3
  %i.bi = zext <4 x i8> %i.bh to <4 x i32>
  %i.bj = shl nuw nsw <4 x i32> %i.bi, splat (i32 8)
  %i.bk = or disjoint <4 x i32> %i.bj, %i.av
  %i.bl = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.bm = getelementptr i8, ptr %i.aj, i64 5
  %i.bn = getelementptr i8, ptr %i.ak, i64 8
  %i.bo = getelementptr i8, ptr %i.al, i64 11
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !12, !alias.scope !94
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !12, !alias.scope !94
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !12, !alias.scope !94
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !12, !alias.scope !94
  %i.bt = insertelement <4 x i8> poison, i8 %i.bp, i64 0
  %i.bu = insertelement <4 x i8> %i.bt, i8 %i.bq, i64 1
  %i.bv = insertelement <4 x i8> %i.bu, i8 %i.br, i64 2
  %i.bw = insertelement <4 x i8> %i.bv, i8 %i.bs, i64 3
  %i.bx = zext <4 x i8> %i.bw to <4 x i32>
  %i.by = or disjoint <4 x i32> %i.bk, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %index
  store <4 x i32> %i.by, ptr %i.bz, align 4, !tbaa !9, !alias.scope !95, !noalias !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader61

.lr.ph.preheader61:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03643.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  %.03742.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03841.ph = phi i64 [ %.fr60, %vector.memcheck ], [ %.fr60, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader61, %.lr.ph
  %.03643 = phi ptr [ %i.co, %.lr.ph ], [ %.03643.ph, %.lr.ph.preheader61 ] ; 4 uses
  %.03742 = phi i64 [ %i.cq, %.lr.ph ], [ %.03742.ph, %.lr.ph.preheader61 ] ; 2 uses
  %.03841 = phi i64 [ %i.cp, %.lr.ph ], [ %.03841.ph, %.lr.ph.preheader61 ] ; 2 uses
  %i.cb = load i8, ptr %.03643, align 1, !tbaa !12
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.03643, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !12
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = or disjoint i32 %i.ch, %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %.03643, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !12
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.03742
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %.03643, i64 3 ; 2 uses
  %i.cp = add nsw i64 %.03841, -3                 ; 2 uses
  %i.cq = add nuw nsw i64 %.03742, 1              ; 3 uses
  %i.cr = icmp slt i64 %i.cq, %i.f
  %i.cs = icmp samesign ugt i64 %.03841, 5
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  %.038.lcssa = phi i64 [ %.fr60, %bb.e ], [ %i.ah, %middle.block ], [ %i.cp, %.lr.ph ]
  %.037.lcssa = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %i.cq, %.lr.ph ] ; 2 uses
  %.036.lcssa = phi ptr [ %i.p, %bb.e ], [ %i.af, %middle.block ], [ %i.co, %.lr.ph ]
  store ptr %.036.lcssa, ptr %i.o, align 8, !tbaa !61
  store i64 %.038.lcssa, ptr %i.q, align 8, !tbaa !62
  %.not = icmp eq i64 %.037.lcssa, %i.f
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !65
  %i.cw = sub nsw i64 %i.f, %.037.lcssa
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode24.module, ptr noundef nonnull @.str.10, i32 noundef %i.cv, i64 noundef %i.cw) #16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !41
  tail call void %i.cy(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.f) #16
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi ptr [ %i.f, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.069 = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.078 = phi i64 [ %i.d, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.078, -1
  %i.e = load i32, ptr %.069, align 4, !tbaa !9
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.in = phi i64 [ %i.d, %bb.d ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.021 = phi ptr [ %i.al, %bb.d ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.0820 = phi ptr [ %i.am, %bb.d ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.in, -1
  %i.e = load i32, ptr %.0820, align 4, !tbaa !9  ; 2 uses
  %i.f = lshr i32 %i.e, 12
  %i.g = trunc i32 %i.f to i16
  %i.h = and i16 %i.g, 4093
  %i.i = add nuw nsw i16 %i.h, 13314
  %i.j = getelementptr inbounds nuw i8, ptr %.021, i64 2
  store i16 %i.i, ptr %.021, align 2, !tbaa !66
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
  %i.q = load i16, ptr %i.p, align 2, !tbaa !17
  %i.r = sext i16 %i.q to i32
  %i.s = sub nsw i32 %i.k, %i.r                   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b
end_hunk_0
