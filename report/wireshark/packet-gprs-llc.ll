Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-gprs-llc?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_llcgprs:bb.a
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @hf_llcgprs_dummy_ui, align 4
  %i.c = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.d = tail call ptr @proto_tree_add_boolean(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef %i.c, i64 noundef 1) ; 0 uses
  %i.e = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.ba

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8          ; 16 uses
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @col_set_str(ptr noundef %i.g, i32 noundef 35, ptr noundef nonnull @.str.122)
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0) ; 3 uses
  %i.i = icmp ugt i32 %i.h, 2                     ; 2 uses
  %i.j = add i32 %i.h, -3                         ; 5 uses
  %.0539 = select i1 %i.i, i32 %i.j, i32 0        ; 24 uses
  %i.k = tail call i32 @tvb_captured_length(ptr noundef %0)
  %i.l = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 4 uses
  %i.m = zext i8 %i.l to i32
  %i.n = icmp ugt i8 %i.l, -128
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8
  tail call void @col_set_str(ptr noundef %i.o, i32 noundef 25, ptr noundef nonnull @.str.181)
  br label %bb.ba

bb.e:                                             ; preds = %bb.c
  %i.p = and i8 %i.l, 15                          ; 4 uses
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = getelementptr i8, ptr %1, i64 416        ; 12 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = zext nneg i8 %i.p to i32                 ; 7 uses
  %i.u = tail call ptr @val_to_str_ext(ptr noundef %i.s, i32 noundef %i.t, ptr noundef nonnull @sapi_abrv_ext, ptr noundef nonnull @.str.183)
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.q, i32 noundef 25, ptr noundef nonnull @.str.182, ptr noundef %i.u)
  %.not559 = icmp eq ptr %2, null                 ; 11 uses
  br i1 %.not559, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr @proto_llcgprs, align 4
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = tail call ptr @val_to_str_ext(ptr noundef %i.w, i32 noundef %i.t, ptr noundef nonnull @sapi_t_ext, ptr noundef nonnull @.str.183)
  %i.y = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef nonnull %2, i32 noundef %i.v, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.184, ptr noundef %i.x)
  %i.z = load i32, ptr @ett_llcgprs, align 4
  %i.aa = tail call ptr @proto_item_add_subtree(ptr noundef %i.y, i32 noundef %i.z) ; 2 uses
  %i.ab = load i32, ptr @hf_llcgprs_sapi, align 4
  %i.ac = load ptr, ptr %i.r, align 8
  %i.ad = tail call ptr @val_to_str_ext(ptr noundef %i.ac, i32 noundef %i.t, ptr noundef nonnull @sapi_abrv_ext, ptr noundef nonnull @.str.183)
  %i.ae = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %i.aa, i32 noundef %i.ab, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.t, ptr noundef nonnull @.str.185, ptr noundef %i.ad)
  %i.af = load i32, ptr @ett_llcgprs_adf, align 4
  %i.ag = tail call ptr @proto_item_add_subtree(ptr noundef %i.ae, i32 noundef %i.af) ; 3 uses
  %i.ah = load i32, ptr @hf_llcgprs_pd, align 4
  %i.ai = zext i8 %i.l to i64                     ; 2 uses
  %i.aj = tail call ptr @proto_tree_add_boolean(ptr noundef %i.ag, i32 noundef %i.ah, ptr noundef %0, i32 noundef 0, i32 noundef 1, i64 noundef %i.ai) ; 0 uses
  %i.ak = load i32, ptr @hf_llcgprs_cr, align 4
  %i.al = tail call ptr @proto_tree_add_boolean(ptr noundef %i.ag, i32 noundef %i.ak, ptr noundef %0, i32 noundef 0, i32 noundef 1, i64 noundef %i.ai) ; 0 uses
  %i.am = load i32, ptr @hf_llcgprs_sapib, align 4
  %i.an = tail call ptr @proto_tree_add_uint(ptr noundef %i.ag, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef %i.m) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0542 = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ] ; 17 uses
  %i.ao = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1) ; 7 uses
  %i.ap = icmp ult i8 %i.ao, -64
  %i.aq = icmp sgt i8 %i.ao, -1
  %i.ar = select i1 %i.aq, i32 1, i32 2
  %i.as = icmp ult i8 %i.ao, -32
  %i.at = select i1 %i.as, i32 3, i32 4
  %.0544 = select i1 %i.ap, i32 %i.ar, i32 %i.at  ; 2 uses
  switch i32 %.0544, label %default.unreachable644 [
    i32 1, label %bb.h
    i32 2, label %bb.n
    i32 3, label %bb.p
    i32 4, label %bb.r
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.au, i32 noundef 25, ptr noundef nonnull @.str.186)
  %i.av = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %i.aw = lshr i16 %i.av, 4
  %i.ax = and i16 %i.aw, 511
  %i.ay = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.az = lshr i16 %i.ay, 2
  %i.ba = and i16 %i.az, 511
  %i.bb = and i16 %i.ay, 3                        ; 3 uses
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = load ptr, ptr %i.r, align 8
  %i.be = zext nneg i16 %i.bb to i32              ; 2 uses
  %i.bf = tail call ptr @val_to_str(ptr noundef %i.bd, i32 noundef %i.be, ptr noundef nonnull @cr_formats_ipluss, ptr noundef nonnull @.str.187)
  tail call void @col_append_str(ptr noundef %i.bc, i32 noundef 25, ptr noundef %i.bf)
  %i.bg = load ptr, ptr %i.f, align 8
  %i.bh = zext nneg i16 %i.ax to i32              ; 3 uses
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bg, i32 noundef 25, ptr noundef nonnull @.str.188, i32 noundef %i.bh)
  %i.bi = load ptr, ptr %i.f, align 8
  %i.bj = zext nneg i16 %i.ba to i32              ; 3 uses
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.bi, i32 noundef 25, ptr noundef nonnull @.str.189, i32 noundef %i.bj)
  br i1 %.not559, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = zext i16 %i.ay to i32
  %i.bl = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.bm = load ptr, ptr %i.r, align 8
  %i.bn = tail call ptr @val_to_str(ptr noundef %i.bm, i32 noundef %i.be, ptr noundef nonnull @cr_formats_ipluss, ptr noundef nonnull @.str.187)
  %i.bo = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.bl, ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef %i.bn, i32 noundef %i.bh, i32 noundef %i.bj) ; 6 uses
  %i.bp = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1)
  %i.bq = zext i16 %i.bp to i32
  %i.br = shl nuw i32 %i.bq, 16                   ; 3 uses
  %i.bs = load i32, ptr @hf_llcgprs_ifmt, align 4
  %i.bt = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.bs, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.br) ; 0 uses
  %i.bu = load i32, ptr @hf_llcgprs_Ai, align 4
  %i.bv = zext i32 %i.br to i64
  %i.bw = tail call ptr @proto_tree_add_boolean(ptr noundef %i.bo, i32 noundef %i.bu, ptr noundef %0, i32 noundef 1, i32 noundef 3, i64 noundef %i.bv) ; 0 uses
  %i.bx = load i32, ptr @hf_llcgprs_izerobit, align 4
  %i.by = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.bx, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.br) ; 0 uses
  %i.bz = shl nuw nsw i32 %i.bh, 12
  %i.ca = load i32, ptr @hf_llcgprs_isack_ns, align 4
  %i.cb = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.ca, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.bz) ; 0 uses
  %i.cc = shl nuw nsw i32 %i.bj, 2
  %i.cd = load i32, ptr @hf_llcgprs_isack_nr, align 4
  %i.ce = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.cd, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.cc) ; 0 uses
  %i.cf = load i32, ptr @hf_llcgprs_isack_sfb, align 4
  %i.cg = tail call ptr @proto_tree_add_uint(ptr noundef %i.bo, i32 noundef %i.cf, ptr noundef %0, i32 noundef 1, i32 noundef 3, i32 noundef %i.bk) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ch = icmp eq i16 %i.bb, 3
  br i1 %i.ch, label %bb.k, label %.loopexit576

