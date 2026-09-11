Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/image_enc?download=true
inline.NumInlined: 37
inline.NumDeleted: 5
begin_hunk_0_@WebPWritePNG:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @png_create_write_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @PNGErrorFunction(ptr noundef %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = tail call ptr @png_set_longjmp_fn(ptr noundef %0, ptr noundef nonnull @longjmp, i64 noundef 200) #9
  tail call void @longjmp(ptr noundef %i.a, i32 noundef 1) #11
  unreachable
}

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #2

declare void @png_destroy_write_struct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #4

declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #5

declare void @png_init_io(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_set_IHDR(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @png_write_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @png_write_rows(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @png_write_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @WebPWritePPM(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %WritePPMPAM.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %WritePPMPAM.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15   ; 2 uses
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, i32 noundef %i.k, i32 noundef %i.d) #9 ; 0 uses
  %i.m = zext i32 %i.k to i64
  %.not39.i = icmp eq i32 %i.d, 0
  br i1 %.not39.i, label %WritePPMPAM.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.n = sext i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.02736.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.e ]
  %.02835.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.o = tail call i64 @fwrite(ptr noundef %.02835.i, i64 noundef %i.m, i64 noundef 3, ptr noundef nonnull %0)
  %.not33.i = icmp eq i64 %i.o, 3
  br i1 %.not33.i, label %bb.e, label %WritePPMPAM.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %.02835.i, i64 %i.n
  %i.q = add nuw i32 %.02736.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.q, %i.d
  br i1 %exitcond.not.i, label %WritePPMPAM.exit, label %bb.d, !llvm.loop !0

WritePPMPAM.exit:                                 ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %.1.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.1.i
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @WebPWritePAM(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %WritePPMPAM.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %WritePPMPAM.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15   ; 2 uses
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.k, i32 noundef %i.d) #9 ; 0 uses
  %i.m = zext i32 %i.k to i64
  %.not39.i = icmp eq i32 %i.d, 0
  br i1 %.not39.i, label %WritePPMPAM.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.n = sext i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.02736.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.e ]
  %.02835.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.o = tail call i64 @fwrite(ptr noundef %.02835.i, i64 noundef %i.m, i64 noundef 4, ptr noundef nonnull %0)
  %.not33.i = icmp eq i64 %i.o, 4
  br i1 %.not33.i, label %bb.e, label %WritePPMPAM.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %.02835.i, i64 %i.n
  %i.q = add nuw i32 %.02736.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.q, %i.d
  br i1 %exitcond.not.i, label %WritePPMPAM.exit, label %bb.d, !llvm.loop !0

WritePPMPAM.exit:                                 ; preds = %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  %.1.i = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.1.i
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @WebPWrite16bAsPGM(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15   ; 2 uses
  %i.l = shl i32 %i.k, 1
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.l, i32 noundef %i.d) #9 ; 0 uses
  %i.n = zext i32 %i.k to i64
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = sext i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.025 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.e ]
  %.01924 = phi ptr [ %i.f, %.lr.ph ], [ %i.q, %bb.e ] ; 2 uses
  %i.p = tail call i64 @fwrite(ptr noundef %.01924, i64 noundef %i.n, i64 noundef 2, ptr noundef nonnull %0)
  %.not = icmp eq i64 %i.p, 2
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %.01924, i64 %i.o
  %i.r = add nuw i32 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.r, %i.d
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !1

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.020 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.020
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @WebPWriteBMP(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [70 x i8], align 16               ; 19 uses
  %i.b = alloca [3 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(22) %i.c, i8 0, i64 22, i1 false)
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.a
  %2 = load i32, ptr %1, align 8, !tbaa !18       ; 2 uses
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %3 = icmp ult i32 %switch.tableidx, 12
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond82 = select i1 %3, i1 %switch.lobit, i1 false
  %4 = add i32 %2, -7
  %narrow.i.i = icmp ult i32 %4, 4
  %narrow = select i1 %or.cond82, i1 true, i1 %narrow.i.i ; 4 uses
  %5 = select i1 %narrow, i32 16, i32 0           ; 2 uses
  %6 = add nuw nsw i32 %5, 54                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17
  %7 = select i1 %narrow, i32 4, i32 3            ; 2 uses
  %i.n = mul i32 %7, %i.g                         ; 4 uses
  %i.o = add i32 %i.n, 3
  %i.p = and i32 %i.o, -4                         ; 3 uses
  %i.q = icmp eq ptr %i.k, null
  br i1 %i.q, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.thread
  %i.r = mul i32 %i.p, %i.i                       ; 2 uses
  %i.s = add i32 %i.r, %6
  store i16 19778, ptr %i.a, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i32 %i.s, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i32 0, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i32 %6, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %8 = or disjoint i32 %5, 40
  store i32 %8, ptr %i.w, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i32 %i.g, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i32 %i.i, ptr %i.y, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i16 1, ptr %i.z, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.tr = trunc nuw nsw i32 %7 to i16
  %i.ab = shl nuw nsw i16 %.tr, 3
  store i16 %i.ab, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.ad = select i1 %narrow, i32 3, i32 0
  store i32 %i.ad, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i32 %i.r, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i32 2400, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i32 2400, ptr %i.ag, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i32 0, ptr %i.ah, align 2
  br i1 %narrow, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.ai, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = zext nneg i32 %6 to i64
  %i.ak = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef %i.aj, i64 noundef 1, ptr noundef nonnull %0)
  %.not56 = icmp eq i64 %i.ak, 1
  br i1 %.not56, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.d
  %.not66 = icmp eq i32 %i.i, 0
  br i1 %.not66, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.al = sext i32 %i.m to i64                    ; 2 uses
  %i.am = zext i32 %i.n to i64                    ; 2 uses
  %.not58 = icmp eq i32 %i.p, %i.n
  %i.an = sub i32 %i.p, %i.n
  %i.ao = zext i32 %i.an to i64
  %.not58.fr = freeze i1 %.not58
  %wide.trip.count73 = zext i32 %i.i to i64       ; 2 uses
  br i1 %.not58.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv70 to i32
  %i.aq = xor i32 %i.ap, -1
  %i.ar = add i32 %i.i, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, %i.al
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.at
  %i.av = tail call i64 @fwrite(ptr noundef nonnull %i.au, i64 noundef %i.am, i64 noundef 1, ptr noundef nonnull %0)
  %.not57.us = icmp eq i64 %i.av, 1
  br i1 %.not57.us, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !36

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %i.aw = trunc nuw i64 %indvars.iv to i32
  %i.ax = xor i32 %i.aw, -1
  %i.ay = add i32 %i.i, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, %i.al
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ba
  %i.bc = tail call i64 @fwrite(ptr noundef nonnull %i.bb, i64 noundef %i.am, i64 noundef 1, ptr noundef nonnull %0)
  %.not57 = icmp eq i64 %i.bc, 1
  br i1 %.not57, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  %i.bd = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef %i.ao, i64 noundef 1, ptr noundef nonnull %0)
  %.not59 = icmp eq i64 %i.bd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not59, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count73
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !36

