Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/uops?download=true
inline.NumInlined: 46
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ff_sws_uop_list_free:bb.a

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
  %i.bk = phi ptr [ %.pre, %.lr.ph ], [ %i.adw, %bb.hg ]
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
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !14  ; 5 uses
  %.not.i.i = icmp ne i8 %i.br, 0
  %i.bs = zext i1 %.not.i.i to i8
  %.inv.i.i = icmp ult i8 %i.br, 2
  %i.bt = select i1 %.inv.i.i, i8 0, i8 2
  %11 = or disjoint i8 %i.bt, %i.bs
  %i.bu = icmp ugt i8 %i.br, 2
  %i.bv = select i1 %i.bu, i8 4, i8 0
  %12 = or disjoint i8 %11, %i.bv
  %i.bw = icmp ugt i8 %i.br, 3
  %i.bx = select i1 %i.bw, i8 8, i8 0
  %i.by = or disjoint i8 %12, %i.bx
  store i8 %i.by, ptr %i.aw, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !14
  %.not34.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not34.i.i, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.cb = call i32 @ff_sws_pixel_type_size(i32 noundef %i.bo) #11
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr @switch.table.ff_sws_ops_translate.7, i64 %i.cc
  %switch.gep = getelementptr i8, ptr %i.cd, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %8, align 8, !tbaa !11
  %i.ce = icmp eq i32 %i.bm, 1                    ; 5 uses
  %i.cf = load i32, ptr %i.bp, align 8, !tbaa !14
  switch i32 %i.cf, label %.thread46.i.i [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.cg = icmp eq i32 %i.bm, 2
  br i1 %i.cg, label %translate_rw_op.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14
  %.not38.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not38.i.i, label %bb.f, label %translate_rw_op.exit.i

bb.f:                                             ; preds = %bb.e
  %i.cj = load i32, ptr %i.bp, align 8, !tbaa !14
  %.not39.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not39.i.i, label %bb.g, label %translate_rw_op.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !14
  store i32 %i.cl, ptr %i.ax, align 4, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14
  %i.co = call ptr @av_refstruct_ref(ptr noundef %i.cn) #9
  store ptr %i.co, ptr %i.ay, align 8, !tbaa !14
  %i.cp = load i32, ptr %i.bz, align 8, !tbaa !14
  %i.cq = icmp eq i32 %i.cp, 16
  br i1 %i.cq, label %check_filter_fma.exit.thread44.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not44.i.i, label %check_filter_fma.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cr = load i32, ptr %i.i, align 8, !tbaa !31
  %i.cs = and i32 %i.cr, 524288
  %.not6.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not6.i.i.i, label %check_filter_fma.exit.thread44.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = load i32, ptr %i.bn, align 4, !tbaa !57 ; 2 uses
  %i.cu = call zeroext i1 @ff_sws_pixel_type_is_int(i32 noundef %i.ct) #11
  br i1 %i.cu, label %check_filter_fma.exit.i.i, label %check_filter_fma.exit.thread.i.i

check_filter_fma.exit.i.i:                        ; preds = %bb.j
  %i.cv = call i32 @ff_sws_pixel_type_size(i32 noundef %i.ct) #11
  %i.cw = shl nsw i32 %i.cv, 3
  %i.cx = sub nsw i32 64, %i.cw
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = lshr i64 -1, %i.cy
  %i.da = shl i64 %i.cz, 14
  %i.db = icmp ult i64 %i.da, 4194305
  br i1 %i.db, label %check_filter_fma.exit.thread44.i.i, label %check_filter_fma.exit.thread.i.i

check_filter_fma.exit.thread.i.i:                 ; preds = %check_filter_fma.exit.i.i, %bb.j, %bb.h
  br label %check_filter_fma.exit.thread44.i.i

bb.k:                                             ; preds = %switch.lookup
  %i.dc = icmp ugt i8 %i.br, 1
  br i1 %i.dc, label %bb.l, label %.thread46.i.i

bb.l:                                             ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %.not37.i.i = icmp eq i8 %i.de, 0
  br i1 %.not37.i.i, label %bb.m, label %translate_rw_op.exit.i

bb.m:                                             ; preds = %bb.l
  %i.df = select i1 %i.ce, i32 5, i32 10
  br label %check_filter_fma.exit.thread44.i.i

bb.n:                                             ; preds = %switch.lookup
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !14
  %i.di = icmp eq i8 %i.dh, 0
  %or.cond.i.i = and i1 %i.ce, %i.di
  br i1 %or.cond.i.i, label %check_filter_fma.exit.thread44.i.i, label %translate_rw_op.exit.i

.thread46.i.i:                                    ; preds = %bb.k, %switch.lookup
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bl, i64 13
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !14
  switch i8 %i.dk, label %bb.q [
    i8 3, label %bb.o
    i8 1, label %bb.p
    i8 0, label %bb.r
  ]

bb.o:                                             ; preds = %.thread46.i.i
  %i.dl = select i1 %i.ce, i32 7, i32 12
  br label %check_filter_fma.exit.thread44.i.i

bb.p:                                             ; preds = %.thread46.i.i
  %i.dm = select i1 %i.ce, i32 6, i32 11
  br label %check_filter_fma.exit.thread44.i.i

bb.q:                                             ; preds = %.thread46.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.11, i32 noundef 506) #9
  call void @abort() #10
  unreachable

