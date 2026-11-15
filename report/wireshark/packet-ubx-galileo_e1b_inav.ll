Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ubx-galileo_e1b_inav?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dissect_ubx_gal_inav:bb.a
  %i.jg = load i32, ptr @hf_ubx_gal_inav_osnma_cpks, align 4
  %i.jh = call ptr @proto_tree_add_item(ptr noundef %i.jb, i32 noundef %i.jg, ptr noundef %i.iy, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ji = load i32, ptr @hf_ubx_gal_inav_osnma_reserved, align 4
  %i.jj = call ptr @proto_tree_add_item(ptr noundef %i.jb, i32 noundef %i.ji, ptr noundef %i.iy, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jk = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_id, align 4
  %i.jl = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.jb, i32 noundef %i.jk, ptr noundef %i.iy, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.i) ; 0 uses
  %i.jm = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_blk_id, align 4
  %i.jn = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.jb, i32 noundef %i.jm, ptr noundef %i.iy, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.j) ; 0 uses
  %i.jo = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_blk, align 4
  %i.jp = call ptr @proto_tree_add_item(ptr noundef %i.jb, i32 noundef %i.jo, ptr noundef %i.iy, i32 noundef 2, i32 noundef 13, i32 noundef 0) ; 0 uses
  %i.jq = load ptr, ptr %i.hd, align 8
  %i.jr = call noalias dereferenceable_or_null(60) ptr @wmem_alloc(ptr noundef %i.jq, i64 noundef 60) #10 ; 16 uses
  %i.js = getelementptr i8, ptr %.0550, i64 8
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = call i32 @llvm.bswap.i32(i32 %i.jt)
  store i32 %i.ju, ptr %i.jr, align 1
  %i.jv = getelementptr i8, ptr %i.jr, i64 4
  %i.jw = getelementptr i8, ptr %.0550, i64 20
  %i.jx = load i32, ptr %i.jw, align 4
  %i.jy = call i32 @llvm.bswap.i32(i32 %i.jx)
  store i32 %i.jy, ptr %i.jv, align 1
  %i.jz = getelementptr i8, ptr %i.jr, i64 8
  %i.ka = getelementptr i8, ptr %.0550, i64 32
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = call i32 @llvm.bswap.i32(i32 %i.kb)
  store i32 %i.kc, ptr %i.jz, align 1
  %i.kd = getelementptr i8, ptr %i.jr, i64 12
  %i.ke = getelementptr i8, ptr %.0550, i64 44
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = call i32 @llvm.bswap.i32(i32 %i.kf)
  store i32 %i.kg, ptr %i.kd, align 1
  %i.kh = getelementptr i8, ptr %i.jr, i64 16
  %i.ki = getelementptr i8, ptr %.0550, i64 56
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = call i32 @llvm.bswap.i32(i32 %i.kj)
  store i32 %i.kk, ptr %i.kh, align 1
  %i.kl = getelementptr i8, ptr %i.jr, i64 20
  %i.km = getelementptr i8, ptr %.0550, i64 68
  %i.kn = load i32, ptr %i.km, align 4
  %i.ko = call i32 @llvm.bswap.i32(i32 %i.kn)
  store i32 %i.ko, ptr %i.kl, align 1
  %i.kp = getelementptr i8, ptr %i.jr, i64 24
  %i.kq = getelementptr i8, ptr %.0550, i64 80
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = call i32 @llvm.bswap.i32(i32 %i.kr)
  store i32 %i.ks, ptr %i.kp, align 1
  %i.kt = getelementptr i8, ptr %i.jr, i64 28
  %i.ku = getelementptr i8, ptr %.0550, i64 92
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = call i32 @llvm.bswap.i32(i32 %i.kv)
  store i32 %i.kw, ptr %i.kt, align 1
  %i.kx = getelementptr i8, ptr %i.jr, i64 32
  %i.ky = getelementptr i8, ptr %.0550, i64 104
  %i.kz = load i32, ptr %i.ky, align 4
  %i.la = call i32 @llvm.bswap.i32(i32 %i.kz)
  store i32 %i.la, ptr %i.kx, align 1
  %i.lb = getelementptr i8, ptr %i.jr, i64 36
  %i.lc = getelementptr i8, ptr %.0550, i64 116
  %i.ld = load i32, ptr %i.lc, align 4
  %i.le = call i32 @llvm.bswap.i32(i32 %i.ld)
  store i32 %i.le, ptr %i.lb, align 1
  %i.lf = getelementptr i8, ptr %i.jr, i64 40
  %i.lg = getelementptr i8, ptr %.0550, i64 128
  %i.lh = load i32, ptr %i.lg, align 4
  %i.li = call i32 @llvm.bswap.i32(i32 %i.lh)
  store i32 %i.li, ptr %i.lf, align 1
  %i.lj = getelementptr i8, ptr %i.jr, i64 44
  %i.lk = getelementptr i8, ptr %.0550, i64 140
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = call i32 @llvm.bswap.i32(i32 %i.ll)
  store i32 %i.lm, ptr %i.lj, align 1
  %i.ln = getelementptr i8, ptr %i.jr, i64 48
  %i.lo = getelementptr i8, ptr %.0550, i64 152
  %i.lp = load i32, ptr %i.lo, align 4
  %i.lq = call i32 @llvm.bswap.i32(i32 %i.lp)
  store i32 %i.lq, ptr %i.ln, align 1
  %i.lr = getelementptr i8, ptr %i.jr, i64 52
  %i.ls = getelementptr i8, ptr %.0550, i64 164
  %i.lt = load i32, ptr %i.ls, align 4
  %i.lu = call i32 @llvm.bswap.i32(i32 %i.lt)
  store i32 %i.lu, ptr %i.lr, align 1
  %i.lv = getelementptr i8, ptr %i.jr, i64 56
  %i.lw = getelementptr i8, ptr %.0550, i64 176
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = call i32 @llvm.bswap.i32(i32 %i.lx)
  store i32 %i.ly, ptr %i.lv, align 1
  %i.lz = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.jr, i32 noundef 60, i32 noundef 60) ; 32 uses
  %i.ma = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.lz, ptr noundef @.str.356) ; 0 uses
  %i.mb = load i32, ptr @ett_ubx_gal_inav_osnma_mack_msg, align 4
  %i.mc = call ptr @proto_tree_add_subtree(ptr noundef %i.ax, ptr noundef %i.lz, i32 noundef 0, i32 noundef 60, i32 noundef %i.mb, ptr noundef null, ptr noundef @.str.357) ; 10 uses
  %i.md = load i32, ptr @hf_ubx_gal_inav_osnma_tag0, align 4
  %i.me = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.md, ptr noundef %i.lz, i32 noundef 0, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.mf = load i32, ptr @hf_ubx_gal_inav_osnma_macseq, align 4
  %i.mg = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.mf, ptr noundef %i.lz, i32 noundef 5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.mh = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.mi = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.mh, ptr noundef %i.lz, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mj = load i32, ptr @ett_ubx_gal_inav_osnma_mack_tag, align 16
  %i.mk = call ptr @proto_tree_add_subtree(ptr noundef %i.mc, ptr noundef %i.lz, i32 noundef 7, i32 noundef 7, i32 noundef %i.mj, ptr noundef null, ptr noundef @.str.358) ; 4 uses
  %i.ml = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.mm = call ptr @proto_tree_add_item(ptr noundef %i.mk, i32 noundef %i.ml, ptr noundef %i.lz, i32 noundef 7, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.mn = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.mo = call ptr @proto_tree_add_item(ptr noundef %i.mk, i32 noundef %i.mn, ptr noundef %i.lz, i32 noundef 12, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mp = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.mq = call ptr @proto_tree_add_item(ptr noundef %i.mk, i32 noundef %i.mp, ptr noundef %i.lz, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mr = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.ms = call ptr @proto_tree_add_item(ptr noundef %i.mk, i32 noundef %i.mr, ptr noundef %i.lz, i32 noundef 13, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mt = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_ubx_gal_inav_osnma_mack_tag, i64 4), align 4
  %i.mu = call ptr @proto_tree_add_subtree(ptr noundef %i.mc, ptr noundef %i.lz, i32 noundef 14, i32 noundef 7, i32 noundef %i.mt, ptr noundef null, ptr noundef @.str.358) ; 4 uses
  %i.mv = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.mw = call ptr @proto_tree_add_item(ptr noundef %i.mu, i32 noundef %i.mv, ptr noundef %i.lz, i32 noundef 14, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.mx = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.my = call ptr @proto_tree_add_item(ptr noundef %i.mu, i32 noundef %i.mx, ptr noundef %i.lz, i32 noundef 19, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mz = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.na = call ptr @proto_tree_add_item(ptr noundef %i.mu, i32 noundef %i.mz, ptr noundef %i.lz, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nb = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.nc = call ptr @proto_tree_add_item(ptr noundef %i.mu, i32 noundef %i.nb, ptr noundef %i.lz, i32 noundef 20, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nd = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_ubx_gal_inav_osnma_mack_tag, i64 8), align 8
  %i.ne = call ptr @proto_tree_add_subtree(ptr noundef %i.mc, ptr noundef %i.lz, i32 noundef 21, i32 noundef 7, i32 noundef %i.nd, ptr noundef null, ptr noundef @.str.358) ; 4 uses
  %i.nf = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.ng = call ptr @proto_tree_add_item(ptr noundef %i.ne, i32 noundef %i.nf, ptr noundef %i.lz, i32 noundef 21, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.nh = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.ni = call ptr @proto_tree_add_item(ptr noundef %i.ne, i32 noundef %i.nh, ptr noundef %i.lz, i32 noundef 26, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nj = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.nk = call ptr @proto_tree_add_item(ptr noundef %i.ne, i32 noundef %i.nj, ptr noundef %i.lz, i32 noundef 27, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nl = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.nm = call ptr @proto_tree_add_item(ptr noundef %i.ne, i32 noundef %i.nl, ptr noundef %i.lz, i32 noundef 27, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_ubx_gal_inav_osnma_mack_tag, i64 12), align 4
  %i.no = call ptr @proto_tree_add_subtree(ptr noundef %i.mc, ptr noundef %i.lz, i32 noundef 28, i32 noundef 7, i32 noundef %i.nn, ptr noundef null, ptr noundef @.str.358) ; 4 uses
  %i.np = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.nq = call ptr @proto_tree_add_item(ptr noundef %i.no, i32 noundef %i.np, ptr noundef %i.lz, i32 noundef 28, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.nr = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.ns = call ptr @proto_tree_add_item(ptr noundef %i.no, i32 noundef %i.nr, ptr noundef %i.lz, i32 noundef 33, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nt = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.nu = call ptr @proto_tree_add_item(ptr noundef %i.no, i32 noundef %i.nt, ptr noundef %i.lz, i32 noundef 34, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nv = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.nw = call ptr @proto_tree_add_item(ptr noundef %i.no, i32 noundef %i.nv, ptr noundef %i.lz, i32 noundef 34, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nx = load i32, ptr getelementptr inbounds nuw (i8, ptr @ett_ubx_gal_inav_osnma_mack_tag, i64 16), align 16
  %i.ny = call ptr @proto_tree_add_subtree(ptr noundef %i.mc, ptr noundef %i.lz, i32 noundef 35, i32 noundef 7, i32 noundef %i.nx, ptr noundef null, ptr noundef @.str.358) ; 4 uses
  %i.nz = load i32, ptr @hf_ubx_gal_inav_osnma_tag, align 4
  %i.oa = call ptr @proto_tree_add_item(ptr noundef %i.ny, i32 noundef %i.nz, ptr noundef %i.lz, i32 noundef 35, i32 noundef 5, i32 noundef 0) ; 0 uses
  %i.ob = load i32, ptr @hf_ubx_gal_inav_osnma_prn_d, align 4
  %i.oc = call ptr @proto_tree_add_item(ptr noundef %i.ny, i32 noundef %i.ob, ptr noundef %i.lz, i32 noundef 40, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.od = load i32, ptr @hf_ubx_gal_inav_osnma_adkd, align 4
  %i.oe = call ptr @proto_tree_add_item(ptr noundef %i.ny, i32 noundef %i.od, ptr noundef %i.lz, i32 noundef 41, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.of = load i32, ptr @hf_ubx_gal_inav_osnma_cop, align 4
  %i.og = call ptr @proto_tree_add_item(ptr noundef %i.ny, i32 noundef %i.of, ptr noundef %i.lz, i32 noundef 41, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.oh = load i32, ptr @hf_ubx_gal_inav_osnma_key, align 4
  %i.oi = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.oh, ptr noundef %i.lz, i32 noundef 42, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.oj = load i32, ptr @hf_ubx_gal_inav_osnma_padding, align 4
  %i.ok = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.oj, ptr noundef %i.lz, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.sroa.6253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6253.0..sroa_idx, i8 0, i64 20, i1 false)
  %i.ol = load i32, ptr %i.i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.constellation.366, i64 32, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.om, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.type.360, i64 32, i1 false)
  %i.on = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 6, ptr %i.on, align 16
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 0, ptr %.sroa.5251.0..sroa_idx, align 4
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 %i.ol, ptr %.sroa.5252.0..sroa_idx, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.oo, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.end.368, i64 32, i1 false)
  %i.op = load i32, ptr %i.bo, align 4
  %i.oq = call ptr @find_conversation_full(i32 noundef %i.op, ptr noundef nonnull %5) ; 2 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.os = load i32, ptr %i.bo, align 4
  %i.ot = call ptr @conversation_new_full(i32 noundef %i.os, ptr noundef nonnull %5)
  %i.ou = call ptr @wmem_file_scope()
  %i.ov = call noalias dereferenceable_or_null(224) ptr @wmem_alloc0(ptr noundef %i.ou, i64 noundef 224) #10 ; 2 uses
  %i.ow = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.ot, i32 noundef %i.ow, ptr noundef %i.ov)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ox = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.oy = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.oq, i32 noundef %i.ox)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0549 = phi ptr [ %i.ov, %bb.af ], [ %i.oy, %bb.ag ] ; 21 uses
  %.not580 = icmp eq ptr %.0549, null
  br i1 %.not580, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.oz = load i32, ptr %i.j, align 4
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr [14 x i8], ptr %.0549, i64 %i.pa
  store i8 1, ptr %i.pb, align 1
  %i.pc = load i32, ptr %i.j, align 4
  %i.pd = zext i32 %i.pc to i64
  %i.pe = getelementptr [14 x i8], ptr %.0549, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(13) %i.pf, ptr noundef align 1 dereferenceable(13) %i.hn, i64 noundef 13, i1 noundef false) #9
  %i.pg = load i8, ptr %.0549, align 1, !range !10, !noundef !11
  %i.ph = trunc nuw i8 %i.pg to i1
  br i1 %i.ph, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.pi = getelementptr i8, ptr %.0549, i64 1
  %i.pj = load i8, ptr %i.pi, align 1             ; 2 uses
  %.not581 = icmp eq i8 %i.pj, 0
  br i1 %.not581, label %.thread, label %.preheader598.1

.preheader598.1:                                  ; preds = %bb.aj
  %i.pk = getelementptr i8, ptr %.0549, i64 14
  %i.pl = load i8, ptr %i.pk, align 1, !range !10, !noundef !11
  %i.pm = trunc nuw i8 %i.pl to i1
  br i1 %i.pm, label %.preheader598.2, label %.thread

.preheader598.2:                                  ; preds = %.preheader598.1
  %i.pn = getelementptr i8, ptr %.0549, i64 28
  %i.po = load i8, ptr %i.pn, align 1, !range !10, !noundef !11
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %.preheader598.3, label %.thread

.preheader598.3:                                  ; preds = %.preheader598.2
  %i.pq = getelementptr i8, ptr %.0549, i64 42
  %i.pr = load i8, ptr %i.pq, align 1, !range !10, !noundef !11
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %.preheader598.4, label %.thread

.preheader598.4:                                  ; preds = %.preheader598.3
  %i.pt = getelementptr i8, ptr %.0549, i64 56
  %i.pu = load i8, ptr %i.pt, align 1, !range !10, !noundef !11
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %.preheader598.5, label %.thread

.preheader598.5:                                  ; preds = %.preheader598.4
  %i.pw = getelementptr i8, ptr %.0549, i64 70
  %i.px = load i8, ptr %i.pw, align 1, !range !10, !noundef !11
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %.preheader598.6, label %.thread

.preheader598.6:                                  ; preds = %.preheader598.5
  %i.pz = getelementptr i8, ptr %.0549, i64 84
  %i.qa = load i8, ptr %i.pz, align 1, !range !10, !noundef !11
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %.preheader598.7, label %bb.ak

.preheader598.7:                                  ; preds = %.preheader598.6
  %i.qc = getelementptr i8, ptr %.0549, i64 98
  %i.qd = load i8, ptr %i.qc, align 1, !range !10, !noundef !11
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %.preheader598.8, label %bb.ak

.preheader598.8:                                  ; preds = %.preheader598.7
  %i.qf = getelementptr i8, ptr %.0549, i64 112
  %i.qg = load i8, ptr %i.qf, align 1, !range !10, !noundef !11
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %.preheader598.9, label %bb.ak

.preheader598.9:                                  ; preds = %.preheader598.8
  %i.qi = getelementptr i8, ptr %.0549, i64 126
  %i.qj = load i8, ptr %i.qi, align 1, !range !10, !noundef !11
  %i.qk = trunc nuw i8 %i.qj to i1
  br i1 %i.qk, label %.preheader598.10, label %bb.ak

.preheader598.10:                                 ; preds = %.preheader598.9
  %i.ql = getelementptr i8, ptr %.0549, i64 140
  %i.qm = load i8, ptr %i.ql, align 1, !range !10, !noundef !11
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %.preheader598.11, label %bb.ak

.preheader598.11:                                 ; preds = %.preheader598.10
  %i.qo = getelementptr i8, ptr %.0549, i64 154
  %i.qp = load i8, ptr %i.qo, align 1, !range !10, !noundef !11
  %i.qq = trunc nuw i8 %i.qp to i1
  br i1 %i.qq, label %.preheader598.12, label %bb.ak

.preheader598.12:                                 ; preds = %.preheader598.11
  %i.qr = getelementptr i8, ptr %.0549, i64 168
  %i.qs = load i8, ptr %i.qr, align 1, !range !10, !noundef !11
  %i.qt = trunc nuw i8 %i.qs to i1
  br i1 %i.qt, label %.preheader598.13, label %bb.ak

.preheader598.13:                                 ; preds = %.preheader598.12
  %i.qu = getelementptr i8, ptr %.0549, i64 182
  %i.qv = load i8, ptr %i.qu, align 1, !range !10, !noundef !11
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %.preheader598.14, label %bb.ak

.preheader598.14:                                 ; preds = %.preheader598.13
  %i.qx = getelementptr i8, ptr %.0549, i64 196
  %i.qy = load i8, ptr %i.qx, align 1, !range !10, !noundef !11
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %.preheader598.15, label %bb.ak

.preheader598.15:                                 ; preds = %.preheader598.14
  %i.ra = getelementptr i8, ptr %.0549, i64 210
  %i.rb = load i8, ptr %i.ra, align 1, !range !10, !noundef !11
  %spec.select = add nuw nsw i8 %i.rb, 15
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader598.15, %.preheader598.14, %.preheader598.13, %.preheader598.12, %.preheader598.11, %.preheader598.10, %.preheader598.9, %.preheader598.8, %.preheader598.7, %.preheader598.6
  %.0544.lcssa = phi i8 [ 8, %.preheader598.8 ], [ 12, %.preheader598.12 ], [ 13, %.preheader598.13 ], [ %spec.select, %.preheader598.15 ], [ 6, %.preheader598.6 ], [ 10, %.preheader598.10 ], [ 11, %.preheader598.11 ], [ 14, %.preheader598.14 ], [ 7, %.preheader598.7 ], [ 9, %.preheader598.9 ] ; 3 uses
  %i.rc = lshr i8 %i.pj, 4
  %narrow = add nuw nsw i8 %i.rc, 6
  %i.rd = icmp eq i8 %.0544.lcssa, %narrow
  br i1 %i.rd, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.re = zext nneg i8 %.0544.lcssa to i32
  %i.rf = load ptr, ptr %i.hd, align 8
  %i.rg = mul nuw nsw i32 %i.re, 13               ; 6 uses
  %i.rh = zext nneg i32 %i.rg to i64              ; 2 uses
  %i.ri = call noalias ptr @wmem_alloc(ptr noundef %i.rf, i64 noundef %i.rh) #10 ; 2 uses
  %i.rj = zext nneg i8 %.0544.lcssa to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.am
  %.6611 = phi i64 [ 0, %bb.al ], [ %i.rq, %bb.am ] ; 3 uses
  %i.rk = mul nuw nsw i64 %.6611, 13              ; 2 uses
  %i.rl = getelementptr i8, ptr %i.ri, i64 %i.rk
  %i.rm = getelementptr [14 x i8], ptr %.0549, i64 %.6611
  %i.rn = getelementptr i8, ptr %i.rm, i64 1
  %i.ro = sub nuw nsw i64 %i.rh, %i.rk
  %i.rp = call ptr @__memcpy_chk(ptr noundef %i.rl, ptr noundef %i.rn, i64 noundef 13, i64 noundef %i.ro) #9, !alias.scope !12 ; 0 uses
  %i.rq = add nuw nsw i64 %.6611, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.rq, %i.rj
  br i1 %exitcond.not, label %bb.an, label %bb.am, !llvm.loop !9

bb.an:                                            ; preds = %bb.am
  %i.rr = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.ri, i32 noundef %i.rg, i32 noundef %i.rg) ; 29 uses
  %i.rs = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.rr, ptr noundef @.str.362) ; 0 uses
  %i.rt = load i32, ptr %i.i, align 4
  %i.ru = icmp ult i32 %i.rt, 12
  br i1 %i.ru, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.rv = load i32, ptr @ett_ubx_gal_inav_osnma_dsm, align 4
  %i.rw = call ptr @proto_tree_add_subtree(ptr noundef %i.ax, ptr noundef %i.rr, i32 noundef 0, i32 noundef %i.rg, i32 noundef %i.rv, ptr noundef null, ptr noundef @.str.363) ; 16 uses
  %i.rx = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_nb_dk, align 4
  %i.ry = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.rx, ptr noundef %i.rr, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rz = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_pkid, align 4
  %i.sa = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.rz, ptr noundef %i.rr, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sb = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_cidkr, align 4
  %i.sc = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.sb, ptr noundef %i.rr, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sd = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_reserved1, align 4
  %i.se = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.sd, ptr noundef %i.rr, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sf = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_hf, align 4
  %i.sg = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.sf, ptr noundef %i.rr, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sh = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_mf, align 4
  %i.si = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.sh, ptr noundef %i.rr, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sj = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_ks, align 4
  %i.sk = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.rw, i32 noundef %i.sj, ptr noundef %i.rr, i32 noundef 2, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  %i.sl = load i32, ptr %i.k, align 4             ; 4 uses
  %i.sm = icmp ult i32 %i.sl, 5
  %i.sn = add nuw nsw i32 %i.sl, 12
  %i.so = icmp ult i32 %i.sl, 9
  %i.sp = shl nuw nsw i32 %i.sl, 2
  %spec.select.i = select i1 %i.so, i32 %i.sp, i32 0
  %.0.i = select i1 %i.sm, i32 %i.sn, i32 %spec.select.i ; 5 uses
  %i.sq = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_ts, align 4
  %i.sr = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.sq, ptr noundef %i.rr, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ss = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_maclt, align 4
  %i.st = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.ss, ptr noundef %i.rr, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.su = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_reserved2, align 4
  %i.sv = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.su, ptr noundef %i.rr, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sw = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_wn_k, align 4
  %i.sx = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.sw, ptr noundef %i.rr, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sy = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_towh_k, align 4
  %i.sz = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.sy, ptr noundef %i.rr, i32 noundef 6, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ta = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_alpha, align 4
  %i.tb = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.ta, ptr noundef %i.rr, i32 noundef 7, i32 noundef 6, i32 noundef 0) ; 0 uses
  %.not582 = icmp eq i32 %.0.i, 0
  br i1 %.not582, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.tc = add nsw i32 %i.rg, -77
  %i.td = sub i32 %i.tc, %.0.i
  %i.te = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_kroot, align 4
  %i.tf = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.te, ptr noundef %i.rr, i32 noundef 13, i32 noundef %.0.i, i32 noundef 0) ; 0 uses
  %i.tg = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_ds, align 4
  %i.th = add nuw nsw i32 %.0.i, 13
  %i.ti = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.tg, ptr noundef %i.rr, i32 noundef %i.th, i32 noundef 64, i32 noundef 0) ; 0 uses
  %i.tj = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_p_dk, align 4
  %i.tk = add nuw nsw i32 %.0.i, 77
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %i.rw, i32 noundef %i.tj, ptr noundef %i.rr, i32 noundef %i.tk, i32 noundef %i.td, i32 noundef 0) ; 0 uses
  br label %.thread

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  %i.tm = load i32, ptr @ett_ubx_gal_inav_osnma_dsm, align 4
  %i.tn = call ptr @proto_tree_add_subtree(ptr noundef %i.ax, ptr noundef %i.rr, i32 noundef 0, i32 noundef %i.rg, i32 noundef %i.tm, ptr noundef null, ptr noundef @.str.364) ; 10 uses
  %i.to = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_nb_dp, align 4
  %i.tp = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.tn, i32 noundef %i.to, ptr noundef %i.rr, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.o) ; 0 uses
  %i.tq = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_mid, align 4
  %i.tr = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.tn, i32 noundef %i.tq, ptr noundef %i.rr, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.p) ; 0 uses
  %i.ts = load i32, ptr %i.p, align 4             ; 5 uses
  %i.tt = icmp ult i32 %i.ts, 16
  br i1 %i.tt, label %switch.lookup, label %bb.ar

switch.lookup:                                    ; preds = %bb.aq
  %i.tu = zext nneg i32 %i.ts to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_gal_inav, i64 %i.tu
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.tv = zext nneg i32 %i.ts to i64
  %switch.gep655 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_gal_inav.1, i64 %i.tv
  %switch.load656 = load ptr, ptr %switch.gep655, align 8
  %i.tw = zext nneg i32 %i.ts to i64
  %switch.gep657 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_gal_inav.2, i64 %i.tw
  %switch.load658 = load ptr, ptr %switch.gep657, align 8
  %i.tx = zext nneg i32 %i.ts to i64
  %switch.gep659 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_ubx_gal_inav.3, i64 %i.tx
  %switch.load660 = load ptr, ptr %switch.gep659, align 8
  %i.ty = load i32, ptr %switch.load, align 4
  %i.tz = call ptr @proto_tree_add_item(ptr noundef %i.tn, i32 noundef %i.ty, ptr noundef %i.rr, i32 noundef 1, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ua = load i32, ptr %switch.load656, align 4
  %i.ub = call ptr @proto_tree_add_item(ptr noundef %i.tn, i32 noundef %i.ua, ptr noundef %i.rr, i32 noundef 33, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.uc = load i32, ptr %switch.load658, align 4
  %i.ud = call ptr @proto_tree_add_item(ptr noundef %i.tn, i32 noundef %i.uc, ptr noundef %i.rr, i32 noundef 65, i32 noundef 32, i32 noundef 0) ; 0 uses
  %i.ue = load i32, ptr %switch.load660, align 4
  %i.uf = call ptr @proto_tree_add_item(ptr noundef %i.tn, i32 noundef %i.ue, ptr noundef %i.rr, i32 noundef 97, i32 noundef 32, i32 noundef 0) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %switch.lookup
  %i.ug = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npkt, align 4
  %i.uh = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.tn, i32 noundef %i.ug, ptr noundef %i.rr, i32 noundef 129, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.q) ; 0 uses
  %i.ui = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npkid, align 4
  %i.uj = call ptr @proto_tree_add_item(ptr noundef %i.tn, i32 noundef %i.ui, ptr noundef %i.rr, i32 noundef 129, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.uk = load i32, ptr %i.o, align 4             ; 3 uses
  %i.ul = add i32 %i.uk, -7
  %or.cond11 = icmp ult i32 %i.ul, 4
  br i1 %or.cond11, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.um = load i32, ptr %i.q, align 4
  switch i32 %i.um, label %bb.aw [
    i32 1, label %bb.av
    i32 4, label %bb.at
    i32 3, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.un = mul nuw nsw i32 %i.uk, 104
  %i.uo = add nsw i32 %i.un, -416
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.at, %bb.au
  %.0541 = phi i32 [ %i.uo, %bb.au ], [ 536, %bb.at ], [ 264, %bb.as ] ; 2 uses
  %i.up = mul nuw nsw i32 %i.uk, 104
  %i.uq = add nsw i32 %i.up, -416
  %i.ur = sub nsw i32 %i.uq, %.0541
  %i.us = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_npk, align 4
  %i.ut = lshr i32 %.0541, 3                      ; 2 uses
  %i.uu = call ptr @proto_tree_add_item(ptr noundef %i.tn, i32 noundef %i.us, ptr noundef %i.rr, i32 noundef 130, i32 noundef %i.ut, i32 noundef 0) ; 0 uses
  %i.uv = load i32, ptr @hf_ubx_gal_inav_osnma_dsm_p_dp, align 4
  %i.uw = add nuw nsw i32 %i.ut, 130
  %i.ux = lshr i32 %i.ur, 3
  %i.uy = call ptr @proto_tree_add_item(ptr noundef %i.tn, i32 noundef %i.uv, ptr noundef %i.rr, i32 noundef %i.uw, i32 noundef %i.ux, i32 noundef 0) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.av, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  br label %.thread

.thread:                                          ; preds = %.preheader598.5, %.preheader598.4, %.preheader598.3, %.preheader598.2, %.preheader598.1, %bb.ak, %bb.ao, %bb.ap, %bb.aw, %bb.ai, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.critedge

.critedge.critedge:                               ; preds = %.preheader599.preheader, %.preheader599.1, %.preheader599.2, %.preheader599.3, %.preheader599.4, %.preheader599.5, %.preheader599.6, %.preheader599.7, %.preheader599.8, %.preheader599.9, %.preheader599.10, %.preheader599.11, %.preheader599.12, %.preheader599.13, %.preheader599.14, %bb.o, %bb.k, %bb.n, %.loopexit601
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %bb.g, %bb.f, %.thread
  %i.uz = load i32, ptr @ett_ubx_gal_inav_sar, align 4
  %i.va = call ptr @proto_tree_add_subtree(ptr noundef %i.v, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef %i.uz, ptr noundef null, ptr noundef @.str.365) ; 4 uses
  %i.vb = load i32, ptr @hf_ubx_gal_inav_sar_start_bit, align 4
  %i.vc = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.va, i32 noundef %i.vb, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.vd = load i32, ptr @hf_ubx_gal_inav_sar_long_rlm, align 4
  %i.ve = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %i.va, i32 noundef %i.vd, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.vf = load i32, ptr @hf_ubx_gal_inav_sar_rlm_data, align 4
  %i.vg = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.va, i32 noundef %i.vf, ptr noundef %0, i32 noundef 23, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.g) ; 0 uses
  br i1 %i.bc, label %bb.ax, label %bb.bq

bb.ax:                                            ; preds = %.critedge
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx, i8 0, i64 20, i1 false)
  %i.vh = load i8, ptr %3, align 1
  %i.vi = zext i8 %i.vh to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.constellation.366, i64 32, i1 false)
  %i.vj = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.vj, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.type.367, i64 32, i1 false)
  %i.vk = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 6, ptr %i.vk, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %i.vi, ptr %.sroa.545.0..sroa_idx, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %6, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.vl, ptr noundef align 8 dereferenceable(32) @__const.dissect_ubx_gal_inav.end.368, i64 32, i1 false)
  %i.vm = getelementptr i8, ptr %1, i64 20        ; 13 uses
  %i.vn = load i32, ptr %i.vm, align 4
  %i.vo = call ptr @find_conversation_full(i32 noundef %i.vn, ptr noundef nonnull %6) ; 14 uses
  %i.vp = icmp eq ptr %i.vo, null                 ; 3 uses
  %i.vq = load i8, ptr %i.a, align 1, !range !10
  %i.vr = trunc nuw i8 %i.vq to i1                ; 2 uses
  %or.cond17 = select i1 %i.vp, i1 %i.vr, i1 false
  br i1 %or.cond17, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.vs = load i32, ptr %i.vm, align 4
  %i.vt = call ptr @conversation_new_full(i32 noundef %i.vs, ptr noundef nonnull %6) ; 2 uses
  %i.vu = call ptr @wmem_file_scope()
  %i.vv = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.vw = trunc nuw i8 %i.vv to i1
  %i.vx = select i1 %i.vw, i64 96, i64 48
  %i.vy = call noalias ptr @wmem_alloc0(ptr noundef %i.vu, i64 noundef %i.vx) #10 ; 5 uses
  %i.vz = load i32, ptr %i.vm, align 4
  store i32 %i.vz, ptr %i.vy, align 4
  %i.wa = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.wb = getelementptr i8, ptr %i.vy, i64 4
  store i8 %i.wa, ptr %i.wb, align 4
  %i.wc = load i32, ptr %i.g, align 4
  %i.wd = getelementptr i8, ptr %i.vy, i64 8
  store i32 %i.wc, ptr %i.wd, align 4
  %i.we = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.vt, i32 noundef %i.we, ptr noundef %i.vy)
  br label %.loopexit

