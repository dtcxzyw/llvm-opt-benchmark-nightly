Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-op-gvec?download=true
inline.NumInlined: 877
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@expand_4_vec:bb.a
  tail call void @tcg_gen_st_vec(ptr noundef %i.b, ptr noundef %i.q, i64 noundef %i.g) #9
  %i.r = add i32 %.029.us, %6                     ; 2 uses
  %i.s = icmp ult i32 %i.r, %5
  br i1 %i.s, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.029 = phi i32 [ %i.aj, %.lr.ph.split ], [ 0, %.lr.ph ] ; 5 uses
  %i.t = tail call ptr @tcg_temp_new_vec(i32 noundef %7) #9 ; 2 uses
  %i.u = tail call ptr @tcg_temp_new_vec(i32 noundef %7) #9 ; 2 uses
  %i.v = tail call ptr @tcg_temp_new_vec(i32 noundef %7) #9 ; 2 uses
  %i.w = tail call ptr @tcg_temp_new_vec(i32 noundef %7) #9 ; 2 uses
  %i.x = load ptr, ptr @tcg_env, align 8
  %i.y = add i32 %.029, %2
  %i.z = zext i32 %i.y to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.u, ptr noundef %i.x, i64 noundef %i.z) #9
  %i.aa = load ptr, ptr @tcg_env, align 8
  %i.ab = add i32 %.029, %3
  %i.ac = zext i32 %i.ab to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.v, ptr noundef %i.aa, i64 noundef %i.ac) #9
  %i.ad = load ptr, ptr @tcg_env, align 8
  %i.ae = add i32 %.029, %4
  %i.af = zext i32 %i.ae to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.w, ptr noundef %i.ad, i64 noundef %i.af) #9
  tail call void %9(i32 noundef %0, ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.w) #9
  %i.ag = load ptr, ptr @tcg_env, align 8
  %i.ah = add i32 %.029, %1
  %i.ai = zext i32 %i.ah to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.t, ptr noundef %i.ag, i64 noundef %i.ai) #9
  %i.aj = add i32 %.029, %6                       ; 2 uses
  %i.ak = icmp ult i32 %i.aj, %5
  br i1 %i.ak, label %.lr.ph.split, label %._crit_edge, !llvm.loop !38
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_4i(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #1 {
check_size_align.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = icmp ult i32 %5, 2049
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ugt i32 %5, 15
  %i.d = select i1 %i.c, i32 15, i32 7
  %i.e = and i32 %i.d, %5
  %i.f = icmp eq i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ne i32 %0, %1
  %i.h = add i32 %5, %0                           ; 3 uses
  %.not10.i.i = icmp ugt i32 %i.h, %1
  %or.cond11.i.i = and i1 %i.g, %.not10.i.i
  br i1 %or.cond11.i.i, label %bb.a, label %check_overlap_2.exit.i

bb.a:                                             ; preds = %check_size_align.exit
  %i.i = add i32 %5, %1
  %i.j = icmp ule i32 %i.i, %0
  tail call void @llvm.assume(i1 %i.j)
  br label %check_overlap_2.exit.i

check_overlap_2.exit.i:                           ; preds = %bb.a, %check_size_align.exit
  %i.k = icmp ne i32 %0, %2
  %.not10.i31.i = icmp ugt i32 %i.h, %2
  %or.cond11.i32.i = and i1 %i.k, %.not10.i31.i
  br i1 %or.cond11.i32.i, label %bb.b, label %check_overlap_2.exit33.i

bb.b:                                             ; preds = %check_overlap_2.exit.i
  %i.l = add i32 %5, %2
  %i.m = icmp ule i32 %i.l, %0
  tail call void @llvm.assume(i1 %i.m)
  br label %check_overlap_2.exit33.i

check_overlap_2.exit33.i:                         ; preds = %bb.b, %check_overlap_2.exit.i
  %i.n = icmp ne i32 %0, %3
  %.not10.i36.i = icmp ugt i32 %i.h, %3
  %or.cond11.i37.i = and i1 %i.n, %.not10.i36.i
  br i1 %or.cond11.i37.i, label %bb.c, label %check_overlap_2.exit38.i

bb.c:                                             ; preds = %check_overlap_2.exit33.i
  %i.o = add i32 %5, %3
  %i.p = icmp ule i32 %i.o, %0
  tail call void @llvm.assume(i1 %i.p)
  br label %check_overlap_2.exit38.i

check_overlap_2.exit38.i:                         ; preds = %bb.c, %check_overlap_2.exit33.i
  %i.q = icmp ne i32 %1, %2
  %i.r = add i32 %5, %1                           ; 2 uses
  %.not10.i41.i = icmp ugt i32 %i.r, %2
  %or.cond11.i42.i = and i1 %i.q, %.not10.i41.i
  br i1 %or.cond11.i42.i, label %bb.d, label %check_overlap_2.exit43.i

bb.d:                                             ; preds = %check_overlap_2.exit38.i
  %i.s = add i32 %5, %2
  %i.t = icmp ule i32 %i.s, %1
  tail call void @llvm.assume(i1 %i.t)
  br label %check_overlap_2.exit43.i

check_overlap_2.exit43.i:                         ; preds = %bb.d, %check_overlap_2.exit38.i
  %i.u = icmp ne i32 %1, %3
  %.not10.i46.i = icmp ugt i32 %i.r, %3
  %or.cond11.i47.i = and i1 %i.u, %.not10.i46.i
  br i1 %or.cond11.i47.i, label %bb.e, label %check_overlap_2.exit48.i

bb.e:                                             ; preds = %check_overlap_2.exit43.i
  %i.v = add i32 %5, %3
  %i.w = icmp ule i32 %i.v, %1
  tail call void @llvm.assume(i1 %i.w)
  br label %check_overlap_2.exit48.i

check_overlap_2.exit48.i:                         ; preds = %bb.e, %check_overlap_2.exit43.i
  %i.x = icmp ne i32 %2, %3
  %i.y = add i32 %5, %2
  %.not10.i51.i = icmp ugt i32 %i.y, %3
  %or.cond11.i52.i = and i1 %i.x, %.not10.i51.i
  br i1 %or.cond11.i52.i, label %bb.f, label %check_overlap_4.exit

bb.f:                                             ; preds = %check_overlap_2.exit48.i
  %i.z = add i32 %5, %3
  %i.aa = icmp ule i32 %i.z, %2
  tail call void @llvm.assume(i1 %i.aa)
  br label %check_overlap_4.exit

check_overlap_4.exit:                             ; preds = %check_overlap_2.exit48.i, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %check_overlap_4.exit
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %i.af = load i8, ptr %i.ae, align 8
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 41
  %i.ai = load i8, ptr %i.ah, align 1, !range !11, !noundef !12
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = tail call fastcc i32 @choose_vector_type(ptr noundef %i.ad, i32 noundef %i.ag, i32 noundef %4, i1 noundef zeroext %i.aj)
  switch i32 %i.ak, label %bb.o [
    i32 5, label %bb.h
    i32 4, label %bb.j
    i32 3, label %bb.k
    i32 0, label %.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.al = and i32 %4, -32                         ; 7 uses
  %i.am = load i8, ptr %i.ae, align 8
  %i.an = zext i8 %i.am to i32
  %i.ao = load ptr, ptr %i.ab, align 8
  tail call fastcc void @expand_4i_vec(i32 noundef %i.an, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %i.al, i32 noundef 32, i32 noundef 5, i64 noundef %6, ptr noundef %i.ao)
  %i.ap = icmp eq i32 %i.al, %4
  br i1 %i.ap, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add i32 %i.al, %0
  %i.ar = add i32 %i.al, %1
  %i.as = add i32 %i.al, %2
  %i.at = add i32 %i.al, %3
  %i.au = and i32 %4, 31
  %i.av = sub i32 %5, %i.al
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.099 = phi i32 [ %i.as, %bb.i ], [ %2, %bb.g ]
  %.098 = phi i32 [ %i.at, %bb.i ], [ %3, %bb.g ]
  %.096 = phi i32 [ %i.au, %bb.i ], [ %4, %bb.g ] ; 2 uses
  %.094 = phi i32 [ %i.av, %bb.i ], [ %5, %bb.g ]
  %.093 = phi i32 [ %i.ar, %bb.i ], [ %1, %bb.g ]
  %.092 = phi i32 [ %i.aq, %bb.i ], [ %0, %bb.g ] ; 2 uses
  %i.aw = load i8, ptr %i.ae, align 8
  %i.ax = zext i8 %i.aw to i32
  %i.ay = load ptr, ptr %i.ab, align 8
  tail call fastcc void @expand_4i_vec(i32 noundef %i.ax, i32 noundef %.092, i32 noundef %.093, i32 noundef %.099, i32 noundef %.098, i32 noundef %.096, i32 noundef 16, i32 noundef 4, i64 noundef %6, ptr noundef %i.ay)
  br label %bb.p

bb.k:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.ae, align 8
  %i.ba = zext i8 %i.az to i32
  %i.bb = load ptr, ptr %i.ab, align 8
  tail call fastcc void @expand_4i_vec(i32 noundef %i.ba, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 8, i32 noundef 3, i64 noundef %6, ptr noundef %i.bb)
  br label %bb.p

.thread:                                          ; preds = %check_overlap_4.exit, %bb.g
  %i.bc = load ptr, ptr %7, align 8               ; 2 uses
  %.not104 = icmp eq ptr %i.bc, null
  %i.bd = icmp ult i32 %4, 8
  %or.cond = or i1 %i.bd, %.not104
  br i1 %or.cond, label %check_size_impl.exit.thread, label %check_size_impl.exit

check_size_impl.exit:                             ; preds = %.thread
  %i.be = and i32 %4, 7
  %i.bf = icmp eq i32 %i.be, 0
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ult i32 %4, 40
  br i1 %i.bg, label %bb.l, label %check_size_impl.exit.thread

bb.l:                                             ; preds = %check_size_impl.exit
  %i.bh = tail call ptr @tcg_temp_new_i64() #9    ; 3 uses
  %i.bi = tail call ptr @tcg_temp_new_i64() #9    ; 3 uses
  %i.bj = tail call ptr @tcg_temp_new_i64() #9    ; 3 uses
  %i.bk = tail call ptr @tcg_temp_new_i64() #9    ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.024.i = phi i32 [ %8, %.lr.ph.i ], [ 0, %bb.l ] ; 5 uses
  %i.bl = load ptr, ptr @tcg_env, align 8
  %i.bm = add i32 %.024.i, %1
  %i.bn = zext i32 %i.bm to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.bi, ptr noundef %i.bl, i64 noundef %i.bn) #9
  %i.bo = load ptr, ptr @tcg_env, align 8
  %i.bp = add i32 %.024.i, %2
  %i.bq = zext i32 %i.bp to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.bj, ptr noundef %i.bo, i64 noundef %i.bq) #9
  %i.br = load ptr, ptr @tcg_env, align 8
  %i.bs = add i32 %.024.i, %3
  %i.bt = zext i32 %i.bs to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.bk, ptr noundef %i.br, i64 noundef %i.bt) #9
  tail call void %i.bc(ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %i.bk, i64 noundef %6) #9, !inline_history !39
  %i.bu = load ptr, ptr @tcg_env, align 8
  %i.bv = add i32 %.024.i, %0
  %i.bw = zext i32 %i.bv to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.bh, ptr noundef %i.bu, i64 noundef %i.bw) #9
  %8 = add nuw nsw i32 %.024.i, 8                 ; 2 uses
  %i.bx = icmp samesign ult i32 %8, %4
  br i1 %i.bx, label %.lr.ph.i, label %expand_4i_i64.exit, !llvm.loop !40