bb.k:                                             ; preds = %bb.j
  %i.ci = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 4) ; 2 uses
  %i.cj = and i8 %i.ci, 31                        ; 2 uses
  %i.ck = add nuw nsw i8 %i.cj, 1
  %i.cl = load ptr, ptr %i.f, align 8
  %i.cm = zext nneg i8 %i.ck to i32               ; 5 uses
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.cl, i32 noundef 25, ptr noundef nonnull @.str.191, i32 noundef %i.cm)
  br i1 %.not559, label %.loopexit575, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cn = zext i8 %i.ci to i32
  %i.co = add nuw nsw i32 %i.cm, 1
  %i.cp = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.cq = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef 4, i32 noundef %i.co, i32 noundef %i.cp, ptr noundef null, ptr noundef nonnull @.str.192, i32 noundef %i.cm) ; 3 uses
  %i.cr = load i32, ptr @hf_llcgprs_kmask, align 4
  %i.cs = tail call ptr @proto_tree_add_uint(ptr noundef %i.cq, i32 noundef %i.cr, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %i.cn) ; 0 uses
  %i.ct = load i32, ptr @hf_llcgprs_k, align 4
  %i.cu = tail call ptr @proto_tree_add_uint(ptr noundef %i.cq, i32 noundef %i.ct, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef %i.cm) ; 0 uses
  %i.cv = add nuw nsw i8 %i.cj, 6
  %wide.trip.count = zext nneg i8 %i.cv to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.m
  %.0534580 = phi i32 [ 5, %bb.l ], [ %i.da, %bb.m ] ; 3 uses
  %i.cw = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0534580)
  %i.cx = load i32, ptr @hf_llcgprs_rbyte, align 4
  %i.cy = zext i8 %i.cw to i32
  %i.cz = tail call ptr @proto_tree_add_uint(ptr noundef %i.cq, i32 noundef %i.cx, ptr noundef %0, i32 noundef %.0534580, i32 noundef 1, i32 noundef %i.cy) ; 0 uses
  %i.da = add nuw nsw i32 %.0534580, 1            ; 2 uses
  %exitcond624 = icmp eq i32 %i.da, %wide.trip.count
  br i1 %exitcond624, label %.loopexit575, label %bb.m, !llvm.loop !6

