Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@_ZN5mlkem12_GLOBAL__N_110vector_nttILi3EEEvPNS0_6vectorIXT_EEE:bb.a
  %i.dr = select i1 %isneg.i.i.1, i16 %i.dp, i16 0
  %i.ds = tail call i16 @llvm.smax.i16(i16 %i.dq, i16 0)
  %i.dt = or i16 %i.dr, %i.ds
  store i16 %i.dt, ptr %i.dn, align 2, !tbaa !139
  %i.du = sub i16 %i.do, %i.dm                    ; 3 uses
  %i.dv = add i16 %i.du, 3329
  %isneg.i33.i.1 = icmp slt i16 %i.du, 0
  %i.dw = select i1 %isneg.i33.i.1, i16 %i.dv, i16 0
  %i.dx = tail call i16 @llvm.smax.i16(i16 %i.du, i16 0)
  %i.dy = or i16 %i.dw, %i.dx
  store i16 %i.dy, ptr %gep.i.1, align 2, !tbaa !139
  %indvars.iv.next43.i.1 = add nuw nsw i64 %indvars.iv42.i.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next43.i.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %._crit_edge.i.loopexit.1, label %.lr.ph.i.1, !llvm.loop !1674

._crit_edge.i.loopexit.1:                         ; preds = %.lr.ph.i.1, %middle.block22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, %i.bq
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next45.i.1, %i.bs
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, %i.bq
  br i1 %exitcond.not.i.1, label %._crit_edge39.i.1, label %.lr.ph.i.preheader.1, !llvm.loop !64

._crit_edge39.i.1:                                ; preds = %._crit_edge.i.loopexit.1, %.lr.ph38.i.1
  %i.dz = shl i32 %.02940.i.1, 1                  ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 128
  br i1 %i.ea, label %.lr.ph38.i.1, label %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1, !llvm.loop !63

_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1: ; preds = %._crit_edge39.i.1
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge39.i.2, %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1
  %.041.i.2 = phi i32 [ 256, %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1 ], [ %i.ec, %._crit_edge39.i.2 ] ; 3 uses
  %.02940.i.2 = phi i32 [ 1, %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1 ], [ %i.go, %._crit_edge39.i.2 ] ; 3 uses
  %i.ec = lshr i32 %.041.i.2, 1                   ; 3 uses
  %i.ed = icmp sgt i32 %.02940.i.2, 0
  br i1 %i.ed, label %.lr.ph38.i.2, label %._crit_edge39.i.2

.lr.ph38.i.2:                                     ; preds = %bb.b
  %i.ee = and i32 %.041.i.2, 510
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = zext nneg i32 %i.ec to i64              ; 4 uses
  %i.eh = zext nneg i32 %.02940.i.2 to i64        ; 2 uses
  %invariant.gep47.i.2 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_19kNTTRootsE, i64 %i.eh
  %.not.i.2 = icmp eq i32 %i.ec, 0
  %invariant.gep.i.2 = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.eg ; 2 uses
  br i1 %.not.i.2, label %._crit_edge39.i.2, label %.lr.ph.i.preheader.2.preheader

.lr.ph.i.preheader.2.preheader:                   ; preds = %.lr.ph38.i.2
  %min.iters.check26 = icmp samesign ult i32 %.041.i.2, 16
  %n.vec28 = and i64 %i.eg, 248                   ; 3 uses
  %cmp.n37 = icmp eq i64 %n.vec28, %i.eg
  br label %.lr.ph.i.preheader.2

