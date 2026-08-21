Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/special?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cli_check_mydoom_log:bb.a
  %.sroa.63.0..0.27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %.sroa.63.0.copyload = load i32, ptr %.sroa.63.0..0.27.sroa_idx, align 4
  %.sroa.59.0..0.27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.59.0.copyload = load i32, ptr %.sroa.59.0..0.27.sroa_idx, align 4
  %.sroa.55.0..0.27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %.sroa.55.0.copyload = load i32, ptr %.sroa.55.0..0.27.sroa_idx, align 4
  %.sroa.39.0..0.27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %.sroa.35.0..0.27.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.35.0.copyload = load i32, ptr %.sroa.35.0..0.27.sroa_idx, align 4
  %i.aj = xor i32 %.sroa.35.0.copyload, -1
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj) ; 5 uses
  %i.al = load <4 x i32>, ptr %.sroa.39.0..0.27.sroa_idx, align 4
  %i.am = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.al)
  %i.an = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.ao = shufflevector <4 x i32> %i.an, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ap = xor <4 x i32> %i.ao, %i.am
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %.sroa.55.0.copyload)
  %i.ar = xor i32 %i.ak, %i.aq
  %i.as = tail call i32 @llvm.bswap.i32(i32 %.sroa.59.0.copyload)
  %i.at = xor i32 %i.ak, %i.as
  %i.au = tail call i32 @llvm.bswap.i32(i32 %.sroa.63.0.copyload)
  %i.av = xor i32 %i.ak, %i.au
  %i.aw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ap)
  %op.rdx = add i32 %i.aw, %i.ar
  %op.rdx89 = add i32 %i.at, %i.av
  %op.rdx90 = add i32 %op.rdx, %op.rdx89
  %i.ax = xor i32 %op.rdx90, %i.ak
  %.not84 = icmp eq i32 %i.ax, -1
  br i1 %.not84, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ay = tail call i32 @cli_append_potentially_unwanted(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %.preheader._crit_edge, %bb.b, %bb.a, %bb.e
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %.preheader._crit_edge ], [ %i.ay, %bb.e ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cli_append_potentially_unwanted(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @cli_check_riff_exploit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #6
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = tail call ptr %i.d(ptr noundef %i.b, i64 noundef 0, i64 noundef 12, i32 noundef 0) #6, !inline_history !28 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %riff_read_chunk.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.e, align 1
  %i.g = icmp ne i32 %i.f, 1179011410
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.e, align 1
  %i.k = icmp ne i32 %i.j, 1481001298
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %riff_read_chunk.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i32, ptr %i.n, align 1
  %i.p = icmp ne i32 %i.o, 1313817409
  %i.q = zext i1 %i.p to i32
  %.not14 = icmp eq i32 %i.q, 0
  br i1 %.not14, label %.preheader, label %riff_read_chunk.exit.thread

.preheader:                                       ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.b, i64 16
  %i.s = getelementptr i8, ptr %i.b, i64 72
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %.preheader
  %i.t = phi i64 [ 12, %.preheader ], [ %.be, %.backedge ] ; 3 uses
  %.tr4348.i = phi i32 [ 1, %.preheader ], [ %.tr4348.i.be, %.backedge ]
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.v = tail call ptr %i.u(ptr noundef nonnull %i.b, i64 noundef %i.t, i64 noundef 8, i32 noundef 0) #6, !inline_history !30 ; 10 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %riff_read_chunk.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.0.copyload.i = load i32, ptr %i.w, align 1    ; 2 uses
  %i.x = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %.0.i.i = select i1 %i.i, i32 %.0.copyload.i, i32 %i.x ; 3 uses
  %i.y = load i32, ptr %i.v, align 1
  %i.z = icmp ne i32 %i.y, 1751740001
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = icmp ne i32 %.0.i.i, 36
  %or.cond.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %riff_read_chunk.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.v, align 1
  %i.ae = icmp ne i32 %i.ad, 1179011410
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %riff_read_chunk.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.v, align 1
  %i.ai = icmp ne i32 %i.ah, 1481001298
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %riff_read_chunk.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i32, ptr %i.v, align 1
  %i.am = icmp ne i32 %i.al, 1414744396
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.v, align 1
  %i.aq = icmp ne i32 %i.ap, 1347375696
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %i.v, align 1
  %i.au = icmp ne i32 %i.at, 1297239878
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.v, align 1
  %i.ay = icmp ne i32 %i.ax, 542392643
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %riff_read_chunk.exit

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !27
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !31
  %.val4.i.i = load i64, ptr %i.s, align 8, !tbaa !32
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %.val.i.i to i64
  %i.bf = add i64 %.val4.i.i, %i.be
  %i.bg = sub i64 %i.bd, %i.bf
  %i.bh = tail call ptr %i.bc(ptr noundef nonnull %i.b, i64 noundef %i.bg, i64 noundef 4, i32 noundef 0) #6, !inline_history !33
  %.not40.i = icmp eq ptr %i.bh, null
  br i1 %.not40.i, label %riff_read_chunk.exit.thread.sink.split, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.m
  %i.bi = add nsw i64 %i.t, 12
  %i.bj = add nuw nsw i32 %.tr4348.i, 1           ; 2 uses
  %exitcond.i = icmp eq i32 %i.bj, 1001
  br i1 %exitcond.i, label %riff_read_chunk.exit.thread.sink.split, label %.backedge

.backedge:                                        ; preds = %tailrecurse.i, %riff_read_chunk.exit
  %.be = phi i64 [ %i.bi, %tailrecurse.i ], [ %i.bp, %riff_read_chunk.exit ]
  %.tr4348.i.be = phi i32 [ %i.bj, %tailrecurse.i ], [ 1, %riff_read_chunk.exit ]
  br label %bb.e

riff_read_chunk.exit:                             ; preds = %bb.l
  %i.bk = add nsw i64 %i.t, 8                     ; 2 uses
  %i.bl = zext i32 %.0.i.i to i64
  %i.bm = add nsw i64 %i.bk, %i.bl
  %i.bn = and i32 %.0.i.i, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = add nsw i64 %i.bm, %i.bo                ; 2 uses
  %.not18 = icmp slt i64 %i.bp, %i.bk
  br i1 %.not18, label %riff_read_chunk.exit.thread, label %.backedge

riff_read_chunk.exit.thread.sink.split:           ; preds = %bb.m, %tailrecurse.i
  %.str.24.sink = phi ptr [ @.str.18, %tailrecurse.i ], [ @.str.24, %bb.m ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.24.sink) #6
  br label %riff_read_chunk.exit.thread

riff_read_chunk.exit.thread:                      ; preds = %riff_read_chunk.exit, %bb.e, %bb.f, %bb.g, %bb.h, %riff_read_chunk.exit.thread.sink.split, %bb.d, %bb.c, %bb.a
  %.09 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %riff_read_chunk.exit.thread.sink.split ], [ 0, %riff_read_chunk.exit ], [ 2, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define void @cli_detect_swizz_str(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca [17576 x i8], align 16            ; 5 uses
  %i.c = alloca [3 x i16], align 2                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 35172 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !34
  %i.g = zext i32 %1 to i64
  %i.h = add nsw i64 %i.g, -1                     ; 2 uses
  %.not108 = icmp eq i64 %i.h, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.098 = phi i64 [ %i.af, %bb.f ], [ 0, %bb.a ]  ; 2 uses
  %.06497 = phi i64 [ %.165, %bb.f ], [ 0, %bb.a ] ; 5 uses
  %.06696 = phi i32 [ %.167, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %.07395 = phi i32 [ %.275, %bb.f ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.098 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !36    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !36
  %i.m = icmp eq i8 %i.l, 0
  %i.n = icmp ne i8 %i.j, 0
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i32 %.06696, 1
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.p = tail call ptr @__ctype_b_loc() #7
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37
  %i.r = zext i8 %i.j to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !39
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = and i32 %i.u, 8
  %.not89 = icmp eq i32 %i.v, 0
  br i1 %.not89, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not90 = icmp eq i32 %.07395, 0
  br i1 %.not90, label %bb.f, label %._crit_edge112

bb.e:                                             ; preds = %bb.c
  %i.w = and i32 %i.u, 2048
  %.not91 = icmp eq i32 %i.w, 0
  br i1 %.not91, label %._crit_edge112, label %bb.f

._crit_edge112:                                   ; preds = %bb.d, %bb.e
  %.174 = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  %.068 = phi i8 [ %i.j, %bb.e ], [ 32, %bb.d ]
  %i.x = tail call ptr @__ctype_tolower_loc() #7
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = zext i8 %.068 to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = add nuw nsw i64 %.06497, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06497
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge112, %bb.b
  %.275 = phi i32 [ 0, %bb.d ], [ %.174, %._crit_edge112 ], [ %.07395, %bb.b ], [ 1, %bb.e ]
  %.167 = phi i32 [ %.06696, %bb.d ], [ %.06696, %._crit_edge112 ], [ %i.o, %bb.b ], [ %.06696, %bb.e ] ; 2 uses
  %.165 = phi i64 [ %.06497, %bb.d ], [ %i.ad, %._crit_edge112 ], [ %.06497, %bb.b ], [ %.06497, %bb.e ] ; 6 uses
  %i.af = add i64 %.098, 2                        ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.h
  %i.ah = icmp samesign ult i64 %.165, 4094
  %i.ai = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %i.aj = icmp sgt i32 %.167, 7
  %i.ak = add nuw nsw i64 %.165, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.165
  store i8 0, ptr %i.al, align 1, !tbaa !36
  %i.am = icmp eq i32 %3, 0
  %or.cond3 = select i1 %i.am, i1 %i.aj, i1 false
  %i.an = icmp ult i64 %.165, 3
  %or.cond5 = or i1 %or.cond3, %i.an
  br i1 %or.cond5, label %._crit_edge.thread, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17576) %i.b, i8 0, i64 17576, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  %i.ao = add i64 %.165, -2
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.l
  %.1101 = phi i64 [ %i.bm, %bb.l ], [ 0, %.lr.ph103.preheader ] ; 3 uses
  %.069100 = phi i16 [ %.170, %bb.l ], [ 0, %.lr.ph103.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1101 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !36  ; 2 uses
  %i.ar = zext i8 %i.aq to i64
  %.not86 = icmp eq i8 %i.aq, 32                  ; 2 uses
  br i1 %.not86, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph103
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !36  ; 2 uses
  %i.au = zext i8 %i.at to i64
  %.not87 = icmp eq i8 %i.at, 32
  br i1 %.not87, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !36  ; 2 uses
  %.not88 = icmp eq i8 %i.aw, 32
  br i1 %.not88, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = zext i8 %i.aw to i64
  %i.ay = mul nuw nsw i64 %i.ar, 676
  %i.az = mul nuw nsw i64 %i.au, 26
  %i.ba = add nuw nsw i64 %i.ay, 62881
  %i.bb = add nuw nsw i64 %i.ba, %i.az
  %i.bc = add nuw nsw i64 %i.bb, %i.ax
  %i.bd = and i64 %i.bc, 65535                    ; 3 uses
  %i.be = icmp samesign ult i64 %i.bd, 17576
  br i1 %i.be, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bd ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !36
  %i.bh = add i8 %i.bg, 1
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !36
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bd ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !39
  %i.bk = add i16 %i.bj, 1
  store i16 %i.bk, ptr %i.bi, align 2, !tbaa !39
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.g, %.lr.ph103
  %i.bl = zext i1 %.not86 to i16
  %spec.select = add i16 %.069100, %i.bl
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.170 = phi i16 [ %spec.select, %bb.k ], [ %.069100, %bb.i ], [ %.069100, %bb.j ] ; 3 uses
  %i.bm = add nuw i64 %.1101, 1
  %exitcond.not = icmp eq i64 %.1101, %i.ao
  br i1 %exitcond.not, label %.preheader, label %.lr.ph103

.preheader:                                       ; preds = %bb.l, %bb.n
  %.2106 = phi i64 [ %i.bv, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %.071105 = phi i16 [ %.172, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 %.2106
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !36  ; 2 uses
  %.not85 = icmp eq i8 %i.bo, 0
  br i1 %.not85, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader
  %spec.store.select = tail call i8 @llvm.umin.i8(i8 %i.bo, i8 3)
  %i.bp = zext nneg i8 %spec.store.select to i64
  %i.bq = add nuw nsw i64 %i.bp, 4294967295
  %i.br = and i64 %i.bq, 4294967295
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.br ; 2 uses
  %i.bs = load i16, ptr %4, align 2, !tbaa !39
  %i.bt = add i16 %i.bs, 1
  store i16 %i.bt, ptr %4, align 2, !tbaa !39
  %i.bu = add i16 %.071105, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader
  %.172 = phi i16 [ %i.bu, %bb.m ], [ %.071105, %.preheader ] ; 3 uses
  %i.bv = add nuw nsw i64 %.2106, 1               ; 2 uses
  %exitcond110.not = icmp eq i64 %i.bv, 17576
  br i1 %exitcond110.not, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i16 %.172, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i16, ptr %i.c, align 2, !tbaa !39
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !39
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !39
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6, i32 noundef %i.bx, i32 noundef %i.ca, i32 noundef %i.cd) #6
  %i.ce = zext i16 %.172 to i32                   ; 3 uses
  %i.cf = shl nuw nsw i32 %i.bx, 10
  %i.cg = udiv i32 %i.cf, %i.ce                   ; 2 uses
  %i.ch = trunc i32 %i.cg to i16                  ; 2 uses
  %i.ci = shl nuw nsw i32 %i.ca, 10
  %i.cj = udiv i32 %i.ci, %i.ce                   ; 2 uses
  %i.ck = trunc i32 %i.cj to i16                  ; 2 uses
  %i.cl = shl nuw nsw i32 %i.cd, 10
  %i.cm = udiv i32 %i.cl, %i.ce                   ; 2 uses
  %i.cn = trunc i32 %i.cm to i16                  ; 2 uses
  %i.co = and i32 %i.cg, 65535
  %i.cp = and i32 %i.cj, 65535
  %i.cq = and i32 %i.cm, 65535
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25, i32 noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq) #6
  %i.cr = icmp ult i16 %i.ch, 962
  %.not.i = icmp eq i16 %i.ck, 0
  %or.cond92 = or i1 %i.cr, %.not.i
  br i1 %or.cond92, label %swizz_j48.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ult i16 %i.ch, 1007
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = add i16 %i.cn, -1
  %narrow.i = icmp ult i16 %i.ct, 6
  br label %swizz_j48.exit

bb.s:                                             ; preds = %bb.q
  %i.cu = icmp ult i16 %i.ck, 11
  %i.cv = icmp ne i16 %i.cn, 0
  %spec.select93 = and i1 %i.cu, %i.cv
  br label %swizz_j48.exit

swizz_j48.exit:                                   ; preds = %bb.s, %bb.p, %bb.r
  %.0.shrunk.i = phi i1 [ false, %bb.p ], [ %narrow.i, %bb.r ], [ %spec.select93, %bb.s ]
  %i.cw = zext i16 %.170 to i32
  %i.cx = icmp ugt i16 %.170, 2
  %.not83.not = and i1 %i.cx, %.0.shrunk.i        ; 2 uses
  %i.cy = select i1 %.not83.not, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.cy, i32 noundef %i.cw) #6
  br i1 %.not83.not, label %bb.t, label %swizz_j48.exit._crit_edge

swizz_j48.exit._crit_edge:                        ; preds = %swizz_j48.exit
  %.pre = trunc i64 %i.ak to i32
  br label %bb.u

bb.t:                                             ; preds = %swizz_j48.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 35156 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !43
  %i.db = trunc i64 %i.ak to i32                  ; 2 uses
  %i.dc = add i32 %i.da, %i.db
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !43
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a) #6
  br label %bb.u

bb.u:                                             ; preds = %swizz_j48.exit._crit_edge, %bb.t
  %.pre-phi = phi i32 [ %.pre, %swizz_j48.exit._crit_edge ], [ %i.db, %bb.t ]
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 35152 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !44
  %i.df = add i32 %i.de, %.pre-phi
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !44
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.o, %._crit_edge, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cli_detect_swizz(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 35156 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !43
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 35152 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 35160
  %i.i = load i32, ptr %i.h, align 4, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 35164
  %i.k = load i32, ptr %i.j, align 4, !tbaa !46
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i64 noundef %i.d, i64 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.02941 = phi i64 [ 0, %bb.a ], [ %i.v, %bb.d ] ; 2 uses
  %.03040 = phi i32 [ 0, %bb.a ], [ %.131, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.02941
  %i.m = load i16, ptr %i.l, align 2, !tbaa !39   ; 2 uses
  %i.n = trunc i16 %i.m to i8
  %.mask = and i16 %i.m, 255
  %i.o = icmp samesign ugt i16 %.mask, 10
  %spec.store.select = select i1 %i.o, i8 10, i8 %i.n ; 2 uses
  %.not39 = icmp eq i8 %spec.store.select, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i8 %spec.store.select to i64
  %i.q = add nuw nsw i64 %i.p, 4294967295
  %i.r = and i64 %i.q, 4294967295
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !29
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %1, align 4, !tbaa !29
  %i.u = add i32 %.03040, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.131 = phi i32 [ %i.u, %bb.c ], [ %.03040, %bb.b ] ; 25 uses
  %i.v = add nuw nsw i64 %.02941, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, 17576
  br i1 %exitcond.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %.131, 0
  br i1 %.not, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #6
  %i.w = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.x = icmp eq i8 %i.w, 0
  %i.y = load i32, ptr %i.a, align 16, !tbaa !29
  %i.z = shl i32 %i.y, 15
  %i.aa = udiv i32 %i.z, %.131                    ; 5 uses
  br i1 %i.x, label %.split.us.preheader, label %.split.1

.split.us.preheader:                              ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29
  %i.ad = shl i32 %i.ac, 15
  %i.ae = udiv i32 %i.ad, %.131
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = shl i32 %i.ag, 15
  %i.ai = udiv i32 %i.ah, %.131
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i32, ptr %i.aj, align 16, !tbaa !29
  %i.al = shl i32 %i.ak, 15
  %i.am = udiv i32 %i.al, %.131
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = shl i32 %i.ao, 15
  %i.aq = udiv i32 %i.ap, %.131
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !29
  %i.at = shl i32 %i.as, 15
  %i.au = udiv i32 %i.at, %.131
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = load i32, ptr %i.av, align 16, !tbaa !29
  %i.ax = shl i32 %i.aw, 15
  %i.ay = udiv i32 %i.ax, %.131
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !29
  %i.bb = shl i32 %i.ba, 15
  %i.bc = udiv i32 %i.bb, %.131
  br label %.split44.us

.split.1:                                         ; preds = %bb.f
  %i.bd = zext i32 %i.aa to i64
  %i.be = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.bd) #6 ; 0 uses
  %.pre = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29
  %i.bh = shl i32 %i.bg, 15
  %i.bi = udiv i32 %i.bh, %.131                   ; 4 uses
  %.not38.1 = icmp eq i8 %.pre, 0
  br i1 %.not38.1, label %.split.3.thread, label %.split.2

.split.2:                                         ; preds = %.split.1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.bj) #6 ; 0 uses
  %.pre48 = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.bl = icmp eq i8 %.pre48, 0
  br i1 %i.bl, label %.split.3.thread, label %.split.3

.split.3.thread:                                  ; preds = %.split.1, %.split.2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !29
  %i.bo = shl i32 %i.bn, 15
  %i.bp = udiv i32 %i.bo, %.131
  br label %.split.4.thread

.split.3:                                         ; preds = %.split.2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !29
  %i.bs = shl i32 %i.br, 15
  %i.bt = udiv i32 %i.bs, %.131
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.bu) #6 ; 0 uses
  %.pre49 = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.bw = icmp eq i8 %.pre49, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !29
  %i.bz = shl i32 %i.by, 15
  %i.ca = udiv i32 %i.bz, %.131                   ; 9 uses
  br i1 %i.bw, label %.split.4.thread, label %.split.4

.split.4.thread:                                  ; preds = %.split.3, %.split.3.thread
  %.ph = phi i32 [ %i.bp, %.split.3.thread ], [ %i.ca, %.split.3 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cc = load i32, ptr %i.cb, align 16, !tbaa !29
  %i.cd = shl i32 %i.cc, 15
  %i.ce = udiv i32 %i.cd, %.131
  br label %.split.5.thread

.split.4:                                         ; preds = %.split.3
  %i.cf = zext i32 %i.ca to i64
  %i.cg = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.cf) #6 ; 0 uses
  %.pre50 = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.ch = icmp eq i8 %.pre50, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cj = load i32, ptr %i.ci, align 16, !tbaa !29
  %i.ck = shl i32 %i.cj, 15
  %i.cl = udiv i32 %i.ck, %.131                   ; 8 uses
  br i1 %i.ch, label %.split.5.thread, label %.split.5

.split.5.thread:                                  ; preds = %.split.4, %.split.4.thread
  %.ph64 = phi i32 [ %i.ce, %.split.4.thread ], [ %i.cl, %.split.4 ]
  %.ph65 = phi i32 [ %.ph, %.split.4.thread ], [ %i.ca, %.split.4 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29
  %i.co = shl i32 %i.cn, 15
  %i.cp = udiv i32 %i.co, %.131
  br label %.split.6.thread

.split.5:                                         ; preds = %.split.4
  %i.cq = zext i32 %i.cl to i64
  %i.cr = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.cq) #6 ; 0 uses
  %.pre51 = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.cs = icmp eq i8 %.pre51, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !29
  %i.cv = shl i32 %i.cu, 15
  %i.cw = udiv i32 %i.cv, %.131                   ; 7 uses
  br i1 %i.cs, label %.split.6.thread, label %.split.6

.split.6.thread:                                  ; preds = %.split.5, %.split.5.thread
  %.ph67 = phi i32 [ %i.cp, %.split.5.thread ], [ %i.cw, %.split.5 ]
  %.ph68 = phi i32 [ %.ph65, %.split.5.thread ], [ %i.ca, %.split.5 ]
  %.ph69 = phi i32 [ %.ph64, %.split.5.thread ], [ %i.cl, %.split.5 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !29
  %i.cz = shl i32 %i.cy, 15
  %i.da = udiv i32 %i.cz, %.131
  br label %.split.8.thread

.split.6:                                         ; preds = %.split.5
  %i.db = zext i32 %i.cw to i64
  %i.dc = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.db) #6 ; 0 uses
  %.pre52 = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.dd = icmp eq i8 %.pre52, 0
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !29
  %i.dg = shl i32 %i.df, 15
  %i.dh = udiv i32 %i.dg, %.131                   ; 6 uses
  br i1 %i.dd, label %.split.8.thread, label %.split.7

.split.7:                                         ; preds = %.split.6
  %i.di = zext i32 %i.dh to i64
  %i.dj = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.di) #6 ; 0 uses
  %.pre53 = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.dk = icmp eq i8 %.pre53, 0
  br i1 %i.dk, label %.split.8.thread, label %.split.8

.split.8.thread:                                  ; preds = %.split.6.thread, %.split.6, %.split.7
  %.ph76 = phi i32 [ %i.cw, %.split.7 ], [ %.ph67, %.split.6.thread ], [ %i.cw, %.split.6 ]
  %.ph77 = phi i32 [ %i.ca, %.split.7 ], [ %.ph68, %.split.6.thread ], [ %i.ca, %.split.6 ]
  %.ph78 = phi i32 [ %i.cl, %.split.7 ], [ %.ph69, %.split.6.thread ], [ %i.cl, %.split.6 ]
  %.ph79 = phi i32 [ %i.dh, %.split.7 ], [ %i.da, %.split.6.thread ], [ %i.dh, %.split.6 ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dm = load i32, ptr %i.dl, align 16, !tbaa !29
  %i.dn = shl i32 %i.dm, 15
  %i.do = udiv i32 %i.dn, %.131
  br label %.split.9.thread

.split.8:                                         ; preds = %.split.7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !29
  %i.dr = shl i32 %i.dq, 15
  %i.ds = udiv i32 %i.dr, %.131
  %i.dt = zext i32 %i.ds to i64
  %i.du = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.dt) #6 ; 0 uses
  %.pre54 = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.dv = icmp eq i8 %.pre54, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dx = load i32, ptr %i.dw, align 16, !tbaa !29
  %i.dy = shl i32 %i.dx, 15
  %i.dz = udiv i32 %i.dy, %.131                   ; 4 uses
  br i1 %i.dv, label %.split.9.thread, label %.split.9

.split.9.thread:                                  ; preds = %.split.8, %.split.8.thread
  %.ph81 = phi i32 [ %i.do, %.split.8.thread ], [ %i.dz, %.split.8 ]
  %.ph82 = phi i32 [ %.ph79, %.split.8.thread ], [ %i.dh, %.split.8 ]
  %.ph83 = phi i32 [ %.ph78, %.split.8.thread ], [ %i.cl, %.split.8 ]
  %.ph84 = phi i32 [ %.ph77, %.split.8.thread ], [ %i.ca, %.split.8 ]
  %.ph85 = phi i32 [ %.ph76, %.split.8.thread ], [ %i.cw, %.split.8 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !29
  %i.ec = shl i32 %i.eb, 15
  %i.ed = udiv i32 %i.ec, %.131
  br label %.split44.us

.split.9:                                         ; preds = %.split.8
  %i.ee = zext i32 %i.dz to i64
  %i.ef = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.ee) #6 ; 0 uses
  %.pre55 = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %i.eg = icmp eq i8 %.pre55, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !29
  %i.ej = shl i32 %i.ei, 15
  %i.ek = udiv i32 %i.ej, %.131                   ; 3 uses
  br i1 %i.eg, label %.split44.us, label %bb.g

bb.g:                                             ; preds = %.split.9
  %i.el = zext i32 %i.ek to i64
  %i.em = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.13, i64 noundef %i.el) #6 ; 0 uses
  br label %.split44.us

