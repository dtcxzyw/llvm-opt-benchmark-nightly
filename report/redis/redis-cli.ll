Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@testHintSuite:bb.a

default.unreachable:                              ; preds = %bb.r
  unreachable

hi_sdslen.exit52:                                 ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i51 = phi i64 [ %i.ax, %bb.w ], [ %i.aq, %bb.s ], [ %i.as, %bb.t ], [ %i.au, %bb.u ], [ %i.aw, %bb.v ]
  %i.ay = getelementptr i8, ptr %i.v, i64 %.0.i51
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !73
  %i.bb = icmp eq i8 %i.ba, 32
  br i1 %i.bb, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %hi_sdslen.exit52
  switch i32 %i.af, label %default.unreachable60 [
    i32 0, label %bb.y
    i32 1, label %bb.z
    i32 2, label %bb.aa
    i32 3, label %bb.ab
    i32 4, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.bc = lshr i32 %i.ae, 3
  %i.bd = zext nneg i32 %i.bc to i64
  br label %hi_sdslen.exit54

bb.z:                                             ; preds = %bb.x
  %i.be = load i8, ptr %i.ac, align 1, !tbaa !73
  %i.bf = zext i8 %i.be to i64
  br label %hi_sdslen.exit54

bb.aa:                                            ; preds = %bb.x
  %i.bg = load i16, ptr %i.ab, align 1, !tbaa !75
  %i.bh = zext i16 %i.bg to i64
  br label %hi_sdslen.exit54

bb.ab:                                            ; preds = %bb.x
  %i.bi = load i32, ptr %i.aa, align 1, !tbaa !24
  %i.bj = zext i32 %i.bi to i64
  br label %hi_sdslen.exit54

bb.ac:                                            ; preds = %bb.x
  %i.bk = load i64, ptr %i.z, align 1, !tbaa !38
  br label %hi_sdslen.exit54

default.unreachable60:                            ; preds = %bb.x
  unreachable

hi_sdslen.exit54:                                 ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.0.i53 = phi i64 [ %i.bk, %bb.ac ], [ %i.bd, %bb.y ], [ %i.bf, %bb.z ], [ %i.bh, %bb.aa ], [ %i.bj, %bb.ab ]
  %i.bl = add i64 %.0.i53, -1                     ; 5 uses
  %i.bm = and i8 %i.ad, 7
  switch i8 %i.bm, label %hi_sdssetlen.exit [
    i8 0, label %bb.ad
    i8 1, label %bb.ae
    i8 2, label %bb.af
    i8 3, label %bb.ag
    i8 4, label %bb.ah
  ]

bb.ad:                                            ; preds = %hi_sdslen.exit54
  %.tr.i = trunc i64 %i.bl to i8
  %i.bn = shl i8 %.tr.i, 3                        ; 3 uses
  store i8 %i.bn, ptr %i.y, align 1, !tbaa !73
  %.pre = zext i8 %i.bn to i32
  br label %hi_sdssetlen.exit

bb.ae:                                            ; preds = %hi_sdslen.exit54
  %i.bo = trunc i64 %i.bl to i8
  store i8 %i.bo, ptr %i.ac, align 1, !tbaa !73
  br label %hi_sdssetlen.exit

bb.af:                                            ; preds = %hi_sdslen.exit54
  %i.bp = trunc i64 %i.bl to i16
  store i16 %i.bp, ptr %i.ab, align 1, !tbaa !75
  br label %hi_sdssetlen.exit

bb.ag:                                            ; preds = %hi_sdslen.exit54
  %i.bq = trunc i64 %i.bl to i32
  store i32 %i.bq, ptr %i.aa, align 1, !tbaa !24
  br label %hi_sdssetlen.exit

bb.ah:                                            ; preds = %hi_sdslen.exit54
  store i64 %i.bl, ptr %i.z, align 1, !tbaa !38
  br label %hi_sdssetlen.exit

hi_sdssetlen.exit:                                ; preds = %hi_sdslen.exit54, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.pre-phi = phi i32 [ %i.ae, %hi_sdslen.exit54 ], [ %.pre, %bb.ad ], [ %i.ae, %bb.ae ], [ %i.ae, %bb.af ], [ %i.ae, %bb.ag ], [ %i.ae, %bb.ah ] ; 2 uses
  %i.br = phi i8 [ %i.ad, %hi_sdslen.exit54 ], [ %i.bn, %bb.ad ], [ %i.ad, %bb.ae ], [ %i.ad, %bb.af ], [ %i.ad, %bb.ag ], [ %i.ad, %bb.ah ]
  %i.bs = and i32 %.pre-phi, 7
  switch i32 %i.bs, label %hi_sdslen.exit56 [
    i32 0, label %bb.ai
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 4, label %bb.am
  ]

bb.ai:                                            ; preds = %hi_sdssetlen.exit
  %i.bt = lshr i32 %.pre-phi, 3
  %i.bu = zext nneg i32 %i.bt to i64
  br label %hi_sdslen.exit56

bb.aj:                                            ; preds = %hi_sdssetlen.exit
  %i.bv = load i8, ptr %i.ac, align 1, !tbaa !73
  %i.bw = zext i8 %i.bv to i64
  br label %hi_sdslen.exit56

bb.ak:                                            ; preds = %hi_sdssetlen.exit
  %i.bx = load i16, ptr %i.ab, align 1, !tbaa !75
  %i.by = zext i16 %i.bx to i64
  br label %hi_sdslen.exit56

bb.al:                                            ; preds = %hi_sdssetlen.exit
  %i.bz = load i32, ptr %i.aa, align 1, !tbaa !24
  %i.ca = zext i32 %i.bz to i64
  br label %hi_sdslen.exit56

bb.am:                                            ; preds = %hi_sdssetlen.exit
  %i.cb = load i64, ptr %i.z, align 1, !tbaa !38
  br label %hi_sdslen.exit56

hi_sdslen.exit56:                                 ; preds = %hi_sdssetlen.exit, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am
  %.0.i55 = phi i64 [ %i.cb, %bb.am ], [ %i.bu, %bb.ai ], [ %i.bw, %bb.aj ], [ %i.by, %bb.ak ], [ %i.ca, %bb.al ], [ 0, %hi_sdssetlen.exit ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 %.0.i55
  store i8 0, ptr %i.cc, align 1, !tbaa !73
  br label %bb.l

.critedge.thread:                                 ; preds = %hi_sdslen.exit, %bb.l, %hi_sdslen.exit52
  %i.cd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.u) #34
  %.not49 = icmp eq i32 %i.cd, 0
  br i1 %.not49, label %bb.an, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.critedge.thread
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.128, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.v) #39 ; 0 uses
  %i.cg = add nsw i32 %.0.ph, 1
  br label %bb.ao

bb.an:                                            ; preds = %.critedge.thread
  %i.ch = add nsw i32 %.038.ph, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %.139 = phi i32 [ %.038.ph, %.loopexit ], [ %i.ch, %bb.an ]
  %.1 = phi i32 [ %i.cg, %.loopexit ], [ %.0.ph, %bb.an ]
  %i.ci = load i32, ptr %i.b, align 4, !tbaa !24
  call void @hi_sdsfreesplitres(ptr noundef nonnull %i.n, i32 noundef %i.ci) #32
  call void @hi_sdsfree(ptr noundef %i.v) #32
  br label %.outer

readHintSuiteLine.exit.thread:                    ; preds = %readHintSuiteLine.exit, %bb.d
  %i.cj = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.ck = icmp eq i32 %.0.ph, 0
  %i.cl = select i1 %i.ck, ptr @.str.130, ptr @.str.131
  %i.cm = add nsw i32 %.0.ph, %.038.ph
  %i.cn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.129, ptr noundef nonnull %i.cl, i32 noundef %.038.ph, i32 noundef %i.cm) ; 0 uses
  call void @exit(i32 noundef %.0.ph) #37
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 22 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 5 uses
  %i.e = alloca [6 x i8], align 1                 ; 9 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca [64 x i8], align 16               ; 20 uses
  %i.h = alloca [512 x i8], align 16              ; 5 uses
  %i.i = alloca [2 x [128 x i8]], align 16        ; 6 uses
  %i.j = alloca [6 x i8], align 1                 ; 4 uses
  %i.k = alloca [6 x i8], align 1                 ; 4 uses
  %i.l = alloca [6 x i8], align 1                 ; 4 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %i.m = alloca ptr, align 8                      ; 6 uses
  %i.n = alloca [3 x ptr], align 16               ; 5 uses
  %i.o = alloca [3 x i64], align 16               ; 6 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %i.p = alloca [16 x i64], align 16              ; 23 uses
  %i.q = alloca [16 x ptr], align 16              ; 23 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %10 = alloca %struct.dictIterator, align 8      ; 6 uses
  %i.s = alloca [64 x i8], align 16               ; 6 uses
  %i.t = alloca [64 x i8], align 16               ; 6 uses
  %i.u = alloca [64 x i8], align 16               ; 8 uses
  %i.v = alloca [64 x i8], align 16               ; 10 uses
  %i.w = alloca [2 x [256 x i8]], align 16        ; 8 uses
  %i.x = alloca [32 x i8], align 16               ; 6 uses
  %i.y = alloca [32 x i8], align 16               ; 4 uses
  %i.z = alloca [32 x i8], align 16               ; 4 uses
  %11 = alloca %struct.hdr_iter, align 8          ; 9 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %14 = alloca %struct.listIter, align 8          ; 4 uses
  %15 = alloca %struct.timeval, align 8           ; 5 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %16 = alloca [8 x %struct.size_dist_entry], align 16 ; 6 uses
  %i.ab = alloca ptr, align 8                     ; 5 uses
  %17 = alloca %struct.listIter, align 8          ; 4 uses
  %i.ac = alloca [16384 x i8], align 16           ; 4 uses
  %i.ad = alloca [256 x i8], align 16             ; 3 uses
  %i.ae = alloca ptr, align 8                     ; 7 uses
  %i.af = alloca [20 x i8], align 16              ; 24 uses
  %i.ag = alloca [44 x i8], align 16              ; 5 uses
  %18 = alloca %struct.timeval, align 8           ; 5 uses
  %19 = alloca %struct.timeval, align 8           ; 5 uses
  %20 = alloca %struct.timeval, align 8           ; 5 uses
  %i.ah = alloca ptr, align 8                     ; 19 uses
  %21 = alloca %struct.dictType, align 8          ; 4 uses
  %22 = alloca %struct.timeval, align 8           ; 5 uses
  %23 = alloca %struct.timeval, align 8           ; 5 uses
  %24 = alloca %struct.timeval, align 8           ; 5 uses
  %25 = alloca %struct.timeval, align 8           ; 5 uses
  %26 = alloca %struct.timeval, align 8           ; 5 uses
  %27 = alloca [31 x %struct.distsamples], align 16 ; 4 uses
  %28 = alloca %struct.timeval, align 8           ; 5 uses
  %29 = alloca %struct.timeval, align 8           ; 5 uses
  %30 = alloca %struct.timeval, align 8           ; 5 uses
  %31 = alloca %struct.timeval, align 8           ; 5 uses
  %32 = alloca %struct.timeval, align 8           ; 5 uses
  %33 = alloca %struct.timeval, align 8           ; 5 uses
  %34 = alloca %struct.timeval, align 8           ; 5 uses
  %i.ai = alloca ptr, align 8                     ; 4 uses
  %i.aj = alloca ptr, align 8                     ; 4 uses
  %i.ak = alloca ptr, align 8                     ; 4 uses
  %i.al = alloca ptr, align 8                     ; 4 uses
  %i.am = alloca ptr, align 8                     ; 4 uses
  %35 = alloca %struct.timeval, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @config, i64 64), i8 0, i64 64, i1 false)
  %i.an = tail call ptr @hi_sdsnew(ptr noundef nonnull @.str.132) #32
  store ptr %i.an, ptr @config, align 8, !tbaa !160
  store i32 6379, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @config, i64 32), i8 0, i64 24, i1 false)
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 128), align 8, !tbaa !343
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 12), align 4, !tbaa !162
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 176), align 8, !tbaa !344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) getelementptr inbounds nuw (i8, ptr @config, i64 136), i8 0, i64 36, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !345
  store i32 100, ptr getelementptr inbounds nuw (i8, ptr @config, i64 188), align 4, !tbaa !346
  store i32 500, ptr getelementptr inbounds nuw (i8, ptr @config, i64 192), align 8, !tbaa !347
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !155
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 224), align 8, !tbaa !163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @config, i64 196), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @config, i64 248), i8 0, i64 16, i1 false)
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !164
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 268), align 4, !tbaa !348
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @config, i64 280), i8 0, i64 16, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 30>, ptr getelementptr inbounds nuw (i8, ptr @config, i64 232), align 8, !tbaa !24
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !349
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 300), align 4, !tbaa !350
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316), align 4, !tbaa !351
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 320), align 8, !tbaa !352
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @config, i64 328), align 8, !tbaa !353
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 312), align 8, !tbaa !354
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @config, i64 16), i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @config, i64 336), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @config, i64 512), i8 0, i64 24, i1 false)
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 536), align 8, !tbaa !165
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 688), align 8, !tbaa !355
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 704), align 8, !tbaa !166
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 712), align 8, !tbaa !167
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 744), align 8, !tbaa !106
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 748), align 4, !tbaa !107
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 640), align 8, !tbaa !109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) getelementptr inbounds nuw (i8, ptr @config, i64 544), i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) getelementptr inbounds nuw (i8, ptr @config, i64 576), i8 0, i64 52, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @config, i64 664), i8 0, i64 20, i1 false)
  store i32 60000, ptr getelementptr inbounds nuw (i8, ptr @config, i64 644), align 4, !tbaa !135
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @config, i64 648), align 8, !tbaa !168
  store float 2.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @config, i64 652), align 4, !tbaa !118
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 656), align 8, !tbaa !136
  store i1 true, ptr @pref.0, align 4
  store ptr @spectrum_palette_color, ptr @spectrum_palette, align 8, !tbaa !145
  %i.ao = load i32, ptr @spectrum_palette_color_size, align 4, !tbaa !24
  store i32 %i.ao, ptr @spectrum_palette_size, align 4, !tbaa !24
  %i.ap = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.aq = tail call i32 @fileno(ptr noundef %i.ap) #32
  %i.ar = tail call i32 @isatty(i32 noundef %i.aq) #32
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = tail call ptr @getenv(ptr noundef nonnull @.str) #32
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.au = phi <2 x i32> [ <i32 0, i32 1>, %bb.c ], [ <i32 1, i32 0>, %bb.b ]
  store <2 x i32> %i.au, ptr getelementptr inbounds nuw (i8, ptr @config, i64 360), align 8, !tbaa !24
  %i.av = tail call ptr @hi_sdsnew(ptr noundef nonnull @str.16) #32
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @config, i64 368), align 8, !tbaa !169
  %i.aw = tail call ptr @hi_sdsnew(ptr noundef nonnull @str.16) #32
  store ptr %i.aw, ptr getelementptr inbounds nuw (i8, ptr @config, i64 376), align 8, !tbaa !170
  %i.ax = icmp sgt i32 %0, 1
  br i1 %i.ax, label %sub_0.lr.ph.i, label %.loopexit.i

sub_0.lr.ph.i:                                    ; preds = %bb.d
  %i.ay = add nsw i32 %0, -1                      ; 2 uses
  %i.az = zext nneg i32 %0 to i64                 ; 4 uses
  br label %sub_0.i

