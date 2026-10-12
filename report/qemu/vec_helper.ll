Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@helper_gvec_rbit_b
define dso_local void @helper_gvec_rbit_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  %i.i = ptrtoaddr ptr %0 to i64
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.h, 268435454                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load15 = load <16 x i8>, ptr %i.l, align 8
  %i.m = tail call <16 x i8> @llvm.bitreverse.v16i8(<16 x i8> %wide.load15)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  store <16 x i8> %i.m, ptr %i.n, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !1150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %.012.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.012 = phi i64 [ %i.u, %scalar.ph ], [ %.012.ph, %scalar.ph.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.012
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call i64 @llvm.bswap.i64(i64 %i.q)
  %i.s = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.r)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.012
  store i64 %i.s, ptr %i.t, align 8
  %i.u = add nuw nsw i64 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !1151

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.v = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.v, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.w = add nuw nsw i32 %i.e, 8
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr i8, ptr %0, i64 %i.g
  %i.z = xor i64 %i.g, -1
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = and i64 %i.aa, -8
  %i.ac = add nsw i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ac, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_urecpe_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
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
  %i.k = tail call i32 @helper_recpe_u32(i32 noundef %i.j) #18
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012
  store i32 %i.k, ptr %i.l, align 4
  %i.m = add nuw nsw i64 %.012, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !1152

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
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !1153

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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1157 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056
  %i.l = mul nuw nsw i32 %i.i, %.v.i
  br label %extractn.exit.i

do_lut_b.exit:                                    ; preds = %extractn.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.n = add nuw i32 %i.l, %i.m
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
  br i1 %exitcond.not.i, label %do_lut_b.exit, label %extractn.exit.i, !llvm.loop !4
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1161 ; 0 uses
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
  %i.p = add nuw i32 %i.n, %i.o
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
  br i1 %exitcond.not.i, label %do_lut_h.exit, label %extractn.exit.i, !llvm.loop !5
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1165 ; 0 uses
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
  br i1 %niter.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i, !llvm.loop !6
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.i = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1169 ; 0 uses
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
  %i.s = add nuw i32 %i.q, %i.r
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
  br i1 %exitcond.not.i.1, label %do_lut_b.exit, label %extractn.exit.i.1, !llvm.loop !4

do_lut_b.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ao = add nuw i32 %i.m, %i.an
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
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !4
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1173 ; 0 uses
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
  %i.u = add nuw i32 %i.s, %i.t
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
  br i1 %exitcond.not.i.1, label %do_lut_h.exit, label %extractn.exit.i.1, !llvm.loop !5

do_lut_h.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aq = add nuw i32 %i.o, %i.ap
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
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.bj, ptr %i.bk, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !5
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_2s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
.new:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 7 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.i, 2                  ; 2 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1177 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 4 uses
  %i.l = lshr i32 %3, 10
  %i.m = and i32 %i.l, 14
  %i.n = mul nuw nsw i32 %i.h, %i.m
  %i.o = zext nneg i32 %i.h to i64                ; 3 uses
  %i.p = zext nneg i32 %i.n to i64                ; 3 uses
  br label %extractn.exit.i

.unr-lcssa:                                       ; preds = %extractn.exit.i
  %i.q = select i1 %.not, i64 256, i64 2048
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.s = add nuw nsw i64 %i.o, %i.p               ; 2 uses
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %.unr-lcssa
  %indvars.iv.i.1 = phi i64 [ 0, %.unr-lcssa ], [ %indvars.iv.next.i.1.1, %extractn.exit.i.1 ] ; 4 uses
  %niter24 = phi i64 [ 0, %.unr-lcssa ], [ %niter24.next.1, %extractn.exit.i.1 ]
  %i.t = add nuw nsw i64 %i.s, %indvars.iv.i.1    ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = lshr i64 %i.t, 5
  %i.w = and i64 %i.v, 67108863
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.w
  %i.y = and i64 %i.u, 62
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = lshr i64 %i.z, %i.y
  %i.ab = and i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.1
  store i32 %i.ad, ptr %i.ae, align 4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i.1, 1 ; 2 uses
  %i.af = add nuw nsw i64 %i.s, %indvars.iv.next.i.1 ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 1
  %i.ah = lshr i64 %i.af, 5
  %i.ai = and i64 %i.ah, 67108863
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ai
  %i.ak = and i64 %i.ag, 62
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = lshr i64 %i.al, %i.ak
  %i.an = and i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.1
  store i32 %i.ap, ptr %i.aq, align 4
  %indvars.iv.next.i.1.1 = add nuw nsw i64 %indvars.iv.i.1, 2
  %niter24.next.1 = add nuw nsw i64 %niter24, 2   ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %i.o
  br i1 %niter24.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i.1, !llvm.loop !6

do_lut_s.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.116, %extractn.exit.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %extractn.exit.i ]
  %i.ar = add nuw nsw i64 %indvars.iv.i, %i.p     ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = lshr i64 %i.ar, 5
  %i.au = and i64 %i.at, 67108863
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au
  %i.aw = and i64 %i.as, 60
  %i.ax = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ay = lshr i64 %i.ax, %i.aw
  %i.az = and i64 %i.ay, 3
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.bb, ptr %i.bc, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = add nuw nsw i64 %indvars.iv.next.i, %i.p
  %i.be = shl nuw nsw i64 %i.bd, 1
  %i.bf = and i64 %i.be, 62
  %i.bg = lshr i64 %i.ax, %i.bf
  %i.bh = and i64 %i.bg, 3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  store i32 %i.bj, ptr %i.bk, align 4
  %indvars.iv.next.i.116 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.o
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %extractn.exit.i, !llvm.loop !6
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_4b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 8 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 4 uses
  %i.g = zext nneg i32 %.v.i to i64               ; 5 uses
  %i.h = and i32 %3, 1024
  %.not = icmp eq i32 %i.h, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.i = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1181 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 4 uses
  %i.k = select i1 %.not, i64 8, i64 10           ; 3 uses
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.l = shl nuw nsw i64 1, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.o = add nuw i32 %.v.i, %i.n
  %i.p = shl i32 %i.o, 1                          ; 2 uses
  %i.q = lshr i32 %i.p, 6
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.r
  %i.t = and i32 %i.p, 62
  %i.u = load i64, ptr %i.s, align 8
  %i.v = zext nneg i32 %i.t to i64
  %i.w = lshr i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = shl i32 %i.x, 5                          ; 2 uses
  %i.z = lshr i32 %i.y, 6
  %i.aa = and i32 %i.z, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ab
  %i.ad = and i32 %i.y, 32
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = lshr i64 %i.ae, %i.af
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i.1
  store i8 %i.ah, ptr %i.ai, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.g
  br i1 %exitcond.not.i.1, label %bb.c, label %extractn.exit.i.1, !llvm.loop !4

