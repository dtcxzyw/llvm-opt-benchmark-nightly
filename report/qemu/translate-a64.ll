Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate-a64?download=true
inline.NumInlined: 6569
inline.NumDeleted: 927
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@trans_CNT_v:bb.a
  %i.h = load i8, ptr %i.g, align 1
  %.not7.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not7.i.i.i, label %fp_access_check_only.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i.i:                    ; preds = %bb.d
  store i8 -1, ptr %i.g, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.f) #14
  br label %do_gvec_fn2.exit

bb.f:                                             ; preds = %bb.c
  store i8 1, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.j = load i8, ptr %i.i, align 2, !range !29, !noundef !30
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.m = load i8, ptr %i.l, align 1, !range !29, !noundef !30
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %do_gvec_fn2.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.o = load i32, ptr %1, align 4
  %.not10.i = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr i8, ptr %0, i64 220
  %.val.i = load i32, ptr %i.v, align 4
  %i.w = shl i32 %i.q, 8
  %i.x = add i32 %i.w, 3888
  %i.y = shl i32 %i.s, 8
  %i.z = add i32 %i.y, 3888
  %i.aa = select i1 %.not10.i, i32 8, i32 16
  tail call void @gen_gvec_cnt(i32 noundef %i.u, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %.val.i) #14, !inline_history !3
  br label %do_gvec_fn2.exit

do_gvec_fn2.exit:                                 ; preds = %bb.b, %fp_access_check_only.exit.i.i, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.i ], [ true, %fp_access_check_only.exit.i.i ], [ true, %bb.h ]
  ret i1 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_SADALP_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ne i32 %i.b, 3                      ; 2 uses
  br i1 %i.c, label %bb.b, label %do_gvec_fn2_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.f, align 1
  %.not7.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i.i.i, label %fp_access_check_only.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i.i:                    ; preds = %bb.c
  store i8 -1, ptr %i.f, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.e) #14
  br label %do_gvec_fn2_bhs.exit

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.i = load i8, ptr %i.h, align 2, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.l = load i8, ptr %i.k, align 1, !range !29, !noundef !30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %do_gvec_fn2_bhs.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load i32, ptr %i.a, align 4
  %i.t = getelementptr i8, ptr %0, i64 220
  %.val.i = load i32, ptr %i.t, align 4
  %i.u = shl i32 %i.p, 8
  %i.v = add i32 %i.u, 3888
  %i.w = shl i32 %i.r, 8
  %i.x = add i32 %i.w, 3888
  %i.y = select i1 %.not.i, i32 8, i32 16
  tail call void @gen_gvec_sadalp(i32 noundef %i.s, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %.val.i) #14, !inline_history !2
  br label %do_gvec_fn2_bhs.exit

do_gvec_fn2_bhs.exit:                             ; preds = %bb.a, %fp_access_check_only.exit.i.i, %bb.g, %bb.h
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @trans_FCVTL_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.c, align 1
  %.not7.i.i = icmp eq i8 %i.d, 0
  br i1 %.not7.i.i, label %fp_access_check_only.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i:                      ; preds = %bb.b
  store i8 -1, ptr %i.c, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.b) #14
  br label %fp_access_check.exit

bb.d:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.f = load i8, ptr %i.e, align 2, !range !29, !noundef !30
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.i = load i8, ptr %i.h, align 1, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %fp_access_check.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %.preheader, label %.preheader43

