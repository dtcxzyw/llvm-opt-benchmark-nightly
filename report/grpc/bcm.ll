Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@BN_nnmod_pow2:bb.a
  br i1 %exitcond.not.i.i, label %BN_is_zero.exit, label %scalar.ph, !llvm.loop !668

BN_is_zero.exit:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.k, %middle.block ], [ %i.n, %scalar.ph ]
  %.not43 = icmp eq i64 %.lcssa, 0
  br i1 %.not43, label %BN_is_zero.exit.thread, label %bb.c

bb.c:                                             ; preds = %BN_is_zero.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !111
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %BN_is_zero.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %2, -1                           ; 2 uses
  %i.s = lshr i64 %i.r, 6                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !114
  %i.w = sext i32 %i.v to i64
  %.not.i37.not = icmp ult i64 %i.s, %i.w
  br i1 %.not.i37.not, label %bn_wexpand.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i64 %i.r, 536870847
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 301) #36
  br label %BN_is_zero.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !115
  %i.aa = and i32 %i.z, 2
  %.not16.i = icmp eq i32 %i.aa, 0
  br i1 %.not16.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 306) #36
  br label %BN_is_zero.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call ptr @OPENSSL_calloc(i64 noundef %i.t, i64 noundef 8) #36 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %BN_is_zero.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !113 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = sext i32 %i.ad to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr readonly align 1 %i.ah, i64 %i.ag, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !112
  tail call void @OPENSSL_free(ptr noundef %i.ai) #36
  store ptr %i.ab, ptr %0, align 8, !tbaa !112
  %i.aj = trunc nuw nsw i64 %i.t to i32
  store i32 %i.aj, ptr %i.u, align 4, !tbaa !114
  %.pre = load i32, ptr %i.b, align 8, !tbaa !113
  %.pre48 = sext i32 %.pre to i64
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.d
  %.pre-phi = phi i64 [ %.pre48, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.d, %bb.d ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.e, %bb.d ]
  %i.al = icmp eq i64 %i.t, %.pre-phi
  br i1 %i.al, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.l

bb.l:                                             ; preds = %bn_wexpand.exit
  %i.am = sub nsw i64 %i.t, %.pre-phi
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.an, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bn_wexpand.exit, %bb.l
  store i32 0, ptr %i.p, align 8, !tbaa !111
  %i.ap = trunc i64 %i.t to i32                   ; 4 uses
  store i32 %i.ap, ptr %i.b, align 8, !tbaa !113
  %i.aq = icmp sgt i32 %i.ap, 0                   ; 2 uses
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !112   ; 2 uses
  %wide.trip.count = and i64 %i.t, 2147483647     ; 3 uses
  %min.iters.check61 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph
  %n.vec63 = and i64 %i.t, 2147483644             ; 3 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next68, %vector.body64 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index65 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %i.as, align 8, !tbaa !96
  %wide.load67 = load <2 x i64>, ptr %i.at, align 8, !tbaa !96
  %i.au = xor <2 x i64> %wide.load66, splat (i64 -1)
  %i.av = xor <2 x i64> %wide.load67, splat (i64 -1)
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !96
  store <2 x i64> %i.av, ptr %i.at, align 8, !tbaa !96
  %index.next68 = add nuw i64 %index65, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.aw, label %middle.block69, label %vector.body64, !llvm.loop !669

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i64 %wide.trip.count, %n.vec63
  br i1 %cmp.n70, label %._crit_edge, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %.lr.ph, %middle.block69
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec63, %middle.block69 ]
  br label %scalar.ph60

._crit_edge:                                      ; preds = %scalar.ph60, %middle.block69, %_ZL14OPENSSL_memsetPvim.exit
  %i.ax = and i64 %2, 63                          ; 2 uses
  %.not36 = icmp eq i64 %i.ax, 0
  br i1 %.not36, label %bb.n, label %bb.m

scalar.ph60:                                      ; preds = %scalar.ph60.preheader, %scalar.ph60
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph60 ], [ %indvars.iv.ph, %scalar.ph60.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !96
  %i.ba = xor i64 %i.az, -1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !96
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph60, !llvm.loop !670

bb.m:                                             ; preds = %._crit_edge
  %notmask = shl nsw i64 -1, %i.ax
  %i.bb = xor i64 %notmask, -1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !112
  %sext = shl i64 %i.t, 32
  %i.bd = ashr exact i64 %sext, 29
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8     ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !96
  %i.bh = and i64 %i.bg, %i.bb
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !96
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  br i1 %i.aq, label %.lr.ph.i.i38, label %bn_minimal_width.exit.i

.lr.ph.i.i38:                                     ; preds = %bb.n
  %i.bi = load ptr, ptr %0, align 8, !tbaa !112
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i38
  %.05.i.i = phi i32 [ %i.ap, %.lr.ph.i.i38 ], [ %i.bo, %bb.p ] ; 4 uses
  %i.bj = zext nneg i32 %.05.i.i to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !96
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %bn_minimal_width.exit.thread5.i

bn_minimal_width.exit.thread5.i:                  ; preds = %bb.o
  store i32 %.05.i.i, ptr %i.b, align 8, !tbaa !113
  br label %bn_set_minimal_width.exit

bb.p:                                             ; preds = %bb.o
  %i.bo = add nsw i32 %.05.i.i, -1
  %i.bp = icmp sgt i32 %.05.i.i, 1
  br i1 %i.bp, label %bb.o, label %bn_minimal_width.exit.thread.i, !llvm.loop !10

bn_minimal_width.exit.thread.i:                   ; preds = %bb.p
  store i32 0, ptr %i.b, align 8, !tbaa !113
  br label %bb.q

bn_minimal_width.exit.i:                          ; preds = %bb.n
  %i.bq = icmp eq i32 %i.ap, 0
  br i1 %i.bq, label %bb.q, label %bn_set_minimal_width.exit

bb.q:                                             ; preds = %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread.i
  store i32 0, ptr %i.p, align 8, !tbaa !111
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bn_minimal_width.exit.thread5.i, %bn_minimal_width.exit.i, %bb.q
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL17BN_value_one_once, ptr noundef nonnull @_ZL17BN_value_one_initv) #36
  %i.br = tail call i32 @BN_add(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @_ZL20BN_value_one_storage)
  br label %BN_is_zero.exit.thread

