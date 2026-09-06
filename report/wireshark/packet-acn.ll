Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-acn?download=true
inline.NumInlined: 128
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_acn_root_pdu:bb.a
  %i.ja = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0168.i.i) ; 2 uses
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = load i32, ptr @hf_acn_dmp_vector, align 4
  %i.jd = call ptr @proto_tree_add_uint(ptr noundef %i.ip, i32 noundef %i.jc, ptr noundef %0, i32 noundef %.0168.i.i, i32 noundef 1, i32 noundef %i.jb) ; 0 uses
  %i.je = load ptr, ptr %i.gf, align 8
  %i.jf = call ptr @val_to_str(ptr noundef %i.je, i32 noundef %i.jb, ptr noundef nonnull @acn_dmp_vector_vals, ptr noundef nonnull @.str.780)
  %i.jg = load ptr, ptr %i.ek, align 8            ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jg, ptr noundef nonnull @.str.784)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.jg, ptr noundef nonnull @.str.777, ptr noundef %i.jf)
  %i.jh = and i8 %i.iv, 32
  %.not.i120.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not.i120.i.i, label %dissect_pdu_bit_flag_h.exit.i.i, label %bb.n

bb.n:                                             ; preds = %dissect_pdu_bit_flag_v.exit.i.i
  %i.ji = add i32 %.pre.i, 1                      ; 2 uses
  store i32 %i.ji, ptr %i.ef, align 4
  %i.jj = add i32 %i.iz, 1                        ; 2 uses
  store i32 %i.jj, ptr %i.ej, align 4
  br label %dissect_pdu_bit_flag_h.exit.i.i

dissect_pdu_bit_flag_h.exit.i.i:                  ; preds = %bb.n, %dissect_pdu_bit_flag_v.exit.i.i
  %i.jk = phi i32 [ %i.ji, %bb.n ], [ %.pre.i, %dissect_pdu_bit_flag_v.exit.i.i ]
  %i.jl = phi i32 [ %i.jj, %bb.n ], [ %i.iz, %dissect_pdu_bit_flag_v.exit.i.i ]
  %.0162.i.i = phi i32 [ %.pre.i, %bb.n ], [ 0, %dissect_pdu_bit_flag_v.exit.i.i ]
  %i.jm = call fastcc i32 @acn_add_dmp_address_type(ptr noundef %0, ptr noundef readonly %1, ptr noundef %i.ip, i32 noundef %.0162.i.i, ptr noundef nonnull %14) ; 0 uses
  %i.jn = and i8 %i.iv, 16
  %.not.i121.i.i = icmp eq i8 %i.jn, 0            ; 2 uses
  %i.jo = sub i32 %i.it, %i.jl
  %.3167.i.i = select i1 %.not.i121.i.i, i32 0, i32 %i.jk ; 7 uses
  %.0163.i.i = select i1 %.not.i121.i.i, i32 0, i32 %i.jo
  %i.jp = add i32 %.0163.i.i, %.3167.i.i          ; 3 uses
  %cond.i.i = icmp eq i8 %i.ja, 2
  br i1 %cond.i.i, label %bb.o, label %dissect_acn_dmx_data_pdu.exit.i

