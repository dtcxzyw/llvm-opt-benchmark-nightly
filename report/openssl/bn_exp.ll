Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_exp?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@BN_mod_exp_mont_word:bb.a
._crit_edge.thread:                               ; preds = %bb.r
  %.not141215 = icmp eq i64 %.0131, 1
  br i1 %.not141215, label %.thread229, label %.thread222

bb.ag:                                            ; preds = %._crit_edge
  br i1 %i.ai, label %bb.ai, label %.thread222

.thread222:                                       ; preds = %._crit_edge.thread, %bb.ag
  %.0116.lcssa218228 = phi i64 [ %.1117, %bb.ag ], [ %.0131, %._crit_edge.thread ]
  %.0108.lcssa220227 = phi ptr [ %.5113, %bb.ag ], [ %i.o, %._crit_edge.thread ] ; 4 uses
  %i.aj = tail call i32 @BN_set_word(ptr noundef %.0108.lcssa220227, i64 noundef %.0116.lcssa218228) #7
  %.not145 = icmp eq i32 %i.aj, 0
  br i1 %.not145, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.thread222
  %i.ak = tail call i32 @BN_to_montgomery(ptr noundef %.0108.lcssa220227, ptr noundef %.0108.lcssa220227, ptr noundef nonnull %.0128, ptr noundef %4) #7
  %.not146 = icmp eq i32 %i.ak, 0
  br i1 %.not146, label %.loopexit, label %.thread184

bb.ai:                                            ; preds = %bb.ag
  %i.al = tail call i32 @BN_mul_word(ptr noundef %.5113, i64 noundef %.1117) #7
  %.not143 = icmp eq i32 %i.al, 0
  br i1 %.not143, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.am = tail call i32 @BN_div(ptr noundef null, ptr noundef %.5, ptr noundef %.5113, ptr noundef %3, ptr noundef %4) #7
  %.not144 = icmp eq i32 %i.am, 0
  br i1 %.not144, label %.loopexit, label %.thread184

bb.ak:                                            ; preds = %._crit_edge
  br i1 %i.ai, label %.thread184, label %.thread229

.thread229:                                       ; preds = %._crit_edge.thread, %bb.ak
  %i.an = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  %.not149 = icmp eq i32 %i.an, 0
  br i1 %.not149, label %.loopexit, label %bb.al

.thread184:                                       ; preds = %bb.aj, %bb.ah, %bb.ak
  %.6188 = phi ptr [ %.5113, %bb.ak ], [ %.5, %bb.aj ], [ %.0108.lcssa220227, %bb.ah ]
  %i.ao = tail call i32 @BN_from_montgomery(ptr noundef %0, ptr noundef %.6188, ptr noundef nonnull %.0128, ptr noundef %4) #7
  %.not148 = icmp eq i32 %i.ao, 0
  br i1 %.not148, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %.thread184, %.thread229
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.ae, %bb.ab, %bb.ac, %.thread, %bb.v, %bb.w, %bb.t, %bb.u, %.thread184, %.thread229, %bb.ai, %bb.aj, %.thread222, %bb.ah, %bb.n, %bb.al
  %.1129 = phi ptr [ null, %bb.n ], [ %.0128, %bb.aj ], [ %.0128, %bb.ai ], [ %.0128, %bb.al ], [ %.0128, %.thread229 ], [ %.0128, %.thread184 ], [ %.0128, %bb.ah ], [ %.0128, %.thread222 ], [ %.0128, %bb.u ], [ %.0128, %bb.t ], [ %.0128, %bb.w ], [ %.0128, %bb.v ], [ %.0128, %.thread ], [ %.0128, %bb.ac ], [ %.0128, %bb.ab ], [ %.0128, %bb.ae ], [ %.0128, %bb.ad ]
  %.1126 = phi i32 [ 0, %bb.n ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 1, %bb.al ], [ 0, %.thread229 ], [ 0, %.thread184 ], [ 0, %bb.ah ], [ 0, %.thread222 ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %.thread ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %i.ap = icmp eq ptr %5, null
  br i1 %i.ap, label %.thread190, label %bb.am

.thread190:                                       ; preds = %bb.p, %bb.q, %.loopexit
  %.1126195 = phi i32 [ %.1126, %.loopexit ], [ 0, %bb.q ], [ 0, %bb.p ]
  %.1129193 = phi ptr [ %.1129, %.loopexit ], [ %i.r, %bb.q ], [ null, %bb.p ]
  tail call void @BN_MONT_CTX_free(ptr noundef %.1129193) #7
  br label %bb.am

bb.am:                                            ; preds = %.thread190, %.loopexit
  %.1126194 = phi i32 [ %.1126195, %.thread190 ], [ %.1126, %.loopexit ]
  tail call void @BN_CTX_end(ptr noundef %4) #7
  br label %bb.an

bb.an:                                            ; preds = %bb.j, %bb.k, %bb.am, %bb.m, %bb.e, %bb.c
  %.0130 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.m ], [ %.1126194, %bb.am ], [ 1, %bb.j ], [ %i.m, %bb.k ]
  ret i32 %.0130
}

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_mont(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i32 @BN_is_odd(ptr noundef %3) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 327, ptr noundef nonnull @__func__.BN_mod_exp_mont) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 102, ptr noundef null) #7
  br label %BN_mod_exp_mont_consttime.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = icmp slt i32 %i.d, 1048576
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @BN_get_flags(ptr noundef %2, i32 noundef 4) #7
  %.not151 = icmp eq i32 %i.f, 0
  br i1 %.not151, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @BN_get_flags(ptr noundef %1, i32 noundef 4) #7
  %.not152 = icmp eq i32 %i.g, 0
  br i1 %.not152, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @BN_get_flags(ptr noundef nonnull %3, i32 noundef 4) #7
  %.not153 = icmp eq i32 %i.h, 0
  br i1 %.not153, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.i = tail call i32 @bn_mod_exp_mont_fixed_top(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5), !inline_history !17
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %BN_mod_exp_mont_consttime.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @bn_correct_top(ptr noundef %0) #7, !inline_history !17
  br label %BN_mod_exp_mont_consttime.exit

bb.i:                                             ; preds = %bb.f, %bb.c
  %i.j = tail call i32 @BN_num_bits(ptr noundef %2) #7 ; 6 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @BN_abs_is_word(ptr noundef nonnull %3, i64 noundef 1) #7
  %.not171 = icmp eq i32 %i.l, 0
  br i1 %.not171, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %BN_mod_exp_mont_consttime.exit

