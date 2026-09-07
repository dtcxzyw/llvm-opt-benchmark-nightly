Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-op-gvec?download=true
inline.NumInlined: 877
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@gen_helper_gvec_leu64:bb.a

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @expand_cmp_vec(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 8, 33) %5, i32 noundef range(i32 3, 6) %6, i32 noundef range(i32 2, 0) %7) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.020 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %i.a = tail call ptr @tcg_temp_new_vec(i32 noundef %6) #9 ; 2 uses
  %i.b = tail call ptr @tcg_temp_new_vec(i32 noundef %6) #9 ; 2 uses
  %i.c = tail call ptr @tcg_temp_new_vec(i32 noundef %6) #9 ; 2 uses
  %i.d = load ptr, ptr @tcg_env, align 8
  %i.e = add i32 %.020, %2
  %i.f = zext i32 %i.e to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.a, ptr noundef %i.d, i64 noundef %i.f) #9
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = add i32 %.020, %3
  %i.i = zext i32 %i.h to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.b, ptr noundef %i.g, i64 noundef %i.i) #9
  tail call void @tcg_gen_cmp_vec(i32 noundef %7, i32 noundef %0, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.b) #9
  %i.j = load ptr, ptr @tcg_env, align 8
  %i.k = add i32 %.020, %1
  %i.l = zext i32 %i.k to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.c, ptr noundef %i.j, i64 noundef %i.l) #9
  %i.m = add i32 %.020, %5                        ; 2 uses
  %i.n = icmp ult i32 %i.m, %4
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !62
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_cmps(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
check_size_align.exit:
  %i.a = icmp ult i32 %6, 2049
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ugt i32 %6, 15
  %i.c = select i1 %i.b, i32 15, i32 7
  %i.d = and i32 %i.c, %6
  %i.e = icmp eq i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i32 %2, %3
  %i.g = add i32 %6, %2
  %.not10.i = icmp ugt i32 %i.g, %3
  %or.cond11.i = and i1 %i.f, %.not10.i
  br i1 %or.cond11.i, label %bb.a, label %check_overlap_2.exit

bb.a:                                             ; preds = %check_size_align.exit
  %i.h = add i32 %6, %3
  %i.i = icmp ule i32 %i.h, %2
  tail call void @llvm.assume(i1 %i.i)
  br label %check_overlap_2.exit

check_overlap_2.exit:                             ; preds = %check_size_align.exit, %bb.a
  %or.cond = icmp ult i32 %0, 2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %check_overlap_2.exit
  %i.j = load ptr, ptr @tcg_env, align 8
  %sext = sub nsw i32 0, %0
  %i.k = sext i32 %sext to i64
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.j, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null, i64 noundef %i.k)
  br label %bb.t

bb.c:                                             ; preds = %check_overlap_2.exit
  %i.l = icmp eq i32 %1, 3                        ; 2 uses
  %i.m = tail call fastcc i32 @choose_vector_type(ptr noundef nonnull @tcg_gen_gvec_cmps.cmp_list, i32 noundef %1, i32 noundef %5, i1 noundef zeroext %i.l) ; 3 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @tcg_temp_new_vec(i32 noundef %i.m) #9 ; 5 uses
  tail call void @tcg_gen_dup_i64_vec(i32 noundef %1, ptr noundef %i.n, ptr noundef %4) #9
  switch i32 %i.m, label %bb.h [
    i32 5, label %bb.e
    i32 4, label %bb.f
    i32 3, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %5, -32                          ; 5 uses
  %i.p = tail call ptr @tcg_temp_new_vec(i32 noundef 5) #9 ; 2 uses
  %i.q = tail call ptr @tcg_temp_new_vec(i32 noundef 5) #9 ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %expand_cmps_vec.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.r = zext i32 %i.o to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv147 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next148, %.lr.ph.i ] ; 2 uses
  %i.s = load ptr, ptr @tcg_env, align 8
  %i.t = trunc nuw i64 %indvars.iv147 to i32      ; 2 uses
  %i.u = add i32 %3, %i.t
  %i.v = zext i32 %i.u to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.q, ptr noundef %i.s, i64 noundef %i.v) #9
  tail call void @tcg_gen_cmp_vec(i32 noundef range(i32 2, 0) %0, i32 noundef %1, ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.n) #9
  %i.w = load ptr, ptr @tcg_env, align 8
  %i.x = add i32 %2, %i.t
  %i.y = zext i32 %i.x to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.p, ptr noundef %i.w, i64 noundef %i.y) #9
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 32 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next148, %i.r
  br i1 %i.z, label %.lr.ph.i, label %expand_cmps_vec.exit, !llvm.loop !63

