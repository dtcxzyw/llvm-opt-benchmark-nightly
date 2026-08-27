Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@bn_miller_rabin_init:bb.a
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !654
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
  %i.q = load ptr, ptr %0, align 8, !tbaa !651    ; 2 uses
  %i.r = tail call i32 @BN_count_low_zero_bits(ptr noundef %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.r, ptr %i.s, align 4, !tbaa !656
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !653
  %i.u = tail call i32 @bn_rshift_secret_shift(ptr noundef %i.t, ptr noundef %i.q, i32 noundef %i.r, ptr noundef %2)
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !186  ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i, label %bn_minimal_width.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.05.i.i = phi i32 [ %i.w, %.lr.ph.i.i ], [ %i.ae, %bb.h ] ; 4 uses
  %i.z = zext nneg i32 %.05.i.i to i64
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !94
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bn_minimal_width.exit.thread7.i

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %.05.i.i, -1
  %i.af = icmp sgt i32 %.05.i.i, 1
  br i1 %i.af, label %bb.g, label %BN_num_bits.exit, !llvm.loop !192

bn_minimal_width.exit.i:                          ; preds = %bb.f
  %i.ag = icmp eq i32 %i.w, 0
  br i1 %i.ag, label %BN_num_bits.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i: ; preds = %bn_minimal_width.exit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !185
  br label %bn_minimal_width.exit.thread7.i

bn_minimal_width.exit.thread7.i:                  ; preds = %bb.g, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i
  %i.ah = phi ptr [ %.pre.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %i.y, %bb.g ]
  %.0.lcssa.i9.i = phi i32 [ %i.w, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i ], [ %.05.i.i, %bb.g ]
  %i.ai = add nsw i32 %.0.lcssa.i9.i, -1          ; 2 uses
  %i.aj = shl nsw i32 %i.ai, 6
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !94 ; 3 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = lshr i64 %i.am, 32                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.ao, 0                ; 2 uses
  %i.ap = select i1 %.not.i.i, i32 0, i32 32
  %i.aq = zext i1 %i.an to i32
  %i.ar = select i1 %.not.i.i, i64 %i.am, i64 %i.ao ; 2 uses
  %i.as = lshr i64 %i.ar, 16                      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.as, 0              ; 2 uses
  %i.at = select i1 %.not52.i.i, i32 0, i32 16
  %i.au = select i1 %.not52.i.i, i64 %i.ar, i64 %i.as ; 2 uses
  %i.av = lshr i64 %i.au, 8                       ; 2 uses
  %.not53.i.i = icmp eq i64 %i.av, 0              ; 2 uses
  %i.aw = select i1 %.not53.i.i, i32 0, i32 8
  %i.ax = select i1 %.not53.i.i, i64 %i.au, i64 %i.av ; 2 uses
  %i.ay = lshr i64 %i.ax, 4                       ; 2 uses
  %.not54.i.i = icmp eq i64 %i.ay, 0              ; 2 uses
  %i.az = select i1 %.not54.i.i, i32 0, i32 4
  %i.ba = select i1 %.not54.i.i, i64 %i.ax, i64 %i.ay ; 2 uses
  %i.bb = lshr i64 %i.ba, 2                       ; 2 uses
  %.not55.i.i = icmp eq i64 %i.bb, 0              ; 2 uses
  %i.bc = select i1 %.not55.i.i, i32 0, i32 2
  %i.bd = select i1 %.not55.i.i, i64 %i.ba, i64 %i.bb
  %i.be = icmp samesign ugt i64 %i.bd, 1
  %.neg.i.i = zext i1 %i.be to i32
  %i.bf = or disjoint i32 %i.aj, %i.aq
  %i.bg = or disjoint i32 %i.bf, %i.ap
  %i.bh = or disjoint i32 %i.bg, %i.at
  %i.bi = or disjoint i32 %i.bh, %i.aw
  %i.bj = or disjoint i32 %i.bi, %i.az
  %i.bk = or disjoint i32 %i.bj, %i.bc
  %i.bl = add i32 %i.bk, %.neg.i.i
  br label %BN_num_bits.exit

BN_num_bits.exit:                                 ; preds = %bb.h, %bn_minimal_width.exit.i, %bn_minimal_width.exit.thread7.i
  %.0.i = phi i32 [ %i.bl, %bn_minimal_width.exit.thread7.i ], [ 0, %bn_minimal_width.exit.i ], [ 0, %bb.h ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.0.i, ptr %i.bm, align 8, !tbaa !657
  %i.bn = load ptr, ptr %i.f, align 8, !tbaa !654
  %i.bo = tail call i32 @bn_one_to_montgomery(ptr noundef %i.bn, ptr noundef %1, ptr noundef %2)
  %.not31 = icmp eq i32 %i.bo, 0
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %BN_num_bits.exit
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !655
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !654
  %i.br = tail call i32 @bn_usub_consttime(ptr noundef %i.bp, ptr noundef nonnull %i.a, ptr noundef %i.bq)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %BN_num_bits.exit, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %BN_num_bits.exit ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.br, %bb.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @BN_count_low_zero_bits(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !185
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.bk, %bb.b ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.bk, %bb.b ]
  %.01518 = phi i32 [ 0, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load i64, ptr %i.e, align 8, !tbaa !94   ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  %.neg.i.i = sext i1 %i.g to i32                 ; 2 uses
  %i.h = xor i32 %.neg.i.i, -1
  %i.i = or i32 %.01518, %i.h
  %.mask.i = and i64 %i.f, 4294967295
  %i.j = icmp eq i64 %.mask.i, 0                  ; 2 uses
  %.neg.i.i.i = sext i1 %i.j to i64
  %i.k = select i1 %i.j, i64 32, i64 0
  %i.l = lshr i64 %i.f, 32
  %i.m = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i) #38, !srcloc !156 ; 2 uses
  %i.n = and i64 %i.m, %i.l
  %i.o = xor i64 %i.m, -1
  %i.p = and i64 %i.f, %i.o
  %i.q = or disjoint i64 %i.n, %i.p               ; 3 uses
  %.mask39.i = and i64 %i.q, 65535
  %i.r = icmp eq i64 %.mask39.i, 0                ; 2 uses
  %.neg.i.i34.i = sext i1 %i.r to i64
  %i.s = select i1 %i.r, i64 16, i64 0
  %i.t = or disjoint i64 %i.s, %i.k
  %i.u = lshr i64 %i.q, 16
  %i.v = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i34.i) #38, !srcloc !156 ; 2 uses
  %i.w = and i64 %i.u, %i.v
  %i.x = xor i64 %i.v, -1
  %i.y = and i64 %i.q, %i.x
  %i.z = or disjoint i64 %i.w, %i.y               ; 3 uses
  %.mask40.i = and i64 %i.z, 255
  %i.aa = icmp eq i64 %.mask40.i, 0               ; 2 uses
  %.neg.i.i35.i = sext i1 %i.aa to i64
  %i.ab = select i1 %i.aa, i64 8, i64 0
  %i.ac = or disjoint i64 %i.t, %i.ab
  %i.ad = lshr i64 %i.z, 8
  %i.ae = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i35.i) #38, !srcloc !156 ; 2 uses
  %i.af = and i64 %i.ad, %i.ae
  %i.ag = xor i64 %i.ae, -1
  %i.ah = and i64 %i.z, %i.ag
  %i.ai = or disjoint i64 %i.af, %i.ah            ; 3 uses
  %.mask41.i = and i64 %i.ai, 15
  %i.aj = icmp eq i64 %.mask41.i, 0               ; 2 uses
  %.neg.i.i36.i = sext i1 %i.aj to i64
  %i.ak = select i1 %i.aj, i64 4, i64 0
  %i.al = or disjoint i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.ai, 4
  %i.an = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i36.i) #38, !srcloc !156 ; 2 uses
  %i.ao = and i64 %i.am, %i.an
  %i.ap = xor i64 %i.an, -1
  %i.aq = and i64 %i.ai, %i.ap
  %i.ar = or disjoint i64 %i.ao, %i.aq            ; 3 uses
  %.mask42.i = and i64 %i.ar, 3
  %i.as = icmp eq i64 %.mask42.i, 0               ; 2 uses
  %.neg.i.i37.i = sext i1 %i.as to i64
  %i.at = select i1 %i.as, i64 2, i64 0
  %i.au = or disjoint i64 %i.al, %i.at
  %i.av = lshr i64 %i.ar, 2
  %i.aw = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i37.i) #38, !srcloc !156 ; 2 uses
  %i.ax = and i64 %i.av, %i.aw
  %i.ay = xor i64 %i.aw, -1
  %i.az = and i64 %i.ar, %i.ay
  %i.ba = or disjoint i64 %i.ax, %i.az
  %i.bb = and i64 %i.ba, 1
  %i.bc = or disjoint i64 %i.au, %i.bb
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.be = shl i32 %indvars.iv.tr, 6
  %i.bf = or i32 %i.be, %i.bd
  %i.bg = xor i32 %i.bf, 1
  %i.bh = or i32 %.01518, %.neg.i.i
  %i.bi = xor i32 %i.bh, -1
  %i.bj = and i32 %i.bg, %i.bi
  %i.bk = or i32 %i.bj, %.019                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !658
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @bn_miller_rabin_iteration(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !291
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.b, label %BN_CTX_start.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !292
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !293  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !294
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !290
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

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
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !290
  %i.q = shl nuw i64 %i.m, 3
  %i.r = tail call ptr @OPENSSL_realloc(ptr noundef %i.p, i64 noundef %i.q) #36 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !290
  store i64 %i.m, ptr %i.h, align 8, !tbaa !294
  %.pre26.i.i = load i64, ptr %i.f, align 8, !tbaa !293
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.e ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store i64 %i.e, ptr %i.v, align 8, !tbaa !94
  %i.w = load i64, ptr %i.f, align 8, !tbaa !293
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !293
  br label %BN_CTX_start.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !291
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 41
  store i8 1, ptr %i.y, align 1, !tbaa !295
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.a, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.f
  %i.z = tail call ptr @BN_CTX_get(ptr noundef nonnull %4) ; 17 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread133, label %bb.g

bb.g:                                             ; preds = %BN_CTX_start.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !653
  %i.ae = tail call i32 @BN_mod_exp_mont_consttime(ptr noundef nonnull %i.z, ptr noundef %2, ptr noundef %i.ad, ptr noundef nonnull %i.ab, ptr noundef nonnull %4, ptr noundef %3)
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.thread133, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = tail call range(i32 0, 2) i32 @BN_mod_mul_montgomery(ptr noundef nonnull %i.z, ptr noundef nonnull readonly %i.z, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %3, ptr noundef nonnull %4)
  %.not50 = icmp eq i32 %i.af, 0
  br i1 %.not50, label %.thread133, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !654 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !186 ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !186 ; 5 uses
  %i.am = icmp slt i32 %i.aj, %i.al
  br i1 %i.am, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !185 ; 2 uses
  %i.ao = sext i32 %i.aj to i64                   ; 4 uses
  %wide.trip.count.i = sext i32 %i.al to i64      ; 2 uses
  %i.ap = sub nsw i64 %wide.trip.count.i, %i.ao   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ap, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.ap, -4                      ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.ao
  %invariant.gep = getelementptr [8 x i8], ptr %i.an, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi204 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !94
  %wide.load205 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !94
  %i.as = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.at = or <2 x i64> %wide.load205, %vec.phi204 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !659

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.at, %i.as
  %i.av = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ao, %.lr.ph.i ], [ %i.aq, %middle.block ]
  %.03135.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %middle.block ]
  br label %scalar.ph

