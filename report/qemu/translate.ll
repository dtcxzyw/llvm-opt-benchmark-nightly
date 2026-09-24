Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/translate?download=true
inline.NumInlined: 3928
inline.NumDeleted: 504
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@helper_vtestpd_ymm
declare void @helper_vtestpd_ymm(ptr noundef, ptr noundef, ptr noundef) #0

declare void @helper_vpmaskmovd_st_ymm(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #0

declare void @helper_vpmaskmovq_st_ymm(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #0

declare void @helper_vpmaskmovd_ymm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare void @helper_vpmaskmovq_ymm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare void @helper_vpgatherdd_ymm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef) #0

declare void @helper_vpgatherdq_ymm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef) #0

declare void @helper_vpgatherqd_ymm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef) #0

declare void @helper_vpgatherqq_ymm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef) #0

declare void @helper_vpermd_ymm(ptr noundef, ptr noundef, ptr noundef) #0

declare void @helper_vpermdq_ymm(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

declare void @helper_vpermq_ymm(ptr noundef, ptr noundef, i32 noundef) #0

declare i64 @helper_rdrand(ptr noundef) #0

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @tcg_x86_init() local_unnamed_addr #2 {
.preheader18.preheader:
  %i.a = load ptr, ptr @tcg_env, align 8
  %i.b = tail call ptr @tcg_global_mem_new_i32(ptr noundef %i.a, i64 noundef 296, ptr noundef nonnull @.str.772) #14
  store ptr %i.b, ptr @cpu_cc_op, align 8
  %i.c = load ptr, ptr @tcg_env, align 8
  %i.d = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.c, i64 noundef 272, ptr noundef nonnull @.str.773) #14
  store ptr %i.d, ptr @cpu_cc_dst, align 8
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.e, i64 noundef 280, ptr noundef nonnull @.str.774) #14
  store ptr %i.f, ptr @cpu_cc_src, align 8
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.g, i64 noundef 288, ptr noundef nonnull @.str.775) #14
  store ptr %i.h, ptr @cpu_cc_src2, align 8
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.i, i64 noundef 256, ptr noundef nonnull @tcg_x86_init.eip_name) #14
  store ptr %i.j, ptr @cpu_eip, align 8
  %i.k = load ptr, ptr @tcg_env, align 8
  %i.l = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.k, i64 noundef 0, ptr noundef nonnull @tcg_x86_init.reg_names) #14
  store ptr %i.l, ptr @cpu_regs, align 16
  %i.m = load ptr, ptr @tcg_env, align 8
  %i.n = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.m, i64 noundef 8, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 4)) #14
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 8), align 8
  %i.o = load ptr, ptr @tcg_env, align 8
  %i.p = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.o, i64 noundef 16, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 8)) #14
  store ptr %i.p, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 16), align 16
  %i.q = load ptr, ptr @tcg_env, align 8
  %i.r = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.q, i64 noundef 24, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 12)) #14
  store ptr %i.r, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 24), align 8
  %i.s = load ptr, ptr @tcg_env, align 8
  %i.t = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.s, i64 noundef 32, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 16)) #14
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16
  %i.u = load ptr, ptr @tcg_env, align 8
  %i.v = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.u, i64 noundef 40, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 20)) #14
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8
  %i.w = load ptr, ptr @tcg_env, align 8
  %i.x = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.w, i64 noundef 48, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 24)) #14
  store ptr %i.x, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 48), align 16
  %i.y = load ptr, ptr @tcg_env, align 8
  %i.z = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.y, i64 noundef 56, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 28)) #14
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 56), align 8
  %i.aa = load ptr, ptr @tcg_env, align 8
  %i.ab = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.aa, i64 noundef 64, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 32)) #14
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 64), align 16
  %i.ac = load ptr, ptr @tcg_env, align 8
  %i.ad = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.ac, i64 noundef 72, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 36)) #14
  store ptr %i.ad, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 72), align 8
  %i.ae = load ptr, ptr @tcg_env, align 8
  %i.af = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.ae, i64 noundef 80, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 40)) #14
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 80), align 16
  %i.ag = load ptr, ptr @tcg_env, align 8
  %i.ah = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.ag, i64 noundef 88, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 44)) #14
  store ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 88), align 8
  %i.ai = load ptr, ptr @tcg_env, align 8
  %i.aj = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.ai, i64 noundef 96, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 48)) #14
  store ptr %i.aj, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 96), align 16
  %i.ak = load ptr, ptr @tcg_env, align 8
  %i.al = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.ak, i64 noundef 104, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 52)) #14
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 104), align 8
  %i.am = load ptr, ptr @tcg_env, align 8
  %i.an = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.am, i64 noundef 112, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 56)) #14
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 112), align 16
  %i.ao = load ptr, ptr @tcg_env, align 8
  %i.ap = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.ao, i64 noundef 120, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.reg_names, i64 60)) #14
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 120), align 8
  %i.aq = load ptr, ptr @tcg_env, align 8
  %i.ar = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.aq, i64 noundef 320, ptr noundef nonnull @tcg_x86_init.seg_base_names) #14
  store ptr %i.ar, ptr @cpu_seg_base, align 16
  %i.as = load ptr, ptr @tcg_env, align 8
  %i.at = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.as, i64 noundef 344, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.seg_base_names, i64 8)) #14
  store ptr %i.at, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 8), align 8
  %i.au = load ptr, ptr @tcg_env, align 8
  %i.av = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.au, i64 noundef 368, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.seg_base_names, i64 16)) #14
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  %i.aw = load ptr, ptr @tcg_env, align 8
  %i.ax = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.aw, i64 noundef 392, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.seg_base_names, i64 24)) #14
  store ptr %i.ax, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 24), align 8
  %i.ay = load ptr, ptr @tcg_env, align 8
  %i.az = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.ay, i64 noundef 416, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.seg_base_names, i64 32)) #14
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 32), align 16
  %i.ba = load ptr, ptr @tcg_env, align 8
  %i.bb = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.ba, i64 noundef 440, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.seg_base_names, i64 40)) #14
  store ptr %i.bb, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 40), align 8
  %i.bc = load ptr, ptr @tcg_env, align 8
  %i.bd = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.bc, i64 noundef 640, ptr noundef nonnull @tcg_x86_init.bnd_regl_names) #14
  store ptr %i.bd, ptr @cpu_bndl, align 16
  %i.be = load ptr, ptr @tcg_env, align 8
  %i.bf = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.be, i64 noundef 648, ptr noundef nonnull @tcg_x86_init.bnd_regu_names) #14
  store ptr %i.bf, ptr @cpu_bndu, align 16
  %i.bg = load ptr, ptr @tcg_env, align 8
  %i.bh = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.bg, i64 noundef 656, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.bnd_regl_names, i64 8)) #14
  store ptr %i.bh, ptr getelementptr inbounds nuw (i8, ptr @cpu_bndl, i64 8), align 8
  %i.bi = load ptr, ptr @tcg_env, align 8
  %i.bj = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.bi, i64 noundef 664, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.bnd_regu_names, i64 8)) #14
  store ptr %i.bj, ptr getelementptr inbounds nuw (i8, ptr @cpu_bndu, i64 8), align 8
  %i.bk = load ptr, ptr @tcg_env, align 8
  %i.bl = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.bk, i64 noundef 672, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.bnd_regl_names, i64 16)) #14
  store ptr %i.bl, ptr getelementptr inbounds nuw (i8, ptr @cpu_bndl, i64 16), align 16
  %i.bm = load ptr, ptr @tcg_env, align 8
  %i.bn = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.bm, i64 noundef 680, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.bnd_regu_names, i64 16)) #14
  store ptr %i.bn, ptr getelementptr inbounds nuw (i8, ptr @cpu_bndu, i64 16), align 16
  %i.bo = load ptr, ptr @tcg_env, align 8
  %i.bp = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.bo, i64 noundef 688, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.bnd_regl_names, i64 24)) #14
  store ptr %i.bp, ptr getelementptr inbounds nuw (i8, ptr @cpu_bndl, i64 24), align 8
  %i.bq = load ptr, ptr @tcg_env, align 8
  %i.br = tail call ptr @tcg_global_mem_new_i64(ptr noundef %i.bq, i64 noundef 696, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @tcg_x86_init.bnd_regu_names, i64 24)) #14
  store ptr %i.br, ptr getelementptr inbounds nuw (i8, ptr @cpu_bndu, i64 24), align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @tcg_global_mem_new_i32(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare ptr @tcg_global_mem_new_i64(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @x86_translate_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.DisasContext, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %5, i8 0, i64 448, i1 false), !annotation !17
  call void @translator_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull @i386_tr_ops, ptr noundef nonnull %5, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @translator_loop(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind sspstrong uwtable
define internal void @i386_tr_init_disas_context(ptr nofree noundef captures(none) initializes((112, 128), (140, 142), (150, 196), (200, 232)) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i32, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = lshr i32 %i.c, 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.c, ptr %i.m, align 8
  %i.n = trunc i32 %i.c to i8
  %i.o = and i8 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 %i.o, ptr %i.p, align 4
  %i.q = trunc i32 %i.f to i8
  %i.r = and i8 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 141
  store i8 %i.r, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 60, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 151
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %1, i1 noundef zeroext false) #14, !inline_history !29 ; 2 uses
  %or.cond.i = icmp ult i32 %i.ab, 22
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 30208
  %i.ae = load i64, ptr %i.ad, align 16
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 30216
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 30256
  %i.am = load i64, ptr %i.al, align 16
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 30264
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 30224
  %i.au = load i64, ptr %i.at, align 16
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 30232
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.az, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 30248
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 30360
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.bh, ptr %i.bi, align 8
  %i.bj = and i32 %i.e, 512
  %i.bk = icmp eq i32 %i.bj, 0
  %i.bl = and i32 %i.c, 65800
  %i.bm = icmp eq i32 %i.bl, 0
  %.not129 = select i1 %i.bk, i1 %i.bm, i1 false
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 150
  %i.bo = zext i1 %.not129 to i8
  store i8 %i.bo, ptr %i.bn, align 2
  %i.bp = tail call ptr @tcg_temp_new_i64() #14
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.bp, ptr %i.bq, align 8
  %i.br = tail call ptr @tcg_temp_new_i64() #14
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.br, ptr %i.bs, align 8
  %i.bt = tail call ptr @tcg_temp_new_i64() #14
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = tail call ptr @tcg_temp_new_i64() #14
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.bv, ptr %i.bw, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal void @i386_tr_tb_start(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @i386_tr_insn_start(ptr nofree noundef captures(none) initializes((432, 448)) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.d, ptr %i.e, align 8
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 29352
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load atomic i32, ptr %i.o monotonic, align 4
  %i.q = and i32 %i.p, 131072
  %.not = icmp eq i32 %i.q, 0
  %i.r = and i64 %i.b, 4095
  %spec.select = select i1 %.not, i64 %i.b, i64 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load i32, ptr %i.s, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = tail call ptr @tcg_emit_op(i32 noundef 71, i32 noundef 3) #14 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 %spec.select, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 %i.u, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i64 0, ptr %i.y, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @i386_tr_translate_insn(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %2 = alloca %struct.X86DecodedInsn, align 8     ; 76 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 11 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.h = call i32 @__sigsetjmp(ptr noundef nonnull %i.g, i32 noundef 0) #15
  switch i32 %i.h, label %bb.hd [
    i32 0, label %bb.b
    i32 1, label %bb.gu
    i32 2, label %bb.gw
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16496 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, i8 0, i64 200, i1 false), !annotation !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 10 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  store i8 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 147 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 143 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 149 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  store i8 0, ptr %i.u, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 25 uses
  store i8 0, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 14 uses
  store i64 0, ptr %i.r, align 2
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.0153.i = phi i32 [ -1, %bb.b ], [ %.0153.i.be, %.backedge.i.backedge ] ; 3 uses
  %i.y = load i64, ptr %i.l, align 8              ; 4 uses
  %i.z = load i32, ptr %i.w, align 4
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.c, label %._crit_edge16.i.i.i

bb.c:                                             ; preds = %.backedge.i
  %i.ab = call zeroext i1 @translator_is_same_page(ptr noundef nonnull %0, i64 noundef %i.y) #14
  br i1 %i.ab, label %._crit_edge.i.i.i, label %bb.d

._crit_edge.i.i.i:                                ; preds = %bb.c
  %.pre.i.i.i = load i64, ptr %i.l, align 8
  br label %._crit_edge16.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @__longjmp_chk(ptr noundef nonnull %i.g, i32 noundef 2) #16
  unreachable

._crit_edge16.i.i.i:                              ; preds = %._crit_edge.i.i.i, %.backedge.i
  %i.ac = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.y, %.backedge.i ] ; 3 uses
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.l, align 8
  %.val.i.i.i = load i64, ptr %i.j, align 8
  %i.ae = sub i64 %i.ad, %.val.i.i.i
  %i.af = trunc i64 %i.ae to i32
  %i.ag = icmp sgt i32 %i.af, 15
  br i1 %i.ag, label %bb.e, label %x86_ldub_code.exit.i, !prof !20

bb.e:                                             ; preds = %._crit_edge16.i.i.i
  %i.ah = add i64 %i.y, -1
  %i.ai = xor i64 %i.ac, %i.ah
  %.not.i.i.i = icmp ult i64 %i.ai, 4096
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = and i64 %i.ac, -4096
  %i.ak = call zeroext i8 @translator_ldub(ptr noundef nonnull %i.i, ptr noundef nonnull %0, i64 noundef %i.aj) #14 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @__longjmp_chk(ptr noundef nonnull %i.g, i32 noundef 1) #16
  unreachable

x86_ldub_code.exit.i:                             ; preds = %._crit_edge16.i.i.i
end_hunk_0
begin_hunk_1_@i386_tr_translate_insn:bb.a
bb.v:                                             ; preds = %bb.u
  %i.bg = call zeroext i1 @translator_is_same_page(ptr noundef nonnull %0, i64 noundef %i.bd) #14
  br i1 %i.bg, label %._crit_edge.i.i225.i, label %bb.w

._crit_edge.i.i225.i:                             ; preds = %bb.v
  %.pre.i.i226.i = load i64, ptr %i.l, align 8
  br label %._crit_edge16.i.i222.i

bb.w:                                             ; preds = %bb.v
  call void @__longjmp_chk(ptr noundef nonnull %i.g, i32 noundef 2) #16
  unreachable

._crit_edge16.i.i222.i:                           ; preds = %._crit_edge.i.i225.i, %bb.u
  %i.bh = phi i64 [ %.pre.i.i226.i, %._crit_edge.i.i225.i ], [ %i.bd, %bb.u ] ; 3 uses
  %i.bi = add i64 %i.bh, 1                        ; 2 uses
  store i64 %i.bi, ptr %i.l, align 8
  %.val.i.i223.i = load i64, ptr %i.j, align 8
  %i.bj = sub i64 %i.bi, %.val.i.i223.i
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp sgt i32 %i.bk, 15
  br i1 %i.bl, label %bb.x, label %x86_ldub_code.exit227.i, !prof !20

bb.x:                                             ; preds = %._crit_edge16.i.i222.i
  %i.bm = add i64 %i.bd, -1
  %i.bn = xor i64 %i.bh, %i.bm
  %.not.i.i224.i = icmp ult i64 %i.bn, 4096
  br i1 %.not.i.i224.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = and i64 %i.bh, -4096
  %i.bp = call zeroext i8 @translator_ldub(ptr noundef nonnull %i.i, ptr noundef nonnull %0, i64 noundef %i.bo) #14 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @__longjmp_chk(ptr noundef nonnull %i.g, i32 noundef 1) #16
  unreachable

x86_ldub_code.exit227.i:                          ; preds = %._crit_edge16.i.i222.i
  %i.bq = call zeroext i8 @translator_ldub(ptr noundef nonnull %i.i, ptr noundef nonnull %0, i64 noundef %i.bd) #14 ; 2 uses
  %i.br = zext i8 %i.bq to i32                    ; 3 uses
  %i.bs = load i32, ptr %i.x, align 8             ; 2 uses
  %i.bt = and i32 %i.bs, 32768
  %.not166.i = icmp ne i32 %i.bt, 0
  %i.bu = and i32 %i.br, 192
  %.not167.i = icmp eq i32 %i.bu, 192
  %or.cond220.i = select i1 %.not166.i, i1 true, i1 %.not167.i
  br i1 %or.cond220.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %x86_ldub_code.exit227.i
  %i.bv = load i64, ptr %i.l, align 8
  %i.bw = add i64 %i.bv, -1
  store i64 %i.bw, ptr %i.l, align 8
  br label %.thread.i

bb.ab:                                            ; preds = %x86_ldub_code.exit227.i
  %i.bx = load i8, ptr %i.v, align 1
  %i.by = and i8 %i.bx, 15
  %.not168.i = icmp eq i8 %i.by, 0
  %.not169.i = icmp eq i32 %.0153.i, -1
  %or.cond221.i = and i1 %.not169.i, %.not168.i
  br i1 %or.cond221.i, label %bb.ac, label %.thread249.i

bb.ac:                                            ; preds = %bb.ab
  %i.bz = xor i8 %i.bq, -1                        ; 3 uses
  %i.ca = lshr i8 %i.bz, 4
  %i.cb = and i8 %i.ca, 8
  store i8 %i.cb, ptr %i.n, align 2
  %i.cc = icmp eq i8 %i.al, -59
  br i1 %i.cc, label %.thread.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cd = call fastcc zeroext i8 @x86_ldub_code(ptr noundef nonnull %i.i, ptr noundef nonnull %0) ; 2 uses
  %i.ce = zext i8 %i.cd to i32                    ; 3 uses
  %i.cf = lshr i8 %i.bz, 3
  %i.cg = and i8 %i.cf, 8
  store i8 %i.cg, ptr %i.o, align 1
  %i.ch = lshr i8 %i.bz, 2
  %i.ci = and i8 %i.ch, 8
  store i8 %i.ci, ptr %i.p, align 4
  %.lobit.i = lshr i8 %i.cd, 7
  store i8 %.lobit.i, ptr %i.t, align 1
  %i.cj = and i32 %i.br, 31
  switch i32 %i.cj, label %bb.gq [
    i32 1, label %.thread.thread.i
    i32 2, label %bb.ae
    i32 3, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %.thread.thread.i

bb.af:                                            ; preds = %bb.ad
  br label %.thread.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.aa, %bb.t, %x86_ldub_code.exit..thread.loopexit_crit_edge.i
  %i.ck = phi i32 [ %i.bb, %bb.t ], [ %i.bs, %bb.aa ], [ %.pre.pre.i, %x86_ldub_code.exit..thread.loopexit_crit_edge.i ], [ %i.az, %bb.s ] ; 2 uses
  %i.cl = and i32 %i.ck, 32768
  %.not172.i = icmp eq i32 %i.cl, 0
  br i1 %.not172.i, label %.thread._crit_edge.i, label %bb.ag

.thread._crit_edge.i:                             ; preds = %.thread.i
  %.pre461.i = load i8, ptr %i.v, align 1
  br label %bb.ai

.thread.thread.i:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0156.i = phi ptr [ @decode_0F3A, %bb.af ], [ @decode_0F, %bb.ac ], [ @decode_0F38, %bb.ae ], [ @decode_0F, %bb.ad ] ; 2 uses
  %.0152.i = phi i32 [ %i.ce, %bb.af ], [ %i.br, %bb.ac ], [ %i.ce, %bb.ae ], [ %i.ce, %bb.ad ] ; 3 uses
  %i.cm = lshr i32 %.0152.i, 3
  %i.cn = xor i32 %i.cm, -1
  %i.co = load i32, ptr %i.x, align 8             ; 2 uses
  %i.cp = and i32 %i.co, 32768
  %.not170.i = icmp eq i32 %i.cp, 0               ; 2 uses
  %i.cq = select i1 %.not170.i, i32 7, i32 15
  %i.cr = and i32 %i.cq, %i.cn
  %i.cs = trunc nuw nsw i32 %i.cr to i8
  store i8 %i.cs, ptr %i.s, align 1
  %i.ct = trunc nuw i32 %.0152.i to i8
  %i.cu = lshr i8 %i.ct, 2
  %i.cv = and i8 %i.cu, 1
  store i8 %i.cv, ptr %i.r, align 2
  %i.cw = and i32 %.0152.i, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @disas_insn.pp_prefix, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = load i8, ptr %i.v, align 1
  %i.db = trunc i32 %i.cz to i8
  %i.dc = or i8 %i.da, %i.db
  %i.dd = or i8 %i.dc, 32                         ; 3 uses
  store i8 %i.dd, ptr %i.v, align 1
  br i1 %.not170.i, label %bb.ai, label %.thread296.i

bb.ag:                                            ; preds = %.thread.i
  %.not179.i = icmp eq i32 %.0153.i, -1
  %.pre460.pre.i = load i8, ptr %i.v, align 1     ; 2 uses
  br i1 %.not179.i, label %.thread296.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = or i8 %.pre460.pre.i, 64                ; 2 uses
  store i8 %i.de, ptr %i.v, align 1
  %i.df = trunc nuw nsw i32 %.0153.i to i8        ; 4 uses
  %i.dg = lshr i8 %i.df, 3
  %i.dh = and i8 %i.dg, 1
  store i8 %i.dh, ptr %i.t, align 1
  %i.di = shl nuw i8 %i.df, 1
  %i.dj = and i8 %i.di, 8
  store i8 %i.dj, ptr %i.n, align 2
  %i.dk = shl i8 %i.df, 2
  %i.dl = and i8 %i.dk, 8
  store i8 %i.dl, ptr %i.o, align 1
  %i.dm = shl i8 %i.df, 3
  %i.dn = and i8 %i.dm, 8
  store i8 %i.dn, ptr %i.p, align 4
  br label %.thread296.i

.thread296.i:                                     ; preds = %bb.ah, %bb.ag, %.thread.thread.i
  %.pre460.i = phi i8 [ %.pre460.pre.i, %bb.ag ], [ %i.de, %bb.ah ], [ %i.dd, %.thread.thread.i ] ; 2 uses
  %.2294299.i = phi ptr [ @decode_root, %bb.ag ], [ @decode_root, %bb.ah ], [ %.0156.i, %.thread.thread.i ]
  %i.do = load i8, ptr %i.t, align 1, !range !18, !noundef !19
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = and i8 %.pre460.i, 8
  %.not183.i = icmp eq i8 %i.dq, 0
  %i.dr = select i1 %.not183.i, i32 2, i32 1
  %i.ds = select i1 %i.dp, i32 3, i32 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.ds, ptr %i.dt, align 4
  %i.du = and i8 %.pre460.i, 16
  %.not184.i = icmp eq i8 %i.du, 0
  %i.dv = select i1 %.not184.i, i32 3, i32 2
  br label %bb.aj

bb.ai:                                            ; preds = %.thread.thread.i, %.thread._crit_edge.i
  %i.dw = phi i8 [ %i.dd, %.thread.thread.i ], [ %.pre461.i, %.thread._crit_edge.i ] ; 2 uses
  %i.dx = phi i32 [ %i.co, %.thread.thread.i ], [ %i.ck, %.thread._crit_edge.i ]
  %.2295.i = phi ptr [ %.0156.i, %.thread.thread.i ], [ @decode_root, %.thread._crit_edge.i ]
  %i.dy = lshr i32 %i.dx, 4
  %.lobit173.i = and i32 %i.dy, 1                 ; 2 uses
  %i.dz = lshr i8 %i.dw, 3
  %.lobit174.i = and i8 %i.dz, 1
  %i.ea = zext nneg i8 %.lobit174.i to i32
  %.not175.i = icmp eq i32 %.lobit173.i, %i.ea
  %spec.select545.i = select i1 %.not175.i, i32 1, i32 2
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %spec.select545.i, ptr %i.eb, align 4
  %i.ec = lshr i8 %i.dw, 4
  %.lobit177.i = and i8 %i.ec, 1
  %i.ed = zext nneg i8 %.lobit177.i to i32
  %.not178.i = icmp eq i32 %.lobit173.i, %i.ed
  %..i = select i1 %.not178.i, i32 1, i32 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread296.i
  %.sink.i = phi i32 [ %..i, %bb.ai ], [ %i.dv, %.thread296.i ]
  %.2293.i = phi ptr [ %.2295.i, %bb.ai ], [ %.2294299.i, %.thread296.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %.sink.i, ptr %i.ee, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %2, i8 noundef 0, i64 noundef 200, i1 noundef false) #14
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 6 uses
  store i8 -1, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 193 ; 6 uses
  store i8 %i.al, ptr %i.eg, align 1
  call void %.2293.i(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %2, ptr noundef nonnull %i.eg) #14, !callees !34, !inline_history !30
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ei = load i16, ptr %i.eh, align 8            ; 2 uses
  %i.ej = and i16 %i.ei, 512
  %.not83.i.i = icmp eq i16 %i.ej, 0
  br i1 %.not83.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %.lr.ph.i.i
  %i.ek = phi i16 [ %i.en, %.lr.ph.i.i ], [ %i.ei, %bb.aj ]
  %i.el = and i16 %i.ek, -513
  store i16 %i.el, ptr %i.eh, align 8
  %i.em = load ptr, ptr %2, align 8
  call void %i.em(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %2, ptr noundef nonnull %i.eg) #14, !inline_history !30
  %i.en = load i16, ptr %i.eh, align 8            ; 2 uses
  %i.eo = and i16 %i.en, 512
  %.not.i.i = icmp eq i16 %i.eo, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !31

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.aj
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = and i64 %i.eq, 281470681743360
  %.not.i.i228.i = icmp eq i64 %i.er, 0
  br i1 %.not.i.i228.i, label %validate_sse_prefix.exit.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.es = load i8, ptr %i.v, align 1              ; 3 uses
  %i.et = and i8 %i.es, 3
  %.not6.i.i.i = icmp eq i8 %i.et, 0
  br i1 %.not6.i.i.i, label %validate_sse_prefix.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = and i8 %i.es, -9                        ; 2 uses
  store i8 %i.eu, ptr %i.v, align 1
  br label %validate_sse_prefix.exit.i.i

validate_sse_prefix.exit.i.i:                     ; preds = %bb.al, %bb.ak
  %i.ev = phi i8 [ %i.eu, %bb.al ], [ %i.es, %bb.ak ]
  %i.ew = and i8 %i.ev, 11
  %i.ex = lshr i64 %i.eq, 32
  %i.ey = trunc nuw i64 %i.ex to i32
  %i.ez = zext nneg i8 %i.ew to i32
  %i.fa = shl nuw nsw i32 1, %i.ez
  %i.fb = and i32 %i.fa, %i.ey
  %.not82.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not82.i.i, label %.thread249.i, label %validate_sse_prefix.exit.thread.i.i

validate_sse_prefix.exit.thread.i.i:              ; preds = %validate_sse_prefix.exit.i.i, %._crit_edge.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.fd = load i64, ptr %i.fc, align 8            ; 3 uses
  %i.fe = and i64 %i.fd, 255
  %.not73.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not73.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %validate_sse_prefix.exit.thread.i.i
  %i.ff = trunc i64 %i.fd to i32
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = and i32 %i.fg, 255
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.fj = call fastcc zeroext i1 @decode_op_size(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.fh, ptr noundef %i.fi)
  br i1 %i.fj, label %bb.an, label %.thread249.i

bb.an:                                            ; preds = %bb.am
  %i.fk = load i64, ptr %i.fc, align 8            ; 3 uses
  %i.fl = and i64 %i.fk, 255
  %i.fm = icmp eq i64 %i.fl, 9
  br i1 %i.fm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fn = load i32, ptr %i.fi, align 4
  %i.fo = shl nuw i32 1, %i.fn
  %i.fp = load i8, ptr %i.q, align 1
  %i.fq = trunc i32 %i.fo to i8
  %i.fr = add i8 %i.fp, %i.fq
  store i8 %i.fr, ptr %i.q, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %validate_sse_prefix.exit.thread.i.i
  %i.fs = phi i64 [ %i.fk, %bb.an ], [ %i.fk, %bb.ao ], [ %i.fd, %validate_sse_prefix.exit.thread.i.i ] ; 3 uses
  %i.ft = and i64 %i.fs, 16711680
  %.not74.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not74.i.i, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = lshr i32 %i.fu, 24
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.fx = call fastcc zeroext i1 @decode_op_size(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.fv, ptr noundef %i.fw)
  br i1 %i.fx, label %bb.ar, label %.thread249.i

bb.ar:                                            ; preds = %bb.aq
  %i.fy = load i64, ptr %i.fc, align 8            ; 3 uses
  %i.fz = and i64 %i.fy, 16711680
  %i.ga = icmp eq i64 %i.fz, 589824
  br i1 %i.ga, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gb = load i32, ptr %i.fw, align 4
  %i.gc = shl nuw i32 1, %i.gb
  %i.gd = load i8, ptr %i.q, align 1
  %i.ge = trunc i32 %i.gc to i8
  %i.gf = add i8 %i.gd, %i.ge
  store i8 %i.gf, ptr %i.q, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ap
  %i.gg = phi i64 [ %i.fy, %bb.ar ], [ %i.fy, %bb.as ], [ %i.fs, %bb.ap ] ; 3 uses
  %i.gh = and i64 %i.gg, 1095216660480
  %.not75.i.i = icmp eq i64 %i.gh, 0
  br i1 %.not75.i.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gi = lshr i64 %i.gg, 40
  %i.gj = trunc nuw nsw i64 %i.gi to i32
  %i.gk = and i32 %i.gj, 255
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 100 ; 2 uses
  %i.gm = call fastcc zeroext i1 @decode_op_size(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.gk, ptr noundef %i.gl)
  br i1 %i.gm, label %bb.av, label %.thread249.i

bb.av:                                            ; preds = %bb.au
  %i.gn = load i64, ptr %i.fc, align 8            ; 3 uses
  %i.go = and i64 %i.gn, 1095216660480
  %i.gp = icmp eq i64 %i.go, 38654705664
  br i1 %i.gp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gq = load i32, ptr %i.gl, align 4
  %i.gr = shl nuw i32 1, %i.gq
  %i.gs = load i8, ptr %i.q, align 1
  %i.gt = trunc i32 %i.gr to i8
  %i.gu = add i8 %i.gs, %i.gt
  store i8 %i.gu, ptr %i.q, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at
  %.pre86.i.i = phi i64 [ %i.gn, %bb.av ], [ %i.gn, %bb.aw ], [ %i.gg, %bb.at ] ; 4 uses
  %i.gv = lshr i64 %.pre86.i.i, 48
  %i.gw = trunc i64 %i.gv to i8
  switch i8 %i.gw, label %bb.az [
    i8 0, label %bb.bb
    i8 9, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax
  %.mask.i.i = and i64 %.pre86.i.i, -72057594037927936
  %i.gx = icmp eq i64 %.mask.i.i, 144115188075855872
  br i1 %i.gx, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @__assert_fail(ptr noundef nonnull @.str.823, ptr noundef nonnull @.str.792, i32 noundef 2484, ptr noundef nonnull @__PRETTY_FUNCTION__.decode_insn) #16
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.gy = load i8, ptr %i.q, align 1
  %i.gz = add i8 %i.gy, 1
  store i8 %i.gz, ptr %i.q, align 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %i.ha = trunc i64 %.pre86.i.i to i32            ; 2 uses
  %i.hb = and i32 %i.ha, 255                      ; 2 uses
  %.not77.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not77.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hd = load i8, ptr %i.eg, align 1
  %i.he = zext i8 %i.hd to i32
  %i.hf = call fastcc zeroext i1 @decode_op(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %2, ptr noundef %i.hc, i32 noundef %i.hb, i32 noundef %i.he)
  br i1 %i.hf, label %._crit_edge87.i.i, label %.thread249.i

._crit_edge87.i.i:                                ; preds = %bb.bc
  %.pre88.i.i = load i64, ptr %i.fc, align 8      ; 2 uses
  %.pre93.i.i = trunc i64 %.pre88.i.i to i32
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge87.i.i, %bb.bb
  %.pre-phi.i.i = phi i32 [ %.pre93.i.i, %._crit_edge87.i.i ], [ %i.ha, %bb.bb ]
  %i.hg = phi i64 [ %.pre88.i.i, %._crit_edge87.i.i ], [ %.pre86.i.i, %bb.bb ]
  %i.hh = lshr i32 %.pre-phi.i.i, 16
  %i.hi = and i32 %i.hh, 255                      ; 2 uses
  %.not78.i.i = icmp eq i32 %i.hi, 0
  br i1 %.not78.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hk = load i8, ptr %i.eg, align 1
  %i.hl = zext i8 %i.hk to i32
  %i.hm = call fastcc zeroext i1 @decode_op(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %2, ptr noundef %i.hj, i32 noundef %i.hi, i32 noundef %i.hl)
  br i1 %i.hm, label %._crit_edge89.i.i, label %.thread249.i

._crit_edge89.i.i:                                ; preds = %bb.be
  %.pre90.i.i = load i64, ptr %i.fc, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge89.i.i, %bb.bd
  %i.hn = phi i64 [ %.pre90.i.i, %._crit_edge89.i.i ], [ %i.hg, %bb.bd ] ; 2 uses
  %i.ho = lshr i64 %i.hn, 32
  %i.hp = trunc nuw i64 %i.ho to i32
  %i.hq = and i32 %i.hp, 255                      ; 2 uses
  %.not79.i.i = icmp eq i32 %i.hq, 0
  br i1 %.not79.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.hs = load i8, ptr %i.eg, align 1
  %i.ht = zext i8 %i.hs to i32
  %i.hu = call fastcc zeroext i1 @decode_op(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %2, ptr noundef %i.hr, i32 noundef %i.hq, i32 noundef %i.ht)
  br i1 %i.hu, label %._crit_edge91.i.i, label %.thread249.i

._crit_edge91.i.i:                                ; preds = %bb.bg
  %.pre92.i.i = load i64, ptr %i.fc, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge91.i.i, %bb.bf
  %i.hv = phi i64 [ %.pre92.i.i, %._crit_edge91.i.i ], [ %i.hn, %bb.bf ]
  %i.hw = and i64 %i.hv, 71776119061217280
end_hunk_1
begin_hunk_2_@i386_tr_translate_insn:bb.a
  %.not104.i.i = icmp eq i64 %i.sl, 0
  br i1 %.not104.i.i, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.sm = load i8, ptr %i.t, align 1, !range !18, !noundef !19
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.ex, label %bb.ew

bb.ev:                                            ; preds = %bb.em
  %i.so = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.sp = trunc nuw i8 %i.so to i1
  br i1 %i.sp, label %validate_vex.exit.i.sink.split, label %validate_vex.exit.i

bb.ew:                                            ; preds = %bb.eu, %bb.es, %bb.eq, %bb.en, %bb.el, %bb.eh, %bb.eg, %bb.ef, %bb.ec, %bb.eb, %bb.ea, %bb.dy, %bb.dv, %bb.dt, %bb.ds, %bb.dp, %bb.dn, %bb.dl, %bb.dk, %bb.dd
  %i.sq = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %validate_vex.exit.i.sink.split, label %validate_vex.exit.i

validate_vex.exit.i.sink.split:                   ; preds = %bb.ew, %bb.ev
  %.sink.i.i.ph = phi i32 [ 7, %bb.ev ], [ 6, %bb.ew ]
  %i.ss = load ptr, ptr @cpu_cc_op, align 8
  %i.st = load i32, ptr %i.c, align 8
  call void @tcg_gen_movi_i32(ptr noundef %i.ss, i32 noundef %i.st) #14
  store i8 0, ptr %i.a, align 1
  br label %validate_vex.exit.i

validate_vex.exit.i:                              ; preds = %validate_vex.exit.i.sink.split, %bb.ew, %bb.ev
  %.sink.i.i = phi i32 [ 6, %bb.ew ], [ 7, %bb.ev ], [ %.sink.i.i.ph, %validate_vex.exit.i.sink.split ]
  call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.su = load ptr, ptr @tcg_env, align 8
  %i.sv = call ptr @tcg_constant_i32(i32 noundef %.sink.i.i) #14
  %i.sw = load ptr, ptr @helper_info_raise_exception, align 8
  %i.sx = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.sy = load ptr, ptr %i.sx, align 8            ; 2 uses
  %i.sz = ptrtoint ptr %i.su to i64
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sz
  %i.tb = ptrtoint ptr %i.sv to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.tb
  call void @tcg_gen_call2(ptr noundef %i.sw, ptr noundef nonnull @helper_info_raise_exception, ptr noundef null, ptr noundef %i.ta, ptr noundef %i.tc) #14
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.td, align 8
  br label %bb.he

bb.ex:                                            ; preds = %bb.eu, %bb.et, %bb.eo, %bb.eh, %bb.dl
  %i.te = and i64 %i.pv, 2251799813685248
  %.not198.i = icmp eq i64 %i.te, 0
  br i1 %.not198.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.tg = load i8, ptr %i.tf, align 4
  %.not199.i = icmp eq i8 %i.tg, 0
  br i1 %.not199.i, label %bb.ez, label %bb.go

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %i.th = load i16, ptr %i.eh, align 8            ; 2 uses
  %i.ti = and i16 %i.th, 256
  %.not200.i = icmp eq i16 %i.ti, 0
  br i1 %.not200.i, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.tj = load i32, ptr %i.x, align 8
  %i.tk = and i32 %i.tj, 2097152
  %.not201.i = icmp eq i32 %i.tk, 0
  br i1 %.not201.i, label %bb.fc, label %bb.fb, !prof !22

bb.fb:                                            ; preds = %bb.fa
  %i.tl = load ptr, ptr @tcg_env, align 8
  %i.tm = and i16 %i.th, 255
  %i.tn = zext nneg i16 %i.tm to i32
  %i.to = call ptr @tcg_constant_i32(i32 noundef %i.tn) #14
  %i.tp = load ptr, ptr @helper_info_svm_check_intercept, align 8
  %i.tq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.tr = load ptr, ptr %i.tq, align 8            ; 2 uses
  %i.ts = ptrtoint ptr %i.tl to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.ts
  %i.tu = ptrtoint ptr %i.to to i64
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.tu
  call void @tcg_gen_call2(ptr noundef %i.tp, ptr noundef nonnull @helper_info_svm_check_intercept, ptr noundef null, ptr noundef %i.tt, ptr noundef %i.tv) #14
  %.pre462.i = load i64, ptr %i.ep, align 8
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %i.tw = phi i64 [ %.pre462.i, %bb.fb ], [ %i.pv, %bb.fa ], [ %i.pv, %bb.ez ] ; 5 uses
  %.not202.i = icmp ult i64 %i.tw, 281474976710656
  br i1 %.not202.i, label %bb.fk, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.tx = and i64 %i.tw, 288230376151711744
  %.not203.i = icmp eq i64 %i.tx, 0
  br i1 %.not203.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ty = load i32, ptr %i.x, align 8
  %i.tz = and i32 %i.ty, 524288
  %.not204.i = icmp eq i32 %i.tz, 0
  br i1 %.not204.i, label %.thread249.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.ua = and i64 %i.tw, 4503599627370496
  %.not205.i = icmp eq i64 %i.ua, 0
  br i1 %.not205.i, label %bb.fi, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ub = load i32, ptr %i.x, align 8
  %i.uc = and i32 %i.ub, 131072
  %.not206.i = icmp eq i32 %i.uc, 0
  br i1 %.not206.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.ue = load i8, ptr %i.ud, align 1
  %i.uf = icmp ult i8 %i.ue, 3
  br i1 %i.uf, label %bb.go, label %bb.fk

bb.fi:                                            ; preds = %bb.fg, %bb.ff
  %i.ug = and i64 %i.tw, 9007199254740992
  %.not207.i = icmp eq i64 %i.ug, 0
  br i1 %.not207.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.ui = load i8, ptr %i.uh, align 1
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.uk = load i8, ptr %i.uj, align 4
  %i.ul = icmp ult i8 %i.ui, %i.uk
  br i1 %i.ul, label %bb.go, label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.fc
  %i.um = and i64 %i.tw, 255                      ; 2 uses
  %i.un = icmp eq i64 %i.um, 8
  br i1 %i.un, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.uo = load i8, ptr %i.v, align 1
  %i.up = and i8 %i.uo, 11
  %.not208.i = icmp eq i8 %i.up, 0
  br i1 %.not208.i, label %bb.fm, label %.thread481.i

bb.fm:                                            ; preds = %bb.fl
  %i.uq = load ptr, ptr @tcg_env, align 8
  %i.ur = load ptr, ptr @helper_info_enter_mmx, align 8
  %i.us = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ut = load ptr, ptr %i.us, align 8
  %i.uu = ptrtoint ptr %i.uq to i64
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 %i.uu
  call void @tcg_gen_call1(ptr noundef %i.ur, ptr noundef nonnull @helper_info_enter_mmx, ptr noundef null, ptr noundef %i.uv) #14
  %.pre463.i = load i64, ptr %i.ep, align 8
  %.pre467.i = and i64 %.pre463.i, 255
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fk
  %.pre-phi.i = phi i64 [ %.pre467.i, %bb.fm ], [ %i.um, %bb.fk ]
  %.not209.i = icmp eq i64 %.pre-phi.i, 4
  br i1 %.not209.i, label %bb.fp, label %.thread481.i

.thread481.i:                                     ; preds = %bb.fn, %bb.fl
  %i.uw = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ux = load i8, ptr %i.uw, align 4, !range !18, !noundef !19
  %i.uy = trunc nuw i8 %i.ux to i1
  %i.uz = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.va = load i8, ptr %i.uz, align 4, !range !18
  %i.vb = trunc nuw i8 %i.va to i1
  %or.cond6.i = select i1 %i.uy, i1 true, i1 %i.vb
  %i.vc = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.vd = load i8, ptr %i.vc, align 4, !range !18
  %i.ve = trunc nuw i8 %i.vd to i1
  %or.cond11.i = select i1 %or.cond6.i, i1 true, i1 %i.ve
  br i1 %or.cond11.i, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %.thread481.i
  call fastcc void @gen_lea_modrm(ptr noundef nonnull %0, ptr noundef nonnull %2)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.thread481.i, %bb.fn
  %i.vf = load i8, ptr %i.v, align 1
  %i.vg = and i8 %i.vf, 4
  %.not210.i = icmp eq i8 %i.vg, 0
  br i1 %.not210.i, label %bb.ft, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.vh = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.vi = load i8, ptr %i.vh, align 4, !range !18, !noundef !19
  %i.vj = trunc nuw i8 %i.vi to i1
  %.not.i = xor i1 %i.vj, true
  %i.vk = getelementptr inbounds nuw i8, ptr %2, i64 108
  %i.vl = load i8, ptr %i.vk, align 4, !range !18
  %i.vm = trunc nuw i8 %i.vl to i1
  %or.cond16.i = select i1 %.not.i, i1 true, i1 %i.vm
  br i1 %or.cond16.i, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  call void @__assert_fail(ptr noundef nonnull @.str.795, ptr noundef nonnull @.str.792, i32 noundef 3088, ptr noundef nonnull @__PRETTY_FUNCTION__.disas_insn) #16
  unreachable

bb.fs:                                            ; preds = %bb.fq
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vo = load ptr, ptr %i.vn, align 8
  call fastcc void @gen_load(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 2, ptr noundef %i.vo)
  %i.vp = load ptr, ptr %2, align 8
  call void %i.vp(ptr noundef nonnull %0, ptr noundef nonnull %2) #14, !inline_history !32
  br label %bb.fx

bb.ft:                                            ; preds = %bb.fp
  %i.vq = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.vs = load i32, ptr %i.vr, align 8
  switch i32 %i.vs, label %bb.fw [
    i32 7, label %bb.fu
    i32 6, label %bb.fv
  ]

bb.fu:                                            ; preds = %bb.ft
  call fastcc void @compute_mmx_offset(ptr noundef %i.vq)
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  call fastcc void @compute_xmm_offset(ptr noundef %i.vq)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu, %bb.ft
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.vu = load ptr, ptr %i.vt, align 8
  call fastcc void @gen_load(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1, ptr noundef %i.vu)
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.vw = load ptr, ptr %i.vv, align 8
  call fastcc void @gen_load(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 2, ptr noundef %i.vw)
  %i.vx = load ptr, ptr %2, align 8
  call void %i.vx(ptr noundef nonnull %0, ptr noundef nonnull %2) #14, !inline_history !32
  %i.vy = load ptr, ptr %i.vt, align 8
  call fastcc void @gen_writeback(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0, ptr noundef %i.vy)
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fs
  %i.vz = load i8, ptr %i.ef, align 8
  %.not211.i = icmp eq i8 %i.vz, -1
  br i1 %.not211.i, label %.thread287.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.wa = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.wb = load ptr, ptr %i.wa, align 8            ; 2 uses
  %.not212.i = icmp eq ptr %i.wb, null
  br i1 %.not212.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.wc = load ptr, ptr @cpu_cc_dst, align 8
  call void @tcg_gen_mov_i64(ptr noundef %i.wc, ptr noundef nonnull %i.wb) #14
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.wd = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.we = load ptr, ptr %i.wd, align 8            ; 2 uses
  %.not213.i = icmp eq ptr %i.we, null
  br i1 %.not213.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.wf = load ptr, ptr @cpu_cc_src, align 8
  call void @tcg_gen_mov_i64(ptr noundef %i.wf, ptr noundef nonnull %i.we) #14
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.wh = load ptr, ptr %i.wg, align 8            ; 2 uses
  %.not214.i = icmp eq ptr %i.wh, null
  br i1 %.not214.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.wi = load ptr, ptr @cpu_cc_src2, align 8
  call void @tcg_gen_mov_i64(ptr noundef %i.wi, ptr noundef nonnull %i.wh) #14
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.wj = load i8, ptr %i.ef, align 8             ; 2 uses
  %i.wk = icmp eq i8 %i.wj, 60
  br i1 %i.wk, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.wl = load ptr, ptr @cpu_cc_op, align 8
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.wn = load ptr, ptr %i.wm, align 8
  call void @tcg_gen_mov_i32(ptr noundef %i.wl, ptr noundef %i.wn) #14
  %.pre464.i = load i8, ptr %i.ef, align 8
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.wo = phi i8 [ %i.wj, %bb.ge ], [ %.pre464.i, %bb.gf ] ; 2 uses
  %i.wp = sext i8 %i.wo to i32
  %i.wq = icmp ne i8 %i.wo, 60
  call fastcc void @set_cc_op_1(ptr noundef nonnull %0, i32 noundef %i.wp, i1 noundef zeroext %i.wq)
  %i.wr = load i8, ptr %i.ef, align 8
  %i.ws = sext i8 %i.wr to i32
  %i.wt = call fastcc zeroext i8 @cc_op_live(i32 noundef %i.ws)
  %i.wu = zext i8 %i.wt to i32
  %.pr.i = load i8, ptr %i.ef, align 8
  %.not215.i = icmp eq i8 %.pr.i, 60
  br i1 %.not215.i, label %bb.he, label %.thread287.i

.thread287.i:                                     ; preds = %bb.gg, %bb.fx
  %.0154290.i = phi i32 [ %i.wu, %bb.gg ], [ 0, %bb.fx ] ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ww = load ptr, ptr %i.wv, align 8
  %.not216.i = icmp eq ptr %i.ww, null
  br i1 %.not216.i, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %.thread287.i
  call void @__assert_fail(ptr noundef nonnull @.str.796, ptr noundef nonnull @.str.792, i32 noundef 3128, ptr noundef nonnull @__PRETTY_FUNCTION__.disas_insn) #16
  unreachable

bb.gi:                                            ; preds = %.thread287.i
  %i.wx = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.wy = load ptr, ptr %i.wx, align 8
  %i.wz = trunc i32 %.0154290.i to i1
  %i.xa = icmp eq ptr %i.wy, null
  %i.xb = xor i1 %i.xa, %i.wz
  br i1 %i.xb, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @__assert_fail(ptr noundef nonnull @.str.797, ptr noundef nonnull @.str.792, i32 noundef 3129, ptr noundef nonnull @__PRETTY_FUNCTION__.disas_insn) #16
  unreachable

bb.gk:                                            ; preds = %bb.gi
  %i.xc = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.xd = load ptr, ptr %i.xc, align 8
  %i.xe = icmp ne ptr %i.xd, null
  %i.xf = and i32 %.0154290.i, 2
  %i.xg = icmp eq i32 %i.xf, 0
  %i.xh = xor i1 %i.xg, %i.xe
  br i1 %i.xh, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  call void @__assert_fail(ptr noundef nonnull @.str.798, ptr noundef nonnull @.str.792, i32 noundef 3130, ptr noundef nonnull @__PRETTY_FUNCTION__.disas_insn) #16
  unreachable

bb.gm:                                            ; preds = %bb.gk
  %i.xi = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.xj = load ptr, ptr %i.xi, align 8
  %i.xk = icmp ne ptr %i.xj, null
  %i.xl = and i32 %.0154290.i, 4
  %i.xm = icmp eq i32 %i.xl, 0
  %i.xn = xor i1 %i.xm, %i.xk
  br i1 %i.xn, label %bb.he, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @__assert_fail(ptr noundef nonnull @.str.799, ptr noundef nonnull @.str.792, i32 noundef 3131, ptr noundef nonnull @__PRETTY_FUNCTION__.disas_insn) #16
  unreachable

bb.go:                                            ; preds = %bb.fj, %bb.fh, %bb.ey
  call fastcc void @gen_exception_gpf(ptr noundef nonnull %0)
  br label %bb.he

.thread249.i:                                     ; preds = %bb.fe, %bb.cy, %bb.cb, %bb.ca, %bb.bz, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bq, %has_cpuid_feature.exit.i, %.split.i, %.split269.i, %.split268.i, %.split270.i, %.split257.i, %.split258.i, %.split259.i, %.split260.i, %.split261.i, %.split262.i, %.split263.i, %.split264.i, %.split265.i, %.split266.i, %.split267.i, %bb.bm, %bb.bk, %.split271.i, %.split272.i, %.split273.i, %.split274.i, %.split275.i, %.split276.i, %.split277.i, %.split278.i, %.split279.i, %.split280.i, %.split281.i, %.split282.i, %.split283.i, %.split284.i, %.split285.i, %bb.bg, %bb.be, %bb.bc, %bb.au, %bb.aq, %bb.am, %validate_sse_prefix.exit.i.i, %bb.ab
  %i.xo = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.xp = trunc nuw i8 %i.xo to i1
  br i1 %i.xp, label %bb.gp, label %gen_illegal_opcode.exit.i

bb.gp:                                            ; preds = %.thread249.i
  %i.xq = load ptr, ptr @cpu_cc_op, align 8
  %i.xr = load i32, ptr %i.c, align 8
  call void @tcg_gen_movi_i32(ptr noundef %i.xq, i32 noundef %i.xr) #14
  store i8 0, ptr %i.a, align 1
  br label %gen_illegal_opcode.exit.i

gen_illegal_opcode.exit.i:                        ; preds = %bb.gp, %.thread249.i
  call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.xs = load ptr, ptr @tcg_env, align 8
  %i.xt = call ptr @tcg_constant_i32(i32 noundef 6) #14
  %i.xu = load ptr, ptr @helper_info_raise_exception, align 8
  %i.xv = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.xw = load ptr, ptr %i.xv, align 8            ; 2 uses
  %i.xx = ptrtoint ptr %i.xs to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xx
  %i.xz = ptrtoint ptr %i.xt to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xz
  call void @tcg_gen_call2(ptr noundef %i.xu, ptr noundef nonnull @helper_info_raise_exception, ptr noundef null, ptr noundef %i.xy, ptr noundef %i.ya) #14
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.yb, align 8
  br label %bb.he

bb.gq:                                            ; preds = %decode_insn.exit.i, %bb.ad
  %i.yc = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.yd = trunc nuw i8 %i.yc to i1
  br i1 %i.yd, label %bb.gr, label %gen_illegal_opcode.exit243.i

bb.gr:                                            ; preds = %bb.gq
  %i.ye = load ptr, ptr @cpu_cc_op, align 8
  %i.yf = load i32, ptr %i.c, align 8
  call void @tcg_gen_movi_i32(ptr noundef %i.ye, i32 noundef %i.yf) #14
  store i8 0, ptr %i.a, align 1
  br label %gen_illegal_opcode.exit243.i

gen_illegal_opcode.exit243.i:                     ; preds = %bb.gr, %bb.gq
  call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.yg = load ptr, ptr @tcg_env, align 8
  %i.yh = call ptr @tcg_constant_i32(i32 noundef 6) #14
  %i.yi = load ptr, ptr @helper_info_raise_exception, align 8
  %i.yj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.yk = load ptr, ptr %i.yj, align 8            ; 2 uses
  %i.yl = ptrtoint ptr %i.yg to i64
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.yl
  %i.yn = ptrtoint ptr %i.yh to i64
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 %i.yn
  call void @tcg_gen_call2(ptr noundef %i.yi, ptr noundef nonnull @helper_info_raise_exception, ptr noundef null, ptr noundef %i.ym, ptr noundef %i.yo) #14
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.yp, align 8
  %i.yq = load i32, ptr @qemu_loglevel, align 4
  %i.yr = and i32 %i.yq, 1024
  %.not14.i.i = icmp eq i32 %i.yr, 0
  br i1 %.not14.i.i, label %bb.he, label %bb.gs

bb.gs:                                            ; preds = %gen_illegal_opcode.exit243.i
  %i.ys = call ptr @qemu_log_trylock() #14        ; 5 uses
  %.not.i244.i = icmp eq ptr %i.ys, null
  br i1 %.not.i244.i, label %bb.he, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.yt = load i64, ptr %i.j, align 8             ; 3 uses
  %i.yu = load i64, ptr %i.l, align 8             ; 2 uses
  %i.yv = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.ys, i32 noundef 1, ptr noundef nonnull @.str.834, i64 noundef %i.yt) #14 ; 0 uses
  %i.yw = icmp ult i64 %i.yt, %i.yu
  br i1 %i.yw, label %.lr.ph.i246.i, label %._crit_edge.i245.i

.lr.ph.i246.i:                                    ; preds = %bb.gt, %.lr.ph.i246.i
  %.015.i.i = phi i64 [ %i.za, %.lr.ph.i246.i ], [ %i.yt, %bb.gt ] ; 2 uses
  %i.yx = call zeroext i8 @translator_ldub(ptr noundef nonnull %i.i, ptr noundef nonnull %0, i64 noundef %.015.i.i) #14
  %i.yy = zext i8 %i.yx to i32
  %i.yz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.ys, i32 noundef 1, ptr noundef nonnull @.str.835, i32 noundef %i.yy) #14 ; 0 uses
  %i.za = add i64 %.015.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.za, %i.yu
  br i1 %exitcond.not.i.i, label %._crit_edge.i245.i, label %.lr.ph.i246.i, !llvm.loop !33

._crit_edge.i245.i:                               ; preds = %.lr.ph.i246.i, %bb.gt
  %i.zb = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.ys, i32 noundef 1, ptr noundef nonnull @.str.836) #14 ; 0 uses
  call void @qemu_log_unlock(ptr noundef nonnull %i.ys) #14
  br label %bb.he

bb.gu:                                            ; preds = %bb.a
  %i.zc = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.zd = trunc nuw i8 %i.zc to i1
  br i1 %i.zd, label %bb.gv, label %.thread

bb.gv:                                            ; preds = %bb.gu
  %i.ze = load ptr, ptr @cpu_cc_op, align 8
  %i.zf = load i32, ptr %i.c, align 8
  call void @tcg_gen_movi_i32(ptr noundef %i.ze, i32 noundef %i.zf) #14
  store i8 0, ptr %i.a, align 1
  br label %.thread

.thread:                                          ; preds = %bb.gv, %bb.gu
  call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.zg = load ptr, ptr @tcg_env, align 8
  %i.zh = call ptr @tcg_constant_i32(i32 noundef 13) #14
  %i.zi = load ptr, ptr @helper_info_raise_exception, align 8
  %i.zj = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.zk = load ptr, ptr %i.zj, align 8            ; 2 uses
  %i.zl = ptrtoint ptr %i.zg to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zl
  %i.zn = ptrtoint ptr %i.zh to i64
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zn
  call void @tcg_gen_call2(ptr noundef %i.zi, ptr noundef nonnull @helper_info_raise_exception, ptr noundef null, ptr noundef %i.zm, ptr noundef %i.zo) #14
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.zp, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.zr = load i64, ptr %i.zq, align 8
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.zr, ptr %i.zs, align 8
  br label %bb.hj

bb.gw:                                            ; preds = %bb.a
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zu = load i64, ptr %i.zt, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.zu, ptr %i.zv, align 8
  %i.zw = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.zx = icmp eq i8 %i.zw, %i.b
  br i1 %i.zx, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @__assert_fail(ptr noundef nonnull @.str.788, ptr noundef nonnull @.str.776, i32 noundef 3535, ptr noundef nonnull @__PRETTY_FUNCTION__.i386_tr_translate_insn) #16
  unreachable

bb.gy:                                            ; preds = %bb.gw
  %i.zy = load i32, ptr %i.c, align 8
  %i.zz = icmp eq i32 %i.zy, %i.d
  br i1 %i.zz, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @__assert_fail(ptr noundef nonnull @.str.789, ptr noundef nonnull @.str.776, i32 noundef 3536, ptr noundef nonnull @__PRETTY_FUNCTION__.i386_tr_translate_insn) #16
  unreachable

bb.ha:                                            ; preds = %bb.gy
  %i.aaa = load i64, ptr %i.e, align 8
  %i.aab = icmp eq i64 %i.aaa, %i.f
  br i1 %i.aab, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @__assert_fail(ptr noundef nonnull @.str.790, ptr noundef nonnull @.str.776, i32 noundef 3537, ptr noundef nonnull @__PRETTY_FUNCTION__.i386_tr_translate_insn) #16
  unreachable

bb.hc:                                            ; preds = %bb.ha
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aad = load i32, ptr %i.aac, align 4
  %i.aae = add i32 %i.aad, -1
  store i32 %i.aae, ptr %i.aac, align 4
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void @tcg_remove_ops_after(ptr noundef %i.aag) #14
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.aai = load ptr, ptr %i.aah, align 8
  %i.aaj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.aai, ptr %i.aaj, align 8
  %i.aak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.aak, align 8
  br label %bb.hj

bb.hd:                                            ; preds = %bb.a
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.776, i32 noundef 3544, ptr noundef nonnull @__func__.i386_tr_translate_insn, ptr noundef null) #16
  unreachable

bb.he:                                            ; preds = %._crit_edge.i245.i, %bb.gs, %gen_illegal_opcode.exit243.i, %gen_illegal_opcode.exit.i, %bb.go, %bb.gm, %bb.gg, %validate_vex.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  %i.aal = icmp eq i32 %.pre, 0
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aan = load i64, ptr %i.aam, align 8          ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aan, ptr %i.aao, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.aal, label %bb.hf, label %bb.hj

bb.hf:                                            ; preds = %bb.he
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aar = load i32, ptr %i.aaq, align 8
  %i.aas = and i32 %i.aar, 264
  %.not = icmp eq i32 %i.aas, 0
  br i1 %.not, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  store i32 3, ptr %i.aap, align 8
  br label %bb.hj

bb.hh:                                            ; preds = %bb.hf
  %i.aat = call zeroext i1 @translator_is_same_page(ptr noundef nonnull %0, i64 noundef %i.aan) #14
  br i1 %i.aat, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  store i32 1, ptr %i.aap, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %.thread, %bb.he, %bb.hh, %bb.hi, %bb.hg, %bb.hc
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @i386_tr_tb_stop(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  switch i32 %i.b, label %bb.h [
    i32 2, label %bb.i
    i32 1, label %bb.b
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.g
    i32 7, label %bb.g
    i32 6, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %gen_update_cc_op.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @cpu_cc_op, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load i32, ptr %i.g, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.f, i32 noundef %i.h) #14
  store i8 0, ptr %i.c, align 1
  br label %gen_update_cc_op.exit

gen_update_cc_op.exit:                            ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 16
  %.not.i = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not.i, i32 1, i32 2
  tail call fastcc void @gen_jmp_rel(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef 0, i32 noundef 0)
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.837, ptr noundef nonnull @.str.776, i32 noundef 3592, ptr noundef nonnull @__PRETTY_FUNCTION__.i386_tr_tb_stop) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a, %bb.a, %bb.a
  %i.r = phi i32 [ %.pre, %bb.f ], [ %i.b, %bb.a ], [ %i.b, %bb.a ], [ %i.b, %bb.a ]
  tail call fastcc void @gen_eob(ptr noundef nonnull %0, i32 noundef %i.r)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.776, i32 noundef 3601, ptr noundef nonnull @__func__.i386_tr_tb_stop, ptr noundef null) #16
  unreachable

