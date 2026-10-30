Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_vmafmotion?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ff_vmafmotion_init:bb.a
  %i.q = tail call noalias ptr @av_malloc(i64 noundef %i.l) #12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.q, ptr %i.r, align 8, !tbaa !16
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.e, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.s = tail call i64 @llvm.lrint.i64.f64(double f0x409BE5F0E0000000)
  %i.t = trunc i64 %i.s to i16                    ; 2 uses
  store i16 %i.t, ptr %0, align 8, !tbaa !25
  %i.u = tail call i64 @llvm.lrint.i64.f64(double f0x40BF41FD60000000)
  %i.v = trunc i64 %i.u to i16                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.v, ptr %i.w, align 2, !tbaa !25
  %i.x = tail call i64 @llvm.lrint.i64.f64(double f0x40C9C48680000000)
  %i.y = trunc i64 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.y, ptr %i.z, align 4, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.v, ptr %i.aa, align 2, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.t, ptr %i.ab, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @convolution_x, ptr %i.af, align 8, !tbaa !60
  %i.ag = icmp eq i32 %i.ae, 10
  %i.ah = select i1 %i.ag, ptr @convolution_y_10bit, ptr @convolution_y_8bit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !61
  store ptr @image_sad, ptr %i.ac, align 8, !tbaa !62
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %.preheader.preheader
  %.025 = phi i32 [ -22, %bb.a ], [ 0, %.preheader.preheader ], [ -12, %bb.d ], [ -12, %bb.c ], [ -12, %bb.b ]
  ret i32 %.025
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #2

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #3

