Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@png_icc_profile_error:bb.a
bb.e:                                             ; preds = %is_ICC_signature.exit.thread, %bb.d
  %.0 = phi i64 [ %i.bc, %bb.d ], [ %i.bh, %is_ICC_signature.exit.thread ]
  %i.bi = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %.0, ptr noundef %3) #28 ; 0 uses
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_icc_check_header(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)  ; 2 uses
  %.not = icmp eq i32 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef nonnull @.str.21)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %i.f = icmp ult i8 %i.e, 4
  %i.g = and i32 %2, 3
  %.not98 = icmp eq i32 %i.g, 0
  %or.cond = or i1 %.not98, %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i32 %2 to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.h, ptr noundef nonnull @.str.22)
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i32, ptr %i.i, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)  ; 3 uses
  %i.l = icmp ugt i32 %i.k, 357913930
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = mul nuw i32 %i.k, 12
  %i.n = add nuw i32 %i.m, 132
  %i.o = icmp ult i32 %2, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = zext i32 %i.k to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.p, ptr noundef nonnull @.str.23)
  br label %bb.ac

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i32, ptr %i.q, align 1
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)  ; 4 uses
  %i.t = icmp ugt i32 %i.s, 65534
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = zext i32 %i.s to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.u, ptr noundef nonnull @.str.24)
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.s, 3
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = zext nneg i32 %i.s to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.w, ptr noundef nonnull @.str.25)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.y = load i32, ptr %i.x, align 1              ; 2 uses
  %.not99 = icmp eq i32 %i.y, 1886610273
  br i1 %.not99, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = zext i32 %i.z to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.aa, ptr noundef nonnull @.str.26)
  br label %bb.ac

bb.n:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 1
  %i.ad = xor i64 %i.ac, 1103118073856
  %i.ae = getelementptr i8, ptr %i.ab, i64 8
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = xor i64 %i.ag, 768802816
  %i.ai = or i64 %i.ad, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not100 = icmp eq i32 %i.ak, 0
  br i1 %.not100, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 0, ptr noundef nonnull @.str.27)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load i32, ptr %i.al, align 1
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am) ; 2 uses
  switch i32 %i.an, label %bb.u [
    i32 1380401696, label %bb.q
    i32 1196573017, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.ao = and i32 %4, 2
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1380401696, ptr noundef nonnull @.str.28)
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  %i.aq = and i32 %4, 2
  %.not101 = icmp eq i32 %i.aq, 0
  br i1 %.not101, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1196573017, ptr noundef nonnull @.str.29)
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  %i.ar = zext i32 %i.an to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.ar, ptr noundef nonnull @.str.30)
  br label %bb.ac

bb.v:                                             ; preds = %bb.s, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.at = load i32, ptr %i.as, align 1
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at) ; 2 uses
  switch i32 %i.au, label %bb.z [
    i32 1935896178, label %bb.aa
    i32 1835955314, label %bb.aa
    i32 1886549106, label %bb.aa
    i32 1936744803, label %bb.aa
    i32 1633842036, label %bb.w
    i32 1818848875, label %bb.x
    i32 1852662636, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1633842036, ptr noundef nonnull @.str.31)
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1818848875, ptr noundef nonnull @.str.32)
  br label %bb.ac

bb.y:                                             ; preds = %bb.v
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1852662636, ptr noundef nonnull @.str.33)
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.av = zext i32 %i.au to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.av, ptr noundef nonnull @.str.34)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.z, %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ax = load i32, ptr %i.aw, align 1
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax) ; 2 uses
  switch i32 %i.ay, label %bb.ab [
    i32 1482250784, label %bb.ac
    i32 1281450528, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.az = zext i32 %i.ay to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.az, ptr noundef nonnull @.str.35)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.ab, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.m, %bb.i, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %bb.ab ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ 1, %bb.aa ], [ 1, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @png_icc_check_tag_table(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.b = load i32, ptr %i.a, align 1              ; 2 uses
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)
  %.not41 = icmp eq i32 %i.b, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 132
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.03440 = phi ptr [ %i.y, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 8 uses
  %.03539 = phi i32 [ %i.x, %bb.e ], [ 0, %.lr.ph.preheader ]
  %4 = load i8, ptr %.03440, align 1, !tbaa !28
  %5 = zext i8 %4 to i32
  %6 = shl nuw i32 %5, 24
  %7 = getelementptr inbounds nuw i8, ptr %.03440, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !28
  %i.e = zext i8 %8 to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %9 = or disjoint i32 %i.f, %6
  %i.g = getelementptr inbounds nuw i8, ptr %.03440, i64 2
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = or disjoint i32 %9, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.03440, i64 3
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.03440, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %.03440, i64 7
  %12 = load i32, ptr %10, align 1, !tbaa !28
  %13 = load i8, ptr %11, align 1, !tbaa !28
  %14 = tail call i32 @llvm.bswap.i32(i32 %12)    ; 2 uses
  %i.p = icmp ugt i32 %14, %2
  br i1 %i.p, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.03440, i64 8
  %i.r = load i32, ptr %i.q, align 1
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %i.t = sub nuw i32 %2, %14
  %i.u = icmp ugt i32 %i.s, %i.t
  br i1 %i.u, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b, %.lr.ph
  %i.v = zext i32 %i.o to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.v, ptr noundef nonnull @.str.36)
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %15 = and i8 %13, 3
  %.not = icmp eq i8 %15, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = zext i32 %i.o to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.w, ptr noundef nonnull @.str.37)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = add nuw i32 %.03539, 1                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03440, i64 12
  %exitcond.not = icmp eq i32 %i.x, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !145