bb.i:                                             ; preds = %bb.g, %gen_update_cc_op.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @tcg_temp_new_i64() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

end_hunk_2
begin_hunk_3_@gen_AAS:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %gen_update_cc_op.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @cpu_cc_op, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i32, ptr %i.e, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.d, i32 noundef %i.f) #14
  store i8 0, ptr %i.a, align 1
  br label %gen_update_cc_op.exit

gen_update_cc_op.exit:                            ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = load ptr, ptr @helper_info_aas, align 8
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  tail call void @tcg_gen_call1(ptr noundef %i.h, ptr noundef nonnull @helper_info_aas, ptr noundef null, ptr noundef %i.l) #14
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %0, i32 noundef 0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_INC(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((160, 176), (192, 193)) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_movi_i64(ptr noundef %i.d, i64 noundef 1) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 4
  %.not = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  tail call void @tcg_gen_atomic_add_fetch_i64_chk(ptr noundef %i.i, ptr noundef %i.s, ptr noundef %i.l, i64 noundef range(i64 -2147483648, 2147483648) %i.o, i32 noundef %i.b, i32 noundef 1) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_add_i64(ptr noundef %i.i, ptr noundef %i.i, ptr noundef %i.t) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.c, align 8
  tail call fastcc void @gen_setcc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.u)
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = trunc i32 %i.b to i8
  %i.ab = add i8 %i.aa, 28
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 %i.ab, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_DEC(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((160, 176), (192, 193)) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_movi_i64(ptr noundef %i.d, i64 noundef -1) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 4
  %.not = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  tail call void @tcg_gen_atomic_add_fetch_i64_chk(ptr noundef %i.i, ptr noundef %i.s, ptr noundef %i.l, i64 noundef range(i64 -2147483648, 2147483648) %i.o, i32 noundef %i.b, i32 noundef 1) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_add_i64(ptr noundef %i.i, ptr noundef %i.i, ptr noundef %i.t) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.c, align 8
  tail call fastcc void @gen_setcc(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.u)
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = trunc i32 %i.b to i8
  %i.ab = add i8 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 %i.ab, ptr %i.ac, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PUSHA(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 156
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  br label %bb.b

bb.b:                                             ; preds = %gen_lea_ss_ofs.exit.i, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %gen_lea_ss_ofs.exit.i ] ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  %i.i = trunc i64 %indvars.iv.i to i32
  %i.j = or i32 %i.i, -8
  %i.k = shl i32 %i.j, %i.b                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.k to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.g, ptr noundef %i.h, i64 noundef range(i64 -2147483648, 2147483648) %i.l) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %.val.i.i = load i32, ptr %i.d, align 8         ; 3 uses
  %i.m = and i32 %.val.i.i, 32768
  %.not.i.i.i = icmp eq i32 %i.m, 0               ; 2 uses
  %i.n = and i32 %.val.i.i, 32
  %.not2.i.i.i = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not2.i.i.i, i32 1, i32 2
  %i.p = select i1 %.not.i.i.i, i32 %i.o, i32 3   ; 3 uses
  %i.q = and i32 %.val.i.i, 64
  %.not27.i.i.i = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not.i.i.i, i32 2, i32 3      ; 2 uses
  br i1 %.not27.i.i.i, label %gen_lea_ss_ofs.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp samesign ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @tcg_gen_ext_i64(ptr noundef %i.g, ptr noundef %.0.i.i, i32 noundef %i.p) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.021.i.i.i = phi ptr [ %i.g, %bb.f ], [ %.0.i.i, %bb.e ]
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.g, ptr noundef %.021.i.i.i, ptr noundef %i.t) #14
  br label %gen_lea_ss_ofs.exit.i

