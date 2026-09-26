Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/curve448?download=true
inline.NumInlined: 75
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 37
begin_hunk_0_@ossl_curve448_point_mul_by_ratio_and_encode_like_x448:bb.a
  %2 = alloca [1 x %struct.gf_s], align 16        ; 6 uses
  %3 = alloca [1 x %struct.gf_s], align 16        ; 6 uses
  %4 = alloca [1 x %struct.curve448_point_s], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, ptr noundef nonnull readonly align 16 dereferenceable(256) %1, i64 256, i1 false), !tbaa.struct !16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @ossl_gf_sqr(ptr noundef nonnull %2, ptr noundef nonnull %4) #6
  %i.b = call i64 @gf_isr(ptr noundef nonnull %3, ptr noundef nonnull %2) #6 ; 0 uses
  call void @ossl_gf_sqr(ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  call void @ossl_gf_mul(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  call void @ossl_gf_mul(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #6
  call void @ossl_gf_sqr(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #6
  call void @gf_serialize(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 1) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 256) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_x448_derive_public_key(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.gf_s], align 16        ; 6 uses
  %3 = alloca [1 x %struct.gf_s], align 16        ; 6 uses
  %4 = alloca [1 x %struct.curve448_point_s], align 16 ; 9 uses
  %i.a = alloca [56 x i8], align 16               ; 7 uses
  %5 = alloca [1 x %struct.curve448_scalar_s], align 16 ; 6 uses
  %6 = alloca [1 x %struct.curve448_point_s], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.a, ptr noundef nonnull align 1 dereferenceable(56) %1, i64 56, i1 false)
  %i.b = load i8, ptr %i.a, align 16, !tbaa !12
  %i.c = and i8 %i.b, -4
  store i8 %i.c, ptr %i.a, align 16, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 55 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = or i8 %i.e, -128
  store i8 %i.f, ptr %i.d, align 1, !tbaa !12
  call void @ossl_curve448_scalar_decode_long(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef 56) #6
  call void @ossl_curve448_scalar_halve(ptr noundef nonnull %5, ptr noundef nonnull %5) #6
  %i.g = load ptr, ptr @ossl_curve448_precomputed_base, align 8, !tbaa !42
  call void @ossl_curve448_precomputed_scalarmul(ptr noundef nonnull %6, ptr noundef %i.g, ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, ptr noundef nonnull readonly align 16 dereferenceable(256) %6, i64 256, i1 false), !tbaa.struct !16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @ossl_gf_sqr(ptr noundef nonnull %2, ptr noundef nonnull %4) #6
  %i.i = call i64 @gf_isr(ptr noundef nonnull %3, ptr noundef nonnull %2) #6 ; 0 uses
  call void @ossl_gf_sqr(ptr noundef nonnull %2, ptr noundef nonnull %3) #6
  call void @ossl_gf_mul(ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 16 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  call void @ossl_gf_mul(ptr noundef nonnull %i.j, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k) #6
  call void @ossl_gf_sqr(ptr noundef nonnull %i.k, ptr noundef nonnull %i.j) #6
  call void @gf_serialize(ptr noundef %0, ptr noundef nonnull %i.k, i32 noundef 1) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 256) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %6, i64 noundef 256) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @ossl_curve448_scalar_decode_long(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ossl_curve448_base_double_scalarmul_non_secret(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [1 x %struct.gf_s], align 16        ; 4 uses
  %5 = alloca [1 x %struct.gf_s], align 16        ; 4 uses
  %6 = alloca [1 x %struct.gf_s], align 16        ; 5 uses
  %7 = alloca [1 x %struct.gf_s], align 16        ; 5 uses
  %8 = alloca [1 x %struct.gf_s], align 16        ; 24 uses
  %9 = alloca [1 x %struct.gf_s], align 16        ; 4 uses
  %10 = alloca [1 x %struct.curve448_point_s], align 16 ; 30 uses
  %11 = alloca [1 x %struct.anon], align 16       ; 13 uses
  %12 = alloca [114 x %struct.smvt_control], align 16 ; 22 uses
  %13 = alloca [77 x %struct.smvt_control], align 16 ; 22 uses
  %14 = alloca [8 x [1 x %struct.anon]], align 16 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #6
  %i.a = load i64, ptr %1, align 8, !tbaa !11
  %i.b = and i64 %i.a, 65535
  %i.c = getelementptr inbounds nuw i8, ptr %13, i64 608
  store i32 -1, ptr %i.c, align 16, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 612
  store i32 0, ptr %i.d, align 4, !tbaa !54
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %bb.a
  %.05062.i = phi i32 [ 1, %bb.a ], [ %i.ai, %._crit_edge.i ] ; 5 uses
  %.05161.i = phi i64 [ %i.b, %bb.a ], [ %i.ah, %._crit_edge.i ] ; 2 uses
  %.05260.i = phi i32 [ 75, %bb.a ], [ %.153.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.e = icmp samesign ult i32 %.05062.i, 28
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %.05062.i, 2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = shl nuw nsw i32 %.05062.i, 4
  %i.k = and i32 %i.j, 48
  %i.l = zext nneg i32 %i.k to i64
  %i.m = lshr i64 %i.i, %i.l
  %i.n = shl i64 %i.m, 16
  %i.o = and i64 %i.n, 4294901760
  %i.p = add nuw nsw i64 %i.o, %.05161.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i64 [ %i.p, %bb.c ], [ %.05161.i, %bb.b ] ; 3 uses
  %i.q = and i64 %.1.i, 65535
  %.not56.i = icmp eq i64 %i.q, 0
  br i1 %.not56.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.r = shl nuw nsw i32 %.05062.i, 4
  %i.s = add nsw i32 %i.r, -16
  %i.t = sext i32 %.05260.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.t, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.258.i = phi i64 [ %.1.i, %.lr.ph.i ], [ %i.ab, %bb.e ] ; 2 uses
  %i.u = trunc i64 %.258.i to i32                 ; 2 uses
  %i.v = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.u, i1 true) ; 3 uses
  %i.w = lshr exact i32 %i.u, %i.v                ; 2 uses
  %i.x = and i32 %i.w, 63
  %i.y = and i32 %i.w, 64
  %spec.select.i = sub nsw i32 %i.x, %i.y         ; 2 uses
  %i.z = shl i32 %spec.select.i, %i.v
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub i64 %.258.i, %i.aa                  ; 3 uses
  %i.ac = add nuw nsw i32 %i.s, %i.v
  %i.ad = getelementptr inbounds [8 x i8], ptr %13, i64 %indvars.iv.i ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %spec.select.i, ptr %i.ae, align 4, !tbaa !54
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.af = and i64 %i.ab, 65535
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %bb.e, !llvm.loop !43

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %i.ag = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %.153.lcssa.i = phi i32 [ %.05260.i, %bb.d ], [ %i.ag, %._crit_edge.loopexit.i ] ; 5 uses
  %.2.lcssa.i = phi i64 [ %.1.i, %bb.d ], [ %i.ab, %._crit_edge.loopexit.i ]
  %i.ah = lshr exact i64 %.2.lcssa.i, 16
  %i.ai = add nuw nsw i32 %.05062.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, 30
  br i1 %exitcond.not.i, label %bb.f, label %bb.b, !llvm.loop !44

bb.f:                                             ; preds = %._crit_edge.i
  %i.aj = add i32 %.153.lcssa.i, 1                ; 6 uses
  %.not67.i = icmp eq i32 %.153.lcssa.i, 76
  br i1 %.not67.i, label %recode_wnaf.exit, label %.lr.ph65.preheader.i

.lr.ph65.preheader.i:                             ; preds = %bb.f
  %i.ak = sub i32 76, %.153.lcssa.i               ; 2 uses
  %wide.trip.count.i = zext i32 %i.ak to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %i.ak, 10
  br i1 %min.iters.check, label %.lr.ph65.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader.i
  %i.al = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = sub i32 -2, %.153.lcssa.i
  %i.ao = icmp ult i32 %i.an, %i.am
  %i.ap = icmp ugt i64 %i.al, 4294967295
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph65.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %index ; 2 uses
  %i.as = trunc nuw i64 %index to i32
  %i.at = add i32 %i.aj, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !55
  %wide.load107 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x i64> %wide.load, ptr %i.ar, align 16, !tbaa !55
  store <2 x i64> %wide.load107, ptr %i.ax, align 16, !tbaa !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %recode_wnaf.exit, label %.lr.ph65.i.preheader

.lr.ph65.i.preheader:                             ; preds = %vector.scevcheck, %.lr.ph65.preheader.i, %middle.block
  %indvars.iv70.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph65.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph65.i.prol.loopexit, label %.lr.ph65.i.prol

.lr.ph65.i.prol:                                  ; preds = %.lr.ph65.i.preheader, %.lr.ph65.i.prol
  %indvars.iv70.i.prol = phi i64 [ %indvars.iv.next71.i.prol, %.lr.ph65.i.prol ], [ %indvars.iv70.i.ph, %.lr.ph65.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph65.i.prol ], [ 0, %.lr.ph65.i.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv70.i.prol
  %i.ba = trunc nuw i64 %indvars.iv70.i.prol to i32
  %i.bb = add i32 %i.aj, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !55
  store i64 %i.be, ptr %i.az, align 8, !tbaa !55
  %indvars.iv.next71.i.prol = add nuw nsw i64 %indvars.iv70.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph65.i.prol.loopexit, label %.lr.ph65.i.prol, !llvm.loop !46

.lr.ph65.i.prol.loopexit:                         ; preds = %.lr.ph65.i.prol, %.lr.ph65.i.preheader
  %indvars.iv70.i.unr = phi i64 [ %indvars.iv70.i.ph, %.lr.ph65.i.preheader ], [ %indvars.iv.next71.i.prol, %.lr.ph65.i.prol ]
  %i.bf = sub nsw i64 %indvars.iv70.i.ph, %wide.trip.count.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %recode_wnaf.exit, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.prol.loopexit, %.lr.ph65.i
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i.3, %.lr.ph65.i ], [ %indvars.iv70.i.unr, %.lr.ph65.i.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv70.i
  %i.bi = trunc nuw i64 %indvars.iv70.i to i32
  %i.bj = add i32 %i.aj, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !55
  store i64 %i.bm, ptr %i.bh, align 8, !tbaa !55
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv.next71.i
  %i.bo = trunc nuw i64 %indvars.iv.next71.i to i32
  %i.bp = add i32 %i.aj, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !55
  store i64 %i.bs, ptr %i.bn, align 8, !tbaa !55
  %indvars.iv.next71.i.1 = add nuw nsw i64 %indvars.iv70.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv.next71.i.1
  %i.bu = trunc nuw i64 %indvars.iv.next71.i.1 to i32
  %i.bv = add i32 %i.aj, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !55
  store i64 %i.by, ptr %i.bt, align 8, !tbaa !55
  %indvars.iv.next71.i.2 = add nuw nsw i64 %indvars.iv70.i, 3 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %indvars.iv.next71.i.2
  %i.ca = trunc nuw i64 %indvars.iv.next71.i.2 to i32
  %i.cb = add i32 %i.aj, %i.ca
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !55
  store i64 %i.ce, ptr %i.bz, align 8, !tbaa !55
  %indvars.iv.next71.i.3 = add nuw nsw i64 %indvars.iv70.i, 4 ; 2 uses
  %exitcond73.not.i.3 = icmp eq i64 %indvars.iv.next71.i.3, %wide.trip.count.i
  br i1 %exitcond73.not.i.3, label %recode_wnaf.exit, label %.lr.ph65.i, !llvm.loop !47

recode_wnaf.exit:                                 ; preds = %.lr.ph65.i.prol.loopexit, %.lr.ph65.i, %middle.block, %bb.f
  %i.cf = load i64, ptr %3, align 8, !tbaa !11
  %i.cg = and i64 %i.cf, 65535
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 904
  store i32 -1, ptr %i.ch, align 8, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 908
  store i32 0, ptr %i.ci, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i77, %recode_wnaf.exit
  %.05062.i64 = phi i32 [ 1, %recode_wnaf.exit ], [ %i.dn, %._crit_edge.i77 ] ; 5 uses
  %.05161.i65 = phi i64 [ %i.cg, %recode_wnaf.exit ], [ %i.dm, %._crit_edge.i77 ] ; 2 uses
  %.05260.i66 = phi i32 [ 112, %recode_wnaf.exit ], [ %.153.lcssa.i78, %._crit_edge.i77 ] ; 2 uses
  %i.cj = icmp samesign ult i32 %.05062.i64, 28
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = lshr i32 %.05062.i64, 2
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !11
  %i.co = shl nuw nsw i32 %.05062.i64, 4
  %i.cp = and i32 %i.co, 48
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = lshr i64 %i.cn, %i.cq
  %i.cs = shl i64 %i.cr, 16
  %i.ct = and i64 %i.cs, 4294901760
  %i.cu = add nuw nsw i64 %i.ct, %.05161.i65
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i67 = phi i64 [ %i.cu, %bb.h ], [ %.05161.i65, %bb.g ] ; 3 uses
  %i.cv = and i64 %.1.i67, 65535
  %.not56.i68 = icmp eq i64 %i.cv, 0
  br i1 %.not56.i68, label %._crit_edge.i77, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %bb.i
  %i.cw = shl nuw nsw i32 %.05062.i64, 4
  %i.cx = add nsw i32 %i.cw, -16
  %i.cy = sext i32 %.05260.i66 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i69
  %indvars.iv.i70 = phi i64 [ %i.cy, %.lr.ph.i69 ], [ %indvars.iv.next.i74, %bb.j ] ; 2 uses
  %.258.i71 = phi i64 [ %.1.i67, %.lr.ph.i69 ], [ %i.dg, %bb.j ] ; 2 uses
  %i.cz = trunc i64 %.258.i71 to i32              ; 2 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cz, i1 true) ; 3 uses
  %i.db = lshr exact i32 %i.cz, %i.da             ; 2 uses
  %i.dc = and i32 %i.db, 15
  %i.dd = and i32 %i.db, 16
  %spec.select.i73 = sub nsw i32 %i.dc, %i.dd     ; 2 uses
  %i.de = shl i32 %spec.select.i73, %i.da
  %i.df = sext i32 %i.de to i64
  %i.dg = sub i64 %.258.i71, %i.df                ; 3 uses
  %i.dh = add nuw nsw i32 %i.cx, %i.da
  %i.di = getelementptr inbounds [8 x i8], ptr %12, i64 %indvars.iv.i70 ; 2 uses
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %spec.select.i73, ptr %i.dj, align 4, !tbaa !54
  %indvars.iv.next.i74 = add nsw i64 %indvars.iv.i70, -1 ; 2 uses
  %i.dk = and i64 %i.dg, 65535
  %.not.i75 = icmp eq i64 %i.dk, 0
  br i1 %.not.i75, label %._crit_edge.loopexit.i76, label %bb.j, !llvm.loop !43

._crit_edge.loopexit.i76:                         ; preds = %bb.j
  %i.dl = trunc nsw i64 %indvars.iv.next.i74 to i32
  br label %._crit_edge.i77

._crit_edge.i77:                                  ; preds = %._crit_edge.loopexit.i76, %bb.i
  %.153.lcssa.i78 = phi i32 [ %.05260.i66, %bb.i ], [ %i.dl, %._crit_edge.loopexit.i76 ] ; 5 uses
  %.2.lcssa.i79 = phi i64 [ %.1.i67, %bb.i ], [ %i.dg, %._crit_edge.loopexit.i76 ]
  %i.dm = lshr exact i64 %.2.lcssa.i79, 16
  %i.dn = add nuw nsw i32 %.05062.i64, 1          ; 2 uses
  %exitcond.not.i80 = icmp eq i32 %i.dn, 30
  br i1 %exitcond.not.i80, label %bb.k, label %bb.g, !llvm.loop !44

bb.k:                                             ; preds = %._crit_edge.i77
  %i.do = add i32 %.153.lcssa.i78, 1              ; 6 uses
  %.not67.i81 = icmp eq i32 %.153.lcssa.i78, 113
  br i1 %.not67.i81, label %recode_wnaf.exit88, label %.lr.ph65.preheader.i82

.lr.ph65.preheader.i82:                           ; preds = %bb.k
  %i.dp = sub i32 113, %.153.lcssa.i78            ; 2 uses
  %wide.trip.count.i83 = zext i32 %i.dp to i64    ; 6 uses
  %min.iters.check110 = icmp ult i32 %i.dp, 10
  br i1 %min.iters.check110, label %.lr.ph65.i84.preheader, label %vector.scevcheck108

vector.scevcheck108:                              ; preds = %.lr.ph65.preheader.i82
  %i.dq = add nsw i64 %wide.trip.count.i83, -1    ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = sub i32 -2, %.153.lcssa.i78
  %i.dt = icmp ult i32 %i.ds, %i.dr
  %i.du = icmp ugt i64 %i.dq, 4294967295
  %i.dv = or i1 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph65.i84.preheader, label %vector.ph111

vector.ph111:                                     ; preds = %vector.scevcheck108
  %n.vec112 = and i64 %wide.trip.count.i83, 4294967292 ; 3 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next117, %vector.body113 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %index114 ; 2 uses
  %i.dx = trunc nuw i64 %index114 to i32
  %i.dy = add i32 %i.do, %i.dx
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load115 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !55
  %wide.load116 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !55
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <2 x i64> %wide.load115, ptr %i.dw, align 16, !tbaa !55
  store <2 x i64> %wide.load116, ptr %i.ec, align 16, !tbaa !55
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.ed, label %middle.block118, label %vector.body113, !llvm.loop !48

middle.block118:                                  ; preds = %vector.body113
  %cmp.n119 = icmp eq i64 %n.vec112, %wide.trip.count.i83
  br i1 %cmp.n119, label %recode_wnaf.exit88, label %.lr.ph65.i84.preheader

.lr.ph65.i84.preheader:                           ; preds = %vector.scevcheck108, %.lr.ph65.preheader.i82, %middle.block118
  %indvars.iv70.i85.ph = phi i64 [ 0, %vector.scevcheck108 ], [ 0, %.lr.ph65.preheader.i82 ], [ %n.vec112, %middle.block118 ] ; 3 uses
  %xtraiter122 = and i64 %wide.trip.count.i83, 3  ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph65.i84.prol.loopexit, label %.lr.ph65.i84.prol

.lr.ph65.i84.prol:                                ; preds = %.lr.ph65.i84.preheader, %.lr.ph65.i84.prol
  %indvars.iv70.i85.prol = phi i64 [ %indvars.iv.next71.i86.prol, %.lr.ph65.i84.prol ], [ %indvars.iv70.i85.ph, %.lr.ph65.i84.preheader ] ; 3 uses
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.lr.ph65.i84.prol ], [ 0, %.lr.ph65.i84.preheader ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv70.i85.prol
  %i.ef = trunc nuw i64 %indvars.iv70.i85.prol to i32
  %i.eg = add i32 %i.do, %i.ef
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !55
  store i64 %i.ej, ptr %i.ee, align 8, !tbaa !55
  %indvars.iv.next71.i86.prol = add nuw nsw i64 %indvars.iv70.i85.prol, 1 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.lr.ph65.i84.prol.loopexit, label %.lr.ph65.i84.prol, !llvm.loop !49

.lr.ph65.i84.prol.loopexit:                       ; preds = %.lr.ph65.i84.prol, %.lr.ph65.i84.preheader
  %indvars.iv70.i85.unr = phi i64 [ %indvars.iv70.i85.ph, %.lr.ph65.i84.preheader ], [ %indvars.iv.next71.i86.prol, %.lr.ph65.i84.prol ]
  %i.ek = sub nsw i64 %indvars.iv70.i85.ph, %wide.trip.count.i83
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %recode_wnaf.exit88, label %.lr.ph65.i84

.lr.ph65.i84:                                     ; preds = %.lr.ph65.i84.prol.loopexit, %.lr.ph65.i84
  %indvars.iv70.i85 = phi i64 [ %indvars.iv.next71.i86.3, %.lr.ph65.i84 ], [ %indvars.iv70.i85.unr, %.lr.ph65.i84.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv70.i85
  %i.en = trunc nuw i64 %indvars.iv70.i85 to i32
  %i.eo = add i32 %i.do, %i.en
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !55
  store i64 %i.er, ptr %i.em, align 8, !tbaa !55
  %indvars.iv.next71.i86 = add nuw nsw i64 %indvars.iv70.i85, 1 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next71.i86
  %i.et = trunc nuw i64 %indvars.iv.next71.i86 to i32
  %i.eu = add i32 %i.do, %i.et
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !55
  store i64 %i.ex, ptr %i.es, align 8, !tbaa !55
  %indvars.iv.next71.i86.1 = add nuw nsw i64 %indvars.iv70.i85, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next71.i86.1
  %i.ez = trunc nuw i64 %indvars.iv.next71.i86.1 to i32
  %i.fa = add i32 %i.do, %i.ez
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !55
  store i64 %i.fd, ptr %i.ey, align 8, !tbaa !55
  %indvars.iv.next71.i86.2 = add nuw nsw i64 %indvars.iv70.i85, 3 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %indvars.iv.next71.i86.2
  %i.ff = trunc nuw i64 %indvars.iv.next71.i86.2 to i32
  %i.fg = add i32 %i.do, %i.ff
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !55
  store i64 %i.fj, ptr %i.fe, align 8, !tbaa !55
  %indvars.iv.next71.i86.3 = add nuw nsw i64 %indvars.iv70.i85, 4 ; 2 uses
  %exitcond73.not.i87.3 = icmp eq i64 %indvars.iv.next71.i86.3, %wide.trip.count.i83
  br i1 %exitcond73.not.i87.3, label %recode_wnaf.exit88, label %.lr.ph65.i84, !llvm.loop !50

recode_wnaf.exit88:                               ; preds = %.lr.ph65.i84.prol.loopexit, %.lr.ph65.i84, %middle.block118, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #6
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @gf_sub(ptr noundef nonnull %14, ptr noundef nonnull %i.fk, ptr noundef %2) #6
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 64
  call void @gf_add(ptr noundef nonnull %i.fl, ptr noundef %2, ptr noundef nonnull %i.fk) #6
  %i.fm = getelementptr inbounds nuw i8, ptr %14, i64 128 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.fm, ptr noundef nonnull %i.fn, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.fm, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.fm) #6
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 192 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  call void @gf_add(ptr noundef nonnull %i.fo, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fp) #6
  call fastcc void @point_double_internal(ptr noundef nonnull %10, ptr noundef %2, i32 noundef 0)
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 16 uses
  call void @gf_sub(ptr noundef nonnull %11, ptr noundef nonnull %i.fq, ptr noundef nonnull %10) #6
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 64
  call void @gf_add(ptr noundef nonnull %i.fr, ptr noundef nonnull %10, ptr noundef nonnull %i.fq) #6
  %i.fs = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 192 ; 8 uses
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.fs, ptr noundef nonnull %i.ft, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.fs, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.fs) #6
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 192 ; 7 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 30 uses
  call void @gf_add(ptr noundef nonnull %i.fu, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @ossl_gf_mul(ptr noundef nonnull %9, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fo) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.fv, ptr noundef nonnull align 16 dereferenceable(64) %9, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @add_niels_to_pt(ptr noundef nonnull %10, ptr noundef nonnull %14, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %i.fw = getelementptr inbounds nuw i8, ptr %14, i64 256
  call void @gf_sub(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.fq, ptr noundef nonnull %10) #6
  %i.fx = getelementptr inbounds nuw i8, ptr %14, i64 320
  call void @gf_add(ptr noundef nonnull %i.fx, ptr noundef nonnull %10, ptr noundef nonnull %i.fq) #6
  %i.fy = getelementptr inbounds nuw i8, ptr %14, i64 384 ; 3 uses
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.fy, ptr noundef nonnull %i.ft, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.fy, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.fy) #6
  %i.fz = getelementptr inbounds nuw i8, ptr %14, i64 448
  call void @gf_add(ptr noundef nonnull %i.fz, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @ossl_gf_mul(ptr noundef nonnull %8, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fu) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.fv, ptr noundef nonnull align 16 dereferenceable(64) %8, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @add_niels_to_pt(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 512
  call void @gf_sub(ptr noundef nonnull %i.ga, ptr noundef nonnull %i.fq, ptr noundef nonnull %10) #6
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 576
  call void @gf_add(ptr noundef nonnull %i.gb, ptr noundef nonnull %10, ptr noundef nonnull %i.fq) #6
  %i.gc = getelementptr inbounds nuw i8, ptr %14, i64 640 ; 3 uses
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.gc, ptr noundef nonnull %i.ft, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.gc, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.gc) #6
  %i.gd = getelementptr inbounds nuw i8, ptr %14, i64 704
  call void @gf_add(ptr noundef nonnull %i.gd, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @ossl_gf_mul(ptr noundef nonnull %8, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fu) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.fv, ptr noundef nonnull align 16 dereferenceable(64) %8, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @add_niels_to_pt(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.ge = getelementptr inbounds nuw i8, ptr %14, i64 768
  call void @gf_sub(ptr noundef nonnull %i.ge, ptr noundef nonnull %i.fq, ptr noundef nonnull %10) #6
  %i.gf = getelementptr inbounds nuw i8, ptr %14, i64 832
  call void @gf_add(ptr noundef nonnull %i.gf, ptr noundef nonnull %10, ptr noundef nonnull %i.fq) #6
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 896 ; 3 uses
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.ft, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.gg, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.gg) #6
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 960
  call void @gf_add(ptr noundef nonnull %i.gh, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @ossl_gf_mul(ptr noundef nonnull %8, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fu) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.fv, ptr noundef nonnull align 16 dereferenceable(64) %8, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @add_niels_to_pt(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.gi = getelementptr inbounds nuw i8, ptr %14, i64 1024
  call void @gf_sub(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.fq, ptr noundef nonnull %10) #6
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 1088
  call void @gf_add(ptr noundef nonnull %i.gj, ptr noundef nonnull %10, ptr noundef nonnull %i.fq) #6
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 1152 ; 3 uses
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.gk, ptr noundef nonnull %i.ft, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.gk, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.gk) #6
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 1216
  call void @gf_add(ptr noundef nonnull %i.gl, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @ossl_gf_mul(ptr noundef nonnull %8, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fu) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.fv, ptr noundef nonnull align 16 dereferenceable(64) %8, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @add_niels_to_pt(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.gm = getelementptr inbounds nuw i8, ptr %14, i64 1280
  call void @gf_sub(ptr noundef nonnull %i.gm, ptr noundef nonnull %i.fq, ptr noundef nonnull %10) #6
  %i.gn = getelementptr inbounds nuw i8, ptr %14, i64 1344
  call void @gf_add(ptr noundef nonnull %i.gn, ptr noundef nonnull %10, ptr noundef nonnull %i.fq) #6
  %i.go = getelementptr inbounds nuw i8, ptr %14, i64 1408 ; 3 uses
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.go, ptr noundef nonnull %i.ft, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.go, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.go) #6
  %i.gp = getelementptr inbounds nuw i8, ptr %14, i64 1472
  call void @gf_add(ptr noundef nonnull %i.gp, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @ossl_gf_mul(ptr noundef nonnull %8, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fu) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.fv, ptr noundef nonnull align 16 dereferenceable(64) %8, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @add_niels_to_pt(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 1536
  call void @gf_sub(ptr noundef nonnull %i.gq, ptr noundef nonnull %i.fq, ptr noundef nonnull %10) #6
  %i.gr = getelementptr inbounds nuw i8, ptr %14, i64 1600
  call void @gf_add(ptr noundef nonnull %i.gr, ptr noundef nonnull %10, ptr noundef nonnull %i.fq) #6
  %i.gs = getelementptr inbounds nuw i8, ptr %14, i64 1664 ; 3 uses
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.gs, ptr noundef nonnull %i.ft, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.gs, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.gs) #6
  %i.gt = getelementptr inbounds nuw i8, ptr %14, i64 1728
  call void @gf_add(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #6
  call void @ossl_gf_mul(ptr noundef nonnull %8, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fu) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.fv, ptr noundef nonnull align 16 dereferenceable(64) %8, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @add_niels_to_pt(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 1792
  call void @gf_sub(ptr noundef nonnull %i.gu, ptr noundef nonnull %i.fq, ptr noundef nonnull %10) #6
  %i.gv = getelementptr inbounds nuw i8, ptr %14, i64 1856
  call void @gf_add(ptr noundef nonnull %i.gv, ptr noundef nonnull %10, ptr noundef nonnull %i.fq) #6
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 1920 ; 3 uses
  call void @ossl_gf_mulw_unsigned(ptr noundef nonnull %i.gw, ptr noundef nonnull %i.ft, i32 noundef 78164) #6
  call void @gf_sub(ptr noundef nonnull %i.gw, ptr noundef nonnull @ZERO, ptr noundef nonnull %i.gw) #6
  %i.gx = getelementptr inbounds nuw i8, ptr %14, i64 1984
  call void @gf_add(ptr noundef nonnull %i.gx, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %10, i64 noundef 256) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %11, i64 noundef 256) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  %i.gy = load i32, ptr %12, align 16, !tbaa !53  ; 6 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %recode_wnaf.exit88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %0, ptr noundef nonnull align 16 dereferenceable(256) @ossl_curve448_point_identity, i64 256, i1 false), !tbaa.struct !16
  br label %bb.ad

bb.m:                                             ; preds = %recode_wnaf.exit88
  %i.ha = load i32, ptr %13, align 16, !tbaa !53  ; 3 uses
  %i.hb = icmp sgt i32 %i.gy, %i.ha
  br i1 %i.hb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !54
  %i.he = ashr i32 %i.hd, 1
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [256 x i8], ptr %14, i64 %i.hf ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 2 uses
  call void @gf_add(ptr noundef nonnull %7, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hg) #6
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  call void @gf_sub(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hg) #6
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @ossl_gf_mul(ptr noundef nonnull %i.hj, ptr noundef nonnull %i.hi, ptr noundef nonnull %7) #6
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 192 ; 3 uses
  call void @ossl_gf_mul(ptr noundef %0, ptr noundef nonnull %i.hk, ptr noundef nonnull %i.hi) #6
  call void @ossl_gf_mul(ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hk, ptr noundef nonnull %7) #6
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @ossl_gf_sqr(ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hk) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.hm = icmp eq i32 %i.gy, %i.ha
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  br i1 %i.hm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !54
  %i.hq = ashr i32 %i.hp, 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [256 x i8], ptr %14, i64 %i.hr ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 64 ; 2 uses
  call void @gf_add(ptr noundef nonnull %6, ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hs) #6
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  call void @gf_sub(ptr noundef nonnull %i.hu, ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hs) #6
  call void @ossl_gf_mul(ptr noundef nonnull %i.hn, ptr noundef nonnull %i.hu, ptr noundef nonnull %6) #6
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 192 ; 3 uses
  call void @ossl_gf_mul(ptr noundef %0, ptr noundef nonnull %i.hv, ptr noundef nonnull %i.hu) #6
  call void @ossl_gf_mul(ptr noundef nonnull %i.hu, ptr noundef nonnull %i.hv, ptr noundef nonnull %6) #6
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @ossl_gf_sqr(ptr noundef nonnull %i.hw, ptr noundef nonnull %i.hv) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %i.hx = load ptr, ptr @ossl_curve448_wnaf_base, align 8, !tbaa !59
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !54
  %i.ia = ashr i32 %i.hz, 1
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [192 x i8], ptr %i.hx, i64 %i.ib
  call fastcc void @add_niels_to_pt(ptr noundef %0, ptr noundef %i.ic, i32 noundef %i.gy)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.id = load ptr, ptr @ossl_curve448_wnaf_base, align 8, !tbaa !59
  %i.ie = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !54
  %i.ig = ashr i32 %i.if, 1
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [192 x i8], ptr %i.id, i64 %i.ih ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 64 ; 2 uses
  call void @gf_add(ptr noundef nonnull %i.ij, ptr noundef nonnull %i.ik, ptr noundef %i.ii) #6
  call void @gf_sub(ptr noundef %0, ptr noundef nonnull %i.ik, ptr noundef %i.ii) #6
  call void @ossl_gf_mul(ptr noundef nonnull %i.hn, ptr noundef nonnull %i.ij, ptr noundef %0) #6
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.il, ptr noundef nonnull align 16 dereferenceable(64) @ONE, i64 64, i1 false), !tbaa.struct !15
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.051 = phi i32 [ 0, %bb.n ], [ 1, %bb.p ], [ 1, %bb.q ]
  %.049 = phi i32 [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.q ]
  %.0 = phi i32 [ %i.gy, %bb.n ], [ %i.gy, %bb.p ], [ %i.ha, %bb.q ] ; 2 uses
  %.not105 = icmp eq i32 %.0, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.ac
  %.195.in = phi i32 [ %.0, %.lr.ph ], [ %.195, %bb.ac ] ; 2 uses
  %.15094 = phi i32 [ %.049, %.lr.ph ], [ %.2, %bb.ac ] ; 3 uses
  %.15293 = phi i32 [ %.051, %.lr.ph ], [ %.253, %bb.ac ] ; 3 uses
  %.195 = add nsw i32 %.195.in, -1                ; 6 uses
  %i.in = sext i32 %.15094 to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %12, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !53
  %i.iq = icmp ne i32 %.195, %i.ip                ; 2 uses
  %i.ir = sext i32 %.15293 to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %13, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !53
  %i.iu = icmp ne i32 %.195, %i.it                ; 4 uses
  %.not = icmp ne i32 %.195, 0                    ; 3 uses
  %i.iv = select i1 %.not, i1 %i.iq, i1 false
  %narrow = select i1 %i.iv, i1 %i.iu, i1 false
  %i.iw = zext i1 %narrow to i32
  call fastcc void @point_double_internal(ptr noundef %0, ptr noundef %0, i32 noundef %i.iw)
  br i1 %i.iq, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !54 ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ja = lshr i32 %i.iy, 1
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [256 x i8], ptr %14, i64 %i.jb ; 2 uses
  %narrow90 = select i1 %.not, i1 %i.iu, i1 false
  %spec.select = zext i1 %narrow90 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 192
  call void @ossl_gf_mul(ptr noundef nonnull %5, ptr noundef nonnull %i.im, ptr noundef nonnull %i.jd) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.im, ptr noundef nonnull align 16 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @add_niels_to_pt(ptr noundef %0, ptr noundef nonnull %i.jc, i32 noundef range(i32 0, 2) %spec.select)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.je = sub nsw i32 0, %i.iy
  %i.jf = lshr i32 %i.je, 1
  %i.jg = zext nneg i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [256 x i8], ptr %14, i64 %i.jg ; 2 uses
  %narrow89 = select i1 %.not, i1 %i.iu, i1 false
  %spec.select63 = zext i1 %narrow89 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 192
  call void @ossl_gf_mul(ptr noundef nonnull %4, ptr noundef nonnull %i.im, ptr noundef nonnull %i.ji) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.im, ptr noundef nonnull align 16 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !15
  call fastcc void @sub_niels_from_pt(ptr noundef %0, ptr noundef nonnull %i.jh, i32 noundef range(i32 0, 2) %spec.select63)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.jj = add nsw i32 %.15094, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.2 = phi i32 [ %i.jj, %bb.w ], [ %.15094, %bb.s ]
  br i1 %i.iu, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jk = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !54 ; 3 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  %i.jn = load ptr, ptr @ossl_curve448_wnaf_base, align 8, !tbaa !59 ; 2 uses
  br i1 %i.jm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.jo = lshr i32 %i.jl, 1
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [192 x i8], ptr %i.jn, i64 %i.jp
  call fastcc void @add_niels_to_pt(ptr noundef %0, ptr noundef %i.jq, i32 noundef %.195)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.jr = sub nsw i32 0, %i.jl
  %i.js = lshr i32 %i.jr, 1
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [192 x i8], ptr %i.jn, i64 %i.jt
  call fastcc void @sub_niels_from_pt(ptr noundef %0, ptr noundef %i.ju, i32 noundef %.195)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.jv = add nsw i32 %.15293, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.253 = phi i32 [ %i.jv, %bb.ab ], [ %.15293, %bb.x ]
  %i.jw = icmp samesign ugt i32 %.195.in, 1
  br i1 %i.jw, label %bb.s, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.ac, %bb.r
  call void @OPENSSL_cleanse(ptr noundef nonnull %12, i64 noundef 912) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %13, i64 noundef 616) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %14, i64 noundef 2048) #6
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sub_niels_from_pt(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2147483647) %2) unnamed_addr #0 {
gf_add_RAW.exit26:
  %3 = alloca [1 x %struct.gf_s], align 16        ; 14 uses
  %4 = alloca [1 x %struct.gf_s], align 16        ; 16 uses
  %5 = alloca [1 x %struct.gf_s], align 16        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11
  %i.l = add i64 %i.i, 144115188075855868
  %i.m = sub i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.y = load <4 x i64>, ptr %i.a, align 8, !tbaa !11
  %i.z = load <4 x i64>, ptr %0, align 8, !tbaa !11
  %i.aa = add <4 x i64> %i.y, splat (i64 144115188075855870)
  %i.ab = sub <4 x i64> %i.aa, %i.z               ; 3 uses
  %i.ac = add i64 %i.u, 144115188075855870
  %i.ad = load <2 x i64>, ptr %i.o, align 8, !tbaa !11
  %i.ae = load <2 x i64>, ptr %i.p, align 8, !tbaa !11
  %i.af = add <2 x i64> %i.ad, splat (i64 144115188075855870)
  %i.ag = sub <2 x i64> %i.af, %i.ae              ; 2 uses
  %i.ah = sub i64 %i.ac, %i.w                     ; 3 uses
  %i.ai = insertelement <4 x i64> poison, i64 %i.ah, i64 0
  %i.aj = shufflevector <4 x i64> %i.ai, <4 x i64> %i.ab, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.ak = lshr <4 x i64> %i.aj, splat (i64 56)
  %i.al = lshr i64 %i.ah, 56
  %i.am = add i64 %i.al, %i.m                     ; 2 uses
  %i.an = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ao = insertelement <4 x i64> %i.an, i64 %i.am, i64 0
  %i.ap = insertelement <4 x i64> %i.ao, i64 %i.ah, i64 3
  %i.aq = and <4 x i64> %i.ap, splat (i64 72057594037927935)
  %i.ar = insertelement <4 x i64> poison, i64 %i.am, i64 0
  %i.as = shufflevector <4 x i64> %i.ab, <4 x i64> %i.ar, <4 x i32> <i32 3, i32 4, i32 poison, i32 poison>
  %i.at = shufflevector <2 x i64> %i.ag, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x i64> %i.as, <4 x i64> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.av = lshr <4 x i64> %i.au, splat (i64 56)
  %i.aw = add nuw nsw <4 x i64> %i.av, %i.aq
  store <4 x i64> %i.aw, ptr %i.n, align 16, !tbaa !11
  %i.ax = and <4 x i64> %i.ab, splat (i64 72057594037927935)
  %i.ay = add nuw nsw <4 x i64> %i.ak, %i.ax
  store <4 x i64> %i.ay, ptr %4, align 16, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @ossl_gf_mul(ptr noundef nonnull %3, ptr noundef nonnull %i.az, ptr noundef nonnull %4) #6
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bh = load <4 x i64>, ptr %0, align 8, !tbaa !11
  %i.bi = load <4 x i64>, ptr %i.a, align 8, !tbaa !11
  %i.bj = add <4 x i64> %i.bi, %i.bh              ; 3 uses
  %i.bk = shufflevector <4 x i64> %i.bj, <4 x i64> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 2>
  %i.bl = load <2 x i64>, ptr %i.j, align 8, !tbaa !11
  %i.bm = load <2 x i64>, ptr %i.bd, align 8, !tbaa !11
  %i.bn = add <2 x i64> %i.bm, %i.bl
  %i.bo = load <2 x i64>, ptr %i.bf, align 8, !tbaa !11
  %i.bp = load <2 x i64>, ptr %i.r, align 8, !tbaa !11
  %i.bq = add <2 x i64> %i.bo, %i.bp              ; 4 uses
  %i.br = shufflevector <2 x i64> %i.bq, <2 x i64> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x i64> %i.br, <4 x i64> %i.bk, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bt = lshr <4 x i64> %i.bs, splat (i64 56)
  %i.bu = extractelement <2 x i64> %i.bq, i64 1
  %i.bv = lshr i64 %i.bu, 56
  %i.bw = and <2 x i64> %i.bq, splat (i64 72057594037927935)
  %i.bx = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bv, i64 0
  %i.by = add <2 x i64> %i.bn, %i.bx              ; 3 uses
  %i.bz = shufflevector <2 x i64> %i.by, <2 x i64> %i.bq, <2 x i32> <i32 1, i32 2>
  %i.ca = lshr <2 x i64> %i.bz, splat (i64 56)
  %i.cb = add nuw nsw <2 x i64> %i.ca, %i.bw
  store <2 x i64> %i.cb, ptr %i.s, align 16, !tbaa !11
  %i.cc = and <2 x i64> %i.by, splat (i64 72057594037927935)
  %i.cd = shufflevector <4 x i64> %i.bj, <4 x i64> poison, <2 x i32> <i32 3, i32 poison>
  %i.ce = shufflevector <2 x i64> %i.cd, <2 x i64> %i.by, <2 x i32> <i32 0, i32 2>
  %i.cf = lshr <2 x i64> %i.ce, splat (i64 56)
  %i.cg = add nuw nsw <2 x i64> %i.cf, %i.cc
  store <2 x i64> %i.cg, ptr %i.n, align 16, !tbaa !11
  %i.ch = and <4 x i64> %i.bj, splat (i64 72057594037927935)
  %i.ci = add nuw nsw <4 x i64> %i.ch, %i.bt
  store <4 x i64> %i.ci, ptr %4, align 16, !tbaa !11
  call void @ossl_gf_mul(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %4) #6
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @ossl_gf_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck) #6
  %i.cl = load i64, ptr %3, align 16, !tbaa !11   ; 2 uses
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.cn = add i64 %i.cm, %i.cl                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11 ; 2 uses
  %i.cq = load i64, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %i.cr = add i64 %i.cq, %i.cp                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 16, !tbaa !11 ; 2 uses
  %i.cv = load i64, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.cw = add i64 %i.cv, %i.cu                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !11 ; 2 uses
  %i.da = load i64, ptr %i.bc, align 8, !tbaa !11 ; 2 uses
  %i.db = add i64 %i.da, %i.cz                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 16, !tbaa !11 ; 2 uses
  %i.df = load i64, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %i.dg = add i64 %i.df, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !11 ; 2 uses
  %i.dk = load i64, ptr %i.be, align 8, !tbaa !11 ; 2 uses
  %i.dl = add i64 %i.dk, %i.dj                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 16, !tbaa !11 ; 2 uses
  %i.dp = load i64, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.dq = add i64 %i.dp, %i.do                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !11 ; 2 uses
  %i.du = load i64, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.dv = add i64 %i.du, %i.dt                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.dx = lshr i64 %i.dv, 56                      ; 2 uses
  %i.dy = add i64 %i.dg, %i.dx                    ; 2 uses
  %i.dz = and i64 %i.dv, 72057594037927935
  %i.ea = lshr i64 %i.dq, 56
  %i.eb = add nuw nsw i64 %i.ea, %i.dz
  store i64 %i.eb, ptr %i.dw, align 8, !tbaa !11
  %i.ec = and i64 %i.dq, 72057594037927935
  %i.ed = lshr i64 %i.dl, 56
  %i.ee = add nuw nsw i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %i.dr, align 16, !tbaa !11
  %i.ef = and i64 %i.dl, 72057594037927935
  %i.eg = lshr i64 %i.dy, 56
  %i.eh = add nuw nsw i64 %i.eg, %i.ef
  store i64 %i.eh, ptr %i.dm, align 8, !tbaa !11
  %i.ei = and i64 %i.dy, 72057594037927935
  %i.ej = lshr i64 %i.db, 56
  %i.ek = add nuw nsw i64 %i.ej, %i.ei
end_hunk_0
begin_hunk_1_@sub_niels_from_pt:gf_add_RAW.exit26
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !11 ; 2 uses
  %i.hd = load i64, ptr %i.j, align 8, !tbaa !11  ; 2 uses
  %i.he = add i64 %i.hd, %i.hc
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !11 ; 2 uses
  %i.hh = load i64, ptr %i.p, align 8, !tbaa !11  ; 2 uses
  %i.hi = add i64 %i.hh, %i.hg                    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !11 ; 2 uses
  %i.hl = load i64, ptr %i.r, align 8, !tbaa !11  ; 2 uses
  %i.hm = add i64 %i.hl, %i.hk                    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !11 ; 2 uses
  %i.hp = load i64, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %i.hq = add i64 %i.hp, %i.ho                    ; 2 uses
  %i.hr = lshr i64 %i.hq, 56                      ; 2 uses
  %i.hs = add i64 %i.he, %i.hr                    ; 2 uses
  %i.ht = and i64 %i.hq, 72057594037927935
  %i.hu = lshr i64 %i.hm, 56
  %i.hv = add nuw nsw i64 %i.hu, %i.ht
  store i64 %i.hv, ptr %i.bg, align 8, !tbaa !11
  %i.hw = and i64 %i.hm, 72057594037927935
  %i.hx = lshr i64 %i.hi, 56
  %i.hy = add nuw nsw i64 %i.hx, %i.hw
  store i64 %i.hy, ptr %i.bf, align 8, !tbaa !11
  %i.hz = and i64 %i.hi, 72057594037927935
  %i.ia = lshr i64 %i.hs, 56
  %i.ib = add nuw nsw i64 %i.ia, %i.hz
  store i64 %i.ib, ptr %i.be, align 8, !tbaa !11
  %i.ic = and i64 %i.hs, 72057594037927935
  %i.id = lshr i64 %i.ha, 56
  %i.ie = add nuw nsw i64 %i.id, %i.ic
  store i64 %i.ie, ptr %i.bd, align 8, !tbaa !11
  %i.if = and i64 %i.ha, 72057594037927935
  %i.ig = lshr i64 %i.gw, 56
  %i.ih = add nuw nsw i64 %i.ig, %i.if
  store i64 %i.ih, ptr %i.bc, align 8, !tbaa !11
  %i.ii = and i64 %i.gw, 72057594037927935
  %i.ij = lshr i64 %i.gs, 56
  %i.ik = add nuw nsw i64 %i.ij, %i.ii
  store i64 %i.ik, ptr %i.bb, align 8, !tbaa !11
  %i.il = and i64 %i.gs, 72057594037927935
  %i.im = lshr i64 %i.go, 56
  %i.in = add nuw nsw i64 %i.im, %i.il
  store i64 %i.in, ptr %i.ba, align 8, !tbaa !11
  %i.io = and i64 %i.go, 72057594037927935
  %i.ip = add nuw nsw i64 %i.io, %i.hr
  store i64 %i.ip, ptr %i.a, align 16, !tbaa !11
  %i.iq = add i64 %i.gm, 144115188075855870
  %i.ir = sub i64 %i.iq, %i.gn                    ; 2 uses
  %i.is = add i64 %i.gq, 144115188075855870
  %i.it = sub i64 %i.is, %i.gr                    ; 2 uses
  %i.iu = add i64 %i.gu, 144115188075855870
  %i.iv = sub i64 %i.iu, %i.gv                    ; 2 uses
  %i.iw = add i64 %i.gy, 144115188075855870
  %i.ix = sub i64 %i.iw, %i.gz                    ; 2 uses
  %i.iy = add i64 %i.hc, 144115188075855868
  %i.iz = sub i64 %i.iy, %i.hd
  %i.ja = add i64 %i.hg, 144115188075855870
  %i.jb = sub i64 %i.ja, %i.hh                    ; 2 uses
  %i.jc = add i64 %i.hk, 144115188075855870
  %i.jd = sub i64 %i.jc, %i.hl                    ; 2 uses
  %i.je = add i64 %i.ho, 144115188075855870
  %i.jf = sub i64 %i.je, %i.hp                    ; 2 uses
  %i.jg = lshr i64 %i.jf, 56                      ; 2 uses
  %i.jh = add i64 %i.jg, %i.iz                    ; 2 uses
  %i.ji = and i64 %i.jf, 72057594037927935
  %i.jj = lshr i64 %i.jd, 56
  %i.jk = add nuw nsw i64 %i.ji, %i.jj
  store i64 %i.jk, ptr %i.ds, align 8, !tbaa !11
  %i.jl = and i64 %i.jd, 72057594037927935
  %i.jm = lshr i64 %i.jb, 56
  %i.jn = add nuw nsw i64 %i.jl, %i.jm
  store i64 %i.jn, ptr %i.dn, align 16, !tbaa !11
  %i.jo = and i64 %i.jb, 72057594037927935
  %i.jp = lshr i64 %i.jh, 56
  %i.jq = add nuw nsw i64 %i.jp, %i.jo
  store i64 %i.jq, ptr %i.di, align 8, !tbaa !11
  %i.jr = and i64 %i.jh, 72057594037927935
  %i.js = lshr i64 %i.ix, 56
  %i.jt = add nuw nsw i64 %i.jr, %i.js
  store i64 %i.jt, ptr %i.dd, align 16, !tbaa !11
  %i.ju = and i64 %i.ix, 72057594037927935
  %i.jv = lshr i64 %i.iv, 56
  %i.jw = add nuw nsw i64 %i.ju, %i.jv
  store i64 %i.jw, ptr %i.cy, align 8, !tbaa !11
  %i.jx = and i64 %i.iv, 72057594037927935
  %i.jy = lshr i64 %i.it, 56
  %i.jz = add nuw nsw i64 %i.jx, %i.jy
  store i64 %i.jz, ptr %i.ct, align 16, !tbaa !11
  %i.ka = and i64 %i.it, 72057594037927935
  %i.kb = lshr i64 %i.ir, 56
  %i.kc = add nuw nsw i64 %i.ka, %i.kb
  store i64 %i.kc, ptr %i.co, align 8, !tbaa !11
  %i.kd = and i64 %i.ir, 72057594037927935
  %i.ke = add nuw nsw i64 %i.jg, %i.kd
  store i64 %i.ke, ptr %3, align 16, !tbaa !11
  call void @ossl_gf_mul(ptr noundef nonnull %i.gl, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #6
  call void @ossl_gf_mul(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %4) #6
  call void @ossl_gf_mul(ptr noundef nonnull %i.a, ptr noundef nonnull %3, ptr noundef nonnull %5) #6
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %gf_add_RAW.exit26
  call void @ossl_gf_mul(ptr noundef nonnull %i.ck, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %gf_add_RAW.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_x448(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_x448_int(ptr noundef %0, ptr noundef %2, ptr noundef %1)
  %i.b = icmp eq i32 %i.a, -1
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_x448_public_from_private(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @ossl_x448_derive_public_key(ptr noundef %0, ptr noundef %1)
  ret void
}

declare void @ossl_gf_mulw_unsigned(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 823726}
!15 = !{i64 0, i64 64, !12}
!16 = !{i64 0, i64 64, !12, i64 64, i64 64, !12, i64 128, i64 64, !12, i64 192, i64 64, !12}
!17 = !{!"any pointer", !6, i64 0}
!18 = distinct !{!18, !"constant_time_lookup_niels"}
!19 = distinct !{!19, !18, !"constant_time_lookup_niels: argument 0"}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !"gf_cond_swap"}
!22 = distinct !{!22, !21, !"gf_cond_swap: argument 0"}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = !{!19}
!26 = !{i64 823204}
!27 = !{!22}
!28 = distinct !{!28, !"gf_cond_swap"}
!29 = distinct !{!29, !28, !"gf_cond_swap: argument 0"}
!30 = distinct !{!30, !"gf_cond_swap"}
!31 = distinct !{!31, !30, !"gf_cond_swap: argument 0"}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !"gf_cond_swap"}
!34 = distinct !{!34, !33, !"gf_cond_swap: argument 0"}
!35 = distinct !{!35, !"gf_cond_swap"}
!36 = distinct !{!36, !35, !"gf_cond_swap: argument 0"}
!37 = !{!29}
!38 = !{!31}
!39 = !{!34}
!40 = !{!36}
!41 = !{!"p1 _ZTS22curve448_precomputed_s", !17, i64 0}
!42 = !{!41, !41, i64 0}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13, !56, !57}
!46 = distinct !{!46, !58}
!47 = distinct !{!47, !13, !56}
!48 = distinct !{!48, !13, !56, !57}
!49 = distinct !{!49, !58}
!50 = distinct !{!50, !13, !56}
!51 = distinct !{!51, !13}
!52 = !{!"smvt_control", !7, i64 0, !7, i64 4}
!53 = !{!52, !7, i64 0}
!54 = !{!52, !7, i64 4}
!55 = !{!7, !7, i64 0}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!17, !17, i64 0}
end_hunk_1