BN_is_zero.exit.thread:                           ; preds = %bb.i, %bb.h, %bb.f, %bb.b, %bn_set_minimal_width.exit, %BN_is_zero.exit, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %BN_is_zero.exit ], [ 1, %bb.c ], [ %i.br, %bn_set_minimal_width.exit ], [ 1, %bb.b ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i16 @bn_mod_u16_consttime(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp ult i16 %1, 2
  br i1 %i.a, label %.loopexit, label %2

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %4 = load i32, ptr %3, align 8, !tbaa !113      ; 2 uses
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %.lr.ph.a, label %.loopexit

.lr.ph.a:                                         ; preds = %2
  %i.b = zext i16 %1 to i64                       ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 3 uses
  %i.d = lshr i64 %i.c, 8                         ; 2 uses
  %.not53.i = icmp eq i64 %i.d, 0                 ; 2 uses
  %i.e = select i1 %.not53.i, i64 %i.c, i64 %i.d  ; 2 uses
  %i.f = lshr i64 %i.e, 4                         ; 2 uses
  %.not54.i = icmp eq i64 %i.f, 0                 ; 2 uses
  %6 = select i1 %.not54.i, i32 0, i32 4
  %i.g = select i1 %.not53.i, i32 1, i32 9
  %i.h = or disjoint i32 %6, %i.g
  %i.i = select i1 %.not54.i, i64 %i.e, i64 %i.f  ; 2 uses
  %i.j = lshr i64 %i.i, 2                         ; 2 uses
  %.not55.i = icmp eq i64 %i.j, 0                 ; 2 uses
  %i.k = select i1 %.not55.i, i32 0, i32 2
  %i.l = or disjoint i32 %i.h, %i.k
  %i.m = select i1 %.not55.i, i64 %i.i, i64 %i.j
  %i.n = icmp samesign ugt i64 %i.m, 1
  %.neg.i = zext i1 %i.n to i32
  %i.o = add nuw nsw i32 %i.l, %.neg.i            ; 2 uses
  %i.p = or disjoint i32 %i.o, 32
  %i.q = zext nneg i32 %i.p to i64
  %i.r = shl nuw nsw i64 1, %i.q
  %i.s = add nuw nsw i64 %i.c, %i.r
  %i.t = udiv i64 %i.s, %i.b
  %7 = load ptr, ptr %0, align 8, !tbaa !112
  %8 = and i64 %i.t, 4294967295                   ; 4 uses
  %9 = add nsw i32 %i.o, -1                       ; 4 uses
  %10 = zext i16 %1 to i32                        ; 4 uses
  %11 = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.a, %bb.b
  %indvars.iv = phi i64 [ %11, %.lr.ph.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02124 = phi i32 [ 0, %.lr.ph.a ], [ %i.be, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next
  %i.v = load i64, ptr %i.u, align 8, !tbaa !96   ; 2 uses
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32                ; 3 uses
  %i.y = tail call i32 @llvm.fshl.i32(i32 %.02124, i32 %i.x, i32 16) ; 3 uses
  %12 = zext i32 %i.y to i64
  %13 = mul nuw i64 %8, %12
  %14 = lshr i64 %13, 32
  %15 = trunc nuw i64 %14 to i32                  ; 2 uses
  %i.z = sub i32 %i.y, %15
  %i.aa = lshr i32 %i.z, 1
  %i.ab = add i32 %i.aa, %15
  %i.ac = lshr i32 %i.ab, %9
  %i.ad = mul i32 %i.ac, %10
  %i.ae = sub i32 %i.y, %i.ad
  %i.af = shl i32 %i.ae, 16
  %i.ag = and i32 %i.x, 65535
  %i.ah = or disjoint i32 %i.af, %i.ag            ; 2 uses
  %16 = zext i32 %i.ah to i64
  %17 = mul nuw i64 %8, %16
  %18 = lshr i64 %17, 32
  %19 = trunc nuw i64 %18 to i32                  ; 2 uses
  %i.ai = sub i32 %i.ah, %19
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = add i32 %i.aj, %19
  %i.al = lshr i32 %i.ak, %9
  %i.am = mul i32 %i.al, %10
  %i.an = sub i32 %i.x, %i.am
  %i.ao = trunc i64 %i.v to i32                   ; 3 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.ao, i32 16) ; 3 uses
  %20 = zext i32 %i.ap to i64
  %21 = mul nuw i64 %8, %20
  %22 = lshr i64 %21, 32
  %23 = trunc nuw i64 %22 to i32                  ; 2 uses
  %i.aq = sub i32 %i.ap, %23
  %i.ar = lshr i32 %i.aq, 1
  %i.as = add i32 %i.ar, %23
  %i.at = lshr i32 %i.as, %9
  %i.au = mul i32 %i.at, %10
  %i.av = sub i32 %i.ap, %i.au
  %i.aw = shl i32 %i.av, 16
  %i.ax = and i32 %i.ao, 65535
  %i.ay = or disjoint i32 %i.aw, %i.ax            ; 2 uses
  %24 = zext i32 %i.ay to i64
  %25 = mul nuw i64 %8, %24
  %26 = lshr i64 %25, 32
  %27 = trunc nuw i64 %26 to i32                  ; 2 uses
  %i.az = sub i32 %i.ay, %27
  %i.ba = lshr i32 %i.az, 1
  %i.bb = add i32 %i.ba, %27
  %i.bc = lshr i32 %i.bb, %9
  %i.bd = mul i32 %i.bc, %10
  %i.be = sub i32 %i.ao, %i.bd                    ; 2 uses
  %i.bf = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bf, label %bb.b, label %.loopexit.loopexit, !llvm.loop !20

.loopexit.loopexit:                               ; preds = %bb.b
  %i.bg = trunc i32 %i.be to i16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2, %bb.a
  %.022 = phi i16 [ 0, %bb.a ], [ 0, %2 ], [ %i.bg, %.loopexit.loopexit ]
  ret i16 %.022
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_mod_exp_mont(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(address) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 6 uses
  %6 = alloca %"class.std::unique_ptr.8", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 6 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %BN_is_odd.exit, label %BN_is_odd.exit.thread

BN_is_odd.exit:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !112    ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %BN_is_odd.exit.thread, label %bb.b

BN_is_odd.exit.thread:                            ; preds = %bb.a, %BN_is_odd.exit
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 104, ptr noundef nonnull @.str.4, i32 noundef 129) #36
  br label %bb.aw

bb.b:                                             ; preds = %BN_is_odd.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !111
  %.not117 = icmp eq i32 %i.i, 0
  br i1 %.not117, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.4, i32 noundef 133) #36
  br label %bb.aw

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !111
  %.not118 = icmp eq i32 %i.k, 0
  br i1 %.not118, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !112    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !113  ; 4 uses
  %i.o = sext i32 %i.n to i64                     ; 7 uses
  %i.p = zext nneg i32 %i.c to i64                ; 9 uses
  %i.q = icmp ult i32 %i.n, %i.c
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.p)
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.s = trunc i64 %i.aq to i32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.e
  %.043.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %i.s, %._crit_edge.loopexit.i.i ] ; 3 uses
  br i1 %i.q, label %.preheader.i.i.preheader, label %bb.f

.preheader.i.i.preheader:                         ; preds = %._crit_edge.i.i
  %i.t = sub nsw i64 %i.p, %i.o                   ; 3 uses
  %min.iters.check266 = icmp ult i64 %i.t, 4
  br i1 %min.iters.check266, label %.preheader.i.i.preheader313, label %vector.ph267

vector.ph267:                                     ; preds = %.preheader.i.i.preheader
  %n.vec268 = and i64 %i.t, -4                    ; 3 uses
  %i.u = add nsw i64 %n.vec268, %i.o
  %invariant.gep338 = getelementptr [8 x i8], ptr %i.e, i64 %i.o
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 2 uses
  %vec.phi271 = phi <2 x i64> [ zeroinitializer, %vector.ph267 ], [ %i.w, %vector.body269 ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph267 ], [ %i.x, %vector.body269 ]
  %gep339 = getelementptr [8 x i8], ptr %invariant.gep338, i64 %index270 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %gep339, i64 16
  %wide.load273 = load <2 x i64>, ptr %gep339, align 8, !tbaa !96
  %wide.load274 = load <2 x i64>, ptr %i.v, align 8, !tbaa !96
  %i.w = or <2 x i64> %wide.load273, %vec.phi271  ; 2 uses
  %i.x = or <2 x i64> %wide.load274, %vec.phi272  ; 2 uses
  %index.next275 = add nuw i64 %index270, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.y, label %middle.block276, label %vector.body269, !llvm.loop !671

middle.block276:                                  ; preds = %vector.body269
  %bin.rdx277 = or <2 x i64> %i.x, %i.w
  %i.z = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx277) ; 2 uses
  %cmp.n278 = icmp eq i64 %i.t, %n.vec268
  br i1 %cmp.n278, label %.loopexit, label %.preheader.i.i.preheader313