bb.c:                                             ; preds = %extractn.exit.i.1
  %i.aj = shl nuw nsw i64 2, %i.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = shl nuw nsw i32 %.v.i, 2
  br label %extractn.exit.i.2

extractn.exit.i.2:                                ; preds = %extractn.exit.i.2, %bb.c
  %indvars.iv.i.2 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.2, %extractn.exit.i.2 ] ; 3 uses
  %i.am = trunc nuw nsw i64 %indvars.iv.i.2 to i32
  %i.an = shl nuw i32 %i.am, 1
  %i.ao = add i32 %i.al, %i.an                    ; 2 uses
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aq
  %i.as = and i32 %i.ao, 62
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = zext nneg i32 %i.as to i64
  %i.av = lshr i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = shl i32 %i.aw, 5                        ; 2 uses
  %i.ay = lshr i32 %i.ax, 6
  %i.az = and i32 %i.ay, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ba
  %i.bc = and i32 %i.ax, 32
  %i.bd = load i64, ptr %i.bb, align 8
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = lshr i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.i.2
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %i.g
  br i1 %exitcond.not.i.2, label %bb.d, label %extractn.exit.i.2, !llvm.loop !4

bb.d:                                             ; preds = %extractn.exit.i.2
  %i.bi = shl nuw nsw i64 3, %i.k
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %i.bk = mul nuw nsw i32 %.v.i, 3
  br label %extractn.exit.i.3

extractn.exit.i.3:                                ; preds = %extractn.exit.i.3, %bb.d
  %indvars.iv.i.3 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.3, %extractn.exit.i.3 ] ; 3 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv.i.3 to i32
  %i.bm = add nuw i32 %i.bk, %i.bl
  %i.bn = shl i32 %i.bm, 1                        ; 2 uses
  %i.bo = lshr i32 %i.bn, 6
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bp
  %i.br = and i32 %i.bn, 62
  %i.bs = load i64, ptr %i.bq, align 8
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = lshr i64 %i.bs, %i.bt
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = shl i32 %i.bv, 5                        ; 2 uses
  %i.bx = lshr i32 %i.bw, 6
  %i.by = and i32 %i.bx, 1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bz
  %i.cb = and i32 %i.bw, 32
  %i.cc = load i64, ptr %i.ca, align 8
  %i.cd = zext nneg i32 %i.cb to i64
  %i.ce = lshr i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.i.3
  store i8 %i.cf, ptr %i.cg, align 1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.g
  br i1 %exitcond.not.i.3, label %do_lut_b.exit, label %extractn.exit.i.3, !llvm.loop !4

do_lut_b.exit:                                    ; preds = %extractn.exit.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 4 uses
  %5 = shl nuw i64 %indvars.iv.i, 1
  %6 = lshr i64 %indvars.iv.i, 5
  %7 = and i64 %6, 134217727
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %7
  %8 = and i64 %5, 62
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = lshr i64 %i.ci, %8
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = shl i32 %i.ck, 5                        ; 2 uses
  %i.cm = lshr i32 %i.cl, 6
  %i.cn = and i32 %i.cm, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.co
  %i.cq = and i32 %i.cl, 32
  %i.cr = load i64, ptr %i.cp, align 8
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = lshr i64 %i.cr, %i.cs
  %i.cu = trunc i64 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.cu, ptr %i.cv, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !4
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_4h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 8 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.i, 1                  ; 5 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1185 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 4 uses
  %i.l = lshr i32 %3, 9
  %i.m = and i32 %i.l, 4                          ; 4 uses
  %i.n = zext nneg i32 %i.h to i64                ; 4 uses
  %i.o = select i1 %.not, i64 8, i64 10           ; 3 uses
  %i.p = mul nuw nsw i32 %i.m, %i.h
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.q = shl nuw nsw i64 1, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = or disjoint i32 %i.m, 1
  %i.t = mul nuw nsw i32 %i.s, %i.h
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.v = add nuw i32 %i.t, %i.u
  %i.w = shl i32 %i.v, 1                          ; 2 uses
  %i.x = lshr i32 %i.w, 6
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.y
  %i.aa = and i32 %i.w, 62
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = lshr i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = shl i32 %i.ae, 5                        ; 2 uses
  %i.ag = lshr i32 %i.af, 6
  %i.ah = and i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ai
  %i.ak = and i32 %i.af, 32
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = lshr i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv.i.1
  store i16 %i.ao, ptr %i.ap, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.n
  br i1 %exitcond.not.i.1, label %bb.c, label %extractn.exit.i.1, !llvm.loop !5

bb.c:                                             ; preds = %extractn.exit.i.1
  %i.aq = shl nuw nsw i64 2, %i.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = or disjoint i32 %i.m, 2
  %i.at = mul nuw nsw i32 %i.as, %i.h
  br label %extractn.exit.i.2

