Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/date?download=true
inline.NumInlined: 105
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@parse_date_format:bb.a
  %i.fm = icmp eq i8 %i.fl, 120
  br i1 %i.fm, label %parse_date_type.exit, label %skip_prefix_impl.exit74.i

skip_prefix_impl.exit70.preheader.i:              ; preds = %skip_prefix_impl.exit66.preheader.i
  %scevgep112.i = getelementptr i8, ptr %spec.store.select, i64 6
  %i.fn = icmp eq i8 %i.s, 102
  br i1 %i.fn, label %skip_prefix_impl.exit70.1.i, label %skip_prefix_impl.exit74.i

skip_prefix_impl.exit70.1.i:                      ; preds = %skip_prefix_impl.exit70.preheader.i
  %i.fo = load i8, ptr %i.r, align 1, !tbaa !30
  %i.fp = icmp eq i8 %i.fo, 111
  br i1 %i.fp, label %skip_prefix_impl.exit70.2.i, label %skip_prefix_impl.exit74.i

skip_prefix_impl.exit70.2.i:                      ; preds = %skip_prefix_impl.exit70.1.i
  %i.fq = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 2
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !30
  %i.fs = icmp eq i8 %i.fr, 114
  br i1 %i.fs, label %skip_prefix_impl.exit70.3.i, label %skip_prefix_impl.exit74.i

skip_prefix_impl.exit70.3.i:                      ; preds = %skip_prefix_impl.exit70.2.i
  %i.ft = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 3
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !30
  %i.fv = icmp eq i8 %i.fu, 109
  br i1 %i.fv, label %skip_prefix_impl.exit70.4.i, label %skip_prefix_impl.exit74.i

skip_prefix_impl.exit70.4.i:                      ; preds = %skip_prefix_impl.exit70.3.i
  %i.fw = load i8, ptr %scevgep111.i, align 1, !tbaa !30
  %i.fx = icmp eq i8 %i.fw, 97
  br i1 %i.fx, label %skip_prefix_impl.exit70.5.i, label %skip_prefix_impl.exit74.i

skip_prefix_impl.exit70.5.i:                      ; preds = %skip_prefix_impl.exit70.4.i
  %i.fy = load i8, ptr %scevgep107.i, align 1, !tbaa !30
  %i.fz = icmp eq i8 %i.fy, 116
  br i1 %i.fz, label %parse_date_type.exit, label %skip_prefix_impl.exit74.i

skip_prefix_impl.exit74.i:                        ; preds = %skip_prefix_impl.exit42.2.i, %skip_prefix_impl.exit.2.i, %skip_prefix_impl.exit42.1.i, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %skip_prefix_impl.exit70.5.i, %skip_prefix_impl.exit70.4.i, %skip_prefix_impl.exit70.3.i, %skip_prefix_impl.exit70.2.i, %skip_prefix_impl.exit70.1.i, %skip_prefix_impl.exit70.preheader.i, %skip_prefix_impl.exit66.3.i, %skip_prefix_impl.exit66.2.i, %skip_prefix_impl.exit66.1.i, %skip_prefix_impl.exit62.2.i, %skip_prefix_impl.exit58.4.i, %skip_prefix_impl.exit58.3.i, %skip_prefix_impl.exit58.2.i, %skip_prefix_impl.exit58.1.i, %skip_prefix_impl.exit54.6.i, %skip_prefix_impl.exit54.5.i, %skip_prefix_impl.exit54.4.i, %skip_prefix_impl.exit54.3.i, %skip_prefix_impl.exit54.2.i, %skip_prefix_impl.exit54.1.i, %skip_prefix_impl.exit50.4.i, %skip_prefix_impl.exit50.3.i, %skip_prefix_impl.exit50.2.i, %skip_prefix_impl.exit50.1.i, %skip_prefix_impl.exit.1.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.39, ptr noundef nonnull %spec.store.select) #21
  unreachable

