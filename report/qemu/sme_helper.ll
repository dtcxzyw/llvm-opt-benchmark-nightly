Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sme_helper?download=true
inline.NumInlined: 2089
inline.NumDeleted: 222
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 184
loop-unroll.NumUnrolled: 297
begin_hunk_0_@helper_sme2_uzp4_d:bb.a

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph.preheader
  %.040 = phi i64 [ %i.bq, %.lr.ph.preheader ], [ 0, %bb.c ] ; 6 uses
  %.idx = shl nuw nsw i64 %.040, 5
  %i.be = getelementptr inbounds nuw i8, ptr %.038, i64 %.idx ; 4 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.040
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.040
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.040
  store i64 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.040
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = add nuw nsw i64 %.040, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !862
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uzp4_q(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #4 {
bb.a:
  %3 = alloca [4 x %struct.ARMVectorReg], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %3, i8 0, i64 1024, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr i32 %.v.i, 6                        ; 2 uses
  %i.h = zext nneg i32 %i.g to i64                ; 7 uses
  %i.i = icmp eq ptr %1, %0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %3, ptr noundef nonnull align 1 dereferenceable(1024) %1, i64 noundef 1024, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.038 = phi ptr [ %3, %bb.b ], [ %1, %bb.a ]    ; 4 uses
  %.038.sroa.phi56 = getelementptr inbounds nuw i8, ptr %.038, i64 768
  %.038.sroa.phi = getelementptr inbounds nuw i8, ptr %.038, i64 512
  %.038.sroa.phi52 = getelementptr inbounds nuw i8, ptr %.038, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 4 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.split42, label %.lr.ph.preheader

.split42:                                         ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

._crit_edge:                                      ; preds = %.lr.ph.preheader, %._crit_edge
  %.040.1 = phi i64 [ %i.z, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.idx.1 = shl nuw nsw i64 %.040.1, 6
  %i.m = getelementptr inbounds nuw i8, ptr %.038.sroa.phi52, i64 %.idx.1 ; 4 uses
  %i.n = load i128, ptr %i.m, align 16
  %i.o = add nuw nsw i64 %.040.1, %i.h            ; 4 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o
  store i128 %i.n, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load i128, ptr %i.q, align 16
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.o
  store i128 %i.r, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.u = load i128, ptr %i.t, align 16
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.o
  store i128 %i.u, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.x = load i128, ptr %i.w, align 16
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.o
  store i128 %i.x, ptr %i.y, align 16
  %i.z = add nuw nsw i64 %.040.1, 1               ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.1.not, label %._crit_edge.1, label %._crit_edge, !llvm.loop !863

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.aa = shl nuw nsw i64 %i.h, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %._crit_edge.1
  %.040.2 = phi i64 [ 0, %._crit_edge.1 ], [ %i.ao, %bb.d ] ; 3 uses
  %.idx.2 = shl nuw nsw i64 %.040.2, 6
  %i.ab = getelementptr inbounds nuw i8, ptr %.038.sroa.phi, i64 %.idx.2 ; 4 uses
  %i.ac = load i128, ptr %i.ab, align 16
  %i.ad = add nuw nsw i64 %.040.2, %i.aa          ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ad
  store i128 %i.ac, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load i128, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ad
  store i128 %i.ag, ptr %i.ah, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.aj = load i128, ptr %i.ai, align 16
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.ad
  store i128 %i.aj, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.am = load i128, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.ad
  store i128 %i.am, ptr %i.an, align 16
  %i.ao = add nuw nsw i64 %.040.2, 1              ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.2.not, label %._crit_edge.2, label %bb.d, !llvm.loop !863

._crit_edge.2:                                    ; preds = %bb.d
  %i.ap = mul nuw nsw i64 %i.h, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.2
  %.040.3 = phi i64 [ 0, %._crit_edge.2 ], [ %i.bd, %bb.e ] ; 3 uses
  %.idx.3 = shl nuw nsw i64 %.040.3, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %.038.sroa.phi56, i64 %.idx.3 ; 4 uses
  %i.ar = load i128, ptr %i.aq, align 16
  %i.as = add nuw nsw i64 %.040.3, %i.ap          ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.as
  store i128 %i.ar, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load i128, ptr %i.au, align 16
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.as
  store i128 %i.av, ptr %i.aw, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.ay = load i128, ptr %i.ax, align 16
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.as
  store i128 %i.ay, ptr %i.az, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bb = load i128, ptr %i.ba, align 16
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.as
  store i128 %i.bb, ptr %i.bc, align 16
  %i.bd = add nuw nsw i64 %.040.3, 1              ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.bd, %i.h
  br i1 %exitcond.3.not, label %.split42, label %bb.e, !llvm.loop !863

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph.preheader
  %.040 = phi i64 [ %i.bq, %.lr.ph.preheader ], [ 0, %bb.c ] ; 6 uses
  %.idx = shl nuw nsw i64 %.040, 6
  %i.be = getelementptr inbounds nuw i8, ptr %.038, i64 %.idx ; 4 uses
  %i.bf = load i128, ptr %i.be, align 16
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.040
  store i128 %i.bf, ptr %i.bg, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load i128, ptr %i.bh, align 16
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.040
  store i128 %i.bi, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bl = load i128, ptr %i.bk, align 16
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.040
  store i128 %i.bl, ptr %i.bm, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bo = load i128, ptr %i.bn, align 16
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.040
  store i128 %i.bo, ptr %i.bp, align 16
  %i.bq = add nuw nsw i64 %.040, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !863
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshr_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 5 uses
  %i.o = icmp ult i32 %i.i, 64
  %invariant.gep = getelementptr [2 x i8], ptr %spec.select, i64 %i.h ; 2 uses
  %i.p = zext nneg i32 %i.i to i64                ; 2 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  br i1 %i.o, label %do_srshr.exit50.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  %i.s = lshr exact i64 %i.g, 1                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.s, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 %i.s, i1 false)
  br label %.split54.us

do_srshr.exit50.us:                               ; preds = %bb.a, %do_srshr.exit50.us
  %.04652.us = phi i64 [ %i.ao, %do_srshr.exit50.us ], [ 0, %bb.a ] ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04652.us
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = ashr i64 %i.v, %i.p
  %i.x = lshr i64 %i.v, %i.r
  %i.y = and i64 %i.x, 1
  %i.z = add nsw i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -32768)
  %i.ab = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 32767)
  %i.ac = trunc nsw i64 %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04652.us
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04652.us
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = ashr i64 %i.ag, %i.p
  %i.ai = lshr i64 %i.ag, %i.r
  %i.aj = and i64 %i.ai, 1
  %i.ak = add nsw i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -32768)
  %i.am = tail call i64 @llvm.smin.i64(i64 %i.al, i64 32767)
  %i.an = trunc nsw i64 %i.am to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.04652.us
  store i16 %i.an, ptr %gep.us, align 2
  %i.ao = add nuw nsw i64 %.04652.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.split54.us, label %do_srshr.exit50.us, !llvm.loop !864

.split54.us:                                      ; preds = %do_srshr.exit50.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split54.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split54.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqrshr_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 4 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 8 uses
  %i.o = icmp ult i32 %i.i, 64
  %invariant.gep = getelementptr [2 x i8], ptr %spec.select, i64 %i.h ; 5 uses
  %i.p = zext nneg i32 %i.i to i64                ; 3 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 3 uses
  br i1 %i.o, label %do_urshr.exit51.us.preheader, label %do_urshr.exit51.preheader, !prof !54

do_urshr.exit51.us.preheader:                     ; preds = %bb.a
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %do_urshr.exit51.us.preheader67, label %vector.memcheck

