inline.NumInlined: 62
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_192() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_192
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_224() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_224
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_256() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_256
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_384() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @BN_get0_nist_prime_521() local_unnamed_addr #0 {
bb.a:
  ret ptr @ossl_bignum_nist_p_521
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_192(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %union.anon, align 8                ; 10 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !14     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_192.ossl_bignum_nist_p_192_sqr) #6
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_192, ptr noundef %3) #6
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_192, ptr noundef nonnull %1) #6 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.i, 0
  %i.l = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.n = icmp ne ptr %i.m, null
  %i.o = zext i1 %i.n to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  br i1 %i.l, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 3) #6
  %.not113 = icmp eq ptr %i.p, null
  br i1 %.not113, label %bb.l, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !15
  store i64 %i.r, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !15
  br label %nist_cp_bn.exit

nist_cp_bn.exit:                                  ; preds = %nist_cp_bn.exit.loopexit, %bb.i
  %.0105 = phi ptr [ %i.d, %bb.i ], [ %i.q, %nist_cp_bn.exit.loopexit ] ; 12 uses
  %i.y = icmp sgt i32 %i.c, 3
  br i1 %i.y, label %.preheader, label %.lr.ph125.preheader

.preheader:                                       ; preds = %nist_cp_bn.exit
  %i.z = add nsw i32 %i.c, -3
  %i.aa = getelementptr i8, ptr %i.d, i64 24
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.aa, i64 %i.ac, i1 false), !tbaa !17
  %i.ad = icmp samesign ult i32 %i.c, 6
  br i1 %i.ad, label %.lr.ph125.preheader, label %._crit_edge

.lr.ph125.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 3) ; 2 uses
  %i.ae = zext nneg i32 %smax to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = getelementptr i8, ptr %4, i64 %i.af
  %scevgep = getelementptr i8, ptr %i.ag, i64 -24
  %i.ah = shl i32 %smax, 3
  %i.ai = sub i32 40, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nuw nsw i64 %i.aj, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ak, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph125.preheader, %.preheader
  %.0105.val = load i32, ptr %.0105, align 1
  %i.al = zext i32 %.0105.val to i64
  %i.am = load i32, ptr %4, align 8, !tbaa !18
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !18
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, %i.an            ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, %i.al            ; 2 uses
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %.0105, align 1
  %i.au = lshr i64 %i.as, 32
  %i.av = getelementptr inbounds nuw i8, ptr %.0105, i64 4 ; 2 uses
  %.val118 = load i32, ptr %i.av, align 1
  %i.aw = zext i32 %.val118 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, %i.az            ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, %i.aw
  %i.bf = add nuw nsw i64 %i.be, %i.au            ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  store i32 %i.bg, ptr %i.av, align 1
  %i.bh = lshr i64 %i.bf, 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0105, i64 8 ; 4 uses
  %.val117 = load i32, ptr %i.bi, align 1
  %i.bj = zext i32 %.val117 to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !18
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = add nuw nsw i64 %i.ar, %i.bj
  %i.bo = add nuw nsw i64 %i.bn, %i.bh
  %i.bp = add nuw nsw i64 %i.bo, %i.bm            ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  store i32 %i.bq, ptr %i.bi, align 1
  %i.br = lshr i64 %i.bp, 32
  %i.bs = getelementptr inbounds nuw i8, ptr %.0105, i64 12 ; 2 uses
  %.val116 = load i32, ptr %i.bs, align 1
  %i.bt = zext i32 %.val116 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !18
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = add nuw nsw i64 %i.bd, %i.bt
  %i.by = add nuw nsw i64 %i.bx, %i.bw
  %i.bz = add nuw nsw i64 %i.by, %i.br            ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  store i32 %i.ca, ptr %i.bs, align 1
  %i.cb = lshr i64 %i.bz, 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0105, i64 16 ; 4 uses
  %.val115 = load i32, ptr %i.cc, align 1
  %i.cd = zext i32 %.val115 to i64
  %i.ce = add nuw nsw i64 %i.bm, %i.aq
  %i.cf = add nuw nsw i64 %i.ce, %i.cd
  %i.cg = add nuw nsw i64 %i.cf, %i.cb            ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  store i32 %i.ch, ptr %i.cc, align 1
  %i.ci = lshr i64 %i.cg, 32
  %i.cj = getelementptr inbounds nuw i8, ptr %.0105, i64 20 ; 2 uses
  %.val = load i32, ptr %i.cj, align 1
  %i.ck = zext i32 %.val to i64
  %i.cl = add nuw nsw i64 %i.bw, %i.bc
  %i.cm = add nuw nsw i64 %i.cl, %i.ck
  %i.cn = add nuw nsw i64 %i.cm, %i.ci            ; 2 uses
  %i.co = trunc i64 %i.cn to i32
  store i32 %i.co, ptr %i.cj, align 1
  %i.cp = lshr i64 %i.cn, 32                      ; 2 uses
  %.not114 = icmp eq i64 %i.cp, 0
  br i1 %.not114, label %nist_cp_bn.exit122, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %5 = getelementptr [24 x i8], ptr @_nist_p_192, i64 %i.cp
  %6 = getelementptr i8, ptr %5, i64 -24
  %i.cq = tail call i64 @bn_sub_words(ptr noundef nonnull %.0105, ptr noundef nonnull %.0105, ptr noundef %6, i32 noundef 3) #6
  %i.cr = and i64 %i.cq, 4294967295
  %i.cs = icmp ne i64 %i.cr, 0
  br label %nist_cp_bn.exit122

