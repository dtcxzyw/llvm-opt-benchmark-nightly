Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_convert_to_rfc1123_buffer:bb.a
  %.2 = phi i64 [ %i.an, %bb.m ], [ %i.al, %bb.l ]
  %i.ap = load i8, ptr %i.k, align 2, !tbaa !119
  %i.aq = zext i8 %i.ap to i64
  %i.ar = call ptr @png_format_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.t, i32 noundef 2, i64 noundef %i.aq) #28
  %i.as = call i64 @png_safecat(ptr noundef nonnull %0, i64 noundef 29, i64 noundef %.2, ptr noundef %i.ar) #28 ; 4 uses
  %i.at = icmp ult i64 %i.as, 28
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = add nuw nsw i64 %i.as, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i8 58, ptr %i.av, align 1, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3 = phi i64 [ %i.au, %bb.o ], [ %i.as, %bb.n ]
  %i.aw = load i8, ptr %i.n, align 1, !tbaa !120
  %i.ax = zext i8 %i.aw to i64
  %i.ay = call ptr @png_format_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.t, i32 noundef 2, i64 noundef %i.ax) #28
  %i.az = call i64 @png_safecat(ptr noundef nonnull %0, i64 noundef 29, i64 noundef %.3, ptr noundef %i.ay) #28 ; 4 uses
  %i.ba = icmp ult i64 %i.az, 28
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = add nuw nsw i64 %i.az, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.az
  store i8 58, ptr %i.bc, align 1, !tbaa !28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4 = phi i64 [ %i.bb, %bb.q ], [ %i.az, %bb.p ]
  %i.bd = load i8, ptr %i.q, align 2, !tbaa !121
  %i.be = zext i8 %i.bd to i64
  %i.bf = call ptr @png_format_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.t, i32 noundef 2, i64 noundef %i.be) #28
  %i.bg = call i64 @png_safecat(ptr noundef nonnull %0, i64 noundef 29, i64 noundef %.4, ptr noundef %i.bf) #28
  %i.bh = call i64 @png_safecat(ptr noundef nonnull %0, i64 noundef 29, i64 noundef %i.bg, ptr noundef nonnull @.str.6) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.a, %bb.r
  %.044 = phi i32 [ 1, %bb.r ], [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.044
}

