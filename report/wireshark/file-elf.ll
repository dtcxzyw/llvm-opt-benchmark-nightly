Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/file-elf?download=true
inline.NumInlined: 58
inline.NumDeleted: 10
begin_hunk_0_@dissect_elf:bb.a
  %.not926 = icmp eq i16 %i.iz, 0
  br i1 %.not926, label %value_guard.exit951, label %bb.ar, !llvm.loop !7

value_guard.exit951:                              ; preds = %bb.bc
  %.pre = load i32, ptr %i.s, align 4             ; 2 uses
  %i.kb = and i32 %.pre, 65535
  %.not9271102 = icmp eq i32 %i.kb, 0
  br i1 %.not9271102, label %._crit_edge, label %.lr.ph1106

.lr.ph1106:                                       ; preds = %value_guard.exit951
  %invariant.op1100 = add nuw nsw i64 %.0897, 8
  %i.kc = shl nuw i32 %.0899, 1
  %i.kd = sext i32 %i.kc to i64
  %.reass1101 = add nsw i64 %invariant.op1100, %i.kd
  %i.ke = icmp eq i32 %.0899, 8                   ; 2 uses
  %or.cond13 = and i1 %i.ke, %i.aq
  %spec.select942.v = select i1 %or.cond13, i32 12, i32 8
  %or.cond15 = and i1 %i.ke, %i.ar
  %.8.v = select i1 %or.cond15, i32 8, i32 4
  %i.kf = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.kg = trunc i32 %.0899 to i8                  ; 3 uses
  %i.kh = and i32 %.pre, 65535
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1106, %.loopexit
  %indvars.iv1154.a = phi i32 [ %i.kh, %.lr.ph1106 ], [ %i.ki, %.loopexit ] ; 2 uses
  %.48791105 = phi i32 [ %.2877.lcssa, %.lr.ph1106 ], [ %.5880, %.loopexit ] ; 3 uses
  %.28841104 = phi i64 [ %.0882.lcssa, %.lr.ph1106 ], [ %.3885, %.loopexit ] ; 2 uses
  %.61103 = phi i32 [ %i.dp, %.lr.ph1106 ], [ %i.og, %.loopexit ] ; 4 uses
  %i.ki = add nsw i32 %indvars.iv1154.a, -1       ; 2 uses
  %i.kj = load i32, ptr @ett_elf_section_header_entry, align 4
  %i.kk = load i32, ptr %i.s, align 4
  %i.kl = sub i32 %i.kk, %indvars.iv1154.a
  %i.km = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.dt, ptr noundef %0, i32 noundef %.61103, i32 noundef %i.cx, i32 noundef %i.kj, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.661, i32 noundef %i.kl) ; 24 uses
  %i.kn = load i32, ptr @hf_elf_sh_name, align 4
  %i.ko = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.km, i32 noundef %i.kn, ptr noundef %0, i32 noundef %.61103, i32 noundef 4, i32 noundef %.0900, ptr noundef nonnull %i.u) ; 0 uses
  %i.kp = add i32 %.61103, 4                      ; 2 uses
  %i.kq = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.kp, i32 noundef %.0900) ; 11 uses
  %i.kr = and i32 %i.kq, -268435456
  %or.cond9 = icmp eq i32 %i.kr, 1610612736
  br i1 %or.cond9, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ks = load ptr, ptr %i.j, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.ks, ptr noundef nonnull @.str.662, i32 noundef %i.kq)
  br label %bb.bk

bb.bf:                                            ; preds = %bb.bd
  %or.cond11 = icmp sgt i32 %i.kq, 1879048191
  br i1 %or.cond11, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kt = load ptr, ptr %i.j, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kt, ptr noundef nonnull @.str.663, i32 noundef %i.kq)
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bf
  %i.ku = icmp slt i32 %i.kq, 0
  %i.kv = load ptr, ptr %i.j, align 8             ; 2 uses
  br i1 %i.ku, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kv, ptr noundef nonnull @.str.664, i32 noundef %i.kq)
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.kw = call ptr @rval_to_str_const(i32 noundef %i.kq, ptr noundef nonnull @sh_type_rvals, ptr noundef nonnull @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.kv, ptr noundef nonnull @.str.665, ptr noundef %i.kw)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bg, %bb.bj, %bb.bi, %bb.be
  %hf_elf_sh_type_processor_specific.sink = phi ptr [ @hf_elf_sh_type_processor_specific, %bb.bg ], [ @hf_elf_sh_type, %bb.bj ], [ @hf_elf_sh_type_user_specific, %bb.bi ], [ @hf_elf_sh_type_operating_system_specific, %bb.be ]
  %i.kx = load i32, ptr %hf_elf_sh_type_processor_specific.sink, align 4
  %i.ky = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.kx, ptr noundef %0, i32 noundef %i.kp, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.kz = load i32, ptr %i.t, align 4
  %i.la = mul i32 %i.kz, %i.cx
  %i.lb = zext i32 %i.la to i64
  %i.lc = add nsw i64 %.reass1101, %i.lb          ; 3 uses
  %i.ld = icmp ult i64 %i.lc, 2147483648          ; 2 uses
  br i1 %i.bg, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.ld, label %value_guard.exit952, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit952:                              ; preds = %bb.bl
  %i.le = trunc nuw nsw i64 %i.lc to i32
  %i.lf = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.le, i32 noundef %.0900)
  %i.lg = zext i32 %i.lf to i64
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bk
  br i1 %i.ld, label %value_guard.exit953, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit953:                              ; preds = %bb.bn
  %i.lh = trunc nuw nsw i64 %i.lc to i32
  %i.li = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.lh, i32 noundef %.0900)
  br label %bb.bp

bb.bp:                                            ; preds = %value_guard.exit953, %value_guard.exit952
  %.1893 = phi i64 [ %i.lg, %value_guard.exit952 ], [ %i.li, %value_guard.exit953 ] ; 3 uses
  %i.lj = load i32, ptr %i.u, align 4
  %i.lk = zext i32 %i.lj to i64
  %i.ll = add i64 %.1893, %i.lk                   ; 2 uses
  %i.lm = icmp ult i64 %i.ll, 2147483648
  br i1 %i.lm, label %value_guard.exit954, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit954:                              ; preds = %bb.bp
  %i.ln = load ptr, ptr %i.eb, align 8
  %i.lo = trunc nuw nsw i64 %i.ll to i32
  %i.lp = call ptr @tvb_get_stringz_enc(ptr noundef %i.ln, ptr noundef %0, i32 noundef %i.lo, ptr noundef null, i32 noundef 0) ; 5 uses
  %.not931 = icmp eq ptr %i.lp, null
  br i1 %.not931, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %value_guard.exit954
  %i.lq = load ptr, ptr %i.j, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.lq, ptr noundef nonnull @.str.666, ptr noundef nonnull %i.lp)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %value_guard.exit954
  %spec.select942 = add i32 %.61103, %spec.select942.v ; 15 uses
  %i.lr = load i32, ptr @hf_elf_sh_flags_processor_specific, align 4
  %i.ls = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.lr, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.lt = load i32, ptr @hf_elf_sh_flags_operating_system_specific, align 4
  %i.lu = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.lt, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.lv = load i32, ptr @hf_elf_sh_flags_reserved, align 4
  %i.lw = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.lv, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.lx = load i32, ptr @hf_elf_sh_flags_tls, align 4
  %i.ly = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.lx, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.lz = load i32, ptr @hf_elf_sh_flags_group, align 4
  %i.ma = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.lz, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.mb = load i32, ptr @hf_elf_sh_flags_os_nonconforming, align 4
  %i.mc = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.mb, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.md = load i32, ptr @hf_elf_sh_flags_link_order, align 4
  %i.me = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.md, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.mf = load i32, ptr @hf_elf_sh_flags_info_link, align 4
  %i.mg = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.mf, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.mh = load i32, ptr @hf_elf_sh_flags_strings, align 4
  %i.mi = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.mh, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.mj = load i32, ptr @hf_elf_sh_flags_merge, align 4
  %i.mk = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.mj, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.ml = load i32, ptr @hf_elf_sh_flags_reserved_8, align 4
  %i.mm = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.ml, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.mn = load i32, ptr @hf_elf_sh_flags_exec_instr, align 4
  %i.mo = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.mn, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.mp = load i32, ptr @hf_elf_sh_flags_alloc, align 4
  %i.mq = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.mp, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.mr = load i32, ptr @hf_elf_sh_flags_write, align 4
  %i.ms = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.mr, ptr noundef %0, i32 noundef %spec.select942, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %.8 = add i32 %spec.select942, %.8.v            ; 2 uses
  %i.mt = load i32, ptr @hf_elf_sh_addr, align 4
  %i.mu = load i32, ptr @hf_elf64_sh_addr, align 4
  %i.mv = select i1 %i.bg, i32 %i.mt, i32 %i.mu
  %i.mw = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.mv, ptr noundef %0, i32 noundef %.8, i32 noundef %.0899, i32 noundef %.0900) ; 0 uses
  %i.mx = add i32 %.8, %.0899                     ; 4 uses
  %i.my = load i32, ptr @hf_elf_sh_offset, align 4
  %i.mz = load i32, ptr @hf_elf64_sh_offset, align 4
  %i.na = select i1 %i.bg, i32 %i.my, i32 %i.mz
  %i.nb = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.na, ptr noundef %0, i32 noundef %i.mx, i32 noundef %.0899, i32 noundef %.0900) ; 0 uses
  br i1 %i.bg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nc = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.mx, i32 noundef %.0900)
  %i.nd = zext i32 %i.nc to i64
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.ne = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.mx, i32 noundef %.0900)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.1891 = phi i64 [ %i.nd, %bb.bt ], [ %i.ne, %bb.bu ] ; 8 uses
  %i.nf = add i32 %i.mx, %.0899                   ; 4 uses
  %i.ng = load i32, ptr @hf_elf_sh_size, align 4
  %i.nh = load i32, ptr @hf_elf64_sh_size, align 4
  %i.ni = select i1 %i.bg, i32 %i.ng, i32 %i.nh
  %i.nj = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.ni, ptr noundef %0, i32 noundef %i.nf, i32 noundef %.0899, i32 noundef %.0900) ; 0 uses
  br i1 %i.bg, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nk = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.nf, i32 noundef %.0900)
  %i.nl = zext i32 %i.nk to i64
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.nm = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.nf, i32 noundef %.0900)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.1889 = phi i64 [ %i.nl, %bb.bw ], [ %i.nm, %bb.bx ]
  %5 = freeze i64 %.1889                          ; 14 uses
  %i.nn = add i32 %i.nf, %.0899                   ; 3 uses
  %i.no = load i32, ptr @hf_elf_sh_link, align 4
  %i.np = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.no, ptr noundef %0, i32 noundef %i.nn, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.nq = add i32 %i.nn, 4
  %i.nr = load i32, ptr @hf_elf_sh_info, align 4
  %i.ns = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.nr, ptr noundef %0, i32 noundef %i.nq, i32 noundef 4, i32 noundef %.0900) ; 0 uses
  %i.nt = add i32 %i.nn, 8                        ; 2 uses
  %i.nu = load i32, ptr @hf_elf_sh_addralign, align 4
  %i.nv = load i32, ptr @hf_elf64_sh_addralign, align 4
  %i.nw = select i1 %i.bg, i32 %i.nu, i32 %i.nv
  %i.nx = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.nw, ptr noundef %0, i32 noundef %i.nt, i32 noundef %.0899, i32 noundef %.0900) ; 0 uses
  %i.ny = add i32 %i.nt, %.0899                   ; 4 uses
  %i.nz = load i32, ptr @hf_elf_sh_entsize, align 4
  %i.oa = load i32, ptr @hf_elf64_sh_entsize, align 4
  %i.ob = select i1 %i.bg, i32 %i.nz, i32 %i.oa
  %i.oc = call ptr @proto_tree_add_item(ptr noundef %i.km, i32 noundef %i.ob, ptr noundef %0, i32 noundef %i.ny, i32 noundef %.0899, i32 noundef %.0900) ; 0 uses
  br i1 %i.bg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.od = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.ny, i32 noundef %.0900)
  %i.oe = zext i32 %i.od to i64
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.of = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.ny, i32 noundef %.0900)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.0867 = phi i64 [ %i.oe, %bb.bz ], [ %i.of, %bb.ca ] ; 13 uses
  %i.og = add i32 %i.ny, %.0899
  %i.oh = icmp ne i64 %5, 0
  %i.oi = icmp ne i32 %i.kq, 8
  %or.cond17 = and i1 %i.oi, %i.oh
  br i1 %or.cond17, label %bb.cc, label %.loopexit

