Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/strbuf?download=true
inline.NumInlined: 143
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
@__PRETTY_FUNCTION__.strbuf_getwholeline = private unnamed_addr constant [54 x i8] c"int strbuf_getwholeline(struct strbuf *, FILE *, int)\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Out of memory, getdelim failed\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\22<>&\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"%u.%2.2u\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"GiB/s\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"MiB/s\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"KiB/s\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"B/s\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"byte/s\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"bytes/s\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@__const.strbuf_addftime.munged_fmt = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.40 = private unnamed_addr constant [3 x i8] c"%%\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"%+05d\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu + %lu\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu * %lu\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"./strbuf.h\00", align 1
@.str.49 = private unnamed_addr constant [30 x i8] c"strbuf_setlen() beyond buffer\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"!strbuf_slopbuf[0]\00", align 1
@__PRETTY_FUNCTION__.strbuf_setlen = private unnamed_addr constant [44 x i8] c"void strbuf_setlen(struct strbuf *, size_t)\00", align 1
@git_gettext_enabled = external local_unnamed_addr global i32, align 4
@hexval_table = external local_unnamed_addr constant [256 x i8], align 16
@.str.51 = private unnamed_addr constant [7 x i8] c"%%%02x\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @starts_with(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !14      ; 2 uses
  %.not10 = icmp eq i8 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.f, %bb.b ], [ %i.a, %bb.a ]
  %.012 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]
  %.0611 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.0611, align 1, !tbaa !14
  %.not9 = icmp eq i8 %i.c, %i.b                  ; 3 uses
  br i1 %.not9, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.0611, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %.012, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14    ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not9, %.lr.ph ], [ %.not9, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @istarts_with(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !14      ; 2 uses
  %.not13 = icmp eq i8 %i.a, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.p, %bb.b ], [ %i.a, %bb.a ]  ; 2 uses
  %.015 = phi ptr [ %i.o, %bb.b ], [ %1, %bb.a ]
  %.0614 = phi ptr [ %i.n, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.0614, align 1, !tbaa !14  ; 2 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  %i.g = shl i8 %i.f, 3
  %i.h = and i8 %i.g, 32
  %.0.i11 = or i8 %i.h, %i.c
  %i.i = zext i8 %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = shl i8 %i.k, 3
  %i.m = and i8 %i.l, 32
  %.0.i1012 = or i8 %i.m, %i.b
  %.not8 = icmp eq i8 %.0.i11, %.0.i1012          ; 3 uses
  br i1 %.not8, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.0614, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %.015, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14    ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %.not8, %.lr.ph ], [ %.not8, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local zeroext i1 @starts_with_mem(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = load i8, ptr %2, align 1, !tbaa !14      ; 2 uses
  %.not13 = icmp eq i8 %i.b, 0                    ; 2 uses
  %i.c = icmp samesign eq i64 %1, 0
  %or.cond14 = select i1 %.not13, i1 true, i1 %i.c
  br i1 %or.cond14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.h, %bb.b ], [ %i.b, %bb.a ]
  %.016 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ]
  %.01015 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.01015, align 1, !tbaa !14
  %.not12 = icmp eq i8 %i.e, %i.d
  br i1 %.not12, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.01015, i64 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14    ; 2 uses
  %.not = icmp eq i8 %i.h, 0                      ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.i
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ %.not13, %bb.a ], [ false, %.lr.ph ], [ %.not, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @skip_to_optional_arg_default(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.i = phi ptr [ %0, %bb.a ], [ %i.b, %bb.c ] ; 4 uses
  %.06.i = phi ptr [ %1, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.a = load i8, ptr %.06.i, align 1, !tbaa !14  ; 2 uses
  %.not.i = icmp eq i8 %i.a, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  %i.c = load i8, ptr %.07.i, align 1, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.e = icmp eq i8 %i.c, %i.a
  br i1 %i.e, label %bb.b, label %skip_prefix_impl.exit, !llvm.loop !28

bb.d:                                             ; preds = %bb.b
  %i.f = load i8, ptr %.07.i, align 1, !tbaa !14
  switch i8 %i.f, label %skip_prefix_impl.exit [
    i8 0, label %bb.e
    i8 61, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %.not10 = icmp eq ptr %2, null
  br i1 %.not10, label %skip_prefix_impl.exit, label %skip_prefix_impl.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %.not12 = icmp eq ptr %2, null
  br i1 %.not12, label %skip_prefix_impl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %.07.i, i64 1
  br label %skip_prefix_impl.exit.sink.split

skip_prefix_impl.exit.sink.split:                 ; preds = %bb.e, %bb.g
  %.sink = phi ptr [ %i.g, %bb.g ], [ %3, %bb.e ]
  store ptr %.sink, ptr %2, align 8, !tbaa !18
  br label %skip_prefix_impl.exit

skip_prefix_impl.exit:                            ; preds = %bb.c, %skip_prefix_impl.exit.sink.split, %bb.f, %bb.d, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.d ], [ true, %bb.f ], [ true, %skip_prefix_impl.exit.sink.split ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.strbuf_addftime.munged_fmt, i64 24, i1 false)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %strbuf_grow.exit, label %st_add.exit.i

st_add.exit.i:                                    ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %1, i64 noundef 1) #26
  unreachable

bb.c:                                             ; preds = %st_add.exit.i
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %2, align 8, !tbaa !21
  %..i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 24) ; 2 uses
  store i64 %..i, ptr %0, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call ptr @xrealloc(ptr noundef null, i64 noundef %..i) #27 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !21
  store i8 0, ptr %i.e, align 1, !tbaa !14
  br label %strbuf_grow.exit

strbuf_grow.exit:                                 ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_grow(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 %1) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.b, label %st_add.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.c, i64 noundef %1) #26
  unreachable