expand_4i_i64.exit:                               ; preds = %.lr.ph.i
  tail call void @tcg_temp_free_i64(ptr noundef %i.bk) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.bj) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.bi) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.bh) #9
  br label %bb.p

check_size_impl.exit.thread:                      ; preds = %check_size_impl.exit, %.thread
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not105 = icmp eq ptr %i.bz, null
  %i.ca = icmp ult i32 %4, 4
  %or.cond121 = or i1 %i.ca, %.not105
  br i1 %or.cond121, label %check_size_impl.exit110.thread, label %check_size_impl.exit110

check_size_impl.exit110:                          ; preds = %check_size_impl.exit.thread
  %i.cb = and i32 %4, 3
  %i.cc = icmp eq i32 %i.cb, 0
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp ult i32 %4, 20
  br i1 %i.cd, label %bb.m, label %check_size_impl.exit110.thread

bb.m:                                             ; preds = %check_size_impl.exit110
  %i.ce = trunc i64 %6 to i32
  %i.cf = tail call ptr @tcg_temp_new_i32() #9    ; 3 uses
  %i.cg = tail call ptr @tcg_temp_new_i32() #9    ; 3 uses
  %i.ch = tail call ptr @tcg_temp_new_i32() #9    ; 3 uses
  %i.ci = tail call ptr @tcg_temp_new_i32() #9    ; 3 uses
  br label %.lr.ph.i112