parse_date_type.exit:                             ; preds = %skip_prefix_impl.exit46.2.i.thread, %skip_prefix_impl.exit38.2.i.thread, %bb.o, %skip_prefix_impl.exit.13.i, %skip_prefix_impl.exit30.9.i, %skip_prefix_impl.exit34.6.i, %skip_prefix_impl.exit42.6.i, %skip_prefix_impl.exit50.4.i, %skip_prefix_impl.exit54.6.i, %skip_prefix_impl.exit58.4.i, %skip_prefix_impl.exit62.2.i, %skip_prefix_impl.exit66.3.i, %skip_prefix_impl.exit70.5.i
  %scevgep112.sink.i = phi ptr [ %scevgep111.i, %skip_prefix_impl.exit66.3.i ], [ %scevgep104139.i, %skip_prefix_impl.exit62.2.i ], [ %scevgep107.i, %skip_prefix_impl.exit58.4.i ], [ %scevgep103.i, %skip_prefix_impl.exit54.6.i ], [ %scevgep107.i, %skip_prefix_impl.exit50.4.i ], [ %scevgep104139.i, %skip_prefix_impl.exit46.2.i.thread ], [ %scevgep103138.i, %skip_prefix_impl.exit42.6.i ], [ %i.au, %skip_prefix_impl.exit38.2.i.thread ], [ %scevgep103119.i30, %skip_prefix_impl.exit34.6.i ], [ %scevgep102114.i28, %skip_prefix_impl.exit30.9.i ], [ %scevgep101.i, %skip_prefix_impl.exit.13.i ], [ %scevgep.i, %bb.o ], [ %scevgep112.i, %skip_prefix_impl.exit70.5.i ] ; 13 uses
  %i.ga = phi i1 [ false, %skip_prefix_impl.exit66.3.i ], [ false, %skip_prefix_impl.exit62.2.i ], [ false, %skip_prefix_impl.exit58.4.i ], [ false, %skip_prefix_impl.exit54.6.i ], [ false, %skip_prefix_impl.exit50.4.i ], [ false, %skip_prefix_impl.exit46.2.i.thread ], [ false, %skip_prefix_impl.exit42.6.i ], [ false, %skip_prefix_impl.exit38.2.i.thread ], [ false, %skip_prefix_impl.exit34.6.i ], [ false, %skip_prefix_impl.exit30.9.i ], [ false, %skip_prefix_impl.exit.13.i ], [ false, %bb.o ], [ true, %skip_prefix_impl.exit70.5.i ]
  %.0.i = phi i32 [ 9, %skip_prefix_impl.exit66.3.i ], [ 8, %skip_prefix_impl.exit62.2.i ], [ 1, %skip_prefix_impl.exit58.4.i ], [ 0, %skip_prefix_impl.exit54.6.i ], [ 3, %skip_prefix_impl.exit50.4.i ], [ 6, %skip_prefix_impl.exit46.2.i.thread ], [ 6, %skip_prefix_impl.exit42.6.i ], [ 4, %skip_prefix_impl.exit38.2.i.thread ], [ 4, %skip_prefix_impl.exit34.6.i ], [ 5, %skip_prefix_impl.exit30.9.i ], [ 5, %skip_prefix_impl.exit.13.i ], [ 2, %bb.o ], [ 7, %skip_prefix_impl.exit70.5.i ]
  store i32 %.0.i, ptr %1, align 8, !tbaa !59
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.gb, align 4, !tbaa !60
  %scevgep53 = getelementptr i8, ptr %scevgep112.sink.i, i64 6
  %i.gc = load i8, ptr %scevgep112.sink.i, align 1, !tbaa !30
  %i.gd = icmp eq i8 %i.gc, 45
  br i1 %i.gd, label %bb.p, label %skip_prefix_impl.exit16

bb.p:                                             ; preds = %parse_date_type.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %scevgep112.sink.i, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !30
  %i.gg = icmp eq i8 %i.gf, 108
  br i1 %i.gg, label %bb.q, label %skip_prefix_impl.exit16

bb.q:                                             ; preds = %bb.p
  %i.gh = getelementptr inbounds nuw i8, ptr %scevgep112.sink.i, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !30
  %i.gj = icmp eq i8 %i.gi, 111
  br i1 %i.gj, label %bb.r, label %skip_prefix_impl.exit16

bb.r:                                             ; preds = %bb.q
  %i.gk = getelementptr inbounds nuw i8, ptr %scevgep112.sink.i, i64 3
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !30
  %i.gm = icmp eq i8 %i.gl, 99
  br i1 %i.gm, label %bb.s, label %skip_prefix_impl.exit16

bb.s:                                             ; preds = %bb.r
  %i.gn = getelementptr inbounds nuw i8, ptr %scevgep112.sink.i, i64 4
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !30
  %i.gp = icmp eq i8 %i.go, 97
  br i1 %i.gp, label %bb.t, label %skip_prefix_impl.exit16

bb.t:                                             ; preds = %bb.s
  %i.gq = getelementptr inbounds nuw i8, ptr %scevgep112.sink.i, i64 5
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !30
  %i.gs = icmp eq i8 %i.gr, 108
  br i1 %i.gs, label %bb.u, label %skip_prefix_impl.exit16

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.gb, align 4, !tbaa !60
  br label %skip_prefix_impl.exit16

