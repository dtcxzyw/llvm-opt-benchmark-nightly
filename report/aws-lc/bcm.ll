Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 549
begin_hunk_0_@BN_nnmod_pow2:bb.a
  br i1 %exitcond.not.i.i, label %BN_is_zero.exit, label %scalar.ph, !llvm.loop !1206

BN_is_zero.exit:                                  ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.k, %middle.block ], [ %i.n, %scalar.ph ]
  %.not43 = icmp eq i64 %.lcssa, 0
  br i1 %.not43, label %BN_is_zero.exit.thread, label %bb.c

bb.c:                                             ; preds = %BN_is_zero.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !91
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %BN_is_zero.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add i64 %2, -1                           ; 2 uses
  %i.s = lshr i64 %i.r, 6                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !94
  %i.w = sext i32 %i.v to i64
  %.not.i37.not = icmp ult i64 %i.s, %i.w
  br i1 %.not.i37.not, label %bn_wexpand.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ugt i64 %i.r, 536870847
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.1, i32 noundef 311) #46
  br label %BN_is_zero.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !95
  %i.aa = and i32 %i.z, 2
  %.not16.i = icmp eq i32 %i.aa, 0
  br i1 %.not16.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 316) #46
  br label %BN_is_zero.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call ptr @OPENSSL_calloc(i64 noundef %i.t, i64 noundef 8) #46 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %BN_is_zero.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %OPENSSL_memcpy.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = sext i32 %i.ad to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = load ptr, ptr %0, align 8, !tbaa !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr readonly align 1 %i.ah, i64 %i.ag, i1 false)
  br label %OPENSSL_memcpy.exit.i

OPENSSL_memcpy.exit.i:                            ; preds = %bb.k, %bb.j
  %i.ai = load ptr, ptr %0, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.ai) #46
  store ptr %i.ab, ptr %0, align 8, !tbaa !92
  %i.aj = trunc nuw nsw i64 %i.t to i32
  store i32 %i.aj, ptr %i.u, align 4, !tbaa !94
  %.pre = load i32, ptr %i.b, align 8, !tbaa !93
  %.pre48 = sext i32 %.pre to i64
  br label %bn_wexpand.exit

bn_wexpand.exit:                                  ; preds = %OPENSSL_memcpy.exit.i, %bb.d
  %.pre-phi = phi i64 [ %.pre48, %OPENSSL_memcpy.exit.i ], [ %i.d, %bb.d ] ; 3 uses
  %i.ak = phi ptr [ %i.ab, %OPENSSL_memcpy.exit.i ], [ %i.e, %bb.d ]
  %i.al = icmp eq i64 %i.t, %.pre-phi
  br i1 %i.al, label %OPENSSL_memset.exit, label %bb.l

bb.l:                                             ; preds = %bn_wexpand.exit
  %i.am = sub nsw i64 %i.t, %.pre-phi
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.an, i1 false)
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bn_wexpand.exit, %bb.l
  store i32 0, ptr %i.p, align 8, !tbaa !91
  %i.ap = trunc i64 %i.t to i32                   ; 4 uses
  store i32 %i.ap, ptr %i.b, align 8, !tbaa !93
  %i.aq = icmp sgt i32 %i.ap, 0                   ; 2 uses
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %OPENSSL_memset.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
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
  %wide.load66 = load <2 x i64>, ptr %i.as, align 8, !tbaa !80
  %wide.load67 = load <2 x i64>, ptr %i.at, align 8, !tbaa !80
  %i.au = xor <2 x i64> %wide.load66, splat (i64 -1)
  %i.av = xor <2 x i64> %wide.load67, splat (i64 -1)
  store <2 x i64> %i.au, ptr %i.as, align 8, !tbaa !80
  store <2 x i64> %i.av, ptr %i.at, align 8, !tbaa !80
  %index.next68 = add nuw i64 %index65, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.aw, label %middle.block69, label %vector.body64, !llvm.loop !1207

middle.block69:                                   ; preds = %vector.body64
  %cmp.n70 = icmp eq i64 %wide.trip.count, %n.vec63
  br i1 %cmp.n70, label %._crit_edge, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %.lr.ph, %middle.block69
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec63, %middle.block69 ]
  br label %scalar.ph60

._crit_edge:                                      ; preds = %scalar.ph60, %middle.block69, %OPENSSL_memset.exit
  %i.ax = and i64 %2, 63                          ; 2 uses
  %.not36 = icmp eq i64 %i.ax, 0
  br i1 %.not36, label %bb.n, label %bb.m