.preheader.i.i.preheader313:                      ; preds = %.preheader.i.i.preheader, %middle.block276
  %.04157.i.i.ph = phi i64 [ %i.o, %.preheader.i.i.preheader ], [ %i.u, %middle.block276 ]
  %.04256.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.z, %middle.block276 ]
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.04353.i.i = phi i64 [ %i.aq, %.lr.ph.i.i ], [ 0, %bb.e ]
  %.04452.i.i = phi i64 [ %i.ar, %.lr.ph.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.04452.i.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96 ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04452.i.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96 ; 3 uses
  %i.ae = icmp eq i64 %i.ab, %i.ad
  %.neg.i.i.i.i.i = sext i1 %i.ae to i64
  %i.af = xor i64 %i.ad, %i.ab
  %i.ag = sub i64 %i.ab, %i.ad
  %i.ah = xor i64 %i.ag, %i.ab
  %i.ai = or i64 %i.ah, %i.af
  %i.aj = xor i64 %i.ai, %i.ab
  %.neg.i.i.i.i = ashr i64 %i.aj, 63
  %i.ak = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !108
  %i.al = or i64 %i.ak, 1
  %i.am = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.an = and i64 %i.am, %.04353.i.i
  %i.ao = xor i64 %i.am, -1
  %i.ap = and i64 %i.al, %i.ao
  %i.aq = or disjoint i64 %i.an, %i.ap            ; 2 uses
  %i.ar = add nuw i64 %.04452.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.r
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !9

.loopexit:                                        ; preds = %.preheader.i.i, %middle.block276
  %.lcssa260 = phi i64 [ %i.z, %middle.block276 ], [ %i.az, %.preheader.i.i ]
  %i.as = icmp eq i64 %.lcssa260, 0
  %.neg.i.i49.i.i = sext i1 %i.as to i64
  %i.at = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i49.i.i) #38, !srcloc !108
  %i.au = trunc i64 %i.at to i32
  %i.av = xor i32 %i.au, -1
  %i.aw = or i32 %.043.lcssa.i.i, %i.av
  br label %BN_ucmp.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader313, %.preheader.i.i
  %.04157.i.i = phi i64 [ %i.ba, %.preheader.i.i ], [ %.04157.i.i.ph, %.preheader.i.i.preheader313 ] ; 2 uses
  %.04256.i.i = phi i64 [ %i.az, %.preheader.i.i ], [ %.04256.i.i.ph, %.preheader.i.i.preheader313 ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.04157.i.i
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !96
  %i.az = or i64 %i.ay, %.04256.i.i               ; 2 uses
  %i.ba = add nuw i64 %.04157.i.i, 1              ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %i.ba, %i.p
  br i1 %exitcond61.not.i.i, label %.loopexit, label %.preheader.i.i, !llvm.loop !672

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bb = icmp ult i32 %i.c, %i.n
  br i1 %i.bb, label %.preheader51.i.i.preheader, label %BN_ucmp.exit

.preheader51.i.i.preheader:                       ; preds = %bb.f
  %i.bc = sub nsw i64 %i.o, %i.p                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check, label %.preheader51.i.i.preheader317, label %vector.ph

vector.ph:                                        ; preds = %.preheader51.i.i.preheader
  %n.vec = and i64 %i.bc, -4                      ; 3 uses
  %i.bd = add nsw i64 %n.vec, %i.p
  %invariant.gep = getelementptr [8 x i8], ptr %i.l, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi263 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !96
  %wide.load264 = load <2 x i64>, ptr %i.be, align 8, !tbaa !96
  %i.bf = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.bg = or <2 x i64> %wide.load264, %vec.phi263 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !673

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.loopexit297, label %.preheader51.i.i.preheader317

.preheader51.i.i.preheader317:                    ; preds = %.preheader51.i.i.preheader, %middle.block
  %.055.i.i.ph = phi i64 [ %i.p, %.preheader51.i.i.preheader ], [ %i.bd, %middle.block ]
  %.04054.i.i.ph = phi i64 [ 0, %.preheader51.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.preheader51.i.i

.loopexit297:                                     ; preds = %.preheader51.i.i, %middle.block
  %.lcssa261 = phi i64 [ %i.bi, %middle.block ], [ %i.bt, %.preheader51.i.i ]
  %i.bj = icmp eq i64 %.lcssa261, 0
  %.neg.i.i50.i.i = sext i1 %i.bj to i64
  %i.bk = zext i32 %.043.lcssa.i.i to i64
  %i.bl = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i50.i.i) #38, !srcloc !108 ; 2 uses
  %i.bm = and i64 %i.bl, %i.bk
  %i.bn = and i64 %i.bl, 1
  %i.bo = xor i64 %i.bn, 1
  %i.bp = or disjoint i64 %i.bo, %i.bm
  %i.bq = trunc nuw i64 %i.bp to i32
  br label %BN_ucmp.exit

.preheader51.i.i:                                 ; preds = %.preheader51.i.i.preheader317, %.preheader51.i.i
  %.055.i.i = phi i64 [ %i.bu, %.preheader51.i.i ], [ %.055.i.i.ph, %.preheader51.i.i.preheader317 ] ; 2 uses
  %.04054.i.i = phi i64 [ %i.bt, %.preheader51.i.i ], [ %.04054.i.i.ph, %.preheader51.i.i.preheader317 ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.055.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !96
  %i.bt = or i64 %i.bs, %.04054.i.i               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL16bn_sqr_recursivePmPKmmS_:bb.a

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0139.unr = phi i64 [ %i.ms, %.lr.ph.preheader ], [ %i.nc, %.lr.ph.prol ]
  %.070138.unr = phi i64 [ %i.mv, %.lr.ph.preheader ], [ %i.nb, %.lr.ph.prol ]
  %i.nd = icmp eq i64 %2, %.neg
  br i1 %i.nd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0139 = phi i64 [ %i.np, %.lr.ph ], [ %.0139.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.070138 = phi i64 [ %i.no, %.lr.ph ], [ %.070138.unr, %.lr.ph.prol.loopexit ]
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0139 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !96 ; 2 uses
  %i.ng = add i64 %i.nf, %.070138                 ; 2 uses
  store i64 %i.ng, ptr %i.ne, align 8, !tbaa !96
  %i.nh = icmp ult i64 %i.ng, %i.nf
  %i.ni = zext i1 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0139
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !96 ; 2 uses
  %i.nm = add i64 %i.nl, %i.ni                    ; 2 uses
  store i64 %i.nm, ptr %i.nk, align 8, !tbaa !96
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = zext i1 %i.nn to i64
  %i.np = add nuw nsw i64 %.0139, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.np, %i.mt
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !929

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit108, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @BN_GENCB_new() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 16) #36
  ret ptr %i.a
}

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define void @BN_GENCB_free(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  tail call void @OPENSSL_free(ptr noundef %0) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BN_GENCB_set(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !136
  store ptr %2, ptr %0, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @BN_GENCB_call(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = tail call noundef i32 %i.b(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %0) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @BN_GENCB_get_arg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !137
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_generate_prime_ex(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = icmp sgt i32 %1, 3746
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %1, 1344
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 475
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %1, 399
  br i1 %i.g, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %1, 346
  br i1 %i.h, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %1, 307
  br i1 %i.i, label %.thread, label %_ZL24BN_prime_checks_for_sizei.exit

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i.ph = phi i32 [ 7, %bb.e ], [ 6, %bb.d ], [ 5, %bb.c ], [ 4, %bb.b ], [ 3, %bb.a ], [ 8, %bb.f ]
  %i.j = icmp ne i32 %2, 0
  br label %bb.j

_ZL24BN_prime_checks_for_sizei.exit:              ; preds = %bb.f
  %i.k = icmp slt i32 %1, 2
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL24BN_prime_checks_for_sizei.exit
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.10, i32 noundef 300) #36
  br label %_ZL14probable_primeP9bignum_sti.exit.thread112

bb.h:                                             ; preds = %_ZL24BN_prime_checks_for_sizei.exit
  %i.l = icmp samesign ugt i32 %1, 54
  %..i = select i1 %i.l, i32 27, i32 34
  %i.m = icmp eq i32 %1, 2
  %i.n = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.10, i32 noundef 304) #36
  br label %_ZL14probable_primeP9bignum_sti.exit.thread112

bb.j:                                             ; preds = %.thread, %bb.h
  %i.o = phi i1 [ %i.j, %.thread ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i98101 = phi i32 [ %.0.i.ph, %.thread ], [ %..i, %bb.h ] ; 2 uses
  %i.p = tail call ptr @OPENSSL_malloc(i64 noundef 48) #36 ; 22 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZL14probable_primeP9bignum_sti.exit.thread112, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %i.p, i8 0, i64 42, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 5 uses
  %i.u = tail call ptr @OPENSSL_realloc(ptr noundef null, i64 noundef 256) #36 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.l, label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.k
  store ptr %i.u, ptr %i.r, align 8, !tbaa !120
  store i64 32, ptr %i.t, align 8, !tbaa !124
  %.pre26.i.i = load i64, ptr %i.s, align 8, !tbaa !123
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.pre26.i.i
  store i64 0, ptr %i.w, align 8, !tbaa !96
  %i.x = load i64, ptr %i.s, align 8, !tbaa !123
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.s, align 8, !tbaa !123
  br label %BN_CTX_start.exit

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.q, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  store i8 1, ptr %i.z, align 1, !tbaa !125
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.l
  %i.aa = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 3 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %_ZL14probable_primeP9bignum_sti.exit.thread109, label %.preheader120

.preheader120:                                    ; preds = %BN_CTX_start.exit
  %i.ab = icmp eq ptr %3, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 41 ; 2 uses
  %i.ae = icmp eq ptr %4, null                    ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ag = add nsw i32 %1, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i84 = icmp eq ptr %5, null                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader120
  %.0 = phi i32 [ 0, %.preheader120 ], [ %i.ha, %.backedge.backedge ] ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.backedge
  %i.aj = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1)
  %.not16.i = icmp eq i32 %i.aj, 0
  br i1 %.not16.i, label %_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.critedge.backedge.i
  %.val.i.i.i = load i32, ptr %i.af, align 8, !tbaa !113 ; 6 uses
  %i.ak = icmp sgt i32 %.val.i.i.i, 16
  %..i.i.i.i = select i1 %i.ak, i64 1024, i64 512
  %i.al = icmp sgt i32 %.val.i.i.i, 0
  %i.am = zext i32 %.val.i.i.i to i64             ; 3 uses
  br i1 %i.al, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %.lr.ph.i
  %6 = load ptr, ptr %0, align 8, !tbaa !112
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %28, %.split.us.i
  %.0914.i.i.us.i = phi i64 [ 1, %.split.us.i ], [ %29, %28 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @_ZL7kPrimes, i64 %.0914.i.i.us.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !139 ; 2 uses
  %i.ap = zext i16 %i.ao to i64                   ; 3 uses
  %i.aq = add nsw i64 %i.ap, -1                   ; 3 uses
  %i.ar = lshr i64 %i.aq, 8                       ; 2 uses
  %.not53.i.i.us.i = icmp eq i64 %i.ar, 0         ; 2 uses
  %i.as = select i1 %.not53.i.i.us.i, i64 %i.aq, i64 %i.ar ; 2 uses
  %i.at = lshr i64 %i.as, 4                       ; 2 uses
  %.not54.i.i.us.i = icmp eq i64 %i.at, 0         ; 2 uses
  %7 = select i1 %.not54.i.i.us.i, i32 0, i32 4
  %i.au = select i1 %.not53.i.i.us.i, i32 1, i32 9
  %i.av = or disjoint i32 %7, %i.au
  %i.aw = select i1 %.not54.i.i.us.i, i64 %i.as, i64 %i.at ; 2 uses
  %i.ax = lshr i64 %i.aw, 2                       ; 2 uses
  %.not55.i.i.us.i = icmp eq i64 %i.ax, 0         ; 2 uses
  %i.ay = select i1 %.not55.i.i.us.i, i32 0, i32 2
  %i.az = or disjoint i32 %i.av, %i.ay
  %i.ba = select i1 %.not55.i.i.us.i, i64 %i.aw, i64 %i.ax
  %i.bb = icmp samesign ugt i64 %i.ba, 1
  %.neg.i.i.us.i = zext i1 %i.bb to i32
  %i.bc = add nuw nsw i32 %i.az, %.neg.i.i.us.i   ; 2 uses
  %i.bd = or disjoint i32 %i.bc, 32
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 1, %i.be
  %i.bg = add nuw nsw i64 %i.bf, %i.aq
  %i.bh = udiv i64 %i.bg, %i.ap
  %8 = and i64 %i.bh, 4294967295                  ; 4 uses
  %9 = add nsw i32 %i.bc, -1                      ; 4 uses
  %10 = zext i16 %i.ao to i32                     ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %i.am, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.n ] ; 2 uses
  %.02124.i.us.i = phi i32 [ 0, %.lr.ph.i.us.i ], [ %i.cs, %bb.n ]
  %indvars.iv.next.i.us.i = add nsw i64 %indvars.iv.i.us.i, -1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next.i.us.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !96 ; 2 uses
  %i.bk = lshr i64 %i.bj, 32
  %i.bl = trunc nuw i64 %i.bk to i32              ; 3 uses
  %i.bm = tail call i32 @llvm.fshl.i32(i32 %.02124.i.us.i, i32 %i.bl, i32 16) ; 3 uses
  %11 = zext i32 %i.bm to i64
  %12 = mul nuw i64 %8, %11
  %13 = lshr i64 %12, 32
  %14 = trunc nuw i64 %13 to i32                  ; 2 uses
  %i.bn = sub i32 %i.bm, %14
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = add i32 %i.bo, %14
  %i.bq = lshr i32 %i.bp, %9
  %i.br = mul i32 %i.bq, %10
  %i.bs = sub i32 %i.bm, %i.br
  %i.bt = shl i32 %i.bs, 16
  %i.bu = and i32 %i.bl, 65535
  %i.bv = or disjoint i32 %i.bt, %i.bu            ; 2 uses
  %15 = zext i32 %i.bv to i64
  %16 = mul nuw i64 %8, %15
  %17 = lshr i64 %16, 32
  %18 = trunc nuw i64 %17 to i32                  ; 2 uses
  %i.bw = sub i32 %i.bv, %18
  %i.bx = lshr i32 %i.bw, 1
  %i.by = add i32 %i.bx, %18
  %i.bz = lshr i32 %i.by, %9
  %i.ca = mul i32 %i.bz, %10
  %i.cb = sub i32 %i.bl, %i.ca
  %i.cc = trunc i64 %i.bj to i32                  ; 3 uses
  %i.cd = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cc, i32 16) ; 3 uses
  %19 = zext i32 %i.cd to i64
  %20 = mul nuw i64 %8, %19
  %21 = lshr i64 %20, 32
  %22 = trunc nuw i64 %21 to i32                  ; 2 uses
  %i.ce = sub i32 %i.cd, %22
  %i.cf = lshr i32 %i.ce, 1
  %i.cg = add i32 %i.cf, %22
  %i.ch = lshr i32 %i.cg, %9
  %i.ci = mul i32 %i.ch, %10
  %i.cj = sub i32 %i.cd, %i.ci
  %i.ck = shl i32 %i.cj, 16
  %i.cl = and i32 %i.cc, 65535
  %i.cm = or disjoint i32 %i.ck, %i.cl            ; 2 uses
  %23 = zext i32 %i.cm to i64
  %24 = mul nuw i64 %8, %23
  %25 = lshr i64 %24, 32
  %26 = trunc nuw i64 %25 to i32                  ; 2 uses
  %i.cn = sub i32 %i.cm, %26
  %i.co = lshr i32 %i.cn, 1
  %i.cp = add i32 %i.co, %26
  %i.cq = lshr i32 %i.cp, %9
  %i.cr = mul i32 %i.cq, %10
  %i.cs = sub i32 %i.cc, %i.cr                    ; 2 uses
  %i.ct = icmp samesign ugt i64 %indvars.iv.i.us.i, 1
  br i1 %i.ct, label %bb.n, label %.loopexit.loopexit.i.us.i, !llvm.loop !20

.loopexit.loopexit.i.us.i:                        ; preds = %bb.n
  %i.cu = and i32 %i.cs, 65535
  %i.cv = icmp eq i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %27 = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cw) #38, !srcloc !128
  %.not.not.not.i.not.i.us.i = icmp eq i32 %27, 0
  br i1 %.not.not.not.i.not.i.us.i, label %28, label %.split11.us.i

28:                                               ; preds = %.loopexit.loopexit.i.us.i
  %29 = add nuw nsw i64 %.0914.i.i.us.i, 1        ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %29, %..i.i.i.i
  br i1 %exitcond.not.i.i.us.i, label %_ZL14probable_primeP9bignum_sti.exit.thread, label %.lr.ph.i.us.i, !llvm.loop !27

.split.i:                                         ; preds = %.lr.ph.i
  %i.cx = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 1) #38, !srcloc !128
  %.not.not.not.i.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.not.not.i.not.i.i, label %_ZL14probable_primeP9bignum_sti.exit.thread, label %.split11.us.i