extractn.exit.i.2:                                ; preds = %extractn.exit.i.2, %bb.c
  %indvars.iv.i.2 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.2, %extractn.exit.i.2 ] ; 3 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.i.2 to i32
  %i.av = add nuw i32 %i.at, %i.au
  %i.aw = shl i32 %i.av, 1                        ; 2 uses
  %i.ax = lshr i32 %i.aw, 6
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ay
  %i.ba = and i32 %i.aw, 62
  %i.bb = load i64, ptr %i.az, align 8
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = lshr i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = shl i32 %i.be, 5                        ; 2 uses
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = and i32 %i.bg, 1
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bi
  %i.bk = and i32 %i.bf, 32
  %i.bl = load i64, ptr %i.bj, align 8
  %i.bm = zext nneg i32 %i.bk to i64
  %i.bn = lshr i64 %i.bl, %i.bm
  %i.bo = trunc i64 %i.bn to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.i.2
  store i16 %i.bo, ptr %i.bp, align 2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %i.n
  br i1 %exitcond.not.i.2, label %bb.d, label %extractn.exit.i.2, !llvm.loop !5

bb.d:                                             ; preds = %extractn.exit.i.2
  %i.bq = shl nuw nsw i64 3, %i.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq
  %i.bs = or disjoint i32 %i.m, 3
  %i.bt = mul nuw nsw i32 %i.bs, %i.h
  br label %extractn.exit.i.3

extractn.exit.i.3:                                ; preds = %extractn.exit.i.3, %bb.d
  %indvars.iv.i.3 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.3, %extractn.exit.i.3 ] ; 3 uses
  %i.bu = trunc nuw nsw i64 %indvars.iv.i.3 to i32
  %i.bv = add nuw i32 %i.bt, %i.bu
  %i.bw = shl i32 %i.bv, 1                        ; 2 uses
  %i.bx = lshr i32 %i.bw, 6
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.by
  %i.ca = and i32 %i.bw, 62
  %i.cb = load i64, ptr %i.bz, align 8
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = lshr i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = shl i32 %i.ce, 5                        ; 2 uses
  %i.cg = lshr i32 %i.cf, 6
  %i.ch = and i32 %i.cg, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ci
  %i.ck = and i32 %i.cf, 32
  %i.cl = load i64, ptr %i.cj, align 8
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = lshr i64 %i.cl, %i.cm
  %i.co = trunc i64 %i.cn to i16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv.i.3
  store i16 %i.co, ptr %i.cp, align 2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.n
  br i1 %exitcond.not.i.3, label %do_lut_h.exit, label %extractn.exit.i.3, !llvm.loop !5

do_lut_h.exit:                                    ; preds = %extractn.exit.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cr = add nuw i32 %i.p, %i.cq
  %i.cs = shl i32 %i.cr, 1                        ; 2 uses
  %i.ct = lshr i32 %i.cs, 6
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cu
  %i.cw = and i32 %i.cs, 62
  %i.cx = load i64, ptr %i.cv, align 8
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = lshr i64 %i.cx, %i.cy
  %i.da = trunc i64 %i.cz to i32
  %i.db = shl i32 %i.da, 5                        ; 2 uses
  %i.dc = lshr i32 %i.db, 6
  %i.dd = and i32 %i.dc, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.de
  %i.dg = and i32 %i.db, 32
  %i.dh = load i64, ptr %i.df, align 8
  %i.di = zext nneg i32 %i.dg to i64
  %i.dj = lshr i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.dk, ptr %i.dl, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !5
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti2_4s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
.new:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 11 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.i, 2                  ; 2 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1189 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 8 uses
  %i.l = lshr i32 %3, 9
  %i.m = and i32 %i.l, 12
  %i.n = mul nuw nsw i32 %i.h, %i.m
  %i.o = zext nneg i32 %i.h to i64                ; 7 uses
  %i.p = zext nneg i32 %i.n to i64                ; 5 uses
  %i.q = select i1 %.not, i64 8, i64 10           ; 3 uses
  br label %extractn.exit.i

.unr-lcssa:                                       ; preds = %extractn.exit.i
  %i.r = shl nuw nsw i64 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 2 uses
  %i.t = add nuw nsw i64 %i.o, %i.p               ; 2 uses
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %.unr-lcssa
  %indvars.iv.i.1 = phi i64 [ 0, %.unr-lcssa ], [ %indvars.iv.next.i.1.1, %extractn.exit.i.1 ] ; 4 uses
  %niter25 = phi i64 [ 0, %.unr-lcssa ], [ %niter25.next.1, %extractn.exit.i.1 ]
  %i.u = add nuw nsw i64 %i.t, %indvars.iv.i.1    ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = lshr i64 %i.u, 5
  %i.x = and i64 %i.w, 67108863
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x
  %i.z = and i64 %i.v, 62
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = lshr i64 %i.aa, %i.z
  %i.ac = and i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.1
  store i32 %i.ae, ptr %i.af, align 4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i.1, 1 ; 2 uses
  %i.ag = add nuw nsw i64 %i.t, %indvars.iv.next.i.1 ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = and i64 %i.ai, 67108863
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aj
  %i.al = and i64 %i.ah, 62
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = lshr i64 %i.am, %i.al
  %i.ao = and i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.1
  store i32 %i.aq, ptr %i.ar, align 4
  %indvars.iv.next.i.1.1 = add nuw nsw i64 %indvars.iv.i.1, 2
  %niter25.next.1 = add nuw nsw i64 %niter25, 2   ; 2 uses
  %niter25.ncmp.1 = icmp eq i64 %niter25.next.1, %i.o
  br i1 %niter25.ncmp.1, label %.unr-lcssa20, label %extractn.exit.i.1, !llvm.loop !6

.unr-lcssa20:                                     ; preds = %extractn.exit.i.1
  %i.as = shl nuw nsw i64 2, %i.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as ; 2 uses
  %i.au = shl nuw nsw i64 %i.o, 1
  %i.av = add nuw nsw i64 %i.au, %i.p             ; 2 uses
  br label %extractn.exit.i.2

