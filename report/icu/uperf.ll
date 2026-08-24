Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uperf?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
begin_hunk_0_@_ZN9UPerfTest4initEP7UOptioniR10UErrorCode:bb.a
  %.not30 = icmp eq i8 %i.as, 0
  br i1 %.not30, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %3, align 4, !tbaa !36
  br label %bb.ao

bb.v:                                             ; preds = %bb.s
  %i.at = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 394), align 2, !tbaa !38
  %.not29 = icmp eq i8 %i.at, 0
  br i1 %.not29, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 368), align 16, !tbaa !41
  %i.av = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.au, ptr noundef null, i32 noundef 10) #22, !inline_history !42
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !32
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 1000, ptr %i.ay, align 4, !tbaa !31
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.t
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 434), align 2, !tbaa !38
  %.not31 = icmp eq i8 %i.az, 0
  br i1 %.not31, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 1, ptr %i.ba, align 4, !tbaa !29
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 0, ptr %i.bb, align 1, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 474), align 2, !tbaa !38
  %.not32 = icmp eq i8 %i.bc, 0
  br i1 %.not32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 117
  store i8 1, ptr %i.bd, align 1, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 0, ptr %i.be, align 4, !tbaa !29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 514), align 2, !tbaa !38
  %.not33 = icmp eq i8 %i.bf, 0
  br i1 %.not33, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25 ; 2 uses
  %.not34 = icmp eq ptr %i.bj, null
  br i1 %.not34, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.bm = call ptr @ucbuf_resolveFileName(ptr noundef %i.bl, ptr noundef nonnull %i.bj, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !44
  %i.bo = sext i32 %i.bn to i64
  %i.bp = call noalias ptr @uprv_malloc_78(i64 noundef %i.bo) #23 ; 3 uses
  store ptr %i.bp, ptr %i.c, align 8, !tbaa !34
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 7, ptr %3, align 4, !tbaa !36
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af
  %i.br = load i32, ptr %i.b, align 4, !tbaa !36
  %i.bs = icmp eq i32 %i.br, 15
  br i1 %i.bs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.b, align 4, !tbaa !36
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !25
  %i.bv = call ptr @ucbuf_resolveFileName(ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef nonnull %i.bp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.bw = load i32, ptr %i.b, align 4, !tbaa !36  ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.bw, ptr %3, align 4, !tbaa !36
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = call ptr @ucbuf_open(ptr noundef %i.by, ptr noundef nonnull %i.bz, i8 noundef signext 1, i8 noundef signext 0, ptr noundef nonnull %3)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !22
  %i.cc = load i32, ptr %3, align 4, !tbaa !36    ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 1
  br i1 %i.cd, label %.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = load ptr, ptr %i.bi, align 8, !tbaa !25
  %i.cf = call ptr @u_errorName_78(i32 noundef %i.cc)
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %i.ce, ptr noundef %i.cf) ; 0 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV9UPerfTest, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !10
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
  %i.b = load i32, ptr %1, align 4, !tbaa !36
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef nonnull dereferenceable(640000) ptr @_Znam(i64 noundef 640000) #24
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  store i32 0, ptr %i.g, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = call ptr @ucbuf_readline(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.l = phi ptr [ %i.al, %bb.f ], [ %i.j, %bb.c ]
  %.01424 = phi i32 [ %.1, %bb.f ], [ 40000, %bb.c ] ; 4 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !36
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.o = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i32 %i.o, 0
  %i.r = shl nsw i64 %i.p, 1
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #24 ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.v = load i32, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.w ; 2 uses
  store ptr %i.t, ptr %i.x, align 8, !tbaa !45
  %2 = load i32, ptr %i.a, align 4, !tbaa !44     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %2, ptr %i.y, align 8, !tbaa !47
  %i.z = shl nsw i32 %2, 1
  %i.aa = sext i32 %i.z to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.t, ptr nonnull align 2 %i.l, i64 %i.aa, i1 false)
  %i.ab = add nsw i32 %i.v, 1                     ; 2 uses
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !28
  store i32 0, ptr %i.a, align 4, !tbaa !44
  %.not23 = icmp slt i32 %i.ab, %.01424
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add nsw i32 %.01424, 40000              ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i32 %.01424, -40000
  %i.af = shl nsw i64 %i.ad, 4
  %i.ag = select i1 %i.ae, i64 -1, i64 %i.af
  %i.ah = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #24 ; 2 uses
  %3 = load ptr, ptr %i.d, align 8, !tbaa !27     ; 3 uses
  %4 = load i32, ptr %i.g, align 8, !tbaa !28
  %i.ai = sext i32 %4 to i64
  %i.aj = shl nsw i64 %i.ai, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %3, i64 %i.aj, i1 false)
  %5 = icmp eq ptr %3, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %3) #25
  br label %7