st_add.exit:                                      ; preds = %bb.a
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 1) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.c, label %st_add.exit19

bb.c:                                             ; preds = %st_add.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.f, i64 noundef 1) #26
  unreachable

st_add.exit19:                                    ; preds = %st_add.exit
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %st_add.exit19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %st_add.exit19, %bb.d
  %i.k = icmp ugt i64 %i.i, %i.a
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = mul i64 %i.a, 3
  %i.m = add i64 %i.l, 48
  %i.n = lshr i64 %i.m, 1
  %. = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i) ; 2 uses
  store i64 %., ptr %0, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = tail call ptr @xrealloc(ptr noundef %i.p, i64 noundef %.) #27 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !21
  br i1 %.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.q, align 1, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @strbuf_release(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.c) #27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.strbuf_addftime.munged_fmt, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @strbuf_detach(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
st_add.exit.i:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not.i = icmp eq i64 %i.a, 0                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 1) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.a, label %st_add.exit19.i

bb.a:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.c, i64 noundef 1) #26
  unreachable

st_add.exit19.i:                                  ; preds = %st_add.exit.i
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %st_add.exit19.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.g, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %st_add.exit19.i
  %i.h = icmp ugt i64 %i.f, %i.a
  br i1 %i.h, label %bb.d, label %strbuf_grow.exit

bb.d:                                             ; preds = %bb.c
  %i.i = mul i64 %i.a, 3
  %i.j = add i64 %i.i, 48
  %i.k = lshr i64 %i.j, 1
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.f) ; 2 uses
  store i64 %..i, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = tail call ptr @xrealloc(ptr noundef %i.m, i64 noundef %..i) #27 ; 2 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !21
  br i1 %.not.i, label %bb.e, label %strbuf_grow.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.n, align 1, !tbaa !14
  br label %strbuf_grow.exit

strbuf_grow.exit:                                 ; preds = %bb.c, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %strbuf_grow.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !23
  store i64 %i.q, ptr %1, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %strbuf_grow.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.strbuf_addftime.munged_fmt, i64 24, i1 false)
  ret ptr %i.p
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_attach(ptr nofree noundef captures(none) initializes((8, 16)) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %strbuf_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.c) #27
  br label %strbuf_release.exit

strbuf_release.exit:                              ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %2, ptr %i.e, align 8, !tbaa !23
  store i64 %3, ptr %0, align 8, !tbaa !22
  %.not.i9 = icmp eq i64 %3, 0                    ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 1) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.c, label %st_add.exit19.i