vector.memcheck:                                  ; preds = %do_urshr.exit51.us.preheader
  %i.s = getelementptr i8, ptr %spec.select, i64 %i.g
  %i.t = zext nneg i32 %.v.v.i to i64
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 264      ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep, %i.v
  %bound1 = icmp ult ptr %1, %i.s
  %found.conflict = and i1 %bound0, %bound1
  %bound061 = icmp ult ptr %spec.select, %i.v
  %bound162 = icmp ult ptr %1, %invariant.gep
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx = or i1 %found.conflict, %found.conflict63
  br i1 %conflict.rdx, label %do_urshr.exit51.us.preheader67, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert64 = insertelement <4 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat65 = shufflevector <4 x i64> %broadcast.splatinsert64, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !alias.scope !871
  %i.x = zext <4 x i32> %wide.load to <4 x i64>   ; 2 uses
  %i.y = lshr <4 x i64> %i.x, %broadcast.splat
  %i.z = lshr <4 x i64> %i.x, %broadcast.splat65
  %i.aa = and <4 x i64> %i.z, splat (i64 1)
  %i.ab = add nuw nsw <4 x i64> %i.aa, %i.y
  %i.ac = call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ab, <4 x i64> splat (i64 65535))
  %i.ad = trunc nuw <4 x i64> %i.ac to <4 x i16>
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index
  store <4 x i16> %i.ad, ptr %i.ae, align 2, !alias.scope !872, !noalias !871
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  %wide.load66 = load <4 x i32>, ptr %i.af, align 4, !alias.scope !871
  %i.ag = zext <4 x i32> %wide.load66 to <4 x i64> ; 2 uses
  %i.ah = lshr <4 x i64> %i.ag, %broadcast.splat
  %i.ai = lshr <4 x i64> %i.ag, %broadcast.splat65
  %i.aj = and <4 x i64> %i.ai, splat (i64 1)
  %i.ak = add nuw nsw <4 x i64> %i.aj, %i.ah
  %i.al = call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ak, <4 x i64> splat (i64 65535))
  %i.am = trunc nuw <4 x i64> %i.al to <4 x i16>
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index
  store <4 x i16> %i.am, ptr %i.an, align 2, !alias.scope !873, !noalias !871
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split55.us, label %do_urshr.exit51.us.preheader67

do_urshr.exit51.us.preheader67:                   ; preds = %vector.memcheck, %do_urshr.exit51.us.preheader, %middle.block
  %.04653.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %do_urshr.exit51.us.preheader ], [ %n.vec, %middle.block ]
  br label %do_urshr.exit51.us

do_urshr.exit51.preheader:                        ; preds = %bb.a
  %i.ap = lshr exact i64 %i.g, 1                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.ap, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 %i.ap, i1 false)
  br label %.split55.us

do_urshr.exit51.us:                               ; preds = %do_urshr.exit51.us.preheader67, %do_urshr.exit51.us
  %.04653.us = phi i64 [ %i.bj, %do_urshr.exit51.us ], [ %.04653.us.ph, %do_urshr.exit51.us.preheader67 ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04653.us
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, %i.p
  %i.au = lshr i64 %i.as, %i.r
  %i.av = and i64 %i.au, 1
  %i.aw = add nuw nsw i64 %i.av, %i.at
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 65535)
  %i.ay = trunc nuw i64 %i.ax to i16
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04653.us
  store i16 %i.ay, ptr %i.az, align 2
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04653.us
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, %i.p
  %i.be = lshr i64 %i.bc, %i.r
  %i.bf = and i64 %i.be, 1
  %i.bg = add nuw nsw i64 %i.bf, %i.bd
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 65535)
  %i.bi = trunc nuw i64 %i.bh to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.04653.us
  store i16 %i.bi, ptr %gep.us, align 2
  %i.bj = add nuw nsw i64 %.04653.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.h
  br i1 %exitcond.not, label %.split55.us, label %do_urshr.exit51.us, !llvm.loop !870

.split55.us:                                      ; preds = %do_urshr.exit51.us, %middle.block, %do_urshr.exit51.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split55.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split55.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshru_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 5 uses
  %i.o = icmp ult i32 %i.i, 64
  %invariant.gep = getelementptr [2 x i8], ptr %spec.select, i64 %i.h ; 2 uses
  %i.p = zext nneg i32 %i.i to i64                ; 2 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  br i1 %i.o, label %do_srshr.exit50.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  %i.s = lshr exact i64 %i.g, 1                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.s, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 %i.s, i1 false)
  br label %.split54.us

do_srshr.exit50.us:                               ; preds = %bb.a, %do_srshr.exit50.us
  %.04652.us = phi i64 [ %i.ao, %do_srshr.exit50.us ], [ 0, %bb.a ] ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04652.us
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = ashr i64 %i.v, %i.p
  %i.x = lshr i64 %i.v, %i.r
  %i.y = and i64 %i.x, 1
  %i.z = add nsw i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 0)
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 65535)
  %i.ac = trunc nuw i64 %i.ab to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.04652.us
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04652.us
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = ashr i64 %i.ag, %i.p
  %i.ai = lshr i64 %i.ag, %i.r
  %i.aj = and i64 %i.ai, 1
  %i.ak = add nsw i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 65535)
  %i.an = trunc nuw i64 %i.am to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.04652.us
  store i16 %i.an, ptr %gep.us, align 2
  %i.ao = add nuw nsw i64 %.04652.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.split54.us, label %do_srshr.exit50.us, !llvm.loop !874

.split54.us:                                      ; preds = %do_srshr.exit50.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split54.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split54.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshr_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 8 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 7 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = lshr exact i64 %i.g, 1
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %i.r ; 2 uses
  %i.s = mul nuw nsw i64 %i.h, 3
  %invariant.gep91 = getelementptr i8, ptr %spec.select, i64 %i.s ; 2 uses
  %i.t = zext nneg i32 %i.i to i64                ; 4 uses
  %i.u = add nsw i32 %i.i, -1
  %i.v = zext nneg i32 %i.u to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit86.us, label %do_srshr.exit84.preheader, !prof !54

do_srshr.exit84.preheader:                        ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i8 0, i64 %i.h, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.h, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %invariant.gep, i8 0, i64 %i.h, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %invariant.gep91, i8 0, i64 %i.h, i1 false)
  br label %.split95.us

do_srshr.exit86.us:                               ; preds = %bb.a, %do_srshr.exit86.us
  %.08093.us = phi i64 [ %i.bm, %do_srshr.exit86.us ], [ 0, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08093.us
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = ashr i64 %i.y, %i.t
  %i.aa = lshr i64 %i.y, %i.v
  %i.ab = and i64 %i.aa, 1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -128)
  %i.ae = tail call i64 @llvm.smin.i64(i64 %i.ad, i64 127)
  %i.af = trunc nsw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.08093.us ; 2 uses
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.08093.us
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = ashr i64 %i.aj, %i.t
  %i.al = lshr i64 %i.aj, %i.v
  %i.am = and i64 %i.al, 1
  %i.an = add nsw i64 %i.am, %i.ak
  %i.ao = tail call i64 @llvm.smax.i64(i64 %i.an, i64 -128)
  %i.ap = tail call i64 @llvm.smin.i64(i64 %i.ao, i64 127)
  %i.aq = trunc nsw i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.h
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.08093.us
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = ashr i64 %i.au, %i.t
  %i.aw = lshr i64 %i.au, %i.v
  %i.ax = and i64 %i.aw, 1
  %i.ay = add nsw i64 %i.ax, %i.av
  %i.az = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 -128)
  %i.ba = tail call i64 @llvm.smin.i64(i64 %i.az, i64 127)
  %i.bb = trunc nsw i64 %i.ba to i8
  %gep.us = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.08093.us
  store i8 %i.bb, ptr %gep.us, align 1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.08093.us
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = ashr i64 %i.be, %i.t
  %i.bg = lshr i64 %i.be, %i.v
  %i.bh = and i64 %i.bg, 1
  %i.bi = add nsw i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 -128)
  %i.bk = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 127)
  %i.bl = trunc nsw i64 %i.bk to i8
  %gep92.us = getelementptr inbounds nuw i8, ptr %invariant.gep91, i64 %.08093.us
  store i8 %i.bl, ptr %gep92.us, align 1
  %i.bm = add nuw nsw i64 %.08093.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond.not, label %.split95.us, label %do_srshr.exit86.us, !llvm.loop !875

.split95.us:                                      ; preds = %do_srshr.exit86.us, %do_srshr.exit84.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split95.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split95.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqrshr_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 8 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 7 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = mul nuw nsw i64 %i.h, 3
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %i.r ; 2 uses
  %i.s = lshr exact i64 %i.g, 1                   ; 2 uses
  %i.t = zext nneg i32 %i.i to i64                ; 4 uses
  %i.u = add nsw i32 %i.i, -1
  %i.v = zext nneg i32 %i.u to i64                ; 4 uses
  br i1 %i.q, label %do_urshr.exit91.us, label %do_urshr.exit91.preheader, !prof !54

do_urshr.exit91.preheader:                        ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i8 0, i64 %i.h, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.h, i1 false)
  %scevgep99 = getelementptr i8, ptr %spec.select, i64 %i.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep99, i8 0, i64 %i.h, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %invariant.gep, i8 0, i64 %i.h, i1 false)
  br label %.split97.us

