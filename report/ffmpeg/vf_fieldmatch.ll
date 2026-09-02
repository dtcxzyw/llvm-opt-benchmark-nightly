Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fieldmatch?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@filter_frame:bb.a
bb.bc:                                            ; preds = %bb.bb
  %i.jc = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !35
  %i.je = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !36
  %i.jg = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !37
  %i.ji = tail call fastcc ptr @create_weave_frame(ptr noundef %i.e, i32 noundef %.2, i32 noundef %.289, ptr noundef %i.jd, ptr noundef %i.jf, ptr noundef %i.jh, i32 noundef 1)
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.jj = sext i32 %.2 to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jj ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !40 ; 2 uses
  %.not255 = icmp eq ptr %i.jl, null
  br i1 %.not255, label %bb.be, label %.thread296

bb.be:                                            ; preds = %bb.bd
  %i.jm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !32
  %i.jo = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.jp = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !34
  %i.jr = tail call fastcc ptr @create_weave_frame(ptr noundef %i.e, i32 noundef %.2, i32 noundef %.289, ptr noundef %i.jn, ptr noundef %i.jo, ptr noundef %i.jq, i32 noundef 0)
  br label %bb.bf

.thread296:                                       ; preds = %bb.bd
  store ptr null, ptr %i.jk, align 8, !tbaa !40
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be, %bb.bc
  %.0 = phi ptr [ %i.ji, %bb.bc ], [ %i.jr, %bb.be ] ; 2 uses
  %.not256 = icmp eq ptr %.0, null
  br i1 %.not256, label %.loopexit304, label %bb.bg

bb.bg:                                            ; preds = %.thread296, %bb.bf
  %.0299 = phi ptr [ %i.jl, %.thread296 ], [ %.0, %bb.bf ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0299, i64 276 ; 4 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !79 ; 2 uses
  br i1 %.not253, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ju = or i32 %i.jt, 8
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !79
  %i.jv = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ay, i64 136
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !98
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val264 = load i64, ptr %i.jz, align 8
  %i.ka = call ptr @av_ts_make_time_string2(ptr noundef nonnull %i.c, i64 noundef %i.jy, i64 %.val264) #10
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 24, ptr noundef nonnull @.str.82, i64 noundef %i.jw, ptr noundef %i.ka) #10
  %.not257 = icmp eq i32 %.289, 0
  %i.kb = load i32, ptr %i.js, align 4, !tbaa !79 ; 2 uses
  br i1 %.not257, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kc = or i32 %i.kb, 16
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.kd = and i32 %i.kb, -17
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  %i.ke = and i32 %i.jt, -9
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bj, %bb.bk
  %.sink = phi i32 [ %i.kc, %bb.bi ], [ %i.kd, %bb.bj ], [ %i.ke, %bb.bk ] ; 2 uses
  store i32 %.sink, ptr %i.js, align 4, !tbaa !79
  %i.kf = load i32, ptr %i.a, align 16, !tbaa !48
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !48
  %i.ki = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !48
  %i.kk = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !48
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.kn = load i32, ptr %i.km, align 16, !tbaa !48
  %i.ko = load i32, ptr %i.ix, align 8, !tbaa !31
  %i.kp = and i32 %.sink, 8
  %.not258 = icmp eq i32 %i.kp, 0
  %i.kq = select i1 %.not258, ptr @.str.85, ptr @.str.84
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.e, i32 noundef 48, ptr noundef nonnull @.str.83, i32 noundef %.1205293, i32 noundef %i.kf, i32 noundef %i.kh, i32 noundef %i.kj, i32 noundef %i.kl, i32 noundef %i.kn, i32 noundef %i.ko, i32 noundef %.2, ptr noundef nonnull %i.kq) #10
  br label %.loopexit304

