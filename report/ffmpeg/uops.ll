Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/uops?download=true
inline.NumInlined: 46
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ff_sws_uop_list_free:bb.a
    i32 35, label %.sink.split.i
    i32 2, label %.sink.split.i
    i32 3, label %.sink.split.i
    i32 4, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.i) #9
  br label %uop_uninit.exit

uop_uninit.exit:                                  ; preds = %.lr.ph, %.sink.split.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i8 0, i64 112, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.b, align 8, !tbaa !19
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !0

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

declare void @av_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias ptr @ff_sws_uop_list_alloc() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias ptr @av_mallocz(i64 noundef 16) #9
  ret ptr %i.a
}

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -12, 1) i32 @ff_sws_uop_list_append(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call ptr @av_dynarray2_add(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 112, ptr noundef %1) #9
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  switch i32 %i.d, label %uop_uninit.exit [
    i32 35, label %.sink.split.i
    i32 2, label %.sink.split.i
    i32 3, label %.sink.split.i
    i32 4, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.e) #9
  br label %uop_uninit.exit

uop_uninit.exit:                                  ; preds = %bb.b, %.sink.split.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, i8 0, i64 112, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, i8 0, i64 112, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %uop_uninit.exit
  %.0 = phi i32 [ 0, %bb.c ], [ -12, %uop_uninit.exit ]
  ret i32 %.0
}

