Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 550
begin_hunk_0_@BN_nnmod_pow2:bb.a

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
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.e = zext i16 %1 to i64                       ; 2 uses
  %i.f = add nsw i64 %i.e, -1                     ; 3 uses
  %i.g = lshr i64 %i.f, 8                         ; 2 uses
  %.not53.i = icmp eq i64 %i.g, 0                 ; 2 uses
  %i.h = select i1 %.not53.i, i64 %i.f, i64 %i.g  ; 2 uses
  %i.i = lshr i64 %i.h, 4                         ; 2 uses
  %.not54.i = icmp eq i64 %i.i, 0                 ; 2 uses
  %i.j = select i1 %.not54.i, i32 0, i32 4
  %i.k = select i1 %.not53.i, i32 1, i32 9
  %i.l = or disjoint i32 %i.j, %i.k
  %i.m = select i1 %.not54.i, i64 %i.h, i64 %i.i  ; 2 uses
  %i.n = lshr i64 %i.m, 2                         ; 2 uses
  %.not55.i = icmp eq i64 %i.n, 0                 ; 2 uses
  %i.o = select i1 %.not55.i, i32 0, i32 2
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = select i1 %.not55.i, i64 %i.m, i64 %i.n
  %i.r = icmp samesign ugt i64 %i.q, 1
  %.neg.i = zext i1 %i.r to i32
  %i.s = add nuw nsw i32 %i.p, %.neg.i            ; 2 uses
  %i.t = or disjoint i32 %i.s, 32
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 1, %i.u
  %i.w = add nuw i64 %i.f, %i.v
  %i.x = udiv i64 %i.w, %i.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !92
  %i.z = and i64 %i.x, 4294967295                 ; 4 uses
  %i.aa = add nsw i32 %i.s, -1                    ; 4 uses
  %i.ab = zext i16 %1 to i32                      ; 4 uses
  %i.ac = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.02124 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %bb.c ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32              ; 3 uses
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %.02124, i32 %i.ag, i32 16) ; 3 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = mul nuw i64 %i.z, %i.ai
  %i.ak = lshr i64 %i.aj, 32
  %i.al = trunc nuw i64 %i.ak to i32              ; 2 uses
  %i.am = sub i32 %i.ah, %i.al
  %i.an = lshr i32 %i.am, 1
  %i.ao = add i32 %i.an, %i.al
  %i.ap = lshr i32 %i.ao, %i.aa
  %i.aq = mul i32 %i.ap, %i.ab
  %i.ar = sub i32 %i.ah, %i.aq
  %i.as = shl i32 %i.ar, 16
  %i.at = and i32 %i.ag, 65535
  %i.au = or disjoint i32 %i.as, %i.at            ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = mul nuw i64 %i.z, %i.av
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = trunc nuw i64 %i.ax to i32              ; 2 uses
  %i.az = sub i32 %i.au, %i.ay
  %i.ba = lshr i32 %i.az, 1
  %i.bb = add i32 %i.ba, %i.ay
  %i.bc = lshr i32 %i.bb, %i.aa
  %i.bd = mul i32 %i.bc, %i.ab
  %i.be = sub i32 %i.ag, %i.bd
  %i.bf = trunc i64 %i.ae to i32                  ; 3 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.be, i32 %i.bf, i32 16) ; 3 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw i64 %i.z, %i.bh
  %i.bj = lshr i64 %i.bi, 32
  %i.bk = trunc nuw i64 %i.bj to i32              ; 2 uses
  %i.bl = sub i32 %i.bg, %i.bk
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = add i32 %i.bm, %i.bk
  %i.bo = lshr i32 %i.bn, %i.aa
  %i.bp = mul i32 %i.bo, %i.ab
  %i.bq = sub i32 %i.bg, %i.bp
  %i.br = shl i32 %i.bq, 16
  %i.bs = and i32 %i.bf, 65535
  %i.bt = or disjoint i32 %i.br, %i.bs            ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul nuw i64 %i.z, %i.bu
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = trunc nuw i64 %i.bw to i32              ; 2 uses
  %i.by = sub i32 %i.bt, %i.bx
  %i.bz = lshr i32 %i.by, 1
  %i.ca = add i32 %i.bz, %i.bx
  %i.cb = lshr i32 %i.ca, %i.aa
  %i.cc = mul i32 %i.cb, %i.ab
  %i.cd = sub i32 %i.bf, %i.cc                    ; 2 uses
  %i.ce = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ce, label %bb.c, label %.loopexit.loopexit, !llvm.loop !14

