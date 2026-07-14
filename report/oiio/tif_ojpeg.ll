inline.NumInlined: 64
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@OJPEGPrintDir:bb.a
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.39, i64 noundef %i.as) #13 ; 0 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !168
  %i.av = zext i8 %i.au to i64
  %i.aw = icmp samesign ult i64 %indvars.iv.next71, %i.av
  br i1 %i.aw, label %bb.m, label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.m, %bb.l
  %fputc50 = tail call i32 @fputc(i32 10, ptr %1) ; 0 uses
  %.pre76 = load i32, ptr %i.c, align 8, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge62, %bb.k
  %i.ax = phi i32 [ %.pre76, %._crit_edge62 ], [ %i.al, %bb.k ] ; 2 uses
  %i.ay = and i32 %i.ax, 128
  %.not51 = icmp eq i32 %i.ay, 0
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !37
  %i.bb = zext i8 %i.ba to i32
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %i.bb) #13 ; 0 uses
  %.pre77 = load i32, ptr %i.c, align 8, !tbaa !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bd = phi i32 [ %.pre77, %bb.o ], [ %i.ax, %bb.n ]
  %i.be = and i32 %i.bd, 256
  %.not52 = icmp eq i32 %i.be, 0
  br i1 %.not52, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !91
  %i.bh = zext i16 %i.bg to i32
  %i.bi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %i.bh) #13 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !73 ; 2 uses
  %.not53 = icmp eq ptr %i.bk, null
  br i1 %.not53, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void %i.bk(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @OJPEGSubsamplingCorrect(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !86
  %.not = icmp eq i16 %i.d, 3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.f = load i16, ptr %i.e, align 2, !tbaa !177
  switch i16 %i.f, label %bb.c [
    i16 6, label %bb.f
    i16 10, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 291
  %i.h = load i8, ptr %i.g, align 1, !tbaa !170
  %.not52 = icmp eq i8 %i.h, 0
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGSubsamplingCorrect.module, ptr noundef nonnull @.str.9) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 292
  store i8 1, ptr %i.i, align 4, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 293
  store i8 1, ptr %i.j, align 1, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 294
  store i8 0, ptr %i.k, align 2, !tbaa !120
  br label %bb.q

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 290
  store i8 1, ptr %i.l, align 2, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 292 ; 4 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !38    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 293 ; 5 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !39    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 289 ; 3 uses
  store i8 1, ptr %i.q, align 1, !tbaa !178
  %i.r = tail call fastcc i32 @OJPEGReadHeaderInfoSec(ptr noundef nonnull %0) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 294 ; 3 uses
  %i.t = load i8, ptr %i.s, align 2, !tbaa !120
  %.not48 = icmp ne i8 %i.t, 0                    ; 2 uses
  br i1 %.not48, label %bb.g, label %.thread54

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.m, align 4, !tbaa !38
  store i8 1, ptr %i.o, align 1, !tbaa !39
  store i8 0, ptr %i.q, align 1, !tbaa !178
  %i.u = zext i8 %i.n to i32
  %.not49 = icmp eq i8 %i.n, 1
  br i1 %.not49, label %bb.h, label %bb.k

.thread54:                                        ; preds = %bb.f
  %.pre = load i8, ptr %i.m, align 4, !tbaa !38   ; 3 uses
  store i8 0, ptr %i.q, align 1, !tbaa !178
  %i.v = zext i8 %i.n to i32                      ; 2 uses
  %.not4955 = icmp eq i8 %.pre, %i.n
  br i1 %.not4955, label %bb.h, label %.thread56

bb.h:                                             ; preds = %.thread54, %bb.g
  %i.w = phi i32 [ %i.v, %.thread54 ], [ 1, %bb.g ] ; 2 uses
  %i.x = phi i8 [ %.pre, %.thread54 ], [ 1, %bb.g ]
  %i.y = load i8, ptr %i.o, align 1, !tbaa !39
  %.not50 = icmp eq i8 %i.y, %i.p
  %brmerge = or i1 %.not48, %.not50
  br i1 %brmerge, label %bb.k, label %.thread56

.thread56:                                        ; preds = %.thread54, %bb.h
  %i.z = phi i32 [ %i.w, %bb.h ], [ %i.v, %.thread54 ] ; 3 uses
  %i.aa = phi i8 [ %i.x, %bb.h ], [ %.pre, %.thread54 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 291
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !170
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = zext i8 %i.aa to i32                    ; 2 uses
  %i.af = load i8, ptr %i.o, align 1, !tbaa !39
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread56
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGSubsamplingCorrect.module, ptr noundef nonnull @.str.10, i32 noundef %i.ae, i32 noundef %i.ag) #13
  br label %bb.k

bb.j:                                             ; preds = %.thread56
  %i.ah = zext i8 %i.p to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGSubsamplingCorrect.module, ptr noundef nonnull @.str.11, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.z, i32 noundef %i.ah) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.ai = phi i32 [ %i.w, %bb.h ], [ %i.z, %bb.i ], [ %i.z, %bb.j ], [ %i.u, %bb.g ]
  %i.aj = load i8, ptr %i.s, align 2, !tbaa !120
  %.not51 = icmp eq i8 %i.aj, 0
  br i1 %.not51, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 291
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !170
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGSubsamplingCorrect.module, ptr noundef nonnull @.str.12) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.an = zext i8 %i.p to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGSubsamplingCorrect.module, ptr noundef nonnull @.str.13, i32 noundef %i.ai, i32 noundef %i.an) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.pr = load i8, ptr %i.s, align 2, !tbaa !120
  %i.ao = icmp eq i8 %.pr, 0
  br i1 %i.ao, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.k, %bb.o
  %i.ap = load i8, ptr %i.m, align 4, !tbaa !38   ; 2 uses
  %i.aq = load i8, ptr %i.o, align 1, !tbaa !39   ; 2 uses
  %i.ar = icmp ult i8 %i.ap, %i.aq
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  %i.as = zext i8 %i.aq to i32
  %i.at = zext i8 %i.ap to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGSubsamplingCorrect.module, ptr noundef nonnull @.str.14, i32 noundef %i.at, i32 noundef %i.as) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %.thread, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 290
  store i8 1, ptr %i.au, align 2, !tbaa !75
  ret void
}

declare void @TIFFWarningExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadHeaderInfoSec(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca i8, align 1                       ; 18 uses
  %i.c = alloca i16, align 2                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 72 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !179  ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !181
  %i.m = tail call i64 %i.j(ptr noundef %i.l) #13 ; 2 uses
  store i64 %i.m, ptr %i.f, align 8, !tbaa !179
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ %i.m, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !158  ; 5 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not77 = icmp ult i64 %i.p, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 2 uses
  br i1 %.not77, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.q, align 8, !tbaa !161  ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = xor i64 %i.r, -1
  %i.u = icmp ugt i64 %i.p, %i.t
  %or.cond = or i1 %i.s, %i.u
  %i.v = add i64 %i.r, %i.p
  %i.w = icmp ugt i64 %i.v, %i.n
  %or.cond86 = or i1 %or.cond, %i.w
  br i1 %or.cond86, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = sub i64 %i.n, %i.p
  store i64 %i.x, ptr %i.q, align 8, !tbaa !161
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 1592
  store i32 0, ptr %i.y, align 8, !tbaa !182
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 1596
  store i32 0, ptr %i.z, align 4, !tbaa !183
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !184
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !185
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 1624 ; 3 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1632 ; 11 uses
  store i16 0, ptr %i.ae, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 1640 ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 289 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 1608 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1616
  br label %bb.i

thread-pre-split:                                 ; preds = %bb.n, %bb.bf, %bb.cb, %bb.ch, %bb.v, %bb.w, %bb.x, %OJPEGReadHeaderInfoSecStreamDri.exit, %bb.aq, %bb.ar, %bb.bo, %bb.bp, %OJPEGReadSkip.exit
  %.pr = load i16, ptr %i.ae, align 8, !tbaa !95
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.h
  %i.aj = phi i16 [ %.pr, %thread-pre-split ], [ 0, %bb.h ]
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.e)
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %OJPEGReadBytePeek.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !100 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !101
  %.not78 = icmp eq i8 %i.ao, -1
  br i1 %.not78, label %bb.l, label %OJPEGReadSkip.exit.thread164

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !100
  %i.aq = load i16, ptr %i.ae, align 8, !tbaa !95
  %i.ar = add i16 %i.aq, -1                       ; 2 uses
  store i16 %i.ar, ptr %i.ae, align 8, !tbaa !95
  br label %thread-pre-split151

thread-pre-split151:                              ; preds = %bb.n, %bb.l
  %i.as = phi ptr [ %i.ap, %bb.l ], [ %i.ba, %bb.n ]
  %i.at = phi i16 [ %i.ar, %bb.l ], [ %i.bb, %bb.n ] ; 2 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %thread-pre-split151
  %i.av = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.e)
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %OJPEGReadBytePeek.exit.thread, label %._crit_edge317