do_urshr.exit91.us:                               ; preds = %bb.a, %do_urshr.exit91.us
  %.08095.us = phi i64 [ %i.bj, %do_urshr.exit91.us ], [ 0, %bb.a ] ; 7 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08095.us
  %i.x = load i32, ptr %i.w, align 4
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = lshr i64 %i.y, %i.t
  %i.aa = lshr i64 %i.y, %i.v
  %i.ab = and i64 %i.aa, 1
  %i.ac = add nuw nsw i64 %i.ab, %i.z
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 255)
  %i.ae = trunc nuw i64 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.08095.us ; 3 uses
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.08095.us
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, %i.t
  %i.ak = lshr i64 %i.ai, %i.v
  %i.al = and i64 %i.ak, 1
  %i.am = add nuw nsw i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.umin.i64(i64 %i.am, i64 255)
  %i.ao = trunc nuw i64 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.h
  store i8 %i.ao, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.08095.us
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, %i.t
  %i.au = lshr i64 %i.as, %i.v
  %i.av = and i64 %i.au, 1
  %i.aw = add nuw nsw i64 %i.av, %i.at
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 255)
  %i.ay = trunc nuw i64 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.s
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.08095.us
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, %i.t
  %i.be = lshr i64 %i.bc, %i.v
  %i.bf = and i64 %i.be, 1
  %i.bg = add nuw nsw i64 %i.bf, %i.bd
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 255)
  %i.bi = trunc nuw i64 %i.bh to i8
  %gep.us = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.08095.us
  store i8 %i.bi, ptr %gep.us, align 1
  %i.bj = add nuw nsw i64 %.08095.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.h
  br i1 %exitcond.not, label %.split97.us, label %do_urshr.exit91.us, !llvm.loop !876

.split97.us:                                      ; preds = %do_urshr.exit91.us, %do_urshr.exit91.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split97.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split97.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshru_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 8 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 7 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = lshr exact i64 %i.g, 1
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %i.r ; 2 uses
  %i.s = mul nuw nsw i64 %i.h, 3
  %invariant.gep91 = getelementptr i8, ptr %spec.select, i64 %i.s ; 2 uses
  %i.t = zext nneg i32 %i.i to i64                ; 4 uses
  %i.u = add nsw i32 %i.i, -1
  %i.v = zext nneg i32 %i.u to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit86.us, label %do_srshr.exit84.preheader, !prof !54

do_srshr.exit84.preheader:                        ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i8 0, i64 %i.h, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 0, i64 %i.h, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %invariant.gep, i8 0, i64 %i.h, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %invariant.gep91, i8 0, i64 %i.h, i1 false)
  br label %.split95.us

do_srshr.exit86.us:                               ; preds = %bb.a, %do_srshr.exit86.us
  %.08093.us = phi i64 [ %i.bm, %do_srshr.exit86.us ], [ 0, %bb.a ] ; 8 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08093.us
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = ashr i64 %i.y, %i.t
  %i.aa = lshr i64 %i.y, %i.v
  %i.ab = and i64 %i.aa, 1
  %i.ac = add nsw i64 %i.ab, %i.z
  %i.ad = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 0)
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 255)
  %i.af = trunc nuw i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.08093.us ; 2 uses
  store i8 %i.af, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.08093.us
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = ashr i64 %i.aj, %i.t
  %i.al = lshr i64 %i.aj, %i.v
  %i.am = and i64 %i.al, 1
  %i.an = add nsw i64 %i.am, %i.ak
  %i.ao = tail call i64 @llvm.smax.i64(i64 %i.an, i64 0)
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 255)
  %i.aq = trunc nuw i64 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.h
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.08093.us
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = ashr i64 %i.au, %i.t
  %i.aw = lshr i64 %i.au, %i.v
  %i.ax = and i64 %i.aw, 1
  %i.ay = add nsw i64 %i.ax, %i.av
  %i.az = tail call i64 @llvm.smax.i64(i64 %i.ay, i64 0)
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.az, i64 255)
  %i.bb = trunc nuw i64 %i.ba to i8
  %gep.us = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.08093.us
  store i8 %i.bb, ptr %gep.us, align 1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.08093.us
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = ashr i64 %i.be, %i.t
  %i.bg = lshr i64 %i.be, %i.v
  %i.bh = and i64 %i.bg, 1
  %i.bi = add nsw i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 0)
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 255)
  %i.bl = trunc nuw i64 %i.bk to i8
  %gep92.us = getelementptr inbounds nuw i8, ptr %invariant.gep91, i64 %.08093.us
  store i8 %i.bl, ptr %gep92.us, align 1
  %i.bm = add nuw nsw i64 %.08093.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.h
  br i1 %exitcond.not, label %.split95.us, label %do_srshr.exit86.us, !llvm.loop !877

.split95.us:                                      ; preds = %do_srshr.exit86.us, %do_srshr.exit84.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split95.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split95.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshr_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 7 uses
  %i.q = icmp ult i32 %i.i, 64
  %.idx = lshr exact i64 %i.g, 1
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %.idx ; 2 uses
  %.idx83 = mul nuw nsw i64 %i.h, 6
  %invariant.gep92 = getelementptr i8, ptr %spec.select, i64 %.idx83 ; 2 uses
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit87.us, label %do_srshr.exit85.preheader, !prof !54

do_srshr.exit85.preheader:                        ; preds = %bb.a
  %i.u = lshr exact i64 %i.g, 2                   ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.u, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep92, i8 0, i64 %i.u, i1 false)
  br label %.split96.us

do_srshr.exit87.us:                               ; preds = %bb.a, %do_srshr.exit87.us
  %.08094.us = phi i64 [ %i.bh, %do_srshr.exit87.us ], [ 0, %bb.a ] ; 8 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08094.us
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = ashr i64 %i.w, %i.r
  %i.y = lshr i64 %i.w, %i.t
  %i.z = and i64 %i.y, 1
  %i.aa = add i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -32768)
  %i.ac = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 32767)
  %i.ad = trunc nsw i64 %i.ac to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.08094.us ; 2 uses
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.08094.us
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = ashr i64 %i.ag, %i.r
  %i.ai = lshr i64 %i.ag, %i.t
  %i.aj = and i64 %i.ai, 1
  %i.ak = add i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 -32768)
  %i.am = tail call i64 @llvm.smin.i64(i64 %i.al, i64 32767)
  %i.an = trunc nsw i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.h
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08094.us
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ashr i64 %i.aq, %i.r
  %i.as = lshr i64 %i.aq, %i.t
  %i.at = and i64 %i.as, 1
  %i.au = add i64 %i.at, %i.ar
  %i.av = tail call i64 @llvm.smax.i64(i64 %i.au, i64 -32768)
  %i.aw = tail call i64 @llvm.smin.i64(i64 %i.av, i64 32767)
  %i.ax = trunc nsw i64 %i.aw to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.08094.us
  store i16 %i.ax, ptr %gep.us, align 2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.08094.us
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ashr i64 %i.az, %i.r
  %i.bb = lshr i64 %i.az, %i.t
  %i.bc = and i64 %i.bb, 1
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 -32768)
  %i.bf = tail call i64 @llvm.smin.i64(i64 %i.be, i64 32767)
  %i.bg = trunc nsw i64 %i.bf to i16
  %gep93.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep92, i64 %.08094.us
  store i16 %i.bg, ptr %gep93.us, align 2
  %i.bh = add nuw nsw i64 %.08094.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.h
  br i1 %exitcond.not, label %.split96.us, label %do_srshr.exit87.us, !llvm.loop !878

.split96.us:                                      ; preds = %do_srshr.exit87.us, %do_srshr.exit85.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split96.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split96.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqrshr_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 5 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 6 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 11 uses
  %i.i = ashr i32 %2, 10                          ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 24 uses
  %i.q = icmp ult i32 %i.i, 64
  %.idx83 = mul nuw nsw i64 %i.h, 6               ; 3 uses
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %.idx83 ; 13 uses
  %.idx = lshr exact i64 %i.g, 1                  ; 9 uses
  %i.r = zext nneg i32 %i.i to i64                ; 5 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 5 uses
  br i1 %i.q, label %do_urshr.exit92.us.preheader, label %.split, !prof !54

do_urshr.exit92.us.preheader:                     ; preds = %bb.a
  %min.iters.check236 = icmp samesign ult i32 %.v.v.i, 296
  br i1 %min.iters.check236, label %do_urshr.exit92.us.preheader291, label %vector.memcheck237