sub_0.i:                                          ; preds = %._crit_edge.thread.i, %sub_0.lr.ph.i
  %.0638893.i = phi i32 [ 1, %sub_0.lr.ph.i ], [ %i.xz, %._crit_edge.thread.i ] ; 108 uses
  %i.ba = icmp eq i32 %.0638893.i, %i.ay          ; 56 uses
  %i.bb = sext i32 %.0638893.i to i64             ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !40 ; 113 uses
  %i.be = load i8, ptr %i.bd, align 1             ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -45                  ; 2 uses
  %.not895.i = icmp eq i32 %i.bg, 0
  br i1 %.not895.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -104                 ; 2 uses
  %.not896.i = icmp eq i32 %i.bk, 0
  br i1 %.not896.i, label %sub_2.i, label %.tail.i

sub_2.i:                                          ; preds = %sub_1.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = zext i8 %i.bm to i32
  br label %.tail.i

.tail.i:                                          ; preds = %sub_2.i, %sub_1.i, %sub_0.i
  %i.bo = phi i32 [ %i.bg, %sub_0.i ], [ %i.bk, %sub_1.i ], [ %i.bn, %sub_2.i ] ; 2 uses
  %i.bp = icmp ne i32 %i.bo, 0
  %or.cond.i = select i1 %i.bp, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.tail.i
  %i.bq = load ptr, ptr @config, align 8, !tbaa !160
  call void @hi_sdsfree(ptr noundef %i.bq) #32
  %i.br = add nsw i32 %.0638893.i, 1              ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40
  %i.bv = call ptr @hi_sdsnew(ptr noundef %i.bu) #32
  store ptr %i.bv, ptr @config, align 8, !tbaa !160
  br label %._crit_edge.thread.i

bb.f:                                             ; preds = %.tail.i
  %i.bw = icmp eq i32 %i.bo, 0
  %or.cond3.i = select i1 %i.bw, i1 %i.ba, i1 false
  br i1 %or.cond3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bx = call ptr @cliVersion() #32              ; 2 uses
  %i.by = load ptr, ptr @stdout, align 8          ; 4 uses
  %i.bz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.646, ptr noundef %i.bx, ptr noundef nonnull @.str.645) #32 ; 0 uses
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.647, i32 noundef 30) #32 ; 0 uses
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.648, i64 2403, i64 1, ptr %i.by) ; 0 uses
  %fwrite8.i.i = call i64 @fwrite(ptr nonnull @.str.649, i64 846, i64 1, ptr %i.by) ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.bx) #32
  call void @exit(i32 noundef 0) #37
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.cb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(7) @.str.519) #34
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.i, label %sub_0743.i

bb.i:                                             ; preds = %bb.h
  %i.cc = call ptr @cliVersion() #32              ; 2 uses
  %i.cd = load ptr, ptr @stdout, align 8          ; 4 uses
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.646, ptr noundef %i.cc, ptr noundef nonnull @.str.645) #32 ; 0 uses
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.647, i32 noundef 30) #32 ; 0 uses
  %fwrite.i731.i = call i64 @fwrite(ptr nonnull @.str.648, i64 2403, i64 1, ptr %i.cd) ; 0 uses
  %fwrite8.i732.i = call i64 @fwrite(ptr nonnull @.str.649, i64 846, i64 1, ptr %i.cd) ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.cc) #32
  call void @exit(i32 noundef 0) #37
  unreachable

sub_0743.i:                                       ; preds = %bb.h
  %.not897.i = icmp eq i8 %i.be, 45               ; 7 uses
  br i1 %.not897.i, label %sub_1744.i, label %.tail777.thread.i

sub_1744.i:                                       ; preds = %sub_0743.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.blv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i216, i64 noundef 32, ptr noundef nonnull @.str.119, double noundef %i.blu) #32 ; 0 uses
  br label %bytesToHuman.exit218

bb.sm:                                            ; preds = %bb.sk
  %i.blw = icmp samesign ult i64 %.0.i217, 1073741824
  br i1 %i.blw, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %bb.sm
  %i.blx = uitofp nneg i64 %.0.i217 to double
  %i.bly = fmul nnan double %i.blx, f0x3EB0000000000000
  %i.blz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i216, i64 noundef 32, ptr noundef nonnull @.str.120, double noundef %i.bly) #32 ; 0 uses
  br label %bytesToHuman.exit218

bb.so:                                            ; preds = %bb.sm
  %i.bma = icmp samesign ult i64 %.0.i217, 1099511627776
  br i1 %i.bma, label %bb.sp, label %bb.sq

bb.sp:                                            ; preds = %bb.so
  %i.bmb = uitofp nneg i64 %.0.i217 to double
  %i.bmc = fmul nnan double %i.bmb, f0x3E10000000000000
  %i.bmd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i216, i64 noundef 32, ptr noundef nonnull @.str.121, double noundef %i.bmc) #32 ; 0 uses
  br label %bytesToHuman.exit218

bb.sq:                                            ; preds = %bb.so
  %i.bme = icmp samesign ult i64 %.0.i217, 1125899906842624
  br i1 %i.bme, label %bb.sr, label %bytesToHuman.exit218

bb.sr:                                            ; preds = %bb.sq
  %i.bmf = uitofp nneg i64 %.0.i217 to double
  %i.bmg = fmul nnan double %i.bmf, f0x3D70000000000000
  %i.bmh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i216, i64 noundef 32, ptr noundef nonnull @.str.122, double noundef %i.bmg) #32 ; 0 uses
  br label %bytesToHuman.exit218

bytesToHuman.exit218:                             ; preds = %bb.sj, %bb.sl, %bb.sn, %bb.sp, %bb.sq, %bb.sr
  %i.bmi = load i64, ptr %i.bld, align 8, !tbaa !404
  %i.bmj = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.827, ptr noundef nonnull %i.x, double noundef %.09.i.i, i64 noundef %i.bmi) ; 0 uses
  %i.bmk = load i64, ptr %i.bld, align 8, !tbaa !404
  br label %bb.ss

bb.ss:                                            ; preds = %bytesToHuman.exit218, %bb.sf
  %.1.i.i = phi i64 [ %i.bmk, %bytesToHuman.exit218 ], [ %.014.i.i, %bb.sf ]
  %i.bml = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %11) #32
  br i1 %i.bml, label %bb.sf, label %displayKeyStatsSizeDist.exit.i, !llvm.loop !322

displayKeyStatsSizeDist.exit.i:                   ; preds = %bb.ss, %bb.se
  %i.bmm = call double @hdr_mean(ptr noundef %i.bkz) #32
  %i.bmn = fptosi double %i.bmm to i64
  %i.bmo = call ptr @bytesToHuman(ptr noundef nonnull %i.y, i64 noundef 32, i64 noundef %i.bmn) ; 0 uses
  %i.bmp = call double @hdr_stddev(ptr noundef %i.bkz) #32
  %i.bmq = fptosi double %i.bmp to i64
  %i.bmr = call ptr @bytesToHuman(ptr noundef nonnull %i.z, i64 noundef 32, i64 noundef %i.bmq) ; 0 uses
  %i.bms = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.828, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #32
  %i.bmt = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #32
  %i.bmu = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.829) ; 0 uses
  %i.bmv = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.830) ; 0 uses
  %i.bmw = load i64, ptr %16, align 16, !tbaa !401 ; 2 uses
  %.not40.i.i = icmp eq i64 %i.bmw, 0
  br i1 %.not40.i.i, label %._crit_edge.i.i, label %.lr.ph.i180.i

.lr.ph.i180.i:                                    ; preds = %displayKeyStatsSizeDist.exit.i
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.w, i64 256 ; 3 uses
  %i.bmy = uitofp i64 %.sroa.0.1.lcssa.i to double
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.w, i64 257
  br label %bb.st

._crit_edge.i.i:                                  ; preds = %bb.tg, %displayKeyStatsSizeDist.exit.i
  %.031.lcssa.i.i = phi i64 [ 0, %displayKeyStatsSizeDist.exit.i ], [ %.1.i182.i, %bb.tg ]
  %i.bna = icmp ult i64 %.031.lcssa.i.i, %.sroa.0.1.lcssa.i
  br i1 %i.bna, label %.thread.i112, label %bb.th

bb.st:                                            ; preds = %bb.tg, %.lr.ph.i180.i
  %indvars.iv.i181.i = phi i64 [ 0, %.lr.ph.i180.i ], [ %indvars.iv.next.i183.i, %bb.tg ] ; 2 uses
  %i.bnb = phi i64 [ %i.bmw, %.lr.ph.i180.i ], [ %i.bof, %bb.tg ]
  %.03142.i.i = phi i64 [ 0, %.lr.ph.i180.i ], [ %.1.i182.i, %bb.tg ] ; 2 uses
  %i.bnc = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %indvars.iv.i181.i
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 8
  %i.bne = load i64, ptr %i.bnd, align 8, !tbaa !402 ; 2 uses
  %.not39.i.i = icmp eq i64 %i.bne, 0
  br i1 %.not39.i.i, label %bb.tg, label %bb.su

bb.su:                                            ; preds = %bb.st
  %..i.i = call i64 @llvm.umin.i64(i64 %.sroa.11.1.lcssa.i, i64 %i.bnb) ; 3 uses
  %i.bnf = add i64 %i.bne, %.03142.i.i            ; 3 uses
  %i.bng = icmp slt i64 %..i.i, 0
  br i1 %i.bng, label %bb.sv, label %bb.sw

bb.sv:                                            ; preds = %bb.su
  store i8 45, ptr %i.bmx, align 16, !tbaa !73
  %i.bnh = sub nsw i64 0, %..i.i
  br label %bb.sw

bb.sw:                                            ; preds = %bb.sv, %bb.su
  %.029.i213 = phi ptr [ %i.bmz, %bb.sv ], [ %i.bmx, %bb.su ] ; 5 uses
  %.0.i214 = phi i64 [ %i.bnh, %bb.sv ], [ %..i.i, %bb.su ] ; 10 uses
  %i.bni = icmp samesign ult i64 %.0.i214, 1024
  br i1 %i.bni, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %bb.sw
  %i.bnj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i213, i64 noundef 256, ptr noundef nonnull @.str.118, i64 noundef %.0.i214) #32 ; 0 uses
  br label %bytesToHuman.exit215

bb.sy:                                            ; preds = %bb.sw
  %i.bnk = icmp samesign ult i64 %.0.i214, 1048576
  br i1 %i.bnk, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  %i.bnl = uitofp nneg i64 %.0.i214 to double
  %i.bnm = fmul nnan double %i.bnl, f0x3F50000000000000
  %i.bnn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i213, i64 noundef 256, ptr noundef nonnull @.str.119, double noundef %i.bnm) #32 ; 0 uses
  br label %bytesToHuman.exit215

bb.ta:                                            ; preds = %bb.sy
  %i.bno = icmp samesign ult i64 %.0.i214, 1073741824
  br i1 %i.bno, label %bb.tb, label %bb.tc

bb.tb:                                            ; preds = %bb.ta
  %i.bnp = uitofp nneg i64 %.0.i214 to double
  %i.bnq = fmul nnan double %i.bnp, f0x3EB0000000000000
  %i.bnr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i213, i64 noundef 256, ptr noundef nonnull @.str.120, double noundef %i.bnq) #32 ; 0 uses
  br label %bytesToHuman.exit215

bb.tc:                                            ; preds = %bb.ta
  %i.bns = icmp samesign ult i64 %.0.i214, 1099511627776
  br i1 %i.bns, label %bb.td, label %bb.te

bb.td:                                            ; preds = %bb.tc
  %i.bnt = uitofp nneg i64 %.0.i214 to double
  %i.bnu = fmul nnan double %i.bnt, f0x3E10000000000000
  %i.bnv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i213, i64 noundef 256, ptr noundef nonnull @.str.121, double noundef %i.bnu) #32 ; 0 uses
  br label %bytesToHuman.exit215

bb.te:                                            ; preds = %bb.tc
  %i.bnw = icmp samesign ult i64 %.0.i214, 1125899906842624
  br i1 %i.bnw, label %bb.tf, label %bytesToHuman.exit215

bb.tf:                                            ; preds = %bb.te
  %i.bnx = uitofp nneg i64 %.0.i214 to double
  %i.bny = fmul nnan double %i.bnx, f0x3D70000000000000
  %i.bnz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i213, i64 noundef 256, ptr noundef nonnull @.str.122, double noundef %i.bny) #32 ; 0 uses
  br label %bytesToHuman.exit215

bytesToHuman.exit215:                             ; preds = %bb.sx, %bb.sz, %bb.tb, %bb.td, %bb.te, %bb.tf
  %i.boa = uitofp i64 %i.bnf to double
  %i.bob = fmul nnan double %i.boa, 1.000000e+02
  %i.boc = fdiv double %i.bob, %i.bmy
  %i.bod = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.831, ptr noundef nonnull %i.bmx, double noundef %i.boc, i64 noundef %i.bnf) ; 0 uses
  br label %bb.tg

bb.tg:                                            ; preds = %bytesToHuman.exit215, %bb.st
  %.1.i182.i = phi i64 [ %i.bnf, %bytesToHuman.exit215 ], [ %.03142.i.i, %bb.st ] ; 2 uses
  %indvars.iv.next.i183.i = add nuw nsw i64 %indvars.iv.i181.i, 1 ; 2 uses
  %i.boe = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %indvars.iv.next.i183.i
  %i.bof = load i64, ptr %i.boe, align 16, !tbaa !401 ; 2 uses
  %.not.i184.i = icmp eq i64 %i.bof, 0
  br i1 %.not.i184.i, label %._crit_edge.i.i, label %bb.st, !llvm.loop !323

.thread.i112:                                     ; preds = %._crit_edge.i.i
  %i.bog = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.832, double noundef 1.000000e+02, i64 noundef %.sroa.0.1.lcssa.i) ; 0 uses
  %i.boh = call ptr @bytesToHuman(ptr noundef nonnull %i.w, i64 noundef 256, i64 noundef %.sroa.7.1.lcssa.i) ; 0 uses
  br label %bb.ti

bb.th:                                            ; preds = %._crit_edge.i.i
  %i.boi = call ptr @bytesToHuman(ptr noundef nonnull %i.w, i64 noundef 256, i64 noundef %.sroa.7.1.lcssa.i) ; 0 uses
  %.not38.i.i = icmp eq i64 %.sroa.0.1.lcssa.i, 0
  br i1 %.not38.i.i, label %displayKeyStatsLengthDist.exit.i, label %bb.ti

bb.ti:                                            ; preds = %bb.th, %.thread.i112
  %i.boj = getelementptr inbounds nuw i8, ptr %i.w, i64 256 ; 2 uses
  %i.bok = udiv i64 %.sroa.7.1.lcssa.i, %.sroa.0.1.lcssa.i
  %i.bol = call ptr @bytesToHuman(ptr noundef nonnull %i.boj, i64 noundef 256, i64 noundef %i.bok) ; 0 uses
  br label %displayKeyStatsLengthDist.exit.i

displayKeyStatsLengthDist.exit.i:                 ; preds = %bb.ti, %bb.th
  %i.bom = phi ptr [ %i.boj, %bb.ti ], [ @.str.336, %bb.th ]
  %i.bon = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.833, ptr noundef nonnull %i.w, ptr noundef nonnull %i.bom) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #32
  %i.boo = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #32
  %i.bop = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.834) ; 0 uses
  %i.boq = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.835) ; 0 uses
  call void @dictInitIterator(ptr noundef nonnull %10, ptr noundef %i.bcs) #32
  %i.bor = call ptr @dictNext(ptr noundef nonnull %10) #32 ; 2 uses
  %.not38.i185.i = icmp eq ptr %i.bor, null
  br i1 %.not38.i185.i, label %displayKeyStatsType.exit.i, label %.lr.ph.i186.i