nist_cp_bn.exit122:                               ; preds = %._crit_edge, %bb.k
  %.0104 = phi i1 [ %i.cs, %bb.k ], [ true, %._crit_edge ]
  %i.ct = call i64 @bn_sub_words(ptr noundef nonnull %i.a, ptr noundef nonnull %.0105, ptr noundef nonnull @_nist_p_192, i32 noundef 3) #6
  %i.cu = icmp ne i64 %i.ct, 0
  %or.cond = select i1 %i.cu, i1 %.0104, i1 false ; 3 uses
  %i.cv = select i1 %or.cond, ptr %.0105, ptr %i.a
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !15
  store i64 %i.cw, ptr %.0105, align 8, !tbaa !15
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.sel = select i1 %or.cond, ptr %i.bi, ptr %.sroa.gep
  %i.cx = load i64, ptr %.sroa.sel, align 8, !tbaa !15
  store i64 %i.cx, ptr %i.bi, align 8, !tbaa !15
  %.sroa.gep130 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.sel131 = select i1 %or.cond, ptr %i.cc, ptr %.sroa.gep130
  %i.cy = load i64, ptr %.sroa.sel131, align 8, !tbaa !15
  store i64 %i.cy, ptr %i.cc, align 8, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %i.cz, align 8, !tbaa !10
  call void @bn_correct_top(ptr noundef %0) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.g, %nist_cp_bn.exit122, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %nist_cp_bn.exit122 ], [ %i.o, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #3

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BN_nnmod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BN_zero_ex(ptr noundef) local_unnamed_addr #3

declare ptr @BN_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i64 @bn_sub_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bn_correct_top(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_224(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 16 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca [4 x i64], align 16               ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !14     ; 7 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.h = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_224.ossl_bignum_nist_p_224_sqr) #6
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_224, ptr noundef %3) #6
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_224, ptr noundef nonnull %1) #6 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.n = icmp sgt i32 %i.l, 0
  %i.o = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.o, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.q = icmp ne ptr %i.p, null
  %i.r = zext i1 %i.q to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br i1 %i.o, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 4) #6
  %.not93 = icmp eq ptr %i.s, null
  br i1 %.not93, label %bb.n, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.t = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.u = load i64, ptr %i.f, align 8, !tbaa !15
  store i64 %i.u, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !15
  br label %nist_cp_bn.exit

nist_cp_bn.exit:                                  ; preds = %nist_cp_bn.exit.loopexit, %bb.i
  %.085 = phi ptr [ %i.f, %bb.i ], [ %i.t, %nist_cp_bn.exit.loopexit ] ; 18 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 6 uses
  %i.af = add i32 %i.e, -3                        ; 4 uses
  %i.ag = icmp sgt i32 %i.e, 3
  br i1 %i.ag, label %.lr.ph.preheader, label %.lr.ph101.preheader

.lr.ph.preheader:                                 ; preds = %nist_cp_bn.exit
  %wide.trip.count = zext i32 %i.af to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.af, 10
  br i1 %min.iters.check, label %.lr.ph.preheader118, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ah = sub i64 %i.b, %i.g
  %i.ai = add i64 %i.ah, -25
  %diff.check = icmp ult i64 %i.ai, 31
  br i1 %diff.check, label %.lr.ph.preheader118, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <2 x i64>, ptr %i.aj, align 8, !tbaa !15
  %wide.load117 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %wide.load, ptr %i.al, align 16, !tbaa !15
  store <2 x i64> %wide.load117, ptr %i.am, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader118

.lr.ph.preheader118:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader118, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader118 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader118 ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.prol
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.prol
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !23

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader118
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader118 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ar = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %i.at = icmp samesign ult i32 %i.af, 4
  br i1 %i.at, label %.lr.ph101.preheader, label %._crit_edge

.lr.ph101.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %.082.lcssa116 = phi i32 [ %i.af, %.preheader ], [ 0, %nist_cp_bn.exit ] ; 2 uses
  %i.au = shl nuw nsw i32 %.082.lcssa116, 3
  %i.av = zext nneg i32 %i.au to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.av
  %i.aw = shl nuw nsw i32 %.082.lcssa116, 3
  %narrow = sub nuw nsw i32 32, %i.aw
  %i.ax = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ax, i1 false), !tbaa !15
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.1
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.1
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.2
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.2
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph101.preheader, %.preheader
  %i.bk = load i64, ptr %i.a, align 16, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !15 ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bk, i64 32) ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 16, !tbaa !15 ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bm, i64 32) ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15 ; 3 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bp, i64 32) ; 4 uses
  %i.bu = lshr i64 %i.bs, 32                      ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.085, i64 24 ; 6 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.bx = and i64 %i.bw, 4294967295
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 0, ptr %i.c, align 16, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.bz = shl i64 %i.bn, 32
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bn, i64 32)
  store i64 %i.cb, ptr %i.ca, align 16, !tbaa !15
  %i.cc = lshr i64 %i.bq, 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !15
  %i.ce = call i64 @bn_add_words(ptr noundef %.085, ptr noundef %.085, ptr noundef nonnull %i.c, i32 noundef 4) #6 ; 0 uses
  store i64 0, ptr %i.c, align 16, !tbaa !15
  %i.cf = shl i64 %i.bt, 32
  store i64 %i.cf, ptr %i.by, align 8, !tbaa !15
  %i.cg = lshr i64 %i.bt, 32
  %i.ch = and i64 %i.bs, -4294967296
  %i.ci = or disjoint i64 %i.cg, %i.ch
  store i64 %i.ci, ptr %i.ca, align 16, !tbaa !15
  store i64 0, ptr %i.cd, align 8, !tbaa !15
  %i.cj = call i64 @bn_add_words(ptr noundef %.085, ptr noundef %.085, ptr noundef nonnull %i.c, i32 noundef 4) #6 ; 0 uses
  store i64 %i.bn, ptr %i.c, align 16, !tbaa !15
  store i64 %i.bq, ptr %i.by, align 8, !tbaa !15
  store i64 %i.bt, ptr %i.ca, align 16, !tbaa !15
  store i64 %i.bu, ptr %i.cd, align 8, !tbaa !15
  %i.ck = call i64 @bn_sub_words(ptr noundef %.085, ptr noundef %.085, ptr noundef nonnull %i.c, i32 noundef 4) #6 ; 0 uses
  store i64 %i.bt, ptr %i.c, align 16, !tbaa !15
  store i64 %i.bu, ptr %i.by, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false)
  %i.cl = call i64 @bn_sub_words(ptr noundef %.085, ptr noundef %.085, ptr noundef nonnull %i.c, i32 noundef 4) #6 ; 0 uses
  %i.cm = load i64, ptr %i.bv, align 8, !tbaa !15 ; 2 uses
  %i.cn = lshr i64 %i.cm, 32                      ; 3 uses
  %i.co = trunc nuw i64 %i.cn to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.cq = add nuw nsw i64 %i.cn, 4294967295
  %i.cr = and i64 %i.cq, 4294967295
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr @_nist_p_224, i64 %i.cr
  %i.ct = call i64 @bn_sub_words(ptr noundef nonnull %.085, ptr noundef nonnull %.085, ptr noundef nonnull %i.cs, i32 noundef 4) #6 ; 0 uses
  %i.cu = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.cv = lshr i64 %i.cu, 32
  %i.cw = trunc nuw i64 %i.cv to i32
  %i.cx = and i32 %i.cw, 1
  %i.cy = xor i32 %i.cx, 1
  br label %nist_cp_bn.exit98

