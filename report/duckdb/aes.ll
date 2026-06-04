inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@mbedtls_internal_aes_decrypt:bb.a
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.pb, ptr %i.qh, align 1
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.qf, ptr %i.qi, align 1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %3, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -33, 1) i32 @mbedtls_aes_crypt_ecb(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @mbedtls_internal_aes_decrypt(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ -33, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -34, 1) i32 @mbedtls_aes_crypt_cbc(ptr noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr noundef captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %2, 15
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %mbedtls_aes_crypt_ecb.exit.preheader, label %._crit_edge

mbedtls_aes_crypt_ecb.exit.preheader:             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53:         ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53, %mbedtls_aes_crypt_ecb.exit.preheader
  %.03876 = phi ptr [ %i.k, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53 ], [ %5, %mbedtls_aes_crypt_ecb.exit.preheader ] ; 5 uses
  %.03975 = phi ptr [ %i.j, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53 ], [ %4, %mbedtls_aes_crypt_ecb.exit.preheader ] ; 3 uses
  %.04274 = phi i64 [ %i.l, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53 ], [ %2, %mbedtls_aes_crypt_ecb.exit.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.03975, i64 16, i1 false)
  %i.f = tail call i32 @mbedtls_internal_aes_decrypt(ptr noundef readonly %0, ptr noundef nonnull readonly %.03975, ptr noundef %.03876) ; 0 uses
  %.0.copyload.i54 = load i64, ptr %.03876, align 1
  %.0.copyload.i = load i64, ptr %3, align 1
  %i.g = xor i64 %.0.copyload.i, %.0.copyload.i54
  store i64 %i.g, ptr %.03876, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.03876, i64 8 ; 2 uses
  %.0.copyload.i54.1 = load i64, ptr %i.h, align 1
  %.0.copyload.i.1 = load i64, ptr %i.e, align 1
  %i.i = xor i64 %.0.copyload.i.1, %.0.copyload.i54.1
  store i64 %i.i, ptr %i.h, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.03975, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.03876, i64 16
  %i.l = add i64 %.04274, -16                     ; 2 uses
  %.not49 = icmp eq i64 %i.l, 0
  br i1 %.not49, label %.loopexit, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.d, %._crit_edge
  %.070 = phi ptr [ %.169, %._crit_edge ], [ %3, %bb.d ] ; 2 uses
  %.169 = phi ptr [ %i.t, %._crit_edge ], [ %5, %bb.d ] ; 7 uses
  %.14068 = phi ptr [ %i.s, %._crit_edge ], [ %4, %bb.d ] ; 3 uses
  %.14367 = phi i64 [ %i.u, %._crit_edge ], [ %2, %bb.d ]
  %.0.copyload.i56 = load i64, ptr %.14068, align 1
  %.0.copyload.i55 = load i64, ptr %.070, align 1
  %i.m = xor i64 %.0.copyload.i55, %.0.copyload.i56
  store i64 %i.m, ptr %.169, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.14068, i64 8
  %.0.copyload.i56.1 = load i64, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.070, i64 8
  %.0.copyload.i55.1 = load i64, ptr %i.o, align 1
  %i.p = xor i64 %.0.copyload.i55.1, %.0.copyload.i56.1
  %i.q = getelementptr inbounds nuw i8, ptr %.169, i64 8
  store i64 %i.p, ptr %i.q, align 1
  %i.r = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef readonly %0, ptr noundef nonnull readonly %.169, ptr noundef nonnull %.169) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.14068, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.169, i64 16
  %i.u = add i64 %.14367, -16                     ; 2 uses
  %.not47 = icmp eq i64 %i.u, 0
  br i1 %.not47, label %bb.e, label %._crit_edge, !llvm.loop !27

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %.169, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53, %bb.e, %bb.c, %bb.b, %bb.a
  %.041 = phi i32 [ -34, %bb.c ], [ -33, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define hidden range(i32 -33, 1) i32 @mbedtls_aes_crypt_ctr(ptr noundef readonly captures(none) %0, i64 noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !28     ; 3 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.g, label %.preheader49

.preheader49:                                     ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge57, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %.preheader49
  %i.f = sub i64 %i.c, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %diff.check = icmp ult i64 %i.f, 32
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %._crit_edge
  %.03255 = phi i64 [ %i.ch, %._crit_edge ], [ 0, %.lr.ph56.preheader ] ; 5 uses
  %.03654 = phi i64 [ 0, %._crit_edge ], [ %i.d, %.lr.ph56.preheader ] ; 4 uses
  %i.j = icmp eq i64 %.03654, 0
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph56
  %i.k = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef readonly %0, ptr noundef readonly %3, ptr noundef %4) ; 0 uses
  %.0.copyload.i.i = load i32, ptr %i.g, align 1
  %i.l = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  store i32 %i.n, ptr %i.g, align 1
  %i.o = icmp eq i32 %i.m, 0
  br i1 %i.o, label %bb.c, label %_ZL29mbedtls_ctr_increment_counterPh.exit

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.1 = load i32, ptr %i.h, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1)
  %i.q = add i32 %i.p, 1                          ; 2 uses
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.r, ptr %i.h, align 1
  %i.s = icmp eq i32 %i.q, 0
  br i1 %i.s, label %bb.d, label %_ZL29mbedtls_ctr_increment_counterPh.exit

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.2 = load i32, ptr %i.i, align 1
  %i.t = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2)
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  store i32 %i.v, ptr %i.i, align 1
  %i.w = icmp eq i32 %i.u, 0
  br i1 %i.w, label %bb.e, label %_ZL29mbedtls_ctr_increment_counterPh.exit

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.3 = load i32, ptr %3, align 1
  %i.x = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.3)
  %i.y = add i32 %i.x, 1
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  store i32 %i.z, ptr %3, align 1
  br label %_ZL29mbedtls_ctr_increment_counterPh.exit

