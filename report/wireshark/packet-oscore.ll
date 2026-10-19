Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-oscore?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@oscore_context_post_update_cb:bb.a

bb.g:                                             ; preds = %bb.e
  call void @wscbor_enc_array_head(ptr noundef %i.cj, i64 noundef 5)
  %i.cy = getelementptr i8, ptr %i.ce, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.cz, i64 8
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = zext i32 %i.dc to i64
  call void @wscbor_enc_bstr(ptr noundef %i.cj, ptr noundef %i.da, i64 noundef %i.dd)
  %i.de = getelementptr i8, ptr %i.ce, i64 64     ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8            ; 2 uses
  %.not79.i = icmp eq i32 %i.dh, 0
  br i1 %.not79.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = load ptr, ptr %i.df, align 8
  %i.dj = zext i32 %i.dh to i64
  call void @wscbor_enc_bstr(ptr noundef %i.cj, ptr noundef %i.di, i64 noundef %i.dj)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @wscbor_enc_null(ptr noundef %i.cj)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dk = load i32, ptr %i.cf, align 8
  %i.dl = zext i32 %i.dk to i64
  call void @wscbor_enc_uint64(ptr noundef %i.cj, i64 noundef %i.dl)
  call void @wscbor_enc_tstr(ptr noundef %i.cj, ptr noundef nonnull @.str.162)
  %i.dm = getelementptr i8, ptr %i.ci, i64 16     ; 6 uses
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = zext i32 %i.dn to i64
  call void @wscbor_enc_uint64(ptr noundef %i.cj, i64 noundef %i.do)
  %i.dp = getelementptr i8, ptr %i.cj, i64 8      ; 6 uses
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = icmp ult i32 %i.dq, 85
  br i1 %i.dr, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 322, ptr noundef nonnull @.str.164) #14
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ds = getelementptr i8, ptr %i.ce, i64 88     ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load i32, ptr %i.dm, align 8
  %i.dv = call ptr @g_byte_array_set_size(ptr noundef %i.dt, i32 noundef %i.du) ; 0 uses
  %i.dw = load ptr, ptr %i.cj, align 8
  %i.dx = load i32, ptr %i.dp, align 8
  %i.dy = load ptr, ptr %i.ds, align 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = load i32, ptr %i.dm, align 8
  %i.eb = call i32 @hkdf_expand(i32 noundef 8, ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef %i.dw, i32 noundef %i.dx, ptr noundef %i.dz, i32 noundef %i.ea)
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 325, ptr noundef nonnull @.str.163) #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ed = call ptr @g_byte_array_set_size(ptr noundef %i.cj, i32 noundef 0) ; 0 uses
  call void @wscbor_enc_array_head(ptr noundef %i.cj, i64 noundef 5)
  %i.ee = getelementptr i8, ptr %i.ce, i64 80
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr i8, ptr %i.ef, i64 8
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = zext i32 %i.ei to i64
  call void @wscbor_enc_bstr(ptr noundef %i.cj, ptr noundef %i.eg, i64 noundef %i.ej)
  %i.ek = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 8            ; 2 uses
  %.not80.i = icmp eq i32 %i.em, 0
  br i1 %.not80.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.en = load ptr, ptr %i.ek, align 8
  %i.eo = zext i32 %i.em to i64
  call void @wscbor_enc_bstr(ptr noundef %i.cj, ptr noundef %i.en, i64 noundef %i.eo)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @wscbor_enc_null(ptr noundef %i.cj)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ep = load i32, ptr %i.cf, align 8
  %i.eq = zext i32 %i.ep to i64
  call void @wscbor_enc_uint64(ptr noundef %i.cj, i64 noundef %i.eq)
  call void @wscbor_enc_tstr(ptr noundef %i.cj, ptr noundef nonnull @.str.162)
  %i.er = load i32, ptr %i.dm, align 8
  %i.es = zext i32 %i.er to i64
  call void @wscbor_enc_uint64(ptr noundef %i.cj, i64 noundef %i.es)
  %i.et = load i32, ptr %i.dp, align 8
  %i.eu = icmp ult i32 %i.et, 85
  br i1 %i.eu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 341, ptr noundef nonnull @.str.164) #14
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ev = getelementptr i8, ptr %i.ce, i64 96     ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = load i32, ptr %i.dm, align 8
  %i.ey = call ptr @g_byte_array_set_size(ptr noundef %i.ew, i32 noundef %i.ex) ; 0 uses
  %i.ez = load ptr, ptr %i.cj, align 8
  %i.fa = load i32, ptr %i.dp, align 8
  %i.fb = load ptr, ptr %i.ev, align 8
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load i32, ptr %i.dm, align 8
  %i.fe = call i32 @hkdf_expand(i32 noundef 8, ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef %i.ez, i32 noundef %i.fa, ptr noundef %i.fc, i32 noundef %i.fd)
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 344, ptr noundef nonnull @.str.163) #14
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fg = call ptr @g_byte_array_set_size(ptr noundef %i.cj, i32 noundef 0) ; 0 uses
  call void @wscbor_enc_array_head(ptr noundef %i.cj, i64 noundef 5)
  call void @wscbor_enc_bstr(ptr noundef %i.cj, ptr noundef null, i64 noundef 0)
  %i.fh = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load i32, ptr %i.fi, align 8            ; 2 uses
  %.not81.i = icmp eq i32 %i.fj, 0
  br i1 %.not81.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = load ptr, ptr %i.fh, align 8
  %i.fl = zext i32 %i.fj to i64
  call void @wscbor_enc_bstr(ptr noundef %i.cj, ptr noundef %i.fk, i64 noundef %i.fl)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @wscbor_enc_null(ptr noundef %i.cj)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fm = load i32, ptr %i.cf, align 8
  %i.fn = zext i32 %i.fm to i64
  call void @wscbor_enc_uint64(ptr noundef %i.cj, i64 noundef %i.fn)
  call void @wscbor_enc_tstr(ptr noundef %i.cj, ptr noundef nonnull @.str.161)
  %i.fo = getelementptr i8, ptr %i.ci, i64 20     ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = zext i32 %i.fp to i64
  call void @wscbor_enc_uint64(ptr noundef %i.cj, i64 noundef %i.fq)
  %i.fr = load i32, ptr %i.dp, align 8
  %i.fs = icmp ult i32 %i.fr, 85
  br i1 %i.fs, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 359, ptr noundef nonnull @.str.164) #14
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ft = getelementptr i8, ptr %i.ce, i64 104    ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = load i32, ptr %i.fo, align 4
  %i.fw = call ptr @g_byte_array_set_size(ptr noundef %i.fu, i32 noundef %i.fv) ; 0 uses
  %i.fx = load ptr, ptr %i.cj, align 8
  %i.fy = load i32, ptr %i.dp, align 8
  %i.fz = load ptr, ptr %i.ft, align 8
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = load i32, ptr %i.fo, align 4
  %i.gc = call i32 @hkdf_expand(i32 noundef 8, ptr noundef nonnull %i.a, i32 noundef 32, ptr noundef %i.fx, i32 noundef %i.fy, ptr noundef %i.ga, i32 noundef %i.gb)
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %oscore_context_derive_params.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 362, ptr noundef nonnull @.str.163) #14
  unreachable