scalar.ph60:                                      ; preds = %scalar.ph60.preheader, %scalar.ph60
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph60 ], [ %indvars.iv.ph, %scalar.ph60.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !80
  %i.ba = xor i64 %i.az, -1
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph60, !llvm.loop !1208

bb.m:                                             ; preds = %._crit_edge
  %notmask = shl nsw i64 -1, %i.ax
  %i.bb = xor i64 %notmask, -1
  %i.bc = load ptr, ptr %0, align 8, !tbaa !92
  %sext = shl i64 %i.t, 32
  %i.bd = ashr exact i64 %sext, 29
  %i.be = getelementptr i8, ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8     ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !80
  %i.bh = and i64 %i.bg, %i.bb
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  br i1 %i.aq, label %.lr.ph.i.i38, label %bn_minimal_width.exit.i

.lr.ph.i.i38:                                     ; preds = %bb.n
  %i.bi = load ptr, ptr %0, align 8, !tbaa !92
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i38
  %.05.i.i = phi i32 [ %i.ap, %.lr.ph.i.i38 ], [ %i.bo, %bb.p ] ; 4 uses
  %i.bj = zext nneg i32 %.05.i.i to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !80
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.p, label %bn_minimal_width.exit.thread5.i

bn_minimal_width.exit.thread5.i:                  ; preds = %bb.o
  store i32 %.05.i.i, ptr %i.b, align 8, !tbaa !93
  br label %bn_set_minimal_width.exit

bb.p:                                             ; preds = %bb.o
  %i.bo = add nsw i32 %.05.i.i, -1
  %i.bp = icmp sgt i32 %.05.i.i, 1
  br i1 %i.bp, label %bb.o, label %bn_minimal_width.exit.thread.i, !llvm.loop !10

bn_minimal_width.exit.thread.i:                   ; preds = %bb.p
  store i32 0, ptr %i.b, align 8, !tbaa !93
  br label %bb.q

bn_minimal_width.exit.i:                          ; preds = %bb.n
  %i.bq = icmp eq i32 %i.ap, 0
  br i1 %i.bq, label %bb.q, label %bn_set_minimal_width.exit

bb.q:                                             ; preds = %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread.i
  store i32 0, ptr %i.p, align 8, !tbaa !91
  br label %bn_set_minimal_width.exit

bn_set_minimal_width.exit:                        ; preds = %bn_minimal_width.exit.thread5.i, %bn_minimal_width.exit.i, %bb.q
  tail call void @CRYPTO_once(ptr noundef nonnull @BN_value_one_once, ptr noundef nonnull @BN_value_one_init) #46
  %i.br = tail call i32 @BN_add(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull @BN_value_one_storage)
  br label %BN_is_zero.exit.thread

BN_is_zero.exit.thread:                           ; preds = %bb.i, %bb.h, %bb.f, %bb.b, %bn_set_minimal_width.exit, %BN_is_zero.exit, %bb.c, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %BN_is_zero.exit ], [ 1, %bb.c ], [ %i.br, %bn_set_minimal_width.exit ], [ 1, %bb.b ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i16 @bn_mod_u16_consttime(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i16 %1, 2
  br i1 %i.a, label %.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.a
  %i.b = zext i16 %1 to i64                       ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 3 uses
  %i.d = lshr i64 %i.c, 8                         ; 2 uses
  %.not53.i = icmp eq i64 %i.d, 0                 ; 2 uses
  %2 = select i1 %.not53.i, i32 1, i32 9
  %i.e = select i1 %.not53.i, i64 %i.c, i64 %i.d  ; 2 uses
  %i.f = lshr i64 %i.e, 4                         ; 2 uses
  %.not54.i = icmp eq i64 %i.f, 0                 ; 2 uses
  %i.g = select i1 %.not54.i, i32 0, i32 4
  %i.h = or disjoint i32 %i.g, %2
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
  %3 = trunc i64 %i.t to i32                      ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !93       ; 2 uses
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.a
  %7 = load ptr, ptr %0, align 8, !tbaa !92
  %8 = add nsw i32 %i.o, -1                       ; 4 uses
  %9 = zext i16 %1 to i32                         ; 4 uses
  %10 = zext nneg i32 %5 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %10, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02124 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next
  %i.v = load i64, ptr %i.u, align 8, !tbaa !80   ; 2 uses
  %i.w = lshr i64 %i.v, 32
  %i.x = trunc nuw i64 %i.w to i32                ; 3 uses
  %i.y = tail call i32 @llvm.fshl.i32(i32 %.02124, i32 %i.x, i32 16) ; 3 uses
  %11 = tail call i32 @llvm.umulh.i32(i32 %3, i32 %i.y) ; 2 uses
  %i.z = sub i32 %i.y, %11
  %i.aa = lshr i32 %i.z, 1
  %i.ab = add i32 %i.aa, %11
  %i.ac = lshr i32 %i.ab, %8
  %i.ad = mul i32 %i.ac, %9
  %i.ae = sub i32 %i.y, %i.ad
  %i.af = shl i32 %i.ae, 16
  %i.ag = and i32 %i.x, 65535
  %i.ah = or disjoint i32 %i.af, %i.ag            ; 2 uses
  %12 = tail call i32 @llvm.umulh.i32(i32 %3, i32 %i.ah) ; 2 uses
  %i.ai = sub i32 %i.ah, %12
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = add i32 %i.aj, %12
  %i.al = lshr i32 %i.ak, %8
  %i.am = mul i32 %i.al, %9
  %i.an = sub i32 %i.x, %i.am
  %i.ao = trunc i64 %i.v to i32                   ; 3 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.ao, i32 16) ; 3 uses
  %13 = tail call i32 @llvm.umulh.i32(i32 %3, i32 %i.ap) ; 2 uses
  %i.aq = sub i32 %i.ap, %13
  %i.ar = lshr i32 %i.aq, 1
  %i.as = add i32 %i.ar, %13
  %i.at = lshr i32 %i.as, %8
  %i.au = mul i32 %i.at, %9
  %i.av = sub i32 %i.ap, %i.au
  %i.aw = shl i32 %i.av, 16
  %i.ax = and i32 %i.ao, 65535
  %i.ay = or disjoint i32 %i.aw, %i.ax            ; 2 uses
  %14 = tail call i32 @llvm.umulh.i32(i32 %3, i32 %i.ay) ; 2 uses
  %i.az = sub i32 %i.ay, %14
  %i.ba = lshr i32 %i.az, 1
  %i.bb = add i32 %i.ba, %14
  %i.bc = lshr i32 %i.bb, %8
  %i.bd = mul i32 %i.bc, %9
  %i.be = sub i32 %i.ao, %i.bd                    ; 2 uses
  %i.bf = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bf, label %bb.b, label %.loopexit.loopexit, !llvm.loop !14

.loopexit.loopexit:                               ; preds = %bb.b
  %i.bg = trunc i32 %i.be to i16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph.a, %bb.a
  %.022 = phi i16 [ 0, %bb.a ], [ 0, %.lr.ph.a ], [ %i.bg, %.loopexit.loopexit ]
  ret i16 %.022
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_exp(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !110
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.b, label %BN_CTX_start.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !112  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !113
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.g, 0
  %i.k = mul i64 %i.g, 3
  %i.l = lshr i64 %i.k, 1
  %i.m = select i1 %.not.i.i, i64 32, i64 %i.l    ; 4 uses
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = icmp samesign ugt i64 %i.m, 2305843009213693951
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.q = shl nuw i64 %i.m, 3
  %i.r = tail call ptr @OPENSSL_realloc(ptr noundef %i.p, i64 noundef %i.q) #46 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !109
  store i64 %i.m, ptr %i.h, align 8, !tbaa !113
  %.pre26.i.i = load i64, ptr %i.f, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i

BN_STACK_push.exit.i:                             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.e ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store i64 %i.e, ptr %i.v, align 8, !tbaa !80
  %i.w = load i64, ptr %i.f, align 8, !tbaa !112
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !112
  br label %BN_CTX_start.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !110
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 1, ptr %i.y, align 1, !tbaa !114
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.a, %BN_STACK_push.exit.i, %bb.f
  %i.z = icmp eq ptr %0, %1
  %i.aa = icmp eq ptr %0, %2
  %or.cond45 = or i1 %i.z, %i.aa
  br i1 %or.cond45, label %bb.g, label %bb.h

bb.g:                                             ; preds = %BN_CTX_start.exit
  %i.ab = tail call ptr @BN_CTX_get(ptr noundef nonnull %3)
  br label %bb.h

bb.h:                                             ; preds = %BN_CTX_start.exit, %bb.g
  %.0 = phi ptr [ %i.ab, %bb.g ], [ %0, %BN_CTX_start.exit ] ; 18 uses
  %i.ac = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 8 uses
  %i.ad = icmp eq ptr %.0, null
  %i.ae = icmp eq ptr %i.ac, null
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond, label %BN_sqr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call ptr @BN_copy(ptr noundef nonnull %i.ac, ptr noundef %1)
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %BN_sqr.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !93 ; 4 uses
  %i.aj = icmp sgt i32 %i.ai, 0                   ; 2 uses
  br i1 %i.aj, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.ak = load ptr, ptr %2, align 8, !tbaa !92    ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.ai, %.lr.ph.i.i ], [ %i.aq, %bb.l ] ; 4 uses
  %i.al = zext nneg i32 %.05.i.i to i64
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !80
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %bn_minimal_width.exit.thread7.i

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %.05.i.i, -1
  %i.ar = icmp sgt i32 %.05.i.i, 1
  br i1 %i.ar, label %bb.k, label %BN_num_bits.exit, !llvm.loop !10

bn_minimal_width.exit.i:                          ; preds = %bb.j
  %i.as = icmp eq i32 %i.ai, 0
  br i1 %i.as, label %BN_is_odd.exit.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !92
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.k, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.at = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.ak, %bb.k ] ; 2 uses
  %.0.lcssa.i9.i = phi i32 [ %i.ai, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.k ]
  %i.au = add nsw i32 %.0.lcssa.i9.i, -1          ; 2 uses
  %i.av = shl nsw i32 %i.au, 6
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !80 ; 3 uses
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = lshr i64 %i.ay, 32                      ; 2 uses
  %.not.i.i46 = icmp eq i64 %i.ba, 0              ; 2 uses
  %i.bb = select i1 %.not.i.i46, i32 0, i32 32
  %i.bc = zext i1 %i.az to i32
  %i.bd = select i1 %.not.i.i46, i64 %i.ay, i64 %i.ba ; 2 uses
  %i.be = lshr i64 %i.bd, 16                      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.be, 0              ; 2 uses
  %i.bf = select i1 %.not52.i.i, i32 0, i32 16
  %i.bg = select i1 %.not52.i.i, i64 %i.bd, i64 %i.be ; 2 uses
  %i.bh = lshr i64 %i.bg, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.bh, 0              ; 2 uses
  %i.bi = select i1 %.not53.i.i, i32 0, i32 8
  %i.bj = select i1 %.not53.i.i, i64 %i.bg, i64 %i.bh ; 2 uses
  %i.bk = lshr i64 %i.bj, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.bk, 0              ; 2 uses
  %i.bl = select i1 %.not54.i.i, i32 0, i32 4
  %i.bm = select i1 %.not54.i.i, i64 %i.bj, i64 %i.bk ; 2 uses
  %i.bn = lshr i64 %i.bm, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.bn, 0              ; 2 uses
  %i.bo = select i1 %.not55.i.i, i32 0, i32 2
  %i.bp = select i1 %.not55.i.i, i64 %i.bm, i64 %i.bn
  %i.bq = icmp samesign ugt i64 %i.bp, 1
  %.neg.i.i = zext i1 %i.bq to i32
  %i.br = or disjoint i32 %i.av, %i.bc
  %i.bs = or disjoint i32 %i.br, %i.bb
  %i.bt = or disjoint i32 %i.bs, %i.bf
  %i.bu = or disjoint i32 %i.bt, %i.bi
  %i.bv = or disjoint i32 %i.bu, %i.bl
  %i.bw = or disjoint i32 %i.bv, %i.bo
  %i.bx = add i32 %i.bw, %.neg.i.i
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.l, %bn_minimal_width.exit.thread7.i
  %i.by = phi ptr [ %i.at, %bn_minimal_width.exit.thread7.i ], [ %i.ak, %bb.l ]
  %.0.i = phi i32 [ %i.bx, %bn_minimal_width.exit.thread7.i ], [ 0, %bb.l ] ; 3 uses
  br i1 %i.aj, label %BN_is_odd.exit, label %BN_is_odd.exit.thread

