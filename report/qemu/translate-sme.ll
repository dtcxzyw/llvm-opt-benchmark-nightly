Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate-sme?download=true
inline.NumInlined: 4603
inline.NumDeleted: 411
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0_@do_fmlall_fp8:bb.a
  %i.ac = add i32 %i.ab, 3888
  %i.ad = sext i32 %i.ac to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.z, ptr noundef %i.aa, i64 noundef range(i64 -2147483648, 2147483648) %i.ad) #10
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = mul i32 %i.m, %i.ae                     ; 4 uses
  %i.ag = ptrtoint ptr %i.u to i64                ; 4 uses
  %i.ah = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ai = shl i32 %i.af, 8
  %i.aj = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef 0) #10
  %i.ak = sext i32 %i.ai to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.ak) #10
  %i.al = load ptr, ptr @tcg_env, align 8
  %i.am = tail call ptr @tcg_constant_i32(i32 noundef %i.aj) #10
  %i.an = load ptr, ptr @helper_info_gvec_fmla_sb, align 8
  %i.ao = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = ptrtoint ptr %i.am to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  tail call void @tcg_gen_call5(ptr noundef %i.an, ptr noundef nonnull @helper_info_gvec_fmla_sb, ptr noundef null, ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av) #10
  %i.aw = shl i32 %i.af, 8
  %i.ax = add i32 %i.aw, 256
  %i.ay = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef 1) #10
  %i.az = sext i32 %i.ax to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.az) #10
  %i.ba = load ptr, ptr @tcg_env, align 8
  %i.bb = tail call ptr @tcg_constant_i32(i32 noundef %i.ay) #10
  %i.bc = load ptr, ptr @helper_info_gvec_fmla_sb, align 8
  %i.bd = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ah
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  %i.bj = ptrtoint ptr %i.bb to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bj
  tail call void @tcg_gen_call5(ptr noundef %i.bc, ptr noundef nonnull @helper_info_gvec_fmla_sb, ptr noundef null, ptr noundef %i.be, ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bk) #10
  %i.bl = shl i32 %i.af, 8
  %i.bm = add i32 %i.bl, 512
  %i.bn = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef 2) #10
  %i.bo = sext i32 %i.bm to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.bo) #10
  %i.bp = load ptr, ptr @tcg_env, align 8
  %i.bq = tail call ptr @tcg_constant_i32(i32 noundef %i.bn) #10
  %i.br = load ptr, ptr @helper_info_gvec_fmla_sb, align 8
  %i.bs = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ag
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ah
  %i.bw = ptrtoint ptr %i.bp to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  %i.by = ptrtoint ptr %i.bq to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.by
  tail call void @tcg_gen_call5(ptr noundef %i.br, ptr noundef nonnull @helper_info_gvec_fmla_sb, ptr noundef null, ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef %i.bv, ptr noundef %i.bx, ptr noundef %i.bz) #10
  %i.ca = shl i32 %i.af, 8
  %i.cb = add i32 %i.ca, 768
  %i.cc = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef 3) #10
  %i.cd = sext i32 %i.cb to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.cd) #10
  %i.ce = load ptr, ptr @tcg_env, align 8
  %i.cf = tail call ptr @tcg_constant_i32(i32 noundef %i.cc) #10
  %i.cg = load ptr, ptr @helper_info_gvec_fmla_sb, align 8
  %i.ch = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.s
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ah
  %i.cl = ptrtoint ptr %i.ce to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cf to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  tail call void @tcg_gen_call5(ptr noundef %i.cg, ptr noundef nonnull @helper_info_gvec_fmla_sb, ptr noundef null, ptr noundef %i.ci, ptr noundef %i.cj, ptr noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.co) #10
  %i.cp = add i32 %.044.i, 1
  %i.cq = srem i32 %i.cp, 32
  %i.cr = add i32 %.03843.i, %i.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %exitcond46.not.i, label %do_azz_acc_fp8.exit, label %bb.d, !llvm.loop !3