.lr.ph.i186.i:                                    ; preds = %displayKeyStatsLengthDist.exit.i
  %.not37.i.i = icmp eq i64 %.1.lcssa.i, 0
  %i.bos = uitofp i64 %.1.lcssa.i to double
  %i.bot = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.bou = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.bov = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  br label %bb.tj

bb.tj:                                            ; preds = %bb.vg, %.lr.ph.i186.i
  %i.bow = phi ptr [ %i.bor, %.lr.ph.i186.i ], [ %i.bte, %bb.vg ]
  %i.box = call ptr @dictGetVal(ptr noundef nonnull %i.bow) #32 ; 4 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 32 ; 3 uses
  %i.boz = load i64, ptr %i.boy, align 8, !tbaa !410
  %.not32.i.i = icmp eq i64 %i.boz, 0
  br i1 %.not32.i.i, label %bb.vg, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.box, i64 40 ; 2 uses
  %i.bpb = load i64, ptr %i.bpa, align 8, !tbaa !411 ; 3 uses
  %i.bpc = icmp slt i64 %i.bpb, 0
  br i1 %i.bpc, label %bb.tl, label %bb.tm

bb.tl:                                            ; preds = %bb.tk
  store i8 45, ptr %i.s, align 16, !tbaa !73
  %i.bpd = sub nsw i64 0, %i.bpb
  br label %bb.tm

bb.tm:                                            ; preds = %bb.tl, %bb.tk
  %.029.i210 = phi ptr [ %i.bot, %bb.tl ], [ %i.s, %bb.tk ] ; 5 uses
  %.0.i211 = phi i64 [ %i.bpd, %bb.tl ], [ %i.bpb, %bb.tk ] ; 10 uses
  %i.bpe = icmp samesign ult i64 %.0.i211, 1024
  br i1 %i.bpe, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  %i.bpf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i210, i64 noundef 64, ptr noundef nonnull @.str.118, i64 noundef %.0.i211) #32 ; 0 uses
  br label %bytesToHuman.exit212

bb.to:                                            ; preds = %bb.tm
  %i.bpg = icmp samesign ult i64 %.0.i211, 1048576
  br i1 %i.bpg, label %bb.tp, label %bb.tq

bb.tp:                                            ; preds = %bb.to
  %i.bph = uitofp nneg i64 %.0.i211 to double
  %i.bpi = fmul nnan double %i.bph, f0x3F50000000000000
  %i.bpj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i210, i64 noundef 64, ptr noundef nonnull @.str.119, double noundef %i.bpi) #32 ; 0 uses
  br label %bytesToHuman.exit212

bb.tq:                                            ; preds = %bb.to
  %i.bpk = icmp samesign ult i64 %.0.i211, 1073741824
  br i1 %i.bpk, label %bb.tr, label %bb.ts

bb.tr:                                            ; preds = %bb.tq
  %i.bpl = uitofp nneg i64 %.0.i211 to double
  %i.bpm = fmul nnan double %i.bpl, f0x3EB0000000000000
  %i.bpn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i210, i64 noundef 64, ptr noundef nonnull @.str.120, double noundef %i.bpm) #32 ; 0 uses
  br label %bytesToHuman.exit212

bb.ts:                                            ; preds = %bb.tq
  %i.bpo = icmp samesign ult i64 %.0.i211, 1099511627776
  br i1 %i.bpo, label %bb.tt, label %bb.tu

bb.tt:                                            ; preds = %bb.ts
  %i.bpp = uitofp nneg i64 %.0.i211 to double
  %i.bpq = fmul nnan double %i.bpp, f0x3E10000000000000
  %i.bpr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i210, i64 noundef 64, ptr noundef nonnull @.str.121, double noundef %i.bpq) #32 ; 0 uses
  br label %bytesToHuman.exit212

bb.tu:                                            ; preds = %bb.ts
  %i.bps = icmp samesign ult i64 %.0.i211, 1125899906842624
  br i1 %i.bps, label %bb.tv, label %bytesToHuman.exit212

bb.tv:                                            ; preds = %bb.tu
  %i.bpt = uitofp nneg i64 %.0.i211 to double
  %i.bpu = fmul nnan double %i.bpt, f0x3D70000000000000
  %i.bpv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i210, i64 noundef 64, ptr noundef nonnull @.str.122, double noundef %i.bpu) #32 ; 0 uses
  br label %bytesToHuman.exit212

bytesToHuman.exit212:                             ; preds = %bb.tn, %bb.tp, %bb.tr, %bb.tt, %bb.tu, %bb.tv
  %i.bpw = load i64, ptr %i.bpa, align 8, !tbaa !411
  %i.bpx = load i64, ptr %i.boy, align 8, !tbaa !410
  %i.bpy = udiv i64 %i.bpw, %i.bpx                ; 3 uses
  %i.bpz = icmp slt i64 %i.bpy, 0
  br i1 %i.bpz, label %bb.tw, label %bb.tx

bb.tw:                                            ; preds = %bytesToHuman.exit212
  store i8 45, ptr %i.t, align 16, !tbaa !73
  %i.bqa = sub nsw i64 0, %i.bpy
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bytesToHuman.exit212
  %.029.i207 = phi ptr [ %i.bou, %bb.tw ], [ %i.t, %bytesToHuman.exit212 ] ; 5 uses
  %.0.i208 = phi i64 [ %i.bqa, %bb.tw ], [ %i.bpy, %bytesToHuman.exit212 ] ; 10 uses
  %i.bqb = icmp samesign ult i64 %.0.i208, 1024
  br i1 %i.bqb, label %bb.ty, label %bb.tz

bb.ty:                                            ; preds = %bb.tx
  %i.bqc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i207, i64 noundef 64, ptr noundef nonnull @.str.118, i64 noundef %.0.i208) #32 ; 0 uses
  br label %bytesToHuman.exit209

bb.tz:                                            ; preds = %bb.tx
  %i.bqd = icmp samesign ult i64 %.0.i208, 1048576
  br i1 %i.bqd, label %bb.ua, label %bb.ub

bb.ua:                                            ; preds = %bb.tz
  %i.bqe = uitofp nneg i64 %.0.i208 to double
  %i.bqf = fmul nnan double %i.bqe, f0x3F50000000000000
  %i.bqg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i207, i64 noundef 64, ptr noundef nonnull @.str.119, double noundef %i.bqf) #32 ; 0 uses
  br label %bytesToHuman.exit209

bb.ub:                                            ; preds = %bb.tz
  %i.bqh = icmp samesign ult i64 %.0.i208, 1073741824
  br i1 %i.bqh, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %bb.ub
  %i.bqi = uitofp nneg i64 %.0.i208 to double
  %i.bqj = fmul nnan double %i.bqi, f0x3EB0000000000000
  %i.bqk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i207, i64 noundef 64, ptr noundef nonnull @.str.120, double noundef %i.bqj) #32 ; 0 uses
  br label %bytesToHuman.exit209

bb.ud:                                            ; preds = %bb.ub
  %i.bql = icmp samesign ult i64 %.0.i208, 1099511627776
  br i1 %i.bql, label %bb.ue, label %bb.uf

bb.ue:                                            ; preds = %bb.ud
  %i.bqm = uitofp nneg i64 %.0.i208 to double
  %i.bqn = fmul nnan double %i.bqm, f0x3E10000000000000
  %i.bqo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i207, i64 noundef 64, ptr noundef nonnull @.str.121, double noundef %i.bqn) #32 ; 0 uses
  br label %bytesToHuman.exit209

bb.uf:                                            ; preds = %bb.ud
  %i.bqp = icmp samesign ult i64 %.0.i208, 1125899906842624
  br i1 %i.bqp, label %bb.ug, label %bytesToHuman.exit209

bb.ug:                                            ; preds = %bb.uf
  %i.bqq = uitofp nneg i64 %.0.i208 to double
  %i.bqr = fmul nnan double %i.bqq, f0x3D70000000000000
  %i.bqs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i207, i64 noundef 64, ptr noundef nonnull @.str.122, double noundef %i.bqr) #32 ; 0 uses
  br label %bytesToHuman.exit209

bytesToHuman.exit209:                             ; preds = %bb.ty, %bb.ua, %bb.uc, %bb.ue, %bb.uf, %bb.ug
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.u, ptr noundef nonnull align 1 dereferenceable(64) @str.50, i64 noundef 64, i1 false) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.v, ptr noundef nonnull align 1 dereferenceable(64) @str.50, i64 noundef 64, i1 false) #32
  %i.bqt = load ptr, ptr %i.box, align 8, !tbaa !154
  %i.bqu = call ptr @dictFind(ptr noundef %i.bdl, ptr noundef %i.bqt) #32 ; 2 uses
  %.not33.i.i = icmp eq ptr %i.bqu, null
  br i1 %.not33.i.i, label %bytesToHuman.exit, label %bb.uh

bb.uh:                                            ; preds = %bytesToHuman.exit209
  %i.bqv = call ptr @dictGetVal(ptr noundef nonnull %i.bqu) #32 ; 4 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqv, i64 8
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !195
  %.not34.i.i = icmp eq ptr %i.bqx, null
  br i1 %.not34.i.i, label %bytesToHuman.exit, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqv, i64 32
  %i.bqz = load i64, ptr %i.bqy, align 8, !tbaa !410 ; 2 uses
  %.not35.i.i = icmp eq i64 %i.bqz, 0
  br i1 %.not35.i.i, label %bytesToHuman.exit, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqv, i64 40
  %i.brb = load i64, ptr %i.bra, align 8, !tbaa !411 ; 5 uses
  %i.brc = uitofp i64 %i.brb to double
  %i.brd = uitofp i64 %i.bqz to double
  %i.bre = fdiv double %i.brc, %i.brd             ; 2 uses
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bqv, i64 16
  %i.brg = load ptr, ptr %i.brf, align 8, !tbaa !196 ; 2 uses
  %i.brh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.brg, ptr noundef nonnull dereferenceable(6) @.str.101) #34
  %.not36.i.i = icmp eq i32 %i.brh, 0
  br i1 %.not36.i.i, label %bb.uk, label %bb.vf

bb.uk:                                            ; preds = %bb.uj
  %i.bri = icmp slt i64 %i.brb, 0
  br i1 %i.bri, label %bb.ul, label %bb.um

bb.ul:                                            ; preds = %bb.uk
  store i8 45, ptr %i.u, align 16, !tbaa !73
  %i.brj = sub nsw i64 0, %i.brb
  br label %bb.um

bb.um:                                            ; preds = %bb.ul, %bb.uk
  %.029.i204 = phi ptr [ %i.bov, %bb.ul ], [ %i.u, %bb.uk ] ; 5 uses
  %.0.i205 = phi i64 [ %i.brj, %bb.ul ], [ %i.brb, %bb.uk ] ; 10 uses
  %i.brk = icmp samesign ult i64 %.0.i205, 1024
  br i1 %i.brk, label %bb.un, label %bb.uo

bb.un:                                            ; preds = %bb.um
  %i.brl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i204, i64 noundef 64, ptr noundef nonnull @.str.118, i64 noundef %.0.i205) #32 ; 0 uses
  br label %bytesToHuman.exit206

bb.uo:                                            ; preds = %bb.um
  %i.brm = icmp samesign ult i64 %.0.i205, 1048576
  br i1 %i.brm, label %bb.up, label %bb.uq

bb.up:                                            ; preds = %bb.uo
  %i.brn = uitofp nneg i64 %.0.i205 to double
  %i.bro = fmul nnan double %i.brn, f0x3F50000000000000
  %i.brp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i204, i64 noundef 64, ptr noundef nonnull @.str.119, double noundef %i.bro) #32 ; 0 uses
  br label %bytesToHuman.exit206

bb.uq:                                            ; preds = %bb.uo
  %i.brq = icmp samesign ult i64 %.0.i205, 1073741824
  br i1 %i.brq, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  %i.brr = uitofp nneg i64 %.0.i205 to double
  %i.brs = fmul nnan double %i.brr, f0x3EB0000000000000
  %i.brt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i204, i64 noundef 64, ptr noundef nonnull @.str.120, double noundef %i.brs) #32 ; 0 uses
  br label %bytesToHuman.exit206

bb.us:                                            ; preds = %bb.uq
  %i.bru = icmp samesign ult i64 %.0.i205, 1099511627776
  br i1 %i.bru, label %bb.ut, label %bb.uu

bb.ut:                                            ; preds = %bb.us
  %i.brv = uitofp nneg i64 %.0.i205 to double
  %i.brw = fmul nnan double %i.brv, f0x3E10000000000000
  %i.brx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i204, i64 noundef 64, ptr noundef nonnull @.str.121, double noundef %i.brw) #32 ; 0 uses
  br label %bytesToHuman.exit206

bb.uu:                                            ; preds = %bb.us
  %i.bry = icmp samesign ult i64 %.0.i205, 1125899906842624
  br i1 %i.bry, label %bb.uv, label %bytesToHuman.exit206

bb.uv:                                            ; preds = %bb.uu
  %i.brz = uitofp nneg i64 %.0.i205 to double
  %i.bsa = fmul nnan double %i.brz, f0x3D70000000000000
  %i.bsb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.029.i204, i64 noundef 64, ptr noundef nonnull @.str.122, double noundef %i.bsa) #32 ; 0 uses
  br label %bytesToHuman.exit206

bytesToHuman.exit206:                             ; preds = %bb.un, %bb.up, %bb.ur, %bb.ut, %bb.uu, %bb.uv
  %i.bsc = call double @llvm.round.f64(double %i.bre)
  %i.bsd = fptosi double %i.bsc to i64            ; 10 uses
  %36 = icmp samesign ult i64 %i.bsd, 1024
  br i1 %36, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bytesToHuman.exit206
  %i.bse = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 64, ptr noundef nonnull @.str.118, i64 noundef %i.bsd) #32 ; 0 uses
  br label %bytesToHuman.exit

bb.ux:                                            ; preds = %bytesToHuman.exit206
  %i.bsf = icmp samesign ult i64 %i.bsd, 1048576
  br i1 %i.bsf, label %bb.uy, label %bb.uz

bb.uy:                                            ; preds = %bb.ux
  %i.bsg = uitofp nneg i64 %i.bsd to double
  %i.bsh = fmul nnan double %i.bsg, f0x3F50000000000000
  %i.bsi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 64, ptr noundef nonnull @.str.119, double noundef %i.bsh) #32 ; 0 uses
  br label %bytesToHuman.exit

bb.uz:                                            ; preds = %bb.ux
  %i.bsj = icmp samesign ult i64 %i.bsd, 1073741824
  br i1 %i.bsj, label %bb.va, label %bb.vb

bb.va:                                            ; preds = %bb.uz
  %i.bsk = uitofp nneg i64 %i.bsd to double
  %i.bsl = fmul nnan double %i.bsk, f0x3EB0000000000000
  %i.bsm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 64, ptr noundef nonnull @.str.120, double noundef %i.bsl) #32 ; 0 uses
  br label %bytesToHuman.exit

bb.vb:                                            ; preds = %bb.uz
  %i.bsn = icmp samesign ult i64 %i.bsd, 1099511627776
  br i1 %i.bsn, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.bso = uitofp nneg i64 %i.bsd to double
  %i.bsp = fmul nnan double %i.bso, f0x3E10000000000000
  %i.bsq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 64, ptr noundef nonnull @.str.121, double noundef %i.bsp) #32 ; 0 uses
  br label %bytesToHuman.exit

bb.vd:                                            ; preds = %bb.vb
  %i.bsr = icmp samesign ult i64 %i.bsd, 1125899906842624
  br i1 %i.bsr, label %bb.ve, label %bytesToHuman.exit