.lr.ph.i112:                                      ; preds = %bb.m, %.lr.ph.i112
  %.024.i113 = phi i32 [ %9, %.lr.ph.i112 ], [ 0, %bb.m ] ; 5 uses
  %i.cj = load ptr, ptr @tcg_env, align 8
  %i.ck = add i32 %.024.i113, %1
  %i.cl = zext i32 %i.ck to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.cg, ptr noundef %i.cj, i64 noundef %i.cl) #9
  %i.cm = load ptr, ptr @tcg_env, align 8
  %i.cn = add i32 %.024.i113, %2
  %i.co = zext i32 %i.cn to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.ch, ptr noundef %i.cm, i64 noundef %i.co) #9
  %i.cp = load ptr, ptr @tcg_env, align 8
  %i.cq = add i32 %.024.i113, %3
  %i.cr = zext i32 %i.cq to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.ci, ptr noundef %i.cp, i64 noundef %i.cr) #9
  tail call void %i.bz(ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci, i32 noundef %i.ce) #9, !inline_history !41
  %i.cs = load ptr, ptr @tcg_env, align 8
  %i.ct = add i32 %.024.i113, %0
  %i.cu = zext i32 %i.ct to i64
  tail call void @tcg_gen_st_i32(ptr noundef %i.cf, ptr noundef %i.cs, i64 noundef %i.cu) #9
  %9 = add nuw nsw i32 %.024.i113, 4              ; 2 uses
  %i.cv = icmp samesign ult i32 %9, %4
  br i1 %i.cv, label %.lr.ph.i112, label %expand_4i_i32.exit, !llvm.loop !42

expand_4i_i32.exit:                               ; preds = %.lr.ph.i112
  tail call void @tcg_temp_free_i32(ptr noundef %i.ci) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.ch) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.cg) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.cf) #9
  br label %bb.p

check_size_impl.exit110.thread:                   ; preds = %check_size_impl.exit110, %check_size_impl.exit.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not106 = icmp eq ptr %i.cx, null
  br i1 %.not106, label %bb.n, label %.thread117

bb.n:                                             ; preds = %check_size_impl.exit110.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1724, ptr noundef nonnull @__PRETTY_FUNCTION__.tcg_gen_gvec_4i) #10
  unreachable

.thread117:                                       ; preds = %check_size_impl.exit110.thread
  %i.cy = trunc i64 %6 to i32
  tail call void @tcg_gen_gvec_4_ool(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.cy, ptr noundef nonnull %i.cx)
  br label %bb.r

bb.o:                                             ; preds = %bb.g
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 1732, ptr noundef nonnull @__func__.tcg_gen_gvec_4i, ptr noundef null) #10
  unreachable

bb.p:                                             ; preds = %expand_4i_i64.exit, %expand_4i_i32.exit, %bb.h, %bb.k, %bb.j
  %.197 = phi i32 [ %4, %bb.h ], [ %.096, %bb.j ], [ %4, %bb.k ], [ %4, %expand_4i_i64.exit ], [ %4, %expand_4i_i32.exit ] ; 3 uses
  %.195 = phi i32 [ %5, %bb.h ], [ %.094, %bb.j ], [ %5, %bb.k ], [ %5, %expand_4i_i64.exit ], [ %5, %expand_4i_i32.exit ] ; 2 uses
  %.1 = phi i32 [ %0, %bb.h ], [ %.092, %bb.j ], [ %0, %bb.k ], [ %0, %expand_4i_i64.exit ], [ %0, %expand_4i_i32.exit ]
  %i.cz = icmp ult i32 %.197, %.195
  br i1 %i.cz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr @tcg_env, align 8
  %i.db = add i32 %.1, %.197
  %i.dc = sub nuw i32 %.195, %.197                ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.da, i32 noundef %i.db, i32 noundef %i.dc, i32 noundef %i.dc, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %bb.r