._crit_edge317:                                   ; preds = %bb.m
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !100
  %.pre318 = load i16, ptr %i.ae, align 8, !tbaa !95
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge317, %thread-pre-split151
  %i.ax = phi i16 [ %.pre318, %._crit_edge317 ], [ %i.at, %thread-pre-split151 ]
  %i.ay = phi ptr [ %.pre, %._crit_edge317 ], [ %i.as, %thread-pre-split151 ] ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !101 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.ba, ptr %i.af, align 8, !tbaa !100
  %i.bb = add i16 %i.ax, -1                       ; 4 uses
  store i16 %i.bb, ptr %i.ae, align 8, !tbaa !95
  switch i8 %i.az, label %bb.em [
    i8 -1, label %thread-pre-split151
    i8 -40, label %thread-pre-split
    i8 -2, label %bb.o
    i8 -32, label %bb.o
    i8 -31, label %bb.o
    i8 -30, label %bb.o
    i8 -29, label %bb.o
    i8 -28, label %bb.o
    i8 -27, label %bb.o
    i8 -26, label %bb.o
    i8 -25, label %bb.o
    i8 -24, label %bb.o
    i8 -23, label %bb.o
    i8 -22, label %bb.o
    i8 -21, label %bb.o
    i8 -20, label %bb.o
    i8 -19, label %bb.o
    i8 -18, label %bb.o
    i8 -17, label %bb.o
    i8 -35, label %bb.y
    i8 -37, label %bb.ai
    i8 -60, label %bb.bg
    i8 -64, label %bb.ci
    i8 -63, label %bb.ci
    i8 -61, label %bb.ci
    i8 -38, label %bb.ek
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.e)
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %OJPEGReadBytePeek.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %.pre.i = load i16, ptr %i.ae, align 8, !tbaa !95
  %.pre320 = load ptr, ptr %i.af, align 8, !tbaa !100
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i, %bb.o
  %i.bf = phi ptr [ %.pre320, %._crit_edge.i ], [ %i.ba, %bb.o ] ; 2 uses
  %i.bg = phi i16 [ %.pre.i, %._crit_edge.i ], [ %i.bb, %bb.o ]
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  store ptr %i.bi, ptr %i.af, align 8, !tbaa !100
  %i.bj = add i16 %i.bg, -1                       ; 3 uses
  store i16 %i.bj, ptr %i.ae, align 8, !tbaa !95
  %i.bk = zext i8 %i.bh to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %i.bm = icmp eq i16 %i.bj, 0
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.e)
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %OJPEGReadBytePeek.exit.thread, label %._crit_edge12.i

._crit_edge12.i:                                  ; preds = %bb.r
  %.pre13.i = load ptr, ptr %i.af, align 8, !tbaa !100
  %.pre14.i = load i16, ptr %i.ae, align 8, !tbaa !95
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge12.i, %bb.q
  %i.bp = phi i16 [ %.pre14.i, %._crit_edge12.i ], [ %i.bj, %bb.q ]
  %i.bq = phi ptr [ %.pre13.i, %._crit_edge12.i ], [ %i.bi, %bb.q ] ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !101
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  store ptr %i.bs, ptr %i.af, align 8, !tbaa !100
  %i.bt = add i16 %i.bp, -1                       ; 4 uses
  store i16 %i.bt, ptr %i.ae, align 8, !tbaa !95
  %i.bu = zext i8 %i.br to i16
  %i.bv = or disjoint i16 %i.bl, %i.bu            ; 3 uses
  %i.bw = icmp ult i16 %i.bv, 2
  br i1 %i.bw, label %bb.t, label %bb.v

end_hunk_0
begin_hunk_1_@OJPEGReadHeaderInfoSec:bb.a

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ri
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !195

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec508 = and i64 %i.ri, 252                  ; 3 uses
  %i.sc = trunc nuw i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.sc, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index509 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next511, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind510 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next512, %vec.epilog.vector.body ] ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rh, i64 %index509
  store <4 x i8> %vec.ind510, ptr %i.sd, align 1, !tbaa !101
  %index.next511 = add nuw i64 %index509, 4       ; 2 uses
  %vec.ind.next512 = add <4 x i8> %vec.ind510, splat (i8 4)
  %i.se = icmp eq i64 %index.next511, %n.vec508
  br i1 %i.se, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !196

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n513 = icmp eq i64 %n.vec508, %i.ri
  br i1 %cmp.n513, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv301.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec508, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv301 = phi i64 [ %indvars.iv.next302, %vec.epilog.scalar.ph ], [ %indvars.iv301.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rh, i64 %indvars.iv301
  %i.sg = trunc nuw i64 %indvars.iv301 to i8
  store i8 %i.sg, ptr %i.sf, align 1, !tbaa !101
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %i.sh = icmp samesign ult i64 %indvars.iv.next302, %i.ri
  br i1 %i.sh, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !199

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.si = getelementptr inbounds nuw i8, ptr %i.e, i64 292
  %i.sj = load i8, ptr %i.si, align 4, !tbaa !38
  %i.sk = shl i8 %i.sj, 4
  %i.sl = getelementptr inbounds nuw i8, ptr %i.e, i64 293
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !39
  %i.sn = or i8 %i.sk, %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.e, i64 491 ; 3 uses
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !101
  %.not443 = icmp eq i8 %i.qz, 1
  br i1 %.not443, label %._crit_edge235, label %iter.check527

iter.check527:                                    ; preds = %._crit_edge
  %i.sp = zext i8 %i.qz to i64
  %i.sq = add nsw i64 %i.ri, -1                   ; 5 uses
  %min.iters.check514 = icmp ult i8 %i.qz, 9
  br i1 %min.iters.check514, label %.lr.ph234.preheader, label %vector.main.loop.iter.check515

vector.main.loop.iter.check515:                   ; preds = %iter.check527
  %min.iters.check516 = icmp ult i8 %i.qz, 33
  br i1 %min.iters.check516, label %vec.epilog.ph531, label %vector.ph517

vector.ph517:                                     ; preds = %vector.main.loop.iter.check515
  %n.mod.vf518 = and i64 %i.sq, 24
  %n.vec519 = and i64 %i.sq, -32                  ; 9 uses
  %i.sr = or disjoint i64 %n.vec519, 1
  %i.ss = getelementptr inbounds nuw i8, ptr %i.e, i64 492
  %i.st = getelementptr inbounds nuw i8, ptr %i.e, i64 508
  store <16 x i8> splat (i8 17), ptr %i.ss, align 4, !tbaa !101
  store <16 x i8> splat (i8 17), ptr %i.st, align 4, !tbaa !101
  %i.su = icmp eq i64 %n.vec519, 32
  br i1 %i.su, label %middle.block523, label %vector.body520.1

vector.body520.1:                                 ; preds = %vector.ph517
  %i.sv = getelementptr inbounds nuw i8, ptr %i.e, i64 524
  %i.sw = getelementptr inbounds nuw i8, ptr %i.e, i64 540
  store <16 x i8> splat (i8 17), ptr %i.sv, align 4, !tbaa !101
  store <16 x i8> splat (i8 17), ptr %i.sw, align 4, !tbaa !101
  %i.sx = icmp eq i64 %n.vec519, 64
  br i1 %i.sx, label %middle.block523, label %vector.body520.2

vector.body520.2:                                 ; preds = %vector.body520.1
  %i.sy = getelementptr inbounds nuw i8, ptr %i.e, i64 556
  %i.sz = getelementptr inbounds nuw i8, ptr %i.e, i64 572
  store <16 x i8> splat (i8 17), ptr %i.sy, align 4, !tbaa !101
  store <16 x i8> splat (i8 17), ptr %i.sz, align 4, !tbaa !101
  %i.ta = icmp eq i64 %n.vec519, 96
  br i1 %i.ta, label %middle.block523, label %vector.body520.3

vector.body520.3:                                 ; preds = %vector.body520.2
  %i.tb = getelementptr inbounds nuw i8, ptr %i.e, i64 588
  %i.tc = getelementptr inbounds nuw i8, ptr %i.e, i64 604
  store <16 x i8> splat (i8 17), ptr %i.tb, align 4, !tbaa !101
  store <16 x i8> splat (i8 17), ptr %i.tc, align 4, !tbaa !101
  %i.td = icmp eq i64 %n.vec519, 128
  br i1 %i.td, label %middle.block523, label %vector.body520.4

vector.body520.4:                                 ; preds = %vector.body520.3
  %i.te = getelementptr inbounds nuw i8, ptr %i.e, i64 620
  %i.tf = getelementptr inbounds nuw i8, ptr %i.e, i64 636
  store <16 x i8> splat (i8 17), ptr %i.te, align 4, !tbaa !101
  store <16 x i8> splat (i8 17), ptr %i.tf, align 4, !tbaa !101
  %i.tg = icmp eq i64 %n.vec519, 160
  br i1 %i.tg, label %middle.block523, label %vector.body520.5

vector.body520.5:                                 ; preds = %vector.body520.4
  %i.th = getelementptr inbounds nuw i8, ptr %i.e, i64 652
  %i.ti = getelementptr inbounds nuw i8, ptr %i.e, i64 668
  store <16 x i8> splat (i8 17), ptr %i.th, align 4, !tbaa !101
  store <16 x i8> splat (i8 17), ptr %i.ti, align 4, !tbaa !101
  %i.tj = icmp eq i64 %n.vec519, 192
  br i1 %i.tj, label %middle.block523, label %vector.body520.6

vector.body520.6:                                 ; preds = %vector.body520.5
  %i.tk = getelementptr inbounds nuw i8, ptr %i.e, i64 684
  %i.tl = getelementptr inbounds nuw i8, ptr %i.e, i64 700
  store <16 x i8> splat (i8 17), ptr %i.tk, align 4, !tbaa !101
  store <16 x i8> splat (i8 17), ptr %i.tl, align 4, !tbaa !101
  br label %middle.block523

middle.block523:                                  ; preds = %vector.body520.6, %vector.body520.5, %vector.body520.4, %vector.body520.3, %vector.body520.2, %vector.body520.1, %vector.ph517
  %cmp.n524 = icmp eq i64 %i.sq, %n.vec519
  br i1 %cmp.n524, label %._crit_edge235, label %vec.epilog.iter.check529

vec.epilog.iter.check529:                         ; preds = %middle.block523
  %min.epilog.iters.check530 = icmp eq i64 %n.mod.vf518, 0
  br i1 %min.epilog.iters.check530, label %.lr.ph234.preheader, label %vec.epilog.ph531, !prof !200

vec.epilog.ph531:                                 ; preds = %vector.main.loop.iter.check515, %vec.epilog.iter.check529
  %vec.epilog.resume.val525 = phi i64 [ %n.vec519, %vec.epilog.iter.check529 ], [ 0, %vector.main.loop.iter.check515 ]
  %n.vec533 = and i64 %i.sq, -8                   ; 3 uses
  %i.tm = or disjoint i64 %n.vec533, 1
  br label %vec.epilog.vector.body534

vec.epilog.vector.body534:                        ; preds = %vec.epilog.vector.body534, %vec.epilog.ph531
  %index535 = phi i64 [ %vec.epilog.resume.val525, %vec.epilog.ph531 ], [ %index.next536, %vec.epilog.vector.body534 ] ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.so, i64 %index535
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 1
  store <8 x i8> splat (i8 17), ptr %i.to, align 1, !tbaa !101
  %index.next536 = add nuw i64 %index535, 8       ; 2 uses
  %i.tp = icmp eq i64 %index.next536, %n.vec533
  br i1 %i.tp, label %vec.epilog.middle.block537, label %vec.epilog.vector.body534, !llvm.loop !201

vec.epilog.middle.block537:                       ; preds = %vec.epilog.vector.body534
  %cmp.n538 = icmp eq i64 %i.sq, %n.vec533
  br i1 %cmp.n538, label %._crit_edge235, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %iter.check527, %vec.epilog.iter.check529, %vec.epilog.middle.block537
  %indvars.iv304.ph = phi i64 [ 1, %iter.check527 ], [ %i.sr, %vec.epilog.iter.check529 ], [ %i.tm, %vec.epilog.middle.block537 ]
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %.lr.ph234
  %indvars.iv304 = phi i64 [ %indvars.iv.next305, %.lr.ph234 ], [ %indvars.iv304.ph, %.lr.ph234.preheader ] ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.so, i64 %indvars.iv304
  store i8 17, ptr %i.tq, align 1, !tbaa !101
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.tr = icmp samesign ult i64 %indvars.iv.next305, %i.sp
  br i1 %i.tr, label %.lr.ph234, label %._crit_edge235, !llvm.loop !202

._crit_edge235:                                   ; preds = %.lr.ph234, %middle.block523, %vec.epilog.middle.block537, %._crit_edge.thread, %._crit_edge
  %i.ts = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !84
  %i.tu = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  store i32 %i.tt, ptr %i.tu, align 8, !tbaa !189
  %i.tv = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !85
  %i.tx = getelementptr inbounds nuw i8, ptr %i.e, i64 484
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !188
  store i8 1, ptr %i.oz, align 1, !tbaa !186
  %i.ty = load ptr, ptr %i.d, align 8, !tbaa !68  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 328 ; 3 uses
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !160
  %i.ub = icmp eq i64 %i.ua, 0
  br i1 %i.ub, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %._crit_edge235
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesDcTable.module, ptr noundef nonnull @.str.29) #13
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