.loopexit304:                                     ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.ag, %bb.bf, %bb.aj, %bb.bl
  %i.kr = phi i1 [ true, %bb.bl ], [ false, %bb.aj ], [ false, %bb.bf ], [ false, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ac ], [ false, %bb.ab ], [ false, %bb.aa ]
  %.0203 = phi i32 [ 0, %bb.bl ], [ -12, %bb.aj ], [ -12, %bb.bf ], [ -12, %bb.ag ], [ -12, %bb.ae ], [ -12, %bb.ac ], [ -12, %bb.ab ], [ -12, %bb.aa ]
  %.1 = phi ptr [ %.0299, %bb.bl ], [ null, %bb.aj ], [ null, %bb.bf ], [ null, %bb.ag ], [ null, %bb.ae ], [ null, %bb.ac ], [ null, %bb.ab ], [ null, %bb.aa ]
  call void @av_frame_free(ptr noundef nonnull %i.b) #10
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @av_frame_free(ptr noundef nonnull %i.ks) #10
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @av_frame_free(ptr noundef nonnull %i.kt) #10
  %i.ku = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @av_frame_free(ptr noundef nonnull %i.ku) #10
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @av_frame_free(ptr noundef nonnull %i.kv) #10
  br i1 %i.kr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.loopexit304
  %i.kw = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.1) #10
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit304, %bb.t, %bb.v, %thread-pre-split283, %thread-pre-split, %bb.bm
  %.0210 = phi i32 [ %i.kw, %bb.bm ], [ 0, %bb.t ], [ 0, %thread-pre-split283 ], [ 0, %thread-pre-split ], [ 0, %bb.v ], [ %.0203, %.loopexit304 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0210
}

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @create_weave_frame(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, -1) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 8 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @av_frame_clone(ptr noundef %4) #10
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %6, 0
  %.in.in.v = select i1 %.not, i64 32, i64 56
  %.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.in.v
  %.in = load ptr, ptr %.in.in, align 8, !tbaa !99
  %i.e = load ptr, ptr %.in, align 8, !tbaa !42   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !66
  %i.j = tail call ptr @ff_get_video_buffer(ptr noundef %i.e, i32 noundef %i.g, i32 noundef %i.i) #10 ; 14 uses
  %.not59.not = icmp eq ptr %i.j, null
  br i1 %.not59.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.j, ptr noundef %4) #10 ; 0 uses
  switch i32 %1, label %bb.i [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = sub nsw i32 1, %2
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %4, i32 noundef %i.l, i32 noundef %6)
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %3, i32 noundef %2, i32 noundef %6)
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.m = sub nsw i32 1, %2
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %4, i32 noundef %i.m, i32 noundef %6)
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %5, i32 noundef %2, i32 noundef %6)
  br label %.critedge

bb.g:                                             ; preds = %bb.d
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %4, i32 noundef %2, i32 noundef %6)
  %i.n = sub nsw i32 1, %2
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %3, i32 noundef %i.n, i32 noundef %6)
  br label %.critedge

bb.h:                                             ; preds = %bb.d
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %4, i32 noundef %2, i32 noundef %6)
  %i.o = sub nsw i32 1, %2
  tail call fastcc void @copy_fields(ptr noundef %i.b, ptr noundef %i.j, ptr noundef %5, i32 noundef %i.o, i32 noundef %6)
  br label %.critedge

bb.i:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.75, i32 noundef 645) #10
  tail call void @abort() #11
  unreachable

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.c ], [ %i.d, %bb.b ], [ %i.j, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.j, %bb.h ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, -2147483648) i32 @calc_combed_score(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100  ; 10 uses
  %i.c = mul nsw i32 %i.b, 6                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.h = icmp slt i32 %i.b, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %fill_buf.exit
  %indvars.iv706 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next707, %fill_buf.exit ] ; 7 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv706
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv706
  %i.p = load i32, ptr %i.o, align 4, !tbaa !48   ; 7 uses
  %.not.i = icmp eq i64 %indvars.iv706, 0
  %i.q = load i32, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.i, align 8, !tbaa !48
  %i.s = sub nsw i32 0, %i.q
  %i.t = ashr i32 %i.s, %i.r
  %i.u = sub nsw i32 0, %i.t
  %i.v = load i32, ptr %i.l, align 4, !tbaa !94
  %i.w = load i32, ptr %i.k, align 8, !tbaa !48
  %i.x = sub nsw i32 0, %i.v
  %i.y = ashr i32 %i.x, %i.w
  %i.z = sub nsw i32 0, %i.y
  br label %get_height.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !94
  br label %get_height.exit