.preheader:                                       ; preds = %bb.g
  %i.n = tail call ptr @tcg_temp_new_i32() #14    ; 3 uses
  %i.o = load i32, ptr %1, align 4
  %.not42 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not42, i64 0, i64 2          ; 2 uses
  %i.q = tail call ptr @tcg_temp_new_ptr() #14    ; 2 uses
  %i.r = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_addi_i64(ptr noundef %i.q, ptr noundef %i.r, i64 noundef range(i64 12776, 12809) 12776) #14
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.u = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.v = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.w = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.x = load i32, ptr %i.s, align 4
  %i.y = shl i32 %i.x, 8
  %i.z = add i32 %i.y, 3888
  %.tr57 = trunc nuw nsw i64 %i.p to i32
  %i.aa = shl nuw nsw i32 %.tr57, 2
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = load ptr, ptr @tcg_env, align 8
  %i.ad = sext i32 %i.ab to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.n, ptr noundef %i.ac, i64 noundef %i.ad) #14
  %i.ae = load ptr, ptr @helper_info_vfp_fcvtds, align 8
  %i.af = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.u
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  tail call void @tcg_gen_call2(ptr noundef %i.ae, ptr noundef nonnull @helper_info_vfp_fcvtds, ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj) #14
  %i.ak = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %i.al = load i32, ptr %i.s, align 4
  %i.am = shl i32 %i.al, 8
  %2 = add i32 %i.am, 3888
  %.tr58 = trunc nuw nsw i64 %i.p to i32
  %i.an = shl nuw nsw i32 %.tr58, 2
  %3 = or disjoint i32 %i.an, 4
  %i.ao = or disjoint i32 %2, %3
  %i.ap = load ptr, ptr @tcg_env, align 8
  %i.aq = sext i32 %i.ao to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.n, ptr noundef %i.ap, i64 noundef %i.aq) #14
  %i.ar = load ptr, ptr @helper_info_vfp_fcvtds, align 8
  %i.as = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.at = ptrtoint ptr %i.ak to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.u
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.v
  tail call void @tcg_gen_call2(ptr noundef %i.ar, ptr noundef nonnull @helper_info_vfp_fcvtds, ptr noundef %i.au, ptr noundef %i.av, ptr noundef %i.aw) #14
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = shl i32 %i.ay, 8
  %i.ba = add i32 %i.az, 3888
  %i.bb = load ptr, ptr @tcg_env, align 8
  %i.bc = sext i32 %i.ba to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.w, ptr noundef %i.bb, i64 noundef %i.bc) #14
  %i.bd = load i32, ptr %i.ax, align 4
  %i.be = shl i32 %i.bd, 8
  %i.bf = add i32 %i.be, 3896
  %i.bg = load ptr, ptr @tcg_env, align 8
  %i.bh = sext i32 %i.bf to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.ak, ptr noundef %i.bg, i64 noundef %i.bh) #14
  br label %bb.h