skip_prefix_impl.exit16:                          ; preds = %parse_date_type.exit, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.143 = phi ptr [ %scevgep53, %bb.u ], [ %scevgep112.sink.i, %bb.t ], [ %scevgep112.sink.i, %bb.s ], [ %scevgep112.sink.i, %bb.r ], [ %scevgep112.sink.i, %bb.q ], [ %scevgep112.sink.i, %bb.p ], [ %scevgep112.sink.i, %parse_date_type.exit ] ; 2 uses
  %i.gt = load i8, ptr %.143, align 1, !tbaa !30  ; 2 uses
  br i1 %i.ga, label %.preheader.preheader, label %bb.v

.preheader.preheader:                             ; preds = %skip_prefix_impl.exit16
  %i.gu = icmp eq i8 %i.gt, 58
  br i1 %i.gu, label %.preheader.1, label %skip_prefix_impl.exit20

skip_prefix_impl.exit20:                          ; preds = %.preheader.preheader
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.38, ptr noundef nonnull %spec.store.select) #21
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %scevgep54 = getelementptr i8, ptr %.143, i64 1
  %i.gv = tail call ptr @xstrdup(ptr noundef %scevgep54) #19
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !37
  br label %bb.x

bb.v:                                             ; preds = %skip_prefix_impl.exit16
  %.not12 = icmp eq i8 %i.gt, 0
  br i1 %.not12, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.39, ptr noundef nonnull %spec.store.select) #21
  unreachable

bb.x:                                             ; preds = %bb.v, %.preheader.1
  ret void
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #10

