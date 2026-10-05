Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/neon_helper?download=true
inline.NumInlined: 278
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 44
begin_hunk_0_@helper_neon_rshl_s8:bb.a
  %i.a = ashr exact i32 %sext, 24
  %sext14 = shl i32 %1, 24
  %i.b = ashr exact i32 %sext14, 24               ; 5 uses
  %.not.i = icmp sgt i32 %i.b, -8
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i32 %i.b, -1
  %i.e = ashr i32 %i.a, %i.d                      ; 2 uses
  %i.f = ashr i32 %i.e, 1
  %i.g = and i32 %i.e, 1
  %i.h = add nsw i32 %i.f, %i.g
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %i.b, 8
  br i1 %i.i, label %bb.e, label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %0, %i.b
  %i.k = shl i32 %i.j, 24
  %i.l = ashr exact i32 %i.k, 24
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c, %bb.e
  %.3.i = phi i32 [ %i.l, %bb.e ], [ 0, %bb.a ], [ %i.h, %bb.c ], [ 0, %bb.d ]
  %i.m = shl i32 %0, 16
  %i.n = ashr i32 %i.m, 24                        ; 2 uses
  %i.o = shl i32 %1, 16
  %i.p = ashr i32 %i.o, 24                        ; 5 uses
  %.not.i21 = icmp sgt i32 %i.p, -8
  br i1 %.not.i21, label %bb.f, label %do_sqrshl_bhs.exit23

bb.f:                                             ; preds = %do_sqrshl_bhs.exit
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = xor i32 %i.p, -1
  %i.s = ashr i32 %i.n, %i.r                      ; 2 uses
  %i.t = ashr i32 %i.s, 1
  %i.u = and i32 %i.s, 1
  %i.v = add nsw i32 %i.t, %i.u
  br label %do_sqrshl_bhs.exit23

bb.h:                                             ; preds = %bb.f
  %i.w = icmp samesign ult i32 %i.p, 8
  br i1 %i.w, label %bb.i, label %do_sqrshl_bhs.exit23

bb.i:                                             ; preds = %bb.h
  %i.x = shl nsw i32 %i.n, %i.p
  %i.y = shl i32 %i.x, 24
  %i.z = ashr exact i32 %i.y, 24
  br label %do_sqrshl_bhs.exit23

do_sqrshl_bhs.exit23:                             ; preds = %bb.h, %do_sqrshl_bhs.exit, %bb.g, %bb.i
  %.3.i22 = phi i32 [ %i.z, %bb.i ], [ 0, %do_sqrshl_bhs.exit ], [ %i.v, %bb.g ], [ 0, %bb.h ]
  %i.aa = shl i32 %0, 8
  %i.ab = ashr i32 %i.aa, 24                      ; 2 uses
  %i.ac = shl i32 %1, 8
  %i.ad = ashr i32 %i.ac, 24                      ; 5 uses
  %.not.i24 = icmp sgt i32 %i.ad, -8
  br i1 %.not.i24, label %bb.j, label %do_sqrshl_bhs.exit26

bb.j:                                             ; preds = %do_sqrshl_bhs.exit23
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = xor i32 %i.ad, -1
  %i.ag = ashr i32 %i.ab, %i.af                   ; 2 uses
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = and i32 %i.ag, 1
  %i.aj = add nsw i32 %i.ah, %i.ai
  br label %do_sqrshl_bhs.exit26

bb.l:                                             ; preds = %bb.j
  %i.ak = icmp samesign ult i32 %i.ad, 8
  br i1 %i.ak, label %bb.m, label %do_sqrshl_bhs.exit26

bb.m:                                             ; preds = %bb.l
  %i.al = shl nsw i32 %i.ab, %i.ad
  %i.am = shl i32 %i.al, 24
  %i.an = ashr exact i32 %i.am, 24
  br label %do_sqrshl_bhs.exit26

do_sqrshl_bhs.exit26:                             ; preds = %bb.l, %do_sqrshl_bhs.exit23, %bb.k, %bb.m
  %.3.i25 = phi i32 [ %i.an, %bb.m ], [ 0, %do_sqrshl_bhs.exit23 ], [ %i.aj, %bb.k ], [ 0, %bb.l ]
  %i.ao = ashr i32 %0, 24                         ; 2 uses
  %i.ap = ashr i32 %1, 24                         ; 5 uses
  %.not.i27 = icmp sgt i32 %i.ap, -8
  br i1 %.not.i27, label %bb.n, label %do_sqrshl_bhs.exit29

bb.n:                                             ; preds = %do_sqrshl_bhs.exit26
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = xor i32 %i.ap, -1
  %i.as = ashr i32 %i.ao, %i.ar                   ; 2 uses
  %i.at = ashr i32 %i.as, 1
  %i.au = and i32 %i.as, 1
  %i.av = add nsw i32 %i.at, %i.au
  %i.aw = shl nsw i32 %i.av, 24
  br label %do_sqrshl_bhs.exit29

bb.p:                                             ; preds = %bb.n
  %i.ax = icmp samesign ult i32 %i.ap, 8
  br i1 %i.ax, label %bb.q, label %do_sqrshl_bhs.exit29

bb.q:                                             ; preds = %bb.p
  %i.ay = shl nsw i32 %i.ao, %i.ap
  %i.az = shl i32 %i.ay, 24
  br label %do_sqrshl_bhs.exit29

do_sqrshl_bhs.exit29:                             ; preds = %bb.p, %do_sqrshl_bhs.exit26, %bb.o, %bb.q
  %.3.i28 = phi i32 [ %i.az, %bb.q ], [ 0, %do_sqrshl_bhs.exit26 ], [ %i.aw, %bb.o ], [ 0, %bb.p ]
  %.sroa.6.0.insert.ext = shl nsw i32 %.3.i25, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.5.0.insert.ext = shl nsw i32 %.3.i22, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.03.0.insert.ext = and i32 %.3.i, 255
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.03.0.insert.ext
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.6.0.insert.shift
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.3.i28
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_srshl_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.z, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.i = load i8, ptr %i.h, align 1
  %i.j = sext i8 %i.i to i32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  %i.m = sext i8 %i.l to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.l, -8
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i8 %i.l, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = xor i32 %i.m, -1
  %i.p = ashr i32 %i.j, %i.o                      ; 2 uses
  %i.q = ashr i32 %i.p, 1
  %i.r = and i32 %i.p, 1
  %i.s = add nsw i32 %i.q, %i.r
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i8 %i.l, 8
  br i1 %i.t, label %bb.f, label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.e
  %i.u = shl nsw i32 %i.j, %i.m
  %i.v = shl i32 %i.u, 24
  %i.w = ashr exact i32 %i.v, 24
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d, %bb.f
  %.3.i = phi i32 [ %i.w, %bb.f ], [ 0, %bb.b ], [ %i.s, %bb.d ], [ 0, %bb.e ]
  %i.x = trunc nsw i32 %.3.i to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %i.x, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.g
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !13

bb.g:                                             ; preds = %do_sqrshl_bhs.exit
  %i.aa = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aa, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ab = add nuw nsw i32 %i.e, 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.g
  %i.ae = xor i64 %i.g, -1
  %i.af = add nsw i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, -8
  %i.ah = add nsw i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.g, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_rshl_s16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %0, 16
  %i.a = ashr exact i32 %sext, 16
  %sext10 = shl i32 %1, 24
  %i.b = ashr exact i32 %sext10, 24               ; 5 uses
  %.not.i = icmp sgt i32 %i.b, -16
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i32 %i.b, -1
  %i.e = ashr i32 %i.a, %i.d                      ; 2 uses
  %i.f = ashr i32 %i.e, 1
  %i.g = and i32 %i.e, 1
  %i.h = add nsw i32 %i.f, %i.g
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %i.b, 16
  br i1 %i.i, label %bb.e, label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %0, %i.b
  %i.k = shl i32 %i.j, 16
  %i.l = ashr exact i32 %i.k, 16
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c, %bb.e
  %.3.i = phi i32 [ %i.l, %bb.e ], [ 0, %bb.a ], [ %i.h, %bb.c ], [ 0, %bb.d ]
  %i.m = ashr i32 %0, 16                          ; 2 uses
  %i.n = shl i32 %1, 8
  %i.o = ashr i32 %i.n, 24                        ; 5 uses
  %.not.i13 = icmp sgt i32 %i.o, -16
  br i1 %.not.i13, label %bb.f, label %do_sqrshl_bhs.exit15

bb.f:                                             ; preds = %do_sqrshl_bhs.exit
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = xor i32 %i.o, -1
  %i.r = ashr i32 %i.m, %i.q                      ; 2 uses
  %i.s = ashr i32 %i.r, 1
  %i.t = and i32 %i.r, 1
  %i.u = add nsw i32 %i.s, %i.t
  %i.v = shl nsw i32 %i.u, 16
  br label %do_sqrshl_bhs.exit15

bb.h:                                             ; preds = %bb.f
  %i.w = icmp samesign ult i32 %i.o, 16
  br i1 %i.w, label %bb.i, label %do_sqrshl_bhs.exit15

bb.i:                                             ; preds = %bb.h
  %i.x = shl nsw i32 %i.m, %i.o
  %i.y = shl i32 %i.x, 16
  br label %do_sqrshl_bhs.exit15

do_sqrshl_bhs.exit15:                             ; preds = %bb.h, %do_sqrshl_bhs.exit, %bb.g, %bb.i
  %.3.i14 = phi i32 [ %i.y, %bb.i ], [ 0, %do_sqrshl_bhs.exit ], [ %i.v, %bb.g ], [ 0, %bb.h ]
  %.sroa.03.0.insert.ext = and i32 %.3.i, 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.3.i14, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_srshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.ab, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.j = load i16, ptr %i.i, align 2
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.015
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %sext = shl i32 %i.n, 24
  %i.o = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.o, -16
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = xor i32 %i.o, -1
  %i.r = ashr i32 %i.k, %i.q                      ; 2 uses
  %i.s = ashr i32 %i.r, 1
  %i.t = and i32 %i.r, 1
  %i.u = add nsw i32 %i.s, %i.t
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i32 %i.o, 16
  br i1 %i.v, label %bb.f, label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.e
  %i.w = shl nsw i32 %i.k, %i.o
  %i.x = shl i32 %i.w, 16
  %i.y = ashr exact i32 %i.x, 16
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d, %bb.f
  %.3.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.b ], [ %i.u, %bb.d ], [ 0, %bb.e ]
  %i.z = trunc nsw i32 %.3.i to i16
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = add nuw nsw i64 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !14

bb.g:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ac = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ac, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ad = add nuw nsw i32 %i.e, 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %0, i64 %i.g
  %i.ag = xor i64 %i.g, -1
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, -8
  %i.aj = add nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.aj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.g, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_srshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.aa, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.j = load i16, ptr %i.i, align 2
  %i.k = sext i16 %i.j to i32                     ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.015
  %i.m = load i16, ptr %i.l, align 2              ; 4 uses
  %i.n = sext i16 %i.m to i32                     ; 2 uses
  %.not.i = icmp sgt i16 %i.m, -16
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i16 %i.m, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i32 %i.n, -1
  %i.q = ashr i32 %i.k, %i.p                      ; 2 uses
  %i.r = ashr i32 %i.q, 1
  %i.s = and i32 %i.q, 1
  %i.t = add nsw i32 %i.r, %i.s
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp samesign ult i16 %i.m, 16
  br i1 %i.u, label %bb.f, label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.e
  %i.v = shl nsw i32 %i.k, %i.n
  %i.w = shl i32 %i.v, 16
  %i.x = ashr exact i32 %i.w, 16
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d, %bb.f
  %.3.i = phi i32 [ %i.x, %bb.f ], [ 0, %bb.b ], [ %i.t, %bb.d ], [ 0, %bb.e ]
  %i.y = trunc nsw i32 %.3.i to i16
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = add nuw nsw i64 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.h
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !15