bb.l:                                             ; preds = %bb.j
  %i.m = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  br label %BN_mod_exp_mont_consttime.exit

bb.m:                                             ; preds = %bb.i
  tail call void @BN_CTX_start(ptr noundef %4) #7
  %i.n = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 2 uses
  %i.o = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 13 uses
  %i.p = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 7 uses
  store ptr %i.p, ptr %i.a, align 16, !tbaa !19
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread177, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not154 = icmp eq ptr %5, null
  br i1 %.not154, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.r = tail call ptr @BN_MONT_CTX_new() #7      ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread187, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = tail call i32 @BN_MONT_CTX_set(ptr noundef nonnull %i.r, ptr noundef nonnull %3, ptr noundef %4) #7
  %.not155 = icmp eq i32 %i.t, 0
  br i1 %.not155, label %.thread187, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p
  %.0127 = phi ptr [ %i.r, %bb.p ], [ %5, %bb.n ] ; 19 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !13
  %.not156 = icmp eq i32 %i.v, 0
  br i1 %.not156, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.w = tail call i32 @BN_ucmp(ptr noundef nonnull %1, ptr noundef nonnull %3) #7
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.y = tail call i32 @BN_nnmod(ptr noundef nonnull %i.p, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef %4) #7
  %.not157 = icmp eq i32 %i.y, 0
  br i1 %.not157, label %.thread177, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0129 = phi ptr [ %1, %bb.r ], [ %i.p, %bb.s ]
  %i.z = tail call i32 @bn_to_mont_fixed_top(ptr noundef nonnull %i.p, ptr noundef nonnull %.0129, ptr noundef nonnull %.0127, ptr noundef %4) #7
  %.not158 = icmp eq i32 %i.z, 0
  br i1 %.not158, label %.thread177, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aa = icmp sgt i32 %i.j, 671
  br i1 %i.aa, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ab = icmp sgt i32 %i.j, 239
  br i1 %i.ab, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ac = icmp sgt i32 %i.j, 79
  br i1 %i.ac, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ad = icmp sgt i32 %i.j, 23
  br i1 %i.ad, label %.thread, label %.loopexit195

.thread:                                          ; preds = %bb.w, %bb.v, %bb.u, %bb.x
  %i.ae = phi i32 [ 3, %bb.x ], [ 6, %bb.u ], [ 5, %bb.v ], [ 4, %bb.w ] ; 2 uses
  %i.af = tail call i32 @bn_mul_mont_fixed_top(ptr noundef %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.p, ptr noundef nonnull %.0127, ptr noundef %4) #7
  %.not159 = icmp eq i32 %i.af, 0
  br i1 %.not159, label %.thread177, label %bb.y

bb.y:                                             ; preds = %.thread
  %i.ag = add nsw i32 %i.ae, -1                   ; 2 uses
  %.not211 = icmp eq i32 %i.ag, 0
  br i1 %.not211, label %.loopexit195, label %.lr.ph

bb.z:                                             ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next to i32
  %.0138.highbits = lshr i32 %i.ah, %i.ag
  %i.ai = icmp eq i32 %.0138.highbits, 0
  br i1 %i.ai, label %.lr.ph, label %.loopexit195, !llvm.loop !27

.lr.ph:                                           ; preds = %bb.y, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 1, %bb.y ] ; 2 uses
  %i.aj = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !19
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %.thread177, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph
  %i.am = getelementptr i8, ptr %i.ak, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.ao = tail call i32 @bn_mul_mont_fixed_top(ptr noundef nonnull %i.aj, ptr noundef %i.an, ptr noundef %i.n, ptr noundef nonnull %.0127, ptr noundef %4) #7
  %.not170 = icmp eq i32 %i.ao, 0
  br i1 %.not170, label %.thread177, label %bb.z