vector.memcheck237:                               ; preds = %do_urshr.exit92.us.preheader
  %i.u = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.v = getelementptr i8, ptr %spec.select, i64 %i.u ; 5 uses
  %i.w = getelementptr i8, ptr %spec.select, i64 %.idx ; 5 uses
  %i.x = getelementptr i8, ptr %spec.select, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 %.idx    ; 3 uses
  %i.z = getelementptr i8, ptr %spec.select, i64 %i.u
  %i.aa = getelementptr i8, ptr %i.z, i64 %.idx83 ; 4 uses
  %i.ab = zext nneg i32 %.v.v.i to i64
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 776    ; 4 uses
  %bound0241 = icmp ult ptr %spec.select, %i.y
  %bound1242 = icmp ult ptr %i.w, %i.v
  %found.conflict243 = and i1 %bound0241, %bound1242
  %bound0245 = icmp ult ptr %spec.select, %i.aa
  %bound1246 = icmp ult ptr %invariant.gep, %i.v
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %found.conflict243, %found.conflict247
  %bound0249 = icmp ult ptr %spec.select, %i.ad
  %bound1250 = icmp ult ptr %1, %i.v
  %found.conflict251 = and i1 %bound0249, %bound1250
  %conflict.rdx252 = or i1 %conflict.rdx248, %found.conflict251
  %bound0257 = icmp ult ptr %i.v, %i.aa
  %bound1258 = icmp ult ptr %invariant.gep, %i.w
  %found.conflict259 = and i1 %bound0257, %bound1258
  %conflict.rdx260 = or i1 %conflict.rdx252, %found.conflict259
  %bound0261 = icmp ult ptr %i.v, %i.ad
  %bound1262 = icmp ult ptr %1, %i.w
  %found.conflict263 = and i1 %bound0261, %bound1262
  %conflict.rdx264 = or i1 %conflict.rdx260, %found.conflict263
  %bound0265 = icmp ult ptr %i.w, %i.aa
  %bound1266 = icmp ult ptr %invariant.gep, %i.y
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx264, %found.conflict267
  %bound0269 = icmp ult ptr %i.w, %i.ad
  %bound1270 = icmp ult ptr %1, %i.y
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %conflict.rdx268, %found.conflict271
  %bound0273 = icmp ult ptr %invariant.gep, %i.ad
  %bound1274 = icmp ult ptr %1, %i.aa
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx272, %found.conflict275
  br i1 %conflict.rdx276, label %do_urshr.exit92.us.preheader291, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck237
  %n.vec278 = and i64 %i.h, 268435454             ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert279 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat280 = shufflevector <2 x i64> %broadcast.splatinsert279, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph277
  %index282 = phi i64 [ 0, %vector.ph277 ], [ %index.next287, %vector.body281 ] ; 7 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index282
  %wide.load283 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !895 ; 2 uses
  %i.af = lshr <2 x i64> %wide.load283, %broadcast.splat
  %i.ag = lshr <2 x i64> %wide.load283, %broadcast.splat280
  %i.ah = and <2 x i64> %i.ag, splat (i64 1)
  %i.ai = add <2 x i64> %i.ah, %i.af
  %i.aj = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ai, <2 x i64> splat (i64 65535))
  %i.ak = trunc nuw <2 x i64> %i.aj to <2 x i16>
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index282 ; 3 uses
  store <2 x i16> %i.ak, ptr %i.al, align 2, !alias.scope !896, !noalias !897
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index282
  %wide.load284 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !895 ; 2 uses
  %i.an = lshr <2 x i64> %wide.load284, %broadcast.splat
  %i.ao = lshr <2 x i64> %wide.load284, %broadcast.splat280
  %i.ap = and <2 x i64> %i.ao, splat (i64 1)
  %i.aq = add <2 x i64> %i.ap, %i.an
  %i.ar = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.aq, <2 x i64> splat (i64 65535))
  %i.as = trunc nuw <2 x i64> %i.ar to <2 x i16>
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.h
  store <2 x i16> %i.as, ptr %i.at, align 2, !alias.scope !898, !noalias !899
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index282
  %wide.load285 = load <2 x i64>, ptr %i.au, align 8, !alias.scope !895 ; 2 uses
  %i.av = lshr <2 x i64> %wide.load285, %broadcast.splat
  %i.aw = lshr <2 x i64> %wide.load285, %broadcast.splat280
  %i.ax = and <2 x i64> %i.aw, splat (i64 1)
  %i.ay = add <2 x i64> %i.ax, %i.av
  %i.az = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.ay, <2 x i64> splat (i64 65535))
  %i.ba = trunc nuw <2 x i64> %i.az to <2 x i16>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  store <2 x i16> %i.ba, ptr %i.bb, align 2, !alias.scope !900, !noalias !901
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index282
  %wide.load286 = load <2 x i64>, ptr %i.bc, align 8, !alias.scope !895 ; 2 uses
  %i.bd = lshr <2 x i64> %wide.load286, %broadcast.splat
  %i.be = lshr <2 x i64> %wide.load286, %broadcast.splat280
  %i.bf = and <2 x i64> %i.be, splat (i64 1)
  %i.bg = add <2 x i64> %i.bf, %i.bd
  %i.bh = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.bg, <2 x i64> splat (i64 65535))
  %i.bi = trunc nuw <2 x i64> %i.bh to <2 x i16>
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index282
  store <2 x i16> %i.bi, ptr %i.bj, align 2, !alias.scope !902, !noalias !895
  %index.next287 = add nuw i64 %index282, 2       ; 2 uses
  %i.bk = icmp eq i64 %index.next287, %n.vec278
  br i1 %i.bk, label %middle.block288, label %vector.body281, !llvm.loop !885

middle.block288:                                  ; preds = %vector.body281
  %cmp.n289 = icmp eq i64 %i.h, %n.vec278
  br i1 %cmp.n289, label %.split99.us, label %do_urshr.exit92.us.preheader291

do_urshr.exit92.us.preheader291:                  ; preds = %vector.memcheck237, %do_urshr.exit92.us.preheader, %middle.block288
  %.08097.us.ph = phi i64 [ 0, %vector.memcheck237 ], [ 0, %do_urshr.exit92.us.preheader ], [ %n.vec278, %middle.block288 ]
  br label %do_urshr.exit92.us

do_urshr.exit92.us:                               ; preds = %do_urshr.exit92.us.preheader291, %do_urshr.exit92.us
  %.08097.us = phi i64 [ %i.cu, %do_urshr.exit92.us ], [ %.08097.us.ph, %do_urshr.exit92.us.preheader291 ] ; 7 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08097.us
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = lshr i64 %i.bm, %i.r
  %i.bo = lshr i64 %i.bm, %i.t
  %i.bp = and i64 %i.bo, 1
  %i.bq = add i64 %i.bp, %i.bn
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 65535)
  %i.bs = trunc nuw i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.08097.us ; 3 uses
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.08097.us
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = lshr i64 %i.bv, %i.r
  %i.bx = lshr i64 %i.bv, %i.t
  %i.by = and i64 %i.bx, 1
  %i.bz = add i64 %i.by, %i.bw
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 65535)
  %i.cb = trunc nuw i64 %i.ca to i16
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %i.h
  store i16 %i.cb, ptr %i.cc, align 2
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08097.us
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = lshr i64 %i.ce, %i.r
  %i.cg = lshr i64 %i.ce, %i.t
  %i.ch = and i64 %i.cg, 1
  %i.ci = add i64 %i.ch, %i.cf
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 65535)
  %i.ck = trunc nuw i64 %i.cj to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx
  store i16 %i.ck, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.08097.us
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.co = lshr i64 %i.cn, %i.r
  %i.cp = lshr i64 %i.cn, %i.t
  %i.cq = and i64 %i.cp, 1
  %i.cr = add i64 %i.cq, %i.co
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 65535)
  %i.ct = trunc nuw i64 %i.cs to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.08097.us
  store i16 %i.ct, ptr %gep.us, align 2
  %i.cu = add nuw nsw i64 %.08097.us, 1           ; 2 uses
  %exitcond121.not = icmp eq i64 %i.cu, %i.h
  br i1 %exitcond121.not, label %.split99.us, label %do_urshr.exit92.us, !llvm.loop !886

.split:                                           ; preds = %bb.a
  %i.cv = icmp eq i32 %i.i, 64
  br i1 %i.cv, label %do_urshr.exit92.us100.preheader, label %do_urshr.exit92.preheader

