inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@helper_gvec_urecpe_s:bb.a
clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_recpe_u32(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_ursqrte_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.012 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ]   ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.012
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @helper_rsqrte_u32(i32 noundef %i.j) #18
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012
  store i32 %i.k, ptr %i.l, align 4
  %i.m = add nuw nsw i64 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !1150

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.n, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.o = add nuw nsw i32 %i.e, 8
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr i8, ptr %0, i64 %i.g
  %i.r = xor i64 %i.g, -1
  %i.s = add nsw i64 %i.r, %i.p
  %i.t = and i64 %i.s, -8
  %i.u = add nsw i64 %i.t, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.u, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_rsqrte_u32(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_1b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 5 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  %i.h = lshr i32 %3, 11
  %i.i = and i32 %i.h, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1151 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056
  %i.l = mul nuw nsw i32 %i.i, %.v.i
  br label %extractn.exit.i

do_lut_b.exit:                                    ; preds = %extractn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.n = add i32 %i.l, %i.m
  %i.o = shl i32 %i.n, 1                          ; 2 uses
  %i.p = lshr i32 %i.o, 6
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.q
  %i.s = and i32 %i.o, 62
  %i.t = load i64, ptr %i.r, align 8
  %i.u = zext nneg i32 %i.s to i64
  %i.v = lshr i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = shl i32 %i.w, 5                          ; 2 uses
  %i.y = lshr i32 %i.x, 6
  %i.z = and i32 %i.y, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.aa
  %i.ac = and i32 %i.x, 32
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = lshr i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.ag, ptr %i.ah, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %exitcond.not.i, label %do_lut_b.exit, label %extractn.exit.i, !llvm.loop !1155
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_1h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 5 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr i32 %3, 11
  %i.i = lshr exact i32 %.v.i, 1                  ; 2 uses
  %i.j = and i32 %i.h, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1156 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 13056
  %i.m = zext nneg i32 %i.i to i64
  %i.n = mul nuw nsw i32 %i.j, %i.i
  br label %extractn.exit.i

do_lut_h.exit:                                    ; preds = %extractn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.p = add i32 %i.n, %i.o
  %i.q = shl i32 %i.p, 1                          ; 2 uses
  %i.r = lshr i32 %i.q, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.s
  %i.u = and i32 %i.q, 62
  %i.v = load i64, ptr %i.t, align 8
  %i.w = zext nneg i32 %i.u to i64
  %i.x = lshr i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = shl i32 %i.y, 5                          ; 2 uses
  %i.aa = lshr i32 %i.z, 6
  %i.ab = and i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ac
  %i.ae = and i32 %i.z, 32
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = lshr i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.ai, ptr %i.aj, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %do_lut_h.exit, label %extractn.exit.i, !llvm.loop !1160
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_1s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
.new:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 6 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr i32 %3, 11
  %i.i = and i32 %i.h, 15
  %i.j = lshr exact i32 %.v.i, 2                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1161 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 2 uses
  %i.m = mul nuw nsw i32 %i.j, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = zext nneg i32 %i.j to i64
  br label %extractn.exit.i

do_lut_s.exit:                                    ; preds = %extractn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %extractn.exit.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %extractn.exit.i ]
  %i.p = add nuw nsw i64 %indvars.iv.i, %i.n      ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = lshr i64 %i.p, 5
  %i.s = and i64 %i.r, 67108863
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.s
  %i.u = and i64 %i.q, 62
  %i.v = load i64, ptr %i.t, align 8
  %i.w = lshr i64 %i.v, %i.u
  %i.x = and i64 %i.w, 3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.z, ptr %i.aa, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = add nuw nsw i64 %indvars.iv.next.i, %i.n ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = and i64 %i.ad, 67108863
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae
  %i.ag = and i64 %i.ac, 62
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = lshr i64 %i.ah, %i.ag
  %i.aj = and i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  store i32 %i.al, ptr %i.am, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.o
  br i1 %niter.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i, !llvm.loop !1165
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_2b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 6 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 3 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = and i32 %3, 1024
  %.not = icmp eq i32 %i.h, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.i = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1166 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 2 uses
  %i.k = lshr i32 %3, 10
  %i.l = and i32 %i.k, 2                          ; 2 uses
  %i.m = mul nuw nsw i32 %i.l, %.v.i
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.n = select i1 %.not, i64 256, i64 2048
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.p = or disjoint i32 %i.l, 1
  %i.q = mul nuw nsw i32 %i.p, %.v.i
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.s = add i32 %i.q, %i.r
  %i.t = shl i32 %i.s, 1                          ; 2 uses
  %i.u = lshr i32 %i.t, 6
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.v
  %i.x = and i32 %i.t, 62
  %i.y = load i64, ptr %i.w, align 8
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = lshr i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = shl i32 %i.ab, 5                        ; 2 uses
  %i.ad = lshr i32 %i.ac, 6
  %i.ae = and i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.af
  %i.ah = and i32 %i.ac, 32
  %i.ai = load i64, ptr %i.ag, align 8
  %i.aj = zext nneg i32 %i.ah to i64
  %i.ak = lshr i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i.1
  store i8 %i.al, ptr %i.am, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.g
  br i1 %exitcond.not.i.1, label %do_lut_b.exit, label %extractn.exit.i.1, !llvm.loop !1155