; Function Attrs: nounwind uwtable
define double @ff_vmafmotion_uninit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @av_free(ptr noundef %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  tail call void @av_free(ptr noundef %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @av_free(ptr noundef %i.f) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load double, ptr %i.i, align 8, !tbaa !23
  %i.k = uitofp nsz i64 %i.h to double
  %i.l = fdiv nsz double %i.j, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi nsz double [ %i.l, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret double %i.m
}

declare void @av_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483647, -2147483648) i32 @init(ptr noundef %0) #4 {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %sub_0

sub_0:                                            ; preds = %bb.a
  %i.f = load i8, ptr %i.e, align 1
  %.not14 = icmp eq i8 %i.f, 45
  br i1 %.not14, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %.tail.thread

bb.b:                                             ; preds = %.tail
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.j, ptr %i.k, align 8, !tbaa !39
  br label %bb.d

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.l = tail call ptr @avpriv_fopen_utf8(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.11) #12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.l, ptr %i.m, align 8, !tbaa !39
  %.not13 = icmp eq ptr %i.l, null
  br i1 %.not13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.tail.thread
  %i.n = tail call ptr @__errno_location() #13
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = sub nsw i32 0, %i.o                      ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.r = call i32 @av_strerror(i32 noundef range(i32 -2147483647, -2147483648) %i.p, ptr noundef nonnull %i.a, i64 noundef 64) #12 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12, ptr noundef %i.q, ptr noundef nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.tail.thread, %bb.b, %bb.c
  %.0 = phi i32 [ %i.p, %bb.c ], [ 0, %bb.b ], [ 0, %.tail.thread ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call nsz double @ff_vmafmotion_uninit(ptr noundef nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.13, double noundef %i.d) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %.not8 = icmp eq ptr %i.h, null
  %i.i = load ptr, ptr @stdout, align 8
  %.not9 = icmp eq ptr %i.h, %i.i
  %or.cond = select i1 %.not8, i1 true, i1 %.not9
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !66
  %i.b = tail call ptr @av_pix_fmt_desc_get(i32 noundef 0) #12
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.a ] ; 3 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = call ptr @av_pix_fmt_desc_get(i32 noundef %i.c) #12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68   ; 3 uses
  %i.g = and i64 %i.f, 46
  %.not20 = icmp eq i64 %i.g, 0
  br i1 %.not20, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.h = and i64 %i.f, 16
  %.not21 = icmp eq i64 %i.h, 0
  br i1 %.not21, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !69
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i64 %i.f, 1
  %.not22 = icmp eq i64 %i.l, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !27 ; 2 uses
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %.pre, 8
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %3 = phi i32 [ 8, %bb.e ], [ %.pre, %bb.d ]
  switch i32 %3, label %bb.g [
    i32 8, label %.thread
    i32 10, label %.thread
  ]

.thread:                                          ; preds = %bb.f, %bb.f
  %i.n = call i32 @ff_add_format(ptr noundef nonnull %i.a, i64 noundef %indvars.iv) #12 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.c, %bb.e, %.thread, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = trunc nuw i64 %indvars.iv.next to i32
  %i.q = call ptr @av_pix_fmt_desc_get(i32 noundef %i.p) #12
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !65

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre30 = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.r = phi ptr [ %.pre30, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.s = call i32 @ff_set_common_formats2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.r) #12
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %._crit_edge
  %.2 = phi i32 [ %i.s, %._crit_edge ], [ %i.n, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @convolution_x(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7) #5 {
bb.a:
  %i.a = lshr i64 %6, 1                           ; 3 uses
  %i.b = lshr i64 %7, 1                           ; 3 uses
  %i.c = sdiv i32 %1, 2                           ; 8 uses
  %i.d = icmp sgt i32 %5, 0
  br i1 %i.d, label %.preheader127.lr.ph, label %._crit_edge

.preheader127.lr.ph:                              ; preds = %bb.a
  %.neg = sub i32 %i.c, %1
  %i.e = add i32 %4, %.neg                        ; 3 uses
  %i.f = icmp sgt i32 %1, 1
  %i.g = icmp sgt i32 %1, 0                       ; 2 uses
  %reass.add120 = shl i32 %4, 1                   ; 2 uses
  %i.h = icmp slt i32 %i.c, %i.e
  %narrow = sub nsw i32 0, %i.c
  %.neg122 = sext i32 %narrow to i64
  %i.i = icmp slt i32 %i.e, %4                    ; 2 uses
  %i.j = sext i32 %i.c to i64                     ; 2 uses
  %i.k = shl nsw i64 %i.j, 1
  %i.l = and i64 %7, -2
  %i.m = xor i32 %1, -1
  %i.n = add i32 %4, %i.m
  %i.o = zext i32 %i.n to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = add nuw nsw i64 %i.p, 2
  %i.r = sext i32 %i.e to i64                     ; 3 uses
  %i.s = shl nsw i64 %i.r, 1
  %i.t = xor i32 %i.c, -1
  %i.u = add i32 %1, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = add nuw nsw i64 %i.w, 2
  %wide.trip.count183 = zext nneg i32 %5 to i64
  %i.y = getelementptr i8, ptr %3, i64 %i.s
  %i.z = getelementptr i8, ptr %3, i64 %i.k
  %wide.trip.count153 = zext nneg i32 %i.c to i64
  %wide.trip.count = zext i32 %1 to i64           ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %2, i64 %.neg122
  %wide.trip.count161 = zext nneg i32 %1 to i64
  %wide.trip.count180 = sext i32 %4 to i64
  %wide.trip.count175 = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader127

.preheader127:                                    ; preds = %.preheader127.lr.ph, %._crit_edge139
  %indvar = phi i64 [ 0, %.preheader127.lr.ph ], [ %indvar.next, %._crit_edge139 ] ; 8 uses
  %i.aa = mul i64 %i.l, %indvar                   ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.y, i64 %i.aa
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.aa
  br i1 %i.f, label %.preheader124.us.preheader, label %.preheader126

.preheader124.us.preheader:                       ; preds = %.preheader127
  %i.ab = mul nuw nsw i64 %i.a, %indvar
  %i.ac = getelementptr [2 x i8], ptr %2, i64 %i.ab
  %i.ad = mul i64 %i.b, %indvar
  %i.ae = getelementptr [2 x i8], ptr %3, i64 %i.ad
  br label %.preheader124.us

.preheader124.us:                                 ; preds = %.preheader124.us.preheader, %._crit_edge.us
  %indvars.iv150 = phi i64 [ 0, %.preheader124.us.preheader ], [ %indvars.iv.next151, %._crit_edge.us ] ; 3 uses
  %i.af = trunc i64 %indvars.iv150 to i32
  %i.ag = sub i32 %i.af, %i.c
  br label %bb.b

bb.b:                                             ; preds = %.preheader124.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader124.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.098129.us = phi i32 [ 0, %.preheader124.us ], [ %i.au, %bb.b ]
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = add nsw i32 %i.ag, %i.ah
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 3 uses
  %.not118.us = icmp slt i32 %i.aj, %4
  %i.ak = xor i32 %i.aj, -1
  %i.al = add i32 %reass.add120, %i.ak
  %.097.us = select i1 %.not118.us, i32 %i.aj, i32 %i.al
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.an = load i16, ptr %i.am, align 2, !tbaa !25
  %i.ao = zext i16 %i.an to i32
  %i.ap = sext i32 %.097.us to i64
  %i.aq = getelementptr [2 x i8], ptr %i.ac, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !25
  %i.as = zext i16 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, %i.ao
  %i.au = add nuw nsw i32 %i.at, %.098129.us      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !70

._crit_edge.us:                                   ; preds = %bb.b
  %i.av = lshr i32 %i.au, 15
  %i.aw = trunc nuw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv150
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !25
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %.preheader126, label %.preheader124.us, !llvm.loop !71

.preheader126:                                    ; preds = %._crit_edge.us, %.preheader127
  br i1 %i.h, label %.preheader123.lr.ph, label %.preheader125

.preheader123.lr.ph:                              ; preds = %.preheader126
  %i.ay = mul nuw nsw i64 %i.b, %indvar
  %i.az = getelementptr [2 x i8], ptr %3, i64 %i.ay
  br i1 %i.g, label %.preheader123.us.preheader, label %.preheader125.thread

.preheader123.us.preheader:                       ; preds = %.preheader123.lr.ph
  %i.ba = mul nuw nsw i64 %i.a, %indvar
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ba
  br label %.preheader123.us

.preheader123.us:                                 ; preds = %.preheader123.us.preheader, %._crit_edge.us134
  %indvars.iv163 = phi i64 [ %i.j, %.preheader123.us.preheader ], [ %indvars.iv.next164, %._crit_edge.us134 ] ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %gep, i64 %indvars.iv163 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader123.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader123.us ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.bm, %vector.body ], [ zeroinitializer, %.preheader123.us ]
  %vec.phi191 = phi <4 x i32> [ %i.bn, %vector.body ], [ zeroinitializer, %.preheader123.us ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %wide.load = load <4 x i16>, ptr %i.bc, align 2, !tbaa !25
  %wide.load192 = load <4 x i16>, ptr %i.bd, align 2, !tbaa !25
  %i.be = zext <4 x i16> %wide.load to <4 x i32>
  %i.bf = zext <4 x i16> %wide.load192 to <4 x i32>
  %i.bg = getelementptr [2 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %wide.load193 = load <4 x i16>, ptr %i.bg, align 2, !tbaa !25
  %wide.load194 = load <4 x i16>, ptr %i.bh, align 2, !tbaa !25
  %i.bi = zext <4 x i16> %wide.load193 to <4 x i32>
  %i.bj = zext <4 x i16> %wide.load194 to <4 x i32>
  %i.bk = mul nuw nsw <4 x i32> %i.bi, %i.be
  %i.bl = mul nuw nsw <4 x i32> %i.bj, %i.bf
  %i.bm = add <4 x i32> %i.bk, %vec.phi           ; 2 uses
  %i.bn = add <4 x i32> %i.bl, %vec.phi191        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bn, %i.bm
  %i.bp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us134, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader123.us, %middle.block
  %indvars.iv158.ph = phi i64 [ 0, %.preheader123.us ], [ %n.vec, %middle.block ]
  %.096132.us.ph = phi i32 [ 0, %.preheader123.us ], [ %i.bp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %scalar.ph ], [ %indvars.iv158.ph, %scalar.ph.preheader ] ; 3 uses
  %.096132.us = phi i32 [ %i.bx, %scalar.ph ], [ %.096132.us.ph, %scalar.ph.preheader ]
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv158
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !25
  %i.bs = zext i16 %i.br to i32
  %i.bt = getelementptr [2 x i8], ptr %i.bb, i64 %indvars.iv158
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !25
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.bv, %i.bs
  %i.bx = add nuw nsw i32 %i.bw, %.096132.us      ; 2 uses
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %._crit_edge.us134, label %scalar.ph, !llvm.loop !73

._crit_edge.us134:                                ; preds = %scalar.ph, %middle.block
  %.lcssa189 = phi i32 [ %i.bp, %middle.block ], [ %i.bx, %scalar.ph ]
  %i.by = lshr i32 %.lcssa189, 15
  %i.bz = trunc nuw i32 %i.by to i16
  %i.ca = getelementptr [2 x i8], ptr %i.az, i64 %indvars.iv163
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !25
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
end_hunk_0