bb.r:                                             ; preds = %.thread117, %bb.q, %bb.p
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @expand_4i_vec(i32 noundef range(i32 0, 256) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 8, 33) %6, i32 noundef range(i32 3, 6) %7, i64 noundef %8, ptr nofree noundef readonly captures(none) %9) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.026 = phi i32 [ %i.q, %.lr.ph ], [ 0, %bb.a ] ; 5 uses
  %i.a = tail call ptr @tcg_temp_new_vec(i32 noundef %7) #9 ; 2 uses
  %i.b = tail call ptr @tcg_temp_new_vec(i32 noundef %7) #9 ; 2 uses
  %i.c = tail call ptr @tcg_temp_new_vec(i32 noundef %7) #9 ; 2 uses
  %i.d = tail call ptr @tcg_temp_new_vec(i32 noundef %7) #9 ; 2 uses
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = add i32 %.026, %2
  %i.g = zext i32 %i.f to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.b, ptr noundef %i.e, i64 noundef %i.g) #9
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = add i32 %.026, %3
  %i.j = zext i32 %i.i to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.c, ptr noundef %i.h, i64 noundef %i.j) #9
  %i.k = load ptr, ptr @tcg_env, align 8
  %i.l = add i32 %.026, %4
  %i.m = zext i32 %i.l to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.d, ptr noundef %i.k, i64 noundef %i.m) #9
  tail call void %9(i32 noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i64 noundef %8) #9
  %i.n = load ptr, ptr @tcg_env, align 8
  %i.o = add i32 %.026, %1
  %i.p = zext i32 %i.o to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.a, ptr noundef %i.n, i64 noundef %i.p) #9
  %i.q = add i32 %.026, %6                        ; 2 uses
  %i.r = icmp ult i32 %i.q, %5
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !43
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_mov_var(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %2, %4
  %i.b = icmp eq ptr %1, %3
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %check_size_align.exit, label %bb.c

check_size_align.exit:                            ; preds = %bb.a
  %i.c = icmp ult i32 %6, 2049
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ugt i32 %6, 15
  %i.e = select i1 %i.d, i32 15, i32 7            ; 2 uses
  %i.f = and i32 %i.e, %6
  %i.g = icmp eq i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i32 %i.e, %2
  %i.i = icmp eq i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i32 %5, %6
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %check_size_align.exit
  %i.k = add i32 %5, %2
  %i.l = sub nuw nsw i32 %6, %5                   ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %1, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.l, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @tcg_gen_gvec_2_var(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull @tcg_gen_gvec_mov_var.g)
  br label %bb.d

bb.d:                                             ; preds = %check_size_align.exit, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vec_mov2(i32 %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  tail call void @tcg_gen_mov_vec(ptr noundef %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_mov(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_mov, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_mov, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_mov(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @tcg_env, align 8          ; 3 uses
  %i.b = icmp eq i32 %1, %2
  br i1 %i.b, label %check_size_align.exit.i, label %bb.c

check_size_align.exit.i:                          ; preds = %bb.a
  %i.c = icmp ult i32 %4, 2049
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ugt i32 %4, 15
  %i.e = select i1 %i.d, i32 15, i32 7            ; 2 uses
  %i.f = and i32 %i.e, %4
  %i.g = icmp eq i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i32 %i.e, %1
  %i.i = icmp eq i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i32 %3, %4
  br i1 %i.j, label %bb.b, label %tcg_gen_gvec_mov_var.exit

bb.b:                                             ; preds = %check_size_align.exit.i
  %i.k = add i32 %3, %1
  %i.l = sub nuw nsw i32 %4, %3                   ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.a, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.l, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %tcg_gen_gvec_mov_var.exit

bb.c:                                             ; preds = %bb.a
  tail call void @tcg_gen_gvec_2_var(ptr noundef %i.a, i32 noundef %1, ptr noundef %i.a, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @tcg_gen_gvec_mov_var.g)
  br label %tcg_gen_gvec_mov_var.exit

tcg_gen_gvec_mov_var.exit:                        ; preds = %check_size_align.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_dup_i32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
check_size_align.exit:
  %i.a = icmp ult i32 %3, 2049
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ugt i32 %3, 15
  %i.c = select i1 %i.b, i32 15, i32 7            ; 2 uses
  %i.d = and i32 %i.c, %3
  %i.e = icmp eq i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.c, %1
  %i.g = icmp eq i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i32 %0, 3
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr @tcg_env, align 8
  tail call fastcc void @do_dup(i32 noundef %0, ptr noundef %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_dup(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) unnamed_addr #1 {
bb.a:
end_hunk_0
begin_hunk_1_@do_dup:bb.a
  %i.eu = icmp ult i32 %.0159, %.tr215267401
  br i1 %i.eu, label %tailrecurse, label %.loopexit

tailrecurse:                                      ; preds = %bb.al
  %i.ev = add i32 %.0159, %.tr213265403
  %i.ew = sub nuw i32 %.tr215267401, %.0159       ; 2 uses
  br label %.lr.ph405

.loopexit:                                        ; preds = %bb.al, %.tail, %bb.ad, %bb.m
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_dup_i64(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
check_size_align.exit:
  %i.a = icmp ult i32 %3, 2049
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ugt i32 %3, 15
  %i.c = select i1 %i.b, i32 15, i32 7            ; 2 uses
  %i.d = and i32 %i.c, %3
  %i.e = icmp eq i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.c, %1
  %i.g = icmp eq i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i32 %0, 4
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr @tcg_env, align 8
  tail call fastcc void @do_dup(i32 noundef %0, ptr noundef %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %4, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_dup_mem(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
check_size_align.exit:
  %i.a = icmp ult i32 %4, 2049
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ugt i32 %4, 15
  %i.c = select i1 %i.b, i32 15, i32 7            ; 2 uses
  %i.d = and i32 %i.c, %4
  %i.e = icmp eq i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.c, %1
  %i.g = icmp eq i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i32 %0, 4
  br i1 %i.h, label %bb.a, label %bb.j

bb.a:                                             ; preds = %check_size_align.exit
  %i.i = tail call fastcc i32 @choose_vector_type(ptr noundef null, i32 noundef %0, i32 noundef %3, i1 noundef zeroext false) ; 3 uses
  %.not139 = icmp eq i32 %i.i, 0
  br i1 %.not139, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @tcg_temp_new_vec(i32 noundef %i.i) #9 ; 2 uses
  %i.k = load ptr, ptr @tcg_env, align 8
  %i.l = zext i32 %2 to i64
  tail call void @tcg_gen_dup_mem_vec(i32 noundef %0, ptr noundef %i.j, ptr noundef %i.k, i64 noundef %i.l) #9
  %i.m = load ptr, ptr @tcg_env, align 8
  tail call fastcc void @do_dup_store(i32 noundef %i.i, ptr noundef %i.m, i32 noundef %1, i32 noundef %3, i32 noundef %4, ptr noundef %i.j)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not140 = icmp eq i32 %0, 3
  %i.n = zext i32 %2 to i64                       ; 4 uses
  br i1 %.not140, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 5 uses
  %i.p = load ptr, ptr @tcg_env, align 8          ; 3 uses
  switch i32 %0, label %bb.g [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @tcg_gen_ld8u_i32(ptr noundef %i.o, ptr noundef %i.p, i64 noundef %i.n) #9
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @tcg_gen_ld16u_i32(ptr noundef %i.o, ptr noundef %i.p, i64 noundef %i.n) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @tcg_gen_ld_i32(ptr noundef %i.o, ptr noundef %i.p, i64 noundef %i.n) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.q = load ptr, ptr @tcg_env, align 8
  tail call fastcc void @do_dup(i32 noundef %0, ptr noundef %i.q, i32 noundef %1, i32 noundef %3, i32 noundef %4, ptr noundef %i.o, ptr noundef null, i64 noundef 0)
  tail call void @tcg_temp_free_i32(ptr noundef %i.o) #9
  br label %bb.v

bb.i:                                             ; preds = %bb.c
  %i.r = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.s = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld_i64(ptr noundef %i.r, ptr noundef %i.s, i64 noundef %i.n) #9
  %i.t = load ptr, ptr @tcg_env, align 8
  tail call fastcc void @do_dup(i32 noundef 3, ptr noundef %i.t, i32 noundef %1, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef %i.r, i64 noundef 0)
  tail call void @tcg_temp_free_i64(ptr noundef %i.r) #9
  br label %bb.v

bb.j:                                             ; preds = %check_size_align.exit
  switch i32 %0, label %bb.u [
    i32 4, label %bb.k
    i32 5, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = icmp ugt i32 %3, 15
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load i32, ptr @cpuinfo, align 4
  %i.w = and i32 %i.v, 512
  %.not138 = icmp eq i32 %i.w, 0
  br i1 %.not138, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %i.y = load ptr, ptr @tcg_env, align 8
  %i.z = zext i32 %2 to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.x, ptr noundef %i.y, i64 noundef %i.z) #9
  %i.aa = icmp eq i32 %2, %1
  %i.ab = select i1 %i.aa, i32 16, i32 0          ; 2 uses
  %i.ac = icmp ult i32 %i.ab, %3
  br i1 %i.ac, label %.lr.ph152, label %.loopexit

.lr.ph152:                                        ; preds = %bb.l, %.lr.ph152
  %.0129151 = phi i32 [ %i.ag, %.lr.ph152 ], [ %i.ab, %bb.l ] ; 2 uses
  %i.ad = load ptr, ptr @tcg_env, align 8
  %i.ae = add i32 %.0129151, %1
  %i.af = zext i32 %i.ae to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.x, ptr noundef %i.ad, i64 noundef %i.af) #9
  %i.ag = add i32 %.0129151, 16                   ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %3
  br i1 %i.ah, label %.lr.ph152, label %.loopexit, !llvm.loop !47

bb.m:                                             ; preds = %bb.k
  %i.ai = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.aj = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.ak = load ptr, ptr @tcg_env, align 8
  %i.al = zext i32 %2 to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.ai, ptr noundef %i.ak, i64 noundef %i.al) #9
  %i.am = load ptr, ptr @tcg_env, align 8
  %i.an = add i32 %2, 8
  %i.ao = zext i32 %i.an to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.aj, ptr noundef %i.am, i64 noundef %i.ao) #9
  %i.ap = icmp eq i32 %2, %1
  %i.aq = select i1 %i.ap, i32 16, i32 0          ; 2 uses
  %i.ar = icmp ult i32 %i.aq, %3
  br i1 %i.ar, label %.lr.ph154, label %._crit_edge

.lr.ph154:                                        ; preds = %bb.m, %.lr.ph154
  %.1130153 = phi i32 [ %i.ay, %.lr.ph154 ], [ %i.aq, %bb.m ] ; 2 uses
  %i.as = load ptr, ptr @tcg_env, align 8
  %i.at = add i32 %.1130153, %1                   ; 2 uses
  %i.au = zext i32 %i.at to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.ai, ptr noundef %i.as, i64 noundef %i.au) #9
  %i.av = load ptr, ptr @tcg_env, align 8
  %i.aw = add i32 %i.at, 8
  %i.ax = zext i32 %i.aw to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.aj, ptr noundef %i.av, i64 noundef %i.ax) #9
  %i.ay = add i32 %.1130153, 16                   ; 2 uses
  %i.az = icmp ult i32 %i.ay, %3
  br i1 %i.az, label %.lr.ph154, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph154, %bb.m
  tail call void @tcg_temp_free_i64(ptr noundef %i.ai) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.aj) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph152, %bb.l, %._crit_edge
  %i.ba = icmp ult i32 %3, %4
  br i1 %i.ba, label %bb.n, label %bb.v

bb.n:                                             ; preds = %.loopexit
  %i.bb = load ptr, ptr @tcg_env, align 8
  %i.bc = add i32 %3, %1
  %i.bd = sub nuw nsw i32 %4, %3                  ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.bd, i32 noundef %i.bd, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %bb.v

bb.o:                                             ; preds = %bb.j
  %i.be = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = and i32 %3, 31
  %i.bg = icmp eq i32 %i.bf, 0
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = load i32, ptr @cpuinfo, align 4         ; 2 uses
  %i.bi = and i32 %i.bh, 1024
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call ptr @tcg_temp_new_vec(i32 noundef 5) #9 ; 2 uses
  %i.bk = load ptr, ptr @tcg_env, align 8
  %i.bl = zext i32 %2 to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.bj, ptr noundef %i.bk, i64 noundef %i.bl) #9
  %i.bm = icmp eq i32 %2, %1
  %i.bn = select i1 %i.bm, i32 32, i32 0          ; 2 uses
  %i.bo = icmp ult i32 %i.bn, %3
  br i1 %i.bo, label %.lr.ph, label %.loopexit142

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.0126144 = phi i32 [ %5, %.lr.ph ], [ %i.bn, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr @tcg_env, align 8
  %i.bq = add i32 %.0126144, %1
  %i.br = zext i32 %i.bq to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.bj, ptr noundef %i.bp, i64 noundef %i.br) #9
  %5 = add nuw i32 %.0126144, 32                  ; 2 uses
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %.lr.ph, label %.loopexit142, !llvm.loop !49

bb.q:                                             ; preds = %bb.o
  %i.bs = and i32 %i.bh, 512
  %.not137 = icmp eq i32 %i.bs, 0
  br i1 %.not137, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %i.bu = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %i.bv = load ptr, ptr @tcg_env, align 8
  %i.bw = zext i32 %2 to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.bt, ptr noundef %i.bv, i64 noundef %i.bw) #9
  %i.bx = load ptr, ptr @tcg_env, align 8
  %i.by = add i32 %2, 16
  %i.bz = zext i32 %i.by to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.bu, ptr noundef %i.bx, i64 noundef %i.bz) #9
  %i.ca = icmp eq i32 %2, %1
  %i.cb = select i1 %i.ca, i32 32, i32 0          ; 2 uses
  %i.cc = icmp ult i32 %i.cb, %3
  br i1 %i.cc, label %.lr.ph146, label %.loopexit142

.lr.ph146:                                        ; preds = %bb.r, %.lr.ph146
  %.1127145 = phi i32 [ %7, %.lr.ph146 ], [ %i.cb, %bb.r ] ; 2 uses
  %i.cd = load ptr, ptr @tcg_env, align 8
  %i.ce = add i32 %.1127145, %1                   ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.bt, ptr noundef %i.cd, i64 noundef %i.cf) #9
  %i.cg = load ptr, ptr @tcg_env, align 8
  %i.ch = add i32 %i.ce, 16
  %i.ci = zext i32 %i.ch to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.bu, ptr noundef %i.cg, i64 noundef %i.ci) #9
  %7 = add nuw i32 %.1127145, 32                  ; 2 uses
  %8 = icmp ult i32 %7, %3
  br i1 %8, label %.lr.ph146, label %.loopexit142, !llvm.loop !50