.loopexit195:                                     ; preds = %bb.z, %bb.y, %bb.x
  %6 = phi i32 [ 1, %bb.x ], [ 1, %bb.y ], [ %i.ae, %bb.z ] ; 2 uses
  %i.ap = add nsw i32 %i.j, -1
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !12  ; 6 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !14
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr [8 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 -8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %.not160 = icmp sgt i64 %i.av, -1
  br i1 %.not160, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.loopexit195
  %i.aw = tail call ptr @bn_wexpand(ptr noundef %i.o, i32 noundef %i.aq) #7
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.thread177, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ay = load ptr, ptr %3, align 8, !tbaa !14    ; 8 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = sub i64 0, %i.az
  %i.bb = load ptr, ptr %i.o, align 8, !tbaa !14  ; 8 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !16
  %i.bc = icmp sgt i32 %i.aq, 1
  br i1 %i.bc, label %.lr.ph200.preheader, label %._crit_edge

.lr.ph200.preheader:                              ; preds = %bb.ac
  %i.bd = ptrtoaddr ptr %i.bb to i64
  %i.be = ptrtoaddr ptr %i.ay to i64
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 4 uses
  %i.bf = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.aq, 7
  %i.bg = sub i64 %i.be, %i.bd
  %diff.check = icmp ugt i64 %i.bg, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph200.preheader241, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph200.preheader
  %n.vec = and i64 %i.bf, -4                      ; 3 uses
  %i.bh = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = or disjoint i64 %index, 1               ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <2 x i64>, ptr %i.bj, align 8, !tbaa !16
  %wide.load235 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !16
  %i.bl = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bm = xor <2 x i64> %wide.load235, splat (i64 -1)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bi ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %i.bl, ptr %i.bn, align 8, !tbaa !16
  store <2 x i64> %i.bm, ptr %i.bo, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph200.preheader241

.lr.ph200.preheader241:                           ; preds = %.lr.ph200.preheader, %middle.block
  %indvars.iv215.ph = phi i64 [ 1, %.lr.ph200.preheader ], [ %i.bh, %middle.block ] ; 4 uses
  %i.bq = sub nsw i64 %wide.trip.count, %indvars.iv215.ph
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol

.lr.ph200.prol:                                   ; preds = %.lr.ph200.preheader241, %.lr.ph200.prol
  %indvars.iv215.prol = phi i64 [ %indvars.iv.next216.prol, %.lr.ph200.prol ], [ %indvars.iv215.ph, %.lr.ph200.preheader241 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph200.prol ], [ 0, %.lr.ph200.preheader241 ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv215.prol
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !16
  %i.bt = xor i64 %i.bs, -1
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv215.prol
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !16
  %indvars.iv.next216.prol = add nuw nsw i64 %indvars.iv215.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph200.prol.loopexit, label %.lr.ph200.prol, !llvm.loop !29

.lr.ph200.prol.loopexit:                          ; preds = %.lr.ph200.prol, %.lr.ph200.preheader241
  %indvars.iv215.unr = phi i64 [ %indvars.iv215.ph, %.lr.ph200.preheader241 ], [ %indvars.iv.next216.prol, %.lr.ph200.prol ]
  %i.bv = sub nsw i64 %indvars.iv215.ph, %wide.trip.count
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge, label %.lr.ph200

.lr.ph200:                                        ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200
  %indvars.iv215 = phi i64 [ %indvars.iv.next216.3, %.lr.ph200 ], [ %indvars.iv215.unr, %.lr.ph200.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv215
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !16
  %i.bz = xor i64 %i.by, -1
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv215
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !16
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next216
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.cd = xor i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next216
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !16
  %indvars.iv.next216.1 = add nuw nsw i64 %indvars.iv215, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next216.1
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !16
  %i.ch = xor i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next216.1
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !16
  %indvars.iv.next216.2 = add nuw nsw i64 %indvars.iv215, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next216.2
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !16
  %i.cl = xor i64 %i.ck, -1
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next216.2
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !16
  %indvars.iv.next216.3 = add nuw nsw i64 %indvars.iv215, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next216.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph200, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph200.prol.loopexit, %.lr.ph200, %middle.block, %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %i.aq, ptr %i.cn, align 8, !tbaa !12
  br label %bb.ae

bb.ad:                                            ; preds = %.loopexit195
  %i.co = tail call ptr @BN_value_one() #7
  %i.cp = tail call i32 @bn_to_mont_fixed_top(ptr noundef %i.o, ptr noundef %i.co, ptr noundef nonnull %.0127, ptr noundef %4) #7
  %.not161 = icmp eq i32 %i.cp, 0
  br i1 %.not161, label %.thread177, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge
  %i.cq = icmp sgt i32 %6, 1
  br label %.outer

.outer:                                           ; preds = %bb.al, %bb.ae
  %.0134.ph = phi i32 [ %i.dk, %bb.al ], [ %i.ap, %bb.ae ]
  %.not163 = phi i1 [ true, %bb.al ], [ false, %bb.ae ] ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %.outer, %bb.ai
  %.0134 = phi i32 [ %i.cv, %bb.ai ], [ %.0134.ph, %.outer ] ; 5 uses
  %i.cr = tail call i32 @BN_is_bit_set(ptr noundef %2, i32 noundef %.0134) #7
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ag, label %.preheader193

.preheader193:                                    ; preds = %bb.af
  br i1 %i.cq, label %.lr.ph204, label %._crit_edge205

bb.ag:                                            ; preds = %bb.af
  br i1 %.not163, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ct = tail call i32 @bn_mul_mont_fixed_top(ptr noundef %i.o, ptr noundef %i.o, ptr noundef %i.o, ptr noundef nonnull %.0127, ptr noundef %4) #7
  %.not168 = icmp eq i32 %i.ct, 0
  br i1 %.not168, label %.thread177, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cu = icmp eq i32 %.0134, 0
  %i.cv = add nsw i32 %.0134, -1
  br i1 %i.cu, label %select.unfold174, label %bb.af

.lr.ph204:                                        ; preds = %.preheader193, %bb.aj
  %.0203 = phi i32 [ %.1, %bb.aj ], [ 1, %.preheader193 ] ; 3 uses
  %.0132202 = phi i32 [ %.1133, %bb.aj ], [ 0, %.preheader193 ] ; 3 uses
  %.2201 = phi i32 [ %i.dc, %bb.aj ], [ 1, %.preheader193 ] ; 4 uses
  %i.cw = sub nsw i32 %.0134, %.2201              ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %._crit_edge205.loopexit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph204
  %i.cy = tail call i32 @BN_is_bit_set(ptr noundef %2, i32 noundef %i.cw) #7
  %.not162 = icmp eq i32 %i.cy, 0                 ; 2 uses
  %i.cz = sub nsw i32 %.2201, %.0132202
  %i.da = shl i32 %.0203, %i.cz
  %i.db = or i32 %i.da, 1
  %.1133 = select i1 %.not162, i32 %.0132202, i32 %.2201 ; 2 uses
  %.1 = select i1 %.not162, i32 %.0203, i32 %i.db ; 2 uses
  %i.dc = add nuw nsw i32 %.2201, 1               ; 2 uses
  %exitcond218.not.a = icmp eq i32 %i.dc, %6
  br i1 %exitcond218.not.a, label %._crit_edge205.loopexit, label %.lr.ph204, !llvm.loop !31

._crit_edge205.loopexit:                          ; preds = %.lr.ph204, %bb.aj
  %.0132.lcssa.ph = phi i32 [ %.1133, %bb.aj ], [ %.0132202, %.lr.ph204 ]
  %.0.lcssa.ph = phi i32 [ %.1, %bb.aj ], [ %.0203, %.lr.ph204 ]
  %i.dd = ashr i32 %.0.lcssa.ph, 1
  %i.de = sext i32 %i.dd to i64
  br label %._crit_edge205

._crit_edge205:                                   ; preds = %._crit_edge205.loopexit, %.preheader193
  %.0132.lcssa = phi i32 [ 0, %.preheader193 ], [ %.0132.lcssa.ph, %._crit_edge205.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %.preheader193 ], [ %i.de, %._crit_edge205.loopexit ]
  %.neg = xor i32 %.0132.lcssa, -1
  br i1 %.not163, label %.preheader, label %.loopexit

bb.ak:                                            ; preds = %.preheader
  %i.df = add nuw i32 %.3210, 1
  %exitcond219.not = icmp eq i32 %.3210, %.0132.lcssa
  br i1 %exitcond219.not, label %.loopexit, label %.preheader, !llvm.loop !32

.preheader:                                       ; preds = %._crit_edge205, %bb.ak
  %.3210 = phi i32 [ %i.df, %bb.ak ], [ 0, %._crit_edge205 ] ; 2 uses
  %i.dg = tail call i32 @bn_mul_mont_fixed_top(ptr noundef %i.o, ptr noundef %i.o, ptr noundef %i.o, ptr noundef nonnull %.0127, ptr noundef %4) #7
  %.not165 = icmp eq i32 %i.dg, 0
  br i1 %.not165, label %.thread177, label %bb.ak

.loopexit:                                        ; preds = %bb.ak, %._crit_edge205
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !19
  %i.dj = tail call i32 @bn_mul_mont_fixed_top(ptr noundef %i.o, ptr noundef %i.o, ptr noundef %i.di, ptr noundef nonnull %.0127, ptr noundef %4) #7
  %.not166 = icmp eq i32 %i.dj, 0
  br i1 %.not166, label %.thread177, label %bb.al

bb.al:                                            ; preds = %.loopexit
  %i.dk = add i32 %.0134, %.neg                   ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %select.unfold174, label %.outer

select.unfold174:                                 ; preds = %bb.al, %bb.ai
  %i.dm = tail call i32 @BN_from_montgomery(ptr noundef %0, ptr noundef %i.o, ptr noundef nonnull %.0127, ptr noundef %4) #7
  %.not169 = icmp ne i32 %i.dm, 0
  %spec.select = zext i1 %.not169 to i32
  br label %.thread177

.thread177:                                       ; preds = %.lr.ph, %bb.aa, %bb.ah, %.loopexit, %.preheader, %select.unfold174, %bb.ad, %bb.ab, %.thread, %bb.t, %bb.s, %bb.m
  %.1137 = phi i32 [ 0, %bb.m ], [ 0, %bb.ah ], [ 0, %.preheader ], [ 0, %bb.ab ], [ 0, %bb.s ], [ %spec.select, %select.unfold174 ], [ 0, %bb.t ], [ 0, %bb.ad ], [ 0, %.thread ], [ 0, %.loopexit ], [ 0, %bb.aa ], [ 0, %.lr.ph ] ; 2 uses
  %.1128 = phi ptr [ null, %bb.m ], [ %.0127, %bb.ah ], [ %.0127, %.preheader ], [ %.0127, %bb.ab ], [ %.0127, %bb.s ], [ %.0127, %select.unfold174 ], [ %.0127, %bb.t ], [ %.0127, %bb.ad ], [ %.0127, %.thread ], [ %.0127, %.loopexit ], [ %.0127, %bb.aa ], [ %.0127, %.lr.ph ]
  %i.dn = icmp eq ptr %5, null
  br i1 %i.dn, label %.thread187, label %bb.am

.thread187:                                       ; preds = %bb.o, %bb.p, %.thread177
  %.1128192 = phi ptr [ %.1128, %.thread177 ], [ null, %bb.o ], [ %i.r, %bb.p ]
  %.1137191 = phi i32 [ %.1137, %.thread177 ], [ 0, %bb.o ], [ 0, %bb.p ]
  tail call void @BN_MONT_CTX_free(ptr noundef %.1128192) #7
  br label %bb.am

bb.am:                                            ; preds = %.thread187, %.thread177
  %.1137190 = phi i32 [ %.1137191, %.thread187 ], [ %.1137, %.thread177 ]
  tail call void @BN_CTX_end(ptr noundef %4) #7
  br label %BN_mod_exp_mont_consttime.exit

BN_mod_exp_mont_consttime.exit:                   ; preds = %bb.h, %bb.g, %bb.k, %bb.l, %bb.am, %bb.b
  %.0140 = phi i32 [ 1, %bb.k ], [ 0, %bb.b ], [ %.1137190, %bb.am ], [ %i.m, %bb.l ], [ 1, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0140
}

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_recp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  %5 = alloca %struct.bn_recp_ctx_st, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.b = tail call i32 @BN_get_flags(ptr noundef %2, i32 noundef 4) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_get_flags(ptr noundef %1, i32 noundef 4) #7
  %.not116 = icmp eq i32 %i.c, 0
  br i1 %.not116, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @BN_get_flags(ptr noundef %3, i32 noundef 4) #7
  %.not117 = icmp eq i32 %i.d, 0
  br i1 %.not117, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 183, ptr noundef nonnull @__func__.BN_mod_exp_recp) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, ptr noundef null) #7
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 @BN_num_bits(ptr noundef %2) #7 ; 6 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @BN_abs_is_word(ptr noundef %3, i64 noundef 1) #7
  %.not132 = icmp eq i32 %i.g, 0
  br i1 %.not132, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %bb.ah

bb.h:                                             ; preds = %bb.f
  %i.h = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  br label %bb.ah

bb.i:                                             ; preds = %bb.e
  call void @BN_RECP_CTX_init(ptr noundef nonnull %5) #7
  call void @BN_CTX_start(ptr noundef %4) #7
  %i.i = call ptr @BN_CTX_get(ptr noundef %4) #7  ; 5 uses
  %i.j = call ptr @BN_CTX_get(ptr noundef %4) #7  ; 6 uses
  store ptr %i.j, ptr %i.a, align 16, !tbaa !19
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread139, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !13
  %.not118 = icmp eq i32 %i.m, 0
  br i1 %.not118, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = call ptr @BN_copy(ptr noundef %i.i, ptr noundef nonnull %3) #7
  %.not119 = icmp eq ptr %i.n, null
  br i1 %.not119, label %.thread139, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !13
  %i.p = call i32 @BN_RECP_CTX_set(ptr noundef nonnull %5, ptr noundef %i.i, ptr noundef %4) #7
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.thread139, label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.r = call i32 @BN_RECP_CTX_set(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %4) #7
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %.thread139, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.t = call i32 @BN_nnmod(ptr noundef nonnull %i.j, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4) #7
  %.not120 = icmp eq i32 %i.t, 0
  br i1 %.not120, label %.thread139, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = call i32 @BN_is_zero(ptr noundef nonnull %i.j) #7
  %.not121 = icmp eq i32 %i.u, 0
  br i1 %.not121, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @BN_zero_ex(ptr noundef %0) #7
  br label %.thread139

bb.q:                                             ; preds = %bb.o
  %i.v = icmp sgt i32 %i.e, 671
  br i1 %i.v, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.w = icmp sgt i32 %i.e, 239
  br i1 %i.w, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.x = icmp sgt i32 %i.e, 79
  br i1 %i.x, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.y = icmp sgt i32 %i.e, 23
  br i1 %i.y, label %.thread, label %.loopexit157

.thread:                                          ; preds = %bb.s, %bb.r, %bb.q, %bb.t
  %i.z = phi i32 [ 3, %bb.t ], [ 6, %bb.q ], [ 5, %bb.r ], [ 4, %bb.s ] ; 2 uses
  %i.aa = call i32 @BN_mod_mul_reciprocal(ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.j, ptr noundef nonnull %5, ptr noundef %4) #7
  %.not122 = icmp eq i32 %i.aa, 0
  br i1 %.not122, label %.thread139, label %bb.u

bb.u:                                             ; preds = %.thread
  %i.ab = add nsw i32 %i.z, -1                    ; 2 uses
  %.not170 = icmp eq i32 %i.ab, 0
  br i1 %.not170, label %.loopexit157, label %.lr.ph

bb.v:                                             ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv.next to i32
  %.0102.highbits = lshr i32 %i.ac, %i.ab
  %i.ad = icmp eq i32 %.0102.highbits, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit157, !llvm.loop !33

.lr.ph:                                           ; preds = %bb.u, %bb.v
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.v ], [ 1, %bb.u ] ; 2 uses
  %i.ae = call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !19
  %i.ag = icmp eq ptr %i.ae, null
  br i1 %i.ag, label %.thread139, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %i.af, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19
  %i.aj = call i32 @BN_mod_mul_reciprocal(ptr noundef nonnull %i.ae, ptr noundef %i.ai, ptr noundef %i.i, ptr noundef nonnull %5, ptr noundef %4) #7
  %.not131 = icmp eq i32 %i.aj, 0
  br i1 %.not131, label %.thread139, label %bb.v