extractn.exit.i.2:                                ; preds = %extractn.exit.i.2, %.unr-lcssa20
  %indvars.iv.i.2 = phi i64 [ 0, %.unr-lcssa20 ], [ %indvars.iv.next.i.2.1, %extractn.exit.i.2 ] ; 4 uses
  %niter32 = phi i64 [ 0, %.unr-lcssa20 ], [ %niter32.next.1, %extractn.exit.i.2 ]
  %i.aw = add nuw nsw i64 %i.av, %indvars.iv.i.2  ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = lshr i64 %i.aw, 5
  %i.az = and i64 %i.ay, 67108863
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.az
  %i.bb = and i64 %i.ax, 62
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = lshr i64 %i.bc, %i.bb
  %i.be = and i64 %i.bd, 3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.2
  store i32 %i.bg, ptr %i.bh, align 4
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i.2, 1 ; 2 uses
  %i.bi = add nuw nsw i64 %i.av, %indvars.iv.next.i.2 ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = lshr i64 %i.bi, 5
  %i.bl = and i64 %i.bk, 67108863
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bl
  %i.bn = and i64 %i.bj, 62
  %i.bo = load i64, ptr %i.bm, align 8
  %i.bp = lshr i64 %i.bo, %i.bn
  %i.bq = and i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.2
  store i32 %i.bs, ptr %i.bt, align 4
  %indvars.iv.next.i.2.1 = add nuw nsw i64 %indvars.iv.i.2, 2
  %niter32.next.1 = add nuw nsw i64 %niter32, 2   ; 2 uses
  %niter32.ncmp.1 = icmp eq i64 %niter32.next.1, %i.o
  br i1 %niter32.ncmp.1, label %.unr-lcssa27, label %extractn.exit.i.2, !llvm.loop !6

.unr-lcssa27:                                     ; preds = %extractn.exit.i.2
  %i.bu = shl nuw nsw i64 3, %i.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 2 uses
  %i.bw = mul nuw nsw i64 %i.o, 3
  %i.bx = add nuw nsw i64 %i.bw, %i.p             ; 2 uses
  br label %extractn.exit.i.3

extractn.exit.i.3:                                ; preds = %extractn.exit.i.3, %.unr-lcssa27
  %indvars.iv.i.3 = phi i64 [ 0, %.unr-lcssa27 ], [ %indvars.iv.next.i.3.1, %extractn.exit.i.3 ] ; 4 uses
  %niter38 = phi i64 [ 0, %.unr-lcssa27 ], [ %niter38.next.1, %extractn.exit.i.3 ]
  %i.by = add nuw nsw i64 %i.bx, %indvars.iv.i.3  ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 1
  %i.ca = lshr i64 %i.by, 5
  %i.cb = and i64 %i.ca, 67108863
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cb
  %i.cd = and i64 %i.bz, 62
  %i.ce = load i64, ptr %i.cc, align 8
  %i.cf = lshr i64 %i.ce, %i.cd
  %i.cg = and i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.3
  store i32 %i.ci, ptr %i.cj, align 4
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i.3, 1 ; 2 uses
  %i.ck = add nuw nsw i64 %i.bx, %indvars.iv.next.i.3 ; 2 uses
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
  br i1 %niter38.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i.3, !llvm.loop !6

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
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %extractn.exit.i, !llvm.loop !6
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.h = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1193 ; 0 uses
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
  %i.m = add nuw i32 %i.k, %i.l
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
  br i1 %exitcond.not.i, label %do_lut_b.exit, label %extractn.exit.i, !llvm.loop !4
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1197 ; 0 uses
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
  %i.p = add nuw i32 %i.n, %i.o
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
  br i1 %exitcond.not.i, label %do_lut_h.exit, label %extractn.exit.i, !llvm.loop !5
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.k = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1201 ; 0 uses
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
  br i1 %niter.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i, !llvm.loop !6
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.i = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1205 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 2 uses
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.k = select i1 %.not, i64 256, i64 2048
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.m = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.n = add nuw i32 %.v.i, %i.m
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
  br i1 %exitcond.not.i.1, label %do_lut_b.exit, label %extractn.exit.i.1, !llvm.loop !4

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
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !4
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1209 ; 0 uses
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
  %i.u = add nuw i32 %i.s, %i.t
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
  br i1 %exitcond.not.i.1, label %do_lut_h.exit, label %extractn.exit.i.1, !llvm.loop !5

do_lut_h.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.aq = add nuw i32 %i.o, %i.ap
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
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !5
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_2s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
.new:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 7 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.i, 2                  ; 2 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1213 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 4 uses
  %i.l = lshr i32 %3, 10
  %i.m = and i32 %i.l, 6
  %i.n = mul nuw nsw i32 %i.h, %i.m
  %i.o = zext nneg i32 %i.h to i64                ; 3 uses
  %i.p = zext nneg i32 %i.n to i64                ; 3 uses
  br label %extractn.exit.i

.unr-lcssa:                                       ; preds = %extractn.exit.i
  %i.q = select i1 %.not, i64 256, i64 2048
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q ; 2 uses
  %i.s = add nuw nsw i64 %i.o, %i.p               ; 2 uses
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %.unr-lcssa
  %indvars.iv.i.1 = phi i64 [ 0, %.unr-lcssa ], [ %indvars.iv.next.i.1.1, %extractn.exit.i.1 ] ; 4 uses
  %niter24 = phi i64 [ 0, %.unr-lcssa ], [ %niter24.next.1, %extractn.exit.i.1 ]
  %i.t = add nuw nsw i64 %i.s, %indvars.iv.i.1    ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = lshr i64 %i.t, 4
  %i.w = and i64 %i.v, 67108863
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.w
  %i.y = and i64 %i.u, 60
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = lshr i64 %i.z, %i.y
  %i.ab = and i64 %i.aa, 15
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.1
  store i32 %i.ad, ptr %i.ae, align 4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i.1, 1 ; 2 uses
  %i.af = add nuw nsw i64 %i.s, %indvars.iv.next.i.1 ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = lshr i64 %i.af, 4
  %i.ai = and i64 %i.ah, 67108863
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ai
  %i.ak = and i64 %i.ag, 60
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = lshr i64 %i.al, %i.ak
  %i.an = and i64 %i.am, 15
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.1
  store i32 %i.ap, ptr %i.aq, align 4
  %indvars.iv.next.i.1.1 = add nuw nsw i64 %indvars.iv.i.1, 2
  %niter24.next.1 = add nuw nsw i64 %niter24, 2   ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %i.o
  br i1 %niter24.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i.1, !llvm.loop !6