.critedge:                                        ; preds = %bb.g, %.lr.ph.split, %bb.f, %bb.e, %.lr.ph.split.us, %.preheader, %bb.d, %.thread, %bb.a
  %.4 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %.thread ], [ 1, %.preheader ], [ 1, %bb.e ], [ 0, %.lr.ph.split.us ], [ 0, %bb.f ], [ 0, %.lr.ph.split ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @WebPWriteTIFF(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [210 x i8], align 16              ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store <4 x i8> <i8 73, i8 73, i8 42, i8 0>, ptr %i.a, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 8, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.c, i8 0, i64 6, i1 false)
  store <4 x i8> <i8 1, i8 3, i8 0, i8 1>, ptr %i.e, align 1, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.f, i8 0, i64 7, i1 false)
  store <4 x i8> <i8 1, i8 1, i8 3, i8 0>, ptr %i.h, align 2, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i8 1, ptr %i.i, align 2, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 27
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.j, i8 0, i64 7, i1 false)
  store i8 2, ptr %i.l, align 2, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  store i8 1, ptr %i.m, align 1, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i8 3, ptr %i.n, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.o, i8 0, i64 5, i1 false)
  store <16 x i8> <i8 -62, i8 0, i8 0, i8 0, i8 3, i8 1, i8 3, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0>, ptr %i.q, align 2, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store <16 x i8> <i8 6, i8 1, i8 3, i8 0, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 17, i8 1, i8 4, i8 0>, ptr %i.r, align 2, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  store <16 x i8> <i8 1, i8 0, i8 0, i8 0, i8 -46, i8 0, i8 0, i8 0, i8 18, i8 1, i8 3, i8 0, i8 1, i8 0, i8 0, i8 0>, ptr %i.s, align 2, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 90
  store <8 x i8> <i8 1, i8 0, i8 0, i8 0, i8 21, i8 1, i8 3, i8 0>, ptr %i.t, align 2, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store i8 1, ptr %i.u, align 2, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 99
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 102
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.v, i8 0, i64 7, i1 false)
  store <4 x i8> <i8 22, i8 1, i8 3, i8 0>, ptr %i.x, align 2, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 110
  store i8 1, ptr %i.y, align 2, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 111
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 114
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.z, i8 0, i64 7, i1 false)
  store <4 x i8> <i8 23, i8 1, i8 4, i8 0>, ptr %i.ab, align 2, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 122
  store i8 1, ptr %i.ac, align 2, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 123
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 126
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ad, i8 0, i64 7, i1 false)
  store <16 x i8> <i8 26, i8 1, i8 5, i8 0, i8 1, i8 0, i8 0, i8 0, i8 -54, i8 0, i8 0, i8 0, i8 27, i8 1, i8 5, i8 0>, ptr %i.af, align 2, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store <16 x i8> <i8 1, i8 0, i8 0, i8 0, i8 -54, i8 0, i8 0, i8 0, i8 28, i8 1, i8 3, i8 0, i8 1, i8 0, i8 0, i8 0>, ptr %i.ag, align 2, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store <16 x i8> <i8 1, i8 0, i8 0, i8 0, i8 40, i8 1, i8 3, i8 0, i8 1, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0>, ptr %i.ah, align 2, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 178 ; 2 uses
  store <4 x i8> <i8 82, i8 1, i8 3, i8 0>, ptr %i.ai, align 2, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 182
  store i8 1, ptr %i.aj, align 2, !tbaa !17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 183
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 186
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ak, i8 0, i64 11, i1 false)
  store <16 x i8> <i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 8, i8 0, i8 72, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0>, ptr %i.am, align 2, !tbaa !17
  %i.an = icmp eq ptr %0, null
  %i.ao = icmp eq ptr %1, null
  %or.cond = or i1 %i.an, %i.ao
  br i1 %or.cond, label %.loopexit, label %WebPIsAlphaMode.exit

