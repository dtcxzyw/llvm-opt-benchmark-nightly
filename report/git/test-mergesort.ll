Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-mergesort?download=true
inline.NumInlined: 41
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cmd__mergesort:bb.a
._crit_edge.4.i:                                  ; preds = %bb.ba, %bb.bb
  %.032.5.i = phi i32 [ %i.gf, %bb.bb ], [ 1, %bb.ba ] ; 3 uses
  %i.ge = tail call fastcc i32 @test(ptr noundef nonnull %i.fo, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mode, i64 80), i32 noundef %i.fm, i32 noundef %.032.5.i), !inline_history !30
  %.not25.5.i = icmp eq i32 %i.ge, 0
  br i1 %.not25.5.i, label %bb.bb, label %generate.exit, !llvm.loop !33

bb.bb:                                            ; preds = %._crit_edge.4.i
  %i.gf = shl nsw i32 %.032.5.i, 1
  %i.gg = icmp slt i32 %.032.5.i, %i.fm
  br i1 %i.gg, label %._crit_edge.4.i, label %._crit_edge.5.i, !llvm.loop !32

._crit_edge.5.i:                                  ; preds = %bb.bb, %bb.bc
  %.032.6.i = phi i32 [ %i.gi, %bb.bc ], [ 1, %bb.bb ] ; 3 uses
  %i.gh = tail call fastcc i32 @test(ptr noundef nonnull %i.fo, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mode, i64 96), i32 noundef %i.fm, i32 noundef %.032.6.i), !inline_history !30
  %.not25.6.i = icmp eq i32 %i.gh, 0
  br i1 %.not25.6.i, label %bb.bc, label %generate.exit, !llvm.loop !33

bb.bc:                                            ; preds = %._crit_edge.5.i
  %i.gi = shl nsw i32 %.032.6.i, 1
  %i.gj = icmp slt i32 %.032.6.i, %i.fm
  br i1 %i.gj, label %._crit_edge.5.i, label %._crit_edge.6.i, !llvm.loop !32

._crit_edge.6.i:                                  ; preds = %bb.bc, %bb.bd
  %.032.7.i = phi i32 [ %i.gl, %bb.bd ], [ 1, %bb.bc ] ; 3 uses
  %i.gk = tail call fastcc i32 @test(ptr noundef nonnull %i.fo, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mode, i64 112), i32 noundef %i.fm, i32 noundef %.032.7.i), !inline_history !30
  %.not25.7.i = icmp eq i32 %i.gk, 0
  br i1 %.not25.7.i, label %bb.bd, label %generate.exit, !llvm.loop !33

bb.bd:                                            ; preds = %._crit_edge.6.i
  %i.gl = shl nsw i32 %.032.7.i, 1
  %i.gm = icmp slt i32 %.032.7.i, %i.fm
  br i1 %i.gm, label %._crit_edge.6.i, label %._crit_edge.7.i, !llvm.loop !32

._crit_edge.7.i:                                  ; preds = %bb.bd
  %indvars.iv.next.i39 = add nuw nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i39, 5
  br i1 %exitcond.i, label %.critedge.loopexit.split.i, label %.preheader30.i, !llvm.loop !34