.loopexit157:                                     ; preds = %bb.v, %bb.u, %bb.t
  %6 = phi i32 [ 1, %bb.t ], [ 1, %bb.u ], [ %i.z, %bb.v ] ; 2 uses
  %i.ak = add nsw i32 %i.e, -1
  %i.al = icmp eq ptr %0, %2
  br i1 %i.al, label %bb.x, label %bb.z

bb.x:                                             ; preds = %.loopexit157
  %i.am = call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.thread139, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ao = call ptr @BN_copy(ptr noundef nonnull %i.am, ptr noundef %2) #7
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread139, label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit157
  %.1106 = phi ptr [ %2, %.loopexit157 ], [ %i.am, %bb.y ] ; 2 uses
  %i.aq = call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  %.not123 = icmp eq i32 %i.aq, 0
  br i1 %.not123, label %.thread139, label %.preheader155

.preheader155:                                    ; preds = %bb.z
  %i.ar = icmp sgt i32 %6, 1
  br label %.outer

.outer:                                           ; preds = %bb.ag, %.preheader155
  %.098.ph = phi i32 [ %i.bl, %bb.ag ], [ %i.ak, %.preheader155 ]
  %.not125 = phi i1 [ true, %bb.ag ], [ false, %.preheader155 ] ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.outer, %bb.ad
  %.098 = phi i32 [ %i.aw, %bb.ad ], [ %.098.ph, %.outer ] ; 5 uses
  %i.as = call i32 @BN_is_bit_set(ptr noundef %.1106, i32 noundef %.098) #7
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.ab, label %.preheader154