bb.s:                                             ; preds = %bb.q
  %i.cj = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.ck = load ptr, ptr @tcg_env, align 8
  %i.cl = zext i32 %2 to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.cj, ptr noundef %i.ck, i64 noundef %i.cl) #9
  %i.cm = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.cn = load ptr, ptr @tcg_env, align 8
  %i.co = add i32 %2, 8
  %i.cp = zext i32 %i.co to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.cm, ptr noundef %i.cn, i64 noundef %i.cp) #9
  %i.cq = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.cr = load ptr, ptr @tcg_env, align 8
  %i.cs = add i32 %2, 16
  %i.ct = zext i32 %i.cs to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.cq, ptr noundef %i.cr, i64 noundef %i.ct) #9
  %i.cu = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.cv = load ptr, ptr @tcg_env, align 8
  %i.cw = add i32 %2, 24
  %i.cx = zext i32 %i.cw to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.cu, ptr noundef %i.cv, i64 noundef %i.cx) #9
  %i.cy = icmp eq i32 %2, %1
  %i.cz = select i1 %i.cy, i32 32, i32 0          ; 2 uses
  %i.da = icmp ult i32 %i.cz, %3
  br i1 %i.da, label %.preheader141, label %.preheader

.preheader141:                                    ; preds = %bb.s, %.preheader141
  %.2128149 = phi i32 [ %9, %.preheader141 ], [ %i.cz, %bb.s ] ; 2 uses
  %i.db = add i32 %.2128149, %1                   ; 4 uses
  %i.dc = load ptr, ptr @tcg_env, align 8
  %i.dd = zext i32 %i.db to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.cj, ptr noundef %i.dc, i64 noundef %i.dd) #9
  %i.de = load ptr, ptr @tcg_env, align 8
  %i.df = add i32 %i.db, 8
  %i.dg = zext i32 %i.df to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.cm, ptr noundef %i.de, i64 noundef %i.dg) #9
  %i.dh = load ptr, ptr @tcg_env, align 8
  %i.di = add i32 %i.db, 16
  %i.dj = zext i32 %i.di to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.cq, ptr noundef %i.dh, i64 noundef %i.dj) #9
  %i.dk = load ptr, ptr @tcg_env, align 8
  %i.dl = add i32 %i.db, 24
  %i.dm = zext i32 %i.dl to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.cu, ptr noundef %i.dk, i64 noundef %i.dm) #9
  %9 = add nuw i32 %.2128149, 32                  ; 2 uses
  %10 = icmp ult i32 %9, %3
  br i1 %10, label %.preheader141, label %.preheader, !llvm.loop !51

