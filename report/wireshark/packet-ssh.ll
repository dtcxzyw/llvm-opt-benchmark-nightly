Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ssh?download=true
inline.NumInlined: 154
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dissect_ssh:bb.a

bb.cd:                                            ; preds = %bb.cc
  %i.lx = getelementptr i8, ptr %1, i64 340
  store i32 %.06896.i, ptr %i.lx, align 4
  %i.ly = sub nuw i32 %i.lv, %i.lk
  store i32 %i.ly, ptr %i.ek, align 8
  br label %.thread172

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  %i.lz = load i32, ptr @hf_ssh_packet_length, align 4
  %i.ma = call ptr @proto_tree_add_uint(ptr noundef %.167.i, i32 noundef %i.lz, ptr noundef %0, i32 noundef %.06896.i, i32 noundef 4, i32 noundef %i.lr)
  %i.mb = icmp ugt i32 %i.lr, 32767
  br i1 %i.mb, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.mc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ma, ptr noundef nonnull @ei_ssh_packet_length, ptr noundef nonnull @.str.795, i32 noundef %i.lr) ; 0 uses
  %i.md = add i32 %i.lk, -4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.0147.i.i = phi i32 [ %i.md, %bb.cf ], [ %i.lr, %bb.ce ] ; 2 uses
  %i.me = add i32 %.06896.i, 4                    ; 3 uses
  %i.mf = call ptr @wmem_file_scope()
  %i.mg = load i32, ptr @proto_ssh, align 4
  %i.mh = call ptr @p_get_proto_data(ptr noundef %i.mf, ptr noundef %1, i32 noundef %i.mg, i32 noundef 0) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i, label %bb.ch, label %ssh_get_packet_info.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.mi = call ptr @wmem_file_scope()
  %i.mj = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.mi, i64 noundef 16) #23 ; 4 uses
  store i8 %i.em, ptr %i.mj, align 8
  %i.mk = getelementptr i8, ptr %i.mj, i64 8
  store ptr null, ptr %i.mk, align 8
  %i.ml = call ptr @wmem_file_scope()
  %i.mm = load i32, ptr @proto_ssh, align 4
  call void @p_add_proto_data(ptr noundef %i.ml, ptr noundef %1, i32 noundef %i.mm, i32 noundef 0, ptr noundef %i.mj)
  br label %ssh_get_packet_info.exit.i.i

ssh_get_packet_info.exit.i.i:                     ; preds = %bb.ch, %bb.cg
  %.0.i.i.i = phi ptr [ %i.mh, %bb.cg ], [ %i.mj, %bb.ch ]
  %i.mn = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.mo = add i32 %i.mn, %i.me                    ; 2 uses
  %i.mp = call ptr @wmem_file_scope()
  %i.mq = load i32, ptr @proto_ssh, align 4
  %i.mr = call ptr @p_get_proto_data(ptr noundef %i.mp, ptr noundef %1, i32 noundef %i.mq, i32 noundef 0) ; 2 uses
  %.not.i163.i.i = icmp eq ptr %i.mr, null
  br i1 %.not.i163.i.i, label %.loopexit.i.i, label %bb.ci

bb.ci:                                            ; preds = %ssh_get_packet_info.exit.i.i
  %i.ms = getelementptr i8, ptr %i.mr, i64 8
  %.011.i.i.i = load ptr, ptr %i.ms, align 8      ; 2 uses
  %.not1012.i.i.i = icmp eq ptr %.011.i.i.i, null
  br i1 %.not1012.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ci, %bb.cj
  %.013.i.i.i = phi ptr [ %.0.i164.i.i, %bb.cj ], [ %.011.i.i.i, %bb.ci ] ; 3 uses
  %i.mt = getelementptr i8, ptr %.013.i.i.i, i64 20
  %i.mu = load i32, ptr %i.mt, align 4
  %i.mv = icmp eq i32 %i.mu, %i.mo
  br i1 %i.mv, label %ssh_get_message.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i
  %i.mw = getelementptr i8, ptr %.013.i.i.i, i64 32
  %.0.i164.i.i = load ptr, ptr %i.mw, align 8     ; 2 uses
  %.not10.i.i.i = icmp eq ptr %.0.i164.i.i, null
  br i1 %.not10.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !14

.loopexit.i.i:                                    ; preds = %bb.cj, %bb.ci, %ssh_get_packet_info.exit.i.i
  %i.mx = call ptr @wmem_file_scope()
  %i.my = call noalias dereferenceable_or_null(88) ptr @wmem_alloc0(ptr noundef %i.mx, i64 noundef 88) #23 ; 5 uses
  %i.mz = load i32, ptr %i.en, align 8            ; 2 uses
  %i.na = add i32 %i.mz, 1                        ; 2 uses
  store i32 %i.na, ptr %i.en, align 8
  store i32 %i.mz, ptr %i.my, align 8
  %i.nb = getelementptr i8, ptr %i.my, i64 20
  store i32 %i.mo, ptr %i.nb, align 4
  %i.nc = getelementptr i8, ptr %i.my, i64 32
  store ptr null, ptr %i.nc, align 8
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.782, ptr noundef nonnull %i.eo, i32 noundef %i.na)
  %i.nd = getelementptr i8, ptr %.0.i.i.i, i64 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.loopexit.i.i
  %.0.i.i = phi ptr [ %i.nd, %.loopexit.i.i ], [ %i.nf, %bb.ck ] ; 2 uses
  %i.ne = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %.not158.i.i = icmp eq ptr %i.ne, null
  %i.nf = getelementptr i8, ptr %i.ne, i64 32
  br i1 %.not158.i.i, label %bb.cl, label %bb.ck, !llvm.loop !15

bb.cl:                                            ; preds = %bb.ck
  store ptr %i.my, ptr %.0.i.i, align 8
  br label %ssh_get_message.exit.i.i

ssh_get_message.exit.i.i:                         ; preds = %.lr.ph.i.i.i, %bb.cl
  %.0145.i.i = phi ptr [ %i.my, %bb.cl ], [ %.013.i.i.i, %.lr.ph.i.i.i ]
  %i.ng = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.me)
  %i.nh = load i32, ptr @hf_ssh_padding_length, align 4
  %i.ni = zext i8 %i.ng to i32                    ; 3 uses
  %i.nj = call ptr @proto_tree_add_uint(ptr noundef %.167.i, i32 noundef %i.nh, ptr noundef %0, i32 noundef %i.me, i32 noundef 1, i32 noundef %i.ni) ; 0 uses
  %i.nk = add i32 %.06896.i, 5                    ; 4 uses
  %i.nl = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not159.i.i = icmp eq ptr %i.nl, null
  br i1 %.not159.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %ssh_get_message.exit.i.i
  %i.nm = load ptr, ptr %i.ed, align 8
  %i.nn = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.nm, ptr noundef nonnull @.str.891, ptr noundef nonnull @.str.890, ptr noundef nonnull %i.nl)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %ssh_get_message.exit.i.i
  %.0146.i.i = phi ptr [ %i.nn, %bb.cm ], [ @.str.890, %ssh_get_message.exit.i.i ]
  %i.no = add i32 %.0147.i.i, -1
  %i.np = load i32, ptr @ett_key_exchange, align 4
  %i.nq = call ptr @proto_tree_add_subtree(ptr noundef %.167.i, ptr noundef %0, i32 noundef %i.nk, i32 noundef %i.no, i32 noundef %i.np, ptr noundef null, ptr noundef %.0146.i.i) ; 4 uses
  %i.nr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.nk) ; 4 uses
  %i.ns = add i8 %i.nr, -30
  %or.cond.i.i = icmp ult i8 %i.ns, 10
  br i1 %or.cond.i.i, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nt = load ptr, ptr %i.fe, align 8
  %i.nu = call i32 %i.nt(i8 noundef zeroext %i.nr, ptr noundef %0, ptr noundef %1, i32 noundef %i.nk, ptr noundef %i.nq, ptr noundef %.0107141), !inline_history !16
  br label %ssh_decryption_setup_mac.exit.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.nv = zext i8 %i.nr to i32
  %i.nw = load i32, ptr @hf_ssh2_msg_code, align 4
  %i.nx = call ptr @proto_tree_add_item(ptr noundef %i.nq, i32 noundef %i.nw, ptr noundef %0, i32 noundef %i.nk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ny = add i32 %.06896.i, 6                    ; 8 uses
  %i.nz = load ptr, ptr %i.dy, align 8
  %i.oa = load ptr, ptr %i.ed, align 8
  %i.ob = call ptr @val_to_str(ptr noundef %i.oa, i32 noundef %i.nv, ptr noundef nonnull @ssh2_msg_vals, ptr noundef nonnull @.str.678)
  call void @col_append_sep_str(ptr noundef %i.nz, i32 noundef 25, ptr noundef null, ptr noundef %i.ob)
  switch i8 %i.nr, label %ssh_decryption_setup_mac.exit.i.i [
    i8 20, label %bb.cq
    i8 21, label %bb.ct
  ]

bb.cq:                                            ; preds = %bb.cp
  %i.oc = call fastcc i32 @ssh_dissect_key_init(ptr noundef %0, ptr noundef %1, i32 noundef %i.ny, ptr noundef %i.nq, i32 noundef range(i32 0, 2) %i.ec, ptr noundef %.0107141) ; 3 uses
  %i.od = load i32, ptr %i.eh, align 4
  %i.oe = icmp eq i32 %i.od, 0
  br i1 %i.oe, label %bb.cr, label %ssh_decryption_setup_mac.exit.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.of = load ptr, ptr %i.f, align 8
  %i.og = getelementptr i8, ptr %i.of, i64 53
  %i.oh = load i16, ptr %i.og, align 1
  %i.oi = and i16 %i.oh, 8
  %.not161.i.i = icmp eq i16 %i.oi, 0
  br i1 %.not161.i.i, label %bb.cs, label %ssh_decryption_setup_mac.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.oj = load i32, ptr %i.d, align 4
  store i32 %i.oj, ptr %i.eh, align 4
  br label %ssh_decryption_setup_mac.exit.i.i

bb.ct:                                            ; preds = %bb.cp
  %i.ok = load i32, ptr %i.ei, align 8
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %bb.cu, label %ssh_decryption_setup_mac.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.om = load i32, ptr %i.d, align 4
  store i32 %i.om, ptr %i.ei, align 8
  store i32 %i.ny, ptr %i.ej, align 4
  %i.on = load ptr, ptr %i.f, align 8
  %i.oo = getelementptr i8, ptr %i.on, i64 53
  %i.op = load i16, ptr %i.oo, align 1
  %i.oq = and i16 %i.op, 8
  %.not160.i.i = icmp eq i16 %i.oq, 0
  br i1 %.not160.i.i, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.or = load i8, ptr %i.eq, align 2, !range !12, !noundef !13
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i32 0, ptr %i.en, align 8
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.800, ptr noundef nonnull %i.eo)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  br i1 %.013.i, label %bb.dd, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.801)
  call fastcc void @ssh_decryption_setup_cipher(ptr noundef %i.dm, ptr noundef %i.ey, ptr noundef %i.ez)
  %i.ot = load i32, ptr %i.fa, align 8
  %i.ou = icmp eq i32 %i.ot, 131073
  br i1 %i.ou, label %bb.cz, label %ssh_decryption_setup_mac.exit.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.ov = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not.i91.i = icmp eq ptr %i.ov, null
  br i1 %.not.i91.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(32) %i.fc, ptr noundef nonnull align 1 dereferenceable(32) %i.ov, i64 noundef 32, i1 noundef false) #25
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %i.fc, i8 noundef 0, i64 noundef 32, i1 noundef false) #25
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  store i32 32, ptr %i.fd, align 4
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.851)
  %i.ow = load i32, ptr %i.fd, align 4
  %i.ox = zext i32 %i.ow to i64
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.848, ptr noundef %i.fc, i64 noundef %i.ox)
  br label %ssh_decryption_setup_mac.exit.i.i