.loopexit.loopexit:                               ; preds = %bb.c
  %i.cf = trunc i32 %i.cd to i16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %.022 = phi i16 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.cf, %.loopexit.loopexit ]
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
end_hunk_0
begin_hunk_1_@BN_GENCB_set_old:bb.a
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
  %.0 = phi i32 [ 0, %.preheader126 ], [ %i.ic, %.backedge.backedge ] ; 3 uses
  br i1 %i.ae, label %bb.n, label %bb.r

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
  br i1 %i.aq, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %.lr.ph.i
  %i.as = load ptr, ptr %0, align 8, !tbaa !92
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.p, %.split.us.i
  %.0914.i.i.us.i = phi i64 [ 1, %.split.us.i ], [ %i.dy, %bb.p ] ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @kPrimes, i64 %.0914.i.i.us.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !131 ; 2 uses
  %i.av = zext i16 %i.au to i64                   ; 3 uses
  %i.aw = add nsw i64 %i.av, -1                   ; 3 uses
  %i.ax = lshr i64 %i.aw, 8                       ; 2 uses
  %.not53.i.i.us.i = icmp eq i64 %i.ax, 0         ; 2 uses
  %i.ay = select i1 %.not53.i.i.us.i, i64 %i.aw, i64 %i.ax ; 2 uses
  %i.az = lshr i64 %i.ay, 4                       ; 2 uses
  %.not54.i.i.us.i = icmp eq i64 %i.az, 0         ; 2 uses
  %i.ba = select i1 %.not54.i.i.us.i, i32 0, i32 4
  %i.bb = select i1 %.not53.i.i.us.i, i32 1, i32 9
  %i.bc = or disjoint i32 %i.ba, %i.bb
  %i.bd = select i1 %.not54.i.i.us.i, i64 %i.ay, i64 %i.az ; 2 uses
  %i.be = lshr i64 %i.bd, 2                       ; 2 uses
  %.not55.i.i.us.i = icmp eq i64 %i.be, 0         ; 2 uses
  %i.bf = select i1 %.not55.i.i.us.i, i32 0, i32 2
  %i.bg = or disjoint i32 %i.bc, %i.bf
  %i.bh = select i1 %.not55.i.i.us.i, i64 %i.bd, i64 %i.be
  %i.bi = icmp samesign ugt i64 %i.bh, 1
  %.neg.i.i.us.i = zext i1 %i.bi to i32
  %i.bj = add nuw nsw i32 %i.bg, %.neg.i.i.us.i   ; 2 uses
  %i.bk = or disjoint i32 %i.bj, 32
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = add nuw i64 %i.bm, %i.aw
  %i.bo = udiv i64 %i.bn, %i.av
  %i.bp = and i64 %i.bo, 4294967295               ; 4 uses
  %i.bq = add nsw i32 %i.bj, -1                   ; 4 uses
  %i.br = zext i16 %i.au to i32                   ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ %i.ar, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.o ] ; 2 uses
  %.02124.i.us.i = phi i32 [ 0, %.lr.ph.i.us.i ], [ %i.ds, %bb.o ]
  %indvars.iv.next.i.us.i = add nsw i64 %indvars.iv.i.us.i, -1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i.us.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !80 ; 2 uses
  %i.bu = lshr i64 %i.bt, 32
  %i.bv = trunc nuw i64 %i.bu to i32              ; 3 uses
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %.02124.i.us.i, i32 %i.bv, i32 16) ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul nuw i64 %i.bp, %i.bx
  %i.bz = lshr i64 %i.by, 32
  %i.ca = trunc nuw i64 %i.bz to i32              ; 2 uses
  %i.cb = sub i32 %i.bw, %i.ca
  %i.cc = lshr i32 %i.cb, 1
  %i.cd = add i32 %i.cc, %i.ca
  %i.ce = lshr i32 %i.cd, %i.bq
  %i.cf = mul i32 %i.ce, %i.br
  %i.cg = sub i32 %i.bw, %i.cf
  %i.ch = shl i32 %i.cg, 16
  %i.ci = and i32 %i.bv, 65535
  %i.cj = or disjoint i32 %i.ch, %i.ci            ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nuw i64 %i.bp, %i.ck
  %i.cm = lshr i64 %i.cl, 32
  %i.cn = trunc nuw i64 %i.cm to i32              ; 2 uses
  %i.co = sub i32 %i.cj, %i.cn
  %i.cp = lshr i32 %i.co, 1
  %i.cq = add i32 %i.cp, %i.cn
  %i.cr = lshr i32 %i.cq, %i.bq
  %i.cs = mul i32 %i.cr, %i.br
  %i.ct = sub i32 %i.bv, %i.cs
  %i.cu = trunc i64 %i.bt to i32                  ; 3 uses
  %i.cv = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.cu, i32 16) ; 3 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.bp, %i.cw
  %i.cy = lshr i64 %i.cx, 32
  %i.cz = trunc nuw i64 %i.cy to i32              ; 2 uses
  %i.da = sub i32 %i.cv, %i.cz
  %i.db = lshr i32 %i.da, 1
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = lshr i32 %i.dc, %i.bq
  %i.de = mul i32 %i.dd, %i.br
  %i.df = sub i32 %i.cv, %i.de
  %i.dg = shl i32 %i.df, 16
  %i.dh = and i32 %i.cu, 65535
  %i.di = or disjoint i32 %i.dg, %i.dh            ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = mul nuw i64 %i.bp, %i.dj
  %i.dl = lshr i64 %i.dk, 32
  %i.dm = trunc nuw i64 %i.dl to i32              ; 2 uses
  %i.dn = sub i32 %i.di, %i.dm
  %i.do = lshr i32 %i.dn, 1
  %i.dp = add i32 %i.do, %i.dm
  %i.dq = lshr i32 %i.dp, %i.bq
  %i.dr = mul i32 %i.dq, %i.br
  %i.ds = sub i32 %i.cu, %i.dr                    ; 2 uses
  %i.dt = icmp samesign ugt i64 %indvars.iv.i.us.i, 1
  br i1 %i.dt, label %bb.o, label %.loopexit.loopexit.i.us.i, !llvm.loop !14