.split44.us:                                      ; preds = %.split.9, %bb.g, %.split.9.thread, %.split.us.preheader
  %i.en = phi i32 [ %i.ai, %.split.us.preheader ], [ %.ph84, %.split.9.thread ], [ %i.ca, %bb.g ], [ %i.ca, %.split.9 ]
  %i.eo = phi i32 [ %i.ae, %.split.us.preheader ], [ %i.bi, %.split.9.thread ], [ %i.bi, %bb.g ], [ %i.bi, %.split.9 ]
  %i.ep = phi i32 [ %i.bc, %.split.us.preheader ], [ %i.ed, %.split.9.thread ], [ %i.ek, %bb.g ], [ %i.ek, %.split.9 ]
  %i.eq = phi i32 [ %i.au, %.split.us.preheader ], [ %.ph82, %.split.9.thread ], [ %i.dh, %bb.g ], [ %i.dh, %.split.9 ] ; 2 uses
  %i.er = phi i32 [ %i.aq, %.split.us.preheader ], [ %.ph85, %.split.9.thread ], [ %i.cw, %bb.g ], [ %i.cw, %.split.9 ]
  %i.es = phi i32 [ %i.am, %.split.us.preheader ], [ %.ph83, %.split.9.thread ], [ %i.cl, %bb.g ], [ %i.cl, %.split.9 ] ; 2 uses
  %i.et = phi i32 [ %i.ay, %.split.us.preheader ], [ %.ph81, %.split.9.thread ], [ %i.dz, %bb.g ], [ %i.dz, %.split.9 ] ; 2 uses
  %i.eu = icmp ult i32 %i.aa, 24186
  br i1 %i.eu, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.split44.us
  %i.ev = icmp samesign ugt i32 %i.aa, 22980
  br i1 %i.ev, label %bb.i, label %swizz_j48_global.exit

