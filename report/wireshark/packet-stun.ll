Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-stun?download=true
inline.NumInlined: 17
inline.NumDeleted: 4
begin_hunk_0_@dissect_stun_message:bb.a
  %i.jn = call ptr @proto_tree_add_uint(ptr noundef %.0825, i32 noundef %i.jl, ptr noundef %0, i32 noundef %i.id, i32 noundef 2, i32 noundef %i.jm) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  switch i16 %.0844, label %bb.fq [
    i16 2, label %bb.bo
    i16 4, label %bb.bo
    i16 5, label %bb.bo
    i16 11, label %bb.bo
    i16 17, label %bb.bo
    i16 7, label %bb.bw
    i16 1, label %bb.bx
    i16 -32733, label %bb.bx
    i16 -32725, label %bb.bx
    i16 -32724, label %bb.bx
    i16 -32624, label %bb.bx
    i16 14, label %bb.bx
    i16 3, label %bb.cf
    i16 6, label %bb.ci
    i16 8, label %bb.ck
    i16 9, label %bb.cm
    i16 10, label %.preheader
    i16 20, label %bb.cr
    i16 21, label %bb.cs
    i16 29, label %bb.ct
    i16 -32766, label %bb.ct
    i16 18, label %bb.df
    i16 22, label %bb.df
    i16 32, label %bb.dg
    i16 39, label %bb.dg
    i16 40, label %bb.dg
    i16 -32736, label %bb.dg
    i16 -32679, label %bb.dg
    i16 -32678, label %bb.dg
    i16 -32677, label %bb.dg
    i16 -32676, label %bb.dg
    i16 23, label %bb.dt
    i16 24, label %bb.dw
    i16 34, label %bb.dy
    i16 36, label %bb.ea
    i16 38, label %bb.ec
    i16 48, label %bb.ed
    i16 -32764, label %bb.ed
    i16 -32762, label %bb.ef
    i16 -32734, label %bb.eg
    i16 -32729, label %bb.eh
    i16 -32728, label %bb.ej
    i16 -32727, label %bb.el
    i16 -32726, label %bb.el
    i16 19, label %bb.en
    i16 25, label %bb.eq
    i16 12, label %bb.et
    i16 15, label %bb.ev
    i16 16, label %bb.ex
    i16 13, label %bb.ez
    i16 -32760, label %bb.fb
    i16 -32656, label %bb.fc
    i16 -32688, label %bb.fd
    i16 -32683, label %bb.fe
    i16 -32682, label %bb.ff
    i16 -32681, label %bb.fg
    i16 -32680, label %bb.fh
    i16 -32675, label %bb.fi
    i16 -32673, label %bb.fi
    i16 -32674, label %bb.fj
    i16 -32672, label %bb.fj
    i16 -32671, label %bb.fk
    i16 -32670, label %bb.fl
    i16 -32664, label %bb.fm
    i16 -32684, label %bb.fn
    i16 -32619, label %bb.fo
    i16 -16297, label %bb.fp
  ]

.preheader:                                       ; preds = %bb.bn
  %.not950 = icmp eq i16 %i.ie, 0
  br i1 %.not950, label %.thread, label %.lr.ph946

bb.bo:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.jo = icmp eq i16 %i.ie, 0
  br i1 %i.jo, label %.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jp = load i32, ptr @hf_stun_att_reserved, align 4
  %i.jq = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.jp, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jr = icmp eq i16 %i.ie, 1
  br i1 %i.jr, label %.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.js = load i32, ptr @hf_stun_att_family, align 4
  %i.jt = add nuw nsw i32 %.1841947, 5            ; 2 uses
  %i.ju = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.js, ptr noundef %0, i32 noundef %i.jt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.jv = icmp ult i16 %i.ie, 4
  br i1 %i.jv, label %.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i32, ptr @hf_stun_att_port, align 4
  %i.jx = add nuw nsw i32 %.1841947, 6            ; 2 uses
  %i.jy = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.jw, ptr noundef %0, i32 noundef %i.jx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.jt)
  switch i8 %i.jz, label %.thread [
    i8 1, label %bb.bs
    i8 2, label %bb.bu
  ]