bb.ff:                                            ; preds = %._crit_edge235
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 1616
  store i8 0, ptr %i.uc, align 8, !tbaa !99
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ty, i64 268 ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 4, !tbaa !87  ; 2 uses
  %.not98.i = icmp eq i8 %i.ue, 0
  br i1 %.not98.i, label %.loopexit, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.ff
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ty, i64 408
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ty, i64 500 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ft, %.lr.ph95.i
  %indvars.iv310 = phi i32 [ %indvars.iv.next311, %bb.ft ], [ -1, %.lr.ph95.i ] ; 2 uses
  %i.ul = phi i8 [ %i.wj, %bb.ft ], [ %i.ue, %.lr.ph95.i ]
  %indvars.iv.i127 = phi i64 [ %indvars.iv.next.i136, %bb.ft ], [ 0, %.lr.ph95.i ] ; 7 uses
  %i.um = phi i32 [ %i.wk, %bb.ft ], [ 0, %.lr.ph95.i ]
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv.i127 ; 2 uses
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !160 ; 4 uses
  %.not.i128 = icmp eq i64 %i.uo, 0
  br i1 %.not.i128, label %bb.fs, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.up = icmp eq i64 %indvars.iv.i127, 0
  br i1 %i.up, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.uq = getelementptr i8, ptr %i.un, i64 -8
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !160
  %.not83.i129 = icmp eq i64 %i.uo, %i.ur
  br i1 %.not83.i129, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.us = icmp samesign ugt i32 %i.um, 1
  br i1 %i.us, label %.lr.ph.i137.preheader, label %._crit_edge.i130

.lr.ph.i137.preheader:                            ; preds = %bb.fj
  %wide.trip.count312 = zext i32 %indvars.iv310 to i64
  br label %.lr.ph.i137

bb.fk:                                            ; preds = %.lr.ph.i137
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count312
  br i1 %exitcond313.not, label %._crit_edge.i130, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %bb.fk
  %indvars.iv307 = phi i64 [ 0, %.lr.ph.i137.preheader ], [ %indvars.iv.next308, %bb.fk ] ; 2 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %indvars.iv307
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !160
  %i.uv = icmp eq i64 %i.uo, %i.uu
  br i1 %i.uv, label %bb.fl, label %bb.fk

bb.fl:                                            ; preds = %.lr.ph.i137
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesDcTable.module, ptr noundef nonnull @.str.31) #13
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

._crit_edge.i130:                                 ; preds = %bb.fk, %bb.fj
  %i.uw = load ptr, ptr %i.uf, align 8, !tbaa !192
  %i.ux = load ptr, ptr %i.ug, align 8, !tbaa !181
  %i.uy = call i64 %i.uw(ptr noundef %i.ux, i64 noundef %i.uo, i32 noundef 0) #13, !inline_history !203 ; 0 uses
  %i.uz = load ptr, ptr %i.uh, align 8, !tbaa !194
  %i.va = load ptr, ptr %i.ug, align 8, !tbaa !181
  %i.vb = call i64 %i.uz(ptr noundef %i.va, ptr noundef nonnull %i.a, i64 noundef 16) #13, !inline_history !203
  %i.vc = and i64 %i.vb, 4294967295
  %.not84.i131 = icmp eq i64 %i.vc, 16
  br i1 %.not84.i131, label %.preheader.preheader.i, label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

.preheader.preheader.i:                           ; preds = %._crit_edge.i130
  %1 = load <16 x i8>, ptr %i.a, align 16, !tbaa !101
  %2 = zext <16 x i8> %1 to <16 x i32>
  %i.vd = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %2) ; 4 uses
  %i.ve = add nuw nsw i32 %i.vd, 25               ; 2 uses
  %i.vf = zext nneg i32 %i.ve to i64
  %i.vg = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.vf) #13 ; 12 uses
  %i.vh = icmp eq ptr %i.vg, null
  br i1 %i.vh, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.preheader.preheader.i
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesDcTable.module, ptr noundef nonnull @.str.19) #13
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

bb.fn:                                            ; preds = %.preheader.preheader.i
  %i.vi = zext nneg i32 %i.vd to i64
  store i32 %i.ve, ptr %i.vg, align 4, !tbaa !3
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  store i8 -1, ptr %i.vj, align 4, !tbaa !101
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 5
  store i8 -60, ptr %i.vk, align 1, !tbaa !101
  %i.vl = add nuw nsw i32 %i.vd, 19               ; 2 uses
  %i.vm = lshr i32 %i.vl, 8
  %i.vn = trunc nuw nsw i32 %i.vm to i8
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vg, i64 6
  store i8 %i.vn, ptr %i.vo, align 2, !tbaa !101
  %i.vp = trunc i32 %i.vl to i8
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vg, i64 7
  store i8 %i.vp, ptr %i.vq, align 1, !tbaa !101
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vs = trunc nuw i64 %indvars.iv.i127 to i8    ; 2 uses
  store i8 %i.vs, ptr %i.vr, align 4, !tbaa !101
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vg, i64 9
  %i.vu = load <8 x i8>, ptr %i.a, align 16, !tbaa !101
  store <8 x i8> %i.vu, ptr %i.vt, align 1, !tbaa !101
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vg, i64 17
  %i.vw = load <8 x i8>, ptr %i.uk, align 8, !tbaa !101
  store <8 x i8> %i.vw, ptr %i.vv, align 1, !tbaa !101
  %i.vx = load ptr, ptr %i.uh, align 8, !tbaa !194
  %i.vy = load ptr, ptr %i.ug, align 8, !tbaa !181
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vg, i64 25
  %i.wa = call i64 %i.vx(ptr noundef %i.vy, ptr noundef nonnull %i.vz, i64 noundef %i.vi) #13, !inline_history !203
  %i.wb = trunc i64 %i.wa to i32
  %.not85.i134 = icmp eq i32 %i.vd, %i.wb
  br i1 %.not85.i134, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.vg) #13
  br label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