bb.ve:                                            ; preds = %bb.vd
  %i.bss = uitofp nneg i64 %i.bsd to double
  %i.bst = fmul nnan double %i.bss, f0x3D70000000000000
  %i.bsu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 64, ptr noundef nonnull @.str.122, double noundef %i.bst) #32 ; 0 uses
  br label %bytesToHuman.exit

bb.vf:                                            ; preds = %bb.uj
  %i.bsv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.u, i64 noundef 64, ptr noundef nonnull @.str.823, i64 noundef %i.brb, ptr noundef nonnull %i.brg) #32 ; 0 uses
  %i.bsw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 64, ptr noundef nonnull @.str.837, double noundef %i.bre) #32 ; 0 uses
  br label %bytesToHuman.exit

bytesToHuman.exit:                                ; preds = %bb.ve, %bb.vd, %bb.vc, %bb.va, %bb.uy, %bb.uw, %bb.vf, %bb.ui, %bb.uh, %bytesToHuman.exit209
  %i.bsx = load ptr, ptr %i.box, align 8, !tbaa !154
  %i.bsy = load i64, ptr %i.boy, align 8, !tbaa !410 ; 2 uses
  %i.bsz = uitofp i64 %i.bsy to double
  %i.bta = fmul nnan double %i.bsz, 1.000000e+02
  %i.btb = fdiv double %i.bta, %i.bos
  %i.btc = select i1 %.not37.i.i, double 0.000000e+00, double %i.btb
  %i.btd = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.838, ptr noundef %i.bsx, i64 noundef %i.bsy, double noundef %i.btc, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v) ; 0 uses
  br label %bb.vg

bb.vg:                                            ; preds = %bytesToHuman.exit, %bb.tj
  %i.bte = call ptr @dictNext(ptr noundef nonnull %10) #32 ; 2 uses
  %.not.i188.i = icmp eq ptr %i.bte, null
  br i1 %.not.i188.i, label %displayKeyStatsType.exit.i, label %bb.tj, !llvm.loop !324

displayKeyStatsType.exit.i:                       ; preds = %bb.vg, %displayKeyStatsLengthDist.exit.i
  call void @dictResetIterator(ptr noundef nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %.not159.i = icmp eq i64 %i.bkv, 0
  br i1 %.not159.i, label %bb.vi, label %bb.vh

bb.vh:                                            ; preds = %displayKeyStatsType.exit.i
  %putchar.i109 = call i32 @putchar(i32 10)       ; 0 uses
  %puts160.i110 = call i32 @puts(ptr nonnull dereferenceable(1) @str.33) ; 0 uses
  %i.btf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.815, i64 noundef %i.bkv) ; 0 uses
  br label %bb.vi

bb.vi:                                            ; preds = %bb.vh, %displayKeyStatsType.exit.i
  %.not161.i = icmp eq ptr %.1128.i, null
  br i1 %.not161.i, label %bb.vk, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  call void @zfree(ptr noundef nonnull %.1128.i) #32
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %bb.vi
  %.not162.i = icmp eq ptr %.1126.i, null
  br i1 %.not162.i, label %bb.vm, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  call void @zfree(ptr noundef nonnull %.1126.i) #32
  br label %bb.vm

bb.vm:                                            ; preds = %bb.vl, %bb.vk
  %.not163.i = icmp eq ptr %.1135.i, null
  br i1 %.not163.i, label %bb.vo, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  call void @zfree(ptr noundef nonnull %.1135.i) #32
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vm
  %.not164.i = icmp eq ptr %.1133.i, null
  br i1 %.not164.i, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  call void @zfree(ptr noundef nonnull %.1133.i) #32
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %bb.vo
  call void @dictRelease(ptr noundef %i.bcs) #32
  call void @dictRelease(ptr noundef %i.bdl) #32
  %i.btg = load ptr, ptr %i.ab, align 8, !tbaa !396
  call void @hdr_close(ptr noundef %i.btg) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @listRewind(ptr noundef nonnull %i.bco, ptr noundef nonnull %17) #32
  %i.bth = call ptr @listNext(ptr noundef nonnull %17) #32 ; 2 uses
  %.not165243.i = icmp eq ptr %i.bth, null
  br i1 %.not165243.i, label %._crit_edge246.i, label %.lr.ph245.i

.lr.ph245.i:                                      ; preds = %bb.vq, %.lr.ph245.i
  %i.bti = phi ptr [ %i.btn, %.lr.ph245.i ], [ %i.bth, %bb.vq ]
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bti, i64 16
  %i.btk = load ptr, ptr %i.btj, align 8, !tbaa !99
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btk, i64 24
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !193
  call void @hi_sdsfree(ptr noundef %i.btm) #32
  %i.btn = call ptr @listNext(ptr noundef nonnull %17) #32 ; 2 uses
  %.not165.i111 = icmp eq ptr %i.btn, null
  br i1 %.not165.i111, label %._crit_edge246.i, label %.lr.ph245.i, !llvm.loop !325

._crit_edge246.i:                                 ; preds = %.lr.ph245.i, %bb.vq
  call void @listRelease(ptr noundef nonnull %i.bco) #32
  call void @exit(i32 noundef 0) #37
  unreachable

bb.vr:                                            ; preds = %bb.qi
  %i.bto = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 312), align 8, !tbaa !354
  %.not35 = icmp eq i32 %i.bto, 0
  br i1 %.not35, label %bb.aao, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.btp = call fastcc i32 @cliConnect(i32 noundef 0)
  %i.btq = icmp eq i32 %i.btp, -1
  br i1 %i.btq, label %bb.vt, label %bb.vu

bb.vt:                                            ; preds = %bb.vs
  call void @exit(i32 noundef 1) #40
  unreachable

bb.vu:                                            ; preds = %bb.vs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.p, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.q, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #32
  store i64 0, ptr %i.r, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.btr = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #32 ; 0 uses
  %i.bts = load i64, ptr %9, align 8, !tbaa !186
  %i.btt = mul nsw i64 %i.bts, 1000000
  %i.btu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.btv = load i64, ptr %i.btu, align 8, !tbaa !187
  %i.btw = add nsw i64 %i.btt, %i.btv
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.btx = sdiv i64 %i.btw, 1000
  %i.bty = call ptr @signal(i32 noundef 2, ptr noundef nonnull @longStatLoopModeStop) #32 ; 0 uses
  %i.btz = call fastcc i32 @getDbSize()           ; 2 uses
  %i.bua = sext i32 %i.btz to i64                 ; 3 uses
  %puts.i121 = call i32 @puts(ptr nonnull dereferenceable(1) @str.34) ; 0 uses
  %puts91.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.35) ; 0 uses
  %puts92.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.36) ; 0 uses
  call fastcc void @sendReadOnly()
  %i.bub = uitofp i64 %i.bua to double            ; 2 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bud = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bue = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.buf = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.buh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bui = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not.i110.i = icmp eq i32 %i.btz, 0
  %i.buj = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 3 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %i.buq = getelementptr inbounds nuw i8, ptr %i.p, i64 64 ; 3 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 3 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 3 uses
  %i.but = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 3 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 3 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 3 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %i.p, i64 112 ; 3 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %i.p, i64 120 ; 3 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.buz = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br label %bb.vv

bb.vv:                                            ; preds = %bb.yw, %bb.vu
  %.082.i = phi i64 [ 0, %bb.vu ], [ %.183.lcssa.i, %bb.yw ] ; 4 uses
  %.080.i = phi ptr [ null, %bb.vu ], [ %.181.i, %bb.yw ] ; 2 uses
  %.079.i = phi i64 [ 0, %bb.vu ], [ %i.bvq, %bb.yw ]
  %.077.i = phi i32 [ 0, %bb.vu ], [ %.178.i, %bb.yw ] ; 2 uses
  %.072.i = phi i64 [ %i.btx, %bb.vu ], [ %.173.i, %bb.yw ] ; 3 uses
  %i.bvm = uitofp i64 %.082.i to double
  %i.bvn = fmul nnan double %i.bvm, 1.000000e+02
  %i.bvo = fdiv double %i.bvn, %i.bub             ; 3 uses
  %i.bvp = call fastcc ptr @sendScan(ptr noundef %i.r) ; 2 uses
  %i.bvq = add i64 %.079.i, 1                     ; 2 uses
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bvp, i64 56
  %i.bvs = load ptr, ptr %i.bvr, align 8, !tbaa !47
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvs, i64 8
  %i.bvu = load ptr, ptr %i.bvt, align 8, !tbaa !49 ; 3 uses
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 48 ; 6 uses
  %i.bvw = load i64, ptr %i.bvv, align 8, !tbaa !46 ; 3 uses
  %i.bvx = zext i32 %.077.i to i64
  %i.bvy = icmp ugt i64 %i.bvw, %i.bvx
  br i1 %i.bvy, label %bb.vw, label %bb.vz

bb.vw:                                            ; preds = %bb.vv
  %i.bvz = shl i64 %i.bvw, 3
  %i.bwa = call ptr @zrealloc(ptr noundef %.080.i, i64 noundef %i.bvz) #35 ; 2 uses
  %.not.i142 = icmp eq ptr %i.bwa, null
  br i1 %.not.i142, label %bb.vx, label %bb.vy
end_hunk_1
begin_hunk_2_@main:bb.a
  br i1 %i.bzb, label %bb.wn, label %._crit_edge156.i

bb.wn:                                            ; preds = %bb.wm
  %i.bzc = load i64, ptr %i.buk, align 16, !tbaa !189
  %i.bzd = icmp ugt i64 %i.byy, %i.bzc
  br i1 %i.bzd, label %bb.wo, label %._crit_edge153.i

bb.wo:                                            ; preds = %bb.wn
  %i.bze = load i64, ptr %i.bul, align 8, !tbaa !189
  %i.bzf = icmp ugt i64 %i.byy, %i.bze
  br i1 %i.bzf, label %bb.wp, label %._crit_edge153.i

bb.wp:                                            ; preds = %bb.wo
  %i.bzg = load i64, ptr %i.bum, align 16, !tbaa !189
  %i.bzh = icmp ugt i64 %i.byy, %i.bzg
  br i1 %i.bzh, label %bb.wq, label %._crit_edge153.i

bb.wq:                                            ; preds = %bb.wp
  %i.bzi = load i64, ptr %i.bun, align 8, !tbaa !189
  %i.bzj = icmp ugt i64 %i.byy, %i.bzi
  br i1 %i.bzj, label %bb.wr, label %._crit_edge153.i

bb.wr:                                            ; preds = %bb.wq
  %i.bzk = load i64, ptr %i.buo, align 16, !tbaa !189
  %i.bzl = icmp ugt i64 %i.byy, %i.bzk
  br i1 %i.bzl, label %bb.ws, label %._crit_edge153.i

bb.ws:                                            ; preds = %bb.wr
  %i.bzm = load i64, ptr %i.bup, align 8, !tbaa !189
  %i.bzn = icmp ugt i64 %i.byy, %i.bzm
  br i1 %i.bzn, label %bb.wt, label %._crit_edge153.i

bb.wt:                                            ; preds = %bb.ws
  %i.bzo = load i64, ptr %i.buq, align 16, !tbaa !189
  %i.bzp = icmp ugt i64 %i.byy, %i.bzo
  br i1 %i.bzp, label %bb.wu, label %._crit_edge153.i

bb.wu:                                            ; preds = %bb.wt
  %i.bzq = load i64, ptr %i.bur, align 8, !tbaa !189
  %i.bzr = icmp ugt i64 %i.byy, %i.bzq
  br i1 %i.bzr, label %bb.wv, label %._crit_edge153.i

bb.wv:                                            ; preds = %bb.wu
  %i.bzs = load i64, ptr %i.bus, align 16, !tbaa !189
  %i.bzt = icmp ugt i64 %i.byy, %i.bzs
  br i1 %i.bzt, label %bb.ww, label %._crit_edge153.i

bb.ww:                                            ; preds = %bb.wv
  %i.bzu = load i64, ptr %i.but, align 8, !tbaa !189
  %i.bzv = icmp ugt i64 %i.byy, %i.bzu
  br i1 %i.bzv, label %bb.wx, label %._crit_edge153.i

bb.wx:                                            ; preds = %bb.ww
  %i.bzw = load i64, ptr %i.buu, align 16, !tbaa !189
  %i.bzx = icmp ugt i64 %i.byy, %i.bzw
  br i1 %i.bzx, label %bb.wy, label %._crit_edge153.i

bb.wy:                                            ; preds = %bb.wx
  %i.bzy = load i64, ptr %i.buv, align 8, !tbaa !189
  %i.bzz = icmp ugt i64 %i.byy, %i.bzy
  br i1 %i.bzz, label %bb.wz, label %._crit_edge153.i

bb.wz:                                            ; preds = %bb.wy
  %i.caa = load i64, ptr %i.buw, align 16, !tbaa !189
  %i.cab = icmp ugt i64 %i.byy, %i.caa
  br i1 %i.cab, label %bb.xa, label %._crit_edge153.i

bb.xa:                                            ; preds = %bb.wz
  %i.cac = load i64, ptr %i.bux, align 8, !tbaa !189 ; 2 uses
  %i.cad = icmp ugt i64 %i.byy, %i.cac
  br i1 %i.cad, label %.thread.i138, label %._crit_edge153.i

._crit_edge153.i:                                 ; preds = %bb.xa, %bb.wz, %bb.wy, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo, %bb.wn
  %.074125.lcssa.wide.ph.ph.i = phi i32 [ 1, %bb.wn ], [ 2, %bb.wo ], [ 3, %bb.wp ], [ 4, %bb.wq ], [ 5, %bb.wr ], [ 6, %bb.ws ], [ 7, %bb.wt ], [ 8, %bb.wu ], [ 9, %bb.wv ], [ 10, %bb.ww ], [ 11, %bb.wx ], [ 12, %bb.wy ], [ 13, %bb.wz ], [ 14, %bb.xa ] ; 2 uses
  %.phi.trans.insert.i137 = zext nneg i32 %.074125.lcssa.wide.ph.ph.i to i64
  %.phi.trans.insert154.i = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.phi.trans.insert.i137
  %.pre155.i = load i64, ptr %.phi.trans.insert154.i, align 8, !tbaa !189
  br label %.thread.i138

.thread.i138:                                     ; preds = %._crit_edge153.i, %bb.xa
  %i.cae = phi i64 [ %.pre155.i, %._crit_edge153.i ], [ %i.cac, %bb.xa ]
  %i.caf = phi i32 [ %.074125.lcssa.wide.ph.ph.i, %._crit_edge153.i ], [ 15, %bb.xa ] ; 2 uses
  %i.cag = icmp eq i64 %i.cae, 0
  br i1 %i.cag, label %._crit_edge156.i, label %bb.xb

._crit_edge156.i:                                 ; preds = %.thread.i138, %bb.wm
  %i.cah = phi i32 [ %i.caf, %.thread.i138 ], [ 0, %bb.wm ]
  %i.cai = zext nneg i32 %i.cah to i64            ; 2 uses
  %i.caj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.cai
  %i.cak = load ptr, ptr %i.caj, align 8, !tbaa !40
  call void @hi_sdsfree(ptr noundef %i.cak) #32
  br label %bb.xc

bb.xb:                                            ; preds = %.thread.i138
  %i.cal = zext nneg i32 %i.caf to i64            ; 2 uses
  %i.cam = load ptr, ptr %i.q, align 16, !tbaa !40
  call void @hi_sdsfree(ptr noundef %i.cam) #32
  %i.can = shl nuw nsw i64 %i.cal, 3              ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.buf, i64 %i.can, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.bug, i64 %i.can, i1 false)
  br label %bb.xc

