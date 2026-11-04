Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uperf?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
begin_hunk_0_@_ZN9UPerfTest4initEP7UOptioniR10UErrorCode:bb.a
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext nneg i32 %2 to i64
  %i.o = mul nuw nsw i64 %i.n, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr nonnull align 8 getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 520), i64 %i.o, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load i32, ptr %i.h, align 8, !tbaa !19
  %i.q = icmp eq i32 %i.p, 1
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 34), align 2
  %i.s = icmp ne i8 %i.r, 0
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 74), align 2
  %i.u = icmp ne i8 %i.t, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.u
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %3, align 4, !tbaa !37
  br label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 114), align 2, !tbaa !50
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.w, align 4, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 154), align 2, !tbaa !50
  %.not23 = icmp eq i8 %i.x, 0
  br i1 %.not23, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 128), align 16, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.y, ptr %i.z, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 194), align 2, !tbaa !50
  %.not24 = icmp eq i8 %i.aa, 0
  br i1 %.not24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 168), align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 234), align 2, !tbaa !50
  %.not25 = icmp eq i8 %i.ad, 0
  br i1 %.not25, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.ae, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 274), align 2, !tbaa !50
  %.not26 = icmp eq i8 %i.af, 0
  br i1 %.not26, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 248), align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 314), align 2, !tbaa !50
  %.not27 = icmp eq i8 %i.ai, 0
  br i1 %.not27, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 288), align 16, !tbaa !51
  %i.ak = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.aj, ptr noundef null, i32 noundef 10) #22, !inline_history !48
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.al, ptr %i.am, align 8, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 354), align 2, !tbaa !50
  %.not28 = icmp eq i8 %i.an, 0
  br i1 %.not28, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 328), align 8, !tbaa !51
  %i.ap = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.ao, ptr noundef null, i32 noundef 10) #22, !inline_history !48
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !31
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 394), align 2, !tbaa !50
  %.not30 = icmp eq i8 %i.as, 0
  br i1 %.not30, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %3, align 4, !tbaa !37
  br label %bb.ao