.preheader.i:                                     ; preds = %scalar.ph, %middle.block, %bb.i
  %.031.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.av, %middle.block ], [ %i.bj, %scalar.ph ] ; 3 uses
  %i.aw = icmp slt i32 %i.al, %i.aj
  br i1 %i.aw, label %.lr.ph40.i, label %._crit_edge.i

.lr.ph40.i:                                       ; preds = %.preheader.i
  %i.ax = load ptr, ptr %i.z, align 8, !tbaa !185 ; 2 uses
  %i.ay = sext i32 %i.al to i64                   ; 4 uses
  %wide.trip.count54.i = sext i32 %i.aj to i64    ; 2 uses
  %i.az = sub nsw i64 %wide.trip.count54.i, %i.ay ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.az, 4
  br i1 %min.iters.check207, label %scalar.ph206.preheader, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph40.i
  %n.vec209 = and i64 %i.az, -4                   ; 3 uses
  %i.ba = add nsw i64 %n.vec209, %i.ay
  %i.bb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.031.lcssa.i, i64 0
  %invariant.gep460 = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 2 uses
  %vec.phi212 = phi <2 x i64> [ %i.bb, %vector.ph208 ], [ %i.bd, %vector.body210 ]
  %vec.phi213 = phi <2 x i64> [ zeroinitializer, %vector.ph208 ], [ %i.be, %vector.body210 ]
  %gep461 = getelementptr [8 x i8], ptr %invariant.gep460, i64 %index211 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %gep461, i64 16
  %wide.load214 = load <2 x i64>, ptr %gep461, align 8, !tbaa !94
  %wide.load215 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !94
  %i.bd = or <2 x i64> %wide.load214, %vec.phi212 ; 2 uses
  %i.be = or <2 x i64> %wide.load215, %vec.phi213 ; 2 uses
  %index.next216 = add nuw i64 %index211, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.bf, label %middle.block217, label %vector.body210, !llvm.loop !660