get_height.exit:                                  ; preds = %bb.c, %bb.d
  %i.ab = phi i32 [ %i.q, %bb.d ], [ %i.u, %bb.c ] ; 8 uses
  %i.ac = phi i32 [ %i.aa, %bb.d ], [ %i.z, %bb.c ] ; 9 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv706
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !92 ; 7 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv706
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !48 ; 4 uses
  %i.ah = icmp sgt i32 %i.ac, 0                   ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %get_height.exit
  br i1 %i.ah, label %.lr.ph.i, label %fill_buf.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ai = sext i32 %i.ab to i64                   ; 9 uses
  %i.aj = sext i32 %i.ag to i64                   ; 9 uses
  %xtraiter822 = and i32 %i.ac, 7                 ; 3 uses
  %i.ak = icmp ult i32 %i.ac, 8
  br i1 %i.ak, label %.epil.preheader821, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter826 = and i32 %i.ac, 2147483640
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.078.i = phi ptr [ %i.ae, %.lr.ph.i.new ], [ %i.as, %bb.f ] ; 2 uses
  %niter827 = phi i32 [ 0, %.lr.ph.i.new ], [ %niter827.next.7, %bb.f ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.078.i, i8 -1, i64 %i.ai, i1 false)
  %i.al = getelementptr inbounds i8, ptr %.078.i, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 -1, i64 %i.ai, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 -1, i64 %i.ai, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 -1, i64 %i.ai, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 -1, i64 %i.ai, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 -1, i64 %i.ai, i1 false)
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 -1, i64 %i.ai, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 -1, i64 %i.ai, i1 false)
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  %niter827.next.7 = add nuw nsw i32 %niter827, 8 ; 2 uses
  %niter827.ncmp.7 = icmp eq i32 %niter827.next.7, %unroll_iter826
  br i1 %niter827.ncmp.7, label %fill_buf.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !101

bb.g:                                             ; preds = %get_height.exit
  br i1 %i.ah, label %.lr.ph.i575, label %fill_buf.exit579

.lr.ph.i575:                                      ; preds = %bb.g
  %i.at = sext i32 %i.ab to i64                   ; 9 uses
  %i.au = sext i32 %i.ag to i64                   ; 9 uses
  %xtraiter = and i32 %i.ac, 7                    ; 3 uses
  %i.av = icmp ult i32 %i.ac, 8
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i575.new

.lr.ph.i575.new:                                  ; preds = %.lr.ph.i575
  %unroll_iter = and i32 %i.ac, 2147483640
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i575.new
  %.078.i577 = phi ptr [ %i.ae, %.lr.ph.i575.new ], [ %i.bd, %bb.h ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i575.new ], [ %niter.next.7, %bb.h ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.078.i577, i8 0, i64 %i.at, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %.078.i577, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 0, i64 %i.at, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 0, i64 %i.at, i1 false)
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.at, i1 false)
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.at, i1 false)
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ba, i8 0, i64 %i.at, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bb, i8 0, i64 %i.at, i1 false)
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 0, i64 %i.at, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %fill_buf.exit579.loopexit.unr-lcssa, label %bb.h, !llvm.loop !101

fill_buf.exit579.loopexit.unr-lcssa:              ; preds = %bb.h
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fill_buf.exit579, label %.epil.preheader

.epil.preheader:                                  ; preds = %fill_buf.exit579.loopexit.unr-lcssa, %.lr.ph.i575
  %.078.i577.epil.init = phi ptr [ %i.ae, %.lr.ph.i575 ], [ %i.bd, %fill_buf.exit579.loopexit.unr-lcssa ]
  %lcmp.mod820 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod820)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.078.i577.epil = phi ptr [ %.078.i577.epil.init, %.epil.preheader ], [ %i.be, %bb.i ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.078.i577.epil, i8 0, i64 %i.at, i1 false)
  %i.be = getelementptr inbounds i8, ptr %.078.i577.epil, i64 %i.au
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %fill_buf.exit579, label %bb.i, !llvm.loop !102

fill_buf.exit579:                                 ; preds = %fill_buf.exit579.loopexit.unr-lcssa, %bb.i, %bb.g
  %i.bf = icmp sgt i32 %i.ab, 0                   ; 3 uses
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %fill_buf.exit579
  %.pre751 = sext i32 %i.p to i64
  %i.bg = sext i32 %i.ag to i64
  br label %.preheader587