bb.fp:                                            ; preds = %bb.fn
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv.i127 ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !138 ; 2 uses
  %.not86.i = icmp eq ptr %i.wd, null
  br i1 %.not86.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.wd) #13
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  store ptr %i.vg, ptr %i.wc, align 8, !tbaa !138
  %i.we = shl i8 %i.vs, 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.uj, i64 %indvars.iv.i127
  store i8 %i.we, ptr %i.wf, align 1, !tbaa !101
  %.pre.i135 = load i8, ptr %i.ud, align 4, !tbaa !87
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fi, %bb.fg
  %i.wg = getelementptr i8, ptr %i.uj, i64 %indvars.iv.i127 ; 2 uses
  %i.wh = getelementptr i8, ptr %i.wg, i64 -1
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !101
  store i8 %i.wi, ptr %i.wg, align 1, !tbaa !101
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.wj = phi i8 [ %.pre.i135, %bb.fr ], [ %i.ul, %bb.fs ] ; 2 uses
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i127, 1 ; 3 uses
  %i.wk = trunc nuw i64 %indvars.iv.next.i136 to i32
  %i.wl = zext i8 %i.wj to i64
  %i.wm = icmp samesign ult i64 %indvars.iv.next.i136, %i.wl
  %indvars.iv.next311 = add nsw i32 %indvars.iv310, 1
  br i1 %i.wm, label %bb.fg, label %.loopexit

OJPEGReadHeaderInfoSecTablesDcTable.exit.thread:  ; preds = %._crit_edge.i130, %bb.fe, %bb.fl, %bb.fo, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %OJPEGReadBytePeek.exit.thread

.loopexit:                                        ; preds = %bb.ft, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.wn = call fastcc i32 @OJPEGReadHeaderInfoSecTablesAcTable(ptr noundef %0)
  %i.wo = icmp eq i32 %i.wn, 0
  br i1 %i.wo, label %OJPEGReadBytePeek.exit.thread, label %.preheader

.preheader:                                       ; preds = %.loopexit
  %i.wp = load i8, ptr %i.qy, align 4, !tbaa !87  ; 4 uses
  %i.wq = icmp ugt i8 %i.wp, 1
  br i1 %i.wq, label %iter.check556, label %OJPEGReadBytePeek.exit.thread

iter.check556:                                    ; preds = %.preheader
  %i.wr = getelementptr inbounds nuw i8, ptr %i.e, i64 497 ; 2 uses
  %i.ws = zext i8 %i.wp to i64                    ; 2 uses
  %i.wt = add nsw i64 %i.ws, -1                   ; 5 uses
  %min.iters.check540 = icmp ult i8 %i.wp, 9
  br i1 %min.iters.check540, label %vec.epilog.scalar.ph557.preheader, label %vector.main.loop.iter.check541

vector.main.loop.iter.check541:                   ; preds = %iter.check556
  %min.iters.check542 = icmp ult i8 %i.wp, 33
  br i1 %min.iters.check542, label %vec.epilog.ph560, label %vector.ph543

vector.ph543:                                     ; preds = %vector.main.loop.iter.check541
  %n.mod.vf544 = and i64 %i.wt, 24
  %n.vec545 = and i64 %i.wt, -32                  ; 9 uses
  %i.wu = or disjoint i64 %n.vec545, 1            ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.e, i64 498
  %i.ww = getelementptr inbounds nuw i8, ptr %i.e, i64 514
  store <16 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %i.wv, align 2, !tbaa !101
  store <16 x i8> <i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32>, ptr %i.ww, align 2, !tbaa !101
  %i.wx = icmp eq i64 %n.vec545, 32
  br i1 %i.wx, label %middle.block552, label %vector.body546.1

vector.body546.1:                                 ; preds = %vector.ph543
  %i.wy = getelementptr inbounds nuw i8, ptr %i.e, i64 530
  %i.wz = getelementptr inbounds nuw i8, ptr %i.e, i64 546
  store <16 x i8> <i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48>, ptr %i.wy, align 2, !tbaa !101
  store <16 x i8> <i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63, i8 64>, ptr %i.wz, align 2, !tbaa !101
  %i.xa = icmp eq i64 %n.vec545, 64
  br i1 %i.xa, label %middle.block552, label %vector.body546.2

vector.body546.2:                                 ; preds = %vector.body546.1
  %i.xb = getelementptr inbounds nuw i8, ptr %i.e, i64 562
  %i.xc = getelementptr inbounds nuw i8, ptr %i.e, i64 578
  store <16 x i8> <i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79, i8 80>, ptr %i.xb, align 2, !tbaa !101
  store <16 x i8> <i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95, i8 96>, ptr %i.xc, align 2, !tbaa !101
  %i.xd = icmp eq i64 %n.vec545, 96
  br i1 %i.xd, label %middle.block552, label %vector.body546.3

vector.body546.3:                                 ; preds = %vector.body546.2
  %i.xe = getelementptr inbounds nuw i8, ptr %i.e, i64 594
  %i.xf = getelementptr inbounds nuw i8, ptr %i.e, i64 610
  store <16 x i8> <i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111, i8 112>, ptr %i.xe, align 2, !tbaa !101
  store <16 x i8> <i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127, i8 -128>, ptr %i.xf, align 2, !tbaa !101
  %i.xg = icmp eq i64 %n.vec545, 128
  br i1 %i.xg, label %middle.block552, label %vector.body546.4

vector.body546.4:                                 ; preds = %vector.body546.3
  %i.xh = getelementptr inbounds nuw i8, ptr %i.e, i64 626
  %i.xi = getelementptr inbounds nuw i8, ptr %i.e, i64 642
  store <16 x i8> <i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113, i8 -112>, ptr %i.xh, align 2, !tbaa !101
  store <16 x i8> <i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97, i8 -96>, ptr %i.xi, align 2, !tbaa !101
  %i.xj = icmp eq i64 %n.vec545, 160
  br i1 %i.xj, label %middle.block552, label %vector.body546.5

vector.body546.5:                                 ; preds = %vector.body546.4
  %i.xk = getelementptr inbounds nuw i8, ptr %i.e, i64 658
  %i.xl = getelementptr inbounds nuw i8, ptr %i.e, i64 674
  store <16 x i8> <i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81, i8 -80>, ptr %i.xk, align 2, !tbaa !101
  store <16 x i8> <i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65, i8 -64>, ptr %i.xl, align 2, !tbaa !101
  %i.xm = icmp eq i64 %n.vec545, 192
  br i1 %i.xm, label %middle.block552, label %vector.body546.6

vector.body546.6:                                 ; preds = %vector.body546.5
  %i.xn = getelementptr inbounds nuw i8, ptr %i.e, i64 690
  %i.xo = getelementptr inbounds nuw i8, ptr %i.e, i64 706
  store <16 x i8> <i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49, i8 -48>, ptr %i.xn, align 2, !tbaa !101
  store <16 x i8> <i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33, i8 -32>, ptr %i.xo, align 2, !tbaa !101
  br label %middle.block552

middle.block552:                                  ; preds = %vector.body546.6, %vector.body546.5, %vector.body546.4, %vector.body546.3, %vector.body546.2, %vector.body546.1, %vector.ph543
  %cmp.n553 = icmp eq i64 %i.wt, %n.vec545
  br i1 %cmp.n553, label %OJPEGReadBytePeek.exit.thread, label %vec.epilog.iter.check558

vec.epilog.iter.check558:                         ; preds = %middle.block552
  %min.epilog.iters.check559 = icmp eq i64 %n.mod.vf544, 0
  br i1 %min.epilog.iters.check559, label %vec.epilog.scalar.ph557.preheader, label %vec.epilog.ph560, !prof !200

vec.epilog.ph560:                                 ; preds = %vector.main.loop.iter.check541, %vec.epilog.iter.check558
  %vec.epilog.resume.val554 = phi i64 [ %n.vec545, %vec.epilog.iter.check558 ], [ 0, %vector.main.loop.iter.check541 ]
  %bc.resume.val555 = phi i64 [ %i.wu, %vec.epilog.iter.check558 ], [ 1, %vector.main.loop.iter.check541 ]
  %n.vec562 = and i64 %i.wt, -8                   ; 3 uses
  %i.xp = or disjoint i64 %n.vec562, 1
  %i.xq = trunc i64 %bc.resume.val555 to i8
  %broadcast.splatinsert563 = insertelement <8 x i8> poison, i8 %i.xq, i64 0
  %broadcast.splat564 = shufflevector <8 x i8> %broadcast.splatinsert563, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction565 = add <8 x i8> %broadcast.splat564, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body566

vec.epilog.vector.body566:                        ; preds = %vec.epilog.vector.body566, %vec.epilog.ph560
  %index567 = phi i64 [ %vec.epilog.resume.val554, %vec.epilog.ph560 ], [ %index.next569, %vec.epilog.vector.body566 ] ; 2 uses
  %vec.ind568 = phi <8 x i8> [ %induction565, %vec.epilog.ph560 ], [ %vec.ind.next570, %vec.epilog.vector.body566 ] ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wr, i64 %index567
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 1
  store <8 x i8> %vec.ind568, ptr %i.xs, align 1, !tbaa !101
  %index.next569 = add nuw i64 %index567, 8       ; 2 uses
  %vec.ind.next570 = add <8 x i8> %vec.ind568, splat (i8 8)
  %i.xt = icmp eq i64 %index.next569, %n.vec562
  br i1 %i.xt, label %vec.epilog.middle.block571, label %vec.epilog.vector.body566, !llvm.loop !204

vec.epilog.middle.block571:                       ; preds = %vec.epilog.vector.body566
  %cmp.n572 = icmp eq i64 %i.wt, %n.vec562
  br i1 %cmp.n572, label %OJPEGReadBytePeek.exit.thread, label %vec.epilog.scalar.ph557.preheader