declare ptr @png_format_number(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define noundef ptr @png_convert_to_rfc1123(ptr noalias noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 964 ; 2 uses
  %i.b = tail call i32 @png_convert_to_rfc1123_buffer(ptr noundef nonnull %i.a, ptr noundef %1)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_warning(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @png_get_copyright(ptr noalias nofree noundef readnone captures(none) %0) local_unnamed_addr #11 {
bb.a:
  ret ptr @.str.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @png_get_libpng_ver(ptr noalias nofree noundef readnone captures(none) %0) local_unnamed_addr #11 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @png_get_header_ver(ptr noalias nofree noundef readnone captures(none) %0) local_unnamed_addr #11 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @png_get_header_version(ptr noalias nofree noundef readnone captures(none) %0) local_unnamed_addr #11 {
bb.a:
  ret ptr @.str.9
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @png_build_grayscale_palette(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #12 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.c = icmp eq i32 %i.b, 1
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %.split, label %.loopexit

.split:                                           ; preds = %bb.a
  %i.d = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true) ; 3 uses
  %i.e = icmp samesign ult i32 %i.d, 4
  br i1 %i.e, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %.split
  %i.f = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.png_build_grayscale_palette, i64 %i.f
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64      ; 2 uses
  %switch.shiftamt = shl nuw nsw i32 %i.d, 3
  %switch.downshift = lshr i32 17913343, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8 ; 2 uses
  %xtraiter = and i64 %switch.ext, 1
  %unroll_iter = and i64 %switch.ext, 65534
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %switch.lookup
  %indvars.iv = phi i64 [ 0, %switch.lookup ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.020 = phi i8 [ 0, %switch.lookup ], [ %i.o, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %switch.lookup ], [ %niter.next.1, %.lr.ph ]
  %i.g = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store i8 %.020, ptr %i.g, align 1, !tbaa !124
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %.020, ptr %i.h, align 1, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %.020, ptr %i.i, align 1, !tbaa !126
  %i.j = add i8 %.020, %switch.masked             ; 4 uses
  %i.k = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.j, ptr %i.l, align 1, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i8 %i.j, ptr %i.m, align 1, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  store i8 %i.j, ptr %i.n, align 1, !tbaa !126
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.o = add i8 %i.j, %switch.masked
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !122

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod.not)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @png_handle_as_unknown(ptr noalias nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = mul i32 %i.d, 5
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0 = phi ptr [ %i.j, %bb.c ], [ %i.k, %bb.f ]  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.0, i64 -5 ; 3 uses
  %i.l = load i32, ptr %1, align 1
  %i.m = load i32, ptr %i.k, align 1
  %i.n = icmp ne i32 %i.l, %i.m
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %.0, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = zext i8 %i.r to i32
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ugt ptr %i.k, %i.g
  br i1 %i.t, label %bb.d, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.f, %bb.a, %bb.b, %bb.e
  %.013 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ]
  ret i32 %.013
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 256) i32 @png_chunk_unknown_handling(ptr noalias nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [5 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr %i.a, align 4, !tbaa !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %png_handle_as_unknown.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49, !alias.scope !129 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %png_handle_as_unknown.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50, !alias.scope !129 ; 2 uses
  %i.h = mul i32 %i.d, 5
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.k, %bb.f ] ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -5 ; 3 uses
  %i.l = load i32, ptr %i.a, align 4
  %i.m = load i32, ptr %i.k, align 1
  %i.n = icmp ne i32 %i.l, %i.m
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %.0.i, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28, !noalias !129
  %i.s = zext i8 %i.r to i32
  br label %png_handle_as_unknown.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ugt ptr %i.k, %i.g
  br i1 %i.t, label %bb.d, label %png_handle_as_unknown.exit, !llvm.loop !0

png_handle_as_unknown.exit:                       ; preds = %bb.f, %bb.a, %bb.b, %bb.e
  %.013.i = phi i32 [ 0, %bb.a ], [ %i.s, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.013.i
}

; Function Attrs: nounwind uwtable
define i32 @png_reset_zstream(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = tail call i32 @inflateReset(ptr noundef nonnull %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

declare i32 @inflateReset(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @png_access_version_number() local_unnamed_addr #11 {
bb.a:
  ret i32 10658
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_zstream_error(ptr noalias nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add i32 %1, 7                ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 10
  br i1 %i.d, label %switch.lookup, label %.sink.split

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.png_zstream_error, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.b
  %.str.10.sink = phi ptr [ @.str.10, %bb.b ], [ %switch.load, %switch.lookup ]
  store ptr %.str.10.sink, ptr %i.a, align 8, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @png_xy_from_XYZ(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = load i32, ptr %1, align 4, !tbaa !131    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !52   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !132  ; 5 uses
  %i.g = icmp sgt i32 %i.d, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw nsw i32 2147483647, %i.d
  %.not15.i.i = icmp slt i32 %i.h, %i.f           ; 2 uses
  %i.i = add nsw i32 %i.f, %i.d
  %spec.select13.i = select i1 %.not15.i.i, i32 50000, i32 %i.i
  br label %png_fp_add.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %i.d, 0
  br i1 %i.j, label %bb.d, label %png_fp_add.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = sub nsw i32 -2147483647, %i.d
  %.not.i.i = icmp sgt i32 %i.k, %i.f             ; 2 uses
  %i.l = add nsw i32 %i.f, %i.d
  %spec.select15.i = select i1 %.not.i.i, i32 50000, i32 %i.l
  br label %png_fp_add.exit.i

png_fp_add.exit.i:                                ; preds = %bb.d, %bb.c, %bb.b
  %.0.shrunk.i = phi i1 [ false, %bb.c ], [ %.not.i.i, %bb.d ], [ %.not15.i.i, %bb.b ]
  %.0.i.i = phi i32 [ %i.f, %bb.c ], [ %spec.select15.i, %bb.d ], [ %spec.select13.i, %bb.b ] ; 5 uses
  %i.m = icmp sgt i32 %i.b, 0
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %png_fp_add.exit.i
  %i.n = sub nuw nsw i32 2147483647, %i.b
  %.not15.i6.i = icmp slt i32 %i.n, %.0.i.i
  br i1 %.not15.i6.i, label %png_safe_add.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %.0.i.i, %i.b
  br label %png_fp_add.exit7.i

bb.g:                                             ; preds = %png_fp_add.exit.i
  %i.p = icmp slt i32 %i.b, 0
  br i1 %i.p, label %bb.h, label %png_fp_add.exit7.i

bb.h:                                             ; preds = %bb.g
  %i.q = sub nsw i32 -2147483647, %i.b
  %.not.i5.i = icmp sgt i32 %i.q, %.0.i.i
  br i1 %.not.i5.i, label %png_safe_add.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = add nsw i32 %.0.i.i, %i.b
  br label %png_fp_add.exit7.i

png_fp_add.exit7.i:                               ; preds = %bb.i, %bb.g, %bb.f
  %.0.i4.i = phi i32 [ %i.o, %bb.f ], [ %.0.i.i, %bb.g ], [ %i.r, %bb.i ] ; 4 uses
  %.not.i = icmp eq i32 %.0.i4.i, 0
  %or.cond = select i1 %.0.shrunk.i, i1 true, i1 %.not.i
  br i1 %or.cond, label %png_safe_add.exit.thread, label %bb.j

bb.j:                                             ; preds = %png_fp_add.exit7.i
  %i.s = icmp eq i32 %i.b, 0
  br i1 %i.s, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = sitofp i32 %i.b to double
  %i.u = fmul nnan double %i.t, 1.000000e+05
  %i.v = sitofp i32 %.0.i4.i to double
  %i.w = fdiv double %i.u, %i.v
  %i.x = fadd double %i.w, 5.000000e-01
  %i.y = tail call double @llvm.floor.f64(double %i.x) ; 3 uses
  %i.z = fcmp ole double %i.y, f0x41DFFFFFFFC00000
  %i.aa = fcmp oge double %i.y, f0xC1E0000000000000
  %or.cond3.i = and i1 %i.z, %i.aa
  br i1 %or.cond3.i, label %bb.l, label %png_safe_add.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ab = fptosi double %i.y to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l
  %.sink.i = phi i32 [ %i.ab, %bb.l ], [ 0, %bb.j ]
  store i32 %.sink.i, ptr %0, align 4, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !52  ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = sitofp i32 %i.ad to double
  %i.ag = fmul nnan double %i.af, 1.000000e+05
  %i.ah = sitofp i32 %.0.i4.i to double
  %i.ai = fdiv double %i.ag, %i.ah
  %i.aj = fadd double %i.ai, 5.000000e-01
  %i.ak = tail call double @llvm.floor.f64(double %i.aj) ; 3 uses
  %i.al = fcmp ole double %i.ak, f0x41DFFFFFFFC00000
  %i.am = fcmp oge double %i.ak, f0xC1E0000000000000
  %or.cond3.i48 = and i1 %i.al, %i.am
  br i1 %or.cond3.i48, label %bb.o, label %png_safe_add.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.an = fptosi double %i.ak to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sink.i51 = phi i32 [ %i.an, %bb.o ], [ 0, %bb.m ]
  store i32 %.sink.i51, ptr %i.ac, align 4, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !133 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !53 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !134 ; 5 uses
  %i.au = icmp sgt i32 %i.ar, 0
  br i1 %i.au, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.av = sub nuw nsw i32 2147483647, %i.ar
  %.not15.i.i63 = icmp slt i32 %i.av, %i.at       ; 2 uses
  %i.aw = add nsw i32 %i.at, %i.ar
  %spec.select13.i64 = select i1 %.not15.i.i63, i32 50000, i32 %i.aw
end_hunk_0
begin_hunk_1_@png_build_16bit_table:bb.a

.preheader40:                                     ; preds = %bb.a, %.loopexit41
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.loopexit41 ], [ 0, %bb.a ] ; 3 uses
  %i.fh = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv54
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !62
  %i.fj = trunc nuw nsw i64 %indvars.iv54 to i32  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader40
  %indvars.iv = phi i64 [ 0, %.preheader40 ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.fk = trunc nuw nsw i64 %indvars.iv to i32
  %i.fl = shl nuw nsw i32 %i.fk, %i.a
  %i.fm = add nuw i32 %i.fl, %i.fj
  %i.fn = uitofp i32 %i.fm to double
  %i.fo = fmul double %i.f, %i.fn
  %i.fp = tail call double @pow(double noundef %i.fo, double noundef %i.n) #28
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double 6.553500e+04, double 5.000000e-01)
  %i.fr = tail call double @llvm.floor.f64(double %i.fq)
  %i.fs = fptoui double %i.fr to i16
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv
  store i16 %i.fs, ptr %i.ft, align 2, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.fv = shl nuw nsw i32 %i.fu, %i.a
  %i.fw = add nuw i32 %i.fv, %i.fj
  %i.fx = uitofp i32 %i.fw to double
  %i.fy = fmul double %i.f, %i.fx
  %i.fz = tail call double @pow(double noundef %i.fy, double noundef %i.n) #28
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fz, double 6.553500e+04, double 5.000000e-01)
  %i.gb = tail call double @llvm.floor.f64(double %i.ga)
  %i.gc = fptoui double %i.gb to i16
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.fh, i64 %indvars.iv.next
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit41, label %bb.c, !llvm.loop !217

.loopexit41:                                      ; preds = %bb.c
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, %i.h
  br i1 %exitcond57.not, label %.split50.us, label %.preheader40, !llvm.loop !215

.split50.us:                                      ; preds = %.loopexit41, %.loopexit.split.us48, %.preheader.us.us
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @png_set_option(ptr noalias nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = and i32 %1, -15
  %i.c = icmp eq i32 %i.b, 0
  %or.cond = and i1 %i.a, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 3, %1
  %.not = icmp eq i32 %2, 0
  %i.e = select i1 %.not, i32 2, i32 3
  %i.f = shl nuw nsw i32 %i.e, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !218  ; 2 uses
  %i.i = xor i32 %i.d, -1
  %i.j = and i32 %i.h, %i.i
  %i.k = or i32 %i.j, %i.f
  store i32 %i.k, ptr %i.g, align 8, !tbaa !218
  %i.l = lshr i32 %i.h, %1
  %i.m = and i32 %i.l, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @png_image_free(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.png_control, align 8        ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !219    ; 6 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %png_image_free_function.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8               ; 2 uses
  %i.i = and i8 %i.h, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 264 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = and i8 %i.h, -3
  store i8 %i.l, ptr %i.g, align 8
  %.not14.i = icmp eq ptr %i.k, null
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.j, align 8, !tbaa !48
  %i.m = tail call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !tbaa.struct !225
  store ptr %1, ptr %0, align 8, !tbaa !219
  %i.n = load ptr, ptr %1, align 8, !tbaa !223
  call void @png_free(ptr noundef %i.n, ptr noundef nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, 1
  %.not15.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @png_destroy_write_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.r) #28
  br label %png_image_free_function.exit

bb.j:                                             ; preds = %bb.h
  call void @png_destroy_read_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.r, ptr noundef null) #28
  br label %png_image_free_function.exit

png_image_free_function.exit:                     ; preds = %bb.d, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr null, ptr %0, align 8, !tbaa !219
  br label %bb.k

bb.k:                                             ; preds = %png_image_free_function.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @png_image_error(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = tail call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef 0, ptr noundef %1) #28 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !226
  %i.e = or i32 %i.d, 2
  store i32 %i.e, ptr %i.c, align 8, !tbaa !226
  tail call void @png_image_free(ptr noundef %0)
  ret i32 0
}

declare void @png_chunk_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare noalias ptr @png_malloc(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noalias ptr @png_calloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #23

declare void @png_destroy_write_struct(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind }
attributes #29 = { nounwind returns_twice }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13__jmp_buf_tag", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!14 = !{!"z_stream_s", !12, i64 0, !6, i64 8, !11, i64 16, !12, i64 24, !6, i64 32, !11, i64 40, !12, i64 48, !13, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !6, i64 88, !11, i64 96, !11, i64 104}
!15 = !{!"p1 _ZTS22png_compression_buffer", !9, i64 0}
!16 = !{!"p1 _ZTS16png_color_struct", !9, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"png_color_16_struct", !5, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !17, i64 8}
!19 = !{!"png_xy", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!20 = !{!"any p2 pointer", !9, i64 0}
!21 = !{!"p2 short", !20, i64 0}
!22 = !{!"png_color_8_struct", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4}
!23 = !{!"png_unknown_chunk_t", !5, i64 0, !12, i64 8, !11, i64 16, !5, i64 24}
!24 = !{!"png_struct_def", !5, i64 0, !9, i64 200, !10, i64 208, !11, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !5, i64 296, !5, i64 297, !6, i64 300, !6, i64 304, !6, i64 308, !6, i64 312, !14, i64 320, !15, i64 432, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !6, i64 456, !6, i64 460, !6, i64 464, !6, i64 468, !6, i64 472, !6, i64 476, !6, i64 480, !6, i64 484, !6, i64 488, !6, i64 492, !6, i64 496, !6, i64 500, !6, i64 504, !6, i64 508, !6, i64 512, !6, i64 516, !6, i64 520, !11, i64 528, !6, i64 536, !6, i64 540, !6, i64 544, !12, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !11, i64 584, !6, i64 592, !6, i64 596, !16, i64 600, !17, i64 608, !6, i64 612, !17, i64 616, !5, i64 618, !5, i64 619, !5, i64 620, !5, i64 621, !5, i64 622, !5, i64 623, !5, i64 624, !5, i64 625, !5, i64 626, !5, i64 627, !5, i64 628, !5, i64 629, !5, i64 630, !5, i64 631, !5, i64 632, !17, i64 634, !5, i64 636, !6, i64 640, !18, i64 644, !18, i64 654, !9, i64 664, !6, i64 672, !6, i64 676, !19, i64 680, !6, i64 712, !6, i64 716, !6, i64 720, !6, i64 724, !6, i64 728, !12, i64 736, !21, i64 744, !12, i64 752, !12, i64 760, !21, i64 768, !21, i64 776, !22, i64 784, !22, i64 789, !12, i64 800, !18, i64 808, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !6, i64 896, !6, i64 900, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !6, i64 936, !6, i64 940, !12, i64 944, !12, i64 952, !6, i64 960, !5, i64 964, !6, i64 996, !9, i64 1000, !9, i64 1008, !6, i64 1016, !6, i64 1020, !12, i64 1024, !5, i64 1032, !5, i64 1033, !17, i64 1034, !17, i64 1036, !12, i64 1040, !6, i64 1048, !5, i64 1052, !9, i64 1056, !9, i64 1064, !9, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !5, i64 1104, !6, i64 1108, !6, i64 1112, !6, i64 1116, !11, i64 1120, !23, i64 1128, !11, i64 1160, !12, i64 1168, !11, i64 1176, !6, i64 1184, !6, i64 1188, !12, i64 1192, !5, i64 1200}
!25 = !{!24, !6, i64 596}
!26 = !{!24, !6, i64 304}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!5, !5, i64 0}
!29 = !{!24, !6, i64 1108}
!30 = !{!24, !6, i64 1112}
!31 = !{!24, !11, i64 1120}
!32 = !{!9, !9, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!12, !12, i64 0}
!36 = !{!17, !17, i64 0}
!37 = !{!21, !21, i64 0}
!38 = !{!"p1 _ZTS12png_info_def", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTS15png_text_struct", !9, i64 0}
!41 = !{!"png_time_struct", !17, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6}
!42 = !{!"p1 short", !9, i64 0}
!43 = !{!"p2 omnipotent char", !20, i64 0}
!44 = !{!"p1 _ZTS19png_unknown_chunk_t", !9, i64 0}
!45 = !{!"p1 _ZTS15png_sPLT_struct", !9, i64 0}
!46 = !{!"png_info_def", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !16, i64 24, !17, i64 32, !17, i64 34, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44, !5, i64 52, !5, i64 53, !5, i64 54, !5, i64 55, !12, i64 56, !12, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !17, i64 84, !17, i64 86, !17, i64 88, !17, i64 90, !17, i64 92, !17, i64 94, !17, i64 96, !17, i64 98, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !40, i64 120, !41, i64 128, !22, i64 136, !12, i64 144, !18, i64 152, !18, i64 162, !6, i64 172, !6, i64 176, !5, i64 180, !6, i64 184, !6, i64 188, !5, i64 192, !6, i64 196, !12, i64 200, !42, i64 208, !12, i64 216, !6, i64 224, !6, i64 228, !12, i64 232, !43, i64 240, !5, i64 248, !5, i64 249, !6, i64 252, !44, i64 256, !6, i64 264, !45, i64 272, !6, i64 280, !5, i64 284, !12, i64 288, !12, i64 296, !43, i64 304, !19, i64 312, !6, i64 344, !6, i64 348}
!47 = !{!46, !6, i64 252}
!48 = !{!24, !9, i64 264}
!49 = !{!24, !6, i64 1020}
!50 = !{!24, !12, i64 1024}
!51 = !{!"png_XYZ", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!52 = !{!51, !6, i64 4}
!53 = !{!51, !6, i64 16}
!54 = !{!51, !6, i64 28}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", i32 8, i32 24}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!24, !12, i64 736}
!60 = !{!24, !21, i64 744}
!61 = !{!24, !6, i64 712}
!62 = !{!42, !42, i64 0}
!63 = !{!"p1 _ZTS11png_control", !9, i64 0}
!64 = !{!"", !63, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !5, i64 36}
!65 = !{!24, !5, i64 629}
!66 = distinct !{!66, !27}
!67 = !{!24, !6, i64 544}
!68 = !{!24, !6, i64 1116}
!69 = !{!24, !10, i64 208}
!70 = !{!24, !11, i64 216}
!71 = !{!24, !9, i64 200}
!72 = !{!24, !9, i64 384}
!73 = !{!24, !9, i64 392}
!74 = !{!24, !9, i64 400}
!75 = !{!10, !10, i64 0}
!76 = !{!13, !13, i64 0}
!77 = !{!15, !15, i64 0}
!78 = !{!16, !16, i64 0}
!79 = !{i64 0, i64 200, !28, i64 200, i64 8, !32, i64 208, i64 8, !75, i64 216, i64 8, !33, i64 224, i64 8, !32, i64 232, i64 8, !32, i64 240, i64 8, !32, i64 248, i64 8, !32, i64 256, i64 8, !32, i64 264, i64 8, !32, i64 272, i64 8, !32, i64 280, i64 8, !32, i64 288, i64 8, !32, i64 296, i64 1, !28, i64 297, i64 1, !28, i64 300, i64 4, !34, i64 304, i64 4, !34, i64 308, i64 4, !34, i64 312, i64 4, !34, i64 320, i64 8, !35, i64 328, i64 4, !34, i64 336, i64 8, !33, i64 344, i64 8, !35, i64 352, i64 4, !34, i64 360, i64 8, !33, i64 368, i64 8, !35, i64 376, i64 8, !76, i64 384, i64 8, !32, i64 392, i64 8, !32, i64 400, i64 8, !32, i64 408, i64 4, !34, i64 416, i64 8, !33, i64 424, i64 8, !33, i64 432, i64 8, !77, i64 440, i64 4, !34, i64 444, i64 4, !34, i64 448, i64 4, !34, i64 452, i64 4, !34, i64 456, i64 4, !34, i64 460, i64 4, !34, i64 464, i64 4, !34, i64 468, i64 4, !34, i64 472, i64 4, !34, i64 476, i64 4, !34, i64 480, i64 4, !34, i64 484, i64 4, !34, i64 488, i64 4, !34, i64 492, i64 4, !34, i64 496, i64 4, !34, i64 500, i64 4, !34, i64 504, i64 4, !34, i64 508, i64 4, !34, i64 512, i64 4, !34, i64 516, i64 4, !34, i64 520, i64 4, !34, i64 528, i64 8, !33, i64 536, i64 4, !34, i64 540, i64 4, !34, i64 544, i64 4, !34, i64 552, i64 8, !35, i64 560, i64 8, !35, i64 568, i64 8, !35, i64 576, i64 8, !35, i64 584, i64 8, !33, i64 592, i64 4, !34, i64 596, i64 4, !34, i64 600, i64 8, !78, i64 608, i64 2, !36, i64 612, i64 4, !34, i64 616, i64 2, !36, i64 618, i64 1, !28, i64 619, i64 1, !28, i64 620, i64 1, !28, i64 621, i64 1, !28, i64 622, i64 1, !28, i64 623, i64 1, !28, i64 624, i64 1, !28, i64 625, i64 1, !28, i64 626, i64 1, !28, i64 627, i64 1, !28, i64 628, i64 1, !28, i64 629, i64 1, !28, i64 630, i64 1, !28, i64 631, i64 1, !28, i64 632, i64 1, !28, i64 634, i64 2, !36, i64 636, i64 1, !28, i64 640, i64 4, !34, i64 644, i64 1, !28, i64 646, i64 2, !36, i64 648, i64 2, !36, i64 650, i64 2, !36, i64 652, i64 2, !36, i64 654, i64 1, !28, i64 656, i64 2, !36, i64 658, i64 2, !36, i64 660, i64 2, !36, i64 662, i64 2, !36, i64 664, i64 8, !32, i64 672, i64 4, !34, i64 676, i64 4, !34, i64 680, i64 4, !34, i64 684, i64 4, !34, i64 688, i64 4, !34, i64 692, i64 4, !34, i64 696, i64 4, !34, i64 700, i64 4, !34, i64 704, i64 4, !34, i64 708, i64 4, !34, i64 712, i64 4, !34, i64 716, i64 4, !34, i64 720, i64 4, !34, i64 724, i64 4, !34, i64 728, i64 4, !34, i64 736, i64 8, !35, i64 744, i64 8, !37, i64 752, i64 8, !35, i64 760, i64 8, !35, i64 768, i64 8, !37, i64 776, i64 8, !37, i64 784, i64 1, !28, i64 785, i64 1, !28, i64 786, i64 1, !28, i64 787, i64 1, !28, i64 788, i64 1, !28, i64 789, i64 1, !28, i64 790, i64 1, !28, i64 791, i64 1, !28, i64 792, i64 1, !28, i64 793, i64 1, !28, i64 800, i64 8, !35, i64 808, i64 1, !28, i64 810, i64 2, !36, i64 812, i64 2, !36, i64 814, i64 2, !36, i64 816, i64 2, !36, i64 824, i64 8, !32, i64 832, i64 8, !32, i64 840, i64 8, !32, i64 848, i64 8, !32, i64 856, i64 8, !32, i64 864, i64 8, !35, i64 872, i64 8, !35, i64 880, i64 8, !35, i64 888, i64 8, !35, i64 896, i64 4, !34, i64 900, i64 4, !34, i64 904, i64 8, !33, i64 912, i64 8, !33, i64 920, i64 8, !33, i64 928, i64 8, !33, i64 936, i64 4, !34, i64 940, i64 4, !34, i64 944, i64 8, !35, i64 952, i64 8, !35, i64 960, i64 4, !34, i64 964, i64 29, !28, i64 996, i64 4, !34, i64 1000, i64 8, !32, i64 1008, i64 8, !32, i64 1016, i64 4, !34, i64 1020, i64 4, !34, i64 1024, i64 8, !35, i64 1032, i64 1, !28, i64 1033, i64 1, !28, i64 1034, i64 2, !36, i64 1036, i64 2, !36, i64 1040, i64 8, !35, i64 1048, i64 4, !34, i64 1052, i64 1, !28, i64 1056, i64 8, !32, i64 1064, i64 8, !32, i64 1072, i64 8, !32, i64 1080, i64 8, !35, i64 1088, i64 8, !35, i64 1096, i64 8, !35, i64 1104, i64 1, !28, i64 1108, i64 4, !34, i64 1112, i64 4, !34, i64 1116, i64 4, !34, i64 1120, i64 8, !33, i64 1128, i64 5, !28, i64 1136, i64 8, !35, i64 1144, i64 8, !33, i64 1152, i64 1, !28, i64 1160, i64 8, !33, i64 1168, i64 8, !35, i64 1176, i64 8, !33, i64 1184, i64 4, !34, i64 1188, i64 4, !34, i64 1192, i64 8, !35, i64 1200, i64 32, !28}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, !27}
!82 = distinct !{!82, !27}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !27}
!85 = !{!46, !40, i64 120}
!86 = !{!46, !6, i64 108}
!87 = !{!"png_text_struct", !6, i64 0, !12, i64 8, !12, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 48}
!88 = !{!87, !12, i64 8}
!89 = !{!46, !6, i64 112}
!90 = !{!46, !6, i64 8}
!91 = !{!46, !12, i64 144}
!92 = !{!46, !17, i64 34}
!93 = !{!46, !12, i64 288}
!94 = !{!46, !12, i64 296}
!95 = !{!46, !12, i64 216}
!96 = !{!46, !12, i64 232}
!97 = !{!46, !43, i64 240}
!98 = !{!46, !5, i64 249}
!99 = !{!46, !12, i64 56}
!100 = !{!46, !12, i64 64}
!101 = !{!46, !45, i64 272}
!102 = !{!46, !6, i64 280}
!103 = !{!"p1 _ZTS21png_sPLT_entry_struct", !9, i64 0}
!104 = !{!"png_sPLT_struct", !12, i64 0, !5, i64 8, !103, i64 16, !6, i64 24}
!105 = !{!104, !12, i64 0}
!106 = !{!104, !103, i64 16}
!107 = !{!46, !44, i64 256}
!108 = !{!46, !6, i64 264}
!109 = !{!23, !12, i64 8}
!110 = !{!46, !12, i64 200}
!111 = !{!46, !42, i64 208}
!112 = !{!46, !16, i64 24}
!113 = !{!46, !17, i64 32}
!114 = !{!46, !43, i64 304}
!115 = !{!46, !6, i64 4}
!116 = !{!41, !17, i64 0}
!117 = !{!41, !5, i64 2}
!118 = !{!41, !5, i64 3}
!119 = !{!41, !5, i64 4}
!120 = !{!41, !5, i64 5}
!121 = !{!41, !5, i64 6}
!122 = distinct !{!122, !27}
!123 = !{!"png_color_struct", !5, i64 0, !5, i64 1, !5, i64 2}
!124 = !{!123, !5, i64 0}
!125 = !{!123, !5, i64 1}
!126 = !{!123, !5, i64 2}
!127 = distinct !{!127, i1 true, !"png_handle_as_unknown"}
!128 = distinct !{!128, !127, !"png_handle_as_unknown: argument 0"}
!129 = !{!128}
!130 = !{!24, !12, i64 368}
!131 = !{!51, !6, i64 0}
!132 = !{!51, !6, i64 8}
!133 = !{!51, !6, i64 12}
!134 = !{!51, !6, i64 20}
!135 = !{!51, !6, i64 24}
!136 = !{!51, !6, i64 32}
!137 = !{!19, !6, i64 0}
!138 = !{!19, !6, i64 4}
!139 = !{!19, !6, i64 8}
!140 = !{!19, !6, i64 12}
!141 = !{!19, !6, i64 16}
!142 = !{!19, !6, i64 20}
!143 = !{!19, !6, i64 24}
!144 = !{!19, !6, i64 28}
!145 = distinct !{!145, !27}
!146 = !{!24, !5, i64 1033}
!147 = !{!24, !6, i64 504}
!148 = !{!24, !17, i64 1034}
!149 = !{!24, !17, i64 1036}
!150 = !{!24, !6, i64 300}
!151 = !{!24, !6, i64 1048}
!152 = distinct !{!152, !27}
!153 = distinct !{!153, !27}
!154 = distinct !{!154, !27}
!155 = distinct !{!155, !27}
!156 = distinct !{!156, !27}
!157 = distinct !{!157, !27}
!158 = distinct !{!158, !27}
!159 = distinct !{!159, i1 false, !"LVerDomain"}
!160 = distinct !{!160, !159}
end_hunk_1