.lr.ph:                                           ; preds = %fill_buf.exit579
  %i.bh = shl nsw i32 %i.p, 1
  %i.bi = sext i32 %i.p to i64                    ; 4 uses
  %i.bj = sext i32 %i.bh to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %invariant.gep = getelementptr i8, ptr %i.n, i64 %i.bi
  %invariant.gep780 = getelementptr i8, ptr %i.n, i64 %i.bj
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !95
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bn = load i8, ptr %gep, align 1, !tbaa !95
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = sub nsw i32 %i.bm, %i.bo
  %i.bq = tail call i32 @llvm.abs.i32(i32 %i.bp, i1 true)
  %i.br = icmp sgt i32 %i.bq, %i.b
  br i1 %i.br, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = shl nuw nsw i32 %i.bm, 2
  %.neg569 = mul nsw i32 %i.bo, -6
  %i.bt = add nsw i32 %.neg569, %i.bs
  %gep781 = getelementptr i8, ptr %invariant.gep780, i64 %indvars.iv
  %i.bu = load i8, ptr %gep781, align 1, !tbaa !95
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = add nsw i32 %i.bt, %i.bw
  %i.by = tail call i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %2 = icmp sgt i32 %i.by, %i.c
  br i1 %2, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  store i8 -1, ptr %i.bz, align 1, !tbaa !95
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.m
  %i.ca = getelementptr inbounds i8, ptr %i.n, i64 %i.bi ; 3 uses
  %i.cb = sext i32 %i.ag to i64                   ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ae, i64 %i.cb
  %i.cd = shl nsw i32 %i.p, 1
  %i.ce = sext i32 %i.cd to i64
  %wide.trip.count687 = zext nneg i32 %i.ab to i64
  %invariant.gep782 = getelementptr i8, ptr %i.ca, i64 %i.bi
  %invariant.gep784 = getelementptr i8, ptr %i.ca, i64 %i.ce
  br label %bb.s

.preheader587:                                    ; preds = %bb.w, %._crit_edge.thread
  %i.cf = phi i64 [ %i.bg, %._crit_edge.thread ], [ %i.cb, %bb.w ] ; 4 uses
  %.pre-phi768 = phi i64 [ %.pre751, %._crit_edge.thread ], [ %i.bi, %bb.w ] ; 8 uses
  %i.cg = getelementptr inbounds i8, ptr %i.ae, i64 %i.cf
  %i.ch = getelementptr inbounds i8, ptr %i.n, i64 %.pre-phi768
  %.0539595 = getelementptr inbounds i8, ptr %i.ch, i64 %.pre-phi768 ; 2 uses
  %.0550596 = getelementptr inbounds i8, ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = icmp sgt i32 %i.ac, 4
  br i1 %i.ci, label %.preheader584.lr.ph, label %.preheader586

.preheader584.lr.ph:                              ; preds = %.preheader587
  %i.cj = shl i32 %i.p, 1                         ; 2 uses
  br i1 %i.bf, label %.preheader584.us.preheader, label %fill_buf.exit

.preheader584.us.preheader:                       ; preds = %.preheader584.lr.ph
  %i.ck = sext i32 %i.cj to i64
  %wide.trip.count693 = zext nneg i32 %i.ab to i64
  %i.cl = add nsw i32 %i.ac, -3
  br label %.preheader584.us

.preheader584.us:                                 ; preds = %.preheader584.us.preheader, %._crit_edge594.us
  %.0550599.us = phi ptr [ %.0550.us, %._crit_edge594.us ], [ %.0550596, %.preheader584.us.preheader ] ; 2 uses
  %.0539598.us = phi ptr [ %.0539.us, %._crit_edge594.us ], [ %.0539595, %.preheader584.us.preheader ] ; 6 uses
  %.0521597.us = phi i32 [ %i.dq, %._crit_edge594.us ], [ 2, %.preheader584.us.preheader ] ; 2 uses
  %invariant.gep786 = getelementptr i8, ptr %.0539598.us, i64 %.pre-phi768
  %invariant.gep788 = getelementptr i8, ptr %.0539598.us, i64 %i.ck
  br label %bb.n

bb.n:                                             ; preds = %.preheader584.us, %bb.r
  %indvars.iv690 = phi i64 [ 0, %.preheader584.us ], [ %indvars.iv.next691, %bb.r ] ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0539598.us, i64 %indvars.iv690
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !95
  %i.co = zext i8 %i.cn to i32                    ; 3 uses
  %i.cp = sub nsw i64 %indvars.iv690, %.pre-phi768
  %i.cq = getelementptr inbounds i8, ptr %.0539598.us, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !95
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = sub nsw i32 %i.co, %i.cs
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %gep787 = getelementptr i8, ptr %invariant.gep786, i64 %indvars.iv690
  %i.cv = load i8, ptr %gep787, align 1, !tbaa !95
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = icmp sgt i32 %i.cu, %i.b
  br i1 %i.cx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cy = sub nsw i32 %i.co, %i.cw
  %i.cz = tail call i32 @llvm.abs.i32(i32 %i.cy, i1 true)
  %i.da = icmp sgt i32 %i.cz, %i.b
  br i1 %i.da, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.db = shl nuw nsw i32 %i.co, 2
  %i.dc = add nuw nsw i32 %i.cw, %i.cs
  %.neg567.us = mul nsw i32 %i.dc, -3
  %i.dd = trunc nuw nsw i64 %indvars.iv690 to i32
  %i.de = sub i32 %i.dd, %i.cj
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %.0539598.us, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !95
  %i.di = zext i8 %i.dh to i32
  %gep789 = getelementptr i8, ptr %invariant.gep788, i64 %indvars.iv690
  %i.dj = load i8, ptr %gep789, align 1, !tbaa !95
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nsw i32 %.neg567.us, %i.db
  %i.dm = add nsw i32 %i.dl, %i.di
  %i.dn = add nsw i32 %i.dm, %i.dk
  %i.do = tail call i32 @llvm.abs.i32(i32 %i.dn, i1 true)
  %3 = icmp sgt i32 %i.do, %i.c
  br i1 %3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %.0550599.us, i64 %indvars.iv690
  store i8 -1, ptr %i.dp, align 1, !tbaa !95
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1 ; 2 uses
  %exitcond694.not = icmp eq i64 %indvars.iv.next691, %wide.trip.count693
  br i1 %exitcond694.not, label %._crit_edge594.us, label %bb.n, !llvm.loop !105