BN_is_odd.exit:                                   ; preds = %BN_num_bits.exit
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !80
  %i.ca = and i64 %i.bz, 1
  %.not = icmp eq i64 %i.ca, 0
  br i1 %.not, label %BN_is_odd.exit.thread, label %bb.m

bb.m:                                             ; preds = %BN_is_odd.exit
  %i.cb = tail call ptr @BN_copy(ptr noundef %.0, ptr noundef %1)
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %BN_sqr.exit, label %bb.s

BN_is_odd.exit.thread:                            ; preds = %bn_minimal_width.exit.i, %BN_num_bits.exit, %BN_is_odd.exit
  %.0.i6165 = phi i32 [ %.0.i, %BN_is_odd.exit ], [ %.0.i, %BN_num_bits.exit ], [ 0, %bn_minimal_width.exit.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0, i64 12 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !94
  %.not.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i.i, label %bb.n, label %.bn_wexpand.exit_crit_edge.i.i

.bn_wexpand.exit_crit_edge.i.i:                   ; preds = %BN_is_odd.exit.thread
  %.pre.i.i47 = load ptr, ptr %.0, align 8, !tbaa !92
  br label %BN_one.exit

bb.n:                                             ; preds = %BN_is_odd.exit.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !95
  %i.ch = and i32 %i.cg, 2
  %.not16.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not16.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.1, i32 noundef 316) #46
  br label %BN_sqr.exit

bb.p:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@BN_GENCB_new:bb.a
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #46
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @BN_GENCB_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @OPENSSL_free(ptr noundef %0) #46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BN_GENCB_set(ptr nofree noundef writeonly captures(none) initializes((0, 1), (8, 24)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  store i8 1, ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @BN_GENCB_set_old(ptr nofree noundef writeonly captures(none) initializes((0, 1), (8, 24)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 {
bb.a:
  store i8 2, ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !129
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @BN_GENCB_call(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !128
  switch i8 %i.a, label %bb.e [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.d = tail call i32 %i.c(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %0) #46
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  tail call void %i.f(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %0) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 1, %bb.d ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @BN_GENCB_get_arg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_generate_prime_ex(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
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
  br i1 %i.i, label %.thread, label %BN_prime_checks_for_size.exit

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i.ph = phi i32 [ 7, %bb.e ], [ 6, %bb.d ], [ 5, %bb.c ], [ 4, %bb.b ], [ 3, %bb.a ], [ 8, %bb.f ]
  %i.j = icmp ne i32 %2, 0
  br label %bb.j

BN_prime_checks_for_size.exit:                    ; preds = %bb.f
  %i.k = icmp slt i32 %1, 2
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %BN_prime_checks_for_size.exit
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.10, i32 noundef 304) #46
  br label %probable_prime.exit.thread118

bb.h:                                             ; preds = %BN_prime_checks_for_size.exit
  %i.l = icmp samesign ugt i32 %1, 54
  %..i = select i1 %i.l, i32 27, i32 34
  %i.m = icmp eq i32 %1, 2
  %i.n = icmp ne i32 %2, 0                        ; 2 uses
  %or.cond = and i1 %i.m, %i.n
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str.10, i32 noundef 308) #46
  br label %probable_prime.exit.thread118

bb.j:                                             ; preds = %.thread, %bb.h
  %i.o = phi i1 [ %i.j, %.thread ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i98101 = phi i32 [ %.0.i.ph, %.thread ], [ %..i, %bb.h ] ; 2 uses
  %i.p = tail call ptr @OPENSSL_zalloc(i64 noundef 48) #46 ; 25 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %probable_prime.exit.thread118, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 8 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i67 = icmp eq i8 %i.s, 0
  br i1 %.not.i67, label %bb.l, label %BN_CTX_start.exit

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !111
  %i.v = tail call ptr @OPENSSL_realloc(ptr noundef null, i64 noundef 256) #46 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %BN_STACK_push.exit.i

BN_STACK_push.exit.i:                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.v, ptr %i.q, align 8, !tbaa !109
  store i64 32, ptr %i.x, align 8, !tbaa !113
  %.pre26.i.i = load i64, ptr %i.y, align 8, !tbaa !112
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre26.i.i
  store i64 %i.u, ptr %i.z, align 8, !tbaa !80
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !112
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !112
  br label %BN_CTX_start.exit

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.r, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 41
  store i8 1, ptr %i.ac, align 1, !tbaa !114
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.k, %BN_STACK_push.exit.i, %bb.m
  %i.ad = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %probable_prime.exit.thread115, label %.preheader126

.preheader126:                                    ; preds = %BN_CTX_start.exit
  %i.ae = icmp eq ptr %3, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 12 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 41 ; 2 uses
  %i.aj = icmp eq ptr %4, null                    ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.al = add nsw i32 %1, -1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i84 = icmp eq ptr %5, null                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader126
  %.0 = phi i32 [ 0, %.preheader126 ], [ %i.hf, %.backedge.backedge ] ; 3 uses
  br i1 %i.ae, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.backedge
  %i.ao = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1)
  %.not16.i = icmp eq i32 %i.ao, 0
  br i1 %.not16.i, label %probable_prime.exit.thread115.loopexit187, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.critedge.backedge.i
  %.val.i.i.i = load i32, ptr %i.ak, align 8, !tbaa !93 ; 6 uses
  %i.ap = icmp sgt i32 %.val.i.i.i, 16
  %..i.i.i.i = select i1 %i.ap, i64 1024, i64 512
  %i.aq = icmp sgt i32 %.val.i.i.i, 0
  %i.ar = zext i32 %.val.i.i.i to i64             ; 3 uses
  br label %.lr.ph.i.us.i

.split.us.i:                                      ; preds = %.split.i
  %6 = add nuw nsw i64 %.0914.i.i.us.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %6, %..i.i.i.i
  br i1 %exitcond.not.i.i.i, label %probable_prime.exit.thread, label %.lr.ph.i.us.i, !llvm.loop !16

.lr.ph.i.us.i:                                    ; preds = %.split.us.i, %.lr.ph.i
  %.0914.i.i.us.i = phi i64 [ 1, %.lr.ph.i ], [ %6, %.split.us.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @kPrimes, i64 %.0914.i.i.us.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !131 ; 2 uses
  %i.au = zext i16 %i.at to i64                   ; 3 uses
  %i.av = add nsw i64 %i.au, -1                   ; 3 uses
  %i.aw = lshr i64 %i.av, 8                       ; 2 uses
  %.not53.i.i.us.i = icmp eq i64 %i.aw, 0         ; 2 uses
  %7 = select i1 %.not53.i.i.us.i, i32 1, i32 9
  %i.ax = select i1 %.not53.i.i.us.i, i64 %i.av, i64 %i.aw ; 2 uses
  %i.ay = lshr i64 %i.ax, 4                       ; 2 uses
  %.not54.i.i.us.i = icmp eq i64 %i.ay, 0         ; 2 uses
  %i.az = select i1 %.not54.i.i.us.i, i32 0, i32 4
  %i.ba = or disjoint i32 %i.az, %7
  %i.bb = select i1 %.not54.i.i.us.i, i64 %i.ax, i64 %i.ay ; 2 uses
  %i.bc = lshr i64 %i.bb, 2                       ; 2 uses
  %.not55.i.i.us.i = icmp eq i64 %i.bc, 0         ; 2 uses
  %i.bd = select i1 %.not55.i.i.us.i, i32 0, i32 2
  %i.be = or disjoint i32 %i.ba, %i.bd
  %i.bf = select i1 %.not55.i.i.us.i, i64 %i.bb, i64 %i.bc
  %i.bg = icmp samesign ugt i64 %i.bf, 1
  %.neg.i.i.us.i = zext i1 %i.bg to i32
  %i.bh = add nuw nsw i32 %i.be, %.neg.i.i.us.i   ; 2 uses
  %i.bi = or disjoint i32 %i.bh, 32
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 1, %i.bj
  %i.bl = add nuw nsw i64 %i.bk, %i.av
  %i.bm = udiv i64 %i.bl, %i.au
  %8 = trunc i64 %i.bm to i32                     ; 4 uses
  br i1 %i.aq, label %.lr.ph.i.i, label %.split.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.us.i
  %9 = load ptr, ptr %0, align 8, !tbaa !92
  %10 = add nsw i32 %i.bh, -1                     ; 4 uses
  %11 = zext i16 %i.at to i32                     ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.i.us.i = phi i64 [ %i.ar, %.lr.ph.i.i ], [ %indvars.iv.next.i.us.i, %bb.o ] ; 2 uses
  %.02124.i.us.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.cx, %bb.o ]
  %indvars.iv.next.i.us.i = add nsw i64 %indvars.iv.i.us.i, -1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv.next.i.us.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !80 ; 2 uses
  %i.bp = lshr i64 %i.bo, 32
  %i.bq = trunc nuw i64 %i.bp to i32              ; 3 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %.02124.i.us.i, i32 %i.bq, i32 16) ; 3 uses
  %12 = tail call i32 @llvm.umulh.i32(i32 %8, i32 %i.br) ; 2 uses
  %i.bs = sub i32 %i.br, %12
  %i.bt = lshr i32 %i.bs, 1
  %i.bu = add i32 %i.bt, %12
  %i.bv = lshr i32 %i.bu, %10
  %i.bw = mul i32 %i.bv, %11
  %i.bx = sub i32 %i.br, %i.bw
  %i.by = shl i32 %i.bx, 16
  %i.bz = and i32 %i.bq, 65535
  %i.ca = or disjoint i32 %i.by, %i.bz            ; 2 uses
  %13 = tail call i32 @llvm.umulh.i32(i32 %8, i32 %i.ca) ; 2 uses
  %i.cb = sub i32 %i.ca, %13
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = add i32 %i.cc, %13
  %i.ce = lshr i32 %i.cd, %10
  %i.cf = mul i32 %i.ce, %11
  %i.cg = sub i32 %i.bq, %i.cf
  %i.ch = trunc i64 %i.bo to i32                  ; 3 uses
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.cg, i32 %i.ch, i32 16) ; 3 uses
  %14 = tail call i32 @llvm.umulh.i32(i32 %8, i32 %i.ci) ; 2 uses
  %i.cj = sub i32 %i.ci, %14
  %i.ck = lshr i32 %i.cj, 1
  %i.cl = add i32 %i.ck, %14
  %i.cm = lshr i32 %i.cl, %10
  %i.cn = mul i32 %i.cm, %11
  %i.co = sub i32 %i.ci, %i.cn
  %i.cp = shl i32 %i.co, 16
  %i.cq = and i32 %i.ch, 65535
  %i.cr = or disjoint i32 %i.cp, %i.cq            ; 2 uses
  %15 = tail call i32 @llvm.umulh.i32(i32 %8, i32 %i.cr) ; 2 uses
  %i.cs = sub i32 %i.cr, %15
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = add i32 %i.ct, %15
  %i.cv = lshr i32 %i.cu, %10
  %i.cw = mul i32 %i.cv, %11
  %i.cx = sub i32 %i.ch, %i.cw                    ; 2 uses
  %i.cy = icmp samesign ugt i64 %indvars.iv.i.us.i, 1
  br i1 %i.cy, label %bb.o, label %.loopexit.loopexit.i.us.i, !llvm.loop !14