.preheader:                                       ; preds = %.preheader141, %bb.s
  tail call void @tcg_temp_free_i64(ptr noundef %i.cj) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.cm) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.cq) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.cu) #9
  br label %.loopexit142

.loopexit142:                                     ; preds = %.lr.ph, %.lr.ph146, %bb.p, %bb.r, %.preheader
  %i.dn = icmp ult i32 %3, %4
  br i1 %i.dn, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.loopexit142
  %i.do = load ptr, ptr @tcg_env, align 8
  %i.dp = add i32 %3, %1
  %i.dq = sub nuw nsw i32 %4, %3                  ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.do, i32 noundef %i.dp, i32 noundef %i.dq, i32 noundef %i.dq, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %bb.v

bb.u:                                             ; preds = %bb.j
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 1897, ptr noundef nonnull @__func__.tcg_gen_gvec_dup_mem, ptr noundef null) #10
  unreachable

bb.v:                                             ; preds = %.loopexit142, %bb.t, %.loopexit, %bb.n, %bb.b, %bb.i, %bb.h
  ret void
}

declare void @tcg_gen_dup_mem_vec(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_dup_store(i32 noundef range(i32 1, 6) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %3, 7
  tail call void @llvm.assume(i1 %i.a)
  %i.b = and i32 %2, 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %2 to i64
  tail call void @tcg_gen_stl_vec(ptr noundef %5, ptr noundef %1, i64 noundef %i.c, i32 noundef 3) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 8, %bb.b ], [ 0, %bb.a ]        ; 6 uses
  switch i32 %0, label %bb.d [
    i32 5, label %.preheader
    i32 4, label %.loopexit41
    i32 3, label %.preheader42
  ]

.preheader42:                                     ; preds = %bb.c
  %i.d = icmp ult i32 %.0, %3
  br i1 %i.d, label %.lr.ph, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.e = or disjoint i32 %.0, 32                  ; 2 uses
  %.not3945 = icmp ugt i32 %i.e, %3
  br i1 %.not3945, label %.loopexit41, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader, %.lr.ph47
  %i.f = phi i32 [ %i.i, %.lr.ph47 ], [ %i.e, %.preheader ] ; 3 uses
  %.146 = phi i32 [ %i.f, %.lr.ph47 ], [ %.0, %.preheader ]
  %i.g = add i32 %.146, %2
  %i.h = zext i32 %i.g to i64
  tail call void @tcg_gen_stl_vec(ptr noundef %5, ptr noundef %1, i64 noundef %i.h, i32 noundef 5) #9
  %i.i = add i32 %i.f, 32                         ; 2 uses
  %.not39 = icmp ugt i32 %i.i, %3
  br i1 %.not39, label %.loopexit41, label %.lr.ph47, !llvm.loop !52

.loopexit41:                                      ; preds = %.lr.ph47, %.preheader, %bb.c
  %.2 = phi i32 [ %.0, %bb.c ], [ %.0, %.preheader ], [ %i.f, %.lr.ph47 ] ; 2 uses
  %i.j = add nuw i32 %.2, 16                      ; 2 uses
  %.not4048 = icmp ugt i32 %i.j, %3
  br i1 %.not4048, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %.loopexit41, %.lr.ph50
  %i.k = phi i32 [ %i.n, %.lr.ph50 ], [ %i.j, %.loopexit41 ] ; 2 uses
  %.349 = phi i32 [ %i.k, %.lr.ph50 ], [ %.2, %.loopexit41 ]
  %i.l = add i32 %.349, %2
  %i.m = zext i32 %i.l to i64
  tail call void @tcg_gen_stl_vec(ptr noundef %5, ptr noundef %1, i64 noundef %i.m, i32 noundef 4) #9
  %i.n = add i32 %i.k, 16                         ; 2 uses
  %.not40 = icmp ugt i32 %i.n, %3
  br i1 %.not40, label %.loopexit, label %.lr.ph50, !llvm.loop !53

.lr.ph:                                           ; preds = %.preheader42, %.lr.ph
  %.444 = phi i32 [ %i.q, %.lr.ph ], [ %.0, %.preheader42 ] ; 2 uses
  %i.o = add i32 %.444, %2
  %i.p = zext i32 %i.o to i64
  tail call void @tcg_gen_stl_vec(ptr noundef %5, ptr noundef %1, i64 noundef %i.p, i32 noundef 3) #9
  %i.q = add i32 %.444, 8                         ; 2 uses
  %i.r = icmp ult i32 %i.q, %3
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !54

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 552, ptr noundef nonnull @__func__.do_dup_store, ptr noundef null) #10
  unreachable

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph50, %.preheader42, %.loopexit41
  %i.s = icmp ult i32 %3, %4
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.t = add i32 %3, %2
  %i.u = sub nuw i32 %4, %3                       ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %1, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.u, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  ret void
}

declare ptr @tcg_temp_ebb_new_i32() local_unnamed_addr #2