bb.dd:                                            ; preds = %bb.cx
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.802)
  call fastcc void @ssh_decryption_setup_cipher(ptr noundef %i.er, ptr noundef %i.es, ptr noundef %i.et)
  %i.oy = load i32, ptr %i.eu, align 8
  %i.oz = icmp eq i32 %i.oy, 131073
  br i1 %i.oz, label %bb.de, label %ssh_decryption_setup_mac.exit.i.i

bb.de:                                            ; preds = %bb.dd
  %i.pa = load ptr, ptr %i.ev, align 8            ; 2 uses
  %.not.i165.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i165.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(32) %i.ew, ptr noundef nonnull align 1 dereferenceable(32) %i.pa, i64 noundef 32, i1 noundef false) #25
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %i.ew, i8 noundef 0, i64 noundef 32, i1 noundef false) #25
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  store i32 32, ptr %i.ex, align 4
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.851)
  %i.pb = load i32, ptr %i.ex, align 4
  %i.pc = zext i32 %i.pb to i64
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.848, ptr noundef %i.ew, i64 noundef %i.pc)
  br label %ssh_decryption_setup_mac.exit.i.i

ssh_decryption_setup_mac.exit.i.i:                ; preds = %bb.dh, %bb.dd, %bb.dc, %bb.cy, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.0149.i.i = phi i32 [ %i.nu, %bb.co ], [ %i.ny, %bb.cp ], [ %i.oc, %bb.cr ], [ %i.oc, %bb.cs ], [ %i.oc, %bb.cq ], [ %i.ny, %bb.ct ], [ %i.ny, %bb.dh ], [ %i.ny, %bb.dd ], [ %i.ny, %bb.cy ], [ %i.ny, %bb.dc ] ; 2 uses
  %i.pd = add i32 %.0147.i.i, 4                   ; 2 uses
  %i.pe = sub i32 %i.pd, %i.ni                    ; 2 uses
  %.neg.i.i = sub i32 %.06896.i, %.0149.i.i
  %i.pf = add i32 %.neg.i.i, %i.pe                ; 2 uses
  %.not162.i.i = icmp eq i32 %i.pf, 0
  br i1 %.not162.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %ssh_decryption_setup_mac.exit.i.i
  %i.pg = load i32, ptr @hf_ssh_payload, align 4
  %i.ph = call ptr @proto_tree_add_item(ptr noundef %i.nq, i32 noundef %i.pg, ptr noundef %0, i32 noundef %.0149.i.i, i32 noundef %i.pf, i32 noundef 0) ; 0 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %ssh_decryption_setup_mac.exit.i.i
  %i.pi = add i32 %i.pe, %.06896.i
  %i.pj = load i32, ptr @hf_ssh_padding_string, align 4
  %i.pk = call ptr @proto_tree_add_item(ptr noundef %.167.i, i32 noundef %i.pj, ptr noundef %0, i32 noundef %i.pi, i32 noundef %i.ni, i32 noundef 0) ; 0 uses
  %i.pl = add i32 %i.pd, %.06896.i                ; 3 uses
  %i.pm = load i32, ptr @hf_ssh_seq_num, align 4
  %i.pn = load i32, ptr %.0145.i.i, align 8
  %i.po = call ptr @proto_tree_add_uint(ptr noundef %.167.i, i32 noundef %i.pm, ptr noundef %0, i32 noundef %i.pl, i32 noundef 0, i32 noundef %i.pn) ; 2 uses
  %.not.i166.i.i = icmp eq ptr %i.po, null
  br i1 %.not.i166.i.i, label %ssh_dissect_key_exchange.exit.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pp = getelementptr i8, ptr %i.po, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8            ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.pq, null
  br i1 %.not5.i.i.i, label %ssh_dissect_key_exchange.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pr = getelementptr i8, ptr %i.pq, i64 28     ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4
  %i.pt = or i32 %i.ps, 2
  store i32 %i.pt, ptr %i.pr, align 4
  br label %ssh_dissect_key_exchange.exit.i

ssh_dissect_key_exchange.exit.i:                  ; preds = %bb.dj, %bb.dk, %bb.dl
  %i.pu = call ptr @wmem_file_scope()
  %i.pv = load i32, ptr @proto_ssh, align 4
  %i.pw = call ptr @p_get_proto_data(ptr noundef %i.pu, ptr noundef %1, i32 noundef %i.pv, i32 noundef 0)
  %.not.i89.i = icmp eq ptr %i.pw, null
  br i1 %.not.i89.i, label %bb.dm, label %ssh_get_packet_info.exit.i

bb.dm:                                            ; preds = %ssh_dissect_key_exchange.exit.i
  %i.px = call ptr @wmem_file_scope()
  %i.py = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.px, i64 noundef 16) #23 ; 3 uses
  store i8 %i.em, ptr %i.py, align 8
  %i.pz = getelementptr i8, ptr %i.py, i64 8
  store ptr null, ptr %i.pz, align 8
  %i.qa = call ptr @wmem_file_scope()
  %i.qb = load i32, ptr @proto_ssh, align 4
  call void @p_add_proto_data(ptr noundef %i.qa, ptr noundef %1, i32 noundef %i.qb, i32 noundef 0, ptr noundef %i.py)
  br label %ssh_get_packet_info.exit.i

bb.dn:                                            ; preds = %bb.bu, %bb.bw, %bb.bx
  %i.qc = call fastcc i32 @ssh_try_dissect_encrypted_packet(ptr noundef %0, ptr noundef %1, ptr noundef %i.do, i32 noundef %.06896.i, ptr noundef %.167.i) ; 2 uses
  %i.qd = load i32, ptr %i.ek, align 8
  %.not87.i = icmp eq i32 %i.qd, 0
  br i1 %.not87.i, label %ssh_get_packet_info.exit.i, label %ssh_dissect_ssh2.exit.thread

ssh_get_packet_info.exit.i:                       ; preds = %bb.dn, %bb.dm, %ssh_dissect_key_exchange.exit.i
  %.169.i = phi i32 [ %i.qc, %bb.dn ], [ %i.pl, %ssh_dissect_key_exchange.exit.i ], [ %i.pl, %bb.dm ] ; 4 uses
  %.not88.i = icmp eq ptr %.167.i, null
  br i1 %.not88.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %ssh_get_packet_info.exit.i
  %i.qe = sub i32 %.169.i, %.06896.i
  call void @proto_item_set_len(ptr noundef nonnull %.167.i, i32 noundef %i.qe)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %ssh_get_packet_info.exit.i
  %i.qf = call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %.169.i)
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %.lr.ph.i, label %ssh_dissect_ssh2.exit.thread

ssh_dissect_ssh2.exit.thread169:                  ; preds = %bb.al, %bb.ap
  %storemerge = phi i32 [ %i.iy, %bb.ap ], [ 268435455, %bb.al ]
  store i32 %storemerge, ptr %i.ek, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.thread172

ssh_dissect_ssh2.exit:                            ; preds = %bb.bd, %bb.be
  %i.qh = add i32 %.0.i121, %.086.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %ssh_dissect_ssh2.exit.thread