bb.bs:                                            ; preds = %bb.br
  %i.ka = icmp ult i16 %i.ie, 8
  br i1 %i.ka, label %.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kb = load i32, ptr @hf_stun_att_ipv4, align 4
  %i.kc = add nuw nsw i32 %.1841947, 8            ; 2 uses
  %i.kd = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kb, ptr noundef %0, i32 noundef %i.kc, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ke = load ptr, ptr %i.hy, align 8
  %i.kf = call ptr @tvb_address_to_str(ptr noundef %i.ke, ptr noundef %0, i32 noundef 2, i32 noundef %i.kc)
  %i.kg = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.jx)
  %i.kh = zext i16 %i.kg to i32
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.281, ptr noundef %i.kf, i32 noundef %i.kh)
  br label %.thread

bb.bu:                                            ; preds = %bb.br
  %i.ki = icmp ult i16 %i.ie, 20
  br i1 %i.ki, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kj = load i32, ptr @hf_stun_att_ipv6, align 4
  %i.kk = add nuw nsw i32 %.1841947, 8
  %i.kl = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kj, ptr noundef %0, i32 noundef %i.kk, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %.thread

bb.bw:                                            ; preds = %bb.bn
  %i.km = load i32, ptr @hf_stun_att_password, align 4
  %i.kn = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.km, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 0) ; 0 uses
  br label %.thread

bb.bx:                                            ; preds = %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn, %bb.bn
  %i.ko = icmp eq i16 %i.ie, 0
  br i1 %i.ko, label %.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kp = load i32, ptr @hf_stun_att_reserved, align 4
  %i.kq = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kp, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kr = icmp eq i16 %i.ie, 1
  br i1 %i.kr, label %.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ks = load i32, ptr @hf_stun_att_family, align 4
  %i.kt = add nuw nsw i32 %.1841947, 5            ; 2 uses
  %i.ku = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ks, ptr noundef %0, i32 noundef %i.kt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.kv = icmp ult i16 %i.ie, 4
  br i1 %i.kv, label %.thread, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kw = load i32, ptr @hf_stun_att_port, align 4
  %i.kx = add nuw nsw i32 %.1841947, 6            ; 2 uses
  %i.ky = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.kw, ptr noundef %0, i32 noundef %i.kx, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.kz = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.kx)
  %i.la = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.kt)
  switch i8 %i.la, label %.thread [
    i8 1, label %bb.cb
    i8 2, label %bb.cc
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.lb = icmp ult i16 %i.ie, 8
  br i1 %i.lb, label %.thread, label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.lc = icmp ult i16 %i.ie, 20
  br i1 %i.lc, label %.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.sink1022 = phi i32 [ 2, %bb.cb ], [ 3, %bb.cc ]
  %hf_stun_att_ipv6.sink = phi ptr [ @hf_stun_att_ipv4, %bb.cb ], [ @hf_stun_att_ipv6, %bb.cc ]
  %.sink1021 = phi i32 [ 4, %bb.cb ], [ 16, %bb.cc ]
  %i.ld = load ptr, ptr %i.hy, align 8
  %i.le = add nuw nsw i32 %.1841947, 8            ; 2 uses
  %i.lf = call ptr @tvb_address_to_str(ptr noundef %i.ld, ptr noundef %0, i32 noundef %.sink1022, i32 noundef %i.le) ; 3 uses
  %i.lg = load i32, ptr %hf_stun_att_ipv6.sink, align 4
  %i.lh = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.lg, ptr noundef %0, i32 noundef %i.le, i32 noundef %.sink1021, i32 noundef 0) ; 0 uses
  %.not886 = icmp eq ptr %i.lf, null
  br i1 %.not886, label %.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.li = zext i16 %i.kz to i32                   ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.282, ptr noundef nonnull %i.lf, i32 noundef %i.li)
  %i.lj = load ptr, ptr %i.bt, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.lj, i32 noundef 25, ptr noundef @.str.283, ptr noundef %i.ik, ptr noundef nonnull %i.lf, i32 noundef %i.li)
  br label %.thread