declare i32 @pager_in_use() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #5

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @date_mode_release(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  tail call void @free(ptr noundef %i.b) #19
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @datestamp(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.tm, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #19 ; 0 uses
  %.pre.i = load i64, ptr %1, align 8, !tbaa !26
  store i64 %.pre.i, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.c = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #19 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %i.h = add i32 %i.e, -200
  %or.cond.i = icmp ult i32 %i.h, -130
  %or.cond3.i = icmp ugt i32 %i.g, 11
  %or.cond30.i = select i1 %or.cond.i, i1 true, i1 %or.cond3.i
  br i1 %or.cond30.i, label %tm_to_time_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !20
  %i.k = icmp samesign ult i32 %i.g, 2
  %i.l = and i32 %i.e, 3
  %.not.i = icmp ne i32 %i.l, 0
  %or.cond29.not.i = or i1 %i.k, %.not.i
  %i.m = sext i1 %or.cond29.not.i to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %tm_to_time_t.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %tm_to_time_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %tm_to_time_t.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = mul nuw nsw i32 %i.e, 365
  %i.w = add nsw i32 %i.v, -25550
  %i.x = add nsw i32 %i.e, -69
  %i.y = lshr i32 %i.x, 2
  %i.z = add nuw nsw i32 %i.w, %i.y
  %i.aa = zext nneg i32 %i.g to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @tm_to_time_t.mdays, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !24
  %i.ad = add nsw i32 %i.z, %i.m
  %.0.i = add i32 %i.ad, %i.j
  %i.ae = add i32 %.0.i, %i.ac
  %i.af = mul i32 %i.ae, 86400
  %i.ag = mul nuw nsw i32 %i.o, 3600
  %i.ah = mul nuw nsw i32 %i.r, 60
  %narrow.i = add nuw i32 %i.ah, %i.ag
  %3 = add i32 %narrow.i, %i.t
  %4 = add i32 %3, %i.af
  br label %tm_to_time_t.exit

tm_to_time_t.exit:                                ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.023.i = phi i32 [ %4, %bb.e ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.c ]
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %5 = trunc i64 %i.ai to i32
  %6 = sub i32 %.023.i, %5                        ; 2 uses
  %i.aj = sdiv i32 %6, 60
  %i.ak = icmp slt i32 %6, -59
  %spec.select.i = call i32 @llvm.abs.i32(i32 %i.aj, i1 true) ; 2 uses
  %spec.select8.i = select i1 %i.ak, i32 45, i32 43
  %i.al = udiv i32 %spec.select.i, 60
  %i.am = urem i32 %spec.select.i, 60
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %0, ptr noundef nonnull @.str.118, i64 noundef %i.ai, i32 noundef %spec.select8.i, i32 noundef %i.al, i32 noundef %i.am) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @date_overflows(i64 noundef %0) local_unnamed_addr #13 {
bb.a:
  %.lobit = lshr i64 %0, 63
  %i.a = trunc nuw nsw i64 %.lobit to i32
  ret i32 %i.a
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @dcngettext(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @strbuf_rtrim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @match_multi_number(i64 noundef %0, i8 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull captures(none) %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.timeval, align 8            ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.tm, align 8                 ; 4 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !34
  store i64 %5, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.d = call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i32 noundef 10) #19 ; 5 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !30
  %i.g = icmp eq i8 %i.f, %1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !30
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !30
  %i.m = and i8 %i.l, 2
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i64 @__isoc23_strtol(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 10) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %i.n, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ] ; 4 uses
  switch i8 %1, label %is_date_known.exit.thread [
    i8 58, label %bb.e
    i8 45, label %bb.k
    i8 47, label %bb.k
    i8 46, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %or.cond.i = icmp ult i64 %0, 25
  %i.o = icmp ult i64 %i.d, 60
  %or.cond5.i = and i1 %or.cond.i, %i.o
  %i.p = icmp slt i64 %.0, 61
  %or.cond9.i = and i1 %or.cond5.i, %i.p
  br i1 %or.cond9.i, label %bb.f, label %set_time.exit

bb.f:                                             ; preds = %bb.e
  %spec.store.select = call i64 @llvm.smax.i64(i64 %.0, i64 0)
  %i.q = trunc nuw nsw i64 %0 to i32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !21
  %i.s = trunc nuw nsw i64 %i.d to i32
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.s, ptr %i.t, align 4, !tbaa !22
  %i.u = trunc nuw nsw i64 %spec.store.select to i32
  store i32 %i.u, ptr %4, align 8, !tbaa !23
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !30
  %i.x = icmp eq i8 %i.w, 46
  br i1 %i.x, label %bb.g, label %is_date_known.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !30
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30
  %i.ad = and i8 %i.ac, 2
  %.not41 = icmp eq i8 %i.ad, 0
  br i1 %.not41, label %is_date_known.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !18
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %is_date_known.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !19
  %.not3.i = icmp eq i32 %i.ah, -1
  br i1 %.not3.i, label %is_date_known.exit.thread, label %is_date_known.exit

is_date_known.exit:                               ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !20
  %.not78 = icmp eq i32 %i.aj, -1
  br i1 %.not78, label %is_date_known.exit.thread, label %bb.j

bb.j:                                             ; preds = %is_date_known.exit
  %i.ak = call i64 @__isoc23_strtol(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i32 noundef 10) #19 ; 0 uses
  br label %is_date_known.exit.thread

bb.k:                                             ; preds = %bb.d, %bb.d, %bb.d
  %.not38 = icmp eq i64 %5, 0
  br i1 %.not38, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.al = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #19 ; 0 uses
  %.pre.i = load i64, ptr %6, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  store i64 %.pre.i, ptr %i.b, align 8, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = call ptr @gmtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %7) #19
  %.not39 = icmp eq ptr %i.am, null
  %spec.select = select i1 %.not39, ptr null, ptr %7 ; 4 uses
  %i.an = icmp ugt i64 %0, 70
  br i1 %i.an, label %bb.n, label %set_date.exit63.thread

bb.n:                                             ; preds = %bb.m
  %i.ao = trunc i64 %0 to i32                     ; 14 uses
  %i.ap = trunc i64 %i.d to i32                   ; 3 uses
  %i.aq = trunc i64 %.0 to i32                    ; 2 uses
  %i.ar = add i32 %i.ap, -1                       ; 3 uses
  %or.cond.i43 = icmp ult i32 %i.ar, 12
  %i.as = add i32 %i.aq, -1                       ; 5 uses
  %i.at = icmp ult i32 %i.as, 31
  %or.cond5.i44 = and i1 %or.cond.i43, %i.at
  br i1 %or.cond5.i44, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.ar, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !19
  store i32 %i.aq, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !20
  %i.au = icmp eq i32 %i.ao, -1
  br i1 %i.au, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add i32 %i.ao, -1970
  %or.cond7.i = icmp ult i32 %i.av, 130
  br i1 %or.cond7.i, label %.then97.i, label %bb.q

.then97.i:                                        ; preds = %bb.p
  %i.aw = add nsw i32 %i.ao, -1900
  br label %set_date.exit

bb.q:                                             ; preds = %bb.p
  %i.ax = add i32 %i.ao, -71
  %or.cond9.i45 = icmp ult i32 %i.ax, 29
end_hunk_0