do_lut_b.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ao = add i32 %i.m, %i.an
  %i.ap = shl i32 %i.ao, 1                        ; 2 uses
  %i.aq = lshr i32 %i.ap, 6
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.at = and i32 %i.ap, 62
  %i.au = load i64, ptr %i.as, align 8
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = lshr i64 %i.au, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = shl i32 %i.ax, 5                        ; 2 uses
  %i.az = lshr i32 %i.ay, 6
  %i.ba = and i32 %i.az, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bb
  %i.bd = and i32 %i.ay, 32
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = lshr i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.bh, ptr %i.bi, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !1155
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 6 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.i, 1                  ; 3 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1170 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 2 uses
  %i.l = lshr i32 %3, 10
  %i.m = and i32 %i.l, 6                          ; 2 uses
  %i.n = zext nneg i32 %i.h to i64                ; 2 uses
  %i.o = mul nuw nsw i32 %i.m, %i.h
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.p = select i1 %.not, i64 256, i64 2048
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = or disjoint i32 %i.m, 1
  %i.s = mul nuw nsw i32 %i.r, %i.h
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.u = add i32 %i.s, %i.t
  %i.v = shl i32 %i.u, 1                          ; 2 uses
  %i.w = lshr i32 %i.v, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x
  %i.z = and i32 %i.v, 62
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = lshr i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = shl i32 %i.ad, 5                        ; 2 uses
  %i.af = lshr i32 %i.ae, 6
  %i.ag = and i32 %i.af, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ah
  %i.aj = and i32 %i.ae, 32
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = lshr i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.i.1
  store i16 %i.an, ptr %i.ao, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.n
  br i1 %exitcond.not.i.1, label %do_lut_h.exit, label %extractn.exit.i.1, !llvm.loop !1160

do_lut_h.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aq = add i32 %i.o, %i.ap
  %i.ar = shl i32 %i.aq, 1                        ; 2 uses
  %i.as = lshr i32 %i.ar, 6
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.at
  %i.av = and i32 %i.ar, 62
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = lshr i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = shl i32 %i.az, 5                        ; 2 uses
  %i.bb = lshr i32 %i.ba, 6
  %i.bc = and i32 %i.bb, 1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bd
  %i.bf = and i32 %i.ba, 32
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = lshr i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i16
end_hunk_0
begin_hunk_1_@helper_sme2_luti2_4s:.new
  %i.cl = shl nuw nsw i64 %i.ck, 1
  %i.cm = lshr i64 %i.ck, 5
  %i.cn = and i64 %i.cm, 67108863
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cn
  %i.cp = and i64 %i.cl, 62
  %i.cq = load i64, ptr %i.co, align 8
  %i.cr = lshr i64 %i.cq, %i.cp
  %i.cs = and i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.3
  store i32 %i.cu, ptr %i.cv, align 4
  %indvars.iv.next.i.3.1 = add nuw nsw i64 %indvars.iv.i.3, 2
  %niter38.next.1 = add nuw nsw i64 %niter38, 2   ; 2 uses
  %niter38.ncmp.1 = icmp eq i64 %niter38.next.1, %i.o
  br i1 %niter38.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i.3, !llvm.loop !1165