._crit_edge594.us:                                ; preds = %bb.r
  %i.dq = add nuw nsw i32 %.0521597.us, 1
  %.0539.us = getelementptr inbounds i8, ptr %.0539598.us, i64 %.pre-phi768 ; 2 uses
  %.0550.us = getelementptr inbounds i8, ptr %.0550599.us, i64 %i.cf ; 2 uses
  %exitcond695.not = icmp eq i32 %.0521597.us, %i.cl
  br i1 %exitcond695.not, label %.preheader586, label %.preheader584.us, !llvm.loop !106

bb.s:                                             ; preds = %._crit_edge, %bb.w
  %indvars.iv684 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next685, %bb.w ] ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv684
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !95
  %i.dt = zext i8 %i.ds to i32                    ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv684
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !95
  %i.dw = zext i8 %i.dv to i32                    ; 2 uses
  %i.dx = sub nsw i32 %i.dt, %i.dw
  %i.dy = tail call i32 @llvm.abs.i32(i32 %i.dx, i1 true)
  %gep783 = getelementptr i8, ptr %invariant.gep782, i64 %indvars.iv684
  %i.dz = load i8, ptr %gep783, align 1, !tbaa !95
  %i.ea = zext i8 %i.dz to i32                    ; 2 uses
  %i.eb = icmp sgt i32 %i.dy, %i.b
  br i1 %i.eb, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ec = sub nsw i32 %i.dt, %i.ea
  %i.ed = tail call i32 @llvm.abs.i32(i32 %i.ec, i1 true)
  %i.ee = icmp sgt i32 %i.ed, %i.b
  br i1 %i.ee, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ef = shl nuw nsw i32 %i.dt, 2
  %i.eg = add nuw nsw i32 %i.ea, %i.dw
  %.neg568 = mul nsw i32 %i.eg, -3
  %i.eh = add nsw i32 %.neg568, %i.ef
  %gep785 = getelementptr i8, ptr %invariant.gep784, i64 %indvars.iv684
  %i.ei = load i8, ptr %gep785, align 1, !tbaa !95
  %i.ej = zext i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = add nsw i32 %i.eh, %i.ek
  %i.em = tail call i32 @llvm.abs.i32(i32 %i.el, i1 true)
  %4 = icmp sgt i32 %i.em, %i.c
  br i1 %4, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv684
  store i8 -1, ptr %i.en, align 1, !tbaa !95
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %exitcond688.not = icmp eq i64 %indvars.iv.next685, %wide.trip.count687
  br i1 %exitcond688.not, label %.preheader587, label %bb.s, !llvm.loop !107

.preheader586:                                    ; preds = %._crit_edge594.us, %.preheader587
  %.0539.lcssa = phi ptr [ %.0539595, %.preheader587 ], [ %.0539.us, %._crit_edge594.us ] ; 6 uses
  %.0550.lcssa = phi ptr [ %.0550596, %.preheader587 ], [ %.0550.us, %._crit_edge594.us ] ; 2 uses
  br i1 %i.bf, label %.lr.ph603, label %fill_buf.exit

