Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/sha1?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zif_sha1:bb.a
    i8 3, label %.split84.thread
    i8 2, label %.split84.thread.fold.split
  ], !prof !23

.split84.thread.fold.split:                       ; preds = %bb.e
  br label %.split84.thread

.split84.thread:                                  ; preds = %bb.e, %.split84.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.e ], [ 0, %.split84.thread.fold.split ]
  store i8 %storemerge.i, ptr %i.b, align 1, !tbaa !14
  br label %.critedge

zend_parse_arg_bool_ex.exit:                      ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = call zeroext i1 @zend_parse_arg_bool_slow(ptr noundef nonnull %i.p, ptr noundef nonnull %i.b, i32 noundef 2) #7
  %cond.fr64 = freeze i1 %i.q
  br i1 %cond.fr64, label %.critedge, label %.thread74, !prof !21

.thread74:                                        ; preds = %zend_parse_arg_bool_ex.exit, %zend_parse_arg_str_ex.exit, %bb.b
  %.05483 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_bool_ex.exit ]
  %.05582 = phi i32 [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_bool_ex.exit ]
  %.05681 = phi ptr [ null, %bb.b ], [ %i.g, %zend_parse_arg_str_ex.exit ], [ %i.p, %zend_parse_arg_bool_ex.exit ]
  %.05780 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_bool_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.05483, i32 noundef %.05780, ptr noundef null, i32 noundef %.05582, ptr noundef %.05681) #7
  br label %bb.i

.critedge:                                        ; preds = %zend_parse_arg_bool_ex.exit, %.split84.thread, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %2, align 16, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1009589776, ptr %i.t, align 16, !tbaa !24
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28   ; 6 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = shl i32 %i.y, 3
  store i32 %i.z, ptr %i.r, align 4, !tbaa !24
  %i.aa = lshr i64 %i.x, 29
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.s, align 8, !tbaa !24
  %.not.i = icmp ult i64 %i.x, 64
  br i1 %.not.i, label %PHP_SHA1Update.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.v, i64 64, i1 false)
  call fastcc void @SHA1Transform(ptr noundef nonnull %2, ptr noundef nonnull %i.ac)
  %i.ad = icmp ugt i64 %i.x, 127
  br i1 %i.ad, label %.lr.ph.i, label %PHP_SHA1Update.exit

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.031.i = phi i64 [ %i.af, %.lr.ph.i ], [ 64, %bb.f ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %.031.i
  call fastcc void @SHA1Transform(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.ae)
  %i.af = add i64 %.031.i, 64                     ; 2 uses
  %i.ag = add i64 %.031.i, 127
  %i.ah = icmp ult i64 %i.ag, %i.x
  br i1 %i.ah, label %.lr.ph.i, label %PHP_SHA1Update.exit, !llvm.loop !0

PHP_SHA1Update.exit:                              ; preds = %.lr.ph.i, %.critedge, %bb.f
  %.1.i = phi i64 [ 0, %.critedge ], [ 64, %bb.f ], [ %i.af, %.lr.ph.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.1.i
  %i.ak = sub i64 %i.x, %.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull readonly align 1 %i.aj, i64 %i.ak, i1 false)
  call void @PHP_SHA1Final(ptr noundef nonnull %i.c, ptr noundef nonnull %2)
  %i.al = load i8, ptr %i.b, align 1, !tbaa !14, !range !30, !noundef !31
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %PHP_SHA1Update.exit
  %i.an = call noalias ptr @_emalloc_48() #7      ; 7 uses
  store i32 1, ptr %i.an, align 4, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 22, ptr %i.ao, align 4, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 20, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, ptr noundef nonnull align 16 dereferenceable(20) %i.c, i64 20, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 44
  store i8 0, ptr %i.as, align 4, !tbaa !15
  store ptr %i.an, ptr %1, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.at, align 8, !tbaa !15
  br label %bb.i

bb.h:                                             ; preds = %PHP_SHA1Update.exit
  %i.au = call noalias ptr @_emalloc_80() #7      ; 6 uses
  store i32 1, ptr %i.au, align 4, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 22, ptr %i.av, align 4, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 40, ptr %i.ax, align 8, !tbaa !28
  store ptr %i.au, ptr %1, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.ay, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  call void @make_digest_ex(ptr noundef nonnull %i.az, ptr noundef nonnull %i.c, i64 noundef 20) #7
  br label %bb.i

bb.i:                                             ; preds = %.thread74, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @zend_wrong_parameters_count_error(i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @zend_wrong_parameter_error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_SHA1InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 28)) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 4, !tbaa !24
  store i32 0, ptr %i.a, align 4, !tbaa !24
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 4, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.c, align 4, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA1Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 63                         ; 3 uses
  %i.e = trunc i64 %2 to i32
  %i.f = shl i32 %i.e, 3                          ; 2 uses
  %i.g = add i32 %i.b, %i.f                       ; 2 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !24
  %i.h = icmp ult i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = zext i1 %i.h to i32
  %i.l = add i32 %i.j, %i.k
  %i.m = lshr i64 %2, 29
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = add i32 %i.l, %i.n
  store i32 %i.p, ptr %i.o, align 4, !tbaa !24
  %i.q = sub nuw nsw i32 64, %i.d
  %i.r = zext nneg i32 %i.q to i64                ; 5 uses
  %.not = icmp ult i64 %2, %i.r
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = zext nneg i32 %i.d to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.r, i1 false)
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.s)
  %i.v = add nuw nsw i64 %i.r, 63
  %i.w = icmp ult i64 %i.v, %2
  br i1 %i.w, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i64 [ %i.y, %.lr.ph ], [ %i.r, %bb.a ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.031
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.x)
  %i.y = add i64 %.031, 64                        ; 2 uses
  %i.z = add i64 %.031, 127
  %i.aa = icmp ult i64 %i.z, %2
  br i1 %i.aa, label %.lr.ph, label %.loopexit, !llvm.loop !0