bb.l:                                             ; preds = %._crit_edge
  %i.cz = icmp slt i64 %i.cm, 0
  br i1 %i.cz, label %bb.m, label %nist_cp_bn.exit98

bb.m:                                             ; preds = %bb.l
  %4 = and i64 %i.cn, 2147483647
  %i.da = xor i64 %4, 2147483647
  %i.db = getelementptr inbounds nuw [32 x i8], ptr @_nist_p_224, i64 %i.da
  %i.dc = call i64 @bn_add_words(ptr noundef nonnull %.085, ptr noundef nonnull %.085, ptr noundef nonnull %i.db, i32 noundef 4) #6
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  %.not94 = icmp eq i32 %i.dd, 0
  %i.de = select i1 %.not94, ptr @bn_add_words, ptr @bn_sub_words
  br label %nist_cp_bn.exit98

nist_cp_bn.exit98:                                ; preds = %bb.l, %bb.m, %bb.k
  %.084 = phi i32 [ %i.cy, %bb.k ], [ %i.dd, %bb.m ], [ 1, %bb.l ]
  %.083 = phi ptr [ @bn_sub_words, %bb.k ], [ %i.de, %bb.m ], [ @bn_sub_words, %bb.l ]
  %i.df = call i64 %.083(ptr noundef nonnull %i.a, ptr noundef nonnull %.085, ptr noundef nonnull @_nist_p_224, i32 noundef 4) #6, !callees !26
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = icmp ne i32 %.084, 0
  %or.cond = select i1 %i.dg, i1 %i.dh, i1 false  ; 4 uses
  %i.di = select i1 %or.cond, ptr %.085, ptr %i.a
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !15
  store i64 %i.dj, ptr %.085, align 8, !tbaa !15
  %.085.sroa.gep = getelementptr inbounds nuw i8, ptr %.085, i64 8 ; 2 uses
  %.sroa.sel = select i1 %or.cond, ptr %.085.sroa.gep, ptr %i.bl
  %i.dk = load i64, ptr %.sroa.sel, align 8, !tbaa !15
  store i64 %i.dk, ptr %.085.sroa.gep, align 8, !tbaa !15
  %.085.sroa.gep106 = getelementptr inbounds nuw i8, ptr %.085, i64 16 ; 2 uses
  %.sroa.sel108 = select i1 %or.cond, ptr %.085.sroa.gep106, ptr %i.bo
  %i.dl = load i64, ptr %.sroa.sel108, align 8, !tbaa !15
  store i64 %i.dl, ptr %.085.sroa.gep106, align 8, !tbaa !15
  %.sroa.sel111 = select i1 %or.cond, ptr %i.bv, ptr %i.br
  %i.dm = load i64, ptr %.sroa.sel111, align 8, !tbaa !15
  store i64 %i.dm, ptr %i.bv, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.dn, align 8, !tbaa !10
  call void @bn_correct_top(ptr noundef %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.h, %bb.g, %nist_cp_bn.exit98, %bb.e, %bb.c
  %.0 = phi i32 [ %i.k, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %nist_cp_bn.exit98 ], [ %i.r, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i64 @bn_add_words(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_256(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %union.anon.1, align 8              ; 12 uses
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !14     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_256.ossl_bignum_nist_p_256_sqr) #6
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_256, ptr noundef %3) #6
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_256, ptr noundef nonnull %1) #6 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.i, 0
  %i.l = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.n = icmp ne ptr %i.m, null
  %i.o = zext i1 %i.n to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br i1 %i.l, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 4) #6
  %.not213 = icmp eq ptr %i.p, null
  br i1 %.not213, label %bb.n, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 5 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !15
  store i64 %i.r, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !15
  br label %nist_cp_bn.exit

nist_cp_bn.exit:                                  ; preds = %nist_cp_bn.exit.loopexit, %bb.i
  %.0203 = phi ptr [ %i.d, %bb.i ], [ %i.q, %nist_cp_bn.exit.loopexit ] ; 16 uses
  %i.ab = icmp sgt i32 %i.c, 4
  br i1 %i.ab, label %.preheader, label %.lr.ph252.preheader