.lr.ph603:                                        ; preds = %.preheader586
  %i.eo = shl i32 %i.p, 1
  %wide.trip.count699 = zext nneg i32 %i.ab to i64
  %invariant.gep790 = getelementptr i8, ptr %.0539.lcssa, i64 %.pre-phi768
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph603, %bb.ab
  %indvars.iv696 = phi i64 [ 0, %.lr.ph603 ], [ %indvars.iv.next697, %bb.ab ] ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.0539.lcssa, i64 %indvars.iv696
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !95
  %i.er = zext i8 %i.eq to i32                    ; 3 uses
  %i.es = sub nsw i64 %indvars.iv696, %.pre-phi768
  %i.et = getelementptr inbounds i8, ptr %.0539.lcssa, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !95
  %i.ev = zext i8 %i.eu to i32                    ; 2 uses
  %i.ew = sub nsw i32 %i.er, %i.ev
  %i.ex = tail call i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %gep791 = getelementptr i8, ptr %invariant.gep790, i64 %indvars.iv696
  %i.ey = load i8, ptr %gep791, align 1, !tbaa !95
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %i.fa = icmp sgt i32 %i.ex, %i.b
  br i1 %i.fa, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fb = sub nsw i32 %i.er, %i.ez
  %i.fc = tail call i32 @llvm.abs.i32(i32 %i.fb, i1 true)
  %i.fd = icmp sgt i32 %i.fc, %i.b
  br i1 %i.fd, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fe = shl nuw nsw i32 %i.er, 2
  %i.ff = add nuw nsw i32 %i.ez, %i.ev
  %.neg566 = mul nsw i32 %i.ff, -3
  %i.fg = add nsw i32 %.neg566, %i.fe
  %i.fh = trunc nuw nsw i64 %indvars.iv696 to i32
  %i.fi = sub i32 %i.fh, %i.eo
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %.0539.lcssa, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !95
  %i.fm = zext i8 %i.fl to i32
  %i.fn = shl nuw nsw i32 %i.fm, 1
  %i.fo = add nsw i32 %i.fg, %i.fn
  %i.fp = tail call i32 @llvm.abs.i32(i32 %i.fo, i1 true)
  %5 = icmp sgt i32 %i.fp, %i.c
  br i1 %5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %.0550.lcssa, i64 %indvars.iv696
  store i8 -1, ptr %i.fq, align 1, !tbaa !95
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next697, %wide.trip.count699
  br i1 %exitcond700.not, label %._crit_edge604, label %bb.x, !llvm.loop !108

._crit_edge604:                                   ; preds = %bb.ab
  %i.fr = getelementptr inbounds i8, ptr %.0539.lcssa, i64 %.pre-phi768 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %.0550.lcssa, i64 %i.cf
  %i.ft = shl i32 %i.p, 1
  %wide.trip.count704 = zext nneg i32 %i.ab to i64
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge604, %bb.af
  %indvars.iv701 = phi i64 [ 0, %._crit_edge604 ], [ %indvars.iv.next702, %bb.af ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv701
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !95
  %i.fw = zext i8 %i.fv to i32                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0539.lcssa, i64 %indvars.iv701
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !95
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = sub nsw i32 %i.fw, %i.fz
  %i.gb = tail call i32 @llvm.abs.i32(i32 %i.ga, i1 true)
  %i.gc = icmp sgt i32 %i.gb, %i.b
  br i1 %i.gc, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gd = shl nuw nsw i32 %i.fw, 2
  %.neg = mul nsw i32 %i.fz, -6
  %i.ge = add nsw i32 %.neg, %i.gd
  %i.gf = trunc nuw nsw i64 %indvars.iv701 to i32
  %i.gg = sub i32 %i.gf, %i.ft
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds i8, ptr %i.fr, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !95
  %i.gk = zext i8 %i.gj to i32
  %i.gl = shl nuw nsw i32 %i.gk, 1
  %i.gm = add nsw i32 %i.ge, %i.gl
  %i.gn = tail call i32 @llvm.abs.i32(i32 %i.gm, i1 true)
  %6 = icmp sgt i32 %i.gn, %i.c
  br i1 %6, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.go = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv701
  store i8 -1, ptr %i.go, align 1, !tbaa !95
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1 ; 2 uses
  %exitcond705.not = icmp eq i64 %indvars.iv.next702, %wide.trip.count704
  br i1 %exitcond705.not, label %fill_buf.exit, label %bb.ac, !llvm.loop !109

fill_buf.exit.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod824.not = icmp eq i32 %xtraiter822, 0
  br i1 %lcmp.mod824.not, label %fill_buf.exit, label %.epil.preheader821

.epil.preheader821:                               ; preds = %fill_buf.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.078.i.epil.init = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.as, %fill_buf.exit.loopexit.unr-lcssa ]
  %lcmp.mod825 = icmp ne i32 %xtraiter822, 0
  tail call void @llvm.assume(i1 %lcmp.mod825)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader821
  %.078.i.epil = phi ptr [ %.078.i.epil.init, %.epil.preheader821 ], [ %i.gp, %bb.ag ] ; 2 uses
  %epil.iter823 = phi i32 [ 0, %.epil.preheader821 ], [ %epil.iter823.next, %bb.ag ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.078.i.epil, i8 -1, i64 %i.ai, i1 false)
  %i.gp = getelementptr inbounds i8, ptr %.078.i.epil, i64 %i.aj
  %epil.iter823.next = add i32 %epil.iter823, 1   ; 2 uses
  %epil.iter823.cmp.not = icmp eq i32 %epil.iter823.next, %xtraiter822
  br i1 %epil.iter823.cmp.not, label %fill_buf.exit, label %bb.ag, !llvm.loop !110