bb.i:                                             ; preds = %bb.h
  %i.ew = add i32 %i.et, -1
  %spec.select.i = icmp ult i32 %i.ew, 97
  br label %swizz_j48_global.exit

bb.j:                                             ; preds = %.split44.us
  %.not.i = icmp eq i32 %i.et, 0
  br i1 %.not.i, label %bb.k, label %swizz_j48_global.exit

bb.k:                                             ; preds = %bb.j
  %i.ex = icmp ult i32 %i.es, 312
  br i1 %i.ex, label %bb.l, label %swizz_j48_global.exit

bb.l:                                             ; preds = %bb.k
  %.not21.i = icmp eq i32 %i.es, 0
  br i1 %.not21.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %.not22.i = icmp eq i32 %i.eo, 0
  br i1 %.not22.i, label %swizz_j48_global.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ey = icmp ult i32 %i.aa, 26580
  br i1 %i.ey, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not23.i = icmp ne i32 %i.en, 0
  br label %swizz_j48_global.exit

bb.p:                                             ; preds = %bb.n
  %i.ez = add i32 %i.aa, -28673
  %spec.select25.i = icmp ult i32 %i.ez, 1834
  br label %swizz_j48_global.exit

bb.q:                                             ; preds = %bb.l
  %i.fa = icmp ult i32 %i.er, 617
  br i1 %i.fa, label %bb.r, label %swizz_j48_global.exit