oscore_context_derive_params.exit:                ; preds = %bb.z
  %i.ge = call ptr @g_byte_array_free(ptr noundef %i.cj, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gf = load i32, ptr @num_oscore_contexts, align 4
  %i.gg = zext i32 %i.gf to i64
  %i.gh = icmp samesign ult i64 %indvars.iv.next, %i.gg
  br i1 %i.gh, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %oscore_context_derive_params.exit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @prefs_register_uat_preference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @register_dissector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @oscore_dissect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 11 uses
  %i.b = alloca [13 x i8], align 1                ; 14 uses
  %i.c = alloca [16 x i8], align 16               ; 11 uses
  %i.d = alloca [16 x i8], align 16               ; 11 uses
  %i.e = alloca [16 x i8], align 16               ; 9 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.h = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.i = icmp ult i32 %i.h, 9
  br i1 %i.i, label %bb.bj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 35, ptr noundef nonnull @.str.141)
  %i.l = load i32, ptr @proto_oscore, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.n = load i32, ptr @ett_oscore, align 4
  %i.o = tail call ptr @proto_item_add_subtree(ptr noundef %i.m, i32 noundef %i.n) ; 13 uses
  %i.p = getelementptr i8, ptr %3, i64 32         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %3, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_partial_iv_not_found) ; 0 uses
  %i.w = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.bj

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.x = load i32, ptr @num_oscore_contexts, align 4 ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %oscore_find_context.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.y = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.z = load i8, ptr %i.y, align 8               ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = load ptr, ptr @oscore_contexts, align 8
  %i.ac = zext i8 %i.z to i64
  %i.ad = getelementptr i8, ptr %3, i64 24
  %i.ae = getelementptr i8, ptr %3, i64 16
  %wide.trip.count.i = zext i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.af = getelementptr [112 x i8], ptr %i.ab, i64 %indvars.iv.i ; 8 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, %i.aa
  br i1 %i.ak, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.ah, align 8
  %i.am = load ptr, ptr %3, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %i.al, ptr %i.am, i64 %i.ac)
  %i.an = icmp eq i32 %bcmp.i, 0
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ao = load i8, ptr %i.ad, align 8             ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr i8, ptr %i.af, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.at, %i.ap
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr %i.ar, align 8
  %i.aw = load ptr, ptr %i.ae, align 8
  %i.ax = zext i8 %i.ao to i64
  %bcmp14.i = tail call i32 @bcmp(ptr %i.av, ptr %i.aw, i64 %i.ax)
  %i.ay = icmp eq i32 %bcmp14.i, 0
  br i1 %i.ay, label %oscore_find_context.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %oscore_find_context.exit.thread, label %bb.f, !llvm.loop !10