bb.v:                                             ; preds = %bb.s
  %i.at = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 394), align 2, !tbaa !50
  %.not29 = icmp eq i8 %i.at, 0
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 368), align 16, !tbaa !51
  %i.av = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.au, ptr noundef null, i32 noundef 10) #22, !inline_history !48
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !32
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 1000, ptr %i.ay, align 4, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.t
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 434), align 2, !tbaa !50
  %.not31 = icmp eq i8 %i.az, 0
  br i1 %.not31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 1, ptr %i.ba, align 4, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 0, ptr %i.bb, align 1, !tbaa !52
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 474), align 2, !tbaa !50
  %.not32 = icmp eq i8 %i.bc, 0
  br i1 %.not32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 1, ptr %i.bd, align 1, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 0, ptr %i.be, align 4, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 514), align 2, !tbaa !50
  %.not33 = icmp eq i8 %i.bf, 0
  br i1 %.not33, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !39
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25 ; 2 uses
  %.not34 = icmp eq ptr %i.bj, null
  br i1 %.not34, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.bm = call ptr @ucbuf_resolveFileName(ptr noundef %i.bl, ptr noundef nonnull %i.bj, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !39
  %i.bo = sext i32 %i.bn to i64
  %i.bp = call noalias ptr @uprv_malloc_78(i64 noundef %i.bo) #23 ; 3 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !34
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 7, ptr %3, align 4, !tbaa !37
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.br = load i32, ptr %i.b, align 4, !tbaa !37
  %i.bs = icmp eq i32 %i.br, 15
  br i1 %i.bs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.b, align 4, !tbaa !37
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !25
  %i.bv = call ptr @ucbuf_resolveFileName(ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %4 = icmp slt i32 %i.bw, 1
  br i1 %4, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.bw, ptr %3, align 4, !tbaa !37
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = call ptr @ucbuf_open(ptr noundef %i.bx, ptr noundef nonnull %i.by, i8 noundef signext 1, i8 noundef signext 0, ptr noundef nonnull %3)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !22
  %i.cb = load i32, ptr %3, align 4, !tbaa !37    ; 2 uses
  %5 = icmp slt i32 %i.cb, 1
  br i1 %5, label %.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cc = load ptr, ptr %i.bi, align 8, !tbaa !25
  %i.cd = call ptr @u_errorName_78(i32 noundef %i.cb)
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %i.cc, ptr noundef %i.cd) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.u, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9UPerfTestC2EiPPKcP7UOptioniS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 12), (16, 57), (64, 84), (88, 101), (104, 118), (120, 132), (136, 144)) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV9UPerfTest, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @.str.1, ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 1, ptr %i.k, align 4, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.l, i8 0, i64 14, i1 false)
  store i32 1, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.n, align 4, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.o, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.p, align 8, !tbaa !33
  tail call void @_ZN9UPerfTest4initEP7UOptioniR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %6)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare i32 @u_parseArgs(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @ucbuf_resolveFileName(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #6

declare ptr @ucbuf_open(ptr noundef, ptr noundef, i8 noundef signext, i8 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare ptr @u_errorName_78(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN9UPerfTest8getLinesER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !37
  %2 = icmp slt i32 %i.b, 1
  br i1 %2, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(640000) ptr @_Znam(i64 noundef 640000) #24
  store ptr %i.e, ptr %i.c, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 0, ptr %i.f, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.i = call ptr @ucbuf_readline(ptr noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %i.k = phi ptr [ %i.an, %bb.h ], [ %i.i, %bb.c ]
  %.01424 = phi i32 [ %.1, %bb.h ], [ 40000, %bb.c ] ; 4 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !37
  %3 = icmp slt i32 %i.l, 1
  br i1 %3, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i32 %i.m, 0
  %i.p = shl nsw i64 %i.n, 1
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #24 ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.t = load i32, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.u ; 2 uses
  store ptr %i.r, ptr %i.v, align 8, !tbaa !55
  %i.w = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !56
  %i.y = shl nsw i32 %i.w, 1
  %i.z = sext i32 %i.y to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.r, ptr nonnull align 2 %i.k, i64 %i.z, i1 false)
  %i.aa = add nsw i32 %i.t, 1                     ; 2 uses
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !28
  store i32 0, ptr %i.a, align 4, !tbaa !39
  %.not23 = icmp slt i32 %i.aa, %.01424
  br i1 %.not23, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = add nsw i32 %.01424, 40000              ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i32 %.01424, -40000
  %i.ae = shl nsw i64 %i.ac, 4
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #24 ; 2 uses
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !27  ; 3 uses
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !28
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  %i.al = icmp eq ptr %i.ah, null
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.1 = phi i32 [ %i.ab, %bb.g ], [ %.01424, %bb.d ]
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.an = call ptr @ucbuf_readline(ptr noundef %i.am, ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %._crit_edge, label %.lr.ph, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.h, %.lr.ph, %bb.c
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.4 = phi ptr [ %i.ap, %._crit_edge ], [ null, %bb.a ], [ %i.d, %bb.b ]
  ret ptr %.4
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare ptr @ucbuf_readline(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN9UPerfTest9getBufferERiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !37
  %3 = icmp slt i32 %i.a, 1
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = tail call i32 @ucbuf_size(ptr noundef %i.c) ; 2 uses
  store i32 %i.d, ptr %1, align 4, !tbaa !39
  %i.e = shl i32 %i.d, 1
  %i.f = add i32 %i.e, 2
  %i.g = sext i32 %i.f to i64
  %i.h = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.g) #23 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !41
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = tail call ptr @ucbuf_getBuffer(ptr noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %2)
  %i.m = load i32, ptr %1, align 4, !tbaa !39
  %i.n = tail call ptr @u_strncpy_78(ptr noundef %i.h, ptr noundef %i.l, i32 noundef %i.m) ; 0 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.p = load i32, ptr %1, align 4, !tbaa !39
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.q
  store i16 0, ptr %i.r, align 2, !tbaa !58
  %i.s = load i32, ptr %i.k, align 8, !tbaa !59
  store i32 %i.s, ptr %1, align 4, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @ucbuf_size(ptr noundef) local_unnamed_addr #5

declare ptr @u_strncpy_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @ucbuf_getBuffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN9UPerfTest3runEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not3032 = icmp sgt i32 %i.b, 1
  br i1 %.not3032, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.f, align 8, !tbaa !42
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef signext i8 %i.i(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null), !inline_history !61
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %i.k = phi i32 [ %i.b, %.lr.ph ], [ %i.an, %.critedge ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.02033 = phi i8 [ 0, %.lr.ph ], [ %.121, %.critedge ]
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 8 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !44
  %.not = icmp eq i8 %i.o, 45
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 64) #26 ; 3 uses
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.p, align 1, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  store i32 0, ptr @_ZL9execCount, align 4, !tbaa !39
  %i.r = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 47) #26 ; 4 uses
  %.not16.i = icmp eq ptr %i.r, null              ; 4 uses
  br i1 %.not16.i, label %bb.g, label %.thread23.i

.thread23.i:                                      ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.e, align 8, !tbaa !42
  store i8 0, ptr %i.r, align 1, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.e, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread23.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !44
  switch i8 %i.t, label %.tail.thread.i [
    i8 0, label %.split.i
    i8 42, label %.tail.i
  ]

.tail.i:                                          ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.split.i, label %.tail.thread.i

.split.i:                                         ; preds = %.tail.i, %bb.h
  %i.x = load ptr, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null), !inline_history !61 ; 2 uses
  br i1 %.not16.i, label %_ZN9UPerfTest7runTestEPcS0_.exit, label %bb.j

.tail.thread.i:                                   ; preds = %.tail.i, %bb.h
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(5) @.str.6) #26
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  br i1 %i.ac, label %bb.i, label %.split38.i

.split38.i:                                       ; preds = %.tail.thread.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.n, ptr noundef %.0), !inline_history !61 ; 2 uses
  br i1 %.not16.i, label %_ZN9UPerfTest7runTestEPcS0_.exit, label %bb.j

bb.i:                                             ; preds = %.tail.thread.i
  %i.ah = load ptr, ptr %i.ad, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(160) %0), !inline_history !61
  br i1 %.not16.i, label %_ZN9UPerfTest7runTestEPcS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.split38.i, %.split.i
  %.01436.i = phi i8 [ %i.aa, %.split.i ], [ 1, %bb.i ], [ %i.ag, %.split38.i ]
  store i8 47, ptr %i.r, align 1, !tbaa !44
  br label %_ZN9UPerfTest7runTestEPcS0_.exit