bb.o:                                             ; preds = %dissect_pdu_bit_flag_h.exit.i.i
  %i.jq = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.3167.i.i)
  %hf_acn_dmx_2_first_property_address.val.i.i = load i32, ptr @hf_acn_dmx_2_first_property_address, align 4
  %hf_acn_dmx_start_code.val.i.i = load i32, ptr @hf_acn_dmx_start_code, align 4
  %i.jr = select i1 %switch.selectcmp.i, i32 %hf_acn_dmx_2_first_property_address.val.i.i, i32 %hf_acn_dmx_start_code.val.i.i
  %i.js = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.jr, ptr noundef %0, i32 noundef %.3167.i.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jt = add i32 %.3167.i.i, 2
  %i.ju = load i32, ptr @hf_acn_dmx_increment, align 4
  %i.jv = call ptr @proto_tree_add_item(ptr noundef %i.ip, i32 noundef %i.ju, ptr noundef %0, i32 noundef %i.jt, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jw = add i32 %.3167.i.i, 4
  %i.jx = load i32, ptr @hf_acn_dmx_count, align 4
  %i.jy = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ip, i32 noundef %i.jx, ptr noundef %0, i32 noundef %i.jw, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.em) ; 0 uses
  %i.jz = add i32 %.3167.i.i, 6                   ; 2 uses
  switch i32 %i.fy, label %bb.q [
    i32 1346568193, label %bb.p
    i32 4, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.ka = load i32, ptr @hf_acn_dmx_2_start_code, align 4
  %i.kb = call ptr @proto_tree_add_item_ret_uint8(ptr noundef %i.ip, i32 noundef %i.ka, ptr noundef %0, i32 noundef %i.jz, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.en) ; 0 uses
  %i.kc = add i32 %.3167.i.i, 7
  %i.kd = load i16, ptr %i.em, align 2
  %i.ke = add i16 %i.kd, -1
  store i16 %i.ke, ptr %i.em, align 2
  %.pre.i.i = load i8, ptr %i.en, align 1
  %i.kf = zext i8 %.pre.i.i to i16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.kg = phi i16 [ 0, %bb.o ], [ %i.kf, %bb.p ]
  %.0164.i.i = phi i32 [ %i.jz, %bb.o ], [ %i.kc, %bb.p ] ; 11 uses
  %i.kh = load i32, ptr @global_acn_dmx_display_line_format, align 4
  %cond1.i.i = icmp eq i32 %i.kh, 1               ; 2 uses
  %..i.i = select i1 %cond1.i.i, i32 16, i32 20   ; 5 uses
  %.117.i.i = select i1 %cond1.i.i, i32 8, i32 10 ; 3 uses
  %i.ki = load i32, ptr @global_acn_dmx_display_view, align 4
  %cond2.i.i = icmp eq i32 %i.ki, 0               ; 2 uses
  %.0107.i.i = select i1 %cond2.i.i, i8 2, i8 3   ; 7 uses
  %i.kj = load i8, ptr @global_acn_dmx_display_leading_zeros, align 1, !range !7, !noundef !8
  %.0.i.i = select i1 %switch.selectcmp.i, i16 %i.kg, i16 %i.jq
  %i.kk = load ptr, ptr %i.gh, align 8
  %i.kl = zext i16 %.0.i.i to i32
  %i.km = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0164.i.i)
  %i.kn = zext i8 %i.km to i32
  %i.ko = add i32 %.0164.i.i, 1
  %i.kp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ko)
  %i.kq = zext i8 %i.kp to i32
  %i.kr = add i32 %.0164.i.i, 2
  %i.ks = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kr)
  %i.kt = zext i8 %i.ks to i32
  %i.ku = add i32 %.0164.i.i, 3
  %i.kv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ku)
  %i.kw = zext i8 %i.kv to i32
  %i.kx = add i32 %.0164.i.i, 4
  %i.ky = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kx)
  %i.kz = zext i8 %i.ky to i32
  %i.la = add i32 %.0164.i.i, 5
  %i.lb = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.la)
  %i.lc = zext i8 %i.lb to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.kk, i32 noundef 25, ptr noundef nonnull @.str.785, i32 noundef %i.kl, i32 noundef %i.kn, i32 noundef %i.kq, i32 noundef %i.kt, i32 noundef %i.kw, i32 noundef %i.kz, i32 noundef %i.lc)
  %i.ld = getelementptr i8, ptr %i.in, i64 1
  store i8 32, ptr %i.in, align 1
  %i.le = getelementptr i8, ptr %i.in, i64 2
  store i8 32, ptr %i.ld, align 1
  %i.lf = getelementptr i8, ptr %i.in, i64 3
  store i8 32, ptr %i.le, align 1
  %i.lg = add nsw i8 %.0107.i.i, -2               ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %.0109171.i.i = phi i32 [ 0, %bb.q ], [ %i.lh, %bb.t ]
  %.0110170.i.i = phi ptr [ %i.lf, %bb.q ], [ %.1111.i.i, %bb.t ] ; 5 uses
  %i.lh = add nuw nsw i32 %.0109171.i.i, 1        ; 4 uses
  %i.li = trunc nuw nsw i32 %i.lh to i8
  br label %.preheader45.i.i.i