.split11.us.i:                                    ; preds = %.loopexit.loopexit.i.us.i, %.split.i
  %.us-phi.i = phi i64 [ 3, %.split.i ], [ %i.ap, %.loopexit.loopexit.i.us.i ]
  %i.cy = icmp eq i32 %.val.i.i.i, 0
  br i1 %i.cy, label %.critedge.backedge.i, label %bb.o

bb.o:                                             ; preds = %.split11.us.i
  %i.cz = load ptr, ptr %0, align 8, !tbaa !112   ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !96
  %i.db = xor i64 %i.da, %.us-phi.i               ; 3 uses
  %i.dc = icmp sgt i32 %.val.i.i.i, 1
  br i1 %i.dc, label %.lr.ph.i.i.i.i.preheader, label %BN_abs_is_word.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.o
  %i.dd = add nsw i64 %i.am, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.val.i.i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.dd, -4                      ; 3 uses
  %i.de = or disjoint i64 %n.vec, 1
  %i.df = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.db, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.df, %vector.ph ], [ %i.dj, %vector.body ]
  %vec.phi174 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dk, %vector.body ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %wide.load = load <2 x i64>, ptr %i.dh, align 8, !tbaa !96
  %wide.load175 = load <2 x i64>, ptr %i.di, align 8, !tbaa !96
  %i.dj = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.dk = or <2 x i64> %wide.load175, %vec.phi174 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !930

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.dk, %i.dj
  %i.dm = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %BN_abs_is_word.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader176

.lr.ph.i.i.i.i.preheader176:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.de, %middle.block ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.db, %.lr.ph.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader176, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader176 ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.dp, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader176 ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i.i.i.i
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !96
  %i.dp = or i64 %i.do, %.01113.i.i.i.i           ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.am
  br i1 %exitcond.not.i.i.i.i, label %BN_abs_is_word.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !931

BN_abs_is_word.exit.i.i.i:                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.o
  %.012.in.in.i.i.i.i = phi i64 [ %i.db, %bb.o ], [ %i.dm, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i ]
  %.012.in.i.not.i.i.i = icmp eq i64 %.012.in.in.i.i.i.i, 0
  br i1 %.012.in.i.not.i.i.i, label %bn_odd_number_is_obviously_composite.exit.i, label %.critedge.backedge.i

bn_odd_number_is_obviously_composite.exit.i:      ; preds = %BN_abs_is_word.exit.i.i.i
  %i.dq = load i32, ptr %i.ah, align 8, !tbaa !111
  %.not5.i = icmp eq i32 %i.dq, 0
  br i1 %.not5.i, label %_ZL14probable_primeP9bignum_sti.exit.thread, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %.split11.us.i, %bn_odd_number_is_obviously_composite.exit.i, %BN_abs_is_word.exit.i.i.i
  %i.dr = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1)
  %.not.i68 = icmp eq i32 %i.dr, 0
  br i1 %.not.i68, label %_ZL14probable_primeP9bignum_sti.exit.thread109, label %.lr.ph.i, !llvm.loop !932