_ZN9UPerfTest7runTestEPcS0_.exit:                 ; preds = %.split.i, %.split38.i, %bb.i, %bb.j
  %.01437.i = phi i8 [ %i.aa, %.split.i ], [ %.01436.i, %bb.j ], [ 1, %bb.i ], [ %i.ag, %.split38.i ] ; 2 uses
  %i.ai = icmp ne i8 %.01437.i, 0
  %i.aj = load i32, ptr @_ZL9execCount, align 4
  %i.ak = icmp sgt i32 %i.aj, 0
  %or.cond.not = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond.not, label %_ZN9UPerfTest7runTestEPcS0_.exit..critedge_crit_edge, label %bb.k

_ZN9UPerfTest7runTestEPcS0_.exit..critedge_crit_edge: ; preds = %_ZN9UPerfTest7runTestEPcS0_.exit
  %.pre = load i32, ptr %i.a, align 8, !tbaa !35
  br label %.critedge

bb.k:                                             ; preds = %_ZN9UPerfTest7runTestEPcS0_.exit
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.n) #22 ; 0 uses
  br label %.loopexit

.critedge:                                        ; preds = %_ZN9UPerfTest7runTestEPcS0_.exit..critedge_crit_edge, %bb.c
  %i.an = phi i32 [ %i.k, %bb.c ], [ %.pre, %_ZN9UPerfTest7runTestEPcS0_.exit..critedge_crit_edge ] ; 2 uses
  %.121 = phi i8 [ %.02033, %bb.c ], [ %.01437.i, %_ZN9UPerfTest7runTestEPcS0_.exit..critedge_crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %.not30 = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %.not30, label %bb.c, label %.loopexit, !llvm.loop !60

.loopexit:                                        ; preds = %.critedge, %.preheader, %bb.k, %bb.b
  %.5 = phi i8 [ %i.j, %bb.b ], [ 0, %bb.k ], [ 0, %.preheader ], [ %.121, %.critedge ]
  ret i8 %.5
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN9UPerfTest7runTestEPcS0_(ptr noundef nonnull align 8 dereferenceable(160) initializes((152, 160)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split.thread, label %bb.b

.split.thread:                                    ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.a, align 8, !tbaa !42
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef signext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null)
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #26 ; 4 uses
  %.not16 = icmp eq ptr %i.f, null                ; 4 uses
  br i1 %.not16, label %bb.c, label %.thread23

.thread23:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.g, ptr %i.h, align 8, !tbaa !42
  store i8 0, ptr %i.f, align 1, !tbaa !44
  br label %bb.d

end_hunk_0
begin_hunk_1_@_ZN9UPerfTest7runTestEPcS0_:bb.a
  switch i8 %i.j, label %.tail.thread [
    i8 0, label %.split
    i8 42, label %.tail
  ]

.tail:                                            ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.split, label %.tail.thread

.split:                                           ; preds = %bb.d, %.tail
  %i.n = load ptr, ptr %0, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef signext i8 %i.p(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null) ; 2 uses
  br i1 %.not16, label %bb.g, label %bb.f

.tail.thread:                                     ; preds = %bb.d, %.tail
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.6) #26
  %i.s = icmp eq i32 %i.r, 0
  %i.t = load ptr, ptr %0, align 8, !tbaa !9      ; 2 uses
  br i1 %i.s, label %bb.e, label %.split38

.split38:                                         ; preds = %.tail.thread
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  br i1 %.not16, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.tail.thread
  %i.x = load ptr, ptr %i.t, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split38, %.split, %bb.e
  %.01436 = phi i8 [ %i.q, %.split ], [ 1, %bb.e ], [ %i.w, %.split38 ]
  store i8 47, ptr %i.f, align 1, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %.split.thread, %.split38, %.split, %bb.f, %bb.e
  %.01437 = phi i8 [ %i.q, %.split ], [ %.01436, %bb.f ], [ 1, %bb.e ], [ %i.w, %.split38 ], [ %i.e, %.split.thread ]
  ret i8 %.01437
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN9UPerfTest7setPathEPc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((152, 160)) %0, ptr noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %1, ptr %i.a, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define noalias noundef ptr @_ZN9UPerfTest14runIndexedTestEiaRPKcPc(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1, i8 signext %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.7, i64 46, i64 1, ptr %i.a) #27 ; 0 uses
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN9UPerfTest11runTestLoopEPcS0_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !37
  %i.c = load ptr, ptr @_ZN9UPerfTest5gTestE, align 8, !tbaa !65
  store ptr %0, ptr @_ZN9UPerfTest5gTestE, align 8, !tbaa !65
  %.not120 = icmp eq ptr %1, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.split, %bb.a
  %.0104.ph = phi i32 [ %i.em, %.split ], [ 0, %bb.a ] ; 2 uses
  %.0100.ph = phi i8 [ 1, %.split ], [ 0, %bb.a ] ; 3 uses
  %.096.ph = phi i32 [ %.5, %.split ], [ 0, %bb.a ]
  %.093.ph = phi i32 [ %.194, %.split ], [ 1, %bb.a ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %.0104.ph, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null) ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not201 = icmp eq ptr %i.l, null
  br i1 %.not201, label %.loopexit170, label %.lr.ph203

.lr.ph203:                                        ; preds = %.outer, %bb.af
  %i.m = phi ptr [ %i.es, %bb.af ], [ %i.l, %.outer ] ; 2 uses
  %.0104202 = phi i32 [ %i.en, %bb.af ], [ %.0104.ph, %.outer ] ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !44
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %.loopexit170, label %bb.b

bb.b:                                             ; preds = %.lr.ph203
  br i1 %.not120, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %1) #26
  %.not132 = icmp eq i32 %i.p, 0
  br i1 %.not132, label %.critedge, label %bb.af

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %.0104202, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %2) ; 11 uses
  %i.u = load i32, ptr @_ZL9execCount, align 4, !tbaa !39
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr @_ZL9execCount, align 4, !tbaa !39
  %i.w = icmp eq ptr %i.t, null
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.8, ptr noundef %i.y) #28 ; 0 uses
  br label %.critedge129