bb.xc:                                            ; preds = %bb.xb, %._crit_edge156.i
  %.pre-phi.i135 = phi i64 [ %i.cal, %bb.xb ], [ %i.cai, %._crit_edge156.i ] ; 2 uses
  %i.cao = load i64, ptr %i.byx, align 8, !tbaa !189
  %i.cap = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi.i135
  store i64 %i.cao, ptr %i.cap, align 8, !tbaa !189
  %i.caq = call ptr @hi_sdsempty() #32
  %i.car = load ptr, ptr %i.byp, align 8, !tbaa !47
  %i.cas = getelementptr inbounds nuw [8 x i8], ptr %i.car, i64 %i.byq
  %i.cat = load ptr, ptr %i.cas, align 8, !tbaa !49 ; 2 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cat, i64 32
  %i.cav = load ptr, ptr %i.cau, align 8, !tbaa !51
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cat, i64 24
  %i.cax = load i64, ptr %i.caw, align 8, !tbaa !70
  %i.cay = call ptr @hi_sdscatrepr(ptr noundef %i.caq, ptr noundef %i.cav, i64 noundef %i.cax) #32 ; 2 uses
  %i.caz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.pre-phi.i135
  store ptr %i.cay, ptr %i.caz, align 8, !tbaa !40
  %i.cba = call i32 @isatty(i32 noundef 1) #32
  %.not107.i136 = icmp eq i32 %i.cba, 0
  br i1 %.not107.i136, label %bb.xd, label %.critedge.i126

bb.xd:                                            ; preds = %bb.xc
  %i.cbb = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not108.i = icmp eq ptr %i.cbb, null
  br i1 %.not108.i, label %bb.xe, label %.critedge.i126

bb.xe:                                            ; preds = %bb.xd
  %i.cbc = load i64, ptr %i.byx, align 8, !tbaa !189
  %i.cbd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.840, double noundef %i.bvo, ptr noundef %i.cay, i64 noundef %i.cbc) ; 0 uses
  br label %.critedge.i126

.critedge.i126:                                   ; preds = %bb.xe, %bb.xd, %bb.xc, %bb.wl
  %i.cbe = add i32 %.076127.i, 1                  ; 2 uses
  %i.cbf = zext i32 %i.cbe to i64                 ; 2 uses
  %i.cbg = load i64, ptr %i.bvv, align 8, !tbaa !46
  %i.cbh = icmp ugt i64 %i.cbg, %i.cbf
  br i1 %i.cbh, label %bb.wh, label %._crit_edge.i127, !llvm.loop !328

._crit_edge.i127:                                 ; preds = %.critedge.i126, %getKeyFreqs.exit.i, %getKeyFreqs.exit.thread.i
  %.183.lcssa.i = phi i64 [ %.082.i, %getKeyFreqs.exit.i ], [ %.082.i, %getKeyFreqs.exit.thread.i ], [ %i.byr, %.critedge.i126 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.cbi = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #32 ; 0 uses
  %i.cbj = load i64, ptr %8, align 8, !tbaa !186
  %i.cbk = mul nsw i64 %i.cbj, 1000000
  %i.cbl = load i64, ptr %i.buh, align 8, !tbaa !187
  %i.cbm = add nsw i64 %i.cbk, %i.cbl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.cbn = sdiv i64 %i.cbm, 1000
  %i.cbo = add nsw i64 %.072.i, 300
  %i.cbp = icmp sgt i64 %i.cbn, %i.cbo
  br i1 %i.cbp, label %bb.xf, label %bb.yu

bb.xf:                                            ; preds = %._crit_edge.i127
  %i.cbq = call i32 @isatty(i32 noundef 1) #32
  %.not93.i = icmp eq i32 %i.cbq, 0
  br i1 %.not93.i, label %bb.xg, label %bb.xh

bb.xg:                                            ; preds = %bb.xf
  %i.cbr = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not94.i = icmp eq ptr %i.cbr, null
  br i1 %.not94.i, label %bb.yu, label %bb.xh

bb.xh:                                            ; preds = %bb.xg, %bb.xf
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cbs = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #32 ; 0 uses
  %i.cbt = load i64, ptr %7, align 8, !tbaa !186
  %i.cbu = mul nsw i64 %i.cbt, 1000000
  %i.cbv = load i64, ptr %i.bui, align 8, !tbaa !187
  %i.cbw = add nsw i64 %i.cbu, %i.cbv
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.cbx = sdiv i64 %i.cbw, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  br i1 %.not.i110.i, label %bb.xk, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  %i.cby = icmp ult i64 %.183.lcssa.i, %i.bua
  br i1 %i.cby, label %bb.xj, label %bb.xk

bb.xj:                                            ; preds = %bb.xi
  %i.cbz = uitofp i64 %.183.lcssa.i to double
  %i.cca = fdiv double %i.cbz, %i.bub
  br label %bb.xk

bb.xk:                                            ; preds = %bb.xj, %bb.xi, %bb.xh
  %i.ccb = phi double [ 1.000000e+00, %bb.xi ], [ %i.cca, %bb.xj ], [ 0.000000e+00, %bb.xh ] ; 2 uses
  %i.ccc = call i32 @isatty(i32 noundef 1) #32
  %.not16.i.i = icmp eq i32 %i.ccc, 0
  br i1 %.not16.i.i, label %bb.xl, label %bb.xm

bb.xl:                                            ; preds = %bb.xk
  %i.ccd = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not17.i.i = icmp eq ptr %i.ccd, null
  br i1 %.not17.i.i, label %bb.xn, label %bb.xm

bb.xm:                                            ; preds = %bb.xl, %bb.xk
  %i.cce = fmul double %i.ccb, 6.000000e+01
  %i.ccf = call double @llvm.round.f64(double %i.cce)
  %i.ccg = fptosi double %i.ccf to i32            ; 2 uses
  %37 = zext nneg i32 %i.ccg to i64               ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.i, i8 124, i64 %37, i1 false)
  %i.cch = getelementptr inbounds nuw i8, ptr %i.i, i64 %37
  store i8 0, ptr %i.cch, align 1, !tbaa !73
  %i.cci = sub nsw i32 60, %i.ccg
  %i.ccj = sext i32 %i.cci to i64                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.buj, i8 45, i64 %i.ccj, i1 false)
  %i.cck = getelementptr inbounds i8, ptr %i.buj, i64 %i.ccj
  store i8 0, ptr %i.cck, align 1, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.j, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.red, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.green, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.l, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.default_color, i64 6, i1 false)
  %i.ccl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 512, ptr noundef nonnull @.str.802, ptr noundef nonnull %i.k, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.buj, ptr noundef nonnull %i.l) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  br label %displayKeyStatsProgressbar.exit.i

bb.xn:                                            ; preds = %bb.xl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.h, ptr noundef nonnull align 1 dereferenceable(13) @.str.803, i64 13, i1 false)
  br label %displayKeyStatsProgressbar.exit.i

displayKeyStatsProgressbar.exit.i:                ; preds = %bb.xn, %bb.xm
  %i.ccm = fmul double %i.ccb, 1.000000e+02
  %i.ccn = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.804, double noundef %i.ccm, ptr noundef nonnull %i.h)
  %i.cco = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.805, i64 noundef %.183.lcssa.i)
  %i.ccp = add nsw i32 %i.cco, %i.ccn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  %i.ccq = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  %i.ccr = add nsw i32 %i.ccp, %i.ccq             ; 2 uses
  %i.ccs = load i64, ptr %i.bux, align 8, !tbaa !189 ; 2 uses
  %.not104.i133 = icmp eq i64 %i.ccs, 0
  br i1 %.not104.i133, label %bb.xp, label %bb.xo

bb.xo:                                            ; preds = %displayKeyStatsProgressbar.exit.i
  %i.cct = load ptr, ptr %i.buy, align 8, !tbaa !40
  %i.ccu = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ccs, ptr noundef %i.cct)
  %i.ccv = add nsw i32 %i.ccu, %i.ccr
  br label %bb.xp

bb.xp:                                            ; preds = %bb.xo, %displayKeyStatsProgressbar.exit.i
  %.1.i134 = phi i32 [ %i.ccv, %bb.xo ], [ %i.ccr, %displayKeyStatsProgressbar.exit.i ] ; 2 uses
  %i.ccw = load i64, ptr %i.buw, align 16, !tbaa !189 ; 2 uses
  %.not104.1.i = icmp eq i64 %i.ccw, 0
  br i1 %.not104.1.i, label %bb.xr, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  %i.ccx = load ptr, ptr %i.buz, align 16, !tbaa !40
  %i.ccy = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ccw, ptr noundef %i.ccx)
  %i.ccz = add nsw i32 %i.ccy, %.1.i134
  br label %bb.xr

bb.xr:                                            ; preds = %bb.xq, %bb.xp
  %.1.1.i = phi i32 [ %i.ccz, %bb.xq ], [ %.1.i134, %bb.xp ] ; 2 uses
  %i.cda = load i64, ptr %i.buv, align 8, !tbaa !189 ; 2 uses
  %.not104.2.i = icmp eq i64 %i.cda, 0
  br i1 %.not104.2.i, label %bb.xt, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.cdb = load ptr, ptr %i.bva, align 8, !tbaa !40
  %i.cdc = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cda, ptr noundef %i.cdb)
  %i.cdd = add nsw i32 %i.cdc, %.1.1.i
  br label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %bb.xr
  %.1.2.i = phi i32 [ %i.cdd, %bb.xs ], [ %.1.1.i, %bb.xr ] ; 2 uses
  %i.cde = load i64, ptr %i.buu, align 16, !tbaa !189 ; 2 uses
  %.not104.3.i = icmp eq i64 %i.cde, 0
  br i1 %.not104.3.i, label %bb.xv, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.cdf = load ptr, ptr %i.bvb, align 16, !tbaa !40
  %i.cdg = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cde, ptr noundef %i.cdf)
  %i.cdh = add nsw i32 %i.cdg, %.1.2.i
  br label %bb.xv

bb.xv:                                            ; preds = %bb.xu, %bb.xt
  %.1.3.i = phi i32 [ %i.cdh, %bb.xu ], [ %.1.2.i, %bb.xt ] ; 2 uses
  %i.cdi = load i64, ptr %i.but, align 8, !tbaa !189 ; 2 uses
  %.not104.4.i = icmp eq i64 %i.cdi, 0
  br i1 %.not104.4.i, label %bb.xx, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cdj = load ptr, ptr %i.bvc, align 8, !tbaa !40
  %i.cdk = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cdi, ptr noundef %i.cdj)
  %i.cdl = add nsw i32 %i.cdk, %.1.3.i
  br label %bb.xx

bb.xx:                                            ; preds = %bb.xw, %bb.xv
  %.1.4.i = phi i32 [ %i.cdl, %bb.xw ], [ %.1.3.i, %bb.xv ] ; 2 uses
  %i.cdm = load i64, ptr %i.bus, align 16, !tbaa !189 ; 2 uses
  %.not104.5.i = icmp eq i64 %i.cdm, 0
  br i1 %.not104.5.i, label %bb.xz, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.cdn = load ptr, ptr %i.bvd, align 16, !tbaa !40
  %i.cdo = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cdm, ptr noundef %i.cdn)
  %i.cdp = add nsw i32 %i.cdo, %.1.4.i
  br label %bb.xz

bb.xz:                                            ; preds = %bb.xy, %bb.xx
  %.1.5.i = phi i32 [ %i.cdp, %bb.xy ], [ %.1.4.i, %bb.xx ] ; 2 uses
  %i.cdq = load i64, ptr %i.bur, align 8, !tbaa !189 ; 2 uses
  %.not104.6.i = icmp eq i64 %i.cdq, 0
  br i1 %.not104.6.i, label %bb.yb, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.cdr = load ptr, ptr %i.bve, align 8, !tbaa !40
  %i.cds = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cdq, ptr noundef %i.cdr)
  %i.cdt = add nsw i32 %i.cds, %.1.5.i
  br label %bb.yb

bb.yb:                                            ; preds = %bb.ya, %bb.xz
  %.1.6.i = phi i32 [ %i.cdt, %bb.ya ], [ %.1.5.i, %bb.xz ] ; 2 uses
  %i.cdu = load i64, ptr %i.buq, align 16, !tbaa !189 ; 2 uses
  %.not104.7.i = icmp eq i64 %i.cdu, 0
  br i1 %.not104.7.i, label %bb.yd, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  %i.cdv = load ptr, ptr %i.bvf, align 16, !tbaa !40
  %i.cdw = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cdu, ptr noundef %i.cdv)
  %i.cdx = add nsw i32 %i.cdw, %.1.6.i
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yb
  %.1.7.i = phi i32 [ %i.cdx, %bb.yc ], [ %.1.6.i, %bb.yb ] ; 2 uses
  %i.cdy = load i64, ptr %i.bup, align 8, !tbaa !189 ; 2 uses
  %.not104.8.i = icmp eq i64 %i.cdy, 0
  br i1 %.not104.8.i, label %bb.yf, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  %i.cdz = load ptr, ptr %i.bvg, align 8, !tbaa !40
  %i.cea = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cdy, ptr noundef %i.cdz)
  %i.ceb = add nsw i32 %i.cea, %.1.7.i
  br label %bb.yf

bb.yf:                                            ; preds = %bb.ye, %bb.yd
  %.1.8.i = phi i32 [ %i.ceb, %bb.ye ], [ %.1.7.i, %bb.yd ] ; 2 uses
  %i.cec = load i64, ptr %i.buo, align 16, !tbaa !189 ; 2 uses
  %.not104.9.i = icmp eq i64 %i.cec, 0
  br i1 %.not104.9.i, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.ced = load ptr, ptr %i.bvh, align 16, !tbaa !40
  %i.cee = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cec, ptr noundef %i.ced)
  %i.cef = add nsw i32 %i.cee, %.1.8.i
  br label %bb.yh

bb.yh:                                            ; preds = %bb.yg, %bb.yf
  %.1.9.i = phi i32 [ %i.cef, %bb.yg ], [ %.1.8.i, %bb.yf ] ; 2 uses
  %i.ceg = load i64, ptr %i.bun, align 8, !tbaa !189 ; 2 uses
  %.not104.10.i = icmp eq i64 %i.ceg, 0
  br i1 %.not104.10.i, label %bb.yj, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.ceh = load ptr, ptr %i.bvi, align 8, !tbaa !40
  %i.cei = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ceg, ptr noundef %i.ceh)
  %i.cej = add nsw i32 %i.cei, %.1.9.i
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yh
  %.1.10.i = phi i32 [ %i.cej, %bb.yi ], [ %.1.9.i, %bb.yh ] ; 2 uses
  %i.cek = load i64, ptr %i.bum, align 16, !tbaa !189 ; 2 uses
  %.not104.11.i = icmp eq i64 %i.cek, 0
  br i1 %.not104.11.i, label %bb.yl, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.cel = load ptr, ptr %i.bvj, align 16, !tbaa !40
  %i.cem = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.cek, ptr noundef %i.cel)
  %i.cen = add nsw i32 %i.cem, %.1.10.i
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yj
  %.1.11.i = phi i32 [ %i.cen, %bb.yk ], [ %.1.10.i, %bb.yj ] ; 2 uses
  %i.ceo = load i64, ptr %i.bul, align 8, !tbaa !189 ; 2 uses
  %.not104.12.i = icmp eq i64 %i.ceo, 0
  br i1 %.not104.12.i, label %bb.yn, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.cep = load ptr, ptr %i.bvk, align 8, !tbaa !40
  %i.ceq = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ceo, ptr noundef %i.cep)
  %i.cer = add nsw i32 %i.ceq, %.1.11.i
  br label %bb.yn