fill_buf.exit:                                    ; preds = %bb.af, %fill_buf.exit.loopexit.unr-lcssa, %bb.ag, %.preheader584.lr.ph, %.preheader586, %bb.e
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1
  %i.gq = load i32, ptr %i.d, align 4, !tbaa !111
  %.not = icmp ne i32 %i.gq, 0                    ; 2 uses
  %i.gr = icmp samesign ult i64 %indvars.iv706, 2
  %i.gs = select i1 %.not, i1 %i.gr, i1 false
  br i1 %i.gs, label %bb.b, label %bb.ah, !llvm.loop !112

bb.ah:                                            ; preds = %fill_buf.exit
  br i1 %.not, label %bb.ai, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.ah
  %.pre = load i32, ptr %i.g, align 8, !tbaa !48
  %.pre747 = load ptr, ptr %i.f, align 8, !tbaa !92
  %.pre748 = load i32, ptr %i.j, align 8, !tbaa !93
  %.pre749 = load i32, ptr %i.l, align 4, !tbaa !94
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.gt = load ptr, ptr %i.f, align 8, !tbaa !92  ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !92
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !92
  %i.gy = load i32, ptr %i.j, align 8, !tbaa !93  ; 4 uses
  %i.gz = load i32, ptr %i.i, align 8, !tbaa !48
  %i.ha = sub nsw i32 0, %i.gy
  %i.hb = ashr i32 %i.ha, %i.gz                   ; 2 uses
  %i.hc = load i32, ptr %i.l, align 4, !tbaa !94  ; 4 uses
  %i.hd = load i32, ptr %i.k, align 8, !tbaa !48
  %i.he = sub nsw i32 0, %i.hc
  %i.hf = ashr i32 %i.he, %i.hd                   ; 2 uses
  %i.hg = load i32, ptr %i.g, align 8, !tbaa !48  ; 4 uses
  %i.hh = shl i32 %i.hg, 1                        ; 2 uses
  %i.hi = sext i32 %i.hh to i64                   ; 5 uses
  %i.hj = icmp slt i32 %i.hf, -2
  br i1 %i.hj, label %.lr.ph623, label %.loopexit

.lr.ph623:                                        ; preds = %bb.ai
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !48
  %i.hm = sext i32 %i.hl to i64                   ; 8 uses
  %i.hn = icmp slt i32 %i.hb, -2
  br i1 %i.hn, label %.lr.ph613.preheader, label %.loopexit

.lr.ph613.preheader:                              ; preds = %.lr.ph623
  %i.ho = xor i32 %i.hb, -1
  %i.hp = ashr exact i32 %i.hh, 1
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  %i.hr = sub nsw i64 0, %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.gt, i64 %i.hr
  %i.ht = getelementptr inbounds i8, ptr %i.gt, i64 %i.hq
  %i.hu = getelementptr inbounds i8, ptr %i.gt, i64 %i.hi
  %wide.trip.count712 = zext nneg i32 %i.ho to i64
  %i.hv = sub nsw i32 -2, %i.hf
  br label %.lr.ph613

