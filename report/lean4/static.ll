Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/static?download=true
inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL15mi_buffered_outPKcPv:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %i.h = phi i8 [ %i.c, %.lr.ph ], [ %i.av, %bb.k ] ; 2 uses
  %.023 = phi ptr [ %0, %.lr.ph ], [ %i.au, %bb.k ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !403  ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !237
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %_ZL17mi_buffered_flushP10buffered_s.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !238
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !69
  %i.m = load ptr, ptr %1, align 8, !tbaa !235    ; 4 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !238  ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  %i.p = load ptr, ptr @stdout, align 8
  %i.q = icmp eq ptr %i.m, %i.p
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.q
  %i.r = load ptr, ptr @stderr, align 8
  %i.s = icmp eq ptr %i.m, %i.r
  %or.cond17.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.s
  br i1 %or.cond17.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv()
  br i1 %i.t, label %bb.e, label %_ZL17mi_buffered_flushP10buffered_s.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load atomic ptr, ptr @_ZL10mi_out_arg.0 acquire, align 8
  %i.v = load volatile ptr, ptr @_ZL14mi_out_default, align 8, !tbaa !96 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = select i1 %i.w, ptr @_ZL10mi_out_bufPKcPv, ptr %i.v
  tail call void %i.x(ptr noundef %i.n, ptr noundef %i.u), !inline_history !401
  tail call fastcc void @_ZL20mi_recurse_exit_primv()
  br label %_ZL17mi_buffered_flushP10buffered_s.exit

bb.f:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !236
  tail call void %i.m(ptr noundef %i.n, ptr noundef %i.y), !inline_history !401
  br label %_ZL17mi_buffered_flushP10buffered_s.exit

_ZL17mi_buffered_flushP10buffered_s.exit:         ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.z = phi i64 [ %i.i, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !238
  %i.ab = add nuw i64 %i.z, 1
  store i64 %i.ab, ptr %i.d, align 8, !tbaa !403
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.h, ptr %i.ac, align 1, !tbaa !69
  %i.ad = icmp eq i8 %i.h, 10
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZL17mi_buffered_flushP10buffered_s.exit
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !238
  %i.af = load i64, ptr %i.d, align 8, !tbaa !403
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ag, align 1, !tbaa !69
  %i.ah = load ptr, ptr %1, align 8, !tbaa !235   ; 4 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !238 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, null
  %i.ak = load ptr, ptr @stdout, align 8
  %i.al = icmp eq ptr %i.ah, %i.ak
  %or.cond.i.i19 = select i1 %i.aj, i1 true, i1 %i.al
  %i.am = load ptr, ptr @stderr, align 8
  %i.an = icmp eq ptr %i.ah, %i.am
  %or.cond17.i.i20 = select i1 %or.cond.i.i19, i1 true, i1 %i.an
  br i1 %or.cond17.i.i20, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv()
  br i1 %i.ao, label %bb.i, label %_ZL17mi_buffered_flushP10buffered_s.exit21

bb.i:                                             ; preds = %bb.h
  %i.ap = load atomic ptr, ptr @_ZL10mi_out_arg.0 acquire, align 8
  %i.aq = load volatile ptr, ptr @_ZL14mi_out_default, align 8, !tbaa !96 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  %i.as = select i1 %i.ar, ptr @_ZL10mi_out_bufPKcPv, ptr %i.aq
  tail call void %i.as(ptr noundef %i.ai, ptr noundef %i.ap), !inline_history !401
  tail call fastcc void @_ZL20mi_recurse_exit_primv()
  br label %_ZL17mi_buffered_flushP10buffered_s.exit21

bb.j:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !236
  tail call void %i.ah(ptr noundef %i.ai, ptr noundef %i.at), !inline_history !401
  br label %_ZL17mi_buffered_flushP10buffered_s.exit21

_ZL17mi_buffered_flushP10buffered_s.exit21:       ; preds = %bb.h, %bb.i, %bb.j
  store i64 0, ptr %i.d, align 8, !tbaa !403
  br label %bb.k

bb.k:                                             ; preds = %_ZL17mi_buffered_flushP10buffered_s.exit21, %_ZL17mi_buffered_flushP10buffered_s.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.023, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !69  ; 2 uses
  %.not = icmp eq i8 %i.av, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !402

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16mi_stat_print_exPK15mi_stat_count_sPKclPFvS3_PvES4_S3_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef range(i64 -1, 2) %2, ptr noundef nonnull %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  tail call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.210, ptr noundef %1)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %2, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !166  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.e, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.g = load i64, ptr %0, align 8, !tbaa !167
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.g, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.h = load i64, ptr %i.f, align 8, !tbaa !165
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.h, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i8 0, ptr %i.b, align 16, !tbaa !69
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.216, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.215)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.e, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.i = load i64, ptr %0, align 8, !tbaa !167
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.i, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.j = load i64, ptr %i.f, align 8, !tbaa !165
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.j, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.k = icmp eq i64 %2, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.11)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i8 0, ptr %i.a, align 16, !tbaa !69
  %i.l = call noundef i32 (ptr, i64, ptr, ...) @_Z12_mi_snprintfPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.219, i64 noundef 0, ptr noundef nonnull @.str.11) ; 0 uses
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.216, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef poison, i64 noundef 0, ptr noundef nonnull %3, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !165
  %.not66 = icmp eq i64 %i.n, 0
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.14)
  %i.o = icmp eq ptr %4, null
  %i.p = select i1 %i.o, ptr @.str.212, ptr %4
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull %i.p)
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.202)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.213)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !166
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.r, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.s = load i64, ptr %0, align 8, !tbaa !167
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.s, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  tail call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.215)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !165
  tail call fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %i.u, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  tail call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %3, ptr noundef nonnull @.str.202)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL16mi_printf_amountllPFvPKcPvES1_S0_(i64 noundef %0, i64 noundef range(i64 -1, 2) %1, ptr noundef nonnull %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i8 0, ptr %i.a, align 16, !tbaa !69
  %i.c = icmp slt i64 %1, 1
  %.str.215..str.218 = select i1 %i.c, ptr @.str.215, ptr @.str.218 ; 4 uses
  %.not52 = icmp eq i64 %1, 0                     ; 3 uses
  %i.d = select i1 %.not52, i64 1000, i64 1024    ; 3 uses
  %i.e = tail call i64 @llvm.abs.i64(i64 %0, i1 true) ; 3 uses
  %i.f = icmp samesign ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not53 = icmp eq i64 %0, 1
  br i1 %.not53, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.g = icmp eq i64 %0, 0
  %i.h = select i1 %i.g, ptr @.str.11, ptr %.str.215..str.218
  %i.i = call noundef i32 (ptr, i64, ptr, ...) @_Z12_mi_snprintfPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.219, i64 noundef %0, ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %4 = load i8, ptr %.str.215..str.218, align 1, !tbaa !69
  %.not54 = icmp eq i8 %4, 66
  br i1 %.not54, label %bb.e, label %.split45

.split45:                                         ; preds = %bb.c
  %i.j = call noundef i32 (ptr, i64, ptr, ...) @_Z12_mi_snprintfPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.219, i64 noundef 1, ptr noundef nonnull %.str.215..str.218) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = select i1 %.not52, i64 1000000, i64 1048576 ; 2 uses
  %.not = icmp samesign ult i64 %i.e, %i.k        ; 2 uses
  %spec.select = select i1 %.not, i64 %i.d, i64 %i.k ; 2 uses
  %spec.select55 = select i1 %.not, ptr @.str.220, ptr @.str.221
  %i.l = mul nuw nsw i64 %spec.select, %i.d       ; 2 uses
  %.not51 = icmp samesign ult i64 %i.e, %i.l      ; 2 uses
  %.144 = select i1 %.not51, i64 %spec.select, i64 %i.l
  %.1 = select i1 %.not51, ptr %spec.select55, ptr @.str.222
  %.lhs.trunc = trunc nuw nsw i64 %.144 to i32
  %i.m = udiv i32 %.lhs.trunc, 10
  %.zext = zext nneg i32 %i.m to i64
  %i.n = sdiv i64 %0, %.zext                      ; 2 uses
  %i.o = sdiv i64 %i.n, 10
  %i.p = srem i64 %i.n, 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  %i.q = select i1 %.not52, ptr @.str.11, ptr @.str.224
  %i.r = call noundef i32 (ptr, i64, ptr, ...) @_Z12_mi_snprintfPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 8, ptr noundef nonnull @.str.223, ptr noundef nonnull %.1, ptr noundef nonnull %i.q, ptr noundef nonnull %.str.215..str.218) ; 0 uses
  %i.s = call i64 @llvm.abs.i64(i64 %i.p, i1 true)
  %i.t = call noundef i32 (ptr, i64, ptr, ...) @_Z12_mi_snprintfPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.225, i64 noundef %i.o, i64 noundef %i.s, ptr noundef nonnull %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  br label %bb.e

