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
  %switch.load = load i16, ptr %switch.gep, align 2 ; 3 uses
  %switch.shiftamt = shl nuw nsw i32 %i.d, 3
  %switch.downshift = lshr i32 17913343, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8 ; 2 uses
  %2 = and i16 %switch.load, -2
  %unroll_iter = zext i16 %2 to i64
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
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.o = add i8 %i.j, %switch.masked              ; 4 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !122

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %3 = trunc i16 %switch.load to i1
  br i1 %3, label %.lr.ph.epil.preheader, label %.loopexit

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod26 = trunc i16 %switch.load to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.p = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv.next.1 ; 3 uses
  store i8 %i.o, ptr %i.p, align 1, !tbaa !124
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.o, ptr %i.q, align 1, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i8 %i.o, ptr %i.r, align 1, !tbaa !126
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.split, %bb.a
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
end_hunk_0
begin_hunk_1_@png_check_fp_number:bb.a
    i32 4, label %bb.b
    i32 16, label %bb.d
    i32 8, label %bb.h
    i32 32, label %bb.i
    i32 9, label %bb.k
    i32 33, label %bb.l
    i32 6, label %bb.n
    i32 10, label %bb.p
  ]

bb.b:                                             ; preds = %switch.lookup
  %i.k = and i32 %.03950, 60
  %.not46 = icmp eq i32 %i.k, 0
  br i1 %.not46, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = or i32 %.03950, %switch.ext
  br label %bb.q

bb.d:                                             ; preds = %switch.lookup
  %i.m = and i32 %.03950, 16
  %.not44 = icmp eq i32 %i.m, 0
  br i1 %.not44, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %.03950, 8
  %.not45 = icmp eq i32 %i.n, 0
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = or i32 %.03950, %switch.ext
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.p = and i32 %.03950, 448
  %i.q = or i32 %i.p, %switch.ext
  %i.r = or disjoint i32 %i.q, 1
  br label %bb.q

bb.h:                                             ; preds = %switch.lookup
  %i.s = and i32 %.03950, 16
  %.not43 = icmp eq i32 %i.s, 0
  %i.t = and i32 %.03950, 384
  %i.u = or disjoint i32 %i.t, 17
  %.140 = select i1 %.not43, i32 %.03950, i32 %i.u
  %i.v = or i32 %.140, %switch.ext
  %i.w = or i32 %i.v, 64
  br label %bb.q

bb.i:                                             ; preds = %switch.lookup
  %i.x = and i32 %.03950, 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = and i32 %.03950, 448
  %i.aa = or disjoint i32 %i.z, 2
  br label %bb.q

bb.k:                                             ; preds = %switch.lookup
  %i.ab = or i32 %.03950, %switch.ext
  %i.ac = or i32 %i.ab, 64
  br label %bb.q

bb.l:                                             ; preds = %switch.lookup
  %i.ad = and i32 %.03950, 8
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = and i32 %.03950, 448
  %i.ag = or disjoint i32 %i.af, 2
  br label %bb.q

bb.n:                                             ; preds = %switch.lookup
  %i.ah = and i32 %.03950, 60
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ai = or disjoint i32 %.03950, 4
  br label %bb.q