expand_cmps_vec.exit:                             ; preds = %.lr.ph.i, %bb.e
  %i.aa = add i32 %i.o, %3
  %i.ab = add i32 %i.o, %2
  %i.ac = and i32 %5, 31
  %i.ad = sub i32 %6, %i.o
  br label %bb.f

bb.f:                                             ; preds = %expand_cmps_vec.exit, %bb.d
  %.0115 = phi i32 [ %i.ab, %expand_cmps_vec.exit ], [ %2, %bb.d ] ; 3 uses
  %.0114 = phi i32 [ %i.aa, %expand_cmps_vec.exit ], [ %3, %bb.d ]
  %.0111 = phi i32 [ %i.ac, %expand_cmps_vec.exit ], [ %5, %bb.d ] ; 3 uses
  %.0110 = phi i32 [ %i.ad, %expand_cmps_vec.exit ], [ %6, %bb.d ] ; 2 uses
  %i.ae = and i32 %.0111, -16                     ; 2 uses
  %i.af = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %i.ag = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %.not.i126 = icmp eq i32 %i.ae, 0
  br i1 %.not.i126, label %expand_cmps_vec.exit129, label %.lr.ph.i127.preheader

.lr.ph.i127.preheader:                            ; preds = %bb.f
  %i.ah = zext i32 %i.ae to i64
  br label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %.lr.ph.i127.preheader, %.lr.ph.i127
  %indvars.iv150 = phi i64 [ 0, %.lr.ph.i127.preheader ], [ %indvars.iv.next151, %.lr.ph.i127 ] ; 2 uses
  %i.ai = load ptr, ptr @tcg_env, align 8
  %i.aj = trunc nuw i64 %indvars.iv150 to i32     ; 2 uses
  %i.ak = add i32 %.0114, %i.aj
  %i.al = zext i32 %i.ak to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.ag, ptr noundef %i.ai, i64 noundef %i.al) #9
  tail call void @tcg_gen_cmp_vec(i32 noundef range(i32 2, 0) %0, i32 noundef %1, ptr noundef %i.af, ptr noundef %i.ag, ptr noundef %i.n) #9
  %i.am = load ptr, ptr @tcg_env, align 8
  %i.an = add i32 %.0115, %i.aj
  %i.ao = zext i32 %i.an to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.af, ptr noundef %i.am, i64 noundef %i.ao) #9
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 16 ; 2 uses
  %i.ap = icmp samesign ult i64 %indvars.iv.next151, %i.ah
  br i1 %i.ap, label %.lr.ph.i127, label %expand_cmps_vec.exit129, !llvm.loop !63

bb.g:                                             ; preds = %bb.d
  %i.aq = and i32 %5, -8                          ; 2 uses
  %i.ar = tail call ptr @tcg_temp_new_vec(i32 noundef 3) #9 ; 2 uses
  %i.as = tail call ptr @tcg_temp_new_vec(i32 noundef 3) #9 ; 2 uses
  %.not.i130 = icmp eq i32 %i.aq, 0
  br i1 %.not.i130, label %expand_cmps_vec.exit129, label %.lr.ph.i131.preheader