bb.be:                                            ; preds = %.thread, %bb.ak
  %i.gn = load ptr, ptr @stderr, align 8, !tbaa !48
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 66, i64 1, ptr %i.gn) #22 ; 0 uses
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !48
  %fwrite27 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 32, i64 1, ptr %i.go) #22 ; 0 uses
  %i.gp = load ptr, ptr @stderr, align 8, !tbaa !48
  %fwrite28 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 41, i64 1, ptr %i.gp) #22 ; 0 uses
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !48
  %fputc = tail call i32 @fputc(i32 10, ptr %i.gq) ; 0 uses
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.gs = load ptr, ptr @dist, align 16, !tbaa !16
  %i.gt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gr, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, ptr noundef %i.gs) #23 ; 0 uses
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dist, i64 16), align 16, !tbaa !16
  %i.gw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.gv) #23 ; 0 uses
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dist, i64 32), align 16, !tbaa !16
  %i.gz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gx, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.gy) #23 ; 0 uses
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.hb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dist, i64 48), align 16, !tbaa !16
  %i.hc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.hb) #23 ; 0 uses
  %i.hd = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dist, i64 64), align 16, !tbaa !16
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hd, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.he) #23 ; 0 uses
  %i.hg = load ptr, ptr @stderr, align 8, !tbaa !48
  %fputc31 = tail call i32 @fputc(i32 10, ptr %i.hg) ; 0 uses
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.hi = load ptr, ptr @mode, align 16, !tbaa !18
  %i.hj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, ptr noundef %i.hi) #23 ; 0 uses
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mode, i64 16), align 16, !tbaa !18
  %i.hm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.hl) #23 ; 0 uses
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mode, i64 32), align 16, !tbaa !18
  %i.hp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hn, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.ho) #23 ; 0 uses
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.hr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mode, i64 48), align 16, !tbaa !18
  %i.hs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hq, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.hr) #23 ; 0 uses
  %i.ht = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.hu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mode, i64 64), align 16, !tbaa !18
  %i.hv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ht, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.hu) #23 ; 0 uses
  %i.hw = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mode, i64 80), align 16, !tbaa !18
  %i.hy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hw, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.hx) #23 ; 0 uses
  %i.hz = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mode, i64 96), align 16, !tbaa !18
  %i.ib = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hz, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.ia) #23 ; 0 uses
  %i.ic = load ptr, ptr @stderr, align 8, !tbaa !48
  %i.id = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mode, i64 112), align 16, !tbaa !18
  %i.ie = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ic, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %i.id) #23 ; 0 uses
  %i.if = load ptr, ptr @stderr, align 8, !tbaa !48
  %fputc33 = tail call i32 @fputc(i32 10, ptr %i.if) ; 0 uses
  br label %generate.exit