.preheader:                                       ; preds = %nist_cp_bn.exit
  %i.ac = add nsw i32 %i.c, -4
  %i.ad = getelementptr i8, ptr %i.d, i64 32
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.ad, i64 %i.af, i1 false), !tbaa !17
  %i.ag = icmp samesign ult i32 %i.c, 8
  br i1 %i.ag, label %.lr.ph252.preheader, label %._crit_edge

.lr.ph252.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 4) ; 2 uses
  %i.ah = zext nneg i32 %smax to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = getelementptr i8, ptr %4, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.aj, i64 -32
  %i.ak = shl i32 %smax, 3
  %i.al = sub i32 56, %i.ak
  %i.am = zext i32 %i.al to i64
  %i.an = add nuw nsw i64 %i.am, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.an, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph252.preheader, %.preheader
  %.0203.val = load i32, ptr %.0203, align 1
  %i.ao = zext i32 %.0203.val to i64
  %i.ap = load i32, ptr %4, align 8, !tbaa !18
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !18
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !18
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !18
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, %i.aw            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.bd = zext i32 %i.bc to i64                   ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !18
  %i.bg = zext i32 %i.bf to i64                   ; 5 uses
  %.neg230 = add nuw nsw i64 %i.at, %i.aq         ; 3 uses
  %.neg232 = add nuw nsw i64 %.neg230, %i.ao
  %i.bh = add nuw nsw i64 %i.ba, %i.bd
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  %i.bj = sub nsw i64 %.neg232, %i.bi             ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %.0203, align 1
  %i.bl = ashr i64 %i.bj, 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.0203, i64 4 ; 2 uses
  %.val224 = load i32, ptr %i.bm, align 1
  %i.bn = zext i32 %.val224 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !18
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = add nuw nsw i64 %i.bd, %i.az            ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !18
  %i.bu = zext i32 %i.bt to i64                   ; 7 uses
  %.neg234 = add nuw nsw i64 %i.bq, %i.at         ; 2 uses
  %i.bv = add nuw nsw i64 %i.br, %i.bg
  %i.bw = sub nsw i64 %.neg234, %i.bv
  %i.bx = add nsw i64 %i.bw, %i.bn
  %i.by = add nsw i64 %i.bx, %i.bl
  %i.bz = sub nsw i64 %i.by, %i.bu                ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  store i32 %i.ca, ptr %i.bm, align 1
  %i.cb = ashr i64 %i.bz, 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0203, i64 8 ; 4 uses
  %.val223 = load i32, ptr %i.cc, align 1
  %i.cd = zext i32 %.val223 to i64
  %i.ce = add nuw nsw i64 %i.bg, %i.bd            ; 3 uses
  %.neg238 = add nuw nsw i64 %i.bq, %i.aw         ; 3 uses
  %i.cf = add nuw nsw i64 %i.ce, %i.bu
  %i.cg = sub nsw i64 %.neg238, %i.cf
  %i.ch = add nsw i64 %i.cg, %i.cd
  %i.ci = add nsw i64 %i.ch, %i.cb                ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  store i32 %i.cj, ptr %i.cc, align 1
  %i.ck = ashr i64 %i.ci, 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.0203, i64 12 ; 2 uses
  %.val222 = load i32, ptr %i.cl, align 1
  %i.cm = zext i32 %.val222 to i64
  %i.cn = shl nuw nsw i64 %i.ba, 1
  %i.co = add nuw nsw i64 %i.cn, %i.bd
  %i.cp = add nuw nsw i64 %.neg230, %i.bu
  %i.cq = sub nsw i64 %i.co, %i.cp
  %i.cr = add nsw i64 %i.cq, %i.cm
  %i.cs = add nsw i64 %i.cr, %i.ck                ; 2 uses
  %i.ct = trunc i64 %i.cs to i32
  store i32 %i.ct, ptr %i.cl, align 1
  %i.cu = ashr i64 %i.cs, 32
  %i.cv = getelementptr inbounds nuw i8, ptr %.0203, i64 16 ; 4 uses
  %.val221 = load i32, ptr %i.cv, align 1
  %i.cw = zext i32 %.val221 to i64
  %i.cx = shl nuw nsw i64 %i.br, 1
  %i.cy = add nuw nsw i64 %i.cx, %i.bg
  %i.cz = sub nsw i64 %i.cy, %.neg234
  %i.da = add nsw i64 %i.cz, %i.cw
  %i.db = add nsw i64 %i.da, %i.cu                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cv, align 1
  %i.dd = ashr i64 %i.db, 32
  %i.de = getelementptr inbounds nuw i8, ptr %.0203, i64 20 ; 2 uses
  %.val220 = load i32, ptr %i.de, align 1
  %i.df = zext i32 %.val220 to i64
  %i.dg = shl nuw nsw i64 %i.ce, 1
  %i.dh = add nuw nsw i64 %i.dg, %i.bu
  %i.di = sub nsw i64 %i.dh, %.neg238
  %i.dj = add nsw i64 %i.di, %i.df
  %i.dk = add nsw i64 %i.dj, %i.dd                ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  store i32 %i.dl, ptr %i.de, align 1
  %i.dm = ashr i64 %i.dk, 32
  %i.dn = getelementptr inbounds nuw i8, ptr %.0203, i64 24 ; 4 uses
  %.val219 = load i32, ptr %i.dn, align 1
  %i.do = zext i32 %.val219 to i64
  %i.dp = add nuw nsw i64 %i.bu, %i.bg
  %i.dq = shl nuw nsw i64 %i.dp, 1
  %i.dr = sub nsw i64 %i.ce, %.neg230
  %i.ds = add nsw i64 %i.dr, %i.dq
  %i.dt = add nsw i64 %i.ds, %i.do
  %i.du = add nsw i64 %i.dt, %i.dm                ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dn, align 1
  %i.dw = ashr i64 %i.du, 32
  %i.dx = getelementptr inbounds nuw i8, ptr %.0203, i64 28 ; 2 uses
  %.val = load i32, ptr %i.dx, align 1
  %i.dy = zext i32 %.val to i64
  %reass.add = shl nuw nsw i64 %i.bu, 1
  %.neg248 = add nuw nsw i64 %i.bu, %i.aq
  %i.dz = add nuw nsw i64 %i.br, %.neg238
  %i.ea = sub nsw i64 %.neg248, %i.dz
  %i.eb = add nsw i64 %i.ea, %reass.add
  %i.ec = add nsw i64 %i.eb, %i.dy
  %i.ed = add nsw i64 %i.ec, %i.dw                ; 3 uses
  %i.ee = trunc i64 %i.ed to i32
  store i32 %i.ee, ptr %i.dx, align 1
  %i.ef = lshr i64 %i.ed, 32                      ; 3 uses
  %i.eg = trunc nuw i64 %i.ef to i32
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.ei = add nuw nsw i64 %i.ef, 4294967295
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr @_nist_p_256, i64 %i.ej
  %i.el = tail call i64 @bn_sub_words(ptr noundef nonnull %.0203, ptr noundef nonnull %.0203, ptr noundef nonnull %i.ek, i32 noundef 4) #6
  %i.em = trunc i64 %i.el to i32
  br label %nist_cp_bn.exit228