bb.cc:                                            ; preds = %bb.cb
  %i.oj = add i64 %5, %.28841104                  ; 12 uses
  %i.ok = zext i32 %.48791105 to i64
  %i.ol = getelementptr [24 x i8], ptr %i.eh, i64 %i.ok ; 3 uses
  store i64 %.1891, ptr %i.ol, align 8
  %i.om = getelementptr i8, ptr %i.ol, i64 8
  store i64 %5, ptr %i.om, align 8
  %i.on = getelementptr i8, ptr %i.ol, i64 16
  store ptr %i.lp, ptr %i.on, align 8
  %i.oo = add i32 %.48791105, 1                   ; 12 uses
  %i.op = icmp ult i64 %.1891, 2147483648
  br i1 %i.op, label %value_guard.exit955, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit955:                              ; preds = %bb.cc
  %i.oq = trunc nuw nsw i64 %.1891 to i32         ; 15 uses
  %i.or = icmp ult i64 %5, 2147483648
  br i1 %i.or, label %value_guard.exit956, label %bb.ce

bb.ce:                                            ; preds = %value_guard.exit955
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit956:                              ; preds = %value_guard.exit955
  %i.os = trunc nuw nsw i64 %5 to i32             ; 4 uses
  %i.ot = load i32, ptr @ett_elf_segment, align 4
  %i.ou = call ptr @proto_tree_add_subtree(ptr noundef %i.km, ptr noundef %0, i32 noundef %i.oq, i32 noundef %i.os, i32 noundef %i.ot, ptr noundef nonnull %i.k, ptr noundef nonnull @.str.14) ; 13 uses
  %i.ov = call i32 @g_strcmp0(ptr noundef %i.lp, ptr noundef nonnull @.str.667)
  %i.ow = icmp eq i32 %i.ov, 0
  br i1 %i.ow, label %.lr.ph.i, label %bb.da

.lr.ph.i:                                         ; preds = %value_guard.exit956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store ptr null, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  br label %bb.cf

value_guard.exit165.i:                            ; preds = %value_guard.exit164.i
  %i.ox = icmp slt i32 %i.qr, %i.os
  br i1 %i.ox, label %bb.cf, label %._crit_edge.i, !llvm.loop !8

bb.cf:                                            ; preds = %value_guard.exit165.i, %.lr.ph.i
  %.0185.i = phi i32 [ 0, %.lr.ph.i ], [ %.1233.i, %value_guard.exit165.i ] ; 2 uses
  %.0140184.i = phi i32 [ 0, %.lr.ph.i ], [ %.1141231.i, %value_guard.exit165.i ] ; 4 uses
  %.0142183.i = phi ptr [ @.str.683, %.lr.ph.i ], [ %.1143.i, %value_guard.exit165.i ]
  %.0144182.i = phi i32 [ 0, %.lr.ph.i ], [ %.1145229.i, %value_guard.exit165.i ] ; 2 uses
  %.0152181.i = phi ptr [ null, %.lr.ph.i ], [ %.1153225.i, %value_guard.exit165.i ] ; 3 uses
  %.0155180.i = phi i32 [ %i.oq, %.lr.ph.i ], [ %i.qg, %value_guard.exit165.i ] ; 13 uses
  %i.oy = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.0155180.i, i32 noundef range(i32 -2147483648, 1) %.0900) ; 2 uses
  %i.oz = zext i32 %i.oy to i64
  %i.pa = icmp eq i32 %i.oy, -1                   ; 2 uses
  br i1 %i.pa, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.pb = add nuw i32 %.0155180.i, 4
  %i.pc = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.pb, i32 noundef range(i32 -2147483648, 1) %.0900)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.pd = phi i32 [ 12, %bb.cg ], [ 4, %bb.cf ]   ; 4 uses
  %.0148.i = phi i64 [ %i.pc, %bb.cg ], [ %i.oz, %bb.cf ] ; 3 uses
  %i.pe = icmp eq i64 %.0148.i, 0                 ; 2 uses
  br i1 %i.pe, label %.thread217.i, label %.thread.i

.thread.i:                                        ; preds = %bb.ch
  %i.pf = add nuw i32 %i.pd, %.0155180.i
  %i.pg = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.pf)
  %.fr.i = freeze i32 %i.pg
  %i.ph = icmp eq i32 %.fr.i, 0                   ; 3 uses
  %i.pi = zext nneg i32 %i.pd to i64
  %i.pj = add i64 %.0148.i, %i.pi                 ; 2 uses
  %i.pk = icmp ult i64 %i.pj, 2147483648
  br i1 %i.pk, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.thread.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

.thread217.i:                                     ; preds = %bb.ch
  %i.pl = load i32, ptr @ett_elf_cie_terminator, align 4
  %i.pm = call ptr @proto_tree_add_subtree(ptr noundef %i.ou, ptr noundef %0, i32 noundef %.0155180.i, i32 noundef %i.pd, i32 noundef %i.pl, ptr noundef null, ptr noundef nonnull @.str.684)
  %i.pn = add nuw i32 %i.pd, %.0155180.i
  %i.po = load i32, ptr @hf_elf_eh_frame_length, align 4
  br label %bb.cl

bb.cj:                                            ; preds = %.thread.i
  %i.pp = trunc nuw nsw i64 %i.pj to i32          ; 7 uses
  %i.pq = icmp eq i32 %.0140184.i, 0
  %or.cond.i = or i1 %i.pq, %i.ph
  br i1 %or.cond.i, label %bb.ck, label %.thread235.i

.thread235.i:                                     ; preds = %bb.cj
  %i.pr = add i32 %.0185.i, 1                     ; 2 uses
  %i.ps = add i32 %.0144182.i, %i.pp              ; 2 uses
  %i.pt = load ptr, ptr %i.f, align 8
  call void @proto_item_set_len(ptr noundef %i.pt, i32 noundef %i.ps)
  %i.pu = load i32, ptr @ett_elf_fde_entry, align 4
  %i.pv = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0152181.i, ptr noundef %0, i32 noundef %.0155180.i, i32 noundef %i.pp, i32 noundef %i.pu, ptr noundef null, ptr noundef nonnull @.str.687, i32 noundef %i.pr)
  %i.pw = add nuw i32 %.0155180.i, %i.pp
  %i.px = load i32, ptr @hf_elf_eh_frame_fde_length, align 4
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.py = add i32 %.0140184.i, 1                  ; 2 uses
  %i.pz = load i32, ptr @ett_elf_cfi_record, align 4
  %i.qa = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ou, ptr noundef %0, i32 noundef %.0155180.i, i32 noundef %i.pp, i32 noundef %i.pz, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.685, i32 noundef %i.py) ; 2 uses
  %i.qb = load i32, ptr @ett_elf_cie_entry, align 4
  %i.qc = call ptr @proto_tree_add_subtree(ptr noundef %i.qa, ptr noundef %0, i32 noundef %.0155180.i, i32 noundef %i.pp, i32 noundef %i.qb, ptr noundef null, ptr noundef nonnull @.str.686)
  %i.qd = add nuw i32 %.0155180.i, %i.pp
  %i.qe = load i32, ptr @hf_elf_eh_frame_length, align 4
  %i.qf = load i32, ptr @hf_elf_eh_frame_fde_length, align 4
  %spec.select.i = select i1 %i.ph, i32 %i.qe, i32 %i.qf
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.thread235.i, %.thread217.i
  %i.qg = phi i32 [ %i.pw, %.thread235.i ], [ %i.qd, %bb.ck ], [ %i.pn, %.thread217.i ] ; 6 uses
  %.1233.i = phi i32 [ %i.pr, %.thread235.i ], [ 0, %bb.ck ], [ %.0185.i, %.thread217.i ]
  %.1141231.i = phi i32 [ %.0140184.i, %.thread235.i ], [ %i.py, %bb.ck ], [ %.0140184.i, %.thread217.i ]
  %.1145229.i = phi i32 [ %i.ps, %.thread235.i ], [ %i.pp, %bb.ck ], [ %.0144182.i, %.thread217.i ]
  %.0151227.i = phi ptr [ %i.pv, %.thread235.i ], [ %i.qc, %bb.ck ], [ %i.pm, %.thread217.i ] ; 13 uses
  %.1153225.i = phi ptr [ %.0152181.i, %.thread235.i ], [ %i.qa, %bb.ck ], [ %.0152181.i, %.thread217.i ]
  %i.qh = phi i1 [ false, %.thread235.i ], [ %i.ph, %bb.ck ], [ true, %.thread217.i ] ; 6 uses
  %i.qi = phi i32 [ %i.px, %.thread235.i ], [ %spec.select.i, %bb.ck ], [ %i.po, %.thread217.i ]
  %i.qj = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.qi, ptr noundef %0, i32 noundef %.0155180.i, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.qk = add nuw i32 %.0155180.i, 4              ; 2 uses
  br i1 %i.pa, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.ql = load i32, ptr @hf_elf_eh_frame_extended_length, align 4
  %i.qm = load i32, ptr @hf_elf_eh_frame_fde_extended_length, align 4
  %i.qn = select i1 %i.qh, i32 %i.ql, i32 %i.qm
  %i.qo = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.qn, ptr noundef %0, i32 noundef %i.qk, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.qp = add nuw i32 %.0155180.i, 12
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.1156.i = phi i32 [ %i.qp, %bb.cm ], [ %i.qk, %bb.cl ] ; 7 uses
  %.1150.i = phi ptr [ %i.qo, %bb.cm ], [ %i.qj, %bb.cl ]
  br i1 %i.pe, label %.._crit_edge.i_crit_edge, label %bb.co

.._crit_edge.i_crit_edge:                         ; preds = %bb.cn
  %.pre1173 = sub i32 %i.qg, %i.oq
  br label %._crit_edge.i

bb.co:                                            ; preds = %bb.cn
  %i.qq = icmp ult i64 %.0148.i, 12
  %i.qr = sub i32 %i.qg, %i.oq                    ; 3 uses
  %i.qs = icmp ugt i32 %i.qr, %i.os
  %or.cond161.i = select i1 %i.qq, i1 true, i1 %i.qs
  br i1 %or.cond161.i, label %dissect_eh_frame.exit.sink.split, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.qt = load i32, ptr @hf_elf_eh_frame_cie_id, align 4
  %i.qu = load i32, ptr @hf_elf_eh_frame_fde_cie_pointer, align 4
  %i.qv = select i1 %i.qh, i32 %i.qt, i32 %i.qu
  %i.qw = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.qv, ptr noundef %0, i32 noundef %.1156.i, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.qx = add nuw i32 %.1156.i, 4                 ; 2 uses
  br i1 %i.qh, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.qy = load i32, ptr @hf_elf_eh_frame_version, align 4
  %i.qz = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.qy, ptr noundef %0, i32 noundef %i.qx, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.ra = add nuw i32 %.1156.i, 5                 ; 3 uses
  %i.rb = load ptr, ptr %i.eb, align 8
  %i.rc = call ptr @tvb_get_stringz_enc(ptr noundef %i.rb, ptr noundef %0, i32 noundef %i.ra, ptr noundef nonnull %i.h, i32 noundef 0)
  %i.rd = load i32, ptr @hf_elf_eh_frame_augmentation_string, align 4
  %i.re = load i32, ptr %i.h, align 4
  %i.rf = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.rd, ptr noundef %0, i32 noundef %i.ra, i32 noundef %i.re, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.rg = load i32, ptr %i.h, align 4
  %i.rh = add i32 %i.rg, %i.ra                    ; 2 uses
  %i.ri = load i32, ptr @hf_elf_eh_frame_code_alignment_factor, align 4
  %i.rj = call ptr @proto_tree_add_item_ret_length(ptr noundef %.0151227.i, i32 noundef %i.ri, ptr noundef %0, i32 noundef %i.rh, i32 noundef -1, i32 noundef -2147483646, ptr noundef nonnull %i.h) ; 0 uses
  %i.rk = load i32, ptr %i.h, align 4
  %i.rl = add i32 %i.rk, %i.rh                    ; 4 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cr, %bb.cq
  %.0167.i = phi i64 [ 0, %bb.cq ], [ %i.rs, %bb.cr ]
  %indvars.iv.i.i = phi i64 [ 0, %bb.cq ], [ %indvars.iv.next.i.i, %bb.cr ] ; 4 uses
  %.016.i.i = phi i32 [ %i.rl, %bb.cq ], [ %i.rn, %bb.cr ] ; 2 uses
  %i.rm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.016.i.i) ; 2 uses
  %i.rn = add i32 %.016.i.i, 1                    ; 2 uses
  %i.ro = zext i8 %i.rm to i32                    ; 2 uses
  %i.rp = and i32 %i.ro, 127
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = shl i64 %i.rq, %indvars.iv.i.i
  %i.rs = or i64 %i.rr, %.0167.i                  ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 7
  %i.rt = icmp slt i8 %i.rm, 0
  %i.ru = icmp samesign ult i64 %indvars.iv.i.i, 57 ; 2 uses
  %i.rv = select i1 %i.rt, i1 %i.ru, i1 false
  br i1 %i.rv, label %bb.cr, label %dissect_leb128.exit.i, !llvm.loop !9