.preheader45.i.i.i:                               ; preds = %.preheader45.i.i.i, %bb.r
  %.043.i.i.i = phi i8 [ %i.lq, %.preheader45.i.i.i ], [ %i.li, %bb.r ] ; 3 uses
  %.1.i.i.i = phi i8 [ %i.ln, %.preheader45.i.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.lj = urem i8 %.043.i.i.i, 10
  %i.lk = zext nneg i8 %i.lj to i64
  %i.ll = getelementptr i8, ptr @.str.789, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1
  %i.ln = add i8 %.1.i.i.i, 1                     ; 4 uses
  %i.lo = zext i8 %.1.i.i.i to i64
  %i.lp = getelementptr i8, ptr %.0110170.i.i, i64 %i.lo
  store i8 %i.lm, ptr %i.lp, align 1
  %i.lq = udiv i8 %.043.i.i.i, 10
  %.not.i122.i.i = icmp ult i8 %.043.i.i.i, 10
  br i1 %.not.i122.i.i, label %.preheader.i.i.i, label %.preheader45.i.i.i, !llvm.loop !35

.preheader.i.i.i:                                 ; preds = %.preheader45.i.i.i
  %i.lr = icmp ult i8 %i.ln, %.0107.i.i
  br i1 %i.lr, label %.lr.ph.preheader.i.i.i, label %ltos.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %i.ls = zext nneg i8 %i.ln to i64
  %scevgep.i.i.i = getelementptr i8, ptr %.0110170.i.i, i64 %i.ls
  %i.lt = sub i8 %i.lg, %.1.i.i.i
  %i.lu = zext i8 %i.lt to i64
  %i.lv = add nuw nsw i64 %i.lu, 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep.i.i.i, i8 32, i64 %i.lv, i1 false)
  br label %ltos.exit.i.i