bb.b:                                             ; preds = %._crit_edge
  %i.ab = zext nneg i32 %i.d to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.028 = phi i64 [ %i.ab, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.1 = phi i64 [ 0, %bb.b ], [ %i.r, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.028
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.af = sub i64 %2, %.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.ae, i64 %i.af, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA1Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !24   ; 6 uses
  %2 = trunc i32 %i.c to i8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %2, ptr %3, align 1, !tbaa !15
  %4 = lshr i32 %i.c, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %5, ptr %6, align 1, !tbaa !15
  %7 = lshr i32 %i.c, 16
  %8 = trunc i32 %7 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %8, ptr %i.d, align 1, !tbaa !15
  %9 = lshr i32 %i.c, 24
  %10 = trunc nuw i32 %9 to i8
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %10, ptr %11, align 1, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !24   ; 5 uses
  %12 = trunc i32 %i.f to i8
  %13 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %12, ptr %13, align 1, !tbaa !15
  %14 = lshr i32 %i.f, 8
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %15, ptr %16, align 1, !tbaa !15
  %17 = lshr i32 %i.f, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %18, ptr %19, align 1, !tbaa !15
  %20 = lshr i32 %i.f, 24
  %21 = trunc nuw i32 %20 to i8
  store i8 %21, ptr %i.a, align 1, !tbaa !15
  %i.g = lshr i32 %i.c, 3
  %i.h = and i32 %i.g, 63                         ; 5 uses
  %i.i = icmp samesign ult i32 %i.h, 56
  %.v = select i1 %i.i, i32 56, i32 120
  %i.j = sub nsw i32 %.v, %i.h                    ; 4 uses
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = shl nsw i32 %i.j, 3                      ; 2 uses
  %i.m = add i32 %i.l, %i.c                       ; 2 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !24
  %i.n = icmp ult i32 %i.m, %i.l
  %i.o = zext i1 %i.n to i32
  %i.p = lshr i32 %i.j, 29
  %i.q = add i32 %i.p, %i.f
  %i.r = add i32 %i.q, %i.o
  store i32 %i.r, ptr %i.e, align 4, !tbaa !24
  %i.s = sub nuw nsw i32 64, %i.h                 ; 2 uses
  %.not.i = icmp ult i32 %i.j, %i.s
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.v = zext nneg i32 %i.h to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.t, i1 false)
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.u)
  %i.x = add nuw nsw i64 %i.t, 63
  %i.y = icmp samesign ult i64 %i.x, %i.k
  br i1 %i.y, label %.lr.ph.i, label %PHP_SHA1Update.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.031.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.t, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.031.i
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.z)
  %i.aa = add nuw nsw i64 %.031.i, 64             ; 2 uses
  %i.ab = add nuw nsw i64 %.031.i, 127
  %i.ac = icmp samesign ult i64 %i.ab, %i.k
  br i1 %i.ac, label %.lr.ph.i, label %PHP_SHA1Update.exit, !llvm.loop !0