bb.r:                                             ; preds = %bb.q
  %i.fb = icmp ult i32 %i.eq, 105
  br i1 %i.fb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fc = icmp ult i32 %i.ep, 168
  br label %swizz_j48_global.exit

bb.t:                                             ; preds = %bb.r
  %i.fd = icmp ult i32 %i.eq, 287
  br label %swizz_j48_global.exit

swizz_j48_global.exit:                            ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.m, %bb.o, %bb.p, %bb.q, %bb.s, %bb.t
  %.0.shrunk.i = phi i1 [ true, %bb.j ], [ false, %bb.k ], [ %i.fc, %bb.s ], [ %i.fd, %bb.t ], [ false, %bb.q ], [ %spec.select.i, %bb.i ], [ false, %bb.h ], [ false, %bb.m ], [ %.not23.i, %bb.o ], [ %spec.select25.i, %bb.p ] ; 3 uses
  %i.fe = load i8, ptr @cli_debug_flag, align 1, !tbaa !36
  %.not36 = icmp eq i8 %i.fe, 0
  br i1 %.not36, label %bb.v, label %bb.u

bb.u:                                             ; preds = %swizz_j48_global.exit
  %i.ff = tail call i64 (ptr, ...) @cli_eprintf(ptr noundef nonnull @.str.14) #6 ; 0 uses
  %i.fg = select i1 %.0.shrunk.i, ptr @.str.8, ptr @.str.16
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.fg) #6
  br label %bb.v