oscore_find_context.exit:                         ; preds = %bb.i
  %i.az = getelementptr i8, ptr %i.af, i64 72
  %i.ba = icmp eq ptr %i.af, null
  br i1 %i.ba, label %oscore_find_context.exit.thread, label %bb.k

oscore_find_context.exit.thread:                  ; preds = %bb.j, %bb.e, %oscore_find_context.exit
  %i.bb = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_context_not_set) ; 0 uses
  %i.bc = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.bj

bb.k:                                             ; preds = %oscore_find_context.exit
  %i.bd = getelementptr i8, ptr %3, i64 40        ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = icmp ugt i8 %i.be, 5
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_piv_len_invalid) ; 0 uses
  %i.bh = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.bj

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.bi = getelementptr i8, ptr %i.af, i64 40     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = zext i32 %i.bj to i64
  %i.bl = tail call ptr @cose_get_aead_props(i64 noundef %i.bk) ; 2 uses
  %.not.i61 = icmp eq ptr %i.bl, null
  br i1 %.not.i61, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 461, ptr noundef nonnull @.str.160) #14
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr i8, ptr %i.bl, i64 24     ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.bn) ; 6 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.ba, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef 0, i32 noundef %i.bo)
  br i1 %i.bq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i = phi i32 [ %i.br, %bb.q ], [ %i.bo, %bb.p ] ; 6 uses
  %i.bs = load i32, ptr %i.bm, align 8
  %i.bt = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.bo, i32 noundef %i.bs) ; 2 uses
  br i1 %i.bt, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bu = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 17
  br i1 %i.bv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 480, ptr noundef nonnull @.str.167) #14
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = call ptr @tvb_memcpy(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef %i.bo, i64 noundef %i.bw) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.by = getelementptr i8, ptr %3, i64 57        ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !range !19, !noundef !20
  %i.ca = trunc nuw i8 %i.bz to i1
  %.081.in.in.v.i = select i1 %i.ca, i64 96, i64 88
  %.081.in.in.i = getelementptr i8, ptr %i.af, i64 %.081.in.in.v.i
  %.081.in.i = load ptr, ptr %.081.in.in.i, align 8
  %.081.i = load ptr, ptr %.081.in.i, align 8     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.a, i8 0, i64 13, i1 false)
  %.not42.i.i = icmp eq ptr %3, null
  br i1 %.not42.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 396, ptr noundef nonnull @.str.174) #14
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cb = load i32, ptr %i.bi, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = call ptr @cose_get_aead_props(i64 noundef %i.cc) ; 2 uses
  %.not43.i.i = icmp eq ptr %i.cd, null
  br i1 %.not43.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 399, ptr noundef nonnull @.str.160) #14
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ce = getelementptr i8, ptr %i.cd, i64 20
  %i.cf = load i32, ptr %i.ce, align 4            ; 7 uses
  %i.cg = icmp ult i32 %i.cf, 14
  br i1 %i.cg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 400, ptr noundef nonnull @.str.175) #14
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ch = load i8, ptr %i.by, align 1, !range !19, !noundef !20
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i8, ptr %i.bd, align 8             ; 2 uses
  %.not44.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not44.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = getelementptr i8, ptr %i.af, i64 80
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.cl = getelementptr i8, ptr %3, i64 48
  %i.cm = getelementptr i8, ptr %3, i64 56
  %i.cn = load i8, ptr %i.cm, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.034.in.i.i = phi ptr [ %i.p, %bb.ad ], [ %i.cl, %bb.ae ]
  %.033.i.i = phi i8 [ %i.cj, %bb.ad ], [ %i.cn, %bb.ae ] ; 3 uses
  %.0.in.i.i = phi ptr [ %i.ck, %bb.ad ], [ %i.az, %bb.ae ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 2 uses
  %i.co = icmp ult i8 %.033.i.i, 6
  br i1 %i.co, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 420, ptr noundef nonnull @.str.176) #14
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.cp = zext nneg i8 %.033.i.i to i32
  %.034.i.i = load ptr, ptr %.034.in.i.i, align 8
  %i.cq = sub nsw i32 %i.cf, %i.cp                ; 2 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr i8, ptr %i.a, i64 %i.cr
  %i.ct = zext nneg i8 %.033.i.i to i64
  %i.cu = sub nsw i64 13, %i.cr
  %i.cv = icmp ugt i32 %i.cq, 13
  %i.cw = select i1 %i.cv, i64 0, i64 %i.cu       ; 2 uses
  %i.cx = icmp ne i64 %i.cw, -1
  call void @llvm.assume(i1 %i.cx)
  %i.cy = call ptr @__memcpy_chk(ptr noundef %i.cs, ptr noundef %.034.i.i, i64 noundef %i.ct, i64 noundef %i.cw) #13, !alias.scope !21 ; 0 uses
  %i.cz = getelementptr i8, ptr %.0.i.i, i64 8
  %i.da = load i32, ptr %i.cz, align 8            ; 4 uses
  %i.db = add nsw i32 %i.cf, -6
  %.not45.i.i = icmp ugt i32 %i.da, %i.db
  br i1 %.not45.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 424, ptr noundef nonnull @.str.177) #14
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %reass.sub.i.i = sub i32 %i.cf, %i.da
  %i.dc = add i32 %reass.sub.i.i, -5              ; 2 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr i8, ptr %i.a, i64 %i.dd
  %i.df = load ptr, ptr %.0.i.i, align 8
  %i.dg = zext i32 %i.da to i64
  %i.dh = sub nsw i64 13, %i.dd
  %i.di = icmp ugt i32 %i.dc, 13
  %i.dj = select i1 %i.di, i64 0, i64 %i.dh       ; 2 uses
  %i.dk = icmp ne i64 %i.dj, -1
  call void @llvm.assume(i1 %i.dk)
  %i.dl = call ptr @__memcpy_chk(ptr noundef %i.de, ptr noundef %i.df, i64 noundef %i.dg, i64 noundef %i.dj) #13, !alias.scope !22 ; 0 uses
  %i.dm = trunc i32 %i.da to i8
  store i8 %i.dm, ptr %i.a, align 1
  %.not47.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not47.i.i, label %oscore_create_nonce.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.aj
  %i.dn = getelementptr i8, ptr %i.af, i64 104
  %i.do = load ptr, ptr %i.dn, align 8
  %.pre.i = load ptr, ptr %i.do, align 8          ; 5 uses
  %i.dp = zext nneg i32 %i.cf to i64              ; 2 uses
  %xtraiter = and i64 %i.dp, 3                    ; 3 uses
  %min.iters.check = icmp ult i32 %i.cf, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.vec113 = and i64 %i.dp, 12
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %indvars.iv.i.i = phi i64 [ 0, %vec.epilog.ph ], [ %indvars.iv.next.i.i.3, %vec.epilog.vector.body ] ; 7 uses
  %index114 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ]
  %4 = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr i8, ptr %.pre.i, i64 %indvars.iv.i.i
  %7 = load i8, ptr %6, align 1
  %8 = xor i8 %7, %5
  %9 = getelementptr i8, ptr %i.b, i64 %indvars.iv.i.i
  store i8 %8, ptr %9, align 1
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %10 = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr i8, ptr %.pre.i, i64 %indvars.iv.next.i.i
  %13 = load i8, ptr %12, align 1
  %14 = xor i8 %13, %11
  %15 = getelementptr i8, ptr %i.b, i64 %indvars.iv.next.i.i
  store i8 %14, ptr %15, align 1
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 3 uses
  %16 = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr i8, ptr %.pre.i, i64 %indvars.iv.next.i.i.1
  %19 = load i8, ptr %18, align 1
  %20 = xor i8 %19, %17
  %21 = getelementptr i8, ptr %i.b, i64 %indvars.iv.next.i.i.1
  store i8 %20, ptr %21, align 1
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 3 uses
  %i.dq = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  %22 = load i8, ptr %i.dq, align 1
  %i.dr = getelementptr i8, ptr %.pre.i, i64 %indvars.iv.next.i.i.2
  %23 = load i8, ptr %i.dr, align 1
  %24 = xor i8 %23, %22
  %i.ds = getelementptr i8, ptr %i.b, i64 %indvars.iv.next.i.i.2
  store i8 %24, ptr %i.ds, align 1
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %index.next117 = add i64 %index114, 4           ; 2 uses
  %i.dt = icmp eq i64 %index.next117, %n.vec113
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %xtraiter, 0
  br i1 %cmp.n118, label %oscore_create_nonce.exit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vec.epilog.middle.block, %iter.check
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %indvars.iv.next.i.i.3, %vec.epilog.middle.block ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.epil, %vec.epilog.scalar.ph ] ; 4 uses
  %indvars.iv.i.i.a = phi i64 [ 0, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.a, %vec.epilog.scalar.ph ]
  %i.du = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i.epil
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = getelementptr i8, ptr %.pre.i, i64 %indvars.iv.i.i.epil
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = xor i8 %i.dx, %i.dv
  %i.dz = getelementptr i8, ptr %i.b, i64 %indvars.iv.i.i.epil
  store i8 %i.dy, ptr %i.dz, align 1
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %indvars.iv.next.i.i.a = add i64 %indvars.iv.i.i.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.i.a, %xtraiter
  br i1 %exitcond.not, label %oscore_create_nonce.exit.i, label %vec.epilog.scalar.ph, !llvm.loop !18

