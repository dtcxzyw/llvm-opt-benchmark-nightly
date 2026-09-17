Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/png?download=true
inline.NumInlined: 72
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@png_icc_profile_error:bb.a
bb.e:                                             ; preds = %is_ICC_signature.exit.thread, %bb.d
  %.0 = phi i64 [ %i.bc, %bb.d ], [ %i.bh, %is_ICC_signature.exit.thread ]
  %i.bi = call i64 @png_safecat(ptr noundef nonnull %i.a, i64 noundef 196, i64 noundef %.0, ptr noundef %3) #28 ; 0 uses
  call void @png_chunk_benign_error(ptr noundef %0, ptr noundef nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @png_icc_check_header(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 1
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)  ; 2 uses
  %.not = icmp eq i32 %i.b, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.c, ptr noundef nonnull @.str.20)
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %i.f = icmp ult i8 %i.e, 4
  %i.g = and i32 %2, 3
  %.not98 = icmp eq i32 %i.g, 0
  %or.cond = or i1 %.not98, %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = zext i32 %2 to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.h, ptr noundef nonnull @.str.21)
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
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.p, ptr noundef nonnull @.str.22)
  br label %bb.ac

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i32, ptr %i.q, align 1
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)  ; 4 uses
  %i.t = icmp ugt i32 %i.s, 65534
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = zext i32 %i.s to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.u, ptr noundef nonnull @.str.23)
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.s, 3
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = zext nneg i32 %i.s to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.w, ptr noundef nonnull @.str.24)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.y = load i32, ptr %i.x, align 1              ; 2 uses
  %.not99 = icmp eq i32 %i.y, 1886610273
  br i1 %.not99, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = zext i32 %i.z to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.aa, ptr noundef nonnull @.str.25)
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
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 0, ptr noundef nonnull @.str.26)
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
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1380401696, ptr noundef nonnull @.str.27)
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  %i.aq = and i32 %4, 2
  %.not101 = icmp eq i32 %i.aq, 0
  br i1 %.not101, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1196573017, ptr noundef nonnull @.str.28)
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  %i.ar = zext i32 %i.an to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.ar, ptr noundef nonnull @.str.29)
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
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1633842036, ptr noundef nonnull @.str.30)
  br label %bb.ac

bb.x:                                             ; preds = %bb.v
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1818848875, ptr noundef nonnull @.str.31)
  br label %bb.ac

bb.y:                                             ; preds = %bb.v
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef 1852662636, ptr noundef nonnull @.str.32)
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.av = zext i32 %i.au to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.av, ptr noundef nonnull @.str.33)
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
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.az, ptr noundef nonnull @.str.34)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.aa, %bb.ab, %bb.x, %bb.w, %bb.u, %bb.t, %bb.r, %bb.m, %bb.i, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.m ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %bb.ab ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.x ], [ 1, %bb.aa ], [ 1, %bb.aa ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @png_icc_check_tag_table(ptr noalias noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
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
  %.03440 = phi ptr [ %i.ah, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 8 uses
  %.03539 = phi i32 [ %i.ag, %bb.e ], [ 0, %.lr.ph.preheader ]
  %i.e = load i8, ptr %.03440, align 1, !tbaa !29
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw i32 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %.03440, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = or disjoint i32 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %.03440, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !29
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = or disjoint i32 %i.l, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.03440, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %i.t = zext i8 %i.s to i32
  %i.u = or disjoint i32 %i.q, %i.t               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03440, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.03440, i64 7
  %4 = load i32, ptr %i.v, align 1, !tbaa !29
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)      ; 2 uses
  %i.y = icmp ugt i32 %5, %2
  br i1 %i.y, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.03440, i64 8
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = sub nuw i32 %2, %5
  %i.ad = icmp ugt i32 %i.ab, %i.ac
  br i1 %i.ad, label %.critedge, label %bb.c

.critedge:                                        ; preds = %bb.b, %.lr.ph
  %i.ae = zext i32 %i.u to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.ae, ptr noundef nonnull @.str.35)
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %6 = and i8 %i.x, 3
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = zext i32 %i.u to i64
  tail call fastcc void @png_icc_profile_error(ptr noundef %0, ptr noundef %1, i64 noundef %i.af, ptr noundef nonnull @.str.36)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = add nuw i32 %.03539, 1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03440, i64 12
  %exitcond.not = icmp eq i32 %i.ag, %i.c
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !147

.loopexit:                                        ; preds = %bb.e, %bb.a, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ 1, %bb.a ], [ 1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @png_set_rgb_coefficients(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.png_XYZ, align 4            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1001
  %i.b = load i8, ptr %i.a, align 1, !tbaa !148
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.d = getelementptr i8, ptr %0, i64 504
  %.val = load i32, ptr %i.d, align 8, !tbaa !149 ; 2 uses
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
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !55   ; 4 uses
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
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bm = trunc i32 %.083 to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1002
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !150
  %i.bo = trunc i32 %.081 to i16
  br label %png_muldiv.exit.thread.sink.split

have_chromaticities.exit.thread:                  ; preds = %bb.b, %have_chromaticities.exit.thread87
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1002
  store i16 6968, ptr %i.bp, align 2, !tbaa !150
  br label %png_muldiv.exit.thread.sink.split

png_muldiv.exit.thread.sink.split:                ; preds = %have_chromaticities.exit.thread, %bb.t
  %.sink = phi i16 [ %i.bo, %bb.t ], [ 23434, %have_chromaticities.exit.thread ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1004
  store i16 %.sink, ptr %i.bq, align 4, !tbaa !151
end_hunk_0