do_urshr.exit92.us100.preheader:                  ; preds = %.split
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 216
  br i1 %min.iters.check, label %do_urshr.exit92.us100.preheader292, label %vector.memcheck

vector.memcheck:                                  ; preds = %do_urshr.exit92.us100.preheader
  %i.cw = lshr exact i64 %i.g, 2                  ; 3 uses
  %i.cx = getelementptr i8, ptr %spec.select, i64 %i.cw ; 5 uses
  %i.cy = getelementptr i8, ptr %spec.select, i64 %.idx ; 5 uses
  %i.cz = getelementptr i8, ptr %spec.select, i64 %i.cw
  %i.da = getelementptr i8, ptr %i.cz, i64 %.idx  ; 3 uses
  %i.db = getelementptr i8, ptr %spec.select, i64 %i.cw
  %i.dc = getelementptr i8, ptr %i.db, i64 %.idx83 ; 4 uses
  %i.dd = zext nneg i32 %.v.v.i to i64
  %i.de = getelementptr i8, ptr %1, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 776    ; 4 uses
  %bound0158 = icmp ult ptr %spec.select, %i.da
  %bound1159 = icmp ult ptr %i.cy, %i.cx
  %found.conflict160 = and i1 %bound0158, %bound1159
  %bound0161 = icmp ult ptr %spec.select, %i.dc
  %bound1162 = icmp ult ptr %invariant.gep, %i.cx
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %found.conflict160, %found.conflict163
  %bound0165 = icmp ult ptr %spec.select, %i.df
  %bound1166 = icmp ult ptr %1, %i.cx
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0173 = icmp ult ptr %i.cx, %i.dc
  %bound1174 = icmp ult ptr %invariant.gep, %i.cy
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx168, %found.conflict175
  %bound0177 = icmp ult ptr %i.cx, %i.df
  %bound1178 = icmp ult ptr %1, %i.cy
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %i.cy, %i.dc
  %bound1182 = icmp ult ptr %invariant.gep, %i.da
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %i.cy, %i.df
  %bound1186 = icmp ult ptr %1, %i.da
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %invariant.gep, %i.df
  %bound1190 = icmp ult ptr %1, %i.dc
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  br i1 %conflict.rdx192, label %do_urshr.exit92.us100.preheader292, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 268435454                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !alias.scope !903
  %i.dh = lshr <2 x i64> %wide.load, splat (i64 63)
  %i.di = trunc nuw nsw <2 x i64> %i.dh to <2 x i16>
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %index ; 3 uses
  store <2 x i16> %i.di, ptr %i.dj, align 2, !alias.scope !904, !noalias !905
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index
  %wide.load193 = load <2 x i64>, ptr %i.dk, align 8, !alias.scope !903
  %i.dl = lshr <2 x i64> %wide.load193, splat (i64 63)
  %i.dm = trunc nuw nsw <2 x i64> %i.dl to <2 x i16>
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.h
  store <2 x i16> %i.dm, ptr %i.dn, align 2, !alias.scope !906, !noalias !907
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index
  %wide.load194 = load <2 x i64>, ptr %i.do, align 8, !alias.scope !903
  %i.dp = lshr <2 x i64> %wide.load194, splat (i64 63)
  %i.dq = trunc nuw nsw <2 x i64> %i.dp to <2 x i16>
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx
  store <2 x i16> %i.dq, ptr %i.dr, align 2, !alias.scope !908, !noalias !909
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index
  %wide.load195 = load <2 x i64>, ptr %i.ds, align 8, !alias.scope !903
  %i.dt = lshr <2 x i64> %wide.load195, splat (i64 63)
  %i.du = trunc nuw nsw <2 x i64> %i.dt to <2 x i16>
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %index
  store <2 x i16> %i.du, ptr %i.dv, align 2, !alias.scope !910, !noalias !903
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !893

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split99.us, label %do_urshr.exit92.us100.preheader292

do_urshr.exit92.us100.preheader292:               ; preds = %vector.memcheck, %do_urshr.exit92.us100.preheader, %middle.block
  %.08097.us101.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %do_urshr.exit92.us100.preheader ], [ %n.vec, %middle.block ]
  br label %do_urshr.exit92.us100

do_urshr.exit92.preheader:                        ; preds = %.split
  %i.dx = lshr exact i64 %i.g, 2                  ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.dx, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.dx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.dx, i1 false)
  %scevgep120 = getelementptr i8, ptr %spec.select, i64 %.idx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep120, i8 0, i64 %i.dx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 %i.dx, i1 false)
  br label %.split99.us

do_urshr.exit92.us100:                            ; preds = %do_urshr.exit92.us100.preheader292, %do_urshr.exit92.us100
  %.08097.us101 = phi i64 [ %i.er, %do_urshr.exit92.us100 ], [ %.08097.us101.ph, %do_urshr.exit92.us100.preheader292 ] ; 7 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08097.us101
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = lshr i64 %i.dz, 63
  %i.eb = trunc nuw nsw i64 %i.ea to i16
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.08097.us101 ; 3 uses
  store i16 %i.eb, ptr %i.ec, align 2
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.08097.us101
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = lshr i64 %i.ee, 63
  %i.eg = trunc nuw nsw i64 %i.ef to i16
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.h
  store i16 %i.eg, ptr %i.eh, align 2
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08097.us101
  %i.ej = load i64, ptr %i.ei, align 8
  %i.ek = lshr i64 %i.ej, 63
  %i.el = trunc nuw nsw i64 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx
  store i16 %i.el, ptr %i.em, align 2
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.08097.us101
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = lshr i64 %i.eo, 63
  %i.eq = trunc nuw nsw i64 %i.ep to i16
  %gep.us102 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.08097.us101
  store i16 %i.eq, ptr %gep.us102, align 2
  %i.er = add nuw nsw i64 %.08097.us101, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, %i.h
  br i1 %exitcond.not, label %.split99.us, label %do_urshr.exit92.us100, !llvm.loop !894

.split99.us:                                      ; preds = %do_urshr.exit92.us100, %do_urshr.exit92.us, %middle.block, %middle.block288, %do_urshr.exit92.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split99.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split99.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshru_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 7 uses
  %i.q = icmp ult i32 %i.i, 64
  %.idx = lshr exact i64 %i.g, 1
  %invariant.gep = getelementptr i8, ptr %spec.select, i64 %.idx ; 2 uses
  %.idx83 = mul nuw nsw i64 %i.h, 6
  %invariant.gep92 = getelementptr i8, ptr %spec.select, i64 %.idx83 ; 2 uses
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit87.us, label %do_srshr.exit85.preheader, !prof !54

do_srshr.exit85.preheader:                        ; preds = %bb.a
  %i.u = lshr exact i64 %i.g, 2                   ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.u, i1 false)
  %scevgep = getelementptr i8, ptr %spec.select, i64 %i.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep, i8 0, i64 %i.u, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %invariant.gep92, i8 0, i64 %i.u, i1 false)
  br label %.split96.us

do_srshr.exit87.us:                               ; preds = %bb.a, %do_srshr.exit87.us
  %.08094.us = phi i64 [ %i.bh, %do_srshr.exit87.us ], [ 0, %bb.a ] ; 8 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08094.us
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = ashr i64 %i.w, %i.r
  %i.y = lshr i64 %i.w, %i.t
  %i.z = and i64 %i.y, 1
  %i.aa = add i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 0)
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 65535)
  %i.ad = trunc nuw i64 %i.ac to i16
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %spec.select, i64 %.08094.us ; 2 uses
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.08094.us
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = ashr i64 %i.ag, %i.r
  %i.ai = lshr i64 %i.ag, %i.t
  %i.aj = and i64 %i.ai, 1
  %i.ak = add i64 %i.aj, %i.ah
  %i.al = tail call i64 @llvm.smax.i64(i64 %i.ak, i64 0)
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 65535)
  %i.an = trunc nuw i64 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.h
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08094.us
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = ashr i64 %i.aq, %i.r
  %i.as = lshr i64 %i.aq, %i.t
  %i.at = and i64 %i.as, 1
  %i.au = add i64 %i.at, %i.ar
  %i.av = tail call i64 @llvm.smax.i64(i64 %i.au, i64 0)
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.av, i64 65535)
  %i.ax = trunc nuw i64 %i.aw to i16
  %gep.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.08094.us
  store i16 %i.ax, ptr %gep.us, align 2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.08094.us
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ashr i64 %i.az, %i.r
  %i.bb = lshr i64 %i.az, %i.t
  %i.bc = and i64 %i.bb, 1
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 0)
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 65535)
  %i.bg = trunc nuw i64 %i.bf to i16
  %gep93.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep92, i64 %.08094.us
  store i16 %i.bg, ptr %gep93.us, align 2
  %i.bh = add nuw nsw i64 %.08094.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.h
  br i1 %exitcond.not, label %.split96.us, label %do_srshr.exit87.us, !llvm.loop !911