bb.c:                                             ; preds = %strbuf_release.exit
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %2, i64 noundef 1) #26
  unreachable

st_add.exit19.i:                                  ; preds = %strbuf_release.exit
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  br i1 %.not.i9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %st_add.exit19.i
  store ptr null, ptr %i.d, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %st_add.exit19.i
  %i.i = phi ptr [ null, %bb.d ], [ %1, %st_add.exit19.i ] ; 2 uses
  %i.j = icmp ugt i64 %i.h, %3
  br i1 %i.j, label %bb.f, label %strbuf_grow.exit

bb.f:                                             ; preds = %bb.e
  %i.k = mul i64 %3, 3
  %i.l = add i64 %i.k, 48
  %i.m = lshr i64 %i.l, 1
  %..i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.h) ; 2 uses
  store i64 %..i, ptr %0, align 8, !tbaa !22
  %i.n = tail call ptr @xrealloc(ptr noundef %i.i, i64 noundef %..i) #27 ; 3 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !21
  br i1 %.not.i9, label %bb.g, label %strbuf_grow.exit

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.n, align 1, !tbaa !14
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %strbuf_grow.exit
end_hunk_0
begin_hunk_1_@strbuf_trim_trailing_dir_sep:bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !14
  %.not7 = icmp eq i8 %i.e, 47
  br i1 %.not7, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !23
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !29

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.b, %.lr.ph ]
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 %.lcssa
  store i8 0, ptr %i.g, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strbuf_trim_trailing_newline(ptr nofree noundef captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 %i.b     ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !14
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.b, -1                         ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !23
  %.not10 = icmp eq i64 %i.i, 0
  br i1 %.not10, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.e, i64 -2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !14
  %i.l = icmp eq i8 %i.k, 13
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %i.b, -2                         ; 2 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi i64 [ %i.m, %bb.e ], [ %i.i, %bb.d ], [ 0, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  store i8 0, ptr %i.o, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @strbuf_reencode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = tail call i32 @same_encoding(ptr noundef %1, ptr noundef %2) #27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = call ptr @reencode_string_len(ptr noundef %i.d, i64 noundef %i.f, ptr noundef %2, ptr noundef %1, ptr noundef nonnull %i.a) #27 ; 3 uses
  %.not10 = icmp eq ptr %i.g, null
  br i1 %.not10, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.i = add i64 %i.h, 1
  %i.j = load i64, ptr %0, align 8, !tbaa !22
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %strbuf_release.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !21
  call void @free(ptr noundef %i.k) #27
  br label %strbuf_release.exit.i

strbuf_release.exit.i:                            ; preds = %bb.d, %bb.c
  store ptr %i.g, ptr %i.c, align 8, !tbaa !21
  store i64 %i.h, ptr %i.e, align 8, !tbaa !23
  store i64 %i.i, ptr %0, align 8, !tbaa !22
  %i.l = icmp eq i64 %i.h, -1
  br i1 %i.l, label %bb.e, label %strbuf_attach.exit

bb.e:                                             ; preds = %strbuf_release.exit.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.h, i64 noundef 1) #26
  unreachable

strbuf_attach.exit:                               ; preds = %strbuf_release.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.m, align 1, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %strbuf_attach.exit
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %strbuf_attach.exit ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare i32 @same_encoding(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @reencode_string_len(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strbuf_tolower(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = load i8, ptr %.09, align 1, !tbaa !14    ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14
  %i.j = shl i8 %i.i, 3
  %i.k = and i8 %i.j, 32
  %.0.i8 = or i8 %i.k, %i.f
  store i8 %.0.i8, ptr %.09, align 1, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %.09, i64 1 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.e
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @strbuf_split_buf(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %.not69 = icmp eq i64 %1, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp slt i32 %3, 1
  %i.b = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.04174 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.i ] ; 3 uses
  %.04373 = phi i64 [ 0, %.lr.ph ], [ %i.c, %bb.i ] ; 3 uses
  %.04472 = phi ptr [ null, %.lr.ph ], [ %.145, %bb.i ] ; 2 uses
  %.04771 = phi ptr [ %0, %.lr.ph ], [ %i.w, %bb.i ] ; 4 uses
  %.04870 = phi i64 [ %1, %.lr.ph ], [ %i.x, %bb.i ] ; 4 uses
  %i.c = add i64 %.04373, 1                       ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %or.cond = select i1 %i.a, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @memchr(ptr noundef %.04771, i32 noundef %2, i64 noundef %.04870) #28 ; 2 uses
  %.not55 = icmp eq ptr %i.e, null
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %.04771 to i64
  %reass.sub = sub i64 %i.f, %i.g
  %i.h = add i64 %reass.sub, 1
  %.0 = select i1 %.not55, i64 %.04870, i64 %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i64 [ %.0, %bb.c ], [ %.04870, %bb.b ]
  %i.i = tail call ptr @xmalloc(i64 noundef 24) #27 ; 5 uses
  %sext = shl i64 %.1, 32                         ; 2 uses
  %i.j = ashr exact i64 %sext, 32                 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) @__const.strbuf_addftime.munged_fmt, i64 24, i1 false)
  %.not.i = icmp eq i64 %sext, 0
  br i1 %.not.i, label %strbuf_init.exit, label %st_add.exit.i.i

st_add.exit.i.i:                                  ; preds = %bb.d
  %i.k = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.j, i64 1) ; 2 uses
  %i.l = extractvalue { i64, i1 } %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %st_add.exit.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.j, i64 noundef 1) #26
  unreachable