oscore_create_nonce.exit.i:                       ; preds = %vec.epilog.middle.block, %vec.epilog.scalar.ph, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @ccm_init_block(ptr noundef nonnull %i.c, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull %i.b)
  %i.ea = getelementptr i8, ptr %1, i64 416
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = sext i32 %.0.i to i64
  %i.ed = call ptr @tvb_memdup(ptr noundef %i.eb, ptr noundef %0, i32 noundef 0, i64 noundef %i.ec) ; 3 uses
  %i.ee = call zeroext i1 @ccm_ctr_encrypt(ptr noundef %.081.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.ed, i32 noundef %.0.i)
  br i1 %i.ee, label %bb.ak, label %bb.ax

bb.ak:                                            ; preds = %oscore_create_nonce.exit.i
  %i.ef = call ptr @tvb_new_real_data(ptr noundef %i.ed, i32 noundef %.0.i, i32 noundef %i.bo) ; 7 uses
  call void @tvb_set_child_real_data_tvbuff(ptr noundef %0, ptr noundef %i.ef)
  %i.eg = call ptr @add_new_data_source(ptr noundef %1, ptr noundef %i.ef, ptr noundef nonnull @.str.168) ; 0 uses
  br i1 %i.bt, label %bb.al, label %bb.bb

bb.al:                                            ; preds = %bb.ak
  %i.eh = call ptr @g_byte_array_sized_new(i32 noundef 23) ; 10 uses
  call void @wscbor_enc_array_head(ptr noundef %i.eh, i64 noundef 5)
  call void @wscbor_enc_uint64(ptr noundef %i.eh, i64 noundef 1)
  call void @wscbor_enc_array_head(ptr noundef %i.eh, i64 noundef 1)
  %i.ei = load i32, ptr %i.bi, align 8
  %i.ej = zext i32 %i.ei to i64
  call void @wscbor_enc_uint64(ptr noundef %i.eh, i64 noundef %i.ej)
  %i.ek = load ptr, ptr %3, align 8
  %i.el = load i8, ptr %i.y, align 8
  %i.em = zext i8 %i.el to i64
  call void @wscbor_enc_bstr(ptr noundef %i.eh, ptr noundef %i.ek, i64 noundef %i.em)
  %i.en = getelementptr i8, ptr %3, i64 48
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr i8, ptr %3, i64 56
  %i.eq = load i8, ptr %i.ep, align 8
  %i.er = zext i8 %i.eq to i64
  call void @wscbor_enc_bstr(ptr noundef %i.eh, ptr noundef %i.eo, i64 noundef %i.er)
  call void @wscbor_enc_bstr(ptr noundef %i.eh, ptr noundef null, i64 noundef 0)
  %i.es = getelementptr i8, ptr %i.eh, i64 8
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = icmp ult i32 %i.et, 23
  br i1 %i.eu, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 539, ptr noundef nonnull @.str.169) #14
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.ev = call ptr @g_byte_array_sized_new(i32 noundef 37) ; 7 uses
  call void @wscbor_enc_array_head(ptr noundef %i.ev, i64 noundef 3)
  call void @wscbor_enc_tstr(ptr noundef %i.ev, ptr noundef nonnull @.str.166)
  call void @wscbor_enc_bstr(ptr noundef %i.ev, ptr noundef null, i64 noundef 0)
  call void @wscbor_enc_bstr_bytearray(ptr noundef %i.ev, ptr noundef %i.eh)
  call void @g_byte_array_unref(ptr noundef %i.eh)
  %i.ew = getelementptr i8, ptr %i.ev, i64 8      ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = icmp ult i32 %i.ex, 37
  br i1 %i.ey, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 551, ptr noundef nonnull @.str.170) #14
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.ez = load i32, ptr %i.bm, align 8            ; 2 uses
  %i.fa = icmp ult i32 %i.ez, 17
  br i1 %i.fa, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 559, ptr noundef nonnull @.str.171) #14
  unreachable