bb.cf:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.lk = icmp ult i16 %i.ie, 4
  br i1 %i.lk, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ll = load i32, ptr @hf_stun_att_change_ip, align 4
  %i.lm = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %.0825, i32 noundef %i.ll, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.e) ; 0 uses
  %i.ln = load i32, ptr @hf_stun_att_change_port, align 4
  %i.lo = call ptr @proto_tree_add_item_ret_boolean(ptr noundef %.0825, i32 noundef %i.ln, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.f) ; 0 uses
  %i.lp = load i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.lq = trunc nuw i8 %i.lp to i1                ; 3 uses
  %i.lr = load i8, ptr %i.f, align 1, !range !8
  %i.ls = trunc nuw i8 %i.lr to i1                ; 2 uses
  %brmerge1030 = select i1 %i.lq, i1 true, i1 %i.ls
  br i1 %brmerge1030, label %.sink.split, label %bb.ch

.sink.split:                                      ; preds = %bb.cg
  %or.cond12 = select i1 %i.lq, i1 %i.ls, i1 false
  %.str.284.mux = select i1 %or.cond12, ptr @.str.284, ptr @.str.285
  %.str.284.mux.mux = select i1 %i.lq, ptr %.str.284.mux, ptr @.str.286
  %i.lt = load ptr, ptr %i.bt, align 8
  call void @col_append_str(ptr noundef %i.lt, i32 noundef 25, ptr noundef %.str.284.mux.mux)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %.sink.split, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %.thread

bb.ci:                                            ; preds = %bb.bn
  br i1 %i.ho, label %bb.cj, label %.thread929

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.lu = load i32, ptr @hf_stun_att_username, align 4
  %i.lv = load ptr, ptr %i.hy, align 8
  %i.lw = call ptr @proto_tree_add_item_ret_string(ptr noundef %.0825, i32 noundef %i.lu, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 2, ptr noundef %i.lv, ptr noundef nonnull %i.g) ; 0 uses
  %i.lx = load ptr, ptr %i.g, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.287, ptr noundef %i.lx)
  %i.ly = load ptr, ptr %i.bt, align 8
  %i.lz = load ptr, ptr %i.g, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ly, i32 noundef 25, ptr noundef @.str.288, ptr noundef %i.lz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %.thread

.thread929:                                       ; preds = %bb.ci
  %i.ma = load i32, ptr @hf_stun_att_username_opaque, align 4
  %i.mb = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.ma, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 0) ; 0 uses
  br label %bb.ft

bb.ck:                                            ; preds = %bb.bn
  %i.mc = icmp ult i16 %i.ie, 20
  br i1 %i.mc, label %.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.md = load i32, ptr @hf_stun_att_hmac, align 4
  %i.me = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.md, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 0) ; 0 uses
  br label %.thread