do_azz_acc_fp8.exit:                              ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_fmlal_fp8(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call zeroext i1 @fpmr_access_check(ptr noundef %0) #10
  br i1 %i.j, label %bb.b, label %do_azz_acc_fp8.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 @sme_enabled_check_with_svcr(ptr noundef %0, i32 noundef 3) #10
  br i1 %i.k, label %bb.c, label %do_azz_acc_fp8.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 228
  %.val.i = load i32, ptr %i.l, align 4           ; 5 uses
  %i.m = sdiv i32 %.val.i, %i.a
  %i.n = tail call fastcc noundef ptr @get_tile_rowcol(ptr noundef %0, i32 noundef 0, i32 noundef %i.c, i32 noundef 0, i32 noundef %i.e, i32 noundef %i.a, i32 noundef 2, i1 noundef zeroext false) ; 2 uses
  %i.o = tail call ptr @tcg_temp_new_ptr() #10    ; 3 uses
  %i.p = icmp sgt i32 %i.a, 0
  br i1 %i.p, label %.lr.ph.i, label %do_azz_acc_fp8.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = zext i1 %2 to i32
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.s = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.t = zext nneg i32 %i.a to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %.044.i = phi i32 [ %i.bm, %bb.d ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.03843.i = phi i32 [ %i.bn, %bb.d ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.u = tail call ptr @tcg_temp_new_ptr() #10    ; 2 uses
  %i.v = load ptr, ptr @tcg_env, align 8
  %i.w = shl i32 %.044.i, 8
  %i.x = add i32 %i.w, 3888
  %i.y = sext i32 %i.x to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.u, ptr noundef %i.v, i64 noundef range(i64 -2147483648, 2147483648) %i.y) #10
  %i.z = tail call ptr @tcg_temp_new_ptr() #10    ; 2 uses
  %i.aa = load ptr, ptr @tcg_env, align 8
  %i.ab = shl i32 %.03843.i, 8
  %i.ac = add i32 %i.ab, 3888
  %i.ad = sext i32 %i.ac to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.z, ptr noundef %i.aa, i64 noundef range(i64 -2147483648, 2147483648) %i.ad) #10
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = mul i32 %i.m, %i.ae                     ; 2 uses
  %i.ag = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ah = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ai = shl i32 %i.af, 8
  %i.aj = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef 0) #10
  %i.ak = sext i32 %i.ai to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.ak) #10
  %i.al = load ptr, ptr @tcg_env, align 8
  %i.am = tail call ptr @tcg_constant_i32(i32 noundef %i.aj) #10
  %i.an = load ptr, ptr @helper_info_gvec_fmla_hb, align 8
  %i.ao = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.as
  %i.au = ptrtoint ptr %i.am to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  tail call void @tcg_gen_call5(ptr noundef %i.an, ptr noundef nonnull @helper_info_gvec_fmla_hb, ptr noundef null, ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.av) #10
  %i.aw = shl i32 %i.af, 8
  %i.ax = add i32 %i.aw, 256
  %i.ay = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef 1) #10
  %i.az = sext i32 %i.ax to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.n, i64 noundef range(i64 -2147483648, 2147483648) %i.az) #10
  %i.ba = load ptr, ptr @tcg_env, align 8
  %i.bb = tail call ptr @tcg_constant_i32(i32 noundef %i.ay) #10
  %i.bc = load ptr, ptr @helper_info_gvec_fmla_hb, align 8
  %i.bd = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ah
  %i.bh = ptrtoint ptr %i.ba to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  %i.bj = ptrtoint ptr %i.bb to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bj
  tail call void @tcg_gen_call5(ptr noundef %i.bc, ptr noundef nonnull @helper_info_gvec_fmla_hb, ptr noundef null, ptr noundef %i.be, ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bk) #10
  %i.bl = add i32 %.044.i, 1
  %i.bm = srem i32 %i.bl, 32
  %i.bn = add i32 %.03843.i, %i.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next, %i.t
  br i1 %exitcond46.not.i, label %do_azz_acc_fp8.exit, label %bb.d, !llvm.loop !3