.lr.ph613:                                        ; preds = %.lr.ph613.preheader, %._crit_edge614
  %.1522621 = phi i32 [ %i.kg, %._crit_edge614 ], [ 1, %.lr.ph613.preheader ] ; 3 uses
  %.0544620 = phi ptr [ %i.hz, %._crit_edge614 ], [ %i.hu, %.lr.ph613.preheader ]
  %.0545619 = phi ptr [ %i.hy, %._crit_edge614 ], [ %i.ht, %.lr.ph613.preheader ]
  %.0546618 = phi ptr [ %i.hw, %._crit_edge614 ], [ %i.hs, %.lr.ph613.preheader ]
  %.0547617 = phi ptr [ %i.ia, %._crit_edge614 ], [ %i.gx, %.lr.ph613.preheader ] ; 4 uses
  %.0548616 = phi ptr [ %i.ib, %._crit_edge614 ], [ %i.gv, %.lr.ph613.preheader ] ; 4 uses
  %.0549615 = phi ptr [ %i.hx, %._crit_edge614 ], [ %i.gt, %.lr.ph613.preheader ]
  %i.hw = getelementptr inbounds i8, ptr %.0546618, i64 %i.hi ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.0549615, i64 %i.hi ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %.0545619, i64 %i.hi ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %.0544620, i64 %i.hi ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.0547617, i64 %i.hm ; 7 uses
  %i.ib = getelementptr inbounds i8, ptr %.0548616, i64 %i.hm ; 7 uses
  %i.ic = and i32 %.1522621, 1
  %.not563 = icmp eq i32 %i.ic, 0
  %invariant.gep792 = getelementptr i8, ptr %i.ia, i64 %i.hm
  %invariant.gep794 = getelementptr i8, ptr %i.ia, i64 %i.hm
  %invariant.gep796 = getelementptr i8, ptr %i.ia, i64 %i.hm
  %invariant.gep798 = getelementptr i8, ptr %i.ib, i64 %i.hm
  %invariant.gep800 = getelementptr i8, ptr %i.ib, i64 %i.hm
  %invariant.gep802 = getelementptr i8, ptr %i.ib, i64 %i.hm
  %. = select i1 %.not563, ptr %i.hz, ptr %i.hw
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph613, %bb.bb
  %indvars.iv709 = phi i64 [ 1, %.lr.ph613 ], [ %indvars.iv.next710, %bb.bb ] ; 14 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %indvars.iv709
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !95
  %i.if = icmp eq i8 %i.ie, -1
  br i1 %i.if, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.ig = add nsw i64 %indvars.iv709, -1          ; 3 uses
  %i.ih = getelementptr inbounds i8, ptr %.0547617, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !95
  %i.ij = icmp eq i8 %i.ii, -1
  br i1 %i.ij, label %.sink.split, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ik = getelementptr inbounds nuw i8, ptr %.0547617, i64 %indvars.iv709
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !95
  %i.im = icmp eq i8 %i.il, -1
  br i1 %i.im, label %.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = add nuw nsw i64 %indvars.iv709, 1       ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0547617, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !95
  %i.iq = icmp eq i8 %i.ip, -1
  br i1 %i.iq, label %.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds i8, ptr %i.ia, i64 %i.ig
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !95
  %i.it = icmp eq i8 %i.is, -1
  br i1 %i.it, label %.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.in
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !95
  %i.iw = icmp eq i8 %i.iv, -1
  br i1 %i.iw, label %.sink.split, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %gep793 = getelementptr i8, ptr %invariant.gep792, i64 %i.ig
  %i.ix = load i8, ptr %gep793, align 1, !tbaa !95
  %i.iy = icmp eq i8 %i.ix, -1
  br i1 %i.iy, label %.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %gep795 = getelementptr i8, ptr %invariant.gep794, i64 %indvars.iv709
  %i.iz = load i8, ptr %gep795, align 1, !tbaa !95
  %i.ja = icmp eq i8 %i.iz, -1
  br i1 %i.ja, label %.sink.split, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %gep797 = getelementptr i8, ptr %invariant.gep796, i64 %i.in
  %i.jb = load i8, ptr %gep797, align 1, !tbaa !95
  %i.jc = icmp eq i8 %i.jb, -1
  br i1 %i.jc, label %.sink.split, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aj
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv709
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !95
  %i.jf = icmp eq i8 %i.je, -1
  br i1 %i.jf, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.jg = add nsw i64 %indvars.iv709, -1          ; 3 uses
  %i.jh = getelementptr inbounds i8, ptr %.0548616, i64 %i.jg
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !95
  %i.jj = icmp eq i8 %i.ji, -1
  br i1 %i.jj, label %.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jk = getelementptr inbounds nuw i8, ptr %.0548616, i64 %indvars.iv709
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !95
  %i.jm = icmp eq i8 %i.jl, -1
  br i1 %i.jm, label %.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jn = add nuw nsw i64 %indvars.iv709, 1       ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0548616, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !95
  %i.jq = icmp eq i8 %i.jp, -1
  br i1 %i.jq, label %.sink.split, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jr = getelementptr inbounds i8, ptr %i.ib, i64 %i.jg
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !95
  %i.jt = icmp eq i8 %i.js, -1
end_hunk_0