bb.l:                                             ; preds = %._crit_edge
  %i.en = icmp slt i64 %i.ed, 0
  br i1 %i.en, label %bb.m, label %nist_cp_bn.exit228

bb.m:                                             ; preds = %bb.l
  %5 = and i64 %i.ef, 2147483647
  %i.eo = xor i64 %5, 2147483647
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr @_nist_p_256, i64 %i.eo
  %i.eq = tail call i64 @bn_add_words(ptr noundef nonnull %.0203, ptr noundef nonnull %.0203, ptr noundef nonnull %i.ep, i32 noundef 4) #6
  %i.er = trunc i64 %i.eq to i32                  ; 2 uses
  %.not218 = icmp eq i32 %i.er, 0
  %i.es = select i1 %.not218, ptr @bn_add_words, ptr @bn_sub_words
  br label %nist_cp_bn.exit228

nist_cp_bn.exit228:                               ; preds = %bb.l, %bb.m, %bb.k
  %.0205 = phi ptr [ @bn_sub_words, %bb.k ], [ %i.es, %bb.m ], [ @bn_sub_words, %bb.l ]
  %.0202 = phi i32 [ %i.em, %bb.k ], [ %i.er, %bb.m ], [ 1, %bb.l ]
  %i.et = call i64 %.0205(ptr noundef nonnull %i.a, ptr noundef nonnull %.0203, ptr noundef nonnull @_nist_p_256, i32 noundef 4) #6, !callees !26
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = icmp ne i32 %.0202, 0
  %or.cond = select i1 %i.eu, i1 %i.ev, i1 false  ; 4 uses
  %i.ew = select i1 %or.cond, ptr %.0203, ptr %i.a
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !15
  store i64 %i.ex, ptr %.0203, align 8, !tbaa !15
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.sel = select i1 %or.cond, ptr %i.cc, ptr %.sroa.gep
  %i.ey = load i64, ptr %.sroa.sel, align 8, !tbaa !15
  store i64 %i.ey, ptr %i.cc, align 8, !tbaa !15
  %.sroa.gep257 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.sel258 = select i1 %or.cond, ptr %i.cv, ptr %.sroa.gep257
  %i.ez = load i64, ptr %.sroa.sel258, align 8, !tbaa !15
  store i64 %i.ez, ptr %i.cv, align 8, !tbaa !15
  %.sroa.gep260 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.sel261 = select i1 %or.cond, ptr %i.dn, ptr %.sroa.gep260
  %i.fa = load i64, ptr %.sroa.sel261, align 8, !tbaa !15
  store i64 %i.fa, ptr %i.dn, align 8, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.fb, align 8, !tbaa !10
  call void @bn_correct_top(ptr noundef %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.h, %bb.g, %nist_cp_bn.exit228, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %nist_cp_bn.exit228 ], [ %i.o, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_384(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %4 = alloca %union.anon.2, align 8              ; 16 uses
  %i.a = alloca [6 x i64], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !10   ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !14     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_384.ossl_bignum_nist_p_384_sqr) #6
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_384, ptr noundef %3) #6
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_384, ptr noundef nonnull %1) #6 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.k = icmp sgt i32 %i.i, 0
  %i.l = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.n = icmp ne ptr %i.m, null
  %i.o = zext i1 %i.n to i32
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br i1 %i.l, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 6) #6
  %.not255 = icmp eq ptr %i.p, null
  br i1 %.not255, label %bb.n, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.q = load ptr, ptr %0, align 8, !tbaa !14     ; 7 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !15
  store i64 %i.r, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !15
  br label %nist_cp_bn.exit

nist_cp_bn.exit:                                  ; preds = %nist_cp_bn.exit.loopexit, %bb.i
  %.0245 = phi ptr [ %i.d, %bb.i ], [ %i.q, %nist_cp_bn.exit.loopexit ] ; 20 uses
  %i.ah = icmp sgt i32 %i.c, 6
  br i1 %i.ah, label %.preheader, label %.lr.ph292.preheader