gen_lea_ss_ofs.exit.i:                            ; preds = %bb.g, %bb.d
  %.1.i.i.i = phi ptr [ %i.g, %bb.g ], [ %.0.i.i, %bb.d ]
  %.0.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.p, %bb.d ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.g, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i) #14
  %i.u = sub nuw nsw i64 7, %indvars.iv.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @cpu_regs, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.c, align 8
  %.val.i = load i32, ptr %i.e, align 4
  %i.y = sext i32 %.val.i to i64
  %i.z = load ptr, ptr %i.f, align 8
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.w, ptr noundef %i.ab, i64 noundef range(i64 -2147483648, 2147483648) %i.y, i32 noundef %i.b, i32 noundef 1) #14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.h, label %bb.b, !llvm.loop !35

bb.h:                                             ; preds = %gen_lea_ss_ofs.exit.i
  %i.ac = shl i32 -8, %i.b
  %.val13.i = load i32, ptr %i.d, align 8         ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @tcg_constant_i64(i64 noundef %i.ad) #14 ; 2 uses
  %i.af = and i32 %.val13.i, 32800
  %cond.i.i = icmp eq i32 %i.af, 0
  br i1 %cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef %i.ae) #14
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_deposit_i64(ptr noundef %i.ai, ptr noundef %i.ai, ptr noundef %i.ag, i32 noundef 0, i32 noundef 16) #14
  br label %gen_pusha.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = and i32 %.val13.i, 32
  %.not2.i.i14.i = icmp eq i32 %i.aj, 0
  %i.ak = and i32 %.val13.i, 32768
  %.not.i.i15.i = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not2.i.i14.i, i32 1, i32 2
  %i.am = select i1 %.not.i.i15.i, i32 %i.al, i32 3
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.an, ptr noundef %i.an, ptr noundef %i.ae) #14
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.ao, ptr noundef %i.ao, i32 noundef %i.am) #14
  br label %gen_pusha.exit

gen_pusha.exit:                                   ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_POPA(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 156
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.022.i = phi i32 [ 0, %bb.a ], [ %i.ad, %bb.i ] ; 4 uses
  %i.h = icmp eq i32 %.022.i, 3
  br i1 %i.h, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sub nuw nsw i32 7, %.022.i
  %i.j = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  %i.l = shl i32 %.022.i, %i.b                    ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %i.l to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.j, ptr noundef %i.k, i64 noundef range(i64 -2147483648, 2147483648) %i.m) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.val.i.i = load i32, ptr %i.d, align 8         ; 3 uses
  %i.n = and i32 %.val.i.i, 32768
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 2 uses
  %i.o = and i32 %.val.i.i, 32
  %.not2.i.i.i = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not2.i.i.i, i32 1, i32 2
  %i.q = select i1 %.not.i.i.i, i32 %i.p, i32 3   ; 3 uses
  %i.r = and i32 %.val.i.i, 64
  %.not27.i.i.i = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not.i.i.i, i32 2, i32 3      ; 2 uses
  br i1 %.not27.i.i.i, label %gen_lea_ss_ofs.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ult i32 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @tcg_gen_ext_i64(ptr noundef %i.j, ptr noundef %.0.i.i, i32 noundef %i.q) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.021.i.i.i = phi ptr [ %i.j, %bb.g ], [ %.0.i.i, %bb.f ]
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.j, ptr noundef %.021.i.i.i, ptr noundef %i.u) #14
  br label %gen_lea_ss_ofs.exit.i

gen_lea_ss_ofs.exit.i:                            ; preds = %bb.h, %bb.e
  %.1.i.i.i = phi ptr [ %i.j, %bb.h ], [ %.0.i.i, %bb.e ]
  %.0.i.i.i = phi i32 [ %i.s, %bb.h ], [ %i.q, %bb.e ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.j, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i) #14
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = load ptr, ptr %i.c, align 8
  %.val.i = load i32, ptr %i.f, align 4
  %i.x = sext i32 %.val.i to i64
  %i.y = load ptr, ptr %i.g, align 8
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.v, ptr noundef %i.aa, i64 noundef range(i64 -2147483648, 2147483648) %i.x, i32 noundef %i.b, i32 noundef 1) #14
  %i.ab = load ptr, ptr %i.e, align 8
  %i.ac = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %i.b, i32 noundef range(i32 -128, -2147483640) %i.i, ptr noundef null, ptr noundef %i.ab) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %gen_lea_ss_ofs.exit.i, %bb.b
  %i.ad = add nuw nsw i32 %.022.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ad, 8
  br i1 %exitcond.not.i, label %bb.j, label %bb.b, !llvm.loop !36

bb.j:                                             ; preds = %bb.i
  %i.ae = shl i32 8, %i.b
  %.val19.i = load i32, ptr %i.d, align 8         ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call ptr @tcg_constant_i64(i64 noundef %i.af) #14 ; 2 uses
  %i.ah = and i32 %.val19.i, 32800
  %cond.i.i = icmp eq i32 %i.ah, 0
  br i1 %cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.ag) #14
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_deposit_i64(ptr noundef %i.ak, ptr noundef %i.ak, ptr noundef %i.ai, i32 noundef 0, i32 noundef 16) #14
  br label %gen_popa.exit

bb.l:                                             ; preds = %bb.j
  %i.al = and i32 %.val19.i, 32
  %.not2.i.i20.i = icmp eq i32 %i.al, 0
  %i.am = and i32 %.val19.i, 32768
  %.not.i.i21.i = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not2.i.i20.i, i32 1, i32 2
  %i.ao = select i1 %.not.i.i21.i, i32 %i.an, i32 3
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.ap, ptr noundef %i.ap, ptr noundef %i.ag) #14
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.aq, ptr noundef %i.aq, i32 noundef %i.ao) #14
  br label %gen_popa.exit

gen_popa.exit:                                    ; preds = %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_BOUND(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.a, ptr noundef %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 1
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %i.p = ptrtoint ptr %i.a to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %helper_info_boundw.helper_info_boundl = select i1 %i.f, ptr @helper_info_boundw, ptr @helper_info_boundl ; 2 uses
  %i.r = load ptr, ptr %helper_info_boundw.helper_info_boundl, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.r, ptr noundef nonnull %helper_info_boundw.helper_info_boundl, ptr noundef null, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @decode_63(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %2, ptr nofree readnone captures(none) %3) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 32768
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_63.arpl, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.e = load i8, ptr %i.d, align 1, !range !18, !noundef !19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_63.movsxd, i64 32, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_63.mov, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_IMUL3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  switch i32 %i.b, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @tcg_gen_ext16s_i64(ptr noundef %i.d, ptr noundef %i.d) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8
  tail call void @tcg_gen_mul_i64(ptr noundef %i.f, ptr noundef %i.f, ptr noundef %i.g) #14
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = load ptr, ptr %i.e, align 8
  tail call void @tcg_gen_ext16s_i64(ptr noundef %i.h, ptr noundef %i.i) #14
  %i.j = load ptr, ptr %i.e, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  tail call void @tcg_gen_ext32s_i64(ptr noundef %i.l, ptr noundef %i.l) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8
  tail call void @tcg_gen_mul_i64(ptr noundef %i.n, ptr noundef %i.n, ptr noundef %i.o) #14
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @tcg_gen_ext32s_i64(ptr noundef %i.p, ptr noundef %i.q) #14
  %i.r = load ptr, ptr %i.m, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.s = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @tcg_gen_muls2_i64(ptr noundef %i.u, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w) #14
  %i.x = load ptr, ptr %i.v, align 8
  %i.y = load ptr, ptr %i.t, align 8
  tail call void @tcg_gen_sari_i64(ptr noundef %i.x, ptr noundef %i.y, i64 noundef 63) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 2123, ptr noundef nonnull @__func__.gen_IMUL3, ptr noundef null) #16
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  tail call void @tcg_gen_sub_i64(ptr noundef %i.aa, ptr noundef %i.aa, ptr noundef %.0) #14
  %i.ab = load ptr, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = trunc nuw nsw i32 %i.b to i8
  %i.ah = add nuw nsw i8 %i.ag, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 %i.ah, ptr %i.ai, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_INS(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.c, ptr noundef %i.e) #14
  tail call void @tcg_gen_ext16u_i32(ptr noundef %i.c, ptr noundef %i.c) #14
  tail call fastcc void @gen_check_io(ptr noundef %0, i32 noundef %i.b, ptr noundef %i.c, i32 noundef 5)
  %i.f = tail call zeroext i1 @translator_io_start(ptr noundef %0) #14 ; 0 uses
  tail call fastcc void @do_gen_string(ptr noundef %0, i32 noundef %i.b, ptr noundef nonnull @gen_ins, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_OUTS(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = tail call ptr @tcg_temp_new_i32() #14    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.c, ptr noundef %i.e) #14
  tail call void @tcg_gen_ext16u_i32(ptr noundef %i.c, ptr noundef %i.c) #14
  tail call fastcc void @gen_check_io(ptr noundef %0, i32 noundef %i.b, ptr noundef %i.c, i32 noundef 4)
  %i.f = tail call zeroext i1 @translator_io_start(ptr noundef %0) #14 ; 0 uses
  tail call fastcc void @do_gen_string(ptr noundef %0, i32 noundef %i.b, ptr noundef nonnull @gen_outs, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_3
begin_hunk_4_@gen_LDS:bb.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @decode_group11(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @get_modrm(ptr noundef %0, ptr noundef %1)
  %i.b = and i8 %i.a, 56
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr @gen_MOV, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_ENTER(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 160        ; 5 uses
  %.val59.i = load i32, ptr %i.h, align 8         ; 2 uses
  %i.i = and i32 %.val59.i, 32768
  %.not.i.i = icmp eq i32 %i.i, 0                 ; 2 uses
  %i.j = icmp eq i32 %i.g, 1
  %i.k = select i1 %i.j, i32 1, i32 3
  %.0.i.i = select i1 %.not.i.i, i32 %i.g, i32 %i.k ; 8 uses
  %i.l = shl nuw i32 1, %.0.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16
  %i.p = sext i32 %i.l to i64
  tail call void @tcg_gen_subi_i64(ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.p) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 8 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = load ptr, ptr %i.m, align 8              ; 3 uses
  %.val.i.i = load i32, ptr %i.h, align 8         ; 3 uses
  %i.t = and i32 %.val.i.i, 32768
  %.not.i.i.i = icmp eq i32 %i.t, 0               ; 2 uses
  %i.u = and i32 %.val.i.i, 32
  %.not2.i.i.i = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not2.i.i.i, i32 1, i32 2
  %i.w = select i1 %.not.i.i.i, i32 %i.v, i32 3   ; 3 uses
  %i.x = and i32 %.val.i.i, 64
  %.not27.i.i.i = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not.i.i.i, i32 2, i32 3      ; 2 uses
  br i1 %.not27.i.i.i, label %gen_lea_ss_ofs.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = icmp samesign ult i32 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @tcg_gen_ext_i64(ptr noundef %i.r, ptr noundef %i.s, i32 noundef %i.w) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.s, %bb.b ]
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.r, ptr noundef %.021.i.i.i, ptr noundef %i.aa) #14
  br label %gen_lea_ss_ofs.exit.i

gen_lea_ss_ofs.exit.i:                            ; preds = %bb.d, %bb.a
  %.1.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %bb.a ]
  %.0.i.i.i = phi i32 [ %i.y, %bb.d ], [ %i.w, %bb.a ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.r, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i) #14
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8
  %i.ac = load ptr, ptr %i.q, align 8
  %i.ad = getelementptr i8, ptr %0, i64 156       ; 4 uses
  %.val58.i = load i32, ptr %i.ad, align 4
  %i.ae = sext i32 %.val58.i to i64
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.ab, ptr noundef %i.ai, i64 noundef range(i64 -2147483648, 2147483648) %i.ae, i32 noundef %.0.i.i, i32 noundef 1) #14
  %i.aj = and i32 %i.e, 31                        ; 4 uses
  switch i32 %i.aj, label %.lr.ph.preheader.i [
    i32 0, label %gen_enter.exit
    i32 1, label %.loopexit.i
  ]

.lr.ph.preheader.i:                               ; preds = %gen_lea_ss_ofs.exit.i
  %i.ak = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %gen_lea_ss_ofs.exit82.i, %.lr.ph.preheader.i
  %.093.i = phi i32 [ %i.bs, %gen_lea_ss_ofs.exit82.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %i.al = load ptr, ptr %i.q, align 8             ; 7 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8 ; 2 uses
  %i.an = shl i32 %.093.i, %.0.i.i                ; 2 uses
  %i.ao = sub i32 0, %i.an
  %i.ap = sext i32 %i.ao to i64                   ; 2 uses
  %.not.i63.i = icmp eq i32 %i.an, 0              ; 2 uses
  br i1 %.not.i63.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @tcg_gen_addi_i64(ptr noundef %i.al, ptr noundef %i.am, i64 noundef range(i64 -2147483648, 2147483648) %i.ap) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.0.i64.i = phi ptr [ %i.al, %bb.e ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %.val.i65.i = load i32, ptr %i.h, align 8       ; 3 uses
  %i.aq = and i32 %.val.i65.i, 32768
  %.not.i.i66.i = icmp eq i32 %i.aq, 0            ; 2 uses
  %i.ar = and i32 %.val.i65.i, 32
  %.not2.i.i67.i = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not2.i.i67.i, i32 1, i32 2
  %i.at = select i1 %.not.i.i66.i, i32 %i.as, i32 3 ; 3 uses
  %i.au = and i32 %.val.i65.i, 64
  %.not27.i.i68.i = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not.i.i66.i, i32 2, i32 3   ; 2 uses
  br i1 %.not27.i.i68.i, label %gen_lea_ss_ofs.exit72.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp samesign ult i32 %i.at, %i.av
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @tcg_gen_ext_i64(ptr noundef %i.al, ptr noundef %.0.i64.i, i32 noundef %i.at) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.021.i.i69.i = phi ptr [ %i.al, %bb.h ], [ %.0.i64.i, %bb.g ]
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.al, ptr noundef %.021.i.i69.i, ptr noundef %i.ax) #14
  br label %gen_lea_ss_ofs.exit72.i

gen_lea_ss_ofs.exit72.i:                          ; preds = %bb.i, %bb.f
  %.1.i.i70.i = phi ptr [ %i.al, %bb.i ], [ %.0.i64.i, %bb.f ]
  %.0.i.i71.i = phi i32 [ %i.av, %bb.i ], [ %i.at, %bb.f ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.al, ptr noundef %.1.i.i70.i, i32 noundef %.0.i.i71.i) #14
  %i.ay = load ptr, ptr %i.q, align 8
  %.val.i = load i32, ptr %i.ad, align 4
  %i.az = sext i32 %.val.i to i64
  %i.ba = load ptr, ptr %i.af, align 8
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.ak, ptr noundef %i.bc, i64 noundef range(i64 -2147483648, 2147483648) %i.az, i32 noundef %.0.i.i, i32 noundef 1) #14
  %i.bd = load ptr, ptr %i.q, align 8             ; 7 uses
  %i.be = load ptr, ptr %i.m, align 8             ; 2 uses
  br i1 %.not.i63.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %gen_lea_ss_ofs.exit72.i
  tail call void @tcg_gen_addi_i64(ptr noundef %i.bd, ptr noundef %i.be, i64 noundef range(i64 -2147483648, 2147483648) %i.ap) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %gen_lea_ss_ofs.exit72.i
  %.0.i74.i = phi ptr [ %i.bd, %bb.j ], [ %i.be, %gen_lea_ss_ofs.exit72.i ] ; 3 uses
  %.val.i75.i = load i32, ptr %i.h, align 8       ; 3 uses
  %i.bf = and i32 %.val.i75.i, 32768
  %.not.i.i76.i = icmp eq i32 %i.bf, 0            ; 2 uses
  %i.bg = and i32 %.val.i75.i, 32
  %.not2.i.i77.i = icmp eq i32 %i.bg, 0
  %i.bh = select i1 %.not2.i.i77.i, i32 1, i32 2
  %i.bi = select i1 %.not.i.i76.i, i32 %i.bh, i32 3 ; 3 uses
  %i.bj = and i32 %.val.i75.i, 64
  %.not27.i.i78.i = icmp eq i32 %i.bj, 0
  %i.bk = select i1 %.not.i.i76.i, i32 2, i32 3   ; 2 uses
  br i1 %.not27.i.i78.i, label %gen_lea_ss_ofs.exit82.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @tcg_gen_ext_i64(ptr noundef %i.bd, ptr noundef %.0.i74.i, i32 noundef %i.bi) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.021.i.i79.i = phi ptr [ %i.bd, %bb.m ], [ %.0.i74.i, %bb.l ]
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.bd, ptr noundef %.021.i.i79.i, ptr noundef %i.bm) #14
  br label %gen_lea_ss_ofs.exit82.i