dissect_leb128.exit.i:                            ; preds = %bb.cr
  %i.rw = and i32 %i.ro, 64
  %.not.i.i = icmp ne i32 %i.rw, 0
  %or.cond.not.i.i = and i1 %i.ru, %.not.i.i
  %.neg.i.i = shl nsw i64 -128, %indvars.iv.i.i
  %i.rx = select i1 %or.cond.not.i.i, i64 %.neg.i.i, i64 0
  %.1168.i = or i64 %i.rs, %i.rx
  %i.ry = sub i32 %i.rn, %i.rl                    ; 2 uses
  store i32 %i.ry, ptr %i.h, align 4
  %i.rz = load i32, ptr @hf_elf_eh_frame_data_alignment_factor, align 4
  %i.sa = call ptr @proto_tree_add_int64(ptr noundef %.0151227.i, i32 noundef %i.rz, ptr noundef %0, i32 noundef %i.rl, i32 noundef %i.ry, i64 noundef %.1168.i) ; 0 uses
  %i.sb = load i32, ptr %i.h, align 4
  %i.sc = add i32 %i.sb, %i.rl                    ; 2 uses
  %i.sd = load i32, ptr @hf_elf_eh_frame_return_address_register, align 4
  %i.se = call ptr @proto_tree_add_item_ret_length(ptr noundef %.0151227.i, i32 noundef %i.sd, ptr noundef %0, i32 noundef %i.sc, i32 noundef -1, i32 noundef -2147483646, ptr noundef nonnull %i.h) ; 0 uses
  %i.sf = load i32, ptr %i.h, align 4
  %i.sg = add i32 %i.sf, %i.sc
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cp
  %i.sh = load i32, ptr @hf_elf_eh_frame_fde_pc_begin, align 4
  %i.si = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.sh, ptr noundef %0, i32 noundef %i.qx, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.sj = add nuw i32 %.1156.i, 8
  %i.sk = load i32, ptr @hf_elf_eh_frame_fde_pc_range, align 4
  %i.sl = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.sk, ptr noundef %0, i32 noundef %i.sj, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.sm = add nuw i32 %.1156.i, 12
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %dissect_leb128.exit.i
  %.2157.i = phi i32 [ %i.sg, %dissect_leb128.exit.i ], [ %i.sm, %bb.cs ] ; 3 uses
  %.1143.i = phi ptr [ %i.rc, %dissect_leb128.exit.i ], [ %.0142183.i, %bb.cs ] ; 2 uses
  %i.sn = load i8, ptr %.1143.i, align 1
  %i.so = icmp eq i8 %i.sn, 122
  br i1 %i.so, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.sp = load i32, ptr @hf_elf_eh_frame_augmentation_length, align 4
  %i.sq = load i32, ptr @hf_elf_eh_frame_fde_augmentation_length, align 4
  %i.sr = select i1 %i.qh, i32 %i.sp, i32 %i.sq
  %i.ss = call ptr @proto_tree_add_item_ret_varint(ptr noundef %.0151227.i, i32 noundef %i.sr, ptr noundef %0, i32 noundef %.2157.i, i32 noundef -1, i32 noundef -2147483646, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) ; 0 uses
  %i.st = load i32, ptr %i.h, align 4
  %i.su = add i32 %i.st, %.2157.i                 ; 2 uses
  %i.sv = load i64, ptr %i.g, align 8             ; 2 uses
  %i.sw = icmp ult i64 %i.sv, 2147483648
  br i1 %i.sw, label %value_guard.exit162.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit162.i:                            ; preds = %bb.cu
  %i.sx = load i32, ptr @hf_elf_eh_frame_augmentation_data, align 4
  %i.sy = load i32, ptr @hf_elf_eh_frame_fde_augmentation_data, align 4
  %i.sz = select i1 %i.qh, i32 %i.sx, i32 %i.sy
  %i.ta = trunc nuw nsw i64 %i.sv to i32
  %i.tb = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.sz, ptr noundef %0, i32 noundef %i.su, i32 noundef %i.ta, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.tc = load i64, ptr %i.g, align 8             ; 2 uses
  %i.td = icmp ult i64 %i.tc, 2147483648
  br i1 %i.td, label %value_guard.exit163.i, label %bb.cw

bb.cw:                                            ; preds = %value_guard.exit162.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit163.i:                            ; preds = %value_guard.exit162.i
  %i.te = trunc nuw nsw i64 %i.tc to i32
  %i.tf = add i32 %i.su, %i.te
  br label %bb.cx

bb.cx:                                            ; preds = %value_guard.exit163.i, %bb.ct
  %.3.i = phi i32 [ %i.tf, %value_guard.exit163.i ], [ %.2157.i, %bb.ct ] ; 2 uses
  %i.tg = sub i32 %i.qg, %.3.i                    ; 2 uses
  %i.th = icmp sgt i32 %i.tg, -1
  br i1 %i.th, label %value_guard.exit164.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit164.i:                            ; preds = %bb.cx
  %i.ti = load i32, ptr @hf_elf_eh_frame_initial_instructions, align 4
  %i.tj = load i32, ptr @hf_elf_eh_frame_fde_call_frame_instructions, align 4
  %i.tk = select i1 %i.qh, i32 %i.ti, i32 %i.tj
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %.0151227.i, i32 noundef %i.tk, ptr noundef %0, i32 noundef %.3.i, i32 noundef %i.tg, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.tm = icmp sgt i32 %i.qg, -1
  br i1 %i.tm, label %value_guard.exit165.i, label %bb.cz, !llvm.loop !8

bb.cz:                                            ; preds = %value_guard.exit164.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

._crit_edge.i:                                    ; preds = %value_guard.exit165.i, %.._crit_edge.i_crit_edge
  %.pre-phi1174 = phi i32 [ %.pre1173, %.._crit_edge.i_crit_edge ], [ %i.qr, %value_guard.exit165.i ]
  %.4.i = phi i32 [ %.1156.i, %.._crit_edge.i_crit_edge ], [ %i.qg, %value_guard.exit165.i ] ; 2 uses
  %.not.i = icmp eq i32 %.pre-phi1174, %i.os
  br i1 %.not.i, label %dissect_eh_frame.exit, label %dissect_eh_frame.exit.sink.split

dissect_eh_frame.exit.sink.split:                 ; preds = %bb.co, %._crit_edge.i
  %ei_invalid_cie_length.sink = phi ptr [ @ei_cfi_extraneous_data, %._crit_edge.i ], [ @ei_invalid_cie_length, %bb.co ]
  %.0154.i.ph = phi i32 [ %.4.i, %._crit_edge.i ], [ %.1156.i, %bb.co ]
  %i.tn = call ptr @expert_add_info(ptr noundef %1, ptr noundef %.1150.i, ptr noundef nonnull %ei_invalid_cie_length.sink) ; 0 uses
  br label %dissect_eh_frame.exit

dissect_eh_frame.exit:                            ; preds = %dissect_eh_frame.exit.sink.split, %._crit_edge.i
  %.0154.i = phi i32 [ %.4.i, %._crit_edge.i ], [ %.0154.i.ph, %dissect_eh_frame.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  %i.to = add nuw nsw i64 %5, %.1891
  %i.tp = trunc nuw i64 %i.to to i32
  %.not938 = icmp eq i32 %.0154.i, %i.tp
  br i1 %.not938, label %.loopexit, label %.loopexit.sink.split

bb.da:                                            ; preds = %value_guard.exit956
  %i.tq = call i32 @g_strcmp0(ptr noundef %i.lp, ptr noundef nonnull @.str.668)
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %value_guard.exit960, label %bb.ei

value_guard.exit960:                              ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ts = load i32, ptr @hf_elf_eh_frame_hdr_version, align 4
  %i.tt = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.ts, ptr noundef %0, i32 noundef range(i32 0, -2147483648) %i.oq, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.tu = add nuw i32 %i.oq, 1                    ; 5 uses
  %i.tv = load i32, ptr @hf_elf_eh_frame_hdr_exception_frame_pointer_encoding, align 4
  %i.tw = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.tv, ptr noundef %0, i32 noundef %i.tu, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.tx = load i32, ptr @ett_dwarf_encoding, align 4
  %i.ty = call ptr @proto_item_add_subtree(ptr noundef %i.tw, i32 noundef %i.tx) ; 3 uses
  %i.tz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.tu) ; 2 uses
  %i.ua = icmp eq i8 %i.tz, -1
  br i1 %i.ua, label %dissect_dwarf_encoding.exit.thread.i, label %dissect_dwarf_encoding.exit.i

