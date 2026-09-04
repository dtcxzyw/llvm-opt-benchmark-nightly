Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_tar?download=true
inline.NumInlined: 71
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 25
begin_hunk_0_@validate_number_field:bb.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = and i8 %i.h, -8
  %or.cond = icmp eq i8 %i.i, 48
  br i1 %or.cond, label %bb.c, label %.critedge7

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i64 %.136, 1                 ; 2 uses
  %exitcond44.not = icmp eq i64 %i.j, %1
  br i1 %exitcond44.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.critedge7:                                       ; preds = %.lr.ph, %.critedge
  %.1.lcssa = phi i64 [ %.035, %.critedge ], [ %.136, %.lr.ph ] ; 2 uses
  %i.k = icmp samesign ult i64 %.1.lcssa, %1
  br i1 %i.k, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %.critedge7, %bb.d
  %.239 = phi i64 [ %i.n, %bb.d ], [ %.1.lcssa, %.critedge7 ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.239
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  switch i8 %i.m, label %.loopexit [
    i8 32, label %bb.d
    i8 0, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph40, %.lr.ph40
  %i.n = add nuw nsw i64 %.239, 1                 ; 2 uses
  %exitcond45.not = icmp eq i64 %i.n, %1
  br i1 %exitcond45.not, label %.loopexit, label %.lr.ph40, !llvm.loop !0

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d, %.lr.ph40, %.critedge7, %bb.a, %bb.a, %bb.a
  %.131 = phi i32 [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %bb.a ], [ 1, %.critedge7 ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %.lr.ph40 ], [ 1, %bb.b ]
  ret i32 %.131
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @tar_atol(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 8, 13) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !14      ; 5 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %.lr.ph.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i8 %i.a, 64
  %.not.i = icmp ne i8 %i.b, 0                    ; 5 uses
  %i.c = and i8 %i.a, 63
  %.024.i = sext i1 %.not.i to i64
  %.021.i = select i1 %.not.i, i8 %i.a, i8 %i.c   ; 2 uses
  %.0.i = select i1 %.not.i, i32 255, i32 0       ; 5 uses
  %.not45.i = icmp eq i64 %1, 8
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 %1
  %scevgep.i = getelementptr i8, ptr %i.d, i64 -8 ; 4 uses
  %i.e = zext i8 %.021.i to i32
  %.not34.i = icmp eq i32 %.0.i, %i.e
  br i1 %.not34.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %i.f = select i1 %.not.i, i64 -9223372036854775808, i64 9223372036854775807
  br label %tar_atol256.exit

bb.d:                                             ; preds = %.lr.ph.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14    ; 2 uses
  %i.i = icmp samesign ugt i64 %1, 9
  br i1 %i.i, label %.lr.ph.i.1, label %._crit_edge.i

.lr.ph.i.1:                                       ; preds = %bb.d
  %i.j = zext i8 %i.h to i32
  %.not34.i.1 = icmp eq i32 %.0.i, %i.j
  br i1 %.not34.i.1, label %bb.e, label %bb.c

bb.e:                                             ; preds = %.lr.ph.i.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14    ; 2 uses
  %.not49 = icmp eq i64 %1, 10
  br i1 %.not49, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.e
  %i.m = zext i8 %i.l to i32
  %.not34.i.2 = icmp eq i32 %.0.i, %i.m
  br i1 %.not34.i.2, label %bb.f, label %bb.c

bb.f:                                             ; preds = %.lr.ph.i.2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14    ; 2 uses
  %i.p = icmp samesign ugt i64 %1, 11
  br i1 %i.p, label %.lr.ph.i.3, label %._crit_edge.i

.lr.ph.i.3:                                       ; preds = %bb.f
  %i.q = zext i8 %i.o to i32
  %.not34.i.3 = icmp eq i32 %.0.i, %i.q
  br i1 %.not34.i.3, label %bb.g, label %bb.c

bb.g:                                             ; preds = %.lr.ph.i.3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.b
  %.022.lcssa.i = phi ptr [ %0, %bb.b ], [ %scevgep.i, %bb.g ], [ %scevgep.i, %bb.f ], [ %scevgep.i, %bb.e ], [ %scevgep.i, %bb.d ] ; 7 uses
  %.1.lcssa.i = phi i8 [ %.021.i, %bb.b ], [ %i.h, %bb.d ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.t = zext i8 %.1.lcssa.i to i32
  %i.u = xor i32 %.0.i, %i.t
  %.not31.i = icmp samesign ult i32 %i.u, 128
  br i1 %.not31.i, label %.preheader.preheader.i, label %bb.h

.preheader.preheader.i:                           ; preds = %._crit_edge.i
  %i.v = zext i8 %.1.lcssa.i to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = shl nsw i64 %.024.i, 16
  %i.z = shl nuw nsw i64 %i.v, 8
  %i.aa = or disjoint i64 %i.z, %i.y
  %i.ab = zext i8 %i.x to i64
  %i.ac = or disjoint i64 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = shl nsw i64 %i.ac, 16
  %i.aj = shl nuw nsw i64 %i.af, 8
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = zext i8 %i.ah to i64
  %i.am = or disjoint i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 4
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = shl i64 %i.am, 16
  %i.at = shl nuw nsw i64 %i.ap, 8
  %i.au = or disjoint i64 %i.as, %i.at
  %i.av = zext i8 %i.ar to i64
  %i.aw = or disjoint i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 6
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !14
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.022.lcssa.i, i64 7
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  %i.bc = shl i64 %i.aw, 16
  %i.bd = shl nuw nsw i64 %i.az, 8
  %i.be = or disjoint i64 %i.bc, %i.bd
  %i.bf = zext i8 %i.bb to i64
  %i.bg = or disjoint i64 %i.be, %i.bf
  br label %tar_atol256.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.bh = select i1 %.not.i, i64 -9223372036854775808, i64 9223372036854775807
  br label %tar_atol256.exit

.lr.ph.i.ithread-pre-split:                       ; preds = %.critedge2.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.bi, align 1, !tbaa !14
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.ithread-pre-split
  %i.bj = phi i8 [ %.pr, %.lr.ph.i.ithread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.04570.i.i = phi i64 [ %i.bk, %.lr.ph.i.ithread-pre-split ], [ %1, %bb.a ] ; 3 uses
  %.04769.i.i = phi ptr [ %i.bi, %.lr.ph.i.ithread-pre-split ], [ %0, %bb.a ] ; 3 uses
  switch i8 %i.bj, label %.preheader.i.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 45, label %.critedge53.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.bk = add nsw i64 %.04570.i.i, -1             ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %tar_atol256.exit, label %.lr.ph.i.ithread-pre-split, !llvm.loop !3

.critedge53.i.i:                                  ; preds = %.lr.ph.i.i
  %i.bl = add i64 %.04570.i.i, -1                 ; 2 uses
  %.not51.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not51.i.i, label %tar_atol256.exit, label %.preheaderthread-pre-split.i.i

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge53.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1 ; 2 uses
  %.039.in.in71.pr.i.i = load i8, ptr %i.bm, align 1, !tbaa !14
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheaderthread-pre-split.i.i
  %.039.in.in71.i.i = phi i8 [ %.039.in.in71.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %i.bj, %.lr.ph.i.i ] ; 2 uses
  %i.bn = phi i1 [ true, %.preheaderthread-pre-split.i.i ], [ false, %.lr.ph.i.i ]
  %.04097.i.i = phi i64 [ 0, %.preheaderthread-pre-split.i.i ], [ 7, %.lr.ph.i.i ]
  %.04196.i.i = phi i64 [ 1152921504606846976, %.preheaderthread-pre-split.i.i ], [ 1152921504606846975, %.lr.ph.i.i ] ; 2 uses
  %.04295.i.i = phi i64 [ -9223372036854775808, %.preheaderthread-pre-split.i.i ], [ 9223372036854775807, %.lr.ph.i.i ] ; 2 uses
  %.14694.i.i = phi i64 [ %i.bl, %.preheaderthread-pre-split.i.i ], [ %.04570.i.i, %.lr.ph.i.i ]
  %.14893.i.i = phi ptr [ %i.bm, %.preheaderthread-pre-split.i.i ], [ %.04769.i.i, %.lr.ph.i.i ]
  %i.bo = icmp sgt i8 %.039.in.in71.i.i, 47
  br i1 %i.bo, label %.lr.ph78.i.i, label %.critedge4.i.i

.lr.ph78.i.i:                                     ; preds = %.preheader.i.i, %bb.k
  %.03977.in.in.i.i = phi i8 [ %.039.in.in.i.i, %bb.k ], [ %.039.in.in71.i.i, %.preheader.i.i ] ; 2 uses
  %.04376.i.i = phi i64 [ %i.bu, %bb.k ], [ 0, %.preheader.i.i ] ; 4 uses
  %.275.i.i = phi i64 [ %i.bw, %bb.k ], [ %.14694.i.i, %.preheader.i.i ] ; 2 uses
  %.24974.i.i = phi ptr [ %i.bv, %bb.k ], [ %.14893.i.i, %.preheader.i.i ]
  %.03977.in.i.i = zext nneg i8 %.03977.in.in.i.i to i64
  %.03977.i.i = add nsw i64 %.03977.in.i.i, -48   ; 2 uses
  %i.bp = icmp samesign ult i8 %.03977.in.in.i.i, 56
  %i.bq = icmp ne i64 %.275.i.i, 0
  %or.cond.i.i = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %.critedge4.i.i

bb.i:                                             ; preds = %.lr.ph78.i.i
  %i.br = icmp sgt i64 %.04376.i.i, %.04196.i.i
  br i1 %i.br, label %tar_atol256.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = icmp ne i64 %.04376.i.i, %.04196.i.i
  %.not52.i.i = icmp sgt i64 %.04097.i.i, %.03977.i.i
  %or.cond54.i.i = select i1 %i.bs, i1 true, i1 %.not52.i.i
  br i1 %or.cond54.i.i, label %bb.k, label %tar_atol256.exit

bb.k:                                             ; preds = %bb.j
  %i.bt = shl nsw i64 %.04376.i.i, 3
  %i.bu = add nsw i64 %i.bt, %.03977.i.i          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.24974.i.i, i64 1 ; 2 uses
  %i.bw = add i64 %.275.i.i, -1
  %.039.in.in.i.i = load i8, ptr %i.bv, align 1, !tbaa !14 ; 2 uses
  %i.bx = icmp sgt i8 %.039.in.in.i.i, 47
  br i1 %i.bx, label %.lr.ph78.i.i, label %.critedge4.i.i, !llvm.loop !4

.critedge4.i.i:                                   ; preds = %bb.k, %.lr.ph78.i.i, %.preheader.i.i
  %.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.bu, %bb.k ], [ %.04376.i.i, %.lr.ph78.i.i ] ; 2 uses
  %i.by = sub nsw i64 0, %.1.i.i
  %spec.select.i.i = select i1 %i.bn, i64 %i.by, i64 %.1.i.i
  br label %tar_atol256.exit

tar_atol256.exit:                                 ; preds = %.critedge2.i.i, %bb.j, %bb.i, %.critedge4.i.i, %.critedge53.i.i, %bb.h, %.preheader.preheader.i, %bb.c
  %.0 = phi i64 [ %i.bg, %.preheader.preheader.i ], [ %i.f, %bb.c ], [ %i.bh, %bb.h ], [ %.04295.i.i, %bb.j ], [ 0, %.critedge53.i.i ], [ %spec.select.i.i, %.critedge4.i.i ], [ %.04295.i.i, %bb.i ], [ 0, %.critedge2.i.i ]
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @archive_string_conversion_from_charset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @archive_entry_set_dev(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ino(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @archive_string_default_conversion_for_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @gnu_add_sparse_entry(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.140) #11
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %i.d, align 8, !tbaa !48
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr %i.a, ptr %i.e, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.a, ptr %i.c, align 8, !tbaa !49
  %i.f = or i64 %3, %2
  %or.cond.not = icmp slt i64 %i.f, 0
  %i.g = sub nuw nsw i64 9223372036854775807, %3
  %i.h = icmp sgt i64 %2, %i.g
  %or.cond = select i1 %or.cond.not, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.141) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.i, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %3, ptr %i.j, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  %.0 = phi i32 [ -30, %bb.b ], [ -30, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

declare void @archive_entry_sparse_add_entry(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @archive_entry_filetype(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_pathname_w(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #6

declare void @archive_entry_set_filetype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @archive_entry_pathname(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i64 @__archive_read_consume(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_clear_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @header_pax_extension(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.archive_string, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 124
  %i.c = tail call fastcc i64 @tar_atol(ptr noundef %i.b, i64 noundef 12) ; 9 uses
  %i.d = icmp sgt i64 %i.c, 1152921504606846975
  br i1 %i.d, label %tar_flush_unconsumed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.47, i64 noundef %i.c) #11
  br label %tar_flush_unconsumed.exit

bb.d:                                             ; preds = %bb.b
  %i.f = sub nsw i64 0, %i.c
  %i.g = and i64 %i.f, 511                        ; 11 uses
  %i.h = icmp samesign ugt i64 %i.c, 1073741824
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw nsw i64 %i.g, %i.c               ; 2 uses
  %i.j = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.i) #11
  %.not244 = icmp eq i64 %i.i, %i.j
  br i1 %.not244, label %bb.f, label %tar_flush_unconsumed.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.48, i64 noundef %i.c, i64 noundef 1073741824) #11
  br label %tar_flush_unconsumed.exit

bb.g:                                             ; preds = %bb.d
  %i.k = load i64, ptr %4, align 8, !tbaa !44     ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.k) #11
  %i.m = load i64, ptr %4, align 8, !tbaa !44
  %.not9.not.i = icmp eq i64 %i.l, %i.m
  br i1 %.not9.not.i, label %.thread.i, label %tar_flush_unconsumed.exit

.thread.i:                                        ; preds = %bb.h
  store i64 0, ptr %4, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not, label %._crit_edge341, label %.lr.ph340

.lr.ph340:                                        ; preds = %bb.i, %tar_flush_unconsumed.exit261
  %.0338 = phi i32 [ %i.cb, %tar_flush_unconsumed.exit261 ], [ 0, %bb.i ]
  %.0198337 = phi i64 [ %i.ck, %tar_flush_unconsumed.exit261 ], [ %i.c, %bb.i ] ; 13 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %.0198337, i64 512)
  %i.o = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %spec.select, ptr noundef nonnull %i.a) #11 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph340
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.49) #11
  br label %tar_flush_unconsumed.exit

bb.k:                                             ; preds = %.lr.ph340
  %i.q = load i64, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.r = icmp sgt i64 %i.q, %.0198337
  br i1 %i.r, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  store i64 %.0198337, ptr %i.a, align 8, !tbaa !44
  br label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.k
  %.not235324 = icmp sgt i64 %i.q, 0
  br i1 %.not235324, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread, %bb.l
  %.0198337.pn = phi i64 [ %.0198337, %.thread ], [ %i.q, %bb.l ]
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %.0198337.pn ; 3 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.r
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.50) #11
  %i.t = add nuw nsw i64 %.0198337, %i.g
  %i.u = load i64, ptr %4, align 8, !tbaa !44
  %i.v = add nsw i64 %i.t, %i.u
  store i64 %i.v, ptr %4, align 8, !tbaa !44
  br label %tar_flush_unconsumed.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %.0194326 = phi ptr [ %i.al, %bb.r ], [ %i.o, %.lr.ph.preheader ] ; 3 uses
  %.0197325 = phi i64 [ %i.ag, %bb.r ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.w = load i8, ptr %.0194326, align 1, !tbaa !14 ; 3 uses
  %i.x = icmp eq i8 %i.w, 32
  br i1 %i.x, label %bb.m, label %bb.n
end_hunk_0
begin_hunk_1_@pax_attribute:bb.a
  br label %bb.fy

bb.fo:                                            ; preds = %bb.fm
  %i.ua = icmp eq i64 %i.tv, 9223372036854775807
  br i1 %i.ua, label %bb.fp, label %bb.fy

bb.fp:                                            ; preds = %bb.fo
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 152
  store i64 0, ptr %i.ub, align 8, !tbaa !65
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.118) #11
  br label %bb.fy

bb.fq:                                            ; preds = %bb.a
  switch i64 %4, label %.thread [
    i64 3, label %bb.fr
    i64 5, label %bb.fu
  ]

bb.fr:                                            ; preds = %bb.fq
  %i.uc = load i16, ptr %3, align 1
  %i.ud = xor i16 %i.uc, 26997
  %i.ue = getelementptr i8, ptr %3, i64 2
  %i.uf = load i8, ptr %i.ue, align 1
  %i.ug = zext i8 %i.uf to i16
  %i.uh = xor i16 %i.ug, 100
  %i.ui = or i16 %i.ud, %i.uh
  %i.uj = icmp ne i16 %i.ui, 0
  %i.uk = zext i1 %i.uj to i32
  %i.ul = icmp eq i32 %i.uk, 0
  br i1 %i.ul, label %bb.fs, label %.thread

bb.fs:                                            ; preds = %bb.fr
  %i.um = call fastcc i32 @pax_attribute_read_number(ptr noundef %0, i64 noundef %5, ptr noundef %i.a) ; 2 uses
  %i.un = icmp eq i32 %i.um, 0
  br i1 %i.un, label %bb.ft, label %bb.fy

bb.ft:                                            ; preds = %bb.fs
  %i.uo = load i64, ptr %i.a, align 8, !tbaa !44
  tail call void @archive_entry_set_uid(ptr noundef %2, i64 noundef %i.uo) #11
  br label %bb.fy

bb.fu:                                            ; preds = %bb.fq
  %i.up = load i32, ptr %3, align 1
  %i.uq = xor i32 %i.up, 1835101813
  %i.ur = getelementptr i8, ptr %3, i64 4
  %i.us = load i8, ptr %i.ur, align 1
  %i.ut = zext i8 %i.us to i32
  %i.uu = xor i32 %i.ut, 101
  %i.uv = or i32 %i.uq, %i.uu
  %i.uw = icmp ne i32 %i.uv, 0
  %i.ux = zext i1 %i.uw to i32
  %i.uy = icmp eq i32 %i.ux, 0
  br i1 %i.uy, label %bb.fv, label %.thread

bb.fv:                                            ; preds = %bb.fu
  %i.uz = icmp ugt i64 %5, 65536
  br i1 %i.uz, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.va = load i64, ptr %6, align 8, !tbaa !44
  %i.vb = add i64 %i.va, %5
  store i64 %i.vb, ptr %6, align 8, !tbaa !44
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fv
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.vd = tail call fastcc i32 @read_bytes_to_string(ptr noundef %0, ptr noundef nonnull %i.vc, i64 noundef %5, ptr noundef %6)
  br label %bb.fy

.thread:                                          ; preds = %bb.i, %bb.cw, %bb.ai, %bb.al, %bb.j, %bb.l, %bb.y, %bb.e, %bb.fr, %bb.ed, %bb.fq, %bb.ec, %bb.dy, %bb.dz, %bb.fu, %bb.fk, %bb.fl, %bb.ff, %bb.fg, %bb.fb, %bb.fc, %bb.ew, %bb.ex, %bb.ek, %bb.el, %bb.eg, %bb.du, %bb.dv, %.thread514, %.thread517, %bb.dm, %bb.bq, %bb.br, %bb.as, %bb.at, %.thread495, %bb.bk, %bb.b, %bb.c, %bb.g, %bb.h, %bb.ap, %bb.k, %bb.f, %bb.a
  %i.ve = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %5) #11 ; 0 uses
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fx, %bb.fs, %bb.ft, %bb.fn, %bb.fo, %bb.fi, %bb.fj, %bb.fd, %bb.fe, %bb.ez, %bb.fa, %bb.ei, %bb.ej, %bb.ee, %bb.ef, %bb.ea, %bb.eb, %bb.dw, %bb.dx, %bb.dd, %bb.de, %bb.da, %bb.db, %bb.cx, %bb.cy, %bb.cu, %bb.cv, %bb.cl, %bb.cm, %bb.ci, %bb.cj, %bb.aw, %bb.ax, %bb.aq, %bb.ar, %bb.an, %bb.ao, %bb.aj, %bb.ak, %bb.ag, %bb.ah, %bb.w, %bb.x, %bb.r, %bb.u, %bb.s, %bb.t, %bb.m, %bb.p, %bb.n, %bb.o, %.thread, %bb.fp, %bb.ev, %bb.eo, %bb.dt, %bb.dp, %bb.dl, %bb.di, %bb.cs, %bb.cq, %bb.cg, %bb.ce, %bb.cc, %bb.bx, %bb.bv, %bb.bp, %bb.bn, %bb.bj, %bb.bb, %bb.ae, %bb.ac
  %.0390 = phi i32 [ 0, %.thread ], [ -30, %bb.fp ], [ -30, %bb.o ], [ %i.bg, %bb.m ], [ -30, %bb.t ], [ %i.br, %bb.r ], [ %.0, %bb.ae ], [ -30, %bb.ac ], [ %i.cc, %bb.w ], [ %i.dk, %bb.ag ], [ %i.ea, %bb.aj ], [ %i.eo, %bb.ao ], [ %i.et, %bb.aq ], [ -30, %bb.bb ], [ %.2, %bb.bj ], [ %.3, %bb.bp ], [ -30, %bb.bn ], [ %.4, %bb.bx ], [ -30, %bb.bv ], [ %i.je, %bb.cc ], [ %i.jo, %bb.ce ], [ %i.jy, %bb.cg ], [ %i.fw, %bb.aw ], [ %i.kd, %bb.ci ], [ -30, %bb.cq ], [ %.5, %bb.cs ], [ %i.kk, %bb.cl ], [ %i.lm, %bb.cu ], [ %i.lz, %bb.cx ], [ %i.mm, %bb.da ], [ -30, %bb.di ], [ %.6, %bb.dl ], [ -30, %bb.dp ], [ %.7, %bb.dt ], [ %i.mu, %bb.dd ], [ %i.pb, %bb.dw ], [ %i.pq, %bb.ea ], [ %i.qe, %bb.ee ], [ -30, %bb.eo ], [ %.9, %bb.ev ], [ %i.qv, %bb.ej ], [ %i.sp, %bb.fa ], [ %i.tb, %bb.fd ], [ 0, %bb.fn ], [ %i.um, %bb.fs ], [ %i.tn, %bb.fj ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.x ], [ 0, %bb.ah ], [ 0, %bb.ak ], [ -20, %bb.an ], [ 0, %bb.ar ], [ 0, %bb.ax ], [ 0, %bb.cj ], [ 0, %bb.cm ], [ 0, %bb.cv ], [ 0, %bb.cy ], [ 0, %bb.db ], [ 0, %bb.de ], [ 0, %bb.dx ], [ 0, %bb.eb ], [ 0, %bb.ef ], [ -20, %bb.ei ], [ -20, %bb.ez ], [ 0, %bb.fe ], [ -20, %bb.fi ], [ %i.tt, %bb.fo ], [ 0, %bb.ft ], [ -20, %bb.fw ], [ %i.vd, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0390
}

declare void @archive_string_conversion_set_opt(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @archive_entry_copy_pathname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_copy_uname_l(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_copy_uname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_copy_gname_l(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_copy_gname(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_copy_link_l(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @archive_entry_copy_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @pax_attribute_read_number(ptr noundef %0, i64 noundef range(i64 0, -1) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.archive_string, align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = icmp ugt i64 %1, 64
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %1) #11 ; 0 uses
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = add nuw nsw i64 %1, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = call ptr @archive_string_ensure(ptr noundef nonnull %3, i64 noundef %i.d) #11
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.42) #11
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef range(i64 0, 1048577) %1, ptr noundef null) #11 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %read_bytes_to_string.exit

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 22, ptr noundef nonnull @.str.43) #11
  br label %bb.h

read_bytes_to_string.exit:                        ; preds = %bb.e
  %i.i = load ptr, ptr %3, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.g, i64 range(i64 0, 1048577) %1, i1 false)
  %i.j = load ptr, ptr %3, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %1
  store i8 0, ptr %i.k, align 1, !tbaa !14
  store i64 %1, ptr %i.c, align 8, !tbaa !62
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %tar_atol10.exit, label %bb.g

bb.g:                                             ; preds = %read_bytes_to_string.exit
  %i.l = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %1) #11
  %.not9.not.i = icmp eq i64 %i.l, %1
  br i1 %.not9.not.i, label %bb.i, label %.sink.split

bb.h:                                             ; preds = %bb.f, %bb.d
  call void @archive_string_free(ptr noundef nonnull %3) #11
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %.pr = load i64, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %.not68.i.i = icmp eq i64 %.pr, 0
  br i1 %.not68.i.i, label %tar_atol10.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.m = load ptr, ptr %3, align 8, !tbaa !60
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.critedge2.i.i
  %.04570.i.i = phi i64 [ %i.p, %.critedge2.i.i ], [ %.pr, %.lr.ph.i.i.preheader ] ; 3 uses
  %.04769.i.i = phi ptr [ %i.o, %.critedge2.i.i ], [ %i.m, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.n = load i8, ptr %.04769.i.i, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.n, label %.preheader.i.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 45, label %.critedge53.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1
  %i.p = add i64 %.04570.i.i, -1                  ; 2 uses
  %.not.i.i18 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i18, label %tar_atol10.exit, label %.lr.ph.i.i, !llvm.loop !3

.critedge53.i.i:                                  ; preds = %.lr.ph.i.i
  %i.q = add i64 %.04570.i.i, -1                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.q, 0
  br i1 %.not51.i.i, label %tar_atol10.exit, label %.preheaderthread-pre-split.i.i

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge53.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1 ; 2 uses
  %.039.in.in71.pr.i.i = load i8, ptr %i.r, align 1, !tbaa !14
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheaderthread-pre-split.i.i
  %.039.in.in71.i.i = phi i8 [ %.039.in.in71.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %i.s = phi i1 [ true, %.preheaderthread-pre-split.i.i ], [ false, %.lr.ph.i.i ]
  %.04097.i.i = phi i64 [ 8, %.preheaderthread-pre-split.i.i ], [ 7, %.lr.ph.i.i ]
  %.04295.i.i = phi i64 [ -9223372036854775808, %.preheaderthread-pre-split.i.i ], [ 9223372036854775807, %.lr.ph.i.i ] ; 2 uses
  %.14694.i.i = phi i64 [ %i.q, %.preheaderthread-pre-split.i.i ], [ %.04570.i.i, %.lr.ph.i.i ]
  %.14893.i.i = phi ptr [ %i.r, %.preheaderthread-pre-split.i.i ], [ %.04769.i.i, %.lr.ph.i.i ]
  %i.t = icmp sgt i8 %.039.in.in71.i.i, 47
  br i1 %i.t, label %.lr.ph78.i.i, label %.critedge4.i.i

.lr.ph78.i.i:                                     ; preds = %.preheader.i.i, %bb.l
  %.03977.in.in.i.i = phi i8 [ %.039.in.in.i.i, %bb.l ], [ %.039.in.in71.i.i, %.preheader.i.i ] ; 2 uses
  %.04376.i.i = phi i64 [ %i.z, %bb.l ], [ 0, %.preheader.i.i ] ; 4 uses
  %.275.i.i = phi i64 [ %i.ab, %bb.l ], [ %.14694.i.i, %.preheader.i.i ] ; 2 uses
  %.24974.i.i = phi ptr [ %i.aa, %bb.l ], [ %.14893.i.i, %.preheader.i.i ]
  %.03977.in.i.i = zext nneg i8 %.03977.in.in.i.i to i64
  %.03977.i.i = add nsw i64 %.03977.in.i.i, -48   ; 2 uses
  %i.u = icmp samesign ult i8 %.03977.in.in.i.i, 58
  %i.v = icmp ne i64 %.275.i.i, 0
  %or.cond.i.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i.i, label %bb.j, label %.critedge4.i.i

bb.j:                                             ; preds = %.lr.ph78.i.i
  %i.w = icmp sgt i64 %.04376.i.i, 922337203685477580
  br i1 %i.w, label %tar_atol10.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = icmp ne i64 %.04376.i.i, 922337203685477580
  %.not52.i.i = icmp sgt i64 %.04097.i.i, %.03977.i.i
  %or.cond54.i.i = select i1 %i.x, i1 true, i1 %.not52.i.i
  br i1 %or.cond54.i.i, label %bb.l, label %tar_atol10.exit

bb.l:                                             ; preds = %bb.k
  %i.y = mul nsw i64 %.04376.i.i, 10
  %i.z = add nsw i64 %i.y, %.03977.i.i            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.24974.i.i, i64 1 ; 2 uses
  %i.ab = add i64 %.275.i.i, -1
  %.039.in.in.i.i = load i8, ptr %i.aa, align 1, !tbaa !14 ; 2 uses
  %i.ac = icmp sgt i8 %.039.in.in.i.i, 47
  br i1 %i.ac, label %.lr.ph78.i.i, label %.critedge4.i.i, !llvm.loop !4

.critedge4.i.i:                                   ; preds = %bb.l, %.lr.ph78.i.i, %.preheader.i.i
  %.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.z, %bb.l ], [ %.04376.i.i, %.lr.ph78.i.i ] ; 2 uses
  %i.ad = sub nsw i64 0, %.1.i.i
  %spec.select.i.i = select i1 %i.s, i64 %i.ad, i64 %.1.i.i
  br label %tar_atol10.exit

tar_atol10.exit:                                  ; preds = %.critedge2.i.i, %bb.j, %bb.k, %read_bytes_to_string.exit, %bb.i, %.critedge53.i.i, %.critedge4.i.i
  %.044.i.i = phi i64 [ %spec.select.i.i, %.critedge4.i.i ], [ 0, %.critedge53.i.i ], [ 0, %bb.i ], [ %.04295.i.i, %bb.j ], [ 0, %read_bytes_to_string.exit ], [ %.04295.i.i, %bb.k ], [ 0, %.critedge2.i.i ]
  store i64 %.044.i.i, ptr %2, align 8, !tbaa !44
  call void @archive_string_free(ptr noundef nonnull %3) #11
  %i.ae = load i64, ptr %2, align 8, !tbaa !44
  %or.cond = icmp ugt i64 %i.ae, 9223372036854775806
  br i1 %or.cond, label %.sink.split, label %bb.m

.sink.split:                                      ; preds = %tar_atol10.exit, %bb.g, %bb.b, %bb.h
  %.sink = phi i64 [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.b ], [ 9223372036854775807, %tar_atol10.exit ]
  %.0.ph = phi i32 [ -30, %bb.g ], [ -30, %bb.h ], [ -30, %bb.b ], [ -20, %tar_atol10.exit ]
  store i64 %.sink, ptr %2, align 8, !tbaa !44
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %tar_atol10.exit
  %.0 = phi i32 [ 0, %tar_atol10.exit ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @gnu_sparse_01_parse(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 8388609) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.b

bb.b:                                             ; preds = %tar_atol10.exit.thread, %bb.a
  %.026 = phi ptr [ %2, %bb.a ], [ %i.bc, %tar_atol10.exit.thread ] ; 6 uses
  %.024 = phi i64 [ %3, %bb.a ], [ %.125.lcssa, %tar_atol10.exit.thread ] ; 3 uses
  %.0 = phi i64 [ -1, %bb.a ], [ %.1, %tar_atol10.exit.thread ] ; 3 uses
  %.not87 = icmp eq i64 %.024, 0
  br i1 %.not87, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %scevgep = getelementptr i8, ptr %.026, i64 %.024
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.02389 = phi ptr [ %i.e, %bb.d ], [ %.026, %.lr.ph.preheader ] ; 3 uses
  %.12588 = phi i64 [ %i.f, %bb.d ], [ %.024, %.lr.ph.preheader ] ; 2 uses
  %i.c = load i8, ptr %.02389, align 1, !tbaa !14 ; 2 uses
  %.not31.not.not.not = icmp ne i8 %i.c, 44       ; 2 uses
  br i1 %.not31.not.not.not, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.d = add i8 %i.c, -58
  %or.cond = icmp ult i8 %i.d, -10
  br i1 %or.cond, label %gnu_add_sparse_entry.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.02389, i64 1
  %i.f = add nsw i64 %.12588, -1                  ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !105

.critedge.loopexit:                               ; preds = %bb.d, %.lr.ph
  %.125.lcssa.ph = phi i64 [ 0, %bb.d ], [ %.12588, %.lr.ph ]
  %.023.lcssa.ph = phi ptr [ %scevgep, %bb.d ], [ %.02389, %.lr.ph ]
  %i.g = add nsw i64 %.125.lcssa.ph, -1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %.125.lcssa = phi i64 [ -1, %bb.b ], [ %i.g, %.critedge.loopexit ]
  %.023.lcssa = phi ptr [ %.026, %bb.b ], [ %.023.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.not.lcssa = phi i1 [ true, %bb.b ], [ %.not31.not.not.not, %.critedge.loopexit ]
  %i.h = icmp slt i64 %.0, 0
  %i.i = ptrtoint ptr %.023.lcssa to i64
  %i.j = ptrtoint ptr %.026 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %.not68.i.i = icmp eq i64 %i.k, 0               ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.critedge
  br i1 %.not68.i.i, label %tar_atol10.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.critedge2.i.i
  %.04570.i.i = phi i64 [ %i.n, %.critedge2.i.i ], [ %i.k, %bb.e ] ; 3 uses
  %.04769.i.i = phi ptr [ %i.m, %.critedge2.i.i ], [ %.026, %bb.e ] ; 4 uses
  %i.l = load i8, ptr %.04769.i.i, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.l, label %.preheader.i.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 45, label %.critedge53.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1
  %i.n = add i64 %.04570.i.i, -1                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %tar_atol10.exit.thread, label %.lr.ph.i.i, !llvm.loop !3

.critedge53.i.i:                                  ; preds = %.lr.ph.i.i
  %i.o = add i64 %.04570.i.i, -1                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.o, 0
  br i1 %.not51.i.i, label %tar_atol10.exit.thread, label %.preheaderthread-pre-split.i.i

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge53.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1 ; 2 uses
  %.039.in.in71.pr.i.i = load i8, ptr %i.p, align 1, !tbaa !14
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheaderthread-pre-split.i.i
  %.039.in.in71.i.i = phi i8 [ %.039.in.in71.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.q = phi i1 [ true, %.preheaderthread-pre-split.i.i ], [ false, %.lr.ph.i.i ]
  %.04097.i.i = phi i64 [ 8, %.preheaderthread-pre-split.i.i ], [ 7, %.lr.ph.i.i ]
  %.04295.i.i = phi i64 [ -9223372036854775808, %.preheaderthread-pre-split.i.i ], [ 9223372036854775807, %.lr.ph.i.i ] ; 2 uses
  %.14694.i.i = phi i64 [ %i.o, %.preheaderthread-pre-split.i.i ], [ %.04570.i.i, %.lr.ph.i.i ]
  %.14893.i.i = phi ptr [ %i.p, %.preheaderthread-pre-split.i.i ], [ %.04769.i.i, %.lr.ph.i.i ]
  %i.r = icmp sgt i8 %.039.in.in71.i.i, 47
  br i1 %i.r, label %.lr.ph78.i.i, label %.critedge4.i.i

.lr.ph78.i.i:                                     ; preds = %.preheader.i.i, %bb.h
  %.03977.in.in.i.i = phi i8 [ %.039.in.in.i.i, %bb.h ], [ %.039.in.in71.i.i, %.preheader.i.i ] ; 2 uses
  %.04376.i.i = phi i64 [ %i.x, %bb.h ], [ 0, %.preheader.i.i ] ; 4 uses
  %.275.i.i = phi i64 [ %i.z, %bb.h ], [ %.14694.i.i, %.preheader.i.i ] ; 2 uses
  %.24974.i.i = phi ptr [ %i.y, %bb.h ], [ %.14893.i.i, %.preheader.i.i ]
  %.03977.in.i.i = zext nneg i8 %.03977.in.in.i.i to i64
  %.03977.i.i = add nsw i64 %.03977.in.i.i, -48   ; 2 uses
  %i.s = icmp samesign ult i8 %.03977.in.in.i.i, 58
  %i.t = icmp ne i64 %.275.i.i, 0
  %or.cond.i.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %.critedge4.i.i

bb.f:                                             ; preds = %.lr.ph78.i.i
  %i.u = icmp sgt i64 %.04376.i.i, 922337203685477580
  br i1 %i.u, label %tar_atol10.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ne i64 %.04376.i.i, 922337203685477580
  %.not52.i.i = icmp sgt i64 %.04097.i.i, %.03977.i.i
  %or.cond54.i.i = select i1 %i.v, i1 true, i1 %.not52.i.i
  br i1 %or.cond54.i.i, label %bb.h, label %tar_atol10.exit

bb.h:                                             ; preds = %bb.g
  %i.w = mul nsw i64 %.04376.i.i, 10
  %i.x = add nsw i64 %i.w, %.03977.i.i            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.24974.i.i, i64 1 ; 2 uses
  %i.z = add i64 %.275.i.i, -1
  %.039.in.in.i.i = load i8, ptr %i.y, align 1, !tbaa !14 ; 2 uses
  %i.aa = icmp sgt i8 %.039.in.in.i.i, 47
  br i1 %i.aa, label %.lr.ph78.i.i, label %.critedge4.i.i, !llvm.loop !4

.critedge4.i.i:                                   ; preds = %bb.h, %.lr.ph78.i.i, %.preheader.i.i
  %.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.x, %bb.h ], [ %.04376.i.i, %.lr.ph78.i.i ] ; 2 uses
  %i.ab = sub nsw i64 0, %.1.i.i
  %spec.select.i.i = select i1 %i.q, i64 %i.ab, i64 %.1.i.i
  br label %tar_atol10.exit

tar_atol10.exit:                                  ; preds = %bb.f, %bb.g, %.critedge4.i.i
  %.044.i.i = phi i64 [ %spec.select.i.i, %.critedge4.i.i ], [ %.04295.i.i, %bb.g ], [ %.04295.i.i, %bb.f ] ; 2 uses
  %i.ac = icmp slt i64 %.044.i.i, 0
  br i1 %i.ac, label %gnu_add_sparse_entry.exit.thread, label %tar_atol10.exit.thread

bb.i:                                             ; preds = %.critedge
  br i1 %.not68.i.i, label %tar_atol10.exit64.thread, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %bb.i, %.critedge2.i.i62
  %.04570.i.i35 = phi i64 [ %i.af, %.critedge2.i.i62 ], [ %i.k, %bb.i ] ; 3 uses
  %.04769.i.i36 = phi ptr [ %i.ae, %.critedge2.i.i62 ], [ %.026, %bb.i ] ; 4 uses
  %i.ad = load i8, ptr %.04769.i.i36, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.ad, label %.preheader.i.i41 [
    i8 32, label %.critedge2.i.i62
    i8 9, label %.critedge2.i.i62
    i8 45, label %.critedge53.i.i37
  ]

.critedge2.i.i62:                                 ; preds = %.lr.ph.i.i34, %.lr.ph.i.i34
  %i.ae = getelementptr inbounds nuw i8, ptr %.04769.i.i36, i64 1
  %i.af = add i64 %.04570.i.i35, -1               ; 2 uses
  %.not.i.i63 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i63, label %tar_atol10.exit64.thread, label %.lr.ph.i.i34, !llvm.loop !3

.critedge53.i.i37:                                ; preds = %.lr.ph.i.i34
  %i.ag = add i64 %.04570.i.i35, -1               ; 2 uses
  %.not51.i.i38 = icmp eq i64 %i.ag, 0
  br i1 %.not51.i.i38, label %tar_atol10.exit64.thread, label %.preheaderthread-pre-split.i.i39

.preheaderthread-pre-split.i.i39:                 ; preds = %.critedge53.i.i37
  %i.ah = getelementptr inbounds nuw i8, ptr %.04769.i.i36, i64 1 ; 2 uses
  %.039.in.in71.pr.i.i40 = load i8, ptr %i.ah, align 1, !tbaa !14
  br label %.preheader.i.i41

.preheader.i.i41:                                 ; preds = %.lr.ph.i.i34, %.preheaderthread-pre-split.i.i39
  %.039.in.in71.i.i42 = phi i8 [ %.039.in.in71.pr.i.i40, %.preheaderthread-pre-split.i.i39 ], [ %i.ad, %.lr.ph.i.i34 ] ; 2 uses
  %i.ai = phi i1 [ true, %.preheaderthread-pre-split.i.i39 ], [ false, %.lr.ph.i.i34 ]
  %.04097.i.i43 = phi i64 [ 8, %.preheaderthread-pre-split.i.i39 ], [ 7, %.lr.ph.i.i34 ]
  %.04295.i.i44 = phi i64 [ -9223372036854775808, %.preheaderthread-pre-split.i.i39 ], [ 9223372036854775807, %.lr.ph.i.i34 ] ; 2 uses
  %.14694.i.i45 = phi i64 [ %i.ag, %.preheaderthread-pre-split.i.i39 ], [ %.04570.i.i35, %.lr.ph.i.i34 ]
  %.14893.i.i46 = phi ptr [ %i.ah, %.preheaderthread-pre-split.i.i39 ], [ %.04769.i.i36, %.lr.ph.i.i34 ]
  %i.aj = icmp sgt i8 %.039.in.in71.i.i42, 47
  br i1 %i.aj, label %.lr.ph78.i.i51, label %.critedge4.i.i47

.lr.ph78.i.i51:                                   ; preds = %.preheader.i.i41, %bb.l
  %.03977.in.in.i.i52 = phi i8 [ %.039.in.in.i.i61, %bb.l ], [ %.039.in.in71.i.i42, %.preheader.i.i41 ] ; 2 uses
  %.04376.i.i53 = phi i64 [ %i.ap, %bb.l ], [ 0, %.preheader.i.i41 ] ; 4 uses
  %.275.i.i54 = phi i64 [ %i.ar, %bb.l ], [ %.14694.i.i45, %.preheader.i.i41 ] ; 2 uses
  %.24974.i.i55 = phi ptr [ %i.aq, %bb.l ], [ %.14893.i.i46, %.preheader.i.i41 ]
  %.03977.in.i.i56 = zext nneg i8 %.03977.in.in.i.i52 to i64
  %.03977.i.i57 = add nsw i64 %.03977.in.i.i56, -48 ; 2 uses
  %i.ak = icmp samesign ult i8 %.03977.in.in.i.i52, 58
  %i.al = icmp ne i64 %.275.i.i54, 0
  %or.cond.i.i58 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i.i58, label %bb.j, label %.critedge4.i.i47

bb.j:                                             ; preds = %.lr.ph78.i.i51
  %i.am = icmp sgt i64 %.04376.i.i53, 922337203685477580
  br i1 %i.am, label %tar_atol10.exit64, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = icmp ne i64 %.04376.i.i53, 922337203685477580
  %.not52.i.i59 = icmp sgt i64 %.04097.i.i43, %.03977.i.i57
  %or.cond54.i.i60 = select i1 %i.an, i1 true, i1 %.not52.i.i59
  br i1 %or.cond54.i.i60, label %bb.l, label %tar_atol10.exit64

bb.l:                                             ; preds = %bb.k
  %i.ao = mul nsw i64 %.04376.i.i53, 10
  %i.ap = add nsw i64 %i.ao, %.03977.i.i57        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.24974.i.i55, i64 1 ; 2 uses
  %i.ar = add i64 %.275.i.i54, -1
  %.039.in.in.i.i61 = load i8, ptr %i.aq, align 1, !tbaa !14 ; 2 uses
  %i.as = icmp sgt i8 %.039.in.in.i.i61, 47
  br i1 %i.as, label %.lr.ph78.i.i51, label %.critedge4.i.i47, !llvm.loop !4

.critedge4.i.i47:                                 ; preds = %bb.l, %.lr.ph78.i.i51, %.preheader.i.i41
  %.1.i.i48 = phi i64 [ 0, %.preheader.i.i41 ], [ %i.ap, %bb.l ], [ %.04376.i.i53, %.lr.ph78.i.i51 ] ; 2 uses
  %i.at = sub nsw i64 0, %.1.i.i48
  %spec.select.i.i49 = select i1 %i.ai, i64 %i.at, i64 %.1.i.i48
  br label %tar_atol10.exit64

tar_atol10.exit64:                                ; preds = %bb.j, %bb.k, %.critedge4.i.i47
  %.044.i.i50 = phi i64 [ %spec.select.i.i49, %.critedge4.i.i47 ], [ %.04295.i.i44, %bb.k ], [ %.04295.i.i44, %bb.j ] ; 2 uses
  %i.au = icmp slt i64 %.044.i.i50, 0
  br i1 %i.au, label %gnu_add_sparse_entry.exit.thread, label %tar_atol10.exit64.thread

tar_atol10.exit64.thread:                         ; preds = %.critedge2.i.i62, %bb.i, %.critedge53.i.i37, %tar_atol10.exit64
  %.044.i.i5067 = phi i64 [ %.044.i.i50, %tar_atol10.exit64 ], [ 0, %.critedge53.i.i37 ], [ 0, %bb.i ], [ 0, %.critedge2.i.i62 ] ; 2 uses
  %i.av = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 6 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %tar_atol10.exit64.thread
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.140) #11
  br label %gnu_add_sparse_entry.exit.thread

bb.n:                                             ; preds = %tar_atol10.exit64.thread
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !49  ; 2 uses
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !48
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store ptr %i.av, ptr %i.b, align 8, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store ptr %i.av, ptr %i.a, align 8, !tbaa !49
  %i.ay = xor i64 %.044.i.i5067, 9223372036854775807
  %i.az = icmp sgt i64 %.0, %i.ay
  br i1 %i.az, label %bb.r, label %gnu_add_sparse_entry.exit

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.141) #11
  br label %gnu_add_sparse_entry.exit.thread

gnu_add_sparse_entry.exit:                        ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %.0, ptr %i.ba, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.044.i.i5067, ptr %i.bb, align 8, !tbaa !70
  br label %tar_atol10.exit.thread

tar_atol10.exit.thread:                           ; preds = %.critedge2.i.i, %bb.e, %.critedge53.i.i, %gnu_add_sparse_entry.exit, %tar_atol10.exit
  %.1 = phi i64 [ %.044.i.i, %tar_atol10.exit ], [ -1, %gnu_add_sparse_entry.exit ], [ 0, %.critedge53.i.i ], [ 0, %bb.e ], [ 0, %.critedge2.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.023.lcssa, i64 1
  br i1 %.not.lcssa, label %gnu_add_sparse_entry.exit.thread, label %bb.b

gnu_add_sparse_entry.exit.thread:                 ; preds = %tar_atol10.exit.thread, %tar_atol10.exit64, %tar_atol10.exit, %bb.c, %bb.r, %bb.m
  %.027 = phi i32 [ -20, %bb.c ], [ -30, %bb.r ], [ -30, %bb.m ], [ -20, %tar_atol10.exit ], [ 0, %tar_atol10.exit.thread ], [ -20, %tar_atol10.exit64 ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @pax_attribute_read_time(ptr noundef %0, i64 noundef range(i64 0, -1) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.archive_string, align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = icmp ugt i64 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %1) #11 ; 0 uses
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.c = call fastcc i32 @read_bytes_to_string(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %1, ptr noundef %4) ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @archive_string_free(ptr noundef nonnull %5) #11
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load ptr, ptr %5, align 8, !tbaa !60     ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %2, align 8, !tbaa !44
  br label %.loopexit.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.i = load i8, ptr %i.f, align 1, !tbaa !14
  %i.j = icmp eq i8 %i.i, 45                      ; 3 uses
  %.0.i = select i1 %i.j, i64 -1, i64 1           ; 2 uses
  %i.k = sext i1 %i.j to i64
  %spec.select.i = add i64 %i.g, %i.k             ; 2 uses
  %.not60.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not60.i, label %.critedge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %spec.select53.idx.i = zext i1 %i.j to i64
  %spec.select53.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select53.idx.i
  br label %.lr.ph.i

.critedge.thread.loopexit.i:                      ; preds = %select.unfold.i
  %i.l = mul nsw i64 %i.t, %.0.i
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.loopexit.i, %bb.g
  %.037.lcssa.i = phi i64 [ 0, %bb.g ], [ %i.l, %.critedge.thread.loopexit.i ]
  store i64 %.037.lcssa.i, ptr %2, align 8, !tbaa !44
  br label %.loopexit.sink.split.i

.lr.ph.i:                                         ; preds = %select.unfold.i, %.lr.ph.preheader.i
  %.03763.i = phi i64 [ %i.t, %select.unfold.i ], [ 0, %.lr.ph.preheader.i ] ; 4 uses
  %.162.i = phi ptr [ %i.u, %select.unfold.i ], [ %spec.select53.i, %.lr.ph.preheader.i ] ; 12 uses
  %.14061.i = phi i64 [ %i.v, %select.unfold.i ], [ %spec.select.i, %.lr.ph.preheader.i ] ; 10 uses
  %i.m = load i8, ptr %.162.i, align 1, !tbaa !14 ; 2 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.o = icmp sgt i64 %.03763.i, 922337203685477580
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i64 %.03763.i, 922337203685477580
  %i.q = icmp samesign ugt i8 %i.m, 55
  %or.cond51.i = and i1 %i.p, %i.q
  br i1 %or.cond51.i, label %bb.j, label %select.unfold.i

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 -9223372036854775808, ptr %2, align 8, !tbaa !44
  br label %.loopexit.sink.split.i

select.unfold.i:                                  ; preds = %bb.i
  %i.r = mul nsw i64 %.03763.i, 10
  %i.s = zext nneg i8 %i.n to i64
  %i.t = add nsw i64 %i.r, %i.s                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.162.i, i64 1
  %i.v = add i64 %.14061.i, -1                    ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %.critedge.thread.loopexit.i, label %.lr.ph.i, !llvm.loop !106

bb.k:                                             ; preds = %.lr.ph.i
  %i.w = mul nsw i64 %.03763.i, %.0.i
  store i64 %i.w, ptr %2, align 8, !tbaa !44
  store i64 0, ptr %3, align 8, !tbaa !44
  %i.x = load i8, ptr %.162.i, align 1, !tbaa !14
  %.not47.i = icmp ne i8 %i.x, 46
  %i.y = icmp eq i64 %.14061.i, 1
  %or.cond88.i = or i1 %i.y, %.not47.i
  br i1 %or.cond88.i, label %pax_time.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.162.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = add i8 %i.aa, -48                       ; 2 uses
  %or.cond52.i = icmp ult i8 %i.ab, 10
  br i1 %or.cond52.i, label %.preheader.1.i, label %pax_time.exit

.preheader.1.i:                                   ; preds = %bb.l
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 100000000        ; 2 uses
  store i64 %i.ad, ptr %3, align 8, !tbaa !44
  %i.ae = icmp eq i64 %.14061.i, 2
  br i1 %i.ae, label %pax_time.exit, label %bb.m

bb.m:                                             ; preds = %.preheader.1.i
  %i.af = getelementptr inbounds nuw i8, ptr %.162.i, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = add i8 %i.ag, -48                       ; 2 uses
  %or.cond52.1.i = icmp ult i8 %i.ah, 10
  br i1 %or.cond52.1.i, label %.preheader.2.i, label %pax_time.exit

.preheader.2.i:                                   ; preds = %bb.m
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = mul nuw nsw i64 %i.ai, 10000000
  %i.ak = add nuw nsw i64 %i.aj, %i.ad            ; 2 uses
  store i64 %i.ak, ptr %3, align 8, !tbaa !44
  %i.al = icmp eq i64 %.14061.i, 3
  br i1 %i.al, label %pax_time.exit, label %bb.n

bb.n:                                             ; preds = %.preheader.2.i
  %i.am = getelementptr inbounds nuw i8, ptr %.162.i, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %or.cond52.2.i = icmp ult i8 %i.ao, 10
  br i1 %or.cond52.2.i, label %.preheader.3.i, label %pax_time.exit
end_hunk_1
begin_hunk_2_@pax_attribute_SCHILY_acl:bb.a

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.125, i32 noundef %4) #11
  br label %bb.n

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ @.str.124, %bb.c ], [ @.str.123, %bb.b ], [ @.str.122, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call ptr @archive_string_conversion_from_charset(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef 1) #11 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !61
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = icmp ugt i64 %3, 131072
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.g = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %3) #11 ; 0 uses
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.126, i64 noundef %3, i64 noundef 131072) #11
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.h = tail call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %3, ptr noundef null) #11 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.127) #11
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.j = tail call ptr @archive_entry_acl(ptr noundef %2) #11
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.l = tail call i32 @archive_acl_from_text_nl(ptr noundef %i.j, ptr noundef nonnull %i.h, i64 noundef %3, i32 noundef %4, ptr noundef %i.k) #11 ; 3 uses
  %i.m = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %3) #11 ; 0 uses
  %i.n = tail call i32 @archive_entry_perm(ptr noundef %2) #11
  tail call void @archive_entry_set_perm(ptr noundef %2, i32 noundef %i.n) #11
  switch i32 %i.l, label %bb.m [
    i32 0, label %bb.n
    i32 -30, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef nonnull %.0) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.130, ptr noundef nonnull %.0) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.f, %bb.l, %bb.j, %bb.h, %bb.d
  %.033 = phi i32 [ -30, %bb.d ], [ -30, %bb.f ], [ -20, %bb.h ], [ -30, %bb.j ], [ -30, %bb.l ], [ %i.l, %bb.k ], [ %i.l, %bb.m ]
  ret i32 %.033
}