gen_lea_ss_ofs.exit82.i:                          ; preds = %bb.n, %bb.k
  %.1.i.i80.i = phi ptr [ %i.bd, %bb.n ], [ %.0.i74.i, %bb.k ]
  %.0.i.i81.i = phi i32 [ %i.bk, %bb.n ], [ %i.bi, %bb.k ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.bd, ptr noundef %.1.i.i80.i, i32 noundef %.0.i.i81.i) #14
  %i.bn = load ptr, ptr %i.q, align 8
  %.val57.i = load i32, ptr %i.ad, align 4
  %i.bo = sext i32 %.val57.i to i64
  %i.bp = load ptr, ptr %i.af, align 8
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.ak, ptr noundef %i.br, i64 noundef range(i64 -2147483648, 2147483648) %i.bo, i32 noundef %.0.i.i, i32 noundef 1) #14
  %i.bs = add nuw nsw i32 %.093.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bs, %i.aj
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %gen_lea_ss_ofs.exit82.i, %gen_lea_ss_ofs.exit.i
  %i.bt = load ptr, ptr %i.q, align 8             ; 7 uses
  %i.bu = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.bv = shl i32 %i.aj, %.0.i.i                  ; 3 uses
  %.not.i83.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i83.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  %i.bw = sub i32 0, %i.bv
  %i.bx = sext i32 %i.bw to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.bt, ptr noundef %i.bu, i64 noundef range(i64 -2147483648, 2147483648) %i.bx) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit.i
  %.0.i84.i = phi ptr [ %i.bt, %bb.o ], [ %i.bu, %.loopexit.i ] ; 3 uses
  %.val.i85.i = load i32, ptr %i.h, align 8       ; 3 uses
  %i.by = and i32 %.val.i85.i, 32768
  %.not.i.i86.i = icmp eq i32 %i.by, 0            ; 2 uses
  %i.bz = and i32 %.val.i85.i, 32
  %.not2.i.i87.i = icmp eq i32 %i.bz, 0
  %i.ca = select i1 %.not2.i.i87.i, i32 1, i32 2
  %i.cb = select i1 %.not.i.i86.i, i32 %i.ca, i32 3 ; 3 uses
  %i.cc = and i32 %.val.i85.i, 64
  %.not27.i.i88.i = icmp eq i32 %i.cc, 0
  %i.cd = select i1 %.not.i.i86.i, i32 2, i32 3   ; 2 uses
  br i1 %.not27.i.i88.i, label %gen_lea_ss_ofs.exit92.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = icmp samesign ult i32 %i.cb, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @tcg_gen_ext_i64(ptr noundef %i.bt, ptr noundef %.0.i84.i, i32 noundef %i.cb) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.021.i.i89.i = phi ptr [ %i.bt, %bb.r ], [ %.0.i84.i, %bb.q ]
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.bt, ptr noundef %.021.i.i89.i, ptr noundef %i.cf) #14
  br label %gen_lea_ss_ofs.exit92.i

gen_lea_ss_ofs.exit92.i:                          ; preds = %bb.s, %bb.p
  %.1.i.i90.i = phi ptr [ %i.bt, %bb.s ], [ %.0.i84.i, %bb.p ]
  %.0.i.i91.i = phi i32 [ %i.cd, %bb.s ], [ %i.cb, %bb.p ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.bt, ptr noundef %.1.i.i90.i, i32 noundef %.0.i.i91.i) #14
  %i.cg = load ptr, ptr %i.m, align 8
  %i.ch = load ptr, ptr %i.q, align 8
  %.val56.i = load i32, ptr %i.ad, align 4
  %i.ci = sext i32 %.val56.i to i64
  %i.cj = load ptr, ptr %i.af, align 8
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.cg, ptr noundef %i.cl, i64 noundef range(i64 -2147483648, 2147483648) %i.ci, i32 noundef %.0.i.i, i32 noundef 1) #14
  br label %gen_enter.exit

gen_enter.exit:                                   ; preds = %gen_lea_ss_ofs.exit.i, %gen_lea_ss_ofs.exit92.i
  %.pre-phi.i = phi i32 [ %i.bv, %gen_lea_ss_ofs.exit92.i ], [ %i.aj, %gen_lea_ss_ofs.exit.i ]
  %i.cm = trunc i64 %i.b to i32
  %i.cn = and i32 %.val59.i, 32
  %.not2.i.i = icmp eq i32 %i.cn, 0
  %i.co = select i1 %.not2.i.i, i32 1, i32 2
  %i.cp = select i1 %.not.i.i, i32 %i.co, i32 3
  %i.cq = load ptr, ptr %i.m, align 8
  %i.cr = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %.0.i.i, i32 noundef 5, ptr noundef null, ptr noundef %i.cq) ; 0 uses
  %i.cs = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ct = add i32 %.pre-phi.i, %i.cm
  %i.cu = sext i32 %i.ct to i64
  tail call void @tcg_gen_subi_i64(ptr noundef %i.cs, ptr noundef %i.cs, i64 noundef %i.cu) #14
  %i.cv = load ptr, ptr %i.m, align 8
  %i.cw = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %i.cp, i32 noundef 4, ptr noundef null, ptr noundef %i.cv) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_LEAVE(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 160
  %.val16.i = load i32, ptr %i.c, align 8         ; 3 uses
  %i.d = and i32 %.val16.i, 32768
  %.not.i.i = icmp eq i32 %i.d, 0                 ; 3 uses
  %i.e = and i32 %.val16.i, 32
  %.not2.i.i = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not2.i.i, i32 1, i32 2
  %i.g = select i1 %.not.i.i, i32 %i.f, i32 3     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8 ; 3 uses
  %i.k = and i32 %.val16.i, 64
  %.not27.i.i.i = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not.i.i, i32 2, i32 3        ; 2 uses
  br i1 %.not27.i.i.i, label %gen_leave.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ult i32 %i.g, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @tcg_gen_ext_i64(ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.g) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.j, %bb.b ]
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.i, ptr noundef %.021.i.i.i, ptr noundef %i.n) #14
  br label %gen_leave.exit

gen_leave.exit:                                   ; preds = %bb.a, %bb.d
  %.1.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.a ]
  %.0.i.i.i = phi i32 [ %i.l, %bb.d ], [ %i.g, %bb.a ]
  %i.o = icmp eq i32 %i.b, 1
  %i.p = select i1 %i.o, i32 1, i32 3
  %.0.i.i = select i1 %.not.i.i, i32 %i.b, i32 %i.p ; 3 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.i, ptr noundef %.1.i.i.i, i32 noundef %.0.i.i.i) #14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = getelementptr i8, ptr %0, i64 156
  %.val.i = load i32, ptr %i.t, align 4
  %i.u = sext i32 %.val.i to i64
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  tail call void @tcg_gen_qemu_ld_i64_chk(ptr noundef %i.r, ptr noundef %i.y, i64 noundef range(i64 -2147483648, 2147483648) %i.u, i32 noundef %.0.i.i, i32 noundef 1) #14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 40), align 8
  %i.ac = shl nuw i32 1, %.0.i.i
  %i.ad = sext i32 %i.ac to i64
  tail call void @tcg_gen_addi_i64(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %i.ad) #14
  %i.ae = load ptr, ptr %i.q, align 8
  %i.af = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %.0.i.i, i32 noundef 5, ptr noundef null, ptr noundef %i.ae) ; 0 uses
  %i.ag = load ptr, ptr %i.z, align 8
  %i.ah = tail call fastcc ptr @gen_op_deposit_reg_v(ptr noundef nonnull readonly %0, i32 noundef %i.g, i32 noundef 4, ptr noundef null, ptr noundef %i.ag) ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_RETF(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 16711680
  %i.d = icmp eq i64 %i.c, 589824
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i16
  %i.h = sext i16 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8              ; 4 uses
  %i.l = and i32 %i.k, 131200
  %or.cond = icmp eq i32 %i.l, 128
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 32), align 16 ; 3 uses
  %i.p = and i32 %i.k, 32768
  %.not.i.i = icmp eq i32 %i.p, 0                 ; 2 uses
  %i.q = and i32 %i.k, 32
  %.not2.i.i = icmp eq i32 %i.q, 0
  %i.r = select i1 %.not2.i.i, i32 1, i32 2
  %i.s = select i1 %.not.i.i, i32 %i.r, i32 3     ; 3 uses
  %i.t = and i32 %i.k, 64
  %.not27.i.i = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not.i.i, i32 2, i32 3        ; 2 uses
  br i1 %.not27.i.i, label %gen_lea_ss_ofs.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i32 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @tcg_gen_ext_i64(ptr noundef %i.n, ptr noundef %i.o, i32 noundef %i.s) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.021.i.i = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.e ]
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_seg_base, i64 16), align 16
  tail call void @tcg_gen_add_i64(ptr noundef %i.n, ptr noundef %.021.i.i, ptr noundef %i.w) #14
  br label %gen_lea_ss_ofs.exit

gen_lea_ss_ofs.exit:                              ; preds = %bb.d, %bb.g
  %.1.i.i = phi ptr [ %i.n, %bb.g ], [ %i.o, %bb.d ]
  %.0.i.i = phi i32 [ %i.u, %bb.g ], [ %i.s, %bb.d ]
  tail call void @tcg_gen_ext_i64(ptr noundef %i.n, ptr noundef %.1.i.i, i32 noundef %.0.i.i) #14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
end_hunk_4
begin_hunk_5_@gen_setcc:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8
  %i.e = icmp eq i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @tcg_gen_xori_i64(ptr noundef %2, ptr noundef %i.g, i64 noundef 1) #14
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @tcg_gen_mov_i64(ptr noundef %2, ptr noundef %i.g) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load i8, ptr %i.h, align 8, !range !18, !noundef !19
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = load i32, ptr %3, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @tcg_gen_setcond_i64(i32 noundef %i.k, ptr noundef %2, ptr noundef %i.m, ptr noundef %i.o) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i64, ptr %i.p, align 8
  tail call void @tcg_gen_setcondi_i64(i32 noundef %i.k, ptr noundef %2, ptr noundef %i.m, i64 noundef %i.q) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_prepare_cc(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 40)) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 0, 256) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false), !annotation !17
  %i.a = and i32 %2, 1                            ; 15 uses
  %i.b = lshr i32 %2, 1
  %i.c = and i32 %i.b, 7                          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load i32, ptr %i.d, align 8              ; 17 uses
  switch i32 %i.e, label %bb.h [
    i32 16, label %cc_op_size.exit
    i32 17, label %cc_op_size.exit
    i32 18, label %cc_op_size.exit
    i32 19, label %cc_op_size.exit
    i32 59, label %bb.e
    i32 24, label %bb.f
    i32 25, label %bb.f
    i32 26, label %bb.f
    i32 27, label %bb.f
  ]

cc_op_size.exit:                                  ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = and i32 %i.e, 3                          ; 3 uses
  switch i32 %i.c, label %default.unreachable [
    i32 3, label %bb.b
    i32 6, label %bb.d
    i32 7, label %bb.c
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 2, label %.thread182
    i32 4, label %.thread186
    i32 5, label %bb.ak
  ]

bb.b:                                             ; preds = %cc_op_size.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.h, ptr noundef %i.h, i32 noundef %i.f) #14
  %i.i = load ptr, ptr @cpu_cc_src, align 8       ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.i, ptr noundef %i.i, i32 noundef %i.f) #14
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = load ptr, ptr @cpu_cc_src, align 8
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.843.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 15, ptr %0, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.237.0..sroa_idx, align 4
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.338.0..sroa_idx, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %.sroa.439.0..sroa_idx, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.540.0..sroa_idx, align 8
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.641.0..sroa_idx, align 8
  %.sroa.742.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.742.0..sroa_idx, align 1
  br label %bb.ar

bb.c:                                             ; preds = %cc_op_size.exit
  br label %bb.d

bb.d:                                             ; preds = %cc_op_size.exit, %bb.c
  %.091 = phi i32 [ 7, %bb.c ], [ 2, %cc_op_size.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = or disjoint i32 %i.f, 8                  ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.m, ptr noundef %i.m, i32 noundef %i.n) #14
  %i.o = load ptr, ptr @cpu_cc_src, align 8       ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.o, ptr noundef %i.o, i32 noundef %i.n) #14
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = load ptr, ptr @cpu_cc_src, align 8
  %.sroa.835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.835.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 %.091, ptr %0, align 8
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.229.0..sroa_idx, align 4
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.330.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.633.0..sroa_idx, align 8
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.734.0..sroa_idx, align 1
  br label %bb.ar

bb.e:                                             ; preds = %bb.a
  %i.r = icmp eq i32 %i.c, 1
  %i.s = and i32 %2, 10
  %i.t = icmp eq i32 %i.s, 8
  %or.cond3 = or i1 %i.t, %i.r
  br i1 %or.cond3, label %.thread193, label %bb.h

.thread193:                                       ; preds = %bb.e
  %i.u = xor i32 %i.a, 1
  br label %cc_op_size.exit.i103

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  switch i32 %i.c, label %default.unreachable [
    i32 3, label %.thread182
    i32 6, label %.thread186
    i32 7, label %bb.g
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 2, label %.thread182
    i32 4, label %.thread186
    i32 5, label %bb.ak
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.e, -24
  %i.w = load ptr, ptr @cpu_cc_dst, align 8       ; 2 uses
  %i.x = or i32 %i.v, 8
  tail call void @tcg_gen_ext_i64(ptr noundef %i.w, ptr noundef %i.w, i32 noundef %i.x) #14
  %i.y = load ptr, ptr @cpu_cc_dst, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.827.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 7, ptr %0, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.221.0..sroa_idx, align 4
  %.sroa.322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.322.0..sroa_idx, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %.sroa.423.0..sroa_idx, i8 0, i64 18, i1 false)
  br label %bb.ar

bb.h:                                             ; preds = %bb.e, %bb.a
  switch i32 %i.c, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 2, label %.thread182
    i32 3, label %bb.af
    i32 4, label %.thread186
    i32 5, label %bb.ak
    i32 6, label %bb.al
    i32 7, label %bb.ao
  ]

bb.i:                                             ; preds = %bb.f, %cc_op_size.exit, %bb.h
  switch i32 %i.e, label %bb.l [
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 59, label %gen_prepare_eflags_o.exit
    i32 55, label %gen_prepare_eflags_o.exit
    i32 24, label %gen_prepare_eflags_o.exit
    i32 25, label %gen_prepare_eflags_o.exit
    i32 26, label %gen_prepare_eflags_o.exit
    i32 27, label %gen_prepare_eflags_o.exit
    i32 4, label %bb.k
    i32 5, label %bb.k
    i32 6, label %bb.k
    i32 7, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.z = load ptr, ptr @cpu_cc_src2, align 8, !noalias !48
  br label %gen_prepare_eflags_o.exit

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.aa = load ptr, ptr @cpu_cc_src, align 8, !noalias !48
  br label %gen_prepare_eflags_o.exit

bb.l:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr @cpu_cc_src, align 8, !noalias !48
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.ab), !noalias !48
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true), !noalias !48
  %i.ac = load ptr, ptr @cpu_cc_src, align 8, !noalias !48
  br label %gen_prepare_eflags_o.exit

gen_prepare_eflags_o.exit:                        ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.10179.0 = phi ptr [ %i.ac, %bb.l ], [ %i.z, %bb.j ], [ %i.aa, %bb.k ], [ null, %bb.i ], [ null, %bb.i ], [ null, %bb.i ], [ null, %bb.i ], [ null, %bb.i ], [ null, %bb.i ]
  %.sroa.0177.0 = phi i32 [ 13, %bb.l ], [ 9, %bb.j ], [ 9, %bb.k ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ], [ 0, %bb.i ] ; 2 uses
  %i.ad = phi <2 x i64> [ <i64 2048, i64 0>, %bb.l ], [ <i64 0, i64 256>, %bb.j ], [ zeroinitializer, %bb.k ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ], [ zeroinitializer, %bb.i ]
  store i32 %.sroa.0177.0, ptr %0, align 8
  %.sroa.7178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.7178.0..sroa_idx, align 4
  %.sroa.10179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10179.0, ptr %.sroa.10179.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ad, ptr %.sroa.16.0..sroa_idx, align 8
  br label %bb.ar

bb.m:                                             ; preds = %bb.f, %cc_op_size.exit, %bb.h
  switch i32 %i.e, label %bb.t [
    i32 16, label %bb.n
    i32 17, label %bb.n
    i32 18, label %bb.n
    i32 19, label %bb.n
    i32 8, label %cc_op_size.exit.i
    i32 9, label %cc_op_size.exit.i
    i32 10, label %cc_op_size.exit.i
    i32 11, label %cc_op_size.exit.i
    i32 55, label %gen_prepare_eflags_c.exit
    i32 24, label %gen_prepare_eflags_c.exit
    i32 25, label %gen_prepare_eflags_c.exit
    i32 26, label %gen_prepare_eflags_c.exit
    i32 27, label %gen_prepare_eflags_c.exit
    i32 32, label %bb.o
    i32 33, label %bb.o
    i32 34, label %bb.o
    i32 35, label %bb.o
    i32 28, label %bb.o
    i32 29, label %bb.o
    i32 30, label %bb.o
    i32 31, label %bb.o
    i32 36, label %cc_op_size.exit21.i
    i32 37, label %cc_op_size.exit21.i
    i32 38, label %cc_op_size.exit21.i
    i32 39, label %cc_op_size.exit21.i
    i32 4, label %bb.p
    i32 5, label %bb.p
    i32 6, label %bb.p
    i32 7, label %bb.p
    i32 44, label %cc_op_size.exit23.i
    i32 45, label %cc_op_size.exit23.i
    i32 46, label %cc_op_size.exit23.i
    i32 47, label %cc_op_size.exit23.i
    i32 48, label %cc_op_size.exit26.i
    i32 49, label %cc_op_size.exit26.i
    i32 50, label %cc_op_size.exit26.i
    i32 51, label %cc_op_size.exit26.i
    i32 59, label %bb.q
    i32 1, label %bb.r
    i32 3, label %bb.r
    i32 0, label %bb.s
    i32 40, label %bb.s
    i32 41, label %bb.s
    i32 42, label %bb.s
    i32 43, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ae = add nsw i32 %i.e, -16                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !49 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.ag, ptr noundef %i.ag, i32 noundef %i.ae) #14
  %i.ah = load ptr, ptr @cpu_cc_src, align 8, !noalias !49 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.ah, ptr noundef %i.ah, i32 noundef %i.ae) #14
  %i.ai = load ptr, ptr %i.af, align 8, !noalias !49
  %i.aj = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  br label %gen_prepare_eflags_c.exit

cc_op_size.exit.i:                                ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ak = and i32 %i.e, 3                         ; 2 uses
  %i.al = load ptr, ptr @cpu_cc_dst, align 8, !noalias !49 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.al, ptr noundef %i.al, i32 noundef %i.ak) #14
  %i.am = load ptr, ptr @cpu_cc_src, align 8, !noalias !49 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.am, ptr noundef %i.am, i32 noundef %i.ak) #14
  %i.an = load ptr, ptr @cpu_cc_dst, align 8, !noalias !49
  %i.ao = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  br label %gen_prepare_eflags_c.exit

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.ap = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  br label %gen_prepare_eflags_c.exit

cc_op_size.exit21.i:                              ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.aq = and i32 %i.e, 3                         ; 2 uses
  %i.ar = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  %i.as = icmp eq i32 %i.aq, 3                    ; 2 uses
  %i.at = shl nuw nsw i32 8, %i.aq
  %i.au = add nsw i32 %i.at, -1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl nuw nsw i64 1, %i.av
  %.sink3.i.i = select i1 %i.as, i32 2, i32 13
  %.sink.i.i = select i1 %i.as, i64 0, i64 %i.aw
  br label %gen_prepare_eflags_c.exit

bb.p:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ax = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  br label %gen_prepare_eflags_c.exit

cc_op_size.exit23.i:                              ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.ay = and i32 %i.e, 3                         ; 2 uses
  %i.az = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  %i.ba = icmp eq i32 %i.ay, 3                    ; 2 uses
  %.neg.i.i = shl nsw i32 -8, %i.ay
  %i.bb = add nsw i32 %.neg.i.i, 64
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = lshr i64 -1, %i.bc
  %.sink5.i.i = select i1 %i.ba, i32 8, i32 12
  %.sink.i24.i = select i1 %i.ba, i64 0, i64 %i.bd
  br label %gen_prepare_eflags_c.exit

cc_op_size.exit26.i:                              ; preds = %bb.m, %bb.m, %bb.m, %bb.m
  %i.be = and i32 %i.e, 3                         ; 2 uses
  %i.bf = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  %i.bg = icmp eq i32 %i.be, 3                    ; 2 uses
  %.neg.i27.i = shl nsw i32 -8, %i.be
  %i.bh = add nsw i32 %.neg.i27.i, 64
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 -1, %i.bi
  %.sink5.i28.i = select i1 %i.bg, i32 9, i32 13
  %.sink.i29.i = select i1 %i.bg, i64 0, i64 %i.bj
  br label %gen_prepare_eflags_c.exit

bb.q:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr @cpu_cc_dst, align 8, !noalias !49
  br label %gen_prepare_eflags_c.exit

bb.r:                                             ; preds = %bb.m, %bb.m
  %i.bl = load ptr, ptr @cpu_cc_dst, align 8, !noalias !49
  br label %gen_prepare_eflags_c.exit

bb.s:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bm = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  br label %gen_prepare_eflags_c.exit

bb.t:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 151 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !range !18, !noalias !49, !noundef !19
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.u, label %gen_update_cc_op.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr @cpu_cc_op, align 8, !noalias !49
  tail call void @tcg_gen_movi_i32(ptr noundef %i.bq, i32 noundef %i.e) #14
  store i8 0, ptr %i.bn, align 1, !noalias !49
  br label %gen_update_cc_op.exit.i

gen_update_cc_op.exit.i:                          ; preds = %bb.u, %bb.t
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %gen_update_cc_op.exit.i
  %i.br = tail call ptr @tcg_temp_new_i64() #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %gen_update_cc_op.exit.i
  %.0.i = phi ptr [ %3, %gen_update_cc_op.exit.i ], [ %i.br, %bb.v ] ; 2 uses
  %i.bs = load ptr, ptr @cpu_cc_dst, align 8, !noalias !49
  %i.bt = load ptr, ptr @cpu_cc_src, align 8, !noalias !49
  %i.bu = load ptr, ptr @cpu_cc_src2, align 8, !noalias !49
  %i.bv = load ptr, ptr @cpu_cc_op, align 8, !noalias !49
  %i.bw = load ptr, ptr @helper_info_cc_compute_c, align 8, !noalias !49
  %i.bx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !49 ; 5 uses
  %i.bz = ptrtoint ptr %.0.i to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  %i.cb = ptrtoint ptr %i.bs to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  %i.cd = ptrtoint ptr %i.bt to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cd
  %i.cf = ptrtoint ptr %i.bu to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cf
  %i.ch = ptrtoint ptr %i.bv to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch
  tail call void @tcg_gen_call4(ptr noundef %i.bw, ptr noundef nonnull @helper_info_cc_compute_c, ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.ci) #14
  br label %gen_prepare_eflags_c.exit

gen_prepare_eflags_c.exit:                        ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.n, %cc_op_size.exit.i, %bb.o, %cc_op_size.exit21.i, %bb.p, %cc_op_size.exit23.i, %cc_op_size.exit26.i, %bb.q, %bb.r, %bb.s, %bb.w
  %.sroa.0121.0 = phi i32 [ 9, %bb.w ], [ 10, %bb.n ], [ 10, %cc_op_size.exit.i ], [ 13, %bb.s ], [ 9, %bb.o ], [ %.sink3.i.i, %cc_op_size.exit21.i ], [ 9, %bb.p ], [ %.sink5.i.i, %cc_op_size.exit23.i ], [ %.sink5.i28.i, %cc_op_size.exit26.i ], [ 9, %bb.q ], [ 9, %bb.r ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ] ; 2 uses
  %.sroa.26.0 = phi ptr [ %.0.i, %bb.w ], [ %i.ai, %bb.n ], [ %i.an, %cc_op_size.exit.i ], [ %i.bm, %bb.s ], [ %i.ap, %bb.o ], [ %i.ar, %cc_op_size.exit21.i ], [ %i.ax, %bb.p ], [ %i.az, %cc_op_size.exit23.i ], [ %i.bf, %cc_op_size.exit26.i ], [ %i.bk, %bb.q ], [ %i.bl, %bb.r ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ]
  %.sroa.37.0 = phi ptr [ null, %bb.w ], [ %i.aj, %bb.n ], [ %i.ao, %cc_op_size.exit.i ], [ null, %bb.s ], [ null, %bb.o ], [ null, %cc_op_size.exit21.i ], [ null, %bb.p ], [ null, %cc_op_size.exit23.i ], [ null, %cc_op_size.exit26.i ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ], [ null, %bb.m ]
  %.sroa.48.0 = phi i64 [ 0, %bb.w ], [ 0, %bb.n ], [ 0, %cc_op_size.exit.i ], [ 1, %bb.s ], [ 0, %bb.o ], [ %.sink.i.i, %cc_op_size.exit21.i ], [ 0, %bb.p ], [ %.sink.i24.i, %cc_op_size.exit23.i ], [ %.sink.i29.i, %cc_op_size.exit26.i ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ]
  %.sroa.54.0 = phi i64 [ 256, %bb.w ], [ 1, %bb.n ], [ 1, %cc_op_size.exit.i ], [ 0, %bb.s ], [ 256, %bb.o ], [ 0, %cc_op_size.exit21.i ], [ 0, %bb.p ], [ 0, %cc_op_size.exit23.i ], [ 0, %cc_op_size.exit26.i ], [ 0, %bb.q ], [ 256, %bb.r ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ], [ 0, %bb.m ]
  store i32 %.sroa.0121.0, ptr %0, align 8
  %.sroa.15122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.15122.0..sroa_idx, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.37.0, ptr %.sroa.37.0..sroa_idx, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.48.0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.54.0, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.ar