.split96.us:                                      ; preds = %do_srshr.exit87.us, %do_srshr.exit85.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split96.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split96.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshrn_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 4 uses
  %i.o = icmp ult i32 %i.i, 64
  %i.p = zext nneg i32 %i.i to i64                ; 2 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  br i1 %i.o, label %do_srshr.exit.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split51.us

do_srshr.exit.us:                                 ; preds = %bb.a, %do_srshr.exit.us
  %.04549.us = phi i64 [ %i.ao, %do_srshr.exit.us ], [ 0, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04549.us
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = ashr i64 %i.u, %i.p
  %i.w = lshr i64 %i.u, %i.r
  %i.x = and i64 %i.w, 1
  %i.y = add nsw i64 %i.x, %i.v
  %i.z = tail call i64 @llvm.smax.i64(i64 %i.y, i64 -32768)
  %i.aa = tail call i64 @llvm.smin.i64(i64 %i.z, i64 32767)
  %i.ab = trunc nsw i64 %i.aa to i16
  %.idx.us = shl nuw nsw i64 %.04549.us, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx.us ; 2 uses
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04549.us
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = ashr i64 %i.af, %i.p
  %i.ah = lshr i64 %i.af, %i.r
  %i.ai = and i64 %i.ah, 1
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 -32768)
  %i.al = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 32767)
  %i.am = trunc nsw i64 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = add nuw nsw i64 %.04549.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.split51.us, label %do_srshr.exit.us, !llvm.loop !912

.split51.us:                                      ; preds = %do_srshr.exit.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split51.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split51.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqrshrn_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 4 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 7 uses
  %i.o = icmp ult i32 %i.i, 64
  %i.p = zext nneg i32 %i.i to i64                ; 3 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 3 uses
  br i1 %i.o, label %do_urshr.exit49.us.preheader, label %do_urshr.exit49.preheader, !prof !54

do_urshr.exit49.us.preheader:                     ; preds = %bb.a
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %do_urshr.exit49.us.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %do_urshr.exit49.us.preheader
  %i.s = getelementptr i8, ptr %spec.select, i64 %i.g
  %i.t = zext nneg i32 %.v.v.i to i64
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 264
  %bound0 = icmp ult ptr %spec.select, %i.v
  %bound1 = icmp ult ptr %1, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %do_urshr.exit49.us.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.p, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert57 = insertelement <4 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat58 = shufflevector <4 x i64> %broadcast.splatinsert57, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !alias.scope !918
  %i.x = zext <4 x i32> %wide.load to <4 x i64>   ; 2 uses
  %i.y = lshr <4 x i64> %i.x, %broadcast.splat
  %i.z = lshr <4 x i64> %i.x, %broadcast.splat58
  %i.aa = and <4 x i64> %i.z, splat (i64 1)
  %i.ab = add nuw nsw <4 x i64> %i.aa, %i.y
  %i.ac = call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.ab, <4 x i64> splat (i64 65535))
  %i.ad = trunc nuw <4 x i64> %i.ac to <4 x i16>
  %i.ae = shl nuw nsw i64 %index, 2
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index
  %wide.load59 = load <4 x i32>, ptr %i.ag, align 4, !alias.scope !918
  %i.ah = zext <4 x i32> %wide.load59 to <4 x i64> ; 2 uses
  %i.ai = lshr <4 x i64> %i.ah, %broadcast.splat
  %i.aj = lshr <4 x i64> %i.ah, %broadcast.splat58
  %i.ak = and <4 x i64> %i.aj, splat (i64 1)
  %i.al = add nuw nsw <4 x i64> %i.ak, %i.ai
  %i.am = call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.al, <4 x i64> splat (i64 65535))
  %i.an = trunc nuw <4 x i64> %i.am to <4 x i16>
  %interleaved.vec = shufflevector <4 x i16> %i.ad, <4 x i16> %i.an, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.af, align 2, !alias.scope !919, !noalias !918
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.split54.us, label %do_urshr.exit49.us.preheader60

do_urshr.exit49.us.preheader60:                   ; preds = %vector.memcheck, %do_urshr.exit49.us.preheader, %middle.block
  %.04552.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %do_urshr.exit49.us.preheader ], [ %n.vec, %middle.block ]
  br label %do_urshr.exit49.us

do_urshr.exit49.preheader:                        ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split54.us

do_urshr.exit49.us:                               ; preds = %do_urshr.exit49.us.preheader60, %do_urshr.exit49.us
  %.04552.us = phi i64 [ %i.bj, %do_urshr.exit49.us ], [ %.04552.us.ph, %do_urshr.exit49.us.preheader60 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04552.us
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, %i.p
  %i.at = lshr i64 %i.ar, %i.r
  %i.au = and i64 %i.at, 1
  %i.av = add nuw nsw i64 %i.au, %i.as
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.av, i64 65535)
  %i.ax = trunc nuw i64 %i.aw to i16
  %.idx51.us = shl nuw nsw i64 %.04552.us, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx51.us ; 2 uses
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04552.us
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, %i.p
  %i.bd = lshr i64 %i.bb, %i.r
  %i.be = and i64 %i.bd, 1
  %i.bf = add nuw nsw i64 %i.be, %i.bc
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 65535)
  %i.bh = trunc nuw i64 %i.bg to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = add nuw nsw i64 %.04552.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.h
  br i1 %exitcond.not, label %.split54.us, label %do_urshr.exit49.us, !llvm.loop !917

.split54.us:                                      ; preds = %do_urshr.exit49.us, %middle.block, %do_urshr.exit49.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split54.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split54.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshrun_sh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.k, %1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.m = icmp ugt ptr %i.l, %0
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  %spec.select = select i1 %i.n, ptr %3, ptr %0   ; 4 uses
  %i.o = icmp ult i32 %i.i, 64
  %i.p = zext nneg i32 %i.i to i64                ; 2 uses
  %i.q = add nsw i32 %i.i, -1
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  br i1 %i.o, label %do_srshr.exit.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split51.us

do_srshr.exit.us:                                 ; preds = %bb.a, %do_srshr.exit.us
  %.04549.us = phi i64 [ %i.ao, %do_srshr.exit.us ], [ 0, %bb.a ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04549.us
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = ashr i64 %i.u, %i.p
  %i.w = lshr i64 %i.u, %i.r
  %i.x = and i64 %i.w, 1
  %i.y = add nsw i64 %i.x, %i.v
  %i.z = tail call i64 @llvm.smax.i64(i64 %i.y, i64 0)
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 65535)
  %i.ab = trunc nuw i64 %i.aa to i16
  %.idx.us = shl nuw nsw i64 %.04549.us, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx.us ; 2 uses
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.04549.us
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = ashr i64 %i.af, %i.p
  %i.ah = lshr i64 %i.af, %i.r
  %i.ai = and i64 %i.ah, 1
  %i.aj = add nsw i64 %i.ai, %i.ag
  %i.ak = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 0)
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 65535)
  %i.am = trunc nuw i64 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = add nuw nsw i64 %.04549.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.h
  br i1 %exitcond.not, label %.split51.us, label %do_srshr.exit.us, !llvm.loop !920

.split51.us:                                      ; preds = %do_srshr.exit.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split51.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split51.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshrn_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 4 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split89.us