vec.epilog.scalar.ph557.preheader:                ; preds = %iter.check556, %vec.epilog.iter.check558, %vec.epilog.middle.block571
  %indvars.iv314.ph = phi i64 [ 1, %iter.check556 ], [ %i.wu, %vec.epilog.iter.check558 ], [ %i.xp, %vec.epilog.middle.block571 ]
  br label %vec.epilog.scalar.ph557

vec.epilog.scalar.ph557:                          ; preds = %vec.epilog.scalar.ph557.preheader, %vec.epilog.scalar.ph557
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %vec.epilog.scalar.ph557 ], [ %indvars.iv314.ph, %vec.epilog.scalar.ph557.preheader ] ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wr, i64 %indvars.iv314
  %i.xv = trunc nuw i64 %indvars.iv314 to i8
  store i8 %i.xv, ptr %i.xu, align 1, !tbaa !101
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %i.xw = icmp samesign ult i64 %indvars.iv.next315, %i.ws
  br i1 %i.xw, label %vec.epilog.scalar.ph557, label %OJPEGReadBytePeek.exit.thread, !llvm.loop !205

OJPEGReadBytePeek.exit.thread:                    ; preds = %bb.bj, %bb.bh, %bb.aj, %bb.al, %bb.ah, %bb.af, %bb.z, %bb.ab, %bb.r, %bb.p, %bb.j, %bb.ej, %bb.m, %vec.epilog.scalar.ph557, %middle.block552, %vec.epilog.middle.block571, %.preheader, %bb.ey, %bb.ew, %bb.ev, %bb.eo, %bb.bm, %bb.cc, %bb.by, %bb.bw, %bb.br, %bb.bl, %bb.ce, %bb.ao, %bb.bb, %bb.aw, %bb.au, %bb.an, %bb.bc, %bb.ad, %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread, %OJPEGReadHeaderInfoSecStreamSof.exit.thread, %OJPEGReadSkip.exit.thread164.thread, %.loopexit, %OJPEGReadSkip.exit.thread164, %bb.el, %bb.ek, %bb.t, %bb.u, %bb.em
  %.071 = phi i32 [ 1, %bb.ek ], [ 0, %bb.el ], [ 1, %OJPEGReadSkip.exit.thread164 ], [ 0, %bb.ce ], [ 0, %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread ], [ 0, %.loopexit ], [ 1, %OJPEGReadSkip.exit.thread164.thread ], [ 0, %bb.em ], [ 0, %bb.bl ], [ 0, %bb.m ], [ 0, %bb.t ], [ 0, %bb.br ], [ 0, %bb.bw ], [ 0, %bb.by ], [ 0, %OJPEGReadHeaderInfoSecStreamSof.exit.thread ], [ 0, %bb.cc ], [ 0, %bb.u ], [ 0, %bb.ey ], [ 0, %bb.bm ], [ 0, %bb.ad ], [ 1, %.preheader ], [ 0, %bb.eo ], [ 0, %bb.ev ], [ 0, %bb.bc ], [ 0, %bb.an ], [ 0, %bb.au ], [ 0, %bb.aw ], [ 0, %bb.bb ], [ 0, %bb.ao ], [ 0, %bb.ew ], [ 1, %middle.block552 ], [ 1, %vec.epilog.scalar.ph557 ], [ 1, %vec.epilog.middle.block571 ], [ 0, %bb.bh ], [ 0, %bb.al ], [ 0, %bb.af ], [ 0, %bb.z ], [ 0, %bb.ab ], [ 0, %bb.p ], [ 1, %bb.ej ], [ 0, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.r ], [ 0, %bb.j ], [ 0, %bb.bj ]
  ret i32 %.071
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadByte(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !95
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %0)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = load i8, ptr %i.g, align 1, !tbaa !101
  store i8 %i.h, ptr %1, align 1, !tbaa !101
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %i.f, align 8, !tbaa !100
  %i.k = load i16, ptr %i.a, align 8, !tbaa !95
  %i.l = add i16 %i.k, -1
  store i16 %i.l, ptr %i.a, align 8, !tbaa !95
end_hunk_1
begin_hunk_2_@OJPEGReadHeaderInfoSecStreamSos:bb.a
bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.b)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %OJPEGReadSkip.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load i16, ptr %i.f, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.c
  %i.k = phi i16 [ %.pre.i, %._crit_edge.i ], [ %i.g, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1640 ; 12 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !100
  %i.p = add i16 %i.k, -1                         ; 3 uses
  store i16 %i.p, ptr %i.f, align 8, !tbaa !95
  %i.q = zext i8 %i.n to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = icmp eq i16 %i.p, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.b)
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %OJPEGReadSkip.exit, label %._crit_edge12.i

._crit_edge12.i:                                  ; preds = %bb.f
  %.pre13.i = load ptr, ptr %i.l, align 8, !tbaa !100
  %.pre14.i = load i16, ptr %i.f, align 8, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge12.i, %bb.e
  %i.v = phi i16 [ %.pre14.i, %._crit_edge12.i ], [ %i.p, %bb.e ]
  %i.w = phi ptr [ %.pre13.i, %._crit_edge12.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.y, ptr %i.l, align 8, !tbaa !100
  %i.z = add i16 %i.v, -1                         ; 3 uses
  store i16 %i.z, ptr %i.f, align 8, !tbaa !95
  %i.aa = zext i8 %i.x to i32
  %i.ab = or disjoint i32 %i.r, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 270 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !89  ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 1
  %i.ag = add nuw nsw i32 %i.af, 6
  %.not = icmp eq i32 %i.ag, %i.ab
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamSos.module, ptr noundef nonnull @.str.28) #13
  br label %OJPEGReadSkip.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp eq i16 %i.z, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.b)
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %OJPEGReadSkip.exit, label %._crit_edge46

._crit_edge46:                                    ; preds = %bb.j
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !100
  %.pre47 = load i16, ptr %i.f, align 8, !tbaa !95
  %.pre48 = load i8, ptr %i.ac, align 2, !tbaa !89
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge46, %bb.i
  %i.ak = phi i8 [ %.pre48, %._crit_edge46 ], [ %i.ad, %bb.i ] ; 2 uses
  %i.al = phi i16 [ %.pre47, %._crit_edge46 ], [ %i.z, %bb.i ]
  %i.am = phi ptr [ %.pre, %._crit_edge46 ], [ %i.y, %bb.i ] ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.ao, ptr %i.l, align 8, !tbaa !100
  %i.ap = add i16 %i.al, -1                       ; 2 uses
  store i16 %i.ap, ptr %i.f, align 8, !tbaa !95
  %.not23 = icmp eq i8 %i.an, %i.ak
  br i1 %.not23, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.k
  %.not44 = icmp eq i8 %i.ak, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 497
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 269 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 500
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecStreamSos.module, ptr noundef nonnull @.str.28) #13
  br label %OJPEGReadSkip.exit

bb.m:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.at = load i16, ptr %i.f, align 8, !tbaa !95  ; 2 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.b)
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %OJPEGReadSkip.exit, label %._crit_edge49

._crit_edge49:                                    ; preds = %bb.n
  %.pre50 = load i16, ptr %i.f, align 8, !tbaa !95
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge49, %bb.m
  %i.ax = phi i16 [ %.pre50, %._crit_edge49 ], [ %i.at, %bb.m ]
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !101
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.ba, ptr %i.l, align 8, !tbaa !100
  %i.bb = add i16 %i.ax, -1
  store i16 %i.bb, ptr %i.f, align 8, !tbaa !95
  %i.bc = load i8, ptr %i.ar, align 1, !tbaa !88
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %indvars.iv, %i.bd
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bf
  store i8 %i.az, ptr %i.bg, align 1, !tbaa !101
  %i.bh = load i16, ptr %i.f, align 8, !tbaa !95  ; 2 uses
  %i.bi = icmp eq i16 %i.bh, 0
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call fastcc i32 @OJPEGReadBufferFill(ptr noundef nonnull %i.b)
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %OJPEGReadSkip.exit, label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.p
  %.pre52 = load i16, ptr %i.f, align 8, !tbaa !95
  %.pre53 = load i8, ptr %i.ar, align 1, !tbaa !88
  %.pre56 = zext i8 %.pre53 to i32
  %.pre57 = add nuw nsw i32 %indvars.iv, %.pre56
  %.pre59 = zext nneg i32 %.pre57 to i64
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge51, %bb.o
  %.pre-phi60 = phi i64 [ %.pre59, %._crit_edge51 ], [ %i.bf, %bb.o ]
  %i.bl = phi i16 [ %.pre52, %._crit_edge51 ], [ %i.bh, %bb.o ]
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !100 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bo, ptr %i.l, align 8, !tbaa !100
  %i.bp = add i16 %i.bl, -1
  store i16 %i.bp, ptr %i.f, align 8, !tbaa !95
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pre-phi60
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !101
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %i.br = load i8, ptr %i.ac, align 2, !tbaa !89
  %i.bs = zext i8 %i.br to i32
  %i.bt = icmp samesign ult i32 %indvars.iv.next, %i.bs
  br i1 %i.bt, label %bb.m, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.q
  %.pre54 = load i16, ptr %i.f, align 8, !tbaa !95
  %.pre55 = load ptr, ptr %i.l, align 8, !tbaa !100
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bu = phi ptr [ %.pre55, %._crit_edge.loopexit ], [ %i.ao, %.preheader ]
  %i.bv = phi i16 [ %.pre54, %._crit_edge.loopexit ], [ %i.ap, %.preheader ] ; 3 uses
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.bv, i16 3) ; 3 uses
  %i.bw = zext nneg i16 %spec.select.i to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  store ptr %i.bx, ptr %i.l, align 8, !tbaa !100
  %i.by = sub i16 %i.bv, %spec.select.i
  store i16 %i.by, ptr %i.f, align 8, !tbaa !95
  %.not.not.i = icmp ult i16 %i.bv, 3
  br i1 %.not.not.i, label %bb.r, label %OJPEGReadSkip.exit