.preheader:                                       ; preds = %nist_cp_bn.exit
  %i.ai = add nsw i32 %i.c, -6
  %i.aj = getelementptr i8, ptr %i.d, i64 48
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.aj, i64 %i.al, i1 false), !tbaa !17
  %i.am = icmp samesign ult i32 %i.c, 12
  br i1 %i.am, label %.lr.ph292.preheader, label %._crit_edge

.lr.ph292.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 6) ; 2 uses
  %i.an = zext nneg i32 %smax to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = getelementptr i8, ptr %4, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 -48
  %i.aq = shl i32 %smax, 3
  %i.ar = sub i32 88, %i.aq
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.at, i1 false), !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph292.preheader, %.preheader
  %.0245.val = load i32, ptr %.0245, align 1
  %i.au = zext i32 %.0245.val to i64
  %i.av = load i32, ptr %4, align 8, !tbaa !18
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.az = zext i32 %i.ay to i64                   ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !18
  %i.bc = zext i32 %i.bb to i64                   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18
  %i.bf = zext i32 %i.be to i64                   ; 6 uses
  %i.bg = add nuw nsw i64 %i.bc, %i.aw            ; 4 uses
  %i.bh = add nuw nsw i64 %i.bg, %i.au
  %i.bi = add nuw nsw i64 %i.bh, %i.az
  %i.bj = sub nsw i64 %i.bi, %i.bf                ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %.0245, align 1
  %i.bl = ashr i64 %i.bj, 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.0245, i64 4 ; 2 uses
  %.val269 = load i32, ptr %i.bm, align 1
  %i.bn = zext i32 %.val269 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !18
  %i.bq = zext i32 %i.bp to i64                   ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !18
  %i.bt = zext i32 %i.bs to i64                   ; 7 uses
  %.neg276 = add nuw nsw i64 %i.bq, %i.bf
  %i.bu = sub nsw i64 %.neg276, %i.bg
  %i.bv = add nsw i64 %i.bu, %i.bn
  %i.bw = add nsw i64 %i.bv, %i.bl
  %i.bx = add nsw i64 %i.bw, %i.bt                ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %i.bm, align 1
  %i.bz = ashr i64 %i.bx, 32
  %i.ca = getelementptr inbounds nuw i8, ptr %.0245, i64 8 ; 4 uses
  %.val268 = load i32, ptr %i.ca, align 1
  %i.cb = zext i32 %.val268 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !18
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  %.neg279 = add nuw nsw i64 %i.ce, %i.bf         ; 2 uses
  %i.cf = add nuw nsw i64 %i.az, %i.bq
  %i.cg = sub nsw i64 %.neg279, %i.cf
  %i.ch = add nsw i64 %i.cg, %i.cb
  %i.ci = add nsw i64 %i.ch, %i.bz                ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  store i32 %i.cj, ptr %i.ca, align 1
  %i.ck = ashr i64 %i.ci, 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.0245, i64 12 ; 2 uses
  %.val267 = load i32, ptr %i.cl, align 1
  %i.cm = zext i32 %.val267 to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18
  %i.cp = zext i32 %i.co to i64                   ; 4 uses
  %.neg283 = add nuw nsw i64 %i.bg, %i.az
  %i.cq = add nuw nsw i64 %i.bf, %i.bt
  %i.cr = add nuw nsw i64 %i.cq, %i.ce
  %i.cs = sub nsw i64 %.neg283, %i.cr
  %i.ct = add nsw i64 %i.cs, %i.cm
  %i.cu = add nsw i64 %i.ct, %i.cp
  %i.cv = add nsw i64 %i.cu, %i.ck                ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.cl, align 1
  %i.cx = ashr i64 %i.cv, 32
  %i.cy = getelementptr inbounds nuw i8, ptr %.0245, i64 16 ; 4 uses
  %.val266 = load i32, ptr %i.cy, align 1
  %i.cz = zext i32 %.val266 to i64
  %reass.add = shl nuw nsw i64 %i.az, 1
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.db = load i32, ptr %i.da, align 8, !tbaa !18
  %i.dc = zext i32 %i.db to i64                   ; 4 uses
  %reass.add256 = shl nuw nsw i64 %i.bf, 1        ; 2 uses
  %i.dd = add nuw nsw i64 %i.bg, %reass.add
  %i.de = sub nsw i64 %i.dd, %reass.add256
  %i.df = add nsw i64 %i.de, %i.bq
  %i.dg = add nsw i64 %i.df, %i.bt
  %i.dh = sub nsw i64 %i.dg, %i.cp
  %i.di = add nsw i64 %i.dh, %i.cz
  %i.dj = add nsw i64 %i.di, %i.dc
  %i.dk = add nsw i64 %i.dj, %i.cx                ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  store i32 %i.dl, ptr %i.cy, align 1
  %i.dm = ashr i64 %i.dk, 32
  %i.dn = getelementptr inbounds nuw i8, ptr %.0245, i64 20 ; 2 uses
  %.val265 = load i32, ptr %i.dn, align 1
  %i.do = zext i32 %.val265 to i64
  %reass.add257 = shl nuw nsw i64 %i.bt, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18
  %i.dr = zext i32 %i.dq to i64                   ; 4 uses
  %i.ds = add nuw nsw i64 %.neg279, %i.az
  %i.dt = add nuw nsw i64 %i.ds, %i.bq
  %i.du = add nuw nsw i64 %i.dt, %reass.add257
  %i.dv = sub nsw i64 %i.du, %i.dc
  %i.dw = add nsw i64 %i.dv, %i.do
  %i.dx = add nsw i64 %i.dw, %i.dr
  %i.dy = add nsw i64 %i.dx, %i.dm                ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dn, align 1
  %i.ea = ashr i64 %i.dy, 32
  %i.eb = getelementptr inbounds nuw i8, ptr %.0245, i64 24 ; 4 uses
  %.val264 = load i32, ptr %i.eb, align 1
  %i.ec = zext i32 %.val264 to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !18
  %i.ef = zext i32 %i.ee to i64                   ; 4 uses
  %i.eg = add nuw nsw i64 %i.ce, %i.bt
  %i.eh = add nuw nsw i64 %i.eg, %reass.add256
  %i.ei = add nuw nsw i64 %i.eh, %i.cp
  %i.ej = sub nsw i64 %i.ei, %i.dr
  %i.ek = add nsw i64 %i.ej, %i.ec
  %i.el = add nsw i64 %i.ek, %i.ef
  %i.em = add nsw i64 %i.el, %i.ea                ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.eb, align 1
  %i.eo = ashr i64 %i.em, 32
  %i.ep = getelementptr inbounds nuw i8, ptr %.0245, i64 28 ; 2 uses
  %.val263 = load i32, ptr %i.ep, align 1
  %i.eq = zext i32 %.val263 to i64
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.es = load i32, ptr %i.er, align 4, !tbaa !18
  %i.et = zext i32 %i.es to i64                   ; 3 uses
  %i.eu = add nuw nsw i64 %i.et, %i.bf            ; 2 uses
  %i.ev = add nuw nsw i64 %i.eu, %i.cp
  %i.ew = add nuw nsw i64 %i.ev, %i.dc
  %i.ex = sub nsw i64 %i.ew, %i.ef
  %i.ey = add nsw i64 %i.ex, %i.eq
  %i.ez = add nsw i64 %i.ey, %i.eo                ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.fa, ptr %i.ep, align 1
  %i.fb = ashr i64 %i.ez, 32
  %i.fc = getelementptr inbounds nuw i8, ptr %.0245, i64 32 ; 4 uses
  %.val262 = load i32, ptr %i.fc, align 1
  %i.fd = zext i32 %.val262 to i64
  %i.fe = add nuw nsw i64 %i.dc, %i.bc
  %i.ff = add nuw nsw i64 %i.fe, %i.dr
  %i.fg = sub nsw i64 %i.ff, %i.et
  %i.fh = add nsw i64 %i.fg, %i.fd
  %i.fi = add nsw i64 %i.fh, %i.fb                ; 2 uses
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %i.fc, align 1
  %i.fk = ashr i64 %i.fi, 32
  %i.fl = getelementptr inbounds nuw i8, ptr %.0245, i64 36 ; 2 uses
  %.val261 = load i32, ptr %i.fl, align 1
  %i.fm = zext i32 %.val261 to i64
  %i.fn = add nuw nsw i64 %i.dr, %i.az
  %i.fo = sub nsw i64 %i.fn, %i.bc
  %i.fp = add nsw i64 %i.fo, %i.ef
  %i.fq = add nsw i64 %i.fp, %i.fm
  %i.fr = add nsw i64 %i.fq, %i.fk                ; 2 uses
  %i.fs = trunc i64 %i.fr to i32
  store i32 %i.fs, ptr %i.fl, align 1
  %i.ft = ashr i64 %i.fr, 32
  %i.fu = getelementptr inbounds nuw i8, ptr %.0245, i64 40 ; 4 uses
  %.val260 = load i32, ptr %i.fu, align 1
  %i.fv = zext i32 %.val260 to i64
  %i.fw = add nuw nsw i64 %i.ef, %i.bt
  %i.fx = sub nsw i64 %i.fw, %i.az
  %i.fy = add nsw i64 %i.fx, %i.et
  %i.fz = add nsw i64 %i.fy, %i.fv
  %i.ga = add nsw i64 %i.fz, %i.ft                ; 2 uses
  %i.gb = trunc i64 %i.ga to i32
  store i32 %i.gb, ptr %i.fu, align 1
  %i.gc = ashr i64 %i.ga, 32
  %i.gd = getelementptr inbounds nuw i8, ptr %.0245, i64 44 ; 2 uses
  %.val = load i32, ptr %i.gd, align 1
  %i.ge = zext i32 %.val to i64
  %i.gf = add nuw nsw i64 %i.eu, %i.bc
  %i.gg = sub nsw i64 %i.gf, %i.bt
  %i.gh = add nsw i64 %i.gg, %i.ge
  %i.gi = add nsw i64 %i.gh, %i.gc                ; 3 uses
  %i.gj = trunc i64 %i.gi to i32
  store i32 %i.gj, ptr %i.gd, align 1
  %i.gk = lshr i64 %i.gi, 32                      ; 3 uses
  %i.gl = trunc nuw i64 %i.gk to i32
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  %i.gn = add nuw nsw i64 %i.gk, 4294967295
  %i.go = and i64 %i.gn, 4294967295
  %i.gp = getelementptr inbounds nuw [48 x i8], ptr @_nist_p_384, i64 %i.go
  %i.gq = tail call i64 @bn_sub_words(ptr noundef nonnull %.0245, ptr noundef nonnull %.0245, ptr noundef nonnull %i.gp, i32 noundef 6) #6
  %i.gr = trunc i64 %i.gq to i32
  br label %nist_cp_bn.exit273