bb.c:                                             ; preds = %bb.a
  %i.ad = zext nneg i32 %i.h to i64
  br label %PHP_SHA1Update.exit

PHP_SHA1Update.exit:                              ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.028.i = phi i64 [ %i.ad, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.c ], [ %i.t, %bb.b ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.028.i
  %i.ag = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ah = sub i64 %i.k, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %i.ag, i64 %i.ah, i1 false)
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !24  ; 3 uses
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = and i32 %i.aj, 63                       ; 4 uses
  %i.al = add i32 %i.ai, 64
  store i32 %i.al, ptr %i.b, align 4, !tbaa !24
  %i.am = icmp ugt i32 %i.ai, -65
  %i.an = load i32, ptr %i.e, align 4, !tbaa !24
  %i.ao = zext i1 %i.am to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.e, align 4, !tbaa !24
  %.not.i17 = icmp samesign ult i32 %i.ak, 56
  br i1 %.not.i17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %PHP_SHA1Update.exit
  %i.aq = sub nuw nsw i32 64, %i.ak
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = zext nneg i32 %i.ak to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.a, i64 %i.ar, i1 false)
  tail call fastcc void @SHA1Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.ae)
  br label %PHP_SHA1Update.exit22

bb.e:                                             ; preds = %PHP_SHA1Update.exit
  %i.au = zext nneg i32 %i.ak to i64
  br label %PHP_SHA1Update.exit22

PHP_SHA1Update.exit22:                            ; preds = %bb.e, %bb.d
  %.028.i18 = phi i64 [ %i.au, %bb.e ], [ 0, %bb.d ]
  %.1.i19 = phi i64 [ 0, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.028.i18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i19
  %i.ax = sub nuw nsw i64 8, %.1.i19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %1, align 4, !tbaa !24
  %i.az = lshr i32 %i.ay, 24
  %i.ba = trunc nuw i32 %i.az to i8
  store i8 %i.ba, ptr %0, align 1, !tbaa !15
  %i.bb = load i32, ptr %1, align 4, !tbaa !24
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = trunc i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !15
  %i.bf = load i32, ptr %1, align 4, !tbaa !24
  %i.bg = lshr i32 %i.bf, 8
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !15
  %i.bj = load i32, ptr %1, align 4, !tbaa !24
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.bo = lshr i32 %i.bn, 24
  %i.bp = trunc nuw i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !15
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.bs = lshr i32 %i.br, 16
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !15
  %i.bv = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.bw = lshr i32 %i.bv, 8
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !15
  %i.bz = load i32, ptr %i.bm, align 4, !tbaa !24
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !24
  %i.ce = lshr i32 %i.cd, 24
  %i.cf = trunc nuw i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !15
  %i.ch = load i32, ptr %i.cc, align 4, !tbaa !24
  %i.ci = lshr i32 %i.ch, 16
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !15
  %i.cl = load i32, ptr %i.cc, align 4, !tbaa !24
  %i.cm = lshr i32 %i.cl, 8
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !15
  %i.cp = load i32, ptr %i.cc, align 4, !tbaa !24
  %i.cq = trunc i32 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !24
  %i.cu = lshr i32 %i.ct, 24
  %i.cv = trunc nuw i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !15
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !24
  %i.cy = lshr i32 %i.cx, 16
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !15
  %i.db = load i32, ptr %i.cs, align 4, !tbaa !24
  %i.dc = lshr i32 %i.db, 8
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !15
  %i.df = load i32, ptr %i.cs, align 4, !tbaa !24
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !24
  %i.dk = lshr i32 %i.dj, 24
  %i.dl = trunc nuw i32 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !15
  %i.dn = load i32, ptr %i.di, align 4, !tbaa !24
  %i.do = lshr i32 %i.dn, 16
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !15
  %i.dr = load i32, ptr %i.di, align 4, !tbaa !24
  %i.ds = lshr i32 %i.dr, 8
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !15
  %i.dv = load i32, ptr %i.di, align 4, !tbaa !24
  %i.dw = trunc i32 %i.dv to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !15
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 92) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_sha1_file(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca [1024 x i8], align 16             ; 7 uses
  %i.d = alloca [20 x i8], align 16               ; 5 uses
  %2 = alloca %struct.PHP_SHA1_CTX, align 16      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i8 0, ptr %i.b, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15   ; 2 uses
  %i.g = add i32 %i.f, -3
  %or.cond = icmp ult i32 %i.g, -2
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #7
  br label %.thread88

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i8, ptr %i.i, align 8, !tbaa !15
  %i.k = icmp eq i8 %i.j, 6
  br i1 %i.k, label %zend_parse_arg_str_ex.exit.i.thread, label %zend_parse_arg_str_ex.exit.i, !prof !17

zend_parse_arg_str_ex.exit.i.thread:              ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !20
  br label %bb.d

zend_parse_arg_str_ex.exit.i:                     ; preds = %bb.c
  %i.m = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 1) #7
  br i1 %i.m, label %thread-pre-split, label %zend_parse_arg_path.exit