ssh_dissect_ssh2.exit.thread:                     ; preds = %bb.dn, %bb.dp, %bb.ai, %bb.ag, %ssh_dissect_ssh2.exit
  %.1158 = phi i32 [ %i.qh, %ssh_dissect_ssh2.exit ], [ %.0.i.ph, %bb.ag ], [ %i.id, %bb.ai ], [ %i.qc, %bb.dn ], [ %.169.i, %bb.dp ] ; 2 uses
  %.1133156 = phi i32 [ 1, %ssh_dissect_ssh2.exit ], [ %.3.ph, %bb.ag ], [ 0, %bb.ai ], [ 2, %bb.dp ], [ 2, %bb.dn ]
  %.not117 = icmp sgt i32 %.1158, %.0108
  br i1 %.not117, label %bb.m, label %.thread177

.thread177:                                       ; preds = %bb.ah, %bb.bf, %ssh_dissect_ssh2.exit.thread, %bb.m
  %i.qi = load ptr, ptr %i.dy, align 8
  %i.qj = select i1 %.013.i, ptr @.str.676, ptr @.str.677
  call void (ptr, i32, ptr, ...) @col_prepend_fstr(ptr noundef %i.qi, i32 noundef 25, ptr noundef nonnull @.str.675, ptr noundef nonnull %i.qj)
  %i.qk = load i32, ptr @hf_ssh_direction, align 4
  %i.ql = call ptr @proto_tree_add_boolean(ptr noundef %i.ds, i32 noundef %i.qk, ptr noundef %0, i32 noundef 0, i32 noundef 0, i64 noundef %i.dn) ; 2 uses
  %.not.i125 = icmp eq ptr %i.ql, null
  br i1 %.not.i125, label %proto_item_set_generated.exit, label %bb.dq

bb.dq:                                            ; preds = %.thread177
  %i.qm = getelementptr i8, ptr %i.ql, i64 40
  %i.qn = load ptr, ptr %i.qm, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.qn, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qo = getelementptr i8, ptr %i.qn, i64 28     ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4
  %i.qq = or i32 %i.qp, 2
  store i32 %i.qq, ptr %i.qo, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %.thread177, %bb.dq, %bb.dr
  %i.qr = load ptr, ptr @ssh_debug_file, align 8  ; 2 uses
  %.not.i126 = icmp eq ptr %i.qr, null
  br i1 %.not.i126, label %.thread172, label %bb.ds

bb.ds:                                            ; preds = %proto_item_set_generated.exit
  %i.qs = call i32 @fflush(ptr noundef nonnull %i.qr) ; 0 uses
  br label %.thread172

.thread172:                                       ; preds = %bb.ds, %proto_item_set_generated.exit, %bb.cd, %bb.ca, %ssh_dissect_protocol.exit, %ssh_dissect_ssh2.exit.thread169
  %i.qt = call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.qt
}

; Function Attrs: null_pointer_is_valid
declare void @reassembly_table_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @register_shutdown_routine(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @ssh_shutdown() #0 {
bb.a:
  %i.a = load ptr, ptr @ssh_master_key_map, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_ssh() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ssh_debug_file_name, align 8
  tail call fastcc void @ssh_set_debug(ptr noundef %i.a)
  %i.b = load ptr, ptr @ssh_handle, align 8
  tail call void @dissector_add_uint_range_with_preference(ptr noundef nonnull @.str.538, ptr noundef nonnull @.str.539, ptr noundef %i.b)
  %i.c = load ptr, ptr @ssh_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.540, i32 noundef 22, ptr noundef %i.c)
  %i.d = load ptr, ptr @ssh_handle, align 8
  tail call void @dissector_add_uint(ptr noundef nonnull @.str.541, i32 noundef 45, ptr noundef %i.d)
  %i.e = load i32, ptr @proto_ssh, align 4
  %i.f = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.542, i32 noundef %i.e)
  store ptr %i.f, ptr @sftp_handle, align 8
  %i.g = load i32, ptr @proto_ssh, align 4
  %i.h = tail call ptr @find_dissector_add_dependency(ptr noundef nonnull @.str.543, i32 noundef %i.g)
  store ptr %i.h, ptr @data_text_lines_handle, align 8
  %i.i = load i32, ptr @proto_ssh, align 4
  tail call void @heur_dissector_add(ptr noundef nonnull @.str.544, ptr noundef nonnull @dissect_ssh_heur, ptr noundef nonnull @.str.545, ptr noundef nonnull @.str.546, i32 noundef %i.i, i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ssh_set_debug(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %.tail, label %sub_0

sub_0:                                            ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1
  %.not8 = icmp eq i8 %i.a, 45
  br i1 %.not8, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp ne i8 %i.c, 0
  br label %.tail

.tail:                                            ; preds = %sub_1, %sub_0, %bb.a
  %i.e = phi i1 [ true, %bb.a ], [ true, %sub_0 ], [ %i.d, %sub_1 ] ; 2 uses
  %.b = load i1, ptr @ssh_set_debug.debug_file_must_be_closed, align 4
  br i1 %.b, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@ssh_try_dissect_encrypted_packet:bb.a
  %i.ie = load i8, ptr @ssh_desegment, align 1, !range !12, !noundef !13
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ig = getelementptr i8, ptr %1, i64 336
  %i.ih = load i16, ptr %i.ig, align 8
  %.not322.i = icmp eq i16 %i.ih, 0
  br i1 %.not322.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.gy, align 1
  %i.ii = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.ii, align 4
  %i.ij = sub i32 %i.ic, %i.z
  %i.ik = getelementptr i8, ptr %1, i64 344
  store i32 %i.ij, ptr %i.ik, align 8
  %i.il = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.im = load i32, ptr %i.ac, align 8
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.ac, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.at
  store i8 0, ptr %i.gy, align 1
  %i.io = getelementptr i8, ptr %1, i64 416
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = zext nneg i32 %i.ib to i64              ; 3 uses
  %i.ir = tail call noalias ptr @wmem_alloc(ptr noundef %i.ip, i64 noundef %i.iq) #23 ; 5 uses
  %i.is = tail call ptr @__memcpy_chk(ptr noundef %i.ir, ptr noundef %i.hg, i64 noundef 16, i64 noundef %i.iq) #25, !alias.scope !23 ; 0 uses
  %i.it = icmp samesign ugt i32 %i.hx, 12
  br i1 %i.it, label %bb.az, label %.thread348.i

bb.az:                                            ; preds = %bb.ay
  %i.iu = add i32 %3, 16
  %i.iv = add nsw i32 %i.hx, -12                  ; 2 uses
  %i.iw = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.iu, i32 noundef %i.iv)
  %i.ix = load ptr, ptr %i.l, align 8
  %i.iy = getelementptr i8, ptr %i.ir, i64 16
  %i.iz = zext nneg i32 %i.iv to i64              ; 2 uses
  %i.ja = tail call i32 @gcry_cipher_decrypt(ptr noundef %i.ix, ptr noundef %i.iy, i64 noundef %i.iz, ptr noundef %i.iw, i64 noundef %i.iz)
  %.not323.i = icmp eq i32 %i.ja, 0
  br i1 %.not323.i, label %.thread348.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jb = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

.thread348.i:                                     ; preds = %bb.az, %bb.ay
  %i.jc = select i1 %i.y, ptr @.str.775, ptr @.str.776
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.777, ptr noundef nonnull %i.jc, i32 noundef %i.ad)
  tail call fastcc void @ssh_print_data(ptr noundef nonnull @.str.778, ptr noundef %i.ir, i64 noundef %i.iq)
  call fastcc void @ssh_calc_mac(ptr noundef %2, i32 noundef %i.ad, ptr noundef %i.ir, i32 noundef %i.ib, ptr noundef nonnull %i.f)
  br label %bb.bl