declare void @archive_entry_set_rdevmajor(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_rdevminor(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @archive_entry_copy_fflags_text_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @pax_attribute_SCHILY_xattr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1, -13) %2, ptr noundef nonnull %3, i64 noundef range(i64 0, 16777216) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, 128
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 1
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #15 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  store i8 0, ptr %i.d, align 1, !tbaa !14
  tail call void @archive_entry_xattr_add_entry(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %3, i64 noundef %4) #11
  tail call void @free(ptr noundef nonnull %i.c) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @pax_attribute_SUN_holesdata(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 8388608) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %gnu_add_sparse_entry.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 32
  br i1 %i.c, label %.preheader, label %gnu_add_sparse_entry.exit.thread

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.c

bb.c:                                             ; preds = %bb.r, %.preheader
  %.pn = phi ptr [ %.033.lcssa, %bb.r ], [ %2, %.preheader ] ; 2 uses
  %.034.in = phi i64 [ %.1.lcssa, %bb.r ], [ %3, %.preheader ] ; 2 uses
  %.032 = phi i64 [ %.044.i.i2, %bb.r ], [ 0, %.preheader ] ; 5 uses
  %.0 = phi i32 [ %i.aq, %bb.r ], [ 1, %.preheader ] ; 2 uses
  %.035 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 4 uses
  %.119 = add nsw i64 %.034.in, -1                ; 2 uses
  %.not20 = icmp eq i64 %.119, 0
  br i1 %.not20, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %.pn, i64 %.034.in
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.122 = phi i64 [ %.1, %bb.e ], [ %.119, %.lr.ph.preheader ] ; 2 uses
  %.03321 = phi ptr [ %i.h, %bb.e ], [ %.035, %.lr.ph.preheader ] ; 3 uses
  %i.f = load i8, ptr %.03321, align 1, !tbaa !14 ; 2 uses
  %.not40.not.not = icmp ne i8 %i.f, 32           ; 3 uses
  br i1 %.not40.not.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.g = add i8 %i.f, -58
  %or.cond = icmp ult i8 %i.g, -10
  br i1 %or.cond, label %gnu_add_sparse_entry.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.03321, i64 1
  %.1 = add nsw i64 %.122, -1                     ; 2 uses
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !110

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.c
  %.033.lcssa = phi ptr [ %.035, %bb.c ], [ %scevgep, %bb.e ], [ %.03321, %.lr.ph ] ; 3 uses
  %.1.lcssa = phi i64 [ 0, %bb.c ], [ 0, %bb.e ], [ %.122, %.lr.ph ]
  %.not.lcssa = phi i1 [ true, %bb.c ], [ %.not40.not.not, %bb.e ], [ %.not40.not.not, %.lr.ph ]
  %i.i = ptrtoint ptr %.033.lcssa to i64
  %i.j = ptrtoint ptr %.035 to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %.not68.i.i = icmp eq i64 %i.k, 0
  br i1 %.not68.i.i, label %tar_atol10.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %.critedge2.i.i
  %.04570.i.i = phi i64 [ %i.n, %.critedge2.i.i ], [ %i.k, %.critedge ] ; 3 uses
  %.04769.i.i = phi ptr [ %i.m, %.critedge2.i.i ], [ %.035, %.critedge ] ; 4 uses
  %i.l = load i8, ptr %.04769.i.i, align 1, !tbaa !14 ; 2 uses
  switch i8 %i.l, label %.preheader.i.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 45, label %.critedge53.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1
  %i.n = add i64 %.04570.i.i, -1                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %tar_atol10.exit.thread, label %.lr.ph.i.i, !llvm.loop !3

.critedge53.i.i:                                  ; preds = %.lr.ph.i.i
  %i.o = add i64 %.04570.i.i, -1                  ; 2 uses
  %.not51.i.i = icmp eq i64 %i.o, 0
  br i1 %.not51.i.i, label %tar_atol10.exit.thread, label %.preheaderthread-pre-split.i.i

.preheaderthread-pre-split.i.i:                   ; preds = %.critedge53.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.04769.i.i, i64 1 ; 2 uses
  %.039.in.in71.pr.i.i = load i8, ptr %i.p, align 1, !tbaa !14
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheaderthread-pre-split.i.i
  %.039.in.in71.i.i = phi i8 [ %.039.in.in71.pr.i.i, %.preheaderthread-pre-split.i.i ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.q = phi i1 [ true, %.preheaderthread-pre-split.i.i ], [ false, %.lr.ph.i.i ]
  %.04097.i.i = phi i64 [ 8, %.preheaderthread-pre-split.i.i ], [ 7, %.lr.ph.i.i ]
  %.04295.i.i = phi i64 [ -9223372036854775808, %.preheaderthread-pre-split.i.i ], [ 9223372036854775807, %.lr.ph.i.i ] ; 2 uses
  %.14694.i.i = phi i64 [ %i.o, %.preheaderthread-pre-split.i.i ], [ %.04570.i.i, %.lr.ph.i.i ]
  %.14893.i.i = phi ptr [ %i.p, %.preheaderthread-pre-split.i.i ], [ %.04769.i.i, %.lr.ph.i.i ]
  %i.r = icmp sgt i8 %.039.in.in71.i.i, 47
  br i1 %i.r, label %.lr.ph78.i.i, label %.critedge4.i.i

.lr.ph78.i.i:                                     ; preds = %.preheader.i.i, %bb.h
  %.03977.in.in.i.i = phi i8 [ %.039.in.in.i.i, %bb.h ], [ %.039.in.in71.i.i, %.preheader.i.i ] ; 2 uses
  %.04376.i.i = phi i64 [ %i.x, %bb.h ], [ 0, %.preheader.i.i ] ; 4 uses
  %.275.i.i = phi i64 [ %i.z, %bb.h ], [ %.14694.i.i, %.preheader.i.i ] ; 2 uses
  %.24974.i.i = phi ptr [ %i.y, %bb.h ], [ %.14893.i.i, %.preheader.i.i ]
  %.03977.in.i.i = zext nneg i8 %.03977.in.in.i.i to i64
  %.03977.i.i = add nsw i64 %.03977.in.i.i, -48   ; 2 uses
  %i.s = icmp samesign ult i8 %.03977.in.in.i.i, 58
  %i.t = icmp ne i64 %.275.i.i, 0
  %or.cond.i.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %.critedge4.i.i

bb.f:                                             ; preds = %.lr.ph78.i.i
  %i.u = icmp sgt i64 %.04376.i.i, 922337203685477580
  br i1 %i.u, label %tar_atol10.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp ne i64 %.04376.i.i, 922337203685477580
  %.not52.i.i = icmp sgt i64 %.04097.i.i, %.03977.i.i
  %or.cond54.i.i = select i1 %i.v, i1 true, i1 %.not52.i.i
  br i1 %or.cond54.i.i, label %bb.h, label %tar_atol10.exit

bb.h:                                             ; preds = %bb.g
  %i.w = mul nsw i64 %.04376.i.i, 10
  %i.x = add nsw i64 %i.w, %.03977.i.i            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.24974.i.i, i64 1 ; 2 uses
  %i.z = add i64 %.275.i.i, -1
  %.039.in.in.i.i = load i8, ptr %i.y, align 1, !tbaa !14 ; 2 uses
  %i.aa = icmp sgt i8 %.039.in.in.i.i, 47
  br i1 %i.aa, label %.lr.ph78.i.i, label %.critedge4.i.i, !llvm.loop !4

.critedge4.i.i:                                   ; preds = %bb.h, %.lr.ph78.i.i, %.preheader.i.i
  %.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.x, %bb.h ], [ %.04376.i.i, %.lr.ph78.i.i ] ; 2 uses
  %i.ab = sub nsw i64 0, %.1.i.i
  %spec.select.i.i = select i1 %i.q, i64 %i.ab, i64 %.1.i.i
  br label %tar_atol10.exit

tar_atol10.exit:                                  ; preds = %bb.f, %bb.g, %.critedge4.i.i
  %.044.i.i = phi i64 [ %spec.select.i.i, %.critedge4.i.i ], [ %.04295.i.i, %bb.g ], [ %.04295.i.i, %bb.f ] ; 2 uses
  %i.ac = icmp slt i64 %.044.i.i, 0
  br i1 %i.ac, label %gnu_add_sparse_entry.exit.thread, label %tar_atol10.exit.thread

tar_atol10.exit.thread:                           ; preds = %.critedge2.i.i, %.critedge, %.critedge53.i.i, %tar_atol10.exit
  %.044.i.i2 = phi i64 [ %.044.i.i, %tar_atol10.exit ], [ 0, %.critedge53.i.i ], [ 0, %.critedge ], [ 0, %.critedge2.i.i ] ; 3 uses
  %i.ad = icmp slt i64 %.032, %.044.i.i2
  br i1 %i.ad, label %bb.i, label %bb.q

bb.i:                                             ; preds = %tar_atol10.exit.thread
  %i.ae = sub nsw i64 %.044.i.i2, %.032           ; 3 uses
  %i.af = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #12 ; 7 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.140) #11
  br label %gnu_add_sparse_entry.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !49  ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !48
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.e, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store ptr %i.af, ptr %i.d, align 8, !tbaa !49
  %i.ai = or i64 %i.ae, %.032
  %or.cond.not.i = icmp slt i64 %i.ai, 0
  %i.aj = sub nuw nsw i64 9223372036854775807, %i.ae
  %i.ak = icmp sgt i64 %.032, %i.aj
  %or.cond.i = select i1 %or.cond.not.i, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.141) #11
  br label %gnu_add_sparse_entry.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %.032, ptr %i.al, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.ae, ptr %i.am, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %.0, ptr %i.an, align 8, !tbaa !71
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %tar_atol10.exit.thread
  %i.ao = load i8, ptr %.033.lcssa, align 1, !tbaa !14
  %i.ap = icmp eq i8 %i.ao, 10                    ; 2 uses
  br i1 %.not.lcssa, label %.critedge43, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = xor i32 %.0, 1
  br i1 %i.ap, label %.loopexit, label %bb.c