do_lut_s.exit:                                    ; preds = %extractn.exit.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.116, %extractn.exit.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %extractn.exit.i ]
  %i.ar = add nuw nsw i64 %indvars.iv.i, %i.p     ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = lshr i64 %i.ar, 4
  %i.au = and i64 %i.at, 67108863
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.au
  %i.aw = and i64 %i.as, 56
  %i.ax = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ay = lshr i64 %i.ax, %i.aw
  %i.az = and i64 %i.ay, 15
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.bb, ptr %i.bc, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bd = add nuw nsw i64 %indvars.iv.next.i, %i.p
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = and i64 %i.be, 60
  %i.bg = lshr i64 %i.ax, %i.bf
  %i.bh = and i64 %i.bg, 15
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  store i32 %i.bj, ptr %i.bk, align 4
  %indvars.iv.next.i.116 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.o
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %extractn.exit.i, !llvm.loop !6
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_4h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 8 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 4 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.i, 1                  ; 3 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1217 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 4 uses
  %i.l = zext nneg i32 %i.h to i64                ; 4 uses
  %i.m = select i1 %.not, i64 8, i64 10           ; 3 uses
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.n = shl nuw nsw i64 1, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.q = add nuw i32 %i.h, %i.p
  %i.r = shl i32 %i.q, 2                          ; 2 uses
  %i.s = lshr i32 %i.r, 6
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.t
  %i.v = and i32 %i.r, 60
  %i.w = load i64, ptr %i.u, align 8
  %i.x = zext nneg i32 %i.v to i64
  %i.y = lshr i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = shl i32 %i.z, 5                         ; 2 uses
  %i.ab = lshr i32 %i.aa, 6
  %i.ac = and i32 %i.ab, 7
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ad
  %i.af = and i32 %i.aa, 32
  %i.ag = load i64, ptr %i.ae, align 8
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = lshr i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i16
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.i.1
  store i16 %i.aj, ptr %i.ak, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.l
  br i1 %exitcond.not.i.1, label %bb.c, label %extractn.exit.i.1, !llvm.loop !5

bb.c:                                             ; preds = %extractn.exit.i.1
  %i.al = shl nuw nsw i64 2, %i.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  br label %extractn.exit.i.2

extractn.exit.i.2:                                ; preds = %extractn.exit.i.2, %bb.c
  %indvars.iv.i.2 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.2, %extractn.exit.i.2 ] ; 3 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.i.2 to i32
  %i.ao = add nuw i32 %.v.i, %i.an
  %i.ap = shl i32 %i.ao, 2                        ; 2 uses
  %i.aq = lshr i32 %i.ap, 6
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.at = and i32 %i.ap, 60
  %i.au = load i64, ptr %i.as, align 8
  %i.av = zext nneg i32 %i.at to i64
  %i.aw = lshr i64 %i.au, %i.av
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = shl i32 %i.ax, 5                        ; 2 uses
  %i.az = lshr i32 %i.ay, 6
  %i.ba = and i32 %i.az, 7
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bb
  %i.bd = and i32 %i.ay, 32
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = lshr i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv.i.2
  store i16 %i.bh, ptr %i.bi, align 2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %i.l
  br i1 %exitcond.not.i.2, label %bb.d, label %extractn.exit.i.2, !llvm.loop !5

bb.d:                                             ; preds = %extractn.exit.i.2
  %i.bj = shl nuw nsw i64 3, %i.m
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bj
  %i.bl = add nuw nsw i32 %.v.i, %i.h
  br label %extractn.exit.i.3

extractn.exit.i.3:                                ; preds = %extractn.exit.i.3, %bb.d
  %indvars.iv.i.3 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.3, %extractn.exit.i.3 ] ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv.i.3 to i32
  %i.bn = add nuw i32 %i.bl, %i.bm
  %i.bo = shl i32 %i.bn, 2                        ; 2 uses
  %i.bp = lshr i32 %i.bo, 6
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bq
  %i.bs = and i32 %i.bo, 60
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = zext nneg i32 %i.bs to i64
  %i.bv = lshr i64 %i.bt, %i.bu
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = shl i32 %i.bw, 5                        ; 2 uses
  %i.by = lshr i32 %i.bx, 6
  %i.bz = and i32 %i.by, 7
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ca
  %i.cc = and i32 %i.bx, 32
  %i.cd = load i64, ptr %i.cb, align 8
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = lshr i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i16
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv.i.3
  store i16 %i.cg, ptr %i.ch, align 2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.l
  br i1 %exitcond.not.i.3, label %do_lut_h.exit, label %extractn.exit.i.3, !llvm.loop !5

do_lut_h.exit:                                    ; preds = %extractn.exit.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cj = shl i32 %i.ci, 2                        ; 2 uses
  %i.ck = lshr i32 %i.cj, 6
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cl
  %i.cn = and i32 %i.cj, 60
  %i.co = load i64, ptr %i.cm, align 8
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = lshr i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = shl i32 %i.cr, 5                        ; 2 uses
  %i.ct = lshr i32 %i.cs, 6
  %i.cu = and i32 %i.ct, 7
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cv
  %i.cx = and i32 %i.cs, 32
  %i.cy = load i64, ptr %i.cw, align 8
  %i.cz = zext nneg i32 %i.cx to i64
  %i.da = lshr i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i16
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.i
  store i16 %i.db, ptr %i.dc, align 2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !5
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_4s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
.new:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 11 uses
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = lshr exact i32 %.v.i, 2                  ; 2 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.g, i64 noundef 256) #18, !alias.scope !1221 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 8 uses
  %i.l = lshr i32 %3, 9
  %i.m = and i32 %i.l, 4
  %i.n = mul nuw nsw i32 %i.h, %i.m
  %i.o = zext nneg i32 %i.h to i64                ; 7 uses
  %i.p = zext nneg i32 %i.n to i64                ; 5 uses
  %i.q = select i1 %.not, i64 8, i64 10           ; 3 uses
  br label %extractn.exit.i