bb.az:                                            ; preds = %bb.ax
  %.not621 = xor i1 %i.vp, true
  %or.cond19 = select i1 %.not621, i1 %i.vr, i1 false
  br i1 %or.cond19, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.wf = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.wg = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.vo, i32 noundef %i.wf) ; 3 uses
  %.not584 = icmp eq ptr %i.wg, null
  br i1 %.not584, label %.thread593, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.wh = load i32, ptr %i.wg, align 4
  %i.wi = load i32, ptr %i.vm, align 4            ; 2 uses
  %.not585 = icmp eq i32 %i.wh, %i.wi
  br i1 %.not585, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.wj = call ptr @conversation_new_full(i32 noundef %i.wi, ptr noundef nonnull %6) ; 2 uses
  %i.wk = call ptr @wmem_file_scope()
  %i.wl = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.wm = trunc nuw i8 %i.wl to i1
  %i.wn = select i1 %i.wm, i64 96, i64 48
  %i.wo = call noalias ptr @wmem_alloc0(ptr noundef %i.wk, i64 noundef %i.wn) #10 ; 5 uses
  %i.wp = load i32, ptr %i.vm, align 4
  store i32 %i.wp, ptr %i.wo, align 4
  %i.wq = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.wr = getelementptr i8, ptr %i.wo, i64 4
  store i8 %i.wq, ptr %i.wr, align 4
  %i.ws = load i32, ptr %i.g, align 4
  %i.wt = getelementptr i8, ptr %i.wo, i64 8
  store i32 %i.ws, ptr %i.wt, align 4
  %i.wu = load i32, ptr @proto_ubx_gal_inav, align 4
  call void @conversation_add_proto_data(ptr noundef %i.wj, i32 noundef %i.wu, ptr noundef %i.wo)
  br label %.loopexit