bb.ar:                                            ; preds = %bb.ap
  call void @ccm_init_block(ptr noundef nonnull %i.c, i1 noundef zeroext true, i32 noundef %i.ez, i64 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i32 noundef %.0.i, ptr noundef nonnull %i.b)
  %i.fb = load ptr, ptr %i.ev, align 8
  %i.fc = load i32, ptr %i.ew, align 8
  %i.fd = call zeroext i1 @ccm_cbc_mac(ptr noundef %.081.i, ptr noundef nonnull %i.c, ptr noundef %i.fb, i32 noundef %i.fc, ptr noundef %i.ed, i32 noundef %.0.i, ptr noundef nonnull %i.e)
  call void @g_byte_array_unref(ptr noundef %i.ev)
  br i1 %i.fd, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %bb.ar
  %i.fe = load i32, ptr %i.bm, align 8            ; 3 uses
  %i.ff = zext i32 %i.fe to i64
  %bcmp.i62 = call i32 @bcmp(ptr nonnull %i.e, ptr nonnull %i.d, i64 %i.ff)
  %.not87.i = icmp eq i32 %bcmp.i62, 0
  br i1 %.not87.i, label %bb.at, label %bb.az

bb.at:                                            ; preds = %bb.as
  %.not88.i = icmp eq i32 %i.fe, 0
  br i1 %.not88.i, label %oscore_decrypt_and_verify.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fg = load i32, ptr @hf_oscore_tag, align 4
  %i.fh = call ptr @proto_tree_add_bytes(ptr noundef %i.o, i32 noundef %i.fg, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.fe, ptr noundef nonnull %i.d) ; 2 uses
  %.not.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i, label %oscore_decrypt_and_verify.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fi = getelementptr i8, ptr %i.fh, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.fj, null
  br i1 %.not5.i.i, label %oscore_decrypt_and_verify.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fk = getelementptr i8, ptr %i.fj, i64 28     ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = or i32 %i.fl, 2
  store i32 %i.fm, ptr %i.fk, align 4
  br label %oscore_decrypt_and_verify.exit.thread

