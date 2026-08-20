inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1191
loop-unroll.NumRuntimeUnrolled: 418
loop-unroll.NumUnrolled: 1631
begin_hunk_0_@helper_sve2_rsubhnt_s:bb.a
  %i.q = shl nuw i64 %index, 2                    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %wide.load = load <4 x i32>, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %wide.load13 = load <4 x i32>, ptr %i.s, align 4
  %i.t = add <4 x i32> %wide.load, splat (i32 32768)
  %i.u = sub <4 x i32> %i.t, %wide.load13
  %i.v = lshr <4 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <4 x i32> %i.v to <4 x i16>    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 14
  %i.af = extractelement <4 x i16> %i.w, i64 0
  store i16 %i.af, ptr %i.ab, align 2
  %i.ag = extractelement <4 x i16> %i.w, i64 1
  store i16 %i.ag, ptr %i.ac, align 2
  %i.ah = extractelement <4 x i16> %i.w, i64 2
  store i16 %i.ah, ptr %i.ad, align 2
  %i.ai = extractelement <4 x i16> %i.w, i64 3
  store i16 %i.ai, ptr %i.ae, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !2592

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.011.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.p, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011 = phi i64 [ %i.au, %scalar.ph ], [ %.011.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.al, 32768
  %i.ap = sub i32 %i.ao, %i.an
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc nuw i32 %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i16 %i.ar, ptr %i.at, align 2
  %i.au = add nuw nsw i64 %.011, 4                ; 2 uses
  %i.av = icmp samesign ult i64 %i.au, %i.g
  br i1 %i.av, label %scalar.ph, label %.loopexit, !llvm.loop !2593

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_rsubhnt_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %3, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b    ; 2 uses
  %narrow = add nuw nsw i32 %.v.v.i, 1            ; 2 uses
  %i.e = zext nneg i32 %narrow to i64             ; 2 uses
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i32 %.v.v.i, 0
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %i.e, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.011 = phi i64 [ 0, %.new ], [ %i.ab, %bb.b ]  ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.011
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.011
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.h, 2147483648
  %i.l = sub i64 %i.k, %i.j
  %i.m = lshr i64 %i.l, 32
  %i.n = trunc nuw i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.011
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.n, ptr %i.p, align 4
  %i.q = or disjoint i64 %.011, 8                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %i.q
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.s, 2147483648
  %i.w = sub i64 %i.v, %i.u
  %i.x = lshr i64 %i.w, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %i.y, ptr %i.aa, align 4
  %i.ab = add nuw nsw i64 %.011, 16               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.unr-lcssa, label %bb.b, !llvm.loop !2594

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.011.epil.init = phi i64 [ 0, %bb.a ], [ %i.ab, %.unr-lcssa ] ; 3 uses
  %lcmp.mod12 = trunc i32 %narrow to i1
  tail call void @llvm.assume(i1 %lcmp.mod12)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.011.epil.init
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %.011.epil.init
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.ad, 2147483648
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.011.epil.init
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %i.aj, ptr %i.al, align 4
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @helper_sve2_match_ppzz_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #6 {
bb.a:
  %i.a = tail call fastcc i32 @do_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @helper_sve2_match_ppzz_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #6 {
bb.a:
  %i.a = tail call fastcc i32 @do_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @helper_sve2_nmatch_ppzz_b(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #6 {
bb.a:
  %i.a = tail call fastcc i32 @do_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i32 @helper_sve2_nmatch_ppzz_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #6 {
bb.a:
  %i.a = tail call fastcc i32 @do_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 1, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sve2_histcnt_s(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #3 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !487
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = icmp eq ptr %0, %1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !2595 ; 2 uses
  %i.j = icmp eq ptr %0, %2
  %spec.select = select i1 %i.j, ptr %i.i, ptr %2
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %0, %2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !2599
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.039 = phi ptr [ %1, %bb.c ], [ %i.i, %bb.b ], [ %1, %bb.d ]
  %.038 = phi ptr [ %2, %bb.c ], [ %spec.select, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %indvar = phi i64 [ 0, %bb.e ], [ %indvar.next, %.loopexit ] ; 4 uses
  %.04154 = phi i64 [ 0, %bb.e ], [ %i.az, %.loopexit ] ; 5 uses
  %i.m = add i64 %indvar, 1                       ; 2 uses
  %i.n = lshr i64 %.04154, 3
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = trunc i64 %.04154 to i8
  %i.r = and i8 %i.q, 4
  %i.s = shl nuw nsw i8 1, %i.r
  %i.t = and i8 %i.p, %i.s
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.039, i64 %.04154
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = icmp eq i64 %indvar, 0
  br i1 %i.w, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %i.m, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.new
  %.053 = phi i32 [ 0, %.new ], [ %.1.1, %bb.l ]  ; 2 uses
  %.04052 = phi i64 [ 0, %.new ], [ %i.al, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.l ]
  %i.x = lshr exact i64 %.04052, 3
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = and i8 %i.z, 1
  %.not50 = icmp eq i8 %i.aa, 0
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.038, i64 %.04052
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.v, %i.ac
  %i.ae = zext i1 %i.ad to i32
  %spec.select51 = add i32 %.053, %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i32 [ %.053, %bb.h ], [ %spec.select51, %bb.i ] ; 2 uses
  %i.af = and i8 %i.z, 16
  %.not50.1 = icmp eq i8 %i.af, 0
  br i1 %.not50.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %.038, i64 %.04052
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.v, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %spec.select51.1 = add i32 %.1, %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.1 = phi i32 [ %.1, %bb.j ], [ %spec.select51.1, %bb.k ] ; 3 uses
  %i.al = add nuw nsw i64 %.04052, 8              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !2603

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %i.am = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %bb.g
  %.053.epil.init = phi i32 [ 0, %bb.g ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.04052.epil.init = phi i64 [ 0, %bb.g ], [ %i.al, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod62 = trunc i64 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod62)
  %i.an = lshr i64 %.04052.epil.init, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = trunc i64 %.04052.epil.init to i8
  %i.ar = and i8 %i.aq, 4
  %i.as = shl nuw nsw i8 1, %i.ar
  %i.at = and i8 %i.ap, %i.as
  %.not50.epil = icmp eq i8 %i.at, 0
  br i1 %.not50.epil, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  %i.au = getelementptr inbounds nuw i8, ptr %.038, i64 %.04052.epil.init
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.v, %i.av
  %i.ax = zext i1 %i.aw to i32
  %spec.select51.epil = add i32 %.053.epil.init, %i.ax
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.m, %.epil.preheader, %bb.f
  %.2 = phi i32 [ 0, %bb.f ], [ %.1.1, %.loopexit.loopexit.unr-lcssa ], [ %.053.epil.init, %.epil.preheader ], [ %spec.select51.epil, %bb.m ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.04154
  store i32 %.2, ptr %i.ay, align 4
  %i.az = add nuw nsw i64 %.04154, 4              ; 2 uses
  %i.ba = icmp samesign ult i64 %i.az, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ba, label %bb.f, label %bb.n, !llvm.loop !2604

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sve2_histcnt_d(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #3 {
bb.a:
  %5 = alloca %struct.ARMVectorReg, align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %5, i8 0, i64 256, i1 false), !annotation !487
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = icmp eq ptr %0, %1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %1, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !2605 ; 2 uses
  %i.j = icmp eq ptr %0, %2
  %spec.select = select i1 %i.j, ptr %i.i, ptr %2
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq ptr %0, %2
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call ptr @__memcpy_chk(ptr noundef nonnull %5, ptr noundef nonnull %2, i64 noundef range(i64 -1073741824, 4294967296) %i.g, i64 noundef 256) #26, !alias.scope !2609
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.035 = phi ptr [ %1, %bb.c ], [ %i.i, %bb.b ], [ %1, %bb.d ]
  %.034 = phi ptr [ %2, %bb.c ], [ %spec.select, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %i.m = lshr exact i64 %i.g, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %indvars.iv = phi i64 [ 1, %bb.e ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %.03750 = phi i64 [ 0, %bb.e ], [ %i.ar, %.loopexit ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %.03750
  %i.o = load i8, ptr %i.n, align 1
  %i.p = and i8 %i.o, 1
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.035, i64 %.03750
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %xtraiter = and i64 %indvars.iv, 1
  %i.s = icmp eq i64 %.03750, 0
  br i1 %i.s, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %indvars.iv, 9223372036854775806
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.new
  %.049 = phi i64 [ 0, %.new ], [ %.1.1, %bb.l ]  ; 2 uses
  %.03648 = phi i64 [ 0, %.new ], [ %i.ai, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.l ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %.03648
  %i.u = load i8, ptr %i.t, align 1
  %i.v = and i8 %i.u, 1
  %.not46 = icmp eq i8 %i.v, 0
  br i1 %.not46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.034, i64 %.03648
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.r, %i.x
  %i.z = zext i1 %i.y to i64
  %spec.select47 = add i64 %.049, %i.z
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i64 [ %.049, %bb.h ], [ %spec.select47, %bb.i ] ; 2 uses
  %i.aa = or disjoint i64 %.03648, 1              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 1
  %.not46.1 = icmp eq i8 %i.ad, 0
  br i1 %.not46.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.034, i64 %i.aa
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %i.r, %i.af
  %i.ah = zext i1 %i.ag to i64
  %spec.select47.1 = add i64 %.1, %i.ah
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.1 = phi i64 [ %.1, %bb.j ], [ %spec.select47.1, %bb.k ] ; 3 uses
  %i.ai = add nuw nsw i64 %.03648, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
end_hunk_0