bb.cm:                                            ; preds = %bb.bn
  %i.mf = icmp ult i16 %i.ie, 2
  br i1 %i.mf, label %.thread, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mg = load i32, ptr @hf_stun_att_reserved, align 4
  %i.mh = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.mg, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.mi = icmp eq i16 %i.ie, 2
  br i1 %i.mi, label %.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.mj = load i32, ptr @hf_stun_att_error_class, align 4
  %i.mk = add nuw nsw i32 %.1841947, 6            ; 2 uses
  %i.ml = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.mj, ptr noundef %0, i32 noundef %i.mk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mm = icmp ult i16 %i.ie, 4
  br i1 %i.mm, label %.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mn = load i32, ptr @hf_stun_att_error_number, align 4
  %i.mo = add nuw nsw i32 %.1841947, 7            ; 2 uses
  %i.mp = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.mn, ptr noundef %0, i32 noundef %i.mo, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.mk)
  %i.mr = zext i8 %i.mq to i32
  %i.ms = mul nuw nsw i32 %i.mr, 100
  %i.mt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.mo)
  %i.mu = zext i8 %i.mt to i32
  %i.mv = add nuw nsw i32 %i.ms, %i.mu            ; 3 uses
  %i.mw = call ptr @val_to_str_ext_const(i32 noundef %i.mv, ptr noundef @error_code_ext, ptr noundef @.str.289) ; 2 uses
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.290, i32 noundef %i.mv, ptr noundef %i.mw)
  %i.mx = load ptr, ptr %i.bt, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.mx, i32 noundef 25, ptr noundef @.str.291, i32 noundef %i.mv, ptr noundef %i.mw)
  %i.my = icmp eq i16 %i.ie, 4
  br i1 %i.my, label %.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.mz = load i32, ptr @hf_stun_att_error_reason, align 4
  %i.na = add nuw nsw i32 %.1841947, 8
  %i.nb = add nsw i32 %i.jm, -4
  %i.nc = load ptr, ptr %i.hy, align 8
  %i.nd = call ptr @proto_tree_add_item_ret_string(ptr noundef %.0825, i32 noundef %i.mz, ptr noundef %0, i32 noundef %i.na, i32 noundef %i.nb, i32 noundef 2, ptr noundef %i.nc, ptr noundef nonnull %i.h) ; 0 uses
  %i.ne = load ptr, ptr %i.h, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.287, ptr noundef %i.ne)
  %i.nf = load ptr, ptr %i.bt, align 8
  %i.ng = load ptr, ptr %i.h, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.nf, i32 noundef 25, ptr noundef @.str.292, ptr noundef %i.ng)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %.thread

.lr.ph946:                                        ; preds = %.preheader, %.lr.ph946
  %.0842945 = phi i32 [ %i.nk, %.lr.ph946 ], [ 0, %.preheader ] ; 2 uses
  %i.nh = load i32, ptr @hf_stun_att_unknown, align 4
  %i.ni = add nuw nsw i32 %.0842945, %.pre-phi
  %i.nj = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.nh, ptr noundef %0, i32 noundef %i.ni, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.nk = add nuw nsw i32 %.0842945, 2            ; 2 uses
  %i.nl = icmp samesign ult i32 %i.nk, %i.jm
  br i1 %i.nl, label %.lr.ph946, label %.thread, !llvm.loop !6

bb.cr:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.nm = load i32, ptr @hf_stun_att_realm, align 4
  %i.nn = load ptr, ptr %i.hy, align 8
  %i.no = call ptr @proto_tree_add_item_ret_string(ptr noundef %.0825, i32 noundef %i.nm, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 2, ptr noundef %i.nn, ptr noundef nonnull %i.i) ; 0 uses
  %i.np = load ptr, ptr %i.i, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.287, ptr noundef %i.np)
  %i.nq = load ptr, ptr %i.bt, align 8
  %i.nr = load ptr, ptr %i.i, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.nq, i32 noundef 25, ptr noundef @.str.293, ptr noundef %i.nr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  br label %.thread

bb.cs:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  %i.ns = load i32, ptr @hf_stun_att_nonce, align 4
  %i.nt = load ptr, ptr %i.hy, align 8
  %i.nu = call ptr @proto_tree_add_item_ret_string(ptr noundef %.0825, i32 noundef %i.ns, ptr noundef %0, i32 noundef %.pre-phi, i32 noundef %i.jm, i32 noundef 2, ptr noundef %i.nt, ptr noundef nonnull %i.j) ; 0 uses
  %i.nv = load ptr, ptr %i.j, align 8
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.0825, ptr noundef @.str.287, ptr noundef %i.nv)
  %i.nw = load ptr, ptr %i.bt, align 8
  call void @col_append_str(ptr noundef %i.nw, i32 noundef 25, ptr noundef @.str.294)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  br label %.thread