dissect_dwarf_encoding.exit.thread.i:             ; preds = %value_guard.exit960
  %i.ub = load i32, ptr @hf_dwarf_omit, align 4
  %i.uc = call ptr @proto_tree_add_item(ptr noundef %i.ty, i32 noundef %i.ub, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.tu, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.dg

dissect_dwarf_encoding.exit.i:                    ; preds = %value_guard.exit960
  %i.ud = load i32, ptr @hf_dwarf_upper, align 4
  %i.ue = call ptr @proto_tree_add_item(ptr noundef %i.ty, i32 noundef %i.ud, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.tu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.uf = load i32, ptr @hf_dwarf_format, align 4
  %i.ug = call ptr @proto_tree_add_item(ptr noundef %i.ty, i32 noundef %i.uf, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.tu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.uh = and i8 %i.tz, 15
  switch i8 %i.uh, label %bb.dg [
    i8 0, label %bb.db
    i8 1, label %get_dwarf_extension_length.exit.i
    i8 2, label %bb.dc
    i8 3, label %bb.dd
    i8 4, label %bb.de
    i8 9, label %bb.df
    i8 10, label %bb.dc
    i8 11, label %bb.dd
    i8 12, label %bb.de
  ]

bb.db:                                            ; preds = %dissect_dwarf_encoding.exit.i
  br label %get_dwarf_extension_length.exit.i

bb.dc:                                            ; preds = %dissect_dwarf_encoding.exit.i, %dissect_dwarf_encoding.exit.i
  br label %get_dwarf_extension_length.exit.i

bb.dd:                                            ; preds = %dissect_dwarf_encoding.exit.i, %dissect_dwarf_encoding.exit.i
  br label %get_dwarf_extension_length.exit.i

bb.de:                                            ; preds = %dissect_dwarf_encoding.exit.i, %dissect_dwarf_encoding.exit.i
  br label %get_dwarf_extension_length.exit.i

bb.df:                                            ; preds = %dissect_dwarf_encoding.exit.i
  br label %get_dwarf_extension_length.exit.i

bb.dg:                                            ; preds = %dissect_dwarf_encoding.exit.i, %dissect_dwarf_encoding.exit.thread.i
  br label %get_dwarf_extension_length.exit.i

get_dwarf_extension_length.exit.i:                ; preds = %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %dissect_dwarf_encoding.exit.i
  %.0.i.i = phi i8 [ 0, %bb.dg ], [ %i.kg, %bb.db ], [ -2, %dissect_dwarf_encoding.exit.i ], [ 2, %bb.dc ], [ 4, %bb.dd ], [ 8, %bb.de ], [ -1, %bb.df ] ; 3 uses
  %i.ui = add nuw i32 %i.oq, 2                    ; 5 uses
  %i.uj = load i32, ptr @hf_elf_eh_frame_hdr_fde_count_encoding, align 4
  %i.uk = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.uj, ptr noundef %0, i32 noundef %i.ui, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.ul = load i32, ptr @ett_dwarf_encoding, align 4
  %i.um = call ptr @proto_item_add_subtree(ptr noundef %i.uk, i32 noundef %i.ul) ; 3 uses
  %i.un = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.ui) ; 2 uses
  %i.uo = icmp eq i8 %i.un, -1
  br i1 %i.uo, label %dissect_dwarf_encoding.exit111.thread.i, label %dissect_dwarf_encoding.exit111.i

dissect_dwarf_encoding.exit111.thread.i:          ; preds = %get_dwarf_extension_length.exit.i
  %i.up = load i32, ptr @hf_dwarf_omit, align 4
  %i.uq = call ptr @proto_tree_add_item(ptr noundef %i.um, i32 noundef %i.up, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.ui, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.dm

dissect_dwarf_encoding.exit111.i:                 ; preds = %get_dwarf_extension_length.exit.i
  %i.ur = load i32, ptr @hf_dwarf_upper, align 4
  %i.us = call ptr @proto_tree_add_item(ptr noundef %i.um, i32 noundef %i.ur, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.ui, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ut = load i32, ptr @hf_dwarf_format, align 4
  %i.uu = call ptr @proto_tree_add_item(ptr noundef %i.um, i32 noundef %i.ut, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.ui, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.uv = and i8 %i.un, 15
  switch i8 %i.uv, label %bb.dm [
    i8 0, label %bb.dh
    i8 1, label %get_dwarf_extension_length.exit113.i
    i8 2, label %bb.di
    i8 3, label %bb.dj
    i8 4, label %bb.dk
    i8 9, label %bb.dl
    i8 10, label %bb.di
    i8 11, label %bb.dj
    i8 12, label %bb.dk
  ]

bb.dh:                                            ; preds = %dissect_dwarf_encoding.exit111.i
  br label %get_dwarf_extension_length.exit113.i

bb.di:                                            ; preds = %dissect_dwarf_encoding.exit111.i, %dissect_dwarf_encoding.exit111.i
  br label %get_dwarf_extension_length.exit113.i

bb.dj:                                            ; preds = %dissect_dwarf_encoding.exit111.i, %dissect_dwarf_encoding.exit111.i
  br label %get_dwarf_extension_length.exit113.i

bb.dk:                                            ; preds = %dissect_dwarf_encoding.exit111.i, %dissect_dwarf_encoding.exit111.i
  br label %get_dwarf_extension_length.exit113.i

bb.dl:                                            ; preds = %dissect_dwarf_encoding.exit111.i
  br label %get_dwarf_extension_length.exit113.i

bb.dm:                                            ; preds = %dissect_dwarf_encoding.exit111.i, %dissect_dwarf_encoding.exit111.thread.i
  br label %get_dwarf_extension_length.exit113.i

get_dwarf_extension_length.exit113.i:             ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %dissect_dwarf_encoding.exit111.i
  %.0.i112.i = phi i8 [ 0, %bb.dm ], [ %i.kg, %bb.dh ], [ -2, %dissect_dwarf_encoding.exit111.i ], [ 2, %bb.di ], [ 4, %bb.dj ], [ 8, %bb.dk ], [ -1, %bb.dl ] ; 2 uses
  %i.uw = sext i8 %.0.i112.i to i32
  %i.ux = add nuw i32 %i.oq, 3                    ; 5 uses
  %i.uy = load i32, ptr @hf_elf_eh_frame_hdr_binary_search_table_encoding, align 4
  %i.uz = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.uy, ptr noundef %0, i32 noundef %i.ux, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.va = load i32, ptr @ett_dwarf_encoding, align 4
  %i.vb = call ptr @proto_item_add_subtree(ptr noundef %i.uz, i32 noundef %i.va) ; 3 uses
  %i.vc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.ux) ; 2 uses
  %i.vd = icmp eq i8 %i.vc, -1
  br i1 %i.vd, label %dissect_dwarf_encoding.exit115.thread.i, label %dissect_dwarf_encoding.exit115.i

dissect_dwarf_encoding.exit115.thread.i:          ; preds = %get_dwarf_extension_length.exit113.i
  %i.ve = load i32, ptr @hf_dwarf_omit, align 4
  %i.vf = call ptr @proto_tree_add_item(ptr noundef %i.vb, i32 noundef %i.ve, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.ux, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.ds

dissect_dwarf_encoding.exit115.i:                 ; preds = %get_dwarf_extension_length.exit113.i
  %i.vg = load i32, ptr @hf_dwarf_upper, align 4
  %i.vh = call ptr @proto_tree_add_item(ptr noundef %i.vb, i32 noundef %i.vg, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.ux, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vi = load i32, ptr @hf_dwarf_format, align 4
  %i.vj = call ptr @proto_tree_add_item(ptr noundef %i.vb, i32 noundef %i.vi, ptr noundef %0, i32 noundef range(i32 1, -2147483645) %i.ux, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.vk = and i8 %i.vc, 15
  switch i8 %i.vk, label %bb.ds [
    i8 0, label %bb.dn
    i8 1, label %get_dwarf_extension_length.exit117.i
    i8 2, label %bb.do
    i8 3, label %bb.dp
    i8 4, label %bb.dq
    i8 9, label %bb.dr
    i8 10, label %bb.do
    i8 11, label %bb.dp
    i8 12, label %bb.dq
  ]

bb.dn:                                            ; preds = %dissect_dwarf_encoding.exit115.i
  br label %get_dwarf_extension_length.exit117.i

bb.do:                                            ; preds = %dissect_dwarf_encoding.exit115.i, %dissect_dwarf_encoding.exit115.i
  br label %get_dwarf_extension_length.exit117.i

bb.dp:                                            ; preds = %dissect_dwarf_encoding.exit115.i, %dissect_dwarf_encoding.exit115.i
  br label %get_dwarf_extension_length.exit117.i

bb.dq:                                            ; preds = %dissect_dwarf_encoding.exit115.i, %dissect_dwarf_encoding.exit115.i
  br label %get_dwarf_extension_length.exit117.i

bb.dr:                                            ; preds = %dissect_dwarf_encoding.exit115.i
  br label %get_dwarf_extension_length.exit117.i

bb.ds:                                            ; preds = %dissect_dwarf_encoding.exit115.i, %dissect_dwarf_encoding.exit115.thread.i
  br label %get_dwarf_extension_length.exit117.i

get_dwarf_extension_length.exit117.i:             ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %dissect_dwarf_encoding.exit115.i
  %.0.i116.i = phi i8 [ 0, %bb.ds ], [ %i.kg, %bb.dn ], [ -2, %dissect_dwarf_encoding.exit115.i ], [ 2, %bb.do ], [ 4, %bb.dp ], [ 8, %bb.dq ], [ -1, %bb.dr ] ; 2 uses
  %i.vl = sext i8 %.0.i116.i to i32
  %i.vm = add nuw i32 %i.oq, 4                    ; 5 uses
  %i.vn = icmp eq i8 %.0.i.i, -2
  br i1 %i.vn, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %get_dwarf_extension_length.exit117.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.vo = call i32 @tvb_get_varint(ptr noundef %0, i32 noundef %i.vm, i32 noundef 10, ptr noundef nonnull %i.d, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %bb.dv

bb.du:                                            ; preds = %get_dwarf_extension_length.exit117.i
  %i.vp = sext i8 %.0.i.i to i32
  %i.vq = icmp eq i8 %.0.i.i, -1
  br i1 %i.vq, label %.preheader12.i, label %bb.dv

.preheader12.i:                                   ; preds = %bb.du, %.preheader12.i
  %indvars.iv.i.i964 = phi i64 [ %indvars.iv.next.i.i966, %.preheader12.i ], [ 0, %bb.du ] ; 2 uses
  %.016.i.i965 = phi i32 [ %i.vs, %.preheader12.i ], [ %i.vm, %bb.du ] ; 2 uses
  %i.vr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.016.i.i965)
  %i.vs = add nuw i32 %.016.i.i965, 1             ; 2 uses
  %indvars.iv.next.i.i966 = add nuw nsw i64 %indvars.iv.i.i964, 7
  %i.vt = icmp slt i8 %i.vr, 0
  %i.vu = icmp samesign ult i64 %indvars.iv.i.i964, 57
  %i.vv = select i1 %i.vt, i1 %i.vu, i1 false
  br i1 %i.vv, label %.preheader12.i, label %dissect_leb128.exit.i967, !llvm.loop !9

dissect_leb128.exit.i967:                         ; preds = %.preheader12.i
  %i.vw = sub nuw i32 %i.vs, %i.vm
  br label %bb.dv

bb.dv:                                            ; preds = %dissect_leb128.exit.i967, %bb.du, %bb.dt
  %.0106.i = phi i32 [ %i.vo, %bb.dt ], [ %i.vw, %dissect_leb128.exit.i967 ], [ %i.vp, %bb.du ] ; 2 uses
  %i.vx = load i32, ptr @hf_elf_eh_frame_hdr_eh_frame_ptr, align 4
  %i.vy = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.vx, ptr noundef %0, i32 noundef %i.vm, i32 noundef %.0106.i, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.vz = add i32 %.0106.i, %i.vm                 ; 8 uses
  switch i8 %.0.i112.i, label %bb.dy [
    i8 -2, label %bb.dw
    i8 -1, label %.preheader11.i
    i8 0, label %bb.dx
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.wa = call i32 @tvb_get_varint(ptr noundef %0, i32 noundef %i.vz, i32 noundef 10, ptr noundef nonnull %i.c, i32 noundef 2)
  br label %bb.ed

.preheader11.i:                                   ; preds = %bb.dv, %.preheader11.i
  %.05.i = phi i64 [ %i.wh, %.preheader11.i ], [ 0, %bb.dv ]
  %indvars.iv.i118.i = phi i64 [ %indvars.iv.next.i120.i, %.preheader11.i ], [ 0, %bb.dv ] ; 4 uses
  %.016.i119.i = phi i32 [ %i.wc, %.preheader11.i ], [ %i.vz, %bb.dv ] ; 2 uses
  %i.wb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.016.i119.i) ; 2 uses
  %i.wc = add i32 %.016.i119.i, 1                 ; 2 uses
  %i.wd = zext i8 %i.wb to i32                    ; 2 uses
  %i.we = and i32 %i.wd, 127
  %i.wf = zext nneg i32 %i.we to i64
  %i.wg = shl i64 %i.wf, %indvars.iv.i118.i
  %i.wh = or i64 %i.wg, %.05.i                    ; 2 uses
  %indvars.iv.next.i120.i = add nuw nsw i64 %indvars.iv.i118.i, 7
  %i.wi = icmp slt i8 %i.wb, 0
  %i.wj = icmp samesign ult i64 %indvars.iv.i118.i, 57 ; 2 uses
  %i.wk = select i1 %i.wi, i1 %i.wj, i1 false
  br i1 %i.wk, label %.preheader11.i, label %dissect_leb128.exit124.i, !llvm.loop !9

dissect_leb128.exit124.i:                         ; preds = %.preheader11.i
  %i.wl = and i32 %i.wd, 64
  %.not.i121.i = icmp ne i32 %i.wl, 0
  %or.cond.not.i122.i = and i1 %i.wj, %.not.i121.i
  %.neg.i123.i = shl nsw i64 -128, %indvars.iv.i118.i
  %i.wm = select i1 %or.cond.not.i122.i, i64 %.neg.i123.i, i64 0
  %.16.i = or i64 %i.wh, %i.wm
  %i.wn = sub i32 %i.wc, %i.vz
  store i64 %.16.i, ptr %i.c, align 8
  br label %bb.ed

bb.dx:                                            ; preds = %bb.dv
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  %.0105.i = phi i32 [ %.0899, %bb.dx ], [ %i.uw, %bb.dv ] ; 2 uses
  switch i32 %.0105.i, label %bb.ec [
    i32 2, label %bb.dz
    i32 4, label %bb.ea
    i32 8, label %bb.eb
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.wo = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.vz, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.wp = zext i32 %i.wo to i64
  store i64 %i.wp, ptr %i.c, align 8
  br label %bb.ed

bb.ea:                                            ; preds = %bb.dy
  %i.wq = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.vz, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.wr = zext i32 %i.wq to i64
  store i64 %i.wr, ptr %i.c, align 8
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dy
  %i.ws = call i64 @tvb_get_uint64(ptr noundef %0, i32 noundef %i.vz, i32 noundef range(i32 -2147483648, 1) %.0900)
  store i64 %i.ws, ptr %i.c, align 8
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dy
  store i64 0, ptr %i.c, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb, %bb.ea, %bb.dz, %dissect_leb128.exit124.i, %bb.dw
  %.1.i = phi i32 [ %i.wa, %bb.dw ], [ %i.wn, %dissect_leb128.exit124.i ], [ %.0105.i, %bb.ec ], [ 2, %bb.dz ], [ 4, %bb.ea ], [ 8, %bb.eb ] ; 2 uses
  %i.wt = load i32, ptr @hf_elf_eh_frame_hdr_fde_count, align 4
  %i.wu = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.wt, ptr noundef %0, i32 noundef %i.vz, i32 noundef %.1.i, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.wv = add i32 %.1.i, %i.vz                    ; 6 uses
  switch i8 %.0.i116.i, label %bb.ef [
    i8 -2, label %bb.ee
    i8 -1, label %.preheader.i
  ]

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.ww = call i32 @tvb_get_varint(ptr noundef %0, i32 noundef %i.wv, i32 noundef 10, ptr noundef nonnull %i.e, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %bb.ef

.preheader.i:                                     ; preds = %bb.ed, %.preheader.i
  %indvars.iv.i125.i = phi i64 [ %indvars.iv.next.i127.i, %.preheader.i ], [ 0, %bb.ed ] ; 2 uses
  %.016.i126.i = phi i32 [ %i.wy, %.preheader.i ], [ %i.wv, %bb.ed ] ; 2 uses
  %i.wx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.016.i126.i)
  %i.wy = add i32 %.016.i126.i, 1                 ; 2 uses
  %indvars.iv.next.i127.i = add nuw nsw i64 %indvars.iv.i125.i, 7
  %i.wz = icmp slt i8 %i.wx, 0
  %i.xa = icmp samesign ult i64 %indvars.iv.i125.i, 57
  %i.xb = select i1 %i.wz, i1 %i.xa, i1 false
  br i1 %i.xb, label %.preheader.i, label %dissect_leb128.exit131.i, !llvm.loop !9

dissect_leb128.exit131.i:                         ; preds = %.preheader.i
  %i.xc = sub i32 %i.wy, %i.wv
  br label %bb.ef

bb.ef:                                            ; preds = %dissect_leb128.exit131.i, %bb.ee, %bb.ed
  %.0104.i = phi i32 [ %i.ww, %bb.ee ], [ %i.xc, %dissect_leb128.exit131.i ], [ %i.vl, %bb.ed ] ; 6 uses
  %i.xd = load i64, ptr %i.c, align 8
  %i.xe = sext i32 %.0104.i to i64
  %i.xf = shl nsw i64 %i.xe, 1
  %i.xg = mul i64 %i.xf, %i.xd                    ; 2 uses
  %i.xh = icmp ult i64 %i.xg, 2147483648
  br i1 %i.xh, label %value_guard.exit.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit.i:                               ; preds = %bb.ef
  %i.xi = trunc nuw nsw i64 %i.xg to i32
  %i.xj = load i32, ptr @ett_binary_table, align 4
  %i.xk = call ptr @proto_tree_add_subtree(ptr noundef %i.ou, ptr noundef %0, i32 noundef %i.wv, i32 noundef %i.xi, i32 noundef %i.xj, ptr noundef null, ptr noundef nonnull @.str.688)
  %i.xl = load i64, ptr %i.c, align 8
  %.not20.i = icmp eq i64 %i.xl, 0
  br i1 %.not20.i, label %dissect_eh_frame_hdr.exit, label %.lr.ph.i961

.lr.ph.i961:                                      ; preds = %value_guard.exit.i
  %i.xm = shl i32 %.0104.i, 1
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eh, %.lr.ph.i961
  %i.xn = phi i32 [ 1, %.lr.ph.i961 ], [ %i.xw, %bb.eh ] ; 2 uses
  %.021.i = phi i32 [ %i.wv, %.lr.ph.i961 ], [ %i.xv, %bb.eh ] ; 3 uses
  %i.xo = load i32, ptr @ett_binary_table_entry, align 4
  %i.xp = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.xk, ptr noundef %0, i32 noundef %.021.i, i32 noundef %i.xm, i32 noundef %i.xo, ptr noundef null, ptr noundef nonnull @.str.689, i32 noundef %i.xn) ; 2 uses
  %i.xq = load i32, ptr @hf_elf_eh_frame_hdr_binary_search_table_entry_initial_location, align 4
  %i.xr = call ptr @proto_tree_add_item(ptr noundef %i.xp, i32 noundef %i.xq, ptr noundef %0, i32 noundef %.021.i, i32 noundef %.0104.i, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.xs = add i32 %.021.i, %.0104.i               ; 2 uses
  %i.xt = load i32, ptr @hf_elf_eh_frame_hdr_binary_search_table_entry_address, align 4
  %i.xu = call ptr @proto_tree_add_item(ptr noundef %i.xp, i32 noundef %i.xt, ptr noundef %0, i32 noundef %i.xs, i32 noundef %.0104.i, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.xv = add i32 %i.xs, %.0104.i                 ; 2 uses
  %i.xw = add i32 %i.xn, 1                        ; 2 uses
  %i.xx = zext i32 %i.xw to i64
  %i.xy = load i64, ptr %i.c, align 8
  %.not.i962 = icmp ult i64 %i.xy, %i.xx
  br i1 %.not.i962, label %dissect_eh_frame_hdr.exit, label %bb.eh, !llvm.loop !10

dissect_eh_frame_hdr.exit:                        ; preds = %bb.eh, %value_guard.exit.i
  %.0.lcssa.i = phi i32 [ %i.wv, %value_guard.exit.i ], [ %i.xv, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  %i.xz = add nuw nsw i64 %5, %.1891
  %i.ya = trunc nuw i64 %i.xz to i32
  %.not937 = icmp eq i32 %.0.lcssa.i, %i.ya
  br i1 %.not937, label %.loopexit, label %.loopexit.sink.split

bb.ei:                                            ; preds = %bb.da
  %i.yb = icmp eq i32 %i.kq, 6
  br i1 %i.yb, label %bb.ej, label %bb.ez

bb.ej:                                            ; preds = %bb.ei
  %6 = add i64 %.0867, -1
  %or.cond1318.not = icmp ult i64 %6, %5
  br i1 %or.cond1318.not, label %value_guard.exit969.preheader, label %.loopexit

value_guard.exit969.preheader:                    ; preds = %bb.ej
  %7 = udiv i64 %5, %.0867
  %i.yc = trunc nuw nsw i64 %.0867 to i32
  %8 = trunc nuw nsw i64 %7 to i32
  br label %value_guard.exit969

value_guard.exit969:                              ; preds = %value_guard.exit969.preheader, %value_guard.exit968
  %i.yd = phi i64 [ %11, %value_guard.exit968 ], [ 1, %value_guard.exit969.preheader ]
  %.08681098 = phi i32 [ %.0.i, %value_guard.exit968 ], [ %i.oq, %value_guard.exit969.preheader ] ; 8 uses
  %.08711097 = phi i32 [ %10, %value_guard.exit968 ], [ 1, %value_guard.exit969.preheader ] ; 2 uses
  %9 = load i32, ptr @ett_symbol_table_entry, align 4
  %i.ye = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ou, ptr noundef %0, i32 noundef %.08681098, i32 noundef %i.yc, i32 noundef %9, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.669, i32 noundef %.08711097) ; 4 uses
  %i.yf = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  br i1 %i.bg, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %value_guard.exit969
  %i.yg = load i32, ptr @hf_elf_dynamic_tag, align 4
  %i.yh = call ptr @proto_tree_add_item(ptr noundef %i.ye, i32 noundef %i.yg, ptr noundef %0, i32 noundef %.08681098, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.yi = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.08681098, i32 noundef range(i32 -2147483648, 1) %.0900) ; 2 uses
  %i.yj = zext i32 %i.yi to i64                   ; 3 uses
  store i64 %i.yj, ptr %i.b, align 8
  %i.yk = add i32 %.08681098, 4
  %i.yl = icmp ult i32 %i.yi, 34
  br i1 %i.yl, label %bb.el, label %.thread1.i

bb.el:                                            ; preds = %bb.ek
  %i.ym = shl nuw nsw i64 1, %i.yj                ; 3 uses
  %i.yn = and i64 %i.ym, 10605088518
  %.not58.i = icmp eq i64 %i.yn, 0
  br i1 %.not58.i, label %bb.em, label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.yo = and i64 %i.ym, 4406259960
  %.not59.i = icmp eq i64 %i.yo, 0
  br i1 %.not59.i, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.yp = and i64 %i.ym, 21037057
  %.not60.i = icmp eq i64 %i.yp, 0
  br i1 %.not60.i, label %.thread1.i, label %bb.eo

.thread1.i:                                       ; preds = %bb.en, %bb.ek
  br label %bb.eo

bb.eo:                                            ; preds = %.thread1.i, %bb.en, %bb.em, %bb.el
  %hf_elf_dynamic_pointer.sink.i = phi ptr [ @hf_elf_dynamic_value, %bb.el ], [ @hf_elf_dynamic_unspecified, %.thread1.i ], [ @hf_elf_dynamic_pointer, %bb.em ], [ @hf_elf_dynamic_ignored, %bb.en ]
  %i.yq = load i32, ptr %hf_elf_dynamic_pointer.sink.i, align 4
  %i.yr = call ptr @proto_tree_add_item(ptr noundef %i.ye, i32 noundef %i.yq, ptr noundef %0, i32 noundef %i.yk, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.ys = add i32 %.08681098, 8
  br label %bb.ew

bb.ep:                                            ; preds = %value_guard.exit969
  %i.yt = load i32, ptr @hf_elf64_dynamic_tag, align 4
  %i.yu = call ptr @proto_tree_add_item_ret_uint64(ptr noundef %i.ye, i32 noundef %i.yt, ptr noundef %0, i32 noundef %.08681098, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900, ptr noundef nonnull %i.b)
  %i.yv = load i64, ptr %i.b, align 8             ; 2 uses
  %i.yw = icmp ult i64 %i.yv, 2147483648
  br i1 %i.yw, label %value_guard.exit.i970, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit.i970:                            ; preds = %bb.ep
  %i.yx = trunc nuw nsw i64 %i.yv to i32
  %i.yy = call ptr @rval_to_str_const(i32 noundef %i.yx, ptr noundef nonnull @dynamic_tag_rvals, ptr noundef nonnull @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.yu, ptr noundef nonnull @.str.690, ptr noundef %i.yy)
  %i.yz = add i32 %.08681098, 8
  %i.za = load i64, ptr %i.b, align 8             ; 2 uses
  %i.zb = icmp ult i64 %i.za, 34
  br i1 %i.zb, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %value_guard.exit.i970
  %i.zc = shl nuw nsw i64 1, %i.za                ; 3 uses
  %i.zd = and i64 %i.zc, 10605088518
  %.not.i971 = icmp eq i64 %i.zd, 0
  br i1 %.not.i971, label %bb.es, label %bb.ev

bb.es:                                            ; preds = %bb.er
  %i.ze = and i64 %i.zc, 4406259960
  %.not56.i = icmp eq i64 %i.ze, 0
  br i1 %.not56.i, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.zf = and i64 %i.zc, 21037057
  %.not57.i = icmp eq i64 %i.zf, 0
  br i1 %.not57.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et, %value_guard.exit.i970
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.es, %bb.er
  %hf_elf64_dynamic_pointer.sink.i = phi ptr [ @hf_elf64_dynamic_value, %bb.er ], [ @hf_elf64_dynamic_unspecified, %bb.eu ], [ @hf_elf64_dynamic_pointer, %bb.es ], [ @hf_elf64_dynamic_ignored, %bb.et ]
  %i.zg = load i32, ptr %hf_elf64_dynamic_pointer.sink.i, align 4
  %i.zh = call ptr @proto_tree_add_item(ptr noundef %i.ye, i32 noundef %i.zg, ptr noundef %0, i32 noundef %i.yz, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.zi = add i32 %.08681098, 16
  %.pre.i = load i64, ptr %i.b, align 8
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eo
  %i.zj = phi i64 [ %i.yj, %bb.eo ], [ %.pre.i, %bb.ev ] ; 2 uses
  %.0.i = phi i32 [ %i.ys, %bb.eo ], [ %i.zi, %bb.ev ] ; 2 uses
  %i.zk = icmp ult i64 %i.zj, 2147483648
  br i1 %i.zk, label %dissect_dynamic.exit, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

dissect_dynamic.exit:                             ; preds = %bb.ew
  %i.zl = trunc nuw nsw i64 %i.zj to i32
  %i.zm = call ptr @rval_to_str_const(i32 noundef %i.zl, ptr noundef nonnull @dynamic_tag_rvals, ptr noundef nonnull @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.yf, ptr noundef nonnull @.str.666, ptr noundef %i.zm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.zn = mul nuw nsw i64 %i.yd, %.0867
  %i.zo = add nuw nsw i64 %i.zn, %.1891
  %i.zp = trunc i64 %i.zo to i32
  %.not936 = icmp eq i32 %.0.i, %i.zp
  br i1 %.not936, label %value_guard.exit968, label %bb.ey

bb.ey:                                            ; preds = %dissect_dynamic.exit
  %i.zq = load ptr, ptr %i.k, align 8
  %i.zr = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.zq, ptr noundef nonnull @ei_invalid_entry_size) ; 0 uses
  br label %value_guard.exit968

value_guard.exit968:                              ; preds = %dissect_dynamic.exit, %bb.ey
  %10 = add i32 %.08711097, 1                     ; 3 uses
  %11 = zext i32 %10 to i64
  %.not989 = icmp ugt i32 %10, %8
  br i1 %.not989, label %.loopexit, label %value_guard.exit969, !llvm.loop !11

bb.ez:                                            ; preds = %bb.ei
  %i.zs = icmp eq i32 %i.kq, 2
  switch i32 %i.kq, label %bb.fv [
    i32 11, label %bb.fa
    i32 2, label %bb.fa
    i32 3, label %value_guard.exit977.preheader
  ]

value_guard.exit977.preheader:                    ; preds = %bb.ez
  %i.zt = add nuw nsw i64 %5, %.1891
  %i.zu = trunc nuw i64 %i.zt to i32              ; 2 uses
  %i.zv = icmp slt i32 %i.oq, %i.zu
  br i1 %i.zv, label %value_guard.exit977, label %.loopexit

bb.fa:                                            ; preds = %bb.ez, %bb.ez
  %.not933 = icmp eq i64 %.0867, 0
  br i1 %.not933, label %.loopexit, label %value_guard.exit972.preheader

value_guard.exit972.preheader:                    ; preds = %bb.fa
  %i.zw = udiv i64 %5, %.0867
  %.not9881088 = icmp ugt i64 %.0867, %5
  br i1 %.not9881088, label %.loopexit, label %value_guard.exit973.preheader

value_guard.exit973.preheader:                    ; preds = %value_guard.exit972.preheader
  %i.zx = trunc nuw nsw i64 %.0867 to i32
  %i.zy = select i1 %i.zs, i64 %.1866, i64 %.1    ; 2 uses
  %.not.i974 = icmp eq i64 %i.zy, 0
  br label %value_guard.exit973

value_guard.exit973:                              ; preds = %value_guard.exit973.preheader, %value_guard.exit972
  %i.zz = phi i64 [ %14, %value_guard.exit972 ], [ 1, %value_guard.exit973.preheader ]
  %.18691090 = phi i32 [ %i.ado, %value_guard.exit972 ], [ %i.oq, %value_guard.exit973.preheader ] ; 13 uses
  %.18721089 = phi i32 [ %13, %value_guard.exit972 ], [ 1, %value_guard.exit973.preheader ] ; 2 uses
  %12 = load i32, ptr @ett_symbol_table_entry, align 4
  %i.aaa = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.ou, ptr noundef %0, i32 noundef %.18691090, i32 noundef %i.zx, i32 noundef %12, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.669, i32 noundef %.18721089) ; 11 uses
  %i.aab = load ptr, ptr %i.m, align 8            ; 2 uses
  %i.aac = load i32, ptr %i.s, align 4
  %i.aad = trunc i32 %i.aac to i16                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.aae = load i32, ptr @hf_elf_symbol_table_name_index, align 4
  %i.aaf = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.aae, ptr noundef %0, i32 noundef %.18691090, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900)
  br i1 %.not.i974, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %value_guard.exit973
  %i.aag = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %.18691090, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.aah = zext i32 %i.aag to i64
  %i.aai = add i64 %i.zy, %i.aah                  ; 2 uses
  %i.aaj = icmp ult i64 %i.aai, 2147483648
  br i1 %i.aaj, label %value_guard.exit.i975, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit.i975:                            ; preds = %bb.fb
  %i.aak = load ptr, ptr %i.eb, align 8
  %i.aal = trunc nuw nsw i64 %i.aai to i32
  %i.aam = call ptr @tvb_get_stringz_enc(ptr noundef %i.aak, ptr noundef %0, i32 noundef %i.aal, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not136.i = icmp eq ptr %i.aam, null
  br i1 %.not136.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %value_guard.exit.i975
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aaf, ptr noundef nonnull @.str.666, ptr noundef nonnull %i.aam)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aab, ptr noundef nonnull @.str.666, ptr noundef nonnull %i.aam)
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %value_guard.exit.i975, %value_guard.exit973
  %i.aan = add i32 %.18691090, 4                  ; 6 uses
  br i1 %i.bg, label %bb.ff, label %bb.fm

bb.ff:                                            ; preds = %bb.fe
  %i.aao = load i32, ptr @hf_elf_symbol_table_value, align 4
  %i.aap = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.aao, ptr noundef %0, i32 noundef %i.aan, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.aaq = add i32 %.18691090, 8
  %i.aar = load i32, ptr @hf_elf_symbol_table_size, align 4
  %i.aas = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.aar, ptr noundef %0, i32 noundef %i.aaq, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.aat = add i32 %.18691090, 12                 ; 5 uses
  %i.aau = load i32, ptr @hf_elf_symbol_table_info, align 4
  %i.aav = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.aau, ptr noundef %0, i32 noundef %i.aat, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 5 uses
  %i.aaw = load i32, ptr @ett_symbol_table_info, align 4
  %i.aax = call ptr @proto_item_add_subtree(ptr noundef %i.aav, i32 noundef %i.aaw) ; 2 uses
  %i.aay = load i32, ptr @hf_elf_symbol_table_info_bind, align 4
  %i.aaz = call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.aay, ptr noundef %0, i32 noundef %i.aat, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.aba = load i32, ptr @hf_elf_symbol_table_info_type, align 4
  %i.abb = call ptr @proto_tree_add_item(ptr noundef %i.aax, i32 noundef %i.aba, ptr noundef %0, i32 noundef %i.aat, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.abc = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aat) ; 4 uses
  %i.abd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aat) ; 4 uses
  %i.abe = add i32 %.18691090, 13
  %i.abf = load i32, ptr @hf_elf_symbol_table_other, align 4
  %i.abg = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.abf, ptr noundef %0, i32 noundef %i.abe, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.abh = add i32 %.18691090, 14
  %i.abi = load i32, ptr @hf_elf_symbol_table_shndx, align 4
  %i.abj = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.aaa, i32 noundef %i.abi, ptr noundef %0, i32 noundef %i.abh, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %.0900, ptr noundef nonnull %i.a) ; 2 uses
  %i.abk = load i16, ptr %i.a, align 2            ; 3 uses
  %.not140.i = icmp ugt i16 %i.abk, %i.aad
  br i1 %.not140.i, label %bb.fl, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.abl = load ptr, ptr %i.eb, align 8
  %i.abm = zext i16 %i.abk to i64
  %i.abn = mul nuw nsw i64 %i.abm, %i.kf
  %i.abo = add nuw nsw i64 %i.abn, %.0897         ; 2 uses
  %i.abp = icmp ult i64 %i.abo, 2147483648
  br i1 %i.abp, label %value_guard.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit.i.i:                             ; preds = %bb.fg
  %i.abq = trunc nuw nsw i64 %i.abo to i32
  %i.abr = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.abq, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.abs = zext i32 %i.abr to i64
  %i.abt = add i64 %.1893, %i.abs                 ; 2 uses
  %i.abu = icmp ult i64 %i.abt, 2147483648
  br i1 %i.abu, label %get_section_name_offset.exit.i, label %bb.fi

bb.fi:                                            ; preds = %value_guard.exit.i.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

get_section_name_offset.exit.i:                   ; preds = %value_guard.exit.i.i
  %i.abv = trunc nuw nsw i64 %i.abt to i32
  %i.abw = call ptr @tvb_get_stringz_enc(ptr noundef %i.abl, ptr noundef %0, i32 noundef %i.abv, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not141.i = icmp eq ptr %i.abw, null
  br i1 %.not141.i, label %dissect_symbol_table.exit, label %bb.fj

bb.fj:                                            ; preds = %get_section_name_offset.exit.i
  %i.abx = load i8, ptr %i.abw, align 1
  %.not142.i = icmp eq i8 %i.abx, 0
  br i1 %.not142.i, label %dissect_symbol_table.exit, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.aby = load i16, ptr %i.a, align 2
  %i.abz = zext i16 %i.aby to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.abj, ptr noundef nonnull @.str.691, i32 noundef %i.abz, ptr noundef nonnull %i.abw)
  br label %dissect_symbol_table.exit

bb.fl:                                            ; preds = %bb.ff
  %i.aca = zext i16 %i.abk to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.abj, ptr noundef nonnull @.str.692, i32 noundef %i.aca)
  br label %dissect_symbol_table.exit

bb.fm:                                            ; preds = %bb.fe
  %i.acb = load i32, ptr @hf_elf_symbol_table_info, align 4
  %i.acc = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.acb, ptr noundef %0, i32 noundef %i.aan, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 2 uses
  %i.acd = load i32, ptr @ett_symbol_table_info, align 4
  %i.ace = call ptr @proto_item_add_subtree(ptr noundef %i.acc, i32 noundef %i.acd) ; 2 uses
  %i.acf = load i32, ptr @hf_elf_symbol_table_info_bind, align 4
  %i.acg = call ptr @proto_tree_add_item(ptr noundef %i.ace, i32 noundef %i.acf, ptr noundef %0, i32 noundef %i.aan, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.ach = load i32, ptr @hf_elf_symbol_table_info_type, align 4
  %i.aci = call ptr @proto_tree_add_item(ptr noundef %i.ace, i32 noundef %i.ach, ptr noundef %0, i32 noundef %i.aan, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.acj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aan)
  %i.ack = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aan)
  %i.acl = add i32 %.18691090, 5
  %i.acm = load i32, ptr @hf_elf_symbol_table_other, align 4
  %i.acn = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.acm, ptr noundef %0, i32 noundef %i.acl, i32 noundef 1, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.aco = add i32 %.18691090, 6
  %i.acp = load i32, ptr @hf_elf_symbol_table_shndx, align 4
  %i.acq = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.aaa, i32 noundef %i.acp, ptr noundef %0, i32 noundef %i.aco, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %.0900, ptr noundef nonnull %i.a) ; 2 uses
  %i.acr = load i16, ptr %i.a, align 2            ; 3 uses
  %.not137.i = icmp ugt i16 %i.acr, %i.aad
  br i1 %.not137.i, label %bb.fs, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.acs = load ptr, ptr %i.eb, align 8
  %i.act = zext i16 %i.acr to i64
  %i.acu = mul nuw nsw i64 %i.act, %i.kf
  %i.acv = add nuw nsw i64 %i.acu, %.0897         ; 2 uses
  %i.acw = icmp ult i64 %i.acv, 2147483648
  br i1 %i.acw, label %value_guard.exit.i143.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit.i143.i:                          ; preds = %bb.fn
  %i.acx = trunc nuw nsw i64 %i.acv to i32
  %i.acy = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.acx, i32 noundef range(i32 -2147483648, 1) %.0900)
  %i.acz = zext i32 %i.acy to i64
  %i.ada = add i64 %.1893, %i.acz                 ; 2 uses
  %i.adb = icmp ult i64 %i.ada, 2147483648
  br i1 %i.adb, label %get_section_name_offset.exit146.i, label %bb.fp

bb.fp:                                            ; preds = %value_guard.exit.i143.i
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

get_section_name_offset.exit146.i:                ; preds = %value_guard.exit.i143.i
  %i.adc = trunc nuw nsw i64 %i.ada to i32
  %i.add = call ptr @tvb_get_stringz_enc(ptr noundef %i.acs, ptr noundef %0, i32 noundef %i.adc, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not138.i = icmp eq ptr %i.add, null
  br i1 %.not138.i, label %bb.ft, label %bb.fq

bb.fq:                                            ; preds = %get_section_name_offset.exit146.i
  %i.ade = load i8, ptr %i.add, align 1
  %.not139.i = icmp eq i8 %i.ade, 0
  br i1 %.not139.i, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.adf = load i16, ptr %i.a, align 2
  %i.adg = zext i16 %i.adf to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.acq, ptr noundef nonnull @.str.691, i32 noundef %i.adg, ptr noundef nonnull %i.add)
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fm
  %i.adh = zext i16 %i.acr to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.acq, ptr noundef nonnull @.str.692, i32 noundef %i.adh)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr, %bb.fq, %get_section_name_offset.exit146.i
  %i.adi = add i32 %.18691090, 8
  %i.adj = load i32, ptr @hf_elf64_symbol_table_value, align 4
  %i.adk = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.adj, ptr noundef %0, i32 noundef %i.adi, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  %i.adl = add i32 %.18691090, 16
  %i.adm = load i32, ptr @hf_elf64_symbol_table_size, align 4
  %i.adn = call ptr @proto_tree_add_item(ptr noundef %i.aaa, i32 noundef %i.adm, ptr noundef %0, i32 noundef %i.adl, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %.0900) ; 0 uses
  br label %dissect_symbol_table.exit

dissect_symbol_table.exit:                        ; preds = %get_section_name_offset.exit.i, %bb.fj, %bb.fk, %bb.fl, %bb.ft
  %.sink.i = phi i32 [ 24, %bb.ft ], [ 16, %get_section_name_offset.exit.i ], [ 16, %bb.fj ], [ 16, %bb.fk ], [ 16, %bb.fl ]
  %.0128.i = phi ptr [ %i.acc, %bb.ft ], [ %i.aav, %get_section_name_offset.exit.i ], [ %i.aav, %bb.fj ], [ %i.aav, %bb.fk ], [ %i.aav, %bb.fl ]
  %.0127.in.i = phi i8 [ %i.acj, %bb.ft ], [ %i.abc, %get_section_name_offset.exit.i ], [ %i.abc, %bb.fj ], [ %i.abc, %bb.fk ], [ %i.abc, %bb.fl ]
  %.0.in.i = phi i8 [ %i.ack, %bb.ft ], [ %i.abd, %get_section_name_offset.exit.i ], [ %i.abd, %bb.fj ], [ %i.abd, %bb.fk ], [ %i.abd, %bb.fl ]
  %i.ado = add i32 %.sink.i, %.18691090           ; 2 uses
  %.0.i976 = and i8 %.0.in.i, 15
  %.0127.i = lshr i8 %.0127.in.i, 4
  %i.adp = zext nneg i8 %.0127.i to i32           ; 2 uses
  %i.adq = call ptr @val_to_str_const(i32 noundef %i.adp, ptr noundef nonnull @symbol_table_info_bind_vals, ptr noundef nonnull @.str.657)
  %i.adr = zext nneg i8 %.0.i976 to i32           ; 2 uses
  %i.ads = call ptr @val_to_str_ext_const(i32 noundef %i.adr, ptr noundef nonnull @symbol_table_info_type_vals_ext, ptr noundef nonnull @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0128.i, ptr noundef nonnull @.str.693, ptr noundef %i.adq, ptr noundef %i.ads)
  %i.adt = call ptr @val_to_str_const(i32 noundef %i.adp, ptr noundef nonnull @symbol_table_info_bind_vals, ptr noundef nonnull @.str.657)
  %i.adu = call ptr @val_to_str_ext_const(i32 noundef %i.adr, ptr noundef nonnull @symbol_table_info_type_vals_ext, ptr noundef nonnull @.str.657)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aab, ptr noundef nonnull @.str.693, ptr noundef %i.adt, ptr noundef %i.adu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.adv = mul nuw nsw i64 %i.zz, %.0867
  %i.adw = add nuw i64 %i.adv, %.1891
  %i.adx = trunc i64 %i.adw to i32
  %.not934 = icmp eq i32 %i.ado, %i.adx
  br i1 %.not934, label %value_guard.exit972, label %bb.fu

bb.fu:                                            ; preds = %dissect_symbol_table.exit
  %i.ady = load ptr, ptr %i.k, align 8
  %i.adz = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ady, ptr noundef nonnull @ei_invalid_entry_size) ; 0 uses
  br label %value_guard.exit972

value_guard.exit972:                              ; preds = %dissect_symbol_table.exit, %bb.fu
  %13 = add i32 %.18721089, 1                     ; 2 uses
  %14 = zext i32 %13 to i64                       ; 2 uses
  %.not988 = icmp ult i64 %i.zw, %14
  br i1 %.not988, label %.loopexit, label %value_guard.exit973, !llvm.loop !12

value_guard.exit977:                              ; preds = %value_guard.exit977.preheader, %value_guard.exit977
  %.21086 = phi i32 [ %i.aef, %value_guard.exit977 ], [ %i.oq, %value_guard.exit977.preheader ] ; 4 uses
  %.28731085 = phi i32 [ %i.aeg, %value_guard.exit977 ], [ 1, %value_guard.exit977.preheader ] ; 2 uses
  %i.aea = call i32 @tvb_strsize(ptr noundef %0, i32 noundef %.21086) ; 3 uses
  %i.aeb = load i32, ptr @hf_elf_string, align 4
  %i.aec = call ptr @proto_tree_add_item(ptr noundef %i.ou, i32 noundef %i.aeb, ptr noundef %0, i32 noundef %.21086, i32 noundef %i.aea, i32 noundef 0) ; 2 uses
  store ptr %i.aec, ptr %i.m, align 8
  %i.aed = sub i32 %.21086, %i.oq
  %i.aee = add i32 %i.aea, -1
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.aec, ptr noundef nonnull @.str.670, i32 noundef %.28731085, i32 noundef %i.aed, i32 noundef %i.aee)
  %i.aef = add i32 %i.aea, %.21086                ; 2 uses
  %i.aeg = add i32 %.28731085, 1
  %i.aeh = icmp slt i32 %i.aef, %i.zu
  br i1 %i.aeh, label %value_guard.exit977, label %.loopexit, !llvm.loop !13