bb.e:                                             ; preds = %.split, %.split45, %bb.c, %bb.d
  %i.u = icmp eq ptr %3, null
  %i.v = select i1 %i.u, ptr @.str.216, ptr %3
  call void (ptr, ptr, ptr, ...) @_Z11_mi_fprintfPFvPKcPvES1_S0_z(ptr noundef nonnull @_ZL15mi_buffered_outPKcPv, ptr noundef nonnull %2, ptr noundef nonnull %i.v, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL22unix_mmap_prim_alignedPvmmiii(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 4) %3, i32 noundef range(i32 34, 2013528099) %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.b = tail call ptr @mmap(ptr noundef nonnull %0, i64 noundef %1, i32 noundef range(i32 0, 4) %3, i32 noundef range(i32 34, 2013528099) %4, i32 noundef -1, i64 noundef 0) #50 ; 3 uses
  %magicptr.i = ptrtoint ptr %i.b to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %_ZL14unix_mmap_primPvmiii.exit.sink.split, label %_ZL14unix_mmap_primPvmiii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z23_mi_os_get_aligned_hintmm(i64 noundef %2, i64 noundef %1) ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.split28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @mmap(ptr noundef nonnull %i.c, i64 noundef %1, i32 noundef range(i32 0, 4) %3, i32 noundef range(i32 34, 2013528099) %4, i32 noundef -1, i64 noundef 0) #50 ; 5 uses
  %magicptr.i36 = ptrtoint ptr %i.d to i64        ; 2 uses
  %magicptr.off.i37 = add i64 %magicptr.i36, -1
  %switch.i38 = icmp ult i64 %magicptr.off.i37, -2
  br i1 %switch.i38, label %bb.d, label %_ZL14unix_mmap_primPvmiii.exit39

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef nonnull %i.d, i64 noundef %1, ptr noundef nonnull @.str.235) #50 ; 0 uses
  br label %_ZL14unix_mmap_primPvmiii.exit39