.loopexit:                                        ; preds = %bb.e, %bb.a, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ 1, %bb.a ], [ 1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define void @png_set_rgb_coefficients(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.png_XYZ, align 4            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1033
  %i.b = load i8, ptr %i.a, align 1, !tbaa !146
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.d = getelementptr i8, ptr %0, i64 504
  %.val = load i32, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %i.e = and i32 %.val, 65536
  %.not.i = icmp ne i32 %i.e, 0
  %i.f = and i32 %.val, 8388672
  %or.cond102.not = icmp eq i32 %i.f, 64
  %or.cond113 = or i1 %.not.i, %or.cond102.not
  br i1 %or.cond113, label %have_chromaticities.exit.thread87, label %have_chromaticities.exit.thread

have_chromaticities.exit.thread87:                ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.h = call i32 @png_XYZ_from_xy(ptr noundef nonnull %1, ptr noundef nonnull %i.g)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %have_chromaticities.exit.thread

bb.c:                                             ; preds = %have_chromaticities.exit.thread87
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !53   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54   ; 4 uses
  %i.p = add nsw i32 %i.m, %i.k
  %i.q = add nsw i32 %i.p, %i.o                   ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = icmp sgt i32 %i.k, -1
  %or.cond = and i1 %i.s, %i.r
  br i1 %or.cond, label %bb.d, label %png_muldiv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %png_muldiv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = uitofp nneg i32 %i.k to double
  %i.v = fmul nnan double %i.u, 3.276800e+04
  %i.w = uitofp nneg i32 %i.q to double
  %i.x = fdiv double %i.v, %i.w
  %i.y = fadd double %i.x, 5.000000e-01
  %i.z = tail call double @llvm.floor.f64(double %i.y) ; 3 uses
  %i.aa = fcmp ole double %i.z, f0x41DFFFFFFFC00000
  %i.ab = fcmp oge double %i.z, f0xC1E0000000000000
  %or.cond3.i = and i1 %i.aa, %i.ab
  br i1 %or.cond3.i, label %bb.f, label %png_muldiv.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ac = fptosi double %i.z to i32
  br label %png_muldiv.exit

png_muldiv.exit:                                  ; preds = %bb.d, %bb.f
  %.184 = phi i32 [ 0, %bb.d ], [ %i.ac, %bb.f ]  ; 9 uses
  %i.ad = icmp ult i32 %.184, 32769
  %i.ae = icmp sgt i32 %i.m, -1
  %or.cond7 = and i1 %i.ae, %i.ad
  br i1 %or.cond7, label %bb.g, label %png_muldiv.exit.thread

bb.g:                                             ; preds = %png_muldiv.exit
  %i.af = icmp eq i32 %i.m, 0
  br i1 %i.af, label %png_muldiv.exit55, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = uitofp nneg i32 %i.m to double
  %i.ah = fmul nnan double %i.ag, 3.276800e+04
  %i.ai = uitofp nneg i32 %i.q to double
  %i.aj = fdiv double %i.ah, %i.ai
  %i.ak = fadd double %i.aj, 5.000000e-01
  %i.al = tail call double @llvm.floor.f64(double %i.ak) ; 3 uses
  %i.am = fcmp ole double %i.al, f0x41DFFFFFFFC00000
  %i.an = fcmp oge double %i.al, f0xC1E0000000000000
  %or.cond3.i51 = and i1 %i.am, %i.an
  br i1 %or.cond3.i51, label %bb.i, label %png_muldiv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ao = fptosi double %i.al to i32
  br label %png_muldiv.exit55

png_muldiv.exit55:                                ; preds = %bb.g, %bb.i
  %.182 = phi i32 [ 0, %bb.g ], [ %i.ao, %bb.i ]  ; 9 uses
  %i.ap = icmp ult i32 %.182, 32769
  %i.aq = icmp sgt i32 %i.o, -1
  %or.cond13 = and i1 %i.aq, %i.ap
  br i1 %or.cond13, label %bb.j, label %png_muldiv.exit.thread

bb.j:                                             ; preds = %png_muldiv.exit55
  %i.ar = icmp eq i32 %i.o, 0
  br i1 %i.ar, label %png_muldiv.exit61.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = uitofp nneg i32 %i.o to double
  %i.at = fmul nnan double %i.as, 3.276800e+04
  %i.au = uitofp nneg i32 %i.q to double
  %i.av = fdiv double %i.at, %i.au
  %i.aw = fadd double %i.av, 5.000000e-01
  %i.ax = tail call double @llvm.floor.f64(double %i.aw) ; 3 uses
  %i.ay = fcmp ole double %i.ax, f0x41DFFFFFFFC00000
  %i.az = fcmp oge double %i.ax, f0xC1E0000000000000
  %or.cond3.i57 = and i1 %i.ay, %i.az
  %i.ba = fptosi double %i.ax to i32              ; 2 uses
  %i.bb = icmp samesign ult i32 %i.ba, 32769
  %or.cond115 = select i1 %or.cond3.i57, i1 %i.bb, i1 false
  br i1 %or.cond115, label %png_muldiv.exit61.thread, label %png_muldiv.exit.thread

png_muldiv.exit61.thread:                         ; preds = %bb.k, %bb.j
  %.1112 = phi i32 [ %i.ba, %bb.k ], [ 0, %bb.j ] ; 7 uses
  %i.bc = add nuw nsw i32 %.182, %.184
  %i.bd = add nuw nsw i32 %i.bc, %.1112           ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 32770
  br i1 %i.be, label %bb.l, label %png_muldiv.exit.thread

bb.l:                                             ; preds = %png_muldiv.exit61.thread
  %i.bf = icmp ne i32 %i.bd, 32769                ; 2 uses
  %i.bg = icmp samesign ugt i32 %i.bd, 32767      ; 2 uses
  %not. = xor i1 %i.bg, true
  %spec.select46 = zext i1 %not. to i32
  %.not40 = and i1 %i.bf, %i.bg
  %.0 = select i1 %i.bf, i32 %spec.select46, i32 -1 ; 3 uses
  br i1 %.not40, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not41 = icmp samesign ult i32 %.182, %.184
  %.not42 = icmp samesign ult i32 %.182, %.1112
  %or.cond47 = select i1 %.not41, i1 true, i1 %.not42
  br i1 %or.cond47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = add nsw i32 %.0, %.182
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %.not43 = icmp samesign ult i32 %.184, %.182
  %.not44 = icmp samesign ult i32 %.184, %.1112
  %or.cond48 = select i1 %.not43, i1 true, i1 %.not44
  br i1 %or.cond48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %.0, %.184
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = add nsw i32 %.0, %.1112
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.p, %bb.l
  %.083 = phi i32 [ %.184, %bb.l ], [ %.184, %bb.q ], [ %i.bi, %bb.p ], [ %.184, %bb.n ] ; 2 uses
  %.081 = phi i32 [ %.182, %bb.l ], [ %.182, %bb.q ], [ %.182, %bb.p ], [ %i.bh, %bb.n ] ; 2 uses
  %.080 = phi i32 [ %.1112, %bb.l ], [ %i.bj, %bb.q ], [ %.1112, %bb.p ], [ %.1112, %bb.n ]
  %i.bk = add nsw i32 %.081, %.083
  %i.bl = add nsw i32 %i.bk, %.080
  %.not45 = icmp eq i32 %i.bl, 32768
  br i1 %.not45, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.38) #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = trunc i32 %.083 to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1034
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !148
  %i.bo = trunc i32 %.081 to i16
  br label %png_muldiv.exit.thread.sink.split

have_chromaticities.exit.thread:                  ; preds = %bb.b, %have_chromaticities.exit.thread87
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1034
  store i16 6968, ptr %i.bp, align 2, !tbaa !148
  br label %png_muldiv.exit.thread.sink.split

png_muldiv.exit.thread.sink.split:                ; preds = %have_chromaticities.exit.thread, %bb.t
  %.sink = phi i16 [ %i.bo, %bb.t ], [ 23434, %have_chromaticities.exit.thread ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1036
  store i16 %.sink, ptr %i.bq, align 4, !tbaa !149
  br label %png_muldiv.exit.thread

png_muldiv.exit.thread:                           ; preds = %png_muldiv.exit.thread.sink.split, %bb.k, %bb.h, %bb.e, %bb.c, %png_muldiv.exit, %png_muldiv.exit55, %png_muldiv.exit61.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
end_hunk_0
begin_hunk_1_@png_build_16bit_table:bb.a
.loopexit.split.us48:                             ; preds = %bb.b
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
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #19

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
!127 = distinct !{!127, !"png_handle_as_unknown"}
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
!159 = distinct !{!159, !"LVerDomain"}
!160 = distinct !{!160, !159}
!161 = distinct !{!161, !159}
!162 = distinct !{!162, !27, !55, !56}
end_hunk_1