bb.p:                                             ; preds = %.backedge
  %i.ds = load i8, ptr %i.q, align 8, !tbaa !121
  %.not.i.i70 = icmp eq i8 %i.ds, 0               ; 2 uses
  br i1 %i.o, label %bb.q, label %bb.an

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i.i70, label %bb.r, label %BN_CTX_start.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dt = load i64, ptr %i.ac, align 8, !tbaa !122
  %i.du = load i64, ptr %i.s, align 8, !tbaa !123 ; 5 uses
  %i.dv = load i64, ptr %i.t, align 8, !tbaa !124
  %i.dw = icmp eq i64 %i.du, %i.dv
  br i1 %i.dw, label %bb.s, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.r
  %.pre.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !120
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq i64 %i.du, 0
  %i.dx = mul i64 %i.du, 3
  %i.dy = lshr i64 %i.dx, 1
  %i.dz = select i1 %.not.i.i.i, i64 32, i64 %i.dy ; 4 uses
  %i.ea = icmp ule i64 %i.dz, %i.du
  %i.eb = icmp samesign ugt i64 %i.dz, 2305843009213693951
  %or.cond.i.i.i = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %or.cond.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.ed = shl nuw i64 %i.dz, 3
  %i.ee = tail call ptr @OPENSSL_realloc(ptr noundef %i.ec, i64 noundef %i.ed) #36 ; 3 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.ee, ptr %i.r, align 8, !tbaa !120
  store i64 %i.dz, ptr %i.t, align 8, !tbaa !124
  %.pre26.i.i.i = load i64, ptr %i.s, align 8, !tbaa !123
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i:           ; preds = %bb.u, %._crit_edge.i.i.i
  %i.eg = phi i64 [ %i.du, %._crit_edge.i.i.i ], [ %.pre26.i.i.i, %bb.u ]
  %i.eh = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ee, %bb.u ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg
  store i64 %i.dt, ptr %i.ei, align 8, !tbaa !96
  %i.ej = load i64, ptr %i.s, align 8, !tbaa !123
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.s, align 8, !tbaa !123
  br label %BN_CTX_start.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s
  store i8 1, ptr %i.q, align 8, !tbaa !121
  store i8 1, ptr %i.ad, align 1, !tbaa !125
  br label %BN_CTX_start.exit.i

BN_CTX_start.exit.i:                              ; preds = %bb.v, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i, %bb.q
  %i.el = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 4 uses
  %i.em = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 11 uses
  %i.en = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 4 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %BN_CTX_start.exit.i
  %i.ep = tail call i32 @BN_rshift1(ptr noundef nonnull %i.en, ptr noundef nonnull readonly %3)
  %.not.i71 = icmp eq i32 %i.ep, 0
  br i1 %.not.i71, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eq = tail call i32 @BN_rand(ptr noundef %i.em, i32 noundef %i.ag, i32 noundef 0, i32 noundef 1)
  %.not49.i = icmp eq i32 %i.eq, 0
  br i1 %.not49.i, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = tail call i32 @BN_div(ptr noundef null, ptr noundef %i.el, ptr noundef %i.em, ptr noundef nonnull %i.en, ptr noundef nonnull %i.p)
  %.not50.i = icmp eq i32 %i.er, 0
  br i1 %.not50.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = tail call i32 @BN_sub(ptr noundef %i.em, ptr noundef %i.em, ptr noundef %i.el)
  %.not51.i = icmp eq i32 %i.es, 0
  br i1 %.not51.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ae, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = tail call i32 @BN_add_word(ptr noundef %i.em, i64 noundef 1)
  %.not54.i = icmp eq i32 %i.et, 0
  br i1 %.not54.i, label %.thread.i, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.eu = tail call i32 @BN_rshift1(ptr noundef %i.el, ptr noundef nonnull readonly %4)
  %.not52.i = icmp eq i32 %i.eu, 0
  br i1 %.not52.i, label %.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = tail call i32 @BN_add(ptr noundef %i.em, ptr noundef %i.em, ptr noundef %i.el)
  %.not53.i = icmp eq i32 %i.ev, 0
  br i1 %.not53.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.ew = tail call i32 @BN_lshift1(ptr noundef %0, ptr noundef %i.em)
  %.not55.i = icmp eq i32 %i.ew, 0
  br i1 %.not55.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ex = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef 1)
  %.not56.i = icmp eq i32 %i.ex, 0
  br i1 %.not56.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.val.i = load i32, ptr %i.af, align 8, !tbaa !113
  %i.ey = icmp sgt i32 %.val.i, 16
  %..i.i = select i1 %i.ey, i64 1024, i64 512
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aj
  %i.ez = add nuw nsw i64 %.04464.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ez, %..i.i
  br i1 %exitcond.not.i, label %.thread.i, label %.backedge179

.backedge179:                                     ; preds = %bb.ah, %bb.al
  %.04464.i.be = phi i64 [ %i.ez, %bb.ah ], [ 1, %bb.al ]
  br label %bb.ai, !llvm.loop !933

bb.ai:                                            ; preds = %.backedge179, %bb.ag
  %.04464.i = phi i64 [ 1, %bb.ag ], [ %.04464.i.be, %.backedge179 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr @_ZL7kPrimes, i64 %.04464.i
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !139 ; 2 uses
  %i.fc = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef %0, i16 noundef zeroext %i.fb)
  %i.fd = icmp eq i16 %i.fc, 0
  br i1 %i.fd, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fe = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef %i.em, i16 noundef zeroext %i.fb)
  %i.ff = icmp eq i16 %i.fe, 0
  br i1 %i.ff, label %bb.ak, label %bb.ah

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fg = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull readonly %3)
  %.not57.i = icmp eq i32 %i.fg, 0
  br i1 %.not57.i, label %.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = tail call i32 @BN_add(ptr noundef %i.em, ptr noundef %i.em, ptr noundef nonnull %i.en)
  %.not58.i = icmp eq i32 %i.fh, 0
  br i1 %.not58.i, label %.thread.i, label %.backedge179

.thread.i:                                        ; preds = %bb.al, %bb.ak, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.y, %bb.x, %bb.w, %BN_CTX_start.exit.i
  %.not61 = phi i1 [ true, %BN_CTX_start.exit.i ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.af ], [ true, %bb.ae ], [ true, %bb.ab ], [ true, %bb.ad ], [ true, %bb.ac ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.al ], [ true, %bb.ak ], [ false, %bb.ah ]
  %i.fi = load i8, ptr %i.q, align 8, !tbaa !121
  %.not.i59.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i59.i, label %bb.am, label %_ZL22probable_prime_dh_safeP9bignum_stiPKS_S2_P10bignum_ctx.exit

bb.am:                                            ; preds = %.thread.i
  %i.fj = load i64, ptr %i.s, align 8, !tbaa !123
  %i.fk = add i64 %i.fj, -1                       ; 2 uses
  store i64 %i.fk, ptr %i.s, align 8, !tbaa !123
  %i.fl = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !96
  store i64 %i.fn, ptr %i.ac, align 8, !tbaa !122
  br label %_ZL22probable_prime_dh_safeP9bignum_stiPKS_S2_P10bignum_ctx.exit

_ZL22probable_prime_dh_safeP9bignum_stiPKS_S2_P10bignum_ctx.exit: ; preds = %.thread.i, %bb.am
  br i1 %.not61, label %_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181, label %_ZL14probable_primeP9bignum_sti.exit.thread

bb.an:                                            ; preds = %bb.p
  br i1 %.not.i.i70, label %bb.ao, label %BN_CTX_start.exit.i73

bb.ao:                                            ; preds = %bb.an
  %i.fo = load i64, ptr %i.ac, align 8, !tbaa !122
  %i.fp = load i64, ptr %i.s, align 8, !tbaa !123 ; 5 uses
  %i.fq = load i64, ptr %i.t, align 8, !tbaa !124
  %i.fr = icmp eq i64 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ap, label %._crit_edge.i.i.i78

._crit_edge.i.i.i78:                              ; preds = %bb.ao
  %.pre.i.i.i79 = load ptr, ptr %i.r, align 8, !tbaa !120
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i80

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i.i81 = icmp eq i64 %i.fp, 0
  %i.fs = mul i64 %i.fp, 3
  %i.ft = lshr i64 %i.fs, 1
  %i.fu = select i1 %.not.i.i.i81, i64 32, i64 %i.ft ; 4 uses
  %i.fv = icmp ule i64 %i.fu, %i.fp
  %i.fw = icmp samesign ugt i64 %i.fu, 2305843009213693951
  %or.cond.i.i.i82 = select i1 %i.fv, i1 true, i1 %i.fw
  br i1 %or.cond.i.i.i82, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.fy = shl nuw i64 %i.fu, 3
  %i.fz = tail call ptr @OPENSSL_realloc(ptr noundef %i.fx, i64 noundef %i.fy) #36 ; 3 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.fz, ptr %i.r, align 8, !tbaa !120
  store i64 %i.fu, ptr %i.t, align 8, !tbaa !124
  %.pre26.i.i.i83 = load i64, ptr %i.s, align 8, !tbaa !123
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i80