.preheader154:                                    ; preds = %bb.aa
  br i1 %i.ar, label %.lr.ph164, label %._crit_edge

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not125, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.au = call i32 @BN_mod_mul_reciprocal(ptr noundef %0, ptr noundef %0, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %4) #7
  %.not130 = icmp eq i32 %i.au, 0
  br i1 %.not130, label %.thread139, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.av = icmp eq i32 %.098, 0
  %i.aw = add nsw i32 %.098, -1
  br i1 %i.av, label %.thread139, label %bb.aa

.lr.ph164:                                        ; preds = %.preheader154, %bb.ae
  %.0163 = phi i32 [ %.1, %bb.ae ], [ 1, %.preheader154 ] ; 3 uses
  %.096162 = phi i32 [ %.197, %bb.ae ], [ 0, %.preheader154 ] ; 3 uses
  %.1103161 = phi i32 [ %i.bd, %bb.ae ], [ 1, %.preheader154 ] ; 4 uses
  %i.ax = sub nsw i32 %.098, %.1103161            ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %._crit_edge.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph164
  %i.az = call i32 @BN_is_bit_set(ptr noundef %.1106, i32 noundef %i.ax) #7
  %.not124 = icmp eq i32 %i.az, 0                 ; 2 uses
  %i.ba = sub nsw i32 %.1103161, %.096162
  %i.bb = shl i32 %.0163, %i.ba
  %i.bc = or i32 %i.bb, 1
  %.197 = select i1 %.not124, i32 %.096162, i32 %.1103161 ; 2 uses
  %.1 = select i1 %.not124, i32 %.0163, i32 %i.bc ; 2 uses
  %i.bd = add nuw nsw i32 %.1103161, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %6
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph164, !llvm.loop !34

._crit_edge.loopexit:                             ; preds = %.lr.ph164, %bb.ae
  %.096.lcssa.ph = phi i32 [ %.197, %bb.ae ], [ %.096162, %.lr.ph164 ]
  %.0.lcssa.ph = phi i32 [ %.1, %bb.ae ], [ %.0163, %.lr.ph164 ]
  %i.be = ashr i32 %.0.lcssa.ph, 1
  %i.bf = sext i32 %i.be to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader154
  %.096.lcssa = phi i32 [ 0, %.preheader154 ], [ %.096.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %.preheader154 ], [ %i.bf, %._crit_edge.loopexit ]
  %.neg = xor i32 %.096.lcssa, -1
  br i1 %.not125, label %.preheader, label %.loopexit

bb.af:                                            ; preds = %.preheader
  %i.bg = add nuw i32 %.2169, 1
  %exitcond174.not = icmp eq i32 %.2169, %.096.lcssa
  br i1 %exitcond174.not, label %.loopexit, label %.preheader, !llvm.loop !35

.preheader:                                       ; preds = %._crit_edge, %bb.af
  %.2169 = phi i32 [ %i.bg, %bb.af ], [ 0, %._crit_edge ] ; 2 uses
  %i.bh = call i32 @BN_mod_mul_reciprocal(ptr noundef %0, ptr noundef %0, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %4) #7
  %.not127 = icmp eq i32 %i.bh, 0
  br i1 %.not127, label %.thread139, label %bb.af