bb.bb:                                            ; preds = %bb.c
  %i.jd = load i8, ptr @ssh_desegment, align 1, !range !12, !noundef !13
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.jf = getelementptr i8, ptr %1, i64 336
  %i.jg = load i16, ptr %i.jf, align 8
  %i.jh = icmp ne i16 %i.jg, 0
  %i.ji = icmp ult i32 %i.z, 4
  %or.cond14.i = select i1 %i.jh, i1 %i.ji, i1 false
  br i1 %or.cond14.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jj = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.jj, align 4
  %i.jk = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.jk, align 8
  %i.jl = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.jm = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %3, i32 noundef 0) ; 3 uses
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.779, i32 noundef %i.jm, i32 noundef %i.z)
  %i.jn = add i32 %i.jm, -32769
  %or.cond16.i = icmp ult i32 %i.jn, -32761
  br i1 %or.cond16.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jo = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bg:                                            ; preds = %bb.be
  %i.jp = add nuw nsw i32 %i.jm, 4                ; 4 uses
  %i.jq = add nuw i32 %i.jp, %spec.select.i       ; 2 uses
  %i.jr = icmp ugt i32 %i.jq, %i.z
  br i1 %i.jr, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.js = getelementptr i8, ptr %1, i64 336
  %i.jt = load i16, ptr %i.js, align 8
  %.not.i = icmp eq i16 %i.jt, 0
  br i1 %.not.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ju = getelementptr i8, ptr %1, i64 340
  store i32 %3, ptr %i.ju, align 4
  %i.jv = sub i32 %i.jq, %i.z
  %i.jw = getelementptr i8, ptr %1, i64 344
  store i32 %i.jv, ptr %i.jw, align 8
  %i.jx = tail call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bj:                                            ; preds = %bb.bh
  %i.jy = load i32, ptr %i.ac, align 8
  %i.jz = add i32 %i.jy, 1
  store i32 %i.jz, ptr %i.ac, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %i.ka = getelementptr i8, ptr %1, i64 416
  %i.kb = load ptr, ptr %i.ka, align 8
  %i.kc = zext nneg i32 %i.jp to i64
  %i.kd = tail call ptr @tvb_memdup(ptr noundef %i.kb, ptr noundef %0, i32 noundef %3, i64 noundef %i.kc) ; 2 uses
  call fastcc void @ssh_calc_mac(ptr noundef %2, i32 noundef %i.ad, ptr noundef %i.kd, i32 noundef %i.jp, ptr noundef nonnull %i.f)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread348.i, %bb.aj, %bb.o
  %.1294.i = phi ptr [ %i.ca, %bb.o ], [ %i.ft, %bb.aj ], [ %i.ir, %.thread348.i ], [ %i.kd, %bb.bk ] ; 2 uses
  %.3292.i = phi i32 [ %i.bl, %bb.o ], [ %i.du, %bb.aj ], [ %i.ib, %.thread348.i ], [ %i.jp, %bb.bk ] ; 3 uses
  %.not364.i = icmp slt i32 %i.ab, 1
  br i1 %.not364.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ke = icmp samesign ult i32 %i.ab, 49
  br i1 %i.ke, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.kf = add i32 %.3292.i, %3
  %i.kg = call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef %i.kf, i32 noundef %spec.select.i)
  %i.kh = zext nneg i32 %spec.select.i to i64
  %bcmp.i = call i32 @bcmp(ptr %i.kg, ptr nonnull %i.f, i64 %i.kh)
  %i.ki = icmp eq i32 %bcmp.i, 0
  %i.kj = load i8, ptr @ssh_ignore_mac_failed, align 1, !range !12
  %i.kk = trunc nuw i8 %i.kj to i1
  %or.cond20.i = select i1 %i.ki, i1 true, i1 %i.kk
  br i1 %or.cond20.i, label %bb.bq, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %.old.i = load i8, ptr @ssh_ignore_mac_failed, align 1, !range !12, !noundef !13
  %.old19.i = trunc nuw i8 %.old.i to i1
  br i1 %.old19.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.kl = call i32 @tvb_captured_length(ptr noundef %0) ; 0 uses
  br label %ssh_decrypt_packet.exit

bb.bq:                                            ; preds = %bb.bo, %bb.bn, %bb.bl
  %.not332.i = icmp eq ptr %.1294.i, null
  br i1 %.not332.i, label %ssh_decrypt_packet.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.km = call ptr @wmem_file_scope()
  %i.kn = load i32, ptr @proto_ssh, align 4
  %i.ko = call ptr @p_get_proto_data(ptr noundef %i.km, ptr noundef %1, i32 noundef %i.kn, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i, label %bb.bs, label %ssh_get_packet_info.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.kp = zext i1 %i.y to i8
  %i.kq = call ptr @wmem_file_scope()
  %i.kr = call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.kq, i64 noundef 16) #23 ; 4 uses
  store i8 %i.kp, ptr %i.kr, align 8
  %i.ks = getelementptr i8, ptr %i.kr, i64 8
  store ptr null, ptr %i.ks, align 8
  %i.kt = call ptr @wmem_file_scope()
  %i.ku = load i32, ptr @proto_ssh, align 4
  call void @p_add_proto_data(ptr noundef %i.kt, ptr noundef %1, i32 noundef %i.ku, i32 noundef 0, ptr noundef %i.kr)
  br label %ssh_get_packet_info.exit.i

ssh_get_packet_info.exit.i:                       ; preds = %bb.bs, %bb.br
  %.0.i.i = phi ptr [ %i.ko, %bb.br ], [ %i.kr, %bb.bs ]
  %i.kv = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.kw = add i32 %i.kv, %3
  %i.kx = call ptr @wmem_file_scope()
  %i.ky = call noalias dereferenceable_or_null(88) ptr @wmem_alloc(ptr noundef %i.kx, i64 noundef 88) #23 ; 7 uses
  %i.kz = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr %i.ac, align 8
  store i32 %i.kz, ptr %i.ky, align 8
  %i.lb = call ptr @wmem_file_scope()
  %i.lc = zext nneg i32 %.3292.i to i64
  %i.ld = call ptr @wmem_memdup(ptr noundef %i.lb, ptr noundef nonnull %.1294.i, i64 noundef %i.lc) #24
  %i.le = getelementptr i8, ptr %i.ky, i64 8
  store ptr %i.ld, ptr %i.le, align 8
  %i.lf = getelementptr i8, ptr %i.ky, i64 16
  store i32 %.3292.i, ptr %i.lf, align 8
  %i.lg = getelementptr i8, ptr %i.ky, i64 20
  store i32 %i.kw, ptr %i.lg, align 4
  %i.lh = getelementptr i8, ptr %i.ky, i64 32
  store ptr null, ptr %i.lh, align 8
  %i.li = getelementptr i8, ptr %i.ky, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) %i.li, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 noundef 48, i1 noundef false) #25
  %i.lj = select i1 %i.y, ptr @.str.783, ptr @.str.784
  %i.lk = load i32, ptr %i.ac, align 8
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.782, ptr noundef nonnull %i.lj, i32 noundef %i.lk)
  %i.ll = getelementptr i8, ptr %.0.i.i, i64 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %ssh_get_packet_info.exit.i
  %.0.i = phi ptr [ %i.ll, %ssh_get_packet_info.exit.i ], [ %i.ln, %bb.bt ] ; 2 uses
  %i.lm = load ptr, ptr %.0.i, align 8            ; 2 uses
  %.not333.i = icmp eq ptr %i.lm, null
  %i.ln = getelementptr i8, ptr %i.lm, i64 32
  br i1 %.not333.i, label %bb.bu, label %bb.bt, !llvm.loop !27

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.ky, ptr %.0.i, align 8
  br label %ssh_decrypt_packet.exit

ssh_decrypt_packet.exit:                          ; preds = %bb.c, %bb.bq, %bb.bu, %bb.f, %.thread.i, %bb.r, %bb.t, %bb.y, %bb.ab, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.am, %bb.ap, %bb.aq, %bb.aw, %bb.ba, %bb.bd, %bb.bf, %bb.bi, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %i.lo = getelementptr i8, ptr %1, i64 344
  %i.lp = load i32, ptr %i.lo, align 8
  %.not34 = icmp eq i32 %i.lp, 0
  br i1 %.not34, label %bb.bv, label %bb.fa

bb.bv:                                            ; preds = %ssh_decrypt_packet.exit, %.critedge
  %i.lq = call i32 @tvb_raw_offset(ptr noundef %0)
  %i.lr = add i32 %i.lq, %3
  %i.ls = call ptr @wmem_file_scope()
  %i.lt = load i32, ptr @proto_ssh, align 4
  %i.lu = call ptr @p_get_proto_data(ptr noundef %i.ls, ptr noundef %1, i32 noundef %i.lt, i32 noundef 0) ; 2 uses
  %.not.i36 = icmp eq ptr %i.lu, null
  br i1 %.not.i36, label %.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lv = getelementptr i8, ptr %i.lu, i64 8
  %.011.i = load ptr, ptr %i.lv, align 8          ; 2 uses
  %.not1012.i = icmp eq ptr %.011.i, null
  br i1 %.not1012.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bw, %bb.bx
  %.013.i = phi ptr [ %.0.i37, %bb.bx ], [ %.011.i, %bb.bw ] ; 7 uses
  %i.lw = getelementptr i8, ptr %.013.i, i64 20
  %i.lx = load i32, ptr %i.lw, align 4
  %i.ly = icmp eq i32 %i.lx, %i.lr
  br i1 %i.ly, label %ssh_get_message.exit, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i
  %i.lz = getelementptr i8, ptr %.013.i, i64 32
  %.0.i37 = load ptr, ptr %i.lz, align 8          ; 2 uses
  %.not10.i = icmp eq ptr %.0.i37, null
  br i1 %.not10.i, label %.thread, label %.lr.ph.i, !llvm.loop !14

ssh_get_message.exit:                             ; preds = %.lr.ph.i
  %i.ma = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %3) ; 3 uses
  %i.mb = getelementptr i8, ptr %.013.i, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = getelementptr i8, ptr %.013.i, i64 16
  %i.me = load i32, ptr %i.md, align 8            ; 3 uses
  %i.mf = getelementptr i8, ptr %1, i64 8         ; 8 uses
  %i.mg = load ptr, ptr %i.mf, align 8
  call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.mg, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.792, i32 noundef %i.me)
  %i.mh = call ptr @tvb_new_child_real_data(ptr noundef %i.ma, ptr noundef %i.mc, i32 noundef %i.me, i32 noundef %i.me) ; 25 uses
  %i.mi = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.mh, ptr noundef nonnull @.str.793) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.mj = call i32 @tvb_ensure_captured_length_remaining(ptr noundef %i.mh, i32 noundef 0) ; 4 uses
  %i.mk = load i8, ptr @ssh_desegment, align 1, !range !12, !noundef !13
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %ssh_get_message.exit
  %i.mm = getelementptr i8, ptr %1, i64 336
  %i.mn = load i16, ptr %i.mm, align 8
  %i.mo = icmp ne i16 %i.mn, 0
  %i.mp = icmp ult i32 %i.mj, 4
  %or.cond19.i = select i1 %i.mo, i1 %i.mp, i1 false
  br i1 %or.cond19.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mq = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.mq, align 4
  %i.mr = getelementptr i8, ptr %1, i64 344
  store i32 268435455, ptr %i.mr, align 8
  br label %bb.ez