bb.bd:                                            ; preds = %bb.az
  br i1 %i.vp, label %.thread593, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.wv = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.ww = call ptr @conversation_get_proto_data(ptr noundef nonnull %i.vo, i32 noundef %i.wv) ; 21 uses
  %.not583 = icmp eq ptr %i.ww, null
  br i1 %.not583, label %.thread593, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.wx = getelementptr i8, ptr %i.ww, i64 4
  %i.wy = load i8, ptr %i.wx, align 4, !range !10, !noundef !11 ; 3 uses
  %i.wz = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.xa = icmp eq i8 %i.wy, %i.wz
  br i1 %i.xa, label %.preheader597, label %.loopexit

.preheader597:                                    ; preds = %bb.bf
  %7 = trunc nuw i8 %i.wy to i1
  %8 = load i32, ptr %i.ww, align 4               ; 2 uses
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr %i.vm, align 4              ; 2 uses
  br i1 %9, label %.preheader597.a, label %13

.preheader597.a:                                  ; preds = %bb.bi, %bb.bh, %bb.bg, %36, %29, %22, %15, %.preheader597
  %.lcssa662 = phi ptr [ %i.ww, %.preheader597 ], [ %16, %15 ], [ %23, %22 ], [ %30, %29 ], [ %37, %36 ], [ %43, %bb.bg ], [ %i.xc, %bb.bh ], [ %53, %bb.bi ] ; 3 uses
  %.lcssa = phi i32 [ %10, %.preheader597 ], [ %19, %15 ], [ %26, %22 ], [ %33, %29 ], [ %40, %36 ], [ %46, %bb.bg ], [ %50, %bb.bh ], [ %55, %bb.bi ]
  store i32 %.lcssa, ptr %.lcssa662, align 4
  %11 = getelementptr i8, ptr %.lcssa662, i64 4
  store i8 %i.wy, ptr %11, align 4
  %i.xb = load i32, ptr %i.g, align 4
  %12 = getelementptr i8, ptr %.lcssa662, i64 8
  store i32 %i.xb, ptr %12, align 4
  br label %.loopexit