.loopexit:                                        ; preds = %bb.af, %._crit_edge
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !19
  %i.bk = call i32 @BN_mod_mul_reciprocal(ptr noundef %0, ptr noundef %0, ptr noundef %i.bj, ptr noundef nonnull %5, ptr noundef %4) #7
  %.not128 = icmp eq i32 %i.bk, 0
  br i1 %.not128, label %.thread139, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.bl = add i32 %.098, %.neg                    ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.thread139, label %.outer

.thread139:                                       ; preds = %.lr.ph, %bb.w, %bb.ac, %bb.ad, %.loopexit, %bb.ag, %.preheader, %bb.y, %bb.x, %bb.z, %.thread, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.p
  %.1101 = phi i32 [ 0, %bb.i ], [ 0, %bb.l ], [ 1, %bb.p ], [ 0, %.loopexit ], [ 0, %.preheader ], [ 0, %bb.m ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %.thread ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.ag ], [ 0, %bb.w ], [ 0, %.lr.ph ]
  call void @BN_CTX_end(ptr noundef %4) #7
  call void @BN_RECP_CTX_free(ptr noundef nonnull %5) #7
  br label %bb.ah

bb.ah:                                            ; preds = %bb.g, %bb.h, %.thread139, %bb.d
  %.0104 = phi i32 [ 0, %bb.d ], [ 1, %bb.g ], [ %.1101, %.thread139 ], [ %i.h, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0104
}

declare i32 @BN_abs_is_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BN_zero_ex(ptr noundef) local_unnamed_addr #2

declare void @BN_RECP_CTX_init(ptr noundef) local_unnamed_addr #2

