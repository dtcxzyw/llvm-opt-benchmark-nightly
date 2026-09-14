Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg-op-gvec?download=true
inline.NumInlined: 877
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tcg_gen_gvec_dup_mem:check_size_align.exit
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
  %.0126144 = phi i32 [ %i.bs, %.lr.ph ], [ %i.bn, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr @tcg_env, align 8
  %i.bq = add i32 %.0126144, %1
  %i.br = zext i32 %i.bq to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.bj, ptr noundef %i.bp, i64 noundef %i.br) #9
  %i.bs = add nuw i32 %.0126144, 32               ; 2 uses
  %i.bt = icmp ult i32 %i.bs, %3
  br i1 %i.bt, label %.lr.ph, label %.loopexit142, !llvm.loop !49

bb.q:                                             ; preds = %bb.o
  %i.bu = and i32 %i.bh, 512
  %.not137 = icmp eq i32 %i.bu, 0
  br i1 %.not137, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %i.bw = tail call ptr @tcg_temp_new_vec(i32 noundef 4) #9 ; 2 uses
  %i.bx = load ptr, ptr @tcg_env, align 8
  %i.by = zext i32 %2 to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.bv, ptr noundef %i.bx, i64 noundef %i.by) #9
  %i.bz = load ptr, ptr @tcg_env, align 8
  %i.ca = add i32 %2, 16
  %i.cb = zext i32 %i.ca to i64
  tail call void @tcg_gen_ld_vec(ptr noundef %i.bw, ptr noundef %i.bz, i64 noundef %i.cb) #9
  %i.cc = icmp eq i32 %2, %1
  %i.cd = select i1 %i.cc, i32 32, i32 0          ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %3
  br i1 %i.ce, label %.lr.ph146, label %.loopexit142

.lr.ph146:                                        ; preds = %bb.r, %.lr.ph146
  %.1127145 = phi i32 [ %i.cl, %.lr.ph146 ], [ %i.cd, %bb.r ] ; 2 uses
  %i.cf = load ptr, ptr @tcg_env, align 8
  %i.cg = add i32 %.1127145, %1                   ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.bv, ptr noundef %i.cf, i64 noundef %i.ch) #9
  %i.ci = load ptr, ptr @tcg_env, align 8
  %i.cj = add i32 %i.cg, 16
  %i.ck = zext i32 %i.cj to i64
  tail call void @tcg_gen_st_vec(ptr noundef %i.bw, ptr noundef %i.ci, i64 noundef %i.ck) #9
  %i.cl = add nuw i32 %.1127145, 32               ; 2 uses
  %i.cm = icmp ult i32 %i.cl, %3
  br i1 %i.cm, label %.lr.ph146, label %.loopexit142, !llvm.loop !50

bb.s:                                             ; preds = %bb.q
  %i.cn = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.co = load ptr, ptr @tcg_env, align 8
  %i.cp = zext i32 %2 to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.cn, ptr noundef %i.co, i64 noundef %i.cp) #9
  %i.cq = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.cr = load ptr, ptr @tcg_env, align 8
  %i.cs = add i32 %2, 8
  %i.ct = zext i32 %i.cs to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.cq, ptr noundef %i.cr, i64 noundef %i.ct) #9
  %i.cu = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.cv = load ptr, ptr @tcg_env, align 8
  %i.cw = add i32 %2, 16
  %i.cx = zext i32 %i.cw to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.cu, ptr noundef %i.cv, i64 noundef %i.cx) #9
  %i.cy = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.cz = load ptr, ptr @tcg_env, align 8
  %i.da = add i32 %2, 24
  %i.db = zext i32 %i.da to i64
  tail call void @tcg_gen_ld_i64(ptr noundef %i.cy, ptr noundef %i.cz, i64 noundef %i.db) #9
  %i.dc = icmp eq i32 %2, %1
  %i.dd = select i1 %i.dc, i32 32, i32 0          ; 2 uses
  %i.de = icmp ult i32 %i.dd, %3
  br i1 %i.de, label %.preheader141, label %.preheader