ltos.exit.i.i:                                    ; preds = %.lr.ph.preheader.i.i.i, %.preheader.i.i.i
  %.2.lcssa.i.i.i = phi i8 [ %i.ln, %.preheader.i.i.i ], [ %.0107.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.lw = zext i8 %.2.lcssa.i.i.i to i64
  %i.lx = getelementptr i8, ptr %.0110170.i.i, i64 %i.lw ; 2 uses
  store i8 0, ptr %i.lx, align 1
  %i.ly = call ptr @g_strreverse(ptr noundef %.0110170.i.i) ; 0 uses
  store i8 32, ptr %i.lx, align 1
  %.sink.i.i.i = add i8 %.2.lcssa.i.i.i, 1
  %i.lz = zext i8 %.sink.i.i.i to i64
  %i.ma = getelementptr i8, ptr %.0110170.i.i, i64 %i.lz ; 5 uses
  store i8 0, ptr %i.ma, align 1
  %i.mb = icmp eq i32 %i.lh, %.117.i.i
  br i1 %i.mb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %ltos.exit.i.i
  %i.mc = getelementptr i8, ptr %i.ma, i64 1
  store i8 124, ptr %i.ma, align 1
  %i.md = getelementptr i8, ptr %i.ma, i64 2
  store i8 32, ptr %i.mc, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %ltos.exit.i.i
  %.1111.i.i = phi ptr [ %i.md, %bb.s ], [ %i.ma, %ltos.exit.i.i ] ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.lh, %..i.i
  br i1 %exitcond.not.i.i, label %bb.u, label %bb.r, !llvm.loop !36

bb.u:                                             ; preds = %bb.t
  %.0106.i.i = select i1 %cond2.i.i, i8 16, i8 10 ; 3 uses
  %i.me = trunc nuw i8 %i.kj to i1
  %.0105.i.i = select i1 %i.me, i8 48, i8 32
  store i8 0, ptr %.1111.i.i, align 1
  %i.mf = load ptr, ptr %i.el, align 8
  %i.mg = load i32, ptr @hf_acn_dmx_data, align 4
  %i.mh = load i16, ptr %i.em, align 2
  %i.mi = zext i16 %i.mh to i32
  %i.mj = call ptr @proto_tree_add_string(ptr noundef %i.mf, i32 noundef %i.mg, ptr noundef %0, i32 noundef %.0164.i.i, i32 noundef %i.mi, ptr noundef %i.in) ; 0 uses
  %i.mk = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.in, i64 noundef 128, i32 noundef 2, i64 noundef 128, ptr noundef nonnull @.str.786, i32 noundef %..i.i) ; 0 uses
  %i.ml = getelementptr i8, ptr %i.in, i64 9      ; 2 uses
  %i.mm = icmp ult i32 %.0164.i.i, %i.jp
  br i1 %i.mm, label %.lr.ph.i.i, label %dissect_acn_dmx_data_pdu.exit.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %i.mn = zext nneg i8 %.0107.i.i to i64          ; 3 uses
  %i.mo = add i32 %i.jp, -1
  %i.mp = sub nuw i32 %i.jp, %.0164.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.ac, %.lr.ph.i.i
  %.1176.i.i = phi i32 [ %.0164.i.i, %.lr.ph.i.i ], [ %i.oe, %bb.ac ] ; 3 uses
  %.2175.i.i = phi ptr [ %i.ml, %.lr.ph.i.i ], [ %.3.i.i, %bb.ac ] ; 7 uses
  %.0112174.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1113.i.i, %bb.ac ]
  %.0114173.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.nr, %bb.ac ]
  %.1165172.i.i = phi i32 [ %.0164.i.i, %.lr.ph.i.i ], [ %.2166.i.i, %bb.ac ] ; 4 uses
  %i.mq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1176.i.i) ; 3 uses
  %i.mr = load i32, ptr @global_acn_dmx_display_view, align 4
  %i.ms = icmp eq i32 %i.mr, 2
  br i1 %i.ms, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.mt = add i8 %i.mq, -1
  %or.cond10.i.i = icmp ult i8 %i.mt, 2
  br i1 %or.cond10.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.mu = zext i8 %i.mq to i16
  %i.mv = mul nuw nsw i16 %i.mu, 20
  %i.mw = udiv i16 %i.mv, 51
  %i.mx = trunc nuw nsw i16 %i.mw to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.0108.i.i = phi i8 [ %i.mq, %bb.v ], [ %i.mx, %bb.x ], [ 1, %bb.w ] ; 2 uses
  %i.my = load i8, ptr @global_acn_dmx_display_zeros, align 1, !range !7, !noundef !8
  %15 = or i8 %i.my, %.0108.i.i
  %or.cond4.i.not.i.i = icmp eq i8 %15, 0
  br i1 %or.cond4.i.not.i.i, label %.preheader46.preheader.i.i.i, label %.preheader45.i125.i.i

.preheader46.preheader.i.i.i:                     ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef align 1 %.2175.i.i, i8 46, i64 %i.mn, i1 false)
  %i.mz = getelementptr i8, ptr %.2175.i.i, i64 %i.mn
  store i8 32, ptr %i.mz, align 1
  br label %ltos.exit140.i.i

.preheader45.i125.i.i:                            ; preds = %bb.y, %.preheader45.i125.i.i
  %.043.i127.i.i = phi i8 [ %i.nh, %.preheader45.i125.i.i ], [ %.0108.i.i, %bb.y ] ; 3 uses
  %.1.i128.i.i = phi i8 [ %i.ne, %.preheader45.i125.i.i ], [ 0, %bb.y ] ; 3 uses
  %i.na = urem i8 %.043.i127.i.i, %.0106.i.i
  %i.nb = zext nneg i8 %i.na to i64
  %i.nc = getelementptr i8, ptr @.str.789, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1
  %i.ne = add i8 %.1.i128.i.i, 1                  ; 4 uses
  %i.nf = zext i8 %.1.i128.i.i to i64
  %i.ng = getelementptr i8, ptr %.2175.i.i, i64 %i.nf
  store i8 %i.nd, ptr %i.ng, align 1
  %i.nh = udiv i8 %.043.i127.i.i, %.0106.i.i
  %.not.i129.i.i = icmp ugt i8 %.0106.i.i, %.043.i127.i.i
  br i1 %.not.i129.i.i, label %.preheader.i131.i.i, label %.preheader45.i125.i.i, !llvm.loop !35