bb.p:                                             ; preds = %switch.lookup
  %i.aj = or i32 %.03950, 72
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.p, %bb.f, %bb.g
  %.241 = phi i32 [ %i.l, %bb.c ], [ %i.o, %bb.f ], [ %i.r, %bb.g ], [ %i.w, %bb.h ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.ag, %bb.m ], [ %i.ai, %bb.o ], [ %i.aj, %bb.p ] ; 2 uses
  %i.ak = add i64 %.03851, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %1
  br i1 %exitcond.not, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.q, %bb.l, %bb.n, %bb.b, %bb.d, %bb.i, %switch.lookup, %.lr.ph, %switch.hole_check, %bb.a
  %.039.lcssa = phi i32 [ %i.a, %bb.a ], [ %.03950, %switch.hole_check ], [ %.03950, %switch.lookup ], [ %.03950, %bb.i ], [ %.03950, %bb.d ], [ %.03950, %bb.b ], [ %.03950, %.lr.ph ], [ %.03950, %bb.n ], [ %.03950, %bb.l ], [ %.241, %bb.q ] ; 2 uses
  %.038.lcssa = phi i64 [ %i.b, %bb.a ], [ %.03851, %switch.hole_check ], [ %.03851, %switch.lookup ], [ %.03851, %bb.i ], [ %.03851, %bb.d ], [ %.03851, %bb.b ], [ %.03851, %.lr.ph ], [ %.03851, %bb.n ], [ %.03851, %bb.l ], [ %1, %bb.q ]
  store i32 %.039.lcssa, ptr %2, align 4, !tbaa !34
  store i64 %.038.lcssa, ptr %3, align 8, !tbaa !33
  %i.al = lshr i32 %.039.lcssa, 3
  %.lobit = and i32 %i.al, 1
  ret i32 %.lobit
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @png_check_fp_string(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.c = call i32 @png_check_fp_number(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.e = icmp eq i64 %i.d, %1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !28
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.0 = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @png_ascii_from_fp(ptr noalias noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2, double noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 28 uses
  %i.b = alloca [10 x i8], align 1                ; 17 uses
  %i.c = icmp eq i32 %4, 0
  %i.d = tail call i32 @llvm.umin.i32(i32 %4, i32 16)
  %spec.store.select7 = select i1 %i.c, i32 15, i32 %i.d ; 3 uses
  %i.e = add nuw nsw i32 %spec.store.select7, 5
  %i.f = zext nneg i32 %i.e to i64
  %.not = icmp ult i64 %2, %i.f
  br i1 %.not, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp olt double %3, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = fneg double %3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 45, ptr %1, align 1, !tbaa !28
  %i.j = add i64 %2, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0134 = phi ptr [ %i.i, %bb.c ], [ %1, %bb.b ] ; 4 uses
  %.0127 = phi i64 [ %i.j, %bb.c ], [ %2, %bb.b ]
  %.0123 = phi double [ %i.h, %bb.c ], [ %3, %bb.b ] ; 6 uses
  %i.k = fcmp oge double %.0123, f0x0010000000000000 ; 2 uses
  %i.l = fcmp ole double %.0123, f0x7FEFFFFFFFFFFFFF
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.e, label %bb.ap

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.m = call double @frexp(double noundef %.0123, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !34
  %i.o = mul nsw i32 %i.n, 77
  %i.p = ashr i32 %i.o, 8                         ; 7 uses
  %i.q = icmp sgt i32 %i.p, -1                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp samesign ult i32 %i.p, -307
  br i1 %i.r, label %.lr.ph.preheader, label %.thread.i

.thread.i:                                        ; preds = %bb.f
  %i.s = sub nsw i32 0, %i.p
  br label %.preheader.i.preheader

bb.g:                                             ; preds = %bb.e
  %.not24.i = icmp eq i32 %i.p, 0
  br i1 %.not24.i, label %png_pow10.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.g, %.thread.i
  %.117.i.ph = phi i32 [ %i.p, %bb.g ], [ %i.s, %.thread.i ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.117.i = phi i32 [ %i.v, %.preheader.i ], [ %.117.i.ph, %.preheader.i.preheader ] ; 2 uses
  %.014.i = phi double [ %.1.i, %.preheader.i ], [ 1.000000e+00, %.preheader.i.preheader ] ; 2 uses
  %.0.i = phi double [ %i.u, %.preheader.i ], [ 1.000000e+01, %.preheader.i.preheader ] ; 3 uses
  %5 = trunc i32 %.117.i to i1
  %i.t = fmul double %.014.i, %.0.i
  %.1.i = select i1 %5, double %i.t, double %.014.i ; 3 uses
  %i.u = fmul double %.0.i, %.0.i
  %i.v = lshr i32 %.117.i, 1                      ; 2 uses
  %.not22.i = icmp eq i32 %i.v, 0
  br i1 %.not22.i, label %bb.h, label %.preheader.i, !llvm.loop !152

bb.h:                                             ; preds = %.preheader.i
  %i.w = fdiv double 1.000000e+00, %.1.i
  %.2.i = select i1 %i.q, double %.1.i, double %i.w
  br label %png_pow10.exit

png_pow10.exit:                                   ; preds = %bb.g, %bb.h
  %.018.i = phi double [ 1.000000e+00, %bb.g ], [ %.2.i, %bb.h ] ; 4 uses
  %i.x = fcmp olt double %.018.i, f0x0010000000000000
  %i.y = fcmp olt double %.018.i, %.0123
  %i.z = or i1 %i.x, %i.y
  br i1 %i.z, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.f, %png_pow10.exit
  %.0120212.ph = phi double [ 0.000000e+00, %bb.f ], [ %.018.i, %png_pow10.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %png_pow10.exit185.thread
  %.0120212 = phi double [ %.018.i183187, %png_pow10.exit185.thread ], [ %.0120212.ph, %.lr.ph.preheader ]
  %i.aa = phi i32 [ %i.ab, %png_pow10.exit185.thread ], [ %i.p, %.lr.ph.preheader ] ; 5 uses
  %i.ab = add nsw i32 %i.aa, 1                    ; 4 uses
  %i.ac = icmp sgt i32 %i.aa, -2                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ad = icmp samesign ult i32 %i.aa, -308
  br i1 %i.ad, label %png_pow10.exit185.thread, label %.thread.i172

.thread.i172:                                     ; preds = %bb.i
  %i.ae = xor i32 %i.aa, -1
  br label %.preheader.i175.preheader

bb.j:                                             ; preds = %.lr.ph
  %.not24.i184 = icmp eq i32 %i.ab, 0
  br i1 %.not24.i184, label %png_pow10.exit185.thread, label %.preheader.i175.preheader

.preheader.i175.preheader:                        ; preds = %bb.j, %.thread.i172
  %.117.i176.ph = phi i32 [ %i.ab, %bb.j ], [ %i.ae, %.thread.i172 ]
  br label %.preheader.i175

.preheader.i175:                                  ; preds = %.preheader.i175.preheader, %.preheader.i175
  %.117.i176 = phi i32 [ %i.ah, %.preheader.i175 ], [ %.117.i176.ph, %.preheader.i175.preheader ] ; 2 uses
  %.014.i177 = phi double [ %.1.i180, %.preheader.i175 ], [ 1.000000e+00, %.preheader.i175.preheader ] ; 2 uses
  %.0.i178 = phi double [ %i.ag, %.preheader.i175 ], [ 1.000000e+01, %.preheader.i175.preheader ] ; 3 uses
  %6 = trunc i32 %.117.i176 to i1
  %i.af = fmul double %.014.i177, %.0.i178
  %.1.i180 = select i1 %6, double %i.af, double %.014.i177 ; 3 uses
  %i.ag = fmul double %.0.i178, %.0.i178
  %i.ah = lshr i32 %.117.i176, 1                  ; 2 uses
  %.not22.i181 = icmp eq i32 %i.ah, 0
  br i1 %.not22.i181, label %png_pow10.exit185, label %.preheader.i175, !llvm.loop !152

png_pow10.exit185:                                ; preds = %.preheader.i175
  %i.ai = fdiv double 1.000000e+00, %.1.i180
  %.2.i182 = select i1 %i.ac, double %.1.i180, double %i.ai ; 2 uses
  %i.aj = fcmp ugt double %.2.i182, f0x7FEFFFFFFFFFFFFF
  br i1 %i.aj, label %.thread, label %png_pow10.exit185.thread

png_pow10.exit185.thread:                         ; preds = %bb.j, %bb.i, %png_pow10.exit185
  %.018.i183187 = phi double [ %.2.i182, %png_pow10.exit185 ], [ 1.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 4 uses
  %i.ak = fcmp olt double %.018.i183187, f0x0010000000000000
  %i.al = fcmp olt double %.018.i183187, %.0123
  %i.am = or i1 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %.thread

.thread:                                          ; preds = %png_pow10.exit185.thread, %png_pow10.exit185, %png_pow10.exit
  %.lcssa211 = phi i32 [ %i.p, %png_pow10.exit ], [ %i.aa, %png_pow10.exit185 ], [ %i.ab, %png_pow10.exit185.thread ] ; 2 uses
  %.0120.lcssa = phi double [ %.018.i, %png_pow10.exit ], [ %.0120212, %png_pow10.exit185 ], [ %.018.i183187, %png_pow10.exit185.thread ]
  %i.an = fdiv double %.0123, %.0120.lcssa        ; 3 uses
  %i.ao = fcmp ult double %i.an, 1.000000e+00
  br i1 %i.ao, label %._crit_edge, label %.lr.ph219

.lr.ph219:                                        ; preds = %.thread, %.lr.ph219
  %.1124218 = phi double [ %i.aq, %.lr.ph219 ], [ %i.an, %.thread ]
  %i.ap = phi i32 [ %i.ar, %.lr.ph219 ], [ %.lcssa211, %.thread ]
  %i.aq = fdiv double %.1124218, 1.000000e+01     ; 3 uses
  %i.ar = add nsw i32 %i.ap, 1                    ; 2 uses
  %i.as = fcmp ult double %i.aq, 1.000000e+00
  br i1 %i.as, label %._crit_edge, label %.lr.ph219, !llvm.loop !153

._crit_edge:                                      ; preds = %.lr.ph219, %.thread
  %.lcssa217 = phi i32 [ %.lcssa211, %.thread ], [ %i.ar, %.lr.ph219 ] ; 3 uses
  %.1124.lcssa = phi double [ %i.an, %.thread ], [ %i.aq, %.lr.ph219 ]
  store i32 %.lcssa217, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %or.cond3 = icmp ugt i32 %.lcssa217, -3
  br i1 %or.cond3, label %bb.k, label %.preheader352

bb.k:                                             ; preds = %._crit_edge
  %i.at = sub nsw i32 0, %.lcssa217
  store i32 0, ptr %i.a, align 4, !tbaa !34
  br label %.preheader352

.preheader352:                                    ; preds = %._crit_edge, %bb.k
  %.0108.ph = phi i32 [ %i.at, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.preheader352, %bb.aj
  %.1135 = phi ptr [ %.12146, %bb.aj ], [ %.0134, %.preheader352 ] ; 5 uses
  %.1128 = phi i64 [ %.13, %bb.aj ], [ %.0127, %.preheader352 ] ; 5 uses
  %.2125 = phi double [ %.3126200, %bb.aj ], [ %.1124.lcssa, %.preheader352 ]
  %.1113 = phi i32 [ %.5117, %bb.aj ], [ %.0108.ph, %.preheader352 ] ; 4 uses
  %.0108 = phi i32 [ %.3111, %bb.aj ], [ %.0108.ph, %.preheader352 ] ; 6 uses
  %.0105 = phi i32 [ %.4, %bb.aj ], [ 0, %.preheader352 ] ; 6 uses
  %i.au = fmul double %.2125, 1.000000e+01        ; 2 uses
  %i.av = add i32 %.1113, 1                       ; 2 uses
  %i.aw = add i32 %i.av, %.0105
  %i.ax = add i32 %.0108, %spec.store.select7
  %i.ay = icmp ult i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = tail call { double, double } @llvm.modf.f64(double %i.au) ; 2 uses
  %i.ba = extractvalue { double, double } %i.az, 0
  %i.bb = extractvalue { double, double } %i.az, 1
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  %i.bc = fadd double %i.au, 5.000000e-01
  %i.bd = tail call double @llvm.floor.f64(double %i.bc) ; 2 uses
  %i.be = fcmp ogt double %i.bd, 9.000000e+00
  br i1 %i.be, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  %.not162 = icmp eq i32 %.1113, 0
  %.not287 = icmp eq i32 %.0105, 0                ; 2 uses
  br i1 %.not162, label %.preheader210, label %bb.p

.preheader210:                                    ; preds = %bb.o
  %.promoted222 = load i32, ptr %i.a, align 4     ; 3 uses
  br i1 %.not287, label %._crit_edge227.thread, label %.lr.ph226

bb.p:                                             ; preds = %bb.o
  %i.bf = add i32 %.1113, -1
  %i.bg = sext i1 %.not287 to i32
  %spec.select = add i32 %.0108, %i.bg
  br label %.thread190

.lr.ph226:                                        ; preds = %.preheader210, %bb.t
  %i.bh = phi i32 [ %i.bq, %bb.t ], [ %.promoted222, %.preheader210 ]
  %.1106225 = phi i32 [ %i.bs, %bb.t ], [ %.0105, %.preheader210 ]
  %.2129224 = phi i64 [ %.3130, %bb.t ], [ %.1128, %.preheader210 ] ; 3 uses
  %.2136223 = phi ptr [ %.3137, %bb.t ], [ %.1135, %.preheader210 ] ; 2 uses
  %i.bi = phi i32 [ %i.br, %bb.t ], [ %.promoted222, %.preheader210 ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.2136223, i64 -1 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28  ; 3 uses
  %.not163 = icmp eq i32 %i.bi, -1
  br i1 %.not163, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph226
  %i.bl = add nuw nsw i32 %i.bi, 1
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph226
  %i.bm = icmp eq i8 %i.bk, 46
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds i8, ptr %.2136223, i64 -2 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.bp = add i64 %.2129224, 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.s
  %.sink = phi i32 [ 1, %bb.s ], [ %i.bl, %bb.q ] ; 3 uses
  %.3137.ph = phi ptr [ %i.bn, %bb.s ], [ %i.bj, %bb.q ]
  %.3130.ph = phi i64 [ %i.bp, %bb.s ], [ %.2129224, %bb.q ]
  %.0102.in.ph = phi i8 [ %i.bo, %bb.s ], [ %i.bk, %bb.q ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !34
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r
  %i.bq = phi i32 [ %i.bh, %bb.r ], [ %.sink, %.sink.split ] ; 2 uses
  %i.br = phi i32 [ -1, %bb.r ], [ %.sink, %.sink.split ]
  %.3137 = phi ptr [ %i.bj, %bb.r ], [ %.3137.ph, %.sink.split ] ; 3 uses
  %.3130 = phi i64 [ %.2129224, %bb.r ], [ %.3130.ph, %.sink.split ] ; 3 uses
  %.0102.in = phi i8 [ %i.bk, %bb.r ], [ %.0102.in.ph, %.sink.split ] ; 2 uses
  %i.bs = add i32 %.1106225, -1                   ; 4 uses
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = icmp sgt i8 %.0102.in, 56               ; 2 uses
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph226, label %._crit_edge227, !llvm.loop !154

._crit_edge227:                                   ; preds = %bb.t
  %.0102 = sext i8 %.0102.in to i32
  %i.bw = add nsw i32 %.0102, -47
  %i.bx = sitofp i32 %i.bw to double
  br i1 %i.bu, label %._crit_edge227.thread, label %bb.x

._crit_edge227.thread:                            ; preds = %.preheader210, %._crit_edge227
  %.1106.lcssa297 = phi i32 [ %i.bs, %._crit_edge227 ], [ 0, %.preheader210 ] ; 2 uses
  %.2129.lcssa296 = phi i64 [ %.3130, %._crit_edge227 ], [ %.1128, %.preheader210 ] ; 3 uses
  %.2136.lcssa295 = phi ptr [ %.3137, %._crit_edge227 ], [ %.1135, %.preheader210 ] ; 2 uses
  %i.by = phi i32 [ %i.bq, %._crit_edge227 ], [ %.promoted222, %.preheader210 ] ; 2 uses
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %bb.u, label %bb.w

bb.u:                                             ; preds = %._crit_edge227.thread
  %i.ca = getelementptr inbounds i8, ptr %.2136.lcssa295, i64 -1 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !28
  %i.cc = icmp eq i8 %i.cb, 46
  br i1 %i.cc, label %bb.v, label %._crit_edge238

bb.v:                                             ; preds = %bb.u
  %i.cd = add i64 %.2129.lcssa296, 1
  br label %._crit_edge238.sink.split

bb.w:                                             ; preds = %._crit_edge227.thread
  %i.ce = add nuw nsw i32 %i.by, 1
  br label %._crit_edge238.sink.split

bb.x:                                             ; preds = %bb.n, %._crit_edge227, %bb.m
  %.6140 = phi ptr [ %.1135, %bb.m ], [ %.1135, %bb.n ], [ %.3137, %._crit_edge227 ] ; 2 uses
  %.7 = phi i64 [ %.1128, %bb.m ], [ %.1128, %bb.n ], [ %.3130, %._crit_edge227 ] ; 2 uses
  %.3126 = phi double [ %i.ba, %bb.m ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %._crit_edge227 ] ; 2 uses
  %.3 = phi i32 [ %.0105, %bb.m ], [ %.0105, %bb.n ], [ %i.bs, %._crit_edge227 ] ; 3 uses
  %.2 = phi double [ %i.bb, %bb.m ], [ %i.bd, %bb.n ], [ %i.bx, %._crit_edge227 ] ; 2 uses
  %i.cf = fcmp oeq double %.2, 0.000000e+00
  br i1 %i.cf, label %bb.y, label %.thread190

bb.y:                                             ; preds = %bb.x
  %i.cg = icmp eq i32 %.3, 0
  %i.ch = zext i1 %i.cg to i32
  %spec.select170 = add i32 %.0108, %i.ch
  br label %bb.aj

.thread190:                                       ; preds = %bb.p, %bb.x
  %.2205 = phi double [ %.2, %bb.x ], [ 1.000000e+00, %bb.p ] ; 3 uses
  %.3204 = phi i32 [ %.3, %bb.x ], [ %.0105, %bb.p ] ; 3 uses
  %.2110203 = phi i32 [ %.0108, %bb.x ], [ %spec.select, %bb.p ] ; 3 uses
  %.3115202 = phi i32 [ %.1113, %bb.x ], [ %i.bf, %bb.p ] ; 7 uses
  %.3126201 = phi double [ %.3126, %bb.x ], [ 0.000000e+00, %bb.p ] ; 3 uses
  %.7199 = phi i64 [ %.7, %bb.x ], [ %.1128, %bb.p ] ; 5 uses
  %.6140198 = phi ptr [ %.6140, %bb.x ], [ %.1135, %bb.p ] ; 6 uses
  %.not164233 = icmp eq i32 %.3115202, 0
  br i1 %.not164233, label %._crit_edge238, label %.lr.ph237.preheader

.lr.ph237.preheader:                              ; preds = %.thread190
  %7 = trunc i32 %.3115202 to i1
  br i1 %7, label %.lr.ph237.prol, label %.lr.ph237.prol.loopexit

.lr.ph237.prol:                                   ; preds = %.lr.ph237.preheader
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.ci, label %bb.aa [
    i32 -1, label %.lr.ph237.prol.loopexit.unr-lcssa
    i32 0, label %bb.z
  ]

bb.z:                                             ; preds = %.lr.ph237.prol
  %i.cj = getelementptr inbounds nuw i8, ptr %.6140198, i64 1
  store i8 46, ptr %.6140198, align 1, !tbaa !28
  %i.ck = add i64 %.7199, -1
  %.pre.prol = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph237.prol
  %i.cl = phi i32 [ %.pre.prol, %bb.z ], [ %i.ci, %.lr.ph237.prol ]
  %.8142.prol = phi ptr [ %i.cj, %bb.z ], [ %.6140198, %.lr.ph237.prol ]
  %.9.prol = phi i64 [ %i.ck, %bb.z ], [ %.7199, %.lr.ph237.prol ]
  %i.cm = add nsw i32 %i.cl, -1
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !34
  br label %.lr.ph237.prol.loopexit.unr-lcssa

.lr.ph237.prol.loopexit.unr-lcssa:                ; preds = %bb.aa, %.lr.ph237.prol
  %.9143.prol = phi ptr [ %.8142.prol, %bb.aa ], [ %.6140198, %.lr.ph237.prol ] ; 2 uses
  %.10.prol = phi i64 [ %.9.prol, %bb.aa ], [ %.7199, %.lr.ph237.prol ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.9143.prol, i64 1 ; 2 uses
  store i8 48, ptr %.9143.prol, align 1, !tbaa !28
  %i.co = add nsw i32 %.3115202, -1
  br label %.lr.ph237.prol.loopexit

.lr.ph237.prol.loopexit:                          ; preds = %.lr.ph237.prol.loopexit.unr-lcssa, %.lr.ph237.preheader
  %.10.lcssa.unr = phi i64 [ poison, %.lr.ph237.preheader ], [ %.10.prol, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.lcssa356.unr = phi ptr [ poison, %.lr.ph237.preheader ], [ %i.cn, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.4116236.unr = phi i32 [ %.3115202, %.lr.ph237.preheader ], [ %i.co, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.8235.unr = phi i64 [ %.7199, %.lr.ph237.preheader ], [ %.10.prol, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %.7141234.unr = phi ptr [ %.6140198, %.lr.ph237.preheader ], [ %i.cn, %.lr.ph237.prol.loopexit.unr-lcssa ]
  %i.cp = icmp eq i32 %.3115202, 1
  br i1 %i.cp, label %._crit_edge238, label %.lr.ph237

.lr.ph237:                                        ; preds = %.lr.ph237.prol.loopexit, %bb.af
  %.4116236 = phi i32 [ %i.dc, %bb.af ], [ %.4116236.unr, %.lr.ph237.prol.loopexit ]
  %.8235 = phi i64 [ %.10.1, %bb.af ], [ %.8235.unr, %.lr.ph237.prol.loopexit ] ; 3 uses
  %.7141234 = phi ptr [ %i.db, %bb.af ], [ %.7141234.unr, %.lr.ph237.prol.loopexit ] ; 4 uses
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.cq, label %bb.ac [
    i32 -1, label %.lr.ph237.1
    i32 0, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph237
  %i.cr = getelementptr inbounds nuw i8, ptr %.7141234, i64 1
  store i8 46, ptr %.7141234, align 1, !tbaa !28
  %i.cs = add i64 %.8235, -1
  %.pre = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph237, %bb.ab
  %i.ct = phi i32 [ %.pre, %bb.ab ], [ %i.cq, %.lr.ph237 ]
  %.8142 = phi ptr [ %i.cr, %bb.ab ], [ %.7141234, %.lr.ph237 ]
  %.9 = phi i64 [ %i.cs, %bb.ab ], [ %.8235, %.lr.ph237 ]
  %i.cu = add nsw i32 %i.ct, -1
  store i32 %i.cu, ptr %i.a, align 4, !tbaa !34
  br label %.lr.ph237.1

.lr.ph237.1:                                      ; preds = %.lr.ph237, %bb.ac
  %.9143 = phi ptr [ %.8142, %bb.ac ], [ %.7141234, %.lr.ph237 ] ; 3 uses
  %.10 = phi i64 [ %.9, %bb.ac ], [ %.8235, %.lr.ph237 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.9143, i64 1 ; 3 uses
  store i8 48, ptr %.9143, align 1, !tbaa !28
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.cw, label %bb.ae [
    i32 -1, label %bb.af
    i32 0, label %bb.ad
  ]

bb.ad:                                            ; preds = %.lr.ph237.1
  %i.cx = getelementptr inbounds nuw i8, ptr %.9143, i64 2
  store i8 46, ptr %i.cv, align 1, !tbaa !28
  %i.cy = add i64 %.10, -1
  %.pre.1 = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph237.1
  %i.cz = phi i32 [ %.pre.1, %bb.ad ], [ %i.cw, %.lr.ph237.1 ]
  %.8142.1 = phi ptr [ %i.cx, %bb.ad ], [ %i.cv, %.lr.ph237.1 ]
  %.9.1 = phi i64 [ %i.cy, %bb.ad ], [ %.10, %.lr.ph237.1 ]
  %i.da = add nsw i32 %i.cz, -1
  store i32 %i.da, ptr %i.a, align 4, !tbaa !34
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph237.1
  %.9143.1 = phi ptr [ %.8142.1, %bb.ae ], [ %i.cv, %.lr.ph237.1 ] ; 2 uses
  %.10.1 = phi i64 [ %.9.1, %bb.ae ], [ %.10, %.lr.ph237.1 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.9143.1, i64 1 ; 2 uses
  store i8 48, ptr %.9143.1, align 1, !tbaa !28
  %i.dc = add i32 %.4116236, -2                   ; 2 uses
  %.not164.1 = icmp eq i32 %i.dc, 0
  br i1 %.not164.1, label %._crit_edge238, label %.lr.ph237, !llvm.loop !155

._crit_edge238.sink.split:                        ; preds = %bb.w, %bb.v
  %.sink324 = phi i32 [ 1, %bb.v ], [ %i.ce, %bb.w ]
  %.7141.lcssa.ph = phi ptr [ %i.ca, %bb.v ], [ %.2136.lcssa295, %bb.w ]
  %.8.lcssa.ph = phi i64 [ %i.cd, %bb.v ], [ %.2129.lcssa296, %bb.w ]
  store i32 %.sink324, ptr %i.a, align 4, !tbaa !34
  br label %._crit_edge238

._crit_edge238:                                   ; preds = %.lr.ph237.prol.loopexit, %bb.af, %._crit_edge238.sink.split, %bb.u, %.thread190
  %.3126201310 = phi double [ %.3126201, %.thread190 ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %._crit_edge238.sink.split ], [ %.3126201, %bb.af ], [ %.3126201, %.lr.ph237.prol.loopexit ]
  %.3115202309 = phi i32 [ 0, %.thread190 ], [ 0, %bb.u ], [ 0, %._crit_edge238.sink.split ], [ %.3115202, %bb.af ], [ %.3115202, %.lr.ph237.prol.loopexit ]
  %.2110203308 = phi i32 [ %.2110203, %.thread190 ], [ %.0108, %bb.u ], [ %.0108, %._crit_edge238.sink.split ], [ %.2110203, %bb.af ], [ %.2110203, %.lr.ph237.prol.loopexit ]
  %.3204307 = phi i32 [ %.3204, %.thread190 ], [ %.1106.lcssa297, %bb.u ], [ %.1106.lcssa297, %._crit_edge238.sink.split ], [ %.3204, %bb.af ], [ %.3204, %.lr.ph237.prol.loopexit ]
  %.2205306 = phi double [ %.2205, %.thread190 ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %._crit_edge238.sink.split ], [ %.2205, %bb.af ], [ %.2205, %.lr.ph237.prol.loopexit ]
  %.7141.lcssa = phi ptr [ %.6140198, %.thread190 ], [ %i.ca, %bb.u ], [ %.7141.lcssa.ph, %._crit_edge238.sink.split ], [ %.lcssa356.unr, %.lr.ph237.prol.loopexit ], [ %i.db, %bb.af ] ; 4 uses
  %.8.lcssa = phi i64 [ %.7199, %.thread190 ], [ %.2129.lcssa296, %bb.u ], [ %.8.lcssa.ph, %._crit_edge238.sink.split ], [ %.10.lcssa.unr, %.lr.ph237.prol.loopexit ], [ %.10.1, %bb.af ] ; 3 uses
  %i.dd = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  switch i32 %i.dd, label %bb.ah [
    i32 -1, label %bb.ai
    i32 0, label %bb.ag
  ]

bb.ag:                                            ; preds = %._crit_edge238
  %i.de = getelementptr inbounds nuw i8, ptr %.7141.lcssa, i64 1
  store i8 46, ptr %.7141.lcssa, align 1, !tbaa !28
  %i.df = add i64 %.8.lcssa, -1
  %.pre268 = load i32, ptr %i.a, align 4, !tbaa !34
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge238, %bb.ag
  %i.dg = phi i32 [ %.pre268, %bb.ag ], [ %i.dd, %._crit_edge238 ]
  %.10144 = phi ptr [ %i.de, %bb.ag ], [ %.7141.lcssa, %._crit_edge238 ]
  %.11 = phi i64 [ %i.df, %bb.ag ], [ %.8.lcssa, %._crit_edge238 ]
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.a, align 4, !tbaa !34
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge238, %bb.ah
  %.11145 = phi ptr [ %.10144, %bb.ah ], [ %.7141.lcssa, %._crit_edge238 ] ; 2 uses
  %.12 = phi i64 [ %.11, %bb.ah ], [ %.8.lcssa, %._crit_edge238 ]
  %i.di = fptosi double %.2205306 to i32
  %i.dj = trunc i32 %i.di to i8
  %i.dk = add i8 %i.dj, 48
  %i.dl = getelementptr inbounds nuw i8, ptr %.11145, i64 1
  store i8 %i.dk, ptr %.11145, align 1, !tbaa !28
  %i.dm = add i32 %.3204307, 1
  %i.dn = sub i32 %i.dm, %.2110203308
  %i.do = add i32 %i.dn, %.3115202309
  br label %bb.aj

bb.aj:                                            ; preds = %bb.y, %bb.ai
  %.3126200 = phi double [ %.3126201310, %bb.ai ], [ %.3126, %bb.y ] ; 2 uses
  %.12146 = phi ptr [ %i.dl, %bb.ai ], [ %.6140, %bb.y ] ; 6 uses
  %.13 = phi i64 [ %.12, %bb.ai ], [ %.7, %bb.y ] ; 2 uses
  %.5117 = phi i32 [ 0, %bb.ai ], [ %i.av, %bb.y ] ; 2 uses
  %.3111 = phi i32 [ 0, %bb.ai ], [ %spec.select170, %bb.y ] ; 2 uses
  %.4 = phi i32 [ %i.do, %bb.ai ], [ %.3, %bb.y ] ; 3 uses
  %i.dp = add i32 %.4, %.5117
  %i.dq = add i32 %.3111, %spec.store.select7
  %i.dr = icmp ult i32 %i.dp, %i.dq
  %i.ds = fcmp ogt double %.3126200, f0x0010000000000000
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %bb.l, label %bb.ak, !llvm.loop !156

bb.ak:                                            ; preds = %bb.aj
  %i.du = load i32, ptr %i.a, align 4, !tbaa !34  ; 3 uses
  %i.dv = add i32 %i.du, 1
  %or.cond5 = icmp ult i32 %i.dv, 4
  br i1 %or.cond5, label %.preheader, label %bb.al

.preheader:                                       ; preds = %bb.ak
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %i.a, align 4, !tbaa !34
  %i.dx = icmp sgt i32 %i.du, 0
  br i1 %i.dx, label %.lr.ph255, label %.thread207

.lr.ph255:                                        ; preds = %.preheader, %.lr.ph255
  %.13147254 = phi ptr [ %i.dy, %.lr.ph255 ], [ %.12146, %.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.13147254, i64 1 ; 2 uses
  store i8 48, ptr %.13147254, align 1, !tbaa !28
  %.pr = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.dz = add nsw i32 %.pr, -1
  store i32 %i.dz, ptr %i.a, align 4, !tbaa !34
  %i.ea = icmp sgt i32 %.pr, 0
  br i1 %i.ea, label %.lr.ph255, label %.thread207, !llvm.loop !157

bb.al:                                            ; preds = %bb.ak
  %i.eb = zext i32 %.4 to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %.12146, i64 1 ; 2 uses
  store i8 69, ptr %.12146, align 1, !tbaa !28
  %i.ed = xor i64 %i.eb, -1
  %i.ee = add i64 %.13, %i.ed                     ; 2 uses
  %i.ef = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %.12146, i64 2
  store i8 45, ptr %i.ec, align 1, !tbaa !28
  %i.ei = add i64 %i.ee, -1
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !34
end_hunk_1
begin_hunk_2_@png_build_16bit_table:bb.a
  %i.bl = trunc <8 x i32> %i.bj to <8 x i16>
  %i.bm = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store <8 x i16> %i.bk, ptr %i.bm, align 2, !tbaa !36
  store <8 x i16> %i.bl, ptr %i.bn, align 2, !tbaa !36
  %i.bo = add <8 x i32> %i.u, %broadcast.splat
  %i.bp = add <8 x i32> %i.v, %broadcast.splat
  %i.bq = trunc <8 x i32> %i.bo to <8 x i16>
  %i.br = trunc <8 x i32> %i.bp to <8 x i16>
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  store <8 x i16> %i.bq, ptr %i.bs, align 2, !tbaa !36
  store <8 x i16> %i.br, ptr %i.bt, align 2, !tbaa !36
  %i.bu = add <8 x i32> %i.w, %broadcast.splat
  %i.bv = add <8 x i32> %i.x, %broadcast.splat
  %i.bw = trunc <8 x i32> %i.bu to <8 x i16>
  %i.bx = trunc <8 x i32> %i.bv to <8 x i16>
  %i.by = getelementptr inbounds nuw i8, ptr %i.au, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  store <8 x i16> %i.bw, ptr %i.by, align 2, !tbaa !36
  store <8 x i16> %i.bx, ptr %i.bz, align 2, !tbaa !36
  %i.ca = add <8 x i32> %i.y, %broadcast.splat
  %i.cb = add <8 x i32> %i.z, %broadcast.splat
  %i.cc = trunc <8 x i32> %i.ca to <8 x i16>
  %i.cd = trunc <8 x i32> %i.cb to <8 x i16>
  %i.ce = getelementptr inbounds nuw i8, ptr %i.au, i64 160
  %i.cf = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  store <8 x i16> %i.cc, ptr %i.ce, align 2, !tbaa !36
  store <8 x i16> %i.cd, ptr %i.cf, align 2, !tbaa !36
  %i.cg = add <8 x i32> %i.aa, %broadcast.splat
  %i.ch = add <8 x i32> %i.ab, %broadcast.splat
  %i.ci = trunc <8 x i32> %i.cg to <8 x i16>
  %i.cj = trunc <8 x i32> %i.ch to <8 x i16>
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  %i.cl = getelementptr inbounds nuw i8, ptr %i.au, i64 208
  store <8 x i16> %i.ci, ptr %i.ck, align 2, !tbaa !36
  store <8 x i16> %i.cj, ptr %i.cl, align 2, !tbaa !36
  %i.cm = add <8 x i32> %i.ac, %broadcast.splat
  %i.cn = add <8 x i32> %i.ad, %broadcast.splat
  %i.co = trunc <8 x i32> %i.cm to <8 x i16>
  %i.cp = trunc <8 x i32> %i.cn to <8 x i16>
  %i.cq = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.cr = getelementptr inbounds nuw i8, ptr %i.au, i64 240
  store <8 x i16> %i.co, ptr %i.cq, align 2, !tbaa !36
  store <8 x i16> %i.cp, ptr %i.cr, align 2, !tbaa !36
  %i.cs = add <8 x i32> %i.ae, %broadcast.splat
  %i.ct = add <8 x i32> %i.af, %broadcast.splat
  %i.cu = trunc <8 x i32> %i.cs to <8 x i16>
  %i.cv = trunc <8 x i32> %i.ct to <8 x i16>
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 256
  %i.cx = getelementptr inbounds nuw i8, ptr %i.au, i64 272
  store <8 x i16> %i.cu, ptr %i.cw, align 2, !tbaa !36
  store <8 x i16> %i.cv, ptr %i.cx, align 2, !tbaa !36
  %i.cy = add <8 x i32> %i.ag, %broadcast.splat
  %i.cz = add <8 x i32> %i.ah, %broadcast.splat
  %i.da = trunc <8 x i32> %i.cy to <8 x i16>
  %i.db = trunc <8 x i32> %i.cz to <8 x i16>
  %i.dc = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %i.au, i64 304
  store <8 x i16> %i.da, ptr %i.dc, align 2, !tbaa !36
  store <8 x i16> %i.db, ptr %i.dd, align 2, !tbaa !36
  %i.de = add <8 x i32> %i.ai, %broadcast.splat
  %i.df = add <8 x i32> %i.aj, %broadcast.splat
  %i.dg = trunc <8 x i32> %i.de to <8 x i16>
  %i.dh = trunc <8 x i32> %i.df to <8 x i16>
  %i.di = getelementptr inbounds nuw i8, ptr %i.au, i64 320
  %i.dj = getelementptr inbounds nuw i8, ptr %i.au, i64 336
  store <8 x i16> %i.dg, ptr %i.di, align 2, !tbaa !36
  store <8 x i16> %i.dh, ptr %i.dj, align 2, !tbaa !36
  %i.dk = add <8 x i32> %i.ak, %broadcast.splat
  %i.dl = add <8 x i32> %i.al, %broadcast.splat
  %i.dm = trunc <8 x i32> %i.dk to <8 x i16>
  %i.dn = trunc <8 x i32> %i.dl to <8 x i16>
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 352
  %i.dp = getelementptr inbounds nuw i8, ptr %i.au, i64 368
  store <8 x i16> %i.dm, ptr %i.do, align 2, !tbaa !36
  store <8 x i16> %i.dn, ptr %i.dp, align 2, !tbaa !36
  %i.dq = add <8 x i32> %i.am, %broadcast.splat
  %i.dr = add <8 x i32> %i.an, %broadcast.splat
  %i.ds = trunc <8 x i32> %i.dq to <8 x i16>
  %i.dt = trunc <8 x i32> %i.dr to <8 x i16>
  %i.du = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  %i.dv = getelementptr inbounds nuw i8, ptr %i.au, i64 400
  store <8 x i16> %i.ds, ptr %i.du, align 2, !tbaa !36
  store <8 x i16> %i.dt, ptr %i.dv, align 2, !tbaa !36
  %i.dw = add <8 x i32> %i.ao, %broadcast.splat
  %i.dx = add <8 x i32> %i.ap, %broadcast.splat
  %i.dy = trunc <8 x i32> %i.dw to <8 x i16>
  %i.dz = trunc <8 x i32> %i.dx to <8 x i16>
  %i.ea = getelementptr inbounds nuw i8, ptr %i.au, i64 416
  %i.eb = getelementptr inbounds nuw i8, ptr %i.au, i64 432
  store <8 x i16> %i.dy, ptr %i.ea, align 2, !tbaa !36
  store <8 x i16> %i.dz, ptr %i.eb, align 2, !tbaa !36
  %i.ec = add <8 x i32> %i.aq, %broadcast.splat
  %i.ed = add <8 x i32> %i.ar, %broadcast.splat
  %i.ee = trunc <8 x i32> %i.ec to <8 x i16>
  %i.ef = trunc <8 x i32> %i.ed to <8 x i16>
  %i.eg = getelementptr inbounds nuw i8, ptr %i.au, i64 448
  %i.eh = getelementptr inbounds nuw i8, ptr %i.au, i64 464
  store <8 x i16> %i.ee, ptr %i.eg, align 2, !tbaa !36
  store <8 x i16> %i.ef, ptr %i.eh, align 2, !tbaa !36
  %i.ei = add <8 x i32> %i.as, %broadcast.splat
  %i.ej = add <8 x i32> %i.at, %broadcast.splat
  %i.ek = trunc <8 x i32> %i.ei to <8 x i16>
  %i.el = trunc <8 x i32> %i.ej to <8 x i16>
  %i.em = getelementptr inbounds nuw i8, ptr %i.au, i64 480
  %i.en = getelementptr inbounds nuw i8, ptr %i.au, i64 496
  store <8 x i16> %i.ek, ptr %i.em, align 2, !tbaa !36
  store <8 x i16> %i.el, ptr %i.en, align 2, !tbaa !36
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.h
  br i1 %exitcond75.not, label %.split50.us, label %.preheader.us.us, !llvm.loop !215

.preheader.us:                                    ; preds = %.split.us, %.loopexit.split.us47
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.loopexit.split.us47 ], [ 0, %.split.us ] ; 3 uses
  %i.eo = tail call noalias ptr @png_malloc(ptr noundef %0, i64 noundef 512) #28 ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv62
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !62
  %i.eq = trunc nuw nsw i64 %indvars.iv62 to i32  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us
  %indvars.iv58 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next59.1, %bb.b ] ; 4 uses
  %i.er = trunc nuw nsw i64 %indvars.iv58 to i32
  %i.es = shl nuw nsw i32 %i.er, %i.a
  %i.et = add i32 %i.es, %i.eq
  %i.eu = mul i32 %i.et, 65535
  %i.ev = add i32 %i.eu, %i.g
  %i.ew = udiv i32 %i.ev, %i.d
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvars.iv58
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !36
  %indvars.iv.next59 = or disjoint i64 %indvars.iv58, 1 ; 2 uses
  %i.ez = trunc nuw nsw i64 %indvars.iv.next59 to i32
  %i.fa = shl nuw nsw i32 %i.ez, %i.a
  %i.fb = add i32 %i.fa, %i.eq
  %i.fc = mul i32 %i.fb, 65535
  %i.fd = add i32 %i.fc, %i.g
  %i.fe = udiv i32 %i.fd, %i.d
  %i.ff = trunc i32 %i.fe to i16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %indvars.iv.next59
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !36
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2 ; 2 uses
  %exitcond61.not.1 = icmp eq i64 %indvars.iv.next59.1, 256
  br i1 %exitcond61.not.1, label %.loopexit.split.us47, label %bb.b, !llvm.loop !216

.loopexit.split.us47:                             ; preds = %bb.b
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %i.h
  br i1 %exitcond66.not, label %.split50.us, label %.preheader.us, !llvm.loop !215

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
  %i.fm = add i32 %i.fl, %i.fj
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
  %i.fw = add i32 %i.fv, %i.fj
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

.split50.us:                                      ; preds = %.loopexit41, %.loopexit.split.us47, %.preheader.us.us
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 4) i32 @png_set_option(ptr noalias nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %3 = icmp eq ptr %0, null
  %i.a = and i32 %1, -15
  %4 = icmp ne i32 %i.a, 0
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = shl nuw nsw i32 3, %1
  %.not = icmp eq i32 %2, 0
  %i.c = select i1 %.not, i32 2, i32 3
  %i.d = shl nuw nsw i32 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !218  ; 2 uses
  %i.g = xor i32 %i.b, -1
  %i.h = and i32 %i.f, %i.g
  %i.i = or i32 %i.h, %i.d
  store i32 %i.i, ptr %i.e, align 8, !tbaa !218
  %i.j = lshr i32 %i.f, %1
  %i.k = and i32 %i.j, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 1, %bb.a ]
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
  %.not.i.a = icmp eq i8 %i.i, 0
  br i1 %.not.i.a, label %bb.h, label %bb.f

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
  %2 = trunc i8 %i.p to i1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @png_destroy_write_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.q) #28
  br label %png_image_free_function.exit

bb.j:                                             ; preds = %bb.h
  call void @png_destroy_read_struct(ptr noundef nonnull %1, ptr noundef nonnull %i.q, ptr noundef null) #28
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
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

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
end_hunk_2