.preheader141:                                    ; preds = %bb.s, %.preheader141
  %.2128149 = phi i32 [ %i.dr, %.preheader141 ], [ %i.dd, %bb.s ] ; 2 uses
  %i.df = add i32 %.2128149, %1                   ; 4 uses
  %i.dg = load ptr, ptr @tcg_env, align 8
  %i.dh = zext i32 %i.df to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.cn, ptr noundef %i.dg, i64 noundef %i.dh) #9
  %i.di = load ptr, ptr @tcg_env, align 8
  %i.dj = add i32 %i.df, 8
  %i.dk = zext i32 %i.dj to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.cq, ptr noundef %i.di, i64 noundef %i.dk) #9
  %i.dl = load ptr, ptr @tcg_env, align 8
  %i.dm = add i32 %i.df, 16
  %i.dn = zext i32 %i.dm to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.cu, ptr noundef %i.dl, i64 noundef %i.dn) #9
  %i.do = load ptr, ptr @tcg_env, align 8
  %i.dp = add i32 %i.df, 24
  %i.dq = zext i32 %i.dp to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.cy, ptr noundef %i.do, i64 noundef %i.dq) #9
  %i.dr = add nuw i32 %.2128149, 32               ; 2 uses
  %i.ds = icmp ult i32 %i.dr, %3
  br i1 %i.ds, label %.preheader141, label %.preheader, !llvm.loop !51

.preheader:                                       ; preds = %.preheader141, %bb.s
  tail call void @tcg_temp_free_i64(ptr noundef %i.cn) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.cq) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.cu) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.cy) #9
  br label %.loopexit142

.loopexit142:                                     ; preds = %.lr.ph, %.lr.ph146, %bb.p, %bb.r, %.preheader
  %i.dt = icmp ult i32 %3, %4
  br i1 %i.dt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.loopexit142
  %i.du = load ptr, ptr @tcg_env, align 8
  %i.dv = add i32 %3, %1
  %i.dw = sub nuw nsw i32 %4, %3                  ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef %i.dw, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
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
  %6 = phi i32 [ %i.h, %.lr.ph47 ], [ %i.e, %.preheader ] ; 3 uses
  %.146 = phi i32 [ %6, %.lr.ph47 ], [ %.0, %.preheader ]
  %i.f = add i32 %.146, %2
  %i.g = zext i32 %i.f to i64
  tail call void @tcg_gen_stl_vec(ptr noundef %5, ptr noundef %1, i64 noundef %i.g, i32 noundef 5) #9
  %i.h = add i32 %6, 32                           ; 2 uses
  %.not39 = icmp ugt i32 %i.h, %3
  br i1 %.not39, label %.loopexit41, label %.lr.ph47, !llvm.loop !52

.loopexit41:                                      ; preds = %.lr.ph47, %.preheader, %bb.c
  %.2 = phi i32 [ %.0, %bb.c ], [ %.0, %.preheader ], [ %6, %.lr.ph47 ] ; 2 uses
  %i.i = add nuw i32 %.2, 16                      ; 2 uses
  %.not4048 = icmp ugt i32 %i.i, %3
  br i1 %.not4048, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %.loopexit41, %.lr.ph50
  %7 = phi i32 [ %i.l, %.lr.ph50 ], [ %i.i, %.loopexit41 ] ; 2 uses
  %.349 = phi i32 [ %7, %.lr.ph50 ], [ %.2, %.loopexit41 ]
  %i.j = add i32 %.349, %2
  %i.k = zext i32 %i.j to i64
  tail call void @tcg_gen_stl_vec(ptr noundef %5, ptr noundef %1, i64 noundef %i.k, i32 noundef 4) #9
  %i.l = add i32 %7, 16                           ; 2 uses
  %.not40 = icmp ugt i32 %i.l, %3
  br i1 %.not40, label %.loopexit, label %.lr.ph50, !llvm.loop !53