do_azz_acc_fp8.exit:                              ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_fmlal_nx(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.k = load i32, ptr %i.j, align 4
  %i.l = shl i32 %i.k, 3
  %i.m = zext i1 %2 to i32
  %3 = or disjoint i32 %i.l, %i.m                 ; 2 uses
  %i.n = or disjoint i32 %3, 4
  %i.o = tail call zeroext i1 @sme_enabled_check_with_svcr(ptr noundef %0, i32 noundef 3) #10
  br i1 %i.o, label %bb.b, label %do_azz_acc_fp.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %0, i64 228
  %.val.i = load i32, ptr %i.p, align 4           ; 5 uses
  %i.q = sdiv i32 %.val.i, %i.a
  %i.r = tail call fastcc noundef ptr @get_tile_rowcol(ptr noundef %0, i32 noundef 0, i32 noundef %i.c, i32 noundef 0, i32 noundef %i.e, i32 noundef %i.a, i32 noundef 2, i1 noundef zeroext false) ; 2 uses
  %i.s = load ptr, ptr @tcg_env, align 8
  %i.t = tail call ptr @tcg_temp_new_ptr() #10    ; 3 uses
  %i.u = icmp sgt i32 %i.a, 0
  br i1 %i.u, label %.lr.ph.i.preheader, label %do_azz_acc_fp.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.v = shl i32 %i.i, 8
  %i.w = add i32 %i.v, 3888
  %i.x = sext i32 %i.w to i64
  %i.y = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ab = zext nneg i32 %i.a to i64
  %i.ac = or disjoint i32 %3, 6
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next, %.lr.ph.i ] ; 2 uses
  %.049.i = phi i32 [ %i.g, %.lr.ph.i.preheader ], [ %i.bo, %.lr.ph.i ] ; 2 uses
  %i.ad = tail call ptr @tcg_temp_new_ptr() #10   ; 2 uses
  %i.ae = load ptr, ptr @tcg_env, align 8
  %i.af = shl i32 %.049.i, 8
  %i.ag = add i32 %i.af, 3888
  %i.ah = sext i32 %i.ag to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.ad, ptr noundef %i.ae, i64 noundef range(i64 -2147483648, 2147483648) %i.ah) #10
  %i.ai = tail call ptr @tcg_temp_new_ptr() #10   ; 2 uses
  %i.aj = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_addi_i64(ptr noundef %i.ai, ptr noundef %i.aj, i64 noundef range(i64 -2147483648, 2147483648) %i.x) #10
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = mul i32 %i.q, %i.ak                     ; 2 uses
  %i.am = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.an = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ao = shl i32 %i.al, 8
  %i.ap = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef %i.n) #10
  %i.aq = sext i32 %i.ao to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.t, ptr noundef %i.r, i64 noundef range(i64 -2147483648, 2147483648) %i.aq) #10
  %i.ar = tail call ptr @tcg_constant_i32(i32 noundef %i.ap) #10
  %i.as = load ptr, ptr @helper_info_sve2_fmlal_zzxw_s, align 8
  %i.at = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.z ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.am
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aa
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay
  tail call void @tcg_gen_call6(ptr noundef %i.as, ptr noundef nonnull @helper_info_sve2_fmlal_zzxw_s, ptr noundef null, ptr noundef %i.au, ptr noundef %i.av, ptr noundef %i.aw, ptr noundef %i.au, ptr noundef %i.ax, ptr noundef %i.az) #10
  %i.ba = shl i32 %i.al, 8
  %i.bb = add i32 %i.ba, 256
  %i.bc = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef %i.ac) #10
  %i.bd = sext i32 %i.bb to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.t, ptr noundef %i.r, i64 noundef range(i64 -2147483648, 2147483648) %i.bd) #10
  %i.be = tail call ptr @tcg_constant_i32(i32 noundef %i.bc) #10
  %i.bf = load ptr, ptr @helper_info_sve2_fmlal_zzxw_s, align 8
  %i.bg = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.z ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.am
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.an
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aa
  %i.bl = ptrtoint ptr %i.be to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bl
  tail call void @tcg_gen_call6(ptr noundef %i.bf, ptr noundef nonnull @helper_info_sve2_fmlal_zzxw_s, ptr noundef null, ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %i.bh, ptr noundef %i.bk, ptr noundef %i.bm) #10
  %i.bn = add i32 %.049.i, 1
  %i.bo = srem i32 %i.bn, 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %exitcond51.not.i, label %do_azz_acc_fp.exit, label %.lr.ph.i, !llvm.loop !2