13:                                               ; preds = %.preheader597
  %14 = icmp eq i32 %8, %10
  br i1 %14, label %.loopexit, label %15

15:                                               ; preds = %13
  %16 = getelementptr i8, ptr %i.ww, i64 12       ; 2 uses
  %17 = load i32, ptr %16, align 4                ; 2 uses
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %i.vm, align 4              ; 2 uses
  br i1 %18, label %.preheader597.a, label %20

20:                                               ; preds = %15
  %21 = icmp eq i32 %17, %19
  br i1 %21, label %.loopexit, label %22

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %i.ww, i64 24       ; 2 uses
  %24 = load i32, ptr %23, align 4                ; 2 uses
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr %i.vm, align 4              ; 2 uses
  br i1 %25, label %.preheader597.a, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %24, %26
  br i1 %28, label %.loopexit, label %29

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %i.ww, i64 36       ; 2 uses
  %31 = load i32, ptr %30, align 4                ; 2 uses
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %i.vm, align 4              ; 2 uses
  br i1 %32, label %.preheader597.a, label %34

34:                                               ; preds = %29
  %35 = icmp ne i32 %31, %33
  %or.cond653.3.not = and i1 %35, %7
  br i1 %or.cond653.3.not, label %36, label %.loopexit

36:                                               ; preds = %34
  %37 = getelementptr i8, ptr %i.ww, i64 48       ; 2 uses
  %38 = load i32, ptr %37, align 4                ; 2 uses
  %39 = icmp eq i32 %38, 0
  %40 = load i32, ptr %i.vm, align 4              ; 2 uses
  br i1 %39, label %.preheader597.a, label %41