.lr.ph.i.preheader.2:                             ; preds = %.lr.ph.i.preheader.2.preheader, %._crit_edge.i.loopexit.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %._crit_edge.i.loopexit.2 ], [ %i.eg, %.lr.ph.i.preheader.2.preheader ] ; 2 uses
  %indvars.iv44.i.2 = phi i64 [ %indvars.iv.next45.i.2, %._crit_edge.i.loopexit.2 ], [ 0, %.lr.ph.i.preheader.2.preheader ] ; 2 uses
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %._crit_edge.i.loopexit.2 ], [ 0, %.lr.ph.i.preheader.2.preheader ] ; 4 uses
  %gep48.i.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep47.i.2, i64 %indvars.iv44.i.2
  %i.ei = load i16, ptr %gep48.i.2, align 2, !tbaa !139
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  br i1 %min.iters.check26, label %.lr.ph.i.2.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %.lr.ph.i.preheader.2
  %i.ek = add nuw i64 %indvars.iv.i.2, %n.vec28
  %broadcast.splatinsert29 = insertelement <8 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat30 = shufflevector <8 x i32> %broadcast.splatinsert29, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph27
  %index32 = phi i64 [ 0, %vector.ph27 ], [ %index.next35, %vector.body31 ] ; 2 uses
  %i.el = add nuw i64 %indvars.iv.i.2, %index32   ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.2, i64 %i.el ; 2 uses
  %wide.load33 = load <8 x i16>, ptr %i.em, align 2, !tbaa !139
  %i.en = zext <8 x i16> %wide.load33 to <8 x i32>
  %i.eo = mul nuw <8 x i32> %broadcast.splat30, %i.en ; 2 uses
  %i.ep = zext <8 x i32> %i.eo to <8 x i64>
  %i.eq = mul nuw nsw <8 x i64> %i.ep, splat (i64 5039)
  %i.er = lshr <8 x i64> %i.eq, splat (i64 24)
  %i.es = trunc nuw nsw <8 x i64> %i.er to <8 x i32>
  %i.et = mul <8 x i32> %i.es, splat (i32 62207)
  %i.eu = add <8 x i32> %i.et, %i.eo
  %i.ev = trunc <8 x i32> %i.eu to <8 x i16>      ; 2 uses
  %i.ew = add <8 x i16> %i.ev, splat (i16 -3329)  ; 2 uses
  %i.ex = icmp slt <8 x i16> %i.ew, zeroinitializer
  %i.ey = select <8 x i1> %i.ex, <8 x i16> %i.ev, <8 x i16> zeroinitializer
  %i.ez = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ew, <8 x i16> zeroinitializer)
  %i.fa = or <8 x i16> %i.ey, %i.ez               ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.el ; 2 uses
  %wide.load34 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !139 ; 2 uses
  %i.fc = add <8 x i16> %i.fa, %wide.load34       ; 2 uses
  %i.fd = add <8 x i16> %i.fc, splat (i16 -3329)  ; 2 uses
  %i.fe = icmp slt <8 x i16> %i.fd, zeroinitializer
  %i.ff = select <8 x i1> %i.fe, <8 x i16> %i.fc, <8 x i16> zeroinitializer
  %i.fg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fd, <8 x i16> zeroinitializer)
  %i.fh = or <8 x i16> %i.ff, %i.fg
  store <8 x i16> %i.fh, ptr %i.fb, align 2, !tbaa !139
  %i.fi = sub <8 x i16> %wide.load34, %i.fa       ; 3 uses
  %i.fj = add <8 x i16> %i.fi, splat (i16 3329)
  %i.fk = icmp slt <8 x i16> %i.fi, zeroinitializer
  %i.fl = select <8 x i1> %i.fk, <8 x i16> %i.fj, <8 x i16> zeroinitializer
  %i.fm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fi, <8 x i16> zeroinitializer)
  %i.fn = or <8 x i16> %i.fl, %i.fm
  store <8 x i16> %i.fn, ptr %i.em, align 2, !tbaa !139
  %index.next35 = add nuw i64 %index32, 8         ; 2 uses
  %i.fo = icmp eq i64 %index.next35, %n.vec28
  br i1 %i.fo, label %middle.block36, label %vector.body31, !llvm.loop !1675

middle.block36:                                   ; preds = %vector.body31
  br i1 %cmp.n37, label %._crit_edge.i.loopexit.2, label %.lr.ph.i.2.preheader