.loopexit575:                                     ; preds = %bb.m, %bb.k
  %i.db = add nuw nsw i32 %i.cm, 5
  br label %.loopexit576

bb.n:                                             ; preds = %bb.g
  %i.dc = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.dc, i32 noundef 25, ptr noundef nonnull @.str.193)
  %i.dd = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.de = and i16 %i.dd, 3                        ; 4 uses
  %i.df = lshr i16 %i.dd, 2
  %i.dg = and i16 %i.df, 511
  %i.dh = load ptr, ptr %i.f, align 8
  %i.di = load ptr, ptr %i.r, align 8
  %i.dj = zext nneg i16 %i.de to i32
  %i.dk = tail call ptr @val_to_str(ptr noundef %i.di, i32 noundef %i.dj, ptr noundef nonnull @cr_formats_ipluss, ptr noundef nonnull @.str.187)
  tail call void @col_append_str(ptr noundef %i.dh, i32 noundef 25, ptr noundef %i.dk)
  %i.dl = load ptr, ptr %i.f, align 8
  %i.dm = zext nneg i16 %i.dg to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.dl, i32 noundef 25, ptr noundef nonnull @.str.189, i32 noundef %i.dm)
  br i1 %.not559, label %.loopexit576, label %.thread

.thread:                                          ; preds = %bb.n
  %i.dn = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.do = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %.0542, ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.194, ptr noundef null, i32 noundef %i.dn, ptr noundef nonnull @dissect_llcgprs.s_formats, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.dp = icmp eq i16 %i.de, 3
  br i1 %i.dp, label %bb.o, label %.loopexit576

bb.o:                                             ; preds = %.thread
  %i.dq = add i32 %.0539, -3                      ; 4 uses
  %i.dr = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.ds = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef 3, i32 noundef %i.dq, i32 noundef %i.dr, ptr noundef null, ptr noundef nonnull @.str.195, i32 noundef %i.dq)
  %.not611 = icmp eq i32 %i.dq, 0
  br i1 %.not611, label %.loopexit576, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph
  %.0532578 = phi i16 [ %i.dy, %.lr.ph ], [ 3, %bb.o ] ; 2 uses
  %.0533577 = phi i32 [ %i.dz, %.lr.ph ], [ 0, %bb.o ]
  %i.dt = zext i16 %.0532578 to i32               ; 2 uses
  %i.du = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dt)
  %i.dv = load i32, ptr @hf_llcgprs_rbyte, align 4
  %i.dw = zext i8 %i.du to i32
  %i.dx = tail call ptr @proto_tree_add_uint(ptr noundef %i.ds, i32 noundef %i.dv, ptr noundef %0, i32 noundef %i.dt, i32 noundef 1, i32 noundef %i.dw) ; 0 uses
  %i.dy = add i16 %.0532578, 1
  %i.dz = add nuw i32 %.0533577, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.dz, %i.dq
  br i1 %exitcond.not, label %.loopexit576, label %.lr.ph, !llvm.loop !8