bb.yn:                                            ; preds = %bb.ym, %bb.yl
  %.1.12.i = phi i32 [ %i.cer, %bb.ym ], [ %.1.11.i, %bb.yl ] ; 2 uses
  %i.ces = load i64, ptr %i.buk, align 16, !tbaa !189 ; 2 uses
  %.not104.13.i = icmp eq i64 %i.ces, 0
  br i1 %.not104.13.i, label %bb.yp, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cet = load ptr, ptr %i.bvl, align 16, !tbaa !40
  %i.ceu = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.841, i64 noundef %i.ces, ptr noundef %i.cet)
  %i.cev = add nsw i32 %i.ceu, %.1.12.i
  br label %bb.yp

bb.yp:                                            ; preds = %bb.yo, %bb.yn
  %.1.13.i = phi i32 [ %i.cev, %bb.yo ], [ %.1.12.i, %bb.yn ] ; 2 uses
  %i.cew = load i64, ptr %i.buf, align 8, !tbaa !189 ; 2 uses
end_hunk_2
begin_hunk_3_@findBigKeys:bb.a
  %or.cond = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite = call i64 @fwrite(ptr nonnull @.str.766, i64 37, i64 1, ptr %i.bh) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bi = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.bj = trunc i64 %i.bi to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1128 = phi ptr [ %i.be, %bb.e ], [ %.0127, %bb.b ] ; 5 uses
  %.1125 = phi i32 [ %i.bj, %bb.e ], [ %.0124, %bb.b ]
  %.1122 = phi ptr [ %i.bb, %bb.e ], [ %.0121, %bb.b ] ; 6 uses
  call fastcc void @getKeyTypes(ptr noundef %i.n, ptr noundef nonnull %i.av, ptr noundef %.1122)
  call fastcc void @getKeySizes(ptr noundef nonnull %i.av, ptr noundef %.1122, ptr noundef %.1128, i32 noundef %0, i64 noundef %1)
  %i.bk = load i64, ptr %i.aw, align 8, !tbaa !46
  %.not216 = icmp eq i64 %i.bk, 0
  br i1 %.not216, label %._crit_edge198, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 56 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph197, %bb.ak
  %i.bm = phi i64 [ 0, %.lr.ph197 ], [ %i.fq, %bb.ak ] ; 4 uses
  %.1120195 = phi i64 [ %.0119, %.lr.ph197 ], [ %.3, %bb.ak ] ; 4 uses
  %.0123194 = phi i32 [ 0, %.lr.ph197 ], [ %i.fp, %bb.ak ]
  %.1130193 = phi i64 [ %.0129, %.lr.ph197 ], [ %.2131, %bb.ak ] ; 2 uses
  %.1133192 = phi i64 [ %.0132, %.lr.ph197 ], [ %.2134, %bb.ak ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.1122, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 6 uses
  %.not167 = icmp eq ptr %i.bo, null
  br i1 %.not167, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.1128, i64 %i.bm ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !189
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.br, align 8, !tbaa !189
  %i.bt = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bq, i64 1
  %i.bu = add <2 x i64> %i.bs, %i.bt
  store <2 x i64> %i.bu, ptr %i.br, align 8, !tbaa !189
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bm
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !70
  %i.ca = add i64 %i.bz, %.1130193                ; 3 uses
  %i.cb = add i64 %.1133192, 1                    ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !194
  %i.ce = load i64, ptr %i.bp, align 8, !tbaa !189
  %i.cf = icmp ult i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !153 ; 2 uses
  %.not168 = icmp eq ptr %i.ch, null
  br i1 %.not168, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @hi_sdsfree(ptr noundef nonnull %i.ch) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ci = call ptr @hi_sdsempty() #32
  %i.cj = load ptr, ptr %i.bl, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.bm
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !70
  %i.cq = call ptr @hi_sdscatrepr(ptr noundef %i.ci, ptr noundef %i.cn, i64 noundef %i.cp) #32 ; 2 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !153
  %.not169 = icmp eq ptr %i.cq, null
  br i1 %.not169, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !27
  %fwrite170 = call i64 @fwrite(ptr nonnull @.str.767, i64 35, i64 1, ptr %i.cr) #33 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cs = call i32 @isatty(i32 noundef 1) #32
  %.not171 = icmp eq i32 %i.cs, 0
  br i1 %.not171, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ct = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not172 = icmp eq ptr %i.ct, null
  br i1 %.not172, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !154
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !153
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !189
  br i1 %.not173, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !196
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ @.str.101, %bb.o ]
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.768, double noundef %i.ap, ptr noundef %i.cu, ptr noundef %i.cv, i64 noundef %i.cw, ptr noundef %i.cz) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.m
  %i.db = load i64, ptr %i.bp, align 8, !tbaa !189
  store i64 %i.db, ptr %i.cc, align 8, !tbaa !194
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.h
  %i.dc = urem i64 %i.cb, 1000000
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.de = call i32 @isatty(i32 noundef 1) #32
  %.not174 = icmp eq i32 %i.de, 0
  br i1 %.not174, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.df = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not175 = icmp eq ptr %i.df, null
  br i1 %.not175, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.769, double noundef %i.ap, i64 noundef %i.cb) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.dh = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #32 ; 0 uses
  %i.di = load i64, ptr %3, align 8, !tbaa !186
  %i.dj = mul nsw i64 %i.di, 1000000
  %i.dk = load i64, ptr %i.ak, align 8, !tbaa !187
  %i.dl = add nsw i64 %i.dj, %i.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.dm = sdiv i64 %i.dl, 1000
  %i.dn = add nsw i64 %.1120195, 300
  %i.do = icmp sgt i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.dp = call i32 @isatty(i32 noundef 1) #32
  %.not176 = icmp eq i32 %i.dp, 0
  br i1 %.not176, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dq = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not177 = icmp eq ptr %i.dq, null
  br i1 %.not177, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.dr = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #32 ; 0 uses
  %i.ds = load i64, ptr %2, align 8, !tbaa !186
  %i.dt = mul nsw i64 %i.ds, 1000000
  %i.du = load i64, ptr %i.al, align 8, !tbaa !187
  %i.dv = add nsw i64 %i.dt, %i.du
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.dw = sdiv i64 %i.dv, 1000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  br i1 %.not.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = icmp ult i64 %i.cb, %i.ai
  br i1 %i.dx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dy = uitofp i64 %i.cb to double
  %i.dz = fdiv double %i.dy, %i.aj
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ea = phi double [ 1.000000e+00, %bb.aa ], [ %i.dz, %bb.ab ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %i.eb = call i32 @isatty(i32 noundef 1) #32
  %.not16.i = icmp eq i32 %i.eb, 0
  br i1 %.not16.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not17.i = icmp eq ptr %i.ec, null
  br i1 %.not17.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ed = fmul double %i.ea, 6.000000e+01
  %i.ee = call double @llvm.round.f64(double %i.ed)
  %i.ef = fptosi double %i.ee to i32              ; 2 uses
  %6 = zext nneg i32 %i.ef to i64                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 124, i64 %6, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %6
  store i8 0, ptr %i.eg, align 1, !tbaa !73
  %i.eh = sub nsw i32 60, %i.ef
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.am, i8 45, i64 %i.ei, i1 false)
  %i.ej = getelementptr inbounds i8, ptr %i.am, i64 %i.ei
  store i8 0, ptr %i.ej, align 1, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.red, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.green, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.default_color, i64 6, i1 false)
  %i.ek = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.802, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.am, ptr noundef nonnull %i.e) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %displayKeyStatsProgressbar.exit

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.803, i64 13, i1 false)
  br label %displayKeyStatsProgressbar.exit

displayKeyStatsProgressbar.exit:                  ; preds = %bb.ae, %bb.af
  %i.el = fmul double %i.ea, 1.000000e+02
  %i.em = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.804, double noundef %i.el, ptr noundef nonnull %i.a)
  %i.en = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.805, i64 noundef %i.cb)
  %i.eo = add nsw i32 %i.en, %i.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ep = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  %i.eq = add nsw i32 %i.eo, %i.ep                ; 3 uses
  call void @dictInitIterator(ptr noundef nonnull %5, ptr noundef %i.n) #32
  %i.er = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 3 uses
  %.not178190 = icmp eq ptr %i.er, null
  br i1 %.not178190, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %displayKeyStatsProgressbar.exit
  br i1 %.not173, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ah
  %i.es = phi ptr [ %i.fd, %bb.ah ], [ %i.er, %.lr.ph ]
  %.0118191.us = phi i32 [ %.1.us, %bb.ah ], [ %i.eq, %.lr.ph ] ; 2 uses
  %i.et = call ptr @dictGetVal(ptr noundef nonnull %i.es) #32 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !194 ; 2 uses
  %.not179.us = icmp eq i64 %i.ev, 0
  br i1 %.not179.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !154
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !153
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !196
  %i.fb = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.770, ptr noundef %i.ew, ptr noundef %i.ey, i64 noundef %i.ev, ptr noundef %i.fa)
  %i.fc = add nsw i32 %i.fb, %.0118191.us
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.split.us
  %.1.us = phi i32 [ %i.fc, %bb.ag ], [ %.0118191.us, %.lr.ph.split.us ] ; 2 uses
  %i.fd = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not178.us = icmp eq ptr %i.fd, null
  br i1 %.not178.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !413

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.aj
  %i.fe = phi ptr [ %i.fn, %bb.aj ], [ %i.er, %.lr.ph ]
  %.0118191 = phi i32 [ %.1, %bb.aj ], [ %i.eq, %.lr.ph ] ; 2 uses
  %i.ff = call ptr @dictGetVal(ptr noundef nonnull %i.fe) #32 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !194 ; 2 uses
  %.not179 = icmp eq i64 %i.fh, 0
  br i1 %.not179, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !154
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !153
  %i.fl = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.770, ptr noundef %i.fi, ptr noundef %i.fk, i64 noundef %i.fh, ptr noundef nonnull @.str.101)
  %i.fm = add nsw i32 %i.fl, %.0118191
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.split
  %.1 = phi i32 [ %i.fm, %bb.ai ], [ %.0118191, %.lr.ph.split ] ; 2 uses
  %i.fn = call ptr @dictNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not178 = icmp eq ptr %i.fn, null
  br i1 %.not178, label %._crit_edge, label %.lr.ph.split, !llvm.loop !413

._crit_edge:                                      ; preds = %bb.aj, %bb.ah, %displayKeyStatsProgressbar.exit
  %.0118.lcssa = phi i32 [ %i.eq, %displayKeyStatsProgressbar.exit ], [ %.1.us, %bb.ah ], [ %.1, %bb.aj ]
  call void @dictResetIterator(ptr noundef nonnull %5) #32
  %i.fo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.771, i32 noundef %.0118.lcssa) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.w, %bb.y, %._crit_edge, %bb.g
  %.2134 = phi i64 [ %.1133192, %bb.g ], [ %i.cb, %._crit_edge ], [ %i.cb, %bb.y ], [ %i.cb, %bb.w ] ; 2 uses
  %.2131 = phi i64 [ %.1130193, %bb.g ], [ %i.ca, %._crit_edge ], [ %i.ca, %bb.y ], [ %i.ca, %bb.w ] ; 2 uses
  %.3 = phi i64 [ %.1120195, %bb.g ], [ %i.dw, %._crit_edge ], [ %.1120195, %bb.y ], [ %.1120195, %bb.w ] ; 2 uses
  %i.fp = add i32 %.0123194, 1                    ; 2 uses
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %i.fr = load i64, ptr %i.aw, align 8, !tbaa !46
  %i.fs = icmp ugt i64 %i.fr, %i.fq
  br i1 %i.fs, label %bb.g, label %._crit_edge198, !llvm.loop !414

._crit_edge198:                                   ; preds = %bb.ak, %bb.f
  %.1133.lcssa = phi i64 [ %.0132, %bb.f ], [ %.2134, %bb.ak ] ; 5 uses
  %.1130.lcssa = phi i64 [ %.0129, %bb.f ], [ %.2131, %bb.ak ] ; 4 uses
  %.1120.lcssa = phi i64 [ %.0119, %bb.f ], [ %.3, %bb.ak ]
  %i.ft = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136), align 8, !tbaa !175 ; 2 uses
  %.not = icmp ne i64 %i.ft, 0
  %i.fu = urem i64 %i.ar, 100
  %i.fv = icmp eq i64 %i.fu, 0
  %or.cond182 = select i1 %.not, i1 %i.fv, i1 false
  br i1 %or.cond182, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge198
  %i.fw = trunc i64 %i.ft to i32
  %i.fx = call i32 @usleep(i32 noundef %i.fw) #32 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge198
  call void @freeReplyObject(ptr noundef nonnull %i.aq) #32
  %i.fy = load volatile i32, ptr @force_cancel_loop, align 4, !tbaa !24
  %i.fz = icmp eq i32 %i.fy, 0
  %i.ga = load i64, ptr %i.f, align 8
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = select i1 %i.fz, i1 %i.gb, i1 false
  br i1 %i.gc, label %bb.b, label %bb.an, !llvm.loop !415

bb.an:                                            ; preds = %bb.am
  %i.gd = call i32 @isatty(i32 noundef 1) #32
  %.not150 = icmp eq i32 %i.gd, 0
  br i1 %.not150, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ge = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not151 = icmp eq ptr %i.ge, null
  br i1 %.not151, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gf = call fastcc i32 @displayKeyStatsProgressbar(i64 noundef %.1133.lcssa, i64 noundef %i.ai) ; 0 uses
  call void @dictInitIterator(ptr noundef nonnull %5, ptr noundef %i.n) #32
  %i.gg = call ptr @dictNext(ptr noundef nonnull %5) #32
  %.not152202 = icmp eq ptr %i.gg, null
  br i1 %.not152202, label %._crit_edge206, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.ap, %.lr.ph205
  %.0203 = phi i32 [ %i.gi, %.lr.ph205 ], [ 0, %bb.ap ]
  %i.gh = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  %i.gi = add nsw i32 %i.gh, %.0203               ; 2 uses
  %i.gj = call ptr @dictNext(ptr noundef nonnull %5) #32
  %.not152 = icmp eq ptr %i.gj, null
  br i1 %.not152, label %._crit_edge206, label %.lr.ph205, !llvm.loop !416

._crit_edge206:                                   ; preds = %.lr.ph205, %bb.ap
  %.0.lcssa = phi i32 [ 0, %bb.ap ], [ %i.gi, %.lr.ph205 ]
  call void @dictResetIterator(ptr noundef nonnull %5) #32
  %i.gk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.771, i32 noundef %.0.lcssa) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge206, %bb.ao
  %.not153 = icmp eq ptr %.1122, null
  br i1 %.not153, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @zfree(ptr noundef nonnull %.1122) #32
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not154 = icmp eq ptr %.1128, null
  br i1 %.not154, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @zfree(ptr noundef nonnull %.1128) #32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %puts155 = call i32 @puts(ptr nonnull dereferenceable(1) @str.37) ; 0 uses
  %i.gl = call i32 @isatty(i32 noundef 1) #32
  %.not156 = icmp eq i32 %i.gl, 0
  br i1 %.not156, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.gm = call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not157 = icmp eq ptr %i.gm, null
  br i1 %.not157, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gn = load volatile i32, ptr @force_cancel_loop, align 4, !tbaa !24
  %.not158 = icmp eq i32 %i.gn, 0
  br i1 %.not158, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.773, double noundef %i.ap) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.774, i64 noundef %.1133.lcssa) ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av, %bb.au