bb.e:                                             ; preds = %.critedge
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 5 uses
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.9, ptr noundef %i.ag) #28 ; 0 uses
  br label %.critedge129

bb.g:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !31  ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !32  ; 4 uses
  %i.al = load i8, ptr %i.f, align 4, !tbaa !38
  %i.am = icmp eq i8 %i.al, 1
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.10, ptr noundef %i.ao, i32 noundef %i.ak) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = sitofp i32 %i.ak to double              ; 2 uses
  %i.ar = fmul nnan double %i.aq, 9.000000e-01
  %i.as = fptosi double %i.ar to i32
  %i.at = sitofp i32 %i.as to double
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.197 = phi i32 [ %.096.ph, %bb.j ], [ %.298, %bb.o ] ; 3 uses
  %.095 = phi double [ 0.000000e+00, %bb.j ], [ %i.bg, %bb.o ] ; 3 uses
  %.089 = phi i32 [ 1, %bb.j ], [ %.190, %bb.o ]  ; 3 uses
  %i.au = fcmp olt double %.095, %i.at
  br i1 %i.au, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.av = icmp eq i32 %.197, 0
  %i.aw = fcmp oeq double %.095, 0.000000e+00
  %or.cond = or i1 %i.av, %i.aw
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = mul nsw i32 %.089, 10
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = fdiv double %i.aq, %.095
  %i.az = sitofp i32 %.197 to double
  %i.ba = call double @llvm.fmuladd.f64(double %i.ay, double %i.az, double 5.000000e-01)
  %i.bb = fptosi double %i.ba to i32              ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.298 = phi i32 [ %.089, %bb.m ], [ %i.bb, %bb.n ] ; 3 uses
  %.190 = phi i32 [ %i.ax, %bb.m ], [ %.089, %bb.n ]
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef double %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %.298, ptr noundef nonnull %i.b)
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %3 = icmp slt i32 %i.bh, 1
  br i1 %3, label %bb.k, label %bb.p, !llvm.loop !62