declare i32 @BN_RECP_CTX_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_nnmod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_reciprocal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_RECP_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_mod_exp_mont_consttime(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @bn_mod_exp_mont_fixed_top(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @bn_correct_top(ptr noundef %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @BN_MONT_CTX_new() local_unnamed_addr #2

declare i32 @BN_MONT_CTX_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bn_to_mont_fixed_top(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bn_mul_mont_fixed_top(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bn_wexpand(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BN_value_one() local_unnamed_addr #2

declare i32 @BN_from_montgomery(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_MONT_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @bn_mod_exp_mont_fixed_top(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.bignum_st, align 8          ; 91 uses
  %7 = alloca %struct.bignum_st, align 8          ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.a = tail call i32 @BN_is_odd(ptr noundef %3) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 621, ptr noundef nonnull @__func__.bn_mod_exp_mont_fixed_top) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 102, ptr noundef null) #7
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 64 uses
  %i.d = icmp sgt i32 %i.c, 1048575
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @BN_mod_exp_mont(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5)
  br label %bb.az

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12   ; 6 uses
end_hunk_0
begin_hunk_1_@MOD_EXP_CTIME_COPY_FROM_PREBUF:bb.a
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.199.us106, i64 %i.au
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count205
  br i1 %exitcond216.not, label %.loopexit, label %.preheader82.us105, !llvm.loop !62

.preheader82:                                     ; preds = %.preheader82.preheader, %.split.split.split
  %indvars.iv202 = phi i64 [ 0, %.preheader82.preheader ], [ %indvars.iv.next203, %.split.split.split ] ; 2 uses
  %.199 = phi ptr [ %2, %.preheader82.preheader ], [ %i.fv, %.split.split.split ] ; 7 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.di ; 3 uses
  %invariant.gep367 = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.dj ; 3 uses
  %invariant.gep369 = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.dk ; 3 uses
  br i1 %i.dl, label %.epil.preheader421, label %.preheader82.new

.preheader82.new:                                 ; preds = %.preheader82, %.preheader82.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader82.new ], [ 0, %.preheader82 ] ; 7 uses
  %.085 = phi i64 [ %i.fj, %.preheader82.new ], [ 0, %.preheader82 ]
  %niter427 = phi i64 [ %niter427.next.1, %.preheader82.new ], [ 0, %.preheader82 ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv
  %i.et = load volatile i64, ptr %i.es, align 8, !tbaa !16 ; 0 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.eu = load volatile i64, ptr %gep, align 8, !tbaa !16 ; 0 uses
  %gep368 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv
  %i.ev = load volatile i64, ptr %gep368, align 8, !tbaa !16 ; 0 uses
  %gep370 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv
  %i.ew = load volatile i64, ptr %gep370, align 8, !tbaa !16
  %i.ex = icmp eq i64 %indvars.iv, %i.dh
  %i.ey = and i1 %i.ex, %i.aq
  %i.ez = select i1 %i.ey, i64 %i.ew, i64 0
  %i.fa = or i64 %i.ez, %.085
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv.next
  %i.fc = load volatile i64, ptr %i.fb, align 8, !tbaa !16 ; 0 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.fd = load volatile i64, ptr %gep.1, align 8, !tbaa !16 ; 0 uses
  %gep368.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv.next
  %i.fe = load volatile i64, ptr %gep368.1, align 8, !tbaa !16 ; 0 uses
  %gep370.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv.next
  %i.ff = load volatile i64, ptr %gep370.1, align 8, !tbaa !16
  %i.fg = icmp eq i64 %indvars.iv.next, %i.dh
  %i.fh = and i1 %i.fg, %i.aq
  %i.fi = select i1 %i.fh, i64 %i.ff, i64 0
  %i.fj = or i64 %i.fi, %i.fa                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter427.next.1 = add i64 %niter427, 2         ; 2 uses
  %niter427.ncmp.1 = icmp eq i64 %niter427.next.1, %unroll_iter426
  br i1 %niter427.ncmp.1, label %.split.split.split.unr-lcssa, label %.preheader82.new, !llvm.loop !61

.split.split.split.unr-lcssa:                     ; preds = %.preheader82.new
  br i1 %lcmp.mod423.not, label %.split.split.split, label %.epil.preheader421

.epil.preheader421:                               ; preds = %.split.split.split.unr-lcssa, %.preheader82
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader82 ], [ %indvars.iv.next.1, %.split.split.split.unr-lcssa ] ; 5 uses
  %.085.epil.init = phi i64 [ 0, %.preheader82 ], [ %i.fj, %.split.split.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod425)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %indvars.iv.epil.init
  %i.fl = load volatile i64, ptr %i.fk, align 8, !tbaa !16 ; 0 uses
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.fm = load volatile i64, ptr %gep.epil, align 8, !tbaa !16 ; 0 uses
  %gep368.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep367, i64 %indvars.iv.epil.init
  %i.fn = load volatile i64, ptr %gep368.epil, align 8, !tbaa !16 ; 0 uses
  %gep370.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep369, i64 %indvars.iv.epil.init
  %i.fo = load volatile i64, ptr %gep370.epil, align 8, !tbaa !16
  %i.fp = icmp eq i64 %indvars.iv.epil.init, %i.dh
  %i.fq = and i1 %i.fp, %i.aq
  %i.fr = select i1 %i.fq, i64 %i.fo, i64 0
  %i.fs = or i64 %i.fr, %.085.epil.init
  br label %.split.split.split

.split.split.split:                               ; preds = %.split.split.split.unr-lcssa, %.epil.preheader421
  %.lcssa398 = phi i64 [ %i.fj, %.split.split.split.unr-lcssa ], [ %i.fs, %.epil.preheader421 ]
  %i.ft = load ptr, ptr %0, align 8, !tbaa !14
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv202
  store i64 %.lcssa398, ptr %i.fu, align 8, !tbaa !16
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.199, i64 %i.au
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %.loopexit, label %.preheader82, !llvm.loop !62

.loopexit:                                        ; preds = %.split.split.split.us.us.split, %.split.split.us.us.split.split, %.split.us.us.split.split.split, %.split.split.split, %.epilog-lcssa, %bb.d, %.preheader81
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.fw, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.loopexit
  %.069 = phi i32 [ 1, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.069
}

declare i32 @bn_from_mont_fixed_top(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_to_montgomery(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mul_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BN_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_mod_mul_montgomery(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_simple(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call i32 @BN_get_flags(ptr noundef %2, i32 noundef 4) #7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @BN_get_flags(ptr noundef %1, i32 noundef 4) #7
  %.not118 = icmp eq i32 %i.c, 0
  br i1 %.not118, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @BN_get_flags(ptr noundef %3, i32 noundef 4) #7
  %.not119 = icmp eq i32 %i.d, 0
  br i1 %.not119, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1319, ptr noundef nonnull @__func__.BN_mod_exp_simple) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 786689, ptr noundef null) #7
  br label %bb.af

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %0, %3
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1324, ptr noundef nonnull @__func__.BN_mod_exp_simple) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 524550, ptr noundef null) #7
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.f = tail call i32 @BN_num_bits(ptr noundef %2) #7 ; 6 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @BN_abs_is_word(ptr noundef %3, i64 noundef 1) #7
  %.not132 = icmp eq i32 %i.h, 0
  br i1 %.not132, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  %i.i = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  br label %bb.af

bb.k:                                             ; preds = %bb.g
  tail call void @BN_CTX_start(ptr noundef %4) #7
  %i.j = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 2 uses
  %i.k = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 6 uses
  store ptr %i.k, ptr %i.a, align 16, !tbaa !19
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread139, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.m = tail call i32 @BN_nnmod(ptr noundef nonnull %i.k, ptr noundef %1, ptr noundef %3, ptr noundef %4) #7
  %.not120 = icmp eq i32 %i.m, 0
  br i1 %.not120, label %.thread139, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.n = tail call i32 @BN_is_zero(ptr noundef nonnull %i.k) #7
  %.not121 = icmp eq i32 %i.n, 0
  br i1 %.not121, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @BN_zero_ex(ptr noundef %0) #7
  br label %.thread139

bb.o:                                             ; preds = %bb.m
  %i.o = icmp sgt i32 %i.f, 671
  br i1 %i.o, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = icmp sgt i32 %i.f, 239
  br i1 %i.p, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = icmp sgt i32 %i.f, 79
  br i1 %i.q, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = icmp sgt i32 %i.f, 23
  br i1 %i.r, label %.thread, label %.loopexit157

.thread:                                          ; preds = %bb.q, %bb.p, %bb.o, %bb.r
  %i.s = phi i32 [ 3, %bb.r ], [ 6, %bb.o ], [ 5, %bb.p ], [ 4, %bb.q ] ; 2 uses
  %i.t = tail call i32 @BN_mod_mul(ptr noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef %3, ptr noundef %4) #7
  %.not122 = icmp eq i32 %i.t, 0
  br i1 %.not122, label %.thread139, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.u = add nsw i32 %i.s, -1                     ; 2 uses
  %.not170 = icmp eq i32 %i.u, 0
  br i1 %.not170, label %.loopexit157, label %.lr.ph

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = trunc nuw i64 %indvars.iv.next to i32
  %.0101.highbits = lshr i32 %i.v, %i.u
  %i.w = icmp eq i32 %.0101.highbits, 0
  br i1 %i.w, label %.lr.ph, label %.loopexit157, !llvm.loop !63

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %i.x = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !19
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %.thread139, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %i.y, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.ac = tail call i32 @BN_mod_mul(ptr noundef nonnull %i.x, ptr noundef %i.ab, ptr noundef %i.j, ptr noundef %3, ptr noundef %4) #7
  %.not131 = icmp eq i32 %i.ac, 0
  br i1 %.not131, label %.thread139, label %bb.t

.loopexit157:                                     ; preds = %bb.t, %bb.s, %bb.r
  %5 = phi i32 [ 1, %bb.r ], [ 1, %bb.s ], [ %i.s, %bb.t ] ; 2 uses
  %i.ad = add nsw i32 %i.f, -1
  %i.ae = icmp eq ptr %0, %2
  br i1 %i.ae, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.loopexit157
  %i.af = tail call ptr @BN_CTX_get(ptr noundef %4) #7 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread139, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = tail call ptr @BN_copy(ptr noundef nonnull %i.af, ptr noundef %2) #7
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %.thread139, label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit157
  %.1105 = phi ptr [ %2, %.loopexit157 ], [ %i.af, %bb.w ] ; 2 uses
  %i.aj = tail call i32 @BN_set_word(ptr noundef %0, i64 noundef 1) #7
  %.not123 = icmp eq i32 %i.aj, 0
  br i1 %.not123, label %.thread139, label %.preheader155

.preheader155:                                    ; preds = %bb.x
  %i.ak = icmp sgt i32 %5, 1
  br label %.outer

.outer:                                           ; preds = %bb.ae, %.preheader155
  %.097.ph = phi i32 [ %i.be, %bb.ae ], [ %i.ad, %.preheader155 ]
  %.not125 = phi i1 [ true, %bb.ae ], [ false, %.preheader155 ] ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.outer, %bb.ab
  %.097 = phi i32 [ %i.ap, %bb.ab ], [ %.097.ph, %.outer ] ; 5 uses
  %i.al = tail call i32 @BN_is_bit_set(ptr noundef %.1105, i32 noundef %.097) #7
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.z, label %.preheader154

.preheader154:                                    ; preds = %bb.y
  br i1 %i.ak, label %.lr.ph164, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  br i1 %.not125, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.an = tail call i32 @BN_mod_mul(ptr noundef %0, ptr noundef %0, ptr noundef %0, ptr noundef %3, ptr noundef %4) #7
  %.not130 = icmp eq i32 %i.an, 0
  br i1 %.not130, label %.thread139, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ao = icmp eq i32 %.097, 0
  %i.ap = add nsw i32 %.097, -1
  br i1 %i.ao, label %.thread139, label %bb.y

.lr.ph164:                                        ; preds = %.preheader154, %bb.ac
  %.0163 = phi i32 [ %.1, %bb.ac ], [ 1, %.preheader154 ] ; 3 uses
  %.095162 = phi i32 [ %.196, %bb.ac ], [ 0, %.preheader154 ] ; 3 uses
  %.1102161 = phi i32 [ %i.aw, %bb.ac ], [ 1, %.preheader154 ] ; 4 uses
  %i.aq = sub nsw i32 %.097, %.1102161            ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %._crit_edge.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph164
  %i.as = tail call i32 @BN_is_bit_set(ptr noundef %.1105, i32 noundef %i.aq) #7
  %.not124 = icmp eq i32 %i.as, 0                 ; 2 uses
  %i.at = sub nsw i32 %.1102161, %.095162
  %i.au = shl i32 %.0163, %i.at
  %i.av = or i32 %i.au, 1
  %.196 = select i1 %.not124, i32 %.095162, i32 %.1102161 ; 2 uses
  %.1 = select i1 %.not124, i32 %.0163, i32 %i.av ; 2 uses
  %i.aw = add nuw nsw i32 %.1102161, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %5
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph164, !llvm.loop !64

._crit_edge.loopexit:                             ; preds = %.lr.ph164, %bb.ac
  %.095.lcssa.ph = phi i32 [ %.196, %bb.ac ], [ %.095162, %.lr.ph164 ]
  %.0.lcssa.ph = phi i32 [ %.1, %bb.ac ], [ %.0163, %.lr.ph164 ]
  %i.ax = ashr i32 %.0.lcssa.ph, 1
  %i.ay = sext i32 %i.ax to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader154
  %.095.lcssa = phi i32 [ 0, %.preheader154 ], [ %.095.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %.preheader154 ], [ %i.ay, %._crit_edge.loopexit ]
  %.neg = xor i32 %.095.lcssa, -1
  br i1 %.not125, label %.preheader, label %.loopexit

bb.ad:                                            ; preds = %.preheader
  %i.az = add nuw i32 %.2169, 1
  %exitcond174.not = icmp eq i32 %.2169, %.095.lcssa
  br i1 %exitcond174.not, label %.loopexit, label %.preheader, !llvm.loop !65

.preheader:                                       ; preds = %._crit_edge, %bb.ad
  %.2169 = phi i32 [ %i.az, %bb.ad ], [ 0, %._crit_edge ] ; 2 uses
  %i.ba = tail call i32 @BN_mod_mul(ptr noundef %0, ptr noundef %0, ptr noundef %0, ptr noundef %3, ptr noundef %4) #7
  %.not127 = icmp eq i32 %i.ba, 0
  br i1 %.not127, label %.thread139, label %bb.ad

.loopexit:                                        ; preds = %bb.ad, %._crit_edge
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.0.lcssa
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19
  %i.bd = tail call i32 @BN_mod_mul(ptr noundef %0, ptr noundef %0, ptr noundef %i.bc, ptr noundef %3, ptr noundef %4) #7
  %.not128 = icmp eq i32 %i.bd, 0
  br i1 %.not128, label %.thread139, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  %i.be = add i32 %.097, %.neg                    ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %.thread139, label %.outer

.thread139:                                       ; preds = %.lr.ph, %bb.u, %bb.aa, %bb.ab, %.loopexit, %bb.ae, %.preheader, %bb.w, %bb.v, %bb.x, %.thread, %bb.l, %bb.k, %bb.n
  %.1100 = phi i32 [ 0, %bb.k ], [ 1, %bb.n ], [ 0, %.loopexit ], [ 0, %.preheader ], [ 0, %bb.l ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %.thread ], [ 0, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ae ], [ 0, %bb.u ], [ 0, %.lr.ph ]
  tail call void @BN_CTX_end(ptr noundef %4) #7
  br label %bb.af

bb.af:                                            ; preds = %bb.i, %bb.j, %.thread139, %bb.f, %bb.d
  %.0103 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 1, %bb.i ], [ %.1100, %.thread139 ], [ %i.i, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0103
}

declare i32 @BN_mod_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @BN_mod_exp_mont_consttime_x2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsaz_avx512ifma_eligible() #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ossl_rsaz_avxifma_eligible() #7
  %.not86 = icmp eq i32 %i.b, 0
  br i1 %.not86, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = icmp eq i32 %i.d, 16
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  %i.h = icmp eq i32 %i.g, 16
  br i1 %i.h, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @BN_num_bits(ptr noundef %3) #7
  %i.j = icmp eq i32 %i.i, 1024
  br i1 %i.j, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !12
  %i.m = icmp eq i32 %i.l, 16
  br i1 %i.m, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !12
  %i.p = icmp eq i32 %i.o, 16
  br i1 %i.p, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.q = tail call i32 @BN_num_bits(ptr noundef %8) #7
  %i.r = icmp eq i32 %i.q, 1024
  br i1 %i.r, label %bb.u, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.pr = load i32, ptr %i.c, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.c
  %i.s = phi i32 [ %.pr, %thread-pre-split ], [ %i.d, %bb.c ]
  %i.t = icmp eq i32 %i.s, 24
  br i1 %i.t, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !12
  %i.w = icmp eq i32 %i.v, 24
  br i1 %i.w, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.x = tail call i32 @BN_num_bits(ptr noundef %3) #7
  %i.y = icmp eq i32 %i.x, 1536
  br i1 %i.y, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !12
  %i.ab = icmp eq i32 %i.aa, 24
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !12
  %i.ae = icmp eq i32 %i.ad, 24
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = tail call i32 @BN_num_bits(ptr noundef %8) #7
end_hunk_1