do_srshr.exit.us:                                 ; preds = %bb.a, %do_srshr.exit.us
  %.07787.us = phi i64 [ %i.bn, %do_srshr.exit.us ], [ 0, %bb.a ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07787.us
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = ashr i64 %i.w, %i.r
  %i.y = lshr i64 %i.w, %i.t
  %i.z = and i64 %i.y, 1
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -128)
  %i.ac = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 127)
  %i.ad = trunc nsw i64 %i.ac to i8
  %i.ae = shl nuw nsw i64 %.07787.us, 2
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ae ; 4 uses
  store i8 %i.ad, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07787.us
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = ashr i64 %i.ai, %i.r
  %i.ak = lshr i64 %i.ai, %i.t
  %i.al = and i64 %i.ak, 1
  %i.am = add nsw i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.smax.i64(i64 %i.am, i64 -128)
  %i.ao = tail call i64 @llvm.smin.i64(i64 %i.an, i64 127)
  %i.ap = trunc nsw i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.07787.us
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = ashr i64 %i.at, %i.r
  %i.av = lshr i64 %i.at, %i.t
  %i.aw = and i64 %i.av, 1
  %i.ax = add nsw i64 %i.aw, %i.au
  %i.ay = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 -128)
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 127)
  %i.ba = trunc nsw i64 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.07787.us
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = ashr i64 %i.be, %i.r
  %i.bg = lshr i64 %i.be, %i.t
  %i.bh = and i64 %i.bg, 1
  %i.bi = add nsw i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 -128)
  %i.bk = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 127)
  %i.bl = trunc nsw i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = add nuw nsw i64 %.07787.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.h
  br i1 %exitcond.not, label %.split89.us, label %do_srshr.exit.us, !llvm.loop !921

.split89.us:                                      ; preds = %do_srshr.exit.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split89.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split89.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqrshrn_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 4 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_urshr.exit87.us, label %do_urshr.exit87.preheader, !prof !54

do_urshr.exit87.preheader:                        ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split93.us

do_urshr.exit87.us:                               ; preds = %bb.a, %do_urshr.exit87.us
  %.07791.us = phi i64 [ %i.bj, %do_urshr.exit87.us ], [ 0, %bb.a ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07791.us
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = lshr i64 %i.w, %i.r
  %i.y = lshr i64 %i.w, %i.t
  %i.z = and i64 %i.y, 1
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 255)
  %i.ac = trunc nuw i64 %i.ab to i8
  %i.ad = shl nuw nsw i64 %.07791.us, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ad ; 4 uses
  store i8 %i.ac, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07791.us
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = lshr i64 %i.ah, %i.r
  %i.aj = lshr i64 %i.ah, %i.t
  %i.ak = and i64 %i.aj, 1
  %i.al = add nuw nsw i64 %i.ak, %i.ai
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 255)
  %i.an = trunc nuw i64 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.07791.us
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, %i.r
  %i.at = lshr i64 %i.ar, %i.t
  %i.au = and i64 %i.at, 1
  %i.av = add nuw nsw i64 %i.au, %i.as
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.av, i64 255)
  %i.ax = trunc nuw i64 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.07791.us
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, %i.r
  %i.bd = lshr i64 %i.bb, %i.t
  %i.be = and i64 %i.bd, 1
  %i.bf = add nuw nsw i64 %i.be, %i.bc
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 255)
  %i.bh = trunc nuw i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 %i.bh, ptr %i.bi, align 1
  %i.bj = add nuw nsw i64 %.07791.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bj, %i.h
  br i1 %exitcond.not, label %.split93.us, label %do_urshr.exit87.us, !llvm.loop !922

.split93.us:                                      ; preds = %do_urshr.exit87.us, %do_urshr.exit87.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split93.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split93.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshrun_sb(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 4 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split89.us

do_srshr.exit.us:                                 ; preds = %bb.a, %do_srshr.exit.us
  %.07787.us = phi i64 [ %i.bn, %do_srshr.exit.us ], [ 0, %bb.a ] ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.07787.us
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = ashr i64 %i.w, %i.r
  %i.y = lshr i64 %i.w, %i.t
  %i.z = and i64 %i.y, 1
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 0)
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 255)
  %i.ad = trunc nuw i64 %i.ac to i8
  %i.ae = shl nuw nsw i64 %.07787.us, 2
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.ae ; 4 uses
  store i8 %i.ad, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.07787.us
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = ashr i64 %i.ai, %i.r
  %i.ak = lshr i64 %i.ai, %i.t
  %i.al = and i64 %i.ak, 1
  %i.am = add nsw i64 %i.al, %i.aj
  %i.an = tail call i64 @llvm.smax.i64(i64 %i.am, i64 0)
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 255)
  %i.ap = trunc nuw i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %i.ap, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.07787.us
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sext i32 %i.as to i64                   ; 2 uses
  %i.au = ashr i64 %i.at, %i.r
  %i.av = lshr i64 %i.at, %i.t
  %i.aw = and i64 %i.av, 1
  %i.ax = add nsw i64 %i.aw, %i.au
  %i.ay = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 0)
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 255)
  %i.ba = trunc nuw i64 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i8 %i.ba, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.07787.us
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = ashr i64 %i.be, %i.r
  %i.bg = lshr i64 %i.be, %i.t
  %i.bh = and i64 %i.bg, 1
  %i.bi = add nsw i64 %i.bh, %i.bf
  %i.bj = tail call i64 @llvm.smax.i64(i64 %i.bi, i64 0)
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 255)
  %i.bl = trunc nuw i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  store i8 %i.bl, ptr %i.bm, align 1
  %i.bn = add nuw nsw i64 %.07787.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %i.h
  br i1 %exitcond.not, label %.split89.us, label %do_srshr.exit.us, !llvm.loop !923

.split89.us:                                      ; preds = %do_srshr.exit.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split89.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split89.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshrn_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 4 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split89.us

do_srshr.exit.us:                                 ; preds = %bb.a, %do_srshr.exit.us
  %.07787.us = phi i64 [ %i.bi, %do_srshr.exit.us ], [ 0, %bb.a ] ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.07787.us
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = ashr i64 %i.v, %i.r
  %i.x = lshr i64 %i.v, %i.t
  %i.y = and i64 %i.x, 1
  %i.z = add i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -32768)
  %i.ab = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 32767)
  %i.ac = trunc nsw i64 %i.ab to i16
  %.idx.us = shl nuw nsw i64 %.07787.us, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx.us ; 4 uses
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.07787.us
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = ashr i64 %i.af, %i.r
  %i.ah = lshr i64 %i.af, %i.t
  %i.ai = and i64 %i.ah, 1
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 -32768)
  %i.al = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 32767)
  %i.am = trunc nsw i64 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.07787.us
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ashr i64 %i.ap, %i.r
  %i.ar = lshr i64 %i.ap, %i.t
  %i.as = and i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq
  %i.au = tail call i64 @llvm.smax.i64(i64 %i.at, i64 -32768)
  %i.av = tail call i64 @llvm.smin.i64(i64 %i.au, i64 32767)
  %i.aw = trunc nsw i64 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.07787.us
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ashr i64 %i.az, %i.r
  %i.bb = lshr i64 %i.az, %i.t
  %i.bc = and i64 %i.bb, 1
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 -32768)
  %i.bf = tail call i64 @llvm.smin.i64(i64 %i.be, i64 32767)
  %i.bg = trunc nsw i64 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = add nuw nsw i64 %.07787.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.h
  br i1 %exitcond.not, label %.split89.us, label %do_srshr.exit.us, !llvm.loop !924

.split89.us:                                      ; preds = %do_srshr.exit.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split89.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split89.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_uqrshrn_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = ashr i32 %2, 10                          ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 5 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_urshr.exit87.us, label %.split, !prof !54

do_urshr.exit87.us:                               ; preds = %bb.a, %do_urshr.exit87.us
  %.07792.us = phi i64 [ %i.be, %do_urshr.exit87.us ], [ 0, %bb.a ] ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.07792.us
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = lshr i64 %i.v, %i.r
  %i.x = lshr i64 %i.v, %i.t
  %i.y = and i64 %i.x, 1
  %i.z = add i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 65535)
  %i.ab = trunc nuw i64 %i.aa to i16
  %.idx91.us = shl nuw nsw i64 %.07792.us, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx91.us ; 4 uses
  store i16 %i.ab, ptr %i.ac, align 2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.07792.us
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = lshr i64 %i.ae, %i.r
  %i.ag = lshr i64 %i.ae, %i.t
  %i.ah = and i64 %i.ag, 1
  %i.ai = add i64 %i.ah, %i.af
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 65535)
  %i.ak = trunc nuw i64 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.07792.us
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = lshr i64 %i.an, %i.r
  %i.ap = lshr i64 %i.an, %i.t
  %i.aq = and i64 %i.ap, 1
  %i.ar = add i64 %i.aq, %i.ao
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 65535)
  %i.at = trunc nuw i64 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i16 %i.at, ptr %i.au, align 2
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.07792.us
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = lshr i64 %i.aw, %i.r
  %i.ay = lshr i64 %i.aw, %i.t
  %i.az = and i64 %i.ay, 1
  %i.ba = add i64 %i.az, %i.ax
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 65535)
  %i.bc = trunc nuw i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = add nuw nsw i64 %.07792.us, 1           ; 2 uses
  %exitcond114.not = icmp eq i64 %i.be, %i.h
  br i1 %exitcond114.not, label %.split94.us, label %do_urshr.exit87.us, !llvm.loop !925