bb.p:                                             ; preds = %bb.g
  %i.ea = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.ea, i32 noundef 25, ptr noundef nonnull @.str.196)
  %i.eb = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.ec = and i16 %i.eb, 3                        ; 4 uses
  %i.ed = lshr i16 %i.eb, 2
  %i.ee = and i16 %i.ed, 511
  %i.ef = zext nneg i16 %i.ec to i32              ; 2 uses
  %.not560 = icmp samesign ugt i16 %i.ec, 1       ; 2 uses
  %i.eg = and i32 %i.ef, 1
  %i.eh = icmp eq i32 %i.eg, 0
  %i.ei = tail call i32 @llvm.umin.i32(i32 %.0539, i32 7)
  %.0540 = select i1 %i.eh, i32 %i.ei, i32 %.0539 ; 2 uses
  %i.ej = load ptr, ptr %i.f, align 8
  %i.ek = load ptr, ptr %i.r, align 8
  %i.el = tail call ptr @val_to_str(ptr noundef %i.ek, i32 noundef %i.ef, ptr noundef nonnull @pme, ptr noundef nonnull @.str.187)
  tail call void @col_append_str(ptr noundef %i.ej, i32 noundef 25, ptr noundef %i.el)
  %i.em = load ptr, ptr %i.f, align 8
  %i.en = zext nneg i16 %i.ee to i32
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.em, i32 noundef 25, ptr noundef nonnull @.str.197, i32 noundef %i.en)
  br i1 %.not559, label %.loopexit576, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eo = load i32, ptr @ett_llcgprs_ctrlf, align 4
  %i.ep = tail call ptr @proto_tree_add_bitmask_text(ptr noundef %.0542, ptr noundef %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.198, ptr noundef null, i32 noundef %i.eo, ptr noundef nonnull @dissect_llcgprs.i_formats, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %.loopexit576

bb.r:                                             ; preds = %bb.g
  %i.eq = zext i8 %i.ao to i32                    ; 2 uses
  %i.er = load ptr, ptr %i.f, align 8
  tail call void @col_append_str(ptr noundef %i.er, i32 noundef 25, ptr noundef nonnull @.str.199)
  %i.es = and i8 %i.ao, 15
  %i.et = load ptr, ptr %i.f, align 8
  %i.eu = load ptr, ptr %i.r, align 8
  %i.ev = zext nneg i8 %i.es to i32               ; 2 uses
  %i.ew = tail call ptr @val_to_str(ptr noundef %i.eu, i32 noundef %i.ev, ptr noundef nonnull @cr_formats_unnumb, ptr noundef nonnull @.str.200)
  tail call void @col_append_str(ptr noundef %i.et, i32 noundef 25, ptr noundef %i.ew)
  %i.ex = add i32 %.0539, -1
  %i.ey = load i32, ptr @ett_llcgprs_ui, align 4
  %i.ez = load ptr, ptr %i.r, align 8
  %i.fa = tail call ptr @val_to_str(ptr noundef %i.ez, i32 noundef %i.ev, ptr noundef nonnull @cr_formats_unnumb, ptr noundef nonnull @.str.200)
  %i.fb = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef 1, i32 noundef %i.ex, i32 noundef %i.ey, ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef %i.fa) ; 3 uses
  %i.fc = load i32, ptr @hf_llcgprs_Un, align 4
  %i.fd = tail call ptr @proto_tree_add_uint(ptr noundef %i.fb, i32 noundef %i.fc, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.eq) ; 0 uses
  %i.fe = load i32, ptr @hf_llcgprs_PF, align 4
  %i.ff = zext i8 %i.ao to i64
  %i.fg = tail call ptr @proto_tree_add_boolean(ptr noundef %i.fb, i32 noundef %i.fe, ptr noundef %0, i32 noundef 1, i32 noundef 1, i64 noundef %i.ff) ; 0 uses
  %i.fh = load i32, ptr @hf_llcgprs_ucom, align 4
  %i.fi = tail call ptr @proto_tree_add_uint(ptr noundef %i.fb, i32 noundef %i.fh, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.eq) ; 0 uses
  br label %.loopexit576