bb.l:                                             ; preds = %._crit_edge
  %i.gs = icmp slt i64 %i.gi, 0
  br i1 %i.gs, label %bb.m, label %nist_cp_bn.exit273

bb.m:                                             ; preds = %bb.l
  %5 = and i64 %i.gk, 2147483647
  %i.gt = xor i64 %5, 2147483647
  %i.gu = getelementptr inbounds nuw [48 x i8], ptr @_nist_p_384, i64 %i.gt
  %i.gv = tail call i64 @bn_add_words(ptr noundef nonnull %.0245, ptr noundef nonnull %.0245, ptr noundef nonnull %i.gu, i32 noundef 6) #6
  %i.gw = trunc i64 %i.gv to i32                  ; 2 uses
  %.not259 = icmp eq i32 %i.gw, 0
  %i.gx = select i1 %.not259, ptr @bn_add_words, ptr @bn_sub_words
  br label %nist_cp_bn.exit273

nist_cp_bn.exit273:                               ; preds = %bb.l, %bb.m, %bb.k
  %.0247 = phi ptr [ @bn_sub_words, %bb.k ], [ %i.gx, %bb.m ], [ @bn_sub_words, %bb.l ]
  %.0244 = phi i32 [ %i.gr, %bb.k ], [ %i.gw, %bb.m ], [ 1, %bb.l ]
  %i.gy = call i64 %.0247(ptr noundef nonnull %i.a, ptr noundef nonnull %.0245, ptr noundef nonnull @_nist_p_384, i32 noundef 6) #6, !callees !26
  %i.gz = icmp ne i64 %i.gy, 0
  %i.ha = icmp ne i32 %.0244, 0
  %or.cond = select i1 %i.gz, i1 %i.ha, i1 false  ; 6 uses
  %i.hb = select i1 %or.cond, ptr %.0245, ptr %i.a
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !15
  store i64 %i.hc, ptr %.0245, align 8, !tbaa !15
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.sel = select i1 %or.cond, ptr %i.ca, ptr %.sroa.gep
  %i.hd = load i64, ptr %.sroa.sel, align 8, !tbaa !15
  store i64 %i.hd, ptr %i.ca, align 8, !tbaa !15
  %.sroa.gep297 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.sel298 = select i1 %or.cond, ptr %i.cy, ptr %.sroa.gep297
  %i.he = load i64, ptr %.sroa.sel298, align 8, !tbaa !15
  store i64 %i.he, ptr %i.cy, align 8, !tbaa !15
  %.sroa.gep300 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.sel301 = select i1 %or.cond, ptr %i.eb, ptr %.sroa.gep300
  %i.hf = load i64, ptr %.sroa.sel301, align 8, !tbaa !15
  store i64 %i.hf, ptr %i.eb, align 8, !tbaa !15
  %.sroa.gep303 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.sel304 = select i1 %or.cond, ptr %i.fc, ptr %.sroa.gep303
  %i.hg = load i64, ptr %.sroa.sel304, align 8, !tbaa !15
  store i64 %i.hg, ptr %i.fc, align 8, !tbaa !15
  %.sroa.gep306 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.sel307 = select i1 %or.cond, ptr %i.fu, ptr %.sroa.gep306
  %i.hh = load i64, ptr %.sroa.sel307, align 8, !tbaa !15
  store i64 %i.hh, ptr %i.fu, align 8, !tbaa !15
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 6, ptr %i.hi, align 8, !tbaa !10
  call void @bn_correct_top(ptr noundef %0) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.h, %bb.g, %nist_cp_bn.exit273, %bb.e, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %nist_cp_bn.exit273 ], [ %i.o, %bb.h ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BN_nist_mod_521(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #1 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 23 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 12 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.g = tail call i32 @BN_is_negative(ptr noundef nonnull %1) #6
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull @BN_nist_mod_521.ossl_bignum_nist_p_521_sqr) #6
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call i32 @BN_nnmod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @ossl_bignum_nist_p_521, ptr noundef %3) #6
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @BN_ucmp(ptr noundef nonnull @ossl_bignum_nist_p_521, ptr noundef nonnull %1) #6 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @BN_zero_ex(ptr noundef %0) #6
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.m = icmp sgt i32 %i.k, 0
  %i.n = icmp eq ptr %0, %1                       ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.n, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr @BN_copy(ptr noundef %0, ptr noundef nonnull %1) #6
  %i.p = icmp ne ptr %i.o, null
  %i.q = zext i1 %i.p to i32
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  br i1 %i.n, label %nist_cp_bn.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call ptr @bn_wexpand(ptr noundef %0, i32 noundef 9) #6
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.k, label %nist_cp_bn.exit.loopexit