middle.block217:                                  ; preds = %vector.body210
  %bin.rdx218 = or <2 x i64> %i.be, %i.bd
  %i.bg = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx218) ; 2 uses
  %cmp.n219 = icmp eq i64 %i.az, %n.vec209
  br i1 %cmp.n219, label %._crit_edge.i, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %.lr.ph40.i, %middle.block217
  %indvars.iv51.i.ph = phi i64 [ %i.ay, %.lr.ph40.i ], [ %i.ba, %middle.block217 ]
  %.138.i.ph = phi i64 [ %.031.lcssa.i, %.lr.ph40.i ], [ %i.bg, %middle.block217 ]
  br label %scalar.ph206

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.03135.i = phi i64 [ %i.bj, %scalar.ph ], [ %.03135.i.ph, %scalar.ph.preheader ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !94
  %i.bj = or i64 %i.bi, %.03135.i                 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %scalar.ph, !llvm.loop !661

._crit_edge.i:                                    ; preds = %scalar.ph206, %middle.block217, %.preheader.i
  %.1.lcssa.i = phi i64 [ %.031.lcssa.i, %.preheader.i ], [ %i.bg, %middle.block217 ], [ %i.ca, %scalar.ph206 ] ; 3 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.al) ; 3 uses
  %i.bk = icmp sgt i32 %..i, 0
  br i1 %i.bk, label %.lr.ph45.i, label %BN_equal_consttime.exit
