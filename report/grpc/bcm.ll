Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5611
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 367
begin_hunk_0_@_ZL15ecdsa_sign_implPK11ec_group_stPiPhPmmPK9EC_SCALARS7_PKhm:bb.a
  %min.iters.check71 = icmp ult i32 %i.ec, 4
  br i1 %min.iters.check71, label %.lr.ph.i39.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %.lr.ph.preheader.i37
  %n.vec73 = and i64 %wide.trip.count.i38, 2147483644 ; 3 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next80, %vector.body74 ] ; 2 uses
  %vec.phi76 = phi <2 x i64> [ zeroinitializer, %vector.ph72 ], [ %i.eg, %vector.body74 ]
  %vec.phi77 = phi <2 x i64> [ zeroinitializer, %vector.ph72 ], [ %i.eh, %vector.body74 ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index75 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load78 = load <2 x i64>, ptr %i.ee, align 8, !tbaa !98
  %wide.load79 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !98
  %i.eg = or <2 x i64> %wide.load78, %vec.phi76   ; 2 uses
  %i.eh = or <2 x i64> %wide.load79, %vec.phi77   ; 2 uses
  %index.next80 = add nuw i64 %index75, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next80, %n.vec73
  br i1 %i.ei, label %middle.block81, label %vector.body74, !llvm.loop !1304

middle.block81:                                   ; preds = %vector.body74
  %bin.rdx82 = or <2 x i64> %i.eh, %i.eg
  %i.ej = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx82) ; 2 uses
  %cmp.n83 = icmp eq i64 %n.vec73, %wide.trip.count.i38
  br i1 %cmp.n83, label %._crit_edge.loopexit.i44, label %.lr.ph.i39.preheader

.lr.ph.i39.preheader:                             ; preds = %.lr.ph.preheader.i37, %middle.block81
  %indvars.iv.i40.ph = phi i64 [ 0, %.lr.ph.preheader.i37 ], [ %n.vec73, %middle.block81 ]
  %.067.i41.ph = phi i64 [ 0, %.lr.ph.preheader.i37 ], [ %i.ej, %middle.block81 ]
  br label %.lr.ph.i39

._crit_edge.loopexit.i44:                         ; preds = %.lr.ph.i39, %middle.block81
  %.lcssa = phi i64 [ %i.ej, %middle.block81 ], [ %i.eo, %.lr.ph.i39 ]
  %i.ek = icmp eq i64 %.lcssa, 0
  %i.el = zext i1 %i.ek to i32
  br label %ec_scalar_is_zero.exit45

.lr.ph.i39:                                       ; preds = %.lr.ph.i39.preheader, %.lr.ph.i39
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i42, %.lr.ph.i39 ], [ %indvars.iv.i40.ph, %.lr.ph.i39.preheader ] ; 2 uses
  %.067.i41 = phi i64 [ %i.eo, %.lr.ph.i39 ], [ %.067.i41.ph, %.lr.ph.i39.preheader ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv.i40
  %i.en = load i64, ptr %i.em, align 8, !tbaa !98
  %i.eo = or i64 %i.en, %.067.i41                 ; 2 uses
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %indvars.iv.next.i42, %wide.trip.count.i38
  br i1 %exitcond.not.i43, label %._crit_edge.loopexit.i44, label %.lr.ph.i39, !llvm.loop !1305

ec_scalar_is_zero.exit45:                         ; preds = %ec_scalar_from_montgomery.exit, %._crit_edge.loopexit.i44
  %.06.lcssa.i36 = phi i32 [ 1, %ec_scalar_from_montgomery.exit ], [ %i.el, %._crit_edge.loopexit.i44 ]
  %i.ep = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.06.lcssa.i36) #38, !srcloc !130
  %.not33 = icmp eq i32 %i.ep, 0
  br i1 %.not33, label %bb.o, label %bb.n

bb.n:                                             ; preds = %ec_scalar_is_zero.exit45
  store i32 1, ptr %1, align 4, !tbaa !84
  br label %bb.p