bb.ca:                                            ; preds = %bb.by, %ssh_get_message.exit
  %i.ms = call i32 @tvb_get_ntohl(ptr noundef %i.mh, i32 noundef 0) ; 8 uses
  %i.mt = load i8, ptr @ssh_desegment, align 1, !range !12, !noundef !13
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.mv = getelementptr i8, ptr %1, i64 336
  %i.mw = load i16, ptr %i.mv, align 8
  %.not.i43 = icmp eq i16 %i.mw, 0
  br i1 %.not.i43, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mx = add i32 %i.ms, 4                        ; 2 uses
  %i.my = icmp ugt i32 %i.mx, %i.mj
  br i1 %i.my, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mz = getelementptr i8, ptr %1, i64 340
  store i32 0, ptr %i.mz, align 4
  %i.na = sub nuw i32 %i.mx, %i.mj
  %i.nb = getelementptr i8, ptr %1, i64 344
  store i32 %i.na, ptr %i.nb, align 8
  br label %bb.ez

bb.ce:                                            ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.nc = load i32, ptr @hf_ssh_packet_length, align 4
  %i.nd = call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.nc, ptr noundef %i.mh, i32 noundef 0, i32 noundef 4, i32 noundef %i.ms) ; 3 uses
  %i.ne = icmp ult i32 %i.ms, 8
  br i1 %i.ne, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nd, ptr noundef nonnull @ei_ssh_packet_length, ptr noundef nonnull @.str.794, i32 noundef %i.ms) ; 0 uses
  br label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  %i.ng = icmp ugt i32 %i.ms, 32767
  br i1 %i.ng, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.nh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nd, ptr noundef nonnull @ei_ssh_packet_length, ptr noundef nonnull @.str.795, i32 noundef %i.ms) ; 0 uses
  %i.ni = add i32 %i.mj, -4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.0271.i = phi i32 [ %i.ms, %bb.cf ], [ %i.ni, %bb.ch ], [ %i.ms, %bb.cg ] ; 10 uses
  %i.nj = load i32, ptr @hf_ssh_padding_length, align 4
  %i.nk = call ptr @proto_tree_add_item_ret_uint(ptr noundef %4, i32 noundef %i.nj, ptr noundef %i.mh, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.d) ; 2 uses
  %i.nl = load i32, ptr %i.d, align 4             ; 3 uses
  %i.nm = icmp ult i32 %i.nl, 4
  br i1 %i.nm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.nn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nk, ptr noundef nonnull @ei_ssh_padding_length, ptr noundef nonnull @.str.796, i32 noundef %i.nl) ; 0 uses
  %.pre.i = load i32, ptr %i.d, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.no = phi i32 [ %.pre.i, %bb.cj ], [ %i.nl, %bb.ci ] ; 2 uses
  %i.np = add i32 %i.no, 1
  %i.nq = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.0271.i, i32 %i.np) ; 2 uses
  %i.nr = extractvalue { i32, i1 } %i.nq, 1
  %i.ns = extractvalue { i32, i1 } %i.nq, 0
  br i1 %i.nr, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.nt = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.nk, ptr noundef nonnull @ei_ssh_padding_length, ptr noundef nonnull @.str.797, i32 noundef %i.no) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.0.i38 = phi i32 [ 0, %bb.cl ], [ %i.ns, %bb.ck ] ; 6 uses
  %i.nu = call zeroext i8 @tvb_get_uint8(ptr noundef %i.mh, i32 noundef 5) ; 14 uses
  %i.nv = zext i8 %i.nu to i32                    ; 12 uses
  %i.nw = call ptr @tvb_new_subset_length(ptr noundef %i.mh, i32 noundef 5, i32 noundef %.0.i38) ; 79 uses
  %i.nx = getelementptr i8, ptr %2, i64 264       ; 10 uses
  %i.ny = load ptr, ptr %i.nx, align 8
  %i.nz = getelementptr i8, ptr %i.ny, i64 328
  %i.oa = icmp eq ptr %i.nz, %2                   ; 6 uses
  %i.ob = add i8 %i.nu, -1
  %or.cond.i39 = icmp ult i8 %i.ob, 19
  br i1 %or.cond.i39, label %bb.cn, label %bb.dg

bb.cn:                                            ; preds = %bb.cm
  %i.oc = load ptr, ptr %i.mf, align 8
  %i.od = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = call ptr @val_to_str(ptr noundef %i.oe, i32 noundef %i.nv, ptr noundef nonnull @ssh2_msg_vals, ptr noundef nonnull @.str.678)
  call void @col_append_sep_str(ptr noundef %i.oc, i32 noundef 25, ptr noundef null, ptr noundef %i.of)
  %i.og = add i32 %.0271.i, -1
  %i.oh = load i32, ptr @ett_key_exchange, align 4
  %i.oi = call ptr @proto_tree_add_subtree(ptr noundef %4, ptr noundef %i.mh, i32 noundef 5, i32 noundef %i.og, i32 noundef %i.oh, ptr noundef null, ptr noundef nonnull @.str.798) ; 27 uses
  %i.oj = load i32, ptr @hf_ssh2_msg_code, align 4
  %i.ok = call ptr @proto_tree_add_item(ptr noundef %i.oi, i32 noundef %i.oj, ptr noundef %i.mh, i32 noundef 5, i32 noundef 1, i32 noundef 0) ; 0 uses
  switch i8 %i.nu, label %ssh_dissect_transport_generic.exit.i [
    i8 1, label %bb.co
    i8 2, label %bb.cp
    i8 4, label %bb.cq
    i8 5, label %bb.cr
    i8 6, label %bb.cs
    i8 7, label %bb.ct
  ]

bb.co:                                            ; preds = %bb.cn
  %i.ol = load i32, ptr @hf_ssh_disconnect_reason, align 4
  %i.om = call ptr @proto_tree_add_item(ptr noundef %i.oi, i32 noundef %i.ol, ptr noundef %i.nw, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.on = call i32 @tvb_get_ntohl(ptr noundef %i.nw, i32 noundef 5) ; 3 uses
  %i.oo = load i32, ptr @hf_ssh_disconnect_description_length, align 4
  %i.op = call ptr @proto_tree_add_item(ptr noundef %i.oi, i32 noundef %i.oo, ptr noundef %i.nw, i32 noundef 5, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oq = load i32, ptr @hf_ssh_disconnect_description, align 4
  %i.or = call ptr @proto_tree_add_item(ptr noundef %i.oi, i32 noundef %i.oq, ptr noundef %i.nw, i32 noundef 9, i32 noundef %i.on, i32 noundef 0) ; 0 uses
  %i.os = add i32 %i.on, 9                        ; 2 uses
  %i.ot = call i32 @tvb_get_ntohl(ptr noundef %i.nw, i32 noundef %i.os) ; 2 uses
  %i.ou = load i32, ptr @hf_ssh_lang_tag_length, align 4
  %i.ov = call ptr @proto_tree_add_item(ptr noundef %i.oi, i32 noundef %i.ou, ptr noundef %i.nw, i32 noundef %i.os, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ow = add i32 %i.on, 13                       ; 2 uses
  %i.ox = load i32, ptr @hf_ssh_lang_tag, align 4
end_hunk_1
begin_hunk_2_@ssh_kex_shared_secret:bb.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.744, ptr noundef nonnull @.str.745, i32 noundef 3193, ptr noundef nonnull @.str.746) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.744, ptr noundef nonnull @.str.745, i32 noundef 3194, ptr noundef nonnull @.str.747) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = add i32 %i.j, -1026
  %or.cond.i = icmp ult i32 %i.k, -1025
  br i1 %or.cond.i, label %ssh_kex_make_bignum.exit.thread, label %ssh_kex_make_bignum.exit

ssh_kex_make_bignum.exit:                         ; preds = %bb.e
  %i.l = tail call ptr @wmem_file_scope()
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.l, i64 noundef 16) #23 ; 6 uses
  %i.n = tail call ptr @wmem_file_scope()
  %i.o = zext nneg i32 %i.j to i64
  %i.p = tail call noalias ptr @wmem_alloc0(ptr noundef %i.n, i64 noundef %i.o) #23 ; 2 uses
  store ptr %i.p, ptr %i.m, align 8
  %i.q = getelementptr i8, ptr %i.m, i64 8        ; 5 uses
  store i32 %i.j, ptr %i.q, align 8
  %.not54 = icmp eq ptr %i.m, null
  br i1 %.not54, label %ssh_kex_make_bignum.exit.thread, label %bb.f