.lr.ph.i131.preheader:                            ; preds = %bb.g
  %i.at = zext i32 %i.aq to i64
  br label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.preheader, %.lr.ph.i131
  %indvars.iv = phi i64 [ 0, %.lr.ph.i131.preheader ], [ %indvars.iv.next, %.lr.ph.i131 ] ; 2 uses
  %i.au = load ptr, ptr @tcg_env, align 8
  %i.av = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.aw = add i32 %3, %i.av
  %i.ax = zext i32 %i.aw to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.as, ptr noundef %i.au, i64 noundef %i.ax) #9
  tail call void @tcg_gen_cmp_vec(i32 noundef range(i32 2, 0) %0, i32 noundef %1, ptr noundef %i.ar, ptr noundef %i.as, ptr noundef %i.n) #9
  %i.ay = load ptr, ptr @tcg_env, align 8
  %i.az = add i32 %2, %i.av
  %i.ba = zext i32 %i.az to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.ar, ptr noundef %i.ay, i64 noundef %i.ba) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.bb, label %.lr.ph.i131, label %expand_cmps_vec.exit129, !llvm.loop !63

bb.h:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 4029, ptr noundef nonnull @__func__.tcg_gen_gvec_cmps, ptr noundef null) #10
  unreachable

expand_cmps_vec.exit129:                          ; preds = %.lr.ph.i131, %.lr.ph.i127, %bb.g, %bb.f
  %.1116 = phi i32 [ %.0115, %.lr.ph.i127 ], [ %.0115, %bb.f ], [ %2, %bb.g ], [ %2, %.lr.ph.i131 ]
  %.1112 = phi i32 [ %.0111, %.lr.ph.i127 ], [ %.0111, %bb.f ], [ %5, %bb.g ], [ %5, %.lr.ph.i131 ]
  %.1 = phi i32 [ %.0110, %.lr.ph.i127 ], [ %.0110, %bb.f ], [ %6, %bb.g ], [ %6, %.lr.ph.i131 ]
  tail call void @tcg_temp_free_vec(ptr noundef %i.n) #9
  br label %bb.r

bb.i:                                             ; preds = %bb.c
  br i1 %i.l, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bc = icmp ult i32 %5, 8
  br i1 %i.bc, label %.thread, label %check_size_impl.exit

check_size_impl.exit:                             ; preds = %bb.j
  %i.bd = and i32 %5, 7
  %i.be = icmp eq i32 %i.bd, 0
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp ult i32 %5, 40
  br i1 %i.bf, label %bb.k, label %.thread

bb.k:                                             ; preds = %check_size_impl.exit
  %i.bg = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 5 uses
  %7 = zext nneg i32 %5 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %indvars.iv156 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next157, %bb.l ] ; 2 uses
  %i.bh = load ptr, ptr @tcg_env, align 8
  %8 = trunc nuw nsw i64 %indvars.iv156 to i32    ; 2 uses
  %i.bi = add i32 %3, %8
  %i.bj = zext i32 %i.bi to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.bg, ptr noundef %i.bh, i64 noundef %i.bj) #9
  tail call void @tcg_gen_negsetcond_i64(i32 noundef %0, ptr noundef %i.bg, ptr noundef %i.bg, ptr noundef %4) #9
  %i.bk = load ptr, ptr @tcg_env, align 8
  %i.bl = add i32 %2, %8
  %i.bm = zext i32 %i.bl to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.bg, ptr noundef %i.bk, i64 noundef %i.bm) #9
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 8 ; 2 uses
  %i.bn = icmp samesign ult i64 %indvars.iv.next157, %7
  br i1 %i.bn, label %bb.l, label %bb.m, !llvm.loop !64

bb.m:                                             ; preds = %bb.l
  tail call void @tcg_temp_free_i64(ptr noundef %i.bg) #9
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  %i.bo = icmp ne i32 %1, 2
  %i.bp = icmp ult i32 %5, 4
  %or.cond140 = or i1 %i.bo, %i.bp
  br i1 %or.cond140, label %.thread, label %check_size_impl.exit137