oscore_decrypt_and_verify.exit.thread:            ; preds = %bb.at, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bc

bb.ax:                                            ; preds = %oscore_create_nonce.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.fn = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_decrypt_error) ; 0 uses
  %i.fo = call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.bj

bb.ay:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.fp = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_cbc_mac_failed) ; 0 uses
  %i.fq = call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.bj

bb.az:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.fr = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_tag_check_failed) ; 0 uses
  %i.fs = call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.bj

bb.ba:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ft = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_message_too_small) ; 0 uses
  %i.fu = tail call i32 @tvb_reported_length(ptr noundef %0)
  br label %bb.bj

bb.bb:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.fv = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_truncated) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %oscore_decrypt_and_verify.exit.thread, %bb.bb
  %.not = icmp eq ptr %i.ef, null
  br i1 %.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef 654, ptr noundef nonnull @.str.165) #14
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fw = call i32 @tvb_reported_length(ptr noundef nonnull %i.ef) ; 3 uses
  %i.fx = call ptr @wmem_file_scope()
  %i.fy = load i32, ptr @proto_coap, align 4
  %i.fz = call ptr @p_get_proto_data(ptr noundef %i.fx, ptr noundef %1, i32 noundef %i.fy, i32 noundef 0) ; 3 uses
  %.not60 = icmp eq ptr %i.fz, null
  br i1 %.not60, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ga = call zeroext i8 @dissect_coap_code(ptr noundef nonnull %i.ef, ptr noundef %i.o, ptr noundef nonnull %i.f, ptr noundef nonnull @dissect_oscore_hf, ptr noundef nonnull %i.g) ; 0 uses
  %i.gb = load i32, ptr %i.f, align 4
  %i.gc = load i8, ptr %i.g, align 1
  %i.gd = call i32 @dissect_coap_options(ptr noundef nonnull %i.ef, ptr noundef %1, ptr noundef %i.o, i32 noundef %i.gb, i32 noundef %i.fw, i8 noundef zeroext %i.gc, ptr noundef nonnull %i.fz, ptr noundef nonnull @dissect_oscore_hf, ptr noundef null) ; 3 uses
  store i32 %i.gd, ptr %i.f, align 4
  %i.ge = icmp ugt i32 %i.fw, %i.gd
  br i1 %i.ge, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.gf = load i8, ptr %i.g, align 1
  call void @dissect_coap_payload(ptr noundef nonnull %i.ef, ptr noundef %1, ptr noundef %i.o, ptr noundef %2, i32 noundef %i.gd, i32 noundef %i.fw, i8 noundef zeroext %i.gf, ptr noundef nonnull %i.fz, ptr noundef nonnull @dissect_oscore_hf, i1 noundef zeroext true)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.be
  %i.gg = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.o, ptr noundef nonnull @ei_oscore_info_fetch_failed) ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bf, %bb.bg, %bb.bh
  %i.gh = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %bb.bi, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.l, %oscore_find_context.exit.thread, %bb.d
  %.0 = phi i32 [ %i.fu, %bb.ba ], [ %i.w, %bb.d ], [ %i.bc, %oscore_find_context.exit.thread ], [ %i.bh, %bb.l ], [ %i.gh, %bb.bi ], [ %i.fo, %bb.ax ], [ %i.fq, %bb.ay ], [ %i.fs, %bb.az ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  ret i32 %.0
end_hunk_0
begin_hunk_1_@oscore_context_free_byte_arrays:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr i8, ptr %0, i64 80
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.n, null
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call ptr @g_byte_array_free(ptr noundef nonnull %i.n, i32 noundef 1) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.q, null
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = tail call ptr @g_byte_array_free(ptr noundef nonnull %i.q, i32 noundef 1) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = getelementptr i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.t, null
  br i1 %.not28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = tail call ptr @g_byte_array_free(ptr noundef nonnull %i.t, i32 noundef 1) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.v = getelementptr i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.w, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = tail call ptr @g_byte_array_free(ptr noundef nonnull %i.w, i32 noundef 1) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @cose_get_aead_props(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_sized_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wscbor_enc_array_head(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wscbor_enc_bstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wscbor_enc_null(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wscbor_enc_uint64(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wscbor_enc_tstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @g_byte_array_set_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @hkdf_expand(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ws_hmac_buffer(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @p_get_proto_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @dissect_coap_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @dissect_coap_options(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @dissect_coap_payload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_bytes_exist(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ccm_init_block(ptr noundef, i1 noundef zeroext, i32 noundef, i64 noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memdup(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ccm_ctr_encrypt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_child_real_data_tvbuff(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @add_new_data_source(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @wscbor_enc_bstr_bytearray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_byte_array_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ccm_cbc_mac(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, i1 true, !"memcpy.inline"}
!12 = distinct !{!12, !11, !"memcpy.inline: argument 1"}
!13 = distinct !{!13, !11, !"memcpy.inline: argument 0"}
!14 = distinct !{!14, i1 true, !"memcpy.inline"}
!15 = distinct !{!15, !14, !"memcpy.inline: argument 1"}
!16 = distinct !{!16, !14, !"memcpy.inline: argument 0"}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !23}
!19 = !{i8 0, i8 2}
!20 = !{}
!21 = !{!13, !12}
!22 = !{!16, !15}
!23 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