bb.p:                                             ; preds = %bb.o
  %i.bi = call ptr @u_errorName_78(i32 noundef %i.bh)
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.bi) ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !46
  %fwrite = call i64 @fwrite(ptr nonnull @.str.11, i64 38, i64 1, ptr %i.bk) #27 ; 0 uses
  br label %.critedge129

.thread:                                          ; preds = %bb.k, %bb.p, %bb.g
  %.5 = phi i32 [ %i.ai, %bb.g ], [ %.298, %bb.p ], [ %.197, %bb.k ] ; 12 uses
  %.194 = phi i32 [ %.093.ph, %bb.g ], [ %i.ak, %bb.p ], [ %i.ak, %bb.k ] ; 2 uses
  %i.bl = load i32, ptr %i.g, align 8, !tbaa !30
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread, %bb.x
  %.0149 = phi i32 [ %i.cq, %bb.x ], [ 0, %.thread ]
  %.086148 = phi i64 [ %i.ci, %bb.x ], [ -1, %.thread ]
  %.087147 = phi double [ %i.cd, %bb.x ], [ 0.000000e+00, %.thread ] ; 2 uses
  %.088146 = phi double [ %.1, %bb.x ], [ 1.000000e+06, %.thread ] ; 3 uses
  %i.bn = load i8, ptr %i.f, align 4, !tbaa !38
  %i.bo = icmp eq i8 %i.bn, 1
  br i1 %i.bo, label %.sink.split, label %bb.r