bb.r:                                             ; preds = %._crit_edge
  %i.bz = xor i16 %spec.select.i, 3
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 1624 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !97 ; 2 uses
  %spec.select2122.i = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.ca) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 1608 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !94
  %i.cf = add i64 %i.ce, %spec.select2122.i
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !94
  %i.cg = sub i64 %i.cc, %spec.select2122.i
  store i64 %i.cg, ptr %i.cb, align 8, !tbaa !97
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 1616
  store i8 0, ptr %i.ch, align 8, !tbaa !99
  br label %OJPEGReadSkip.exit

OJPEGReadSkip.exit:                               ; preds = %bb.p, %bb.n, %bb.j, %bb.f, %bb.d, %bb.r, %._crit_edge, %bb.l, %bb.h, %bb.b
  %.021 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.h ], [ 1, %bb.r ], [ 0, %bb.l ], [ 0, %bb.f ], [ 0, %bb.j ], [ 1, %._crit_edge ], [ 0, %bb.n ], [ 0, %bb.p ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadHeaderInfoSecTablesAcTable(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !160
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesAcTable.module, ptr noundef nonnull @.str.29) #13
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1616
  store i8 0, ptr %i.g, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 268 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !87    ; 2 uses
  %.not102 = icmp eq i8 %i.i, 0
  br i1 %.not102, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 500 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph99, %bb.q
  %i.p = phi i8 [ %i.i, %.lr.ph99 ], [ %i.bx, %bb.q ]
  %indvars.iv = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next, %bb.q ] ; 7 uses
  %i.q = phi i32 [ 0, %.lr.ph99 ], [ %i.by, %bb.q ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !160  ; 4 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %indvars.iv, 0
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.r, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !160
  %.not87 = icmp eq i64 %i.s, %i.v
  br i1 %.not87, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = add nsw i32 %i.q, -1
  %i.x = icmp samesign ugt i32 %i.q, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %.lr.ph
  %i.y = add nuw i8 %.08292, 1                    ; 2 uses
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp sgt i32 %i.w, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.08292 = phi i8 [ %i.y, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.ab = zext i8 %.08292 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !160
  %i.ae = icmp eq i64 %i.s, %i.ad
  br i1 %i.ae, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesAcTable.module, ptr noundef nonnull @.str.32) #13
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !192
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !181
  %i.ah = call i64 %i.af(ptr noundef %i.ag, i64 noundef %i.s, i32 noundef 0) #13 ; 0 uses
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !194
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !181
  %i.ak = call i64 %i.ai(ptr noundef %i.aj, ptr noundef nonnull %i.a, i64 noundef 16) #13
  %i.al = and i64 %i.ak, 4294967295
  %.not88 = icmp eq i64 %i.al, 16
  br i1 %.not88, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %1 = load <16 x i8>, ptr %i.a, align 16, !tbaa !101
  %2 = zext <16 x i8> %1 to <16 x i32>
  %i.am = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %2) ; 4 uses
  %i.an = add nuw nsw i32 %i.am, 25               ; 2 uses
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ao) #13 ; 12 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.preheader
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @OJPEGReadHeaderInfoSecTablesAcTable.module, ptr noundef nonnull @.str.19) #13
  br label %.loopexit

bb.k:                                             ; preds = %.preheader.preheader
  %i.ar = zext nneg i32 %i.am to i64
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i8 -1, ptr %i.as, align 4, !tbaa !101
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  store i8 -60, ptr %i.at, align 1, !tbaa !101
  %i.au = add nuw nsw i32 %i.am, 19               ; 2 uses
  %i.av = lshr i32 %i.au, 8
  %i.aw = trunc nuw nsw i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 6
  store i8 %i.aw, ptr %i.ax, align 2, !tbaa !101
  %i.ay = trunc i32 %i.au to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 7
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !101
  %i.ba = trunc nuw i64 %indvars.iv to i8         ; 2 uses
  %i.bb = or i8 %i.ba, 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 %i.bb, ptr %i.bc, align 4, !tbaa !101
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 9
  %i.be = load <8 x i8>, ptr %i.a, align 16, !tbaa !101
  store <8 x i8> %i.be, ptr %i.bd, align 1, !tbaa !101
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 17
  %i.bg = load <8 x i8>, ptr %i.o, align 8, !tbaa !101
  store <8 x i8> %i.bg, ptr %i.bf, align 1, !tbaa !101
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !194
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !181
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 25
  %i.bk = call i64 %i.bh(ptr noundef %i.bi, ptr noundef nonnull %i.bj, i64 noundef %i.ar) #13
  %i.bl = trunc i64 %i.bk to i32
  %.not89 = icmp eq i32 %i.am, %i.bl
  br i1 %.not89, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ap) #13
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !138 ; 2 uses
  %.not90 = icmp eq ptr %i.bn, null
  br i1 %.not90, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.bn) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.ap, ptr %i.bm, align 8, !tbaa !138
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !101
  %i.bq = or i8 %i.bp, %i.ba
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !101
  %.pre = load i8, ptr %i.h, align 4, !tbaa !87
  br label %bb.q