7:                                                ; preds = %6, %bb.e
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %7, %bb.d
  %.1 = phi i32 [ %i.ac, %7 ], [ %.01424, %bb.d ]
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.al = call ptr @ucbuf_readline(ptr noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %._crit_edge, label %.lr.ph, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %bb.c
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.4 = phi ptr [ %i.an, %._crit_edge ], [ null, %bb.a ], [ %i.e, %bb.b ]
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
  %i.a = load i32, ptr %2, align 4, !tbaa !36
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = tail call i32 @ucbuf_size(ptr noundef %i.d) ; 2 uses
  store i32 %i.e, ptr %1, align 4, !tbaa !44
  %i.f = shl i32 %i.e, 1
  %i.g = add i32 %i.f, 2
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.h) #23 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !50
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = tail call ptr @ucbuf_getBuffer(ptr noundef %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %2)
  %i.n = load i32, ptr %1, align 4, !tbaa !44
  %i.o = tail call ptr @u_strncpy_78(ptr noundef %i.i, ptr noundef %i.m, i32 noundef %i.n) ; 0 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !44
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.r
  store i16 0, ptr %i.s, align 2, !tbaa !51
  %i.t = load i32, ptr %i.l, align 8, !tbaa !53
  store i32 %i.t, ptr %1, align 4, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
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
  store ptr null, ptr %i.f, align 8, !tbaa !54
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef signext i8 %i.i(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null), !inline_history !55
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %i.k = phi i32 [ %i.b, %.lr.ph ], [ %i.an, %.critedge ]
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.02033 = phi i8 [ 0, %.lr.ph ], [ %.121, %.critedge ]
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56   ; 8 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !57
  %.not = icmp eq i8 %i.o, 45
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 64) #26 ; 3 uses
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.p, align 1, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  store i32 0, ptr @_ZL9execCount, align 4, !tbaa !44
  %i.r = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 47) #26 ; 4 uses
  %.not16.i = icmp eq ptr %i.r, null              ; 4 uses
  br i1 %.not16.i, label %bb.g, label %.thread23.i

.thread23.i:                                      ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %i.e, align 8, !tbaa !54
  store i8 0, ptr %i.r, align 1, !tbaa !57
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.e, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread23.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !57
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
  %i.x = load ptr, ptr %0, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null), !inline_history !55 ; 2 uses
  br i1 %.not16.i, label %_ZN9UPerfTest7runTestEPcS0_.exit, label %bb.j

.tail.thread.i:                                   ; preds = %.tail.i, %bb.h
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(5) @.str.6) #26
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  br i1 %i.ac, label %bb.i, label %.split38.i

.split38.i:                                       ; preds = %.tail.thread.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %i.n, ptr noundef %.0), !inline_history !55 ; 2 uses
  br i1 %.not16.i, label %_ZN9UPerfTest7runTestEPcS0_.exit, label %bb.j

bb.i:                                             ; preds = %.tail.thread.i
  %i.ah = load ptr, ptr %i.ad, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(160) %0), !inline_history !55
  br i1 %.not16.i, label %_ZN9UPerfTest7runTestEPcS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.split38.i, %.split.i
  %.01436.i = phi i8 [ %i.aa, %.split.i ], [ 1, %bb.i ], [ %i.ag, %.split38.i ]
  store i8 47, ptr %i.r, align 1, !tbaa !57
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
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !58
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.n) #22 ; 0 uses
  br label %.loopexit

.critedge:                                        ; preds = %_ZN9UPerfTest7runTestEPcS0_.exit..critedge_crit_edge, %bb.c
  %i.an = phi i32 [ %i.k, %bb.c ], [ %.pre, %_ZN9UPerfTest7runTestEPcS0_.exit..critedge_crit_edge ] ; 2 uses
  %.121 = phi i8 [ %.02033, %bb.c ], [ %.01437.i, %_ZN9UPerfTest7runTestEPcS0_.exit..critedge_crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %.not30 = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %.not30, label %bb.c, label %.loopexit, !llvm.loop !60

end_hunk_0