41:                                               ; preds = %36
  %42 = icmp eq i32 %38, %40
  br i1 %42, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %41
  %43 = getelementptr i8, ptr %i.ww, i64 60       ; 2 uses
  %44 = load i32, ptr %43, align 4                ; 2 uses
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr %i.vm, align 4              ; 2 uses
  br i1 %45, label %.preheader597.a, label %47

47:                                               ; preds = %bb.bg
  %48 = icmp eq i32 %44, %46
  br i1 %48, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %47
  %i.xc = getelementptr i8, ptr %i.ww, i64 72     ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4            ; 2 uses
  %49 = icmp eq i32 %i.xd, 0
  %50 = load i32, ptr %i.vm, align 4              ; 2 uses
  br i1 %49, label %.preheader597.a, label %51

51:                                               ; preds = %bb.bh
  %52 = icmp eq i32 %i.xd, %50
  br i1 %52, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %51
  %53 = getelementptr i8, ptr %i.ww, i64 84       ; 2 uses
  %54 = load i32, ptr %53, align 4
  %exitcond618.not = icmp eq i32 %54, 0
  %55 = load i32, ptr %i.vm, align 4
  br i1 %exitcond618.not, label %.preheader597.a, label %.loopexit

.loopexit:                                        ; preds = %13, %20, %27, %34, %41, %47, %51, %bb.bi, %bb.bc, %bb.bb, %bb.bf, %.preheader597.a, %bb.ay
  %.0548 = phi ptr [ %i.vy, %bb.ay ], [ %i.wo, %bb.bc ], [ %i.wg, %bb.bb ], [ %i.ww, %bb.bf ], [ %i.ww, %.preheader597.a ], [ %i.ww, %bb.bi ], [ %i.ww, %51 ], [ %i.ww, %47 ], [ %i.ww, %41 ], [ %i.ww, %34 ], [ %i.ww, %27 ], [ %i.ww, %20 ], [ %i.ww, %13 ] ; 13 uses
  %.0540 = phi ptr [ %i.vt, %bb.ay ], [ %i.wj, %bb.bc ], [ %i.vo, %bb.bb ], [ %i.vo, %bb.bf ], [ %i.vo, %.preheader597.a ], [ %i.vo, %bb.bi ], [ %i.vo, %51 ], [ %i.vo, %47 ], [ %i.vo, %41 ], [ %i.vo, %34 ], [ %i.vo, %27 ], [ %i.vo, %20 ], [ %i.vo, %13 ]
  %i.xe = icmp ne ptr %.0540, null
  %i.xf = icmp ne ptr %.0548, null
  %or.cond21 = and i1 %i.xf, %i.xe
  br i1 %or.cond21, label %.preheader, label %.thread593