.thread182:                                       ; preds = %bb.f, %bb.f, %cc_op_size.exit, %bb.h
  switch i32 %i.e, label %bb.ad [
    i32 0, label %bb.x
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
    i32 60, label %bb.y
    i32 55, label %bb.ac
  ]

bb.x:                                             ; preds = %.thread182, %.thread182, %.thread182, %.thread182
  %i.cj = load ptr, ptr @cpu_cc_src, align 8, !noalias !50
  br label %gen_prepare_eflags_z.exit

bb.y:                                             ; preds = %.thread182
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 151 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !range !18, !noalias !50, !noundef !19
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.z, label %gen_update_cc_op.exit.i100

bb.z:                                             ; preds = %bb.y
  %i.cn = load ptr, ptr @cpu_cc_op, align 8, !noalias !50
  tail call void @tcg_gen_movi_i32(ptr noundef %i.cn, i32 noundef 60) #14, !noalias !50
  store i8 0, ptr %i.ck, align 1, !noalias !50
  br label %gen_update_cc_op.exit.i100

gen_update_cc_op.exit.i100:                       ; preds = %bb.z, %bb.y
  %.not.i101 = icmp eq ptr %3, null
  br i1 %.not.i101, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %gen_update_cc_op.exit.i100
  %i.co = tail call ptr @tcg_temp_new_i64() #14, !noalias !50
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %gen_update_cc_op.exit.i100
  %.0.i102 = phi ptr [ %3, %gen_update_cc_op.exit.i100 ], [ %i.co, %bb.aa ] ; 2 uses
  %i.cp = load ptr, ptr @cpu_cc_dst, align 8, !noalias !50
  %i.cq = load ptr, ptr @cpu_cc_src, align 8, !noalias !50
  %i.cr = load ptr, ptr @cpu_cc_op, align 8, !noalias !50
  %i.cs = load ptr, ptr @helper_info_cc_compute_nz, align 8, !noalias !50
  %i.ct = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !50 ; 4 uses
  %i.cv = ptrtoint ptr %.0.i102 to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv
  %i.cx = ptrtoint ptr %i.cp to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx
  %i.cz = ptrtoint ptr %i.cq to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %i.db = ptrtoint ptr %i.cr to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.db
  tail call void @tcg_gen_call3(ptr noundef %i.cs, ptr noundef nonnull @helper_info_cc_compute_nz, ptr noundef %i.cw, ptr noundef %i.cy, ptr noundef %i.da, ptr noundef %i.dc) #14, !noalias !50
  br label %gen_prepare_eflags_z.exit

bb.ac:                                            ; preds = %.thread182
  %i.dd = load ptr, ptr @cpu_cc_dst, align 8, !noalias !50
  br label %gen_prepare_eflags_z.exit

bb.ad:                                            ; preds = %.thread182
  %i.de = add i32 %i.e, -4
  %or.cond.i.i = icmp ult i32 %i.de, 56
  br i1 %or.cond.i.i, label %cc_op_size.exit.i103, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @__assert_fail(ptr noundef nonnull @.str.804, ptr noundef nonnull @.str.805, i32 noundef 1634, ptr noundef nonnull @__PRETTY_FUNCTION__.cc_op_size) #16, !noalias !50
  unreachable

cc_op_size.exit.i103:                             ; preds = %.thread193, %bb.ad
  %.088185192196 = phi i32 [ %i.u, %.thread193 ], [ %i.a, %bb.ad ]
  %i.df = and i32 %i.e, 3                         ; 2 uses
  %i.dg = load ptr, ptr @cpu_cc_dst, align 8, !noalias !50
  %i.dh = icmp eq i32 %i.df, 3                    ; 2 uses
  %.neg.i.i104 = shl nsw i32 -8, %i.df
  %i.di = add nsw i32 %.neg.i.i104, 64
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = lshr i64 -1, %i.dj
  %.sink5.i.i105 = select i1 %i.dh, i32 8, i32 12
  %.sink.i.i106 = select i1 %i.dh, i64 0, i64 %i.dk
  br label %gen_prepare_eflags_z.exit

gen_prepare_eflags_z.exit:                        ; preds = %bb.x, %bb.ab, %bb.ac, %cc_op_size.exit.i103
  %.088185191 = phi i32 [ %.088185192196, %cc_op_size.exit.i103 ], [ %i.a, %bb.x ], [ %i.a, %bb.ab ], [ %i.a, %bb.ac ]
  %.sroa.19.0 = phi i64 [ %.sink.i.i106, %cc_op_size.exit.i103 ], [ 64, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.ac ]
  %.sroa.11.0 = phi ptr [ %i.dg, %cc_op_size.exit.i103 ], [ %i.cj, %bb.x ], [ %.0.i102, %bb.ab ], [ %i.dd, %bb.ac ]
  %.sroa.0119.0 = phi i32 [ %.sink5.i.i105, %cc_op_size.exit.i103 ], [ 13, %bb.x ], [ 8, %bb.ab ], [ 8, %bb.ac ] ; 2 uses
  store i32 %.sroa.0119.0, ptr %0, align 8
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.7120.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.21.0..sroa_idx, align 8
  br label %bb.ar

bb.af:                                            ; preds = %bb.h
  %i.dl = load ptr, ptr @cpu_cc_src, align 8
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.dl)
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true)
  %i.dm = load ptr, ptr @cpu_cc_src, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.819.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 13, ptr %0, align 8
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.213.0..sroa_idx, align 4
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %.sroa.314.0..sroa_idx, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 65, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.718.0..sroa_idx, align 1
  br label %bb.ar

.thread186:                                       ; preds = %bb.f, %bb.f, %cc_op_size.exit, %bb.h
  switch i32 %i.e, label %bb.ai [
    i32 60, label %bb.ag
    i32 0, label %bb.ah
    i32 1, label %bb.ah
    i32 2, label %bb.ah
    i32 3, label %bb.ah
    i32 55, label %gen_prepare_eflags_s.exit
  ]

bb.ag:                                            ; preds = %.thread186
  %i.dn = load ptr, ptr @cpu_cc_src, align 8, !noalias !51
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.dn), !noalias !51
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true), !noalias !51
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread186, %.thread186, %.thread186, %.thread186
  %i.do = load ptr, ptr @cpu_cc_src, align 8, !noalias !51
  br label %gen_prepare_eflags_s.exit

bb.ai:                                            ; preds = %.thread186
  %i.dp = add i32 %i.e, -4
  %or.cond.i.i107 = icmp ult i32 %i.dp, 56
  br i1 %or.cond.i.i107, label %cc_op_size.exit.i108, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @__assert_fail(ptr noundef nonnull @.str.804, ptr noundef nonnull @.str.805, i32 noundef 1634, ptr noundef nonnull @__PRETTY_FUNCTION__.cc_op_size) #16, !noalias !51
  unreachable

cc_op_size.exit.i108:                             ; preds = %bb.ai
  %i.dq = load ptr, ptr @cpu_cc_dst, align 8, !noalias !51
  %i.dr = and i32 %i.e, 3                         ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 3                    ; 2 uses
  %i.dt = shl nuw nsw i32 8, %i.dr
  %i.du = add nsw i32 %i.dt, -1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw nsw i64 1, %i.dv
  %.sink3.i.i109 = select i1 %i.ds, i32 2, i32 13
  %.sink.i.i110 = select i1 %i.ds, i64 0, i64 %i.dw
  br label %gen_prepare_eflags_s.exit

gen_prepare_eflags_s.exit:                        ; preds = %.thread186, %bb.ah, %cc_op_size.exit.i108
  %.sroa.0116.0 = phi i32 [ %.sink3.i.i109, %cc_op_size.exit.i108 ], [ 13, %bb.ah ], [ 0, %.thread186 ] ; 2 uses
  %.sroa.8118.0 = phi ptr [ %i.dq, %cc_op_size.exit.i108 ], [ %i.do, %bb.ah ], [ null, %.thread186 ]
  %.sroa.12.0 = phi i64 [ %.sink.i.i110, %cc_op_size.exit.i108 ], [ 128, %bb.ah ], [ 0, %.thread186 ]
  store i32 %.sroa.0116.0, ptr %0, align 8
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.6117.0..sroa_idx, align 4
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8118.0, ptr %.sroa.8118.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.14.0..sroa_idx, align 8
  br label %bb.ar

bb.ak:                                            ; preds = %bb.f, %cc_op_size.exit, %bb.h
  %i.dx = load ptr, ptr @cpu_cc_src, align 8, !noalias !52
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.dx), !noalias !52
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true), !noalias !52
  %i.dy = load ptr, ptr @cpu_cc_src, align 8, !noalias !52
  store i32 13, ptr %0, align 8
  %.sroa.4.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx111, align 4
  %.sroa.5.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dy, ptr %.sroa.5.0..sroa_idx112, align 8
  %.sroa.6.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.6.0..sroa_idx113, align 8
  %.sroa.7.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 4, ptr %.sroa.7.0..sroa_idx114, align 8
  %.sroa.8115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.8115.0..sroa_idx, align 8
  br label %bb.ar

bb.al:                                            ; preds = %bb.h
  %i.dz = load ptr, ptr @cpu_cc_src, align 8
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.dz)
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true)
  %.not = icmp eq ptr %3, null
  %i.ea = load ptr, ptr @cpu_cc_src, align 8      ; 2 uses
  %i.eb = icmp eq ptr %3, %i.ea
  %or.cond = select i1 %.not, i1 true, i1 %i.eb
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ec = tail call ptr @tcg_temp_new_i64() #14
  %.pre198 = load ptr, ptr @cpu_cc_src, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.ed = phi ptr [ %.pre198, %bb.am ], [ %i.ea, %bb.al ]
  %.0 = phi ptr [ %i.ec, %bb.am ], [ %3, %bb.al ] ; 2 uses
  tail call void @tcg_gen_addi_i64(ptr noundef %.0, ptr noundef %i.ed, i64 noundef 1920) #14
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.811.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 13, ptr %0, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.25.0..sroa_idx, align 4
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %.sroa.36.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2048, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.710.0..sroa_idx, align 1
  br label %bb.ar

default.unreachable:                              ; preds = %bb.h, %bb.f, %cc_op_size.exit
  unreachable

bb.ao:                                            ; preds = %bb.h
  %i.ee = load ptr, ptr @cpu_cc_src, align 8
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %1, ptr noundef %i.ee)
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext true)
  %.not94 = icmp eq ptr %3, null
  %i.ef = load ptr, ptr @cpu_cc_src, align 8      ; 2 uses
  %i.eg = icmp eq ptr %3, %i.ef
  %or.cond99 = select i1 %.not94, i1 true, i1 %i.eg
  br i1 %or.cond99, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eh = tail call ptr @tcg_temp_new_i64() #14
  %.pre = load ptr, ptr @cpu_cc_src, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ei = phi ptr [ %.pre, %bb.ap ], [ %i.ef, %bb.ao ]
  %.1 = phi ptr [ %i.eh, %bb.ap ], [ %3, %bb.ao ] ; 2 uses
  tail call void @tcg_gen_addi_i64(ptr noundef %.1, ptr noundef %i.ei, i64 noundef 1920) #14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.8.0..sroa_idx, i8 0, i64 6, i1 false)
  store i32 13, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2112, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %gen_prepare_eflags_o.exit, %gen_prepare_eflags_c.exit, %gen_prepare_eflags_z.exit, %bb.af, %gen_prepare_eflags_s.exit, %bb.ak, %bb.an, %bb.aq, %bb.b, %bb.d, %bb.g
  %i.ej = phi i32 [ 13, %bb.aq ], [ %.sroa.0177.0, %gen_prepare_eflags_o.exit ], [ %.sroa.0121.0, %gen_prepare_eflags_c.exit ], [ %.sroa.0119.0, %gen_prepare_eflags_z.exit ], [ 13, %bb.af ], [ %.sroa.0116.0, %gen_prepare_eflags_s.exit ], [ 13, %bb.ak ], [ 13, %bb.an ], [ 15, %bb.b ], [ %.091, %bb.d ], [ 7, %bb.g ]
  %.189 = phi i32 [ %i.a, %bb.aq ], [ %i.a, %gen_prepare_eflags_o.exit ], [ %i.a, %gen_prepare_eflags_c.exit ], [ %.088185191, %gen_prepare_eflags_z.exit ], [ %i.a, %bb.af ], [ %i.a, %gen_prepare_eflags_s.exit ], [ %i.a, %bb.ak ], [ %i.a, %bb.an ], [ %i.a, %bb.b ], [ %i.a, %bb.d ], [ %i.a, %bb.g ]
  %.not95 = icmp eq i32 %.189, 0
  br i1 %.not95, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ek = xor i32 %i.ej, 1
  store i32 %i.ek, ptr %0, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  ret void
}

declare void @tcg_gen_xori_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_setcond_i64(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_setcondi_i64(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_movi_i32(ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @tcg_gen_call4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_call3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_mov_eflags(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @cpu_cc_src, align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %1, ptr noundef %i.d) #14
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @cpu_cc_dst, align 8       ; 2 uses
  %i.f = load ptr, ptr @cpu_cc_src, align 8       ; 2 uses
  %i.g = load ptr, ptr @cpu_cc_src2, align 8      ; 2 uses
  %i.h = icmp ult i32 %i.b, 61
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.832, ptr noundef nonnull @.str.776, i32 noundef 313, ptr noundef nonnull @__PRETTY_FUNCTION__.cc_op_live) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.b to i64                ; 2 uses
  %i.j = shl nuw nsw i64 1, %i.i                  ; 2 uses
  %i.k = and i64 %i.j, 535928355657089024
  %.not.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.not.i, label %cc_op_live.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.833, ptr noundef nonnull @.str.776, i32 noundef 321, ptr noundef nonnull @__PRETTY_FUNCTION__.cc_op_live) #16
  unreachable

cc_op_live.exit:                                  ; preds = %bb.e
  %i.l = and i64 %i.j, 1152921504622637064
  %.not.not = icmp eq i64 %i.l, 0
  br i1 %.not.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %cc_op_live.exit
  %i.m = getelementptr inbounds nuw i8, ptr @cc_op_live_, i64 %i.i
  %i.n = load i8, ptr %i.m, align 1
  %i.o = xor i8 %i.n, 7
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = tail call ptr @tcg_constant_i64(i64 noundef 0) #14 ; 3 uses
  %i.r = and i32 %i.p, 1
  %.not25 = icmp eq i32 %i.r, 0
  %spec.select = select i1 %.not25, ptr %i.e, ptr %i.q
  %i.s = and i32 %i.p, 2
  %.not26 = icmp eq i32 %i.s, 0
  %.018 = select i1 %.not26, ptr %i.f, ptr %i.q
  %i.t = and i32 %i.p, 4
  %.not27 = icmp eq i32 %i.t, 0
  %.017 = select i1 %.not27, ptr %i.g, ptr %i.q
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %cc_op_live.exit
  %i.u = phi i32 [ %.pre, %bb.g ], [ %i.b, %cc_op_live.exit ] ; 2 uses
  %.121 = phi ptr [ %spec.select, %bb.g ], [ %i.e, %cc_op_live.exit ]
  %.119 = phi ptr [ %.018, %bb.g ], [ %i.f, %cc_op_live.exit ]
  %.1 = phi ptr [ %.017, %bb.g ], [ %i.g, %cc_op_live.exit ]
  %.not28 = icmp eq i32 %i.u, 60
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @tcg_constant_i32(i32 noundef %i.u) #14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.w = load ptr, ptr @cpu_cc_op, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.v, %bb.i ], [ %i.w, %bb.j ]
  %i.x = load ptr, ptr @helper_info_cc_compute_all, align 8
  %i.y = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.z = load ptr, ptr %i.y, align 8              ; 5 uses
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = ptrtoint ptr %.121 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = ptrtoint ptr %.119 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
end_hunk_5
begin_hunk_6_@gen_ins:bb.a
  %i.ai = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  tail call void @tcg_gen_call2(ptr noundef %i.ac, ptr noundef nonnull %switch.load, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj) #14
  %i.ak = load ptr, ptr %i.n, align 8
  %i.al = load ptr, ptr %i.e, align 8
  %.val = load i32, ptr %i.r, align 4
  %i.am = sext i32 %.val to i64
  %i.an = load ptr, ptr %i.t, align 8
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  tail call void @tcg_gen_qemu_st_i64_chk(ptr noundef %i.ak, ptr noundef %i.ap, i64 noundef range(i64 -2147483648, 2147483648) %i.am, i32 noundef %1, i32 noundef 1) #14
  %i.aq = load i32, ptr %i.c, align 8             ; 2 uses
  switch i32 %i.aq, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %switch.lookup
  tail call void @__assert_fail(ptr noundef nonnull @.str.803, ptr noundef nonnull @.str.776, i32 noundef 480, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_op_add_reg) #16
  unreachable

bb.g:                                             ; preds = %switch.lookup
  %i.ar = tail call ptr @tcg_temp_new_i64() #14   ; 2 uses
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 56), align 8
  tail call void @tcg_gen_add_i64(ptr noundef %i.ar, ptr noundef %i.as, ptr noundef %2) #14
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 56), align 8 ; 2 uses
  tail call void @tcg_gen_deposit_i64(ptr noundef %i.at, ptr noundef %i.at, ptr noundef %i.ar, i32 noundef 0, i32 noundef 16) #14
  br label %gen_op_add_reg.exit

bb.h:                                             ; preds = %switch.lookup
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 56), align 8 ; 2 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.au, ptr noundef %i.au, ptr noundef %2) #14
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 56), align 8 ; 2 uses
  tail call void @tcg_gen_ext_i64(ptr noundef %i.av, ptr noundef %i.av, i32 noundef %i.aq) #14
  br label %gen_op_add_reg.exit

gen_op_add_reg.exit:                              ; preds = %bb.g, %bb.h
  %i.aw = load i32, ptr %i.g, align 8
  %i.ax = and i32 %i.aw, 16777216
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %gen_bpt_io.exit, label %bb.i

bb.i:                                             ; preds = %gen_op_add_reg.exit
  %i.ay = shl nuw nsw i32 1, %1
  %i.az = tail call ptr @tcg_constant_i32(i32 noundef %i.ay) #14
  %i.ba = tail call fastcc ptr @eip_next_tl(ptr noundef nonnull readonly %0)
  %i.bb = load ptr, ptr @tcg_env, align 8
  %i.bc = load ptr, ptr @helper_info_bpt_io, align 8
  %i.bd = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ai
  %i.bh = ptrtoint ptr %i.az to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bh
  %i.bj = ptrtoint ptr %i.ba to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bj
  tail call void @tcg_gen_call4(ptr noundef %i.bc, ptr noundef nonnull @helper_info_bpt_io, ptr noundef null, ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bk) #14
  br label %gen_bpt_io.exit

gen_bpt_io.exit:                                  ; preds = %gen_op_add_reg.exit, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_update_eip_cur(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.807, ptr noundef nonnull @.str.776, i32 noundef 522, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_update_eip_cur) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = and i32 %i.e, 131072
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @cpu_eip, align 8          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %i.i, %i.b
  tail call void @tcg_gen_addi_i64(ptr noundef %i.g, ptr noundef %i.g, i64 noundef %i.j) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 32768
  %.not11 = icmp eq i32 %i.m, 0
  %i.n = load ptr, ptr @cpu_eip, align 8          ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @tcg_gen_movi_i64(ptr noundef %i.n, i64 noundef %i.p) #14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sub i64 %i.p, %i.r
  %i.t = and i64 %i.s, 4294967295
  tail call void @tcg_gen_movi_i64(ptr noundef %i.n, i64 noundef %i.t) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @do_gen_string(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.CCPrepare, align 8          ; 8 uses
  %i.a = tail call ptr @tcg_temp_new_i64() #14    ; 6 uses
  %i.b = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld32s_i64(ptr noundef %i.a, ptr noundef %i.b, i64 noundef 300) #14
  %i.c = zext i32 %1 to i64
  tail call void @tcg_gen_shli_i64(ptr noundef %i.a, ptr noundef %i.a, i64 noundef %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 3
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @gen_new_label() #14       ; 3 uses
  %i.h = tail call ptr @gen_new_label() #14       ; 2 uses
  %i.i = tail call ptr @gen_new_label() #14       ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.neg.i = shl i32 -8, %i.k
  %i.l = add i32 %.neg.i, 64
  %i.m = zext nneg i32 %i.l to i64
  %i.n = lshr i64 -1, %i.m                        ; 2 uses
  %i.o = tail call ptr @tcg_temp_new_i64() #14    ; 10 uses
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 10240
  %.not.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8              ; 3 uses
  %i.v = and i32 %i.u, 264
  %.not55.i = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not.i, i1 %.not55.i, i1 false ; 3 uses
  %i.x = and i32 %i.u, 65536
  %.not56.i = icmp eq i32 %i.x, 0                 ; 2 uses
  %i.y = and i32 %i.u, -65537
  store i32 %i.y, ptr %i.t, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 7 uses
  %i.aa = load i8, ptr %i.z, align 1, !range !18, !noundef !19
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %gen_update_cc_op.exit.i

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr @cpu_cc_op, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ae = load i32, ptr %i.ad, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.ac, i32 noundef %i.ae) #14
  store i8 0, ptr %i.z, align 1
  br label %gen_update_cc_op.exit.i

gen_update_cc_op.exit.i:                          ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i64 60, ptr %i.ah, align 8
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 8), align 8
  tail call void @tcg_gen_brcondi_i64(i32 noundef 12, ptr noundef %i.ai, i64 noundef %i.n, ptr noundef %i.i) #14
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 8), align 8
  tail call void @tcg_gen_subi_i64(ptr noundef %i.o, ptr noundef %i.aj, i64 noundef 1) #14
  %i.ak = load i32, ptr %i.j, align 8
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %gen_update_cc_op.exit.i
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.o, ptr noundef %i.o) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %gen_update_cc_op.exit.i
  %.0.i = phi i64 [ -1, %bb.d ], [ %i.n, %gen_update_cc_op.exit.i ] ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @tcg_gen_brcondi_i64(i32 noundef 12, ptr noundef %i.o, i64 noundef %.0.i, ptr noundef %i.g) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @gen_set_label(ptr noundef %i.h) #14
  tail call void %2(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.a) #14, !inline_history !53
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 8), align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %i.am, ptr noundef %i.o) #14
  %i.an = load i8, ptr %i.z, align 1, !range !18, !noundef !19
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %gen_update_cc_op.exit59.i

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr @cpu_cc_op, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = load i32, ptr %i.aq, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.ap, i32 noundef %i.ar) #14
  store i8 0, ptr %i.z, align 1
  br label %gen_update_cc_op.exit59.i

gen_update_cc_op.exit59.i:                        ; preds = %bb.h, %bb.g
  br i1 %3, label %bb.i, label %bb.m

bb.i:                                             ; preds = %gen_update_cc_op.exit59.i
  %i.as = load i8, ptr %i.d, align 1
  %i.at = lshr i8 %i.as, 1
  %.lobit.i = and i8 %i.at, 1
  %i.au = xor i8 %.lobit.i, 5
  %i.av = zext nneg i8 %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call fastcc void @gen_prepare_cc(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %i.av, ptr noundef null)
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !range !18, !noundef !19
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i32, ptr %4, align 8               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void @tcg_gen_brcond_i64(i32 noundef %i.az, ptr noundef %i.bb, ptr noundef %i.bd, ptr noundef %i.i) #14
  br label %gen_jcc_noeob.exit.i

bb.k:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = load i64, ptr %i.be, align 8
  tail call void @tcg_gen_brcondi_i64(i32 noundef %i.az, ptr noundef %i.bb, i64 noundef %i.bf, ptr noundef %i.i) #14
  br label %gen_jcc_noeob.exit.i

gen_jcc_noeob.exit.i:                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bg = load i8, ptr %i.z, align 1, !range !18, !noundef !19
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %gen_jcc_noeob.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.808, ptr noundef nonnull @.str.776, i32 noundef 1388, ptr noundef nonnull @__PRETTY_FUNCTION__.do_gen_rep) #16
  unreachable

bb.m:                                             ; preds = %gen_jcc_noeob.exit.i, %gen_update_cc_op.exit59.i
  br i1 %i.w, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @tcg_gen_subi_i64(ptr noundef %i.o, ptr noundef %i.o, i64 noundef 1) #14
  tail call void @tcg_gen_brcondi_i64(i32 noundef 13, ptr noundef %i.o, i64 noundef 65535, ptr noundef %i.h) #14
  tail call void @tcg_gen_brcondi_i64(i32 noundef 12, ptr noundef %i.o, i64 noundef %.0.i, ptr noundef %i.g) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %.not56.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = tail call ptr @tcg_temp_new_i64() #14   ; 4 uses
  %i.bj = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld_i64(ptr noundef %i.bi, ptr noundef %i.bj, i64 noundef 264) #14
  tail call void @tcg_gen_ori_i64(ptr noundef %i.bi, ptr noundef %i.bi, i64 noundef 65536) #14
  %i.bk = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_st_i64(ptr noundef %i.bi, ptr noundef %i.bk, i64 noundef 264) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %0, i64 104
  %.val58.i = load i64, ptr %i.bm, align 8
  %.neg62.i = sub i64 %.val.i, %.val58.i
  %.neg63.i = trunc i64 %.neg62.i to i32
  %i.bn = load i32, ptr %i.t, align 8
  %i.bo = and i32 %i.bn, 16
  %.not.i.i = icmp eq i32 %i.bo, 0
  %i.bp = select i1 %.not.i.i, i32 1, i32 2
  tail call fastcc void @gen_jmp_rel(ptr noundef nonnull %0, i32 noundef %i.bp, i32 noundef %.neg63.i, i32 noundef 0)
  br i1 %i.w, label %bb.r, label %gen_update_cc_op.exit60.i

bb.r:                                             ; preds = %bb.q
  tail call void @gen_set_label(ptr noundef %i.g) #14
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %0, i32 noundef 60, i1 noundef zeroext false)
  tail call void %2(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.a) #14, !inline_history !53
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cpu_regs, i64 8), align 8
  tail call void @tcg_gen_mov_i64(ptr noundef %i.bq, ptr noundef %i.o) #14
  %i.br = load i8, ptr %i.z, align 1, !range !18, !noundef !19
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.s, label %gen_update_cc_op.exit60.i