generate.exit:                                    ; preds = %.critedge.loopexit.split.i, %bb.aw, %._crit_edge.i38, %._crit_edge.1.i, %._crit_edge.2.i, %._crit_edge.3.i, %._crit_edge.4.i, %._crit_edge.5.i, %._crit_edge.6.i, %.critedge.i.loopexit.split.i, %bb.an, %._crit_edge38.i, %._crit_edge38.1.i, %._crit_edge38.2.i, %._crit_edge38.3.i, %._crit_edge38.4.i, %._crit_edge38.5.i, %._crit_edge38.6.i, %._crit_edge.i, %get_mode_by_name.exit.i, %bb.be, %sort_stdin.exit
  %.020 = phi i32 [ 129, %bb.be ], [ 1, %get_mode_by_name.exit.i ], [ 0, %sort_stdin.exit ], [ 0, %._crit_edge.i ], [ 1, %._crit_edge.2.i ], [ 1, %._crit_edge38.2.i ], [ 1, %._crit_edge.3.i ], [ 1, %._crit_edge38.1.i ], [ 1, %._crit_edge38.i ], [ 1, %bb.an ], [ 0, %.critedge.i.loopexit.split.i ], [ 1, %._crit_edge.6.i ], [ 1, %._crit_edge.5.i ], [ 1, %._crit_edge.4.i ], [ 1, %._crit_edge.1.i ], [ 1, %._crit_edge.i38 ], [ 1, %bb.aw ], [ 1, %._crit_edge38.6.i ], [ 1, %._crit_edge38.5.i ], [ 1, %._crit_edge38.4.i ], [ 1, %._crit_edge38.3.i ], [ 0, %.critedge.loopexit.split.i ]
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @strbuf_read(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @mem_pool_init(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @mem_pool_alloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @test(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x ptr], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = sext i32 %2 to i64                       ; 6 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %bb.b, label %st_mult.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.12, i64 noundef 4, i64 noundef %i.c) #21
  unreachable

st_mult.exit:                                     ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 2
  %i.f = tail call ptr @xmalloc(i64 noundef %i.e) #20 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  tail call void %i.h(ptr noundef %i.f, i32 noundef %2, i32 noundef %3) #20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  tail call void %i.j(ptr noundef %i.f, i32 noundef %2) #20
  %.not112 = icmp eq i32 %2, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %st_mult.exit, %.lr.ph
  %.05086 = phi ptr [ %i.p, %.lr.ph ], [ %i.b, %st_mult.exit ]
  %.05285 = phi i64 [ %i.q, %.lr.ph ], [ 0, %st_mult.exit ] ; 3 uses
  %i.k = tail call ptr @xmalloc(i64 noundef 16) #20 ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.05285
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  store i32 %i.m, ptr %i.k, align 8, !tbaa !55
  %i.n = trunc i64 %.05285 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !56
  store ptr %i.k, ptr %.05086, align 8, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.q = add nuw i64 %.05285, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph, %st_mult.exit
  %.050.lcssa = phi ptr [ %i.b, %st_mult.exit ], [ %i.p, %.lr.ph ]
  store ptr null, ptr %.050.lcssa, align 8, !tbaa !57
  store i32 0, ptr @stats.2, align 4, !tbaa !59
  store i32 0, ptr @stats.1, align 4, !tbaa !60
  store i32 0, ptr @stats.0, align 4, !tbaa !61
  %.0..0..0.64 = load ptr, ptr %i.b, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not.i = icmp eq ptr %.0..0..0.64, null
  br i1 %.not.i, label %sort_numbers.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %._crit_edge
  %i.r = getelementptr i8, ptr %.0..0..0.64, i64 8 ; 2 uses
  %.023.val.i88 = load ptr, ptr %i.r, align 8, !tbaa !62 ; 2 uses
  store i32 1, ptr @stats.0, align 4, !tbaa !61
  %.not27.not.i89 = icmp eq ptr %.023.val.i88, null
  br i1 %.not27.not.i89, label %.split.us.i.preheader, label %.split.i

.split.us.i.preheader:                            ; preds = %._crit_edge.i.a, %.preheader.i.preheader
  %.ph = phi i32 [ 0, %.preheader.i.preheader ], [ %stats.1.promoted31.i, %._crit_edge.i.a ]
  %.lcssa13.us.i.ph = phi i32 [ 1, %.preheader.i.preheader ], [ %i.cc, %._crit_edge.i.a ]
  %.ph218 = phi i32 [ 0, %.preheader.i.preheader ], [ %stats.2.promoted34.i, %._crit_edge.i.a ]
  %.124.us.i.ph = phi ptr [ %.0..0..0.64, %.preheader.i.preheader ], [ %.023.val.i94, %._crit_edge.i.a ]
  %.0.us.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bz, %._crit_edge.i.a ]
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i.preheader, %bb.i
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %bb.i ], [ 0, %.split.us.i.preheader ] ; 2 uses
  %i.s = phi i32 [ %i.as, %bb.i ], [ %.ph, %.split.us.i.preheader ] ; 2 uses
  %.lcssa13.us.i = phi i32 [ %.lcssa12.us.i, %bb.i ], [ %.lcssa13.us.i.ph, %.split.us.i.preheader ] ; 2 uses
  %i.t = phi i32 [ %i.at, %bb.i ], [ %.ph218, %.split.us.i.preheader ] ; 2 uses
  %.124.us.i = phi ptr [ %.2.us.i, %bb.i ], [ %.124.us.i.ph, %.split.us.i.preheader ] ; 5 uses
  %.0.us.i = phi i64 [ %i.au, %bb.i ], [ %.0.us.i.ph, %.split.us.i.preheader ] ; 3 uses
  %i.u = and i64 %.0.us.i, 1
  %.not28.us.i = icmp eq i64 %i.u, 0
  br i1 %.not28.us.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %.split.us.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv59.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !55
  %i.y = load i32, ptr %.124.us.i, align 8, !tbaa !55
  %i.z = add nsw i32 %i.t, 1                      ; 2 uses
  store i32 %i.z, ptr @stats.2, align 4, !tbaa !59
  %i.aa = icmp sle i32 %i.x, %i.y                 ; 3 uses
  %i.ab = zext i1 %i.aa to i32
  %spec.select.i.us.i = select i1 %i.aa, ptr %.124.us.i, ptr %i.w
  %spec.select35.i.us.i = select i1 %i.aa, ptr %i.w, ptr %.124.us.i ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.ac = phi i32 [ %i.z, %bb.c ], [ %i.ak, %bb.g ]
  %i.ad = phi i32 [ %i.s, %bb.c ], [ %i.ao, %bb.g ] ; 2 uses
  %.lcssa46.i.us.i = phi i32 [ %.lcssa13.us.i, %bb.c ], [ %i.ah, %bb.g ]
  %.133.i.us.i = phi ptr [ %spec.select.i.us.i, %bb.c ], [ %.2.val.i.us.i, %bb.g ] ; 4 uses
  %.1.i.us.i = phi ptr [ %spec.select35.i.us.i, %bb.c ], [ %.133.i.us.i, %bb.g ]
  %.018.i.us.i = phi i32 [ %i.ab, %bb.c ], [ %i.ap, %bb.g ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ae = phi i32 [ %i.ac, %bb.d ], [ %i.ak, %bb.f ] ; 2 uses
  %i.af = phi i32 [ %.lcssa46.i.us.i, %bb.d ], [ %i.ah, %bb.f ]
  %.2.i.us.i = phi ptr [ %.1.i.us.i, %bb.d ], [ %.2.val.i.us.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.2.i.us.i, i64 8
  %.2.val.i.us.i = load ptr, ptr %i.ag, align 8, !tbaa !62 ; 4 uses
  %i.ah = add nsw i32 %i.af, 1                    ; 5 uses
  %.not.i.us.i = icmp eq ptr %.2.val.i.us.i, null
  br i1 %.not.i.us.i, label %sort_numbers__merge.exit.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %.2.val.i.us.i, align 8, !tbaa !55
  %i.aj = load i32, ptr %.133.i.us.i, align 8, !tbaa !55
  %i.ak = add nsw i32 %i.ae, 1                    ; 3 uses
  store i32 %i.ak, ptr @stats.2, align 4, !tbaa !59
  %i.al = tail call range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.ai, i32 %i.aj)
  %i.am = icmp slt i32 %i.al, %.018.i.us.i
  br i1 %i.am, label %bb.e, label %bb.g, !llvm.loop !50

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr i8, ptr %.2.i.us.i, i64 8
  store i32 %i.ah, ptr @stats.0, align 4, !tbaa !61
  %i.ao = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ao, ptr @stats.1, align 4, !tbaa !60
  store ptr %.133.i.us.i, ptr %i.an, align 8, !tbaa !62
  %i.ap = xor i32 %.018.i.us.i, 1
  br label %bb.d

sort_numbers__merge.exit.us.i:                    ; preds = %bb.e
  %i.aq = getelementptr i8, ptr %.2.i.us.i, i64 8
  store i32 %i.ah, ptr @stats.0, align 4, !tbaa !61
  %i.ar = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ar, ptr @stats.1, align 4, !tbaa !60
  store ptr %.133.i.us.i, ptr %i.aq, align 8, !tbaa !62
  br label %bb.i

bb.h:                                             ; preds = %.split.us.i
  %.not29.us.i = icmp eq i64 %.0.us.i, 0
  br i1 %.not29.us.i, label %sort_numbers.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %sort_numbers__merge.exit.us.i
  %i.as = phi i32 [ %i.ar, %sort_numbers__merge.exit.us.i ], [ %i.s, %bb.h ]
  %.lcssa12.us.i = phi i32 [ %i.ah, %sort_numbers__merge.exit.us.i ], [ %.lcssa13.us.i, %bb.h ]
  %i.at = phi i32 [ %i.ae, %sort_numbers__merge.exit.us.i ], [ %i.t, %bb.h ]
  %.2.us.i = phi ptr [ %spec.select35.i.us.i, %sort_numbers__merge.exit.us.i ], [ %.124.us.i, %bb.h ]
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1
  %i.au = lshr i64 %.0.us.i, 1
  br label %.split.us.i

.split.i:                                         ; preds = %.preheader.i.preheader, %._crit_edge.i.a
  %i.av = phi i32 [ %i.cc, %._crit_edge.i.a ], [ 1, %.preheader.i.preheader ] ; 2 uses
  %.023.val.i94 = phi ptr [ %.023.val.i, %._crit_edge.i.a ], [ %.023.val.i88, %.preheader.i.preheader ] ; 3 uses
  %i.aw = phi ptr [ %i.cb, %._crit_edge.i.a ], [ %i.r, %.preheader.i.preheader ]
  %.022.i93 = phi i64 [ %i.bz, %._crit_edge.i.a ], [ 0, %.preheader.i.preheader ] ; 3 uses
  %.023.i92 = phi ptr [ %.023.val.i94, %._crit_edge.i.a ], [ %.0..0..0.64, %.preheader.i.preheader ] ; 3 uses
  %stats.1.promoted30.i91 = phi i32 [ %stats.1.promoted31.i, %._crit_edge.i.a ], [ 0, %.preheader.i.preheader ]
  %stats.2.promoted35.i90 = phi i32 [ %stats.2.promoted34.i, %._crit_edge.i.a ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ax = add nsw i32 %stats.1.promoted30.i91, 1  ; 3 uses
  store i32 %i.ax, ptr @stats.1, align 4, !tbaa !60
  store ptr null, ptr %i.aw, align 8, !tbaa !62
  %i.ay = and i64 %.022.i93, 1
  %.not2819.i = icmp eq i64 %i.ay, 0
  br i1 %.not2819.i, label %._crit_edge.i.a, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.split.i
  %.pre.i = load i32, ptr %.023.i92, align 8, !tbaa !55
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sort_numbers__merge.exit.i, %.lr.ph.preheader.i
  %i.az = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.bv, %sort_numbers__merge.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %sort_numbers__merge.exit.i ] ; 2 uses
  %.024.i = phi i64 [ %.022.i93, %.lr.ph.preheader.i ], [ %i.bx, %sort_numbers__merge.exit.i ] ; 2 uses
  %.12421.i = phi ptr [ %.023.i92, %.lr.ph.preheader.i ], [ %spec.select35.i.i, %sort_numbers__merge.exit.i ] ; 2 uses
  %i.ba = phi i32 [ %stats.2.promoted35.i90, %.lr.ph.preheader.i ], [ %stats.2.promoted37.i, %sort_numbers__merge.exit.i ]
  %.lcssa1320.i = phi i32 [ %i.av, %.lr.ph.preheader.i ], [ %i.bl, %sort_numbers__merge.exit.i ]
  %i.bb = phi i32 [ %i.ax, %.lr.ph.preheader.i ], [ %i.bw, %sort_numbers__merge.exit.i ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !57 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !55 ; 2 uses
  %i.bf = add nsw i32 %i.ba, 1                    ; 2 uses
  store i32 %i.bf, ptr @stats.2, align 4, !tbaa !59
  %i.bg = icmp sle i32 %i.be, %i.az               ; 3 uses
  %i.bh = zext i1 %i.bg to i32
  %spec.select.i.i = select i1 %i.bg, ptr %.12421.i, ptr %i.bd
  %spec.select35.i.i = select i1 %i.bg, ptr %i.bd, ptr %.12421.i ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %stats.2.promoted36.i = phi i32 [ %i.bf, %.lr.ph.i ], [ %i.bo, %bb.m ]
  %i.bi = phi i32 [ %i.bb, %.lr.ph.i ], [ %i.bs, %bb.m ] ; 2 uses
  %.lcssa46.i.i = phi i32 [ %.lcssa1320.i, %.lr.ph.i ], [ %i.bl, %bb.m ]
  %.133.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %.2.val.i.i, %bb.m ] ; 4 uses
  %.1.i.i = phi ptr [ %spec.select35.i.i, %.lr.ph.i ], [ %.133.i.i, %bb.m ]
  %.018.i.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bt, %bb.m ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %stats.2.promoted37.i = phi i32 [ %stats.2.promoted36.i, %bb.j ], [ %i.bo, %bb.l ] ; 3 uses
  %i.bj = phi i32 [ %.lcssa46.i.i, %bb.j ], [ %i.bl, %bb.l ]
  %.2.i.i = phi ptr [ %.1.i.i, %bb.j ], [ %.2.val.i.i, %bb.l ] ; 3 uses
  %i.bk = getelementptr i8, ptr %.2.i.i, i64 8
  %.2.val.i.i = load ptr, ptr %i.bk, align 8, !tbaa !62 ; 4 uses
  %i.bl = add nsw i32 %i.bj, 1                    ; 6 uses
  %.not.i.i = icmp eq ptr %.2.val.i.i, null
  br i1 %.not.i.i, label %sort_numbers__merge.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = load i32, ptr %.2.val.i.i, align 8, !tbaa !55
  %i.bn = load i32, ptr %.133.i.i, align 8, !tbaa !55
  %i.bo = add nsw i32 %stats.2.promoted37.i, 1    ; 3 uses
  store i32 %i.bo, ptr @stats.2, align 4, !tbaa !59
  %i.bp = tail call range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.bm, i32 %i.bn)
  %i.bq = icmp slt i32 %i.bp, %.018.i.i
  br i1 %i.bq, label %bb.k, label %bb.m, !llvm.loop !50

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr i8, ptr %.2.i.i, i64 8
  store i32 %i.bl, ptr @stats.0, align 4, !tbaa !61
  %i.bs = add nsw i32 %i.bi, 1                    ; 2 uses
  store i32 %i.bs, ptr @stats.1, align 4, !tbaa !60
  store ptr %.133.i.i, ptr %i.br, align 8, !tbaa !62
  %i.bt = xor i32 %.018.i.i, 1
  br label %bb.j