default.unreachable644:                           ; preds = %bb.y, %bb.g
  unreachable

.loopexit576:                                     ; preds = %.lr.ph, %bb.o, %bb.n, %.thread, %bb.p, %bb.q, %bb.j, %.loopexit575, %bb.r
  %.0543 = phi i16 [ 0, %bb.r ], [ %i.ec, %bb.p ], [ %i.bb, %bb.j ], [ 3, %.loopexit575 ], [ %i.de, %.thread ], [ %i.de, %bb.n ], [ %i.ec, %bb.q ], [ 3, %bb.o ], [ 3, %.lr.ph ]
  %.1541 = phi i32 [ %.0539, %bb.r ], [ %.0540, %bb.p ], [ %.0539, %bb.j ], [ %.0539, %.loopexit575 ], [ %.0539, %.thread ], [ %.0539, %bb.n ], [ %.0540, %bb.q ], [ 3, %bb.o ], [ %.0539, %.lr.ph ] ; 6 uses
  %.1537 = phi i1 [ false, %bb.r ], [ %.not560, %bb.p ], [ false, %bb.j ], [ false, %.loopexit575 ], [ false, %.thread ], [ false, %bb.n ], [ %.not560, %bb.q ], [ false, %bb.o ], [ false, %.lr.ph ]
  %.3 = phi i32 [ 2, %bb.r ], [ 3, %bb.p ], [ 4, %bb.j ], [ %i.db, %.loopexit575 ], [ 3, %.thread ], [ 3, %bb.n ], [ 3, %bb.q ], [ 3, %bb.o ], [ %.0539, %.lr.ph ] ; 39 uses
  %i.fj = icmp uge i32 %i.k, %i.h
  %or.cond = and i1 %i.i, %i.fj
  br i1 %or.cond, label %bb.s, label %bb.x

bb.s:                                             ; preds = %.loopexit576
  %i.fk = tail call ptr @tvb_get_ptr(ptr noundef %0, i32 noundef 0, i32 noundef range(i32 0, -3) %.1541) ; 2 uses
  %.not8.i = icmp eq i32 %.1541, 0
  br i1 %.not8.i, label %crc_calc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.s
  %xtraiter = and i32 %.1541, 1
  %i.fl = icmp eq i32 %.1541, 1
  br i1 %i.fl, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %.1541, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.011.i = phi ptr [ %i.fk, %.lr.ph.i.preheader.new ], [ %i.fu, %.lr.ph.i ] ; 3 uses
  %.079.i = phi i32 [ 16777215, %.lr.ph.i.preheader.new ], [ %i.fz, %.lr.ph.i ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.fm = lshr i32 %.079.i, 8
  %i.fn = getelementptr i8, ptr %.011.i, i64 1
  %i.fo = load i8, ptr %.011.i, align 1
  %.07.tr.i = trunc i32 %.079.i to i8
  %.narrow.i = xor i8 %i.fo, %.07.tr.i
  %i.fp = zext i8 %.narrow.i to i64
  %i.fq = getelementptr [4 x i8], ptr @tbl_crc24, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = xor i32 %i.fr, %i.fm                    ; 2 uses
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = getelementptr i8, ptr %.011.i, i64 2    ; 2 uses
  %i.fv = load i8, ptr %i.fn, align 1
  %.07.tr.i.1 = trunc i32 %i.fs to i8
  %.narrow.i.1 = xor i8 %i.fv, %.07.tr.i.1
  %i.fw = zext i8 %.narrow.i.1 to i64
  %i.fx = getelementptr [4 x i8], ptr @tbl_crc24, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = xor i32 %i.fy, %i.ft                    ; 3 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %crc_calc.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

crc_calc.exit.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %crc_calc.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %crc_calc.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.011.i.epil.init = phi ptr [ %i.fk, %.lr.ph.i.preheader ], [ %i.fu, %crc_calc.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i32 [ 16777215, %.lr.ph.i.preheader ], [ %i.fz, %crc_calc.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod661 = trunc i32 %.1541 to i1
  tail call void @llvm.assume(i1 %lcmp.mod661)
  %i.ga = lshr i32 %.079.i.epil.init, 8
  %i.gb = load i8, ptr %.011.i.epil.init, align 1
  %.07.tr.i.epil = trunc i32 %.079.i.epil.init to i8
  %.narrow.i.epil = xor i8 %i.gb, %.07.tr.i.epil
  %i.gc = zext i8 %.narrow.i.epil to i64
  %i.gd = getelementptr [4 x i8], ptr @tbl_crc24, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = xor i32 %i.ge, %i.ga
  br label %crc_calc.exit.loopexit

crc_calc.exit.loopexit:                           ; preds = %crc_calc.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi i32 [ %i.fz, %crc_calc.exit.loopexit.unr-lcssa ], [ %i.gf, %.lr.ph.i.epil.preheader ]
  %i.gg = and i32 %.lcssa, 16777215
  %i.gh = xor i32 %i.gg, 16777215
  br label %crc_calc.exit

crc_calc.exit:                                    ; preds = %crc_calc.exit.loopexit, %bb.s
  %.07.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.gh, %crc_calc.exit.loopexit ] ; 5 uses
  %i.gi = tail call i32 @tvb_get_letoh24(ptr noundef %0, i32 noundef %i.j) ; 5 uses
  %i.gj = icmp eq i32 %.07.lcssa.i, %i.gi
  %i.gk = load i32, ptr @hf_llcgprs_fcs, align 4  ; 3 uses
  br i1 %i.gj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %crc_calc.exit
  %i.gl = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0542, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.j, i32 noundef 3, i32 noundef %.07.lcssa.i, ptr noundef nonnull @.str.202, i32 noundef %.07.lcssa.i) ; 0 uses
  br label %bb.y

bb.u:                                             ; preds = %crc_calc.exit
  br i1 %.1537, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gm = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0542, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.j, i32 noundef 3, i32 noundef %i.gi, ptr noundef nonnull @.str.203, i32 noundef %i.gi, i32 noundef %.07.lcssa.i) ; 0 uses
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.gn = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0542, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.j, i32 noundef 3, i32 noundef %i.gi, ptr noundef nonnull @.str.204, i32 noundef %i.gi, i32 noundef %.07.lcssa.i) ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %.loopexit576
  %i.go = load i32, ptr @hf_llcgprs_fcs, align 4
  %i.gp = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %.0542, i32 noundef %i.go, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.205) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.v, %bb.x
  %i.gq = phi i1 [ true, %bb.t ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.x ]
  switch i32 %.0544, label %default.unreachable644 [
    i32 1, label %bb.z
    i32 2, label %bb.ae
    i32 3, label %bb.ak
    i32 4, label %bb.as
  ]