.split:                                           ; preds = %bb.a
  %i.bf = icmp eq i32 %i.i, 64
  br i1 %i.bf, label %do_urshr.exit87.us95, label %do_urshr.exit87.preheader

do_urshr.exit87.preheader:                        ; preds = %.split
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split94.us

do_urshr.exit87.us95:                             ; preds = %.split, %do_urshr.exit87.us95
  %.07792.us96 = phi i64 [ %i.ca, %do_urshr.exit87.us95 ], [ 0, %.split ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.07792.us96
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = lshr i64 %i.bh, 63
  %i.bj = trunc nuw nsw i64 %i.bi to i16
  %.idx.us = shl nuw nsw i64 %.07792.us96, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx.us ; 4 uses
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.07792.us96
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = lshr i64 %i.bm, 63
  %i.bo = trunc nuw nsw i64 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.07792.us96
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = lshr i64 %i.br, 63
  %i.bt = trunc nuw nsw i64 %i.bs to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i16 %i.bt, ptr %i.bu, align 2
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.07792.us96
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = lshr i64 %i.bw, 63
  %i.by = trunc nuw nsw i64 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 6
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = add nuw nsw i64 %.07792.us96, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %i.h
  br i1 %exitcond.not, label %.split94.us, label %do_urshr.exit87.us95, !llvm.loop !925

.split94.us:                                      ; preds = %do_urshr.exit87.us95, %do_urshr.exit87.us, %do_urshr.exit87.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split94.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split94.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @helper_sme2_sqrshrun_dh(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #3 {
bb.a:
  %3 = alloca %struct.ARMVectorReg, align 16      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %3, i8 0, i64 256, i1 false), !annotation !53
  %i.a = lshr i32 %2, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %2, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3
  %i.i = ashr i32 %2, 10                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.not.i = icmp ugt ptr %i.m, %1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.o = icmp ugt ptr %i.n, %0
  %i.p = select i1 %.not.i, i1 %i.o, i1 false
  %spec.select = select i1 %i.p, ptr %3, ptr %0   ; 4 uses
  %i.q = icmp ult i32 %i.i, 64
  %i.r = zext nneg i32 %i.i to i64                ; 4 uses
  %i.s = add nsw i32 %i.i, -1
  %i.t = zext nneg i32 %i.s to i64                ; 4 uses
  br i1 %i.q, label %do_srshr.exit.us, label %do_srshr.exit.preheader, !prof !54

do_srshr.exit.preheader:                          ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %spec.select, i8 0, i64 %i.g, i1 false)
  br label %.split89.us

do_srshr.exit.us:                                 ; preds = %bb.a, %do_srshr.exit.us
  %.07787.us = phi i64 [ %i.bi, %do_srshr.exit.us ], [ 0, %bb.a ] ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.07787.us
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = ashr i64 %i.v, %i.r
  %i.x = lshr i64 %i.v, %i.t
  %i.y = and i64 %i.x, 1
  %i.z = add i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.smax.i64(i64 %i.z, i64 0)
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 65535)
  %i.ac = trunc nuw i64 %i.ab to i16
  %.idx.us = shl nuw nsw i64 %.07787.us, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx.us ; 4 uses
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.07787.us
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = ashr i64 %i.af, %i.r
  %i.ah = lshr i64 %i.af, %i.t
  %i.ai = and i64 %i.ah, 1
  %i.aj = add i64 %i.ai, %i.ag
  %i.ak = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 0)
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 65535)
  %i.am = trunc nuw i64 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.07787.us
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.aq = ashr i64 %i.ap, %i.r
  %i.ar = lshr i64 %i.ap, %i.t
  %i.as = and i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq
  %i.au = tail call i64 @llvm.smax.i64(i64 %i.at, i64 0)
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 65535)
  %i.aw = trunc nuw i64 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.07787.us
  %i.az = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.ba = ashr i64 %i.az, %i.r
  %i.bb = lshr i64 %i.az, %i.t
  %i.bc = and i64 %i.bb, 1
  %i.bd = add i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 0)
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 65535)
  %i.bg = trunc nuw i64 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = add nuw nsw i64 %.07787.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.h
  br i1 %exitcond.not, label %.split89.us, label %do_srshr.exit.us, !llvm.loop !926

.split89.us:                                      ; preds = %do_srshr.exit.us, %do_srshr.exit.preheader
  %.not = icmp eq ptr %spec.select, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split89.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %spec.select, i64 noundef %i.g, i1 noundef false) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.split89.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_sclamp_b(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64
  %i.h = ashr i32 %3, 10                          ; 4 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.split35, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = icmp eq i32 %i.h, 1
  %i.j = and i32 %i.h, -2
  %unroll_iter = sext i32 %i.j to i64
  %i.k = and i32 %3, 1024
  %lcmp.mod.not = icmp eq i32 %i.k, 0
  %lcmp.mod37 = trunc i32 %i.h to i1
  br label %.lr.ph

.split35:                                         ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.034 = phi i64 [ %i.t, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.034
  %i.m = load i8, ptr %i.l, align 1               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.034
  %i.o = load i8, ptr %i.n, align 1               ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.034 ; 3 uses
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.03233.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ad, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.p = shl i64 %.03233.epil.init, 8
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.p ; 2 uses
  %i.q = load i8, ptr %gep.epil, align 1
  %i.r = tail call i8 @llvm.smax.i8(i8 %i.q, i8 %i.m)
  %i.s = tail call i8 @llvm.smin.i8(i8 %i.r, i8 %i.o)
  store i8 %i.s, ptr %gep.epil, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.t = add nuw nsw i64 %.034, 1                 ; 2 uses
  %exitcond36.not = icmp eq i64 %i.t, %i.g
  br i1 %exitcond36.not, label %.split35, label %.lr.ph, !llvm.loop !927

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.03233 = phi i64 [ %i.ad, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.u = shl i64 %.03233, 8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.u ; 2 uses
  %i.v = load i8, ptr %gep, align 1
  %i.w = tail call i8 @llvm.smax.i8(i8 %i.v, i8 %i.m)
  %i.x = tail call i8 @llvm.smin.i8(i8 %i.w, i8 %i.o)
  store i8 %i.x, ptr %gep, align 1
  %i.y = shl i64 %.03233, 8
  %i.z = getelementptr i8, ptr %invariant.gep, i64 %i.y
  %gep.1 = getelementptr i8, ptr %i.z, i64 256    ; 2 uses
  %i.aa = load i8, ptr %gep.1, align 1
  %i.ab = tail call i8 @llvm.smax.i8(i8 %i.aa, i8 %i.m)
  %i.ac = tail call i8 @llvm.smin.i8(i8 %i.ab, i8 %i.o)
  store i8 %i.ac, ptr %gep.1, align 1
  %i.ad = add nuw i64 %.03233, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !928
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sme2_sclamp_h(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr exact i32 %.v.i, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = ashr i32 %3, 10                          ; 4 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.split35, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = icmp eq i32 %i.i, 1
  %i.k = and i32 %i.i, -2
  %unroll_iter = sext i32 %i.k to i64
  %i.l = and i32 %3, 1024
  %lcmp.mod.not = icmp eq i32 %i.l, 0
  %lcmp.mod37 = trunc i32 %i.i to i1
  br label %.lr.ph

.split35:                                         ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.034 = phi i64 [ %i.t, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.034
  %i.n = load i16, ptr %i.m, align 2              ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.034
  %i.p = load i16, ptr %i.o, align 2              ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %.034 ; 3 uses
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.03233.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ac, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %.idx.epil = shl i64 %.03233.epil.init, 8
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.idx.epil ; 2 uses
  %i.q = load i16, ptr %gep.epil, align 2
  %i.r = tail call i16 @llvm.smax.i16(i16 %i.q, i16 %i.n)
  %i.s = tail call i16 @llvm.smin.i16(i16 %i.r, i16 %i.p)
  store i16 %i.s, ptr %gep.epil, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.t = add nuw nsw i64 %.034, 1                 ; 2 uses
  %exitcond36.not = icmp eq i64 %i.t, %i.h
  br i1 %exitcond36.not, label %.split35, label %.lr.ph, !llvm.loop !929
end_hunk_0