_ZL14unix_mmap_primPvmiii.exit39:                 ; preds = %bb.c, %bb.d
  %i.f = icmp eq ptr %i.d, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %.split28.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL14unix_mmap_primPvmiii.exit39
  %i.g = urem i64 %magicptr.i36, %2
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread44, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #54
  %i.j = load i32, ptr %i.i, align 4, !tbaa !97   ; 2 uses
  tail call void (ptr, ...) @_Z17_mi_trace_messagePKcz(ptr noundef nonnull @.str.234, i32 noundef %i.j, i32 noundef %i.j, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.c)
  br label %.thread44

.split28.critedge:                                ; preds = %_ZL14unix_mmap_primPvmiii.exit39
  %i.k = tail call ptr @__errno_location() #54
  %i.l = load i32, ptr %i.k, align 4, !tbaa !97   ; 2 uses
  tail call void (ptr, ...) @_Z17_mi_trace_messagePKcz(ptr noundef nonnull @.str.234, i32 noundef %i.l, i32 noundef %i.l, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.c)
  br label %.split28

.split28:                                         ; preds = %.split28.critedge, %bb.b
  %i.m = tail call ptr @mmap(ptr noundef null, i64 noundef %1, i32 noundef range(i32 0, 4) %3, i32 noundef range(i32 34, 2013528099) %4, i32 noundef -1, i64 noundef 0) #50 ; 3 uses
  %magicptr.i40 = ptrtoint ptr %i.m to i64
  %magicptr.off.i41 = add i64 %magicptr.i40, -1
  %switch.i42 = icmp ult i64 %magicptr.off.i41, -2
  br i1 %switch.i42, label %_ZL14unix_mmap_primPvmiii.exit.sink.split, label %_ZL14unix_mmap_primPvmiii.exit

_ZL14unix_mmap_primPvmiii.exit.sink.split:        ; preds = %.split28, %.split
  %.sink = phi ptr [ %i.b, %.split ], [ %i.m, %.split28 ] ; 2 uses
  %i.n = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef nonnull %.sink, i64 noundef %1, ptr noundef nonnull @.str.235) #50 ; 0 uses
  br label %_ZL14unix_mmap_primPvmiii.exit

_ZL14unix_mmap_primPvmiii.exit:                   ; preds = %_ZL14unix_mmap_primPvmiii.exit.sink.split, %.split28, %.split
  %phi.call = phi ptr [ %i.m, %.split28 ], [ %i.b, %.split ], [ %.sink, %_ZL14unix_mmap_primPvmiii.exit.sink.split ] ; 2 uses
  %.not35 = icmp eq ptr %phi.call, inttoptr (i64 -1 to ptr)
  %.phi.call = select i1 %.not35, ptr null, ptr %phi.call
  br label %.thread44

.thread44:                                        ; preds = %bb.f, %bb.e, %_ZL14unix_mmap_primPvmiii.exit
  %.1 = phi ptr [ %.phi.call, %_ZL14unix_mmap_primPvmiii.exit ], [ %i.d, %bb.f ], [ %i.d, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_static.c() #48 section ".text.startup" {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) @_ZL18mi_subproc_default, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #49

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #27

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn }
attributes #32 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #40 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { cold noreturn }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