.loopexit.loopexit.i.us.i:                        ; preds = %bb.o
  %i.cz = and i32 %i.cx, 65535
  %i.da = icmp eq i32 %i.cz, 0
  %i.db = zext i1 %i.da to i32
  br label %.split.i

.split.i:                                         ; preds = %.loopexit.loopexit.i.us.i, %.lr.ph.i.us.i
  %.022.i.i = phi i32 [ %i.db, %.loopexit.loopexit.i.us.i ], [ 1, %.lr.ph.i.us.i ]
  %i.dc = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.022.i.i) #47, !srcloc !120
  %.not.not.not.i.not.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.not.not.i.not.i.i, label %.split.us.i, label %.split11.us.i

.split11.us.i:                                    ; preds = %.split.i
  %i.dd = icmp eq i32 %.val.i.i.i, 0
  br i1 %i.dd, label %.critedge.backedge.i, label %bb.p

bb.p:                                             ; preds = %.split11.us.i
  %i.de = load ptr, ptr %0, align 8, !tbaa !92    ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !80
  %i.dg = xor i64 %i.df, %i.au                    ; 3 uses
  %i.dh = icmp sgt i32 %.val.i.i.i, 1
  br i1 %i.dh, label %.lr.ph.i.i.i.i.preheader, label %BN_abs_is_word.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.p
  %i.di = add nsw i64 %i.ar, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.val.i.i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader182, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.di, -4                      ; 3 uses
  %i.dj = or disjoint i64 %n.vec, 1
  %i.dk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.dg, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dk, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi180 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %wide.load = load <2 x i64>, ptr %i.dm, align 8, !tbaa !80
  %wide.load181 = load <2 x i64>, ptr %i.dn, align 8, !tbaa !80
  %i.do = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.dp = or <2 x i64> %wide.load181, %vec.phi180 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !1481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.dp, %i.do
  %i.dr = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %BN_abs_is_word.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader182

.lr.ph.i.i.i.i.preheader182:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.dj, %middle.block ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader182, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader182 ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader182 ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i.i.i.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !80
  %i.du = or i64 %i.dt, %.01113.i.i.i.i           ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ar
  br i1 %exitcond.not.i.i.i.i, label %BN_abs_is_word.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1482

BN_abs_is_word.exit.i.i.i:                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.p
  %.012.in.in.i.i.i.i = phi i64 [ %i.dg, %bb.p ], [ %i.dr, %middle.block ], [ %i.du, %.lr.ph.i.i.i.i ]
  %.012.in.i.not.i.i.i = icmp eq i64 %.012.in.in.i.i.i.i, 0
  br i1 %.012.in.i.not.i.i.i, label %bn_odd_number_is_obviously_composite.exit.i, label %.critedge.backedge.i

bn_odd_number_is_obviously_composite.exit.i:      ; preds = %BN_abs_is_word.exit.i.i.i
  %i.dv = load i32, ptr %i.am, align 8, !tbaa !91
  %.not5.i = icmp eq i32 %i.dv, 0
  br i1 %.not5.i, label %probable_prime.exit.thread, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %bn_odd_number_is_obviously_composite.exit.i, %BN_abs_is_word.exit.i.i.i, %.split11.us.i
  %i.dw = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1)
  %.not.i68 = icmp eq i32 %i.dw, 0
  br i1 %.not.i68, label %probable_prime.exit.thread115, label %.lr.ph.i, !llvm.loop !1483

bb.q:                                             ; preds = %.backedge
  %i.dx = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i.i70 = icmp eq i8 %i.dx, 0               ; 2 uses
  br i1 %i.o, label %bb.r, label %bb.ao

bb.r:                                             ; preds = %bb.q
  br i1 %.not.i.i70, label %bb.s, label %BN_CTX_start.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dy = load i64, ptr %i.af, align 8, !tbaa !111
  %i.dz = load i64, ptr %i.ag, align 8, !tbaa !112 ; 5 uses
  %i.ea = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.t, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.s
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i.i

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i64 %i.dz, 0
  %i.ec = mul i64 %i.dz, 3
  %i.ed = lshr i64 %i.ec, 1
  %i.ee = select i1 %.not.i.i.i, i64 32, i64 %i.ed ; 4 uses
  %i.ef = icmp ule i64 %i.ee, %i.dz
  %i.eg = icmp samesign ugt i64 %i.ee, 2305843009213693951
  %or.cond.i.i.i = select i1 %i.ef, i1 true, i1 %i.eg
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.ei = shl nuw i64 %i.ee, 3
  %i.ej = tail call ptr @OPENSSL_realloc(ptr noundef %i.eh, i64 noundef %i.ei) #46 ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.ej, ptr %i.q, align 8, !tbaa !109
  store i64 %i.ee, ptr %i.ah, align 8, !tbaa !113
  %.pre26.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i.i

BN_STACK_push.exit.i.i:                           ; preds = %bb.v, %._crit_edge.i.i.i
  %i.el = phi i64 [ %i.dz, %._crit_edge.i.i.i ], [ %.pre26.i.i.i, %bb.v ]
  %i.em = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ej, %bb.v ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.el
  store i64 %i.dy, ptr %i.en, align 8, !tbaa !80
  %i.eo = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.ag, align 8, !tbaa !112
  br label %BN_CTX_start.exit.i