.preheader43:                                     ; preds = %bb.g
  %i.bi = load i32, ptr %1, align 4
  %.not = icmp eq i32 %i.bi, 0
  %i.bj = select i1 %.not, i64 0, i64 4           ; 4 uses
  %i.bk = tail call ptr @tcg_temp_new_i32() #14   ; 4 uses
  %i.bl = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld_i32(ptr noundef %i.bk, ptr noundef %i.bl, i64 noundef 12688) #14
  tail call void @tcg_gen_extract_i32(ptr noundef %i.bk, ptr noundef %i.bk, i32 noundef 26, i32 noundef 1) #14
  %i.bm = tail call ptr @tcg_temp_new_ptr() #14   ; 2 uses
  %i.bn = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_addi_i64(ptr noundef %i.bm, ptr noundef %i.bn, i64 noundef range(i64 12776, 12809) 12792) #14
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 4 uses
  %i.bq = ptrtoint ptr %i.bm to i64               ; 4 uses
  %i.br = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bs = tail call ptr @tcg_temp_new_i32() #14   ; 3 uses
  %i.bt = load i32, ptr %i.bo, align 4
  %i.bu = shl i32 %i.bt, 8
  %i.bv = add i32 %i.bu, 3888
  %.tr = trunc nuw nsw i64 %i.bj to i32
  %i.bw = shl nuw nsw i32 %.tr, 1
  %i.bx = or disjoint i32 %i.bv, %i.bw
  %i.by = load ptr, ptr @tcg_env, align 8
  %i.bz = sext i32 %i.bx to i64
  tail call void @tcg_gen_ld16u_i32(ptr noundef %i.bs, ptr noundef %i.by, i64 noundef %i.bz) #14
  %i.ca = load ptr, ptr @helper_info_vfp_fcvt_f16_to_f32, align 8
  %i.cb = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.cc = ptrtoint ptr %i.bs to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bq
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.br
  tail call void @tcg_gen_call3(ptr noundef %i.ca, ptr noundef nonnull @helper_info_vfp_fcvt_f16_to_f32, ptr noundef %i.cd, ptr noundef %i.cd, ptr noundef %i.ce, ptr noundef %i.cf) #14
  %i.cg = tail call ptr @tcg_temp_new_i32() #14   ; 3 uses
  %i.ch = load i32, ptr %i.bo, align 4
  %i.ci = shl i32 %i.ch, 8
  %4 = add i32 %i.ci, 3888
  %.tr54 = trunc nuw nsw i64 %i.bj to i32
  %i.cj = shl nuw nsw i32 %.tr54, 1
  %5 = or disjoint i32 %i.cj, 2
  %i.ck = or disjoint i32 %4, %5
  %i.cl = load ptr, ptr @tcg_env, align 8
  %i.cm = sext i32 %i.ck to i64
  tail call void @tcg_gen_ld16u_i32(ptr noundef %i.cg, ptr noundef %i.cl, i64 noundef %i.cm) #14
  %i.cn = load ptr, ptr @helper_info_vfp_fcvt_f16_to_f32, align 8
  %i.co = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.cp = ptrtoint ptr %i.cg to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.br
  tail call void @tcg_gen_call3(ptr noundef %i.cn, ptr noundef nonnull @helper_info_vfp_fcvt_f16_to_f32, ptr noundef %i.cq, ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef %i.cs) #14
  %i.ct = tail call ptr @tcg_temp_new_i32() #14   ; 3 uses
  %i.cu = load i32, ptr %i.bo, align 4
  %i.cv = shl i32 %i.cu, 8
  %6 = add i32 %i.cv, 3888
  %.tr55 = trunc nuw nsw i64 %i.bj to i32
  %i.cw = shl nuw nsw i32 %.tr55, 1
  %7 = or disjoint i32 %i.cw, 4
  %i.cx = or disjoint i32 %6, %7
  %i.cy = load ptr, ptr @tcg_env, align 8
  %i.cz = sext i32 %i.cx to i64
  tail call void @tcg_gen_ld16u_i32(ptr noundef %i.ct, ptr noundef %i.cy, i64 noundef %i.cz) #14
  %i.da = load ptr, ptr @helper_info_vfp_fcvt_f16_to_f32, align 8
  %i.db = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.dc = ptrtoint ptr %i.ct to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.bq
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.br
  tail call void @tcg_gen_call3(ptr noundef %i.da, ptr noundef nonnull @helper_info_vfp_fcvt_f16_to_f32, ptr noundef %i.dd, ptr noundef %i.dd, ptr noundef %i.de, ptr noundef %i.df) #14
  %i.dg = tail call ptr @tcg_temp_new_i32() #14   ; 3 uses
  %i.dh = load i32, ptr %i.bo, align 4
  %i.di = shl i32 %i.dh, 8
  %8 = add i32 %i.di, 3888
  %.tr56 = trunc nuw nsw i64 %i.bj to i32
  %i.dj = shl nuw nsw i32 %.tr56, 1
  %9 = or disjoint i32 %i.dj, 6
  %i.dk = or disjoint i32 %8, %9
  %i.dl = load ptr, ptr @tcg_env, align 8
  %i.dm = sext i32 %i.dk to i64
  tail call void @tcg_gen_ld16u_i32(ptr noundef %i.dg, ptr noundef %i.dl, i64 noundef %i.dm) #14
  %i.dn = load ptr, ptr @helper_info_vfp_fcvt_f16_to_f32, align 8
  %i.do = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.dp = ptrtoint ptr %i.dg to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.bq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.br
  tail call void @tcg_gen_call3(ptr noundef %i.dn, ptr noundef nonnull @helper_info_vfp_fcvt_f16_to_f32, ptr noundef %i.dq, ptr noundef %i.dq, ptr noundef %i.dr, ptr noundef %i.ds) #14
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = shl i32 %i.du, 8
  %i.dw = add i32 %i.dv, 3888
  %i.dx = load ptr, ptr @tcg_env, align 8
  %i.dy = sext i32 %i.dw to i64
  tail call void @tcg_gen_st_i32(ptr noundef %i.bs, ptr noundef %i.dx, i64 noundef %i.dy) #14
  %i.dz = load i32, ptr %i.dt, align 4
  %i.ea = shl i32 %i.dz, 8
  %i.eb = add i32 %i.ea, 3892
  %i.ec = load ptr, ptr @tcg_env, align 8
  %i.ed = sext i32 %i.eb to i64
  tail call void @tcg_gen_st_i32(ptr noundef %i.cg, ptr noundef %i.ec, i64 noundef %i.ed) #14
  %i.ee = load i32, ptr %i.dt, align 4
  %i.ef = shl i32 %i.ee, 8
  %i.eg = add i32 %i.ef, 3896
  %i.eh = load ptr, ptr @tcg_env, align 8
  %i.ei = sext i32 %i.eg to i64
  tail call void @tcg_gen_st_i32(ptr noundef %i.ct, ptr noundef %i.eh, i64 noundef %i.ei) #14
  %i.ej = load i32, ptr %i.dt, align 4
  %i.ek = shl i32 %i.ej, 8
  %i.el = add i32 %i.ek, 3900
  %i.em = load ptr, ptr @tcg_env, align 8
  %i.en = sext i32 %i.el to i64
  tail call void @tcg_gen_st_i32(ptr noundef %i.dg, ptr noundef %i.em, i64 noundef %i.en) #14
  br label %bb.h