bb.ct:                                            ; preds = %bb.bn, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %.not883943 = icmp eq i16 %i.ie, 0
  br i1 %.not883943, label %.thread924, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ct
  %i.nx = add nuw nsw i32 %.pre-phi, %i.jm
  %i.ny = icmp eq i16 %.0844, 29
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph, %bb.de
  %.0824944 = phi i32 [ %i.jm, %.lr.ph ], [ %i.ow, %bb.de ] ; 8 uses
  %i.nz = sub i32 %i.nx, %.0824944                ; 7 uses
  %i.oa = icmp ult i32 %.0824944, 4
  br i1 %i.oa, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ob = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0825, ptr noundef %1, ptr noundef @ei_stun_short_packet, ptr noundef %0, i32 noundef %i.nz, i32 noundef %.0824944, ptr noundef @.str.295, i32 noundef %.0824944) ; 0 uses
  br label %.thread924

bb.cw:                                            ; preds = %bb.cu
  %i.oc = load i32, ptr @hf_stun_att_pw_alg, align 4
  %i.od = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0825, i32 noundef %i.oc, ptr noundef %0, i32 noundef %i.nz, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.k) ; 0 uses
  %i.oe = load i32, ptr @hf_stun_att_pw_alg_param_len, align 4
  %i.of = add i32 %i.nz, 2
  %i.og = call ptr @proto_tree_add_item_ret_uint(ptr noundef %.0825, i32 noundef %i.oe, ptr noundef %0, i32 noundef %i.of, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.l) ; 0 uses
  %i.oh = load i32, ptr %i.l, align 4             ; 4 uses
  %.not884 = icmp eq i32 %i.oh, 0
  br i1 %.not884, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.oi = add i32 %i.oh, 4
  %.not885 = icmp ult i32 %i.oi, %.0824944
  br i1 %.not885, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oj = load i32, ptr @hf_stun_att_pw_alg_param_data, align 4
  %i.ok = add i32 %i.nz, 4
  %i.ol = call ptr @proto_tree_add_item(ptr noundef %.0825, i32 noundef %i.oj, ptr noundef %0, i32 noundef %i.ok, i32 noundef %i.oh, i32 noundef 0) ; 0 uses
  %.pre = load i32, ptr %i.l, align 4
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.om = add i32 %.0824944, -4
  %i.on = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0825, ptr noundef %1, ptr noundef @ei_stun_short_packet, ptr noundef %0, i32 noundef %i.nz, i32 noundef %.0824944, ptr noundef @.str.296, i32 noundef %i.om, i32 noundef %i.oh) ; 0 uses
  br label %.thread924

bb.da:                                            ; preds = %bb.cy, %bb.cw
  %i.oo = phi i32 [ %.pre, %bb.cy ], [ 0, %bb.cw ] ; 4 uses
  %i.op = add i32 %i.oo, 3
  %i.oq = and i32 %i.op, -4                       ; 3 uses
  %i.or = icmp ult i32 %i.oo, %i.oq
  br i1 %i.or, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.os = load i32, ptr @hf_stun_att_padding, align 4
  %i.ot = add i32 %i.oo, %i.nz
  %i.ou = sub nuw i32 %i.oq, %i.oo                ; 2 uses
  %i.ov = call ptr @proto_tree_add_uint(ptr noundef %.0825, i32 noundef %i.os, ptr noundef %0, i32 noundef %i.ot, i32 noundef %i.ou, i32 noundef %i.ou) ; 0 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.neg933 = add i32 %.0824944, -4
  %i.ow = sub i32 %.neg933, %i.oq                 ; 3 uses
  %i.ox = icmp ne i32 %i.ow, 0                    ; 2 uses
  %or.cond14 = and i1 %i.ny, %i.ox
  br i1 %or.cond14, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.oy = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %.0825, ptr noundef %1, ptr noundef @ei_stun_long_attribute, ptr noundef %0, i32 noundef %i.nz, i32 noundef %i.ow, ptr noundef @.str.297) ; 0 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.dc, %bb.dd
  br i1 %i.ox, label %bb.cu, label %.thread924

.thread924:                                       ; preds = %bb.de, %bb.ct, %bb.cz, %bb.cv
end_hunk_0