bb.f:                                             ; preds = %ssh_kex_make_bignum.exit
  switch i32 %0, label %ssh_kex_make_bignum.exit.thread [
    i32 131072, label %bb.g
    i32 196632, label %bb.i
    i32 196630, label %bb.i
    i32 196628, label %bb.i
    i32 196609, label %bb.i
    i32 65536, label %bb.o
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq ptr %3, null
  br i1 %i.r, label %ssh_kex_make_bignum.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8
  %i.s = load ptr, ptr %1, align 8
  %i.t = load i32, ptr %i.i, align 8
  %i.u = zext i32 %i.t to i64
  %i.v = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef %i.s, i64 noundef %i.u, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 0, ptr %i.d, align 8
  %i.w = load i32, ptr %i.i, align 8
  %i.x = shl i32 %i.w, 3
  %i.y = call ptr @gcry_mpi_new(i32 noundef %i.x) ; 3 uses
  %i.z = load ptr, ptr %2, align 8
  %i.aa = getelementptr i8, ptr %2, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.b, i32 noundef 5, ptr noundef %i.z, i64 noundef %i.ac, ptr noundef null) ; 0 uses
  %i.ae = load ptr, ptr %3, align 8
  %i.af = getelementptr i8, ptr %3, i64 8
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.c, i32 noundef 5, ptr noundef %i.ae, i64 noundef %i.ah, ptr noundef null) ; 0 uses
  %i.aj = load ptr, ptr %i.a, align 8
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = load ptr, ptr %i.c, align 8
  call void @gcry_mpi_powm(ptr noundef %i.y, ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.al)
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = load i32, ptr %i.q, align 8
  %i.ao = zext i32 %i.an to i64
  %i.ap = call i32 @gcry_mpi_print(i32 noundef 5, ptr noundef %i.am, i64 noundef %i.ao, ptr noundef nonnull %i.d, ptr noundef %i.y) ; 0 uses
  %i.aq = load i64, ptr %i.d, align 8
  %i.ar = trunc i64 %i.aq to i32
  store i32 %i.ar, ptr %i.q, align 8
  call void @gcry_mpi_release(ptr noundef %i.y)
  %i.as = load ptr, ptr %i.a, align 8
  call void @gcry_mpi_release(ptr noundef %i.as)
  %i.at = load ptr, ptr %i.b, align 8
  call void @gcry_mpi_release(ptr noundef %i.at)
  %i.au = load ptr, ptr %i.c, align 8
  call void @gcry_mpi_release(ptr noundef %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.p

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store ptr null, ptr %i.e, align 8
  switch i32 %0, label %bb.n [
    i32 196609, label %bb.j
    i32 196628, label %bb.k
    i32 196630, label %bb.l
    i32 196632, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.av = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef nonnull @ssh_kex_shared_secret.p, i64 noundef 128, ptr noundef null) ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.aw = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef nonnull @ssh_kex_shared_secret.p.748, i64 noundef 256, ptr noundef null) ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ax = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef nonnull @ssh_kex_shared_secret.p.749, i64 noundef 512, ptr noundef null) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ay = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.e, i32 noundef 5, ptr noundef nonnull @ssh_kex_shared_secret.p.750, i64 noundef 1024, ptr noundef null) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.k, %bb.m, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store ptr null, ptr %i.f, align 8
  %i.az = load ptr, ptr %1, align 8
  %i.ba = load i32, ptr %i.i, align 8
  %i.bb = zext i32 %i.ba to i64
  %i.bc = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.f, i32 noundef 5, ptr noundef %i.az, i64 noundef %i.bb, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store ptr null, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store i64 0, ptr %i.h, align 8
  %i.bd = load i32, ptr %i.i, align 8
  %i.be = shl i32 %i.bd, 3
  %i.bf = call ptr @gcry_mpi_new(i32 noundef %i.be) ; 3 uses
  %i.bg = load ptr, ptr %2, align 8
  %i.bh = getelementptr i8, ptr %2, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = zext i32 %i.bi to i64
  %i.bk = call i32 @gcry_mpi_scan(ptr noundef nonnull %i.g, i32 noundef 5, ptr noundef %i.bg, i64 noundef %i.bj, ptr noundef null) ; 0 uses
  %i.bl = load ptr, ptr %i.f, align 8
  %i.bm = load ptr, ptr %i.g, align 8
  %i.bn = load ptr, ptr %i.e, align 8
  call void @gcry_mpi_powm(ptr noundef %i.bf, ptr noundef %i.bl, ptr noundef %i.bm, ptr noundef %i.bn)
  %i.bo = load ptr, ptr %i.m, align 8
  %i.bp = load i32, ptr %i.q, align 8
  %i.bq = zext i32 %i.bp to i64
  %i.br = call i32 @gcry_mpi_print(i32 noundef 5, ptr noundef %i.bo, i64 noundef %i.bq, ptr noundef nonnull %i.h, ptr noundef %i.bf) ; 0 uses
  %i.bs = load i64, ptr %i.h, align 8
  %i.bt = trunc i64 %i.bs to i32
  store i32 %i.bt, ptr %i.q, align 8
  call void @gcry_mpi_release(ptr noundef %i.bf)
  %i.bu = load ptr, ptr %i.f, align 8
  call void @gcry_mpi_release(ptr noundef %i.bu)
  %i.bv = load ptr, ptr %i.g, align 8
  call void @gcry_mpi_release(ptr noundef %i.bv)
  %i.bw = load ptr, ptr %i.e, align 8
  call void @gcry_mpi_release(ptr noundef %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.bx = load ptr, ptr %2, align 8
  %i.by = load ptr, ptr %1, align 8
  %i.bz = tail call i32 @crypto_scalarmult_curve25519(ptr noundef %i.p, ptr noundef %i.bx, ptr noundef %i.by)
  %.not55 = icmp eq i32 %i.bz, 0
  br i1 %.not55, label %bb.p, label %ssh_kex_make_bignum.exit.thread

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.h
  br label %ssh_kex_make_bignum.exit.thread

ssh_kex_make_bignum.exit.thread:                  ; preds = %bb.f, %bb.e, %bb.o, %bb.g, %ssh_kex_make_bignum.exit, %bb.p
  %.0 = phi ptr [ null, %ssh_kex_make_bignum.exit ], [ %i.m, %bb.p ], [ null, %bb.g ], [ null, %bb.o ], [ null, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ssh_print_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ssh_debug_file, align 8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw i64 %2 to i32
  %i.c = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef nonnull @.str.751, ptr noundef %0, i32 noundef %i.b) ; 0 uses
  %.not44 = icmp eq i64 %2, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.b
  %i.d = load ptr, ptr @g_ascii_table, align 8
  %i.e = add nsw i64 %2, -1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph43, %._crit_edge40
  %indvars.iv = phi i64 [ %i.e, %.lr.ph43 ], [ %indvars.iv.next, %._crit_edge40 ] ; 3 uses
  %.041 = phi i64 [ 0, %.lr.ph43 ], [ %i.ak, %._crit_edge40 ] ; 4 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 15) ; 3 uses
  %i.f = load ptr, ptr @ssh_debug_file, align 8
  %i.g = trunc nuw i64 %.041 to i32
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 2, ptr noundef nonnull @.str.752, i32 noundef %i.g) ; 0 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.d
  %.not50 = icmp ugt i64 %indvars.iv, 14
  br i1 %.not50, label %.lr.ph39.preheader, label %.lr.ph

bb.d:                                             ; preds = %bb.c, %bb.d
  %.02834 = phi i64 [ 0, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %.02933 = phi i64 [ %.041, %bb.c ], [ %i.n, %bb.d ] ; 2 uses
  %i.i = load ptr, ptr @ssh_debug_file, align 8
  %i.j = getelementptr i8, ptr %1, i64 %.02933
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.i, i32 noundef 2, ptr noundef nonnull @.str.753, i32 noundef %i.l) ; 0 uses
  %i.n = add nuw nsw i64 %.02933, 1
  %i.o = add nuw nsw i64 %.02834, 1
  %exitcond.not = icmp eq i64 %.02834, %umin
  br i1 %exitcond.not, label %.preheader, label %bb.d, !llvm.loop !72

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.135.a = phi i64 [ %.135, %.lr.ph ], [ %umin, %.preheader ] ; 2 uses
  %.135 = add nuw nsw i64 %.135.a, 1
  %i.p = load ptr, ptr @ssh_debug_file, align 8
  %i.q = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.p, i32 noundef 2, ptr noundef nonnull @.str.754) ; 0 uses
  %i.r = icmp samesign ult i64 %.135.a, 14
  br i1 %i.r, label %.lr.ph, label %.lr.ph39.preheader, !llvm.loop !73

.lr.ph39.preheader:                               ; preds = %.lr.ph, %.preheader
  %i.s = load ptr, ptr @ssh_debug_file, align 8
  %i.t = tail call i32 @fputc(i32 noundef 32, ptr noundef %i.s) ; 0 uses
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39.preheader, %.lr.ph39
  %.237 = phi i64 [ %i.ah, %.lr.ph39 ], [ 0, %.lr.ph39.preheader ] ; 2 uses
  %.13036 = phi i64 [ %i.ag, %.lr.ph39 ], [ %.041, %.lr.ph39.preheader ] ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %.13036
  %i.v = load i8, ptr %i.u, align 1               ; 3 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr [2 x i8], ptr %i.d, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  %i.z = and i16 %i.y, 64
  %i.aa = icmp eq i16 %i.z, 0
  %i.ab = icmp eq i8 %i.v, 9
  %or.cond = or i1 %i.ab, %i.aa
  %i.ac = zext i8 %i.v to i32
  %i.ad = select i1 %or.cond, i32 46, i32 %i.ac
  %i.ae = load ptr, ptr @ssh_debug_file, align 8
  %i.af = tail call i32 @fputc(i32 noundef %i.ad, ptr noundef %i.ae) ; 0 uses
  %i.ag = add nuw nsw i64 %.13036, 1
  %i.ah = add nuw nsw i64 %.237, 1
  %exitcond.not.a = icmp eq i64 %.237, %umin
  br i1 %exitcond.not.a, label %._crit_edge40, label %.lr.ph39, !llvm.loop !74