bb.h:                                             ; preds = %.preheader43, %.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = getelementptr i8, ptr %0, i64 220
  %.val = load i32, ptr %i.eq, align 4
  %i.er = shl i32 %i.ep, 8
  %i.es = add i32 %i.er, 3888                     ; 2 uses
  tail call void @tcg_gen_gvec_mov(i32 noundef 3, i32 noundef %i.es, i32 noundef %i.es, i32 noundef 16, i32 noundef %.val) #14
  br label %fp_access_check.exit

fp_access_check.exit:                             ; preds = %bb.f, %fp_access_check_only.exit.i, %bb.h
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_SHADD_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ne i32 %i.b, 3                      ; 2 uses
  br i1 %i.c, label %bb.b, label %do_gvec_fn3_no64.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.f, align 1
  %.not7.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i.i.i, label %fp_access_check_only.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i.i:                    ; preds = %bb.c
  store i8 -1, ptr %i.f, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.e) #14
  br label %do_gvec_fn3_no64.exit

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.i = load i8, ptr %i.h, align 2, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.l = load i8, ptr %i.k, align 1, !range !29, !noundef !30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %do_gvec_fn3_no64.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = load i32, ptr %i.a, align 4
  %i.v = getelementptr i8, ptr %0, i64 220
  %.val.i = load i32, ptr %i.v, align 4
  %i.w = shl i32 %i.p, 8
  %i.x = add i32 %i.w, 3888
  %i.y = shl i32 %i.r, 8
  %i.z = add i32 %i.y, 3888
  %i.aa = shl i32 %i.t, 8
  %i.ab = add i32 %i.aa, 3888
  %i.ac = select i1 %.not.i, i32 8, i32 16
  tail call void @gen_gvec_shadd(i32 noundef %i.u, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ac, i32 noundef %.val.i) #14, !inline_history !7
  br label %do_gvec_fn3_no64.exit

do_gvec_fn3_no64.exit:                            ; preds = %bb.a, %fp_access_check_only.exit.i.i, %bb.g, %bb.h
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_SQADD_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %do_gvec_fn3.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.g, align 1
  %.not7.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not7.i.i.i, label %fp_access_check_only.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i.i:                    ; preds = %bb.d
  store i8 -1, ptr %i.g, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.f) #14
  br label %do_gvec_fn3.exit