.preheader:                                       ; preds = %.loopexit
  %i.xg = load i8, ptr %i.b, align 1, !range !10, !noundef !11
  %i.xh = trunc nuw i8 %i.xg to i1                ; 4 uses
  %56 = load i32, ptr %.0548, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %.thread593, label %bb.bj

bb.bj:                                            ; preds = %.preheader
  %58 = getelementptr i8, ptr %.0548, i64 12
  %i.xi = load i32, ptr %58, align 4
  %i.xj = icmp eq i32 %i.xi, 0
  br i1 %i.xj, label %.thread593, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %59 = getelementptr i8, ptr %.0548, i64 24
  %i.xk = load i32, ptr %59, align 4
  %i.xl = icmp eq i32 %i.xk, 0
  br i1 %i.xl, label %.thread593, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %60 = getelementptr i8, ptr %.0548, i64 36
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0                        ; 2 uses
  %.not665 = xor i1 %i.xh, true
  %brmerge = select i1 %62, i1 true, i1 %.not665
  %.mux = select i1 %62, i1 true, i1 %i.xh
  br i1 %brmerge, label %73, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %63 = getelementptr i8, ptr %.0548, i64 48
  %i.xm = load i32, ptr %63, align 4
  %i.xn = icmp eq i32 %i.xm, 0
  br i1 %i.xn, label %73, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %64 = getelementptr i8, ptr %.0548, i64 60
  %65 = load i32, ptr %64, align 4
  %exitcond619.not.3 = icmp eq i32 %65, 0
  br i1 %exitcond619.not.3, label %.thread593, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %66 = getelementptr i8, ptr %.0548, i64 72
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %.thread593, label %69

69:                                               ; preds = %bb.bo
  %70 = getelementptr i8, ptr %.0548, i64 84
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  %spec.select666 = select i1 %72, i1 true, i1 %i.xh
  br label %73

73:                                               ; preds = %69, %bb.bl, %bb.bm
  %.8.lcssa = phi i1 [ %.mux, %bb.bl ], [ %i.xh, %bb.bm ], [ %spec.select666, %69 ]
  br i1 %.8.lcssa, label %.thread593, label %bb.bp