.loopexit.loopexit.i.us.i:                        ; preds = %bb.o
  %i.du = and i32 %i.ds, 65535
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = zext i1 %i.dv to i32
  %i.dx = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dw) #47, !srcloc !120
  %.not.not.not.i.not.i.us.i = icmp eq i32 %i.dx, 0
  br i1 %.not.not.not.i.not.i.us.i, label %bb.p, label %.split11.us.i

bb.p:                                             ; preds = %.loopexit.loopexit.i.us.i
  %i.dy = add nuw nsw i64 %.0914.i.i.us.i, 1      ; 2 uses
  %exitcond.not.i.i.us.i = icmp eq i64 %i.dy, %..i.i.i.i
  br i1 %exitcond.not.i.i.us.i, label %probable_prime.exit.thread, label %.lr.ph.i.us.i, !llvm.loop !16

.split.i:                                         ; preds = %.lr.ph.i
  %i.dz = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 1) #47, !srcloc !120
  %.not.not.not.i.not.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.not.not.i.not.i.i, label %probable_prime.exit.thread, label %.split11.us.i

.split11.us.i:                                    ; preds = %.loopexit.loopexit.i.us.i, %.split.i
  %.us-phi.i = phi i64 [ 3, %.split.i ], [ %i.av, %.loopexit.loopexit.i.us.i ]
  %i.ea = icmp eq i32 %.val.i.i.i, 0
  br i1 %i.ea, label %.critedge.backedge.i, label %bb.q