bb.w:                                             ; preds = %bb.u, %bb.t
  store i8 1, ptr %i.r, align 8, !tbaa !110
  store i8 1, ptr %i.ai, align 1, !tbaa !114
  br label %BN_CTX_start.exit.i

BN_CTX_start.exit.i:                              ; preds = %bb.w, %BN_STACK_push.exit.i.i, %bb.r
  %i.eq = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 4 uses
  %i.er = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 11 uses
  %i.es = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 4 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %BN_CTX_start.exit.i
  %i.eu = tail call i32 @BN_rshift1(ptr noundef nonnull %i.es, ptr noundef nonnull readonly %3)
  %.not.i71 = icmp eq i32 %i.eu, 0
  br i1 %.not.i71, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ev = tail call i32 @BN_rand(ptr noundef %i.er, i32 noundef %i.al, i32 noundef 0, i32 noundef 1)
  %.not49.i = icmp eq i32 %i.ev, 0
  br i1 %.not49.i, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = tail call i32 @BN_div(ptr noundef null, ptr noundef %i.eq, ptr noundef %i.er, ptr noundef nonnull %i.es, ptr noundef nonnull %i.p)
  %.not50.i = icmp eq i32 %i.ew, 0
  br i1 %.not50.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = tail call i32 @BN_sub(ptr noundef %i.er, ptr noundef %i.er, ptr noundef %i.eq)
  %.not51.i = icmp eq i32 %i.ex, 0
  br i1 %.not51.i, label %.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.aj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ey = tail call i32 @BN_add_word(ptr noundef %i.er, i64 noundef 1)
  %.not54.i = icmp eq i32 %i.ey, 0
  br i1 %.not54.i, label %.thread.i, label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.ez = tail call i32 @BN_rshift1(ptr noundef %i.eq, ptr noundef nonnull readonly %4)
  %.not52.i = icmp eq i32 %i.ez, 0
  br i1 %.not52.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = tail call i32 @BN_add(ptr noundef %i.er, ptr noundef %i.er, ptr noundef %i.eq)
  %.not53.i = icmp eq i32 %i.fa, 0
  br i1 %.not53.i, label %.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.fb = tail call i32 @BN_lshift1(ptr noundef %0, ptr noundef %i.er)
  %.not55.i = icmp eq i32 %i.fb, 0
  br i1 %.not55.i, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef 1)
  %.not56.i = icmp eq i32 %i.fc, 0
  br i1 %.not56.i, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val.i = load i32, ptr %i.ak, align 8, !tbaa !93
  %i.fd = icmp sgt i32 %.val.i, 16
  %..i.i = select i1 %i.fd, i64 1024, i64 512
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ak
  %i.fe = add nuw nsw i64 %.04464.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fe, %..i.i
  br i1 %exitcond.not.i, label %.thread.i, label %.backedge185

.backedge185:                                     ; preds = %bb.ai, %bb.am
  %.04464.i.be = phi i64 [ %i.fe, %bb.ai ], [ 1, %bb.am ]
  br label %bb.aj, !llvm.loop !1484

bb.aj:                                            ; preds = %.backedge185, %bb.ah
  %.04464.i = phi i64 [ 1, %bb.ah ], [ %.04464.i.be, %.backedge185 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr @kPrimes, i64 %.04464.i
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !131 ; 2 uses
  %i.fh = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef %0, i16 noundef zeroext %i.fg)
  %i.fi = icmp eq i16 %i.fh, 0
  br i1 %i.fi, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fj = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef %i.er, i16 noundef zeroext %i.fg)
  %i.fk = icmp eq i16 %i.fj, 0
  br i1 %i.fk, label %bb.al, label %bb.ai

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fl = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull readonly %3)
  %.not57.i = icmp eq i32 %i.fl, 0
  br i1 %.not57.i, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fm = tail call i32 @BN_add(ptr noundef %i.er, ptr noundef %i.er, ptr noundef nonnull %i.es)
  %.not58.i = icmp eq i32 %i.fm, 0
  br i1 %.not58.i, label %.thread.i, label %.backedge185

.thread.i:                                        ; preds = %bb.am, %bb.al, %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %BN_CTX_start.exit.i
  %.not61 = phi i1 [ true, %BN_CTX_start.exit.i ], [ true, %bb.x ], [ true, %bb.y ], [ true, %bb.ag ], [ true, %bb.af ], [ true, %bb.ac ], [ true, %bb.ae ], [ true, %bb.ad ], [ true, %bb.aa ], [ true, %bb.z ], [ true, %bb.am ], [ true, %bb.al ], [ false, %bb.ai ]
  %i.fn = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i59.i = icmp eq i8 %i.fn, 0
  br i1 %.not.i59.i, label %bb.an, label %probable_prime_dh_safe.exit

bb.an:                                            ; preds = %.thread.i
  %i.fo = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.fp = add i64 %i.fo, -1                       ; 2 uses
  store i64 %i.fp, ptr %i.ag, align 8, !tbaa !112
  %i.fq = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !80
  store i64 %i.fs, ptr %i.af, align 8, !tbaa !111
  br label %probable_prime_dh_safe.exit

probable_prime_dh_safe.exit:                      ; preds = %.thread.i, %bb.an
  br i1 %.not61, label %probable_prime.exit.thread115.loopexit187, label %probable_prime.exit.thread

bb.ao:                                            ; preds = %bb.q
  br i1 %.not.i.i70, label %bb.ap, label %BN_CTX_start.exit.i73

bb.ap:                                            ; preds = %bb.ao
  %i.ft = load i64, ptr %i.af, align 8, !tbaa !111
  %i.fu = load i64, ptr %i.ag, align 8, !tbaa !112 ; 5 uses
  %i.fv = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.aq, label %._crit_edge.i.i.i78

._crit_edge.i.i.i78:                              ; preds = %bb.ap
  %.pre.i.i.i79 = load ptr, ptr %i.q, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i.i80

bb.aq:                                            ; preds = %bb.ap
  %.not.i.i.i81 = icmp eq i64 %i.fu, 0
  %i.fx = mul i64 %i.fu, 3
  %i.fy = lshr i64 %i.fx, 1
  %i.fz = select i1 %.not.i.i.i81, i64 32, i64 %i.fy ; 4 uses
  %i.ga = icmp ule i64 %i.fz, %i.fu
  %i.gb = icmp samesign ugt i64 %i.fz, 2305843009213693951
  %or.cond.i.i.i82 = select i1 %i.ga, i1 true, i1 %i.gb
  br i1 %or.cond.i.i.i82, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gc = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.gd = shl nuw i64 %i.fz, 3
  %i.ge = tail call ptr @OPENSSL_realloc(ptr noundef %i.gc, i64 noundef %i.gd) #46 ; 3 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store ptr %i.ge, ptr %i.q, align 8, !tbaa !109
  store i64 %i.fz, ptr %i.ah, align 8, !tbaa !113
  %.pre26.i.i.i83 = load i64, ptr %i.ag, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i.i80

BN_STACK_push.exit.i.i80:                         ; preds = %bb.as, %._crit_edge.i.i.i78
  %i.gg = phi i64 [ %i.fu, %._crit_edge.i.i.i78 ], [ %.pre26.i.i.i83, %bb.as ]
  %i.gh = phi ptr [ %.pre.i.i.i79, %._crit_edge.i.i.i78 ], [ %i.ge, %bb.as ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gg
  store i64 %i.ft, ptr %i.gi, align 8, !tbaa !80
  %i.gj = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.ag, align 8, !tbaa !112
  br label %BN_CTX_start.exit.i73

bb.at:                                            ; preds = %bb.ar, %bb.aq
  store i8 1, ptr %i.r, align 8, !tbaa !110
  store i8 1, ptr %i.ai, align 1, !tbaa !114
  br label %BN_CTX_start.exit.i73

BN_CTX_start.exit.i73:                            ; preds = %bb.at, %BN_STACK_push.exit.i.i80, %bb.ao
  %i.gl = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.p) ; 3 uses
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %.thread40.i, label %bb.au