.critedge43:                                      ; preds = %bb.q
  br i1 %i.ap, label %gnu_add_sparse_entry.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.r, %.critedge43
  br label %gnu_add_sparse_entry.exit.thread

gnu_add_sparse_entry.exit.thread:                 ; preds = %tar_atol10.exit, %bb.d, %bb.o, %bb.j, %.critedge43, %bb.b, %bb.a, %.loopexit
  %.036 = phi i32 [ -20, %bb.a ], [ -20, %bb.b ], [ -30, %bb.o ], [ -20, %bb.d ], [ 0, %.critedge43 ], [ -20, %.loopexit ], [ -30, %bb.j ], [ -20, %tar_atol10.exit ]
  ret i32 %.036
}

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_gid(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_mtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_uid(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_xattr_add_entry(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @archive_acl_from_text_nl(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_uname(ptr noundef) local_unnamed_addr #2

declare ptr @archive_entry_gname(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_rdev_is_set(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_rdev(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @archive_entry_atime_is_set(ptr noundef) local_unnamed_addr #2

declare i32 @archive_entry_ctime_is_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @header_common(ptr noundef %0, ptr nofree noundef captures(none) initializes((184, 192)) %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.archive_string, align 8     ; 9 uses
  %5 = alloca %struct.archive_string, align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.b = tail call fastcc i64 @tar_atol(ptr noundef %i.a, i64 noundef 8)
  %i.c = trunc i64 %i.b to i32
  tail call void @archive_entry_set_filetype(ptr noundef %2, i32 noundef %i.c) #11
  %i.d = tail call i32 @archive_entry_perm_is_set(ptr noundef %2) #11
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @tar_atol(ptr noundef %i.a, i64 noundef 8)
  %i.f = trunc i64 %i.e to i32
  tail call void @archive_entry_set_perm(ptr noundef %2, i32 noundef %i.f) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @archive_entry_uid_is_set(ptr noundef %2) #11
  %.not131 = icmp eq i32 %i.g, 0
  br i1 %.not131, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 108
  %i.i = tail call fastcc i64 @tar_atol(ptr noundef %i.h, i64 noundef 8)
  tail call void @archive_entry_set_uid(ptr noundef %2, i64 noundef %i.i) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = tail call i32 @archive_entry_gid_is_set(ptr noundef %2) #11
  %.not132 = icmp eq i32 %i.j, 0
  br i1 %.not132, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.l = tail call fastcc i64 @tar_atol(ptr noundef %i.k, i64 noundef 8)
  tail call void @archive_entry_set_gid(ptr noundef %2, i64 noundef %i.l) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = tail call i32 @archive_entry_mtime_is_set(ptr noundef %2) #11
  %.not133 = icmp eq i32 %i.m, 0
  br i1 %.not133, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.o = tail call fastcc i64 @tar_atol(ptr noundef %i.n, i64 noundef 12)
  tail call void @archive_entry_set_mtime(ptr noundef %2, i64 noundef %i.o, i64 noundef 0) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 266 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !50    ; 4 uses
  %i.r = and i8 %i.q, 2
  %.not134 = icmp eq i8 %i.r, 0
  br i1 %.not134, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.t = load i64, ptr %i.s, align 8, !tbaa !63   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.t, ptr %i.u, align 8, !tbaa !73
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.v = and i8 %i.q, 4
  %.not135 = icmp eq i8 %i.v, 0
  br i1 %.not135, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.x = load i32, ptr %i.w, align 8, !tbaa !68
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !74  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 184
end_hunk_2