.sink.split:                                      ; preds = %.lr.ph
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.br = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.13, ptr noundef %i.bq) #22 ; 0 uses
  %i.bs = load i32, ptr %i.d, align 4, !tbaa !31
  %i.bt = icmp sgt i32 %i.bs, 0
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !46
  %.5..194 = select i1 %i.bt, i32 %.5, i32 %.194
  %i.bv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.14, i32 noundef %.5..194) #22 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.lr.ph
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef double %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i32 noundef %.5, ptr noundef nonnull %i.b) ; 5 uses
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !37  ; 2 uses
  %4 = icmp slt i32 %i.ca, 1
  br i1 %4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = call ptr @u_errorName_78(i32 noundef %i.ca)
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.cb) ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.cd = fadd double %.087147, %i.bz             ; 2 uses
  %i.ce = fcmp olt double %i.bz, %.088146
  %.1 = select i1 %i.ce, double %i.bz, double %.088146 ; 2 uses
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 4 uses
  %i.cj = load i8, ptr %i.f, align 4, !tbaa !38
  %i.ck = icmp eq i8 %i.cj, 1
  br i1 %i.ck, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cl = icmp eq i64 %i.ci, -1
  %i.cm = load ptr, ptr @stdout, align 8, !tbaa !46 ; 2 uses
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.15, ptr noundef %i.cn, double noundef %i.bz, i32 noundef %.5, i64 noundef %i.ad) #22 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.16, ptr noundef %i.cn, double noundef %i.bz, i32 noundef %.5, i64 noundef %i.ad, i64 noundef %i.ci) #22 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.v
  %i.cq = add nuw nsw i32 %.0149, 1               ; 2 uses
  %i.cr = load i32, ptr %i.g, align 8, !tbaa !30
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %bb.x, %.thread, %bb.s
  %.088144 = phi double [ %.088146, %bb.s ], [ 1.000000e+06, %.thread ], [ %.1, %bb.x ] ; 5 uses
  %.087142 = phi double [ %.087147, %bb.s ], [ 0.000000e+00, %.thread ], [ %i.cd, %bb.x ]
  %.086140 = phi i64 [ %.086148, %bb.s ], [ -1, %.thread ], [ %i.ci, %bb.x ] ; 2 uses
  %i.ct = load i8, ptr %i.f, align 4, !tbaa !38
  %.not124 = icmp eq i8 %i.ct, 0
  %i.cu = load i32, ptr %i.b, align 4
  %5 = icmp sgt i32 %i.cu, 0                      ; 2 uses
  %or.cond134 = select i1 %.not124, i1 true, i1 %5
  br i1 %or.cond134, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.cv = load i32, ptr %i.g, align 8, !tbaa !30
  %i.cw = sitofp i32 %i.cv to double
  %i.cx = fdiv double %.087142, %i.cw             ; 3 uses
  %i.cy = icmp eq i32 %.5, 0
  br i1 %i.cy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !46
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cz, ptr noundef nonnull @.str.17, ptr noundef %i.da) #28 ; 0 uses
  br label %.split

bb.aa:                                            ; preds = %bb.y
  %i.dc = icmp eq i64 %.086140, -1
  %i.dd = load ptr, ptr @stdout, align 8, !tbaa !46 ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.df = fmul double %i.cx, 1.000000e+09         ; 2 uses
  %i.dg = sext i32 %.5 to i64                     ; 2 uses
  %i.dh = mul nsw i64 %i.ad, %i.dg
  %i.di = sitofp i64 %i.dh to double              ; 3 uses
  %i.dj = fdiv double %i.df, %i.di                ; 2 uses
  br i1 %i.dc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.18, ptr noundef %i.de, double noundef %i.cx, i32 noundef %.5, double noundef %i.dj) #22 ; 0 uses
  %i.dl = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.dn = fmul double %.088144, 1.000000e+09
  %i.do = fdiv double %i.dn, %i.di
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.19, ptr noundef %i.dm, double noundef %.088144, i32 noundef %.5, double noundef %i.do) #22 ; 0 uses
  br label %.split

bb.ac:                                            ; preds = %bb.aa
  %i.dq = mul nsw i64 %.086140, %i.dg
  %i.dr = sitofp i64 %i.dq to double              ; 2 uses
  %i.ds = fdiv double %i.df, %i.dr
  %i.dt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dd, ptr noundef nonnull @.str.20, ptr noundef %i.de, double noundef %i.cx, i32 noundef %.5, double noundef %i.dj, double noundef %i.ds) #22 ; 0 uses
  %i.du = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.dw = fmul double %.088144, 1.000000e+09      ; 2 uses
  %i.dx = fdiv double %i.dw, %i.di
  %i.dy = fdiv double %i.dw, %i.dr
  %i.dz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.du, ptr noundef nonnull @.str.21, ptr noundef %i.dv, double noundef %.088144, i32 noundef %.5, double noundef %i.dx, double noundef %i.dy) #22 ; 0 uses
  br label %.split