bb.fv:                                            ; preds = %bb.ez
  %15 = icmp ult i64 %.0867, 2
  %.not9321092 = icmp ugt i64 %.0867, %5
  %or.cond1319 = or i1 %15, %.not9321092
  br i1 %or.cond1319, label %.loopexit, label %value_guard.exit980.preheader

value_guard.exit980.preheader:                    ; preds = %bb.fv
  %16 = udiv i64 %5, %.0867
  %i.aei = trunc nuw nsw i64 %.0867 to i32        ; 2 uses
  %17 = trunc nuw nsw i64 %16 to i32
  br label %value_guard.exit980

value_guard.exit980:                              ; preds = %value_guard.exit980.preheader, %value_guard.exit980
  %.31094 = phi i32 [ %i.ael, %value_guard.exit980 ], [ %i.oq, %value_guard.exit980.preheader ] ; 2 uses
  %.38741093 = phi i32 [ %18, %value_guard.exit980 ], [ 1, %value_guard.exit980.preheader ] ; 3 uses
  %i.aej = load i32, ptr @hf_elf_entry_bytes, align 4
  %i.aek = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %i.ou, i32 noundef %i.aej, ptr noundef %0, i32 noundef %.31094, i32 noundef %i.aei, ptr noundef null, ptr noundef nonnull @.str.671, i32 noundef %.38741093) ; 0 uses
  %i.ael = add i32 %.31094, %i.aei
  %18 = add nuw nsw i32 %.38741093, 1
  %.not932.not = icmp samesign ult i32 %.38741093, %17
  br i1 %.not932.not, label %value_guard.exit980, label %.loopexit, !llvm.loop !14