_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i80:         ; preds = %bb.ar, %._crit_edge.i.i.i78
  %i.gb = phi i64 [ %i.fp, %._crit_edge.i.i.i78 ], [ %.pre26.i.i.i83, %bb.ar ]
  %i.gc = phi ptr [ %.pre.i.i.i79, %._crit_edge.i.i.i78 ], [ %i.fz, %bb.ar ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gb
  store i64 %i.fo, ptr %i.gd, align 8, !tbaa !96
  %i.ge = load i64, ptr %i.s, align 8, !tbaa !123
  %i.gf = add i64 %i.ge, 1
  store i64 %i.gf, ptr %i.s, align 8, !tbaa !123
  br label %BN_CTX_start.exit.i73

bb.as:                                            ; preds = %bb.aq, %bb.ap
  store i8 1, ptr %i.q, align 8, !tbaa !121
  store i8 1, ptr %i.ad, align 1, !tbaa !125
  br label %BN_CTX_start.exit.i73

BN_CTX_start.exit.i73:                            ; preds = %bb.as, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i.i80, %bb.an
  %i.gg = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 3 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %.thread40.i, label %bb.at

bb.at:                                            ; preds = %BN_CTX_start.exit.i73
  %i.gi = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 0, i32 noundef 1)
  %.not.i74 = icmp eq i32 %i.gi, 0
  br i1 %.not.i74, label %.thread40.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gj = tail call i32 @BN_div(ptr noundef null, ptr noundef nonnull %i.gg, ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull %i.p)
  %.not33.i = icmp eq i32 %i.gj, 0
  br i1 %.not33.i, label %.thread40.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gk = tail call i32 @BN_sub(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.gg)
  %.not34.i = icmp eq i32 %i.gk, 0
  br i1 %.not34.i, label %.thread40.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %i.ae, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gl = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef 1)
  %.not36.i = icmp eq i32 %i.gl, 0
  br i1 %.not36.i, label %.thread40.i, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.gm = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull readonly %4)
  %.not35.i = icmp eq i32 %i.gm, 0
  br i1 %.not35.i, label %.thread40.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.val.i75 = load i32, ptr %i.af, align 8, !tbaa !113
  %i.gn = icmp sgt i32 %.val.i75, 16
  %..i.i76 = select i1 %i.gn, i64 1024, i64 512
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bb
  %i.go = add nuw nsw i64 %.02843.i, 1            ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %i.go, %..i.i76
  br i1 %exitcond.not.i77, label %.thread40.i, label %.backedge180

.backedge180:                                     ; preds = %bb.ba, %bb.bc
  %.02843.i.be = phi i64 [ %i.go, %bb.ba ], [ 1, %bb.bc ]
  br label %bb.bb, !llvm.loop !934

bb.bb:                                            ; preds = %.backedge180, %bb.az
  %.02843.i = phi i64 [ 1, %bb.az ], [ %.02843.i.be, %.backedge180 ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr @_ZL7kPrimes, i64 %.02843.i
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !139
  %i.gr = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef %0, i16 noundef zeroext %i.gq)
  %i.gs = icmp ult i16 %i.gr, 2                   ; 3 uses
  br i1 %i.gs, label %bb.bc, label %bb.ba

bb.bc:                                            ; preds = %bb.bb
  %i.gt = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull readonly %3)
  %.not37.i = icmp eq i32 %i.gt, 0
  br i1 %.not37.i, label %.thread40.i, label %.backedge180

.thread40.i:                                      ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.at, %BN_CTX_start.exit.i73
  %.not60 = phi i1 [ true, %BN_CTX_start.exit.i73 ], [ true, %bb.at ], [ true, %bb.au ], [ true, %bb.ax ], [ true, %bb.ay ], [ true, %bb.av ], [ %i.gs, %bb.ba ], [ %i.gs, %bb.bc ]
  %i.gu = load i8, ptr %i.q, align 8, !tbaa !121
  %.not.i38.i = icmp eq i8 %i.gu, 0
  br i1 %.not.i38.i, label %bb.bd, label %_ZL17probable_prime_dhP9bignum_stiPKS_S2_P10bignum_ctx.exit

bb.bd:                                            ; preds = %.thread40.i
  %i.gv = load i64, ptr %i.s, align 8, !tbaa !123
  %i.gw = add i64 %i.gv, -1                       ; 2 uses
  store i64 %i.gw, ptr %i.s, align 8, !tbaa !123
  %i.gx = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !96
  store i64 %i.gz, ptr %i.ac, align 8, !tbaa !122
  br label %_ZL17probable_prime_dhP9bignum_stiPKS_S2_P10bignum_ctx.exit

_ZL17probable_prime_dhP9bignum_stiPKS_S2_P10bignum_ctx.exit: ; preds = %.thread40.i, %bb.bd
  br i1 %.not60, label %_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181, label %_ZL14probable_primeP9bignum_sti.exit.thread

_ZL14probable_primeP9bignum_sti.exit.thread:      ; preds = %bn_odd_number_is_obviously_composite.exit.i, %.split.i, %28, %_ZL22probable_prime_dh_safeP9bignum_stiPKS_S2_P10bignum_ctx.exit, %_ZL17probable_prime_dhP9bignum_stiPKS_S2_P10bignum_ctx.exit
  %i.ha = add nuw nsw i32 %.0, 1
  br i1 %.not.i84, label %BN_GENCB_call.exit.thread, label %BN_GENCB_call.exit