bb.f:                                             ; preds = %st_add.exit.i.i
  %4 = extractvalue { i64, i1 } %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !21
  %..i.i = tail call i64 @llvm.umax.i64(i64 %4, i64 24) ; 2 uses
  store i64 %..i.i, ptr %i.i, align 8, !tbaa !22
  %i.n = tail call ptr @xrealloc(ptr noundef null, i64 noundef %..i.i) #27 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !21
  store i8 0, ptr %i.n, align 1, !tbaa !14
  br label %strbuf_init.exit

strbuf_init.exit:                                 ; preds = %bb.d, %bb.f
  tail call void @strbuf_add(ptr noundef nonnull %i.i, ptr noundef %.04771, i64 noundef %i.j)
  %i.o = add i64 %.04373, 2                       ; 2 uses
  %i.p = icmp ugt i64 %i.o, %.04174
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %strbuf_init.exit
  %i.q = mul i64 %.04174, 3
  %i.r = add i64 %i.q, 48
  %i.s = lshr i64 %i.r, 1
  %. = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.o) ; 4 uses
  %mul.ov.i = icmp ugt i64 %., 2305843009213693951
  br i1 %mul.ov.i, label %bb.h, label %st_mult.exit

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef 8, i64 noundef %.) #26
  unreachable

st_mult.exit:                                     ; preds = %bb.g
  %i.t = shl nuw i64 %., 3
  %i.u = tail call ptr @xrealloc(ptr noundef %.04472, i64 noundef %i.t) #27
  br label %bb.i

bb.i:                                             ; preds = %st_mult.exit, %strbuf_init.exit
  %.145 = phi ptr [ %i.u, %st_mult.exit ], [ %.04472, %strbuf_init.exit ] ; 3 uses
  %.2 = phi i64 [ %., %st_mult.exit ], [ %.04174, %strbuf_init.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.145, i64 %.04373
  store ptr %i.i, ptr %i.v, align 8, !tbaa !26
  %i.w = getelementptr inbounds i8, ptr %.04771, i64 %i.j
  %i.x = sub i64 %.04870, %i.j                    ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.044.lcssa = phi ptr [ null, %bb.a ], [ %.145, %bb.i ] ; 2 uses
  %.043.lcssa = phi i64 [ 0, %bb.a ], [ %i.c, %bb.i ] ; 2 uses
  %.041.lcssa = phi i64 [ 0, %bb.a ], [ %.2, %bb.i ] ; 2 uses
  %i.y = add i64 %.043.lcssa, 1                   ; 2 uses
  %i.z = icmp ugt i64 %i.y, %.041.lcssa
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.aa = mul nuw i64 %.041.lcssa, 3
  %i.ab = add nuw i64 %i.aa, 48
  %i.ac = lshr i64 %i.ab, 1
  %.58 = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.y) ; 3 uses
  %mul.ov.i60 = icmp ugt i64 %.58, 2305843009213693951
  br i1 %mul.ov.i60, label %bb.k, label %st_mult.exit61

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.47, i64 noundef 8, i64 noundef %.58) #26
  unreachable