do_lut_s.exit:                                    ; preds = %extractn.exit.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.116, %extractn.exit.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %extractn.exit.i ]
  %i.cw = add nuw nsw i64 %indvars.iv.i, %i.p     ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cw, 1
  %i.cy = lshr i64 %i.cw, 5
  %i.cz = and i64 %i.cy, 67108863
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cz
  %i.db = and i64 %i.cx, 60
  %i.dc = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dd = lshr i64 %i.dc, %i.db
  %i.de = and i64 %i.dd, 3
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.dg, ptr %i.dh, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.di = add nuw nsw i64 %indvars.iv.next.i, %i.p
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = and i64 %i.dj, 62
  %i.dl = lshr i64 %i.dc, %i.dk
  %i.dm = and i64 %i.dl, 3
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  store i32 %i.do, ptr %i.dp, align 4
  %indvars.iv.next.i.116 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.o
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %extractn.exit.i, !llvm.loop !1165
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_1b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 5 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.h = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1190 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 13056
  %i.j = and i32 %3, 2048
  %.not14 = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not14, i32 0, i32 %.v.i
  br label %extractn.exit.i

do_lut_b.exit:                                    ; preds = %extractn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.m = add i32 %i.k, %i.l
  %i.n = shl i32 %i.m, 2                          ; 2 uses
  %i.o = lshr i32 %i.n, 6
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.p
  %i.r = and i32 %i.n, 60
  %i.s = load i64, ptr %i.q, align 8
  %i.t = zext nneg i32 %i.r to i64
  %i.u = lshr i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = shl i32 %i.v, 5                          ; 2 uses
  %i.x = lshr i32 %i.w, 6
  %i.y = and i32 %i.x, 7
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.z
  %i.ab = and i32 %i.w, 32
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = lshr i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.af, ptr %i.ag, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %exitcond.not.i, label %do_lut_b.exit, label %extractn.exit.i, !llvm.loop !1155
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_1h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 5 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr i32 %3, 11
  %i.i = lshr exact i32 %.v.i, 1                  ; 2 uses
  %i.j = and i32 %i.h, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1194 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 13056
  %i.m = zext nneg i32 %i.i to i64
  %i.n = mul nuw nsw i32 %i.j, %i.i
  br label %extractn.exit.i

do_lut_h.exit:                                    ; preds = %extractn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.p = add i32 %i.n, %i.o
  %i.q = shl i32 %i.p, 2                          ; 2 uses
  %i.r = lshr i32 %i.q, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.s
  %i.u = and i32 %i.q, 60
  %i.v = load i64, ptr %i.t, align 8
  %i.w = zext nneg i32 %i.u to i64
  %i.x = lshr i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = shl i32 %i.y, 5                          ; 2 uses
  %i.aa = lshr i32 %i.z, 6
  %i.ab = and i32 %i.aa, 7
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ac
  %i.ae = and i32 %i.z, 32
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = lshr i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.ai, ptr %i.aj, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.m
  br i1 %exitcond.not.i, label %do_lut_h.exit, label %extractn.exit.i, !llvm.loop !1160
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_1s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
.new:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 6 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr i32 %3, 11
  %i.i = lshr exact i32 %.v.i, 2                  ; 2 uses
  %i.j = and i32 %i.h, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1198 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 2 uses
  %i.m = mul nuw nsw i32 %i.i, %i.j
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = zext nneg i32 %i.i to i64
  br label %extractn.exit.i