bb.ad:                                            ; preds = %.loopexit
  br i1 %5, label %.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.ec = fmul double %.088144, 1.000000e+09
  %i.ed = sext i32 %.5 to i64
  %i.ee = mul nsw i64 %i.ad, %i.ed
  %i.ef = sitofp i64 %i.ee to double
  %i.eg = fdiv double %i.ec, %i.ef
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ea, ptr noundef nonnull @.str.22, ptr noundef %i.eb, double noundef %i.eg) #22 ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.ac, %bb.z
  %i.ei = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #22
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.el = icmp eq ptr %.pre, null
  %i.em = add nuw nsw i32 %.0104202, 1
  br i1 %i.el, label %.loopexit170, label %.outer, !llvm.loop !64

bb.af:                                            ; preds = %bb.c
  %i.en = add nuw nsw i32 %.0104202, 1            ; 2 uses
  %i.eo = load ptr, ptr %0, align 8, !tbaa !9
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call noundef ptr %i.eq(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.en, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null) ; 0 uses
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %.not = icmp eq ptr %i.es, null
  br i1 %.not, label %.loopexit170, label %.lr.ph203, !llvm.loop !64

.loopexit170:                                     ; preds = %.split, %.outer, %.lr.ph203, %bb.af
  %.2102 = phi i8 [ %.0100.ph, %.lr.ph203 ], [ %.0100.ph, %bb.af ], [ 1, %.split ], [ %.0100.ph, %.outer ]
  store ptr %i.c, ptr @_ZN9UPerfTest5gTestE, align 8, !tbaa !65
  br label %.critedge129

.critedge129:                                     ; preds = %bb.q, %bb.d, %bb.f, %.loopexit170
  %.5110 = phi i8 [ %.2102, %.loopexit170 ], [ 0, %bb.q ], [ 0, %bb.f ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i8 %.5110
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: mustprogress uwtable
define void @_ZN9UPerfTest5usageEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @_ZN9UPerfTest12gUsageStringE) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %i.d) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !38
  store i8 1, ptr %i.f, align 4, !tbaa !38
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !46
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %i.h) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !46
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 12, i64 1, ptr %i.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.r, %bb.f ]     ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %.0, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null) ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not7 = icmp eq ptr %i.n, null
  br i1 %.not7, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.n) #22 ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %.not8 = icmp eq ptr %i.q, null
  br i1 %.not8, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nuw nsw i32 %.0, 1
  %i.s = load i8, ptr %i.q, align 1, !tbaa !44
  %.not9 = icmp eq i8 %i.s, 0
  br i1 %.not9, label %.critedge, label %bb.d, !llvm.loop !66

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.f
  store i8 %i.g, ptr %i.f, align 4, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9UPerfTest9setCallerEPS_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(160) initializes((144, 152)) %0, ptr noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %1, ptr %i.a, align 8, !tbaa !47
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.c = load i8, ptr %i.b, align 4, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 %i.c, ptr %i.d, align 4, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN9UPerfTest8callTestERS_Pc(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) initializes((116, 117), (144, 160)) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZL9execCount, align 4, !tbaa !39
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr @_ZL9execCount, align 4, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %0, ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i8, ptr %i.d, align 4, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i8 %i.e, ptr %i.f, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = tail call noundef signext i8 @_ZN9UPerfTest7runTestEPcS0_(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef %i.h, ptr noundef %2)
  ret i8 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9UPerfTestD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(160) dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV9UPerfTest, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @uprv_free_78(ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 2 uses
  %.not3 = icmp eq ptr %i.g, null
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @uprv_free_78(ptr noundef nonnull %i.g)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  invoke void @ucbuf_close(ptr noundef %i.i)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #21
  unreachable
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

declare void @ucbuf_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN9UPerfTestD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #15 align 2 {
end_hunk_1