sort_numbers__merge.exit.i:                       ; preds = %bb.k
  %i.bu = getelementptr i8, ptr %.2.i.i, i64 8
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.az)
  store i32 %i.bl, ptr @stats.0, align 4, !tbaa !61
  %i.bw = add nsw i32 %i.bi, 1                    ; 3 uses
  store i32 %i.bw, ptr @stats.1, align 4, !tbaa !60
  store ptr %.133.i.i, ptr %i.bu, align 8, !tbaa !62
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bx = lshr i64 %.024.i, 1
  %i.by = and i64 %.024.i, 2
  %.not28.i = icmp eq i64 %i.by, 0
  br i1 %.not28.i, label %._crit_edge.i.a, label %.lr.ph.i

._crit_edge.i.a:                                  ; preds = %sort_numbers__merge.exit.i, %.split.i
  %stats.2.promoted34.i = phi i32 [ %stats.2.promoted35.i90, %.split.i ], [ %stats.2.promoted37.i, %sort_numbers__merge.exit.i ] ; 2 uses
  %stats.1.promoted31.i = phi i32 [ %i.ax, %.split.i ], [ %i.bw, %sort_numbers__merge.exit.i ] ; 2 uses
  %stats.0.promoted27.i = phi i32 [ %i.av, %.split.i ], [ %i.bl, %sort_numbers__merge.exit.i ]
  %.124.lcssa18.i = phi ptr [ %.023.i92, %.split.i ], [ %spec.select35.i.i, %sort_numbers__merge.exit.i ]
  %.020.lcssa17.i = phi i64 [ 0, %.split.i ], [ %indvars.iv.next.i, %sort_numbers__merge.exit.i ]
  %i.bz = add i64 %.022.i93, 1                    ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.020.lcssa17.i
  store ptr %.124.lcssa18.i, ptr %i.ca, align 8, !tbaa !57
  %i.cb = getelementptr i8, ptr %.023.val.i94, i64 8 ; 2 uses
  %.023.val.i = load ptr, ptr %i.cb, align 8, !tbaa !62 ; 2 uses
  %i.cc = add nsw i32 %stats.0.promoted27.i, 1    ; 3 uses
  store i32 %i.cc, ptr @stats.0, align 4, !tbaa !61
  %.not27.not.i = icmp eq ptr %.023.val.i, null
  br i1 %.not27.not.i, label %.split.us.i.preheader, label %.split.i

