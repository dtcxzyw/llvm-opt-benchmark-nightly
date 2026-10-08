Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-kerberos?download=true
inline.NumInlined: 178
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_kerberos_common:bb.a
    i32 30, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void @col_set_str(ptr noundef %i.ah, i32 noundef 35, ptr noundef nonnull @.str.819)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = load i8, ptr @gbl_do_col_info, align 1, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void @col_clear(ptr noundef %i.al, i32 noundef 25)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not84 = icmp eq ptr %2, null
  br i1 %.not84, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load i32, ptr @proto_kerberos, align 4
  %i.an = call ptr @proto_tree_add_item(ptr noundef nonnull %2, i32 noundef %i.am, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  store volatile ptr %i.an, ptr %i.c, align 8
  %.0..0..0..0.32 = load volatile ptr, ptr %i.c, align 8
  %i.ao = load i32, ptr @ett_kerberos, align 4
  %i.ap = call ptr @proto_item_add_subtree(ptr noundef %.0..0..0..0.32, i32 noundef %i.ao)
  store volatile ptr %i.ap, ptr %i.b, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %kerberos_get_private_data.exit

kerberos_get_private_data.exit:                   ; preds = %bb.q, %show_krb_recordmark.exit
  call void @asn1_ctx_init(ptr noundef nonnull %7, i32 noundef 0, i1 noundef zeroext true, ptr noundef %1)
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call fastcc ptr @kerberos_new_private_data(ptr noundef %i.as) ; 8 uses
  store ptr %i.at, ptr %i.aq, align 8
  %i.au = getelementptr i8, ptr %i.at, i64 72
  store ptr %6, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store volatile i32 0, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @except_setup_try(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dissect_kerberos_common.catch_spec, i64 noundef 1)
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.aw = call i32 @_setjmp(ptr noundef nonnull %i.av) #18
  %.not86 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sink = select i1 %.not86, ptr null, ptr %i.ax
  store volatile ptr %.sink, ptr %i.g, align 8
  %.0..0..0..0.3 = load volatile i32, ptr %i.h, align 4
  %i.ay = and i32 %.0..0..0..0.3, 1
  %.not87 = icmp eq i32 %i.ay, 0
  br i1 %.not87, label %bb.s, label %bb.r

bb.r:                                             ; preds = %kerberos_get_private_data.exit
  %.0..0..0..0.4 = load volatile i32, ptr %i.h, align 4
  %i.az = or i32 %.0..0..0..0.4, 2
  store volatile i32 %i.az, ptr %i.h, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %kerberos_get_private_data.exit
  %.0..0..0..0.5 = load volatile i32, ptr %i.h, align 4
  %i.ba = and i32 %.0..0..0..0.5, -2
  store volatile i32 %i.ba, ptr %i.h, align 4
  %.0..0..0..0.6 = load volatile i32, ptr %i.h, align 4
  %i.bb = icmp eq i32 %.0..0..0..0.6, 0
  br i1 %i.bb, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.0..0..0..0.10 = load volatile ptr, ptr %i.g, align 8
  %i.bc = icmp eq ptr %.0..0..0..0.10, null
  br i1 %i.bc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.0..0..0..0.49 = load volatile i32, ptr %i.a, align 4
  %.0..0..0..0.35 = load volatile ptr, ptr %i.b, align 8
  %i.bd = load i32, ptr @ett_kerberos_Applications, align 4
  %i.be = call i32 @dissect_ber_choice(ptr noundef nonnull %7, ptr noundef %.0..0..0..0.35, ptr noundef %0, i32 noundef %.0..0..0..0.49, ptr noundef nonnull @Applications_choice, i32 noundef -1, i32 noundef %i.bd, ptr noundef null), !inline_history !13
  store volatile i32 %i.be, ptr %i.a, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0..0..0..0.7 = load volatile i32, ptr %i.h, align 4
  %i.bf = icmp eq i32 %.0..0..0..0.7, 0
  br i1 %i.bf, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %.0..0..0..0.11 = load volatile ptr, ptr %i.g, align 8
  %.not88 = icmp eq ptr %.0..0..0..0.11, null
  br i1 %.not88, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.0..0..0..0.12 = load volatile ptr, ptr %i.g, align 8
  %i.bg = getelementptr i8, ptr %.0..0..0..0.12, i64 8
  %i.bh = load volatile i64, ptr %i.bg, align 8
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.0..0..0..0.13 = load volatile ptr, ptr %i.g, align 8
  %i.bj = getelementptr i8, ptr %.0..0..0..0.13, i64 8
  %i.bk = load volatile i64, ptr %i.bj, align 8
  %i.bl = icmp eq i64 %i.bk, 4
  br i1 %i.bl, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.0..0..0..0.14 = load volatile ptr, ptr %i.g, align 8
  %i.bm = getelementptr i8, ptr %.0..0..0..0.14, i64 8
  %i.bn = load volatile i64, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %i.bn, 3
  br i1 %i.bo, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.0..0..0..0.15 = load volatile ptr, ptr %i.g, align 8
  %i.bp = getelementptr i8, ptr %.0..0..0..0.15, i64 8
  %i.bq = load volatile i64, ptr %i.bp, align 8
  %i.br = icmp eq i64 %i.bq, 2
  br i1 %i.br, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.0..0..0..0.16 = load volatile ptr, ptr %i.g, align 8
  %i.bs = getelementptr i8, ptr %.0..0..0..0.16, i64 8
  %i.bt = load volatile i64, ptr %i.bs, align 8
  %i.bu = icmp eq i64 %i.bt, 7
  br i1 %i.bu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.0..0..0..0.8 = load volatile i32, ptr %i.h, align 4
  %i.bv = or i32 %.0..0..0..0.8, 1
  store volatile i32 %i.bv, ptr %i.h, align 4
  call void @__longjmp_chk(ptr noundef nonnull %i.av, i32 noundef 1) #19
  unreachable

bb.ad:                                            ; preds = %bb.ab, %bb.w, %bb.v
  %.0..0..0..0.9 = load volatile i32, ptr %i.h, align 4
  %i.bw = and i32 %.0..0..0..0.9, 1
  %.not89 = icmp eq i32 %i.bw, 0
  br i1 %.not89, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.0..0..0..0.17 = load volatile ptr, ptr %i.g, align 8
  %.not90 = icmp eq ptr %.0..0..0..0.17, null
  br i1 %.not90, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.0..0..0..0.18 = load volatile ptr, ptr %i.g, align 8
  call void @except_rethrow(ptr noundef %.0..0..0..0.18) #20
  unreachable

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.by = load volatile ptr, ptr %i.bx, align 8
  call void @except_free(ptr noundef %i.by)
  %i.bz = call ptr @except_pop()                  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ca = getelementptr i8, ptr %i.at, i64 284
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not91 = icmp eq i32 %i.cb, -1
  br i1 %.not91, label %proto_item_set_generated.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.0..0..0..0.36 = load volatile ptr, ptr %i.b, align 8
  %i.cc = load i32, ptr @hf_krb_response_in, align 4
  %i.cd = call ptr @proto_tree_add_uint(ptr noundef %.0..0..0..0.36, i32 noundef %i.cc, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.cb) ; 2 uses
  %.not.i96 = icmp eq ptr %i.cd, null
  br i1 %.not.i96, label %proto_item_set_generated.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = getelementptr i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.cf, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = getelementptr i8, ptr %i.cf, i64 28     ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = or i32 %i.ch, 2
  store i32 %i.ci, ptr %i.cg, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.cj = getelementptr i8, ptr %i.at, i64 280
  %i.ck = load i32, ptr %i.cj, align 8            ; 2 uses
  %.not92 = icmp eq i32 %i.ck, -1
  br i1 %.not92, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %proto_item_set_generated.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %.0..0..0..0.37 = load volatile ptr, ptr %i.b, align 8
  %i.cl = load i32, ptr @hf_krb_response_to, align 4
  %i.cm = call ptr @proto_tree_add_uint(ptr noundef %.0..0..0..0.37, i32 noundef %i.cl, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.ck) ; 2 uses
  %.not.i97 = icmp eq ptr %i.cm, null
  br i1 %.not.i97, label %proto_item_set_generated.exit99, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = getelementptr i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not5.i98 = icmp eq ptr %i.co, null
  br i1 %.not5.i98, label %proto_item_set_generated.exit99, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = getelementptr i8, ptr %i.co, i64 28     ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = or i32 %i.cq, 2
  store i32 %i.cr, ptr %i.cp, align 4
  br label %proto_item_set_generated.exit99

proto_item_set_generated.exit99:                  ; preds = %bb.ak, %bb.al, %bb.am
  %i.cs = getelementptr i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef align 8 dereferenceable(16) %i.cs, i64 16, i1 false)
  %i.ct = getelementptr i8, ptr %i.at, i64 288
  call void @nstime_delta(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef %i.ct)
  %.0..0..0..0.38 = load volatile ptr, ptr %i.b, align 8
  %i.cu = load i32, ptr @hf_krb_time, align 4
  %i.cv = call ptr @proto_tree_add_time(ptr noundef %.0..0..0..0.38, i32 noundef %i.cu, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %11) ; 2 uses
  %.not.i100 = icmp eq ptr %i.cv, null
  br i1 %.not.i100, label %proto_item_set_generated.exit102, label %bb.an