bb.s:                                             ; preds = %bb.r
  %i.bt = load ptr, ptr @cpu_cc_op, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bv = load i32, ptr %i.bu, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.bt, i32 noundef %i.bv) #14
  store i8 0, ptr %i.z, align 1
  br label %gen_update_cc_op.exit60.i

gen_update_cc_op.exit60.i:                        ; preds = %bb.s, %bb.r, %bb.q
  tail call void @gen_set_label(ptr noundef %i.i) #14
  tail call fastcc void @set_cc_op_1(ptr noundef nonnull %0, i32 noundef 60, i1 noundef zeroext false)
  br i1 %.not56.i, label %do_gen_rep.exit, label %bb.t

bb.t:                                             ; preds = %gen_update_cc_op.exit60.i
  %i.bw = tail call ptr @tcg_temp_new_i64() #14   ; 4 uses
  %i.bx = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld_i64(ptr noundef %i.bw, ptr noundef %i.bx, i64 noundef 264) #14
  tail call void @tcg_gen_andi_i64(ptr noundef %i.bw, ptr noundef %i.bw, i64 noundef -65537) #14
  %i.by = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_st_i64(ptr noundef %i.bw, ptr noundef %i.by, i64 noundef 264) #14
  br label %do_gen_rep.exit

do_gen_rep.exit:                                  ; preds = %gen_update_cc_op.exit60.i, %bb.t
  %i.bz = load i32, ptr %i.t, align 8
  %i.ca = and i32 %i.bz, 16
  %.not.i61.i = icmp eq i32 %i.ca, 0
  %i.cb = select i1 %.not.i61.i, i32 1, i32 2
  tail call fastcc void @gen_jmp_rel(ptr noundef nonnull %0, i32 noundef %i.cb, i32 noundef 0, i32 noundef 1)
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  tail call void %2(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.a) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %do_gen_rep.exit
  ret void
}

declare void @tcg_gen_ld32s_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_shli_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare ptr @gen_new_label() local_unnamed_addr #0