WebPIsAlphaMode.exit:                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !15 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !16 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !17
  %i.ax = icmp eq ptr %i.au, null
  br i1 %i.ax, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %WebPIsAlphaMode.exit
  %i.ay = load i32, ptr %1, align 8, !tbaa !18    ; 3 uses
  %switch.tableidx = add i32 %i.ay, -1            ; 2 uses
  %i.az = icmp ult i32 %switch.tableidx, 12
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond49 = select i1 %i.az, i1 %switch.lobit, i1 false
  %i.ba = add i32 %i.ay, -7
  %narrow.i.i = icmp ult i32 %i.ba, 4
  %.not.not = or i1 %or.cond49, %narrow.i.i       ; 3 uses
  %2 = zext i1 %.not.not to i8
  %i.bb = select i1 %.not.not, i8 4, i8 3         ; 4 uses
  store i8 %i.bb, ptr %i.w, align 2, !tbaa !17
  store i8 %i.bb, ptr %i.p, align 2, !tbaa !17
  %3 = or disjoint i8 %2, 14
  store i8 %3, ptr %i.d, align 8, !tbaa !17
  %i.bc = add i32 %i.ay, -7
  %narrow.i = icmp ult i32 %i.bc, 4
  %i.bd = select i1 %narrow.i, i8 1, i8 2
  store i8 %i.bd, ptr %i.al, align 2, !tbaa !17
  store i32 %i.aq, ptr %i.g, align 2
  store i32 %i.as, ptr %i.k, align 2
  store i32 %i.as, ptr %i.aa, align 2
  %i.be = zext nneg i8 %i.bb to i32
  %i.bf = mul i32 %i.as, %i.aq
  %i.bg = mul i32 %i.bf, %i.be
  store i32 %i.bg, ptr %i.ae, align 2
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.ai, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bh = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 210, i64 noundef 1, ptr noundef nonnull %0)
  %.not38 = icmp eq i64 %i.bh, 1
  br i1 %.not38, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.bi = zext nneg i8 %i.bb to i64
  %i.bj = zext i32 %i.aq to i64                   ; 2 uses
  %.not44 = icmp eq i32 %i.as, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bk = sext i32 %i.aw to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.041 = phi i32 [ 0, %.lr.ph ], [ %i.bn, %bb.f ]
  %.03240 = phi ptr [ %i.au, %.lr.ph ], [ %i.bm, %bb.f ] ; 2 uses
  %i.bl = tail call i64 @fwrite(ptr noundef %.03240, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull %0)
  %.not39 = icmp eq i64 %i.bl, %i.bj
  br i1 %.not39, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds i8, ptr %.03240, i64 %i.bk
  %i.bn = add nuw i32 %.041, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bn, %i.as
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !37