.preheader.i131.i.i:                              ; preds = %.preheader45.i125.i.i
  %i.ni = icmp ult i8 %i.ne, %.0107.i.i
  %i.nj = zext i8 %i.ne to i64                    ; 2 uses
  br i1 %i.ni, label %.lr.ph.preheader.i133.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i133.i.i:                        ; preds = %.preheader.i131.i.i
  %scevgep.i134.i.i = getelementptr i8, ptr %.2175.i.i, i64 %i.nj
  %i.nk = sub i8 %i.lg, %.1.i128.i.i
  %i.nl = zext i8 %i.nk to i64
  %i.nm = add nuw nsw i64 %i.nl, 1
  call void @llvm.memset.p0.i64(ptr noundef align 1 %scevgep.i134.i.i, i8 range(i8 32, 49) %.0105.i.i, i64 %i.nm, i1 false)
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i133.i.i, %.preheader.i131.i.i
  %.pre-phi.i.i = phi i64 [ %i.mn, %.lr.ph.preheader.i133.i.i ], [ %i.nj, %.preheader.i131.i.i ]
  %.2.lcssa.i132.i.i = phi i8 [ %.0107.i.i, %.lr.ph.preheader.i133.i.i ], [ %i.ne, %.preheader.i131.i.i ]
  %i.nn = getelementptr i8, ptr %.2175.i.i, i64 %.pre-phi.i.i ; 2 uses
  store i8 0, ptr %i.nn, align 1
  %i.no = call ptr @g_strreverse(ptr noundef %.2175.i.i) ; 0 uses
  store i8 32, ptr %i.nn, align 1
  br label %ltos.exit140.i.i

ltos.exit140.i.i:                                 ; preds = %._crit_edge.i.i.i, %.preheader46.preheader.i.i.i
  %.sink.in.i.i.i = phi i8 [ %.2.lcssa.i132.i.i, %._crit_edge.i.i.i ], [ %.0107.i.i, %.preheader46.preheader.i.i.i ]
  %.sink.i123.i.i = add i8 %.sink.in.i.i.i, 1
  %i.np = zext i8 %.sink.i123.i.i to i64
  %i.nq = getelementptr i8, ptr %.2175.i.i, i64 %i.np ; 5 uses
  store i8 0, ptr %i.nq, align 1
  %i.nr = add i32 %.0114173.i.i, 1                ; 4 uses
  %i.ns = add i32 %.0112174.i.i, 1                ; 4 uses
  %i.nt = icmp eq i32 %i.ns, %..i.i
  %i.nu = icmp eq i32 %.1176.i.i, %i.mo
  %or.cond119.i.i = select i1 %i.nt, i1 true, i1 %i.nu
  br i1 %or.cond119.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %ltos.exit140.i.i
  %i.nv = load ptr, ptr %i.el, align 8
  %i.nw = load i32, ptr @hf_acn_dmx_data, align 4
  %i.nx = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format(ptr noundef %i.nv, i32 noundef %i.nw, ptr noundef %0, i32 noundef %.1165172.i.i, i32 noundef %i.ns, ptr noundef %i.in, ptr noundef nonnull @.str.777, ptr noundef %i.in) ; 0 uses
  %i.ny = add i32 %.1165172.i.i, %..i.i
  %i.nz = add i32 %i.nr, %..i.i
  %i.oa = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.in, i64 noundef 128, i32 noundef 2, i64 noundef 128, ptr noundef nonnull @.str.787, i32 noundef %i.nr, i32 noundef %i.nz) ; 0 uses
  br label %bb.ac

bb.aa:                                            ; preds = %ltos.exit140.i.i
  %i.ob = icmp eq i32 %i.ns, %.117.i.i
  br i1 %i.ob, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.oc = getelementptr i8, ptr %i.nq, i64 1
  store i8 124, ptr %i.nq, align 1
  %i.od = getelementptr i8, ptr %i.nq, i64 2      ; 2 uses
  store i8 32, ptr %i.oc, align 1
  store i8 0, ptr %i.od, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.2166.i.i = phi i32 [ %i.ny, %bb.z ], [ %.1165172.i.i, %bb.ab ], [ %.1165172.i.i, %bb.aa ]
  %.1113.i.i = phi i32 [ 0, %bb.z ], [ %.117.i.i, %bb.ab ], [ %i.ns, %bb.aa ]
  %.3.i.i = phi ptr [ %i.ml, %bb.z ], [ %i.od, %bb.ab ], [ %i.nq, %bb.aa ]
  %i.oe = add nuw i32 %.1176.i.i, 1
  %exitcond178.not.i.i = icmp eq i32 %i.nr, %i.mp
  br i1 %exitcond178.not.i.i, label %dissect_acn_dmx_data_pdu.exit.i, label %bb.v, !llvm.loop !37