do_lut_s.exit:                                    ; preds = %extractn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %extractn.exit.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %extractn.exit.i ]
  %i.p = add nuw nsw i64 %indvars.iv.i, %i.n      ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = lshr i64 %i.p, 4
  %i.s = and i64 %i.r, 67108863
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.s
  %i.u = and i64 %i.q, 60
  %i.v = load i64, ptr %i.t, align 8
  %i.w = lshr i64 %i.v, %i.u
  %i.x = and i64 %i.w, 15
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.z, ptr %i.aa, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = add nuw nsw i64 %indvars.iv.next.i, %i.n ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = lshr i64 %i.ab, 4
  %i.ae = and i64 %i.ad, 67108863
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ae
  %i.ag = and i64 %i.ac, 60
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = lshr i64 %i.ah, %i.ag
  %i.aj = and i64 %i.ai, 15
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  store i32 %i.al, ptr %i.am, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.o
  br i1 %niter.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i, !llvm.loop !1165
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_2b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 6 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = and i32 %3, 1024
  %.not = icmp eq i32 %i.h, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.i = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1202 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 2 uses
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.k = select i1 %.not, i64 256, i64 2048
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.n = add i32 %.v.i, %i.m
  %i.o = shl i32 %i.n, 2                          ; 2 uses
  %i.p = lshr i32 %i.o, 6
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.q
  %i.s = and i32 %i.o, 60
  %i.t = load i64, ptr %i.r, align 8
  %i.u = zext nneg i32 %i.s to i64
  %i.v = lshr i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = shl i32 %i.w, 5                          ; 2 uses
  %i.y = lshr i32 %i.x, 6
  %i.z = and i32 %i.y, 7
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aa
  %i.ac = and i32 %i.x, 32
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = lshr i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i.1
  store i8 %i.ag, ptr %i.ah, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.g
  br i1 %exitcond.not.i.1, label %do_lut_b.exit, label %extractn.exit.i.1, !llvm.loop !1155

do_lut_b.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aj = shl i32 %i.ai, 2                        ; 2 uses
  %i.ak = lshr i32 %i.aj, 6
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.al
  %i.an = and i32 %i.aj, 60
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = zext nneg i32 %i.an to i64
  %i.aq = lshr i64 %i.ao, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = shl i32 %i.ar, 5                        ; 2 uses
  %i.at = lshr i32 %i.as, 6
  %i.au = and i32 %i.at, 7
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.av
  %i.ax = and i32 %i.as, 32
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = lshr i64 %i.ay, %i.az
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.bb, ptr %i.bc, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !1155
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 6 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.i, 1                  ; 3 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !748
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1206 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 2 uses
  %i.l = lshr i32 %3, 10
  %i.m = and i32 %i.l, 2                          ; 2 uses
  %i.n = zext nneg i32 %i.h to i64                ; 2 uses
  %i.o = mul nuw nsw i32 %i.m, %i.h
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.p = select i1 %.not, i64 256, i64 2048
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = or disjoint i32 %i.m, 1
  %i.s = mul nuw nsw i32 %i.r, %i.h
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.u = add i32 %i.s, %i.t
  %i.v = shl i32 %i.u, 2                          ; 2 uses
  %i.w = lshr i32 %i.v, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x
  %i.z = and i32 %i.v, 60
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = lshr i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = shl i32 %i.ad, 5                        ; 2 uses
  %i.af = lshr i32 %i.ae, 6
  %i.ag = and i32 %i.af, 7
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ah
  %i.aj = and i32 %i.ae, 32
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = lshr i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %indvars.iv.i.1
  store i16 %i.an, ptr %i.ao, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.n
  br i1 %exitcond.not.i.1, label %do_lut_h.exit, label %extractn.exit.i.1, !llvm.loop !1160

do_lut_h.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aq = add i32 %i.o, %i.ap
  %i.ar = shl i32 %i.aq, 2                        ; 2 uses
  %i.as = lshr i32 %i.ar, 6
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.at
  %i.av = and i32 %i.ar, 60
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = lshr i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = shl i32 %i.az, 5                        ; 2 uses
  %i.bb = lshr i32 %i.ba, 6
  %i.bc = and i32 %i.bb, 7
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bd
  %i.bf = and i32 %i.ba, 32
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = lshr i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.bj, ptr %i.bk, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !1160
}
end_hunk_1