bb.f:                                             ; preds = %bb.c
  store i8 1, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.j = load i8, ptr %i.i, align 2, !range !29, !noundef !30
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.m = load i8, ptr %i.l, align 1, !range !29, !noundef !30
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %do_gvec_fn3.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.o = load i32, ptr %1, align 4
  %.not11.i = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr i8, ptr %0, i64 220
  %.val.i = load i32, ptr %i.x, align 4
  %i.y = shl i32 %i.q, 8
  %i.z = add i32 %i.y, 3888
  %i.aa = shl i32 %i.s, 8
  %i.ab = add i32 %i.aa, 3888
  %i.ac = shl i32 %i.u, 8
  %i.ad = add i32 %i.ac, 3888
  %i.ae = select i1 %.not11.i, i32 8, i32 16
  tail call void @gen_gvec_sqadd_qc(i32 noundef %i.w, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %.val.i) #14, !inline_history !4
  br label %do_gvec_fn3.exit

do_gvec_fn3.exit:                                 ; preds = %bb.b, %fp_access_check_only.exit.i.i, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.i ], [ true, %fp_access_check_only.exit.i.i ], [ true, %bb.h ]
  ret i1 %.0.i
end_hunk_0
begin_hunk_1_@trans_UADDLP_v:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i.i:                    ; preds = %bb.c
  store i8 -1, ptr %i.f, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.e) #14
  br label %do_gvec_fn2_bhs.exit

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.i = load i8, ptr %i.h, align 2, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.l = load i8, ptr %i.k, align 1, !range !29, !noundef !30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %do_gvec_fn2_bhs.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load i32, ptr %i.a, align 4
  %i.t = getelementptr i8, ptr %0, i64 220
  %.val.i = load i32, ptr %i.t, align 4
  %i.u = shl i32 %i.p, 8
  %i.v = add i32 %i.u, 3888
  %i.w = shl i32 %i.r, 8
  %i.x = add i32 %i.w, 3888
  %i.y = select i1 %.not.i, i32 8, i32 16
  tail call void @gen_gvec_uaddlp(i32 noundef %i.s, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %.val.i) #14, !inline_history !2
  br label %do_gvec_fn2_bhs.exit

do_gvec_fn2_bhs.exit:                             ; preds = %bb.a, %fp_access_check_only.exit.i.i, %bb.g, %bb.h
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_USQADD_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %do_gvec_fn3.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.g, align 1
  %.not7.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not7.i.i.i, label %fp_access_check_only.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i.i:                    ; preds = %bb.d
  store i8 -1, ptr %i.g, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.f) #14
  br label %do_gvec_fn3.exit

bb.f:                                             ; preds = %bb.c
  store i8 1, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.j = load i8, ptr %i.i, align 2, !range !29, !noundef !30
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.m = load i8, ptr %i.l, align 1, !range !29, !noundef !30
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %do_gvec_fn3.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.o = load i32, ptr %1, align 4
  %.not11.i = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr i8, ptr %0, i64 220
  %.val.i = load i32, ptr %i.x, align 4
  %i.y = shl i32 %i.q, 8
  %i.z = add i32 %i.y, 3888
  %i.aa = shl i32 %i.s, 8
  %i.ab = add i32 %i.aa, 3888
  %i.ac = shl i32 %i.u, 8
  %i.ad = add i32 %i.ac, 3888
  %i.ae = select i1 %.not11.i, i32 8, i32 16
  tail call void @gen_gvec_usqadd_qc(i32 noundef %i.w, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.ae, i32 noundef %.val.i) #14, !inline_history !4
  br label %do_gvec_fn3.exit