dissect_acn_dmx_data_pdu.exit.i:                  ; preds = %bb.ac, %bb.u, %dissect_pdu_bit_flag_h.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  %.pre60.i = load i32, ptr %i.eq, align 4
  %.pre61.i = load i32, ptr %i.er, align 4
  br label %dissect_acn_dmx_base_pdu.exit

dissect_acn_dmx_base_pdu.exit:                    ; preds = %dissect_acn_common_base_pdu.exit.i, %dissect_acn_dmx_data_pdu.exit.i
  %i.of = phi i32 [ %i.gp, %dissect_acn_common_base_pdu.exit.i ], [ %.pre61.i, %dissect_acn_dmx_data_pdu.exit.i ]
  %i.og = phi i32 [ %i.gn, %dissect_acn_common_base_pdu.exit.i ], [ %.pre60.i, %dissect_acn_dmx_data_pdu.exit.i ]
  %i.oh = add i32 %i.og, %i.of                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  store i32 %i.oh, ptr %i.fe, align 4
  %i.oi = icmp eq i32 %i.oh, %i.gi
  br i1 %i.oi, label %.loopexit, label %bb.f, !llvm.loop !38

bb.ad:                                            ; preds = %dissect_pdu_bit_flag_v.exit
  %i.oj = load ptr, ptr %i.fg, align 8
  %i.ok = call fastcc i32 @dissect_acn_root_pdu_header(ptr noundef %0, ptr noundef %1, ptr noundef %i.fj, ptr noundef %i.oj, ptr noundef nonnull @.str.771, ptr noundef nonnull %i.ez, i8 noundef zeroext %i.fp, i32 noundef %i.fm, ptr noundef nonnull %i.fe, ptr noundef nonnull %i.ff, ptr noundef %4, i1 noundef zeroext true, ptr noundef nonnull %i.fd, i1 noundef zeroext true)
  %i.ol = getelementptr i8, ptr %1, i64 416       ; 3 uses
  %i.om = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %.pre248 = load i32, ptr %i.fe, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %dissect_acn_dmx_extension_base_pdu.exit, %bb.ad
  %i.on = phi i32 [ %.pre248, %bb.ad ], [ %i.sw, %dissect_acn_dmx_extension_base_pdu.exit ] ; 3 uses
  %.sroa.3.1 = phi i32 [ 0, %bb.ad ], [ %.sroa.3.10, %dissect_acn_dmx_extension_base_pdu.exit ]
  %.sroa.19177.1 = phi i32 [ 0, %bb.ad ], [ %.sroa.19177.10, %dissect_acn_dmx_extension_base_pdu.exit ]
  %i.oo = icmp ult i32 %i.on, %i.ok
  br i1 %i.oo, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.op = load ptr, ptr %i.fh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  store i32 %i.on, ptr %i.dx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee) #7
  %i.oq = load i32, ptr @ett_acn_dmx_pdu, align 4
  call fastcc void @begin_dissect_acn_pdu(ptr noundef nonnull %i.ed, ptr noundef %0, ptr noundef nonnull %i.ec, ptr noundef %i.op, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dy, ptr noundef nonnull %i.ea, ptr noundef nonnull %i.eb, i32 noundef %i.oq, i1 noundef zeroext true)
  %i.or = load ptr, ptr %i.ed, align 8            ; 5 uses
  %i.os = load i32, ptr %i.dz, align 4            ; 5 uses
  %i.ot = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ou = load i32, ptr %i.ea, align 4            ; 5 uses
  %hf_acn_pdu_length.val.i.i72 = load i32, ptr @hf_acn_pdu_length, align 4
  %i.ov = call ptr @proto_tree_add_uint(ptr noundef %i.or, i32 noundef %hf_acn_pdu_length.val.i.i72, ptr noundef %0, i32 noundef %i.os, i32 noundef %i.ot, i32 noundef %i.ou) ; 0 uses
  %i.ow = load i8, ptr %i.dy, align 1             ; 2 uses
  %i.ox = and i8 %i.ow, 64
  %.not.i.i.i73 = icmp eq i8 %i.ox, 0
  %.pre249 = load i32, ptr %i.dx, align 4         ; 3 uses
  br i1 %.not.i.i.i73, label %dissect_acn_common_base_pdu.exit.i74, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.oy = add i32 %.pre249, 4                     ; 2 uses
  store i32 %i.oy, ptr %i.dx, align 4
  %i.oz = add i32 %i.ot, 4
  store i32 %i.oz, ptr %i.eb, align 4
  br label %dissect_acn_common_base_pdu.exit.i74