.lr.ph.i.2.preheader:                             ; preds = %.lr.ph.i.preheader.2, %middle.block36
  %indvars.iv42.i.2.ph = phi i64 [ %indvars.iv.i.2, %.lr.ph.i.preheader.2 ], [ %i.ek, %middle.block36 ]
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2.preheader, %.lr.ph.i.2
  %indvars.iv42.i.2 = phi i64 [ %indvars.iv.next43.i.2, %.lr.ph.i.2 ], [ %indvars.iv42.i.2.ph, %.lr.ph.i.2.preheader ] ; 3 uses
  %gep.i.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.2, i64 %indvars.iv42.i.2 ; 2 uses
  %i.fp = load i16, ptr %gep.i.2, align 2, !tbaa !139
  %i.fq = zext i16 %i.fp to i32
  %i.fr = mul nuw i32 %i.fq, %i.ej                ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = mul nuw nsw i64 %i.fs, 5039
  %i.fu = lshr i64 %i.ft, 24
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %.neg.i.i.2 = mul i32 %i.fv, 62207
  %i.fw = add i32 %.neg.i.i.2, %i.fr
  %i.fx = trunc i32 %i.fw to i16                  ; 2 uses
  %i.fy = add i16 %i.fx, -3329                    ; 2 uses
  %isneg.i.i.i.2 = icmp slt i16 %i.fy, 0
  %i.fz = select i1 %isneg.i.i.i.2, i16 %i.fx, i16 0
  %i.ga = tail call i16 @llvm.smax.i16(i16 %i.fy, i16 0)
  %i.gb = or i16 %i.fz, %i.ga                     ; 2 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %indvars.iv42.i.2 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !139 ; 2 uses
  %i.ge = add i16 %i.gb, %i.gd                    ; 2 uses
  %i.gf = add i16 %i.ge, -3329                    ; 2 uses
  %isneg.i.i.2 = icmp slt i16 %i.gf, 0
  %i.gg = select i1 %isneg.i.i.2, i16 %i.ge, i16 0
  %i.gh = tail call i16 @llvm.smax.i16(i16 %i.gf, i16 0)
  %i.gi = or i16 %i.gg, %i.gh
  store i16 %i.gi, ptr %i.gc, align 2, !tbaa !139
  %i.gj = sub i16 %i.gd, %i.gb                    ; 3 uses
  %i.gk = add i16 %i.gj, 3329
  %isneg.i33.i.2 = icmp slt i16 %i.gj, 0
  %i.gl = select i1 %isneg.i33.i.2, i16 %i.gk, i16 0
  %i.gm = tail call i16 @llvm.smax.i16(i16 %i.gj, i16 0)
  %i.gn = or i16 %i.gl, %i.gm
  store i16 %i.gn, ptr %gep.i.2, align 2, !tbaa !139
  %indvars.iv.next43.i.2 = add nuw nsw i64 %indvars.iv42.i.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next43.i.2, %indvars.iv.2
  br i1 %exitcond.2.not, label %._crit_edge.i.loopexit.2, label %.lr.ph.i.2, !llvm.loop !1676

._crit_edge.i.loopexit.2:                         ; preds = %.lr.ph.i.2, %middle.block36
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, %i.ef
  %indvars.iv.next45.i.2 = add nuw nsw i64 %indvars.iv44.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next45.i.2, %i.eh
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, %i.ef
  br i1 %exitcond.not.i.2, label %._crit_edge39.i.2, label %.lr.ph.i.preheader.2, !llvm.loop !64

._crit_edge39.i.2:                                ; preds = %._crit_edge.i.loopexit.2, %.lr.ph38.i.2, %bb.b
  %i.go = shl i32 %.02940.i.2, 1                  ; 2 uses
  %i.gp = icmp slt i32 %i.go, 128
  br i1 %i.gp, label %bb.b, label %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.2, !llvm.loop !63

_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.2: ; preds = %._crit_edge39.i.2
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN5mlkem12_GLOBAL__N_152scalar_centered_binomial_distribution_eta_2_with_prfEPNS0_6scalarEPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
vector.ph:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  store i32 3, ptr %2, align 8, !tbaa !320
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !321
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 136, ptr %i.d, align 8, !tbaa !322
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef nonnull readonly %1, i64 noundef 33)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 128)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %wide.load = load <4 x i8>, ptr %i.e, align 4, !tbaa !80 ; 2 uses
  %i.f = zext <4 x i8> %wide.load to <4 x i32>    ; 4 uses
  %i.g = and <4 x i32> %i.f, splat (i32 1)
  %i.h = lshr <4 x i32> %i.f, splat (i32 1)
  %i.i = and <4 x i32> %i.h, splat (i32 1)
  %i.j = shl <4 x i32> %i.f, splat (i32 29)
  %i.k = ashr <4 x i32> %i.j, splat (i32 31)
  %i.l = shl <4 x i32> %i.f, splat (i32 28)
  %i.m = ashr <4 x i32> %i.l, splat (i32 31)
  %i.n = add nsw <4 x i32> %i.m, %i.g
  %i.o = add nsw <4 x i32> %i.n, %i.k
  %i.p = add nsw <4 x i32> %i.o, %i.i             ; 3 uses
  %i.q = add nsw <4 x i32> %i.p, splat (i32 3329)
  %i.r = and <4 x i32> %i.p, splat (i32 32768)
  %i.s = icmp eq <4 x i32> %i.r, zeroinitializer
  %i.t = select <4 x i1> %i.s, <4 x i32> %i.p, <4 x i32> %i.q
  %i.u = trunc nsw <4 x i32> %i.t to <4 x i16>
  %.idx = shl nuw i64 %index, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.w = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.x = zext nneg <4 x i8> %i.w to <4 x i16>     ; 4 uses
  %i.y = and <4 x i16> %i.x, splat (i16 1)
  %i.z = lshr <4 x i16> %i.x, splat (i16 1)
  %i.aa = and <4 x i16> %i.z, splat (i16 1)
  %i.ab = shl <4 x i16> %i.x, splat (i16 13)
  %i.ac = ashr <4 x i16> %i.ab, splat (i16 15)
  %i.ad = lshr <4 x i16> %i.x, splat (i16 3)
  %i.ae = sub nsw <4 x i16> %i.y, %i.ad
  %i.af = add nsw <4 x i16> %i.ae, %i.aa
  %i.ag = add nsw <4 x i16> %i.af, %i.ac          ; 3 uses
  %i.ah = add nsw <4 x i16> %i.ag, splat (i16 3329)
  %i.ai = icmp slt <4 x i16> %i.ag, zeroinitializer
  %i.aj = select <4 x i1> %i.ai, <4 x i16> %i.ah, <4 x i16> zeroinitializer
  %i.ak = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ag, <4 x i16> zeroinitializer)
  %i.al = or <4 x i16> %i.aj, %i.ak
  %interleaved.vec = shufflevector <4 x i16> %i.u, <4 x i16> %i.al, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.v, align 2, !tbaa !139
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, 128
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1677

