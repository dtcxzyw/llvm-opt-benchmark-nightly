Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_save_uint_32
; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_convert_to_rfc1123_buffer(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 9 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 2, !tbaa !116
  %i.d = icmp ugt i16 %i.c, 9999
  br i1 %i.d, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !117
  %i.g = add i8 %i.f, -13
  %or.cond = icmp ult i8 %i.g, -12
  br i1 %or.cond, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !118   ; 2 uses
  %i.j = add i8 %i.i, -32
  %or.cond58 = icmp ult i8 %i.j, -31
  br i1 %or.cond58, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !119
  %i.m = icmp ugt i8 %i.l, 23
  br i1 %i.m, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !120
  %i.p = icmp ugt i8 %i.o, 59
  br i1 %i.p, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !121
  %i.s = icmp ugt i8 %i.r, 60
  br i1 %i.s, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.a, i8 0, i64 5, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 5 uses
  %i.u = zext nneg i8 %i.i to i64
  %i.v = call ptr @png_format_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.t, i32 noundef 1, i64 noundef %i.u) #28
  %i.w = call i64 @png_safecat(ptr noundef nonnull %0, i64 noundef 29, i64 noundef 0, ptr noundef %i.v) #28 ; 4 uses
  %i.x = icmp ult i64 %i.w, 28
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = add nuw nsw i64 %i.w, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  store i8 32, ptr %i.z, align 1, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ %i.y, %bb.i ], [ %i.w, %bb.h ]
  %i.aa = load i8, ptr %i.e, align 2, !tbaa !117
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr @png_convert_to_rfc1123_buffer.short_months, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4
  %i.ae = call i64 @png_safecat(ptr noundef nonnull %0, i64 noundef 29, i64 noundef %.0, ptr noundef %i.ad) #28 ; 4 uses
  %i.af = icmp ult i64 %i.ae, 28
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = add nuw nsw i64 %i.ae, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  store i8 32, ptr %i.ah, align 1, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi i64 [ %i.ag, %bb.k ], [ %i.ae, %bb.j ]
  %i.ai = load i16, ptr %1, align 2, !tbaa !116
  %i.aj = zext i16 %i.ai to i64
  %i.ak = call ptr @png_format_number(ptr noundef nonnull %i.a, ptr noundef nonnull %i.t, i32 noundef 1, i64 noundef %i.aj) #28
  %i.al = call i64 @png_safecat(ptr noundef nonnull %0, i64 noundef 29, i64 noundef %.1, ptr noundef %i.ak) #28 ; 4 uses
  %i.am = icmp ult i64 %i.al, 28
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = add nuw nsw i64 %i.al, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  store i8 32, ptr %i.ao, align 1, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
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
  br i1 %niter.ncmp.1, label %.lr.ph.epil.preheader, label %.lr.ph, !llvm.loop !122

.lr.ph.epil.preheader:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod.not)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.split, %bb.a
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
  %i.a = alloca [5 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = lshr i32 %1, 24
  %i.c = trunc nuw i32 %i.b to i8
  store i8 %i.c, ptr %i.a, align 1, !tbaa !28
  %i.d = lshr i32 %1, 16
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.e, ptr %i.f, align 1, !tbaa !28
  %i.g = lshr i32 %1, 8
  %i.h = trunc i32 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.h, ptr %i.i, align 1, !tbaa !28
  %i.j = trunc i32 %1 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.j, ptr %i.k, align 1, !tbaa !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.l = icmp eq ptr %0, null
  br i1 %i.l, label %png_handle_as_unknown.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49, !alias.scope !129 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %png_handle_as_unknown.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50, !alias.scope !129 ; 2 uses
  %i.r = mul i32 %i.n, 5
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.0.i = phi ptr [ %i.t, %bb.c ], [ %i.u, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.0.i, i64 -5 ; 3 uses
  %i.v = load i32, ptr %i.a, align 1
  %i.w = load i32, ptr %i.u, align 1
  %i.x = icmp ne i32 %i.v, %i.w
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %.0.i, i64 -1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28, !noalias !129
  %i.ac = zext i8 %i.ab to i32
  br label %png_handle_as_unknown.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp ugt ptr %i.u, %i.q
  br i1 %i.ad, label %bb.d, label %png_handle_as_unknown.exit, !llvm.loop !0

png_handle_as_unknown.exit:                       ; preds = %bb.f, %bb.a, %bb.b, %bb.e
  %.013.i = phi i32 [ 0, %bb.a ], [ %i.ac, %bb.e ], [ 0, %bb.b ], [ 0, %bb.f ]
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
end_hunk_0