end_hunk_0
begin_hunk_1_@slhdsa_fors_sign:bb.a
  %i.j = shl nuw nsw i32 %i.i, 8                  ; 2 uses
  %i.k = or disjoint i32 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i32
  %i.o = lshr i32 %i.k, 12
  %i.p = trunc nuw nsw i32 %i.o to i16
  store i16 %i.p, ptr %i.c, align 16, !tbaa !639
  %.masked.i = and i32 %i.j, 3840
  %i.q = or disjoint i32 %.masked.i, %i.n
  %i.r = trunc nuw nsw i32 %i.q to i16
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.r, ptr %i.s, align 2, !tbaa !639
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw nsw i32 %i.z, 8                 ; 2 uses
  %i.ab = or disjoint i32 %i.aa, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = lshr i32 %i.ab, 12
  %i.ag = trunc nuw nsw i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.ag, ptr %i.ah, align 4, !tbaa !639
  %.masked.1.i = and i32 %i.aa, 3840
  %i.ai = or disjoint i32 %.masked.1.i, %i.ae
  %i.aj = trunc nuw nsw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !639
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 8                ; 2 uses
  %i.at = or disjoint i32 %i.as, %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i32
  %i.ax = lshr i32 %i.at, 12
  %i.ay = trunc nuw nsw i32 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.ay, ptr %i.az, align 8, !tbaa !639
  %.masked.2.i = and i32 %i.as, 3840
  %i.ba = or disjoint i32 %.masked.2.i, %i.aw
  %i.bb = trunc nuw nsw i32 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !639
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = zext i8 %i.be to i32
  %i.bg = shl nuw nsw i32 %i.bf, 16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8                ; 2 uses
  %i.bl = or disjoint i32 %i.bk, %i.bg
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = zext i8 %i.bn to i32
  %i.bp = lshr i32 %i.bl, 12
  %i.bq = trunc nuw nsw i32 %i.bp to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i16 %i.bq, ptr %i.br, align 4, !tbaa !639
  %.masked.3.i = and i32 %i.bk, 3840
  %i.bs = or disjoint i32 %.masked.3.i, %i.bo
  %i.bt = trunc nuw nsw i32 %i.bs to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !639
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 16
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !13
  %i.cb = zext i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 8                ; 2 uses
  %i.cd = or disjoint i32 %i.cc, %i.by
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = zext i8 %i.cf to i32
  %i.ch = lshr i32 %i.cd, 12
  %i.ci = trunc nuw nsw i32 %i.ch to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i16 %i.ci, ptr %i.cj, align 16, !tbaa !639
  %.masked.4.i = and i32 %i.cc, 3840
  %i.ck = or disjoint i32 %.masked.4.i, %i.cg
  %i.cl = trunc nuw nsw i32 %i.ck to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !639
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 16
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 8                ; 2 uses
  %i.cv = or disjoint i32 %i.cu, %i.cq
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i32
  %i.cz = lshr i32 %i.cv, 12
  %i.da = trunc nuw nsw i32 %i.cz to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 %i.da, ptr %i.db, align 4, !tbaa !639
  %.masked.5.i = and i32 %i.cu, 3840
  %i.dc = or disjoint i32 %.masked.5.i, %i.cy
  %i.dd = trunc nuw nsw i32 %i.dc to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !639
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 16
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8                ; 2 uses
  %i.dn = or disjoint i32 %i.dm, %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = zext i8 %i.dp to i32
  %i.dr = lshr i32 %i.dn, 12
  %i.ds = trunc nuw nsw i32 %i.dr to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 %i.ds, ptr %i.dt, align 8, !tbaa !639
  %.masked.6.i = and i32 %i.dm, 3840
  %i.du = or disjoint i32 %.masked.6.i, %i.dq
  %i.dv = trunc nuw nsw i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !639
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 17
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.026 = phi i64 [ 0, %bb.a ], [ %i.ic, %bb.c ]  ; 27 uses
  store i8 0, ptr %i.dx, align 1, !tbaa !13
  %i.ef = mul nuw nsw i64 %.026, 208
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ef
  %i.eh = shl nuw nsw i64 %.026, 12               ; 2 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.026
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !639 ; 2 uses
  %i.ek = zext i16 %i.ej to i64
  %i.el = add nuw nsw i64 %i.eh, %i.ek
  %i.em = trunc nuw nsw i64 %i.el to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  store i64 0, ptr %i.dy, align 2
  store i8 6, ptr %i.dz, align 1, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(9) %4, i64 9, i1 false)
  %i.en = load i8, ptr %i.ea, align 1, !tbaa !13
  store i8 %i.en, ptr %i.eb, align 4, !tbaa !13
  %i.eo = load i8, ptr %i.ec, align 1, !tbaa !13
  store i8 %i.eo, ptr %i.ed, align 1, !tbaa !13
  %i.ep = call noundef i32 @llvm.bswap.i32(i32 %i.em)
  store i32 %i.ep, ptr %i.ee, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.eq = call i32 @SHA256_Init(ptr noundef nonnull %5) #36 ; 0 uses
  %i.er = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.es = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.et = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef nonnull %i.b, i64 noundef 22) #36 ; 0 uses
  %i.eu = call i32 @SHA256_Update(ptr noundef nonnull %5, ptr noundef %2, i64 noundef 16) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ev = call i32 @SHA256_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %5) #36 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.eg, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.ew = zext i16 %i.ej to i32                   ; 12 uses
  %i.ex = xor i32 %i.ew, 1
  %i.ey = mul i64 %.026, 208
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = trunc nuw i64 %i.eh to i32
  %i.fc = add nuw nsw i32 %i.ex, %i.fb
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.fa, ptr noundef %2, i32 noundef %i.fc, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %4)
  %i.fd = lshr i32 %i.ew, 1
  %i.fe = xor i32 %i.fd, 1
  %i.ff = mul i64 %.026, 208
  %i.fg = getelementptr i8, ptr %0, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 32
  %.026.tr = trunc i64 %.026 to i32
  %i.fi = shl i32 %.026.tr, 11
  %i.fj = add nuw nsw i32 %i.fe, %i.fi
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.fh, ptr noundef %2, i32 noundef %i.fj, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %4)
  %i.fk = lshr i32 %i.ew, 2
  %i.fl = xor i32 %i.fk, 1
  %i.fm = mul i64 %.026, 208
  %i.fn = getelementptr i8, ptr %0, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 48
  %.026.tr27 = trunc i64 %.026 to i32
  %i.fp = shl i32 %.026.tr27, 10
  %i.fq = add nuw nsw i32 %i.fl, %i.fp
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.fo, ptr noundef %2, i32 noundef %i.fq, i32 noundef 2, ptr noundef %3, ptr noundef nonnull %4)
  %i.fr = lshr i32 %i.ew, 3
  %i.fs = xor i32 %i.fr, 1
  %i.ft = mul i64 %.026, 208
  %i.fu = getelementptr i8, ptr %0, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 64
  %.026.tr28 = trunc i64 %.026 to i32
  %i.fw = shl i32 %.026.tr28, 9
  %i.fx = add nuw nsw i32 %i.fs, %i.fw
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.fv, ptr noundef %2, i32 noundef %i.fx, i32 noundef 3, ptr noundef %3, ptr noundef nonnull %4)
  %i.fy = lshr i32 %i.ew, 4
  %i.fz = xor i32 %i.fy, 1
  %i.ga = mul i64 %.026, 208
  %i.gb = getelementptr i8, ptr %0, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 80
  %.026.tr29 = trunc i64 %.026 to i32
  %i.gd = shl i32 %.026.tr29, 8
  %i.ge = add nuw nsw i32 %i.fz, %i.gd
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.gc, ptr noundef %2, i32 noundef %i.ge, i32 noundef 4, ptr noundef %3, ptr noundef nonnull %4)
  %i.gf = lshr i32 %i.ew, 5
  %i.gg = xor i32 %i.gf, 1
  %i.gh = mul i64 %.026, 208
  %i.gi = getelementptr i8, ptr %0, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 96
  %.026.tr30 = trunc i64 %.026 to i32
  %i.gk = shl i32 %.026.tr30, 7
  %i.gl = add nuw nsw i32 %i.gg, %i.gk
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.gj, ptr noundef %2, i32 noundef %i.gl, i32 noundef 5, ptr noundef %3, ptr noundef nonnull %4)
  %i.gm = lshr i32 %i.ew, 6
  %i.gn = xor i32 %i.gm, 1
  %i.go = mul i64 %.026, 208
  %i.gp = getelementptr i8, ptr %0, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 112
  %.026.tr31 = trunc i64 %.026 to i32
  %i.gr = shl i32 %.026.tr31, 6
  %i.gs = add nuw nsw i32 %i.gn, %i.gr
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.gq, ptr noundef %2, i32 noundef %i.gs, i32 noundef 6, ptr noundef %3, ptr noundef nonnull %4)
  %i.gt = lshr i32 %i.ew, 7
  %i.gu = xor i32 %i.gt, 1
  %i.gv = mul i64 %.026, 208
  %i.gw = getelementptr i8, ptr %0, i64 %i.gv
  %i.gx = getelementptr i8, ptr %i.gw, i64 128
  %.026.tr32 = trunc i64 %.026 to i32
  %i.gy = shl i32 %.026.tr32, 5
  %i.gz = add nuw nsw i32 %i.gu, %i.gy
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.gx, ptr noundef %2, i32 noundef %i.gz, i32 noundef 7, ptr noundef %3, ptr noundef nonnull %4)
  %i.ha = lshr i32 %i.ew, 8
  %i.hb = xor i32 %i.ha, 1
  %i.hc = mul i64 %.026, 208
  %i.hd = getelementptr i8, ptr %0, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 144
  %.026.tr33 = trunc i64 %.026 to i32
  %i.hf = shl i32 %.026.tr33, 4
  %i.hg = add nuw nsw i32 %i.hb, %i.hf
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.he, ptr noundef %2, i32 noundef %i.hg, i32 noundef 8, ptr noundef %3, ptr noundef nonnull %4)
  %i.hh = lshr i32 %i.ew, 9
  %i.hi = xor i32 %i.hh, 1
  %i.hj = mul i64 %.026, 208
  %i.hk = getelementptr i8, ptr %0, i64 %i.hj
  %i.hl = getelementptr i8, ptr %i.hk, i64 160
  %.026.tr34 = trunc i64 %.026 to i32
  %i.hm = shl i32 %.026.tr34, 3
  %i.hn = add nuw nsw i32 %i.hi, %i.hm
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.hl, ptr noundef %2, i32 noundef %i.hn, i32 noundef 9, ptr noundef %3, ptr noundef nonnull %4)
  %i.ho = lshr i32 %i.ew, 10
  %i.hp = xor i32 %i.ho, 1
  %i.hq = mul i64 %.026, 208
  %i.hr = getelementptr i8, ptr %0, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 176
  %.026.tr35 = trunc i64 %.026 to i32
  %i.ht = shl i32 %.026.tr35, 2
  %i.hu = add nuw nsw i32 %i.hp, %i.ht
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.hs, ptr noundef %2, i32 noundef %i.hu, i32 noundef 10, ptr noundef %3, ptr noundef nonnull %4)
  %i.hv = lshr i32 %i.ew, 11
  %i.hw = xor i32 %i.hv, 1
  %i.hx = mul i64 %.026, 208
  %i.hy = getelementptr i8, ptr %0, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 192
  %.026.tr36 = trunc i64 %.026 to i32
  %i.ia = shl i32 %.026.tr36, 1
  %i.ib = add nuw nsw i32 %i.hw, %i.ia
  call void @slhdsa_fors_treehash(ptr noundef nonnull %i.hz, ptr noundef %2, i32 noundef %i.ib, i32 noundef 11, ptr noundef %3, ptr noundef nonnull %4)
  %i.ic = add nuw nsw i64 %.026, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ic, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1433
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @slhdsa_fors_pk_from_sig(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef initializes((17, 22)) %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %6 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %7 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %8 = alloca %struct.sha256_state_st, align 4    ; 8 uses
  %i.d = alloca [32 x i8], align 16               ; 4 uses
  %i.e = alloca [14 x i16], align 16              ; 17 uses
  %i.f = alloca [32 x i8], align 16               ; 7 uses
  %i.g = alloca [224 x i8], align 16              ; 4 uses
  %.sroa.0 = alloca [16 x i8], align 16           ; 6 uses
  %.sroa.7 = alloca [16 x i8], align 16           ; 6 uses
  %i.h = alloca [32 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %i.i = load i8, ptr %2, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8                  ; 2 uses
  %i.p = or disjoint i32 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32
  %i.t = lshr i32 %i.p, 12
  %i.u = trunc nuw nsw i32 %i.t to i16
  store i16 %i.u, ptr %i.e, align 16, !tbaa !639
  %.masked.i = and i32 %i.o, 3840
  %i.v = or disjoint i32 %.masked.i, %i.s
  %i.w = trunc nuw nsw i32 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.w, ptr %i.x, align 2, !tbaa !639
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8                ; 2 uses
  %i.ag = or disjoint i32 %i.af, %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i32
  %i.ak = lshr i32 %i.ag, 12
  %i.al = trunc nuw nsw i32 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.al, ptr %i.am, align 4, !tbaa !639
  %.masked.1.i = and i32 %i.af, 3840
  %i.an = or disjoint i32 %.masked.1.i, %i.aj
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !639
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8                ; 2 uses
  %i.ay = or disjoint i32 %i.ax, %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i32
  %i.bc = lshr i32 %i.ay, 12
  %i.bd = trunc nuw nsw i32 %i.bc to i16
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.bd, ptr %i.be, align 8, !tbaa !639
  %.masked.2.i = and i32 %i.ax, 3840
  %i.bf = or disjoint i32 %.masked.2.i, %i.bb
  %i.bg = trunc nuw nsw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !639
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 8                ; 2 uses
  %i.bq = or disjoint i32 %i.bp, %i.bl
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = zext i8 %i.bs to i32
  %i.bu = lshr i32 %i.bq, 12
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i16 %i.bv, ptr %i.bw, align 4, !tbaa !639
  %.masked.3.i = and i32 %i.bp, 3840
  %i.bx = or disjoint i32 %.masked.3.i, %i.bt
  %i.by = trunc nuw nsw i32 %i.bx to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !639
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 16
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 8                ; 2 uses
  %i.ci = or disjoint i32 %i.ch, %i.cd
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = zext i8 %i.ck to i32
  %i.cm = lshr i32 %i.ci, 12
  %i.cn = trunc nuw nsw i32 %i.cm to i16
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i16 %i.cn, ptr %i.co, align 16, !tbaa !639
  %.masked.4.i = and i32 %i.ch, 3840
  %i.cp = or disjoint i32 %.masked.4.i, %i.cl
  %i.cq = trunc nuw nsw i32 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !639
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = zext i8 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 16
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 8                ; 2 uses
  %i.da = or disjoint i32 %i.cz, %i.cv
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i32
  %i.de = lshr i32 %i.da, 12
  %i.df = trunc nuw nsw i32 %i.de to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i16 %i.df, ptr %i.dg, align 4, !tbaa !639
  %.masked.5.i = and i32 %i.cz, 3840
  %i.dh = or disjoint i32 %.masked.5.i, %i.dd
  %i.di = trunc nuw nsw i32 %i.dh to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !639
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13
  %i.dm = zext i8 %i.dl to i32
  %i.dn = shl nuw nsw i32 %i.dm, 16
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 19
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 8                ; 2 uses
  %i.ds = or disjoint i32 %i.dr, %i.dn
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13
  %i.dv = zext i8 %i.du to i32
  %i.dw = lshr i32 %i.ds, 12
  %i.dx = trunc nuw nsw i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i16 %i.dx, ptr %i.dy, align 8, !tbaa !639
  %.masked.6.i = and i32 %i.dr, 3840
  %i.dz = or disjoint i32 %.masked.6.i, %i.dv
  %i.ea = trunc nuw nsw i32 %i.dz to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 26
  store i16 %i.ea, ptr %i.eb, align 2, !tbaa !639
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 17 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(32) %4, i64 32, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.ef, i8 0, i64 12, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 9
  store i8 4, ptr %i.eg, align 1, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(9) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(9) %4, i64 9, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i8 %i.ei, ptr %i.ej, align 4, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 13
  store i8 %i.el, ptr %i.em, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.en = call i32 @SHA256_Init(ptr noundef nonnull %8) #36 ; 0 uses
  %i.eo = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef %3, i64 noundef 16) #36 ; 0 uses
  %i.ep = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull @_ZZL12slhdsa_thashPhPKhmS1_S_E6kZeros, i64 noundef 48) #36 ; 0 uses
  %i.eq = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.h, i64 noundef 22) #36 ; 0 uses
  %i.er = call i32 @SHA256_Update(ptr noundef nonnull %8, ptr noundef nonnull %i.g, i64 noundef 224) #36 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
end_hunk_1