.loopexit.sink.split:                             ; preds = %dissect_eh_frame_hdr.exit, %dissect_eh_frame.exit
  %i.aem = load ptr, ptr %i.k, align 8
  %i.aen = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aem, ptr noundef nonnull @ei_invalid_segment_size) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %value_guard.exit977, %value_guard.exit972, %value_guard.exit980, %value_guard.exit968, %.loopexit.sink.split, %value_guard.exit977.preheader, %value_guard.exit972.preheader, %dissect_eh_frame.exit, %bb.ej, %bb.fv, %bb.fa, %dissect_eh_frame_hdr.exit, %bb.cb
  %.3885 = phi i64 [ %i.oj, %value_guard.exit980 ], [ %i.oj, %dissect_eh_frame.exit ], [ %i.oj, %value_guard.exit972 ], [ %i.oj, %dissect_eh_frame_hdr.exit ], [ %.28841104, %bb.cb ], [ %i.oj, %bb.ej ], [ %i.oj, %value_guard.exit968 ], [ %i.oj, %bb.fa ], [ %i.oj, %.loopexit.sink.split ], [ %i.oj, %value_guard.exit972.preheader ], [ %i.oj, %bb.fv ], [ %i.oj, %value_guard.exit977.preheader ], [ %i.oj, %value_guard.exit977 ] ; 2 uses
  %.5880 = phi i32 [ %i.oo, %value_guard.exit980 ], [ %i.oo, %dissect_eh_frame.exit ], [ %i.oo, %value_guard.exit972 ], [ %i.oo, %dissect_eh_frame_hdr.exit ], [ %.48791105, %bb.cb ], [ %i.oo, %bb.ej ], [ %i.oo, %value_guard.exit968 ], [ %i.oo, %bb.fa ], [ %i.oo, %.loopexit.sink.split ], [ %i.oo, %value_guard.exit972.preheader ], [ %i.oo, %bb.fv ], [ %i.oo, %value_guard.exit977.preheader ], [ %i.oo, %value_guard.exit977 ] ; 2 uses
  %.not927.wide = icmp eq i32 %i.ki, 0
  br i1 %.not927.wide, label %._crit_edge, label %bb.bd, !llvm.loop !15