thread-pre-split:                                 ; preds = %zend_parse_arg_str_ex.exit.i
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %zend_parse_arg_str_ex.exit.i.thread
  %i.n = phi ptr [ %.pr, %thread-pre-split ], [ %i.l, %zend_parse_arg_str_ex.exit.i.thread ] ; 4 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #8
  %.not = icmp eq i64 %i.p, %i.r
  br i1 %.not, label %bb.f, label %zend_parse_arg_path.exit, !prof !17

zend_parse_arg_path.exit:                         ; preds = %bb.e, %zend_parse_arg_str_ex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread88

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.t = icmp eq i32 %i.f, 1
  br i1 %i.t, label %.critedge, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load i8, ptr %i.u, align 8, !tbaa !15
  switch i8 %i.v, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %.split99.thread
    i8 2, label %.split99.thread.fold.split
  ], !prof !23

.split99.thread.fold.split:                       ; preds = %bb.g
  br label %.split99.thread

.split99.thread:                                  ; preds = %bb.g, %.split99.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.g ], [ 0, %.split99.thread.fold.split ]
  store i8 %storemerge.i, ptr %i.b, align 1, !tbaa !14
  br label %.critedge

end_hunk_0
begin_hunk_1_@SHA1Transform:bb.a
  %i.apv = xor i32 %i.apu, %i.apg
  %i.apw = xor i32 %i.ahz, %i.ajb
  %i.apx = xor i32 %i.apw, %i.amh
  %i.apy = xor i32 %i.apx, %i.aop                 ; 2 uses
  %i.apz = tail call i32 @llvm.fshl.i32(i32 %i.apy, i32 %i.apy, i32 1) ; 4 uses
  store i32 %i.apz, ptr %i.cf, align 4, !tbaa !24
  %i.aqa = tail call i32 @llvm.fshl.i32(i32 %i.aps, i32 %i.aps, i32 5)
  %i.aqb = add i32 %i.apz, -899497514
  %i.aqc = add i32 %i.aqb, %i.aov
  %i.aqd = add i32 %i.aqc, %i.apv
  %i.aqe = add i32 %i.aqd, %i.aqa                 ; 5 uses
  %i.aqf = tail call i32 @llvm.fshl.i32(i32 %i.apg, i32 %i.apg, i32 30) ; 3 uses
  %i.aqg = xor i32 %i.aqf, %i.apt
  %i.aqh = xor i32 %i.aqg, %i.aps
  %i.aqi = xor i32 %i.ajp, %i.ain
  %i.aqj = xor i32 %i.aqi, %i.amt
  %i.aqk = xor i32 %i.aqj, %i.apb                 ; 2 uses
  %i.aql = tail call i32 @llvm.fshl.i32(i32 %i.aqk, i32 %i.aqk, i32 1) ; 4 uses
  store i32 %i.aql, ptr %i.cy, align 16, !tbaa !24
  %i.aqm = tail call i32 @llvm.fshl.i32(i32 %i.aqe, i32 %i.aqe, i32 5)
  %i.aqn = add i32 %i.aql, -899497514
  %i.aqo = add i32 %i.aqn, %i.aph
  %i.aqp = add i32 %i.aqo, %i.aqh
  %i.aqq = add i32 %i.aqp, %i.aqm                 ; 5 uses
  %i.aqr = tail call i32 @llvm.fshl.i32(i32 %i.aps, i32 %i.aps, i32 30) ; 3 uses
  %i.aqs = xor i32 %i.aqr, %i.aqf
  %i.aqt = xor i32 %i.aqs, %i.aqe
  %i.aqu = xor i32 %i.ajb, %i.akd
  %i.aqv = xor i32 %i.aqu, %i.anf
  %i.aqw = xor i32 %i.aqv, %i.apn                 ; 2 uses
  %i.aqx = tail call i32 @llvm.fshl.i32(i32 %i.aqw, i32 %i.aqw, i32 1) ; 4 uses
  store i32 %i.aqx, ptr %i.dr, align 4, !tbaa !24
  %i.aqy = tail call i32 @llvm.fshl.i32(i32 %i.aqq, i32 %i.aqq, i32 5)
  %i.aqz = add i32 %i.aqx, -899497514
  %i.ara = add i32 %i.aqz, %i.apt
  %i.arb = add i32 %i.ara, %i.aqt
  %i.arc = add i32 %i.arb, %i.aqy                 ; 5 uses
  %i.ard = tail call i32 @llvm.fshl.i32(i32 %i.aqe, i32 %i.aqe, i32 30) ; 3 uses
  %i.are = xor i32 %i.ard, %i.aqr
  %i.arf = xor i32 %i.are, %i.aqq
  %i.arg = xor i32 %i.ajp, %i.akr
  %i.arh = xor i32 %i.arg, %i.anr
  %i.ari = xor i32 %i.arh, %i.apz                 ; 2 uses
  %i.arj = tail call i32 @llvm.fshl.i32(i32 %i.ari, i32 %i.ari, i32 1) ; 4 uses
  store i32 %i.arj, ptr %i.ek, align 8, !tbaa !24
  %i.ark = tail call i32 @llvm.fshl.i32(i32 %i.arc, i32 %i.arc, i32 5)
  %i.arl = add i32 %i.arj, -899497514
  %i.arm = add i32 %i.arl, %i.aqf
  %i.arn = add i32 %i.arm, %i.arf
  %i.aro = add i32 %i.arn, %i.ark                 ; 5 uses
  %i.arp = tail call i32 @llvm.fshl.i32(i32 %i.aqq, i32 %i.aqq, i32 30) ; 3 uses
  %i.arq = xor i32 %i.arp, %i.ard
  %i.arr = xor i32 %i.arq, %i.arc
  %i.ars = xor i32 %i.alf, %i.akd
  %i.art = xor i32 %i.ars, %i.aod
  %i.aru = xor i32 %i.art, %i.aql                 ; 2 uses
  %i.arv = tail call i32 @llvm.fshl.i32(i32 %i.aru, i32 %i.aru, i32 1) ; 4 uses
  store i32 %i.arv, ptr %i.fd, align 4, !tbaa !24
  %i.arw = tail call i32 @llvm.fshl.i32(i32 %i.aro, i32 %i.aro, i32 5)
  %i.arx = add i32 %i.arv, -899497514
  %i.ary = add i32 %i.arx, %i.aqr
  %i.arz = add i32 %i.ary, %i.arr
  %i.asa = add i32 %i.arz, %i.arw                 ; 5 uses
  %i.asb = tail call i32 @llvm.fshl.i32(i32 %i.arc, i32 %i.arc, i32 30) ; 3 uses
  %i.asc = xor i32 %i.asb, %i.arp
  %i.asd = xor i32 %i.asc, %i.aro
  %i.ase = xor i32 %i.akr, %i.alt
  %i.asf = xor i32 %i.ase, %i.aop
  %i.asg = xor i32 %i.asf, %i.aqx                 ; 2 uses
  %i.ash = tail call i32 @llvm.fshl.i32(i32 %i.asg, i32 %i.asg, i32 1) ; 3 uses
  store i32 %i.ash, ptr %i.fw, align 16, !tbaa !24
  %i.asi = tail call i32 @llvm.fshl.i32(i32 %i.asa, i32 %i.asa, i32 5)
  %i.asj = add i32 %i.ash, -899497514
  %i.ask = add i32 %i.asj, %i.ard
  %i.asl = add i32 %i.ask, %i.asd
  %i.asm = add i32 %i.asl, %i.asi                 ; 5 uses
  %i.asn = tail call i32 @llvm.fshl.i32(i32 %i.aro, i32 %i.aro, i32 30) ; 3 uses
  %i.aso = xor i32 %i.asn, %i.asb
  %i.asp = xor i32 %i.aso, %i.asa
  %i.asq = xor i32 %i.alf, %i.amh
  %i.asr = xor i32 %i.asq, %i.apb
  %i.ass = xor i32 %i.asr, %i.arj                 ; 2 uses
  %i.ast = tail call i32 @llvm.fshl.i32(i32 %i.ass, i32 %i.ass, i32 1) ; 3 uses
  store i32 %i.ast, ptr %i.gp, align 4, !tbaa !24
  %i.asu = tail call i32 @llvm.fshl.i32(i32 %i.asm, i32 %i.asm, i32 5)
  %i.asv = add i32 %i.ast, -899497514
  %i.asw = add i32 %i.asv, %i.arp
  %i.asx = add i32 %i.asw, %i.asp
  %i.asy = add i32 %i.asx, %i.asu                 ; 5 uses
  %i.asz = tail call i32 @llvm.fshl.i32(i32 %i.asa, i32 %i.asa, i32 30) ; 3 uses
  %i.ata = xor i32 %i.asz, %i.asn
  %i.atb = xor i32 %i.ata, %i.asm
  %i.atc = xor i32 %i.amt, %i.alt
  %i.atd = xor i32 %i.atc, %i.apn
  %i.ate = xor i32 %i.atd, %i.arv                 ; 2 uses
  %i.atf = tail call i32 @llvm.fshl.i32(i32 %i.ate, i32 %i.ate, i32 1) ; 3 uses
  store i32 %i.atf, ptr %i.hi, align 8, !tbaa !24
  %i.atg = tail call i32 @llvm.fshl.i32(i32 %i.asy, i32 %i.asy, i32 5)
  %i.ath = add i32 %i.atf, -899497514
  %i.ati = add i32 %i.ath, %i.asb
  %i.atj = add i32 %i.ati, %i.atb
  %i.atk = add i32 %i.atj, %i.atg                 ; 5 uses
  %i.atl = tail call i32 @llvm.fshl.i32(i32 %i.asm, i32 %i.asm, i32 30) ; 3 uses
  %i.atm = xor i32 %i.atl, %i.asz
  %i.atn = xor i32 %i.atm, %i.asy
  %i.ato = xor i32 %i.amh, %i.anf
  %i.atp = xor i32 %i.ato, %i.apz
  %i.atq = xor i32 %i.atp, %i.ash                 ; 2 uses
  %i.atr = tail call i32 @llvm.fshl.i32(i32 %i.atq, i32 %i.atq, i32 1) ; 3 uses
  store i32 %i.atr, ptr %i.ib, align 4, !tbaa !24
  %i.ats = tail call i32 @llvm.fshl.i32(i32 %i.atk, i32 %i.atk, i32 5)
  %i.att = add i32 %i.atr, -899497514
  %i.atu = add i32 %i.att, %i.asn
  %i.atv = add i32 %i.atu, %i.atn
  %i.atw = add i32 %i.atv, %i.ats                 ; 5 uses
  %i.atx = tail call i32 @llvm.fshl.i32(i32 %i.asy, i32 %i.asy, i32 30) ; 3 uses
  %i.aty = xor i32 %i.atx, %i.atl
  %i.atz = xor i32 %i.aty, %i.atk
  %i.aua = xor i32 %i.amt, %i.anr
  %i.aub = xor i32 %i.aua, %i.aql
  %i.auc = xor i32 %i.aub, %i.ast                 ; 2 uses
  %i.aud = tail call i32 @llvm.fshl.i32(i32 %i.auc, i32 %i.auc, i32 1) ; 3 uses
  store i32 %i.aud, ptr %i.iu, align 16, !tbaa !24
  %i.aue = tail call i32 @llvm.fshl.i32(i32 %i.atw, i32 %i.atw, i32 5)
  %i.auf = add i32 %i.aud, -899497514
  %i.aug = add i32 %i.auf, %i.asz
  %i.auh = add i32 %i.aug, %i.atz
  %i.aui = add i32 %i.auh, %i.aue                 ; 5 uses
  %i.auj = tail call i32 @llvm.fshl.i32(i32 %i.atk, i32 %i.atk, i32 30) ; 3 uses
  %i.auk = xor i32 %i.auj, %i.atx
  %i.aul = xor i32 %i.auk, %i.atw
  %i.aum = xor i32 %i.aod, %i.anf
  %i.aun = xor i32 %i.aum, %i.aqx
  %i.auo = xor i32 %i.aun, %i.atf                 ; 2 uses
  %i.aup = tail call i32 @llvm.fshl.i32(i32 %i.auo, i32 %i.auo, i32 1) ; 2 uses
  store i32 %i.aup, ptr %i.jn, align 4, !tbaa !24
  %i.auq = tail call i32 @llvm.fshl.i32(i32 %i.aui, i32 %i.aui, i32 5)
  %i.aur = add i32 %i.aup, -899497514
  %i.aus = add i32 %i.aur, %i.atl
  %i.aut = add i32 %i.aus, %i.aul
  %i.auu = add i32 %i.aut, %i.auq                 ; 5 uses
  %i.auv = tail call i32 @llvm.fshl.i32(i32 %i.atw, i32 %i.atw, i32 30) ; 3 uses
  %i.auw = xor i32 %i.auv, %i.auj
  %i.aux = xor i32 %i.auw, %i.aui
  %i.auy = xor i32 %i.anr, %i.aop
  %i.auz = xor i32 %i.auy, %i.arj
  %i.ava = xor i32 %i.auz, %i.atr                 ; 2 uses
  %i.avb = tail call i32 @llvm.fshl.i32(i32 %i.ava, i32 %i.ava, i32 1) ; 2 uses
  store i32 %i.avb, ptr %i.kg, align 8, !tbaa !24
  %i.avc = tail call i32 @llvm.fshl.i32(i32 %i.auu, i32 %i.auu, i32 5)
  %i.avd = add i32 %i.avb, -899497514
  %i.ave = add i32 %i.avd, %i.atx
  %i.avf = add i32 %i.ave, %i.aux
  %i.avg = add i32 %i.avf, %i.avc                 ; 3 uses
  %i.avh = tail call i32 @llvm.fshl.i32(i32 %i.aui, i32 %i.aui, i32 30) ; 2 uses
  %i.avi = xor i32 %i.avh, %i.auv
  %i.avj = xor i32 %i.avi, %i.auu
  %i.avk = xor i32 %i.aod, %i.apb
  %i.avl = xor i32 %i.avk, %i.arv
  %i.avm = xor i32 %i.avl, %i.aud                 ; 2 uses
  %i.avn = tail call i32 @llvm.fshl.i32(i32 %i.avm, i32 %i.avm, i32 1) ; 2 uses
  store i32 %i.avn, ptr %i.kz, align 4, !tbaa !24
  %i.avo = tail call i32 @llvm.fshl.i32(i32 %i.avg, i32 %i.avg, i32 5)
  %i.avp = tail call i32 @llvm.fshl.i32(i32 %i.auu, i32 %i.auu, i32 30)
  %i.avq = add i32 %i.b, -899497514
  %i.avr = add i32 %i.avq, %i.avn
  %i.avs = add i32 %i.avr, %i.auj
  %i.avt = add i32 %i.avs, %i.avj
  %i.avu = add i32 %i.avt, %i.avo
  store i32 %i.avu, ptr %0, align 4, !tbaa !24
  %i.avv = add i32 %i.avg, %i.d
  store i32 %i.avv, ptr %i.c, align 4, !tbaa !24
  %i.avw = add i32 %i.avp, %i.f
  store i32 %i.avw, ptr %i.e, align 4, !tbaa !24
  %i.avx = add i32 %i.avh, %i.h
  store i32 %i.avx, ptr %i.g, align 4, !tbaa !24
  %i.avy = add i32 %i.auv, %i.j
  store i32 %i.avy, ptr %i.i, align 4, !tbaa !24
  call void @explicit_bzero(ptr noundef nonnull %i.a, i64 noundef 64) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind
declare void @explicit_bzero(ptr noundef, i64 noundef) local_unnamed_addr #4

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @zend_parse_arg_bool_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @_emalloc_48() local_unnamed_addr #1

declare noalias ptr @_emalloc_80() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !29}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"_Bool", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"branch_weights", i32 4001, i32 4000000}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"p1 _ZTS12_zend_string", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!24 = !{!10, !10, i64 0}
!25 = !{!"_zend_refcounted_h", !10, i64 0, !9, i64 4}
!26 = !{!"long", !9, i64 0}
!27 = !{!"_zend_string", !25, i64 0, !26, i64 8, !26, i64 16, !9, i64 24}
!28 = !{!27, !26, i64 16}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!25, !10, i64 0}
!33 = !{!27, !26, i64 8}
!34 = distinct !{!34, !29}
end_hunk_1