.unr-lcssa:                                       ; preds = %extractn.exit.i
  %i.r = shl nuw nsw i64 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 2 uses
  %i.t = add nuw nsw i64 %i.o, %i.p               ; 2 uses
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %.unr-lcssa
  %indvars.iv.i.1 = phi i64 [ 0, %.unr-lcssa ], [ %indvars.iv.next.i.1.1, %extractn.exit.i.1 ] ; 4 uses
  %niter25 = phi i64 [ 0, %.unr-lcssa ], [ %niter25.next.1, %extractn.exit.i.1 ]
  %i.u = add nuw nsw i64 %i.t, %indvars.iv.i.1    ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = lshr i64 %i.u, 4
  %i.x = and i64 %i.w, 67108863
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.x
  %i.z = and i64 %i.v, 60
  %i.aa = load i64, ptr %i.y, align 8
  %i.ab = lshr i64 %i.aa, %i.z
  %i.ac = and i64 %i.ab, 15
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.1
  store i32 %i.ae, ptr %i.af, align 4
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i.1, 1 ; 2 uses
  %i.ag = add nuw nsw i64 %i.t, %indvars.iv.next.i.1 ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = lshr i64 %i.ag, 4
  %i.aj = and i64 %i.ai, 67108863
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aj
  %i.al = and i64 %i.ah, 60
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = lshr i64 %i.am, %i.al
  %i.ao = and i64 %i.an, 15
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next.i.1
  store i32 %i.aq, ptr %i.ar, align 4
  %indvars.iv.next.i.1.1 = add nuw nsw i64 %indvars.iv.i.1, 2
  %niter25.next.1 = add nuw nsw i64 %niter25, 2   ; 2 uses
  %niter25.ncmp.1 = icmp eq i64 %niter25.next.1, %i.o
  br i1 %niter25.ncmp.1, label %.unr-lcssa20, label %extractn.exit.i.1, !llvm.loop !6

.unr-lcssa20:                                     ; preds = %extractn.exit.i.1
  %i.as = shl nuw nsw i64 2, %i.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as ; 2 uses
  %i.au = shl nuw nsw i64 %i.o, 1
  %i.av = add nuw nsw i64 %i.au, %i.p             ; 2 uses
  br label %extractn.exit.i.2

extractn.exit.i.2:                                ; preds = %extractn.exit.i.2, %.unr-lcssa20
  %indvars.iv.i.2 = phi i64 [ 0, %.unr-lcssa20 ], [ %indvars.iv.next.i.2.1, %extractn.exit.i.2 ] ; 4 uses
  %niter32 = phi i64 [ 0, %.unr-lcssa20 ], [ %niter32.next.1, %extractn.exit.i.2 ]
  %i.aw = add nuw nsw i64 %i.av, %indvars.iv.i.2  ; 2 uses
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = lshr i64 %i.aw, 4
  %i.az = and i64 %i.ay, 67108863
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.az
  %i.bb = and i64 %i.ax, 60
  %i.bc = load i64, ptr %i.ba, align 8
  %i.bd = lshr i64 %i.bc, %i.bb
  %i.be = and i64 %i.bd, 15
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.2
  store i32 %i.bg, ptr %i.bh, align 4
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i.2, 1 ; 2 uses
  %i.bi = add nuw nsw i64 %i.av, %indvars.iv.next.i.2 ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %i.bk = lshr i64 %i.bi, 4
  %i.bl = and i64 %i.bk, 67108863
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bl
  %i.bn = and i64 %i.bj, 60
  %i.bo = load i64, ptr %i.bm, align 8
  %i.bp = lshr i64 %i.bo, %i.bn
  %i.bq = and i64 %i.bp, 15
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.2
  store i32 %i.bs, ptr %i.bt, align 4
  %indvars.iv.next.i.2.1 = add nuw nsw i64 %indvars.iv.i.2, 2
  %niter32.next.1 = add nuw nsw i64 %niter32, 2   ; 2 uses
  %niter32.ncmp.1 = icmp eq i64 %niter32.next.1, %i.o
  br i1 %niter32.ncmp.1, label %.unr-lcssa27, label %extractn.exit.i.2, !llvm.loop !6

.unr-lcssa27:                                     ; preds = %extractn.exit.i.2
  %i.bu = shl nuw nsw i64 3, %i.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu ; 2 uses
  %i.bw = mul nuw nsw i64 %i.o, 3
  %i.bx = add nuw nsw i64 %i.bw, %i.p             ; 2 uses
  br label %extractn.exit.i.3

extractn.exit.i.3:                                ; preds = %extractn.exit.i.3, %.unr-lcssa27
  %indvars.iv.i.3 = phi i64 [ 0, %.unr-lcssa27 ], [ %indvars.iv.next.i.3.1, %extractn.exit.i.3 ] ; 4 uses
  %niter38 = phi i64 [ 0, %.unr-lcssa27 ], [ %niter38.next.1, %extractn.exit.i.3 ]
  %i.by = add nuw nsw i64 %i.bx, %indvars.iv.i.3  ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = lshr i64 %i.by, 4
  %i.cb = and i64 %i.ca, 67108863
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cb
  %i.cd = and i64 %i.bz, 60
  %i.ce = load i64, ptr %i.cc, align 8
  %i.cf = lshr i64 %i.ce, %i.cd
  %i.cg = and i64 %i.cf, 15
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.3
  store i32 %i.ci, ptr %i.cj, align 4
  %indvars.iv.next.i.3 = or disjoint i64 %indvars.iv.i.3, 1 ; 2 uses
  %i.ck = add nuw nsw i64 %i.bx, %indvars.iv.next.i.3 ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 2
  %i.cm = lshr i64 %i.ck, 4
  %i.cn = and i64 %i.cm, 67108863
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cn
  %i.cp = and i64 %i.cl, 60
  %i.cq = load i64, ptr %i.co, align 8
  %i.cr = lshr i64 %i.cq, %i.cp
  %i.cs = and i64 %i.cr, 15
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next.i.3
  store i32 %i.cu, ptr %i.cv, align 4
  %indvars.iv.next.i.3.1 = add nuw nsw i64 %indvars.iv.i.3, 2
  %niter38.next.1 = add nuw nsw i64 %niter38, 2   ; 2 uses
  %niter38.ncmp.1 = icmp eq i64 %niter38.next.1, %i.o
  br i1 %niter38.ncmp.1, label %do_lut_s.exit, label %extractn.exit.i.3, !llvm.loop !6