bb.au:                                            ; preds = %BN_CTX_start.exit.i73
  %i.gn = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 0, i32 noundef 1)
  %.not.i74 = icmp eq i32 %i.gn, 0
  br i1 %.not.i74, label %.thread40.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = tail call i32 @BN_div(ptr noundef null, ptr noundef nonnull %i.gl, ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull %i.p)
  %.not33.i = icmp eq i32 %i.go, 0
  br i1 %.not33.i, label %.thread40.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gp = tail call i32 @BN_sub(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.gl)
  %.not34.i = icmp eq i32 %i.gp, 0
  br i1 %.not34.i, label %.thread40.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.aj, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gq = tail call i32 @BN_add_word(ptr noundef %0, i64 noundef 1)
  %.not36.i = icmp eq i32 %i.gq, 0
  br i1 %.not36.i, label %.thread40.i, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.gr = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull readonly %4)
  %.not35.i = icmp eq i32 %i.gr, 0
  br i1 %.not35.i, label %.thread40.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.val.i75 = load i32, ptr %i.ak, align 8, !tbaa !93
  %i.gs = icmp sgt i32 %.val.i75, 16
  %..i.i76 = select i1 %i.gs, i64 1024, i64 512
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bc
  %i.gt = add nuw nsw i64 %.02843.i, 1            ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %i.gt, %..i.i76
  br i1 %exitcond.not.i77, label %.thread40.i, label %.backedge186

.backedge186:                                     ; preds = %bb.bb, %bb.bd
  %.02843.i.be = phi i64 [ %i.gt, %bb.bb ], [ 1, %bb.bd ]
  br label %bb.bc, !llvm.loop !1485

bb.bc:                                            ; preds = %.backedge186, %bb.ba
  %.02843.i = phi i64 [ 1, %bb.ba ], [ %.02843.i.be, %.backedge186 ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @kPrimes, i64 %.02843.i
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !131
  %i.gw = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef %0, i16 noundef zeroext %i.gv)
  %i.gx = icmp ult i16 %i.gw, 2                   ; 3 uses
  br i1 %i.gx, label %bb.bd, label %bb.bb

bb.bd:                                            ; preds = %bb.bc
  %i.gy = tail call i32 @BN_add(ptr noundef %0, ptr noundef %0, ptr noundef nonnull readonly %3)
  %.not37.i = icmp eq i32 %i.gy, 0
  br i1 %.not37.i, label %.thread40.i, label %.backedge186

.thread40.i:                                      ; preds = %bb.bd, %bb.bb, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.au, %BN_CTX_start.exit.i73
  %.not60 = phi i1 [ true, %BN_CTX_start.exit.i73 ], [ true, %bb.au ], [ true, %bb.av ], [ true, %bb.ay ], [ true, %bb.az ], [ true, %bb.aw ], [ %i.gx, %bb.bb ], [ %i.gx, %bb.bd ]
  %i.gz = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i38.i = icmp eq i8 %i.gz, 0
  br i1 %.not.i38.i, label %bb.be, label %probable_prime_dh.exit

bb.be:                                            ; preds = %.thread40.i
  %i.ha = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.hb = add i64 %i.ha, -1                       ; 2 uses
  store i64 %i.hb, ptr %i.ag, align 8, !tbaa !112
  %i.hc = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !80
  store i64 %i.he, ptr %i.af, align 8, !tbaa !111
  br label %probable_prime_dh.exit

probable_prime_dh.exit:                           ; preds = %.thread40.i, %bb.be
  br i1 %.not60, label %probable_prime.exit.thread115.loopexit187, label %probable_prime.exit.thread