end_hunk_3
begin_hunk_4_@clusterManagerFlushNodeConfig:bb.a
  %i.x = shl nsw i64 %i.w, 3                      ; 2 uses
  %i.y = tail call noalias ptr @zmalloc(i64 noundef %i.x) #36 ; 7 uses
  %i.z = tail call noalias ptr @zmalloc(i64 noundef %i.x) #36 ; 6 uses
  store ptr @.str.250, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @.str.251, ptr %i.aa, align 8, !tbaa !40
  store i64 7, ptr %i.z, align 8, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 8, ptr %i.ab, align 8, !tbaa !38
  store ptr null, ptr %1, align 8, !tbaa !40
  %.not48.i = icmp sgt i32 %i.u, 0
  br i1 %.not48.i, label %.lr.ph.i, label %clusterManagerAddSlots.exit.thread

clusterManagerAddSlots.exit.thread:               ; preds = %bb.e
  tail call void @zfree(ptr noundef nonnull %i.z) #32
  tail call void @zfree(ptr noundef nonnull %i.y) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.s

.lr.ph.i:                                         ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 4 uses
  %.050.i = phi i32 [ 2, %.lr.ph.i ], [ %.1.i, %bb.m ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !73
  %.not45.i = icmp eq i8 %i.ae, 0
  br i1 %.not45.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call ptr @hi_sdsfromlonglong(i64 noundef %indvars.iv.i) #32 ; 6 uses
  %i.ag = sext i32 %.050.i to i64                 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ag
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !40
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !73
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 7
  switch i32 %i.al, label %hi_sdslen.exit.i [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = lshr i32 %i.ak, 3
  %i.an = zext nneg i32 %i.am to i64
  br label %hi_sdslen.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds i8, ptr %i.af, i64 -3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !73
  %i.aq = zext i8 %i.ap to i64
  br label %hi_sdslen.exit.i

bb.j:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 -5
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !75
  %i.at = zext i16 %i.as to i64
  br label %hi_sdslen.exit.i

bb.k:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds i8, ptr %i.af, i64 -9
  %i.av = load i32, ptr %i.au, align 1, !tbaa !24
  %i.aw = zext i32 %i.av to i64
  br label %hi_sdslen.exit.i

bb.l:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds i8, ptr %i.af, i64 -17
  %i.ay = load i64, ptr %i.ax, align 1, !tbaa !38
  br label %hi_sdslen.exit.i

hi_sdslen.exit.i:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.0.i.i = phi i64 [ %i.ay, %bb.l ], [ %i.an, %bb.h ], [ %i.aq, %bb.i ], [ %i.at, %bb.j ], [ %i.aw, %bb.k ], [ 0, %bb.g ]
  %i.az = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ag
  store i64 %.0.i.i, ptr %i.az, align 8, !tbaa !38
  %i.ba = add nsw i32 %.050.i, 1
  br label %bb.m

bb.m:                                             ; preds = %hi_sdslen.exit.i, %bb.f
  %.1.i = phi i32 [ %i.ba, %hi_sdslen.exit.i ], [ %.050.i, %bb.f ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bb = icmp samesign ult i64 %indvars.iv.i, 16383
  %.not.i = icmp slt i32 %.1.i, %i.v
  %or.cond.i = select i1 %i.bb, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %._crit_edge.i, !llvm.loop !464

._crit_edge.i:                                    ; preds = %bb.m
  %i.bc = icmp eq i32 %.1.i, 2
  br i1 %i.bc, label %clusterManagerCheckRedisReply.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.bd = load ptr, ptr %0, align 8, !tbaa !87
  %i.be = tail call i32 @redisAppendCommandArgv(ptr noundef %i.bd, i32 noundef %i.v, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) #32 ; 0 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !87
  %i.bg = call i32 @redisGetReply(ptr noundef %i.bf, ptr noundef nonnull %i.a) #32
  %.not46.i = icmp eq i32 %i.bg, 0
  br i1 %.not46.i, label %bb.o, label %clusterManagerCheckRedisReply.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !39  ; 6 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %clusterManagerCheckRedisReply.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !50
  %.not19.i.i = icmp eq i32 %i.bi, 6
  br i1 %.not19.i.i, label %.critedge18.i.i, label %clusterManagerCheckRedisReply.exit.i

.critedge18.i.i:                                  ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !70
  %i.bl = add i64 %i.bk, 1
  %i.bm = call noalias ptr @zmalloc(i64 noundef %i.bl) #36 ; 2 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !51
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !70
  %i.bq = add i64 %i.bp, 1
  %i.br = call i64 @redis_strlcpy(ptr noundef %i.bm, ptr noundef %i.bo, i64 noundef %i.bq) #32 ; 0 uses
  br label %clusterManagerCheckRedisReply.exit.i

clusterManagerCheckRedisReply.exit.i:             ; preds = %.critedge18.i.i, %bb.p, %bb.o, %bb.n, %._crit_edge.i
  %.044.i = phi ptr [ null, %bb.n ], [ null, %._crit_edge.i ], [ null, %bb.o ], [ %i.bh, %bb.p ], [ %i.bh, %.critedge18.i.i ] ; 2 uses
  %.not33 = phi i1 [ true, %bb.n ], [ true, %._crit_edge.i ], [ true, %bb.o ], [ false, %bb.p ], [ true, %.critedge18.i.i ]
  call void @zfree(ptr noundef nonnull %i.z) #32
  %wide.trip.count.i = zext nneg i32 %i.v to i64
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %.lr.ph52.i, %clusterManagerCheckRedisReply.exit.i
  %indvars.iv55.i = phi i64 [ 2, %clusterManagerCheckRedisReply.exit.i ], [ %indvars.iv.next56.i, %.lr.ph52.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv55.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !40
  call void @hi_sdsfree(ptr noundef %i.bt) #32
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge53.i, label %.lr.ph52.i, !llvm.loop !465

._crit_edge53.i:                                  ; preds = %.lr.ph52.i
  call void @zfree(ptr noundef nonnull %i.y) #32
  %.not47.i = icmp eq ptr %.044.i, null
  br i1 %.not47.i, label %clusterManagerAddSlots.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge53.i
  call void @freeReplyObject(ptr noundef nonnull %.044.i) #32
  br label %clusterManagerAddSlots.exit

clusterManagerAddSlots.exit:                      ; preds = %._crit_edge53.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br i1 %.not33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %clusterManagerAddSlots.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !40
  %.not34 = icmp eq ptr %i.bu, null
  br i1 %.not34, label %.critedge.thread49, label %bb.s

bb.s:                                             ; preds = %clusterManagerAddSlots.exit.thread, %bb.r, %clusterManagerAddSlots.exit
  br label %.critedge.thread49

.critedge.thread49:                               ; preds = %bb.s, %bb.r
  %.1.ph = phi i32 [ 1, %bb.r ], [ 0, %bb.s ]
  store i32 0, ptr %i.b, align 8, !tbaa !101
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !101
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %.critedge.thread43
  %.248 = phi i32 [ 0, %.critedge.thread43 ], [ 1, %.critedge ]
  tail call void @freeReplyObject(ptr noundef nonnull %i.g) #32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %.critedge.thread49, %bb.t, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ %.248, %bb.t ], [ %.1.ph, %.critedge.thread49 ], [ 0, %bb.c ]
  ret i32 %.027
}

declare i32 @anetResolve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @sleep(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @clusterManagerWaitForClusterJoin() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.listIter, align 8           ; 5 uses
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %2 = alloca %struct.dictIterator, align 8       ; 6 uses
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45) ; 0 uses
  %i.a = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !90
  %i.d = uitofp i64 %i.c to float
  %i.e = fmul nnan float %i.d, 1.500000e-01
  %i.f = fptosi float %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 20
  %i.h = tail call fastcc i32 @clusterManagerIsConfigConsistent()
  %.not47 = icmp eq i32 %i.h, 0
  br i1 %.not47, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %bb.a, %.critedge
  %.048 = phi i32 [ %.1, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %putchar25 = call i32 @putchar(i32 46)          ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.j = call i32 @fflush(ptr noundef %i.i)       ; 0 uses
  %i.k = call i32 @sleep(i32 noundef 1) #32       ; 0 uses
  %i.l = add nsw i32 %.048, 1
  %.not26 = icmp slt i32 %.048, %i.g
  br i1 %.not26, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph50
  %i.m = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = call ptr @dictCreate(ptr noundef nonnull @clusterManagerLinkDictType) #32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #32
  %i.p = load ptr, ptr @cluster_manager.0, align 8, !tbaa !78
  call void @listRewind(ptr noundef %i.p, ptr noundef nonnull %0) #32
  %i.q = call ptr @listNext(ptr noundef nonnull %0) #32 ; 2 uses
  %.not37.i = icmp eq ptr %i.q, null
  br i1 %.not37.i, label %clusterManagerGetLinkStatus.exit, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %bb.c, %clusterManagerGetDisconnectedLinks.exit.thread.i
  %i.r = phi ptr [ %i.cs, %clusterManagerGetDisconnectedLinks.exit.thread.i ], [ %i.q, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99   ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !87
  %i.v = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.u, ptr noundef nonnull @.str.207) #32 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %clusterManagerGetDisconnectedLinks.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph39.i
  %i.w = load i32, ptr %i.v, align 8, !tbaa !50
  %.not19.i.i.i = icmp eq i32 %i.w, 6
  br i1 %.not19.i.i.i, label %clusterManagerGetDisconnectedLinks.exit.thread33.i, label %clusterManagerCheckRedisReply.exit.i.i

clusterManagerGetDisconnectedLinks.exit.thread33.i: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.y, i32 noundef %i.aa, ptr noundef %i.ac)
  call void @freeReplyObject(ptr noundef nonnull %i.v) #32
  br label %clusterManagerGetDisconnectedLinks.exit.thread.i

clusterManagerCheckRedisReply.exit.i.i:           ; preds = %bb.d
  %i.ad = call ptr @listCreate() #32              ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %strchr121.i.i = call ptr @strchr(ptr nonnull dereferenceable(1) %i.af, i32 10) ; 2 uses
  %.not76122.i.i = icmp eq ptr %strchr121.i.i, null
  br i1 %.not76122.i.i, label %clusterManagerGetDisconnectedLinks.exit.i, label %.lr.ph125.i.i

.lr.ph125.i.i:                                    ; preds = %clusterManagerCheckRedisReply.exit.i.i, %bb.q
  %strchr124.i.i = phi ptr [ %strchr.i.i, %bb.q ], [ %strchr121.i.i, %clusterManagerCheckRedisReply.exit.i.i ] ; 2 uses
  %.072123.i.i = phi ptr [ %i.ag, %bb.q ], [ %i.af, %clusterManagerCheckRedisReply.exit.i.i ] ; 10 uses
  store i8 0, ptr %strchr124.i.i, align 1, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %strchr124.i.i, i64 1 ; 2 uses
  %i.ah = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.072123.i.i, i32 noundef 32) #34 ; 3 uses
  %.not78109.i.i = icmp eq ptr %i.ah, null
  br i1 %.not78109.i.i, label %.thread89.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph125.i.i
  store i8 0, ptr %i.ah, align 1, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 9 uses
  %i.aj = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ai, i32 noundef 32) #34 ; 3 uses
  %.not78.i.i = icmp eq ptr %i.aj, null
  br i1 %.not78.i.i, label %.thread89.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.aj, align 1, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 8 uses
  %i.al = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ak, i32 noundef 32) #34 ; 3 uses
  %.not78.1.i.i = icmp eq ptr %i.al, null
  br i1 %.not78.1.i.i, label %.thread89.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.al, align 1, !tbaa !73
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.am, i32 noundef 32) #34 ; 3 uses
  %.not78.2.i.i = icmp eq ptr %i.an, null
  br i1 %.not78.2.i.i, label %.thread89.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.an, align 1, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ao, i32 noundef 32) #34 ; 3 uses
  %.not78.3.i.i = icmp eq ptr %i.ap, null
  br i1 %.not78.3.i.i, label %.thread89.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ap, align 1, !tbaa !73
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aq, i32 noundef 32) #34 ; 3 uses
  %.not78.4.i.i = icmp eq ptr %i.ar, null
  br i1 %.not78.4.i.i, label %.thread89.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.ar, align 1, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.as, i32 noundef 32) #34 ; 3 uses
  %.not78.5.i.i = icmp eq ptr %i.at, null
  br i1 %.not78.5.i.i, label %.thread89.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.at, align 1, !tbaa !73
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 4 uses
  %i.av = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.au, i32 noundef 32) #34 ; 3 uses
  %.not78.6.i.i = icmp eq ptr %i.av, null
  br i1 %.not78.6.i.i, label %.thread89.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.av, align 1, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aw, i32 noundef 32) #34 ; 2 uses
  %.not78.7.i.i = icmp eq ptr %i.ax, null
  br i1 %.not78.7.i.i, label %.thread89.i.i, label %.thread89.loopexit.i.i

.thread89.loopexit.i.i:                           ; preds = %bb.l
  store i8 0, ptr %i.ax, align 1, !tbaa !73
  br label %.thread89.i.i

.thread89.i.i:                                    ; preds = %.thread89.loopexit.i.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %.lr.ph125.i.i
  %.063106.i.i = phi ptr [ %.072123.i.i, %.thread89.loopexit.i.i ], [ null, %.lr.ph125.i.i ], [ %.072123.i.i, %bb.l ], [ %.072123.i.i, %bb.k ], [ %.072123.i.i, %bb.j ], [ %.072123.i.i, %bb.i ], [ %.072123.i.i, %bb.h ], [ %.072123.i.i, %bb.g ], [ %.072123.i.i, %bb.f ], [ %.072123.i.i, %bb.e ] ; 2 uses
  %.059104.i.i = phi ptr [ %i.ai, %.thread89.loopexit.i.i ], [ null, %.lr.ph125.i.i ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ], [ %i.ai, %bb.g ], [ %i.ai, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.055102.i.i = phi ptr [ %i.ak, %.thread89.loopexit.i.i ], [ null, %.lr.ph125.i.i ], [ %i.ak, %bb.l ], [ %i.ak, %bb.k ], [ %i.ak, %bb.j ], [ %i.ak, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 5 uses
  %i.ay = phi ptr [ %i.au, %.thread89.loopexit.i.i ], [ null, %.lr.ph125.i.i ], [ %i.au, %bb.l ], [ %i.au, %bb.k ], [ null, %bb.j ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.az = insertelement <4 x ptr> poison, ptr %i.ay, i64 0
  %i.ba = insertelement <4 x ptr> %i.az, ptr %.063106.i.i, i64 1
  %i.bb = insertelement <4 x ptr> %i.ba, ptr %.059104.i.i, i64 2
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %.055102.i.i, i64 3
  %i.bd = icmp eq <4 x ptr> %i.bc, splat (ptr null)
  %i.be = bitcast <4 x i1> %i.bd to i4
  %.not74 = icmp eq i4 %i.be, 0
  br i1 %.not74, label %bb.m, label %bb.q, !llvm.loop !466

bb.m:                                             ; preds = %.thread89.i.i
  %i.bf = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.055102.i.i, ptr noundef nonnull dereferenceable(1) @.str.209) #34
  %.not79.i.i = icmp eq ptr %i.bf, null
  br i1 %.not79.i.i, label %bb.n, label %bb.q, !llvm.loop !466

bb.n:                                             ; preds = %bb.m
  %i.bg = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.055102.i.i, ptr noundef nonnull dereferenceable(1) @.str.213) #34
  %.not80.i.i = icmp eq ptr %i.bg, null
  br i1 %.not80.i.i, label %bb.o, label %.thread93.i.i

.thread93.i.i:                                    ; preds = %bb.n
  %i.bh = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.055102.i.i, ptr noundef nonnull dereferenceable(1) @.str.263) #34
  %i.bi = icmp ne ptr %i.bh, null
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) @.str.213) #34
  %i.bk = icmp ne ptr %i.bj, null
  %i.bl = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.055102.i.i, ptr noundef nonnull dereferenceable(1) @.str.263) #34
  %i.bm = icmp ne ptr %i.bl, null                 ; 2 uses
  %or.cond7.i.i = select i1 %i.bk, i1 true, i1 %i.bm
  br i1 %or.cond7.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.thread93.i.i
  %i.bn = phi i1 [ %i.bi, %.thread93.i.i ], [ %i.bm, %bb.o ]
  %i.bo = zext i1 %i.bn to i32
  %i.bp = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #36 ; 5 uses
  %i.bq = call ptr @hi_sdsnew(ptr noundef nonnull %.063106.i.i) #32
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !473
  %i.br = call ptr @hi_sdsnew(ptr noundef nonnull %.059104.i.i) #32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !474
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 0, ptr %i.bt, align 8, !tbaa !475
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  store i32 %i.bo, ptr %i.bu, align 4, !tbaa !476
  %i.bv = call ptr @listAddNodeTail(ptr noundef %i.ad, ptr noundef nonnull %i.bp) #32 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %.thread89.i.i
  %strchr.i.i = call ptr @strchr(ptr nonnull dereferenceable(1) %i.ag, i32 10) ; 2 uses
  %.not76.i.i = icmp eq ptr %strchr.i.i, null
  br i1 %.not76.i.i, label %clusterManagerGetDisconnectedLinks.exit.i, label %.lr.ph125.i.i