do_gvec_fn3.exit:                                 ; preds = %bb.b, %fp_access_check_only.exit.i.i, %bb.h, %bb.i
  %.0.i = phi i1 [ false, %bb.b ], [ true, %bb.i ], [ true, %fp_access_check_only.exit.i.i ], [ true, %bb.h ]
  ret i1 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_SHLL_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ne i32 %i.b, 3                      ; 2 uses
  br i1 %i.c, label %bb.b, label %fp_access_check.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.f, align 1
  %.not7.i.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i.i, label %fp_access_check_only.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i:                      ; preds = %bb.c
  store i8 -1, ptr %i.f, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.e) #14
  br label %fp_access_check.exit

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.i = load i8, ptr %i.h, align 2, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.l = load i8, ptr %i.k, align 1, !range !29, !noundef !30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %fp_access_check.exit

.preheader:                                       ; preds = %bb.f, %bb.e
  %i.n = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  %i.o = load i32, ptr %i.a, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr @trans_SHLL_v.widenfns, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load i32, ptr %1, align 4
  %.not = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not, i64 0, i64 2            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = shl i32 %i.v, 8
  %i.x = add i32 %i.w, 3888
  %.tr = trunc nuw nsw i64 %i.t to i32
  %i.y = shl nuw nsw i32 %.tr, 2
  %i.z = or disjoint i32 %i.x, %i.y
  %i.aa = load ptr, ptr @tcg_env, align 8
  %i.ab = sext i32 %i.z to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.n, ptr noundef %i.aa, i64 noundef %i.ab) #14
  %i.ac = tail call ptr @tcg_temp_new_i64() #14   ; 4 uses
  tail call void %i.r(ptr noundef %i.ac, ptr noundef %i.n) #14
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = shl i32 8, %i.ad
  %i.af = sext i32 %i.ae to i64
  tail call void @tcg_gen_shli_i64(ptr noundef %i.ac, ptr noundef %i.ac, i64 noundef %i.af) #14
  %i.ag = load i32, ptr %i.u, align 4
  %i.ah = shl i32 %i.ag, 8
  %2 = add i32 %i.ah, 3888
  %.tr29 = trunc nuw nsw i64 %i.t to i32
  %i.ai = shl nuw nsw i32 %.tr29, 2
  %3 = or disjoint i32 %i.ai, 4
  %i.aj = or disjoint i32 %2, %3
  %i.ak = load ptr, ptr @tcg_env, align 8
  %i.al = sext i32 %i.aj to i64
  tail call void @tcg_gen_ld_i32(ptr noundef %i.n, ptr noundef %i.ak, i64 noundef %i.al) #14
  %i.am = tail call ptr @tcg_temp_new_i64() #14   ; 4 uses
  tail call void %i.r(ptr noundef %i.am, ptr noundef %i.n) #14
  %i.an = load i32, ptr %i.a, align 4
  %i.ao = shl i32 8, %i.an
  %i.ap = sext i32 %i.ao to i64
  tail call void @tcg_gen_shli_i64(ptr noundef %i.am, ptr noundef %i.am, i64 noundef %i.ap) #14
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = shl i32 %i.ar, 8
  %i.at = add i32 %i.as, 3888
  %i.au = load ptr, ptr @tcg_env, align 8
  %i.av = sext i32 %i.at to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.ac, ptr noundef %i.au, i64 noundef %i.av) #14
  %i.aw = load i32, ptr %i.aq, align 4
  %i.ax = shl i32 %i.aw, 8
  %i.ay = add i32 %i.ax, 3896
  %i.az = load ptr, ptr @tcg_env, align 8
  %i.ba = sext i32 %i.ay to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.am, ptr noundef %i.az, i64 noundef %i.ba) #14
  br label %fp_access_check.exit

fp_access_check.exit:                             ; preds = %.preheader, %bb.g, %fp_access_check_only.exit.i, %bb.a
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_UADDLV(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not.i, i32 8, i32 16
  %i.e = lshr i32 %i.d, %i.b                      ; 2 uses
  %i.f = icmp samesign ugt i32 %i.e, 3            ; 2 uses
  br i1 %i.f, label %bb.b, label %do_int_reduction.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.i, align 1
  %.not7.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not7.i.i.i, label %fp_access_check_only.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i.i:                    ; preds = %bb.c
  store i8 -1, ptr %i.i, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.h) #14
  br label %do_int_reduction.exit

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.l = load i8, ptr %i.k, align 2, !range !29, !noundef !30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.o = load i8, ptr %i.n, align 1, !range !29, !noundef !30
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.g, label %.lr.ph.preheader.i