declare ptr @av_dynarray2_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 1, -2147483392) i32 @ff_sws_dither_height(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load <4 x i8>, ptr %0, align 1, !tbaa !14
  %i.b = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.a)
  %.09..3 = zext i8 %i.b to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %i.g = add nuw nsw i32 %i.f, %.09..3
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define range(i32 -95, 1) i32 @ff_sws_ops_translate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %4 = alloca %struct.SwsUOp, align 8             ; 10 uses
  %5 = alloca %struct.SwsUOp, align 8             ; 16 uses
  %6 = alloca %struct.SwsUOp, align 8             ; 10 uses
  %i.e = alloca [5 x i32], align 16               ; 11 uses
  %7 = alloca %struct.SwsUOp, align 8             ; 12 uses
  %8 = alloca %struct.SwsUOp, align 8             ; 9 uses
  %9 = alloca %struct.SwsUOp, align 8             ; 17 uses
  %10 = alloca %struct.SwsComps, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %10, ptr noundef nonnull align 8 dereferenceable(144) %i.f, i64 144, i1 false), !tbaa.struct !49
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !53
  %.not26 = icmp sgt i32 %i.h, 0
  br i1 %.not26, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = and i32 %2, 1
  %.not44.i.i = icmp eq i32 %i.q, 0               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 13
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ae = and i32 %2, 2
  %.not.i72.i = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 14 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 15 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 18 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 44 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 13 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 15
  %.pre = load ptr, ptr %1, align 8, !tbaa !54
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.hg
  %i.bk = phi ptr [ %.pre, %.lr.ph ], [ %i.adt, %bb.hg ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.hg ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [480 x i8], ptr %i.bk, i64 %indvars.iv ; 75 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !56 ; 3 uses
  switch i32 %i.bm, label %bb.du [
    i32 16, label %.thread
    i32 17, label %.thread
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.t
    i32 15, label %bb.bd
    i32 14, label %bb.cq
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.aw, i8 0, i64 104, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !57 ; 2 uses
  store i32 %i.bo, ptr %8, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !14  ; 4 uses
  %.not.i.i = icmp ne i8 %i.br, 0
  %i.bs = zext i1 %.not.i.i to i8
  %11 = icmp ugt i8 %i.br, 1                      ; 2 uses
  %12 = icmp ugt i8 %i.br, 2
  %i.bt = icmp ugt i8 %i.br, 3
  %i.bu = select i1 %i.bt, i8 14, i8 6
  %13 = select i1 %12, i8 %i.bu, i8 2
  %i.bv = select i1 %11, i8 %13, i8 0
  %i.bw = or disjoint i8 %i.bv, %i.bs
  store i8 %i.bw, ptr %i.aw, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !14
  %.not34.i.i = icmp eq i32 %i.by, 0
  br i1 %.not34.i.i, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.bz = call i32 @ff_sws_pixel_type_size(i32 noundef %i.bo) #11
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr i8, ptr @switch.table.ff_sws_ops_translate.7, i64 %i.ca
  %switch.gep = getelementptr i8, ptr %i.cb, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %8, align 8, !tbaa !11
  %i.cc = icmp eq i32 %i.bm, 1                    ; 5 uses
  %i.cd = load i32, ptr %i.bp, align 8, !tbaa !14
  switch i32 %i.cd, label %.thread46.i.i [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.ce = icmp eq i32 %i.bm, 2
  br i1 %i.ce, label %translate_rw_op.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !14
  %.not38.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not38.i.i, label %bb.f, label %translate_rw_op.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ch = load i32, ptr %i.bp, align 8, !tbaa !14
  %.not39.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not39.i.i, label %bb.g, label %translate_rw_op.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !14
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !14
  %i.cm = call ptr @av_refstruct_ref(ptr noundef %i.cl) #9
  store ptr %i.cm, ptr %i.ay, align 8, !tbaa !14
  %i.cn = load i32, ptr %i.bx, align 8, !tbaa !14
  %i.co = icmp eq i32 %i.cn, 16
  br i1 %i.co, label %check_filter_fma.exit.thread44.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not44.i.i, label %check_filter_fma.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cp = load i32, ptr %i.i, align 8, !tbaa !31
  %i.cq = and i32 %i.cp, 524288
  %.not6.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not6.i.i.i, label %check_filter_fma.exit.thread44.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = load i32, ptr %i.bn, align 4, !tbaa !57 ; 2 uses
  %i.cs = call zeroext i1 @ff_sws_pixel_type_is_int(i32 noundef %i.cr) #11
  br i1 %i.cs, label %check_filter_fma.exit.i.i, label %check_filter_fma.exit.thread.i.i

check_filter_fma.exit.i.i:                        ; preds = %bb.j
  %i.ct = call i32 @ff_sws_pixel_type_size(i32 noundef %i.cr) #11
  %i.cu = shl nsw i32 %i.ct, 3
  %i.cv = sub nsw i32 64, %i.cu
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = lshr i64 -1, %i.cw
  %i.cy = shl i64 %i.cx, 14
  %i.cz = icmp ult i64 %i.cy, 4194305
  br i1 %i.cz, label %check_filter_fma.exit.thread44.i.i, label %check_filter_fma.exit.thread.i.i

check_filter_fma.exit.thread.i.i:                 ; preds = %check_filter_fma.exit.i.i, %bb.j, %bb.h
  br label %check_filter_fma.exit.thread44.i.i

bb.k:                                             ; preds = %switch.lookup
  br i1 %11, label %bb.l, label %.thread46.i.i

bb.l:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.db = load i8, ptr %i.da, align 1, !tbaa !14
  %.not37.i.i = icmp eq i8 %i.db, 0
  br i1 %.not37.i.i, label %bb.m, label %translate_rw_op.exit.i

bb.m:                                             ; preds = %bb.l
  %i.dc = select i1 %i.cc, i32 5, i32 10
  br label %check_filter_fma.exit.thread44.i.i

bb.n:                                             ; preds = %switch.lookup
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.df = icmp eq i8 %i.de, 0
  %or.cond.i.i = and i1 %i.cc, %i.df
  br i1 %or.cond.i.i, label %check_filter_fma.exit.thread44.i.i, label %translate_rw_op.exit.i

.thread46.i.i:                                    ; preds = %bb.k, %switch.lookup
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !14
  switch i8 %i.dh, label %bb.q [
    i8 3, label %bb.o
    i8 1, label %bb.p
    i8 0, label %bb.r
  ]

bb.o:                                             ; preds = %.thread46.i.i
  %i.di = select i1 %i.cc, i32 7, i32 12
  br label %check_filter_fma.exit.thread44.i.i

bb.p:                                             ; preds = %.thread46.i.i
  %i.dj = select i1 %i.cc, i32 6, i32 11
  br label %check_filter_fma.exit.thread44.i.i

bb.q:                                             ; preds = %.thread46.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, i32 noundef 506) #9
  call void @abort() #10
  unreachable

bb.r:                                             ; preds = %.thread46.i.i
  %i.dk = select i1 %i.cc, i32 1, i32 9
  br label %check_filter_fma.exit.thread44.i.i

check_filter_fma.exit.thread44.i.i:               ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %check_filter_fma.exit.thread.i.i, %check_filter_fma.exit.i.i, %bb.i, %bb.g
  %.sink.i.i = phi i32 [ %i.dc, %bb.m ], [ %i.di, %bb.o ], [ %i.dk, %bb.r ], [ %i.dj, %bb.p ], [ 4, %check_filter_fma.exit.i.i ], [ 2, %bb.g ], [ 3, %check_filter_fma.exit.thread.i.i ], [ 4, %bb.i ], [ 8, %bb.n ]
  store i32 %.sink.i.i, ptr %i.az, align 4, !tbaa !12
  %i.dl = call ptr @av_dynarray2_add(ptr noundef %3, ptr noundef nonnull %i.s, i64 noundef 112, ptr noundef nonnull %8) #9
  %.not.i41.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i41.i.i, label %bb.s, label %translate_rw_op.exit.i

bb.s:                                             ; preds = %check_filter_fma.exit.thread44.i.i
  %i.dm = load i32, ptr %i.az, align 4, !tbaa !12
  switch i32 %i.dm, label %translate_rw_op.exit.i [
    i32 35, label %.sink.split.i.i.i.i
    i32 2, label %.sink.split.i.i.i.i
    i32 3, label %.sink.split.i.i.i.i
    i32 4, label %.sink.split.i.i.i.i
  ]

.sink.split.i.i.i.i:                              ; preds = %bb.s, %bb.s, %bb.s, %bb.s
  call void @av_refstruct_unref(ptr noundef nonnull %i.ay) #9
  br label %translate_rw_op.exit.i

translate_rw_op.exit.i:                           ; preds = %.sink.split.i.i.i.i, %bb.s, %check_filter_fma.exit.thread44.i.i, %bb.n, %bb.l, %bb.f, %bb.e, %bb.d
  %.0.i.i = phi i32 [ -95, %bb.l ], [ -95, %bb.n ], [ -95, %bb.d ], [ -95, %bb.f ], [ -95, %bb.e ], [ -12, %bb.s ], [ -12, %.sink.split.i.i.i.i ], [ 0, %check_filter_fma.exit.thread44.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %translate_op.exit

bb.t:                                             ; preds = %bb.b
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  br i1 %.not.i72.i, label %switch.lookup67, label %switch.lookup62

switch.lookup62:                                  ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.af, i8 0, i64 104, i1 false)
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !57
  %i.dp = call i32 @ff_sws_pixel_type_size(i32 noundef %i.do) #11
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr @switch.table.ff_sws_ops_translate.7, i64 %i.dq
  %switch.gep63 = getelementptr i8, ptr %i.dr, i64 -1
  %switch.load64 = load i8, ptr %switch.gep63, align 1
  %switch.ext65 = zext i8 %switch.load64 to i32
  store i32 %switch.ext65, ptr %6, align 8, !tbaa !11
  store i32 15, ptr %i.ag, align 4, !tbaa !12
  %i.ds = call zeroext i8 @ff_sws_comp_mask_needed(ptr noundef nonnull %i.bl) #9
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !14  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bl, i64 9
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !14  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %i.dy = load i8, ptr %i.dx, align 2, !tbaa !14  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bl, i64 11
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !14  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bl, i64 336
  %i.ec = load <4 x i32>, ptr %i.eb, align 8, !tbaa !58
  %i.ed = icmp eq i8 %i.du, 0
  %i.ee = select i1 %i.ed, i8 -2, i8 -1
  %.168.i.i.i = and i8 %i.ee, %i.ds
  %i.ef = icmp eq i8 %i.dw, 1
  %i.eg = select i1 %i.ef, i8 -3, i8 -1
  %.168.1.i.i.i = and i8 %.168.i.i.i, %i.eg
  %i.eh = icmp eq i8 %i.dy, 2
  %i.ei = select i1 %i.eh, i8 -5, i8 -1
  %.168.2.i.i.i = and i8 %.168.1.i.i.i, %i.ei
  %i.ej = icmp eq i8 %i.ea, 3
  %i.ek = select i1 %i.ej, i8 -9, i8 -1
  %.168.3.i.i.i = and i8 %.168.2.i.i.i, %i.ek     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.e, ptr noundef nonnull align 16 dereferenceable(20) @__const.translate_move.idx, i64 20, i1 false)
  %.not101.i.i.i = icmp eq i8 %.168.3.i.i.i, 0
  br i1 %.not101.i.i.i, label %._crit_edge.i.i.i, label %.preheader86.lr.ph.i.i.i

.preheader86.lr.ph.i.i.i:                         ; preds = %switch.lookup62
  %.pre.i.i.i = zext nneg i8 %i.ea to i32
  %i.el = and <4 x i32> %i.ec, splat (i32 1)
  %i.em = zext nneg i8 %i.du to i32
  %i.en = shl nuw i32 1, %i.em
  %i.eo = trunc i32 %i.en to i8
  %i.ep = zext nneg i8 %i.dw to i32
  %i.eq = shl nuw i32 1, %i.ep
  %i.er = trunc i32 %i.eq to i8
  %i.es = icmp eq <4 x i32> %i.el, zeroinitializer ; 4 uses
  %i.et = extractelement <4 x i1> %i.es, i64 0
  %.163.i.i.i = select i1 %i.et, i8 %i.eo, i8 0
  %i.eu = extractelement <4 x i1> %i.es, i64 1
  %i.ev = select i1 %i.eu, i8 %i.er, i8 0
  %.163.1.i.i.i = or i8 %i.ev, %.163.i.i.i
  %i.ew = zext nneg i8 %i.dy to i32
  %i.ex = shl nuw i32 1, %i.ew
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = extractelement <4 x i1> %i.es, i64 2
  %i.fa = select i1 %i.ez, i8 %i.ey, i8 0
  %.163.2.i.i.i = or i8 %.163.1.i.i.i, %i.fa
  %i.fb = shl nuw i32 1, %.pre.i.i.i
  %i.fc = trunc i32 %i.fb to i8
  %i.fd = extractelement <4 x i1> %i.es, i64 3
  %i.fe = select i1 %i.fd, i8 %i.fc, i8 0
  %.163.3.i.i.i = or i8 %.163.2.i.i.i, %i.fe
  br label %.preheader86.i.i.i

.preheader86.i.i.i:                               ; preds = %bb.am, %.preheader86.lr.ph.i.i.i
  %i.ff = phi i32 [ 0, %.preheader86.lr.ph.i.i.i ], [ %i.iu, %bb.am ] ; 4 uses
  %.264103.i.i.i = phi i8 [ %.163.3.i.i.i, %.preheader86.lr.ph.i.i.i ], [ %.365.i.i.i, %bb.am ] ; 4 uses
  %.269102.i.i.i = phi i8 [ %.168.3.i.i.i, %.preheader86.lr.ph.i.i.i ], [ %.673121.i.i.i, %bb.am ] ; 5 uses
  %i.fg = zext i8 %.269102.i.i.i to i32           ; 4 uses
  %i.fh = load i32, ptr %i.e, align 16            ; 9 uses
  %i.fi = load i32, ptr %i.ai, align 4            ; 9 uses
  %i.fj = load i32, ptr %i.aj, align 8            ; 9 uses
  %i.fk = load i32, ptr %i.ak, align 4            ; 9 uses
  %i.fl = load i32, ptr %i.al, align 16           ; 5 uses
  %i.fm = zext i8 %.264103.i.i.i to i32           ; 4 uses
  %.not77.i.i.i = trunc i8 %.269102.i.i.i to i1   ; 3 uses
  br i1 %.not77.i.i.i, label %bb.u, label %.thread.i.i.i

bb.u:                                             ; preds = %.preheader86.i.i.i
  %i.fn = icmp eq i32 %i.fi, %i.fh
  %spec.select.1.i.i.i.i = select i1 %i.fn, i32 2, i32 1
  %i.fo = icmp eq i32 %i.fj, %i.fh
  %i.fp = zext i1 %i.fo to i32
  %spec.select.2.i.i.i.i = add nuw nsw i32 %spec.select.1.i.i.i.i, %i.fp
  %i.fq = icmp eq i32 %i.fk, %i.fh
  %i.fr = zext i1 %i.fq to i32
  %spec.select.3.i.i.i.i = add nuw nsw i32 %spec.select.2.i.i.i.i, %i.fr
  %i.fs = icmp eq i32 %i.fl, %i.fh
  %i.ft = zext i1 %i.fs to i32
  %spec.select.4.i.i.i.i = add nuw nsw i32 %spec.select.3.i.i.i.i, %i.ft
  %i.fu = icmp eq i32 %spec.select.4.i.i.i.i, 1
  br i1 %i.fu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fv = shl nuw i32 1, %i.fh
  %i.fw = and i32 %i.fv, %i.fm
  %.not78.i.i.i = icmp eq i32 %i.fw, 0
  br i1 %.not78.i.i.i, label %bb.w, label %.thread.i.i.i

bb.w:                                             ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.v, %bb.u
  %.05998.lcssa.i.i.i = phi i32 [ 0, %bb.v ], [ 0, %bb.u ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 2, %bb.ag ], [ 2, %bb.ah ], [ 3, %bb.ai ], [ 3, %bb.aj ]
  %i.fx = phi i8 [ -2, %bb.v ], [ -2, %bb.u ], [ -3, %bb.ae ], [ -3, %bb.af ], [ -5, %bb.ag ], [ -5, %bb.ah ], [ -9, %bb.ai ], [ -9, %bb.aj ]
  %.lcssa.i.i.i = phi i64 [ 0, %bb.v ], [ 0, %bb.u ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 2, %bb.ag ], [ 2, %bb.ah ], [ 3, %bb.ai ], [ 3, %bb.aj ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.lcssa.i.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !14
  %i.ga = zext i8 %i.fz to i32                    ; 5 uses
  %i.gb = icmp eq i32 %i.fh, %i.ga
  br i1 %i.gb, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.w
  %.199.lcssa.wide.i.i.i = phi i32 [ 0, %bb.w ], [ 1, %bb.aa ], [ 2, %bb.ab ], [ 3, %bb.ac ], [ 4, %bb.ad ] ; 3 uses
  %i.gc = icmp sgt i32 %i.ff, 0
  br i1 %i.gc, label %bb.y, label %.loopexit87.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.gd = add nsw i32 %i.ff, -1
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14
  %i.gh = sext i8 %i.gg to i32
  %i.gi = icmp eq i32 %.199.lcssa.wide.i.i.i, %i.gh
  br i1 %i.gi, label %bb.z, label %.loopexit87.i.i.i

end_hunk_0