._crit_edge40:                                    ; preds = %.lr.ph39
  %i.ai = load ptr, ptr @ssh_debug_file, align 8
  %i.aj = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ai, i32 noundef 2, ptr noundef nonnull @.str.755) ; 0 uses
  %i.ak = add nuw nsw i64 %.041, 16               ; 2 uses
  %i.al = icmp samesign ult i64 %i.ak, %2
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  br i1 %i.al, label %bb.c, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %._crit_edge40, %bb.b, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_get_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_array_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_md_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @file_needs_reopen(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_remove_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mpi_scan(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_mpi_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_mpi_powm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_mpi_print(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @gcry_mpi_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @crypto_scalarmult_curve25519(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_get_algo_dlen(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare ptr @wmem_memdup(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef i32 @ssh_dissect_encrypted_packet(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %3) ; 6 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @col_append_sep_fstr(ptr noundef %i.c, i32 noundef 25, ptr noundef null, ptr noundef nonnull @.str.772, i32 noundef %i.a)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.a, 4
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %2, i64 112
  %i.f = load i32, ptr %i.e, align 8
  %.not40 = icmp eq i32 %i.f, 0
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %3)
  %i.h = load i32, ptr @hf_ssh_packet_length, align 4
  %i.i = tail call ptr @proto_tree_add_uint(ptr noundef nonnull %4, i32 noundef %i.h, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef %i.g) ; 0 uses
  %i.j = add nsw i32 %i.a, -4
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr @hf_ssh_packet_length_encrypted, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef nonnull %4, i32 noundef %i.k, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.m = add nsw i32 %i.a, -4
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ %i.a, %bb.b ]
  %i.n = getelementptr i8, ptr %2, i64 56         ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %spec.select = sub i32 %.0, %i.p                ; 2 uses
  %i.q = load i32, ptr @hf_ssh_encrypted_packet, align 4
  %i.r = add i32 %3, 4                            ; 2 uses
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef nonnull %4, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.r, i32 noundef %spec.select, i32 noundef 0) ; 0 uses
  %i.t = load i32, ptr %i.n, align 8              ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.v = load i32, ptr @hf_ssh_mac_string, align 4
  %i.w = add i32 %spec.select, %i.r
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef nonnull %4, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.w, i32 noundef %i.t, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.f, %bb.a
  %i.y = add i32 %i.a, %3
  ret i32 %i.y
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_find_line_end_remaining(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_sep_fstr(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_format_text(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_raw_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @ssh_decrypt_chacha20(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef %3, i32 noundef range(i32 0, 32769) %4, ptr noundef %5, i32 noundef range(i32 0, 32769) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
end_hunk_2
begin_hunk_3_@ssh_decryption_setup_cipher:bb.a

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ac = icmp eq i32 %i.k, 131073                ; 2 uses
  %i.ad = icmp eq i32 %i.k, 131074                ; 2 uses
  %i.ae = select i1 %i.ad, i32 24, i32 32
  %i.af = select i1 %i.ac, i32 16, i32 %i.ae      ; 3 uses
  %i.ag = select i1 %i.ad, i32 8, i32 9
  %i.ah = select i1 %i.ac, i32 7, i32 %i.ag
  %i.ai = tail call i32 @gcry_cipher_open(ptr noundef %i.h, i32 noundef %i.ah, i32 noundef 3, i32 noundef 0)
  %.not110 = icmp eq i32 %i.ai, 0
  br i1 %.not110, label %bb.m, label %.critedge121

.critedge121:                                     ; preds = %bb.l
  %i.aj = load ptr, ptr %i.h, align 8
  tail call void @gcry_cipher_close(ptr noundef %i.aj)
  br label %bb.aw

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.ak = load ptr, ptr %2, align 8               ; 2 uses
  %.not111 = icmp eq ptr %i.ak, null
  %i.al = zext nneg i32 %i.af to i64              ; 2 uses
  br i1 %.not111, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call ptr @__memcpy_chk(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ak, i64 noundef range(i64 0, 4294967296) %i.al, i64 noundef 32) #25, !alias.scope !80 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.an = call ptr @__memset_chk(ptr noundef nonnull %i.c, i32 noundef 0, i64 noundef range(i64 8, 49) %i.al, i64 noundef 32) #25 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = load ptr, ptr %1, align 8               ; 2 uses
  %.not112 = icmp eq ptr %i.ao, null
  br i1 %.not112, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.ao, i64 noundef 16, i1 noundef false) #25
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 noundef 0, i64 noundef 16, i1 noundef false) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = shl nuw nsw i32 %i.af, 3
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.846, i32 noundef %i.ap)
  %i.aq = zext nneg i32 %i.af to i64              ; 2 uses
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.847, ptr noundef nonnull %i.c, i64 noundef %i.aq)
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.848, ptr noundef nonnull %i.d, i64 noundef 16)
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = call i32 @gcry_cipher_setkey(ptr noundef %i.ar, ptr noundef nonnull %i.c, i64 noundef %i.aq)
  %.not113 = icmp eq i32 %i.as, 0
  %i.at = load ptr, ptr %i.h, align 8             ; 2 uses
  br i1 %.not113, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @gcry_cipher_close(ptr noundef %i.at)
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.au = call i32 @gcry_cipher_setiv(ptr noundef %i.at, ptr noundef nonnull %i.d, i64 noundef 16)
  %.not114 = icmp eq i32 %i.au, 0
  br i1 %.not114, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = load ptr, ptr %i.h, align 8
  call void @gcry_cipher_close(ptr noundef %i.av)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.aw = call ptr @wmem_file_scope()
  %i.ax = load ptr, ptr %i.h, align 8
  %i.ay = call i32 @wmem_register_callback(ptr noundef %i.aw, ptr noundef nonnull @gcry_cipher_destroy_cb, ptr noundef %i.ax) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.aw

bb.y:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.az = icmp eq i32 %i.k, 65537                 ; 2 uses
  %i.ba = icmp eq i32 %i.k, 65539                 ; 2 uses
  %i.bb = select i1 %i.ba, i32 24, i32 32
  %i.bc = select i1 %i.az, i32 16, i32 %i.bb      ; 3 uses
  %i.bd = select i1 %i.ba, i32 8, i32 9
  %i.be = select i1 %i.az, i32 7, i32 %i.bd
  %i.bf = tail call i32 @gcry_cipher_open(ptr noundef %i.h, i32 noundef %i.be, i32 noundef 6, i32 noundef 0)
  %.not105 = icmp eq i32 %i.bf, 0
  br i1 %.not105, label %bb.z, label %.critedge123

.critedge123:                                     ; preds = %bb.y
  %i.bg = load ptr, ptr %i.h, align 8
  tail call void @gcry_cipher_close(ptr noundef %i.bg)
  br label %bb.aw

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  %i.bh = load ptr, ptr %2, align 8               ; 2 uses
  %.not106 = icmp eq ptr %i.bh, null
  %i.bi = zext nneg i32 %i.bc to i64              ; 2 uses
  br i1 %.not106, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = call ptr @__memcpy_chk(ptr noundef nonnull %i.e, ptr noundef nonnull %i.bh, i64 noundef range(i64 0, 4294967296) %i.bi, i64 noundef 32) #25, !alias.scope !84 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.bk = call ptr @__memset_chk(ptr noundef nonnull %i.e, i32 noundef 0, i64 noundef range(i64 8, 49) %i.bi, i64 noundef 32) #25 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bl = load ptr, ptr %1, align 8               ; 2 uses
  %.not107 = icmp eq ptr %i.bl, null
  br i1 %.not107, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 1 dereferenceable(16) %i.bl, i64 noundef 16, i1 noundef false) #25
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 noundef 0, i64 noundef 16, i1 noundef false) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bm = shl nuw nsw i32 %i.bc, 3
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.849, i32 noundef %i.bm)
  %i.bn = zext nneg i32 %i.bc to i64              ; 2 uses
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.847, ptr noundef nonnull %i.e, i64 noundef %i.bn)
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.848, ptr noundef nonnull %i.f, i64 noundef 16)
  %i.bo = load ptr, ptr %i.h, align 8
  %i.bp = call i32 @gcry_cipher_setkey(ptr noundef %i.bo, ptr noundef nonnull %i.e, i64 noundef %i.bn)
  %.not108 = icmp eq i32 %i.bp, 0
  %i.bq = load ptr, ptr %i.h, align 8             ; 2 uses
  br i1 %.not108, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @gcry_cipher_close(ptr noundef %i.bq)
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.br = call i32 @gcry_cipher_setctr(ptr noundef %i.bq, ptr noundef nonnull %i.f, i64 noundef 16)
  %.not109 = icmp eq i32 %i.br, 0
  br i1 %.not109, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bs = load ptr, ptr %i.h, align 8
  call void @gcry_cipher_close(ptr noundef %i.bs)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.bt = call ptr @wmem_file_scope()
  %i.bu = load ptr, ptr %i.h, align 8
  %i.bv = call i32 @wmem_register_callback(ptr noundef %i.bt, ptr noundef nonnull @gcry_cipher_destroy_cb, ptr noundef %i.bu) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.aw

bb.al:                                            ; preds = %bb.a, %bb.a
  %i.bw = icmp eq i32 %i.k, 262145                ; 2 uses
  %i.bx = select i1 %i.bw, i32 16, i32 32         ; 3 uses
  %i.by = select i1 %i.bw, i32 7, i32 9
  %i.bz = tail call i32 @gcry_cipher_open(ptr noundef %i.h, i32 noundef %i.by, i32 noundef 9, i32 noundef 0)
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.am, label %.critedge125