bb.o:                                             ; preds = %ec_scalar_is_zero.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @ec_scalar_to_bytes(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %10)
  %i.eq = load i64, ptr %i.c, align 8, !tbaa !98
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  call void @ec_scalar_to_bytes(ptr noundef nonnull %0, ptr noundef %i.er, ptr noundef nonnull %i.c, ptr noundef nonnull %11)
  store i64 %.0.i.i61, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i32 [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.q

bb.q:                                             ; preds = %ec_point_mul_scalar_base.exit.thread, %ec_point_mul_scalar_base.exit, %bb.p, %bb.h
  %.1 = phi i32 [ 0, %bb.h ], [ %.0, %bb.p ], [ 0, %ec_point_mul_scalar_base.exit ], [ 0, %ec_point_mul_scalar_base.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %bb.q, %BN_num_bits.exit.thread
  %.3 = phi i32 [ 0, %BN_num_bits.exit.thread ], [ 0, %bb.f ], [ %.1, %bb.q ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @HKDF(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.c = call ptr @HMAC(ptr noundef %2, ptr noundef %5, i64 noundef %6, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %HKDF_extract.exit.thread, label %bb.b

HKDF_extract.exit.thread:                         ; preds = %bb.a
  call void @ERR_put_error(i32 noundef 31, i32 noundef 0, i32 noundef 28, ptr noundef nonnull @.str.33, i32 noundef 51) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !84
  %i.f = zext i32 %i.e to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.g = call i32 @HKDF_expand(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull %i.b, i64 noundef %i.f, ptr noundef %7, i64 noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %HKDF_extract.exit.thread, %bb.b
  %.0 = phi i32 [ 0, %HKDF_extract.exit.thread ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @HKDF_extract(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call ptr @HMAC(ptr noundef %2, ptr noundef %5, i64 noundef %6, ptr noundef %3, i64 noundef %4, ptr noundef %0, ptr noundef nonnull %i.a)
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_put_error(i32 noundef 31, i32 noundef 0, i32 noundef 28, ptr noundef nonnull @.str.33, i32 noundef 51) #36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !84
  %i.e = zext i32 %i.d to i64
  store i64 %i.e, ptr %1, align 8, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @HKDF_expand(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %7 = alloca %struct.hmac_ctx_st, align 8        ; 21 uses
  %i.c = alloca i8, align 1                       ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !201
  %i.f = zext i32 %i.e to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.g = add i64 %1, %i.f                         ; 2 uses
  %i.h = add i64 %i.g, -1                         ; 2 uses
  %i.i = udiv i64 %i.h, %i.f                      ; 3 uses
  %i.j = icmp ult i64 %i.g, %1
  %i.k = icmp ugt i64 %i.i, 255
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 31, i32 noundef 0, i32 noundef 100, ptr noundef nonnull @.str.33, i32 noundef 73) #36
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %7, i8 0, i64 104, i1 false)
  %i.l = call i32 @HMAC_Init_ex(ptr noundef nonnull %7, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %2, ptr poison)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not53 = icmp ult i64 %i.h, %i.f
  br i1 %.not53, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 28 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  store i8 1, ptr %i.c, align 1, !tbaa !82
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !208
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre56 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !211
  call void %.pre56(ptr noundef nonnull %i.m, ptr noundef %5, i64 noundef %6) #36, !inline_history !313
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !211
  call void %i.r(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, i64 noundef 1) #36, !inline_history !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213
  call void %i.u(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #36, !inline_history !314
  %.pre.i.i.peel = load ptr, ptr %i.m, align 8, !tbaa !208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre.i.i.peel, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !201
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.i.i.peel, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !202
  %i.aa = zext i32 %i.z to i64
  call void @OPENSSL_cleanse(ptr noundef %i.x, i64 noundef %i.aa) #36
  %i.ab = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o)
  %.not.i.peel = icmp ne i32 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.peel)
  %i.ac = zext i32 %i.w to i64
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !211
  call void %i.af(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i64 noundef %i.ac) #36, !inline_history !315
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !213
  call void %i.ai(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b) #36, !inline_history !314
  %.pre.i11.i.peel = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i11.i.peel, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !202
  %i.am = zext i32 %i.al to i64
  call void @OPENSSL_cleanse(ptr noundef %i.aj, i64 noundef %i.am) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %spec.select.peel = call i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 2 uses
  %i.an = icmp eq i64 %1, 0
  br i1 %i.an, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 16 %i.b, i64 %spec.select.peel, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.ao = icmp samesign ugt i64 %i.i, 1
  br i1 %i.ao, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.f, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.f ]
  %.03751 = phi i64 [ %i.by, %bb.i ], [ %spec.select.peel, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = trunc i64 %indvars.iv.next to i8
  store i8 %i.ap, ptr %i.c, align 1, !tbaa !82
  %i.aq = call i32 @HMAC_Init_ex(ptr noundef nonnull %7, ptr noundef null, i64 noundef 0, ptr noundef null, ptr poison)
  %.not44 = icmp eq i32 %i.aq, 0
  br i1 %.not44, label %.thread, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !211
  call void %i.at(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, i64 noundef %i.f) #36, !inline_history !313
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !211
  call void %i.aw(ptr noundef nonnull %i.m, ptr noundef %5, i64 noundef %6) #36, !inline_history !313
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !211
  call void %i.az(ptr noundef nonnull %i.m, ptr noundef nonnull %i.c, i64 noundef 1) #36, !inline_history !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !213
  call void %i.bc(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a) #36, !inline_history !314
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !208 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !201
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 44
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !202
  %i.bi = zext i32 %i.bh to i64
  call void @OPENSSL_cleanse(ptr noundef %i.bf, i64 noundef %i.bi) #36
  %i.bj = call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.m, ptr noundef nonnull %i.o) ; 0 uses
  %i.bk = zext i32 %i.be to i64
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !211
  call void %i.bn(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, i64 noundef %i.bk) #36, !inline_history !315
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !213
  call void %i.bq(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b) #36, !inline_history !314
  %.pre.i11.i = load ptr, ptr %i.m, align 8, !tbaa !208
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !207
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i11.i, i64 44
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !202
  %i.bu = zext i32 %i.bt to i64
  call void @OPENSSL_cleanse(ptr noundef %i.br, i64 noundef %i.bu) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.bv = sub i64 %1, %.03751
  %spec.select = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.f) ; 2 uses
  %i.bw = icmp eq i64 %1, %.03751
  br i1 %i.bw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.03751
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull readonly align 16 %i.b, i64 %spec.select, i1 false)
  br label %bb.i

.thread:                                          ; preds = %.peel.next
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.by = add i64 %spec.select, %.03751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.bz = icmp ugt i64 %i.i, %indvars.iv.next
  br i1 %i.bz, label %.peel.next, label %.loopexit, !llvm.loop !1306

.loopexit:                                        ; preds = %bb.i, %bb.f, %.preheader, %.thread, %bb.c
  %.not46 = phi i1 [ false, %.thread ], [ false, %bb.c ], [ true, %.preheader ], [ true, %bb.f ], [ true, %bb.i ]
  %.035 = phi i32 [ 0, %.thread ], [ 0, %bb.c ], [ 1, %.preheader ], [ 1, %bb.f ], [ 1, %bb.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !207
  call void @OPENSSL_free(ptr noundef %i.cc) #36
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !215 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %EVP_MD_CTX_cleanup.exit.i, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !217
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !218
  call void %i.cf(ptr noundef %i.ch) #36, !inline_history !316
  br label %EVP_MD_CTX_cleanup.exit.i

EVP_MD_CTX_cleanup.exit.i:                        ; preds = %bb.j, %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 0, i64 32, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !207
  call void @OPENSSL_free(ptr noundef %i.ck) #36
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !215 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.cm, null
  br i1 %.not.i4.i, label %EVP_MD_CTX_cleanup.exit5.i, label %bb.k

bb.k:                                             ; preds = %EVP_MD_CTX_cleanup.exit.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !217
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !218
  call void %i.cn(ptr noundef %i.cp) #36, !inline_history !316
  br label %EVP_MD_CTX_cleanup.exit5.i

EVP_MD_CTX_cleanup.exit5.i:                       ; preds = %bb.k, %EVP_MD_CTX_cleanup.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i8 0, i64 32, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !207
  call void @OPENSSL_free(ptr noundef %i.cr) #36
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !215 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.ct, null
  br i1 %.not.i6.i, label %HMAC_CTX_cleanup.exit, label %bb.l

bb.l:                                             ; preds = %EVP_MD_CTX_cleanup.exit5.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !217
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !218
  call void %i.cu(ptr noundef %i.cw) #36, !inline_history !316
  br label %HMAC_CTX_cleanup.exit

HMAC_CTX_cleanup.exit:                            ; preds = %EVP_MD_CTX_cleanup.exit5.i, %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i8 0, i64 32, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 104) #36
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %HMAC_CTX_cleanup.exit
  call void @ERR_put_error(i32 noundef 31, i32 noundef 0, i32 noundef 28, ptr noundef nonnull @.str.33, i32 noundef 109) #36
  br label %bb.n

bb.n:                                             ; preds = %HMAC_CTX_cleanup.exit, %bb.m, %bb.b
  %.038 = phi i32 [ 0, %bb.b ], [ %.035, %bb.m ], [ %.035, %HMAC_CTX_cleanup.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret i32 %.038
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @HMAC(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %7 = alloca %struct.hmac_ctx_st, align 8        ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %7, i8 0, i64 104, i1 false)
  %i.b = call i32 @HMAC_Init_ex(ptr noundef nonnull %7, ptr noundef %1, i64 noundef %2, ptr noundef %0, ptr poison)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211
  call void %i.f(ptr noundef nonnull %i.c, ptr noundef %3, i64 noundef %4) #36, !inline_history !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !213
  call void %i.i(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #36, !inline_history !314
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !208 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !201
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
end_hunk_0