dissect_acn_common_base_pdu.exit.i74:             ; preds = %bb.af, %bb.ag
  %i.pa = phi i32 [ %i.oy, %bb.ag ], [ %.pre249, %bb.af ]
  %.sroa.3.8 = phi i32 [ %.pre249, %bb.ag ], [ %.sroa.3.1, %bb.af ] ; 4 uses
  %i.pb = load i32, ptr @hf_acn_dmx_extension_vector, align 4
  %i.pc = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.or, i32 noundef %i.pb, ptr noundef %0, i32 noundef %.sroa.3.8, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.ee) ; 0 uses
  %i.pd = load ptr, ptr %i.ol, align 8
  %i.pe = load i32, ptr %i.ee, align 4
  %i.pf = call ptr @val_to_str(ptr noundef %i.pd, i32 noundef %i.pe, ptr noundef nonnull @acn_dmx_extension_vector_vals, ptr noundef nonnull @.str.780)
  %i.pg = load ptr, ptr %i.ec, align 8            ; 4 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.pg, ptr noundef nonnull @.str.781, ptr noundef %i.pf)
  %i.ph = and i8 %i.ow, 16
  %.not.i.i75 = icmp eq i8 %i.ph, 0
  %spec.select200 = select i1 %.not.i.i75, i32 %.sroa.19177.1, i32 %i.pa ; 9 uses
  %i.pi = load i32, ptr %i.ee, align 4
  switch i32 %i.pi, label %dissect_acn_dmx_extension_base_pdu.exit [
    i32 2, label %bb.ah
    i32 1, label %bb.ap
  ]

bb.ah:                                            ; preds = %dissect_acn_common_base_pdu.exit.i74
  %i.pj = load i32, ptr @hf_acn_dmx_source_name, align 4
  %i.pk = call ptr @proto_tree_add_item(ptr noundef %i.or, i32 noundef %i.pj, ptr noundef %0, i32 noundef %spec.select200, i32 noundef 64, i32 noundef 2) ; 0 uses
  %i.pl = add i32 %spec.select200, 64
  %i.pm = load i32, ptr @hf_acn_dmx_discovery_framing_reserved, align 4
  %i.pn = call ptr @proto_tree_add_item(ptr noundef %i.or, i32 noundef %i.pm, ptr noundef %0, i32 noundef %i.pl, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.po = add i32 %spec.select200, 68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  store i32 %i.po, ptr %i.do, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw) #7
  %i.pp = load ptr, ptr %i.ol, align 8
  %i.pq = call noalias dereferenceable_or_null(97) ptr @wmem_alloc(ptr noundef %i.pp, i64 noundef 97) #8 ; 5 uses
  store i8 0, ptr %i.pq, align 1
  %i.pr = load i32, ptr @ett_acn_dmx_pdu, align 4
  call fastcc void @begin_dissect_acn_pdu(ptr noundef nonnull %i.du, ptr noundef %0, ptr noundef nonnull %i.dt, ptr noundef %i.or, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.ds, i32 noundef %i.pr, i1 noundef zeroext true)
  %i.ps = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.pt = load i32, ptr %i.dq, align 4
end_hunk_0