declare void @tcg_gen_ld8u_i32(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld16u_i32(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld_i32(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @tcg_temp_ebb_new_i64() local_unnamed_addr #2

declare void @tcg_gen_ld_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_ld_vec(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_st_vec(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @tcg_gen_st_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_dup_imm_var(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) local_unnamed_addr #1 {
check_size_align.exit:
  %i.a = icmp ult i32 %4, 2049
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ugt i32 %4, 15
  %i.c = select i1 %i.b, i32 15, i32 7            ; 2 uses
  %i.d = and i32 %i.c, %4
  %i.e = icmp eq i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i32 %i.c, %2
  %i.g = icmp eq i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  tail call fastcc void @do_dup(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null, i64 noundef %5)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_dup_imm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #1 {
tcg_gen_gvec_dup_imm_var.exit:
  %i.a = load ptr, ptr @tcg_env, align 8
  %i.b = icmp ult i32 %3, 2049
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ugt i32 %3, 15
  %i.d = select i1 %i.c, i32 15, i32 7            ; 2 uses
  %i.e = and i32 %i.d, %3
  %i.f = icmp eq i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = and i32 %i.d, %1
  %i.h = icmp eq i32 %i.g, 0
  tail call void @llvm.assume(i1 %i.h)
  tail call fastcc void @do_dup(i32 noundef %0, ptr noundef %i.a, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef null, i64 noundef %4)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_not(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @tcg_env, align 8          ; 2 uses
  tail call void @tcg_gen_gvec_2_var(ptr noundef %i.a, i32 noundef %1, ptr noundef %i.a, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @tcg_gen_gvec_not.g)
  ret void
}

declare void @tcg_gen_not_i64(ptr noundef, ptr noundef) #2

declare void @tcg_gen_not_vec(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_not(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_not, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_not, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_add8_i64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @tcg_constant_i64(i64 noundef -9187201950435737472) #9
  tail call fastcc void @gen_addv_mask(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a)
  ret void
end_hunk_1
begin_hunk_2_@gen_helper_gvec_rotr8v:bb.a
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_rotr8v, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_rotr16v(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_rotr16v, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_rotr16v, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tcg_gen_rotr_mod_i32(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 3 uses
  tail call void @tcg_gen_andi_i32(ptr noundef %i.a, ptr noundef %2, i32 noundef 31) #9
  tail call void @tcg_gen_rotr_i32(ptr noundef %0, ptr noundef %1, ptr noundef %i.a) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.a) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_rotr32v(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_rotr32v, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_rotr32v, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @tcg_gen_rotr_mod_i64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  tail call void @tcg_gen_andi_i64(ptr noundef %i.a, ptr noundef %2, i64 noundef 63) #9
  tail call void @tcg_gen_rotr_i64(ptr noundef %0, ptr noundef %1, ptr noundef %i.a) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.a) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_rotr64v(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_rotr64v, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_rotr64v, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_gvec_cmp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
check_size_align.exit:
  %i.a = icmp ult i32 %6, 2049
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ugt i32 %6, 15
  %i.c = select i1 %i.b, i32 15, i32 7
  %i.d = and i32 %i.c, %6
  %i.e = icmp eq i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i32 %2, %3
  %i.g = add i32 %6, %2                           ; 2 uses
  %.not10.i.i = icmp ugt i32 %i.g, %3
  %or.cond11.i.i = and i1 %i.f, %.not10.i.i
  br i1 %or.cond11.i.i, label %bb.a, label %check_overlap_2.exit.i

bb.a:                                             ; preds = %check_size_align.exit
  %i.h = add i32 %6, %3
  %i.i = icmp ule i32 %i.h, %2
  tail call void @llvm.assume(i1 %i.i)
  br label %check_overlap_2.exit.i

check_overlap_2.exit.i:                           ; preds = %bb.a, %check_size_align.exit
  %i.j = icmp ne i32 %2, %4
  %.not10.i16.i = icmp ugt i32 %i.g, %4
  %or.cond11.i17.i = and i1 %i.j, %.not10.i16.i
  br i1 %or.cond11.i17.i, label %bb.b, label %check_overlap_2.exit18.i

bb.b:                                             ; preds = %check_overlap_2.exit.i
  %i.k = add i32 %6, %4
  %i.l = icmp ule i32 %i.k, %2
  tail call void @llvm.assume(i1 %i.l)
  br label %check_overlap_2.exit18.i

check_overlap_2.exit18.i:                         ; preds = %bb.b, %check_overlap_2.exit.i
  %i.m = icmp ne i32 %3, %4
  %i.n = add i32 %6, %3
  %.not10.i21.i = icmp ugt i32 %i.n, %4
  %or.cond11.i22.i = and i1 %i.m, %.not10.i21.i
  br i1 %or.cond11.i22.i, label %bb.c, label %check_overlap_3.exit

bb.c:                                             ; preds = %check_overlap_2.exit18.i
  %i.o = add i32 %6, %4
  %i.p = icmp ule i32 %i.o, %3
  tail call void @llvm.assume(i1 %i.p)
  br label %check_overlap_3.exit

check_overlap_3.exit:                             ; preds = %check_overlap_2.exit18.i, %bb.c
  %or.cond = icmp ult i32 %0, 2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %check_overlap_3.exit
  %i.q = load ptr, ptr @tcg_env, align 8
  %sext = sub nsw i32 0, %0
  %i.r = sext i32 %sext to i64
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.q, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null, i64 noundef %i.r)
  br label %bb.t

bb.e:                                             ; preds = %check_overlap_3.exit
  %i.s = icmp eq i32 %1, 3                        ; 2 uses
  %i.t = tail call fastcc i32 @choose_vector_type(ptr noundef nonnull @tcg_gen_gvec_cmp.cmp_list, i32 noundef %1, i32 noundef %5, i1 noundef zeroext %i.s)
  switch i32 %i.t, label %bb.q [
    i32 5, label %bb.f
    i32 4, label %bb.h
    i32 3, label %bb.i
    i32 0, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %5, -32                          ; 6 uses
  tail call fastcc void @expand_cmp_vec(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.u, i32 noundef 32, i32 noundef 5, i32 noundef %0)
  %i.v = icmp eq i32 %i.u, %5
  br i1 %i.v, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add i32 %i.u, %2
  %i.x = add i32 %i.u, %3
  %i.y = add i32 %i.u, %4
  %i.z = and i32 %5, 31
  %i.aa = sub i32 %6, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.094 = phi i32 [ %i.w, %bb.g ], [ %2, %bb.e ]  ; 2 uses
  %.092 = phi i32 [ %i.x, %bb.g ], [ %3, %bb.e ]
  %.090 = phi i32 [ %i.y, %bb.g ], [ %4, %bb.e ]
  %.088 = phi i32 [ %i.z, %bb.g ], [ %5, %bb.e ]  ; 2 uses
  %.087 = phi i32 [ %i.aa, %bb.g ], [ %6, %bb.e ]
  tail call fastcc void @expand_cmp_vec(i32 noundef %1, i32 noundef %.094, i32 noundef %.092, i32 noundef %.090, i32 noundef %.088, i32 noundef 16, i32 noundef 4, i32 noundef %0)
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  tail call fastcc void @expand_cmp_vec(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 8, i32 noundef 3, i32 noundef %0)
  br label %bb.r

bb.j:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp ult i32 %5, 8
  br i1 %i.ab, label %.thread, label %check_size_impl.exit

check_size_impl.exit:                             ; preds = %bb.k
  %i.ac = and i32 %5, 7
  %i.ad = icmp eq i32 %i.ac, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ult i32 %5, 40
  br i1 %i.ae, label %bb.l, label %.thread

bb.l:                                             ; preds = %check_size_impl.exit
  %i.af = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 5 uses
  %i.ag = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.017.i = phi i32 [ %7, %.lr.ph.i ], [ 0, %bb.l ] ; 4 uses
  %i.ah = load ptr, ptr @tcg_env, align 8
  %i.ai = add i32 %.017.i, %3
  %i.aj = zext i32 %i.ai to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.af, ptr noundef %i.ah, i64 noundef %i.aj) #9
  %i.ak = load ptr, ptr @tcg_env, align 8
  %i.al = add i32 %.017.i, %4
  %i.am = zext i32 %i.al to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.ag, ptr noundef %i.ak, i64 noundef %i.am) #9
  tail call void @tcg_gen_negsetcond_i64(i32 noundef range(i32 2, 0) %0, ptr noundef %i.af, ptr noundef %i.af, ptr noundef %i.ag) #9
  %i.an = load ptr, ptr @tcg_env, align 8
  %i.ao = add i32 %.017.i, %2
  %i.ap = zext i32 %i.ao to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.af, ptr noundef %i.an, i64 noundef %i.ap) #9
  %7 = add nuw nsw i32 %.017.i, 8                 ; 2 uses
  %i.aq = icmp samesign ult i32 %7, %5
  br i1 %i.aq, label %.lr.ph.i, label %expand_cmp_i64.exit, !llvm.loop !60

expand_cmp_i64.exit:                              ; preds = %.lr.ph.i
  tail call void @tcg_temp_free_i64(ptr noundef %i.ag) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.af) #9
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.ar = icmp ne i32 %1, 2
  %i.as = icmp ult i32 %5, 4
  %or.cond116 = or i1 %i.ar, %i.as
  br i1 %or.cond116, label %.thread, label %check_size_impl.exit106

check_size_impl.exit106:                          ; preds = %bb.m
  %i.at = and i32 %5, 3
  %i.au = icmp eq i32 %i.at, 0
  tail call void @llvm.assume(i1 %i.au)
  %i.av = icmp ult i32 %5, 20
  br i1 %i.av, label %bb.n, label %.thread

bb.n:                                             ; preds = %check_size_impl.exit106
  %i.aw = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 5 uses
  %i.ax = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 3 uses
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %bb.n, %.lr.ph.i108
  %.017.i109 = phi i32 [ %8, %.lr.ph.i108 ], [ 0, %bb.n ] ; 4 uses
  %i.ay = load ptr, ptr @tcg_env, align 8
  %i.az = add i32 %.017.i109, %3
  %i.ba = zext i32 %i.az to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.aw, ptr noundef %i.ay, i64 noundef %i.ba) #9
  %i.bb = load ptr, ptr @tcg_env, align 8
  %i.bc = add i32 %.017.i109, %4
  %i.bd = zext i32 %i.bc to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.ax, ptr noundef %i.bb, i64 noundef %i.bd) #9
  tail call void @tcg_gen_negsetcond_i32(i32 noundef range(i32 2, 0) %0, ptr noundef %i.aw, ptr noundef %i.aw, ptr noundef %i.ax) #9
  %i.be = load ptr, ptr @tcg_env, align 8
  %i.bf = add i32 %.017.i109, %2
  %i.bg = zext i32 %i.bf to i64
  tail call void @tcg_gen_st_i32(ptr noundef %i.aw, ptr noundef %i.be, i64 noundef %i.bg) #9
  %8 = add nuw nsw i32 %.017.i109, 4              ; 2 uses
  %i.bh = icmp samesign ult i32 %8, %5
  br i1 %i.bh, label %.lr.ph.i108, label %expand_cmp_i32.exit, !llvm.loop !61

expand_cmp_i32.exit:                              ; preds = %.lr.ph.i108
  tail call void @tcg_temp_free_i32(ptr noundef %i.ax) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.aw) #9
  br label %bb.r

.thread:                                          ; preds = %bb.k, %check_size_impl.exit, %check_size_impl.exit106, %bb.m
  %i.bi = zext i32 %0 to i64                      ; 2 uses
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bj, 30843
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %.thread112, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bl = shl i32 %0, 1
  %i.bm = and i32 %i.bl, 4
  %i.bn = xor i32 %i.bm, %0
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = and i64 %i.bp, 30843
  %.not102.not = icmp eq i64 %i.bq, 0
  br i1 %.not102.not, label %.thread112, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 3918, ptr noundef nonnull @__PRETTY_FUNCTION__.tcg_gen_gvec_cmp) #10
  unreachable

.thread112:                                       ; preds = %.thread, %bb.o
  %.193 = phi i32 [ %3, %.thread ], [ %4, %bb.o ]
  %.191 = phi i32 [ %4, %.thread ], [ %3, %bb.o ]
  %.pn = phi i64 [ %i.bi, %.thread ], [ %i.bo, %bb.o ]
  %.0.in = getelementptr inbounds nuw [8 x i8], ptr @tcg_gen_gvec_cmp.fns, i64 %.pn
  %.0 = load ptr, ptr %.0.in, align 8
  %i.br = zext i32 %1 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr @tcg_env, align 8         ; 3 uses
  tail call fastcc void @expand_3_ool(ptr noundef %i.bu, i32 noundef %2, ptr noundef %i.bu, i32 noundef %.193, ptr noundef %i.bu, i32 noundef %.191, i32 noundef %5, i32 noundef %6, i32 noundef 0, ptr noundef readonly %i.bt)
  br label %bb.t

bb.q:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 3926, ptr noundef nonnull @__func__.tcg_gen_gvec_cmp, ptr noundef null) #10
  unreachable