bb.p:                                             ; preds = %bb.f, %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !101
  %i.bt = getelementptr i8, ptr %i.br, i64 -1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !101
  %i.bv = and i8 %i.bu, 15
  %i.bw = or i8 %i.bv, %i.bs
  store i8 %i.bw, ptr %i.br, align 1, !tbaa !101
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bx = phi i8 [ %.pre, %bb.o ], [ %i.p, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.by = trunc nuw i64 %indvars.iv.next to i32
  %i.bz = zext i8 %i.bx to i64
  %i.ca = icmp samesign ult i64 %indvars.iv.next, %i.bz
  br i1 %i.ca, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.c, %bb.l, %bb.j, %bb.i, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.j ], [ 1, %bb.c ], [ 0, %._crit_edge ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @OJPEGReadBufferFill(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %.not83 = icmp eq i64 %i.c, 0
  br i1 %.not83, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1592 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1596 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.e

._crit_edge:                                      ; preds = %bb.u, %bb.a
  %i.l = phi i64 [ %i.c, %bb.a ], [ %i.bq, %bb.u ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !99
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.p = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !192
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.v = load i64, ptr %i.u, align 8, !tbaa !94
  %i.w = call i64 %i.r(ptr noundef %i.t, i64 noundef %i.v, i32 noundef 0) #13 ; 0 uses
  store i8 1, ptr %i.m, align 8, !tbaa !99
  %.pre84 = load i64, ptr %i.b, align 8, !tbaa !97
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.x = phi i64 [ %.pre84, %bb.b ], [ %i.l, %._crit_edge ]
  %spec.select = call i64 @llvm.umin.i64(i64 %i.x, i64 2048)
  %i.y = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !194
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 1176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !181
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.ae = call i64 %i.aa(ptr noundef %i.ac, ptr noundef nonnull %i.ad, i64 noundef %spec.select) #13 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = trunc i64 %i.ae to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store i16 %i.ag, ptr %i.ah, align 8, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1640
  store ptr %i.ad, ptr %i.ai, align 8, !tbaa !100
  %i.aj = and i64 %i.ae, 65535                    ; 2 uses
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !97
  %i.al = sub i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.b, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !94
  %i.ao = add i64 %i.an, %i.aj
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !94
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph, %bb.u
  %i.ap = phi i64 [ 0, %.lr.ph ], [ %i.bq, %bb.u ] ; 3 uses
  store i8 0, ptr %i.d, align 8, !tbaa !99
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !182
  switch i32 %i.aq, label %.loopexit [
    i32 0, label %bb.f
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !158 ; 2 uses
  %.not78 = icmp eq i64 %i.ar, 0
  br i1 %.not78, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.ar, ptr %i.h, align 8, !tbaa !94
  %i.as = load i64, ptr %i.k, align 8, !tbaa !161 ; 3 uses
  store i64 %i.as, ptr %i.b, align 8, !tbaa !97
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.at = phi i64 [ %i.as, %bb.g ], [ %i.ap, %bb.f ]
  %i.au = phi i64 [ %i.as, %bb.g ], [ 0, %bb.f ]
  store i32 1, ptr %i.e, align 8, !tbaa !182
  br label %bb.u

bb.i:                                             ; preds = %bb.e
  store i32 2, ptr %i.e, align 8, !tbaa !182
  br label %bb.u

bb.j:                                             ; preds = %bb.e
  %i.av = load i32, ptr %i.f, align 4, !tbaa !183 ; 2 uses
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !185
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %i.e, align 8, !tbaa !182
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ay = load ptr, ptr %0, align 8, !tbaa !7
  %i.az = call i64 @TIFFGetStrileOffsetWithErr(ptr noundef %i.ay, i32 noundef %i.av, ptr noundef nonnull %i.a) #13 ; 2 uses
  store i64 %i.az, ptr %i.h, align 8, !tbaa !94
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !3
  %.not74 = icmp eq i32 %i.ba, 0
  br i1 %.not74, label %bb.m, label %.critedge79

bb.m:                                             ; preds = %bb.l
  %.not75 = icmp eq i64 %i.az, 0
  br i1 %.not75, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %0, align 8, !tbaa !7
  %i.bc = load i32, ptr %i.f, align 4, !tbaa !183
  %i.bd = call i64 @TIFFGetStrileByteCountWithErr(ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef nonnull %i.a) #13 ; 4 uses
  %i.be = load i32, ptr %i.a, align 4, !tbaa !3
  %.not76 = icmp eq i32 %i.be, 0
  br i1 %.not76, label %bb.o, label %.critedge79

bb.o:                                             ; preds = %bb.n
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !94  ; 5 uses
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !179 ; 4 uses
  %.not77 = icmp ult i64 %i.bf, %i.bg
  br i1 %.not77, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %i.h, align 8, !tbaa !94
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.bh = icmp eq i64 %i.bd, 0
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = sub i64 %i.bg, %i.bf
  store i64 %i.bi, ptr %i.b, align 8, !tbaa !97
  br label %.critedge

end_hunk_2
begin_hunk_3_@OJPEGLibjpegJpegSourceMgrFillInputBuffer:bb.a
  store i32 17, ptr %i.jf, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.am:                                            ; preds = %bb.ak
  store i32 18, ptr %i.jf, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.an:                                            ; preds = %bb.aj
  %i.jg = getelementptr inbounds nuw i8, ptr %.val76.i, i64 3696
  store i32 18, ptr %i.jg, align 8, !tbaa !107
  br label %OJPEGWriteStreamCompressed.exit.thread.i

bb.ao:                                            ; preds = %bb.b
  %.val77.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.val77.i, i64 3700 ; 2 uses
  store i8 -1, ptr %i.jh, align 4, !tbaa !101
  %i.ji = getelementptr inbounds nuw i8, ptr %.val77.i, i64 474 ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 2, !tbaa !108 ; 2 uses
  %i.jk = add i8 %i.jj, -48
  %i.jl = getelementptr inbounds nuw i8, ptr %.val77.i, i64 3701
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !101
  %i.jm = add i8 %i.jj, 1                         ; 2 uses
  %i.jn = icmp eq i8 %i.jm, 8
  %spec.select.i.i = select i1 %i.jn, i8 0, i8 %i.jm
  store i8 %spec.select.i.i, ptr %i.ji, align 2, !tbaa !108
  %i.jo = getelementptr inbounds nuw i8, ptr %.val77.i, i64 3696
  store i32 16, ptr %i.jo, align 8, !tbaa !107
  br label %OJPEGWriteStream.exit.thread

.thread.i:                                        ; preds = %bb.b
  %.val78.i = load ptr, ptr %i.c, align 8, !tbaa !68 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.val78.i, i64 3700 ; 2 uses
  store i8 -1, ptr %i.jp, align 4, !tbaa !101
  %i.jq = getelementptr inbounds nuw i8, ptr %.val78.i, i64 3701
  store i8 -39, ptr %i.jq, align 1, !tbaa !101
  br label %OJPEGWriteStream.exit.thread

OJPEGWriteStreamCompressed.exit.thread.i:         ; preds = %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ai, %OJPEGWriteStreamDri.exit.i, %OJPEGWriteStreamAcTable.exit98.i, %OJPEGWriteStreamAcTable.exit96.i, %OJPEGWriteStreamAcTable.exit94.i, %OJPEGWriteStreamAcTable.exit.i, %OJPEGWriteStreamDcTable.exit91.i, %OJPEGWriteStreamDcTable.exit89.i, %OJPEGWriteStreamDcTable.exit87.i, %OJPEGWriteStreamDcTable.exit.i, %OJPEGWriteStreamQTable.exit84.i, %OJPEGWriteStreamQTable.exit82.i, %OJPEGWriteStreamQTable.exit80.i, %OJPEGWriteStreamQTable.exit.i, %bb.b
  %.19 = phi ptr [ %.08, %bb.b ], [ %i.iu, %bb.am ], [ %.1422, %OJPEGWriteStreamQTable.exit.i ], [ %.1321, %OJPEGWriteStreamQTable.exit80.i ], [ %.1220, %OJPEGWriteStreamQTable.exit82.i ], [ %.1119, %OJPEGWriteStreamQTable.exit84.i ], [ %.1018, %OJPEGWriteStreamDcTable.exit.i ], [ %.917, %OJPEGWriteStreamDcTable.exit87.i ], [ %.816, %OJPEGWriteStreamDcTable.exit89.i ], [ %.715, %OJPEGWriteStreamDcTable.exit91.i ], [ %.614, %OJPEGWriteStreamAcTable.exit.i ], [ %.513, %OJPEGWriteStreamAcTable.exit94.i ], [ %.412, %OJPEGWriteStreamAcTable.exit96.i ], [ %.311, %OJPEGWriteStreamAcTable.exit98.i ], [ %.210, %OJPEGWriteStreamDri.exit.i ], [ %i.iu, %bb.an ], [ %i.iu, %bb.ai ], [ %i.iu, %bb.aj ], [ %i.iu, %bb.al ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.b ], [ %i.is, %bb.am ], [ %.14, %OJPEGWriteStreamQTable.exit.i ], [ %.13, %OJPEGWriteStreamQTable.exit80.i ], [ %.12, %OJPEGWriteStreamQTable.exit82.i ], [ %.11, %OJPEGWriteStreamQTable.exit84.i ], [ %.10, %OJPEGWriteStreamDcTable.exit.i ], [ %.9, %OJPEGWriteStreamDcTable.exit87.i ], [ %.8, %OJPEGWriteStreamDcTable.exit89.i ], [ %.7, %OJPEGWriteStreamDcTable.exit91.i ], [ %.6, %OJPEGWriteStreamAcTable.exit.i ], [ %.5, %OJPEGWriteStreamAcTable.exit94.i ], [ %.4, %OJPEGWriteStreamAcTable.exit96.i ], [ %.3, %OJPEGWriteStreamAcTable.exit98.i ], [ %.2, %OJPEGWriteStreamDri.exit.i ], [ %i.is, %bb.an ], [ %i.is, %bb.ai ], [ %i.is, %bb.aj ], [ %i.is, %bb.al ] ; 2 uses
  %i.jr = icmp eq i32 %.1, 0
  br i1 %i.jr, label %bb.b, label %OJPEGWriteStream.exit.thread

OJPEGWriteStream.exit:                            ; preds = %bb.ah
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53) #13
  %.val = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.js = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @longjmp(ptr noundef nonnull %i.js, i32 noundef 1) #14
  unreachable

OJPEGWriteStream.exit.thread:                     ; preds = %OJPEGWriteStreamCompressed.exit.thread.i, %bb.ao, %OJPEGWriteStreamSos.exit.i, %OJPEGWriteStreamSof.exit.i, %bb.c, %.thread.i
  %.1530 = phi i32 [ 2, %bb.c ], [ %i.gh, %OJPEGWriteStreamSof.exit.i ], [ 2, %.thread.i ], [ 2, %bb.ao ], [ %i.ii, %OJPEGWriteStreamSos.exit.i ], [ %.1, %OJPEGWriteStreamCompressed.exit.thread.i ]
  %.152329 = phi ptr [ %i.g, %bb.c ], [ %i.do, %OJPEGWriteStreamSof.exit.i ], [ %i.jp, %.thread.i ], [ %i.jh, %bb.ao ], [ %i.gl, %OJPEGWriteStreamSos.exit.i ], [ %.19, %OJPEGWriteStreamCompressed.exit.thread.i ]
  %i.jt = zext i32 %.1530 to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 1440
  %i.jv = getelementptr inbounds nuw i8, ptr %i.d, i64 1448
  store i64 %i.jt, ptr %i.jv, align 8, !tbaa !113
  store ptr %.152329, ptr %i.ju, align 8, !tbaa !215
  ret i32 1
}

; Function Attrs: noreturn nounwind uwtable
define internal void @OJPEGLibjpegJpegSourceMgrSkipInputData(ptr nofree noundef readonly captures(none) %0, i64 %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.b, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54) #13
  %i.c = getelementptr i8, ptr %i.b, i64 1072
  %.val = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @longjmp(ptr noundef nonnull %i.d, i32 noundef 1) #14
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define internal noundef i32 @OJPEGLibjpegJpegSourceMgrResyncToRestart(ptr nofree noundef readonly captures(none) %0, i32 %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.b, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54) #13
  %i.c = getelementptr i8, ptr %i.b, i64 1072
  %.val = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @longjmp(ptr noundef nonnull %i.d, i32 noundef 1) #14
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @OJPEGLibjpegJpegSourceMgrTermSource(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @jpeg_read_header_encap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_read_header(ptr noundef %1, i32 noundef 1) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @_TIFFcallocExt(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @jpeg_start_decompress_encap(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_start_decompress(ptr noundef %1) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #8

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @jpeg_read_raw_data_encap(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2041) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_read_raw_data(ptr noundef %1, ptr noundef %2, i32 noundef %3) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @jpeg_read_raw_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @jpeg_read_scanlines_encap(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_read_scanlines(ptr noundef %1, ptr noundef %2, i32 noundef 1) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind returns_twice }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !4, i64 8, !4, i64 12, !5, i64 16, !10, i64 216, !10, i64 224, !10, i64 232, !11, i64 240, !4, i64 248, !4, i64 252, !4, i64 256, !4, i64 260, !4, i64 264, !5, i64 268, !5, i64 269, !5, i64 270, !11, i64 272, !11, i64 280, !5, i64 288, !5, i64 289, !5, i64 290, !5, i64 291, !5, i64 292, !5, i64 293, !5, i64 294, !5, i64 295, !5, i64 296, !5, i64 297, !5, i64 304, !5, i64 328, !5, i64 352, !5, i64 376, !5, i64 408, !5, i64 440, !12, i64 472, !5, i64 474, !5, i64 475, !5, i64 476, !4, i64 480, !4, i64 484, !5, i64 488, !5, i64 491, !5, i64 494, !5, i64 497, !5, i64 500, !5, i64 504, !5, i64 600, !5, i64 601, !12, i64 602, !4, i64 604, !5, i64 608, !5, i64 609, !13, i64 616, !16, i64 784, !36, i64 1440, !5, i64 1496, !4, i64 1500, !4, i64 1504, !4, i64 1508, !4, i64 1512, !4, i64 1516, !4, i64 1520, !4, i64 1524, !24, i64 1528, !24, i64 1536, !24, i64 1544, !24, i64 1552, !4, i64 1560, !14, i64 1568, !4, i64 1576, !4, i64 1580, !4, i64 1584, !4, i64 1588, !4, i64 1592, !4, i64 1596, !4, i64 1600, !11, i64 1608, !5, i64 1616, !11, i64 1624, !12, i64 1632, !24, i64 1640, !5, i64 1648, !4, i64 3696, !5, i64 3700, !24, i64 5752}
!9 = !{!"p1 _ZTS4tiff", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !11, i64 128, !14, i64 136, !4, i64 144, !14, i64 152, !4, i64 160, !4, i64 164}
!14 = !{!"p2 omnipotent char", !15, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!"jpeg_decompress_struct", !17, i64 0, !18, i64 8, !19, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !20, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !21, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !14, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !22, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !12, i64 384, !12, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !23, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !24, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !22, i64 552, !4, i64 560, !4, i64 564, !25, i64 568, !26, i64 576, !27, i64 584, !28, i64 592, !29, i64 600, !30, i64 608, !31, i64 616, !32, i64 624, !33, i64 632, !34, i64 640, !35, i64 648}
!17 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!18 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!19 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!20 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!21 = !{!"double", !5, i64 0}
!22 = !{!"p1 int", !10, i64 0}
!23 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!24 = !{!"p1 omnipotent char", !10, i64 0}
!25 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!26 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!27 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!28 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!29 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!30 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!31 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!32 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!33 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!34 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!35 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!36 = !{!"jpeg_source_mgr", !24, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!37 = !{!8, !5, i64 288}
!38 = !{!8, !5, i64 292}
!39 = !{!8, !5, i64 293}
!40 = !{!41, !10, i64 928}
!41 = !{!"tiff", !24, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !42, i64 48, !42, i64 56, !4, i64 64, !43, i64 72, !43, i64 448, !5, i64 824, !12, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !12, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !24, i64 1072, !11, i64 1080, !11, i64 1088, !24, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !24, i64 1128, !11, i64 1136, !24, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !50, i64 1232, !11, i64 1240, !51, i64 1248, !52, i64 1256, !53, i64 1280, !54, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!42 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!43 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !4, i64 60, !12, i64 64, !12, i64 66, !44, i64 72, !44, i64 80, !45, i64 88, !45, i64 92, !12, i64 96, !12, i64 98, !45, i64 100, !45, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !12, i64 140, !46, i64 144, !4, i64 152, !4, i64 156, !47, i64 160, !47, i64 168, !4, i64 176, !48, i64 184, !48, i64 216, !12, i64 248, !47, i64 256, !5, i64 264, !12, i64 268, !5, i64 272, !49, i64 296, !4, i64 304, !24, i64 312, !12, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!44 = !{!"p1 double", !10, i64 0}
!45 = !{!"float", !5, i64 0}
!46 = !{!"p1 short", !10, i64 0}
!47 = !{!"p1 long", !10, i64 0}
!48 = !{!"", !12, i64 0, !12, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!49 = !{!"p1 float", !10, i64 0}
!50 = !{!"p2 _ZTS10_TIFFField", !15, i64 0}
!51 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!52 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!53 = !{!"p1 _ZTS11client_info", !10, i64 0}
!54 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!55 = !{!41, !10, i64 936}
!56 = !{!41, !10, i64 944}
!57 = !{!41, !10, i64 1224}
!58 = !{!41, !10, i64 984}
!59 = !{!41, !10, i64 1000}
!60 = !{!41, !10, i64 1016}
!61 = !{!41, !10, i64 952}
!62 = !{!41, !10, i64 968}
!63 = !{!41, !10, i64 976}
!64 = !{!41, !10, i64 992}
!65 = !{!41, !10, i64 1008}
!66 = !{!41, !10, i64 1024}
!67 = !{!41, !10, i64 1048}
!68 = !{!41, !24, i64 1072}
!69 = !{!10, !10, i64 0}
!70 = !{!41, !10, i64 1264}
!71 = !{!41, !10, i64 1256}
!72 = !{!41, !10, i64 1272}
!73 = !{!8, !10, i64 232}
!74 = !{!41, !4, i64 16}
!75 = !{!8, !5, i64 290}
!76 = !{!8, !5, i64 600}
!77 = !{!41, !4, i64 88}
!78 = !{!8, !4, i64 248}
!79 = !{!41, !4, i64 92}
!80 = !{!8, !4, i64 252}
!81 = !{!41, !4, i64 100}
!82 = !{!41, !4, i64 104}
!83 = !{!41, !4, i64 132}
!84 = !{!8, !4, i64 256}
!85 = !{!8, !4, i64 264}
!86 = !{!41, !12, i64 130}
!87 = !{!8, !5, i64 268}
!88 = !{!8, !5, i64 269}
!89 = !{!8, !5, i64 270}
!90 = !{!41, !12, i64 170}
!91 = !{!8, !12, i64 472}
!92 = !{!93, !5, i64 0}
!93 = !{!"", !5, i64 0, !4, i64 4, !4, i64 8, !11, i64 16, !11, i64 24}
!94 = !{!8, !11, i64 1608}
!95 = !{!8, !12, i64 1632}
!96 = !{!93, !11, i64 16}
!97 = !{!8, !11, i64 1624}
!98 = !{!93, !11, i64 24}
!99 = !{!8, !5, i64 1616}
!100 = !{!8, !24, i64 1640}
!101 = !{!5, !5, i64 0}
!102 = !{!8, !5, i64 601}
!103 = !{!8, !12, i64 602}
!104 = !{!8, !4, i64 604}
!105 = !{!8, !5, i64 608}
!106 = !{!41, !4, i64 224}
!107 = !{!8, !4, i64 3696}
!108 = !{!8, !5, i64 474}
!109 = !{!8, !10, i64 632}
!110 = !{!8, !10, i64 616}
!111 = !{!8, !17, i64 784}
!112 = !{!8, !10, i64 808}
!113 = !{!8, !11, i64 1448}
!114 = !{!8, !10, i64 1456}
!115 = !{!8, !10, i64 1464}
!116 = !{!8, !10, i64 1472}
!117 = !{!8, !10, i64 1480}
!118 = !{!8, !10, i64 1488}
!119 = !{!8, !20, i64 824}
!120 = !{!8, !5, i64 294}
!121 = !{!8, !4, i64 876}
!122 = !{!8, !4, i64 884}
!123 = !{!8, !5, i64 609}
!124 = !{!8, !5, i64 1496}
!125 = !{!8, !4, i64 1500}
!126 = !{!8, !4, i64 1504}
!127 = !{!8, !4, i64 1508}
!128 = !{!8, !4, i64 1512}
!129 = !{!8, !4, i64 1516}
!130 = !{!8, !4, i64 1520}
!131 = !{!8, !4, i64 1524}
!132 = !{!8, !24, i64 1528}
!133 = !{!8, !24, i64 1536}
!134 = !{!8, !24, i64 1544}
!135 = !{!8, !24, i64 1552}
!136 = !{!8, !4, i64 1560}
!137 = !{!8, !14, i64 1568}
!138 = !{!24, !24, i64 0}
!139 = distinct !{!139, !140}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = distinct !{!141, !140}
!142 = distinct !{!142, !140}
!143 = !{!8, !4, i64 1576}
!144 = !{!8, !4, i64 1580}
!145 = !{!8, !4, i64 12}
!146 = !{!8, !4, i64 1584}
!147 = !{!8, !4, i64 260}
!148 = !{!8, !4, i64 1588}
!149 = !{!8, !4, i64 844}
!150 = !{!8, !4, i64 848}
!151 = !{!8, !4, i64 832}
!152 = !{!8, !4, i64 1192}
!153 = !{!8, !4, i64 1196}
!154 = !{!8, !24, i64 5752}
!155 = !{!8, !4, i64 8}
!156 = distinct !{!156, !157}
!157 = !{!"llvm.loop.unswitch.partial.disable"}
!158 = !{!8, !11, i64 272}
!159 = !{!47, !47, i64 0}
!160 = !{!11, !11, i64 0}
!161 = !{!8, !11, i64 280}
!162 = !{!46, !46, i64 0}
!163 = !{!12, !12, i64 0}
!164 = !{!8, !5, i64 295}
!165 = !{!22, !22, i64 0}
!166 = !{!15, !15, i64 0}
!167 = !{!8, !5, i64 296}
!168 = !{!8, !5, i64 297}
!169 = !{!8, !10, i64 216}
!170 = !{!8, !5, i64 291}
!171 = !{!8, !10, i64 224}
!172 = distinct !{!172, !140}
!173 = distinct !{!173, !140}
!174 = distinct !{!174, !140}
!175 = !{!176, !12, i64 20}
!176 = !{!"_TIFFField", !4, i64 0, !12, i64 4, !12, i64 6, !4, i64 8, !4, i64 12, !4, i64 16, !12, i64 20, !5, i64 22, !5, i64 23, !24, i64 24, !54, i64 32}
!177 = !{!41, !12, i64 122}
end_hunk_3