bb.z:                                             ; preds = %bb.y
  switch i8 %i.p, label %bb.ac [
    i8 8, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  br i1 %.not559, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gr = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3) ; 3 uses
  %i.gs = zext i8 %i.gr to i32                    ; 2 uses
  %i.gt = lshr i8 %i.gr, 4                        ; 3 uses
  %i.gu = and i8 %i.gr, 15
  %i.gv = sub i32 %.0539, %.3
  %i.gw = load i32, ptr @ett_llcgprs_sframe, align 4
  %i.gx = load ptr, ptr %i.r, align 8
  %i.gy = zext nneg i8 %i.gu to i32
  %i.gz = tail call ptr @val_to_str(ptr noundef %i.gx, i32 noundef %i.gy, ptr noundef nonnull @tompd_formats, ptr noundef nonnull @.str.187)
  %i.ha = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %.0542, ptr noundef %0, i32 noundef %.3, i32 noundef %i.gv, i32 noundef %i.gw, ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef %i.gz) ; 4 uses
  %i.hb = load i32, ptr @hf_llcgprs_tom_rl, align 4
  %i.hc = tail call ptr @proto_tree_add_uint(ptr noundef %i.ha, i32 noundef %i.hb, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.gs) ; 0 uses
  %i.hd = load i32, ptr @hf_llcgprs_tom_pd, align 4
  %i.he = tail call ptr @proto_tree_add_uint(ptr noundef %i.ha, i32 noundef %i.hd, ptr noundef %0, i32 noundef %.3, i32 noundef 1, i32 noundef %i.gs) ; 0 uses
  %i.hf = zext nneg i8 %i.gt to i32
  %.not568 = icmp eq i8 %i.gt, 15
  br i1 %.not568, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %.4601 = add i32 %.3, 1                         ; 2 uses
  %.not616 = icmp eq i8 %i.gt, 0
  br i1 %.not616, label %._crit_edge605, label %.lr.ph604
end_hunk_0