clusterManagerGetDisconnectedLinks.exit.i:        ; preds = %bb.q, %clusterManagerCheckRedisReply.exit.i.i
  call void @freeReplyObject(ptr noundef nonnull %i.v) #32
  %.not28.i = icmp eq ptr %i.ad, null
  br i1 %.not28.i, label %clusterManagerGetDisconnectedLinks.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %clusterManagerGetDisconnectedLinks.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @listRewind(ptr noundef nonnull %i.ad, ptr noundef nonnull %1) #32
  %i.bw = call ptr @listNext(ptr noundef nonnull %1) #32 ; 2 uses
  %.not2936.i = icmp eq ptr %i.bw, null
  br i1 %.not2936.i, label %._crit_edge.i, label %.lr.ph.i

end_hunk_4
begin_hunk_5_@getKeySizes:bb.a
  br label %bb.j

bb.j:                                             ; preds = %hi_sdslen.exit.us, %.lr.ph.split.us.split
  %i.bv = phi i64 [ %.pre, %hi_sdslen.exit.us ], [ %i.ap, %.lr.ph.split.us.split ] ; 3 uses
  %i.bw = add i32 %.062.us, 1                     ; 2 uses
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %.lr.ph.split.us.split, label %.preheader, !llvm.loop !564

.preheader:                                       ; preds = %bb.j, %bb.c, %bb.m
  %i.bz = phi i64 [ %i.al, %bb.c ], [ %i.cv, %bb.m ], [ %i.bv, %bb.j ] ; 2 uses
  %.not68 = icmp eq i64 %i.bz, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph64

.lr.ph64:                                         ; preds = %.preheader
  %i.ca = icmp ne i32 %3, 0                       ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.cc = phi i64 [ %i.cv, %bb.m ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.cd = phi i64 [ %i.cx, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.062 = phi i32 [ %i.cw, %bb.m ], [ 0, %.lr.ph ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39 ; 2 uses
  %.not60 = icmp eq ptr %i.cf, null
  br i1 %.not60, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !195
  %.not67 = icmp eq ptr %i.ch, null
  br i1 %.not67, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !195
  store ptr %i.ci, ptr %i.b, align 16, !tbaa !40
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cd ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !51
  store ptr %i.cn, ptr %i.j, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !195
  %i.cp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.co) #34
  store i64 %i.cp, ptr %i.c, align 16, !tbaa !38
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !70
  store i64 %i.cs, ptr %i.l, align 8, !tbaa !38
  %i.ct = load ptr, ptr @context, align 8, !tbaa !148
  %i.cu = call i32 @redisAppendCommandArgv(ptr noundef %i.ct, i32 noundef 2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %.pre73 = load i64, ptr %i.h, align 8, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split, %bb.k
  %i.cv = phi i64 [ %.pre73, %bb.l ], [ %i.cc, %.lr.ph.split ], [ %i.cc, %bb.k ] ; 3 uses
  %i.cw = add i32 %.062, 1                        ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph.split, label %.preheader, !llvm.loop !564

bb.n:                                             ; preds = %.lr.ph64, %bb.y
  %i.cz = phi i64 [ %i.bz, %.lr.ph64 ], [ %i.em, %bb.y ]
  %i.da = phi i64 [ 0, %.lr.ph64 ], [ %i.eo, %bb.y ] ; 6 uses
  %.163 = phi i32 [ 0, %.lr.ph64 ], [ %i.en, %bb.y ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !39 ; 2 uses
  %.not = icmp eq ptr %i.dc, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !195
  %i.df = icmp ne ptr %i.de, null
  %or.cond3 = or i1 %i.ca, %i.df
  br i1 %or.cond3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.da
  store i64 0, ptr %i.dg, align 8, !tbaa !189
  br label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.dh = load ptr, ptr @context, align 8, !tbaa !148
  %i.di = call i32 @redisGetReply(ptr noundef %i.dh, ptr noundef nonnull %i.a) #32
  %.not58 = icmp eq i32 %i.di, 0
  br i1 %.not58, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.dk = load ptr, ptr %i.cb, align 8, !tbaa !47
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.da
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !49
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !51
  %i.dp = load ptr, ptr @context, align 8, !tbaa !148 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !129
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.799, ptr noundef %i.do, i32 noundef %i.dr, ptr noundef nonnull %i.ds) #39 ; 0 uses
  call void @exit(i32 noundef 1) #40
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !49  ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !50
  %.not59 = icmp eq i32 %i.dv, 3
  br i1 %.not59, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !27
  br i1 %i.ca, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = load ptr, ptr %i.db, align 8, !tbaa !39
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !195
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ea = phi ptr [ %i.dz, %bb.u ], [ @.str.801, %bb.t ]
  %i.eb = load ptr, ptr %i.cb, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.da
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !51
  %i.eg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.800, ptr noundef %i.ea, ptr noundef %i.ef) #39 ; 0 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.da
  store i64 0, ptr %i.eh, align 8, !tbaa !189
  %.pre74 = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !132
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.da
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !189
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.el = phi ptr [ %.pre74, %bb.v ], [ %i.du, %bb.w ]
  call void @freeReplyObject(ptr noundef %i.el) #32
  %.pre75 = load i64, ptr %i.h, align 8, !tbaa !46
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %i.em = phi i64 [ %.pre75, %bb.x ], [ %i.cz, %bb.p ] ; 2 uses
  %i.en = add i32 %.163, 1                        ; 2 uses
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp ugt i64 %i.em, %i.eo
  br i1 %i.ep, label %bb.n, label %._crit_edge, !llvm.loop !565

._crit_edge:                                      ; preds = %bb.y, %bb.a, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @displayKeyStatsProgressbar(i64 noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca [2 x [128 x i8]], align 16        ; 6 uses
  %i.c = alloca [6 x i8], align 1                 ; 4 uses
  %i.d = alloca [6 x i8], align 1                 ; 4 uses
  %i.e = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %0, %1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = uitofp i64 %0 to double
  %i.h = uitofp i64 %1 to double
  %i.i = fdiv double %i.g, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.j = phi double [ 1.000000e+00, %bb.b ], [ %i.i, %bb.c ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.k = tail call i32 @isatty(i32 noundef 1) #32
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @getenv(ptr noundef nonnull @.str) #32
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = fmul double %i.j, 6.000000e+01
  %i.n = tail call double @llvm.round.f64(double %i.m)
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %2 = zext nneg i32 %i.o to i64                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 124, i64 %2, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %2
  store i8 0, ptr %i.p, align 1, !tbaa !73
  %i.q = sub nsw i32 60, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.s = sext i32 %i.q to i64                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.r, i8 45, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.red, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.green, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) @__const.displayKeyStatsProgressbar.default_color, i64 6, i1 false)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.802, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.r, ptr noundef nonnull %i.e) #32 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.803, i64 13, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = fmul double %i.j, 1.000000e+02
  %i.w = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.804, double noundef %i.v, ptr noundef nonnull %i.a)
  %i.x = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.805, i64 noundef %0)
  %i.y = add nsw i32 %i.x, %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret i32 %i.y
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @displayKeyStats(i64 noundef %0, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5, i64 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %9 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %10 = alloca %struct.listIter, align 8          ; 5 uses
  %i.d = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.e = tail call fastcc i32 @displayKeyStatsProgressbar(i64 noundef %0, i64 noundef %1)
  %i.f = call ptr @bytesToHuman(ptr noundef nonnull %i.d, i64 noundef 256, i64 noundef %2) ; 0 uses
  %i.g = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.817, ptr noundef nonnull %i.d)
  %i.h = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  %i.i = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.818, i64 noundef %6) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @listRewind(ptr noundef nonnull %5, ptr noundef nonnull %10) #32
  %i.j = call ptr @listNext(ptr noundef nonnull %10) #32 ; 2 uses
  %.not11.i = icmp eq ptr %i.j, null
  br i1 %.not11.i, label %displayKeyStatsTopSizes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.k = phi ptr [ %i.v, %.lr.ph.i ], [ %i.j, %bb.a ]
  %.013.i = phi i32 [ %i.u, %.lr.ph.i ], [ %i.i, %bb.a ]
  %.0912.i = phi i32 [ %i.n, %.lr.ph.i ], [ 0, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99   ; 3 uses
  %i.n = add nuw nsw i32 %.0912.i, 1              ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !192
  %i.p = call ptr @bytesToHuman(ptr noundef nonnull %i.c, i64 noundef 32, i64 noundef %i.o) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !193
  %i.t = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.819, i32 noundef %i.n, ptr noundef nonnull %i.c, ptr noundef nonnull %i.q, ptr noundef %i.s)
  %i.u = add nsw i32 %i.t, %.013.i                ; 2 uses
  %i.v = call ptr @listNext(ptr noundef nonnull %10) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %displayKeyStatsTopSizes.exit, label %.lr.ph.i, !llvm.loop !566

displayKeyStatsTopSizes.exit:                     ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %i.i, %bb.a ], [ %i.u, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.w = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.x = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.820) ; 2 uses
  call void @dictInitIterator(ptr noundef nonnull %9, ptr noundef %3) #32
  %i.y = call ptr @dictNext(ptr noundef nonnull %9) #32 ; 2 uses
  %.not11.i16 = icmp eq ptr %i.y, null
  br i1 %.not11.i16, label %displayKeyStatsSizeType.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %displayKeyStatsTopSizes.exit, %bb.c
  %i.z = phi ptr [ %i.aj, %bb.c ], [ %i.y, %displayKeyStatsTopSizes.exit ]
  %.012.i = phi i32 [ %.1.i, %bb.c ], [ %i.x, %displayKeyStatsTopSizes.exit ] ; 2 uses
  %i.aa = call ptr @dictGetVal(ptr noundef nonnull %i.z) #32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !153 ; 2 uses
  %.not10.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i17
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !154
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !194
  %i.ag = call ptr @bytesToHuman(ptr noundef nonnull %i.b, i64 noundef 256, i64 noundef %i.af) ; 0 uses
  %i.ah = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.821, ptr noundef %i.ad, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.b)
  %i.ai = add nsw i32 %i.ah, %.012.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i17
  %.1.i = phi i32 [ %i.ai, %bb.b ], [ %.012.i, %.lr.ph.i17 ] ; 2 uses
  %i.aj = call ptr @dictNext(ptr noundef nonnull %9) #32 ; 2 uses
  %.not.i18 = icmp eq ptr %i.aj, null
  br i1 %.not.i18, label %displayKeyStatsSizeType.exit, label %.lr.ph.i17, !llvm.loop !567

displayKeyStatsSizeType.exit:                     ; preds = %bb.c, %displayKeyStatsTopSizes.exit
  %.0.lcssa.i19 = phi i32 [ %i.x, %displayKeyStatsTopSizes.exit ], [ %.1.i, %bb.c ]
  call void @dictResetIterator(ptr noundef nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ak = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.34)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.al = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.822) ; 2 uses
  call void @dictInitIterator(ptr noundef nonnull %8, ptr noundef %4) #32
  %i.am = call ptr @dictNext(ptr noundef nonnull %8) #32 ; 2 uses
  %.not14.i = icmp eq ptr %i.am, null
  br i1 %.not14.i, label %displayKeyStatsLengthType.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %displayKeyStatsSizeType.exit, %bb.h
  %i.an = phi ptr [ %i.bc, %bb.h ], [ %i.am, %displayKeyStatsSizeType.exit ]
  %.015.i = phi i32 [ %.1.i21, %bb.h ], [ %i.al, %displayKeyStatsSizeType.exit ] ; 2 uses
  %i.ao = call ptr @dictGetVal(ptr noundef nonnull %i.an) #32 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !153
  %.not12.i = icmp eq ptr %i.aq, null
  br i1 %.not12.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !196 ; 2 uses
  %i.at = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(6) @.str.101) #34
  %.not13.i = icmp eq i32 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br i1 %.not13.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = call ptr @bytesToHuman(ptr noundef nonnull %i.a, i64 noundef 256, i64 noundef %i.av) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.823, i64 noundef %i.av, ptr noundef nonnull %i.as) #32 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !154
  %i.az = load ptr, ptr %i.ap, align 8, !tbaa !153
  %i.ba = call i32 (ptr, ...) @cleanPrintfln(ptr noundef nonnull @.str.824, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef nonnull %i.a)
  %i.bb = add nsw i32 %i.ba, %.015.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i20
  %.1.i21 = phi i32 [ %i.bb, %bb.g ], [ %.015.i, %.lr.ph.i20 ] ; 2 uses
  %i.bc = call ptr @dictNext(ptr noundef nonnull %8) #32 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bc, null
  br i1 %.not.i22, label %displayKeyStatsLengthType.exit, label %.lr.ph.i20, !llvm.loop !568

displayKeyStatsLengthType.exit:                   ; preds = %bb.h, %displayKeyStatsSizeType.exit
  %.0.lcssa.i23 = phi i32 [ %i.al, %displayKeyStatsSizeType.exit ], [ %.1.i21, %bb.h ]
  call void @dictResetIterator(ptr noundef nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %displayKeyStatsLengthType.exit
  %i.bd = add nsw i32 %i.g, %i.e
  %i.be = add nsw i32 %i.bd, %i.h
  %i.bf = add nsw i32 %i.be, %.0.lcssa.i
  %i.bg = add nsw i32 %i.bf, %i.w
  %i.bh = add nsw i32 %i.bg, %.0.lcssa.i19
  %i.bi = add nsw i32 %i.bh, %i.ak
  %i.bj = add nsw i32 %i.bi, %.0.lcssa.i23
  %i.bk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.771, i32 noundef %i.bj) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %displayKeyStatsLengthType.exit
  %i.bl = load ptr, ptr @stdout, align 8, !tbaa !27
  %i.bm = call i32 @fflush(ptr noundef %i.bl)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  ret void
}

declare ptr @listInsertNode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @hdr_iter_percentile_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare zeroext i1 @hdr_iter_next(ptr noundef) local_unnamed_addr #9

declare i32 @redisAppendCommand(ptr noundef, ptr noundef, ...) local_unnamed_addr #9
end_hunk_5