do_lut_s.exit:                                    ; preds = %extractn.exit.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.116, %extractn.exit.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %extractn.exit.i ]
  %i.cw = add nuw nsw i64 %indvars.iv.i, %i.p     ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = lshr i64 %i.cw, 4
  %i.cz = and i64 %i.cy, 67108863
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cz
  %i.db = and i64 %i.cx, 56
  %i.dc = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dd = lshr i64 %i.dc, %i.db
  %i.de = and i64 %i.dd, 15
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.dg, ptr %i.dh, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.di = add nuw nsw i64 %indvars.iv.next.i, %i.p
  %i.dj = shl nuw nsw i64 %i.di, 2
  %i.dk = and i64 %i.dj, 60
  %i.dl = lshr i64 %i.dc, %i.dk
  %i.dm = and i64 %i.dl, 15
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  store i32 %i.do, ptr %i.dp, align 4
  %indvars.iv.next.i.116 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.o
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %extractn.exit.i, !llvm.loop !6
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_luti4_4b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 9 uses
  %i.b = lshr i32 %3, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %3, 3
  %i.f = and i32 %i.e, 2040
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 4 uses
  %i.h = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.i = and i32 %3, 1024
  %.not = icmp eq i32 %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false), !annotation !22
  %i.j = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 noundef range(i64 8, 8193) %i.h, i64 noundef 512) #18, !alias.scope !1225 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 1 dereferenceable(1) %i.l, i64 noundef range(i64 8, 8193) %i.h, i1 noundef false) #18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 13056 ; 4 uses
  %i.n = select i1 %.not, i64 8, i64 10           ; 3 uses
  br label %extractn.exit.i

bb.b:                                             ; preds = %extractn.exit.i
  %i.o = shl nuw nsw i64 1, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  br label %extractn.exit.i.1

extractn.exit.i.1:                                ; preds = %extractn.exit.i.1, %bb.b
  %indvars.iv.i.1 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i.1, %extractn.exit.i.1 ] ; 3 uses
  %i.q = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  %i.r = add nuw i32 %.v.i, %i.q
  %i.s = shl i32 %i.r, 2                          ; 2 uses
  %i.t = lshr i32 %i.s, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u
  %i.w = and i32 %i.s, 60
  %i.x = load i64, ptr %i.v, align 8
  %i.y = zext nneg i32 %i.w to i64
  %i.z = lshr i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = shl i32 %i.aa, 5                        ; 2 uses
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = and i32 %i.ac, 7
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = and i32 %i.ab, 32
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = lshr i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i.1
  store i8 %i.ak, ptr %i.al, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.h
  br i1 %exitcond.not.i.1, label %bb.c, label %extractn.exit.i.1, !llvm.loop !4

bb.c:                                             ; preds = %extractn.exit.i.1
  %i.am = shl nuw nsw i64 2, %i.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = shl nuw nsw i32 %.v.i, 3
  br label %extractn.exit.i.2

extractn.exit.i.2:                                ; preds = %extractn.exit.i.2, %bb.c
  %indvars.iv.i.2 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i.2, %extractn.exit.i.2 ] ; 3 uses
  %i.ap = trunc nuw nsw i64 %indvars.iv.i.2 to i32
  %i.aq = shl i32 %i.ap, 2                        ; 2 uses
  %i.ar = add i32 %i.ao, %i.aq
  %i.as = lshr i32 %i.ar, 6
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  %i.av = and i32 %i.aq, 60
  %i.aw = load i64, ptr %i.au, align 8
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = lshr i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = shl i32 %i.az, 5                        ; 2 uses
  %i.bb = lshr i32 %i.ba, 6
  %i.bc = and i32 %i.bb, 7
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bd
  %i.bf = and i32 %i.ba, 32
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = lshr i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i.2
  store i8 %i.bj, ptr %i.bk, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %i.h
  br i1 %exitcond.not.i.2, label %bb.d, label %extractn.exit.i.2, !llvm.loop !4

bb.d:                                             ; preds = %extractn.exit.i.2
  %i.bl = shl nuw nsw i64 3, %i.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  %i.bn = mul nuw nsw i32 %.v.i, 3
  br label %extractn.exit.i.3

extractn.exit.i.3:                                ; preds = %extractn.exit.i.3, %bb.d
  %indvars.iv.i.3 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.3, %extractn.exit.i.3 ] ; 3 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv.i.3 to i32
  %i.bp = add nuw i32 %i.bn, %i.bo
  %i.bq = shl i32 %i.bp, 2                        ; 2 uses
  %i.br = lshr i32 %i.bq, 6
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = and i32 %i.bq, 60
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = lshr i64 %i.bv, %i.bw
  %i.by = trunc i64 %i.bx to i32
  %i.bz = shl i32 %i.by, 5                        ; 2 uses
  %i.ca = lshr i32 %i.bz, 6
  %i.cb = and i32 %i.ca, 7
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cc
  %i.ce = and i32 %i.bz, 32
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = lshr i64 %i.cf, %i.cg
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.i.3
  store i8 %i.ci, ptr %i.cj, align 1
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.h
  br i1 %exitcond.not.i.3, label %do_lut_b.exit, label %extractn.exit.i.3, !llvm.loop !4