bb.g:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ab = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ab, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.ac = add nuw nsw i32 %i.e, 8
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %0, i64 %i.g
  %i.af = xor i64 %i.g, -1
  %i.ag = add nsw i64 %i.af, %i.ad
  %i.ah = and i64 %i.ag, -8
  %i.ai = add nsw i64 %i.ah, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.ai, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.g, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_srshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.w, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015
  %i.l = load i32, ptr %i.k, align 4
  %sext = shl i32 %i.l, 24
  %i.m = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.m, -32
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = xor i32 %i.m, -1
  %i.p = ashr i32 %i.j, %i.o                      ; 2 uses
  %i.q = ashr i32 %i.p, 1
  %i.r = and i32 %i.p, 1
  %i.s = add nsw i32 %i.q, %i.r
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i32 %i.m, 32
  %i.u = shl i32 %i.j, %i.m
  %spec.select = select i1 %i.t, i32 %i.u, i32 0
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.b ], [ %i.s, %bb.d ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  store i32 %.3.i, ptr %i.v, align 4
  %i.w = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !16

bb.f:                                             ; preds = %do_sqrshl_bhs.exit
  %i.x = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.x, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.y = add nuw nsw i32 %i.e, 8
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.g
  %i.ab = xor i64 %i.g, -1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_srshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.v, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %.not.i = icmp sgt i32 %i.l, -32
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = xor i32 %i.l, -1
  %i.o = ashr i32 %i.j, %i.n                      ; 2 uses
  %i.p = ashr i32 %i.o, 1
  %i.q = and i32 %i.o, 1
  %i.r = add nsw i32 %i.p, %i.q
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i32 %i.l, 32
  %i.t = shl i32 %i.j, %i.l
  %spec.select = select i1 %i.s, i32 %i.t, i32 0
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.b ], [ %i.r, %bb.d ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  store i32 %.3.i, ptr %i.u, align 4
  %i.v = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !17

bb.f:                                             ; preds = %do_sqrshl_bhs.exit
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_srshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_d.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.x, %do_sqrshl_d.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.015
  %i.l = load i64, ptr %i.k, align 8
  %sext = shl i64 %i.l, 56
  %i.m = ashr exact i64 %sext, 56                 ; 5 uses
  %i.n = icmp slt i64 %i.m, -63
  br i1 %i.n, label %do_sqrshl_d.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i64 %i.m, -1
  %i.q = ashr i64 %i.j, %i.p                      ; 2 uses
  %i.r = ashr i64 %i.q, 1
  %i.s = and i64 %i.q, 1
  %i.t = add nsw i64 %i.r, %i.s
  br label %do_sqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp samesign ult i64 %i.m, 64
  %i.v = shl i64 %i.j, %i.m
  %spec.select = select i1 %i.u, i64 %i.v, i64 0
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.e, %bb.b, %bb.d
  %.1.i = phi i64 [ %spec.select, %bb.e ], [ 0, %bb.b ], [ %i.t, %bb.d ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %.1.i, ptr %i.w, align 8
  %i.x = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !18

bb.f:                                             ; preds = %do_sqrshl_d.exit
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_srshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_d.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.w, %do_sqrshl_d.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.015
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = icmp slt i64 %i.l, -63
  br i1 %i.m, label %do_sqrshl_d.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = xor i64 %i.l, -1
  %i.p = ashr i64 %i.j, %i.o                      ; 2 uses
  %i.q = ashr i64 %i.p, 1
  %i.r = and i64 %i.p, 1
  %i.s = add nsw i64 %i.q, %i.r
  br label %do_sqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i64 %i.l, 64
  %i.u = shl i64 %i.j, %i.l
  %spec.select = select i1 %i.t, i64 %i.u, i64 0
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.e, %bb.b, %bb.d
  %.1.i = phi i64 [ %spec.select, %bb.e ], [ 0, %bb.b ], [ %i.s, %bb.d ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %.1.i, ptr %i.v, align 8
  %i.w = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !19

bb.f:                                             ; preds = %do_sqrshl_d.exit
  %i.x = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.x, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.y = add nuw nsw i32 %i.e, 8
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.g
  %i.ab = xor i64 %i.g, -1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_rshl_s32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %1, 24
  %i.a = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.a, -32
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %i.a, -1
  %i.d = ashr i32 %0, %i.c                        ; 2 uses
  %i.e = ashr i32 %i.d, 1
  %i.f = and i32 %i.d, 1
  %i.g = add nsw i32 %i.e, %i.f
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.a, 32
  %i.i = shl i32 %0, %i.a
  %spec.select = select i1 %i.h, i32 %i.i, i32 0
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c
  %.3.i = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ %i.g, %bb.c ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_neon_rshl_s64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i64 %1, 56
  %i.a = ashr exact i64 %sext, 56                 ; 5 uses
  %i.b = icmp slt i64 %i.a, -63
  br i1 %i.b, label %do_sqrshl_d.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i64 %i.a, -1
  %i.e = ashr i64 %0, %i.d                        ; 2 uses
  %i.f = ashr i64 %i.e, 1
  %i.g = and i64 %i.e, 1
  %i.h = add nsw i64 %i.f, %i.g
  br label %do_sqrshl_d.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i64 %i.a, 64
  %i.j = shl i64 %0, %i.a
  %spec.select = select i1 %i.i, i64 %i.j, i64 0
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.d, %bb.a, %bb.c
  %.1.i = phi i64 [ %spec.select, %bb.d ], [ 0, %bb.a ], [ %i.h, %bb.c ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_rshl_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.59.0.extract.shift = lshr i32 %0, 8      ; 2 uses
  %.sroa.610.0.extract.shift = lshr i32 %0, 16    ; 2 uses
  %.sroa.711.0.extract.shift = lshr i32 %0, 24    ; 2 uses
  %i.a = and i32 %0, 255
  %sext = shl i32 %1, 24
  %i.b = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.b, -9
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i32 %i.b, -1
  %i.e = lshr i32 %i.a, %i.d                      ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = sub nsw i32 %i.e, %i.f
  %i.h = and i32 %i.g, 255
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %i.b, 8
  br i1 %i.i, label %bb.e, label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %0, %i.b
  %i.k = and i32 %i.j, 255
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c, %bb.e
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.c ], [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.l = and i32 %.sroa.59.0.extract.shift, 255
  %i.m = shl i32 %1, 16
  %i.n = ashr i32 %i.m, 24                        ; 5 uses
  %.not.i17 = icmp sgt i32 %i.n, -9
  br i1 %.not.i17, label %bb.f, label %do_uqrshl_bhs.exit19

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = xor i32 %i.n, -1
  %i.q = lshr i32 %i.l, %i.p                      ; 2 uses
  %i.r = lshr i32 %i.q, 1
  %i.s = sub nsw i32 %i.q, %i.r
  br label %do_uqrshl_bhs.exit19

bb.h:                                             ; preds = %bb.f
  %i.t = icmp samesign ult i32 %i.n, 8
  br i1 %i.t, label %bb.i, label %do_uqrshl_bhs.exit19

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i32 %.sroa.59.0.extract.shift, %i.n
  %i.v = and i32 %i.u, 255
  br label %do_uqrshl_bhs.exit19

do_uqrshl_bhs.exit19:                             ; preds = %bb.h, %do_uqrshl_bhs.exit, %bb.g, %bb.i
  %.3.i18 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.s, %bb.g ], [ %i.v, %bb.i ], [ 0, %bb.h ]
  %i.w = and i32 %.sroa.610.0.extract.shift, 255
  %i.x = shl i32 %1, 8
  %i.y = ashr i32 %i.x, 24                        ; 5 uses
  %.not.i20 = icmp sgt i32 %i.y, -9
  br i1 %.not.i20, label %bb.j, label %do_uqrshl_bhs.exit22

bb.j:                                             ; preds = %do_uqrshl_bhs.exit19
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = xor i32 %i.y, -1
  %i.ab = lshr i32 %i.w, %i.aa                    ; 2 uses
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = sub nsw i32 %i.ab, %i.ac
  br label %do_uqrshl_bhs.exit22

bb.l:                                             ; preds = %bb.j
  %i.ae = icmp samesign ult i32 %i.y, 8
  br i1 %i.ae, label %bb.m, label %do_uqrshl_bhs.exit22

bb.m:                                             ; preds = %bb.l
  %i.af = shl nuw nsw i32 %.sroa.610.0.extract.shift, %i.y
  %i.ag = and i32 %i.af, 255
  br label %do_uqrshl_bhs.exit22

do_uqrshl_bhs.exit22:                             ; preds = %bb.l, %do_uqrshl_bhs.exit19, %bb.k, %bb.m
  %.3.i21 = phi i32 [ 0, %do_uqrshl_bhs.exit19 ], [ %i.ad, %bb.k ], [ %i.ag, %bb.m ], [ 0, %bb.l ]
  %i.ah = ashr i32 %1, 24                         ; 5 uses
  %.not.i23 = icmp sgt i32 %i.ah, -9
  br i1 %.not.i23, label %bb.n, label %do_uqrshl_bhs.exit25

bb.n:                                             ; preds = %do_uqrshl_bhs.exit22
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = xor i32 %i.ah, -1
  %i.ak = lshr i32 %.sroa.711.0.extract.shift, %i.aj ; 2 uses
  %i.al = lshr i32 %i.ak, 1
  %i.am = sub nsw i32 %i.ak, %i.al
  br label %do_uqrshl_bhs.exit25

bb.p:                                             ; preds = %bb.n
  %i.an = icmp samesign ult i32 %i.ah, 8
  %i.ao = shl nuw nsw i32 %.sroa.711.0.extract.shift, %i.ah
  %spec.select = select i1 %i.an, i32 %i.ao, i32 0
  br label %do_uqrshl_bhs.exit25

do_uqrshl_bhs.exit25:                             ; preds = %bb.p, %do_uqrshl_bhs.exit22, %bb.o
  %.3.i24 = phi i32 [ 0, %do_uqrshl_bhs.exit22 ], [ %i.am, %bb.o ], [ %spec.select, %bb.p ]
  %.sroa.7.0.insert.ext = shl i32 %.3.i24, 24
  %.sroa.6.0.insert.ext = shl nsw i32 %.3.i21, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = shl nsw i32 %.3.i18, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.3.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_urshl_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.w, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.016
  %i.l = load i8, ptr %i.k, align 1               ; 4 uses
  %i.m = sext i8 %i.l to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.l, -9
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i8 %i.l, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = xor i32 %i.m, -1
  %i.p = lshr i32 %i.j, %i.o                      ; 2 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = sub nsw i32 %i.p, %i.q
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i8 %i.l, 8
  %i.t = shl nuw nsw i32 %i.j, %i.m
  %spec.select = select i1 %i.s, i32 %i.t, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.r, %bb.d ], [ %spec.select, %bb.e ]
  %i.u = trunc i32 %.3.i to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %i.u, ptr %i.v, align 1
  %i.w = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.g
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !20

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.x = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.x, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.y = add nuw nsw i32 %i.e, 8
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.g
  %i.ab = xor i64 %i.g, -1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = and i64 %i.ac, -8
  %i.ae = add nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aa, i8 0, i64 %i.ae, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_rshl_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.57.0.extract.shift = lshr i32 %0, 16     ; 2 uses
  %i.a = and i32 %0, 65535
  %sext = shl i32 %1, 24
  %i.b = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.b, -17
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i32 %i.b, -1
  %i.e = lshr i32 %i.a, %i.d                      ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = sub nsw i32 %i.e, %i.f
  %i.h = and i32 %i.g, 65535
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %i.b, 16
  br i1 %i.i, label %bb.e, label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %0, %i.b
  %i.k = and i32 %i.j, 65535
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c, %bb.e
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.c ], [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.l = shl i32 %1, 8
  %i.m = ashr i32 %i.l, 24                        ; 5 uses
  %.not.i11 = icmp sgt i32 %i.m, -17
  br i1 %.not.i11, label %bb.f, label %do_uqrshl_bhs.exit13

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = xor i32 %i.m, -1
  %i.p = lshr i32 %.sroa.57.0.extract.shift, %i.o ; 2 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = sub nsw i32 %i.p, %i.q
  br label %do_uqrshl_bhs.exit13

bb.h:                                             ; preds = %bb.f
  %i.s = icmp samesign ult i32 %i.m, 16
  %i.t = shl nuw nsw i32 %.sroa.57.0.extract.shift, %i.m
  %spec.select = select i1 %i.s, i32 %i.t, i32 0
  br label %do_uqrshl_bhs.exit13

do_uqrshl_bhs.exit13:                             ; preds = %bb.h, %do_uqrshl_bhs.exit, %bb.g
  %.3.i12 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.r, %bb.g ], [ %spec.select, %bb.h ]
  %.sroa.5.0.insert.ext = shl i32 %.3.i12, 16
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.3.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_urshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.y, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.015
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %sext = shl i32 %i.n, 24
  %i.o = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.o, -17
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = xor i32 %i.o, -1
  %i.r = lshr i32 %i.k, %i.q                      ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = sub nsw i32 %i.r, %i.s
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp samesign ult i32 %i.o, 16
  %i.v = shl nuw nsw i32 %i.k, %i.o
  %spec.select = select i1 %i.u, i32 %i.v, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.t, %bb.d ], [ %spec.select, %bb.e ]
  %i.w = trunc i32 %.3.i to i16
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 %i.w, ptr %i.x, align 2
  %i.y = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !21

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.z = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.z, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.aa = add nuw nsw i32 %i.e, 8
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %0, i64 %i.g
  %i.ad = xor i64 %i.g, -1
  %i.ae = add nsw i64 %i.ad, %i.ab
  %i.af = and i64 %i.ae, -8
  %i.ag = add nsw i64 %i.af, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ac, i8 0, i64 %i.ag, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_urshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.x, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.015
  %i.m = load i16, ptr %i.l, align 2              ; 4 uses
  %i.n = sext i16 %i.m to i32                     ; 2 uses
  %.not.i = icmp sgt i16 %i.m, -17
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i16 %i.m, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i32 %i.n, -1
  %i.q = lshr i32 %i.k, %i.p                      ; 2 uses
  %i.r = lshr i32 %i.q, 1
  %i.s = sub nsw i32 %i.q, %i.r
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i16 %i.m, 16
  %i.u = shl nuw nsw i32 %i.k, %i.n
  %spec.select = select i1 %i.t, i32 %i.u, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.s, %bb.d ], [ %spec.select, %bb.e ]
  %i.v = trunc i32 %.3.i to i16
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 %i.v, ptr %i.w, align 2
  %i.x = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !22

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_urshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.v, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015
  %i.l = load i32, ptr %i.k, align 4
  %sext = shl i32 %i.l, 24
  %i.m = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.m, -33
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = xor i32 %i.m, -1
  %i.p = lshr i32 %i.j, %i.o                      ; 2 uses
  %i.q = lshr i32 %i.p, 1
  %i.r = sub i32 %i.p, %i.q
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i32 %i.m, 32
  %i.t = shl i32 %i.j, %i.m
  %spec.select = select i1 %i.s, i32 %i.t, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.r, %bb.d ], [ %spec.select, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  store i32 %.3.i, ptr %i.u, align 4
  %i.v = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !23

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_urshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.u, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.015
  %i.l = load i32, ptr %i.k, align 4              ; 5 uses
  %.not.i = icmp sgt i32 %i.l, -33
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = xor i32 %i.l, -1
  %i.o = lshr i32 %i.j, %i.n                      ; 2 uses
  %i.p = lshr i32 %i.o, 1
  %i.q = sub i32 %i.o, %i.p
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i32 %i.l, 32
  %i.s = shl i32 %i.j, %i.l
  %spec.select = select i1 %i.r, i32 %i.s, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.e, %bb.b, %bb.d
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.q, %bb.d ], [ %spec.select, %bb.e ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  store i32 %.3.i, ptr %i.t, align 4
  %i.u = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !24

bb.f:                                             ; preds = %do_uqrshl_bhs.exit
  %i.v = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.v, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.w = add nuw nsw i32 %i.e, 8
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr i8, ptr %0, i64 %i.g
  %i.z = xor i64 %i.g, -1
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = and i64 %i.aa, -8
  %i.ac = add nsw i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ac, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_urshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_d.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.v, %do_uqrshl_d.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.015
  %i.l = load i64, ptr %i.k, align 8
  %sext = shl i64 %i.l, 56
  %i.m = ashr exact i64 %sext, 56                 ; 5 uses
  %.not.i = icmp sgt i64 %i.m, -65
  br i1 %.not.i, label %bb.c, label %do_uqrshl_d.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = xor i64 %i.m, -1
  %i.p = lshr i64 %i.j, %i.o                      ; 2 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = sub i64 %i.p, %i.q
  br label %do_uqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp samesign ult i64 %i.m, 64
  %i.t = shl i64 %i.j, %i.m
  %spec.select = select i1 %i.s, i64 %i.t, i64 0
  br label %do_uqrshl_d.exit

do_uqrshl_d.exit:                                 ; preds = %bb.e, %bb.b, %bb.d
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.r, %bb.d ], [ %spec.select, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %.1.i, ptr %i.u, align 8
  %i.v = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !25

bb.f:                                             ; preds = %do_uqrshl_d.exit
  %i.w = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.w, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.x = add nuw nsw i32 %i.e, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %0, i64 %i.g
  %i.aa = xor i64 %i.g, -1
  %i.ab = add nsw i64 %i.aa, %i.y
  %i.ac = and i64 %i.ab, -8
  %i.ad = add nsw i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ad, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_urshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_d.exit
  %.015 = phi i64 [ 0, %bb.a ], [ %i.u, %do_uqrshl_d.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.015
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %.not.i = icmp sgt i64 %i.l, -65
  br i1 %.not.i, label %bb.c, label %do_uqrshl_d.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = xor i64 %i.l, -1
  %i.o = lshr i64 %i.j, %i.n                      ; 2 uses
  %i.p = lshr i64 %i.o, 1
  %i.q = sub i64 %i.o, %i.p
  br label %do_uqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i64 %i.l, 64
  %i.s = shl i64 %i.j, %i.l
  %spec.select = select i1 %i.r, i64 %i.s, i64 0
  br label %do_uqrshl_d.exit

do_uqrshl_d.exit:                                 ; preds = %bb.e, %bb.b, %bb.d
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ], [ %spec.select, %bb.e ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %.1.i, ptr %i.t, align 8
  %i.u = add nuw nsw i64 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !26

bb.f:                                             ; preds = %do_uqrshl_d.exit
  %i.v = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.v, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.w = add nuw nsw i32 %i.e, 8
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr i8, ptr %0, i64 %i.g
  %i.z = xor i64 %i.g, -1
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = and i64 %i.aa, -8
  %i.ac = add nsw i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ac, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.f, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_rshl_u32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i32 %1, 24
  %i.a = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.a, -33
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %i.a, -1
  %i.d = lshr i32 %0, %i.c                        ; 2 uses
  %i.e = lshr i32 %i.d, 1
  %i.f = sub i32 %i.d, %i.e
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %i.a, 32
  %i.h = shl i32 %0, %i.a
  %spec.select = select i1 %i.g, i32 %i.h, i32 0
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.d, %bb.a, %bb.c
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.f, %bb.c ], [ %spec.select, %bb.d ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_neon_rshl_u64(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %sext = shl i64 %1, 56
  %i.a = ashr exact i64 %sext, 56                 ; 5 uses
  %.not.i = icmp sgt i64 %i.a, -65
  br i1 %.not.i, label %bb.b, label %do_uqrshl_d.exit

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = xor i64 %i.a, -1
  %i.d = lshr i64 %0, %i.c                        ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = sub i64 %i.d, %i.e
  br label %do_uqrshl_d.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %i.a, 64
  %i.h = shl i64 %0, %i.a
  %spec.select = select i1 %i.g, i64 %i.h, i64 0
  br label %do_uqrshl_d.exit

do_uqrshl_d.exit:                                 ; preds = %bb.d, %bb.a, %bb.c
  %.1.i = phi i64 [ 0, %bb.a ], [ %i.f, %bb.c ], [ %spec.select, %bb.d ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshl_u8(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.sroa.59.0.extract.shift = lshr i32 %1, 8
  %.sroa.610.0.extract.shift = lshr i32 %1, 16
  %.sroa.711.0.extract.shift = lshr i32 %1, 24    ; 3 uses
  %i.a = and i32 %1, 255                          ; 3 uses
  %sext = shl i32 %2, 24
  %i.b = ashr exact i32 %sext, 24                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 4 uses
  %.not.i = icmp sgt i32 %i.b, -8
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i32 0, %i.b
  %i.f = lshr i32 %i.a, %i.e
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %i.b, 8
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = shl nuw nsw i32 %i.a, %i.b               ; 2 uses
  %i.i = icmp samesign ugt i32 %i.h, 255
  br i1 %i.i, label %bb.g, label %do_uqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.e ], [ %i.f, %bb.c ], [ 255, %bb.g ], [ 0, %bb.f ]
  %i.k = and i32 %.sroa.59.0.extract.shift, 255   ; 3 uses
  %i.l = shl i32 %2, 16
  %i.m = ashr i32 %i.l, 24                        ; 5 uses
  %.not.i20 = icmp sgt i32 %i.m, -8
  br i1 %.not.i20, label %bb.h, label %do_uqrshl_bhs.exit22

bb.h:                                             ; preds = %do_uqrshl_bhs.exit
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = sub nsw i32 0, %i.m
  %i.p = lshr i32 %i.k, %i.o
  br label %do_uqrshl_bhs.exit22

bb.j:                                             ; preds = %bb.h
  %i.q = icmp samesign ult i32 %i.m, 8
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = shl nuw nsw i32 %i.k, %i.m               ; 2 uses
  %i.s = icmp samesign ugt i32 %i.r, 255
  br i1 %i.s, label %bb.m, label %do_uqrshl_bhs.exit22

bb.l:                                             ; preds = %bb.j
  %i.t = icmp eq i32 %i.k, 0
  br i1 %i.t, label %do_uqrshl_bhs.exit22, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit22

do_uqrshl_bhs.exit22:                             ; preds = %do_uqrshl_bhs.exit, %bb.i, %bb.k, %bb.l, %bb.m
  %.3.i21 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.r, %bb.k ], [ %i.p, %bb.i ], [ 255, %bb.m ], [ 0, %bb.l ]
  %i.u = and i32 %.sroa.610.0.extract.shift, 255  ; 3 uses
  %i.v = shl i32 %2, 8
  %i.w = ashr i32 %i.v, 24                        ; 5 uses
  %.not.i23 = icmp sgt i32 %i.w, -8
  br i1 %.not.i23, label %bb.n, label %do_uqrshl_bhs.exit25

bb.n:                                             ; preds = %do_uqrshl_bhs.exit22
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = sub nsw i32 0, %i.w
  %i.z = lshr i32 %i.u, %i.y
  br label %do_uqrshl_bhs.exit25

bb.p:                                             ; preds = %bb.n
  %i.aa = icmp samesign ult i32 %i.w, 8
  br i1 %i.aa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ab = shl nuw nsw i32 %i.u, %i.w              ; 2 uses
  %i.ac = icmp samesign ugt i32 %i.ab, 255
  br i1 %i.ac, label %bb.s, label %do_uqrshl_bhs.exit25

bb.r:                                             ; preds = %bb.p
  %i.ad = icmp eq i32 %i.u, 0
  br i1 %i.ad, label %do_uqrshl_bhs.exit25, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit25

do_uqrshl_bhs.exit25:                             ; preds = %do_uqrshl_bhs.exit22, %bb.o, %bb.q, %bb.r, %bb.s
  %.3.i24 = phi i32 [ 0, %do_uqrshl_bhs.exit22 ], [ %i.ab, %bb.q ], [ %i.z, %bb.o ], [ 255, %bb.s ], [ 0, %bb.r ]
  %i.ae = ashr i32 %2, 24                         ; 5 uses
  %.not.i26 = icmp sgt i32 %i.ae, -8
  br i1 %.not.i26, label %bb.t, label %do_uqrshl_bhs.exit28

bb.t:                                             ; preds = %do_uqrshl_bhs.exit25
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ag = sub nsw i32 0, %i.ae
  %i.ah = lshr i32 %.sroa.711.0.extract.shift, %i.ag
  br label %do_uqrshl_bhs.exit28

bb.v:                                             ; preds = %bb.t
  %i.ai = icmp samesign ult i32 %i.ae, 8
  br i1 %i.ai, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aj = shl nuw nsw i32 %.sroa.711.0.extract.shift, %i.ae ; 2 uses
  %i.ak = icmp samesign ugt i32 %i.aj, 255
  br i1 %i.ak, label %bb.y, label %do_uqrshl_bhs.exit28

bb.x:                                             ; preds = %bb.v
  %i.al = icmp eq i32 %.sroa.711.0.extract.shift, 0
  br i1 %i.al, label %do_uqrshl_bhs.exit28, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit28

do_uqrshl_bhs.exit28:                             ; preds = %do_uqrshl_bhs.exit25, %bb.u, %bb.w, %bb.x, %bb.y
  %.3.i27 = phi i32 [ 0, %do_uqrshl_bhs.exit25 ], [ %i.aj, %bb.w ], [ %i.ah, %bb.u ], [ 255, %bb.y ], [ 0, %bb.x ]
  %.sroa.7.0.insert.ext = shl nuw i32 %.3.i27, 24
  %.sroa.6.0.insert.ext = shl nuw nsw i32 %.3.i24, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = shl nuw nsw i32 %.3.i21, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.insert = add nuw nsw i32 %.sroa.5.0.insert.insert, %.3.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshl_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.017 = phi i64 [ 0, %bb.a ], [ %i.x, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.017
  %i.m = load i8, ptr %i.l, align 1               ; 4 uses
  %i.n = sext i8 %i.m to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.m, -8
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i8 %i.m, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i32 0, %i.n
  %i.q = lshr i32 %i.k, %i.p
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i8 %i.m, 8
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw nsw i32 %i.k, %i.n               ; 2 uses
  %i.t = icmp samesign ugt i32 %i.s, 255
  br i1 %i.t, label %bb.h, label %do_uqrshl_bhs.exit

bb.g:                                             ; preds = %bb.e
  %i.u = icmp eq i8 %i.j, 0
  br i1 %i.u, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.h, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.s, %bb.f ], [ %i.q, %bb.d ], [ 255, %bb.h ], [ 0, %bb.g ]
  %i.v = trunc nuw i32 %.3.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.v, ptr %i.w, align 1
  %i.x = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.g
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !27

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshli_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 16 uses
  %i.j = shl i32 %3, 14
  %i.k = ashr i32 %i.j, 24                        ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.k, -8
  %i.m = icmp samesign ult i32 %i.k, 8
  %i.n = sub nsw i32 0, %i.k                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 0, i64 %i.i, i1 false)
  br label %.split18.us

.split.us:                                        ; preds = %bb.a
  %i.o = icmp slt i32 %i.k, 0
  br i1 %i.o, label %vector.memcheck122, label %.split.us.split

vector.memcheck122:                               ; preds = %.split.us
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -16
  br i1 %diff.check, label %do_uqrshl_bhs.exit.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck122
  %min.iters.check124 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check124, label %vec.epilog.ph, label %vector.ph125

vector.ph125:                                     ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.i, 8
  %n.vec126 = and i64 %i.i, 4080                  ; 4 uses
  %broadcast.splatinsert127 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat128 = shufflevector <16 x i32> %broadcast.splatinsert127, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body129

vector.body129:                                   ; preds = %vector.ph125, %vector.body129
  %index130 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body129 ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %index130
  %wide.load131 = load <16 x i8>, ptr %i.r, align 1
  %i.s = zext <16 x i8> %wide.load131 to <16 x i32>
  %i.t = lshr <16 x i32> %i.s, %broadcast.splat128
  %i.u = trunc nuw <16 x i32> %i.t to <16 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %index130
  store <16 x i8> %i.u, ptr %i.v, align 1
  %index.next132 = add nuw i64 %index130, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.w, label %middle.block133, label %vector.body129, !llvm.loop !28

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %n.vec126, %i.i
  br i1 %cmp.n134, label %.split18.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %min.epilog.iters.check.not.not = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check.not.not, label %do_uqrshl_bhs.exit.us.us.preheader, label %vec.epilog.ph, !prof !10

do_uqrshl_bhs.exit.us.us.preheader:               ; preds = %vector.memcheck122, %vec.epilog.iter.check
  %.016.us.us.ph = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.memcheck122 ]
  br label %do_uqrshl_bhs.exit.us.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec126, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert136 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat137 = shufflevector <8 x i32> %broadcast.splatinsert136, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index138
  %wide.load139 = load <8 x i8>, ptr %i.x, align 1
  %i.y = zext <8 x i8> %wide.load139 to <8 x i32>
  %i.z = lshr <8 x i32> %i.y, %broadcast.splat137
  %i.aa = trunc nuw <8 x i32> %i.z to <8 x i8>
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %index138
  store <8 x i8> %i.aa, ptr %i.ab, align 1
  %index.next140 = add nuw i64 %index138, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next140, %i.i
  br i1 %i.ac, label %.split18.us, label %vec.epilog.vector.body, !llvm.loop !29

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us, %do_uqrshl_bhs.exit.us.us.preheader
  %.016.us.us = phi i64 [ %.016.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader ], [ %i.be, %do_uqrshl_bhs.exit.us.us ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = lshr i32 %i.af, %i.n
  %i.ah = trunc nuw i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = lshr i32 %i.am, %i.n
  %i.ao = trunc nuw i32 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = or disjoint i64 %.016.us.us, 2          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %i.au = lshr i32 %i.at, %i.n
  %i.av = trunc nuw i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  store i8 %i.av, ptr %i.aw, align 1
  %i.ax = or disjoint i64 %.016.us.us, 3          ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = lshr i32 %i.ba, %i.n
  %i.bc = trunc nuw i32 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  store i8 %i.bc, ptr %i.bd, align 1
  %i.be = add nuw nsw i64 %.016.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.be, %i.i
  br i1 %exitcond26.not.3, label %.split18.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !30

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.m, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 16
  br i1 %min.iters.check, label %.split.us.split.split.preheader148, label %vector.memcheck

.split.us.split.split.preheader148:               ; preds = %vector.memcheck, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.bf = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bh = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.l, %i.bg
  %bound1 = icmp ult ptr %0, %i.bf
  %found.conflict = and i1 %bound0, %bound1
  %bound043 = icmp ult ptr %i.l, %i.bh
  %bound144 = icmp ult ptr %1, %i.bf
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  %bound046 = icmp ult ptr %0, %i.bh
  %bound147 = icmp ult ptr %1, %i.bg
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict48
  br i1 %conflict.rdx49, label %.split.us.split.split.preheader148, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %bb.c
  %index = phi i64 [ %index.next, %bb.c ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %wide.load = load <4 x i8>, ptr %i.bi, align 1, !alias.scope !43
  %wide.load50 = load <4 x i8>, ptr %i.bj, align 1, !alias.scope !43
  %i.bk = icmp ne <4 x i8> %wide.load, zeroinitializer ; 2 uses
  %i.bl = icmp ne <4 x i8> %wide.load50, zeroinitializer ; 2 uses
  %i.bm = shufflevector <4 x i1> %i.bl, <4 x i1> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = bitcast <8 x i1> %i.bm to i8
  %.not = icmp eq i8 %i.bn, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.l, align 4, !alias.scope !44, !noalias !45
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bk to <4 x i8>
  %predphi65 = sext <4 x i1> %i.bl to <4 x i8>
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store <4 x i8> %predphi, ptr %i.bo, align 1, !alias.scope !46, !noalias !43
  store <4 x i8> %predphi65, ptr %i.bp, align 1, !alias.scope !46, !noalias !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %i.i
  br i1 %i.bq, label %.split18.us, label %vector.body, !llvm.loop !35

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check81 = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check81, label %.split.us.split.split.us.preheader145, label %vector.memcheck82

.split.us.split.split.us.preheader145:            ; preds = %vector.memcheck82, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck82:                                ; preds = %.split.us.split.split.us.preheader
  %i.br = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bt = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound083 = icmp ult ptr %i.l, %i.bs
  %bound184 = icmp ult ptr %0, %i.br
  %found.conflict85 = and i1 %bound083, %bound184
  %bound086 = icmp ult ptr %i.l, %i.bt
  %bound187 = icmp ult ptr %1, %i.br
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx89 = or i1 %found.conflict85, %found.conflict88
  %bound090 = icmp ult ptr %0, %i.bt
  %bound191 = icmp ult ptr %1, %i.bs
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx89, %found.conflict92
  br i1 %conflict.rdx93, label %.split.us.split.split.us.preheader145, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck82
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %bb.e, %vector.ph94
  %index97 = phi i64 [ 0, %vector.ph94 ], [ %index.next118, %bb.e ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %index97 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %wide.load98 = load <4 x i8>, ptr %i.bu, align 1, !alias.scope !47
  %wide.load99 = load <4 x i8>, ptr %i.bv, align 1, !alias.scope !47
  %i.bw = zext <4 x i8> %wide.load98 to <4 x i32>
  %i.bx = zext <4 x i8> %wide.load99 to <4 x i32>
  %i.by = shl nuw nsw <4 x i32> %i.bw, %broadcast.splat ; 2 uses
  %i.bz = shl nuw nsw <4 x i32> %i.bx, %broadcast.splat ; 2 uses
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cb = icmp samesign ugt <8 x i32> %i.ca, splat (i32 255)
  %i.cc = bitcast <8 x i1> %i.cb to i8
  %.not143 = icmp eq i8 %i.cc, 0
  br i1 %.not143, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body96
  store i32 1, ptr %i.l, align 4, !alias.scope !48, !noalias !49
  br label %bb.e

bb.e:                                             ; preds = %vector.body96, %bb.d
  %predphi116 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.by, <4 x i32> splat (i32 255))
  %predphi117 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bz, <4 x i32> splat (i32 255))
  %i.cd = trunc nuw <4 x i32> %predphi116 to <4 x i8>
  %i.ce = trunc nuw <4 x i32> %predphi117 to <4 x i8>
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %index97 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store <4 x i8> %i.cd, ptr %i.cf, align 1, !alias.scope !50, !noalias !47
  store <4 x i8> %i.ce, ptr %i.cg, align 1, !alias.scope !50, !noalias !47
  %index.next118 = add nuw i64 %index97, 8        ; 2 uses
  %i.ch = icmp eq i64 %index.next118, %i.i
  br i1 %i.ch, label %.split18.us, label %vector.body96, !llvm.loop !40

.split.us.split.split.us:                         ; preds = %do_uqrshl_bhs.exit.us.us20.1, %.split.us.split.split.us.preheader145
  %.016.us.us19 = phi i64 [ 0, %.split.us.split.split.us.preheader145 ], [ %i.cx, %do_uqrshl_bhs.exit.us.us20.1 ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us19
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, %i.k             ; 2 uses
  %i.cm = icmp samesign ugt i32 %i.cl, 255
  br i1 %i.cm, label %bb.f, label %do_uqrshl_bhs.exit.us.us20

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us.us20

do_uqrshl_bhs.exit.us.us20:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us21 = phi i32 [ 255, %bb.f ], [ %i.cl, %.split.us.split.split.us ]
  %i.cn = trunc nuw i32 %.3.i.us.us21 to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us19
  store i8 %i.cn, ptr %i.co, align 1
  %i.cp = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, %i.k             ; 2 uses
  %i.cu = icmp samesign ugt i32 %i.ct, 255
  br i1 %i.cu, label %bb.g, label %do_uqrshl_bhs.exit.us.us20.1

bb.g:                                             ; preds = %do_uqrshl_bhs.exit.us.us20
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us.us20.1

do_uqrshl_bhs.exit.us.us20.1:                     ; preds = %bb.g, %do_uqrshl_bhs.exit.us.us20
  %.3.i.us.us21.1 = phi i32 [ 255, %bb.g ], [ %i.ct, %do_uqrshl_bhs.exit.us.us20 ]
  %i.cv = trunc nuw i32 %.3.i.us.us21.1 to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.cx, %i.i
  br i1 %exitcond25.not.1, label %.split18.us, label %.split.us.split.split.us, !llvm.loop !41

.split.us.split.split:                            ; preds = %do_uqrshl_bhs.exit.us.1, %.split.us.split.split.preheader148
  %.016.us = phi i64 [ 0, %.split.us.split.split.preheader148 ], [ %i.dh, %do_uqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %do_uqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us

do_uqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i8 [ 0, %.split.us.split.split ], [ -1, %bb.h ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us
  store i8 %.3.i.us, ptr %i.db, align 1
  %i.dc = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %do_uqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit.us
  store i32 1, ptr %i.l, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i8 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.dc
  store i8 %.3.i.us.1, ptr %i.dg, align 1
  %i.dh = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dh, %i.i
  br i1 %exitcond.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !42

.split18.us:                                      ; preds = %bb.c, %do_uqrshl_bhs.exit.us.1, %bb.e, %do_uqrshl_bhs.exit.us.us20.1, %vec.epilog.vector.body, %do_uqrshl_bhs.exit.us.us, %middle.block133, %do_uqrshl_bhs.exit.preheader
  %i.di = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.di, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.dj = add nuw nsw i32 %i.g, 8
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr i8, ptr %0, i64 %i.i
  %i.dm = xor i64 %i.i, -1
  %i.dn = add nsw i64 %i.dm, %i.dk
  %i.do = and i64 %i.dn, -8
  %i.dp = add nsw i64 %i.do, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dl, i8 0, i64 %i.dp, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshl_u16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.sroa.57.0.extract.shift = lshr i32 %1, 16     ; 3 uses
  %i.a = and i32 %1, 65535                        ; 3 uses
  %sext = shl i32 %2, 24
  %i.b = ashr exact i32 %sext, 24                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %.not.i = icmp sgt i32 %i.b, -16
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i32 0, %i.b
  %i.f = lshr i32 %i.a, %i.e
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %i.b, 16
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = shl nuw nsw i32 %i.a, %i.b               ; 2 uses
  %i.i = icmp samesign ugt i32 %i.h, 65535
  br i1 %i.i, label %bb.g, label %do_uqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %i.a, 0
  br i1 %i.j, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.h, %bb.e ], [ %i.f, %bb.c ], [ 65535, %bb.g ], [ 0, %bb.f ]
  %i.k = shl i32 %2, 8
  %i.l = ashr i32 %i.k, 24                        ; 5 uses
  %.not.i12 = icmp sgt i32 %i.l, -16
  br i1 %.not.i12, label %bb.h, label %do_uqrshl_bhs.exit14

bb.h:                                             ; preds = %do_uqrshl_bhs.exit
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.n = sub nsw i32 0, %i.l
  %i.o = lshr i32 %.sroa.57.0.extract.shift, %i.n
  br label %do_uqrshl_bhs.exit14

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i32 %i.l, 16
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = shl nuw nsw i32 %.sroa.57.0.extract.shift, %i.l ; 2 uses
  %i.r = icmp samesign ugt i32 %i.q, 65535
  br i1 %i.r, label %bb.m, label %do_uqrshl_bhs.exit14

bb.l:                                             ; preds = %bb.j
  %i.s = icmp eq i32 %.sroa.57.0.extract.shift, 0
  br i1 %i.s, label %do_uqrshl_bhs.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit14

do_uqrshl_bhs.exit14:                             ; preds = %do_uqrshl_bhs.exit, %bb.i, %bb.k, %bb.l, %bb.m
  %.3.i13 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.q, %bb.k ], [ %i.o, %bb.i ], [ 65535, %bb.m ], [ 0, %bb.l ]
  %.sroa.5.0.insert.ext = shl nuw i32 %.3.i13, 16
  %.sroa.03.0.insert.insert = add nuw nsw i32 %.sroa.5.0.insert.ext, %.3.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.z, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %sext = shl i32 %i.o, 24
  %i.p = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.p, -16
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = sub nsw i32 0, %i.p
  %i.s = lshr i32 %i.l, %i.r
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i32 %i.p, 16
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.l, %i.p               ; 2 uses
  %i.v = icmp samesign ugt i32 %i.u, 65535
  br i1 %i.v, label %bb.h, label %do_uqrshl_bhs.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i16 %i.k, 0
  br i1 %i.w, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.u, %bb.f ], [ %i.s, %bb.d ], [ 65535, %bb.h ], [ 0, %bb.g ]
  %i.x = trunc nuw i32 %.3.i to i16
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.x, ptr %i.y, align 2
  %i.z = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !51

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.aa = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aa, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ab = add nuw nsw i32 %i.e, 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.g
  %i.ae = xor i64 %i.g, -1
  %i.af = add nsw i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, -8
  %i.ah = add nsw i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshli_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.j = lshr exact i64 %i.i, 1                   ; 10 uses
  %i.k = shl i32 %3, 14
  %i.l = ashr i32 %i.k, 24                        ; 7 uses
  %i.m = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.l, -16
  %i.n = icmp samesign ult i32 %i.l, 16
  %i.o = sub nsw i32 0, %i.l                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %0, i8 0, i64 %i.i, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %vector.memcheck121, label %.split.us.split

vector.memcheck121:                               ; preds = %.split.us
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %do_uqrshl_bhs.exit.us.us.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck121
  %min.iters.check123 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check123, label %vec.epilog.ph, label %vector.ph124

vector.ph124:                                     ; preds = %vector.main.loop.iter.check
  %n.vec125 = and i64 %i.j, 1073741808            ; 4 uses
  %broadcast.splatinsert126 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat127 = shufflevector <8 x i32> %broadcast.splatinsert126, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.ph124, %vector.body128
  %index129 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index129 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load130 = load <8 x i16>, ptr %i.r, align 2
  %wide.load131 = load <8 x i16>, ptr %i.s, align 2
  %i.t = zext <8 x i16> %wide.load130 to <8 x i32>
  %i.u = zext <8 x i16> %wide.load131 to <8 x i32>
  %i.v = lshr <8 x i32> %i.t, %broadcast.splat127
  %i.w = lshr <8 x i32> %i.u, %broadcast.splat127
  %i.x = trunc nuw <8 x i32> %i.v to <8 x i16>
  %i.y = trunc nuw <8 x i32> %i.w to <8 x i16>
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index129 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <8 x i16> %i.x, ptr %i.z, align 2
  store <8 x i16> %i.y, ptr %i.aa, align 2
  %index.next132 = add nuw i64 %index129, 16      ; 2 uses
  %i.ab = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.ab, label %middle.block133, label %vector.body128, !llvm.loop !52

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.j, %n.vec125
  br i1 %cmp.n134, label %.split17.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block133
  %i.ac = and i64 %i.i, 24
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %do_uqrshl_bhs.exit.us.us.preheader.new, label %vec.epilog.ph, !prof !11

do_uqrshl_bhs.exit.us.us.preheader.new:           ; preds = %vector.memcheck121, %vec.epilog.iter.check
  %.015.us.us.ph = phi i64 [ %n.vec125, %vec.epilog.iter.check ], [ 0, %vector.memcheck121 ]
  br label %do_uqrshl_bhs.exit.us.us

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec125, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert136 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat137 = shufflevector <4 x i32> %broadcast.splatinsert136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index138
  %wide.load139 = load <4 x i16>, ptr %i.ad, align 2
  %i.ae = zext <4 x i16> %wide.load139 to <4 x i32>
  %i.af = lshr <4 x i32> %i.ae, %broadcast.splat137
  %i.ag = trunc nuw <4 x i32> %i.af to <4 x i16>
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index138
  store <4 x i16> %i.ag, ptr %i.ah, align 2
  %index.next140 = add nuw i64 %index138, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next140, %i.j
  br i1 %i.ai, label %.split17.us, label %vec.epilog.vector.body, !llvm.loop !53

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us, %do_uqrshl_bhs.exit.us.us.preheader.new
  %.015.us.us = phi i64 [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader.new ], [ %i.bk, %do_uqrshl_bhs.exit.us.us ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = lshr i32 %i.al, %i.o
  %i.an = trunc nuw i32 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = or disjoint i64 %.015.us.us, 1          ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = zext i16 %i.ar to i32
  %i.at = lshr i32 %i.as, %i.o
  %i.au = trunc nuw i32 %i.at to i16
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ap
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = or disjoint i64 %.015.us.us, 2          ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i32
  %i.ba = lshr i32 %i.az, %i.o
  %i.bb = trunc nuw i32 %i.ba to i16
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = or disjoint i64 %.015.us.us, 3          ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = zext i16 %i.bf to i32
  %i.bh = lshr i32 %i.bg, %i.o
  %i.bi = trunc nuw i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bd
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.bk, %i.j
  br i1 %exitcond25.not.3, label %.split17.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !54

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.n, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %.split.us.split.split.preheader147.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.bl = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bn = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.bm
  %bound1 = icmp ult ptr %0, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %i.m, %i.bn
  %bound143 = icmp ult ptr %1, %i.bl
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %0, %i.bn
  %bound146 = icmp ult ptr %1, %i.bm
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %.split.us.split.split.preheader147.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %wide.load = load <4 x i16>, ptr %i.bo, align 2, !alias.scope !67
  %wide.load49 = load <4 x i16>, ptr %i.bp, align 2, !alias.scope !67
  %i.bq = icmp ne <4 x i16> %wide.load, zeroinitializer ; 2 uses
  %i.br = icmp ne <4 x i16> %wide.load49, zeroinitializer ; 2 uses
  %i.bs = shufflevector <4 x i1> %i.br, <4 x i1> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bt = bitcast <8 x i1> %i.bs to i8
  %.not = icmp eq i8 %i.bt, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.m, align 4, !alias.scope !68, !noalias !69
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.bq to <4 x i16>
  %predphi64 = sext <4 x i1> %i.br to <4 x i16>
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store <4 x i16> %predphi, ptr %i.bu, align 2, !alias.scope !70, !noalias !67
  store <4 x i16> %predphi64, ptr %i.bv, align 2, !alias.scope !70, !noalias !67
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.us.split.split.preheader147.new

.split.us.split.split.preheader147.new:           ; preds = %vector.memcheck, %.split.us.split.split.preheader, %middle.block
  %.015.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.us.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check80 = icmp samesign ult i32 %.v.v.i, 32
  br i1 %min.iters.check80, label %.split.us.split.split.us.preheader145.new, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.split.us.split.split.us.preheader
  %i.bx = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound082 = icmp ult ptr %i.m, %i.by
  %bound183 = icmp ult ptr %0, %i.bx
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.m, %i.bz
  %bound186 = icmp ult ptr %1, %i.bx
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ult ptr %0, %i.bz
  %bound190 = icmp ult ptr %1, %i.by
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.split.us.split.split.us.preheader145.new, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.j, 1073741816             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %bb.e, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next117, %bb.e ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %wide.load97 = load <4 x i16>, ptr %i.ca, align 2, !alias.scope !71
  %wide.load98 = load <4 x i16>, ptr %i.cb, align 2, !alias.scope !71
  %i.cc = zext <4 x i16> %wide.load97 to <4 x i32>
  %i.cd = zext <4 x i16> %wide.load98 to <4 x i32>
  %i.ce = shl nuw nsw <4 x i32> %i.cc, %broadcast.splat ; 2 uses
  %i.cf = shl nuw nsw <4 x i32> %i.cd, %broadcast.splat ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = icmp samesign ugt <8 x i32> %i.cg, splat (i32 65535)
  %i.ci = bitcast <8 x i1> %i.ch to i8
  %.not143 = icmp eq i8 %i.ci, 0
  br i1 %.not143, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body95
  store i32 1, ptr %i.m, align 4, !alias.scope !72, !noalias !73
  br label %bb.e

bb.e:                                             ; preds = %vector.body95, %bb.d
  %predphi115 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ce, <4 x i32> splat (i32 65535))
  %predphi116 = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cf, <4 x i32> splat (i32 65535))
  %i.cj = trunc nuw <4 x i32> %predphi115 to <4 x i16>
  %i.ck = trunc nuw <4 x i32> %predphi116 to <4 x i16>
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index96 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store <4 x i16> %i.cj, ptr %i.cl, align 2, !alias.scope !74, !noalias !71
  store <4 x i16> %i.ck, ptr %i.cm, align 2, !alias.scope !74, !noalias !71
  %index.next117 = add nuw i64 %index96, 8        ; 2 uses
  %i.cn = icmp eq i64 %index.next117, %n.vec94
  br i1 %i.cn, label %middle.block118, label %vector.body95, !llvm.loop !64

middle.block118:                                  ; preds = %bb.e
  %cmp.n119 = icmp eq i64 %i.j, %n.vec94
  br i1 %cmp.n119, label %.split17.us, label %.split.us.split.split.us.preheader145.new

.split.us.split.split.us.preheader145.new:        ; preds = %vector.memcheck81, %.split.us.split.split.us.preheader, %middle.block118
  %.015.us.us18.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec94, %middle.block118 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_uqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader145.new
  %.015.us.us18 = phi i64 [ %.015.us.us18.ph, %.split.us.split.split.us.preheader145.new ], [ %i.dd, %do_uqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us18
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = zext i16 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, %i.l             ; 2 uses
  %i.cs = icmp samesign ugt i32 %i.cr, 65535
  br i1 %i.cs, label %bb.f, label %do_uqrshl_bhs.exit.us.us19

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.us19

do_uqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ 65535, %bb.f ], [ %i.cr, %.split.us.split.split.us ]
  %i.ct = trunc nuw i32 %.3.i.us.us20 to i16
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us18
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, %i.l             ; 2 uses
  %i.da = icmp samesign ugt i32 %i.cz, 65535
  br i1 %i.da, label %bb.g, label %do_uqrshl_bhs.exit.us.us19.1

bb.g:                                             ; preds = %do_uqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.us19.1

do_uqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_uqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ 65535, %bb.g ], [ %i.cz, %do_uqrshl_bhs.exit.us.us19 ]
  %i.db = trunc nuw i32 %.3.i.us.us20.1 to i16
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cv
  store i16 %i.db, ptr %i.dc, align 2
  %i.dd = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.dd, %i.j
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !65