bb.v:                                             ; preds = %swizz_j48_global.exit, %bb.u, %bb.e
  %.0.shrunk = phi i1 [ %.0.shrunk.i, %bb.u ], [ %.0.shrunk.i, %swizz_j48_global.exit ], [ false, %bb.e ]
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 35168
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !47 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 35172
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !34
  %i.fl = icmp sgt i32 %i.fi, %i.fk
  %i.fm = icmp sgt i32 %i.fi, 1999
  %or.cond = or i1 %i.fm, %i.fl
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #6
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.fn = load i32, ptr %i.e, align 4, !tbaa !44  ; 2 uses
  %i.fo = icmp ult i32 %i.fn, 338
  br i1 %i.fo, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !43  ; 2 uses
  %i.fq = shl i32 %i.fp, 10
  %i.fr = mul i32 %i.fn, 40
  %i.fs = icmp ugt i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not37 = icmp ne i32 %i.fp, 0
  %narrow = select i1 %.not37, i1 %.0.shrunk, i1 false
  %..0 = zext i1 %narrow to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.032 = phi i32 [ 0, %bb.w ], [ %..0, %bb.z ], [ 0, %bb.x ], [ 1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.032
}

declare i64 @cli_eprintf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !18, i64 88}
!9 = !{!"cli_ctx_tag", !10, i64 0, !10, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !16, i64 48, !5, i64 56, !5, i64 60, !17, i64 64, !5, i64 72, !5, i64 76, !11, i64 80, !18, i64 88, !15, i64 96, !19, i64 104, !20, i64 112, !11, i64 120, !21, i64 128, !22, i64 136, !22, i64 144, !23, i64 152, !24, i64 168, !24, i64 169}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 long", !11, i64 0}
!13 = !{!"p1 _ZTS11cli_matcher", !11, i64 0}
!14 = !{!"p1 _ZTS9cl_engine", !11, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"p1 _ZTS15cl_scan_options", !11, i64 0}
!17 = !{!"p1 _ZTS14cli_scan_layer", !11, i64 0}
!18 = !{!"p1 _ZTS7cl_fmap", !11, i64 0}
!19 = !{!"p1 _ZTS9cli_dconf", !11, i64 0}
!20 = !{!"p1 _ZTS10bitset_tag", !11, i64 0}
!21 = !{!"p1 _ZTS10cli_events", !11, i64 0}
!22 = !{!"p1 _ZTS11json_object", !11, i64 0}
!23 = !{!"timeval", !15, i64 0, !15, i64 8}
!24 = !{!"_Bool", !6, i64 0}
!25 = !{!26, !15, i64 88}
!26 = !{!"cl_fmap", !11, i64 0, !11, i64 8, !11, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !24, i64 56, !24, i64 57, !24, i64 58, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !6, i64 152, !6, i64 155, !6, i64 158, !12, i64 256, !10, i64 264, !10, i64 272}
!27 = !{!26, !11, i64 104}
!28 = distinct !{null}
!29 = !{!5, !5, i64 0}
!30 = distinct !{null, null}
!31 = !{!26, !11, i64 16}
!32 = !{!26, !15, i64 72}
!33 = distinct !{null, null}
!34 = !{!35, !5, i64 35172}
!35 = !{!"swizz_stats", !6, i64 0, !5, i64 35152, !5, i64 35156, !5, i64 35160, !5, i64 35164, !5, i64 35168, !5, i64 35172}
!36 = !{!6, !6, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 short", !11, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 int", !11, i64 0}
!43 = !{!35, !5, i64 35156}
!44 = !{!35, !5, i64 35152}
!45 = !{!35, !5, i64 35160}
!46 = !{!35, !5, i64 35164}
!47 = !{!35, !5, i64 35168}
end_hunk_0