bb.q:                                             ; preds = %.split11.us.i
  %i.eb = load ptr, ptr %0, align 8, !tbaa !92    ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !80
  %i.ed = xor i64 %i.ec, %.us-phi.i               ; 3 uses
  %i.ee = icmp sgt i32 %.val.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.preheader, label %BN_abs_is_word.exit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.q
  %i.ef = add nsw i64 %i.ar, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.val.i.i.i, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader182, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ef, -4                      ; 3 uses
  %i.eg = or disjoint i64 %n.vec, 1
  %i.eh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ed, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.eh, %vector.ph ], [ %i.el, %vector.body ]
  %vec.phi180 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %wide.load = load <2 x i64>, ptr %i.ej, align 8, !tbaa !80
  %wide.load181 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !80
  %i.el = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.em = or <2 x i64> %wide.load181, %vec.phi180 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !1481

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.em, %i.el
  %i.eo = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %BN_abs_is_word.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader182

.lr.ph.i.i.i.i.preheader182:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.eg, %middle.block ]
  %.01113.i.i.i.i.ph = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.preheader ], [ %i.eo, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader182, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ %indvars.iv.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader182 ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.er, %.lr.ph.i.i.i.i ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader182 ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i.i.i
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !80
  %i.er = or i64 %i.eq, %.01113.i.i.i.i           ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ar
  br i1 %exitcond.not.i.i.i.i, label %BN_abs_is_word.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1482

BN_abs_is_word.exit.i.i.i:                        ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.q
  %.012.in.in.i.i.i.i = phi i64 [ %i.ed, %bb.q ], [ %i.eo, %middle.block ], [ %i.er, %.lr.ph.i.i.i.i ]
  %.012.in.i.not.i.i.i = icmp eq i64 %.012.in.in.i.i.i.i, 0
  br i1 %.012.in.i.not.i.i.i, label %bn_odd_number_is_obviously_composite.exit.i, label %.critedge.backedge.i

bn_odd_number_is_obviously_composite.exit.i:      ; preds = %BN_abs_is_word.exit.i.i.i
  %i.es = load i32, ptr %i.am, align 8, !tbaa !91
  %.not5.i = icmp eq i32 %i.es, 0
  br i1 %.not5.i, label %probable_prime.exit.thread, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %.split11.us.i, %bn_odd_number_is_obviously_composite.exit.i, %BN_abs_is_word.exit.i.i.i
  %i.et = tail call i32 @BN_rand(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef 1, i32 noundef 1)
  %.not.i68 = icmp eq i32 %i.et, 0
  br i1 %.not.i68, label %probable_prime.exit.thread115, label %.lr.ph.i, !llvm.loop !1483

bb.r:                                             ; preds = %.backedge
  %i.eu = load i8, ptr %i.r, align 8, !tbaa !110
  %.not.i.i70 = icmp eq i8 %i.eu, 0               ; 2 uses
  br i1 %i.o, label %bb.s, label %bb.ap

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i.i70, label %bb.t, label %BN_CTX_start.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ev = load i64, ptr %i.af, align 8, !tbaa !111
  %i.ew = load i64, ptr %i.ag, align 8, !tbaa !112 ; 5 uses
  %i.ex = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.u, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.t
  %.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !109
  br label %BN_STACK_push.exit.i.i

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i = icmp eq i64 %i.ew, 0
  %i.ez = mul i64 %i.ew, 3
  %i.fa = lshr i64 %i.ez, 1
  %i.fb = select i1 %.not.i.i.i, i64 32, i64 %i.fa ; 4 uses
  %i.fc = icmp ule i64 %i.fb, %i.ew
  %i.fd = icmp samesign ugt i64 %i.fb, 2305843009213693951
  %or.cond.i.i.i = select i1 %i.fc, i1 true, i1 %i.fd
  br i1 %or.cond.i.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fe = load ptr, ptr %i.q, align 8, !tbaa !109
  %i.ff = shl nuw i64 %i.fb, 3
  %i.fg = tail call ptr @OPENSSL_realloc(ptr noundef %i.fe, i64 noundef %i.ff) #46 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.fg, ptr %i.q, align 8, !tbaa !109
  store i64 %i.fb, ptr %i.ah, align 8, !tbaa !113
  %.pre26.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !112
  br label %BN_STACK_push.exit.i.i

end_hunk_1