sort_numbers.exit:                                ; preds = %bb.h, %._crit_edge
  %.0..0. = phi ptr [ null, %._crit_edge ], [ %.124.us.i, %bb.h ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cd = icmp ugt i32 %2, 1
  br i1 %i.cd, label %bb.n, label %sane_qsort.exit

bb.n:                                             ; preds = %sort_numbers.exit
  tail call void @qsort(ptr noundef %i.f, i64 noundef range(i64 -2147483648, 2147483648) %i.c, i64 noundef 4, ptr noundef nonnull @compare_ints) #20
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %sort_numbers.exit, %bb.n
  %i.ce = icmp ne i32 %2, 0                       ; 3 uses
  %i.cf = icmp ne ptr %.0..0., null               ; 3 uses
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %i.cg, label %.lr.ph106, label %._crit_edge107.thread

.lr.ph106:                                        ; preds = %sane_qsort.exit, %bb.q
  %.051105 = phi ptr [ %i.cl, %bb.q ], [ %.0..0., %sane_qsort.exit ] ; 3 uses
  %.047104 = phi i32 [ %.1, %bb.q ], [ 1, %sane_qsort.exit ] ; 3 uses
  %.048103 = phi i32 [ %spec.select, %bb.q ], [ 1, %sane_qsort.exit ]
  %.153102 = phi i64 [ %i.cu, %bb.q ], [ 0, %sane_qsort.exit ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.153102
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !21
  %i.cj = load i32, ptr %.051105, align 8, !tbaa !55 ; 2 uses
  %.not57 = icmp eq i32 %i.ci, %i.cj
  %spec.select = select i1 %.not57, i32 %.048103, i32 0 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.051105, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !62 ; 4 uses
  %.not58.not.not = icmp ne ptr %i.cl, null       ; 2 uses
  br i1 %.not58.not.not, label %bb.o, label %.thread

.thread:                                          ; preds = %.lr.ph106
  %i.cm = add nuw i64 %.153102, 1
  %i.cn = icmp ult i64 %i.cm, %i.c
  br label %._crit_edge107

bb.o:                                             ; preds = %.lr.ph106
  %i.co = load i32, ptr %i.cl, align 8, !tbaa !55
  %i.cp = icmp eq i32 %i.cj, %i.co
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %.051105, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !56
  %.not59 = icmp slt i32 %i.cr, %i.ct
  %spec.select60 = select i1 %.not59, i32 %.047104, i32 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1 = phi i32 [ %.047104, %bb.o ], [ %spec.select60, %bb.p ] ; 2 uses
  %i.cu = add nuw i64 %.153102, 1                 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.c
  br i1 %i.cv, label %.lr.ph106, label %._crit_edge107, !llvm.loop !51

._crit_edge107:                                   ; preds = %bb.q, %.thread
  %.str.29.mux = phi ptr [ @.str.31, %.thread ], [ @.str.30, %bb.q ]
  %i.cw = phi i1 [ %i.cn, %.thread ], [ false, %bb.q ] ; 2 uses
  %.1140 = phi i32 [ %.047104, %.thread ], [ %.1, %bb.q ]
  %i.cx = icmp eq i32 %spec.select, 0
  %brmerge = or i1 %i.cw, %.not58.not.not
  %brmerge184 = select i1 %brmerge, i1 true, i1 %i.cx
  %.str.29.mux.mux = select i1 %i.cw, ptr @.str.29, ptr %.str.29.mux
  br i1 %brmerge184, label %.thread153, label %bb.r

._crit_edge107.thread:                            ; preds = %sane_qsort.exit
  %brmerge145 = select i1 %i.ce, i1 true, i1 %i.cf
  %.str.29.mux146 = select i1 %i.cf, ptr @.str.30, ptr @.str.33
  %spec.select210 = select i1 %i.ce, ptr @.str.29, ptr %.str.29.mux146
  %spec.select211 = sext i1 %brmerge145 to i32
  br label %.thread153

bb.r:                                             ; preds = %._crit_edge107
  %.1140.fr = freeze i32 %.1140
  %i.cy = icmp eq i32 %.1140.fr, 0                ; 2 uses
  %spec.select185 = select i1 %i.cy, ptr @.str.32, ptr @.str.33
  %i.cz = sext i1 %i.cy to i32
  br label %.thread153

.thread153:                                       ; preds = %._crit_edge107.thread, %bb.r, %._crit_edge107
  %.046 = phi ptr [ %spec.select210, %._crit_edge107.thread ], [ %.str.29.mux.mux, %._crit_edge107 ], [ %spec.select185, %bb.r ]
  %.0 = phi i32 [ %spec.select211, %._crit_edge107.thread ], [ -1, %._crit_edge107 ], [ %i.cz, %bb.r ]
  %i.da = load ptr, ptr %0, align 8, !tbaa !16
  %i.db = load ptr, ptr %1, align 8, !tbaa !18
  %i.dc = load i32, ptr @stats.0, align 4, !tbaa !61
  %i.dd = load i32, ptr @stats.1, align 4, !tbaa !60
  %i.de = load i32, ptr @stats.2, align 4, !tbaa !59
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %i.da, ptr noundef %i.db, i32 noundef %2, i32 noundef %3, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef %i.de, ptr noundef nonnull %.046) ; 0 uses
  %.not4.i = icmp eq ptr %.0..0., null
  br i1 %.not4.i, label %clear_numbers.exit, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.thread153, %.lr.ph.i61
  %.05.i = phi ptr [ %i.dh, %.lr.ph.i61 ], [ %.0..0., %.thread153 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !62 ; 2 uses
  tail call void @free(ptr noundef nonnull %.05.i) #20
  %.not.i62 = icmp eq ptr %i.dh, null
  br i1 %.not.i62, label %clear_numbers.exit, label %.lr.ph.i61, !llvm.loop !52

clear_numbers.exit:                               ; preds = %.lr.ph.i61, %.thread153
  tail call void @free(ptr noundef %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @compare_ints(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !21
  %i.b = load i32, ptr %1, align 4, !tbaa !21
  %i.c = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %i.c
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @dist_sawtooth(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = srem i32 %i.c, %2
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.d, ptr %i.e, align 4, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.g = srem i32 %i.f, %2
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.g, ptr %i.h, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !63

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.i = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.j = srem i32 %i.i, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i32 %i.j, ptr %i.k, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @dist_rand(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #11 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.056 = phi i64 [ 1, %.lr.ph.preheader ], [ %i.c, %.lr.ph ]
  %i.b = mul nuw nsw i64 %.056, 48271
  %i.c = urem i64 %i.b, 2147483647                ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = urem i32 %i.d, %2
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.e, ptr %i.f, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal void @dist_stagger(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) #11 {
bb.a:
end_hunk_0