do_azz_acc_fp.exit:                               ; preds = %.lr.ph.i, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_ah_bfmlsl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_ah_bfmlsl, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  %i.n = ptrtoint ptr %5 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  tail call void @tcg_gen_call6(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_ah_bfmlsl, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.o) #10
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_bfmlsl(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_bfmlsl, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  %i.n = ptrtoint ptr %5 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  tail call void @tcg_gen_call6(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_bfmlsl, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.o) #10
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_ah_bfmlsl_idx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_ah_bfmlsl_idx, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  %i.n = ptrtoint ptr %5 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  tail call void @tcg_gen_call6(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_ah_bfmlsl_idx, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.o) #10
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_gvec_bfmlsl_idx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7 {
bb.a:
  %i.a = load ptr, ptr @helper_info_gvec_bfmlsl_idx, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = ptrtoint ptr %4 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.l
  %i.n = ptrtoint ptr %5 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n
  tail call void @tcg_gen_call6(ptr noundef %i.a, ptr noundef nonnull @helper_info_gvec_bfmlsl_idx, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %i.o) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_fdot(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call zeroext i1 @sme_enabled_check_with_svcr(ptr noundef %0, i32 noundef 3) #10
  br i1 %i.j, label %bb.b, label %do_azz_acc_fp.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 228
  %.val.i = load i32, ptr %i.k, align 4           ; 3 uses
  %i.l = sdiv i32 %.val.i, %i.a
  %i.m = tail call fastcc noundef ptr @get_tile_rowcol(ptr noundef %0, i32 noundef 0, i32 noundef %i.c, i32 noundef 0, i32 noundef %i.e, i32 noundef %i.a, i32 noundef 1, i1 noundef zeroext false)
  %i.n = load ptr, ptr @tcg_env, align 8
  %i.o = tail call ptr @tcg_temp_new_ptr() #10    ; 2 uses
  %i.p = icmp sgt i32 %i.a, 0
  br i1 %i.p, label %.lr.ph.i, label %do_azz_acc_fp.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = zext i1 %2 to i32
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = zext nneg i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.lr.ph.i ] ; 2 uses
  %.049.i = phi i32 [ %i.aw, %bb.c ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.04148.i = phi i32 [ %i.ax, %bb.c ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.v = tail call ptr @tcg_temp_new_ptr() #10    ; 2 uses
  %i.w = load ptr, ptr @tcg_env, align 8
  %i.x = shl i32 %.049.i, 8
  %i.y = add i32 %i.x, 3888
  %i.z = sext i32 %i.y to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.v, ptr noundef %i.w, i64 noundef range(i64 -2147483648, 2147483648) %i.z) #10
  %i.aa = tail call ptr @tcg_temp_new_ptr() #10   ; 2 uses
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = shl i32 %.04148.i, 8
  %i.ad = add i32 %i.ac, 3888
  %i.ae = sext i32 %i.ad to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef range(i64 -2147483648, 2147483648) %i.ae) #10
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = mul i32 %i.l, %i.af
  %i.ah = ptrtoint ptr %i.v to i64
  %i.ai = ptrtoint ptr %i.aa to i64
  %i.aj = shl i32 %i.ag, 8
  %i.ak = tail call i32 @simd_desc(i32 noundef %.val.i, i32 noundef %.val.i, i32 noundef 1) #10
  %i.al = sext i32 %i.aj to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.o, ptr noundef %i.m, i64 noundef range(i64 -2147483648, 2147483648) %i.al) #10
  %i.am = tail call ptr @tcg_constant_i32(i32 noundef %i.ak) #10
  %i.an = load ptr, ptr @helper_info_sme2_fdot_h, align 8
  %i.ao = load ptr, ptr %i.r, align 8             ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.s ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ai
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.t
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at
  tail call void @tcg_gen_call6(ptr noundef %i.an, ptr noundef nonnull @helper_info_sme2_fdot_h, ptr noundef null, ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.ap, ptr noundef %i.as, ptr noundef %i.au) #10
  %i.av = add i32 %.049.i, 1
  %i.aw = srem i32 %i.av, 32
  %i.ax = add i32 %.04148.i, %i.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond51.not.i, label %do_azz_acc_fp.exit, label %bb.c, !llvm.loop !2

do_azz_acc_fp.exit:                               ; preds = %bb.c, %bb.a, %bb.b
end_hunk_0