bb.f:                                             ; preds = %.lr.ph56
  %i.aa = sub nuw nsw i64 16, %.03654
  br label %_ZL29mbedtls_ctr_increment_counterPh.exit

_ZL29mbedtls_ctr_increment_counterPh.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0 = phi i64 [ %i.aa, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ], [ 16, %bb.b ]
  %i.ab = sub i64 %1, %.03255
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.ab) ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 %.03255 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 %.03255 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %.03654 ; 8 uses
  %.not.i50 = icmp samesign ult i64 %spec.select, 8
  br i1 %.not.i50, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.1, %_ZL29mbedtls_ctr_increment_counterPh.exit
  %.0.i.lcssa = phi i64 [ 0, %_ZL29mbedtls_ctr_increment_counterPh.exit ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 6 uses
  %i.af = icmp samesign ult i64 %.0.i.lcssa, %spec.select
  br i1 %i.af, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ag = sub nuw nsw i64 %spec.select, %.0.i.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph53.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = add i64 %.03255, %i.c
  %i.ai = add i64 %.03654, %i.a
  %i.aj = sub i64 %i.ah, %i.ai
  %diff.check61 = icmp ult i64 %i.aj, 32
  %conflict.rdx = or i1 %diff.check, %diff.check61
  br i1 %conflict.rdx, label %.lr.ph53.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.mod.vf66 = and i64 %spec.select, 7           ; 2 uses
  %n.vec67 = sub nsw i64 %i.ag, %n.mod.vf66       ; 2 uses
  %i.ak = add i64 %.0.i.lcssa, %n.vec67
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 2 uses
  %i.al = add i64 %.0.i.lcssa, %index68           ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.al
  %wide.load69 = load <8 x i8>, ptr %i.am, align 1, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.al
  %wide.load70 = load <8 x i8>, ptr %i.an, align 1, !tbaa !10
  %7 = xor <8 x i8> %wide.load70, %wide.load69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.al
  store <8 x i8> %7, ptr %i.ao, align 1, !tbaa !10
  %index.next71 = add nuw i64 %index68, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %n.mod.vf66, 0
  br i1 %cmp.n72, label %._crit_edge, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i52.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck ], [ %.0.i.lcssa, %iter.check ], [ %i.ak, %vec.epilog.middle.block ] ; 4 uses
  %i.aq = sub i64 %spec.select, %.1.i52.ph
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.prol.loopexit, label %.lr.ph53.prol