probable_prime.exit.thread:                       ; preds = %bn_odd_number_is_obviously_composite.exit.i, %.split.us.i, %probable_prime_dh_safe.exit, %probable_prime_dh.exit
  %i.hf = add nuw nsw i32 %.0, 1
  br i1 %.not.i84, label %BN_GENCB_call.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %probable_prime.exit.thread
  %i.hg = load i8, ptr %5, align 8, !tbaa !128
  switch i8 %i.hg, label %probable_prime.exit.thread115.loopexit187 [
    i8 1, label %BN_GENCB_call.exit
    i8 2, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.hh = load ptr, ptr %i.an, align 8, !tbaa !76
  tail call void %i.hh(i32 noundef 0, i32 noundef %.0, ptr noundef nonnull %5) #46, !inline_history !132
  br label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit:                               ; preds = %bb.bf
  %i.hi = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.hj = tail call i32 %i.hi(i32 noundef 0, i32 noundef %.0, ptr noundef nonnull %5) #46, !inline_history !132
  %.not63 = icmp eq i32 %i.hj, 0
  br i1 %.not63, label %probable_prime.exit.thread115.loopexit187, label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit.thread:                        ; preds = %probable_prime.exit.thread, %bb.bg, %BN_GENCB_call.exit
  br i1 %i.o, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %BN_GENCB_call.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  %i.hk = call i32 @BN_primality_test(ptr noundef nonnull %i.c, ptr noundef readonly %0, i32 noundef %.0.i98101, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef %5)
  %.not.i86 = icmp eq i32 %i.hk, 0
  %i.hl = load i32, ptr %i.c, align 4
  %.0.i87 = select i1 %.not.i86, i32 -1, i32 %i.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  switch i32 %.0.i87, label %probable_prime.exit.thread115 [
    i32 -1, label %probable_prime.exit.thread115.loopexit187
    i32 0, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %.preheader, %bb.bj, %bb.bh
  br label %.backedge

bb.bi:                                            ; preds = %BN_GENCB_call.exit.thread
  %i.hm = tail call i32 @BN_rshift1(ptr noundef nonnull %i.ad, ptr noundef %0)
  %.not64 = icmp eq i32 %i.hm, 0
  br i1 %.not64, label %probable_prime.exit.thread115.loopexit187, label %.preheader

.preheader:                                       ; preds = %bb.bi, %BN_GENCB_call.exit94.thread
  %.051131 = phi i32 [ %i.hv, %BN_GENCB_call.exit94.thread ], [ 0, %bb.bi ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.hn = call i32 @BN_primality_test(ptr noundef nonnull %i.b, ptr noundef readonly %0, i32 noundef 1, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef null)
  %.not.i88 = icmp eq i32 %i.hn, 0
  %i.ho = load i32, ptr %i.b, align 4
  %.0.i89 = select i1 %.not.i88, i32 -1, i32 %i.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  switch i32 %.0.i89, label %bb.bj [
    i32 -1, label %probable_prime.exit.thread115
    i32 0, label %.backedge.backedge
  ]

bb.bj:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.hp = call i32 @BN_primality_test(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.ad, i32 noundef 1, ptr noundef nonnull %i.p, i32 noundef 0, ptr noundef null)
  %.not.i90 = icmp eq i32 %i.hp, 0
  %i.hq = load i32, ptr %i.a, align 4
  %.0.i91 = select i1 %.not.i90, i32 -1, i32 %i.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  switch i32 %.0.i91, label %bb.bk [
    i32 -1, label %probable_prime.exit.thread115
    i32 0, label %.backedge.backedge
  ]

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not.i84, label %BN_GENCB_call.exit94.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hr = load i8, ptr %5, align 8, !tbaa !128
  switch i8 %i.hr, label %probable_prime.exit.thread115 [
    i8 1, label %BN_GENCB_call.exit94
    i8 2, label %bb.bm
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.hs = load ptr, ptr %i.an, align 8, !tbaa !76
  tail call void %i.hs(i32 noundef 1, i32 noundef %.051131, ptr noundef nonnull %5) #46, !inline_history !132
  br label %BN_GENCB_call.exit94.thread

BN_GENCB_call.exit94:                             ; preds = %bb.bl
  %i.ht = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.hu = tail call i32 %i.ht(i32 noundef 1, i32 noundef %.051131, ptr noundef nonnull %5) #46, !inline_history !132
  %.not65 = icmp eq i32 %i.hu, 0
  br i1 %.not65, label %probable_prime.exit.thread115, label %BN_GENCB_call.exit94.thread

BN_GENCB_call.exit94.thread:                      ; preds = %bb.bk, %bb.bm, %BN_GENCB_call.exit94
  %i.hv = add nuw i32 %.051131, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.hv, %.0.i98101
  br i1 %exitcond.not, label %probable_prime.exit.thread115, label %.preheader, !llvm.loop !1486

probable_prime.exit.thread115.loopexit187:        ; preds = %bb.bh, %probable_prime_dh.exit, %probable_prime_dh_safe.exit, %bb.n, %bb.bf, %bb.bi, %BN_GENCB_call.exit
  br label %probable_prime.exit.thread115

probable_prime.exit.thread115:                    ; preds = %.critedge.backedge.i, %BN_GENCB_call.exit94.thread, %bb.bl, %BN_GENCB_call.exit94, %.preheader, %bb.bj, %bb.bh, %probable_prime.exit.thread115.loopexit187, %BN_CTX_start.exit
  %.052117 = phi i32 [ 0, %probable_prime.exit.thread115.loopexit187 ], [ 0, %bb.bj ], [ 1, %bb.bh ], [ 0, %BN_CTX_start.exit ], [ 1, %BN_GENCB_call.exit94.thread ], [ 0, %bb.bl ], [ 0, %BN_GENCB_call.exit94 ], [ 0, %.preheader ], [ 0, %.critedge.backedge.i ]
  %i.hw = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i95 = icmp eq i8 %i.hw, 0
  br i1 %.not.i95, label %bb.bn, label %BN_CTX_free.exit

bb.bn:                                            ; preds = %probable_prime.exit.thread115
  %i.hx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !112
  %i.hz = add i64 %i.hy, -1                       ; 2 uses
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !112
  %i.ia = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.hz
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !80
  %i.id = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !111
  br label %BN_CTX_free.exit

BN_CTX_free.exit:                                 ; preds = %probable_prime.exit.thread115, %bb.bn
  %i.ie = load ptr, ptr %i.p, align 8, !tbaa !108
  tail call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.ie, ptr noundef nonnull @sk_BIGNUM_call_free_func, ptr noundef nonnull @BN_free) #46
  %.val.i96 = load ptr, ptr %i.q, align 8, !tbaa !109
  tail call void @OPENSSL_free(ptr noundef %.val.i96) #46
  tail call void @OPENSSL_free(ptr noundef nonnull %i.p) #46
  br label %probable_prime.exit.thread118

probable_prime.exit.thread118:                    ; preds = %bb.j, %BN_CTX_free.exit, %bb.i, %bb.g
  %.053 = phi i32 [ 0, %bb.g ], [ 0, %bb.i ], [ %.052117, %BN_CTX_free.exit ], [ 0, %bb.j ]
  ret i32 %.053
}

; Function Attrs: nounwind uwtable
define i32 @BN_is_prime_fasttest_ex(ptr nofree noundef readonly captures(address) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = call i32 @BN_primality_test(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
  %.not = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr %i.a, align 4
  %.0 = select i1 %.not, i32 -1, i32 %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.0
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @bn_odd_number_is_obviously_composite(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !93 ; 5 uses
  %i.b = icmp sgt i32 %.val.i, 16
  %..i.i = select i1 %i.b, i64 1024, i64 512
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = add nuw nsw i64 %.0914.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.c, %..i.i
  br i1 %exitcond.not.i, label %bn_trial_division.exit.thread, label %bb.c, !llvm.loop !16

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0914.i = phi i64 [ 1, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @kPrimes, i64 %.0914.i
  %i.e = load i16, ptr %i.d, align 2, !tbaa !131  ; 2 uses
  %i.f = tail call zeroext i16 @bn_mod_u16_consttime(ptr noundef readonly %0, i16 noundef zeroext %i.e)
  %i.g = icmp eq i16 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.h) #47, !srcloc !120
  %.not.not.not.i.not = icmp eq i32 %i.i, 0
  br i1 %.not.not.not.i.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i16 %i.e to i64                     ; 2 uses
  %i.k = icmp eq i32 %.val.i, 0
  br i1 %i.k, label %BN_abs_is_word.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !80
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
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !tbaa !80
  %wide.load14 = load <2 x i64>, ptr %i.u, align 8, !tbaa !80
  %i.v = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.w = or <2 x i64> %wide.load14, %vec.phi13    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1487

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
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80
  %i.ab = or i64 %i.aa, %.01113.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %BN_abs_is_word.exit.i, label %.lr.ph.i.i, !llvm.loop !1488

BN_abs_is_word.exit.i:                            ; preds = %.lr.ph.i.i, %middle.block, %bb.e, %bb.d
  %.012.in.in.i.i = phi i64 [ %i.j, %bb.d ], [ %i.n, %bb.e ], [ %i.y, %middle.block ], [ %i.ab, %.lr.ph.i.i ]
  %.012.in.i.not.i = icmp eq i64 %.012.in.in.i.i, 0
  br i1 %.012.in.i.not.i, label %bb.f, label %bn_trial_division.exit.thread

bb.f:                                             ; preds = %BN_abs_is_word.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !91
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  br label %bn_trial_division.exit.thread

bn_trial_division.exit.thread:                    ; preds = %bb.b, %bb.f, %BN_abs_is_word.exit.i
  %i.ag = phi i32 [ %i.af, %bb.f ], [ 1, %BN_abs_is_word.exit.i ], [ 0, %bb.b ]
  ret i32 %i.ag
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @bn_miller_rabin_init(ptr nofree noundef captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = tail call ptr @BN_CTX_get(ptr noundef %2)
  store ptr %i.b, ptr %0, align 8, !tbaa !134
  %i.c = tail call ptr @BN_CTX_get(ptr noundef %2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !135
  %i.e = tail call ptr @BN_CTX_get(ptr noundef %2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !136
  %i.g = tail call ptr @BN_CTX_get(ptr noundef %2) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !137
  %i.i = load ptr, ptr %0, align 8, !tbaa !134    ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_once(ptr noundef nonnull @BN_value_one_once, ptr noundef nonnull @BN_value_one_init) #46
  %i.p = tail call i32 @bn_usub_consttime(ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull @BN_value_one_storage)
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !134    ; 2 uses
  %i.r = tail call i32 @BN_count_low_zero_bits(ptr noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.r, ptr %i.s, align 4, !tbaa !138
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.u = tail call i32 @bn_rshift_secret_shift(ptr noundef %i.t, ptr noundef %i.q, i32 noundef %i.r, ptr noundef %2)
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !93   ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  br label %bb.g
end_hunk_1
begin_hunk_2_@generate_prime:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %BN_GENCB_call.exit.thread88

bn_odd_number_is_obviously_composite.exit.thread93: ; preds = %BN_abs_is_word.exit.i.i, %.thread105, %bn_odd_number_is_obviously_composite.exit
  %i.ej = add nuw nsw i32 %.041.ph136, 1          ; 3 uses
  %exitcond.not = icmp eq i32 %.041.ph136, %i.bs
  br i1 %exitcond.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bn_odd_number_is_obviously_composite.exit.thread93
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 141, ptr noundef nonnull @.str.52, i32 noundef 943) #46
  br label %BN_GENCB_call.exit.thread88

bb.ah:                                            ; preds = %bn_odd_number_is_obviously_composite.exit.thread93
  br i1 %.not.i64, label %.outer.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ek = load i8, ptr %7, align 8, !tbaa !128
  switch i8 %i.ek, label %BN_GENCB_call.exit.thread88 [
    i8 1, label %BN_GENCB_call.exit80
    i8 2, label %bb.aj
  ]

BN_GENCB_call.exit80:                             ; preds = %bb.ai
  %i.el = load ptr, ptr %i.bg, align 8, !tbaa !76
  %i.em = tail call i32 %i.el(i32 noundef 2, i32 noundef %i.ej, ptr noundef nonnull %7) #46, !inline_history !132
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %BN_GENCB_call.exit.thread88, label %.outer.backedge

bb.aj:                                            ; preds = %bb.ai
  %i.eo = load ptr, ptr %i.bg, align 8, !tbaa !76
  tail call void %i.eo(i32 noundef 2, i32 noundef %i.ej, ptr noundef nonnull %7) #46, !inline_history !132
  br label %.outer.backedge

BN_GENCB_call.exit.thread88:                      ; preds = %.outer.backedge, %bb.ai, %BN_GENCB_call.exit80, %BN_GENCB_call.exit, %.backedge, %bb.p, %bb.n, %.preheader, %bb.af, %.thread101, %BN_CTX_start.exit, %bb.ag
  %.5 = phi i32 [ 0, %BN_CTX_start.exit ], [ 0, %bb.ag ], [ 0, %.thread101 ], [ 1, %bb.af ], [ 0, %.preheader ], [ 0, %BN_GENCB_call.exit ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %.backedge ], [ 0, %BN_GENCB_call.exit80 ], [ 0, %bb.ai ], [ 0, %.outer.backedge ] ; 2 uses
  %i.ep = load i8, ptr %i.ae, align 8, !tbaa !110
  %.not.i81 = icmp eq i8 %i.ep, 0
  br i1 %.not.i81, label %bb.ak, label %BN_CTX_end.exit

bb.ak:                                            ; preds = %BN_GENCB_call.exit.thread88
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !112
  %i.et = add i64 %i.es, -1                       ; 2 uses
  store i64 %i.et, ptr %i.er, align 8, !tbaa !112
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !109
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !80
  %i.ex = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !111
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.ak, %BN_GENCB_call.exit.thread88, %bb.d, %bb.b
  %.145 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.5, %BN_GENCB_call.exit.thread88 ], [ %.5, %bb.ak ]
  ret i32 %.145
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #35

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @boringssl_self_test_sha512() unnamed_addr #32 {
bb.a:
  %0 = alloca %struct.sha512_state_st, align 8    ; 16 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #46
  store i64 7640891576956012808, ptr %0, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.b, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5840696475078001361, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -7276294671716946913, ptr %i.f, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2270897969802886507, ptr %i.g, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 6620516959819538809, ptr %i.h, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.j, align 8, !tbaa !193
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 64, ptr %i.k, align 4, !tbaa !194
  %i.l = call i32 @SHA512_Update(ptr noundef nonnull %0, ptr noundef nonnull @boringssl_self_test_sha512.kInput, i64 noundef 16) ; 0 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !194
  %i.n = zext i32 %i.m to i64
  %i.o = call fastcc range(i32 0, 2) i32 @sha512_final_impl(ptr noundef nonnull %i.a, i64 noundef %i.n, ptr noundef nonnull %0) ; 0 uses
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 216) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  %i.p = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_sha512.kPlaintextSHA512, ptr noundef %i.a, i64 noundef 64, ptr noundef nonnull @.str.151)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.p
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @boringssl_self_test_sha3_256() unnamed_addr #32 {
bb.a:
  %0 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, i8 0, i64 200, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.b, align 8, !tbaa !444
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 393
  store i8 0, ptr %i.c, align 1, !tbaa !445
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 136, ptr %i.d, align 8, !tbaa !446
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 32, ptr %i.e, align 8, !tbaa !447
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i8 6, ptr %i.f, align 8, !tbaa !448
  %i.g = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %0, ptr noundef nonnull readonly @boringssl_self_test_sha3_256.kInput, i64 noundef 16)
  %.not5.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i, label %SHA3_256.exit, label %SHA3_Update.exit.thread8.i

SHA3_Update.exit.thread8.i:                       ; preds = %bb.a
  %i.h = call i32 @SHA3_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %0) ; 0 uses
  br label %SHA3_256.exit

SHA3_256.exit:                                    ; preds = %bb.a, %SHA3_Update.exit.thread8.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  %i.i = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_sha3_256.kPlaintextSHA3_256, ptr noundef %i.a, i64 noundef 32, ptr noundef nonnull @.str.152)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.i
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @boringssl_self_test_hkdf_sha256() unnamed_addr #32 {
bb.a:
  %i.a = alloca [42 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  tail call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.b = call i32 @HKDF(ptr noundef nonnull %i.a, i64 noundef 42, ptr noundef nonnull @EVP_sha256_storage, ptr noundef nonnull @boringssl_self_test_hkdf_sha256.kHKDF_ikm_tc1, i64 noundef 32, ptr noundef nonnull @boringssl_self_test_hkdf_sha256.kHKDF_salt_tc1, i64 noundef 13, ptr noundef nonnull @boringssl_self_test_hkdf_sha256.kHKDF_info_tc1, i64 noundef 10) ; 0 uses
  %i.c = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_hkdf_sha256.kHKDF_okm_tc1_sha256, ptr noundef %i.a, i64 noundef 42, ptr noundef nonnull @.str.153)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.c
}

declare void @sha3_keccak4_f1600_alt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sha1_block_data_order_hw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha1_block_data_order_avx2(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha1_block_data_order_avx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha1_block_data_order_ssse3(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha1_block_data_order_nohw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order_hw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order_avx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order_ssse3(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order_nohw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha512_block_data_order_avx(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sha512_block_data_order_nohw(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #38

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #38

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.fshl.v16i8(<16 x i8>, <16 x i8>, <16 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v16i8(<16 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.xor.v16i8(<16 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.xor.v32i8(<32 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v32i8(<32 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.xor.v48i8(<48 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v48i8(<48 x i8>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.bswap.v2i64(<2 x i64>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #38

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint nofree nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { noinline nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { inlinehint nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #44 = { nofree nounwind }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #46 = { nounwind }
attributes #47 = { nounwind memory(none) }
attributes #48 = { nounwind memory(read) }
attributes #49 = { noreturn nounwind }
attributes #50 = { nounwind willreturn memory(read) }
attributes #51 = { cold nounwind }
attributes #52 = { cold }

!llvm.module.flags = !{!65, !66}
!llvm.ident = !{!67}
!llvm.errno.tbaa = !{!72}

!0 = distinct !{!0, !77}
!1 = distinct !{!1, !77}
!2 = distinct !{!2, !77}
!3 = distinct !{!3, !77}
!4 = distinct !{!4, !77}
!5 = distinct !{!5, !77}
!6 = distinct !{!6, !77}
!7 = distinct !{!7, !77}
!8 = distinct !{null}
!9 = distinct !{!9, !77}
!10 = distinct !{!10, !77}
!11 = distinct !{!11, !77}
!12 = distinct !{!12, !77}
!13 = distinct !{!13, !77}
!14 = distinct !{!14, !77}
!15 = distinct !{!15, !77}
!16 = distinct !{!16, !77}
!17 = distinct !{!17, !77}
!18 = distinct !{!18, !77}
!19 = distinct !{null, ptr @EVP_CIPHER_CTX_cleanup}
!20 = distinct !{!20, !77}
!21 = distinct !{!21, !77}
!22 = distinct !{!22, !77}
!23 = distinct !{!23, !77}
!24 = distinct !{ptr @EVP_PKEY_free, null}
!25 = distinct !{null}
!26 = distinct !{ptr @evp_pkey_set0, null}
!27 = distinct !{null, ptr @EVP_PKEY_free, null}
!28 = distinct !{null, ptr @EVP_PKEY_free, null}
!29 = distinct !{ptr @md5_block_asm_data_order, ptr @sha1_block_data_order, null}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{!32, !77}
!33 = distinct !{!33, !77}
!34 = distinct !{!34, !77}
!35 = distinct !{!35, !77}
!36 = distinct !{!36, !77}
!37 = distinct !{!37, !77}
!38 = distinct !{!38, !77}
!39 = distinct !{!39, !77}
!40 = distinct !{!40, !77}
!41 = distinct !{!41, !77}
!42 = distinct !{!42, !77}
!43 = distinct !{!43, !77}
!44 = distinct !{!44, !77}
!45 = distinct !{!45, !77}
!46 = distinct !{!46, !77}
!47 = distinct !{!47, !77}
!48 = distinct !{!48, !77}
!49 = distinct !{null}
!50 = distinct !{ptr @RSA_sign_raw, null}
!51 = distinct !{!51, !77}
!52 = distinct !{!52, !77}
!53 = distinct !{!53, !77}
!54 = distinct !{!54, !77}
!55 = distinct !{!55, !77}
!56 = distinct !{!56, !77}
!57 = distinct !{null, ptr @EVP_PKEY_size}
!58 = distinct !{!58, !77}
!59 = distinct !{!59, !77}
!60 = distinct !{!60, !77}
!61 = distinct !{!61, !77}
!62 = distinct !{!62, !77}
!63 = distinct !{!63, !77}
!64 = distinct !{!64, !77}
!65 = !{i32 8, !"PIC Level", i32 2}
!66 = !{i32 7, !"uwtable", i32 2}
!67 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!"omnipotent char", !68, i64 0}
!70 = !{!"int", !69, i64 0}
!71 = !{!"__libc_errno", !70, i64 0}
!72 = !{!71, !70, i64 0}
!73 = !{!70, !70, i64 0}
!74 = !{!"aes_key_st", !69, i64 0, !70, i64 240}
!75 = !{!74, !70, i64 240}
!76 = !{!69, !69, i64 0}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{i64 0, i64 128, !76}
!79 = !{!"long", !69, i64 0}
end_hunk_2