nist_cp_bn.exit.loopexit:                         ; preds = %bb.j
  %i.s = load ptr, ptr %0, align 8, !tbaa !14     ; 10 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !15
  store i64 %i.t, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !15
  br label %nist_cp_bn.exit

nist_cp_bn.exit:                                  ; preds = %nist_cp_bn.exit.loopexit, %bb.i
  %.055 = phi ptr [ %i.e, %bb.i ], [ %i.s, %nist_cp_bn.exit.loopexit ] ; 13 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 6 uses
  %i.at = add i32 %i.d, -8                        ; 4 uses
  %i.au = icmp sgt i32 %i.d, 8
  br i1 %i.au, label %.lr.ph.preheader, label %.lr.ph69.preheader

.lr.ph.preheader:                                 ; preds = %nist_cp_bn.exit
  %wide.trip.count = zext i32 %i.at to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.at, 10
  br i1 %min.iters.check, label %.lr.ph.preheader109, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.av = sub i64 %i.b, %i.f
  %i.aw = add i64 %i.av, -65
  %diff.check = icmp ult i64 %i.aw, 31
  br i1 %diff.check, label %.lr.ph.preheader109, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <2 x i64>, ptr %i.ax, align 8, !tbaa !15
  %wide.load108 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %wide.load, ptr %i.az, align 16, !tbaa !15
  store <2 x i64> %wide.load108, ptr %i.ba, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader109, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader109 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader109 ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.prol
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.prol
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !28

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader109
end_hunk_0