st_mult.exit61:                                   ; preds = %bb.j
  %i.ad = shl nuw i64 %.58, 3
  %i.ae = tail call ptr @xrealloc(ptr noundef %.044.lcssa, i64 noundef %i.ad) #27
  br label %bb.l

bb.l:                                             ; preds = %st_mult.exit61, %._crit_edge
  %.246 = phi ptr [ %i.ae, %st_mult.exit61 ], [ %.044.lcssa, %._crit_edge ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.246, i64 %.043.lcssa
  store ptr null, ptr %i.af, align 8, !tbaa !26
  ret ptr %.246
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %.not.i = icmp eq i64 %i.a, 0                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 %2) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %bb.b, label %st_add.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.c, i64 noundef %2) #26
  unreachable

st_add.exit.i:                                    ; preds = %bb.a
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 1) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.c, label %st_add.exit19.i

bb.c:                                             ; preds = %st_add.exit.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.46, i64 noundef %i.f, i64 noundef 1) #26
  unreachable

st_add.exit19.i:                                  ; preds = %st_add.exit.i
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %st_add.exit19.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %st_add.exit19.i
  %i.k = icmp ugt i64 %i.i, %i.a
  br i1 %i.k, label %bb.f, label %strbuf_grow.exit

bb.f:                                             ; preds = %bb.e
  %i.l = mul i64 %i.a, 3
  %i.m = add i64 %i.l, 48
  %i.n = lshr i64 %i.m, 1
  %..i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i) ; 2 uses
  store i64 %..i, ptr %0, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.q = tail call ptr @xrealloc(ptr noundef %i.p, i64 noundef %..i) #27 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !21
  br i1 %.not.i, label %bb.g, label %strbuf_grow.exit

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.q, align 1, !tbaa !14
  br label %strbuf_grow.exit

strbuf_grow.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = load i64, ptr %i.b, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %1, i64 %2, i1 false)
  %i.v = load i64, ptr %i.b, align 8, !tbaa !23
  %i.w = add i64 %i.v, %2                         ; 3 uses
  %i.x = load i64, ptr %0, align 8, !tbaa !22
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.x, i64 1)
  %i.y = icmp ugt i64 %i.w, %spec.select.i
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %strbuf_grow.exit
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.48, i32 noundef 167, ptr noundef nonnull @.str.49) #26
  unreachable

bb.i:                                             ; preds = %strbuf_grow.exit
  store i64 %i.w, ptr %i.b, align 8, !tbaa !23
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %.not9.i = icmp eq ptr %i.z, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.w
  store i8 0, ptr %i.aa, align 1, !tbaa !14
  br label %strbuf_setlen.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !14
  %.not10.i = icmp eq i8 %i.ab, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #26
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_add_separated_string_list(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !34     ; 3 uses
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph
  %.sink1920 = load ptr, ptr %i.a, align 8, !tbaa !37 ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.sink1920) #28
  tail call void @strbuf_add(ptr noundef %0, ptr noundef nonnull readonly %.sink1920, i64 noundef %i.d)
  %.0101321 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !34
  %i.f = load i64, ptr %i.b, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  %i.h = icmp ult ptr %.0101321, %i.g
  br i1 %i.h, label %.lr.ph23, label %.critedge

.lr.ph23:                                         ; preds = %.peel.next, %.lr.ph23
  %.0101322 = phi ptr [ %.01013, %.lr.ph23 ], [ %.0101321, %.peel.next ] ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #28
  tail call void @strbuf_add(ptr noundef %0, ptr noundef nonnull readonly %1, i64 noundef %i.i)
end_hunk_1