bb.an:                                            ; preds = %proto_item_set_generated.exit99
  %i.cw = getelementptr i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not5.i101 = icmp eq ptr %i.cx, null
  br i1 %.not5.i101, label %proto_item_set_generated.exit102, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cy = getelementptr i8, ptr %i.cx, i64 28     ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = or i32 %i.cz, 2
  store i32 %i.da, ptr %i.cy, align 4
  br label %proto_item_set_generated.exit102

proto_item_set_generated.exit102:                 ; preds = %proto_item_set_generated.exit99, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.ap

bb.ap:                                            ; preds = %proto_item_set_generated.exit102, %proto_item_set_generated.exit
  %.0..0..0..0.39 = load volatile ptr, ptr %i.b, align 8
  %.not93 = icmp eq ptr %.0..0..0..0.39, null
  br i1 %.not93, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %.0..0..0..0.40 = load volatile ptr, ptr %i.b, align 8
  store ptr %.0..0..0..0.40, ptr %12, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %1, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @ei_kerberos_learnt_keytype, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr @.str.1135, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %0, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i32 0, ptr %i.dg, align 4
  %i.dh = getelementptr i8, ptr %i.at, i64 168
  %i.di = load ptr, ptr %i.dh, align 8
  call void @wmem_list_foreach(ptr noundef %i.di, ptr noundef nonnull @kerberos_display_key, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0..0..0..0.41 = load volatile ptr, ptr %i.b, align 8
  %.not94 = icmp eq ptr %.0..0..0..0.41, null
  br i1 %.not94, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %.0..0..0..0.42 = load volatile ptr, ptr %i.b, align 8
  store ptr %.0..0..0..0.42, ptr %13, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %1, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @ei_kerberos_missing_keytype, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr @.str.1136, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %0, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 44
  store i32 0, ptr %i.do, align 4
  %i.dp = getelementptr i8, ptr %i.at, i64 176
  %i.dq = load ptr, ptr %i.dp, align 8
  call void @wmem_list_foreach(ptr noundef %i.dq, ptr noundef nonnull @kerberos_display_key, ptr noundef nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0..0..0..0.43 = load volatile ptr, ptr %i.b, align 8
  %.not95 = icmp eq ptr %.0..0..0..0.43, null
  br i1 %.not95, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %.0..0..0..0.44 = load volatile ptr, ptr %i.b, align 8
  store ptr %.0..0..0..0.44, ptr %14, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %1, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @ei_kerberos_decrypted_keytype, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr @.str.1137, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr %0, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 0, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 44
  store i32 0, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %i.at, i64 160
  %i.dy = load ptr, ptr %i.dx, align 8
  call void @wmem_list_foreach(ptr noundef %i.dy, ptr noundef nonnull @kerberos_display_key, ptr noundef nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0..0..0..0.33 = load volatile ptr, ptr %i.c, align 8
  %.0..0..0..0.50 = load volatile i32, ptr %i.a, align 4
  call void @proto_item_set_len(ptr noundef %.0..0..0..0.33, i32 noundef %.0..0..0..0.50)
  %.0..0..0..0.51 = load volatile i32, ptr %i.a, align 4
  br label %bb.aw

.critedge:                                        ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %bb.aw

bb.aw:                                            ; preds = %.critedge, %bb.b, %bb.av
  %.1 = phi i32 [ 0, %.critedge ], [ %.0..0..0..0.51, %bb.av ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @kerberos_output_keytype() local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr @gbl_keytype, align 4
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 4, -2147483644) i32 @get_krb_pdu_len(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @tvb_get_ntohl(ptr noundef %1, i32 noundef %2)
  %i.b = and i32 %i.a, 2147483647
  %i.c = add nuw i32 %i.b, 4
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_register_kerberos() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @proto_register_protocol(ptr noundef nonnull @.str.818, ptr noundef nonnull @.str.819, ptr noundef nonnull @.str.820) ; 2 uses
  store i32 %i.a, ptr @proto_kerberos, align 4
  tail call void @proto_register_field_array(i32 noundef %i.a, ptr noundef nonnull @proto_register_kerberos.hf, i32 noundef 370)
  tail call void @proto_register_subtree_array(ptr noundef nonnull @proto_register_kerberos.ett, i32 noundef 124)
  %i.b = load i32, ptr @proto_kerberos, align 4
  %i.c = tail call ptr @expert_register_protocol(i32 noundef %i.b)
  tail call void @expert_register_field_array(ptr noundef %i.c, ptr noundef nonnull @proto_register_kerberos.ei, i32 noundef 5)
  %i.d = tail call i32 @register_tap(ptr noundef nonnull @.str.820)
  store i32 %i.d, ptr @kerberos_tap, align 4
  %i.e = load i32, ptr @proto_kerberos, align 4
  tail call void @register_srt_table(i32 noundef %i.e, ptr noundef null, i32 noundef 1, ptr noundef nonnull @krb5stat_packet, ptr noundef nonnull @krb5stat_init, ptr noundef null)
  %i.f = load i32, ptr @proto_kerberos, align 4
  %i.g = tail call ptr @register_dissector(ptr noundef nonnull @.str.821, ptr noundef nonnull @dissect_kerberos_udp, i32 noundef %i.f)
  store ptr %i.g, ptr @kerberos_handle_udp, align 8
  %i.h = load i32, ptr @proto_kerberos, align 4
  %i.i = tail call ptr @register_dissector(ptr noundef nonnull @.str.822, ptr noundef nonnull @dissect_kerberos_tcp, i32 noundef %i.h)
  store ptr %i.i, ptr @kerberos_handle_tcp, align 8
  %i.j = load i32, ptr @proto_kerberos, align 4
  %i.k = tail call ptr @prefs_register_protocol(i32 noundef %i.j, ptr noundef nonnull @kerberos_prefs_apply_cb) ; 3 uses
  tail call void @prefs_register_bool_preference(ptr noundef %i.k, ptr noundef nonnull @.str.823, ptr noundef nonnull @.str.824, ptr noundef nonnull @.str.825, ptr noundef nonnull @krb_desegment)
  tail call void @prefs_register_bool_preference(ptr noundef %i.k, ptr noundef nonnull @.str.826, ptr noundef nonnull @.str.827, ptr noundef nonnull @.str.828, ptr noundef nonnull @krb_decrypt)
  tail call void @prefs_register_filename_preference(ptr noundef %i.k, ptr noundef nonnull @.str.829, ptr noundef nonnull @.str.830, ptr noundef nonnull @.str.831, ptr noundef nonnull @keytab_filename, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_register_protocol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @proto_register_field_array(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3
end_hunk_0