.lr.ph53.prol:                                    ; preds = %.lr.ph53.preheader, %.lr.ph53.prol
  %.1.i52.prol = phi i64 [ %i.ax, %.lr.ph53.prol ], [ %.1.i52.ph, %.lr.ph53.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph53.prol ], [ 0, %.lr.ph53.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i52.prol
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i52.prol
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = xor i8 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i52.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !10
  %i.ax = add nuw nsw i64 %.1.i52.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.prol.loopexit, label %.lr.ph53.prol, !llvm.loop !30

.lr.ph53.prol.loopexit:                           ; preds = %.lr.ph53.prol, %.lr.ph53.preheader
  %.1.i52.unr = phi i64 [ %.1.i52.ph, %.lr.ph53.preheader ], [ %i.ax, %.lr.ph53.prol ]
  %i.ay = sub i64 %.1.i52.ph, %spec.select
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge, label %.lr.ph53

.lr.ph:                                           ; preds = %_ZL29mbedtls_ctr_increment_counterPh.exit
  %.0.copyload.i47 = load i64, ptr %i.ad, align 1
  %.0.copyload.i = load i64, ptr %i.ae, align 1
  %i.ba = xor i64 %.0.copyload.i, %.0.copyload.i47
  store i64 %i.ba, ptr %i.ac, align 1
  %.not.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i47.1 = load i64, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.bc, align 1
  %i.bd = xor i64 %.0.copyload.i.1, %.0.copyload.i47.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.bd, ptr %i.be, align 1
  br label %.preheader

.lr.ph53:                                         ; preds = %.lr.ph53.prol.loopexit, %.lr.ph53
  %.1.i52 = phi i64 [ %i.cg, %.lr.ph53 ], [ %.1.i52.unr, %.lr.ph53.prol.loopexit ] ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i52
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i52
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !10
  %i.bj = xor i8 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i52
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !10
  %i.bl = add nuw nsw i64 %.1.i52, 1              ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bl
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !10
  %i.bs = add nuw nsw i64 %.1.i52, 2              ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !10
  %i.bx = xor i8 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bs
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !10
  %i.bz = add nuw nsw i64 %.1.i52, 3              ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = xor i8 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bz
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !10
  %i.cg = add nuw nsw i64 %.1.i52, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cg, %spec.select
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph53, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph53.prol.loopexit, %.lr.ph53, %vec.epilog.middle.block, %.preheader
  %i.ch = add i64 %spec.select, %.03255           ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %1
  br i1 %i.ci, label %.lr.ph56, label %._crit_edge57.loopexit, !llvm.loop !32

._crit_edge57.loopexit:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !28
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %.preheader49
  %i.cj = phi i64 [ %.pre, %._crit_edge57.loopexit ], [ %i.d, %.preheader49 ]
  %i.ck = add i64 %i.cj, %1
  %i.cl = and i64 %i.ck, 15
  store i64 %i.cl, ptr %2, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge57, %bb.a
  %.040 = phi i32 [ -33, %bb.a ], [ 0, %._crit_edge57 ]
  ret i32 %.040
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTS19mbedtls_aes_context", !4, i64 0, !9, i64 8, !5, i64 16}
!9 = !{!"long", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{!8, !9, i64 8}
!16 = distinct !{!16, !12, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !12, !17}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{!9, !9, i64 0}
!29 = distinct !{!29, !12, !17, !18}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !12, !17}
!32 = distinct !{!32, !12}
end_hunk_0