declare void @tcg_gen_brcondi_i64(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare void @gen_set_label(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @gen_jcc_noeob(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 256) %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %3 = alloca %struct.CCPrepare, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call fastcc void @gen_prepare_cc(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, i32 noundef %1, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i32, ptr %3, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @tcg_gen_brcond_i64(i32 noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, ptr noundef %2) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load i64, ptr %i.i, align 8
  tail call void @tcg_gen_brcondi_i64(i32 noundef %i.d, ptr noundef %i.f, i64 noundef %i.j, ptr noundef %2) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_set_eflags(i64 noundef range(i64 512, 262145) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  %i.b = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld_i64(ptr noundef %i.a, ptr noundef %i.b, i64 noundef 264) #14
  tail call void @tcg_gen_ori_i64(ptr noundef %i.a, ptr noundef %i.a, i64 noundef %0) #14
  %i.c = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_st_i64(ptr noundef %i.a, ptr noundef %i.c, i64 noundef 264) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_reset_eflags(i64 noundef range(i64 512, 262145) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  %i.b = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld_i64(ptr noundef %i.a, ptr noundef %i.b, i64 noundef 264) #14
  %i.c = xor i64 %0, -1
  tail call void @tcg_gen_andi_i64(ptr noundef %i.a, ptr noundef %i.a, i64 noundef %i.c) #14
  %i.d = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_st_i64(ptr noundef %i.a, ptr noundef %i.d, i64 noundef 264) #14
  ret void
}

declare void @tcg_gen_brcond_i64(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_ld_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_ori_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_st_i64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gen_jmp_rel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 150 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !18, !noundef !19 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sext i32 %2 to i64
  %i.f = add i64 %i.d, %i.e                       ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %i.f, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 151
  %i.k = load i8, ptr %i.j, align 1, !range !18, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.808, ptr noundef nonnull @.str.776, i32 noundef 2024, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_jmp_rel) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = and i32 %i.n, 32768
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i32 %1, 1
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.r = load atomic i32, ptr %i.q monotonic, align 4
  %i.s = and i32 %i.r, 131072
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %i.n, 16
  %.not38 = icmp eq i32 %i.t, 0
  %spec.select = select i1 %.not38, i8 %i.b, i8 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e
  %.036 = phi i8 [ %i.b, %bb.e ], [ %i.b, %bb.d ], [ %spec.select, %bb.f ] ; 2 uses
  %.035 = phi i64 [ 65535, %bb.e ], [ 4294967295, %bb.d ], [ 65535, %bb.f ] ; 2 uses
  %i.u = and i64 %.035, %i.i                      ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = and i32 %i.w, 131072
  %.not39 = icmp eq i32 %i.x, 0
  br i1 %.not39, label %bb.j, label %bb.h

.thread:                                          ; preds = %bb.c
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
  %i.ab = and i32 %i.aa, 131072
  %.not3945 = icmp eq i32 %i.ab, 0
  br i1 %.not3945, label %.thread49, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.ac = phi i64 [ %i.i, %.thread ], [ %i.u, %bb.g ] ; 2 uses
  %.03548 = phi i64 [ -1, %.thread ], [ %.035, %bb.g ]
  %.03646 = phi i8 [ %i.b, %.thread ], [ %.036, %bb.g ]
  %i.ad = load ptr, ptr @cpu_eip, align 8         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = sub i64 %i.f, %i.af
  tail call void @tcg_gen_addi_i64(ptr noundef %i.ad, ptr noundef %i.ad, i64 noundef %i.ag) #14
  %i.ah = trunc nuw i8 %.03646 to i1
  br i1 %i.ah, label %bb.i, label %.thread55

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call zeroext i1 @translator_is_same_page(ptr noundef nonnull %0, i64 noundef %i.f) #14
  br i1 %i.ai, label %.thread51, label %.thread55

.thread55:                                        ; preds = %bb.h, %bb.i
  %i.aj = load ptr, ptr @cpu_eip, align 8         ; 2 uses
end_hunk_6
begin_hunk_7_@gen_WRMSR:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i32, ptr %i.e, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.d, i32 noundef %i.f) #14
  store i8 0, ptr %i.a, align 1
  br label %gen_update_cc_op.exit

gen_update_cc_op.exit:                            ; preds = %bb.a, %bb.b
  tail call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = load ptr, ptr @helper_info_wrmsr, align 8
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  tail call void @tcg_gen_call1(ptr noundef %i.h, ptr noundef nonnull @helper_info_wrmsr, ptr noundef null, ptr noundef %i.l) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 3, ptr %i.m, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_RDTSC(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %gen_update_cc_op.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @cpu_cc_op, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i32, ptr %i.e, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.d, i32 noundef %i.f) #14
  store i8 0, ptr %i.a, align 1
  br label %gen_update_cc_op.exit

gen_update_cc_op.exit:                            ; preds = %bb.a, %bb.b
  tail call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.g = tail call zeroext i1 @translator_io_start(ptr noundef nonnull %0) #14 ; 0 uses
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = load ptr, ptr @helper_info_rdtsc, align 8
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  tail call void @tcg_gen_call1(ptr noundef %i.i, ptr noundef nonnull @helper_info_rdtsc, ptr noundef null, ptr noundef %i.m) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_RDMSR(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %gen_update_cc_op.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @cpu_cc_op, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i32, ptr %i.e, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.d, i32 noundef %i.f) #14
  store i8 0, ptr %i.a, align 1
  br label %gen_update_cc_op.exit

gen_update_cc_op.exit:                            ; preds = %bb.a, %bb.b
  tail call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = load ptr, ptr @helper_info_rdmsr, align 8
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  tail call void @tcg_gen_call1(ptr noundef %i.h, ptr noundef nonnull @helper_info_rdmsr, ptr noundef null, ptr noundef %i.l) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_RDPMC(ptr noundef %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %gen_update_cc_op.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @cpu_cc_op, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load i32, ptr %i.e, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.d, i32 noundef %i.f) #14
  store i8 0, ptr %i.a, align 1
  br label %gen_update_cc_op.exit

gen_update_cc_op.exit:                            ; preds = %bb.a, %bb.b
  tail call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.g = tail call zeroext i1 @translator_io_start(ptr noundef nonnull %0) #14 ; 0 uses
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = load ptr, ptr @helper_info_rdpmc, align 8
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  tail call void @tcg_gen_call1(ptr noundef %i.i, ptr noundef nonnull @helper_info_rdpmc, ptr noundef null, ptr noundef %i.m) #14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.n, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_SYSENTER(ptr nofree noundef writeonly captures(none) initializes((24, 28)) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr @tcg_env, align 8
  %i.b = load ptr, ptr @helper_info_sysenter, align 8
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  tail call void @tcg_gen_call1(ptr noundef %i.b, ptr noundef nonnull @helper_info_sysenter, ptr noundef null, ptr noundef %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 5, ptr %i.g, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_SYSEXIT(ptr nofree noundef captures(none) initializes((24, 28)) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr @tcg_env, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.c = load i32, ptr %i.b, align 4
  %i.d = add i32 %i.c, -1
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = load ptr, ptr @helper_info_sysexit, align 8
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  tail call void @tcg_gen_call2(ptr noundef %i.f, ptr noundef nonnull @helper_info_sysexit, ptr noundef null, ptr noundef %i.j, ptr noundef %i.l) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 5, ptr %i.m, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_CMOVcc(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %2 = alloca %struct.CCPrepare, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 15
  %i.d = zext nneg i8 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call fastcc void @gen_prepare_cc(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %0, i32 noundef range(i32 0, 16) %i.d, ptr noundef null)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load i8, ptr %i.i, align 8, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %gen_cmovcc.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = tail call ptr @tcg_constant_i64(i64 noundef %i.m) #14
  br label %gen_cmovcc.exit

gen_cmovcc.exit:                                  ; preds = %._crit_edge.i, %bb.b
  %i.o = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.b ]
  %i.p = load i32, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @tcg_gen_movcond_i64(i32 noundef %i.p, ptr noundef %i.f, ptr noundef %i.r, ptr noundef %i.o, ptr noundef %i.h, ptr noundef %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_MOVMSK(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.c = load i8, ptr %i.b, align 2
  %.not = icmp eq i8 %i.c, 0                      ; 2 uses
  %i.d = select i1 %.not, ptr @gen_helper_movmskps_xmm, ptr @gen_helper_movmskps_ymm
  %i.e = select i1 %.not, ptr @gen_helper_movmskpd_xmm, ptr @gen_helper_movmskpd_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 8
  %.not10 = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not10, ptr %i.d, ptr %i.e
  %i.j = load ptr, ptr @tcg_env, align 8
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.i(ptr noundef %i.a, ptr noundef %i.j, ptr noundef %i.k) #14, !callees !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %i.m, ptr noundef %i.a) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @decode_sse_unary(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 3
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, -4294901761
  store i64 %i.f, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i8, ptr %3, align 1
  %switch.tableidx = add i8 %i.g, -81             ; 2 uses
  %i.h = icmp ult i8 %switch.tableidx, 3
  br i1 %i.h, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.decode_sse_unary, i64 %i.i
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %2, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PAND(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_and(i32 noundef 3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PANDN(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_andc(i32 noundef 3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_POR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_or(i32 noundef 3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PXOR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_xor(i32 noundef 3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VADD(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  tail call fastcc void @gen_fp_sse(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @gen_helper_addpd_xmm, ptr noundef nonnull @gen_helper_addps_xmm, ptr noundef nonnull @gen_helper_addpd_ymm, ptr noundef nonnull @gen_helper_addps_ymm, ptr noundef nonnull @gen_helper_addsd, ptr noundef nonnull @gen_helper_addss)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VMUL(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  tail call fastcc void @gen_fp_sse(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @gen_helper_mulpd_xmm, ptr noundef nonnull @gen_helper_mulps_xmm, ptr noundef nonnull @gen_helper_mulpd_ymm, ptr noundef nonnull @gen_helper_mulps_ymm, ptr noundef nonnull @gen_helper_mulsd, ptr noundef nonnull @gen_helper_mulss)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @decode_0F5A(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %2, ptr nofree readnone captures(none) %3) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 137
  %.val = load i8, ptr %i.a, align 1
  %i.b = zext i8 %.val to i32                     ; 3 uses
  %i.c = and i32 %i.b, 2
end_hunk_7
begin_hunk_8_@gen_XADD:bb.a
  %i.n = and i8 %i.m, 4
  %.not = icmp eq i8 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.r to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  tail call void @tcg_gen_atomic_fetch_add_i64_chk(ptr noundef %i.p, ptr noundef %i.z, ptr noundef %i.s, i64 noundef range(i64 -2147483648, 2147483648) %i.v, i32 noundef %i.c, i32 noundef 1) #14
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = load ptr, ptr %i.o, align 8
  %i.ac = load ptr, ptr %i.f, align 8
  tail call void @tcg_gen_add_i64(ptr noundef %i.aa, ptr noundef %i.ab, ptr noundef %i.ac) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.f, align 8
  tail call void @tcg_gen_add_i64(ptr noundef %i.d, ptr noundef %i.p, ptr noundef %i.ad) #14
  %i.ae = load ptr, ptr %i.e, align 8
  tail call fastcc void @gen_writeback(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.ae)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ag = load i8, ptr %i.af, align 4, !range !18, !noundef !19
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = load i8, ptr %i.a, align 8
  %.not26 = icmp eq i8 %i.aj, %i.ak
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load ptr, ptr %i.al, align 8
  tail call fastcc void @gen_writeback(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef %i.am)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VCMP(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32                      ; 4 uses
  %i.f = and i32 %i.e, 1
  %.not10 = icmp eq i32 %i.f, 0
  br i1 %.not10, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.e, 2
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i32 %i.e, 3
  %.lobit = and i32 %i.h, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.j = load i8, ptr %i.i, align 2
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 2
  %i.m = or disjoint i32 %i.l, %.lobit
  %i.n = zext nneg i32 %i.m to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi i64 [ 2, %bb.a ], [ %i.n, %bb.c ], [ 3, %bb.b ]
  %i.p = and i32 %i.e, 32
  %.not = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not, i64 7, i64 31
  %i.r = and i64 %i.q, %i.b
  %i.s = getelementptr inbounds nuw [48 x i8], ptr @gen_helper_cmp_funcs, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.o
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr @tcg_env, align 8
  %i.w = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.x = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.y = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  tail call void %i.u(ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PINSRW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  tail call fastcc void @gen_pinsr(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PEXTRW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val.i, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %vector_len.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i.i, i32 7, i32 15
  br label %vector_len.exit.i

vector_len.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ 3, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr @tcg_env, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = and i32 %i.p, -2
  %switch.i.i23.i = icmp eq i32 %i.q, 6
  br i1 %switch.i.i23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector_len.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.812, ptr noundef nonnull @.str.802, i32 noundef 128, ptr noundef nonnull @__PRETTY_FUNCTION__.vector_reg_offset) #16
  unreachable

bb.e:                                             ; preds = %vector_len.exit.i
  %i.r = icmp eq i32 %i.p, 7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %switch.i.i.i28.i = icmp ult i32 %i.t, 4
  br i1 %switch.i.i.i28.i, label %gen_pextr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 102, ptr noundef nonnull @__func__.mmx_offset, ptr noundef null) #16
  unreachable

bb.h:                                             ; preds = %bb.e
  %switch.i8.i.i24.i = icmp ult i32 %i.t, 6
  br i1 %switch.i8.i.i24.i, label %gen_pextr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 122, ptr noundef nonnull @__func__.xmm_offset, ptr noundef null) #16
  unreachable

gen_pextr.exit:                                   ; preds = %bb.f, %bb.h
  %i.u = trunc i64 %i.k to i32
  %i.v = and i32 %.0.i.i, %i.u
  %.0.in.i.i25.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.0.i.i26.i = load i32, ptr %.0.in.i.i25.i, align 8
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = add i32 %.0.i.i26.i, %i.w
  %i.y = sext i32 %i.x to i64
  tail call void @tcg_gen_ld16u_i64(ptr noundef %i.m, ptr noundef %i.n, i64 noundef %i.y) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VSHUF(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = tail call ptr @tcg_constant_i32(i32 noundef %i.c) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.f = load i8, ptr %i.e, align 2
  %.not = icmp eq i8 %i.f, 0                      ; 2 uses
  %i.g = select i1 %.not, ptr @gen_helper_shufps_xmm, ptr @gen_helper_shufps_ymm
  %i.h = select i1 %.not, ptr @gen_helper_shufpd_xmm, ptr @gen_helper_shufpd_ymm
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 8
  %.not11 = icmp eq i8 %i.k, 0
  %i.l = select i1 %.not11, ptr %i.g, ptr %i.h
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.n = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.o = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.l(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.d) #14, !callees !55
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @decode_group9(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @get_modrm(ptr noundef %0, ptr noundef %1)
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %.mask = and i32 %i.b, 192
  %i.c = icmp eq i32 %.mask, 192
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_group9.group9_reg, i64 32, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 56
  %i.e = icmp eq i32 %i.d, 8
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.g = load i8, ptr %i.f, align 1, !range !18, !noundef !19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_group9.cmpxchg16b, i64 32, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_group9.cmpxchg8b, i64 32, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_BSWAP(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @tcg_gen_bswap64_i64(ptr noundef %i.e, ptr noundef %i.e) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @tcg_gen_bswap32_i64(ptr noundef %i.e, ptr noundef %i.e, i32 noundef 2) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VADDSUB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 137
  %.val = load i8, ptr %i.a, align 1
  %i.b = getelementptr i8, ptr %0, i64 142
  %.val2 = load i8, ptr %i.b, align 2
  %.not.i = icmp eq i8 %.val2, 0                  ; 2 uses
  %i.c = select i1 %.not.i, ptr @gen_helper_addsubps_xmm, ptr @gen_helper_addsubps_ymm
  %i.d = select i1 %.not.i, ptr @gen_helper_addsubpd_xmm, ptr @gen_helper_addsubpd_ymm
  %i.e = and i8 %.val, 8
  %.not13.i = icmp eq i8 %i.e, 0
  %i.f = select i1 %.not13.i, ptr %i.c, ptr %i.d
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !inline_history !0
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PSRLW_r(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 255
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.813, ptr noundef nonnull @.str.802, i32 noundef 879, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_binary_int_sse) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 40
  %or.cond.i = icmp eq i8 %i.f, 32
  br i1 %or.cond.i, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !range !18, !noundef !19
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %gen_illegal_opcode.exit.i

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @cpu_cc_op, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load i32, ptr %i.k, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.j, i32 noundef %i.l) #14
  store i8 0, ptr %i.g, align 1
  br label %gen_illegal_opcode.exit.i

gen_illegal_opcode.exit.i:                        ; preds = %bb.e, %bb.d
  tail call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.m = load ptr, ptr @tcg_env, align 8
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 6) #14
  %i.o = load ptr, ptr @helper_info_raise_exception, align 8
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  tail call void @tcg_gen_call2(ptr noundef %i.o, ptr noundef nonnull @helper_info_raise_exception, ptr noundef null, ptr noundef %i.s, ptr noundef %i.u) #14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.v, align 8
  br label %gen_binary_int_sse.exit

._crit_edge.i:                                    ; preds = %bb.c
  %i.w = and i8 %i.e, 8
  %.not21.i = icmp eq i8 %i.w, 0
  br i1 %.not21.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i
  %i.x = load ptr, ptr @tcg_env, align 8
  %i.y = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.z = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.aa = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.ab = load ptr, ptr @helper_info_psrlw_mmx, align 8
  %i.ac = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = ptrtoint ptr %i.y to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = ptrtoint ptr %i.aa to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ak
  tail call void @tcg_gen_call4(ptr noundef %i.ab, ptr noundef nonnull @helper_info_psrlw_mmx, ptr noundef null, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.al) #14
  br label %gen_binary_int_sse.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.an = load i8, ptr %i.am, align 2
  %.not22.i = icmp eq i8 %i.an, 0
  %i.ao = load ptr, ptr @tcg_env, align 8
  %i.ap = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.aq = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.ar = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.at = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay ; 2 uses
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ba ; 2 uses
  br i1 %.not22.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr @helper_info_psrlw_xmm, align 8
  tail call void @tcg_gen_call4(ptr noundef %i.bc, ptr noundef nonnull @helper_info_psrlw_xmm, ptr noundef null, ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.bb) #14
  br label %gen_binary_int_sse.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr @helper_info_psrlw_ymm, align 8
  tail call void @tcg_gen_call4(ptr noundef %i.bd, ptr noundef nonnull @helper_info_psrlw_ymm, ptr noundef null, ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.bb) #14
  br label %gen_binary_int_sse.exit

gen_binary_int_sse.exit:                          ; preds = %gen_illegal_opcode.exit.i, %bb.f, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PSRLD_r(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 255
end_hunk_8
begin_hunk_9_@gen_PSRLQ_r:bb.a
  %i.ar = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.at = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = ptrtoint ptr %i.ap to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw ; 2 uses
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ay ; 2 uses
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ba ; 2 uses
  br i1 %.not22.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr @helper_info_psrlq_xmm, align 8
  tail call void @tcg_gen_call4(ptr noundef %i.bc, ptr noundef nonnull @helper_info_psrlq_xmm, ptr noundef null, ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.bb) #14
  br label %gen_binary_int_sse.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr @helper_info_psrlq_ymm, align 8
  tail call void @tcg_gen_call4(ptr noundef %i.bd, ptr noundef nonnull @helper_info_psrlq_ymm, ptr noundef null, ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.az, ptr noundef %i.bb) #14
  br label %gen_binary_int_sse.exit

gen_binary_int_sse.exit:                          ; preds = %gen_illegal_opcode.exit.i, %bb.f, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PADDQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_add(i32 noundef 3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PMULLW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_mul(i32 noundef 1, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @decode_0FD6(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %2, ptr nofree readnone captures(none) %3) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 137
  %.val = load i8, ptr %i.a, align 1
  %i.b = zext i8 %.val to i32                     ; 3 uses
  %i.c = and i32 %i.b, 2
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %decode_by_prefix.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %bb.c, label %decode_by_prefix.exit

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw nsw i32 %i.b, 2
  %i.f = and i32 %i.e, 32
  %spec.select.idx.i = zext nneg i32 %i.f to i64
  br label %decode_by_prefix.exit

decode_by_prefix.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %spec.select.idx.sink.i = phi i64 [ %spec.select.idx.i, %bb.c ], [ 96, %bb.a ], [ 64, %bb.b ]
  %spec.select.i = getelementptr inbounds nuw i8, ptr @decode_0FD6.movq, i64 %spec.select.idx.sink.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PMOVMSKB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8
  %i.d = and i64 %.val, 255
  %i.e = icmp eq i64 %i.d, 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 11
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.j = load i8, ptr %i.i, align 2
  %.not3.i = icmp eq i8 %i.j, 0
  %i.k = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.c ], [ 8, %bb.b ]   ; 5 uses
  %i.l = tail call ptr @tcg_temp_new_i64() #14    ; 4 uses
  %switch.i = icmp ult i32 %i.b, 6
  br i1 %switch.i, label %xmm_offset.exit, label %bb.d

bb.d:                                             ; preds = %vector_len.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 122, ptr noundef nonnull @__func__.xmm_offset, ptr noundef null) #16
  unreachable

xmm_offset.exit:                                  ; preds = %vector_len.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load i32, ptr %i.m, align 8
  tail call void @tcg_gen_gvec_2(i32 noundef 3008, i32 noundef %i.n, i32 noundef %.0.i, i32 noundef %.0.i, ptr noundef nonnull @gen_PMOVMSKB.g) #14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load ptr, ptr @tcg_env, align 8
  %narrow = add nuw nsw i32 %.0.i, 3007
  %i.r = zext nneg i32 %narrow to i64
  tail call void @tcg_gen_ld8u_i64(ptr noundef %i.p, ptr noundef %i.q, i64 noundef %i.r) #14
  %i.s = icmp samesign ugt i32 %.0.i, 8
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %xmm_offset.exit
  %i.t = zext nneg i32 %.0.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %i.u = tail call zeroext i1 @tcg_op_supported(i32 noundef 23, i32 noundef 1, i32 noundef 0) #14
  %i.v = load ptr, ptr @tcg_env, align 8          ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.w = add nuw nsw i64 %indvars.iv, 2992
  tail call void @tcg_gen_ld_i64(ptr noundef %i.l, ptr noundef %i.v, i64 noundef %i.w) #14
  %i.x = load ptr, ptr %i.o, align 8              ; 2 uses
  tail call void @tcg_gen_extract2_i64(ptr noundef %i.x, ptr noundef %i.l, ptr noundef %i.x, i32 noundef 56) #14
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.y = add nuw nsw i64 %indvars.iv, 2999
  tail call void @tcg_gen_ld8u_i64(ptr noundef %i.l, ptr noundef %i.v, i64 noundef %i.y) #14
  %i.z = load ptr, ptr %i.o, align 8              ; 2 uses
  tail call void @tcg_gen_deposit_i64(ptr noundef %i.z, ptr noundef %i.l, ptr noundef %i.z, i32 noundef 8, i32 noundef 56) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = icmp samesign ugt i64 %indvars.iv, 16
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.g, %xmm_offset.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PSUBUSB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_ussub(i32 noundef 0, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PSUBUSW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_ussub(i32 noundef 1, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PMINUB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_umin(i32 noundef 0, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PADDUSB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_usadd(i32 noundef 0, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PADDUSW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_usadd(i32 noundef 1, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PMAXUB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
end_hunk_9
begin_hunk_10_@gen_CVTPI2Px:bb.a
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  tail call void @tcg_gen_call1(ptr noundef %i.b, ptr noundef nonnull @helper_info_enter_mmx, ptr noundef null, ptr noundef %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 8
  %.not = icmp eq i8 %i.i, 0
  %i.j = load ptr, ptr @tcg_env, align 8
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %helper_info_cvtpi2ps.helper_info_cvtpi2pd = select i1 %.not, ptr @helper_info_cvtpi2ps, ptr @helper_info_cvtpi2pd ; 2 uses
  %i.t = load ptr, ptr %helper_info_cvtpi2ps.helper_info_cvtpi2pd, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.t, ptr noundef nonnull %helper_info_cvtpi2ps.helper_info_cvtpi2pd, ptr noundef null, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VCVTSI2Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  tail call void @tcg_gen_gvec_mov(i32 noundef 3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %.0.i, i32 noundef %.0.i) #14
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %vector_len.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.r = load i8, ptr %i.q, align 1
  %i.s = and i8 %i.r, 2
  %.not19 = icmp eq i8 %i.s, 0
  %i.t = load ptr, ptr @tcg_env, align 8
  %i.u = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ad ; 2 uses
  br i1 %.not19, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr @helper_info_cvtsq2sd, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.af, ptr noundef nonnull @helper_info_cvtsq2sd, ptr noundef null, ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.ae) #14
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr @helper_info_cvtsq2ss, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.ag, ptr noundef nonnull @helper_info_cvtsq2ss, ptr noundef null, ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.ae) #14
  br label %bb.j

bb.g:                                             ; preds = %vector_len.exit
  %i.ah = tail call ptr @tcg_temp_new_i32() #14   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void @tcg_gen_extrl_i64_i32(ptr noundef %i.ah, ptr noundef %i.aj) #14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = and i8 %i.al, 2
  %.not = icmp eq i8 %i.am, 0
  %i.an = load ptr, ptr @tcg_env, align 8
  %i.ao = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.ap = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at ; 2 uses
  %i.av = ptrtoint ptr %i.ah to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr @helper_info_cvtsi2sd, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.ax, ptr noundef nonnull @helper_info_cvtsi2sd, ptr noundef null, ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.aw) #14
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr @helper_info_cvtsi2ss, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.ay, ptr noundef nonnull @helper_info_cvtsi2ss, ptr noundef null, ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.aw) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_CVTTPx2PI(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr @tcg_env, align 8
  %i.b = load ptr, ptr @helper_info_enter_mmx, align 8
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  tail call void @tcg_gen_call1(ptr noundef %i.b, ptr noundef nonnull @helper_info_enter_mmx, ptr noundef null, ptr noundef %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 8
  %.not = icmp eq i8 %i.i, 0
  %i.j = load ptr, ptr @tcg_env, align 8
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %helper_info_cvttps2pi.helper_info_cvttpd2pi = select i1 %.not, ptr @helper_info_cvttps2pi, ptr @helper_info_cvttpd2pi ; 2 uses
  %i.t = load ptr, ptr %helper_info_cvttps2pi.helper_info_cvttpd2pi, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.t, ptr noundef nonnull %helper_info_cvttps2pi.helper_info_cvttpd2pi, ptr noundef null, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VCVTTSx2SI(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 2
  %.not17.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o ; 2 uses
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q ; 2 uses
  br i1 %.not17.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @helper_info_cvttsd2sq, align 8
  tail call void @tcg_gen_call2(ptr noundef %i.s, ptr noundef nonnull @helper_info_cvttsd2sq, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #14
  br label %gen_VCVTtSx2SI.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @helper_info_cvttss2sq, align 8
  tail call void @tcg_gen_call2(ptr noundef %i.t, ptr noundef nonnull @helper_info_cvttss2sq, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #14
  br label %gen_VCVTtSx2SI.exit

bb.e:                                             ; preds = %bb.a
  %i.u = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 2
  %.not.i = icmp eq i8 %i.x, 0
  %i.y = load ptr, ptr @tcg_env, align 8
  %i.z = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_cvttss2si, ptr @gen_helper_cvttsd2si
  tail call void %..i(ptr noundef %i.u, ptr noundef %i.y, ptr noundef %i.z) #14, !callees !23, !inline_history !2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %i.ab, ptr noundef %i.u) #14
  br label %gen_VCVTtSx2SI.exit

gen_VCVTtSx2SI.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_cvttss2si(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_cvttss2si, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call2(ptr noundef %i.a, ptr noundef nonnull @helper_info_cvttss2si, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_cvttsd2si(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_cvttsd2si, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call2(ptr noundef %i.a, ptr noundef nonnull @helper_info_cvttsd2si, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_CVTPx2PI(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr @tcg_env, align 8
  %i.b = load ptr, ptr @helper_info_enter_mmx, align 8
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  tail call void @tcg_gen_call1(ptr noundef %i.b, ptr noundef nonnull @helper_info_enter_mmx, ptr noundef null, ptr noundef %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 8
  %.not = icmp eq i8 %i.i, 0
  %i.j = load ptr, ptr @tcg_env, align 8
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %helper_info_cvtps2pi.helper_info_cvtpd2pi = select i1 %.not, ptr @helper_info_cvtps2pi, ptr @helper_info_cvtpd2pi ; 2 uses
  %i.t = load ptr, ptr %helper_info_cvtps2pi.helper_info_cvtpd2pi, align 8
  tail call void @tcg_gen_call3(ptr noundef %i.t, ptr noundef nonnull %helper_info_cvtps2pi.helper_info_cvtpd2pi, ptr noundef null, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VCVTSx2SI(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 2
  %.not17.i = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o ; 2 uses
  %i.q = ptrtoint ptr %i.j to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q ; 2 uses
  br i1 %.not17.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @helper_info_cvtsd2sq, align 8
  tail call void @tcg_gen_call2(ptr noundef %i.s, ptr noundef nonnull @helper_info_cvtsd2sq, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #14
  br label %gen_VCVTtSx2SI.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @helper_info_cvtss2sq, align 8
  tail call void @tcg_gen_call2(ptr noundef %i.t, ptr noundef nonnull @helper_info_cvtss2sq, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r) #14
  br label %gen_VCVTtSx2SI.exit

bb.e:                                             ; preds = %bb.a
  %i.u = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, 2
  %.not.i = icmp eq i8 %i.x, 0
  %i.y = load ptr, ptr @tcg_env, align 8
  %i.z = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_cvtss2si, ptr @gen_helper_cvtsd2si
  tail call void %..i(ptr noundef %i.u, ptr noundef %i.y, ptr noundef %i.z) #14, !callees !23, !inline_history !2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void @tcg_gen_extu_i32_i64(ptr noundef %i.ab, ptr noundef %i.u) #14
  br label %gen_VCVTtSx2SI.exit

gen_VCVTtSx2SI.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_cvtss2si(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_cvtss2si, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call2(ptr noundef %i.a, ptr noundef nonnull @helper_info_cvtss2si, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_cvtsd2si(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_cvtsd2si, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call2(ptr noundef %i.a, ptr noundef nonnull @helper_info_cvtsd2si, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VUCOMI(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  %i.d = select i1 %.not, ptr @gen_helper_ucomiss, ptr @gen_helper_ucomisd
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g) #14, !callees !57
  tail call fastcc void @set_cc_op_1(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VCOMI(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  %i.d = select i1 %.not, ptr @gen_helper_comiss, ptr @gen_helper_comisd
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g) #14, !callees !58
  tail call fastcc void @set_cc_op_1(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_ucomisd(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_ucomisd, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_ucomisd, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_ucomiss(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_ucomiss, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_ucomiss, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_comisd(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_comisd, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_comisd, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_comiss(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_comiss, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_comiss, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_movmskps_ymm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_movmskps_ymm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call2(ptr noundef %i.a, ptr noundef nonnull @helper_info_movmskps_ymm, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_movmskps_xmm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_movmskps_xmm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call2(ptr noundef %i.a, ptr noundef nonnull @helper_info_movmskps_xmm, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_movmskpd_ymm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_movmskpd_ymm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call2(ptr noundef %i.a, ptr noundef nonnull @helper_info_movmskpd_ymm, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_movmskpd_xmm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_movmskpd_xmm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call2(ptr noundef %i.a, ptr noundef nonnull @helper_info_movmskpd_xmm, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VSQRT(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32                      ; 3 uses
  %i.d = and i32 %i.c, 3
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 1
  %.not27.i = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not27.i, ptr @gen_helper_sqrtsd, ptr @gen_helper_sqrtss
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !60, !inline_history !59
  br label %gen_unary_fp_sse.exit

bb.c:                                             ; preds = %bb.a
  %i.k = and i32 %i.c, 8
  %.not26.i = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.m = load i8, ptr %i.l, align 2
  %.not25.i = icmp eq i8 %i.m, 0                  ; 2 uses
  %i.n = select i1 %.not25.i, ptr @gen_helper_sqrtps_xmm, ptr @gen_helper_sqrtps_ymm
  %i.o = select i1 %.not25.i, ptr @gen_helper_sqrtpd_xmm, ptr @gen_helper_sqrtpd_ymm
  %i.p = select i1 %.not26.i, ptr %i.n, ptr %i.o
  %i.q = load ptr, ptr @tcg_env, align 8
  %i.r = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.s = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.p(ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s) #14, !callees !61, !inline_history !59
  br label %gen_unary_fp_sse.exit

gen_unary_fp_sse.exit:                            ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VRSQRT(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 10
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 1
  %.not17.i = icmp eq i32 %i.e, 0
  br i1 %.not17.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @tcg_env, align 8
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.j = load ptr, ptr @helper_info_rsqrtss, align 8
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  tail call void @tcg_gen_call4(ptr noundef %i.j, ptr noundef nonnull @helper_info_rsqrtss, ptr noundef null, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t) #14
  br label %gen_unary_fp32_sse.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.v = load i8, ptr %i.u, align 2
  %.not18.i = icmp eq i8 %i.v, 0
  %i.w = select i1 %.not18.i, ptr @gen_helper_rsqrtps_xmm, ptr @gen_helper_rsqrtps_ymm
  %i.x = load ptr, ptr @tcg_env, align 8
  %i.y = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.z = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.w(ptr noundef %i.x, ptr noundef %i.y, ptr noundef %i.z) #14, !callees !24, !inline_history !3
  br label %gen_unary_fp32_sse.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !18, !noundef !19
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %gen_illegal_opcode.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr @cpu_cc_op, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load i32, ptr %i.ae, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.ad, i32 noundef %i.af) #14
  store i8 0, ptr %i.aa, align 1
  br label %gen_illegal_opcode.exit.i

gen_illegal_opcode.exit.i:                        ; preds = %bb.f, %bb.e
  tail call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.ag = load ptr, ptr @tcg_env, align 8
  %i.ah = tail call ptr @tcg_constant_i32(i32 noundef 6) #14
  %i.ai = load ptr, ptr @helper_info_raise_exception, align 8
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  tail call void @tcg_gen_call2(ptr noundef %i.ai, ptr noundef nonnull @helper_info_raise_exception, ptr noundef null, ptr noundef %i.am, ptr noundef %i.ao) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.ap, align 8
  br label %gen_unary_fp32_sse.exit

gen_unary_fp32_sse.exit:                          ; preds = %bb.c, %bb.d, %gen_illegal_opcode.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VRCP(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 10
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 1
  %.not17.i = icmp eq i32 %i.e, 0
  br i1 %.not17.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @tcg_env, align 8
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.j = load ptr, ptr @helper_info_rcpss, align 8
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  tail call void @tcg_gen_call4(ptr noundef %i.j, ptr noundef nonnull @helper_info_rcpss, ptr noundef null, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t) #14
  br label %gen_unary_fp32_sse.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.v = load i8, ptr %i.u, align 2
  %.not18.i = icmp eq i8 %i.v, 0
  %i.w = select i1 %.not18.i, ptr @gen_helper_rcpps_xmm, ptr @gen_helper_rcpps_ymm
  %i.x = load ptr, ptr @tcg_env, align 8
  %i.y = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.z = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.w(ptr noundef %i.x, ptr noundef %i.y, ptr noundef %i.z) #14, !callees !24, !inline_history !3
  br label %gen_unary_fp32_sse.exit

bb.e:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 151 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !18, !noundef !19
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %gen_illegal_opcode.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr @cpu_cc_op, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load i32, ptr %i.ae, align 8
  tail call void @tcg_gen_movi_i32(ptr noundef %i.ad, i32 noundef %i.af) #14
  store i8 0, ptr %i.aa, align 1
  br label %gen_illegal_opcode.exit.i

gen_illegal_opcode.exit.i:                        ; preds = %bb.f, %bb.e
  tail call fastcc void @gen_update_eip_cur(ptr noundef nonnull %0)
  %i.ag = load ptr, ptr @tcg_env, align 8
  %i.ah = tail call ptr @tcg_constant_i32(i32 noundef 6) #14
  %i.ai = load ptr, ptr @helper_info_raise_exception, align 8
  %i.aj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  tail call void @tcg_gen_call2(ptr noundef %i.ai, ptr noundef nonnull @helper_info_raise_exception, ptr noundef null, ptr noundef %i.am, ptr noundef %i.ao) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 2, ptr %i.ap, align 8
  br label %gen_unary_fp32_sse.exit

gen_unary_fp32_sse.exit:                          ; preds = %bb.c, %bb.d, %gen_illegal_opcode.exit.i
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sqrtpd_xmm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sqrtpd_xmm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_sqrtpd_xmm, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sqrtps_xmm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sqrtps_xmm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_sqrtps_xmm, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sqrtpd_ymm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sqrtpd_ymm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_sqrtpd_ymm, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sqrtps_ymm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sqrtps_ymm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_sqrtps_ymm, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sqrtsd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sqrtsd, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sqrtsd, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_sqrtss(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_sqrtss, align 8
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
  tail call void @tcg_gen_call4(ptr noundef %i.a, ptr noundef nonnull @helper_info_sqrtss, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_rsqrtps_xmm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_rsqrtps_xmm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_rsqrtps_xmm, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_rsqrtps_ymm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_rsqrtps_ymm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_rsqrtps_ymm, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_rcpps_xmm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_rcpps_xmm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_rcpps_xmm, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @gen_helper_rcpps_ymm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @helper_info_rcpps_ymm, align 8
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f
  %i.h = ptrtoint ptr %2 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  tail call void @tcg_gen_call3(ptr noundef %i.a, ptr noundef nonnull @helper_info_rcpps_ymm, ptr noundef null, ptr noundef %i.e, ptr noundef %i.g, ptr noundef %i.i) #14
  ret void
}

end_hunk_10
begin_hunk_11_@gen_PMULDQ:bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PCMPEQQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_cmp(i32 noundef 8, i32 noundef 3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPACKUSDW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 255
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.813, ptr noundef nonnull @.str.802, i32 noundef 879, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_binary_int_sse) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 8
  %.not21.i = icmp eq i8 %i.f, 0
  br i1 %.not21.i, label %bb.d, label %gen_binary_int_sse.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0) ; 0 uses
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1) ; 0 uses
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2) ; 0 uses
  unreachable

gen_binary_int_sse.exit:                          ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.k = load i8, ptr %i.j, align 2
  %.not22.i = icmp eq i8 %i.k, 0
  %i.l = load ptr, ptr @tcg_env, align 8
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.n = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.o = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.x
  %helper_info_packusdw_xmm.helper_info_packusdw_ymm = select i1 %.not22.i, ptr @helper_info_packusdw_xmm, ptr @helper_info_packusdw_ymm ; 2 uses
  %i.z = load ptr, ptr %helper_info_packusdw_xmm.helper_info_packusdw_ymm, align 8
  tail call void @tcg_gen_call4(ptr noundef %i.z, ptr noundef nonnull %helper_info_packusdw_xmm.helper_info_packusdw_ymm, ptr noundef null, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.y) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VMASKMOVPS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 255
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.813, ptr noundef nonnull @.str.802, i32 noundef 879, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_binary_int_sse) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 8
  %.not21.i = icmp eq i8 %i.f, 0
  br i1 %.not21.i, label %bb.d, label %gen_binary_int_sse.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0) ; 0 uses
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1) ; 0 uses
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2) ; 0 uses
  unreachable

gen_binary_int_sse.exit:                          ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.k = load i8, ptr %i.j, align 2
  %.not22.i = icmp eq i8 %i.k, 0
  %i.l = load ptr, ptr @tcg_env, align 8
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.n = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.o = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.x
  %helper_info_vpmaskmovd_xmm.helper_info_vpmaskmovd_ymm = select i1 %.not22.i, ptr @helper_info_vpmaskmovd_xmm, ptr @helper_info_vpmaskmovd_ymm ; 2 uses
  %i.z = load ptr, ptr %helper_info_vpmaskmovd_xmm.helper_info_vpmaskmovd_ymm, align 8
  tail call void @tcg_gen_call4(ptr noundef %i.z, ptr noundef nonnull %helper_info_vpmaskmovd_xmm.helper_info_vpmaskmovd_ymm, ptr noundef null, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.y) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VMASKMOVPD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 255
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.813, ptr noundef nonnull @.str.802, i32 noundef 879, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_binary_int_sse) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 8
  %.not21.i = icmp eq i8 %i.f, 0
  br i1 %.not21.i, label %bb.d, label %gen_binary_int_sse.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0) ; 0 uses
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1) ; 0 uses
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2) ; 0 uses
  unreachable

gen_binary_int_sse.exit:                          ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.k = load i8, ptr %i.j, align 2
  %.not22.i = icmp eq i8 %i.k, 0
  %i.l = load ptr, ptr @tcg_env, align 8
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.n = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.o = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.x
  %helper_info_vpmaskmovq_xmm.helper_info_vpmaskmovq_ymm = select i1 %.not22.i, ptr @helper_info_vpmaskmovq_xmm, ptr @helper_info_vpmaskmovq_ymm ; 2 uses
  %i.z = load ptr, ptr %helper_info_vpmaskmovq_xmm.helper_info_vpmaskmovq_ymm, align 8
  tail call void @tcg_gen_call4(ptr noundef %i.z, ptr noundef nonnull %helper_info_vpmaskmovq_xmm.helper_info_vpmaskmovq_ymm, ptr noundef null, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.y) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VMASKMOVPS_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.b = load i8, ptr %i.a, align 2
  %.not.i = icmp eq i8 %i.b, 0
  %i.c = load ptr, ptr @tcg_env, align 8
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.e = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8
  %..i = select i1 %.not.i, ptr @gen_helper_vpmaskmovd_st_xmm, ptr @gen_helper_vpmaskmovd_st_ymm
  tail call void %..i(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.g) #14, !callees !25, !inline_history !6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VMASKMOVPD_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.b = load i8, ptr %i.a, align 2
  %.not.i = icmp eq i8 %i.b, 0
  %i.c = load ptr, ptr @tcg_env, align 8
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.e = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8
  %..i = select i1 %.not.i, ptr @gen_helper_vpmaskmovq_st_xmm, ptr @gen_helper_vpmaskmovq_st_ymm
  tail call void %..i(ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.g) #14, !callees !25, !inline_history !6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPMOVZXBW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %.not.i = icmp eq i8 %.val, 0
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_pmovzxbw_xmm, ptr @gen_helper_pmovzxbw_ymm
  tail call void %..i(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) #14, !inline_history !1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPMOVZXBD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %.not.i = icmp eq i8 %.val, 0
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_pmovzxbd_xmm, ptr @gen_helper_pmovzxbd_ymm
  tail call void %..i(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) #14, !inline_history !1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPMOVZXBQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %.not.i = icmp eq i8 %.val, 0
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_pmovzxbq_xmm, ptr @gen_helper_pmovzxbq_ymm
  tail call void %..i(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) #14, !inline_history !1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPMOVZXWD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %.not.i = icmp eq i8 %.val, 0
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_pmovzxwd_xmm, ptr @gen_helper_pmovzxwd_ymm
  tail call void %..i(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) #14, !inline_history !1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPMOVZXWQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %.not.i = icmp eq i8 %.val, 0
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_pmovzxwq_xmm, ptr @gen_helper_pmovzxwq_ymm
  tail call void %..i(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) #14, !inline_history !1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPMOVZXDQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %.not.i = icmp eq i8 %.val, 0
  %i.b = load ptr, ptr @tcg_env, align 8
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_pmovzxdq_xmm, ptr @gen_helper_pmovzxdq_ymm
  tail call void %..i(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d) #14, !inline_history !1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PCMPGTQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_cmp(i32 noundef 6, i32 noundef 3, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PMINSB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_smin(i32 noundef 0, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PMINSD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_smin(i32 noundef 2, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PMINUW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c
end_hunk_11
begin_hunk_12_@gen_PMULLD:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = load i32, ptr %i.n, align 8
  tail call void @tcg_gen_gvec_mul(i32 noundef 2, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPHMINPOSUW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.b = load i8, ptr %i.a, align 2
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.819, ptr noundef nonnull @.str.802, i32 noundef 4639, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_VPHMINPOSUW) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @tcg_env, align 8
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.e = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.f = load ptr, ptr @helper_info_phminposuw_xmm, align 8
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  tail call void @tcg_gen_call3(ptr noundef %i.f, ptr noundef nonnull @helper_info_phminposuw_xmm, ptr noundef null, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPSRLV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %0, i64 149
  %.val2 = load i8, ptr %i.b, align 1, !range !18, !noundef !19
  %.not.i = icmp eq i8 %.val, 0                   ; 2 uses
  %i.c = select i1 %.not.i, ptr @gen_helper_vpsrlvd_xmm, ptr @gen_helper_vpsrlvd_ymm
  %i.d = select i1 %.not.i, ptr @gen_helper_vpsrlvq_xmm, ptr @gen_helper_vpsrlvq_ymm
  %i.e = trunc nuw i8 %.val2 to i1
  %i.f = select i1 %i.e, ptr %i.d, ptr %i.c
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !inline_history !7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPSRAV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %0, i64 149
  %.val2 = load i8, ptr %i.b, align 1, !range !18, !noundef !19
  %.not.i = icmp eq i8 %.val, 0                   ; 2 uses
  %i.c = select i1 %.not.i, ptr @gen_helper_vpsravd_xmm, ptr @gen_helper_vpsravd_ymm
  %i.d = select i1 %.not.i, ptr @gen_helper_vpsravq_xmm, ptr @gen_helper_vpsravq_ymm
  %i.e = trunc nuw i8 %.val2 to i1
  %i.f = select i1 %i.e, ptr %i.d, ptr %i.c
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !inline_history !7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPSLLV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %0, i64 149
  %.val2 = load i8, ptr %i.b, align 1, !range !18, !noundef !19
  %.not.i = icmp eq i8 %.val, 0                   ; 2 uses
  %i.c = select i1 %.not.i, ptr @gen_helper_vpsllvd_xmm, ptr @gen_helper_vpsllvd_ymm
  %i.d = select i1 %.not.i, ptr @gen_helper_vpsllvq_xmm, ptr @gen_helper_vpsllvq_ymm
  %i.e = trunc nuw i8 %.val2 to i1
  %i.f = select i1 %i.e, ptr %i.d, ptr %i.c
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !inline_history !7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPBROADCASTB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i32, ptr %i.l, align 8
  tail call void @tcg_gen_gvec_dup_mem(i32 noundef 0, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPBROADCASTW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %vector_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i, i32 16, i32 32
  br label %vector_len.exit

vector_len.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.i, %bb.c ], [ 8, %bb.b ]   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i32, ptr %i.l, align 8
  tail call void @tcg_gen_gvec_dup_mem(i32 noundef 1, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %.0.i, i32 noundef %.0.i) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPMASKMOV(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.a, align 2
  %i.b = getelementptr i8, ptr %0, i64 149
  %.val2 = load i8, ptr %i.b, align 1, !range !18, !noundef !19
  %.not.i = icmp eq i8 %.val, 0                   ; 2 uses
  %i.c = select i1 %.not.i, ptr @gen_helper_vpmaskmovd_xmm, ptr @gen_helper_vpmaskmovd_ymm
  %i.d = select i1 %.not.i, ptr @gen_helper_vpmaskmovq_xmm, ptr @gen_helper_vpmaskmovq_ymm
  %i.e = trunc nuw i8 %.val2 to i1
  %i.f = select i1 %i.e, ptr %i.d, ptr %i.c
  %i.g = load ptr, ptr @tcg_env, align 8
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !inline_history !7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPMASKMOV_st(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.e = load i8, ptr %i.d, align 2
  %.not.i.i = icmp eq i8 %i.e, 0                  ; 2 uses
  %i.f = load ptr, ptr @tcg_env, align 8
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.j = load ptr, ptr %i.i, align 8
  %..i.i6 = select i1 %.not.i.i, ptr @gen_helper_vpmaskmovd_st_xmm, ptr @gen_helper_vpmaskmovd_st_ymm
  %..i.i = select i1 %.not.i.i, ptr @gen_helper_vpmaskmovq_st_xmm, ptr @gen_helper_vpmaskmovq_st_ymm
  %..i.i6.sink = select i1 %i.c, ptr %..i.i, ptr %..i.i6
  tail call void %..i.i6.sink(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.j) #14, !callees !25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPGATHERD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  tail call fastcc void @gen_vsib_avx(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @gen_helper_vpgatherdd_xmm, ptr noundef nonnull @gen_helper_vpgatherdq_xmm, ptr noundef nonnull @gen_helper_vpgatherdd_ymm, ptr noundef nonnull @gen_helper_vpgatherdq_ymm)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPGATHERQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  tail call fastcc void @gen_vsib_avx(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @gen_helper_vpgatherqd_xmm, ptr noundef nonnull @gen_helper_vpgatherqq_xmm, ptr noundef nonnull @gen_helper_vpgatherqd_ymm, ptr noundef nonnull @gen_helper_vpgatherqq_ymm)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADDSUB132Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUBADD132Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADD132Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADD132Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUB132Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUB132Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMADD132Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 2) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMADD132Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 2) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMSUB132Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 3) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMSUB132Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 3) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADDSUB213Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUBADD213Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADD213Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADD213Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUB213Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUB213Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMADD213Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 2) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMADD213Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 2) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMSUB213Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 3) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMSUB213Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 3) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADDSUB231Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUBADD231Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADD231Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMADD231Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUB231Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFMSUB231Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 1) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMADD231Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 2) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMADD231Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 2) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMSUB231Px(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4ps_xmm
  %i.e = select i1 %i.c, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_ymm
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  %i.h = select i1 %.not, ptr %i.d, ptr %i.e
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.n = tail call ptr @tcg_constant_i32(i32 noundef 3) #14
  %i.o = tail call ptr @tcg_constant_i32(i32 noundef 0) #14
  tail call void %i.h(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o) #14, !callees !26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VFNMSUB231Sx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.b = load i8, ptr %i.a, align 1, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss
  %i.e = load ptr, ptr @tcg_env, align 8
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.j = tail call ptr @tcg_constant_i32(i32 noundef 3) #14
  tail call void %i.d(ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j) #14, !callees !27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_SHA1NEXTE(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.b = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.d = load ptr, ptr @helper_info_sha1nexte, align 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  tail call void @tcg_gen_call3(ptr noundef %i.d, ptr noundef nonnull @helper_info_sha1nexte, ptr noundef null, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_SHA1MSG1(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.b = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.d = load ptr, ptr @helper_info_sha1msg1, align 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  tail call void @tcg_gen_call3(ptr noundef %i.d, ptr noundef nonnull @helper_info_sha1msg1, ptr noundef null, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_SHA1MSG2(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.b = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.d = load ptr, ptr @helper_info_sha1msg2, align 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  tail call void @tcg_gen_call3(ptr noundef %i.d, ptr noundef nonnull @helper_info_sha1msg2, ptr noundef null, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_SHA256RNDS2(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  %i.b = tail call ptr @tcg_temp_new_i32() #14    ; 2 uses
  %i.c = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld_i32(ptr noundef %i.a, ptr noundef %i.c, i64 noundef 960) #14
  %i.d = load ptr, ptr @tcg_env, align 8
  tail call void @tcg_gen_ld_i32(ptr noundef %i.b, ptr noundef %i.d, i64 noundef 964) #14
  %i.e = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.f = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.h = load ptr, ptr @helper_info_sha256rnds2, align 8
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  tail call void @tcg_gen_call5(ptr noundef %i.h, ptr noundef nonnull @helper_info_sha256rnds2, ptr noundef null, ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_SHA256MSG1(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.b = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.d = load ptr, ptr @helper_info_sha256msg1, align 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  tail call void @tcg_gen_call3(ptr noundef %i.d, ptr noundef nonnull @helper_info_sha256msg1, ptr noundef null, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_SHA256MSG2(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.b = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.c = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.d = load ptr, ptr @helper_info_sha256msg2, align 8
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  tail call void @tcg_gen_call3(ptr noundef %i.d, ptr noundef nonnull @helper_info_sha256msg2, ptr noundef null, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VAESIMC(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.b = load i8, ptr %i.a, align 2
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.819, ptr noundef nonnull @.str.802, i32 noundef 4195, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_VAESIMC) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @tcg_env, align 8
  %i.d = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.e = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  %i.f = load ptr, ptr @helper_info_aesimc_xmm, align 8
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m
  tail call void @tcg_gen_call3(ptr noundef %i.f, ptr noundef nonnull @helper_info_aesimc_xmm, ptr noundef null, ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VAESENC(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 255
  %.not = icmp eq i64 %i.c, 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.813, ptr noundef nonnull @.str.802, i32 noundef 879, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_binary_int_sse) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 8
  %.not21.i = icmp eq i8 %i.f, 0
  br i1 %.not21.i, label %bb.d, label %gen_binary_int_sse.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0) ; 0 uses
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1) ; 0 uses
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2) ; 0 uses
  unreachable

gen_binary_int_sse.exit:                          ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.k = load i8, ptr %i.j, align 2
  %.not22.i = icmp eq i8 %i.k, 0
  %i.l = load ptr, ptr @tcg_env, align 8
  %i.m = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.n = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.o = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = ptrtoint ptr %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.x
end_hunk_12
begin_hunk_13_@gen_ADCOX:bb.a
  store ptr %i.s, ptr %i.e, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr %i.r, ptr %i.d, align 8
  br label %bb.f

.thread:                                          ; preds = %bb.a
  %i.u = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  store ptr %i.u, ptr %i.m, align 8
  tail call fastcc void @gen_mov_eflags(ptr noundef nonnull %0, ptr noundef %i.u)
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.not5660 = icmp ne ptr %i.t, null
  %.not56.not = select i1 %or.cond, i1 %.not5660, i1 false
  br i1 %.not56.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.v = tail call ptr @tcg_temp_new_i64() #14    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.c, i32 0, i32 11
  tail call void @tcg_gen_extract_i64(ptr noundef %i.v, ptr noundef %i.x, i32 noundef %i.y, i32 noundef 1) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi ptr [ %i.t, %bb.f ], [ %i.v, %bb.g ]  ; 2 uses
  switch i32 %i.b, label %bb.k [
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.aa, ptr noundef %i.aa) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  tail call void @tcg_gen_ext32u_i64(ptr noundef %i.ac, ptr noundef %i.ac) #14
  %i.ad = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8
  tail call void @tcg_gen_add_i64(ptr noundef %i.ad, ptr noundef %i.ad, ptr noundef %i.ae) #14
  %i.af = load ptr, ptr %i.z, align 8             ; 2 uses
  tail call void @tcg_gen_add_i64(ptr noundef %i.af, ptr noundef %i.af, ptr noundef %.2) #14
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = load ptr, ptr %i.z, align 8
  tail call void @tcg_gen_shri_i64(ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef 32) #14
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ai = tail call ptr @tcg_constant_i64(i64 noundef 0) #14 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.f, align 8
  tail call void @tcg_gen_add2_i64(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %i.ak, ptr noundef %i.ai, ptr noundef %.2, ptr noundef %i.ai) #14
  %i.am = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void @tcg_gen_add2_i64(ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ai) #14
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 1257, ptr noundef nonnull @__func__.gen_ADCOX, ptr noundef null) #16
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare void @tcg_gen_add2_i64(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @tcg_gen_mulu2_i32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPERMQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %..i = select i1 %.not.i, ptr null, ptr @gen_helper_vpermq_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.e) #14, !inline_history !4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VBLENDPS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_blendps_xmm, ptr @gen_helper_blendps_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.e) #14, !inline_history !8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPERMILPS_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %..i = select i1 %.not.i, ptr @gen_helper_vpermilps_imm_xmm, ptr @gen_helper_vpermilps_imm_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.e) #14, !inline_history !4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPERMILPD_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %..i = select i1 %.not.i, ptr @gen_helper_vpermilpd_imm_xmm, ptr @gen_helper_vpermilpd_imm_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.e) #14, !inline_history !4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPERM2x128(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.818, ptr noundef nonnull @.str.802, i32 noundef 4633, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_VPERM2x128) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.k = load ptr, ptr @helper_info_vpermdq_ymm, align 8
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %i.t = ptrtoint ptr %i.e to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  tail call void @tcg_gen_call4(ptr noundef %i.k, ptr noundef nonnull @helper_info_vpermdq_ymm, ptr noundef null, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VROUNDPS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %..i = select i1 %.not.i, ptr @gen_helper_roundps_xmm, ptr @gen_helper_roundps_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.e) #14, !callees !28, !inline_history !9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VROUNDPD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %..i = select i1 %.not.i, ptr @gen_helper_roundpd_xmm, ptr @gen_helper_roundpd_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.e) #14, !callees !28, !inline_history !9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VROUNDSS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.819, ptr noundef nonnull @.str.802, i32 noundef 4653, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_VROUNDSS) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.l = load ptr, ptr @helper_info_roundss_xmm, align 8
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = ptrtoint ptr %i.k to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u
  %i.w = ptrtoint ptr %i.e to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  tail call void @tcg_gen_call5(ptr noundef %i.l, ptr noundef nonnull @helper_info_roundss_xmm, ptr noundef null, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VROUNDSD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.819, ptr noundef nonnull @.str.802, i32 noundef 4646, ptr noundef nonnull @__PRETTY_FUNCTION__.gen_VROUNDSD) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.l = load ptr, ptr @helper_info_roundsd_xmm, align 8
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = ptrtoint ptr %i.k to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u
  %i.w = ptrtoint ptr %i.e to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  tail call void @tcg_gen_call5(ptr noundef %i.l, ptr noundef nonnull @helper_info_roundsd_xmm, ptr noundef null, ptr noundef %i.p, ptr noundef %i.r, ptr noundef %i.t, ptr noundef %i.v, ptr noundef %i.x) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VBLENDPD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_blendpd_xmm, ptr @gen_helper_blendpd_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.e) #14, !inline_history !8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPBLENDW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_pblendw_xmm, ptr @gen_helper_pblendw_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.e) #14, !inline_history !8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PALIGNR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 8
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.m = load ptr, ptr @helper_info_palignr_mmx, align 8
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = ptrtoint ptr %i.j to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = ptrtoint ptr %i.k to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.t
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v
  %i.x = ptrtoint ptr %i.e to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  tail call void @tcg_gen_call5(ptr noundef %i.m, ptr noundef nonnull @helper_info_palignr_mmx, ptr noundef null, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.y) #14
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.aa = load i8, ptr %i.z, align 2
  %.not15 = icmp eq i8 %i.aa, 0
  %i.ab = load ptr, ptr @tcg_env, align 8
  %i.ac = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.ad = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.ae = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %i.af = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ag = load ptr, ptr %i.af, align 8            ; 5 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  %i.al = ptrtoint ptr %i.ad to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %i.ae to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.an ; 2 uses
  %i.ap = ptrtoint ptr %i.e to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ap ; 2 uses
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr @helper_info_palignr_xmm, align 8
  tail call void @tcg_gen_call5(ptr noundef %i.ar, ptr noundef nonnull @helper_info_palignr_xmm, ptr noundef null, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef %i.aq) #14
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.as = load ptr, ptr @helper_info_palignr_ymm, align 8
  tail call void @tcg_gen_call5(ptr noundef %i.as, ptr noundef nonnull @helper_info_palignr_ymm, ptr noundef null, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef %i.aq) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PEXTRB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val.i, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c
end_hunk_13
begin_hunk_14_@gen_PEXTR:bb.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VEXTRACTPS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val.i, 255
  %i.c = icmp eq i64 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 11
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %vector_len.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.h = load i8, ptr %i.g, align 2
  %.not3.i.i = icmp eq i8 %i.h, 0
  %i.i = select i1 %.not3.i.i, i32 3, i32 7
  br label %vector_len.exit.i

vector_len.exit.i:                                ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ 1, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr @tcg_env, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = and i32 %i.p, -2
  %switch.i.i30.i = icmp eq i32 %i.q, 6
  br i1 %switch.i.i30.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %vector_len.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.812, ptr noundef nonnull @.str.802, i32 noundef 128, ptr noundef nonnull @__PRETTY_FUNCTION__.vector_reg_offset) #16
  unreachable

bb.e:                                             ; preds = %vector_len.exit.i
  %i.r = icmp eq i32 %i.p, 7
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %switch.i.i.i35.i = icmp ult i32 %i.t, 4
  br i1 %switch.i.i.i35.i, label %gen_pextr.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 102, ptr noundef nonnull @__func__.mmx_offset, ptr noundef null) #16
  unreachable

bb.h:                                             ; preds = %bb.e
  %switch.i8.i.i31.i = icmp ult i32 %i.t, 6
  br i1 %switch.i8.i.i31.i, label %gen_pextr.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 122, ptr noundef nonnull @__func__.xmm_offset, ptr noundef null) #16
  unreachable

gen_pextr.exit:                                   ; preds = %bb.f, %bb.h
  %i.u = trunc i64 %i.k to i32
  %i.v = and i32 %.0.i.i, %i.u
  %.0.in.i.i32.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.0.i.i33.i = load i32, ptr %.0.in.i.i32.i, align 8
  %i.w = shl nuw nsw i32 %i.v, 2
  %i.x = add i32 %.0.i.i33.i, %i.w
  %i.y = sext i32 %i.x to i64
  tail call void @tcg_gen_ld32u_i64(ptr noundef %i.m, ptr noundef %i.n, i64 noundef %i.y) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VINSERTx128(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.tr = trunc i64 %i.b to i32
  %i.e = shl i32 %.tr, 4
  %i.f = and i32 %i.e, 16                         ; 2 uses
  %i.g = add i32 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i32, ptr %i.h, align 8
  tail call void @tcg_gen_gvec_mov(i32 noundef 3, i32 noundef %i.g, i32 noundef %i.i, i32 noundef 16, i32 noundef 16) #14
  %i.j = load i32, ptr %i.c, align 8
  %i.k = xor i32 %i.f, 16                         ; 2 uses
  %i.l = add i32 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add i32 %i.n, %i.k
  tail call void @tcg_gen_gvec_mov(i32 noundef 3, i32 noundef %i.l, i32 noundef %i.o, i32 noundef 16, i32 noundef 16) #14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VEXTRACTx128(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = and i32 %i.e, -2
  %switch.i.i = icmp eq i32 %i.f, 6
  br i1 %switch.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.812, ptr noundef nonnull @.str.802, i32 noundef 128, ptr noundef nonnull @__PRETTY_FUNCTION__.vector_reg_offset) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %switch.i.i.i = icmp ult i32 %i.i, 4
  br i1 %switch.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 102, ptr noundef nonnull @__func__.mmx_offset, ptr noundef null) #16
  unreachable

bb.f:                                             ; preds = %bb.c
  %switch.i8.i.i = icmp ult i32 %i.i, 6
  br i1 %switch.i8.i.i, label %vector_elem_offset.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.802, i32 noundef 122, ptr noundef nonnull @__func__.xmm_offset, ptr noundef null) #16
  unreachable

bb.h:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.814, ptr noundef nonnull @.str.802, i32 noundef 166, ptr noundef nonnull @__PRETTY_FUNCTION__.vector_elem_offset) #16
  unreachable

vector_elem_offset.exit:                          ; preds = %bb.f
  %.0.in.i.i7 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.0.i.i8 = load i32, ptr %.0.in.i.i7, align 8
  %i.j = shl i32 %i.c, 4
  %i.k = and i32 %i.j, 16
  %i.l = add i32 %.0.i.i8, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.n = load i8, ptr %i.m, align 4, !range !18, !noundef !19
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %vector_elem_offset.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.q = load i32, ptr %i.p, align 8
  %i.r = lshr i32 %i.q, 19
  %i.s = and i32 %i.r, 512
  %i.t = xor i32 %i.s, 516
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call ptr @tcg_temp_new_i128() #14   ; 2 uses
  %i.x = load ptr, ptr @tcg_env, align 8
  %i.y = sext i32 %i.l to i64
  tail call void @tcg_gen_ld_i128(ptr noundef %i.w, ptr noundef %i.x, i64 noundef %i.y) #14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = sext i32 %i.v to i64
  %i.ac = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @tcg_ctx)
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  tail call void @tcg_gen_qemu_st_i128_chk(ptr noundef %i.w, ptr noundef %i.af, i64 noundef range(i64 -2147483648, 2147483648) %i.ab, i32 noundef range(i32 4, 768) %i.t, i32 noundef 1) #14
  br label %bb.k

bb.j:                                             ; preds = %vector_elem_offset.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = load i32, ptr %i.ag, align 8
  tail call void @tcg_gen_gvec_mov(i32 noundef 3, i32 noundef %i.ah, i32 noundef %i.l, i32 noundef 16, i32 noundef 16) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VCVTPS2PH(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %..i = select i1 %.not.i, ptr @gen_helper_cvtps2ph_xmm, ptr @gen_helper_cvtps2ph_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.e) #14, !callees !28, !inline_history !9
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.l = load i8, ptr %i.k, align 4, !range !18, !noundef !19
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i32, ptr %i.n, align 8
  tail call fastcc void @gen_store_sse(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PINSRB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  tail call fastcc void @gen_pinsr(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @decode_VINSERTPS(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = tail call fastcc zeroext i8 @get_modrm(ptr noundef %0, ptr noundef %1)
  %i.b = icmp ugt i8 %i.a, -65
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_VINSERTPS.vinsertps_reg, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) @decode_VINSERTPS.vinsertps_mem, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PINSR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.b = load i32, ptr %i.a, align 4
  tail call fastcc void @gen_pinsr(ptr noundef %0, ptr noundef %1, i32 noundef %i.b)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VDPPS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_dpps_xmm, ptr @gen_helper_dpps_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.e) #14, !inline_history !8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VDPPD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_dppd_xmm, ptr null
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.e) #14, !inline_history !8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VMPSADBW(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_mpsadbw_xmm, ptr @gen_helper_mpsadbw_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.e) #14, !inline_history !8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_PCLMULQDQ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call ptr @tcg_constant_i32(i32 noundef %i.d) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.g = load i8, ptr %i.f, align 2
  %.not.i = icmp eq i8 %i.g, 0
  %i.h = load ptr, ptr @tcg_env, align 8
  %i.i = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 0)
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 1)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef nonnull %1, i32 noundef 2)
  %..i = select i1 %.not.i, ptr @gen_helper_pclmulqdq_xmm, ptr @gen_helper_pclmulqdq_ymm
  tail call void %..i(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.e) #14, !inline_history !8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VBLENDVPS(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.c, align 2
  %i.d = tail call ptr @tcg_temp_new_ptr() #14    ; 2 uses
  %i.e = load ptr, ptr @tcg_env, align 8
  %.not.i = icmp eq i8 %.val, 0
  %i.f = select i1 %.not.i, ptr @gen_helper_blendvps_xmm, ptr @gen_helper_blendvps_ymm
  %i.g = shl i64 %i.b, 2
  %i.h = and i64 %i.g, 960
  %narrow.i = add nuw nsw i64 %i.h, 960
  tail call void @tcg_gen_addi_i64(ptr noundef %i.d, ptr noundef %i.e, i64 noundef range(i64 -2147483648, 2147483648) %narrow.i) #14
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.d) #14, !inline_history !5
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VBLENDVPD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.c, align 2
  %i.d = tail call ptr @tcg_temp_new_ptr() #14    ; 2 uses
  %i.e = load ptr, ptr @tcg_env, align 8
  %.not.i = icmp eq i8 %.val, 0
  %i.f = select i1 %.not.i, ptr @gen_helper_blendvpd_xmm, ptr @gen_helper_blendvpd_ymm
  %i.g = shl i64 %i.b, 2
  %i.h = and i64 %i.g, 960
  %narrow.i = add nuw nsw i64 %i.h, 960
  tail call void @tcg_gen_addi_i64(ptr noundef %i.d, ptr noundef %i.e, i64 noundef range(i64 -2147483648, 2147483648) %narrow.i) #14
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.d) #14, !inline_history !5
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @gen_VPBLENDVB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 142
  %.val = load i8, ptr %i.c, align 2
  %i.d = tail call ptr @tcg_temp_new_ptr() #14    ; 2 uses
  %i.e = load ptr, ptr @tcg_env, align 8
  %.not.i = icmp eq i8 %.val, 0
  %i.f = select i1 %.not.i, ptr @gen_helper_pblendvb_xmm, ptr @gen_helper_pblendvb_ymm
  %i.g = shl i64 %i.b, 2
  %i.h = and i64 %i.g, 960
  %narrow.i = add nuw nsw i64 %i.h, 960
  tail call void @tcg_gen_addi_i64(ptr noundef %i.d, ptr noundef %i.e, i64 noundef range(i64 -2147483648, 2147483648) %narrow.i) #14
  %i.i = load ptr, ptr @tcg_env, align 8
  %i.j = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 0)
  %i.k = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 1)
  %i.l = tail call fastcc ptr @op_ptr(ptr noundef %1, i32 noundef 2)
  tail call void %i.f(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.d) #14, !inline_history !5
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_14
begin_hunk_15_@insn_get:bb.a
  %i.o = xor i64 %i.h, %i.n
  %.not.i.i = icmp ult i64 %i.o, 4096
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = and i64 %i.h, -4096
  %i.q = tail call zeroext i8 @translator_ldub(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.p) #14 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @__longjmp_chk(ptr noundef nonnull %i.r, i32 noundef 1) #16
  unreachable

x86_ldub_code.exit:                               ; preds = %._crit_edge16.i.i
  %i.s = tail call zeroext i8 @translator_ldub(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.b) #14
  %i.t = zext i8 %i.s to i32
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.i, label %._crit_edge16.i.i7

bb.i:                                             ; preds = %bb.h
  %i.z = add i64 %i.v, 1
  %i.aa = tail call zeroext i1 @translator_is_same_page(ptr noundef nonnull %1, i64 noundef %i.z) #14
  br i1 %i.aa, label %._crit_edge.i.i10, label %bb.j

._crit_edge.i.i10:                                ; preds = %bb.i
  %.pre.i.i11 = load i64, ptr %i.u, align 8
  br label %._crit_edge16.i.i7

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @__longjmp_chk(ptr noundef nonnull %i.ab, i32 noundef 2) #16
  unreachable

._crit_edge16.i.i7:                               ; preds = %._crit_edge.i.i10, %bb.h
  %i.ac = phi i64 [ %.pre.i.i11, %._crit_edge.i.i10 ], [ %i.v, %bb.h ] ; 2 uses
  %i.ad = add i64 %i.ac, 2                        ; 2 uses
  store i64 %i.ad, ptr %i.u, align 8
  %i.ae = getelementptr i8, ptr %1, i64 16
  %.val.i.i8 = load i64, ptr %i.ae, align 8
  %i.af = sub i64 %i.ad, %.val.i.i8
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.ag, 15
  br i1 %i.ah, label %bb.k, label %x86_lduw_code.exit, !prof !20

bb.k:                                             ; preds = %._crit_edge16.i.i7
  %i.ai = add i64 %i.ac, 1                        ; 2 uses
  %i.aj = add i64 %i.v, -1
  %i.ak = xor i64 %i.ai, %i.aj
  %.not.i.i9 = icmp ult i64 %i.ak, 4096
  br i1 %.not.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = and i64 %i.ai, -4096
  %i.am = tail call zeroext i8 @translator_ldub(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.al) #14 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @__longjmp_chk(ptr noundef nonnull %i.an, i32 noundef 1) #16
  unreachable

x86_lduw_code.exit:                               ; preds = %._crit_edge16.i.i7
  %i.ao = tail call zeroext i16 @translator_lduw_end(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.v, i32 noundef 0) #14
  %i.ap = zext i16 %i.ao to i32
  br label %bb.u

bb.n:                                             ; preds = %bb.a, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.o, label %._crit_edge16.i.i12

bb.o:                                             ; preds = %bb.n
  %i.av = add i64 %i.ar, 3
  %i.aw = tail call zeroext i1 @translator_is_same_page(ptr noundef nonnull %1, i64 noundef %i.av) #14
  br i1 %i.aw, label %._crit_edge.i.i15, label %bb.p

._crit_edge.i.i15:                                ; preds = %bb.o
  %.pre.i.i16 = load i64, ptr %i.aq, align 8
  br label %._crit_edge16.i.i12

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @__longjmp_chk(ptr noundef nonnull %i.ax, i32 noundef 2) #16
  unreachable

._crit_edge16.i.i12:                              ; preds = %._crit_edge.i.i15, %bb.n
  %i.ay = phi i64 [ %.pre.i.i16, %._crit_edge.i.i15 ], [ %i.ar, %bb.n ] ; 2 uses
  %i.az = add i64 %i.ay, 4                        ; 2 uses
  store i64 %i.az, ptr %i.aq, align 8
  %i.ba = getelementptr i8, ptr %1, i64 16
  %.val.i.i13 = load i64, ptr %i.ba, align 8
  %i.bb = sub i64 %i.az, %.val.i.i13
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp sgt i32 %i.bc, 15
  br i1 %i.bd, label %bb.q, label %x86_ldl_code.exit, !prof !20

bb.q:                                             ; preds = %._crit_edge16.i.i12
  %i.be = add i64 %i.ay, 3                        ; 2 uses
  %i.bf = add i64 %i.ar, -1
  %i.bg = xor i64 %i.be, %i.bf
  %.not.i.i14 = icmp ult i64 %i.bg, 4096
  br i1 %.not.i.i14, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = and i64 %i.be, -4096
  %i.bi = tail call zeroext i8 @translator_ldub(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.bh) #14 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @__longjmp_chk(ptr noundef nonnull %i.bj, i32 noundef 1) #16
  unreachable

x86_ldl_code.exit:                                ; preds = %._crit_edge16.i.i12
  %i.bk = tail call i32 @translator_ldl_end(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.ar, i32 noundef 0) #14
  br label %bb.u

bb.t:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.792, i32 noundef 376, ptr noundef nonnull @__func__.insn_get, ptr noundef null) #16
  unreachable

bb.u:                                             ; preds = %x86_ldl_code.exit, %x86_lduw_code.exit, %x86_ldub_code.exit
  %.0 = phi i32 [ %i.t, %x86_ldub_code.exit ], [ %i.ap, %x86_lduw_code.exit ], [ %i.bk, %x86_ldl_code.exit ]
  ret i32 %.0
}

declare i32 @translator_ldl_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare zeroext i16 @translator_lduw_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare i64 @translator_ldq_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

declare void @tcg_gen_st_i128(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @tcg_gen_qemu_ld_i128_chk(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @qemu_log_trylock() local_unnamed_addr #0

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

declare void @qemu_log_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind returns_twice }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{ptr @gen_helper_cvtss2si, ptr @gen_helper_cvttss2si, ptr @gen_helper_cvtsd2si, ptr @gen_helper_cvttsd2si}
!24 = !{ptr @gen_helper_rcpps_xmm, ptr @gen_helper_rcpps_ymm, ptr @gen_helper_rsqrtps_xmm, ptr @gen_helper_rsqrtps_ymm}
!25 = !{ptr @gen_helper_vpmaskmovd_st_ymm, ptr @gen_helper_vpmaskmovq_st_ymm, ptr @gen_helper_vpmaskmovd_st_xmm, ptr @gen_helper_vpmaskmovq_st_xmm}
!26 = !{ptr @gen_helper_fma4pd_xmm, ptr @gen_helper_fma4pd_ymm, ptr @gen_helper_fma4ps_xmm, ptr @gen_helper_fma4ps_ymm}
!27 = !{ptr @gen_helper_fma4sd, ptr @gen_helper_fma4ss}
!28 = !{ptr @gen_helper_cvtps2ph_ymm, ptr @gen_helper_roundpd_ymm, ptr @gen_helper_roundps_ymm, ptr @gen_helper_cvtps2ph_xmm, ptr @gen_helper_roundpd_xmm, ptr @gen_helper_roundps_xmm}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{!31, !21}
!32 = distinct !{null}
!33 = distinct !{!33, !21}
!34 = !{ptr @decode_0F, ptr @decode_0F38, ptr @decode_0F3A, ptr @decode_root}
!35 = distinct !{!35, !21}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !"gen_prepare_eflags_o"}
!39 = distinct !{!39, !38, !"gen_prepare_eflags_o: argument 0"}
!40 = distinct !{!40, !"gen_prepare_eflags_c"}
!41 = distinct !{!41, !40, !"gen_prepare_eflags_c: argument 0"}
!42 = distinct !{!42, !"gen_prepare_eflags_z"}
!43 = distinct !{!43, !42, !"gen_prepare_eflags_z: argument 0"}
!44 = distinct !{!44, !"gen_prepare_eflags_s"}
!45 = distinct !{!45, !44, !"gen_prepare_eflags_s: argument 0"}
!46 = distinct !{!46, !"gen_prepare_eflags_p"}
!47 = distinct !{!47, !46, !"gen_prepare_eflags_p: argument 0"}
!48 = !{!39}
!49 = !{!41}
!50 = !{!43}
!51 = !{!45}
!52 = !{!47}
!53 = distinct !{null}
!54 = !{ptr @gen_helper_movmskpd_xmm, ptr @gen_helper_movmskpd_ymm, ptr @gen_helper_movmskps_xmm, ptr @gen_helper_movmskps_ymm}
!55 = !{ptr @gen_helper_shufpd_xmm, ptr @gen_helper_shufpd_ymm, ptr @gen_helper_shufps_xmm, ptr @gen_helper_shufps_ymm}
!56 = distinct !{!56, !21}
!57 = !{ptr @gen_helper_ucomisd, ptr @gen_helper_ucomiss}
!58 = !{ptr @gen_helper_comisd, ptr @gen_helper_comiss}
!59 = distinct !{null}
!60 = !{ptr @gen_helper_sqrtsd, ptr @gen_helper_sqrtss}
!61 = !{ptr @gen_helper_sqrtpd_xmm, ptr @gen_helper_sqrtpd_ymm, ptr @gen_helper_sqrtps_xmm, ptr @gen_helper_sqrtps_ymm}
end_hunk_15