._crit_edge:                                      ; preds = %.loopexit, %value_guard.exit947, %value_guard.exit951
  %.2884.lcssa = phi i64 [ %.0882.lcssa, %value_guard.exit951 ], [ %.0882.lcssa, %value_guard.exit947 ], [ %.3885, %.loopexit ] ; 3 uses
  %.4879.lcssa = phi i32 [ %.2877.lcssa, %value_guard.exit951 ], [ %.2877.lcssa, %value_guard.exit947 ], [ %.5880, %.loopexit ] ; 6 uses
  %i.aeo = load i32, ptr @ett_elf_info, align 4
  %i.aep = call ptr @proto_tree_add_subtree(ptr noundef %i.ac, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aeo, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.672) ; 5 uses
  %i.aeq = load ptr, ptr %i.l, align 8            ; 2 uses
  %.not.i981 = icmp eq ptr %i.aeq, null
  br i1 %.not.i981, label %proto_item_set_generated.exit, label %bb.fw

bb.fw:                                            ; preds = %._crit_edge
  %i.aer = getelementptr i8, ptr %i.aeq, i64 40
  %i.aes = load ptr, ptr %i.aer, align 8          ; 2 uses
  %.not5.i = icmp eq ptr %i.aes, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aet = getelementptr i8, ptr %i.aes, i64 28   ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 4
  %i.aev = or i32 %i.aeu, 2
  store i32 %i.aev, ptr %i.aet, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %._crit_edge, %bb.fw, %bb.fx
  %i.aew = load i32, ptr @ett_elf_black_holes, align 4
  %i.aex = call ptr @proto_tree_add_subtree(ptr noundef %i.aep, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aew, ptr noundef null, ptr noundef nonnull @.str.673) ; 2 uses
  %i.aey = load i32, ptr @ett_elf_overlapping, align 4
  %i.aez = call ptr @proto_tree_add_subtree(ptr noundef %i.aep, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aey, ptr noundef null, ptr noundef nonnull @.str.674)
  %.not1122 = icmp eq i32 %.4879.lcssa, 0
  br i1 %.not1122, label %._crit_edge1118, label %.lr.ph1114.preheader