.split.us.split.split:                            ; preds = %do_uqrshl_bhs.exit.us.1, %.split.us.split.split.preheader147.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader147.new ], [ %i.dn, %do_uqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = icmp eq i16 %i.df, 0
  br i1 %i.dg, label %do_uqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us

do_uqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i16 [ 0, %.split.us.split.split ], [ -1, %bb.h ]
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us
  store i16 %.3.i.us, ptr %i.dh, align 2
  %i.di = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = icmp eq i16 %i.dk, 0
  br i1 %i.dl, label %do_uqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit.us
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i16 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.di
  store i16 %.3.i.us.1, ptr %i.dm, align 2
  %i.dn = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dn, %i.j
  br i1 %exitcond.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !66

.split17.us:                                      ; preds = %do_uqrshl_bhs.exit.us.1, %do_uqrshl_bhs.exit.us.us19.1, %vec.epilog.vector.body, %do_uqrshl_bhs.exit.us.us, %middle.block, %middle.block118, %middle.block133, %do_uqrshl_bhs.exit.preheader
  %i.do = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.do, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.dp = add nuw nsw i32 %i.g, 8
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %0, i64 %i.i
  %i.ds = xor i64 %i.i, -1
  %i.dt = add nsw i64 %i.ds, %i.dq
  %i.du = and i64 %i.dt, -8
  %i.dv = add nsw i64 %i.du, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dr, i8 0, i64 %i.dv, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.x, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.m = load i32, ptr %i.l, align 4
  %sext = shl i32 %i.m, 24
  %i.n = ashr exact i32 %sext, 24                 ; 6 uses
  %.not.i = icmp sgt i32 %i.n, -32
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i32 0, %i.n
  %i.q = lshr i32 %i.k, %i.p
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i32 %i.n, 32
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl i32 %i.k, %i.n                       ; 2 uses
  %i.t = lshr exact i32 %i.s, %i.n
  %i.u = icmp eq i32 %i.t, %i.k
  br i1 %i.u, label %do_uqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i32 %i.k, 0
  br i1 %i.v, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.s, %bb.f ], [ %i.q, %bb.d ], [ -1, %bb.h ], [ 0, %bb.g ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %.3.i, ptr %i.w, align 4
  %i.x = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !75

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshli_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 8 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 11 uses
  %i.k = shl i32 %3, 14
  %i.l = ashr i32 %i.k, 24                        ; 9 uses
  %i.m = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.l, -32
  %i.n = icmp samesign ult i32 %i.l, 32
  %i.o = sub nsw i32 0, %i.l                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_bhs.exit.preheader

do_uqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, i8 0, i64 %i.i, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.p = icmp slt i32 %i.l, 0
  br i1 %i.p, label %do_uqrshl_bhs.exit.us.us.preheader, label %.split.us.split

do_uqrshl_bhs.exit.us.us.preheader:               ; preds = %.split.us
  %min.iters.check123 = icmp samesign ult i32 %.v.v.i, 24
  %i.q = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond = or i1 %min.iters.check123, %diff.check
  br i1 %or.cond, label %do_uqrshl_bhs.exit.us.us.preheader137, label %vector.ph124

vector.ph124:                                     ; preds = %do_uqrshl_bhs.exit.us.us.preheader
  %n.vec125 = and i64 %i.j, 536870904             ; 3 uses
  %broadcast.splatinsert126 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat127 = shufflevector <4 x i32> %broadcast.splatinsert126, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph124
  %index129 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body128 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index129 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load130 = load <4 x i32>, ptr %i.r, align 4
  %wide.load131 = load <4 x i32>, ptr %i.s, align 4
  %i.t = lshr <4 x i32> %wide.load130, %broadcast.splat127
  %i.u = lshr <4 x i32> %wide.load131, %broadcast.splat127
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index129 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %i.t, ptr %i.v, align 4
  store <4 x i32> %i.u, ptr %i.w, align 4
  %index.next132 = add nuw i64 %index129, 8       ; 2 uses
  %i.x = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.x, label %middle.block133, label %vector.body128, !llvm.loop !76

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.j, %n.vec125
  br i1 %cmp.n134, label %.split17.us, label %do_uqrshl_bhs.exit.us.us.preheader137

do_uqrshl_bhs.exit.us.us.preheader137:            ; preds = %do_uqrshl_bhs.exit.us.us.preheader, %middle.block133
  %.015.us.us.ph = phi i64 [ 0, %do_uqrshl_bhs.exit.us.us.preheader ], [ %n.vec125, %middle.block133 ] ; 3 uses
  %xtraiter144 = and i64 %i.j, 2                  ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %do_uqrshl_bhs.exit.us.us.prol.loopexit, label %do_uqrshl_bhs.exit.us.us.prol

do_uqrshl_bhs.exit.us.us.prol:                    ; preds = %do_uqrshl_bhs.exit.us.us.preheader137, %do_uqrshl_bhs.exit.us.us.prol
  %.015.us.us.prol = phi i64 [ %i.ac, %do_uqrshl_bhs.exit.us.us.prol ], [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader137 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_uqrshl_bhs.exit.us.us.prol ], [ 0, %do_uqrshl_bhs.exit.us.us.preheader137 ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us.prol
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = lshr i32 %i.z, %i.o
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us.prol
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.015.us.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter144
  br i1 %prol.iter.cmp.not, label %do_uqrshl_bhs.exit.us.us.prol.loopexit, label %do_uqrshl_bhs.exit.us.us.prol, !llvm.loop !77

do_uqrshl_bhs.exit.us.us.prol.loopexit:           ; preds = %do_uqrshl_bhs.exit.us.us.prol, %do_uqrshl_bhs.exit.us.us.preheader137
  %.015.us.us.unr = phi i64 [ %.015.us.us.ph, %do_uqrshl_bhs.exit.us.us.preheader137 ], [ %i.ac, %do_uqrshl_bhs.exit.us.us.prol ]
  %i.ad = sub nsw i64 %.015.us.us.ph, %i.j
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.split17.us, label %do_uqrshl_bhs.exit.us.us

do_uqrshl_bhs.exit.us.us:                         ; preds = %do_uqrshl_bhs.exit.us.us.prol.loopexit, %do_uqrshl_bhs.exit.us.us
  %.015.us.us = phi i64 [ %i.ay, %do_uqrshl_bhs.exit.us.us ], [ %.015.us.us.unr, %do_uqrshl_bhs.exit.us.us.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = lshr i32 %i.ag, %i.o
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = add nuw nsw i64 %.015.us.us, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = lshr i32 %i.al, %i.o
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = lshr i32 %i.aq, %i.o
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = add nuw nsw i64 %.015.us.us, 3          ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = lshr i32 %i.av, %i.o
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.ay, %i.j
  br i1 %exitcond25.not.3, label %.split17.us, label %do_uqrshl_bhs.exit.us.us, !llvm.loop !78

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.n, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %.split.us.split.split.preheader140.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.us.split.split.preheader
  %i.az = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bb = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.ba
  %bound1 = icmp ult ptr %0, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %i.m, %i.bb
  %bound143 = icmp ult ptr %1, %i.az
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %0, %i.bb
  %bound146 = icmp ult ptr %1, %i.ba
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  br i1 %conflict.rdx48, label %.split.us.split.split.preheader140.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <4 x i32>, ptr %i.bc, align 4, !alias.scope !91
  %wide.load49 = load <4 x i32>, ptr %i.bd, align 4, !alias.scope !91
  %i.be = icmp ne <4 x i32> %wide.load, zeroinitializer ; 2 uses
  %i.bf = icmp ne <4 x i32> %wide.load49, zeroinitializer ; 2 uses
  %i.bg = shufflevector <4 x i1> %i.bf, <4 x i1> %i.be, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bh = bitcast <8 x i1> %i.bg to i8
  %.not = icmp eq i8 %i.bh, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.m, align 4, !alias.scope !92, !noalias !93
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %predphi = sext <4 x i1> %i.be to <4 x i32>
  %predphi64 = sext <4 x i1> %i.bf to <4 x i32>
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x i32> %predphi, ptr %i.bi, align 4, !alias.scope !94, !noalias !91
  store <4 x i32> %predphi64, ptr %i.bj, align 4, !alias.scope !94, !noalias !91
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.us.split.split.preheader140.new

.split.us.split.split.preheader140.new:           ; preds = %vector.memcheck, %.split.us.split.split.preheader, %middle.block
  %.015.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.us.split.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check80 = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check80, label %.split.us.split.split.us.preheader138.new, label %vector.memcheck81

vector.memcheck81:                                ; preds = %.split.us.split.split.us.preheader
  %i.bl = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bn = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound082 = icmp ult ptr %i.m, %i.bm
  %bound183 = icmp ult ptr %0, %i.bl
  %found.conflict84 = and i1 %bound082, %bound183
  %bound085 = icmp ult ptr %i.m, %i.bn
  %bound186 = icmp ult ptr %1, %i.bl
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %found.conflict84, %found.conflict87
  %bound089 = icmp ult ptr %0, %i.bn
  %bound190 = icmp ult ptr %1, %i.bm
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx92 = or i1 %conflict.rdx88, %found.conflict91
  br i1 %conflict.rdx92, label %.split.us.split.split.us.preheader138.new, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck81
  %n.vec94 = and i64 %i.j, 536870904              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body95

vector.body95:                                    ; preds = %bb.e, %vector.ph93
  %index96 = phi i64 [ 0, %vector.ph93 ], [ %index.next117, %bb.e ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index96 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load97 = load <4 x i32>, ptr %i.bo, align 4, !alias.scope !95 ; 2 uses
  %wide.load98 = load <4 x i32>, ptr %i.bp, align 4, !alias.scope !95 ; 2 uses
  %i.bq = shl <4 x i32> %wide.load97, %broadcast.splat ; 2 uses
  %i.br = shl <4 x i32> %wide.load98, %broadcast.splat ; 2 uses
  %i.bs = lshr exact <4 x i32> %i.bq, %broadcast.splat
  %i.bt = lshr exact <4 x i32> %i.br, %broadcast.splat
  %i.bu = icmp ne <4 x i32> %i.bs, %wide.load97   ; 2 uses
  %i.bv = icmp ne <4 x i32> %i.bt, %wide.load98   ; 2 uses
  %i.bw = shufflevector <4 x i1> %i.bv, <4 x i1> %i.bu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = bitcast <8 x i1> %i.bw to i8
  %.not136 = icmp eq i8 %i.bx, 0
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body95
  store i32 1, ptr %i.m, align 4, !alias.scope !96, !noalias !97
  br label %bb.e

bb.e:                                             ; preds = %vector.body95, %bb.d
  %predphi115 = select <4 x i1> %i.bu, <4 x i32> splat (i32 -1), <4 x i32> %i.bq
  %predphi116 = select <4 x i1> %i.bv, <4 x i32> splat (i32 -1), <4 x i32> %i.br
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index96 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> %predphi115, ptr %i.by, align 4, !alias.scope !98, !noalias !95
  store <4 x i32> %predphi116, ptr %i.bz, align 4, !alias.scope !98, !noalias !95
  %index.next117 = add nuw i64 %index96, 8        ; 2 uses
  %i.ca = icmp eq i64 %index.next117, %n.vec94
  br i1 %i.ca, label %middle.block118, label %vector.body95, !llvm.loop !88

middle.block118:                                  ; preds = %bb.e
  %cmp.n119 = icmp eq i64 %i.j, %n.vec94
  br i1 %cmp.n119, label %.split17.us, label %.split.us.split.split.us.preheader138.new

.split.us.split.split.us.preheader138.new:        ; preds = %vector.memcheck81, %.split.us.split.split.us.preheader, %middle.block118
  %.015.us.us18.ph = phi i64 [ 0, %vector.memcheck81 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec94, %middle.block118 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_uqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader138.new
  %.015.us.us18 = phi i64 [ %.015.us.us18.ph, %.split.us.split.split.us.preheader138.new ], [ %i.co, %do_uqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us18
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = shl i32 %i.cc, %i.l                     ; 2 uses
  %i.ce = lshr exact i32 %i.cd, %i.l
  %i.cf = icmp eq i32 %i.ce, %i.cc
  br i1 %i.cf, label %do_uqrshl_bhs.exit.us.us19, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.us19

do_uqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ -1, %bb.f ], [ %i.cd, %.split.us.split.split.us ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us18
  store i32 %.3.i.us.us20, ptr %i.cg, align 4
  %i.ch = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = shl i32 %i.cj, %i.l                     ; 2 uses
  %i.cl = lshr exact i32 %i.ck, %i.l
  %i.cm = icmp eq i32 %i.cl, %i.cj
  br i1 %i.cm, label %do_uqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_uqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.us19.1

do_uqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_uqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ -1, %bb.g ], [ %i.ck, %do_uqrshl_bhs.exit.us.us19 ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ch
  store i32 %.3.i.us.us20.1, ptr %i.cn, align 4
  %i.co = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.co, %i.j
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !89

.split.us.split.split:                            ; preds = %do_uqrshl_bhs.exit.us.1, %.split.us.split.split.preheader140.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader140.new ], [ %i.cy, %do_uqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %do_uqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us

do_uqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i32 [ 0, %.split.us.split.split ], [ -1, %bb.h ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us
  store i32 %.3.i.us, ptr %i.cs, align 4
  %i.ct = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %do_uqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_uqrshl_bhs.exit.us
  store i32 1, ptr %i.m, align 4
  br label %do_uqrshl_bhs.exit.us.1

do_uqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_uqrshl_bhs.exit.us
  %.3.i.us.1 = phi i32 [ 0, %do_uqrshl_bhs.exit.us ], [ -1, %bb.i ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ct
  store i32 %.3.i.us.1, ptr %i.cx, align 4
  %i.cy = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cy, %i.j
  br i1 %exitcond.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !90

.split17.us:                                      ; preds = %do_uqrshl_bhs.exit.us.1, %do_uqrshl_bhs.exit.us.us19.1, %do_uqrshl_bhs.exit.us.us.prol.loopexit, %do_uqrshl_bhs.exit.us.us, %middle.block, %middle.block118, %middle.block133, %do_uqrshl_bhs.exit.preheader
  %i.cz = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.cz, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.da = add nuw nsw i32 %i.g, 8
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %0, i64 %i.i
  %i.dd = xor i64 %i.i, -1
  %i.de = add nsw i64 %i.dd, %i.db
  %i.df = and i64 %i.de, -8
  %i.dg = add nsw i64 %i.df, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dc, i8 0, i64 %i.dg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_d.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.x, %do_uqrshl_d.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.m = load i64, ptr %i.l, align 8
  %sext = shl i64 %i.m, 56
  %i.n = ashr exact i64 %sext, 56                 ; 6 uses
  %.not.i = icmp sgt i64 %i.n, -64
  br i1 %.not.i, label %bb.c, label %do_uqrshl_d.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.n
  %i.q = lshr i64 %i.k, %i.p
  br label %do_uqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp samesign ult i64 %i.n, 64
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl i64 %i.k, %i.n                       ; 2 uses
  %i.t = lshr exact i64 %i.s, %i.n
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %do_uqrshl_d.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.k, 0
  br i1 %i.v, label %do_uqrshl_d.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_d.exit

do_uqrshl_d.exit:                                 ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ 0, %bb.b ], [ 0, %bb.g ], [ %i.q, %bb.d ], [ -1, %bb.h ], [ %i.s, %bb.f ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %.1.i, ptr %i.w, align 8
  %i.x = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !99

bb.i:                                             ; preds = %do_uqrshl_d.exit
  %i.y = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.y, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.z = add nuw nsw i32 %i.e, 8
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr i8, ptr %0, i64 %i.g
  %i.ac = xor i64 %i.g, -1
  %i.ad = add nsw i64 %i.ac, %i.aa
  %i.ae = and i64 %i.ad, -8
  %i.af = add nsw i64 %i.ae, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.af, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqshli_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.j = lshr i32 %3, 10
  %i.k = lshr exact i64 %i.i, 3                   ; 9 uses
  %i.l = zext nneg i32 %i.j to i64
  %sext = shl i64 %i.l, 56
  %i.m = ashr exact i64 %sext, 56                 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12656 ; 6 uses
  %.not.i = icmp sgt i64 %i.m, -64
  %i.o = icmp samesign ult i64 %i.m, 64
  %i.p = sub nsw i64 0, %i.m                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_uqrshl_d.exit.preheader

do_uqrshl_d.exit.preheader:                       ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.i, i1 false)
  br label %.split17.us

.split.us:                                        ; preds = %bb.a
  %i.q = icmp slt i64 %i.m, 0
  br i1 %i.q, label %do_uqrshl_d.exit.us.us.preheader, label %.split.us.split

do_uqrshl_d.exit.us.us.preheader:                 ; preds = %.split.us
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  %i.r = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %do_uqrshl_d.exit.us.us.preheader34, label %vector.ph

vector.ph:                                        ; preds = %do_uqrshl_d.exit.us.us.preheader
  %n.vec = and i64 %i.k, 268435452                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8
  %wide.load33 = load <2 x i64>, ptr %i.t, align 8
  %i.u = lshr <2 x i64> %wide.load, %broadcast.splat
  %i.v = lshr <2 x i64> %wide.load33, %broadcast.splat
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8
  store <2 x i64> %i.v, ptr %i.x, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.split17.us, label %do_uqrshl_d.exit.us.us.preheader34

do_uqrshl_d.exit.us.us.preheader34:               ; preds = %do_uqrshl_d.exit.us.us.preheader, %middle.block
  %.015.us.us.ph = phi i64 [ 0, %do_uqrshl_d.exit.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter43 = and i64 %i.k, 3                   ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %do_uqrshl_d.exit.us.us.prol.loopexit, label %do_uqrshl_d.exit.us.us.prol

do_uqrshl_d.exit.us.us.prol:                      ; preds = %do_uqrshl_d.exit.us.us.preheader34, %do_uqrshl_d.exit.us.us.prol
  %.015.us.us.prol = phi i64 [ %i.ad, %do_uqrshl_d.exit.us.us.prol ], [ %.015.us.us.ph, %do_uqrshl_d.exit.us.us.preheader34 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_uqrshl_d.exit.us.us.prol ], [ 0, %do_uqrshl_d.exit.us.us.preheader34 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.us.prol
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = lshr i64 %i.aa, %i.p
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.us.prol
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = add nuw nsw i64 %.015.us.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter43
  br i1 %prol.iter.cmp.not, label %do_uqrshl_d.exit.us.us.prol.loopexit, label %do_uqrshl_d.exit.us.us.prol, !llvm.loop !101

do_uqrshl_d.exit.us.us.prol.loopexit:             ; preds = %do_uqrshl_d.exit.us.us.prol, %do_uqrshl_d.exit.us.us.preheader34
  %.015.us.us.unr = phi i64 [ %.015.us.us.ph, %do_uqrshl_d.exit.us.us.preheader34 ], [ %i.ad, %do_uqrshl_d.exit.us.us.prol ]
  %i.ae = sub nsw i64 %.015.us.us.ph, %i.k
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.split17.us, label %do_uqrshl_d.exit.us.us

do_uqrshl_d.exit.us.us:                           ; preds = %do_uqrshl_d.exit.us.us.prol.loopexit, %do_uqrshl_d.exit.us.us
  %.015.us.us = phi i64 [ %i.az, %do_uqrshl_d.exit.us.us ], [ %.015.us.us.unr, %do_uqrshl_d.exit.us.us.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.us
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = lshr i64 %i.ah, %i.p
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.us
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %.015.us.us, 1          ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = lshr i64 %i.am, %i.p
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = lshr i64 %i.ar, %i.p
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  store i64 %i.as, ptr %i.at, align 8
  %i.au = add nuw nsw i64 %.015.us.us, 3          ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = lshr i64 %i.aw, %i.p
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond25.not.3 = icmp eq i64 %i.az, %i.k
  br i1 %exitcond25.not.3, label %.split17.us, label %do_uqrshl_d.exit.us.us, !llvm.loop !102

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.o, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %i.ba = icmp eq i32 %.v.v.i, 0
  br i1 %i.ba, label %.split.us.split.split.epil.preheader, label %.split.us.split.split.preheader.new

.split.us.split.split.preheader.new:              ; preds = %.split.us.split.split.preheader
  %unroll_iter = and i64 %i.k, 268435454
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %i.bb = icmp eq i32 %.v.v.i, 0
  br i1 %i.bb, label %.split.us.split.split.us.epil.preheader, label %.split.us.split.split.us.preheader.new

.split.us.split.split.us.preheader.new:           ; preds = %.split.us.split.split.us.preheader
  %unroll_iter41 = and i64 %i.k, 268435454
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_uqrshl_d.exit.us.us19.1, %.split.us.split.split.us.preheader.new
  %.015.us.us18 = phi i64 [ 0, %.split.us.split.split.us.preheader.new ], [ %i.bp, %do_uqrshl_d.exit.us.us19.1 ] ; 4 uses
  %niter42 = phi i64 [ 0, %.split.us.split.split.us.preheader.new ], [ %niter42.next.1, %do_uqrshl_d.exit.us.us19.1 ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.us18
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = shl i64 %i.bd, %i.m                     ; 2 uses
  %i.bf = lshr exact i64 %i.be, %i.m
  %i.bg = icmp eq i64 %i.bf, %i.bd
  br i1 %i.bg, label %do_uqrshl_d.exit.us.us19, label %bb.b

bb.b:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.n, align 4
  br label %do_uqrshl_d.exit.us.us19

do_uqrshl_d.exit.us.us19:                         ; preds = %bb.b, %.split.us.split.split.us
  %.1.i.us.us20 = phi i64 [ %i.be, %.split.us.split.split.us ], [ -1, %bb.b ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.us18
  store i64 %.1.i.us.us20, ptr %i.bh, align 8
  %i.bi = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = shl i64 %i.bk, %i.m                     ; 2 uses
  %i.bm = lshr exact i64 %i.bl, %i.m
  %i.bn = icmp eq i64 %i.bm, %i.bk
  br i1 %i.bn, label %do_uqrshl_d.exit.us.us19.1, label %bb.c

bb.c:                                             ; preds = %do_uqrshl_d.exit.us.us19
  store i32 1, ptr %i.n, align 4
  br label %do_uqrshl_d.exit.us.us19.1

do_uqrshl_d.exit.us.us19.1:                       ; preds = %bb.c, %do_uqrshl_d.exit.us.us19
  %.1.i.us.us20.1 = phi i64 [ %i.bl, %do_uqrshl_d.exit.us.us19 ], [ -1, %bb.c ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  store i64 %.1.i.us.us20.1, ptr %i.bo, align 8
  %i.bp = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %niter42.next.1 = add i64 %niter42, 2           ; 2 uses
  %niter42.ncmp.1 = icmp eq i64 %niter42.next.1, %unroll_iter41
  br i1 %niter42.ncmp.1, label %.split17.us.loopexit35.unr-lcssa, label %.split.us.split.split.us, !llvm.loop !103

.split.us.split.split:                            ; preds = %do_uqrshl_d.exit.us.1, %.split.us.split.split.preheader.new
  %.015.us = phi i64 [ 0, %.split.us.split.split.preheader.new ], [ %i.bz, %do_uqrshl_d.exit.us.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.us.split.split.preheader.new ], [ %niter.next.1, %do_uqrshl_d.exit.us.1 ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %do_uqrshl_d.exit.us, label %bb.d

bb.d:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.n, align 4
  br label %do_uqrshl_d.exit.us

do_uqrshl_d.exit.us:                              ; preds = %bb.d, %.split.us.split.split
  %.1.i.us = phi i64 [ -1, %bb.d ], [ 0, %.split.us.split.split ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  store i64 %.1.i.us, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %do_uqrshl_d.exit.us.1, label %bb.e

bb.e:                                             ; preds = %do_uqrshl_d.exit.us
  store i32 1, ptr %i.n, align 4
  br label %do_uqrshl_d.exit.us.1

do_uqrshl_d.exit.us.1:                            ; preds = %bb.e, %do_uqrshl_d.exit.us
  %.1.i.us.1 = phi i64 [ -1, %bb.e ], [ 0, %do_uqrshl_d.exit.us ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu
  store i64 %.1.i.us.1, ptr %i.by, align 8
  %i.bz = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split17.us.loopexit36.unr-lcssa, label %.split.us.split.split, !llvm.loop !103

.split17.us.loopexit35.unr-lcssa:                 ; preds = %do_uqrshl_d.exit.us.us19.1
  %i.ca = and i64 %i.i, 8
  %lcmp.mod39.not = icmp eq i64 %i.ca, 0
  br i1 %lcmp.mod39.not, label %.split17.us, label %.split.us.split.split.us.epil.preheader

.split.us.split.split.us.epil.preheader:          ; preds = %.split17.us.loopexit35.unr-lcssa, %.split.us.split.split.us.preheader
  %.015.us.us18.epil.init = phi i64 [ 0, %.split.us.split.split.us.preheader ], [ %i.bp, %.split17.us.loopexit35.unr-lcssa ] ; 2 uses
  %lcmp.mod40 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.us18.epil.init
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %i.cd = shl i64 %i.cc, %i.m                     ; 2 uses
  %i.ce = lshr exact i64 %i.cd, %i.m
  %i.cf = icmp eq i64 %i.ce, %i.cc
  br i1 %i.cf, label %do_uqrshl_d.exit.us.us19.epil, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us.epil.preheader
  store i32 1, ptr %i.n, align 4
  br label %do_uqrshl_d.exit.us.us19.epil

do_uqrshl_d.exit.us.us19.epil:                    ; preds = %bb.f, %.split.us.split.split.us.epil.preheader
  %.1.i.us.us20.epil = phi i64 [ %i.cd, %.split.us.split.split.us.epil.preheader ], [ -1, %bb.f ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.us18.epil.init
  store i64 %.1.i.us.us20.epil, ptr %i.cg, align 8
  br label %.split17.us

.split17.us.loopexit36.unr-lcssa:                 ; preds = %do_uqrshl_d.exit.us.1
  %i.ch = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.ch, 0
  br i1 %lcmp.mod.not, label %.split17.us, label %.split.us.split.split.epil.preheader

.split.us.split.split.epil.preheader:             ; preds = %.split17.us.loopexit36.unr-lcssa, %.split.us.split.split.preheader
  %.015.us.epil.init = phi i64 [ 0, %.split.us.split.split.preheader ], [ %i.bz, %.split17.us.loopexit36.unr-lcssa ] ; 2 uses
  %lcmp.mod37 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.epil.init
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %do_uqrshl_d.exit.us.epil, label %bb.g

bb.g:                                             ; preds = %.split.us.split.split.epil.preheader
  store i32 1, ptr %i.n, align 4
  br label %do_uqrshl_d.exit.us.epil

do_uqrshl_d.exit.us.epil:                         ; preds = %bb.g, %.split.us.split.split.epil.preheader
  %.1.i.us.epil = phi i64 [ -1, %bb.g ], [ 0, %.split.us.split.split.epil.preheader ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.epil.init
  store i64 %.1.i.us.epil, ptr %i.cl, align 8
  br label %.split17.us

.split17.us:                                      ; preds = %do_uqrshl_d.exit.us.epil, %.split17.us.loopexit36.unr-lcssa, %do_uqrshl_d.exit.us.us19.epil, %.split17.us.loopexit35.unr-lcssa, %do_uqrshl_d.exit.us.us.prol.loopexit, %do_uqrshl_d.exit.us.us, %middle.block, %do_uqrshl_d.exit.preheader
  %i.cm = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.cm, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.cn = add nuw nsw i32 %i.g, 8
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr %0, i64 %i.i
  %i.cq = xor i64 %i.i, -1
  %i.cr = add nsw i64 %i.cq, %i.co
  %i.cs = and i64 %i.cr, -8
  %i.ct = add nsw i64 %i.cs, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cp, i8 0, i64 %i.ct, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshl_u32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %2, 24
  %i.a = ashr exact i32 %sext, 24                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %.not.i = icmp sgt i32 %i.a, -32
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = sub nsw i32 0, %i.a
  %i.e = lshr i32 %1, %i.d
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %i.a, 32
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = shl i32 %1, %i.a                         ; 2 uses
  %i.h = lshr exact i32 %i.g, %i.a
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %do_uqrshl_bhs.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i32 %1, 0
  br i1 %i.j, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.b, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.g, %bb.e ], [ %i.e, %bb.c ], [ -1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_qshl_u64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i64 %2, 56
  %i.a = ashr exact i64 %sext, 56                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %.not.i = icmp sgt i64 %i.a, -64
  br i1 %.not.i, label %bb.b, label %do_uqrshl_d.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = sub nsw i64 0, %i.a
  %i.e = lshr i64 %1, %i.d
  br label %do_uqrshl_d.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.a, 64
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = shl i64 %1, %i.a                         ; 2 uses
  %i.h = lshr exact i64 %i.g, %i.a
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %do_uqrshl_d.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %do_uqrshl_d.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.b, align 4
  br label %do_uqrshl_d.exit

do_uqrshl_d.exit:                                 ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.1.i = phi i64 [ 0, %bb.a ], [ 0, %bb.f ], [ %i.e, %bb.c ], [ -1, %bb.g ], [ %i.g, %bb.e ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshl_s8(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %1, 24                          ; 3 uses
  %i.a = ashr exact i32 %sext, 24                 ; 3 uses
  %sext17 = shl i32 %2, 24
  %i.b = ashr exact i32 %sext17, 24               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 4 uses
  %.not.i = icmp sgt i32 %i.b, -8
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i32 %sext, 31
  br label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = ashr i32 %i.a, %i.f
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %i.b, 8
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = shl nsw i32 %i.a, %i.b                   ; 2 uses
  %i.j = add nsw i32 %i.i, 128
  %.not = icmp ult i32 %i.j, 256
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = icmp eq i32 %sext, 0
  br i1 %i.k, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.c, align 4
  %i.l = icmp sgt i32 %i.a, -1
  %i.m = select i1 %i.l, i32 127, i32 128
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ %i.d, %bb.b ], [ 0, %bb.g ], [ %i.i, %bb.f ], [ %i.g, %bb.d ], [ %i.m, %bb.h ]
  %i.n = shl i32 %1, 16                           ; 2 uses
  %i.o = ashr i32 %i.n, 24                        ; 4 uses
  %i.p = shl i32 %2, 16
  %i.q = ashr i32 %i.p, 24                        ; 5 uses
  %.not.i24 = icmp sgt i32 %i.q, -8
  br i1 %.not.i24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit
  %i.r = ashr i32 %i.n, 31
  br label %do_sqrshl_bhs.exit27

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = sub nsw i32 0, %i.q
  %i.u = ashr i32 %i.o, %i.t
  br label %do_sqrshl_bhs.exit27

bb.l:                                             ; preds = %bb.j
  %i.v = icmp samesign ult i32 %i.q, 8
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = shl nsw i32 %i.o, %i.q                   ; 2 uses
  %i.x = add nsw i32 %i.w, 128
  %.not36 = icmp ult i32 %i.x, 256
  br i1 %.not36, label %do_sqrshl_bhs.exit27, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.y = icmp eq i32 %i.o, 0
  br i1 %i.y, label %do_sqrshl_bhs.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 1, ptr %i.c, align 4
  %i.z = icmp sgt i32 %i.o, -1
  %i.aa = select i1 %i.z, i32 127, i32 128
  br label %do_sqrshl_bhs.exit27

do_sqrshl_bhs.exit27:                             ; preds = %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %.3.i25 = phi i32 [ %i.r, %bb.i ], [ 0, %bb.n ], [ %i.w, %bb.m ], [ %i.u, %bb.k ], [ %i.aa, %bb.o ]
  %i.ab = shl i32 %1, 8                           ; 2 uses
  %i.ac = ashr i32 %i.ab, 24                      ; 4 uses
  %i.ad = shl i32 %2, 8
  %i.ae = ashr i32 %i.ad, 24                      ; 5 uses
  %.not.i28 = icmp sgt i32 %i.ae, -8
  br i1 %.not.i28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %do_sqrshl_bhs.exit27
  %i.af = ashr i32 %i.ab, 31
  br label %do_sqrshl_bhs.exit31

bb.q:                                             ; preds = %do_sqrshl_bhs.exit27
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = sub nsw i32 0, %i.ae
  %i.ai = ashr i32 %i.ac, %i.ah
  br label %do_sqrshl_bhs.exit31

bb.s:                                             ; preds = %bb.q
  %i.aj = icmp samesign ult i32 %i.ae, 8
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ak = shl nsw i32 %i.ac, %i.ae                ; 2 uses
  %i.al = add nsw i32 %i.ak, 128
  %.not37 = icmp ult i32 %i.al, 256
  br i1 %.not37, label %do_sqrshl_bhs.exit31, label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.am = icmp eq i32 %i.ac, 0
  br i1 %i.am, label %do_sqrshl_bhs.exit31, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 1, ptr %i.c, align 4
  %i.an = icmp sgt i32 %i.ac, -1
  %i.ao = select i1 %i.an, i32 127, i32 128
  br label %do_sqrshl_bhs.exit31

do_sqrshl_bhs.exit31:                             ; preds = %bb.p, %bb.r, %bb.t, %bb.u, %bb.v
  %.3.i29 = phi i32 [ %i.af, %bb.p ], [ 0, %bb.u ], [ %i.ak, %bb.t ], [ %i.ai, %bb.r ], [ %i.ao, %bb.v ]
  %i.ap = ashr i32 %1, 24                         ; 4 uses
  %i.aq = ashr i32 %2, 24                         ; 5 uses
  %.not.i32 = icmp sgt i32 %i.aq, -8
  br i1 %.not.i32, label %bb.x, label %bb.w

bb.w:                                             ; preds = %do_sqrshl_bhs.exit31
  %i.ar = ashr i32 %1, 31
  br label %do_sqrshl_bhs.exit35

bb.x:                                             ; preds = %do_sqrshl_bhs.exit31
  %i.as = icmp slt i32 %i.aq, 0
  br i1 %i.as, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.at = sub nsw i32 0, %i.aq
  %i.au = ashr i32 %i.ap, %i.at
  br label %do_sqrshl_bhs.exit35

bb.z:                                             ; preds = %bb.x
  %i.av = icmp samesign ult i32 %i.aq, 8
  br i1 %i.av, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aw = shl nsw i32 %i.ap, %i.aq                ; 2 uses
  %i.ax = add nsw i32 %i.aw, 128
  %.not38 = icmp ult i32 %i.ax, 256
  br i1 %.not38, label %do_sqrshl_bhs.exit35, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ay = icmp eq i32 %i.ap, 0
  br i1 %i.ay, label %do_sqrshl_bhs.exit35, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store i32 1, ptr %i.c, align 4
  %i.az = icmp sgt i32 %i.ap, -1
  %i.ba = select i1 %i.az, i32 127, i32 128
  br label %do_sqrshl_bhs.exit35

do_sqrshl_bhs.exit35:                             ; preds = %bb.w, %bb.y, %bb.aa, %bb.ab, %bb.ac
  %.3.i33 = phi i32 [ %i.ar, %bb.w ], [ 0, %bb.ab ], [ %i.aw, %bb.aa ], [ %i.au, %bb.y ], [ %i.ba, %bb.ac ]
  %.sroa.7.0.insert.ext = shl i32 %.3.i33, 24
  %.sroa.6.0.insert.ext = shl nsw i32 %.3.i29, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = shl nsw i32 %.3.i25, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.ext = and i32 %.3.i, 255
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshl_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.017 = phi i64 [ 0, %bb.a ], [ %i.aa, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %i.k = sext i8 %i.j to i32                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.017
  %i.m = load i8, ptr %i.l, align 1               ; 4 uses
  %i.n = sext i8 %i.m to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.m, -8
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ashr i32 %i.k, 31
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp slt i8 %i.m, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = sub nsw i32 0, %i.n
  %i.r = ashr i32 %i.k, %i.q
  br label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.s = icmp samesign ult i8 %i.m, 8
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl nsw i32 %i.k, %i.n                   ; 2 uses
  %i.u = add nsw i32 %i.t, 128
  %.not = icmp ult i32 %i.u, 256
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = icmp eq i8 %i.j, 0
  br i1 %i.v, label %do_sqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.h, align 4
  %i.w = icmp sgt i8 %i.j, -1
  %i.x = select i1 %i.w, i32 127, i32 128
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.3.i = phi i32 [ %i.o, %bb.c ], [ 0, %bb.h ], [ %i.t, %bb.g ], [ %i.r, %bb.e ], [ %i.x, %bb.i ]
  %i.y = trunc i32 %.3.i to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.y, ptr %i.z, align 1
  %i.aa = add nuw nsw i64 %.017, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.g
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !104

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ab = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ab, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ac = add nuw nsw i32 %i.e, 8
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %0, i64 %i.g
  %i.af = xor i64 %i.g, -1
  %i.ag = add nsw i64 %i.af, %i.ad
  %i.ah = and i64 %i.ag, -8
  %i.ai = add nsw i64 %i.ah, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.ai, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.j, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 20 uses
  %i.j = shl i32 %3, 14
  %i.k = ashr i32 %i.j, 24                        ; 7 uses
  %i.l = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.k, -8
  %i.m = icmp samesign ult i32 %i.k, 8
  %i.n = sub nsw i32 0, %i.k                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.o = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %do_sqrshl_bhs.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.i, 24
  %n.vec = and i64 %i.i, 4064                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <16 x i8>, ptr %i.q, align 1
  %wide.load39 = load <16 x i8>, ptr %i.r, align 1
  %i.s = ashr <16 x i8> %wide.load, splat (i8 7)
  %i.t = ashr <16 x i8> %wide.load39, splat (i8 7)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <16 x i8> %i.s, ptr %i.u, align 1
  store <16 x i8> %i.t, ptr %i.v, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.split18.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %do_sqrshl_bhs.exit.preheader, label %vec.epilog.vector.body.preheader, !prof !123

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index41.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

do_sqrshl_bhs.exit.preheader:                     ; preds = %vector.memcheck, %vec.epilog.iter.check
  %.016.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ]
  br label %do_sqrshl_bhs.exit

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index41 = phi i64 [ %index.next43, %vec.epilog.vector.body ], [ %index41.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index41
  %wide.load42 = load <8 x i8>, ptr %i.x, align 1
  %i.y = ashr <8 x i8> %wide.load42, splat (i8 7)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index41
  store <8 x i8> %i.y, ptr %i.z, align 1
  %index.next43 = add nuw i64 %index41, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next43, %i.i
  br i1 %i.aa, label %.split18.us, label %vec.epilog.vector.body, !llvm.loop !106

.split.us:                                        ; preds = %bb.a
  %i.ab = icmp slt i32 %i.k, 0
  br i1 %i.ab, label %vector.memcheck135, label %.split.us.split

vector.memcheck135:                               ; preds = %.split.us
  %i.ac = sub i64 %i.a, %i.b
  %diff.check136 = icmp ugt i64 %i.ac, -16
  br i1 %diff.check136, label %do_sqrshl_bhs.exit.us.us.preheader, label %vector.main.loop.iter.check138

vector.main.loop.iter.check138:                   ; preds = %vector.memcheck135
  %min.iters.check139 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check139, label %vec.epilog.ph155, label %vector.ph140

vector.ph140:                                     ; preds = %vector.main.loop.iter.check138
  %i.ad = and i64 %i.i, 8
  %n.vec141 = and i64 %i.i, 4080                  ; 4 uses
  %broadcast.splatinsert142 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat143 = shufflevector <16 x i32> %broadcast.splatinsert142, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body144

vector.body144:                                   ; preds = %vector.ph140, %vector.body144
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index145
  %wide.load146 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = sext <16 x i8> %wide.load146 to <16 x i32>
  %i.ag = ashr <16 x i32> %i.af, %broadcast.splat143
  %i.ah = trunc nsw <16 x i32> %i.ag to <16 x i8>
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %index145
  store <16 x i8> %i.ah, ptr %i.ai, align 1
  %index.next147 = add nuw i64 %index145, 16      ; 2 uses
  %i.aj = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.aj, label %middle.block148, label %vector.body144, !llvm.loop !107

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %n.vec141, %i.i
  br i1 %cmp.n149, label %.split18.us, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %min.epilog.iters.check154.not.not = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check154.not.not, label %do_sqrshl_bhs.exit.us.us.preheader, label %vec.epilog.ph155, !prof !10

do_sqrshl_bhs.exit.us.us.preheader:               ; preds = %vector.memcheck135, %vec.epilog.iter.check153
  %.016.us.us.ph = phi i64 [ %n.vec141, %vec.epilog.iter.check153 ], [ 0, %vector.memcheck135 ]
  br label %do_sqrshl_bhs.exit.us.us

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check138, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec141, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check138 ]
  %broadcast.splatinsert157 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat158 = shufflevector <8 x i32> %broadcast.splatinsert157, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph155
  %index160 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body159 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %index160
  %wide.load161 = load <8 x i8>, ptr %i.ak, align 1
  %i.al = sext <8 x i8> %wide.load161 to <8 x i32>
  %i.am = ashr <8 x i32> %i.al, %broadcast.splat158
  %i.an = trunc nsw <8 x i32> %i.am to <8 x i8>
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %index160
  store <8 x i8> %i.an, ptr %i.ao, align 1
  %index.next162 = add nuw i64 %index160, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next162, %i.i
  br i1 %i.ap, label %.split18.us, label %vec.epilog.vector.body159, !llvm.loop !108

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us, %do_sqrshl_bhs.exit.us.us.preheader
  %.016.us.us = phi i64 [ %.016.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader ], [ %i.br, %do_sqrshl_bhs.exit.us.us ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = sext i8 %i.ar to i32
  %i.at = ashr i32 %i.as, %i.n
  %i.au = trunc nsw i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us
  store i8 %i.au, ptr %i.av, align 1
  %i.aw = or disjoint i64 %.016.us.us, 1          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = sext i8 %i.ay to i32
  %i.ba = ashr i32 %i.az, %i.n
  %i.bb = trunc nsw i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = or disjoint i64 %.016.us.us, 2          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = sext i8 %i.bf to i32
  %i.bh = ashr i32 %i.bg, %i.n
  %i.bi = trunc nsw i32 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  store i8 %i.bi, ptr %i.bj, align 1
  %i.bk = or disjoint i64 %.016.us.us, 3          ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = sext i8 %i.bm to i32
  %i.bo = ashr i32 %i.bn, %i.n
  %i.bp = trunc nsw i32 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = add nuw nsw i64 %.016.us.us, 4          ; 2 uses
  %exitcond27.not.3 = icmp eq i64 %i.br, %i.i
  br i1 %exitcond27.not.3, label %.split18.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !109

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.m, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check55 = icmp samesign ult i32 %.v.v.i, 12
  br i1 %min.iters.check55, label %.split.us.split.split.preheader171, label %vector.memcheck56

.split.us.split.split.preheader171:               ; preds = %vector.memcheck56, %.split.us.split.split.preheader
  br label %.split.us.split.split

vector.memcheck56:                                ; preds = %.split.us.split.split.preheader
  %i.bs = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
end_hunk_0
begin_hunk_1_@helper_neon_sqshli_b:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body66
  store i32 1, ptr %i.l, align 4, !alias.scope !125, !noalias !126
  br label %bb.c

bb.c:                                             ; preds = %vector.body66, %bb.b
  %i.cb = icmp sgt <4 x i8> %wide.load68, splat (i8 -1)
  %i.cc = icmp sgt <4 x i8> %wide.load69, splat (i8 -1)
  %i.cd = select <4 x i1> %i.cb, <4 x i8> splat (i8 127), <4 x i8> splat (i8 -128)
  %i.ce = select <4 x i1> %i.cc, <4 x i8> splat (i8 127), <4 x i8> splat (i8 -128)
  %predphi = select <4 x i1> %i.bx, <4 x i8> %i.cd, <4 x i8> zeroinitializer
  %predphi84 = select <4 x i1> %i.by, <4 x i8> %i.ce, <4 x i8> zeroinitializer
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %index67 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store <4 x i8> %predphi, ptr %i.cf, align 1, !alias.scope !127, !noalias !124
  store <4 x i8> %predphi84, ptr %i.cg, align 1, !alias.scope !127, !noalias !124
  %index.next85 = add nuw i64 %index67, 8         ; 2 uses
  %i.ch = icmp eq i64 %index.next85, %i.i
  br i1 %i.ch, label %.split18.us, label %vector.body66, !llvm.loop !114

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check104 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check104, label %.split.us.split.split.us.preheader168, label %vector.memcheck105

.split.us.split.split.us.preheader168:            ; preds = %vector.memcheck105, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck105:                               ; preds = %.split.us.split.split.us.preheader
  %i.ci = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.ck = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0106 = icmp ult ptr %i.l, %i.cj
  %bound1107 = icmp ult ptr %0, %i.ci
  %found.conflict108 = and i1 %bound0106, %bound1107
  %bound0109 = icmp ult ptr %i.l, %i.ck
  %bound1110 = icmp ult ptr %1, %i.ci
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %found.conflict108, %found.conflict111
  %bound0113 = icmp ult ptr %0, %i.ck
  %bound1114 = icmp ult ptr %1, %i.cj
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  br i1 %conflict.rdx116, label %.split.us.split.split.us.preheader168, label %vector.ph117

vector.ph117:                                     ; preds = %vector.memcheck105
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body119

vector.body119:                                   ; preds = %bb.e, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next131, %bb.e ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %index120
  %wide.load121 = load <4 x i8>, ptr %i.cl, align 1, !alias.scope !128 ; 2 uses
  %i.cm = sext <4 x i8> %wide.load121 to <4 x i32>
  %i.cn = shl nsw <4 x i32> %i.cm, %broadcast.splat ; 2 uses
  %i.co = add <4 x i32> %i.cn, splat (i32 -128)
  %i.cp = icmp ult <4 x i32> %i.co, splat (i32 -256) ; 2 uses
  %i.cq = bitcast <4 x i1> %i.cp to i4
  %.not166 = icmp eq i4 %i.cq, 0
  br i1 %.not166, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body119
  store i32 1, ptr %i.l, align 4, !alias.scope !129, !noalias !130
  br label %bb.e

bb.e:                                             ; preds = %vector.body119, %bb.d
  %i.cr = icmp sgt <4 x i8> %wide.load121, splat (i8 -1)
  %i.cs = select <4 x i1> %i.cr, <4 x i32> splat (i32 127), <4 x i32> splat (i32 128)
  %predphi130 = select <4 x i1> %i.cp, <4 x i32> %i.cs, <4 x i32> %i.cn
  %i.ct = trunc <4 x i32> %predphi130 to <4 x i8>
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %index120
  store <4 x i8> %i.ct, ptr %i.cu, align 1, !alias.scope !131, !noalias !128
  %index.next131 = add nuw i64 %index120, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next131, %i.i
  br i1 %i.cv, label %.split18.us, label %vector.body119, !llvm.loop !119

.split.us.split.split.us:                         ; preds = %do_sqrshl_bhs.exit.us.us20.1, %.split.us.split.split.us.preheader168
  %.016.us.us19 = phi i64 [ 0, %.split.us.split.split.us.preheader168 ], [ %i.dp, %do_sqrshl_bhs.exit.us.us20.1 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us19
  %i.cx = load i8, ptr %i.cw, align 1             ; 2 uses
  %i.cy = sext i8 %i.cx to i32
  %i.cz = shl nsw i32 %i.cy, %i.k                 ; 2 uses
  %i.da = add nsw i32 %i.cz, 128
  %.not.us.us = icmp ult i32 %i.da, 256
  br i1 %.not.us.us, label %do_sqrshl_bhs.exit.us.us20, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.l, align 4
  %i.db = icmp sgt i8 %i.cx, -1
  %i.dc = select i1 %i.db, i32 127, i32 128
  br label %do_sqrshl_bhs.exit.us.us20

do_sqrshl_bhs.exit.us.us20:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us21 = phi i32 [ %i.dc, %bb.f ], [ %i.cz, %.split.us.split.split.us ]
  %i.dd = trunc i32 %.3.i.us.us21 to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us19
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1             ; 2 uses
  %i.di = sext i8 %i.dh to i32
  %i.dj = shl nsw i32 %i.di, %i.k                 ; 2 uses
  %i.dk = add nsw i32 %i.dj, 128
  %.not.us.us.1 = icmp ult i32 %i.dk, 256
  br i1 %.not.us.us.1, label %do_sqrshl_bhs.exit.us.us20.1, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit.us.us20
  store i32 1, ptr %i.l, align 4
  %i.dl = icmp sgt i8 %i.dh, -1
  %i.dm = select i1 %i.dl, i32 127, i32 128
  br label %do_sqrshl_bhs.exit.us.us20.1

do_sqrshl_bhs.exit.us.us20.1:                     ; preds = %bb.g, %do_sqrshl_bhs.exit.us.us20
  %.3.i.us.us21.1 = phi i32 [ %i.dm, %bb.g ], [ %i.dj, %do_sqrshl_bhs.exit.us.us20 ]
  %i.dn = trunc i32 %.3.i.us.us21.1 to i8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.df
  store i8 %i.dn, ptr %i.do, align 1
  %i.dp = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %i.dp, %i.i
  br i1 %exitcond26.not.1, label %.split18.us, label %.split.us.split.split.us, !llvm.loop !120

.split.us.split.split:                            ; preds = %do_sqrshl_bhs.exit.us.1, %.split.us.split.split.preheader171
  %.016.us = phi i64 [ 0, %.split.us.split.split.preheader171 ], [ %i.ed, %do_sqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us
  %i.dr = load i8, ptr %i.dq, align 1             ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %do_sqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.l, align 4
  %i.dt = icmp sgt i8 %i.dr, -1
  %i.du = select i1 %i.dt, i8 127, i8 -128
  br label %do_sqrshl_bhs.exit.us

do_sqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i8 [ %i.du, %bb.h ], [ 0, %.split.us.split.split ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us
  store i8 %.3.i.us, ptr %i.dv, align 1
  %i.dw = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1             ; 2 uses
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %do_sqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit.us
  store i32 1, ptr %i.l, align 4
  %i.ea = icmp sgt i8 %i.dy, -1
  %i.eb = select i1 %i.ea, i8 127, i8 -128
  br label %do_sqrshl_bhs.exit.us.1

do_sqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_sqrshl_bhs.exit.us
  %.3.i.us.1 = phi i8 [ %i.eb, %bb.i ], [ 0, %do_sqrshl_bhs.exit.us ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.dw
  store i8 %.3.i.us.1, ptr %i.ec, align 1
  %i.ed = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.ed, %i.i
  br i1 %exitcond25.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !121

do_sqrshl_bhs.exit:                               ; preds = %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.preheader
  %.016 = phi i64 [ %.016.ph, %do_sqrshl_bhs.exit.preheader ], [ %i.ex, %do_sqrshl_bhs.exit ] ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = ashr i8 %i.ef, 7
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 %i.eg, ptr %i.eh, align 1
  %i.ei = or disjoint i64 %.016, 1                ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = ashr i8 %i.ek, 7
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.ei
  store i8 %i.el, ptr %i.em, align 1
  %i.en = or disjoint i64 %.016, 2                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = ashr i8 %i.ep, 7
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %i.en
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = or disjoint i64 %.016, 3                ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = ashr i8 %i.eu, 7
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %i.es
  store i8 %i.ev, ptr %i.ew, align 1
  %i.ex = add nuw nsw i64 %.016, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ex, %i.i
  br i1 %exitcond.not.3, label %.split18.us, label %do_sqrshl_bhs.exit, !llvm.loop !122

.split18.us:                                      ; preds = %vec.epilog.vector.body, %do_sqrshl_bhs.exit, %bb.c, %do_sqrshl_bhs.exit.us.1, %bb.e, %do_sqrshl_bhs.exit.us.us20.1, %vec.epilog.vector.body159, %do_sqrshl_bhs.exit.us.us, %middle.block, %middle.block148
  %i.ey = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.ey, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.ez = add nuw nsw i32 %i.g, 8
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %0, i64 %i.i
  %i.fc = xor i64 %i.i, -1
  %i.fd = add nsw i64 %i.fc, %i.fa
  %i.fe = and i64 %i.fd, -8
  %i.ff = add nsw i64 %i.fe, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %i.ff, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshl_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %1, 16                          ; 3 uses
  %i.a = ashr exact i32 %sext, 16                 ; 3 uses
  %sext11 = shl i32 %2, 24
  %i.b = ashr exact i32 %sext11, 24               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %.not.i = icmp sgt i32 %i.b, -16
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i32 %sext, 31
  br label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = sub nsw i32 0, %i.b
  %i.g = ashr i32 %i.a, %i.f
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %i.b, 16
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = shl nsw i32 %i.a, %i.b                   ; 2 uses
  %i.j = add nsw i32 %i.i, 32768
  %.not = icmp ult i32 %i.j, 65536
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = icmp eq i32 %sext, 0
  br i1 %i.k, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.c, align 4
  %i.l = icmp sgt i32 %i.a, -1
  %i.m = select i1 %i.l, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ %i.d, %bb.b ], [ 0, %bb.g ], [ %i.i, %bb.f ], [ %i.g, %bb.d ], [ %i.m, %bb.h ]
  %i.n = ashr i32 %1, 16                          ; 4 uses
  %i.o = shl i32 %2, 8
  %i.p = ashr i32 %i.o, 24                        ; 5 uses
  %.not.i14 = icmp sgt i32 %i.p, -16
  br i1 %.not.i14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit
  %i.q = ashr i32 %1, 31
  br label %do_sqrshl_bhs.exit17

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.s = sub nsw i32 0, %i.p
  %i.t = ashr i32 %i.n, %i.s
  br label %do_sqrshl_bhs.exit17

bb.l:                                             ; preds = %bb.j
  %i.u = icmp samesign ult i32 %i.p, 16
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = shl nsw i32 %i.n, %i.p                   ; 2 uses
  %i.w = add nsw i32 %i.v, 32768
  %.not18 = icmp ult i32 %i.w, 65536
  br i1 %.not18, label %do_sqrshl_bhs.exit17, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.x = icmp eq i32 %i.n, 0
  br i1 %i.x, label %do_sqrshl_bhs.exit17, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 1, ptr %i.c, align 4
  %i.y = icmp sgt i32 %i.n, -1
  %i.z = select i1 %i.y, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit17

do_sqrshl_bhs.exit17:                             ; preds = %bb.i, %bb.k, %bb.m, %bb.n, %bb.o
  %.3.i15 = phi i32 [ %i.q, %bb.i ], [ 0, %bb.n ], [ %i.v, %bb.m ], [ %i.t, %bb.k ], [ %i.z, %bb.o ]
  %.sroa.5.0.insert.ext = shl i32 %.3.i15, 16
  %.sroa.03.0.insert.ext = and i32 %.3.i, 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ac, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = sext i16 %i.k to i32                     ; 3 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %sext = shl i32 %i.o, 24
  %i.p = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.p, -16
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = ashr i32 %i.l, 31
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = sub nsw i32 0, %i.p
  %i.t = ashr i32 %i.l, %i.s
  br label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp samesign ult i32 %i.p, 16
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = shl nsw i32 %i.l, %i.p                   ; 2 uses
  %i.w = add nsw i32 %i.v, 32768
  %.not = icmp ult i32 %i.w, 65536
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = icmp eq i16 %i.k, 0
  br i1 %i.x, label %do_sqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.i, align 4
  %i.y = icmp sgt i16 %i.k, -1
  %i.z = select i1 %i.y, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.3.i = phi i32 [ %i.q, %bb.c ], [ 0, %bb.h ], [ %i.v, %bb.g ], [ %i.t, %bb.e ], [ %i.z, %bb.i ]
  %i.aa = trunc i32 %.3.i to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !132

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ad = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ad, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ae = add nuw nsw i32 %i.e, 8
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %0, i64 %i.g
  %i.ah = xor i64 %i.g, -1
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = and i64 %i.ai, -8
  %i.ak = add nsw i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ak, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.j, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 9 uses
  %i.j = lshr exact i64 %i.i, 1                   ; 13 uses
  %i.k = shl i32 %3, 14
  %i.l = ashr i32 %i.k, 24                        ; 7 uses
  %i.m = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.l, -16
  %i.n = icmp samesign ult i32 %i.l, 16
  %i.o = sub nsw i32 0, %i.l                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -32
  br i1 %diff.check, label %do_sqrshl_bhs.exit.preheader.new, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %vec.epilog.vector.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.j, 1073741808               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <8 x i16>, ptr %i.q, align 2
  %wide.load38 = load <8 x i16>, ptr %i.r, align 2
  %i.s = ashr <8 x i16> %wide.load, splat (i16 15)
  %i.t = ashr <8 x i16> %wide.load38, splat (i16 15)
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <8 x i16> %i.s, ptr %i.u, align 2
  store <8 x i16> %i.t, ptr %i.v, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.x = and i64 %i.i, 24
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %do_sqrshl_bhs.exit.preheader.new, label %vec.epilog.vector.body.preheader, !prof !11

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %index40.ph = phi i64 [ 0, %vector.main.loop.iter.check ], [ %n.vec, %vec.epilog.iter.check ]
  br label %vec.epilog.vector.body

do_sqrshl_bhs.exit.preheader.new:                 ; preds = %vector.memcheck, %vec.epilog.iter.check
  %.015.ph = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.memcheck ]
  br label %do_sqrshl_bhs.exit

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index40 = phi i64 [ %index.next42, %vec.epilog.vector.body ], [ %index40.ph, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index40
  %wide.load41 = load <4 x i16>, ptr %i.y, align 2
  %i.z = ashr <4 x i16> %wide.load41, splat (i16 15)
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index40
  store <4 x i16> %i.z, ptr %i.aa, align 2
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next42, %i.j
  br i1 %i.ab, label %.split17.us, label %vec.epilog.vector.body, !llvm.loop !134

.split.us:                                        ; preds = %bb.a
  %i.ac = icmp slt i32 %i.l, 0
  br i1 %i.ac, label %vector.memcheck134, label %.split.us.split

vector.memcheck134:                               ; preds = %.split.us
  %i.ad = sub i64 %i.a, %i.b
  %diff.check135 = icmp ugt i64 %i.ad, -32
  br i1 %diff.check135, label %do_sqrshl_bhs.exit.us.us.preheader.new, label %vector.main.loop.iter.check137

vector.main.loop.iter.check137:                   ; preds = %vector.memcheck134
  %min.iters.check138 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check138, label %vec.epilog.ph155, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check137
  %n.vec140 = and i64 %i.j, 1073741808            ; 4 uses
  %broadcast.splatinsert141 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat142 = shufflevector <8 x i32> %broadcast.splatinsert141, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.ph139, %vector.body143
  %index144 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body143 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index144 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load145 = load <8 x i16>, ptr %i.ae, align 2
  %wide.load146 = load <8 x i16>, ptr %i.af, align 2
  %i.ag = sext <8 x i16> %wide.load145 to <8 x i32>
  %i.ah = sext <8 x i16> %wide.load146 to <8 x i32>
  %i.ai = ashr <8 x i32> %i.ag, %broadcast.splat142
  %i.aj = ashr <8 x i32> %i.ah, %broadcast.splat142
  %i.ak = trunc nsw <8 x i32> %i.ai to <8 x i16>
  %i.al = trunc nsw <8 x i32> %i.aj to <8 x i16>
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index144 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <8 x i16> %i.ak, ptr %i.am, align 2
  store <8 x i16> %i.al, ptr %i.an, align 2
  %index.next147 = add nuw i64 %index144, 16      ; 2 uses
  %i.ao = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.ao, label %middle.block148, label %vector.body143, !llvm.loop !135

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %i.j, %n.vec140
  br i1 %cmp.n149, label %.split17.us, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %i.ap = and i64 %i.i, 24
  %min.epilog.iters.check154 = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check154, label %do_sqrshl_bhs.exit.us.us.preheader.new, label %vec.epilog.ph155, !prof !11

do_sqrshl_bhs.exit.us.us.preheader.new:           ; preds = %vector.memcheck134, %vec.epilog.iter.check153
  %.015.us.us.ph = phi i64 [ %n.vec140, %vec.epilog.iter.check153 ], [ 0, %vector.memcheck134 ]
  br label %do_sqrshl_bhs.exit.us.us

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check137, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec140, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check137 ]
  %broadcast.splatinsert157 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat158 = shufflevector <4 x i32> %broadcast.splatinsert157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph155
  %index160 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body159 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index160
  %wide.load161 = load <4 x i16>, ptr %i.aq, align 2
  %i.ar = sext <4 x i16> %wide.load161 to <4 x i32>
  %i.as = ashr <4 x i32> %i.ar, %broadcast.splat158
  %i.at = trunc nsw <4 x i32> %i.as to <4 x i16>
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index160
  store <4 x i16> %i.at, ptr %i.au, align 2
  %index.next162 = add nuw i64 %index160, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next162, %i.j
  br i1 %i.av, label %.split17.us, label %vec.epilog.vector.body159, !llvm.loop !136

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us, %do_sqrshl_bhs.exit.us.us.preheader.new
  %.015.us.us = phi i64 [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader.new ], [ %i.bx, %do_sqrshl_bhs.exit.us.us ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = sext i16 %i.ax to i32
  %i.az = ashr i32 %i.ay, %i.o
  %i.ba = trunc nsw i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = or disjoint i64 %.015.us.us, 1          ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32
  %i.bg = ashr i32 %i.bf, %i.o
  %i.bh = trunc nsw i32 %i.bg to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bc
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = or disjoint i64 %.015.us.us, 2          ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = sext i16 %i.bl to i32
  %i.bn = ashr i32 %i.bm, %i.o
  %i.bo = trunc nsw i32 %i.bn to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bj
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = or disjoint i64 %.015.us.us, 3          ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = sext i16 %i.bs to i32
  %i.bu = ashr i32 %i.bt, %i.o
  %i.bv = trunc nsw i32 %i.bu to i16
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bq
  store i16 %i.bv, ptr %i.bw, align 2
  %i.bx = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.bx, %i.j
  br i1 %exitcond26.not.3, label %.split17.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !137

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.n, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check54 = icmp samesign ult i32 %.v.v.i, 32
  br i1 %min.iters.check54, label %.split.us.split.split.preheader171.new, label %vector.memcheck55
end_hunk_1
begin_hunk_2_@helper_neon_sqshli_h:bb.a
  %i.ck = select <4 x i1> %i.ci, <4 x i16> splat (i16 32767), <4 x i16> splat (i16 -32768)
  %predphi = select <4 x i1> %i.cd, <4 x i16> %i.cj, <4 x i16> zeroinitializer
  %predphi83 = select <4 x i1> %i.ce, <4 x i16> %i.ck, <4 x i16> zeroinitializer
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index66 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store <4 x i16> %predphi, ptr %i.cl, align 2, !alias.scope !154, !noalias !151
  store <4 x i16> %predphi83, ptr %i.cm, align 2, !alias.scope !154, !noalias !151
  %index.next84 = add nuw i64 %index66, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next84, %n.vec64
  br i1 %i.cn, label %middle.block85, label %vector.body65, !llvm.loop !142

middle.block85:                                   ; preds = %bb.c
  %cmp.n86 = icmp eq i64 %i.j, %n.vec64
  br i1 %cmp.n86, label %.split17.us, label %.split.us.split.split.preheader171.new

.split.us.split.split.preheader171.new:           ; preds = %vector.memcheck55, %.split.us.split.split.preheader, %middle.block85
  %.015.us.ph = phi i64 [ 0, %vector.memcheck55 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec64, %middle.block85 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check103 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check103, label %.split.us.split.split.us.preheader168.new, label %vector.memcheck104

.split.us.split.split.us.preheader168.new:        ; preds = %.split.us.split.split.us.preheader, %vector.memcheck104
  br label %.split.us.split.split.us

vector.memcheck104:                               ; preds = %.split.us.split.split.us.preheader
  %i.co = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.cq = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0105 = icmp ult ptr %i.m, %i.cp
  %bound1106 = icmp ult ptr %0, %i.co
  %found.conflict107 = and i1 %bound0105, %bound1106
  %bound0108 = icmp ult ptr %i.m, %i.cq
  %bound1109 = icmp ult ptr %1, %i.co
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %found.conflict107, %found.conflict110
  %bound0112 = icmp ult ptr %0, %i.cq
  %bound1113 = icmp ult ptr %1, %i.cp
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  br i1 %conflict.rdx115, label %.split.us.split.split.us.preheader168.new, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck104
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body118

vector.body118:                                   ; preds = %bb.e, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next130, %bb.e ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index119
  %wide.load120 = load <4 x i16>, ptr %i.cr, align 2, !alias.scope !155 ; 2 uses
  %i.cs = sext <4 x i16> %wide.load120 to <4 x i32>
  %i.ct = shl nsw <4 x i32> %i.cs, %broadcast.splat ; 2 uses
  %i.cu = add <4 x i32> %i.ct, splat (i32 -32768)
  %i.cv = icmp ult <4 x i32> %i.cu, splat (i32 -65536) ; 2 uses
  %i.cw = bitcast <4 x i1> %i.cv to i4
  %.not166 = icmp eq i4 %i.cw, 0
  br i1 %.not166, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body118
  store i32 1, ptr %i.m, align 4, !alias.scope !156, !noalias !157
  br label %bb.e

bb.e:                                             ; preds = %vector.body118, %bb.d
  %i.cx = icmp sgt <4 x i16> %wide.load120, splat (i16 -1)
  %i.cy = select <4 x i1> %i.cx, <4 x i32> splat (i32 32767), <4 x i32> splat (i32 32768)
  %predphi129 = select <4 x i1> %i.cv, <4 x i32> %i.cy, <4 x i32> %i.ct
  %i.cz = trunc <4 x i32> %predphi129 to <4 x i16>
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index119
  store <4 x i16> %i.cz, ptr %i.da, align 2, !alias.scope !158, !noalias !155
  %index.next130 = add nuw i64 %index119, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next130, %i.j
  br i1 %i.db, label %.split17.us, label %vector.body118, !llvm.loop !147

.split.us.split.split.us:                         ; preds = %do_sqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader168.new
  %.015.us.us18 = phi i64 [ 0, %.split.us.split.split.us.preheader168.new ], [ %i.dv, %do_sqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.us.split.split.us.preheader168.new ], [ %niter.next.1, %do_sqrshl_bhs.exit.us.us19.1 ]
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us18
  %i.dd = load i16, ptr %i.dc, align 2            ; 2 uses
  %i.de = sext i16 %i.dd to i32
  %i.df = shl nsw i32 %i.de, %i.l                 ; 2 uses
  %i.dg = add nsw i32 %i.df, 32768
  %.not.us.us = icmp ult i32 %i.dg, 65536
  br i1 %.not.us.us, label %do_sqrshl_bhs.exit.us.us19, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.m, align 4
  %i.dh = icmp sgt i16 %i.dd, -1
  %i.di = select i1 %i.dh, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit.us.us19

do_sqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ %i.di, %bb.f ], [ %i.df, %.split.us.split.split.us ]
  %i.dj = trunc i32 %.3.i.us.us20 to i16
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us18
  store i16 %i.dj, ptr %i.dk, align 2
  %i.dl = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2            ; 2 uses
  %i.do = sext i16 %i.dn to i32
  %i.dp = shl nsw i32 %i.do, %i.l                 ; 2 uses
  %i.dq = add nsw i32 %i.dp, 32768
  %.not.us.us.1 = icmp ult i32 %i.dq, 65536
  br i1 %.not.us.us.1, label %do_sqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.m, align 4
  %i.dr = icmp sgt i16 %i.dn, -1
  %i.ds = select i1 %i.dr, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit.us.us19.1

do_sqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_sqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ %i.ds, %bb.g ], [ %i.dp, %do_sqrshl_bhs.exit.us.us19 ]
  %i.dt = trunc i32 %.3.i.us.us20.1 to i16
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dl
  store i16 %i.dt, ptr %i.du, align 2
  %i.dv = add nuw nsw i64 %.015.us.us18, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.j
  br i1 %niter.ncmp.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !148

.split.us.split.split:                            ; preds = %do_sqrshl_bhs.exit.us.1, %.split.us.split.split.preheader171.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader171.new ], [ %i.ej, %do_sqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us
  %i.dx = load i16, ptr %i.dw, align 2            ; 2 uses
  %i.dy = icmp eq i16 %i.dx, 0
  br i1 %i.dy, label %do_sqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.m, align 4
  %i.dz = icmp sgt i16 %i.dx, -1
  %i.ea = select i1 %i.dz, i16 32767, i16 -32768
  br label %do_sqrshl_bhs.exit.us

do_sqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i16 [ %i.ea, %bb.h ], [ 0, %.split.us.split.split ]
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us
  store i16 %.3.i.us, ptr %i.eb, align 2
  %i.ec = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2            ; 2 uses
  %i.ef = icmp eq i16 %i.ee, 0
  br i1 %i.ef, label %do_sqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit.us
  store i32 1, ptr %i.m, align 4
  %i.eg = icmp sgt i16 %i.ee, -1
  %i.eh = select i1 %i.eg, i16 32767, i16 -32768
  br label %do_sqrshl_bhs.exit.us.1

do_sqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_sqrshl_bhs.exit.us
  %.3.i.us.1 = phi i16 [ %i.eh, %bb.i ], [ 0, %do_sqrshl_bhs.exit.us ]
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ec
  store i16 %.3.i.us.1, ptr %i.ei, align 2
  %i.ej = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.ej, %i.j
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !149

do_sqrshl_bhs.exit:                               ; preds = %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.preheader.new
  %.015 = phi i64 [ %.015.ph, %do_sqrshl_bhs.exit.preheader.new ], [ %i.fd, %do_sqrshl_bhs.exit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = ashr i16 %i.el, 15
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 %i.em, ptr %i.en, align 2
  %i.eo = or disjoint i64 %.015, 1                ; 2 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2
  %i.er = ashr i16 %i.eq, 15
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eo
  store i16 %i.er, ptr %i.es, align 2
  %i.et = or disjoint i64 %.015, 2                ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = ashr i16 %i.ev, 15
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.et
  store i16 %i.ew, ptr %i.ex, align 2
  %i.ey = or disjoint i64 %.015, 3                ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = ashr i16 %i.fa, 15
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ey
  store i16 %i.fb, ptr %i.fc, align 2
  %i.fd = add nuw nsw i64 %.015, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fd, %i.j
  br i1 %exitcond.not.3, label %.split17.us, label %do_sqrshl_bhs.exit, !llvm.loop !150

.split17.us:                                      ; preds = %vec.epilog.vector.body, %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.us.1, %bb.e, %do_sqrshl_bhs.exit.us.us19.1, %vec.epilog.vector.body159, %do_sqrshl_bhs.exit.us.us, %middle.block, %middle.block85, %middle.block148
  %i.fe = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.fe, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.ff = add nuw nsw i32 %i.g, 8
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr i8, ptr %0, i64 %i.i
  %i.fi = xor i64 %i.i, -1
  %i.fj = add nsw i64 %i.fi, %i.fg
  %i.fk = and i64 %i.fj, -8
  %i.fl = add nsw i64 %i.fk, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fh, i8 0, i64 %i.fl, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.aa, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.k = load i32, ptr %i.j, align 4              ; 6 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.m = load i32, ptr %i.l, align 4
  %sext = shl i32 %i.m, 24
  %i.n = ashr exact i32 %sext, 24                 ; 6 uses
  %.not.i = icmp sgt i32 %i.n, -32
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ashr i32 %i.k, 31
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = sub nsw i32 0, %i.n
  %i.r = ashr i32 %i.k, %i.q
  br label %do_sqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.s = icmp samesign ult i32 %i.n, 32
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl i32 %i.k, %i.n                       ; 2 uses
  %i.u = ashr exact i32 %i.t, %i.n
  %i.v = icmp eq i32 %i.u, %i.k
  br i1 %i.v, label %do_sqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = icmp eq i32 %i.k, 0
  br i1 %i.w, label %do_sqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.i, align 4
  %i.x = icmp sgt i32 %i.k, -1
  %i.y = select i1 %i.x, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.3.i = phi i32 [ %i.o, %bb.c ], [ 0, %bb.h ], [ %i.t, %bb.g ], [ %i.r, %bb.e ], [ %i.y, %bb.i ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %.3.i, ptr %i.z, align 4
  %i.aa = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.h
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !159

bb.j:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ab = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ab, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ac = add nuw nsw i32 %i.e, 8
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %0, i64 %i.g
  %i.af = xor i64 %i.g, -1
  %i.ag = add nsw i64 %i.af, %i.ad
  %i.ah = and i64 %i.ag, -8
  %i.ai = add nsw i64 %i.ah, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ae, i8 0, i64 %i.ai, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.j, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 16 uses
  %i.k = shl i32 %3, 14
  %i.l = ashr i32 %i.k, 24                        ; 9 uses
  %i.m = getelementptr i8, ptr %2, i64 12656      ; 10 uses
  %.not.i = icmp sgt i32 %i.l, -32
  %i.n = icmp samesign ult i32 %i.l, 32
  %i.o = sub nsw i32 0, %i.l                      ; 6 uses
  br i1 %.not.i, label %.split.us, label %do_sqrshl_bhs.exit.preheader

do_sqrshl_bhs.exit.preheader:                     ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %do_sqrshl_bhs.exit.preheader163, label %vector.ph

vector.ph:                                        ; preds = %do_sqrshl_bhs.exit.preheader
  %n.vec = and i64 %i.j, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <4 x i32>, ptr %i.q, align 4
  %wide.load38 = load <4 x i32>, ptr %i.r, align 4
  %i.s = ashr <4 x i32> %wide.load, splat (i32 31)
  %i.t = ashr <4 x i32> %wide.load38, splat (i32 31)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %i.s, ptr %i.u, align 4
  store <4 x i32> %i.t, ptr %i.v, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.split17.us, label %do_sqrshl_bhs.exit.preheader163

do_sqrshl_bhs.exit.preheader163:                  ; preds = %do_sqrshl_bhs.exit.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %do_sqrshl_bhs.exit.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.j, 2                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %do_sqrshl_bhs.exit.prol.loopexit, label %do_sqrshl_bhs.exit.prol

do_sqrshl_bhs.exit.prol:                          ; preds = %do_sqrshl_bhs.exit.preheader163, %do_sqrshl_bhs.exit.prol
  %.015.prol = phi i64 [ %i.ab, %do_sqrshl_bhs.exit.prol ], [ %.015.ph, %do_sqrshl_bhs.exit.preheader163 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_sqrshl_bhs.exit.prol ], [ 0, %do_sqrshl_bhs.exit.preheader163 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.prol
  %i.y = load i32, ptr %i.x, align 4
  %i.z = ashr i32 %i.y, 31
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.prol
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = add nuw nsw i64 %.015.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %do_sqrshl_bhs.exit.prol.loopexit, label %do_sqrshl_bhs.exit.prol, !llvm.loop !161

do_sqrshl_bhs.exit.prol.loopexit:                 ; preds = %do_sqrshl_bhs.exit.prol, %do_sqrshl_bhs.exit.preheader163
  %.015.unr = phi i64 [ %.015.ph, %do_sqrshl_bhs.exit.preheader163 ], [ %i.ab, %do_sqrshl_bhs.exit.prol ]
  %i.ac = sub nsw i64 %.015.ph, %i.j
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.split17.us, label %do_sqrshl_bhs.exit

.split.us:                                        ; preds = %bb.a
  %i.ae = icmp slt i32 %i.l, 0
  br i1 %i.ae, label %do_sqrshl_bhs.exit.us.us.preheader, label %.split.us.split

do_sqrshl_bhs.exit.us.us.preheader:               ; preds = %.split.us
  %min.iters.check143 = icmp samesign ult i32 %.v.v.i, 24
  %i.af = sub i64 %i.a, %i.b
  %diff.check141 = icmp ugt i64 %i.af, -32
  %or.cond156 = or i1 %min.iters.check143, %diff.check141
  br i1 %or.cond156, label %do_sqrshl_bhs.exit.us.us.preheader158, label %vector.ph144

vector.ph144:                                     ; preds = %do_sqrshl_bhs.exit.us.us.preheader
  %n.vec145 = and i64 %i.j, 536870904             ; 3 uses
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph144
  %index149 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body148 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index149 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load150 = load <4 x i32>, ptr %i.ag, align 4
  %wide.load151 = load <4 x i32>, ptr %i.ah, align 4
  %i.ai = ashr <4 x i32> %wide.load150, %broadcast.splat147
  %i.aj = ashr <4 x i32> %wide.load151, %broadcast.splat147
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index149 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <4 x i32> %i.ai, ptr %i.ak, align 4
  store <4 x i32> %i.aj, ptr %i.al, align 4
  %index.next152 = add nuw i64 %index149, 8       ; 2 uses
  %i.am = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.am, label %middle.block153, label %vector.body148, !llvm.loop !162

middle.block153:                                  ; preds = %vector.body148
  %cmp.n154 = icmp eq i64 %i.j, %n.vec145
  br i1 %cmp.n154, label %.split17.us, label %do_sqrshl_bhs.exit.us.us.preheader158

do_sqrshl_bhs.exit.us.us.preheader158:            ; preds = %do_sqrshl_bhs.exit.us.us.preheader, %middle.block153
  %.015.us.us.ph = phi i64 [ 0, %do_sqrshl_bhs.exit.us.us.preheader ], [ %n.vec145, %middle.block153 ] ; 3 uses
  %xtraiter171 = and i64 %i.j, 2                  ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %do_sqrshl_bhs.exit.us.us.prol.loopexit, label %do_sqrshl_bhs.exit.us.us.prol

do_sqrshl_bhs.exit.us.us.prol:                    ; preds = %do_sqrshl_bhs.exit.us.us.preheader158, %do_sqrshl_bhs.exit.us.us.prol
  %.015.us.us.prol = phi i64 [ %i.ar, %do_sqrshl_bhs.exit.us.us.prol ], [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader158 ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %do_sqrshl_bhs.exit.us.us.prol ], [ 0, %do_sqrshl_bhs.exit.us.us.preheader158 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us.prol
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = ashr i32 %i.ao, %i.o
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us.prol
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = add nuw nsw i64 %.015.us.us.prol, 1     ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %do_sqrshl_bhs.exit.us.us.prol.loopexit, label %do_sqrshl_bhs.exit.us.us.prol, !llvm.loop !163

do_sqrshl_bhs.exit.us.us.prol.loopexit:           ; preds = %do_sqrshl_bhs.exit.us.us.prol, %do_sqrshl_bhs.exit.us.us.preheader158
  %.015.us.us.unr = phi i64 [ %.015.us.us.ph, %do_sqrshl_bhs.exit.us.us.preheader158 ], [ %i.ar, %do_sqrshl_bhs.exit.us.us.prol ]
  %i.as = sub nsw i64 %.015.us.us.ph, %i.j
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %.split17.us, label %do_sqrshl_bhs.exit.us.us

do_sqrshl_bhs.exit.us.us:                         ; preds = %do_sqrshl_bhs.exit.us.us.prol.loopexit, %do_sqrshl_bhs.exit.us.us
  %.015.us.us = phi i64 [ %i.bn, %do_sqrshl_bhs.exit.us.us ], [ %.015.us.us.unr, %do_sqrshl_bhs.exit.us.us.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = ashr i32 %i.av, %i.o
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = add nuw nsw i64 %.015.us.us, 1          ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = ashr i32 %i.ba, %i.o
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = add nuw nsw i64 %.015.us.us, 2          ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = ashr i32 %i.bf, %i.o
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bd
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = add nuw nsw i64 %.015.us.us, 3          ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = ashr i32 %i.bk, %i.o
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = add nuw nsw i64 %.015.us.us, 4          ; 2 uses
  %exitcond26.not.3 = icmp eq i64 %i.bn, %i.j
  br i1 %exitcond26.not.3, label %.split17.us, label %do_sqrshl_bhs.exit.us.us, !llvm.loop !164

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.n, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %min.iters.check50 = icmp samesign ult i32 %.v.v.i, 72
  br i1 %min.iters.check50, label %.split.us.split.split.preheader161.new, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.split.us.split.split.preheader
  %i.bo = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0 = icmp ult ptr %i.m, %i.bp
  %bound1 = icmp ult ptr %0, %i.bo
  %found.conflict = and i1 %bound0, %bound1
  %bound052 = icmp ult ptr %i.m, %i.bq
  %bound153 = icmp ult ptr %1, %i.bo
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx = or i1 %found.conflict, %found.conflict54
  %bound055 = icmp ult ptr %0, %i.bq
  %bound156 = icmp ult ptr %1, %i.bp
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx, %found.conflict57
  br i1 %conflict.rdx58, label %.split.us.split.split.preheader161.new, label %vector.ph59

end_hunk_2
begin_hunk_3_@helper_neon_sqshli_s:bb.a
  br i1 %i.cd, label %middle.block81, label %vector.body61, !llvm.loop !169

middle.block81:                                   ; preds = %bb.c
  %cmp.n82 = icmp eq i64 %i.j, %n.vec60
  br i1 %cmp.n82, label %.split17.us, label %.split.us.split.split.preheader161.new

.split.us.split.split.preheader161.new:           ; preds = %vector.memcheck51, %.split.us.split.split.preheader, %middle.block81
  %.015.us.ph = phi i64 [ 0, %vector.memcheck51 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec60, %middle.block81 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check99 = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check99, label %.split.us.split.split.us.preheader159.new, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.split.us.split.split.us.preheader
  %i.ce = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.cf = getelementptr i8, ptr %0, i64 %i.i      ; 2 uses
  %i.cg = getelementptr i8, ptr %1, i64 %i.i      ; 2 uses
  %bound0101 = icmp ult ptr %i.m, %i.cf
  %bound1102 = icmp ult ptr %0, %i.ce
  %found.conflict103 = and i1 %bound0101, %bound1102
  %bound0104 = icmp ult ptr %i.m, %i.cg
  %bound1105 = icmp ult ptr %1, %i.ce
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %found.conflict103, %found.conflict106
  %bound0108 = icmp ult ptr %0, %i.cg
  %bound1109 = icmp ult ptr %1, %i.cf
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %.split.us.split.split.us.preheader159.new, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck100
  %n.vec113 = and i64 %i.j, 536870904             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body114

vector.body114:                                   ; preds = %bb.e, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next136, %bb.e ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index115 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load116 = load <4 x i32>, ptr %i.ch, align 4, !alias.scope !182 ; 3 uses
  %wide.load117 = load <4 x i32>, ptr %i.ci, align 4, !alias.scope !182 ; 3 uses
  %i.cj = shl <4 x i32> %wide.load116, %broadcast.splat ; 2 uses
  %i.ck = shl <4 x i32> %wide.load117, %broadcast.splat ; 2 uses
  %i.cl = ashr exact <4 x i32> %i.cj, %broadcast.splat
  %i.cm = ashr exact <4 x i32> %i.ck, %broadcast.splat
  %i.cn = icmp ne <4 x i32> %i.cl, %wide.load116  ; 2 uses
  %i.co = icmp ne <4 x i32> %i.cm, %wide.load117  ; 2 uses
  %i.cp = shufflevector <4 x i1> %i.co, <4 x i1> %i.cn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cq = bitcast <8 x i1> %i.cp to i8
  %.not157 = icmp eq i8 %i.cq, 0
  br i1 %.not157, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector.body114
  store i32 1, ptr %i.m, align 4, !alias.scope !183, !noalias !184
  br label %bb.e

bb.e:                                             ; preds = %vector.body114, %bb.d
  %i.cr = icmp sgt <4 x i32> %wide.load116, splat (i32 -1)
  %i.cs = icmp sgt <4 x i32> %wide.load117, splat (i32 -1)
  %i.ct = select <4 x i1> %i.cr, <4 x i32> splat (i32 2147483647), <4 x i32> splat (i32 -2147483648)
  %i.cu = select <4 x i1> %i.cs, <4 x i32> splat (i32 2147483647), <4 x i32> splat (i32 -2147483648)
  %predphi134 = select <4 x i1> %i.cn, <4 x i32> %i.ct, <4 x i32> %i.cj
  %predphi135 = select <4 x i1> %i.co, <4 x i32> %i.cu, <4 x i32> %i.ck
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index115 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <4 x i32> %predphi134, ptr %i.cv, align 4, !alias.scope !185, !noalias !182
  store <4 x i32> %predphi135, ptr %i.cw, align 4, !alias.scope !185, !noalias !182
  %index.next136 = add nuw i64 %index115, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next136, %n.vec113
  br i1 %i.cx, label %middle.block137, label %vector.body114, !llvm.loop !174

middle.block137:                                  ; preds = %bb.e
  %cmp.n138 = icmp eq i64 %i.j, %n.vec113
  br i1 %cmp.n138, label %.split17.us, label %.split.us.split.split.us.preheader159.new

.split.us.split.split.us.preheader159.new:        ; preds = %vector.memcheck100, %.split.us.split.split.us.preheader, %middle.block137
  %.015.us.us18.ph = phi i64 [ 0, %vector.memcheck100 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec113, %middle.block137 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_sqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader159.new
  %.015.us.us18 = phi i64 [ %.015.us.us18.ph, %.split.us.split.split.us.preheader159.new ], [ %i.dp, %do_sqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us.us18
  %i.cz = load i32, ptr %i.cy, align 4            ; 3 uses
  %i.da = shl i32 %i.cz, %i.l                     ; 2 uses
  %i.db = ashr exact i32 %i.da, %i.l
  %i.dc = icmp eq i32 %i.db, %i.cz
  br i1 %i.dc, label %do_sqrshl_bhs.exit.us.us19, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  store i32 1, ptr %i.m, align 4
  %i.dd = icmp sgt i32 %i.cz, -1
  %i.de = select i1 %i.dd, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us.us19

do_sqrshl_bhs.exit.us.us19:                       ; preds = %bb.f, %.split.us.split.split.us
  %.3.i.us.us20 = phi i32 [ %i.de, %bb.f ], [ %i.da, %.split.us.split.split.us ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us.us18
  store i32 %.3.i.us.us20, ptr %i.df, align 4
  %i.dg = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4            ; 3 uses
  %i.dj = shl i32 %i.di, %i.l                     ; 2 uses
  %i.dk = ashr exact i32 %i.dj, %i.l
  %i.dl = icmp eq i32 %i.dk, %i.di
  br i1 %i.dl, label %do_sqrshl_bhs.exit.us.us19.1, label %bb.g

bb.g:                                             ; preds = %do_sqrshl_bhs.exit.us.us19
  store i32 1, ptr %i.m, align 4
  %i.dm = icmp sgt i32 %i.di, -1
  %i.dn = select i1 %i.dm, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us.us19.1

do_sqrshl_bhs.exit.us.us19.1:                     ; preds = %bb.g, %do_sqrshl_bhs.exit.us.us19
  %.3.i.us.us20.1 = phi i32 [ %i.dn, %bb.g ], [ %i.dj, %do_sqrshl_bhs.exit.us.us19 ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dg
  store i32 %.3.i.us.us20.1, ptr %i.do, align 4
  %i.dp = add nuw nsw i64 %.015.us.us18, 2        ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.dp, %i.j
  br i1 %exitcond25.not.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !175

.split.us.split.split:                            ; preds = %do_sqrshl_bhs.exit.us.1, %.split.us.split.split.preheader161.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader161.new ], [ %i.ed, %do_sqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015.us
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %do_sqrshl_bhs.exit.us, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  store i32 1, ptr %i.m, align 4
  %i.dt = icmp sgt i32 %i.dr, -1
  %i.du = select i1 %i.dt, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us

do_sqrshl_bhs.exit.us:                            ; preds = %bb.h, %.split.us.split.split
  %.3.i.us = phi i32 [ %i.du, %bb.h ], [ 0, %.split.us.split.split ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015.us
  store i32 %.3.i.us, ptr %i.dv, align 4
  %i.dw = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %do_sqrshl_bhs.exit.us.1, label %bb.i

bb.i:                                             ; preds = %do_sqrshl_bhs.exit.us
  store i32 1, ptr %i.m, align 4
  %i.ea = icmp sgt i32 %i.dy, -1
  %i.eb = select i1 %i.ea, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit.us.1

do_sqrshl_bhs.exit.us.1:                          ; preds = %bb.i, %do_sqrshl_bhs.exit.us
  %.3.i.us.1 = phi i32 [ %i.eb, %bb.i ], [ 0, %do_sqrshl_bhs.exit.us ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  store i32 %.3.i.us.1, ptr %i.ec, align 4
  %i.ed = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.ed, %i.j
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !176

do_sqrshl_bhs.exit:                               ; preds = %do_sqrshl_bhs.exit.prol.loopexit, %do_sqrshl_bhs.exit
  %.015 = phi i64 [ %i.ex, %do_sqrshl_bhs.exit ], [ %.015.unr, %do_sqrshl_bhs.exit.prol.loopexit ] ; 6 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.015
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = ashr i32 %i.ef, 31
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.015
  store i32 %i.eg, ptr %i.eh, align 4
  %i.ei = add nuw nsw i64 %.015, 1                ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = ashr i32 %i.ek, 31
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ei
  store i32 %i.el, ptr %i.em, align 4
  %i.en = add nuw nsw i64 %.015, 2                ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = ashr i32 %i.ep, 31
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.en
  store i32 %i.eq, ptr %i.er, align 4
  %i.es = add nuw nsw i64 %.015, 3                ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = ashr i32 %i.eu, 31
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.es
  store i32 %i.ev, ptr %i.ew, align 4
  %i.ex = add nuw nsw i64 %.015, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ex, %i.j
  br i1 %exitcond.not.3, label %.split17.us, label %do_sqrshl_bhs.exit, !llvm.loop !177

.split17.us:                                      ; preds = %do_sqrshl_bhs.exit.prol.loopexit, %do_sqrshl_bhs.exit, %do_sqrshl_bhs.exit.us.1, %do_sqrshl_bhs.exit.us.us19.1, %do_sqrshl_bhs.exit.us.us.prol.loopexit, %do_sqrshl_bhs.exit.us.us, %middle.block, %middle.block81, %middle.block137, %middle.block153
  %i.ey = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.ey, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.ez = add nuw nsw i32 %i.g, 8
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %0, i64 %i.i
  %i.fc = xor i64 %i.i, -1
  %i.fd = add nsw i64 %i.fc, %i.fa
  %i.fe = and i64 %i.fd, -8
  %i.ff = add nsw i64 %i.fe, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fb, i8 0, i64 %i.ff, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_d.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ab, %do_sqrshl_d.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.k = load i64, ptr %i.j, align 8              ; 6 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.m = load i64, ptr %i.l, align 8
  %sext = shl i64 %i.m, 56
  %i.n = ashr exact i64 %sext, 56                 ; 6 uses
  %i.o = icmp slt i64 %i.n, -63
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = ashr i64 %i.k, 63
  br label %do_sqrshl_d.exit

bb.d:                                             ; preds = %bb.b
  %i.q = icmp slt i64 %i.n, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = sub nsw i64 0, %i.n
  %i.s = ashr i64 %i.k, %i.r
  br label %do_sqrshl_d.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp samesign ult i64 %i.n, 64
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = shl i64 %i.k, %i.n                       ; 2 uses
  %i.v = ashr exact i64 %i.u, %i.n
  %i.w = icmp eq i64 %i.v, %i.k
  br i1 %i.w, label %do_sqrshl_d.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %i.k, 0
  br i1 %i.x, label %do_sqrshl_d.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.i, align 4
  %i.y = icmp slt i64 %i.k, 0
  %i.z = select i1 %i.y, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.1.i = phi i64 [ %i.p, %bb.c ], [ 0, %bb.h ], [ %i.u, %bb.g ], [ %i.s, %bb.e ], [ %i.z, %bb.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %.1.i, ptr %i.aa, align 8
  %i.ab = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %bb.j, label %bb.b, !llvm.loop !186

bb.j:                                             ; preds = %do_sqrshl_d.exit
  %i.ac = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ac, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ad = add nuw nsw i32 %i.e, 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %0, i64 %i.g
  %i.ag = xor i64 %i.g, -1
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, -8
  %i.aj = add nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.aj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.j, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshli_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = lshr i32 %3, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %3, 3
  %i.g = and i32 %i.f, 2040                       ; 3 uses
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.j = lshr i32 %3, 10
  %i.k = lshr exact i64 %i.i, 3                   ; 14 uses
  %i.l = zext nneg i32 %i.j to i64
  %sext = shl i64 %i.l, 56
  %i.m = ashr exact i64 %sext, 56                 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12656 ; 6 uses
  %i.o = icmp slt i64 %i.m, -63
  %i.p = icmp samesign ult i64 %i.m, 64
  %i.q = sub nsw i64 0, %i.m                      ; 6 uses
  br i1 %i.o, label %do_sqrshl_d.exit.us.preheader, label %.split

do_sqrshl_d.exit.us.preheader:                    ; preds = %bb.a
  %min.iters.check45 = icmp samesign ult i32 %.v.v.i, 40
  %i.r = sub i64 %i.a, %i.b
  %diff.check43 = icmp ugt i64 %i.r, -32
  %or.cond = or i1 %min.iters.check45, %diff.check43
  br i1 %or.cond, label %do_sqrshl_d.exit.us.preheader57, label %vector.ph46

vector.ph46:                                      ; preds = %do_sqrshl_d.exit.us.preheader
  %n.vec47 = and i64 %i.k, 268435452              ; 3 uses
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next52, %vector.body48 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index49 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.s, align 8
  %wide.load51 = load <2 x i64>, ptr %i.t, align 8
  %i.u = ashr <2 x i64> %wide.load50, splat (i64 63)
  %i.v = ashr <2 x i64> %wide.load51, splat (i64 63)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index49 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8
  store <2 x i64> %i.v, ptr %i.x, align 8
  %index.next52 = add nuw i64 %index49, 4         ; 2 uses
  %i.y = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.y, label %middle.block53, label %vector.body48, !llvm.loop !187

middle.block53:                                   ; preds = %vector.body48
  %cmp.n54 = icmp eq i64 %i.k, %n.vec47
  br i1 %cmp.n54, label %.split17.us, label %do_sqrshl_d.exit.us.preheader57

do_sqrshl_d.exit.us.preheader57:                  ; preds = %do_sqrshl_d.exit.us.preheader, %middle.block53
  %.015.us.ph = phi i64 [ 0, %do_sqrshl_d.exit.us.preheader ], [ %n.vec47, %middle.block53 ] ; 3 uses
  %xtraiter70 = and i64 %i.k, 3                   ; 2 uses
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %do_sqrshl_d.exit.us.prol.loopexit, label %do_sqrshl_d.exit.us.prol

do_sqrshl_d.exit.us.prol:                         ; preds = %do_sqrshl_d.exit.us.preheader57, %do_sqrshl_d.exit.us.prol
  %.015.us.prol = phi i64 [ %i.ad, %do_sqrshl_d.exit.us.prol ], [ %.015.us.ph, %do_sqrshl_d.exit.us.preheader57 ] ; 3 uses
  %prol.iter72 = phi i64 [ %prol.iter72.next, %do_sqrshl_d.exit.us.prol ], [ 0, %do_sqrshl_d.exit.us.preheader57 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us.prol
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = ashr i64 %i.aa, 63
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us.prol
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = add nuw nsw i64 %.015.us.prol, 1        ; 2 uses
  %prol.iter72.next = add i64 %prol.iter72, 1     ; 2 uses
  %prol.iter72.cmp.not = icmp eq i64 %prol.iter72.next, %xtraiter70
  br i1 %prol.iter72.cmp.not, label %do_sqrshl_d.exit.us.prol.loopexit, label %do_sqrshl_d.exit.us.prol, !llvm.loop !188

do_sqrshl_d.exit.us.prol.loopexit:                ; preds = %do_sqrshl_d.exit.us.prol, %do_sqrshl_d.exit.us.preheader57
  %.015.us.unr = phi i64 [ %.015.us.ph, %do_sqrshl_d.exit.us.preheader57 ], [ %i.ad, %do_sqrshl_d.exit.us.prol ]
  %i.ae = sub nsw i64 %.015.us.ph, %i.k
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.split17.us, label %do_sqrshl_d.exit.us

do_sqrshl_d.exit.us:                              ; preds = %do_sqrshl_d.exit.us.prol.loopexit, %do_sqrshl_d.exit.us
  %.015.us = phi i64 [ %i.az, %do_sqrshl_d.exit.us ], [ %.015.us.unr, %do_sqrshl_d.exit.us.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = ashr i64 %i.ah, 63
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  store i64 %i.ai, ptr %i.aj, align 8
  %i.ak = add nuw nsw i64 %.015.us, 1             ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = ashr i64 %i.am, 63
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  store i64 %i.an, ptr %i.ao, align 8
  %i.ap = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = ashr i64 %i.ar, 63
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  store i64 %i.as, ptr %i.at, align 8
  %i.au = add nuw nsw i64 %.015.us, 3             ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = ashr i64 %i.aw, 63
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = add nuw nsw i64 %.015.us, 4             ; 2 uses
  %exitcond29.not.3 = icmp eq i64 %i.az, %i.k
  br i1 %exitcond29.not.3, label %.split17.us, label %do_sqrshl_d.exit.us, !llvm.loop !189

.split:                                           ; preds = %bb.a
  %i.ba = icmp slt i64 %i.m, 0
  br i1 %i.ba, label %do_sqrshl_d.exit.us19.preheader, label %.split.split

do_sqrshl_d.exit.us19.preheader:                  ; preds = %.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 56
  %i.bb = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.bb, -32
  %or.cond56 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond56, label %do_sqrshl_d.exit.us19.preheader58, label %vector.ph

vector.ph:                                        ; preds = %do_sqrshl_d.exit.us19.preheader
  %n.vec = and i64 %i.k, 268435452                ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <2 x i64>, ptr %i.bc, align 8
  %wide.load41 = load <2 x i64>, ptr %i.bd, align 8
  %i.be = ashr <2 x i64> %wide.load, %broadcast.splat
  %i.bf = ashr <2 x i64> %wide.load41, %broadcast.splat
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x i64> %i.be, ptr %i.bg, align 8
  store <2 x i64> %i.bf, ptr %i.bh, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.split17.us, label %do_sqrshl_d.exit.us19.preheader58

do_sqrshl_d.exit.us19.preheader58:                ; preds = %do_sqrshl_d.exit.us19.preheader, %middle.block
  %.015.us18.ph = phi i64 [ 0, %do_sqrshl_d.exit.us19.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter68 = and i64 %i.k, 3                   ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %do_sqrshl_d.exit.us19.prol.loopexit, label %do_sqrshl_d.exit.us19.prol

do_sqrshl_d.exit.us19.prol:                       ; preds = %do_sqrshl_d.exit.us19.preheader58, %do_sqrshl_d.exit.us19.prol
  %.015.us18.prol = phi i64 [ %i.bn, %do_sqrshl_d.exit.us19.prol ], [ %.015.us18.ph, %do_sqrshl_d.exit.us19.preheader58 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %do_sqrshl_d.exit.us19.prol ], [ 0, %do_sqrshl_d.exit.us19.preheader58 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us18.prol
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = ashr i64 %i.bk, %i.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us18.prol
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = add nuw nsw i64 %.015.us18.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter68
  br i1 %prol.iter.cmp.not, label %do_sqrshl_d.exit.us19.prol.loopexit, label %do_sqrshl_d.exit.us19.prol, !llvm.loop !191

do_sqrshl_d.exit.us19.prol.loopexit:              ; preds = %do_sqrshl_d.exit.us19.prol, %do_sqrshl_d.exit.us19.preheader58
  %.015.us18.unr = phi i64 [ %.015.us18.ph, %do_sqrshl_d.exit.us19.preheader58 ], [ %i.bn, %do_sqrshl_d.exit.us19.prol ]
  %i.bo = sub nsw i64 %.015.us18.ph, %i.k
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.split17.us, label %do_sqrshl_d.exit.us19

do_sqrshl_d.exit.us19:                            ; preds = %do_sqrshl_d.exit.us19.prol.loopexit, %do_sqrshl_d.exit.us19
  %.015.us18 = phi i64 [ %i.cj, %do_sqrshl_d.exit.us19 ], [ %.015.us18.unr, %do_sqrshl_d.exit.us19.prol.loopexit ] ; 6 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us18
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = ashr i64 %i.br, %i.q
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us18
  store i64 %i.bs, ptr %i.bt, align 8
  %i.bu = add nuw nsw i64 %.015.us18, 1           ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = ashr i64 %i.bw, %i.q
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bu
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = add nuw nsw i64 %.015.us18, 2           ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = ashr i64 %i.cb, %i.q
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz
  store i64 %i.cc, ptr %i.cd, align 8
  %i.ce = add nuw nsw i64 %.015.us18, 3           ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = ashr i64 %i.cg, %i.q
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ce
  store i64 %i.ch, ptr %i.ci, align 8
  %i.cj = add nuw nsw i64 %.015.us18, 4           ; 2 uses
  %exitcond28.not.3 = icmp eq i64 %i.cj, %i.k
  br i1 %exitcond28.not.3, label %.split17.us, label %do_sqrshl_d.exit.us19, !llvm.loop !192

.split.split:                                     ; preds = %.split
  br i1 %i.p, label %.split.split.split.us.preheader, label %.split.split.split.preheader

.split.split.split.preheader:                     ; preds = %.split.split
  %i.ck = icmp eq i32 %.v.v.i, 0
  br i1 %i.ck, label %.split.split.split.epil.preheader, label %.split.split.split.preheader.new

.split.split.split.preheader.new:                 ; preds = %.split.split.split.preheader
  %unroll_iter = and i64 %i.k, 268435454
  br label %.split.split.split

.split.split.split.us.preheader:                  ; preds = %.split.split
  %i.cl = icmp eq i32 %.v.v.i, 0
  br i1 %i.cl, label %.split.split.split.us.epil.preheader, label %.split.split.split.us.preheader.new

.split.split.split.us.preheader.new:              ; preds = %.split.split.split.us.preheader
  %unroll_iter66 = and i64 %i.k, 268435454
  br label %.split.split.split.us

.split.split.split.us:                            ; preds = %do_sqrshl_d.exit.us22.1, %.split.split.split.us.preheader.new
  %.015.us21 = phi i64 [ 0, %.split.split.split.us.preheader.new ], [ %i.dd, %do_sqrshl_d.exit.us22.1 ] ; 4 uses
  %niter67 = phi i64 [ 0, %.split.split.split.us.preheader.new ], [ %niter67.next.1, %do_sqrshl_d.exit.us22.1 ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us21
  %i.cn = load i64, ptr %i.cm, align 8            ; 3 uses
  %i.co = shl i64 %i.cn, %i.m                     ; 2 uses
  %i.cp = ashr exact i64 %i.co, %i.m
  %i.cq = icmp eq i64 %i.cp, %i.cn
  br i1 %i.cq, label %do_sqrshl_d.exit.us22, label %bb.b

bb.b:                                             ; preds = %.split.split.split.us
  store i32 1, ptr %i.n, align 4
  %i.cr = icmp slt i64 %i.cn, 0
  %i.cs = select i1 %i.cr, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit.us22

do_sqrshl_d.exit.us22:                            ; preds = %bb.b, %.split.split.split.us
  %.1.i.us23 = phi i64 [ %i.cs, %bb.b ], [ %i.co, %.split.split.split.us ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us21
  store i64 %.1.i.us23, ptr %i.ct, align 8
  %i.cu = or disjoint i64 %.015.us21, 1           ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  %i.cx = shl i64 %i.cw, %i.m                     ; 2 uses
  %i.cy = ashr exact i64 %i.cx, %i.m
  %i.cz = icmp eq i64 %i.cy, %i.cw
  br i1 %i.cz, label %do_sqrshl_d.exit.us22.1, label %bb.c

bb.c:                                             ; preds = %do_sqrshl_d.exit.us22
  store i32 1, ptr %i.n, align 4
  %i.da = icmp slt i64 %i.cw, 0
  %i.db = select i1 %i.da, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit.us22.1

do_sqrshl_d.exit.us22.1:                          ; preds = %bb.c, %do_sqrshl_d.exit.us22
  %.1.i.us23.1 = phi i64 [ %i.db, %bb.c ], [ %i.cx, %do_sqrshl_d.exit.us22 ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu
  store i64 %.1.i.us23.1, ptr %i.dc, align 8
  %i.dd = add nuw nsw i64 %.015.us21, 2           ; 2 uses
  %niter67.next.1 = add i64 %niter67, 2           ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %.split17.us.loopexit60.unr-lcssa, label %.split.split.split.us, !llvm.loop !193

.split.split.split:                               ; preds = %do_sqrshl_d.exit.1, %.split.split.split.preheader.new
  %.015 = phi i64 [ 0, %.split.split.split.preheader.new ], [ %i.dr, %do_sqrshl_d.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.split.split.preheader.new ], [ %niter.next.1, %do_sqrshl_d.exit.1 ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015
  %i.df = load i64, ptr %i.de, align 8            ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %do_sqrshl_d.exit, label %bb.d

bb.d:                                             ; preds = %.split.split.split
  store i32 1, ptr %i.n, align 4
  %i.dh = icmp slt i64 %i.df, 0
  %i.di = select i1 %i.dh, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %.split.split.split, %bb.d
  %.1.i = phi i64 [ %i.di, %bb.d ], [ 0, %.split.split.split ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  store i64 %.1.i, ptr %i.dj, align 8
  %i.dk = or disjoint i64 %.015, 1                ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8            ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %do_sqrshl_d.exit.1, label %bb.e

bb.e:                                             ; preds = %do_sqrshl_d.exit
  store i32 1, ptr %i.n, align 4
  %i.do = icmp slt i64 %i.dm, 0
  %i.dp = select i1 %i.do, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit.1

do_sqrshl_d.exit.1:                               ; preds = %bb.e, %do_sqrshl_d.exit
  %.1.i.1 = phi i64 [ %i.dp, %bb.e ], [ 0, %do_sqrshl_d.exit ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dk
  store i64 %.1.i.1, ptr %i.dq, align 8
  %i.dr = add nuw nsw i64 %.015, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split17.us.loopexit61.unr-lcssa, label %.split.split.split, !llvm.loop !193

.split17.us.loopexit60.unr-lcssa:                 ; preds = %do_sqrshl_d.exit.us22.1
  %i.ds = and i64 %i.i, 8
  %lcmp.mod64.not = icmp eq i64 %i.ds, 0
  br i1 %lcmp.mod64.not, label %.split17.us, label %.split.split.split.us.epil.preheader

.split.split.split.us.epil.preheader:             ; preds = %.split17.us.loopexit60.unr-lcssa, %.split.split.split.us.preheader
  %.015.us21.epil.init = phi i64 [ 0, %.split.split.split.us.preheader ], [ %i.dd, %.split17.us.loopexit60.unr-lcssa ] ; 2 uses
  %lcmp.mod65 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.us21.epil.init
  %i.du = load i64, ptr %i.dt, align 8            ; 3 uses
  %i.dv = shl i64 %i.du, %i.m                     ; 2 uses
  %i.dw = ashr exact i64 %i.dv, %i.m
  %i.dx = icmp eq i64 %i.dw, %i.du
  br i1 %i.dx, label %do_sqrshl_d.exit.us22.epil, label %bb.f

bb.f:                                             ; preds = %.split.split.split.us.epil.preheader
  store i32 1, ptr %i.n, align 4
  %i.dy = icmp slt i64 %i.du, 0
  %i.dz = select i1 %i.dy, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit.us22.epil

do_sqrshl_d.exit.us22.epil:                       ; preds = %bb.f, %.split.split.split.us.epil.preheader
  %.1.i.us23.epil = phi i64 [ %i.dz, %bb.f ], [ %i.dv, %.split.split.split.us.epil.preheader ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us21.epil.init
  store i64 %.1.i.us23.epil, ptr %i.ea, align 8
  br label %.split17.us

.split17.us.loopexit61.unr-lcssa:                 ; preds = %do_sqrshl_d.exit.1
  %i.eb = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.eb, 0
  br i1 %lcmp.mod.not, label %.split17.us, label %.split.split.split.epil.preheader

.split.split.split.epil.preheader:                ; preds = %.split17.us.loopexit61.unr-lcssa, %.split.split.split.preheader
  %.015.epil.init = phi i64 [ 0, %.split.split.split.preheader ], [ %i.dr, %.split17.us.loopexit61.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.015.epil.init
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %do_sqrshl_d.exit.epil, label %bb.g

bb.g:                                             ; preds = %.split.split.split.epil.preheader
  store i32 1, ptr %i.n, align 4
  %i.ef = icmp slt i64 %i.ed, 0
  %i.eg = select i1 %i.ef, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit.epil

do_sqrshl_d.exit.epil:                            ; preds = %bb.g, %.split.split.split.epil.preheader
  %.1.i.epil = phi i64 [ %i.eg, %bb.g ], [ 0, %.split.split.split.epil.preheader ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.epil.init
  store i64 %.1.i.epil, ptr %i.eh, align 8
  br label %.split17.us

.split17.us:                                      ; preds = %do_sqrshl_d.exit.epil, %.split17.us.loopexit61.unr-lcssa, %do_sqrshl_d.exit.us22.epil, %.split17.us.loopexit60.unr-lcssa, %do_sqrshl_d.exit.us19.prol.loopexit, %do_sqrshl_d.exit.us19, %do_sqrshl_d.exit.us.prol.loopexit, %do_sqrshl_d.exit.us, %middle.block, %middle.block53
  %i.ei = icmp samesign ult i32 %.v.v.i, %i.g
  br i1 %i.ei, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.ej = add nuw nsw i32 %i.g, 8
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %0, i64 %i.i
  %i.em = xor i64 %i.i, -1
  %i.en = add nsw i64 %i.em, %i.ek
  %i.eo = and i64 %i.en, -8
  %i.ep = add nsw i64 %i.eo, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.el, i8 0, i64 %i.ep, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshl_s32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %2, 24
  %i.a = ashr exact i32 %sext, 24                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %.not.i = icmp sgt i32 %i.a, -32
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i32 %1, 31
  br label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.a, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = sub nsw i32 0, %i.a
  %i.f = ashr i32 %1, %i.e
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i32 %i.a, 32
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = shl i32 %1, %i.a                         ; 2 uses
  %i.i = ashr exact i32 %i.h, %i.a
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.k = icmp eq i32 %1, 0
  br i1 %i.k, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.b, align 4
  %i.l = icmp sgt i32 %1, -1
  %i.m = select i1 %i.l, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.g ], [ %i.h, %bb.f ], [ %i.f, %bb.d ], [ %i.m, %bb.h ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_qshl_s64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i64 %2, 56
  %i.a = ashr exact i64 %sext, 56                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.c = icmp slt i64 %i.a, -63
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %1, 63
  br label %do_sqrshl_d.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.a, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = sub nsw i64 0, %i.a
  %i.g = ashr i64 %1, %i.f
  br label %do_sqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.a, 64
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = shl i64 %1, %i.a                         ; 2 uses
  %i.j = ashr exact i64 %i.i, %i.a
  %i.k = icmp eq i64 %i.j, %1
  br i1 %i.k, label %do_sqrshl_d.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %do_sqrshl_d.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.b, align 4
  %i.m = icmp slt i64 %1, 0
  %i.n = select i1 %i.m, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.g ], [ %i.i, %bb.f ], [ %i.g, %bb.d ], [ %i.n, %bb.h ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshlu_s8(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %1, 24                          ; 2 uses
  %i.a = ashr exact i32 %sext, 24                 ; 3 uses
  %sext17 = shl i32 %2, 24
  %i.b = ashr exact i32 %sext17, 24               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 8 uses
  %i.d = icmp slt i32 %i.a, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i32 %i.b, -8
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_bhs.exit

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i32 0, %i.b
  %i.g = lshr i32 %i.a, %i.f
  br label %do_suqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i32 %i.b, 8
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = shl nuw nsw i32 %i.a, %i.b               ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 255
  br i1 %i.j, label %bb.i, label %do_suqrshl_bhs.exit

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %sext, 0
  br i1 %.not, label %do_suqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.i, %bb.g ], [ %i.g, %bb.e ], [ 255, %bb.i ], [ 0, %bb.h ]
  %i.k = shl i32 %1, 16
  %i.l = ashr i32 %i.k, 24                        ; 4 uses
  %i.m = shl i32 %2, 16
  %i.n = ashr i32 %i.m, 24                        ; 5 uses
  %i.o = icmp slt i32 %i.l, 0
  br i1 %i.o, label %bb.j, label %bb.k

bb.j:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit26

bb.k:                                             ; preds = %do_suqrshl_bhs.exit
  %.not.i.i24 = icmp sgt i32 %i.n, -8
  br i1 %.not.i.i24, label %bb.l, label %do_suqrshl_bhs.exit26

bb.l:                                             ; preds = %bb.k
  %i.p = icmp slt i32 %i.n, 0
  br i1 %i.p, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.q = sub nsw i32 0, %i.n
  %i.r = lshr i32 %i.l, %i.q
  br label %do_suqrshl_bhs.exit26

bb.n:                                             ; preds = %bb.l
  %i.s = icmp samesign ult i32 %i.n, 8
  br i1 %i.s, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.t = shl nuw nsw i32 %i.l, %i.n               ; 2 uses
  %i.u = icmp samesign ugt i32 %i.t, 255
  br i1 %i.u, label %bb.q, label %do_suqrshl_bhs.exit26

bb.p:                                             ; preds = %bb.n
  %.not33 = icmp eq i32 %i.l, 0
  br i1 %.not33, label %do_suqrshl_bhs.exit26, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit26

do_suqrshl_bhs.exit26:                            ; preds = %bb.j, %bb.k, %bb.m, %bb.o, %bb.p, %bb.q
  %.0.i25 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.t, %bb.o ], [ %i.r, %bb.m ], [ 255, %bb.q ], [ 0, %bb.p ]
  %i.v = shl i32 %1, 8
  %i.w = ashr i32 %i.v, 24                        ; 4 uses
  %i.x = shl i32 %2, 8
  %i.y = ashr i32 %i.x, 24                        ; 5 uses
  %i.z = icmp slt i32 %i.w, 0
  br i1 %i.z, label %bb.r, label %bb.s

bb.r:                                             ; preds = %do_suqrshl_bhs.exit26
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit29
end_hunk_3
begin_hunk_4_@helper_neon_sqshlui_b:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store <4 x i8> %i.bs, ptr %i.bu, align 1, !alias.scope !229, !noalias !226
  store <4 x i8> %i.bt, ptr %i.bv, align 1, !alias.scope !229, !noalias !226
  %index.next123 = add nuw i64 %index104, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next123, %i.g
  br i1 %i.bw, label %.split18.us, label %vector.body103, !llvm.loop !209

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check142 = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check142, label %.split.us.split.split.us.preheader236, label %vector.memcheck143

.split.us.split.split.us.preheader236:            ; preds = %vector.memcheck143, %.split.us.split.split.us.preheader
  br label %.split.us.split.split.us

vector.memcheck143:                               ; preds = %.split.us.split.split.us.preheader
  %i.bx = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.by = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0144 = icmp ult ptr %i.j, %i.by
  %bound1145 = icmp ult ptr %0, %i.bx
  %found.conflict146 = and i1 %bound0144, %bound1145
  %bound0147 = icmp ult ptr %i.j, %i.bz
  %bound1148 = icmp ult ptr %1, %i.bx
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %found.conflict146, %found.conflict149
  %bound0151 = icmp ult ptr %0, %i.bz
  %bound1152 = icmp ult ptr %1, %i.by
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  br i1 %conflict.rdx154, label %.split.us.split.split.us.preheader236, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck143
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body157

vector.body157:                                   ; preds = %bb.m, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next169, %bb.m ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %index158
  %wide.load159 = load <4 x i8>, ptr %i.ca, align 1, !alias.scope !230 ; 2 uses
  %i.cb = icmp slt <4 x i8> %wide.load159, zeroinitializer ; 2 uses
  %i.cc = xor <4 x i1> %i.cb, splat (i1 true)
  %i.cd = zext nneg <4 x i8> %wide.load159 to <4 x i32>
  %i.ce = shl nuw nsw <4 x i32> %i.cd, %broadcast.splat ; 2 uses
  %i.cf = icmp samesign ugt <4 x i32> %i.ce, splat (i32 255) ; 2 uses
  %i.cg = select <4 x i1> %i.cc, <4 x i1> %i.cf, <4 x i1> zeroinitializer
  %i.ch = select <4 x i1> %i.cb, <4 x i1> splat (i1 true), <4 x i1> %i.cf ; 2 uses
  %predphi = select <4 x i1> %i.cg, <4 x i32> splat (i32 255), <4 x i32> zeroinitializer
  %i.ci = bitcast <4 x i1> %i.ch to i4
  %.not232 = icmp eq i4 %i.ci, 0
  br i1 %.not232, label %bb.m, label %bb.l

bb.l:                                             ; preds = %vector.body157
  store i32 1, ptr %i.j, align 4, !alias.scope !231, !noalias !232
  br label %bb.m

bb.m:                                             ; preds = %vector.body157, %bb.l
  %predphi168 = select <4 x i1> %i.ch, <4 x i32> %predphi, <4 x i32> %i.ce
  %i.cj = trunc nuw <4 x i32> %predphi168 to <4 x i8>
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %index158
  store <4 x i8> %i.cj, ptr %i.ck, align 1, !alias.scope !233, !noalias !230
  %index.next169 = add nuw i64 %index158, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next169, %i.g
  br i1 %i.cl, label %.split18.us, label %vector.body157, !llvm.loop !214

.split.us.split.split.us:                         ; preds = %do_suqrshl_bhs.exit.us.us20.1, %.split.us.split.split.us.preheader236
  %.016.us.us19 = phi i64 [ 0, %.split.us.split.split.us.preheader236 ], [ %i.dd, %do_suqrshl_bhs.exit.us.us20.1 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us.us19
  %i.cn = load i8, ptr %i.cm, align 1             ; 2 uses
  %i.co = icmp slt i8 %i.cn, 0
  br i1 %i.co, label %do_suqrshl_bhs.exit.us.us20.sink.split, label %bb.n

bb.n:                                             ; preds = %.split.us.split.split.us
  %i.cp = zext nneg i8 %i.cn to i32
  %i.cq = shl nuw nsw i32 %i.cp, %i.i             ; 2 uses
  %i.cr = icmp samesign ugt i32 %i.cq, 255
  br i1 %i.cr, label %do_suqrshl_bhs.exit.us.us20.sink.split, label %do_suqrshl_bhs.exit.us.us20

do_suqrshl_bhs.exit.us.us20.sink.split:           ; preds = %.split.us.split.split.us, %bb.n
  %.0.i.us.us21.ph = phi i32 [ 255, %bb.n ], [ 0, %.split.us.split.split.us ]
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us.us20

do_suqrshl_bhs.exit.us.us20:                      ; preds = %do_suqrshl_bhs.exit.us.us20.sink.split, %bb.n
  %.0.i.us.us21 = phi i32 [ %i.cq, %bb.n ], [ %.0.i.us.us21.ph, %do_suqrshl_bhs.exit.us.us20.sink.split ]
  %i.cs = trunc nuw i32 %.0.i.us.us21 to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us.us19
  store i8 %i.cs, ptr %i.ct, align 1
  %i.cu = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  %i.cx = icmp slt i8 %i.cw, 0
  br i1 %i.cx, label %do_suqrshl_bhs.exit.us.us20.sink.split.1, label %bb.o

bb.o:                                             ; preds = %do_suqrshl_bhs.exit.us.us20
  %i.cy = zext nneg i8 %i.cw to i32
  %i.cz = shl nuw nsw i32 %i.cy, %i.i             ; 2 uses
  %i.da = icmp samesign ugt i32 %i.cz, 255
  br i1 %i.da, label %do_suqrshl_bhs.exit.us.us20.sink.split.1, label %do_suqrshl_bhs.exit.us.us20.1

do_suqrshl_bhs.exit.us.us20.sink.split.1:         ; preds = %bb.o, %do_suqrshl_bhs.exit.us.us20
  %.0.i.us.us21.ph.1 = phi i32 [ 255, %bb.o ], [ 0, %do_suqrshl_bhs.exit.us.us20 ]
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us.us20.1

do_suqrshl_bhs.exit.us.us20.1:                    ; preds = %do_suqrshl_bhs.exit.us.us20.sink.split.1, %bb.o
  %.0.i.us.us21.1 = phi i32 [ %i.cz, %bb.o ], [ %.0.i.us.us21.ph.1, %do_suqrshl_bhs.exit.us.us20.sink.split.1 ]
  %i.db = trunc nuw i32 %.0.i.us.us21.1 to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cu
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %i.dd, %i.g
  br i1 %exitcond26.not.1, label %.split18.us, label %.split.us.split.split.us, !llvm.loop !215

.split.us.split.split:                            ; preds = %do_suqrshl_bhs.exit.us.1, %.split.us.split.split.preheader239
  %.016.us = phi i64 [ 0, %.split.us.split.split.preheader239 ], [ %i.dn, %do_suqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %.016.us
  %i.df = load i8, ptr %i.de, align 1             ; 2 uses
  %i.dg = icmp slt i8 %i.df, 0
  br i1 %i.dg, label %do_suqrshl_bhs.exit.us.sink.split, label %bb.p

bb.p:                                             ; preds = %.split.us.split.split
  %.not.us = icmp eq i8 %i.df, 0
  br i1 %.not.us, label %do_suqrshl_bhs.exit.us, label %do_suqrshl_bhs.exit.us.sink.split

do_suqrshl_bhs.exit.us.sink.split:                ; preds = %.split.us.split.split, %bb.p
  %.0.i.us.ph = phi i8 [ -1, %bb.p ], [ 0, %.split.us.split.split ]
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us

do_suqrshl_bhs.exit.us:                           ; preds = %do_suqrshl_bhs.exit.us.sink.split, %bb.p
  %.0.i.us = phi i8 [ 0, %bb.p ], [ %.0.i.us.ph, %do_suqrshl_bhs.exit.us.sink.split ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %.016.us
  store i8 %.0.i.us, ptr %i.dh, align 1
  %i.di = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1             ; 2 uses
  %i.dl = icmp slt i8 %i.dk, 0
  br i1 %i.dl, label %do_suqrshl_bhs.exit.us.sink.split.1, label %bb.q

bb.q:                                             ; preds = %do_suqrshl_bhs.exit.us
  %.not.us.1 = icmp eq i8 %i.dk, 0
  br i1 %.not.us.1, label %do_suqrshl_bhs.exit.us.1, label %do_suqrshl_bhs.exit.us.sink.split.1

do_suqrshl_bhs.exit.us.sink.split.1:              ; preds = %bb.q, %do_suqrshl_bhs.exit.us
  %.0.i.us.ph.1 = phi i8 [ -1, %bb.q ], [ 0, %do_suqrshl_bhs.exit.us ]
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.us.1

do_suqrshl_bhs.exit.us.1:                         ; preds = %do_suqrshl_bhs.exit.us.sink.split.1, %bb.q
  %.0.i.us.1 = phi i8 [ 0, %bb.q ], [ %.0.i.us.ph.1, %do_suqrshl_bhs.exit.us.sink.split.1 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 %i.di
  store i8 %.0.i.us.1, ptr %i.dm, align 1
  %i.dn = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.dn, %i.g
  br i1 %exitcond25.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !216

.split:                                           ; preds = %do_suqrshl_bhs.exit.1, %.split.preheader242
  %.016 = phi i64 [ 0, %.split.preheader242 ], [ %i.dx, %do_suqrshl_bhs.exit.1 ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %.016
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = icmp slt i8 %i.dp, 0
  br i1 %i.dq, label %bb.r, label %do_suqrshl_bhs.exit

bb.r:                                             ; preds = %.split
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %.split, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.016
  store i8 0, ptr %i.dr, align 1
  %i.ds = or disjoint i64 %.016, 1                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = icmp slt i8 %i.du, 0
  br i1 %i.dv, label %bb.s, label %do_suqrshl_bhs.exit.1

bb.s:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.j, align 4
  br label %do_suqrshl_bhs.exit.1

do_suqrshl_bhs.exit.1:                            ; preds = %bb.s, %do_suqrshl_bhs.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.ds
  store i8 0, ptr %i.dw, align 1
  %i.dx = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dx, %i.g
  br i1 %exitcond.not.1, label %.split18.us, label %.split, !llvm.loop !217

.split18.us:                                      ; preds = %bb.c, %do_suqrshl_bhs.exit.1, %bb.k, %do_suqrshl_bhs.exit.us.1, %bb.m, %do_suqrshl_bhs.exit.us.us20.1, %bb.e, %do_suqrshl_bhs.exit.us.us.1
  %i.dy = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dy, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.dz = add nuw nsw i32 %i.e, 8
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr i8, ptr %0, i64 %i.g
  %i.ec = xor i64 %i.g, -1
  %i.ed = add nsw i64 %i.ec, %i.ea
  %i.ee = and i64 %i.ed, -8
  %i.ef = add nsw i64 %i.ee, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.eb, i8 0, i64 %i.ef, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshlu_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %1, 16                          ; 2 uses
  %i.a = ashr exact i32 %sext, 16                 ; 3 uses
  %sext11 = shl i32 %2, 24
  %i.b = ashr exact i32 %sext11, 24               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 4 uses
  %i.d = icmp slt i32 %i.a, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i32 %i.b, -16
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_bhs.exit

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = sub nsw i32 0, %i.b
  %i.g = lshr i32 %i.a, %i.f
  br label %do_suqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i32 %i.b, 16
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = shl nuw nsw i32 %i.a, %i.b               ; 2 uses
  %i.j = icmp samesign ugt i32 %i.i, 65535
  br i1 %i.j, label %bb.i, label %do_suqrshl_bhs.exit

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %sext, 0
  br i1 %.not, label %do_suqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.i, %bb.g ], [ %i.g, %bb.e ], [ 65535, %bb.i ], [ 0, %bb.h ]
  %i.k = ashr i32 %1, 16                          ; 4 uses
  %i.l = shl i32 %2, 8
  %i.m = ashr i32 %i.l, 24                        ; 5 uses
  %i.n = icmp slt i32 %i.k, 0
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit16

bb.k:                                             ; preds = %do_suqrshl_bhs.exit
  %.not.i.i14 = icmp sgt i32 %i.m, -16
  br i1 %.not.i.i14, label %bb.l, label %do_suqrshl_bhs.exit16

bb.l:                                             ; preds = %bb.k
  %i.o = icmp slt i32 %i.m, 0
  br i1 %i.o, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.p = sub nsw i32 0, %i.m
  %i.q = lshr i32 %i.k, %i.p
  br label %do_suqrshl_bhs.exit16

bb.n:                                             ; preds = %bb.l
  %i.r = icmp samesign ult i32 %i.m, 16
  br i1 %i.r, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.s = shl nuw nsw i32 %i.k, %i.m               ; 2 uses
  %i.t = icmp samesign ugt i32 %i.s, 65535
  br i1 %i.t, label %bb.q, label %do_suqrshl_bhs.exit16

bb.p:                                             ; preds = %bb.n
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %do_suqrshl_bhs.exit16, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 1, ptr %i.c, align 4
  br label %do_suqrshl_bhs.exit16

do_suqrshl_bhs.exit16:                            ; preds = %bb.j, %bb.k, %bb.m, %bb.o, %bb.p, %bb.q
  %.0.i15 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.s, %bb.o ], [ %i.q, %bb.m ], [ 65535, %bb.q ], [ 0, %bb.p ]
  %.sroa.5.0.insert.ext = shl nuw i32 %.0.i15, 16
  %.sroa.03.0.insert.insert = add nuw nsw i32 %.sroa.5.0.insert.ext, %.0.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshlui_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 11 uses
  %i.h = lshr exact i64 %i.g, 1                   ; 11 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 7 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 20 uses
  %.not.i.i = icmp sgt i32 %i.j, -16
  %i.l = icmp samesign ult i32 %i.j, 16
  %i.m = sub nsw i32 0, %i.j                      ; 3 uses
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check, label %.split.preheader239.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.preheader
  %i.n = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.g       ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.o
  %bound1 = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound050 = icmp ult ptr %i.k, %i.p
  %bound151 = icmp ult ptr %1, %i.n
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx = or i1 %found.conflict, %found.conflict52
  %bound053 = icmp ult ptr %0, %i.p
  %bound154 = icmp ult ptr %1, %i.o
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx, %found.conflict55
  br i1 %conflict.rdx56, label %.split.preheader239.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %wide.load = load <4 x i16>, ptr %i.q, align 2, !alias.scope !258
  %wide.load57 = load <4 x i16>, ptr %i.r, align 2, !alias.scope !258
  %i.s = icmp slt <4 x i16> %wide.load, zeroinitializer
  %i.t = icmp slt <4 x i16> %wide.load57, zeroinitializer
  %i.u = shufflevector <4 x i1> %i.t, <4 x i1> %i.s, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.v = bitcast <8 x i1> %i.u to i8
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.k, align 4, !alias.scope !259, !noalias !260
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <4 x i16> zeroinitializer, ptr %i.w, align 2, !alias.scope !261, !noalias !258
  store <4 x i16> zeroinitializer, ptr %i.x, align 2, !alias.scope !261, !noalias !258
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !238

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split17.us, label %.split.preheader239.new

.split.preheader239.new:                          ; preds = %vector.memcheck, %.split.preheader, %middle.block
  %.015.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split

.split.us:                                        ; preds = %bb.a
  %i.z = icmp slt i32 %i.j, 0
  br i1 %i.z, label %.split.us.split.us.preheader, label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %min.iters.check187 = icmp samesign ult i32 %.v.v.i, 40
  br i1 %min.iters.check187, label %.split.us.split.us.preheader233.new, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.split.us.split.us.preheader
  %i.aa = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0189 = icmp ult ptr %i.k, %i.ab
  %bound1190 = icmp ult ptr %0, %i.aa
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0192 = icmp ult ptr %i.k, %i.ac
  %bound1193 = icmp ult ptr %1, %i.aa
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %found.conflict191, %found.conflict194
  %bound0196 = icmp ult ptr %0, %i.ac
end_hunk_4
begin_hunk_5_@helper_neon_sqshlui_h:bb.a

.split.us.split.split.preheader237.new:           ; preds = %vector.memcheck88, %.split.us.split.split.preheader, %middle.block123
  %.015.us.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec101, %middle.block123 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check141 = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check141, label %.split.us.split.split.us.preheader234.new, label %vector.memcheck142

.split.us.split.split.us.preheader234.new:        ; preds = %.split.us.split.split.us.preheader, %vector.memcheck142
  br label %.split.us.split.split.us

vector.memcheck142:                               ; preds = %.split.us.split.split.us.preheader
  %i.by = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bz = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0143 = icmp ult ptr %i.k, %i.bz
  %bound1144 = icmp ult ptr %0, %i.by
  %found.conflict145 = and i1 %bound0143, %bound1144
  %bound0146 = icmp ult ptr %i.k, %i.ca
  %bound1147 = icmp ult ptr %1, %i.by
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %found.conflict145, %found.conflict148
  %bound0150 = icmp ult ptr %0, %i.ca
  %bound1151 = icmp ult ptr %1, %i.bz
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx153 = or i1 %conflict.rdx149, %found.conflict152
  br i1 %conflict.rdx153, label %.split.us.split.split.us.preheader234.new, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck142
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body156

vector.body156:                                   ; preds = %bb.m, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next168, %bb.m ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index157
  %wide.load158 = load <4 x i16>, ptr %i.cb, align 2, !alias.scope !270 ; 2 uses
  %i.cc = icmp slt <4 x i16> %wide.load158, zeroinitializer ; 2 uses
  %i.cd = xor <4 x i1> %i.cc, splat (i1 true)
  %i.ce = zext nneg <4 x i16> %wide.load158 to <4 x i32>
  %i.cf = shl nuw nsw <4 x i32> %i.ce, %broadcast.splat ; 2 uses
  %i.cg = icmp samesign ugt <4 x i32> %i.cf, splat (i32 65535) ; 2 uses
  %i.ch = select <4 x i1> %i.cd, <4 x i1> %i.cg, <4 x i1> zeroinitializer
  %i.ci = select <4 x i1> %i.cc, <4 x i1> splat (i1 true), <4 x i1> %i.cg ; 2 uses
  %predphi = select <4 x i1> %i.ch, <4 x i32> splat (i32 65535), <4 x i32> zeroinitializer
  %i.cj = bitcast <4 x i1> %i.ci to i4
  %.not231 = icmp eq i4 %i.cj, 0
  br i1 %.not231, label %bb.m, label %bb.l

bb.l:                                             ; preds = %vector.body156
  store i32 1, ptr %i.k, align 4, !alias.scope !271, !noalias !272
  br label %bb.m

bb.m:                                             ; preds = %vector.body156, %bb.l
  %predphi167 = select <4 x i1> %i.ci, <4 x i32> %predphi, <4 x i32> %i.cf
  %i.ck = trunc nuw <4 x i32> %predphi167 to <4 x i16>
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index157
  store <4 x i16> %i.ck, ptr %i.cl, align 2, !alias.scope !273, !noalias !270
  %index.next168 = add nuw i64 %index157, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next168, %i.h
  br i1 %i.cm, label %.split17.us, label %vector.body156, !llvm.loop !254

.split.us.split.split.us:                         ; preds = %do_suqrshl_bhs.exit.us.us19.1, %.split.us.split.split.us.preheader234.new
  %.015.us.us18 = phi i64 [ 0, %.split.us.split.split.us.preheader234.new ], [ %i.de, %do_suqrshl_bhs.exit.us.us19.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.us.split.split.us.preheader234.new ], [ %niter.next.1, %do_suqrshl_bhs.exit.us.us19.1 ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us.us18
  %i.co = load i16, ptr %i.cn, align 2            ; 2 uses
  %i.cp = icmp slt i16 %i.co, 0
  br i1 %i.cp, label %do_suqrshl_bhs.exit.us.us19.sink.split, label %bb.n

bb.n:                                             ; preds = %.split.us.split.split.us
  %i.cq = zext nneg i16 %i.co to i32
  %i.cr = shl nuw nsw i32 %i.cq, %i.j             ; 2 uses
  %i.cs = icmp samesign ugt i32 %i.cr, 65535
  br i1 %i.cs, label %do_suqrshl_bhs.exit.us.us19.sink.split, label %do_suqrshl_bhs.exit.us.us19

do_suqrshl_bhs.exit.us.us19.sink.split:           ; preds = %.split.us.split.split.us, %bb.n
  %.0.i.us.us20.ph = phi i32 [ 65535, %bb.n ], [ 0, %.split.us.split.split.us ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us19

do_suqrshl_bhs.exit.us.us19:                      ; preds = %do_suqrshl_bhs.exit.us.us19.sink.split, %bb.n
  %.0.i.us.us20 = phi i32 [ %i.cr, %bb.n ], [ %.0.i.us.us20.ph, %do_suqrshl_bhs.exit.us.us19.sink.split ]
  %i.ct = trunc nuw i32 %.0.i.us.us20 to i16
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us.us18
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = or disjoint i64 %.015.us.us18, 1        ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2            ; 2 uses
  %i.cy = icmp slt i16 %i.cx, 0
  br i1 %i.cy, label %do_suqrshl_bhs.exit.us.us19.sink.split.1, label %bb.o

bb.o:                                             ; preds = %do_suqrshl_bhs.exit.us.us19
  %i.cz = zext nneg i16 %i.cx to i32
  %i.da = shl nuw nsw i32 %i.cz, %i.j             ; 2 uses
  %i.db = icmp samesign ugt i32 %i.da, 65535
  br i1 %i.db, label %do_suqrshl_bhs.exit.us.us19.sink.split.1, label %do_suqrshl_bhs.exit.us.us19.1

do_suqrshl_bhs.exit.us.us19.sink.split.1:         ; preds = %bb.o, %do_suqrshl_bhs.exit.us.us19
  %.0.i.us.us20.ph.1 = phi i32 [ 65535, %bb.o ], [ 0, %do_suqrshl_bhs.exit.us.us19 ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us19.1

do_suqrshl_bhs.exit.us.us19.1:                    ; preds = %do_suqrshl_bhs.exit.us.us19.sink.split.1, %bb.o
  %.0.i.us.us20.1 = phi i32 [ %i.da, %bb.o ], [ %.0.i.us.us20.ph.1, %do_suqrshl_bhs.exit.us.us19.sink.split.1 ]
  %i.dc = trunc nuw i32 %.0.i.us.us20.1 to i16
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cv
  store i16 %i.dc, ptr %i.dd, align 2
  %i.de = add nuw nsw i64 %.015.us.us18, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.h
  br i1 %niter.ncmp.1, label %.split17.us, label %.split.us.split.split.us, !llvm.loop !255

.split.us.split.split:                            ; preds = %do_suqrshl_bhs.exit.us.1, %.split.us.split.split.preheader237.new
  %.015.us = phi i64 [ %.015.us.ph, %.split.us.split.split.preheader237.new ], [ %i.do, %do_suqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015.us
  %i.dg = load i16, ptr %i.df, align 2            ; 2 uses
  %i.dh = icmp slt i16 %i.dg, 0
  br i1 %i.dh, label %do_suqrshl_bhs.exit.us.sink.split, label %bb.p

bb.p:                                             ; preds = %.split.us.split.split
  %.not.us = icmp eq i16 %i.dg, 0
  br i1 %.not.us, label %do_suqrshl_bhs.exit.us, label %do_suqrshl_bhs.exit.us.sink.split

do_suqrshl_bhs.exit.us.sink.split:                ; preds = %.split.us.split.split, %bb.p
  %.0.i.us.ph = phi i16 [ -1, %bb.p ], [ 0, %.split.us.split.split ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us

do_suqrshl_bhs.exit.us:                           ; preds = %do_suqrshl_bhs.exit.us.sink.split, %bb.p
  %.0.i.us = phi i16 [ 0, %bb.p ], [ %.0.i.us.ph, %do_suqrshl_bhs.exit.us.sink.split ]
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015.us
  store i16 %.0.i.us, ptr %i.di, align 2
  %i.dj = or disjoint i64 %.015.us, 1             ; 2 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2            ; 2 uses
  %i.dm = icmp slt i16 %i.dl, 0
  br i1 %i.dm, label %do_suqrshl_bhs.exit.us.sink.split.1, label %bb.q

bb.q:                                             ; preds = %do_suqrshl_bhs.exit.us
  %.not.us.1 = icmp eq i16 %i.dl, 0
  br i1 %.not.us.1, label %do_suqrshl_bhs.exit.us.1, label %do_suqrshl_bhs.exit.us.sink.split.1

do_suqrshl_bhs.exit.us.sink.split.1:              ; preds = %bb.q, %do_suqrshl_bhs.exit.us
  %.0.i.us.ph.1 = phi i16 [ -1, %bb.q ], [ 0, %do_suqrshl_bhs.exit.us ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.1

do_suqrshl_bhs.exit.us.1:                         ; preds = %do_suqrshl_bhs.exit.us.sink.split.1, %bb.q
  %.0.i.us.1 = phi i16 [ 0, %bb.q ], [ %.0.i.us.ph.1, %do_suqrshl_bhs.exit.us.sink.split.1 ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  store i16 %.0.i.us.1, ptr %i.dn, align 2
  %i.do = add nuw nsw i64 %.015.us, 2             ; 2 uses
  %exitcond24.not.1 = icmp eq i64 %i.do, %i.h
  br i1 %exitcond24.not.1, label %.split17.us, label %.split.us.split.split, !llvm.loop !256

.split:                                           ; preds = %do_suqrshl_bhs.exit.1, %.split.preheader239.new
  %.015 = phi i64 [ %.015.ph, %.split.preheader239.new ], [ %i.dy, %do_suqrshl_bhs.exit.1 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.015
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = icmp slt i16 %i.dq, 0
  br i1 %i.dr, label %bb.r, label %do_suqrshl_bhs.exit

bb.r:                                             ; preds = %.split
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %.split, %bb.r
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.015
  store i16 0, ptr %i.ds, align 2
  %i.dt = or disjoint i64 %.015, 1                ; 2 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2
  %i.dw = icmp slt i16 %i.dv, 0
  br i1 %i.dw, label %bb.s, label %do_suqrshl_bhs.exit.1

bb.s:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.1

do_suqrshl_bhs.exit.1:                            ; preds = %bb.s, %do_suqrshl_bhs.exit
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dt
  store i16 0, ptr %i.dx, align 2
  %i.dy = add nuw nsw i64 %.015, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dy, %i.h
  br i1 %exitcond.not.1, label %.split17.us, label %.split, !llvm.loop !257

.split17.us:                                      ; preds = %do_suqrshl_bhs.exit.1, %do_suqrshl_bhs.exit.us.1, %bb.m, %do_suqrshl_bhs.exit.us.us19.1, %do_suqrshl_bhs.exit.us.us.1, %middle.block, %middle.block123, %middle.block227
  %i.dz = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dz, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split17.us
  %i.ea = add nuw nsw i32 %i.e, 8
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %0, i64 %i.g
  %i.ed = xor i64 %i.g, -1
  %i.ee = add nsw i64 %i.ed, %i.eb
  %i.ef = and i64 %i.ee, -8
  %i.eg = add nsw i64 %i.ef, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ec, i8 0, i64 %i.eg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split17.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qshlu_s32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %2, 24
  %i.a = ashr exact i32 %sext, 24                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.b, align 4
  br label %do_suqrshl_bhs.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i32 %i.a, -32
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_bhs.exit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i32 %i.a, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = sub nsw i32 0, %i.a
  %i.f = lshr i32 %1, %i.e
  br label %do_suqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i32 %i.a, 32
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = shl i32 %1, %i.a                         ; 2 uses
  %i.i = lshr exact i32 %i.h, %i.a
  %.not2 = icmp eq i32 %i.i, %1
  br i1 %.not2, label %do_suqrshl_bhs.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %do_suqrshl_bhs.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.b, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.h, %bb.g ], [ %i.f, %bb.e ], [ -1, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_qshlu_s64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i64 %2, 56
  %i.a = ashr exact i64 %sext, 56                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.b, align 4
  br label %do_suqrshl_d.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp sgt i64 %i.a, -64
  br i1 %.not.i.i, label %bb.d, label %do_suqrshl_d.exit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = sub nsw i64 0, %i.a
  %i.f = lshr i64 %1, %i.e
  br label %do_suqrshl_d.exit

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i64 %i.a, 64
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = shl i64 %1, %i.a                         ; 2 uses
  %i.i = lshr exact i64 %i.h, %i.a
  %.not2 = icmp eq i64 %i.i, %1
  br i1 %.not2, label %do_suqrshl_d.exit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %do_suqrshl_d.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 1, ptr %i.b, align 4
  br label %do_suqrshl_d.exit

do_suqrshl_d.exit:                                ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.h ], [ %i.f, %bb.e ], [ -1, %bb.i ], [ %i.h, %bb.g ]
  ret i64 %.0.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshlui_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 11 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 12 uses
  %i.i = shl i32 %3, 14
  %i.j = ashr i32 %i.i, 24                        ; 9 uses
  %i.k = getelementptr i8, ptr %2, i64 12656      ; 20 uses
  %.not.i.i = icmp sgt i32 %i.j, -32
  %i.l = icmp samesign ult i32 %i.j, 32
  %i.m = sub nsw i32 0, %i.j                      ; 3 uses
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check, label %.split.preheader239.new, label %vector.memcheck

vector.memcheck:                                  ; preds = %.split.preheader
  %i.n = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.g       ; 2 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.g       ; 2 uses
  %bound0 = icmp ult ptr %i.k, %i.o
  %bound1 = icmp ult ptr %0, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %i.k, %i.p
  %bound152 = icmp ult ptr %1, %i.n
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  %bound054 = icmp ult ptr %0, %i.p
  %bound155 = icmp ult ptr %1, %i.o
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx, %found.conflict56
  br i1 %conflict.rdx57, label %.split.preheader239.new, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870904                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %bb.c, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %i.r = load <8 x i32>, ptr %i.q, align 4, !alias.scope !298
  %i.s = shufflevector <8 x i32> %i.r, <8 x i32> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.t = icmp slt <8 x i32> %i.s, zeroinitializer
  %i.u = bitcast <8 x i1> %i.t to i8
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vector.body
  store i32 1, ptr %i.k, align 4, !alias.scope !299, !noalias !300
  br label %bb.c

bb.c:                                             ; preds = %vector.body, %bb.b
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> zeroinitializer, ptr %i.v, align 4, !alias.scope !301, !noalias !298
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !alias.scope !301, !noalias !298
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %bb.c
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split18.us, label %.split.preheader239.new

.split.preheader239.new:                          ; preds = %vector.memcheck, %.split.preheader, %middle.block
  %.016.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.split.preheader ], [ %n.vec, %middle.block ]
  br label %.split

.split.us:                                        ; preds = %bb.a
  %i.y = icmp slt i32 %i.j, 0
  br i1 %i.y, label %.split.us.split.us.preheader, label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %min.iters.check188 = icmp samesign ult i32 %.v.v.i, 88
  br i1 %min.iters.check188, label %.split.us.split.us.preheader234.new, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.split.us.split.us.preheader
  %i.z = getelementptr i8, ptr %2, i64 12660      ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0190 = icmp ult ptr %i.k, %i.aa
  %bound1191 = icmp ult ptr %0, %i.z
  %found.conflict192 = and i1 %bound0190, %bound1191
  %bound0193 = icmp ult ptr %i.k, %i.ab
  %bound1194 = icmp ult ptr %1, %i.z
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %found.conflict192, %found.conflict195
end_hunk_5
begin_hunk_6_@helper_neon_sqshlui_s:bb.a
.split.us.split.split.preheader237.new:           ; preds = %vector.memcheck89, %.split.us.split.split.preheader, %middle.block124
  %.016.us.ph = phi i64 [ 0, %vector.memcheck89 ], [ 0, %.split.us.split.split.preheader ], [ %n.vec102, %middle.block124 ]
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %min.iters.check142 = icmp samesign ult i32 %.v.v.i, 56
  br i1 %min.iters.check142, label %.split.us.split.split.us.preheader235.new, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.split.us.split.split.us.preheader
  %i.bo = getelementptr i8, ptr %2, i64 12660     ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 %i.g      ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.g      ; 2 uses
  %bound0144 = icmp ult ptr %i.k, %i.bp
  %bound1145 = icmp ult ptr %0, %i.bo
  %found.conflict146 = and i1 %bound0144, %bound1145
  %bound0147 = icmp ult ptr %i.k, %i.bq
  %bound1148 = icmp ult ptr %1, %i.bo
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %found.conflict146, %found.conflict149
  %bound0151 = icmp ult ptr %0, %i.bq
  %bound1152 = icmp ult ptr %1, %i.bp
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx154 = or i1 %conflict.rdx150, %found.conflict153
  br i1 %conflict.rdx154, label %.split.us.split.split.us.preheader235.new, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck143
  %n.vec156 = and i64 %i.h, 536870908             ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %bb.m, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next169, %bb.m ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index158
  %wide.load159 = load <4 x i32>, ptr %i.br, align 4, !alias.scope !310 ; 3 uses
  %i.bs = icmp slt <4 x i32> %wide.load159, zeroinitializer ; 2 uses
  %i.bt = xor <4 x i1> %i.bs, splat (i1 true)
  %i.bu = shl <4 x i32> %wide.load159, %broadcast.splat ; 2 uses
  %i.bv = lshr exact <4 x i32> %i.bu, %broadcast.splat
  %i.bw = icmp ne <4 x i32> %i.bv, %wide.load159  ; 2 uses
  %i.bx = select <4 x i1> %i.bt, <4 x i1> %i.bw, <4 x i1> zeroinitializer
  %i.by = select <4 x i1> %i.bs, <4 x i1> splat (i1 true), <4 x i1> %i.bw ; 2 uses
  %predphi = sext <4 x i1> %i.bx to <4 x i32>
  %i.bz = bitcast <4 x i1> %i.by to i4
  %.not232 = icmp eq i4 %i.bz, 0
  br i1 %.not232, label %bb.m, label %bb.l

bb.l:                                             ; preds = %vector.body157
  store i32 1, ptr %i.k, align 4, !alias.scope !311, !noalias !312
  br label %bb.m

bb.m:                                             ; preds = %vector.body157, %bb.l
  %predphi168 = select <4 x i1> %i.by, <4 x i32> %predphi, <4 x i32> %i.bu
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index158
  store <4 x i32> %predphi168, ptr %i.ca, align 4, !alias.scope !313, !noalias !310
  %index.next169 = add nuw i64 %index158, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next169, %n.vec156
  br i1 %i.cb, label %middle.block170, label %vector.body157, !llvm.loop !294

middle.block170:                                  ; preds = %bb.m
  %cmp.n171 = icmp eq i64 %i.h, %n.vec156
  br i1 %cmp.n171, label %.split18.us, label %.split.us.split.split.us.preheader235.new

.split.us.split.split.us.preheader235.new:        ; preds = %vector.memcheck143, %.split.us.split.split.us.preheader, %middle.block170
  %.016.us.us19.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.split.us.split.split.us.preheader ], [ %n.vec156, %middle.block170 ]
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_suqrshl_bhs.exit.us.us20.1, %.split.us.split.split.us.preheader235.new
  %.016.us.us19 = phi i64 [ %.016.us.us19.ph, %.split.us.split.split.us.preheader235.new ], [ %i.cp, %do_suqrshl_bhs.exit.us.us20.1 ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.us.us19
  %i.cd = load i32, ptr %i.cc, align 4            ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %do_suqrshl_bhs.exit.us.us20.sink.split, label %bb.n

bb.n:                                             ; preds = %.split.us.split.split.us
  %i.cf = shl i32 %i.cd, %i.j                     ; 2 uses
  %i.cg = lshr exact i32 %i.cf, %i.j
  %.not15.us.us = icmp eq i32 %i.cg, %i.cd
  br i1 %.not15.us.us, label %do_suqrshl_bhs.exit.us.us20, label %do_suqrshl_bhs.exit.us.us20.sink.split

do_suqrshl_bhs.exit.us.us20.sink.split:           ; preds = %.split.us.split.split.us, %bb.n
  %.0.i.us.us21.ph = phi i32 [ -1, %bb.n ], [ 0, %.split.us.split.split.us ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us20

do_suqrshl_bhs.exit.us.us20:                      ; preds = %do_suqrshl_bhs.exit.us.us20.sink.split, %bb.n
  %.0.i.us.us21 = phi i32 [ %i.cf, %bb.n ], [ %.0.i.us.us21.ph, %do_suqrshl_bhs.exit.us.us20.sink.split ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.us.us19
  store i32 %.0.i.us.us21, ptr %i.ch, align 4
  %i.ci = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4            ; 3 uses
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %do_suqrshl_bhs.exit.us.us20.sink.split.1, label %bb.o

bb.o:                                             ; preds = %do_suqrshl_bhs.exit.us.us20
  %i.cm = shl i32 %i.ck, %i.j                     ; 2 uses
  %i.cn = lshr exact i32 %i.cm, %i.j
  %.not15.us.us.1 = icmp eq i32 %i.cn, %i.ck
  br i1 %.not15.us.us.1, label %do_suqrshl_bhs.exit.us.us20.1, label %do_suqrshl_bhs.exit.us.us20.sink.split.1

do_suqrshl_bhs.exit.us.us20.sink.split.1:         ; preds = %bb.o, %do_suqrshl_bhs.exit.us.us20
  %.0.i.us.us21.ph.1 = phi i32 [ -1, %bb.o ], [ 0, %do_suqrshl_bhs.exit.us.us20 ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.us20.1

do_suqrshl_bhs.exit.us.us20.1:                    ; preds = %do_suqrshl_bhs.exit.us.us20.sink.split.1, %bb.o
  %.0.i.us.us21.1 = phi i32 [ %i.cm, %bb.o ], [ %.0.i.us.us21.ph.1, %do_suqrshl_bhs.exit.us.us20.sink.split.1 ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ci
  store i32 %.0.i.us.us21.1, ptr %i.co, align 4
  %i.cp = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %exitcond26.not.1 = icmp eq i64 %i.cp, %i.h
  br i1 %exitcond26.not.1, label %.split18.us, label %.split.us.split.split.us, !llvm.loop !295

.split.us.split.split:                            ; preds = %do_suqrshl_bhs.exit.us.1, %.split.us.split.split.preheader237.new
  %.016.us = phi i64 [ %.016.us.ph, %.split.us.split.split.preheader237.new ], [ %i.cz, %do_suqrshl_bhs.exit.us.1 ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016.us
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %do_suqrshl_bhs.exit.us.sink.split, label %bb.p

bb.p:                                             ; preds = %.split.us.split.split
  %.not.us = icmp eq i32 %i.cr, 0
  br i1 %.not.us, label %do_suqrshl_bhs.exit.us, label %do_suqrshl_bhs.exit.us.sink.split

do_suqrshl_bhs.exit.us.sink.split:                ; preds = %.split.us.split.split, %bb.p
  %.0.i.us.ph = phi i32 [ -1, %bb.p ], [ 0, %.split.us.split.split ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us

do_suqrshl_bhs.exit.us:                           ; preds = %do_suqrshl_bhs.exit.us.sink.split, %bb.p
  %.0.i.us = phi i32 [ 0, %bb.p ], [ %.0.i.us.ph, %do_suqrshl_bhs.exit.us.sink.split ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016.us
  store i32 %.0.i.us, ptr %i.ct, align 4
  %i.cu = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %do_suqrshl_bhs.exit.us.sink.split.1, label %bb.q

bb.q:                                             ; preds = %do_suqrshl_bhs.exit.us
  %.not.us.1 = icmp eq i32 %i.cw, 0
  br i1 %.not.us.1, label %do_suqrshl_bhs.exit.us.1, label %do_suqrshl_bhs.exit.us.sink.split.1

do_suqrshl_bhs.exit.us.sink.split.1:              ; preds = %bb.q, %do_suqrshl_bhs.exit.us
  %.0.i.us.ph.1 = phi i32 [ -1, %bb.q ], [ 0, %do_suqrshl_bhs.exit.us ]
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.us.1

do_suqrshl_bhs.exit.us.1:                         ; preds = %do_suqrshl_bhs.exit.us.sink.split.1, %bb.q
  %.0.i.us.1 = phi i32 [ 0, %bb.q ], [ %.0.i.us.ph.1, %do_suqrshl_bhs.exit.us.sink.split.1 ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cu
  store i32 %.0.i.us.1, ptr %i.cy, align 4
  %i.cz = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.cz, %i.h
  br i1 %exitcond25.not.1, label %.split18.us, label %.split.us.split.split, !llvm.loop !296

.split:                                           ; preds = %do_suqrshl_bhs.exit.1, %.split.preheader239.new
  %.016 = phi i64 [ %.016.ph, %.split.preheader239.new ], [ %i.dj, %do_suqrshl_bhs.exit.1 ] ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %bb.r, label %do_suqrshl_bhs.exit

bb.r:                                             ; preds = %.split
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit

do_suqrshl_bhs.exit:                              ; preds = %.split, %bb.r
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 0, ptr %i.dd, align 4
  %i.de = or disjoint i64 %.016, 1                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %bb.s, label %do_suqrshl_bhs.exit.1

bb.s:                                             ; preds = %do_suqrshl_bhs.exit
  store i32 1, ptr %i.k, align 4
  br label %do_suqrshl_bhs.exit.1

do_suqrshl_bhs.exit.1:                            ; preds = %bb.s, %do_suqrshl_bhs.exit
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.de
  store i32 0, ptr %i.di, align 4
  %i.dj = add nuw nsw i64 %.016, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dj, %i.h
  br i1 %exitcond.not.1, label %.split18.us, label %.split, !llvm.loop !297

.split18.us:                                      ; preds = %do_suqrshl_bhs.exit.1, %do_suqrshl_bhs.exit.us.1, %do_suqrshl_bhs.exit.us.us20.1, %do_suqrshl_bhs.exit.us.us.1, %middle.block, %middle.block124, %middle.block170, %middle.block228
  %i.dk = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dk, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.dl = add nuw nsw i32 %i.e, 8
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr i8, ptr %0, i64 %i.g
  %i.do = xor i64 %i.g, -1
  %i.dp = add nsw i64 %i.do, %i.dm
  %i.dq = and i64 %i.dp, -8
  %i.dr = add nsw i64 %i.dq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dn, i8 0, i64 %i.dr, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqshlui_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 6 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr i32 %3, 10
  %i.i = lshr exact i64 %i.g, 3                   ; 8 uses
  %i.j = zext nneg i32 %i.h to i64
  %sext = shl i64 %i.j, 56
  %i.k = ashr exact i64 %sext, 56                 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12656 ; 12 uses
  %.not.i.i = icmp sgt i64 %i.k, -64
  %i.m = icmp samesign ult i64 %i.k, 64
  %i.n = sub nsw i64 0, %i.k                      ; 3 uses
  br i1 %.not.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.o = icmp eq i32 %.v.v.i, 0
  br i1 %i.o, label %.split.epil.preheader, label %.split.preheader.new

.split.preheader.new:                             ; preds = %.split.preheader
  %unroll_iter = and i64 %i.i, 268435454
  br label %.split

.split.us:                                        ; preds = %bb.a
  %i.p = icmp slt i64 %i.k, 0
  br i1 %i.p, label %.split.us.split.us.preheader, label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %i.q = icmp eq i32 %.v.v.i, 0
  br i1 %i.q, label %.split.us.split.us.epil.preheader, label %.split.us.split.us.preheader.new

.split.us.split.us.preheader.new:                 ; preds = %.split.us.split.us.preheader
  %unroll_iter63 = and i64 %i.i, 268435454
  br label %.split.us.split.us

.split.us.split.us:                               ; preds = %do_suqrshl_d.exit.us.us.1, %.split.us.split.us.preheader.new
  %.016.us.us = phi i64 [ 0, %.split.us.split.us.preheader.new ], [ %i.ac, %do_suqrshl_d.exit.us.us.1 ] ; 4 uses
  %niter64 = phi i64 [ 0, %.split.us.split.us.preheader.new ], [ %niter64.next.1, %do_suqrshl_d.exit.us.us.1 ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.us.us
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us.split.us
  %i.u = lshr i64 %i.s, %i.n
  br label %do_suqrshl_d.exit.us.us

bb.c:                                             ; preds = %.split.us.split.us
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us.us

do_suqrshl_d.exit.us.us:                          ; preds = %bb.c, %bb.b
  %.0.i.us.us = phi i64 [ 0, %bb.c ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us.us
  store i64 %.0.i.us.us, ptr %i.v, align 8
  %i.w = or disjoint i64 %.016.us.us, 1           ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %do_suqrshl_d.exit.us.us
  %i.aa = lshr i64 %i.y, %i.n
  br label %do_suqrshl_d.exit.us.us.1

bb.e:                                             ; preds = %do_suqrshl_d.exit.us.us
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us.us.1

do_suqrshl_d.exit.us.us.1:                        ; preds = %bb.e, %bb.d
  %.0.i.us.us.1 = phi i64 [ 0, %bb.e ], [ %i.aa, %bb.d ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w
  store i64 %.0.i.us.us.1, ptr %i.ab, align 8
  %i.ac = add nuw nsw i64 %.016.us.us, 2          ; 2 uses
  %niter64.next.1 = add i64 %niter64, 2           ; 2 uses
  %niter64.ncmp.1 = icmp eq i64 %niter64.next.1, %unroll_iter63
  br i1 %niter64.ncmp.1, label %.split18.us.loopexit.unr-lcssa, label %.split.us.split.us, !llvm.loop !314

.split.us.split:                                  ; preds = %.split.us
  br i1 %i.m, label %.split.us.split.split.us.preheader, label %.split.us.split.split.preheader

.split.us.split.split.preheader:                  ; preds = %.split.us.split
  %i.ad = icmp eq i32 %.v.v.i, 0
  br i1 %i.ad, label %.split.us.split.split.epil.preheader, label %.split.us.split.split.preheader.new

.split.us.split.split.preheader.new:              ; preds = %.split.us.split.split.preheader
  %unroll_iter53 = and i64 %i.i, 268435454
  br label %.split.us.split.split

.split.us.split.split.us.preheader:               ; preds = %.split.us.split
  %i.ae = icmp eq i32 %.v.v.i, 0
  br i1 %i.ae, label %.split.us.split.split.us.epil.preheader, label %.split.us.split.split.us.preheader.new

.split.us.split.split.us.preheader.new:           ; preds = %.split.us.split.split.us.preheader
  %unroll_iter58 = and i64 %i.i, 268435454
  br label %.split.us.split.split.us

.split.us.split.split.us:                         ; preds = %do_suqrshl_d.exit.us.us20.1, %.split.us.split.split.us.preheader.new
  %.016.us.us19 = phi i64 [ 0, %.split.us.split.split.us.preheader.new ], [ %i.as, %do_suqrshl_d.exit.us.us20.1 ] ; 4 uses
  %niter59 = phi i64 [ 0, %.split.us.split.split.us.preheader.new ], [ %niter59.next.1, %do_suqrshl_d.exit.us.us20.1 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.us.us19
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %do_suqrshl_d.exit.us.us20.sink.split, label %bb.f

bb.f:                                             ; preds = %.split.us.split.split.us
  %i.ai = shl i64 %i.ag, %i.k                     ; 2 uses
  %i.aj = lshr exact i64 %i.ai, %i.k
  %.not15.us.us = icmp eq i64 %i.aj, %i.ag
  br i1 %.not15.us.us, label %do_suqrshl_d.exit.us.us20, label %do_suqrshl_d.exit.us.us20.sink.split

do_suqrshl_d.exit.us.us20.sink.split:             ; preds = %.split.us.split.split.us, %bb.f
  %.0.i.us.us21.ph = phi i64 [ -1, %bb.f ], [ 0, %.split.us.split.split.us ]
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us.us20

do_suqrshl_d.exit.us.us20:                        ; preds = %do_suqrshl_d.exit.us.us20.sink.split, %bb.f
  %.0.i.us.us21 = phi i64 [ %i.ai, %bb.f ], [ %.0.i.us.us21.ph, %do_suqrshl_d.exit.us.us20.sink.split ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us.us19
  store i64 %.0.i.us.us21, ptr %i.ak, align 8
  %i.al = or disjoint i64 %.016.us.us19, 1        ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %do_suqrshl_d.exit.us.us20.sink.split.1, label %bb.g

bb.g:                                             ; preds = %do_suqrshl_d.exit.us.us20
  %i.ap = shl i64 %i.an, %i.k                     ; 2 uses
  %i.aq = lshr exact i64 %i.ap, %i.k
  %.not15.us.us.1 = icmp eq i64 %i.aq, %i.an
  br i1 %.not15.us.us.1, label %do_suqrshl_d.exit.us.us20.1, label %do_suqrshl_d.exit.us.us20.sink.split.1

do_suqrshl_d.exit.us.us20.sink.split.1:           ; preds = %bb.g, %do_suqrshl_d.exit.us.us20
  %.0.i.us.us21.ph.1 = phi i64 [ -1, %bb.g ], [ 0, %do_suqrshl_d.exit.us.us20 ]
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us.us20.1

do_suqrshl_d.exit.us.us20.1:                      ; preds = %do_suqrshl_d.exit.us.us20.sink.split.1, %bb.g
  %.0.i.us.us21.1 = phi i64 [ %i.ap, %bb.g ], [ %.0.i.us.us21.ph.1, %do_suqrshl_d.exit.us.us20.sink.split.1 ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.al
  store i64 %.0.i.us.us21.1, ptr %i.ar, align 8
  %i.as = add nuw nsw i64 %.016.us.us19, 2        ; 2 uses
  %niter59.next.1 = add i64 %niter59, 2           ; 2 uses
  %niter59.ncmp.1 = icmp eq i64 %niter59.next.1, %unroll_iter58
  br i1 %niter59.ncmp.1, label %.split18.us.loopexit46.unr-lcssa, label %.split.us.split.split.us, !llvm.loop !314

.split.us.split.split:                            ; preds = %do_suqrshl_d.exit.us.1, %.split.us.split.split.preheader.new
  %.016.us = phi i64 [ 0, %.split.us.split.split.preheader.new ], [ %i.bc, %do_suqrshl_d.exit.us.1 ] ; 4 uses
  %niter54 = phi i64 [ 0, %.split.us.split.split.preheader.new ], [ %niter54.next.1, %do_suqrshl_d.exit.us.1 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.us
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %do_suqrshl_d.exit.us.sink.split, label %bb.h

bb.h:                                             ; preds = %.split.us.split.split
  %.not.us = icmp eq i64 %i.au, 0
  br i1 %.not.us, label %do_suqrshl_d.exit.us, label %do_suqrshl_d.exit.us.sink.split

do_suqrshl_d.exit.us.sink.split:                  ; preds = %.split.us.split.split, %bb.h
  %.0.i.us.ph = phi i64 [ -1, %bb.h ], [ 0, %.split.us.split.split ]
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us

do_suqrshl_d.exit.us:                             ; preds = %do_suqrshl_d.exit.us.sink.split, %bb.h
  %.0.i.us = phi i64 [ 0, %bb.h ], [ %.0.i.us.ph, %do_suqrshl_d.exit.us.sink.split ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us
  store i64 %.0.i.us, ptr %i.aw, align 8
  %i.ax = or disjoint i64 %.016.us, 1             ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %do_suqrshl_d.exit.us.sink.split.1, label %bb.i

bb.i:                                             ; preds = %do_suqrshl_d.exit.us
  %.not.us.1 = icmp eq i64 %i.az, 0
  br i1 %.not.us.1, label %do_suqrshl_d.exit.us.1, label %do_suqrshl_d.exit.us.sink.split.1

do_suqrshl_d.exit.us.sink.split.1:                ; preds = %bb.i, %do_suqrshl_d.exit.us
  %.0.i.us.ph.1 = phi i64 [ -1, %bb.i ], [ 0, %do_suqrshl_d.exit.us ]
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us.1

do_suqrshl_d.exit.us.1:                           ; preds = %do_suqrshl_d.exit.us.sink.split.1, %bb.i
  %.0.i.us.1 = phi i64 [ 0, %bb.i ], [ %.0.i.us.ph.1, %do_suqrshl_d.exit.us.sink.split.1 ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  store i64 %.0.i.us.1, ptr %i.bb, align 8
  %i.bc = add nuw nsw i64 %.016.us, 2             ; 2 uses
  %niter54.next.1 = add i64 %niter54, 2           ; 2 uses
  %niter54.ncmp.1 = icmp eq i64 %niter54.next.1, %unroll_iter53
  br i1 %niter54.ncmp.1, label %.split18.us.loopexit47.unr-lcssa, label %.split.us.split.split, !llvm.loop !314

.split:                                           ; preds = %do_suqrshl_d.exit.1, %.split.preheader.new
  %.016 = phi i64 [ 0, %.split.preheader.new ], [ %i.bm, %do_suqrshl_d.exit.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.split.preheader.new ], [ %niter.next.1, %do_suqrshl_d.exit.1 ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = icmp slt i64 %i.be, 0
  br i1 %i.bf, label %bb.j, label %do_suqrshl_d.exit

bb.j:                                             ; preds = %.split
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit

do_suqrshl_d.exit:                                ; preds = %.split, %bb.j
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 0, ptr %i.bg, align 8
  %i.bh = or disjoint i64 %.016, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %do_suqrshl_d.exit.1

bb.k:                                             ; preds = %do_suqrshl_d.exit
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.1

do_suqrshl_d.exit.1:                              ; preds = %bb.k, %do_suqrshl_d.exit
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  store i64 0, ptr %i.bl, align 8
  %i.bm = add nuw nsw i64 %.016, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split18.us.loopexit48.unr-lcssa, label %.split, !llvm.loop !314

.split18.us.loopexit.unr-lcssa:                   ; preds = %do_suqrshl_d.exit.us.us.1
  %i.bn = and i64 %i.g, 8
  %lcmp.mod61.not = icmp eq i64 %i.bn, 0
  br i1 %lcmp.mod61.not, label %.split18.us, label %.split.us.split.us.epil.preheader

.split.us.split.us.epil.preheader:                ; preds = %.split18.us.loopexit.unr-lcssa, %.split.us.split.us.preheader
  %.016.us.us.epil.init = phi i64 [ 0, %.split.us.split.us.preheader ], [ %i.ac, %.split18.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod62 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.us.us.epil.init
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp slt i64 %i.bp, 0
  br i1 %i.bq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.split.us.split.us.epil.preheader
  %i.br = lshr i64 %i.bp, %i.n
  br label %do_suqrshl_d.exit.us.us.epil

bb.m:                                             ; preds = %.split.us.split.us.epil.preheader
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us.us.epil

do_suqrshl_d.exit.us.us.epil:                     ; preds = %bb.m, %bb.l
  %.0.i.us.us.epil = phi i64 [ 0, %bb.m ], [ %i.br, %bb.l ]
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us.us.epil.init
  store i64 %.0.i.us.us.epil, ptr %i.bs, align 8
  br label %.split18.us

.split18.us.loopexit46.unr-lcssa:                 ; preds = %do_suqrshl_d.exit.us.us20.1
  %i.bt = and i64 %i.g, 8
  %lcmp.mod56.not = icmp eq i64 %i.bt, 0
  br i1 %lcmp.mod56.not, label %.split18.us, label %.split.us.split.split.us.epil.preheader

.split.us.split.split.us.epil.preheader:          ; preds = %.split18.us.loopexit46.unr-lcssa, %.split.us.split.split.us.preheader
  %.016.us.us19.epil.init = phi i64 [ 0, %.split.us.split.split.us.preheader ], [ %i.as, %.split18.us.loopexit46.unr-lcssa ] ; 2 uses
  %lcmp.mod57 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod57)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.us.us19.epil.init
  %i.bv = load i64, ptr %i.bu, align 8            ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %do_suqrshl_d.exit.us.us20.sink.split.epil, label %bb.n

bb.n:                                             ; preds = %.split.us.split.split.us.epil.preheader
  %i.bx = shl i64 %i.bv, %i.k                     ; 2 uses
  %i.by = lshr exact i64 %i.bx, %i.k
  %.not15.us.us.epil = icmp eq i64 %i.by, %i.bv
  br i1 %.not15.us.us.epil, label %do_suqrshl_d.exit.us.us20.epil, label %do_suqrshl_d.exit.us.us20.sink.split.epil

do_suqrshl_d.exit.us.us20.sink.split.epil:        ; preds = %bb.n, %.split.us.split.split.us.epil.preheader
  %.0.i.us.us21.ph.epil = phi i64 [ -1, %bb.n ], [ 0, %.split.us.split.split.us.epil.preheader ]
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us.us20.epil

do_suqrshl_d.exit.us.us20.epil:                   ; preds = %do_suqrshl_d.exit.us.us20.sink.split.epil, %bb.n
  %.0.i.us.us21.epil = phi i64 [ %i.bx, %bb.n ], [ %.0.i.us.us21.ph.epil, %do_suqrshl_d.exit.us.us20.sink.split.epil ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us.us19.epil.init
  store i64 %.0.i.us.us21.epil, ptr %i.bz, align 8
  br label %.split18.us

.split18.us.loopexit47.unr-lcssa:                 ; preds = %do_suqrshl_d.exit.us.1
  %i.ca = and i64 %i.g, 8
  %lcmp.mod51.not = icmp eq i64 %i.ca, 0
  br i1 %lcmp.mod51.not, label %.split18.us, label %.split.us.split.split.epil.preheader

.split.us.split.split.epil.preheader:             ; preds = %.split18.us.loopexit47.unr-lcssa, %.split.us.split.split.preheader
  %.016.us.epil.init = phi i64 [ 0, %.split.us.split.split.preheader ], [ %i.bc, %.split18.us.loopexit47.unr-lcssa ] ; 2 uses
  %lcmp.mod52 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod52)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.us.epil.init
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %do_suqrshl_d.exit.us.sink.split.epil, label %bb.o

bb.o:                                             ; preds = %.split.us.split.split.epil.preheader
  %.not.us.epil = icmp eq i64 %i.cc, 0
  br i1 %.not.us.epil, label %do_suqrshl_d.exit.us.epil, label %do_suqrshl_d.exit.us.sink.split.epil

do_suqrshl_d.exit.us.sink.split.epil:             ; preds = %bb.o, %.split.us.split.split.epil.preheader
  %.0.i.us.ph.epil = phi i64 [ -1, %bb.o ], [ 0, %.split.us.split.split.epil.preheader ]
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.us.epil

do_suqrshl_d.exit.us.epil:                        ; preds = %do_suqrshl_d.exit.us.sink.split.epil, %bb.o
  %.0.i.us.epil = phi i64 [ 0, %bb.o ], [ %.0.i.us.ph.epil, %do_suqrshl_d.exit.us.sink.split.epil ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.us.epil.init
  store i64 %.0.i.us.epil, ptr %i.ce, align 8
  br label %.split18.us

.split18.us.loopexit48.unr-lcssa:                 ; preds = %do_suqrshl_d.exit.1
  %i.cf = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.cf, 0
  br i1 %lcmp.mod.not, label %.split18.us, label %.split.epil.preheader

.split.epil.preheader:                            ; preds = %.split18.us.loopexit48.unr-lcssa, %.split.preheader
  %.016.epil.init = phi i64 [ 0, %.split.preheader ], [ %i.bm, %.split18.us.loopexit48.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016.epil.init
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.p, label %do_suqrshl_d.exit.epil

bb.p:                                             ; preds = %.split.epil.preheader
  store i32 1, ptr %i.l, align 4
  br label %do_suqrshl_d.exit.epil

do_suqrshl_d.exit.epil:                           ; preds = %bb.p, %.split.epil.preheader
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016.epil.init
  store i64 0, ptr %i.cj, align 8
  br label %.split18.us

.split18.us:                                      ; preds = %do_suqrshl_d.exit.epil, %.split18.us.loopexit48.unr-lcssa, %do_suqrshl_d.exit.us.epil, %.split18.us.loopexit47.unr-lcssa, %do_suqrshl_d.exit.us.us20.epil, %.split18.us.loopexit46.unr-lcssa, %do_suqrshl_d.exit.us.us.epil, %.split18.us.loopexit.unr-lcssa
  %i.ck = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ck, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split18.us
  %i.cl = add nuw nsw i32 %i.e, 8
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr i8, ptr %0, i64 %i.g
  %i.co = xor i64 %i.g, -1
  %i.cp = add nsw i64 %i.co, %i.cm
  %i.cq = and i64 %i.cp, -8
  %i.cr = add nsw i64 %i.cq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cn, i8 0, i64 %i.cr, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split18.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrshl_u8(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.sroa.59.0.extract.shift = lshr i32 %1, 8
  %.sroa.610.0.extract.shift = lshr i32 %1, 16
  %.sroa.711.0.extract.shift = lshr i32 %1, 24    ; 3 uses
  %i.a = and i32 %1, 255                          ; 3 uses
  %sext = shl i32 %2, 24
  %i.b = ashr exact i32 %sext, 24                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 4 uses
  %.not.i = icmp sgt i32 %i.b, -9
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = xor i32 %i.b, -1
  %i.f = lshr i32 %i.a, %i.e                      ; 2 uses
  %i.g = lshr i32 %i.f, 1
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = and i32 %i.h, 255
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i32 %i.b, 8
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i32 %i.a, %i.b               ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 255
  br i1 %i.l, label %bb.g, label %do_uqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.a, 0
  br i1 %i.m, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ 255, %bb.g ], [ 0, %bb.f ]
  %i.n = and i32 %.sroa.59.0.extract.shift, 255   ; 3 uses
  %i.o = shl i32 %2, 16
  %i.p = ashr i32 %i.o, 24                        ; 5 uses
  %.not.i20 = icmp sgt i32 %i.p, -9
  br i1 %.not.i20, label %bb.h, label %do_uqrshl_bhs.exit22

bb.h:                                             ; preds = %do_uqrshl_bhs.exit
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = xor i32 %i.p, -1
  %i.s = lshr i32 %i.n, %i.r                      ; 2 uses
  %i.t = lshr i32 %i.s, 1
  %i.u = sub nsw i32 %i.s, %i.t
  br label %do_uqrshl_bhs.exit22

bb.j:                                             ; preds = %bb.h
  %i.v = icmp samesign ult i32 %i.p, 8
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i32 %i.n, %i.p               ; 2 uses
  %i.x = icmp samesign ugt i32 %i.w, 255
  br i1 %i.x, label %bb.m, label %do_uqrshl_bhs.exit22

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i32 %i.n, 0
  br i1 %i.y, label %do_uqrshl_bhs.exit22, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit22

do_uqrshl_bhs.exit22:                             ; preds = %do_uqrshl_bhs.exit, %bb.i, %bb.k, %bb.l, %bb.m
  %.3.i21 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.u, %bb.i ], [ %i.w, %bb.k ], [ 255, %bb.m ], [ 0, %bb.l ]
  %i.z = and i32 %.sroa.610.0.extract.shift, 255  ; 3 uses
  %i.aa = shl i32 %2, 8
  %i.ab = ashr i32 %i.aa, 24                      ; 5 uses
  %.not.i23 = icmp sgt i32 %i.ab, -9
  br i1 %.not.i23, label %bb.n, label %do_uqrshl_bhs.exit25

bb.n:                                             ; preds = %do_uqrshl_bhs.exit22
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = xor i32 %i.ab, -1
  %i.ae = lshr i32 %i.z, %i.ad                    ; 2 uses
  %i.af = lshr i32 %i.ae, 1
  %i.ag = sub nsw i32 %i.ae, %i.af
  br label %do_uqrshl_bhs.exit25

bb.p:                                             ; preds = %bb.n
  %i.ah = icmp samesign ult i32 %i.ab, 8
  br i1 %i.ah, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ai = shl nuw nsw i32 %i.z, %i.ab             ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.ai, 255
  br i1 %i.aj, label %bb.s, label %do_uqrshl_bhs.exit25

bb.r:                                             ; preds = %bb.p
  %i.ak = icmp eq i32 %i.z, 0
  br i1 %i.ak, label %do_uqrshl_bhs.exit25, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit25

do_uqrshl_bhs.exit25:                             ; preds = %do_uqrshl_bhs.exit22, %bb.o, %bb.q, %bb.r, %bb.s
  %.3.i24 = phi i32 [ 0, %do_uqrshl_bhs.exit22 ], [ %i.ag, %bb.o ], [ %i.ai, %bb.q ], [ 255, %bb.s ], [ 0, %bb.r ]
  %i.al = ashr i32 %2, 24                         ; 5 uses
  %.not.i26 = icmp sgt i32 %i.al, -9
  br i1 %.not.i26, label %bb.t, label %do_uqrshl_bhs.exit28

bb.t:                                             ; preds = %do_uqrshl_bhs.exit25
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.an = xor i32 %i.al, -1
  %i.ao = lshr i32 %.sroa.711.0.extract.shift, %i.an ; 2 uses
  %i.ap = lshr i32 %i.ao, 1
  %i.aq = sub nsw i32 %i.ao, %i.ap
  br label %do_uqrshl_bhs.exit28

bb.v:                                             ; preds = %bb.t
  %i.ar = icmp samesign ult i32 %i.al, 8
  br i1 %i.ar, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.as = shl nuw nsw i32 %.sroa.711.0.extract.shift, %i.al ; 2 uses
  %i.at = icmp samesign ugt i32 %i.as, 255
  br i1 %i.at, label %bb.y, label %do_uqrshl_bhs.exit28

bb.x:                                             ; preds = %bb.v
  %i.au = icmp eq i32 %.sroa.711.0.extract.shift, 0
  br i1 %i.au, label %do_uqrshl_bhs.exit28, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit28

do_uqrshl_bhs.exit28:                             ; preds = %do_uqrshl_bhs.exit25, %bb.u, %bb.w, %bb.x, %bb.y
  %.3.i27 = phi i32 [ 0, %do_uqrshl_bhs.exit25 ], [ %i.aq, %bb.u ], [ %i.as, %bb.w ], [ 255, %bb.y ], [ 0, %bb.x ]
  %.sroa.7.0.insert.ext = shl i32 %.3.i27, 24
  %.sroa.6.0.insert.ext = shl nsw i32 %.3.i24, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = shl nsw i32 %.3.i21, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.3.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqrshl_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.017 = phi i64 [ 0, %bb.a ], [ %i.z, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.017
  %i.m = load i8, ptr %i.l, align 1               ; 4 uses
  %i.n = sext i8 %i.m to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.m, -9
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i8 %i.m, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i32 %i.n, -1
  %i.q = lshr i32 %i.k, %i.p                      ; 2 uses
  %i.r = lshr i32 %i.q, 1
  %i.s = sub nsw i32 %i.q, %i.r
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i8 %i.m, 8
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.k, %i.n               ; 2 uses
  %i.v = icmp samesign ugt i32 %i.u, 255
  br i1 %i.v, label %bb.h, label %do_uqrshl_bhs.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i8 %i.j, 0
  br i1 %i.w, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.h, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.s, %bb.d ], [ %i.u, %bb.f ], [ 255, %bb.h ], [ 0, %bb.g ]
  %i.x = trunc i32 %.3.i to i8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.x, ptr %i.y, align 1
  %i.z = add nuw nsw i64 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.g
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !315

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.aa = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aa, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ab = add nuw nsw i32 %i.e, 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.g
  %i.ae = xor i64 %i.g, -1
  %i.af = add nsw i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, -8
  %i.ah = add nsw i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrshl_u16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.sroa.57.0.extract.shift = lshr i32 %1, 16     ; 3 uses
  %i.a = and i32 %1, 65535                        ; 3 uses
  %sext = shl i32 %2, 24
  %i.b = ashr exact i32 %sext, 24                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %.not.i = icmp sgt i32 %i.b, -17
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = xor i32 %i.b, -1
  %i.f = lshr i32 %i.a, %i.e                      ; 2 uses
  %i.g = lshr i32 %i.f, 1
  %i.h = sub nsw i32 %i.f, %i.g
  %i.i = and i32 %i.h, 65535
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i32 %i.b, 16
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i32 %i.a, %i.b               ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 65535
  br i1 %i.l, label %bb.g, label %do_uqrshl_bhs.exit

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.a, 0
  br i1 %i.m, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ 65535, %bb.g ], [ 0, %bb.f ]
  %i.n = shl i32 %2, 8
  %i.o = ashr i32 %i.n, 24                        ; 5 uses
  %.not.i12 = icmp sgt i32 %i.o, -17
  br i1 %.not.i12, label %bb.h, label %do_uqrshl_bhs.exit14

bb.h:                                             ; preds = %do_uqrshl_bhs.exit
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = xor i32 %i.o, -1
  %i.r = lshr i32 %.sroa.57.0.extract.shift, %i.q ; 2 uses
  %i.s = lshr i32 %i.r, 1
  %i.t = sub nsw i32 %i.r, %i.s
  br label %do_uqrshl_bhs.exit14

bb.j:                                             ; preds = %bb.h
  %i.u = icmp samesign ult i32 %i.o, 16
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i32 %.sroa.57.0.extract.shift, %i.o ; 2 uses
  %i.w = icmp samesign ugt i32 %i.v, 65535
  br i1 %i.w, label %bb.m, label %do_uqrshl_bhs.exit14

bb.l:                                             ; preds = %bb.j
  %i.x = icmp eq i32 %.sroa.57.0.extract.shift, 0
  br i1 %i.x, label %do_uqrshl_bhs.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.c, align 4
  br label %do_uqrshl_bhs.exit14

do_uqrshl_bhs.exit14:                             ; preds = %do_uqrshl_bhs.exit, %bb.i, %bb.k, %bb.l, %bb.m
  %.3.i13 = phi i32 [ 0, %do_uqrshl_bhs.exit ], [ %i.t, %bb.i ], [ %i.v, %bb.k ], [ 65535, %bb.m ], [ 0, %bb.l ]
  %.sroa.5.0.insert.ext = shl i32 %.3.i13, 16
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.3.i
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqrshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ab, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %sext = shl i32 %i.o, 24
  %i.p = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.p, -17
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = xor i32 %i.p, -1
  %i.s = lshr i32 %i.l, %i.r                      ; 2 uses
  %i.t = lshr i32 %i.s, 1
  %i.u = sub nsw i32 %i.s, %i.t
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i32 %i.p, 16
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw nsw i32 %i.l, %i.p               ; 2 uses
  %i.x = icmp samesign ugt i32 %i.w, 65535
  br i1 %i.x, label %bb.h, label %do_uqrshl_bhs.exit

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i16 %i.k, 0
  br i1 %i.y, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.u, %bb.d ], [ %i.w, %bb.f ], [ 65535, %bb.h ], [ 0, %bb.g ]
  %i.z = trunc i32 %.3.i to i16
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.z, ptr %i.aa, align 2
  %i.ab = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !316

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.ac = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ac, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ad = add nuw nsw i32 %i.e, 8
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %0, i64 %i.g
  %i.ag = xor i64 %i.g, -1
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, -8
  %i.aj = add nsw i64 %i.ai, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.aj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqrshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.z, %do_uqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.m = load i32, ptr %i.l, align 4
  %sext = shl i32 %i.m, 24
  %i.n = ashr exact i32 %sext, 24                 ; 6 uses
  %.not.i = icmp sgt i32 %i.n, -33
  br i1 %.not.i, label %bb.c, label %do_uqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i32 %i.n, -1
  %i.q = lshr i32 %i.k, %i.p                      ; 2 uses
  %i.r = lshr i32 %i.q, 1
  %i.s = sub i32 %i.q, %i.r
  br label %do_uqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i32 %i.n, 32
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl i32 %i.k, %i.n                       ; 2 uses
  %i.v = lshr exact i32 %i.u, %i.n
  %i.w = icmp eq i32 %i.v, %i.k
  br i1 %i.w, label %do_uqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.k, 0
  br i1 %i.x, label %do_uqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ 0, %bb.b ], [ %i.s, %bb.d ], [ %i.u, %bb.f ], [ -1, %bb.h ], [ 0, %bb.g ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %.3.i, ptr %i.y, align 4
  %i.z = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !317

bb.i:                                             ; preds = %do_uqrshl_bhs.exit
  %i.aa = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aa, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ab = add nuw nsw i32 %i.e, 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.g
  %i.ae = xor i64 %i.g, -1
  %i.af = add nsw i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, -8
  %i.ah = add nsw i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_uqrshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_uqrshl_d.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.z, %do_uqrshl_d.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.m = load i64, ptr %i.l, align 8
  %sext = shl i64 %i.m, 56
  %i.n = ashr exact i64 %sext, 56                 ; 6 uses
  %.not.i = icmp sgt i64 %i.n, -65
  br i1 %.not.i, label %bb.c, label %do_uqrshl_d.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i64 %i.n, -1
  %i.q = lshr i64 %i.k, %i.p                      ; 2 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = sub i64 %i.q, %i.r
  br label %do_uqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i64 %i.n, 64
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = shl i64 %i.k, %i.n                       ; 2 uses
  %i.v = lshr exact i64 %i.u, %i.n
  %i.w = icmp eq i64 %i.v, %i.k
  br i1 %i.w, label %do_uqrshl_d.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i64 %i.k, 0
  br i1 %i.x, label %do_uqrshl_d.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  br label %do_uqrshl_d.exit

do_uqrshl_d.exit:                                 ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.d ], [ 0, %bb.g ], [ -1, %bb.h ], [ %i.u, %bb.f ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %.1.i, ptr %i.y, align 8
  %i.z = add nuw nsw i64 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !318

bb.i:                                             ; preds = %do_uqrshl_d.exit
  %i.aa = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aa, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ab = add nuw nsw i32 %i.e, 8
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr i8, ptr %0, i64 %i.g
  %i.ae = xor i64 %i.g, -1
  %i.af = add nsw i64 %i.ae, %i.ac
  %i.ag = and i64 %i.af, -8
  %i.ah = add nsw i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ah, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrshl_u32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %2, 24
  %i.a = ashr exact i32 %sext, 24                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %.not.i = icmp sgt i32 %i.a, -33
  br i1 %.not.i, label %bb.b, label %do_uqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i32 %i.a, -1
  %i.e = lshr i32 %1, %i.d                        ; 2 uses
  %i.f = lshr i32 %i.e, 1
  %i.g = sub i32 %i.e, %i.f
  br label %do_uqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.a, 32
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = shl i32 %1, %i.a                         ; 2 uses
  %i.j = lshr exact i32 %i.i, %i.a
  %i.k = icmp eq i32 %i.j, %1
  br i1 %i.k, label %do_uqrshl_bhs.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %1, 0
  br i1 %i.l, label %do_uqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.b, align 4
  br label %do_uqrshl_bhs.exit

do_uqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ 0, %bb.a ], [ %i.g, %bb.c ], [ %i.i, %bb.e ], [ -1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_qrshl_u64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i64 %2, 56
  %i.a = ashr exact i64 %sext, 56                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %.not.i = icmp sgt i64 %i.a, -65
  br i1 %.not.i, label %bb.b, label %do_uqrshl_d.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i64 %i.a, -1
  %i.e = lshr i64 %1, %i.d                        ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = sub i64 %i.e, %i.f
  br label %do_uqrshl_d.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i64 %i.a, 64
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = shl i64 %1, %i.a                         ; 2 uses
  %i.j = lshr exact i64 %i.i, %i.a
  %i.k = icmp eq i64 %i.j, %1
  br i1 %i.k, label %do_uqrshl_d.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %do_uqrshl_d.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.b, align 4
  br label %do_uqrshl_d.exit

do_uqrshl_d.exit:                                 ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.1.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.c ], [ 0, %bb.f ], [ -1, %bb.g ], [ %i.i, %bb.e ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrshl_s8(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %1, 24                          ; 2 uses
  %i.a = ashr exact i32 %sext, 24                 ; 3 uses
  %sext17 = shl i32 %2, 24
  %i.b = ashr exact i32 %sext17, 24               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 4 uses
  %.not.i = icmp sgt i32 %i.b, -8
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = xor i32 %i.b, -1
  %i.f = ashr i32 %i.a, %i.e                      ; 2 uses
  %i.g = ashr i32 %i.f, 1
  %i.h = and i32 %i.f, 1
  %i.i = add nsw i32 %i.g, %i.h
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i32 %i.b, 8
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = shl nsw i32 %i.a, %i.b                   ; 2 uses
  %i.l = add nsw i32 %i.k, 128
  %.not = icmp ult i32 %i.l, 256
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %sext, 0
  br i1 %i.m, label %do_sqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.c, align 4
  %i.n = icmp sgt i32 %i.a, -1
  %i.o = select i1 %i.n, i32 127, i32 128
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ %i.o, %bb.g ], [ 0, %bb.f ], [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ 0, %bb.a ]
  %i.p = shl i32 %1, 16
  %i.q = ashr i32 %i.p, 24                        ; 4 uses
  %i.r = shl i32 %2, 16
  %i.s = ashr i32 %i.r, 24                        ; 5 uses
  %.not.i24 = icmp sgt i32 %i.s, -8
  br i1 %.not.i24, label %bb.h, label %do_sqrshl_bhs.exit27

bb.h:                                             ; preds = %do_sqrshl_bhs.exit
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = xor i32 %i.s, -1
  %i.v = ashr i32 %i.q, %i.u                      ; 2 uses
  %i.w = ashr i32 %i.v, 1
  %i.x = and i32 %i.v, 1
  %i.y = add nsw i32 %i.w, %i.x
  br label %do_sqrshl_bhs.exit27

bb.j:                                             ; preds = %bb.h
  %i.z = icmp samesign ult i32 %i.s, 8
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = shl nsw i32 %i.q, %i.s                  ; 2 uses
  %i.ab = add nsw i32 %i.aa, 128
  %.not36 = icmp ult i32 %i.ab, 256
  br i1 %.not36, label %do_sqrshl_bhs.exit27, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ac = icmp eq i32 %i.q, 0
  br i1 %i.ac, label %do_sqrshl_bhs.exit27, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.c, align 4
  %i.ad = icmp sgt i32 %i.q, -1
  %i.ae = select i1 %i.ad, i32 127, i32 128
  br label %do_sqrshl_bhs.exit27

do_sqrshl_bhs.exit27:                             ; preds = %do_sqrshl_bhs.exit, %bb.i, %bb.k, %bb.l, %bb.m
  %.3.i25 = phi i32 [ %i.ae, %bb.m ], [ 0, %bb.l ], [ %i.y, %bb.i ], [ %i.aa, %bb.k ], [ 0, %do_sqrshl_bhs.exit ]
  %i.af = shl i32 %1, 8
  %i.ag = ashr i32 %i.af, 24                      ; 4 uses
  %i.ah = shl i32 %2, 8
  %i.ai = ashr i32 %i.ah, 24                      ; 5 uses
  %.not.i28 = icmp sgt i32 %i.ai, -8
  br i1 %.not.i28, label %bb.n, label %do_sqrshl_bhs.exit31

bb.n:                                             ; preds = %do_sqrshl_bhs.exit27
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = xor i32 %i.ai, -1
  %i.al = ashr i32 %i.ag, %i.ak                   ; 2 uses
  %i.am = ashr i32 %i.al, 1
  %i.an = and i32 %i.al, 1
  %i.ao = add nsw i32 %i.am, %i.an
  br label %do_sqrshl_bhs.exit31

bb.p:                                             ; preds = %bb.n
  %i.ap = icmp samesign ult i32 %i.ai, 8
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aq = shl nsw i32 %i.ag, %i.ai                ; 2 uses
  %i.ar = add nsw i32 %i.aq, 128
  %.not37 = icmp ult i32 %i.ar, 256
  br i1 %.not37, label %do_sqrshl_bhs.exit31, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.as = icmp eq i32 %i.ag, 0
  br i1 %i.as, label %do_sqrshl_bhs.exit31, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 1, ptr %i.c, align 4
  %i.at = icmp sgt i32 %i.ag, -1
  %i.au = select i1 %i.at, i32 127, i32 128
  br label %do_sqrshl_bhs.exit31

do_sqrshl_bhs.exit31:                             ; preds = %do_sqrshl_bhs.exit27, %bb.o, %bb.q, %bb.r, %bb.s
  %.3.i29 = phi i32 [ %i.au, %bb.s ], [ 0, %bb.r ], [ %i.ao, %bb.o ], [ %i.aq, %bb.q ], [ 0, %do_sqrshl_bhs.exit27 ]
  %i.av = ashr i32 %1, 24                         ; 4 uses
  %i.aw = ashr i32 %2, 24                         ; 5 uses
  %.not.i32 = icmp sgt i32 %i.aw, -8
  br i1 %.not.i32, label %bb.t, label %do_sqrshl_bhs.exit35

bb.t:                                             ; preds = %do_sqrshl_bhs.exit31
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = xor i32 %i.aw, -1
  %i.az = ashr i32 %i.av, %i.ay                   ; 2 uses
  %i.ba = ashr i32 %i.az, 1
  %i.bb = and i32 %i.az, 1
  %i.bc = add nsw i32 %i.ba, %i.bb
  br label %do_sqrshl_bhs.exit35

bb.v:                                             ; preds = %bb.t
  %i.bd = icmp samesign ult i32 %i.aw, 8
  br i1 %i.bd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.be = shl nsw i32 %i.av, %i.aw                ; 2 uses
  %i.bf = add nsw i32 %i.be, 128
  %.not38 = icmp ult i32 %i.bf, 256
  br i1 %.not38, label %do_sqrshl_bhs.exit35, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %do_sqrshl_bhs.exit35, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i32 1, ptr %i.c, align 4
  %i.bh = icmp sgt i32 %i.av, -1
  %i.bi = select i1 %i.bh, i32 127, i32 128
  br label %do_sqrshl_bhs.exit35

do_sqrshl_bhs.exit35:                             ; preds = %do_sqrshl_bhs.exit31, %bb.u, %bb.w, %bb.x, %bb.y
  %.3.i33 = phi i32 [ %i.bi, %bb.y ], [ 0, %bb.x ], [ %i.bc, %bb.u ], [ %i.be, %bb.w ], [ 0, %do_sqrshl_bhs.exit31 ]
  %.sroa.7.0.insert.ext = shl i32 %.3.i33, 24
  %.sroa.6.0.insert.ext = shl nsw i32 %.3.i29, 16
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.ext, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.ext = shl nsw i32 %.3.i25, 8
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.ext = and i32 %.3.i, 255
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqrshl_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.017 = phi i64 [ 0, %bb.a ], [ %i.ac, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %i.k = sext i8 %i.j to i32                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.017
  %i.m = load i8, ptr %i.l, align 1               ; 4 uses
  %i.n = sext i8 %i.m to i32                      ; 2 uses
  %.not.i = icmp sgt i8 %i.m, -8
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i8 %i.m, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i32 %i.n, -1
  %i.q = ashr i32 %i.k, %i.p                      ; 2 uses
  %i.r = ashr i32 %i.q, 1
  %i.s = and i32 %i.q, 1
  %i.t = add nsw i32 %i.r, %i.s
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp samesign ult i8 %i.m, 8
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = shl nsw i32 %i.k, %i.n                   ; 2 uses
  %i.w = add nsw i32 %i.v, 128
  %.not = icmp ult i32 %i.w, 256
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.j, 0
  br i1 %i.x, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.h, align 4
  %i.y = icmp sgt i8 %i.j, -1
  %i.z = select i1 %i.y, i32 127, i32 128
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ %i.z, %bb.h ], [ 0, %bb.g ], [ %i.t, %bb.d ], [ %i.v, %bb.f ], [ 0, %bb.b ]
  %i.aa = trunc i32 %.3.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.017
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = add nuw nsw i64 %.017, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.g
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !319

bb.i:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ad = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ad, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ae = add nuw nsw i32 %i.e, 8
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %0, i64 %i.g
  %i.ah = xor i64 %i.g, -1
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = and i64 %i.ai, -8
  %i.ak = add nsw i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ak, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrshl_s16(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %1, 16                          ; 2 uses
  %i.a = ashr exact i32 %sext, 16                 ; 3 uses
  %sext11 = shl i32 %2, 24
  %i.b = ashr exact i32 %sext11, 24               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12656 ; 2 uses
  %.not.i = icmp sgt i32 %i.b, -16
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = xor i32 %i.b, -1
  %i.f = ashr i32 %i.a, %i.e                      ; 2 uses
  %i.g = ashr i32 %i.f, 1
  %i.h = and i32 %i.f, 1
  %i.i = add nsw i32 %i.g, %i.h
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i32 %i.b, 16
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = shl nsw i32 %i.a, %i.b                   ; 2 uses
  %i.l = add nsw i32 %i.k, 32768
  %.not = icmp ult i32 %i.l, 65536
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %sext, 0
  br i1 %i.m, label %do_sqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.c, align 4
  %i.n = icmp sgt i32 %i.a, -1
  %i.o = select i1 %i.n, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ %i.o, %bb.g ], [ 0, %bb.f ], [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ 0, %bb.a ]
  %i.p = ashr i32 %1, 16                          ; 4 uses
  %i.q = shl i32 %2, 8
  %i.r = ashr i32 %i.q, 24                        ; 5 uses
  %.not.i14 = icmp sgt i32 %i.r, -16
  br i1 %.not.i14, label %bb.h, label %do_sqrshl_bhs.exit17

bb.h:                                             ; preds = %do_sqrshl_bhs.exit
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = xor i32 %i.r, -1
  %i.u = ashr i32 %i.p, %i.t                      ; 2 uses
  %i.v = ashr i32 %i.u, 1
  %i.w = and i32 %i.u, 1
  %i.x = add nsw i32 %i.v, %i.w
  br label %do_sqrshl_bhs.exit17

bb.j:                                             ; preds = %bb.h
  %i.y = icmp samesign ult i32 %i.r, 16
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = shl nsw i32 %i.p, %i.r                   ; 2 uses
  %i.aa = add nsw i32 %i.z, 32768
  %.not18 = icmp ult i32 %i.aa, 65536
  br i1 %.not18, label %do_sqrshl_bhs.exit17, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ab = icmp eq i32 %i.p, 0
  br i1 %i.ab, label %do_sqrshl_bhs.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 1, ptr %i.c, align 4
  %i.ac = icmp sgt i32 %i.p, -1
  %i.ad = select i1 %i.ac, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit17

do_sqrshl_bhs.exit17:                             ; preds = %do_sqrshl_bhs.exit, %bb.i, %bb.k, %bb.l, %bb.m
  %.3.i15 = phi i32 [ %i.ad, %bb.m ], [ 0, %bb.l ], [ %i.x, %bb.i ], [ %i.z, %bb.k ], [ 0, %do_sqrshl_bhs.exit ]
  %.sroa.5.0.insert.ext = shl i32 %.3.i15, 16
  %.sroa.03.0.insert.ext = and i32 %.3.i, 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqrshl_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ae, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.016
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = sext i16 %i.k to i32                     ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.016
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %sext = shl i32 %i.o, 24
  %i.p = ashr exact i32 %sext, 24                 ; 5 uses
  %.not.i = icmp sgt i32 %i.p, -16
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = xor i32 %i.p, -1
  %i.s = ashr i32 %i.l, %i.r                      ; 2 uses
  %i.t = ashr i32 %i.s, 1
  %i.u = and i32 %i.s, 1
  %i.v = add nsw i32 %i.t, %i.u
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp samesign ult i32 %i.p, 16
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nsw i32 %i.l, %i.p                   ; 2 uses
  %i.y = add nsw i32 %i.x, 32768
  %.not = icmp ult i32 %i.y, 65536
  br i1 %.not, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i16 %i.k, 0
  br i1 %i.z, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  %i.aa = icmp sgt i16 %i.k, -1
  %i.ab = select i1 %i.aa, i32 32767, i32 32768
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ], [ %i.v, %bb.d ], [ %i.x, %bb.f ], [ 0, %bb.b ]
  %i.ac = trunc i32 %.3.i to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.016
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !320

bb.i:                                             ; preds = %do_sqrshl_bhs.exit
  %i.af = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.af, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ag = add nuw nsw i32 %i.e, 8
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %0, i64 %i.g
  %i.aj = xor i64 %i.g, -1
  %i.ak = add nsw i64 %i.aj, %i.ah
  %i.al = and i64 %i.ak, -8
  %i.am = add nsw i64 %i.al, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.am, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqrshl_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_bhs.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ac, %do_sqrshl_bhs.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.016
  %i.k = load i32, ptr %i.j, align 4              ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.016
  %i.m = load i32, ptr %i.l, align 4
  %sext = shl i32 %i.m, 24
  %i.n = ashr exact i32 %sext, 24                 ; 6 uses
  %.not.i = icmp sgt i32 %i.n, -32
  br i1 %.not.i, label %bb.c, label %do_sqrshl_bhs.exit

bb.c:                                             ; preds = %bb.b
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = xor i32 %i.n, -1
  %i.q = ashr i32 %i.k, %i.p                      ; 2 uses
  %i.r = ashr i32 %i.q, 1
  %i.s = and i32 %i.q, 1
  %i.t = add nsw i32 %i.r, %i.s
  br label %do_sqrshl_bhs.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp samesign ult i32 %i.n, 32
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = shl i32 %i.k, %i.n                       ; 2 uses
  %i.w = ashr exact i32 %i.v, %i.n
  %i.x = icmp eq i32 %i.w, %i.k
  br i1 %i.x, label %do_sqrshl_bhs.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i32 %i.k, 0
  br i1 %i.y, label %do_sqrshl_bhs.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  %i.z = icmp sgt i32 %i.k, -1
  %i.aa = select i1 %i.z, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.3.i = phi i32 [ %i.aa, %bb.h ], [ 0, %bb.g ], [ %i.t, %bb.d ], [ %i.v, %bb.f ], [ 0, %bb.b ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.016
  store i32 %.3.i, ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !321

bb.i:                                             ; preds = %do_sqrshl_bhs.exit
  %i.ad = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ad, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ae = add nuw nsw i32 %i.e, 8
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %0, i64 %i.g
  %i.ah = xor i64 %i.g, -1
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = and i64 %i.ai, -8
  %i.ak = add nsw i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.ak, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_neon_sqrshl_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12656
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %do_sqrshl_d.exit
  %.016 = phi i64 [ 0, %bb.a ], [ %i.ad, %do_sqrshl_d.exit ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.016
  %i.k = load i64, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.016
  %i.m = load i64, ptr %i.l, align 8
  %sext = shl i64 %i.m, 56
  %i.n = ashr exact i64 %sext, 56                 ; 6 uses
  %i.o = icmp slt i64 %i.n, -63
  br i1 %i.o, label %do_sqrshl_d.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i64 %i.n, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = xor i64 %i.n, -1
  %i.r = ashr i64 %i.k, %i.q                      ; 2 uses
  %i.s = ashr i64 %i.r, 1
  %i.t = and i64 %i.r, 1
  %i.u = add nsw i64 %i.s, %i.t
  br label %do_sqrshl_d.exit

bb.e:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i64 %i.n, 64
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl i64 %i.k, %i.n                       ; 2 uses
  %i.x = ashr exact i64 %i.w, %i.n
  %i.y = icmp eq i64 %i.x, %i.k
  br i1 %i.y, label %do_sqrshl_d.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.z = icmp eq i64 %i.k, 0
  br i1 %i.z, label %do_sqrshl_d.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 1, ptr %i.i, align 4
  %i.aa = icmp slt i64 %i.k, 0
  %i.ab = select i1 %i.aa, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.ab, %bb.h ], [ 0, %bb.g ], [ %i.u, %bb.d ], [ %i.w, %bb.f ], [ 0, %bb.b ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.016
  store i64 %.1.i, ptr %i.ac, align 8
  %i.ad = add nuw nsw i64 %.016, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !322

bb.i:                                             ; preds = %do_sqrshl_d.exit
  %i.ae = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ae, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.af = add nuw nsw i32 %i.e, 8
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr i8, ptr %0, i64 %i.g
  %i.ai = xor i64 %i.g, -1
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = and i64 %i.aj, -8
  %i.al = add nsw i64 %i.ak, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ah, i8 0, i64 %i.al, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.i, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i32 @helper_neon_qrshl_s32(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i32 %2, 24
  %i.a = ashr exact i32 %sext, 24                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %.not.i = icmp sgt i32 %i.a, -32
  br i1 %.not.i, label %bb.b, label %do_sqrshl_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i32 %i.a, -1
  %i.e = ashr i32 %1, %i.d                        ; 2 uses
  %i.f = ashr i32 %i.e, 1
  %i.g = and i32 %i.e, 1
  %i.h = add nsw i32 %i.f, %i.g
  br label %do_sqrshl_bhs.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i32 %i.a, 32
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %1, %i.a                         ; 2 uses
  %i.k = ashr exact i32 %i.j, %i.a
  %i.l = icmp eq i32 %i.k, %1
  br i1 %i.l, label %do_sqrshl_bhs.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %1, 0
  br i1 %i.m, label %do_sqrshl_bhs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.b, align 4
  %i.n = icmp sgt i32 %1, -1
  %i.o = select i1 %i.n, i32 2147483647, i32 -2147483648
  br label %do_sqrshl_bhs.exit

do_sqrshl_bhs.exit:                               ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.3.i = phi i32 [ %i.o, %bb.g ], [ 0, %bb.f ], [ %i.h, %bb.c ], [ %i.j, %bb.e ], [ 0, %bb.a ]
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local i64 @helper_neon_qrshl_s64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %sext = shl i64 %2, 56
  %i.a = ashr exact i64 %sext, 56                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12656
  %i.c = icmp slt i64 %i.a, -63
  br i1 %i.c, label %do_sqrshl_d.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = xor i64 %i.a, -1
  %i.f = ashr i64 %1, %i.e                        ; 2 uses
  %i.g = ashr i64 %i.f, 1
  %i.h = and i64 %i.f, 1
  %i.i = add nsw i64 %i.g, %i.h
  br label %do_sqrshl_d.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp samesign ult i64 %i.a, 64
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = shl i64 %1, %i.a                         ; 2 uses
  %i.l = ashr exact i64 %i.k, %i.a
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %do_sqrshl_d.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %do_sqrshl_d.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 1, ptr %i.b, align 4
  %i.o = icmp slt i64 %1, 0
  %i.p = select i1 %i.o, i64 -9223372036854775808, i64 9223372036854775807
  br label %do_sqrshl_d.exit

do_sqrshl_d.exit:                                 ; preds = %bb.a, %bb.c, %bb.e, %bb.f, %bb.g
  %.1.i = phi i64 [ %i.p, %bb.g ], [ 0, %bb.f ], [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ 0, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_add_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %1, %0
  %i.b = and i32 %i.a, -2139062144
  %i.c = and i32 %0, 2139062143
  %i.d = and i32 %1, 2139062143
  %i.e = add nuw i32 %i.d, %i.c
  %i.f = xor i32 %i.e, %i.b
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_add_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %1, %0
  %i.b = and i32 %i.a, -2147450880
  %i.c = and i32 %0, 2147450879
  %i.d = and i32 %1, 2147450879
  %i.e = add nuw i32 %i.d, %i.c
  %i.f = xor i32 %i.e, %i.b
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_sub_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.c = and <4 x i32> %i.b, <i32 16711680, i32 -1, i32 -16777216, i32 65280>
  %i.d = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.f = sub <4 x i32> %i.e, %i.c
  %i.g = and <4 x i32> %i.f, <i32 16711680, i32 255, i32 -16777216, i32 65280>
  %i.h = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.g)
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_sub_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.55.0.extract.shift = and i32 %1, -65536
  %i.a = sub i32 %0, %1
  %.sroa.57.0.extract.shift10 = sub i32 %0, %.sroa.55.0.extract.shift
  %.sroa.5.0.insert.ext = and i32 %.sroa.57.0.extract.shift10, -65536
  %.sroa.03.0.insert.ext = and i32 %i.a, 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_mul_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.59.0.extract.shift = and i32 %0, 65280
  %.sroa.610.0.extract.shift = and i32 %0, 16711680
  %.sroa.711.0.extract.shift = and i32 %0, -16777216
  %.sroa.55.0.extract.shift = lshr i32 %1, 8
  %.sroa.66.0.extract.shift = lshr i32 %1, 16
  %.sroa.77.0.extract.shift = lshr i32 %1, 24
  %i.a = mul i32 %1, %0
  %.sroa.7.0.insert.ext = mul i32 %.sroa.711.0.extract.shift, %.sroa.77.0.extract.shift
  %.sroa.6.0.insert.ext = mul i32 %.sroa.610.0.extract.shift, %.sroa.66.0.extract.shift
  %.sroa.6.0.insert.shift = and i32 %.sroa.6.0.insert.ext, 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.shift, %.sroa.7.0.insert.ext
  %.sroa.5.0.insert.ext = mul i32 %.sroa.59.0.extract.shift, %.sroa.55.0.extract.shift
  %.sroa.5.0.insert.shift = and i32 %.sroa.5.0.insert.ext, 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.03.0.insert.ext = and i32 %i.a, 255
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i32 @helper_neon_mul_u16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.57.0.extract.shift = and i32 %0, -65536
  %.sroa.55.0.extract.shift = lshr i32 %1, 16
  %i.a = mul i32 %1, %0
  %.sroa.5.0.insert.ext = mul i32 %.sroa.57.0.extract.shift, %.sroa.55.0.extract.shift
  %.sroa.03.0.insert.ext = and i32 %i.a, 65535
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.ext, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 -16777216, 16777216) i32 @helper_neon_tst_u8(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, %0                           ; 4 uses
  %i.b = and i32 %i.a, 255
  %.not.not = icmp eq i32 %i.b, 0
  %i.c = and i32 %i.a, 65280
  %.not14.not = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.a, 16711680
  %.not15.not = icmp eq i32 %i.d, 0
  %.not17 = icmp ugt i32 %i.a, 16777215
  %.sroa.7.0.insert.ext = select i1 %.not17, i32 -16777216, i32 0
  %.sroa.6.0.insert.ext = select i1 %.not15.not, i32 0, i32 16711680
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.ext, %.sroa.7.0.insert.ext
  %.sroa.5.0.insert.ext = select i1 %.not14.not, i32 0, i32 65280
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.ext
  %.sroa.03.0.insert.ext = select i1 %.not.not, i32 0, i32 255
  %.sroa.03.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.03.0.insert.ext
end_hunk_6