bb.r:                                             ; preds = %expand_cmp_i64.exit, %expand_cmp_i32.exit, %bb.f, %bb.i, %bb.h
  %.195 = phi i32 [ %2, %bb.f ], [ %.094, %bb.h ], [ %2, %bb.i ], [ %2, %expand_cmp_i64.exit ], [ %2, %expand_cmp_i32.exit ]
  %.189 = phi i32 [ %5, %bb.f ], [ %.088, %bb.h ], [ %5, %bb.i ], [ %5, %expand_cmp_i64.exit ], [ %5, %expand_cmp_i32.exit ] ; 3 uses
  %.1 = phi i32 [ %6, %bb.f ], [ %.087, %bb.h ], [ %6, %bb.i ], [ %6, %expand_cmp_i64.exit ], [ %6, %expand_cmp_i32.exit ] ; 2 uses
  %i.bv = icmp ult i32 %.189, %.1
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr @tcg_env, align 8
  %i.bx = add i32 %.189, %.195
  %i.by = sub nuw i32 %.1, %.189                  ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.bw, i32 noundef %i.bx, i32 noundef %i.by, i32 noundef %i.by, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
  br label %bb.t

bb.t:                                             ; preds = %.thread112, %bb.r, %bb.s, %bb.d
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_eq8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_eq8, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_eq8, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_eq16(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_eq16, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_eq16, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_eq32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_eq32, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_eq32, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_eq64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_eq64, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_eq64, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_ne8(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_ne8, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_ne8, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_ne16(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_ne16, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_ne16, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_ne32(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_ne32, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_ne32, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #9
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_ne64(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_ne64, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
end_hunk_2