.loopexit:                                        ; preds = %bb.e, %bb.f, %.preheader, %bb.d, %WebPIsAlphaMode.exit, %bb.a
  %.033 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %WebPIsAlphaMode.exit ], [ 1, %.preheader ], [ 0, %bb.e ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.033
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @WebPWriteAlphaPlane(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15   ; 2 uses
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %i.k, i32 noundef %i.d) #9 ; 0 uses
  %i.m = zext i32 %i.k to i64
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = sext i32 %i.h to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %.025 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.e ]
  %.01924 = phi ptr [ %i.f, %.lr.ph ], [ %i.p, %bb.e ] ; 2 uses
  %i.o = tail call i64 @fwrite(ptr noundef %.01924, i64 noundef %i.m, i64 noundef 1, ptr noundef nonnull %0)
  %.not = icmp eq i64 %i.o, 1
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %.01924, i64 %i.n
  %i.q = add nuw i32 %.025, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %i.d
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !2

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind uwtable
define hidden range(i32 0, 2) i32 @WebPWritePGM(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %.fr98 = freeze i32 %i.d                        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.o = add nsw i32 %.fr98, 1                    ; 2 uses
  %i.p = sdiv i32 %i.o, 2
  %i.q = add nsw i32 %i.f, 1
  %i.r = sdiv i32 %i.q, 2                         ; 2 uses
  %.not = icmp eq ptr %i.n, null
  %i.s = select i1 %.not, i32 0, i32 %i.f         ; 4 uses
  %i.t = icmp eq ptr %i.h, null
  %i.u = icmp eq ptr %i.j, null
  %or.cond3 = select i1 %i.t, i1 true, i1 %i.u
  %i.v = icmp eq ptr %i.l, null
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.v
  br i1 %or.cond5, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = and i32 %i.o, -2
  %i.x = add nsw i32 %i.r, %i.f
  %i.y = add nsw i32 %i.x, %i.s
  %i.z = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.w, i32 noundef %i.y) #9 ; 0 uses
  %i.aa = icmp sgt i32 %i.f, 0
  br i1 %i.aa, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.ab = sext i32 %.fr98 to i64                  ; 2 uses
  %i.ac = and i32 %.fr98, 1
  %.not82 = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %.not82, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.085.us = phi i32 [ %i.aj, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.07384.us = phi ptr [ %i.ai, %.lr.ph.split.us ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.ae = tail call i64 @fwrite(ptr noundef %.07384.us, i64 noundef %i.ab, i64 noundef 1, ptr noundef nonnull %0)
  %i.af = icmp eq i64 %i.ae, 1                    ; 2 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !26
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %.07384.us, i64 %i.ah
  %i.aj = add nuw nsw i32 %.085.us, 1             ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.f
  %i.al = select i1 %i.af, i1 %i.ak, i1 false
  br i1 %i.al, label %.lr.ph.split.us, label %.preheader83, !llvm.loop !38

.preheader83:                                     ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.067.lcssa.shrunk = phi i1 [ %i.af, %.lr.ph.split.us ], [ %i.aq, %.lr.ph.split ]
  br i1 %.067.lcssa.shrunk, label %.lr.ph90, label %.preheader

.lr.ph90:                                         ; preds = %.preheader83
  %i.am = sext i32 %i.p to i64                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.085 = phi i32 [ %i.av, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.07384 = phi ptr [ %i.au, %.lr.ph.split ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.ap = tail call i64 @fwrite(ptr noundef %.07384, i64 noundef %i.ab, i64 noundef 1, ptr noundef nonnull %0)
  %i.aq = icmp eq i64 %i.ap, 1                    ; 2 uses
  %i.ar = tail call i32 @fputc(i32 noundef 0, ptr noundef nonnull %0) ; 0 uses
  %i.as = load i32, ptr %i.ad, align 8, !tbaa !26
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %.07384, i64 %i.at
  %i.av = add nuw nsw i32 %.085, 1                ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.f
  %i.ax = select i1 %i.aq, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.split, label %.preheader83, !llvm.loop !38

.preheader:                                       ; preds = %bb.d, %bb.c, %.preheader83
  %.168.lcssa.in = phi i1 [ false, %.preheader83 ], [ true, %bb.c ], [ %i.bp, %bb.d ] ; 2 uses
  %i.ay = icmp sgt i32 %i.s, 0
  %i.az = select i1 %.168.lcssa.in, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph93, label %.loopexit

.lr.ph93:                                         ; preds = %.preheader
  %i.ba = sext i32 %.fr98 to i64                  ; 2 uses
  %i.bb = and i32 %.fr98, 1
  %.not81 = icmp eq i32 %i.bb, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  br i1 %.not81, label %.lr.ph93.split.us, label %.lr.ph93.split

.lr.ph93.split.us:                                ; preds = %.lr.ph93, %.lr.ph93.split.us
  %.292.us = phi i32 [ %i.bi, %.lr.ph93.split.us ], [ 0, %.lr.ph93 ]
  %.07091.us = phi ptr [ %i.bh, %.lr.ph93.split.us ], [ %i.n, %.lr.ph93 ] ; 2 uses
  %i.bd = tail call i64 @fwrite(ptr noundef %.07091.us, i64 noundef %i.ba, i64 noundef 1, ptr noundef nonnull %0)
  %i.be = icmp eq i64 %i.bd, 1                    ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %.07091.us, i64 %i.bg
  %i.bi = add nuw nsw i32 %.292.us, 1             ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.s
  %i.bk = select i1 %i.be, i1 %i.bj, i1 false
end_hunk_0