check_size_impl.exit137:                          ; preds = %bb.n
  %i.bq = and i32 %5, 3
  %i.br = icmp eq i32 %i.bq, 0
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp ult i32 %5, 20
  br i1 %i.bs, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %check_size_impl.exit137
  %i.bt = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 5 uses
  %i.bu = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 3 uses
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.bu, ptr noundef %4) #9
  %9 = zext nneg i32 %5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv153 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next154, %.lr.ph ] ; 2 uses
  %i.bv = load ptr, ptr @tcg_env, align 8
  %10 = trunc nuw nsw i64 %indvars.iv153 to i32   ; 2 uses
  %i.bw = add i32 %3, %10
  %i.bx = zext i32 %i.bw to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.bt, ptr noundef %i.bv, i64 noundef %i.bx) #9
  tail call void @tcg_gen_negsetcond_i32(i32 noundef %0, ptr noundef %i.bt, ptr noundef %i.bt, ptr noundef %i.bu) #9
  %i.by = load ptr, ptr @tcg_env, align 8
  %i.bz = add i32 %2, %10
  %i.ca = zext i32 %i.bz to i64
  tail call void @tcg_gen_st_i32(ptr noundef %i.bt, ptr noundef %i.by, i64 noundef %i.ca) #9
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 4 ; 2 uses
  %i.cb = icmp samesign ult i64 %indvars.iv.next154, %9
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph
  tail call void @tcg_temp_free_i32(ptr noundef %i.bt) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.bu) #9
  br label %bb.r

.thread:                                          ; preds = %bb.j, %check_size_impl.exit, %check_size_impl.exit137, %bb.n
  %i.cc = zext i32 %0 to i64                      ; 2 uses
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = and i64 %i.cd, 31355
  %.not124 = icmp ne i64 %i.ce, 0                 ; 2 uses
  br i1 %.not124, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.thread
  %i.cf = xor i32 %0, 1
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = and i64 %i.ch, 31355
  %.not125.not = icmp eq i64 %i.ci, 0
  br i1 %.not125.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 4063, ptr noundef nonnull @__PRETTY_FUNCTION__.tcg_gen_gvec_cmps) #10
  unreachable

bb.q:                                             ; preds = %bb.o, %.thread
  %.pn = phi i64 [ %i.cc, %.thread ], [ %i.cg, %bb.o ]
  %.0107.in = getelementptr inbounds nuw [8 x i8], ptr @tcg_gen_gvec_cmps.fns, i64 %.pn
  %.0107 = load ptr, ptr %.0107.in, align 8
  %i.cj = zext i1 %.not124 to i32
  %i.ck = zext i32 %1 to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.0107, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void @tcg_gen_gvec_2i_ool(i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.cj, ptr noundef %i.cm)
  br label %bb.t

bb.r:                                             ; preds = %bb.m, %._crit_edge, %expand_cmps_vec.exit129
  %.2117 = phi i32 [ %.1116, %expand_cmps_vec.exit129 ], [ %2, %bb.m ], [ %2, %._crit_edge ]
  %.2113 = phi i32 [ %.1112, %expand_cmps_vec.exit129 ], [ %5, %bb.m ], [ %5, %._crit_edge ] ; 3 uses
  %.2 = phi i32 [ %.1, %expand_cmps_vec.exit129 ], [ %6, %bb.m ], [ %6, %._crit_edge ] ; 2 uses
  %i.cn = icmp ult i32 %.2113, %.2
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr @tcg_env, align 8
  %i.cp = add i32 %.2113, %.2117
  %i.cq = sub nuw i32 %.2, %.2113                 ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.co, i32 noundef %i.cp, i32 noundef %i.cq, i32 noundef %i.cq, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_eqs8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_eqs8, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_eqs8, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_eqs16(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_eqs16, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_eqs16, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_eqs32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_eqs32, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_eqs32, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_eqs64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_eqs64, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_eqs64, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_lts8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_lts8, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_lts8, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_lts16(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_lts16, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_lts16, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_lts32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_lts32, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_lts32, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_lts64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_lts64, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_lts64, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
end_hunk_0