.lr.ph:                                           ; preds = %.preheader42, %.lr.ph
  %.444 = phi i32 [ %i.o, %.lr.ph ], [ %.0, %.preheader42 ] ; 2 uses
  %i.m = add i32 %.444, %2
  %i.n = zext i32 %i.m to i64
  tail call void @tcg_gen_stl_vec(ptr noundef %5, ptr noundef %1, i64 noundef %i.n, i32 noundef 3) #9
  %i.o = add i32 %.444, 8                         ; 2 uses
  %i.p = icmp ult i32 %i.o, %3
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !54

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 552, ptr noundef nonnull @__func__.do_dup_store, ptr noundef null) #10
  unreachable

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph50, %.preheader42, %.loopexit41
  %i.q = icmp ult i32 %3, %4
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.r = add i32 %3, %2
  %i.s = sub nuw i32 %4, %3                       ; 2 uses
  tail call fastcc void @do_dup(i32 noundef 0, ptr noundef %1, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.s, ptr noundef null, ptr noundef null, i64 noundef 0), !inline_history !0
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
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_addv_mask(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.b = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  %i.c = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 5 uses
  tail call void @tcg_gen_andc_i64(ptr noundef %i.a, ptr noundef %1, ptr noundef %3) #9
  tail call void @tcg_gen_andc_i64(ptr noundef %i.b, ptr noundef %2, ptr noundef %3) #9
  tail call void @tcg_gen_xor_i64(ptr noundef %i.c, ptr noundef %1, ptr noundef %2) #9
  tail call void @tcg_gen_add_i64(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) #9
  tail call void @tcg_gen_and_i64(ptr noundef %i.c, ptr noundef %i.c, ptr noundef %3) #9
  tail call void @tcg_gen_xor_i64(ptr noundef %0, ptr noundef %0, ptr noundef %i.c) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.a) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.b) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.c) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_add8_i32(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @tcg_constant_i32(i32 noundef -2139062144) #9 ; 3 uses
  %i.b = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 3 uses
  %i.c = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 3 uses
  %i.d = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 5 uses
  tail call void @tcg_gen_andc_i32(ptr noundef %i.b, ptr noundef %1, ptr noundef %i.a) #9
  tail call void @tcg_gen_andc_i32(ptr noundef %i.c, ptr noundef %2, ptr noundef %i.a) #9
  tail call void @tcg_gen_xor_i32(ptr noundef %i.d, ptr noundef %1, ptr noundef %2) #9
  tail call void @tcg_gen_add_i32(ptr noundef %0, ptr noundef %i.b, ptr noundef %i.c) #9
  tail call void @tcg_gen_and_i32(ptr noundef %i.d, ptr noundef %i.d, ptr noundef %i.a) #9
  tail call void @tcg_gen_xor_i32(ptr noundef %0, ptr noundef %0, ptr noundef %i.d) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.b) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.c) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.d) #9
  ret void
}

declare void @tcg_gen_andc_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_xor_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @tcg_gen_add_i32(ptr noundef, ptr noundef, ptr noundef) #2

declare void @tcg_gen_and_i32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_add16_i64(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = tail call ptr @tcg_constant_i64(i64 noundef -9223231297218904064) #9
  tail call fastcc void @gen_addv_mask(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_add16_i32(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 5 uses
  %i.b = tail call ptr @tcg_temp_ebb_new_i32() #9 ; 3 uses
  tail call void @tcg_gen_andi_i32(ptr noundef %i.a, ptr noundef %1, i32 noundef -65536) #9
  tail call void @tcg_gen_add_i32(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #9
  tail call void @tcg_gen_add_i32(ptr noundef %i.a, ptr noundef %i.a, ptr noundef %2) #9
  tail call void @tcg_gen_deposit_i32(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 0, i32 noundef 16) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.a) #9
  tail call void @tcg_temp_free_i32(ptr noundef %i.b) #9
  ret void
}

declare void @tcg_gen_andi_i32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_gen_vec_add32_i64(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 5 uses
  %i.b = tail call ptr @tcg_temp_ebb_new_i64() #9 ; 3 uses
  tail call void @tcg_gen_andi_i64(ptr noundef %i.a, ptr noundef %1, i64 noundef -4294967296) #9
  tail call void @tcg_gen_add_i64(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #9
  tail call void @tcg_gen_add_i64(ptr noundef %i.a, ptr noundef %i.a, ptr noundef %2) #9
  tail call void @tcg_gen_deposit_i64(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 0, i32 noundef 32) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.a) #9
  tail call void @tcg_temp_free_i64(ptr noundef %i.b) #9
  ret void
end_hunk_0