BN_GENCB_call.exit:                               ; preds = %_ZL14probable_primeP9bignum_sti.exit.thread
  %i.hb = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.hc = tail call noundef i32 %i.hb(i32 noundef 0, i32 noundef %.0, ptr noundef nonnull %5) #36, !inline_history !140
  %.not63 = icmp eq i32 %i.hc, 0
  br i1 %.not63, label %_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181, label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit.thread:                        ; preds = %_ZL14probable_primeP9bignum_sti.exit.thread, %BN_GENCB_call.exit
  br i1 %i.o, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %BN_GENCB_call.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.hd = call i32 @BN_primality_test(ptr noundef nonnull %i.c, ptr noundef readonly %0, i32 noundef %.0.i98101, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef %5)
  %.not.i86 = icmp eq i32 %i.hd, 0
  %i.he = load i32, ptr %i.c, align 4
  %.0.i87 = select i1 %.not.i86, i32 -1, i32 %i.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  switch i32 %.0.i87, label %_ZL14probable_primeP9bignum_sti.exit.thread109 [
    i32 -1, label %_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181
    i32 0, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %.preheader, %bb.bg, %bb.be
  br label %.backedge

bb.bf:                                            ; preds = %BN_GENCB_call.exit.thread
  %i.hf = tail call i32 @BN_rshift1(ptr noundef nonnull %i.aa, ptr noundef %0)
  %.not64 = icmp eq i32 %i.hf, 0
  br i1 %.not64, label %_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181, label %.preheader

.preheader:                                       ; preds = %bb.bf, %BN_GENCB_call.exit94.thread
  %.051125 = phi i32 [ %i.hm, %BN_GENCB_call.exit94.thread ], [ 0, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.hg = call i32 @BN_primality_test(ptr noundef nonnull %i.b, ptr noundef readonly %0, i32 noundef 1, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef null)
  %.not.i88 = icmp eq i32 %i.hg, 0
  %i.hh = load i32, ptr %i.b, align 4
  %.0.i89 = select i1 %.not.i88, i32 -1, i32 %i.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  switch i32 %.0.i89, label %bb.bg [
    i32 -1, label %_ZL14probable_primeP9bignum_sti.exit.thread109
    i32 0, label %.backedge.backedge
  ]

bb.bg:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.hi = call i32 @BN_primality_test(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.aa, i32 noundef 1, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef null)
  %.not.i90 = icmp eq i32 %i.hi, 0
  %i.hj = load i32, ptr %i.a, align 4
  %.0.i91 = select i1 %.not.i90, i32 -1, i32 %i.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  switch i32 %.0.i91, label %bb.bh [
    i32 -1, label %_ZL14probable_primeP9bignum_sti.exit.thread109
    i32 0, label %.backedge.backedge
  ]

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.i84, label %BN_GENCB_call.exit94.thread, label %BN_GENCB_call.exit94

BN_GENCB_call.exit94:                             ; preds = %bb.bh
  %i.hk = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.hl = tail call noundef i32 %i.hk(i32 noundef 1, i32 noundef %.051125, ptr noundef nonnull %5) #36, !inline_history !140
  %.not65 = icmp eq i32 %i.hl, 0
  br i1 %.not65, label %_ZL14probable_primeP9bignum_sti.exit.thread109, label %BN_GENCB_call.exit94.thread

BN_GENCB_call.exit94.thread:                      ; preds = %bb.bh, %BN_GENCB_call.exit94
  %i.hm = add nuw i32 %.051125, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.hm, %.0.i98101
  br i1 %exitcond.not, label %_ZL14probable_primeP9bignum_sti.exit.thread109, label %.preheader, !llvm.loop !935

_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181: ; preds = %bb.m, %bb.be, %_ZL17probable_prime_dhP9bignum_stiPKS_S2_P10bignum_ctx.exit, %_ZL22probable_prime_dh_safeP9bignum_stiPKS_S2_P10bignum_ctx.exit, %bb.bf, %BN_GENCB_call.exit
  br label %_ZL14probable_primeP9bignum_sti.exit.thread109

_ZL14probable_primeP9bignum_sti.exit.thread109:   ; preds = %.critedge.backedge.i, %BN_GENCB_call.exit94.thread, %BN_GENCB_call.exit94, %.preheader, %bb.bg, %bb.be, %_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181, %BN_CTX_start.exit
  %.052111 = phi i32 [ 0, %_ZL14probable_primeP9bignum_sti.exit.thread109.loopexit181 ], [ 0, %bb.bg ], [ 1, %bb.be ], [ 0, %BN_CTX_start.exit ], [ 1, %BN_GENCB_call.exit94.thread ], [ 0, %BN_GENCB_call.exit94 ], [ 0, %.preheader ], [ 0, %.critedge.backedge.i ]
  %i.hn = load i8, ptr %i.q, align 8, !tbaa !121
  %.not.i95 = icmp eq i8 %i.hn, 0
  br i1 %.not.i95, label %bb.bi, label %BN_CTX_free.exit

bb.bi:                                            ; preds = %_ZL14probable_primeP9bignum_sti.exit.thread109
  %i.ho = load i64, ptr %i.s, align 8, !tbaa !123
  %i.hp = add i64 %i.ho, -1                       ; 2 uses
  store i64 %i.hp, ptr %i.s, align 8, !tbaa !123
  %i.hq = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !96
  %i.ht = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !122
  br label %BN_CTX_free.exit

BN_CTX_free.exit:                                 ; preds = %_ZL14probable_primeP9bignum_sti.exit.thread109, %bb.bi
  %i.hu = load ptr, ptr %i.p, align 8, !tbaa !119
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.hu, ptr noundef nonnull @_Z24sk_BIGNUM_call_free_funcPFvPvES_, ptr noundef nonnull @BN_free) #36
  %.val.i96 = load ptr, ptr %i.r, align 8, !tbaa !120
  tail call void @OPENSSL_free(ptr noundef %.val.i96) #36
  tail call void @OPENSSL_free(ptr noundef nonnull %i.p) #36
  br label %_ZL14probable_primeP9bignum_sti.exit.thread112

_ZL14probable_primeP9bignum_sti.exit.thread112:   ; preds = %bb.j, %BN_CTX_free.exit, %bb.i, %bb.g
  %.053 = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ %.052111, %BN_CTX_free.exit ], [ 0, %bb.j ]
  ret i32 %.053
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @BN_is_prime_fasttest_ex(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call i32 @BN_primality_test(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr %i.a, align 4
  %.0 = select i1 %.not, i32 -1, i32 %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @bn_odd_number_is_obviously_composite(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !113 ; 5 uses
  %i.b = icmp sgt i32 %.val.i, 16
  %..i.i = select i1 %i.b, i64 1024, i64 512
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = add nuw nsw i64 %.0914.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.c, %..i.i
  br i1 %exitcond.not.i, label %_ZL17bn_trial_divisionPtPK9bignum_st.exit.thread, label %bb.c, !llvm.loop !27

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0914.i = phi i64 [ 1, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZL7kPrimes, i64 %.0914.i
  %i.e = load i16, ptr %i.d, align 2, !tbaa !139  ; 2 uses
  %i.f = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef readonly %0, i16 noundef zeroext %i.e)
  %i.g = icmp eq i16 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.h) #38, !srcloc !128
  %.not.not.not.i.not = icmp eq i32 %i.i, 0
  br i1 %.not.not.not.i.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i16 %i.e to i64                     ; 2 uses
  %i.k = icmp eq i32 %.val.i, 0
  br i1 %i.k, label %BN_abs_is_word.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !112    ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !96
  %i.n = xor i64 %i.m, %i.j                       ; 3 uses
  %i.o = icmp sgt i32 %.val.i, 1
  br i1 %i.o, label %.lr.ph.preheader.i.i, label %BN_abs_is_word.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %wide.trip.count.i.i = zext nneg i32 %.val.i to i64 ; 2 uses
  %i.p = add nsw i64 %wide.trip.count.i.i, -1     ; 2 uses
  %min.iters.check = icmp ult i32 %.val.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.p, -4                       ; 3 uses
  %i.q = or disjoint i64 %n.vec, 1
  %i.r = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.n, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.r, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi13 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !tbaa !96
  %wide.load14 = load <2 x i64>, ptr %i.u, align 8, !tbaa !96
  %i.v = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.w = or <2 x i64> %wide.load14, %vec.phi13    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !936

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.w, %i.v
  %i.y = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %BN_abs_is_word.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.q, %middle.block ]
  %.01113.i.i.ph = phi i64 [ %i.n, %.lr.ph.preheader.i.i ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01113.i.i = phi i64 [ %i.ab, %.lr.ph.i.i ], [ %.01113.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !96
  %i.ab = or i64 %i.aa, %.01113.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %BN_abs_is_word.exit.i, label %.lr.ph.i.i, !llvm.loop !937

BN_abs_is_word.exit.i:                            ; preds = %.lr.ph.i.i, %middle.block, %bb.e, %bb.d
  %.012.in.in.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ], [ %i.y, %middle.block ], [ %i.ab, %.lr.ph.i.i ]
  %.012.in.i.not.i = icmp eq i64 %.012.in.in.i.i, 0
  br i1 %.012.in.i.not.i, label %bb.f, label %_ZL17bn_trial_divisionPtPK9bignum_st.exit.thread

bb.f:                                             ; preds = %BN_abs_is_word.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !111
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  br label %_ZL17bn_trial_divisionPtPK9bignum_st.exit.thread

_ZL17bn_trial_divisionPtPK9bignum_st.exit.thread: ; preds = %bb.b, %bb.f, %BN_abs_is_word.exit.i
  %i.ag = phi i32 [ %i.af, %bb.f ], [ 1, %BN_abs_is_word.exit.i ], [ 0, %bb.b ]
  ret i32 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @bn_miller_rabin_init(ptr nofree noundef captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = tail call ptr @BN_CTX_get(ptr noundef %2)
  store ptr %i.b, ptr %0, align 8, !tbaa !142
  %i.c = tail call ptr @BN_CTX_get(ptr noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !143
  %i.e = tail call ptr @BN_CTX_get(ptr noundef %2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !144
  %i.g = tail call ptr @BN_CTX_get(ptr noundef %2) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !145
  %i.i = load ptr, ptr %0, align 8, !tbaa !142    ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !144
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp eq ptr %i.g, null
  %or.cond = or i1 %i.o, %i.n
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL17BN_value_one_once, ptr noundef nonnull @_ZL17BN_value_one_initv) #36
  %i.p = tail call i32 @bn_usub_consttime(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZL20BN_value_one_storage)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !142    ; 2 uses
  %i.r = tail call i32 @BN_count_low_zero_bits(ptr noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.r, ptr %i.s, align 4, !tbaa !146
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.u = tail call i32 @bn_rshift_secret_shift(ptr noundef %i.t, ptr noundef %i.q, i32 noundef %i.r, ptr noundef %2)
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !113  ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  br label %bb.g

end_hunk_1
begin_hunk_2_@_ZN5mlkem12_GLOBAL__N_113matrix_expandILi4EEEvPNS0_6matrixIXT_EEEPKh:bb.a
bb.c:                                             ; preds = %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 4
  br i1 %exitcond25.not, label %bb.b, label %.preheader, !llvm.loop !1912

BORINGSSL_keccak_absorb.exit:                     ; preds = %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit ] ; 3 uses
  %i.o = trunc i64 %indvars.iv to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, i8 0, i64 192, i1 false)
  store i32 2, ptr %2, align 8, !tbaa !320
  store i32 0, ptr %i.e, align 4, !tbaa !321
  store i64 168, ptr %i.f, align 8, !tbaa !322
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !80
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !80
  store i8 %i.m, ptr %i.k, align 8, !tbaa !80
  store i8 %i.o, ptr %i.l, align 1, !tbaa !80
  store i64 34, ptr %i.g, align 8, !tbaa !323
  %i.p = getelementptr inbounds nuw [512 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %BORINGSSL_keccak_absorb.exit
  %.pre28 = phi i64 [ 168, %BORINGSSL_keccak_absorb.exit ], [ %.pre29, %bb.k ]
  %.pre.i1127 = phi i64 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %i.an, %bb.k ]
  %.01821.i = phi i32 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %.3.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.q = load i32, ptr %i.e, align 4, !tbaa !321
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.preheader38

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 8, !tbaa !320    ; 2 uses
  %i.t = icmp ult i32 %i.s, 4
  br i1 %i.t, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %switch.shiftamt = shl nuw nsw i32 %i.s, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.u = load i64, ptr %i.g, align 8, !tbaa !323
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !80
  %i.x = xor i8 %i.w, %switch.masked
  store i8 %i.x, ptr %i.v, align 1, !tbaa !80
  %i.y = load i64, ptr %i.f, align 8, !tbaa !322
  %i.z = getelementptr i8, ptr %i.d, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !80
  %i.ac = xor i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !80
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !321
  %.pre.i11.pre = load i64, ptr %i.h, align 8, !tbaa !324
  %.pre.pre = load i64, ptr %i.f, align 8, !tbaa !322
  br label %.preheader38

.preheader38:                                     ; preds = %switch.lookup, %bb.d
  %.ph = phi i64 [ %.pre28, %bb.d ], [ %.pre.pre, %switch.lookup ] ; 2 uses
  %.ph39 = phi i64 [ %.pre.i1127, %bb.d ], [ %.pre.i11.pre, %switch.lookup ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader38, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre30 = phi i64 [ %.pre29, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader38 ]
  %i.ad = phi i64 [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader38 ] ; 2 uses
  %i.ae = phi i64 [ %i.an, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph39, %.preheader38 ] ; 2 uses
  %.02429.i = phi i64 [ %i.am, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ 168, %.preheader38 ] ; 2 uses
  %.02528.i = phi ptr [ %i.al, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.a, %.preheader38 ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !324
  %.pre30.i = load i64, ptr %i.f, align 8, !tbaa !322 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre29 = phi i64 [ %.pre30.i, %bb.h ], [ %.pre30, %bb.g ] ; 2 uses
  %i.ag = phi i64 [ %.pre30.i, %bb.h ], [ %i.ad, %bb.g ] ; 4 uses
  %.pre31.i = phi i64 [ 0, %bb.h ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ah = sub i64 %i.ag, %.pre31.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.ah) ; 4 uses
  %i.ai = icmp eq i64 %i.ag, %.pre31.i
  br i1 %i.ai, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre31.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.aj, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %i.ak = phi i64 [ %i.ag, %bb.i ], [ %.pre31.i, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.am = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.an = add i64 %i.ak, %spec.select.i           ; 3 uses
  store i64 %i.an, ptr %i.h, align 8, !tbaa !324
  %.not.i12 = icmp eq i64 %i.am, 0
  br i1 %.not.i12, label %BORINGSSL_keccak_squeeze.exit, label %bb.g, !llvm.loop !36

bb.k:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.bq, label %bb.d, label %_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit, !llvm.loop !61

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.o
  %.020.i = phi i64 [ %i.bo, %bb.o ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %.119.i = phi i32 [ %.3.i, %bb.o ], [ %.01821.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !80
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = and i32 %i.au, 3840
  %i.aw = or disjoint i32 %i.av, %i.aq            ; 2 uses
  %i.ax = lshr i32 %i.at, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !80
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 4
  %i.bc = or disjoint i32 %i.bb, %i.ax            ; 2 uses
  %i.bd = trunc nuw nsw i32 %i.bc to i16
  %i.be = icmp samesign ult i32 %i.aw, 3329
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.bf = trunc nuw nsw i32 %i.aw to i16
  %i.bg = add nsw i32 %.119.i, 1
  %i.bh = sext i32 %.119.i to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bh
  store i16 %i.bf, ptr %i.bi, align 2, !tbaa !139
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %BORINGSSL_keccak_squeeze.exit
  %.2.i = phi i32 [ %i.bg, %bb.l ], [ %.119.i, %BORINGSSL_keccak_squeeze.exit ] ; 4 uses
  %i.bj = icmp samesign ult i32 %i.bc, 3329
  %i.bk = icmp slt i32 %.2.i, 256
  %or.cond.i = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %.2.i, 1
  %i.bm = sext i32 %.2.i to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.bm
  store i16 %i.bd, ptr %i.bn, align 2, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3.i = phi i32 [ %i.bl, %bb.n ], [ %.2.i, %bb.m ] ; 3 uses
  %i.bo = add nuw nsw i64 %.020.i, 3
  %i.bp = icmp samesign ult i64 %.020.i, 165
  %i.bq = icmp slt i32 %.3.i, 256                 ; 2 uses
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %BORINGSSL_keccak_squeeze.exit, label %bb.k, !llvm.loop !62

_ZN5mlkem12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEP19BORINGSSL_keccak_st.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %BORINGSSL_keccak_absorb.exit, !llvm.loop !1913
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #29

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.fshl.v16i8(<16 x i8>, <16 x i8>, <16 x i8>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.smax.v4i16(<4 x i16>, <4 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v24i16(<24 x i16>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #29

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #18 = { mustprogress nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #24 = { mustprogress nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #25 = { mustprogress nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #31 = { inlinehint mustprogress nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #32 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #33 = { nofree nounwind }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind memory(none) }
attributes #39 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!67, !68, !69, !70, !71}
!llvm.ident = !{!72}
!llvm.errno.tbaa = !{!77}

!0 = distinct !{!0, !81}
!1 = distinct !{!1, !81}
!2 = distinct !{!2, !81}
!3 = distinct !{!3, !81}
!4 = distinct !{!4, !81}
!5 = distinct !{null}
!6 = distinct !{!6, !81}
!7 = distinct !{!7, !81}
!8 = distinct !{!8, !81}
!9 = distinct !{!9, !81}
!10 = distinct !{!10, !81}
!11 = distinct !{!11, !81}
!12 = distinct !{!12, !81}
!13 = distinct !{!13, !81}
!14 = distinct !{!14, !81}
!15 = distinct !{!15, !81}
!16 = distinct !{!16, !81}
!17 = distinct !{!17, !81}
!18 = distinct !{!18, !81}
!19 = distinct !{!19, !81}
!20 = distinct !{!20, !81}
!21 = distinct !{!21, !81}
!22 = distinct !{!22, !81}
!23 = distinct !{!23, !81}
!24 = distinct !{!24, !81}
!25 = distinct !{!25, !81}
!26 = distinct !{!26, !81}
!27 = distinct !{!27, !81}
!28 = distinct !{!28, !81}
!29 = distinct !{!29, !81}
!30 = distinct !{null, ptr @EVP_CIPHER_CTX_cleanup}
!31 = distinct !{!31, !81}
!32 = distinct !{!32, !81}
!33 = distinct !{!33, !81}
!34 = distinct !{null}
!35 = distinct !{null}
!36 = distinct !{!36, !81}
!37 = distinct !{!37, !81}
!38 = distinct !{!38, !81}
!39 = distinct !{!39, !81}
!40 = distinct !{!40, !81}
!41 = distinct !{!41, !81}
!42 = distinct !{!42, !81}
!43 = distinct !{!43, !81}
!44 = distinct !{!44, !81}
!45 = distinct !{!45, !81}
!46 = distinct !{!46, !81}
!47 = distinct !{!47, !81}
!48 = distinct !{!48, !81}
!49 = distinct !{!49, !81}
!50 = distinct !{null}
!51 = distinct !{null}
!52 = distinct !{!52, !81}
!53 = distinct !{!53, !81}
!54 = distinct !{!54, !81}
!55 = distinct !{!55, !81}
!56 = distinct !{!56, !81}
!57 = distinct !{!57, !81}
!58 = distinct !{!58, !81}
!59 = distinct !{!59, !81}
!60 = distinct !{!60, !81}
!61 = distinct !{!61, !81}
!62 = distinct !{!62, !81}
!63 = distinct !{!63, !81}
!64 = distinct !{!64, !81}
!65 = distinct !{!65, !81}
!66 = distinct !{!66, !81}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 8, !"PIC Level", i32 2}
!70 = !{i32 7, !"uwtable", i32 2}
!71 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!72 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!73 = !{!"Simple C++ TBAA"}
!74 = !{!"omnipotent char", !73, i64 0}
!75 = !{!"int", !74, i64 0}
!76 = !{!"__libc_errno", !75, i64 0}
!77 = !{!76, !75, i64 0}
!78 = !{!"_ZTS10aes_key_st", !74, i64 0, !75, i64 240}
!79 = !{!78, !75, i64 240}
!80 = !{!74, !74, i64 0}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!75, !75, i64 0}
!83 = !{!"any pointer", !74, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{i64 0, i64 128, !80}
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !{!"llvm.loop.unroll.runtime.disable"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!"branch_weights", i32 4, i32 28}
!90 = !{!"branch_weights", i32 8, i32 24}
!91 = !{!"llvm.loop.peeled.count", i32 1}
!92 = !{!"long", !74, i64 0}
!93 = !{!"_ZTS4u128", !92, i64 0, !92, i64 8}
!94 = !{!93, !92, i64 8}
!95 = !{!93, !92, i64 0}
!96 = !{!92, !92, i64 0}
!97 = !{!"_ZTS10gcm_impl_t", !74, i64 0}
!98 = !{!"_ZTS13gcm128_key_st", !74, i64 0, !83, i64 256, !83, i64 264, !78, i64 272, !83, i64 520, !83, i64 528, !97, i64 536}
!99 = !{!98, !83, i64 520}
!100 = !{!98, !83, i64 528}
!101 = !{!"_ZTSN14GCM128_CONTEXTUt_E", !92, i64 0, !92, i64 8}
!102 = !{!"_ZTS14GCM128_CONTEXT", !74, i64 0, !74, i64 16, !74, i64 32, !101, i64 48, !74, i64 64, !75, i64 80, !75, i64 84}
!103 = !{!102, !92, i64 56}
!104 = !{!102, !92, i64 48}
!105 = !{!102, !75, i64 84}
!106 = !{!102, !75, i64 80}
!107 = !{!"branch_weights", i32 4, i32 12}
!108 = !{i64 1951063}
!109 = !{!"p1 long", !83, i64 0}
!110 = !{!"_ZTS9bignum_st", !109, i64 0, !75, i64 8, !75, i64 12, !75, i64 16, !75, i64 20}
end_hunk_2