bb.bp:                                            ; preds = %73
  %i.xo = getelementptr i8, ptr %1, i64 416
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = call noalias dereferenceable_or_null(10) ptr @wmem_alloc(ptr noundef %i.xp, i64 noundef 10) #10 ; 11 uses
  %i.xr = getelementptr i8, ptr %.0548, i64 8
  %i.xs = load i32, ptr %i.xr, align 4
  %i.xt = shl i32 %i.xs, 12                       ; 2 uses
  %i.xu = getelementptr i8, ptr %.0548, i64 20
  %i.xv = load i32, ptr %i.xu, align 4            ; 2 uses
  %i.xw = lshr i32 %i.xv, 8                       ; 2 uses
  %i.xx = or i32 %i.xw, %i.xt                     ; 2 uses
  %i.xy = lshr i32 %i.xt, 24
  %i.xz = trunc nuw i32 %i.xy to i8
  store i8 %i.xz, ptr %i.xq, align 1
  %i.ya = lshr i32 %i.xx, 16
  %i.yb = trunc i32 %i.ya to i8
  %i.yc = getelementptr i8, ptr %i.xq, i64 1
  store i8 %i.yb, ptr %i.yc, align 1
  %i.yd = lshr i32 %i.xx, 8
  %i.ye = trunc i32 %i.yd to i8
  %i.yf = getelementptr i8, ptr %i.xq, i64 2
  store i8 %i.ye, ptr %i.yf, align 1
  %i.yg = trunc i32 %i.xw to i8
  %i.yh = getelementptr i8, ptr %i.xq, i64 3
  store i8 %i.yg, ptr %i.yh, align 1
  %i.yi = getelementptr i8, ptr %i.xq, i64 4
  %i.yj = shl i32 %i.xv, 24
  %i.yk = getelementptr i8, ptr %.0548, i64 32
  %i.yl = load i32, ptr %i.yk, align 4
  %i.ym = shl i32 %i.yl, 4                        ; 2 uses
  %i.yn = or i32 %i.ym, %i.yj                     ; 2 uses
  %i.yo = getelementptr i8, ptr %.0548, i64 44
  %i.yp = load i32, ptr %i.yo, align 4            ; 3 uses
  %i.yq = lshr i32 %i.yp, 16
  %i.yr = or i32 %i.yn, %i.yq                     ; 2 uses
  %i.ys = lshr i32 %i.yn, 24
  %i.yt = trunc nuw i32 %i.ys to i8
  store i8 %i.yt, ptr %i.yi, align 1
  %i.yu = lshr i32 %i.ym, 16
  %i.yv = trunc i32 %i.yu to i8
  %i.yw = getelementptr i8, ptr %i.xq, i64 5
  store i8 %i.yv, ptr %i.yw, align 1
  %i.yx = lshr i32 %i.yr, 8
  %i.yy = trunc i32 %i.yx to i8
  %i.yz = getelementptr i8, ptr %i.xq, i64 6
  store i8 %i.yy, ptr %i.yz, align 1
  %i.za = trunc i32 %i.yr to i8
  %i.zb = getelementptr i8, ptr %i.xq, i64 7
  store i8 %i.za, ptr %i.zb, align 1
  %i.zc = getelementptr i8, ptr %i.xq, i64 8
  %i.zd = lshr i32 %i.yp, 8
  %i.ze = trunc i32 %i.zd to i8
  store i8 %i.ze, ptr %i.zc, align 1
  %i.zf = trunc i32 %i.yp to i8
  %i.zg = getelementptr i8, ptr %i.xq, i64 9
  store i8 %i.zf, ptr %i.zg, align 1
  %i.zh = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.xq, i32 noundef 10, i32 noundef 10) ; 4 uses
  %i.zi = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.zh, ptr noundef @.str.369) ; 0 uses
  %i.zj = load i32, ptr @ett_ubx_gal_inav_sar_rlm, align 4
  %i.zk = call ptr @proto_tree_add_subtree(ptr noundef %i.va, ptr noundef %i.zh, i32 noundef 0, i32 noundef 10, i32 noundef %i.zj, ptr noundef null, ptr noundef @.str.370) ; 2 uses
  %i.zl = load i32, ptr @hf_ubx_gal_inav_sar_beacon_id, align 4
  %i.zm = call ptr @proto_tree_add_item(ptr noundef %i.zk, i32 noundef %i.zl, ptr noundef %i.zh, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.zn = load i32, ptr @hf_ubx_gal_inav_sar_msg_code, align 4
  %i.zo = call ptr @proto_tree_add_item(ptr noundef %i.zk, i32 noundef %i.zn, ptr noundef %i.zh, i32 noundef 6, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %.thread593

.thread593:                                       ; preds = %.preheader, %bb.bj, %bb.bk, %bb.bn, %bb.bo, %bb.be, %bb.ba, %bb.bd, %73, %bb.bp, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.bq

bb.bq:                                            ; preds = %.thread593, %.critedge
  %i.zp = load i32, ptr @hf_ubx_gal_inav_spare, align 4
  %i.zq = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.zp, ptr noundef %0, i32 noundef 26, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.d, %bb.bq, %bb.e
  %i.zr = load i32, ptr @hf_ubx_gal_inav_crc, align 4
  %i.zs = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.zr, ptr noundef %0, i32 noundef 26, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zt = load i32, ptr @hf_ubx_gal_inav_ssp, align 4
  %i.zu = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.zt, ptr noundef %0, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.zv = load i32, ptr @hf_ubx_gal_inav_tail, align 4
  %i.zw = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.zv, ptr noundef %0, i32 noundef 30, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zx = load i32, ptr @hf_ubx_gal_inav_pad, align 4
  %i.zy = call ptr @proto_tree_add_item(ptr noundef %i.v, i32 noundef %i.zx, ptr noundef %0, i32 noundef 31, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.zz = load i32, ptr %i.d, align 4
  %i.aaa = icmp eq i32 %i.zz, 0
  %i.aab = load i32, ptr %i.e, align 4
  %i.aac = icmp eq i32 %i.aab, 0
  %or.cond27 = select i1 %i.aaa, i1 %i.aac, i1 false
  br i1 %or.cond27, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.aad = getelementptr i8, ptr %1, i64 416
  %i.aae = load ptr, ptr %i.aad, align 8
  %i.aaf = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.aae, i64 noundef 16) #10 ; 17 uses
  %i.aag = getelementptr i8, ptr %i.aaf, i64 14
  %i.aah = load i64, ptr %i.n, align 8            ; 2 uses
  %i.aai = lshr i64 %i.aah, 8
  %i.aaj = trunc i64 %i.aai to i8
  store i8 %i.aaj, ptr %i.aag, align 1
  %i.aak = trunc i64 %i.aah to i8
  %i.aal = getelementptr i8, ptr %i.aaf, i64 15
  store i8 %i.aak, ptr %i.aal, align 1
  %i.aam = getelementptr i8, ptr %i.aaf, i64 6
  %i.aan = load i64, ptr %i.m, align 8            ; 7 uses
  %i.aao = lshr i64 %i.aan, 48
  %i.aap = getelementptr i8, ptr %i.aaf, i64 7
  %i.aaq = lshr i64 %i.aan, 40
  %i.aar = trunc i64 %i.aaq to i8
  %i.aas = getelementptr i8, ptr %i.aaf, i64 8
  store i8 %i.aar, ptr %i.aas, align 1
  %i.aat = lshr i64 %i.aan, 32
  %i.aau = trunc i64 %i.aat to i8
  %i.aav = getelementptr i8, ptr %i.aaf, i64 9
  store i8 %i.aau, ptr %i.aav, align 1
  %i.aaw = lshr i64 %i.aan, 24
  %i.aax = trunc i64 %i.aaw to i8
  %i.aay = getelementptr i8, ptr %i.aaf, i64 10
  store i8 %i.aax, ptr %i.aay, align 1
  %i.aaz = lshr i64 %i.aan, 16
  %i.aba = trunc i64 %i.aaz to i8
  %i.abb = getelementptr i8, ptr %i.aaf, i64 11
  store i8 %i.aba, ptr %i.abb, align 1
  %i.abc = lshr i64 %i.aan, 8
  %i.abd = trunc i64 %i.abc to i8
  %i.abe = getelementptr i8, ptr %i.aaf, i64 12
  store i8 %i.abd, ptr %i.abe, align 1
  %i.abf = trunc i64 %i.aan to i8
  %i.abg = getelementptr i8, ptr %i.aaf, i64 13
  store i8 %i.abf, ptr %i.abg, align 1
  %i.abh = load i32, ptr %i.c, align 4
  %i.abi = zext i32 %i.abh to i64
  %i.abj = shl i64 %i.abi, 58
  %i.abk = load i64, ptr %i.l, align 8
  %i.abl = shl i64 %i.abk, 2                      ; 6 uses
  %i.abm = or i64 %i.abj, %i.abl                  ; 2 uses
  %i.abn = or i64 %i.abm, %i.aao                  ; 2 uses
  %i.abo = lshr i64 %i.abm, 56
  %i.abp = trunc nuw i64 %i.abo to i8
  store i8 %i.abp, ptr %i.aaf, align 1
  %i.abq = lshr i64 %i.abl, 48
  %i.abr = trunc i64 %i.abq to i8
  %i.abs = getelementptr i8, ptr %i.aaf, i64 1
  store i8 %i.abr, ptr %i.abs, align 1
  %i.abt = lshr i64 %i.abl, 40
  %i.abu = trunc i64 %i.abt to i8
  %i.abv = getelementptr i8, ptr %i.aaf, i64 2
  store i8 %i.abu, ptr %i.abv, align 1
  %i.abw = lshr i64 %i.abl, 32
  %i.abx = trunc i64 %i.abw to i8
  %i.aby = getelementptr i8, ptr %i.aaf, i64 3
  store i8 %i.abx, ptr %i.aby, align 1
  %i.abz = lshr i64 %i.abl, 24
  %i.aca = trunc i64 %i.abz to i8
  %i.acb = getelementptr i8, ptr %i.aaf, i64 4
  store i8 %i.aca, ptr %i.acb, align 1
  %i.acc = lshr i64 %i.abl, 16
  %i.acd = trunc i64 %i.acc to i8
  %i.ace = getelementptr i8, ptr %i.aaf, i64 5
  store i8 %i.acd, ptr %i.ace, align 1
  %i.acf = lshr i64 %i.abn, 8
  %i.acg = trunc i64 %i.acf to i8
  store i8 %i.acg, ptr %i.aam, align 1
  %i.ach = trunc i64 %i.abn to i8
  store i8 %i.ach, ptr %i.aap, align 1
  %i.aci = call ptr @tvb_new_child_real_data(ptr noundef %0, ptr noundef %i.aaf, i32 noundef 16, i32 noundef 16) ; 3 uses
  %i.acj = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.aci, ptr noundef @.str.279) ; 0 uses
  %i.ack = load ptr, ptr @ubx_gal_inav_word_dissector_table, align 8
  %i.acl = load i32, ptr %i.c, align 4
  %i.acm = call i32 @dissector_try_uint(ptr noundef %i.ack, i32 noundef %i.acl, ptr noundef %i.aci, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.acm, 0
  br i1 %.not, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.acn = call i32 @call_data_dissector(ptr noundef %i.aci, ptr noundef %1, ptr noundef %2) ; 0 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.br
  %i.aco = call i32 @tvb_captured_length(ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.aco
}

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ubx_gal_inav() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.b = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_gal_inav, i32 noundef %i.a)
  tail call void @dissector_add_uint(ptr noundef @.str.280, i32 noundef 2, ptr noundef %i.b)
  %i.c = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.d = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_gal_inav_word0, i32 noundef %i.c)
  tail call void @dissector_add_uint(ptr noundef @.str.278, i32 noundef 0, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.f = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_gal_inav_word1, i32 noundef %i.e)
  tail call void @dissector_add_uint(ptr noundef @.str.278, i32 noundef 1, ptr noundef %i.f)
  %i.g = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.h = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_gal_inav_word2, i32 noundef %i.g)
  tail call void @dissector_add_uint(ptr noundef @.str.278, i32 noundef 2, ptr noundef %i.h)
  %i.i = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.j = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_gal_inav_word3, i32 noundef %i.i)
  tail call void @dissector_add_uint(ptr noundef @.str.278, i32 noundef 3, ptr noundef %i.j)
  %i.k = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.l = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_gal_inav_word4, i32 noundef %i.k)
  tail call void @dissector_add_uint(ptr noundef @.str.278, i32 noundef 4, ptr noundef %i.l)
  %i.m = load i32, ptr @proto_ubx_gal_inav, align 4
  %i.n = tail call ptr @create_dissector_handle(ptr noundef @dissect_ubx_gal_inav_word6, i32 noundef %i.m)
  tail call void @dissector_add_uint(ptr noundef @.str.278, i32 noundef 6, ptr noundef %i.n)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @create_dissector_handle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.184)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word0, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word0, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 5 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word0_time, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word0_spare, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 1, i32 noundef 11, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word0_wn, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word0_tow, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.q
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.193)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word1, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word1, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 7 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
end_hunk_0
begin_hunk_1_@dissect_ubx_gal_inav_word3:bb.a
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word3, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 9 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word3_iodnav, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word3_omega_rate, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word3_delta_n, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 5, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word3_c_uc, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ubx_gal_inav_word3_c_us, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ubx_gal_inav_word3_c_rc, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef 11, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_ubx_gal_inav_word3_c_rs, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef %0, i32 noundef 13, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ubx_gal_inav_word3_sisa_e1_e5b, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.y = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.y
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word4(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.235)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word4, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word4, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 10 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word4_iodnav, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word4_svid, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word4_c_ic, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 2, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word4_c_is, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ubx_gal_inav_word4_t_0c, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef 6, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ubx_gal_inav_word4_a_f0, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef 8, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_ubx_gal_inav_word4_a_f1, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ubx_gal_inav_word4_a_f2, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ubx_gal_inav_word4_spare, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.y, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aa = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.aa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @dissect_ubx_gal_inav_word6(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @col_append_str(ptr noundef %i.b, i32 noundef 25, ptr noundef @.str.253)
  %i.c = load i32, ptr @hf_ubx_gal_inav_word6, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.e = load i32, ptr @ett_ubx_gal_inav_word6, align 4
  %i.f = tail call ptr @proto_item_add_subtree(ptr noundef %i.d, i32 noundef %i.e) ; 11 uses
  %i.g = load i32, ptr @hf_ubx_gal_inav_word_type, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.g, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.i = load i32, ptr @hf_ubx_gal_inav_word6_a0, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.i, ptr noundef %0, i32 noundef 0, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.k = load i32, ptr @hf_ubx_gal_inav_word6_a1, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.k, ptr noundef %0, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = load i32, ptr @hf_ubx_gal_inav_word6_delta_t_ls, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.m, ptr noundef %0, i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.o = load i32, ptr @hf_ubx_gal_inav_word6_t_0t, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.o, ptr noundef %0, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.q = load i32, ptr @hf_ubx_gal_inav_word6_wn_0t, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.q, ptr noundef %0, i32 noundef 9, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.s = load i32, ptr @hf_ubx_gal_inav_word6_wn_lsf, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.s, ptr noundef %0, i32 noundef 10, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.u = load i32, ptr @hf_ubx_gal_inav_word6_dn, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.u, ptr noundef %0, i32 noundef 11, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.w = load i32, ptr @hf_ubx_gal_inav_word6_delta_t_lsf, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.w, ptr noundef %0, i32 noundef 12, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr @hf_ubx_gal_inav_word6_tow, align 4
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.y, ptr noundef %0, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aa = load i32, ptr @hf_ubx_gal_inav_word6_spare, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.f, i32 noundef %i.aa, ptr noundef %0, i32 noundef 15, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ac = tail call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.ac
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint64(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare ptr @find_conversation_full(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_new_full(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @dissector_try_uint(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @call_data_dissector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

attributes #0 = { nofree null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, i1 true, !"memcpy.inline"}
!7 = distinct !{!7, !6, !"memcpy.inline: argument 1"}
!8 = distinct !{!8, !6, !"memcpy.inline: argument 0"}
!9 = distinct !{!9, !13}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!8, !7}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_1