.lr.ph1114.preheader:                             ; preds = %proto_item_set_generated.exit
  %i.afa = zext i32 %.4879.lcssa to i64           ; 2 uses
  br label %.lr.ph1114

.preheader:                                       ; preds = %._crit_edge1112
  %.not1277 = icmp eq i32 %.4879.lcssa, 1
  br i1 %.not1277, label %._crit_edge1118, label %.lr.ph1117.preheader

.lr.ph1117.preheader:                             ; preds = %.preheader
  %wide.trip.count1169 = zext i32 %.4879.lcssa to i64
  %.pre1171 = load i64, ptr %i.eh, align 8
  br label %.lr.ph1117

.lr.ph1114:                                       ; preds = %.lr.ph1114.preheader, %._crit_edge1112
  %indvars.iv1162 = phi i64 [ 0, %.lr.ph1114.preheader ], [ %indvars.iv.next1163, %._crit_edge1112 ] ; 2 uses
  %indvars.iv1157.a = phi i64 [ 1, %.lr.ph1114.preheader ], [ %indvars.iv.next1158.a, %._crit_edge1112 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.afb = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1162 ; 3 uses
  %indvars.iv.next1163 = add nuw nsw i64 %indvars.iv1162, 1 ; 3 uses
  %i.afc = icmp samesign ult i64 %indvars.iv.next1163, %i.afa
  br i1 %i.afc, label %.lr.ph1111, label %._crit_edge1112

.lr.ph1111:                                       ; preds = %.lr.ph1114, %bb.fz
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %bb.fz ], [ %indvars.iv1157.a, %.lr.ph1114 ] ; 2 uses
  %i.afd = load i64, ptr %i.afb, align 8
  %i.afe = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1159 ; 3 uses
  %i.aff = load i64, ptr %i.afe, align 8
  %.not930 = icmp ugt i64 %i.afd, %i.aff
  br i1 %.not930, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph1111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef align 8 dereferenceable(24) %i.afb, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.afb, ptr noundef align 8 dereferenceable(24) %i.afe, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %i.afe, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  br label %bb.fz

bb.fz:                                            ; preds = %.lr.ph1111, %bb.fy
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next1160 to i32
  %exitcond.not = icmp eq i32 %.4879.lcssa, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge1112, label %.lr.ph1111, !llvm.loop !16

._crit_edge1112:                                  ; preds = %bb.fz, %.lr.ph1114
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %indvars.iv.next1158.a = add nuw nsw i64 %indvars.iv1157.a, 1
  %exitcond1165.not = icmp eq i64 %indvars.iv.next1163, %i.afa
  br i1 %exitcond1165.not, label %.preheader, label %.lr.ph1114, !llvm.loop !17

.lr.ph1117:                                       ; preds = %.lr.ph1117.preheader, %bb.gf
  %i.afg = phi i64 [ %.pre1171, %.lr.ph1117.preheader ], [ %i.afm, %bb.gf ]
  %indvars.iv1166 = phi i64 [ 1, %.lr.ph1117.preheader ], [ %indvars.iv.next1167, %bb.gf ] ; 3 uses
  %.48861115 = phi i64 [ %.2884.lcssa, %.lr.ph1117.preheader ], [ %.5887, %bb.gf ] ; 3 uses
  %i.afh = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1166 ; 3 uses
  %i.afi = getelementptr i8, ptr %i.afh, i64 -16
  %i.afj = load i64, ptr %i.afi, align 8
  %i.afk = add i64 %i.afj, %i.afg                 ; 5 uses
  %i.afl = getelementptr [24 x i8], ptr %i.eh, i64 %indvars.iv1166 ; 3 uses
  %i.afm = load i64, ptr %i.afl, align 8          ; 6 uses
  %i.afn = icmp ult i64 %i.afk, %i.afm
  br i1 %i.afn, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %.lr.ph1117
  %i.afo = sub nuw i64 %i.afm, %i.afk             ; 2 uses
  %sext929 = shl i64 %i.afo, 32
  %i.afp = ashr exact i64 %sext929, 32
  %i.afq = sub i64 %i.afm, %i.afp                 ; 2 uses
  %i.afr = icmp ult i64 %i.afq, 2147483648
  br i1 %i.afr, label %value_guard.exit982, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit982:                              ; preds = %bb.ga
  %i.afs = load i32, ptr @hf_elf_blackhole_size, align 4
  %i.aft = trunc i64 %i.afo to i32                ; 3 uses
  %i.afu = trunc nuw nsw i64 %i.afq to i32
  %i.afv = getelementptr i8, ptr %i.afh, i64 -8
  %i.afw = load ptr, ptr %i.afv, align 8
  %i.afx = getelementptr i8, ptr %i.afl, i64 16
  %i.afy = load ptr, ptr %i.afx, align 8
  %i.afz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.aex, i32 noundef %i.afs, ptr noundef %0, i32 noundef %i.afu, i32 noundef 1, i32 noundef %i.aft, ptr noundef nonnull @.str.675, ptr noundef %i.afw, ptr noundef %i.afy, i32 noundef %i.aft)
  call void @proto_item_set_len(ptr noundef %i.afz, i32 noundef %i.aft)
  br label %bb.gf

bb.gc:                                            ; preds = %.lr.ph1117
  %i.aga = icmp ugt i64 %i.afk, %i.afm
  br i1 %i.aga, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.agb = sub nuw i64 %i.afk, %i.afm             ; 2 uses
  %sext = shl i64 %i.agb, 32
  %i.agc = ashr exact i64 %sext, 32               ; 2 uses
  %i.agd = sub i64 %i.afk, %i.agc                 ; 2 uses
  %i.age = icmp ult i64 %i.agd, 2147483648
  br i1 %i.age, label %value_guard.exit983, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit983:                              ; preds = %bb.gd
  %i.agf = load i32, ptr @hf_elf_overlapping_size, align 4
  %i.agg = trunc i64 %i.agb to i32                ; 3 uses
  %i.agh = trunc nuw nsw i64 %i.agd to i32
  %i.agi = getelementptr i8, ptr %i.afh, i64 -8
  %i.agj = load ptr, ptr %i.agi, align 8
  %i.agk = getelementptr i8, ptr %i.afl, i64 16
  %i.agl = load ptr, ptr %i.agk, align 8
  %i.agm = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.aez, i32 noundef %i.agf, ptr noundef %0, i32 noundef %i.agh, i32 noundef 1, i32 noundef %i.agg, ptr noundef nonnull @.str.676, ptr noundef %i.agj, ptr noundef %i.agl, i32 noundef %i.agg)
  call void @proto_item_set_len(ptr noundef %i.agm, i32 noundef %i.agg)
  %i.agn = sub i64 %.48861115, %i.agc
  br label %bb.gf

bb.gf:                                            ; preds = %value_guard.exit982, %value_guard.exit983, %bb.gc
  %.5887 = phi i64 [ %.48861115, %value_guard.exit982 ], [ %i.agn, %value_guard.exit983 ], [ %.48861115, %bb.gc ] ; 2 uses
  %indvars.iv.next1167 = add nuw nsw i64 %indvars.iv1166, 1 ; 2 uses
  %exitcond1170.not = icmp eq i64 %indvars.iv.next1167, %wide.trip.count1169
  br i1 %exitcond1170.not, label %._crit_edge1118, label %.lr.ph1117, !llvm.loop !18

._crit_edge1118:                                  ; preds = %bb.gf, %proto_item_set_generated.exit, %.preheader
  %.4886.lcssa = phi i64 [ %.2884.lcssa, %.preheader ], [ %.2884.lcssa, %proto_item_set_generated.exit ], [ %.5887, %bb.gf ]
  %i.ago = add i32 %.4879.lcssa, -1
  %i.agp = zext i32 %i.ago to i64
  %i.agq = getelementptr [24 x i8], ptr %i.eh, i64 %i.agp ; 3 uses
  %i.agr = load i64, ptr %i.agq, align 8          ; 2 uses
  %i.ags = getelementptr i8, ptr %i.agq, i64 8
  %i.agt = load i64, ptr %i.ags, align 8          ; 2 uses
  %i.agu = add i64 %i.agt, %i.agr                 ; 3 uses
  %i.agv = call i32 @tvb_captured_length(ptr noundef %0)
  %i.agw = zext i32 %i.agv to i64
  %i.agx = icmp ult i64 %i.agu, %i.agw
  br i1 %i.agx, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %._crit_edge1118
  %i.agy = call i32 @tvb_captured_length(ptr noundef %0)
  %i.agz = icmp samesign ult i64 %i.agu, 2147483648
  br i1 %i.agz, label %value_guard.exit984, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.679, ptr noundef nonnull @.str.680, i32 noundef 768, ptr noundef nonnull @.str.681, ptr noundef nonnull @.str.682) #6
  unreachable

value_guard.exit984:                              ; preds = %bb.gg
  %i.aha = load i32, ptr @hf_elf_blackhole_size, align 4
  %.neg = sub i64 %i.agt, %i.agr
  %.neg928 = trunc i64 %.neg to i32
  %i.ahb = add i32 %i.agy, %.neg928               ; 3 uses
  %i.ahc = trunc nuw nsw i64 %i.agu to i32
  %i.ahd = getelementptr i8, ptr %i.agq, i64 16
  %i.ahe = load ptr, ptr %i.ahd, align 8
  %i.ahf = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.aex, i32 noundef %i.aha, ptr noundef %0, i32 noundef %i.ahc, i32 noundef 1, i32 noundef %i.ahb, ptr noundef nonnull @.str.677, ptr noundef %i.ahe, i32 noundef %i.ahb)
  call void @proto_item_set_len(ptr noundef %i.ahf, i32 noundef %i.ahb)
  br label %bb.gi

bb.gi:                                            ; preds = %value_guard.exit984, %._crit_edge1118
  %i.ahg = load i32, ptr @hf_elf_file_size, align 4
  %i.ahh = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ahi = call ptr @proto_tree_add_uint(ptr noundef %i.aep, i32 noundef %i.ahg, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ahh) ; 0 uses
  %i.ahj = load i32, ptr @hf_elf_header_segment_size, align 4
  %i.ahk = trunc i64 %.4886.lcssa to i32          ; 2 uses
  %i.ahl = call ptr @proto_tree_add_uint(ptr noundef %i.aep, i32 noundef %i.ahj, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ahk) ; 0 uses
  %i.ahm = load i32, ptr @hf_elf_blackholes_size, align 4
  %i.ahn = call i32 @tvb_captured_length(ptr noundef %0)
  %i.aho = sub i32 %i.ahn, %i.ahk
  %i.ahp = call ptr @proto_tree_add_uint(ptr noundef %i.aep, i32 noundef %i.ahm, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.aho) ; 0 uses
  %i.ahq = getelementptr i8, ptr %1, i64 8        ; 2 uses
end_hunk_0