do_lut_b.exit:                                    ; preds = %extractn.exit.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %extractn.exit.i ] ; 3 uses
  %i.ck = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cl = shl i32 %i.ck, 2                        ; 2 uses
  %i.cm = lshr i32 %i.cl, 6
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cn
  %i.cp = and i32 %i.cl, 60
  %i.cq = load i64, ptr %i.co, align 8
  %i.cr = zext nneg i32 %i.cp to i64
  %i.cs = lshr i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = shl i32 %i.ct, 5                        ; 2 uses
  %i.cv = lshr i32 %i.cu, 6
  %i.cw = and i32 %i.cv, 7
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cx
  %i.cz = and i32 %i.cu, 32
  %i.da = load i64, ptr %i.cy, align 8
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = lshr i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.dd, ptr %i.de, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.h
  br i1 %exitcond.not.i, label %bb.b, label %extractn.exit.i, !llvm.loop !4
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_luti2_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 6 uses
  %i.a = ashr i32 %3, 10
  %i.b = lshr i32 %3, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %3, 3
  %i.f = and i32 %i.e, 2040                       ; 3 uses
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.h = zext nneg i32 %.v.i to i64               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.i = load i64, ptr %1, align 8                ; 2 uses
  %i.j = mul i32 %i.a, %.v.i                      ; 2 uses
  br label %extractn.exit.i

do_lut_b.exit:                                    ; preds = %extractn.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(1) %4, i64 noundef range(i64 8, 8193) %i.h, i1 noundef false) #18
  %i.k = icmp samesign ult i32 %.v.v.i, %i.f
  br i1 %i.k, label %.lr.ph.preheader.i, label %clear_tail.exit

extractn.exit.i:                                  ; preds = %extractn.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %extractn.exit.i ] ; 4 uses
  %i.l = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.m = add i32 %i.j, %i.l
  %i.n = shl i32 %i.m, 1                          ; 2 uses
  %i.o = lshr i32 %i.n, 6
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.r = and i32 %i.n, 62
  %i.s = load i64, ptr %i.q, align 8              ; 2 uses
  %i.t = zext nneg i32 %i.r to i64
  %i.u = lshr i64 %i.s, %i.t
  %i.v = shl i64 %i.u, 3
  %i.w = and i64 %i.v, 24
  %i.x = lshr i64 %i.i, %i.w
  %i.y = trunc i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i
  store i8 %i.y, ptr %i.z, align 2
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ab = add i32 %i.j, %i.aa
  %i.ac = shl i32 %i.ab, 1
  %i.ad = and i32 %i.ac, 62
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = lshr i64 %i.s, %i.ae
  %i.ag = shl i64 %i.af, 3
  %i.ah = and i64 %i.ag, 24
  %i.ai = lshr i64 %i.i, %i.ah
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next.i
  store i8 %i.aj, ptr %i.ak, align 1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.h
  br i1 %exitcond.not.i.1, label %do_lut_b.exit, label %extractn.exit.i, !llvm.loop !4

.lr.ph.preheader.i:                               ; preds = %do_lut_b.exit
  %i.al = add nuw nsw i32 %i.f, 8
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr i8, ptr %0, i64 %i.h
  %i.ao = xor i64 %i.h, -1
  %i.ap = add nsw i64 %i.ao, %i.am
  %i.aq = and i64 %i.ap, -8
  %i.ar = add nsw i64 %i.aq, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.ar, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %do_lut_b.exit, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_luti2_h(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
.new:
  %4 = alloca %struct.ARMVectorReg, align 16      ; 6 uses
  %i.a = ashr i32 %3, 10
  %i.b = lshr i32 %3, 8
  %i.c = and i32 %i.b, 3                          ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 3
  %i.e = shl i32 %3, 3
  %i.f = and i32 %i.e, 2040                       ; 3 uses
  %i.g = icmp eq i32 %i.c, 2
  %.v.v.i = select i1 %i.g, i32 %i.f, i32 %i.d    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8              ; 2 uses
  %i.h = lshr exact i32 %.v.i, 1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false), !annotation !22
  %i.i = load i64, ptr %1, align 8                ; 2 uses
  %i.j = mul nsw i32 %i.a, %i.h                   ; 2 uses
  %i.k = zext nneg i32 %i.h to i64
  br label %extractn.exit.i

do_lut_h.exit:                                    ; preds = %extractn.exit.i
  %i.l = zext nneg i32 %.v.i to i64               ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(1) %4, i64 noundef range(i64 8, 8193) %i.l, i1 noundef false) #18
  %i.m = icmp samesign ult i32 %.v.v.i, %i.f
  br i1 %i.m, label %.lr.ph.preheader.i, label %clear_tail.exit

extractn.exit.i:                                  ; preds = %extractn.exit.i, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %extractn.exit.i ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %extractn.exit.i ]
  %i.n = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.o = add nsw i32 %i.j, %i.n
  %i.p = shl i32 %i.o, 1                          ; 2 uses
  %i.q = lshr i32 %i.p, 6
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.r
  %i.t = and i32 %i.p, 62
  %i.u = load i64, ptr %i.s, align 8
  %i.v = zext nneg i32 %i.t to i64
  %i.w = lshr i64 %i.u, %i.v
  %i.x = shl i64 %i.w, 4
  %i.y = and i64 %i.x, 48
  %i.z = lshr i64 %i.i, %i.y
  %i.aa = trunc i64 %i.z to i16
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.i
  store i16 %i.aa, ptr %i.ab, align 4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ad = add nsw i32 %i.j, %i.ac
  %i.ae = shl i32 %i.ad, 1                        ; 2 uses
  %i.af = lshr i32 %i.ae, 6
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = and i32 %i.ae, 62
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = lshr i64 %i.aj, %i.ak
  %i.am = shl i64 %i.al, 4
  %i.an = and i64 %i.am, 48
  %i.ao = lshr i64 %i.i, %i.an
  %i.ap = trunc i64 %i.ao to i16
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next.i
  store i16 %i.ap, ptr %i.aq, align 2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.k
end_hunk_0