bb.g:                                             ; preds = %bb.f
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %do_int_reduction.exit

.lr.ph.preheader.i:                               ; preds = %bb.f, %bb.e
  %i.q = tail call ptr @tcg_temp_new_i64() #14    ; 6 uses
  %i.r = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  tail call fastcc void @read_vec_element(ptr noundef %i.q, i32 noundef %i.t, i32 noundef 0, i32 noundef %i.b)
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.u = load i32, ptr %i.a, align 4
  %i.v = add i32 %i.u, 1
  tail call void @tcg_gen_ext_i64(ptr noundef %i.q, ptr noundef %i.q, i32 noundef %i.v) #14
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = shl i32 %i.x, 8
  %i.z = add i32 %i.y, 3888                       ; 3 uses
  %i.aa = load ptr, ptr @tcg_env, align 8
  %i.ab = zext i32 %i.z to i64
  tail call void @tcg_gen_st_i64(ptr noundef %i.q, ptr noundef %i.aa, i64 noundef %i.ab) #14
  %i.ac = getelementptr i8, ptr %0, i64 220
  %.val.i.i = load i32, ptr %i.ac, align 4
  tail call void @tcg_gen_gvec_mov(i32 noundef 3, i32 noundef %i.z, i32 noundef %i.z, i32 noundef 8, i32 noundef %.val.i.i) #14
  br label %do_int_reduction.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.031.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %i.ad = load i32, ptr %i.s, align 4
  tail call fastcc void @read_vec_element(ptr noundef %i.r, i32 noundef %i.ad, i32 noundef %.031.i, i32 noundef %i.b)
  tail call void @tcg_gen_add_i64(ptr noundef %i.q, ptr noundef %i.q, ptr noundef %i.r) #14, !inline_history !5
  %i.ae = add nuw nsw i32 %.031.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ae, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

do_int_reduction.exit:                            ; preds = %bb.a, %fp_access_check_only.exit.i.i, %bb.g, %._crit_edge.i
  ret i1 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_CLZ_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp ne i32 %i.b, 3                      ; 2 uses
  br i1 %i.c, label %bb.b, label %do_gvec_fn2_bhs.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 283 ; 3 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.f, align 1
  %.not7.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not7.i.i.i, label %fp_access_check_only.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.3, i32 noundef 1438, ptr noundef nonnull @__PRETTY_FUNCTION__.fp_access_check_only) #15
  unreachable

fp_access_check_only.exit.i.i:                    ; preds = %bb.c
  store i8 -1, ptr %i.f, align 1
  tail call void @gen_exception_insn_el(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 534773760, i32 noundef %i.e) #14
  br label %do_gvec_fn2_bhs.exit

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 302
  %i.i = load i8, ptr %i.h, align 2, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 303
  %i.l = load i8, ptr %i.k, align 1, !range !29, !noundef !30
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @gen_exception_insn(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1, i32 noundef 1979711489) #14
  br label %do_gvec_fn2_bhs.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load i32, ptr %i.a, align 4
  %i.t = getelementptr i8, ptr %0, i64 220
  %.val.i = load i32, ptr %i.t, align 4
  %i.u = shl i32 %i.p, 8
  %i.v = add i32 %i.u, 3888
  %i.w = shl i32 %i.r, 8
  %i.x = add i32 %i.w, 3888
  %i.y = select i1 %.not.i, i32 8, i32 16
  tail call void @gen_gvec_clz(i32 noundef %i.s, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %.val.i) #14, !inline_history !2
  br label %do_gvec_fn2_bhs.exit

do_gvec_fn2_bhs.exit:                             ; preds = %bb.a, %fp_access_check_only.exit.i.i, %bb.g, %bb.h
  ret i1 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @trans_NOT_v(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %do_gvec_fn2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.f, 0
end_hunk_1