bb.r:                                             ; preds = %.thread46.i.i
  %i.dn = select i1 %i.ce, i32 1, i32 9
  br label %check_filter_fma.exit.thread44.i.i

check_filter_fma.exit.thread44.i.i:               ; preds = %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %check_filter_fma.exit.thread.i.i, %check_filter_fma.exit.i.i, %bb.i, %bb.g
  %.sink.i.i = phi i32 [ %i.df, %bb.m ], [ %i.dl, %bb.o ], [ %i.dn, %bb.r ], [ %i.dm, %bb.p ], [ 4, %check_filter_fma.exit.i.i ], [ 2, %bb.g ], [ 3, %check_filter_fma.exit.thread.i.i ], [ 4, %bb.i ], [ 8, %bb.n ]
  store i32 %.sink.i.i, ptr %i.az, align 4, !tbaa !12
  %i.do = call ptr @av_dynarray2_add(ptr noundef %3, ptr noundef nonnull %i.s, i64 noundef 112, ptr noundef nonnull %8) #9
  %.not.i41.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i41.i.i, label %bb.s, label %translate_rw_op.exit.i

bb.s:                                             ; preds = %check_filter_fma.exit.thread44.i.i
  %i.dp = load i32, ptr %i.az, align 4, !tbaa !12
  switch i32 %i.dp, label %translate_rw_op.exit.i [
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
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  br i1 %.not.i72.i, label %switch.lookup67, label %switch.lookup62

switch.lookup62:                                  ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.af, i8 0, i64 104, i1 false)
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !57
  %i.ds = call i32 @ff_sws_pixel_type_size(i32 noundef %i.dr) #11
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr i8, ptr @switch.table.ff_sws_ops_translate.7, i64 %i.dt
  %switch.gep63 = getelementptr i8, ptr %i.du, i64 -1
  %switch.load64 = load i8, ptr %switch.gep63, align 1
  %switch.ext65 = zext i8 %switch.load64 to i32
  store i32 %switch.ext65, ptr %6, align 8, !tbaa !11
  store i32 15, ptr %i.ag, align 4, !tbaa !12
  %i.dv = call zeroext i8 @ff_sws_comp_mask_needed(ptr noundef nonnull %i.bl) #9
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !14  ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bl, i64 9
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !14  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !14  ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bl, i64 11
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !14  ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bl, i64 336
  %i.ef = load <4 x i32>, ptr %i.ee, align 8, !tbaa !58
  %i.eg = icmp eq i8 %i.dx, 0
  %i.eh = select i1 %i.eg, i8 -2, i8 -1
  %.168.i.i.i = and i8 %i.eh, %i.dv
  %i.ei = icmp eq i8 %i.dz, 1
  %i.ej = select i1 %i.ei, i8 -3, i8 -1
  %.168.1.i.i.i = and i8 %.168.i.i.i, %i.ej
  %i.ek = icmp eq i8 %i.eb, 2
  %i.el = select i1 %i.ek, i8 -5, i8 -1
  %.168.2.i.i.i = and i8 %.168.1.i.i.i, %i.el
  %i.em = icmp eq i8 %i.ed, 3
  %i.en = select i1 %i.em, i8 -9, i8 -1
  %.168.3.i.i.i = and i8 %.168.2.i.i.i, %i.en     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.e, ptr noundef nonnull align 16 dereferenceable(20) @__const.translate_move.idx, i64 20, i1 false)
  %.not101.i.i.i = icmp eq i8 %.168.3.i.i.i, 0
  br i1 %.not101.i.i.i, label %._crit_edge.i.i.i, label %.preheader86.lr.ph.i.i.i

.preheader86.lr.ph.i.i.i:                         ; preds = %switch.lookup62
  %.pre.i.i.i = zext nneg i8 %i.ed to i32
  %i.eo = and <4 x i32> %i.ef, splat (i32 1)
  %i.ep = zext nneg i8 %i.dx to i32
  %i.eq = shl nuw i32 1, %i.ep
  %i.er = trunc i32 %i.eq to i8
  %i.es = zext nneg i8 %i.dz to i32
  %i.et = shl nuw i32 1, %i.es
  %i.eu = trunc i32 %i.et to i8
end_hunk_0