middle.block:                                     ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

declare void @CRYPTO_sysrand_for_seed(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL20g_small_factors_initv() #16 {
bb.a:
  store ptr @_ZL18kSmallFactorsLimbs, ptr @_ZL23g_small_factors_storage, align 8, !tbaa !112
  store <4 x i32> <i32 17, i32 17, i32 0, i32 2>, ptr getelementptr inbounds nuw (i8, ptr @_ZL23g_small_factors_storage, i64 8), align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL17ensure_fixed_copyPP9bignum_stPKS_i(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef 24) #36 ; 12 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 5 uses
  store i32 1, ptr %i.e, align 4, !tbaa !115
  %i.f = tail call ptr @BN_copy(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %1)
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %BN_dup.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.e, align 4, !tbaa !115  ; 2 uses
  %i.h = and i32 %i.g, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.j) #36
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi i32 [ %.pre.i.i, %bb.f ], [ %i.g, %bb.e ]
  %i.l = and i32 %i.k, 1
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @OPENSSL_free(ptr noundef nonnull %i.c) #36
  br label %.split

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.c, align 8, !tbaa !112
  br label %.split

BN_dup.exit:                                      ; preds = %bb.d
  %i.m = sext i32 %2 to i64
  %i.n = tail call i32 @bn_resize_words(ptr noundef nonnull %i.c, i64 noundef %i.m)
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %.split9, label %bb.n

.split9:                                          ; preds = %BN_dup.exit
  %i.o = load i32, ptr %i.e, align 4, !tbaa !115  ; 2 uses
  %i.p = and i32 %i.o, 2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split9
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.r) #36
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split9
  %i.s = phi i32 [ %.pre.i, %bb.j ], [ %i.o, %.split9 ]
  %i.t = and i32 %i.s, 1
  %.not.i12 = icmp eq i32 %i.t, 0
  br i1 %.not.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @OPENSSL_free(ptr noundef nonnull %i.c) #36
  br label %.split

bb.m:                                             ; preds = %bb.k
  store ptr null, ptr %i.c, align 8, !tbaa !112
  br label %.split

bb.n:                                             ; preds = %BN_dup.exit
  store ptr %i.c, ptr %0, align 8, !tbaa !127
  br label %.split

.split:                                           ; preds = %bb.m, %bb.l, %bb.c, %bb.h, %bb.i, %bb.b, %bb.n, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.n ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #22

declare i32 @ERR_peek_error() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL13ensure_bignumPP9bignum_st(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef 24) #36 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %BN_new.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 1, ptr %i.e, align 4, !tbaa !115
  br label %BN_new.exit

BN_new.exit:                                      ; preds = %bb.b, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !127
  %i.f = icmp ne ptr %i.c, null
  %i.g = zext i1 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %BN_new.exit, %bb.a
  %i.h = phi i32 [ %i.g, %BN_new.exit ], [ 1, %bb.a ]
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14generate_primeP9bignum_stiPKS_S2_S2_S2_P10bignum_ctxP11bn_gencb_st(ptr nofree noundef captures(address) %0, i32 noundef range(i32 128, 1073741824) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef nonnull captures(address_is_null) %6, ptr noundef %7) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = and i32 %1, 63
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.38, i32 noundef 875) #36
  br label %BN_CTX_end.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i32 %1, 67108862
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @.str.38, i32 noundef 912) #36
  br label %BN_CTX_end.exit

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113  ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %BN_is_word.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %2, align 8, !tbaa !112    ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !96
  %i.j = xor i64 %i.i, 3                          ; 3 uses
end_hunk_0