.critedge125:                                     ; preds = %bb.al
  %i.ca = load ptr, ptr %i.h, align 8
  tail call void @gcry_cipher_close(ptr noundef %i.ca)
  br label %bb.aw

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.cb = load ptr, ptr %2, align 8               ; 2 uses
  %.not102 = icmp eq ptr %i.cb, null
  %i.cc = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %.not102, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cd = call ptr @__memcpy_chk(ptr noundef nonnull %i.g, ptr noundef nonnull %i.cb, i64 noundef range(i64 0, 4294967296) %i.cc, i64 noundef 32) #25, !alias.scope !88 ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.ce = call ptr @__memset_chk(ptr noundef nonnull %i.g, i32 noundef 0, i64 noundef range(i64 8, 49) %i.cc, i64 noundef 32) #25 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cf = load ptr, ptr %1, align 8               ; 2 uses
  %.not103 = icmp eq ptr %i.cf, null
  br i1 %.not103, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cg = getelementptr i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(12) %i.cg, ptr noundef nonnull align 1 dereferenceable(12) %i.cf, i64 noundef 12, i1 noundef false) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ch = shl nuw nsw i32 %i.bx, 3
  call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.850, i32 noundef %i.ch)
  %i.ci = zext nneg i32 %i.bx to i64              ; 2 uses
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.847, ptr noundef nonnull %i.g, i64 noundef %i.ci)
  %i.cj = getelementptr i8, ptr %0, i64 160
  call fastcc void @ssh_print_data(ptr noundef nonnull @.str.848, ptr noundef %i.cj, i64 noundef 12)
  %i.ck = load ptr, ptr %i.h, align 8
  %i.cl = call i32 @gcry_cipher_setkey(ptr noundef %i.ck, ptr noundef nonnull %i.g, i64 noundef %i.ci)
  %.not104 = icmp eq i32 %i.cl, 0
  br i1 %.not104, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cm = load ptr, ptr %i.h, align 8
  call void @gcry_cipher_close(ptr noundef %i.cm)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.cn = call ptr @wmem_file_scope()
  %i.co = load ptr, ptr %i.h, align 8
  %i.cp = call i32 @wmem_register_callback(ptr noundef %i.cn, ptr noundef nonnull @gcry_cipher_destroy_cb, ptr noundef %i.co) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.aw

bb.av:                                            ; preds = %bb.a
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.756, i32 noundef %i.k)
  br label %bb.aw

.critedge:                                        ; preds = %bb.h, %bb.j
  %.sink.in = phi ptr [ %i.i, %bb.j ], [ %i.h, %bb.h ]
  %.sink = load ptr, ptr %.sink.in, align 8
  call void @gcry_cipher_close(ptr noundef %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.ak, %bb.x, %bb.av, %bb.k, %.critedge125, %.critedge123, %.critedge121, %.critedge, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ssh_decryption_setup_mac(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 131073
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %0, i64 172        ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(32) %i.d, i64 noundef 32, i1 noundef false) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %i.e, i8 noundef 0, i64 noundef 32, i1 noundef false) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr i8, ptr %0, i64 220        ; 2 uses
  store i32 32, ptr %i.f, align 4
  tail call void (ptr, ...) @ssh_debug_printf(ptr noundef nonnull @.str.851)
  %i.g = getelementptr i8, ptr %0, i64 172
  %i.h = load i32, ptr %i.f, align 4
  %i.i = zext i32 %i.h to i64
  tail call fastcc void @ssh_print_data(ptr noundef nonnull @.str.848, ptr noundef %i.g, i64 noundef %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @ssh_dissect_userauth_specific(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 60, 80) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = icmp eq i32 %3, 60
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.c = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 1) ; 4 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = load i32, ptr @hf_ssh_userauth_pka_name_len, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.d, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.f = load i32, ptr @hf_ssh_userauth_pka_name, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef 5, i32 noundef %i.c, i32 noundef 0) ; 0 uses
  %i.h = add i32 %i.c, 5
  %i.i = load i32, ptr @hf_ssh_blob_length, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.k = add i32 %i.c, 9                          ; 2 uses
  %i.l = load i32, ptr %i.a, align 4
  %i.m = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %i.k, i32 noundef %i.l)
  %i.n = call fastcc i32 @ssh_dissect_public_key_blob(ptr noundef %i.m, ptr noundef %1, ptr noundef %2) ; 3 uses
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.n, %i.o
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.j, ptr noundef nonnull @ei_ssh_packet_decode, ptr noundef nonnull @.str.764, i32 noundef %i.n, i32 noundef %i.o) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i32 [ %.pre, %bb.c ], [ %i.n, %bb.b ]
  %i.r = add i32 %i.q, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i32 [ %i.r, %bb.d ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @ssh_dissect_connection_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 80, 90) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 80
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef 1) ; 4 uses
  %i.c = load i32, ptr @hf_ssh_global_request_name_len, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.e = getelementptr i8, ptr %1, i64 416
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call ptr @tvb_get_string_enc(ptr noundef %i.f, ptr noundef %0, i32 noundef 5, i32 noundef %i.b, i32 noundef 0) ; 2 uses
  %i.h = load i32, ptr @hf_ssh_global_request_name, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef 5, i32 noundef %i.b, i32 noundef 0) ; 0 uses
  %i.j = add i32 %i.b, 5
  %i.k = load i32, ptr @hf_ssh_global_request_want_reply, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.m = add i32 %i.b, 6                          ; 4 uses
  %i.n = tail call i32 @strcmp(ptr noundef %i.g, ptr noundef nonnull dereferenceable(24) @.str.858) #22
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @strcmp(ptr noundef %i.g, ptr noundef nonnull dereferenceable(30) @.str.859) #22
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.m)
  %.not30 = icmp eq i32 %i.r, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.031 = phi i32 [ %i.u, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %i.s = load i32, ptr @ett_key_exchange_host_key, align 4
  %i.t = tail call fastcc i32 @ssh_tree_add_hostkey(ptr noundef %0, ptr noundef %1, i32 noundef %.031, ptr noundef %2, ptr noundef nonnull @.str.854, i32 noundef %i.s, ptr noundef null)
  %i.u = add i32 %i.t, %.031                      ; 3 uses
  %i.v = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.u)
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !92

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.u, %.lr.ph ]
  ret i32 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @ssh_dissect_connection_specific(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address) %2, ptr noundef %3, i32 noundef range(i32 90, 128) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 10 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  switch i32 %4, label %bb.al [
    i32 90, label %bb.b
    i32 91, label %bb.c
    i32 93, label %bb.k
    i32 94, label %bb.l
    i32 95, label %bb.q
    i32 96, label %bb.v
    i32 97, label %bb.w
    i32 98, label %bb.x
    i32 99, label %bb.ak
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.j = load i32, ptr @hf_ssh_connection_type_name_len, align 4
  %i.k = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.j, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.l = load i32, ptr @hf_ssh_connection_type_name, align 4
  %i.m = load i32, ptr %i.c, align 4
  %i.n = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef 5, i32 noundef %i.m, i32 noundef 2) ; 0 uses
  %i.o = load i32, ptr %i.c, align 4              ; 4 uses
  %i.p = add i32 %i.o, 5
  %i.q = load i32, ptr @hf_ssh_connection_sender_channel, align 4
  %i.r = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.s = add i32 %i.o, 9
  %i.t = load i32, ptr @hf_ssh_connection_initial_window, align 4
  %i.u = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.v = add i32 %i.o, 13
  %i.w = load i32, ptr @hf_ssh_connection_maximum_packet_size, align 4
  %i.x = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.y = add i32 %i.o, 17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.z = load i32, ptr @hf_ssh_connection_recipient_channel, align 4
  %i.aa = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.z, ptr noundef %0, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  %i.ab = load i32, ptr @hf_ssh_connection_sender_channel, align 4
  %i.ac = call ptr @proto_tree_add_item_ret_uint(ptr noundef %3, i32 noundef %i.ab, ptr noundef %0, i32 noundef 5, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.b) ; 0 uses
  %i.ad = getelementptr i8, ptr %1, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 53
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = and i16 %i.ag, 8
  %.not205 = icmp eq i16 %i.ah, 0
  br i1 %.not205, label %bb.d, label %create_channel.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = load i32, ptr %i.a, align 4
  %i.aj = load i32, ptr %i.b, align 4
  %i.ak = getelementptr i8, ptr %2, i64 248       ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = call ptr @wmem_file_scope()
  %i.ao = call ptr @wmem_map_new(ptr noundef %i.an, ptr noundef nonnull @g_direct_hash, ptr noundef nonnull @g_direct_equal) ; 2 uses
  store ptr %i.ao, ptr %i.ak, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ %i.al, %bb.d ]
  %i.aq = zext i32 %i.aj to i64
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = zext i32 %i.ai to i64
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = call ptr @wmem_map_insert(ptr noundef %i.ap, ptr noundef %i.ar, ptr noundef %i.at) ; 0 uses
  %i.av = getelementptr i8, ptr %2, i64 256       ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = call ptr @wmem_file_scope()
  %i.az = call ptr @wmem_map_new(ptr noundef %i.ay, ptr noundef nonnull @g_direct_hash, ptr noundef nonnull @g_direct_equal)
  store ptr %i.az, ptr %i.av, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = call ptr @wmem_file_scope()
  %i.bb = call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.ba, i64 noundef 24) #23 ; 3 uses
end_hunk_3
