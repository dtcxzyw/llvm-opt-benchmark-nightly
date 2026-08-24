Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-qnet6?download=true
inline.NumInlined: 49
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dissect_qnet6_lr:bb.a
default.unreachable:                              ; preds = %bb.b
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.1129 = phi ptr [ %i.bp, %bb.h ], [ %i.av, %bb.c ], [ %i.az, %bb.d ], [ %i.bd, %bb.e ], [ %i.bh, %bb.f ], [ %i.bl, %bb.g ] ; 4 uses
  %.1126 = phi i32 [ %i.bm, %bb.h ], [ %i.as, %bb.c ], [ %i.aw, %bb.d ], [ %i.ba, %bb.e ], [ %i.be, %bb.f ], [ %i.bi, %bb.g ]
  %.1124 = phi i32 [ %i.bn, %bb.h ], [ %i.at, %bb.c ], [ %i.ax, %bb.d ], [ %i.bb, %bb.e ], [ %i.bf, %bb.f ], [ %i.bj, %bb.g ]
  %.1 = phi i32 [ %i.bo, %bb.h ], [ %i.au, %bb.c ], [ %i.ay, %bb.d ], [ %i.bc, %bb.e ], [ %i.bg, %bb.f ], [ %i.bk, %bb.g ] ; 2 uses
  %i.bq = load i32, ptr %3, align 4
  %i.br = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.bq, i32 noundef %4) ; 2 uses
  %i.bs = load i32, ptr %3, align 4
  %i.bt = call ptr @proto_tree_add_item(ptr noundef %.1129, i32 noundef %.1126, ptr noundef %0, i32 noundef %i.bs, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bu = load i32, ptr %3, align 4
  %i.bv = add i32 %i.bu, 4                        ; 2 uses
  store i32 %i.bv, ptr %3, align 4
  %i.bw = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.bv, i32 noundef %4) ; 4 uses
  %i.bx = load i32, ptr %3, align 4
  %i.by = call ptr @proto_tree_add_item(ptr noundef %.1129, i32 noundef %.1124, ptr noundef %0, i32 noundef %i.bx, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bz = load i32, ptr %3, align 4
  %i.ca = add i32 %i.bz, 4
  store i32 %i.ca, ptr %3, align 4
  %.not145 = icmp ugt i32 %i.br, %i.an
  %.not146 = icmp ugt i32 %i.bw, %i.an
  %or.cond147 = select i1 %.not145, i1 true, i1 %.not146
  br i1 %or.cond147, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = add i32 %i.br, %i.h                     ; 3 uses
  switch i32 %i.ap, label %bb.k [
    i32 5, label %bb.n
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.cc = add i32 %i.cb, 56                       ; 2 uses
  %i.cd = load ptr, ptr %i.ao, align 8
  %i.ce = call ptr @tvb_get_string_enc(ptr noundef %i.cd, ptr noundef %0, i32 noundef %i.cc, i32 noundef %i.bw, i32 noundef 0) ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = call ptr @proto_tree_add_string(ptr noundef %.1129, i32 noundef %.1, ptr noundef %0, i32 noundef %i.cc, i32 noundef %i.bw, ptr noundef %i.ce) ; 2 uses
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not5.i = icmp eq ptr %i.ci, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr i8, ptr %i.ci, i64 28     ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = or i32 %i.ck, 2
  store i32 %i.cl, ptr %i.cj, align 4
  br label %proto_item_set_generated.exit

bb.n:                                             ; preds = %bb.j, %bb.j
  %i.cm = add i32 %i.cb, 57
  %i.cn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cm)
  %i.co = icmp eq i8 %i.cn, 1
  %i.cp = icmp ugt i32 %i.bw, 7
  %or.cond3 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond3, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cq = load ptr, ptr %i.ao, align 8
  %i.cr = add i32 %i.cb, 58                       ; 2 uses
  %i.cs = call ptr @tvb_address_to_str(ptr noundef %i.cq, ptr noundef %0, i32 noundef 1, i32 noundef %i.cr)
  %i.ct = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.cs, ptr %i.ct, align 8
  %i.cu = call ptr @proto_tree_add_item(ptr noundef %.1129, i32 noundef %.1, ptr noundef %0, i32 noundef %i.cr, i32 noundef 6, i32 noundef 0) ; 2 uses
  %.not.i148 = icmp eq ptr %i.cu, null
  br i1 %.not.i148, label %proto_item_set_generated.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8            ; 2 uses
  %.not5.i149 = icmp eq ptr %i.cw, null
  br i1 %.not5.i149, label %proto_item_set_generated.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr i8, ptr %i.cw, i64 28     ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = or i32 %i.cy, 2
  store i32 %i.cz, ptr %i.cx, align 4
  br label %proto_item_set_generated.exit

bb.r:                                             ; preds = %bb.n
  %i.da = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr null, ptr %i.da, align 8
  br label %proto_item_set_generated.exit

bb.s:                                             ; preds = %bb.i
  %i.db = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr null, ptr %i.db, align 8
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.r, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.t, label %bb.b, !llvm.loop !8

bb.t:                                             ; preds = %proto_item_set_generated.exit
  %i.dc = load i8, ptr %i.a, align 1
  switch i8 %i.dc, label %bb.y [
    i8 1, label %bb.u
    i8 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.de = load ptr, ptr %i.dd, align 16           ; 2 uses
  %.not140 = icmp eq ptr %i.de, null
  br i1 %.not140, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.df = load ptr, ptr %i.c, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not141 = icmp eq ptr %i.dh, null
  %i.di = select i1 %.not141, ptr @.str.1139, ptr %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dk = load ptr, ptr %i.dj, align 16           ; 2 uses
  %.not142 = icmp eq ptr %i.dk, null
  %i.dl = select i1 %.not142, ptr @.str.1139, ptr %i.dk
  %i.dm = load ptr, ptr %i.b, align 16            ; 2 uses
  %.not143 = icmp eq ptr %i.dm, null
  %i.dn = select i1 %.not143, ptr @.str.1139, ptr %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not144 = icmp eq ptr %i.dp, null
  %i.dq = select i1 %.not144, ptr @.str.1139, ptr %i.dp
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.df, i32 noundef 25, ptr noundef nonnull @.str.1138, ptr noundef nonnull %i.di, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.de)
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ds = load ptr, ptr %i.dr, align 16           ; 2 uses
  %.not = icmp eq ptr %i.ds, null
  br i1 %.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = load ptr, ptr %i.c, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %.not136 = icmp eq ptr %i.dv, null
  %i.dw = select i1 %.not136, ptr @.str.1139, ptr %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dy = load ptr, ptr %i.dx, align 16           ; 2 uses
  %.not137 = icmp eq ptr %i.dy, null
  %i.dz = select i1 %.not137, ptr @.str.1139, ptr %i.dy
  %i.ea = load ptr, ptr %i.b, align 16            ; 2 uses
  %.not138 = icmp eq ptr %i.ea, null
  %i.eb = select i1 %.not138, ptr @.str.1139, ptr %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not139 = icmp eq ptr %i.ed, null
  %i.ee = select i1 %.not139, ptr @.str.1139, ptr %i.ed
  call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.dt, i32 noundef 25, ptr noundef nonnull @.str.1140, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.eb, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ds)
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.ef = load ptr, ptr %i.c, align 8
  call void @col_set_str(ptr noundef %i.ef, i32 noundef 25, ptr noundef nonnull @.str.1141)
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.u, %bb.v, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @qos_tcs_init_addtree(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 -2147483648, 1) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2147483640) %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %4, ptr noundef %0, i32 noundef %i.a, i32 noundef 2, i32 noundef %3) ; 0 uses
  %i.c = load i32, ptr %2, align 4
  %i.d = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.c, i32 noundef %3)
  %i.e = zext i16 %i.d to i32                     ; 4 uses
  %i.f = icmp samesign ugt i32 %6, %i.e
  br i1 %i.f, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a, %bb.b
  %.030 = phi i32 [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.g = add i32 %.030, %7
  %i.h = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.g)
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.j = add nuw i32 %.030, 1
  %exitcond.not = icmp eq i32 %.030, %6
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !10

bb.c:                                             ; preds = %.preheader
  %i.k = add i32 %7, %i.e
  %i.l = sub nuw nsw i32 %.030, %i.e
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %5, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.l, i32 noundef 0) ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.o, null
  br i1 %.not5.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 28       ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = or i32 %i.q, 2
  store i32 %i.r, ptr %i.p, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %bb.a
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 2
  store i32 %i.t, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_uint16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @dissect_qnet6_kif_cred(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 -2147483648, 1) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load i32, ptr %2, align 4
  %i.c = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.b) ; 2 uses
  %i.d = icmp slt i32 %i.c, 44
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @hf_qnet6_kif_client_info, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_string(ptr noundef %1, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 44, ptr noundef nonnull @.str.679) ; 2 uses
  %i.h = load i32, ptr @ett_qnet6_kif_client_info, align 4
  %i.i = tail call ptr @proto_item_add_subtree(ptr noundef %i.g, i32 noundef %i.h) ; 5 uses
  %i.j = load i32, ptr @hf_qnet6_kif_client_info_nd, align 4
  %i.k = load i32, ptr %2, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.k, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.m = load i32, ptr %2, align 4
  %i.n = add i32 %i.m, 4                          ; 2 uses
  store i32 %i.n, ptr %2, align 4
  %i.o = load i32, ptr @hf_qnet6_kif_client_info_pid, align 4
  %i.p = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.q = load i32, ptr %2, align 4
  %i.r = add i32 %i.q, 4                          ; 2 uses
  store i32 %i.r, ptr %2, align 4
  %i.s = load i32, ptr @hf_qnet6_kif_client_info_sid, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.u = load i32, ptr %2, align 4
  %i.v = add i32 %i.u, 4                          ; 2 uses
  store i32 %i.v, ptr %2, align 4
  %i.w = load i32, ptr @hf_qnet6_kif_client_info_flags, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %i.i, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.y = load i32, ptr %2, align 4
  %i.z = add i32 %i.y, 4                          ; 2 uses
  store i32 %i.z, ptr %2, align 4
  %i.aa = load i32, ptr @hf_qnet6_kif_client_info_cred, align 4
  %i.ab = tail call ptr @proto_tree_add_string(ptr noundef %i.i, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 28, ptr noundef nonnull @.str.679) ; 2 uses
  %i.ac = load i32, ptr @ett_qnet6_kif_client_info_cred, align 4
  %i.ad = tail call ptr @proto_item_add_subtree(ptr noundef %i.ab, i32 noundef %i.ac) ; 8 uses
  %i.ae = load i32, ptr @hf_qnet6_kif_client_info_cred_ruid, align 4
  %i.af = load i32, ptr %2, align 4
  %i.ag = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ah = load i32, ptr %2, align 4
  %i.ai = add i32 %i.ah, 4                        ; 2 uses
  store i32 %i.ai, ptr %2, align 4
  %i.aj = load i32, ptr @hf_qnet6_kif_client_info_cred_euid, align 4
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.al = load i32, ptr %2, align 4
  %i.am = add i32 %i.al, 4                        ; 2 uses
  store i32 %i.am, ptr %2, align 4
  %i.an = load i32, ptr @hf_qnet6_kif_client_info_cred_suid, align 4
  %i.ao = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.am, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ap = load i32, ptr %2, align 4
  %i.aq = add i32 %i.ap, 4                        ; 2 uses
  store i32 %i.aq, ptr %2, align 4
  %i.ar = load i32, ptr @hf_qnet6_kif_client_info_cred_rgid, align 4
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.ar, ptr noundef %0, i32 noundef %i.aq, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.at = load i32, ptr %2, align 4
  %i.au = add i32 %i.at, 4                        ; 2 uses
  store i32 %i.au, ptr %2, align 4
  %i.av = load i32, ptr @hf_qnet6_kif_client_info_cred_egid, align 4
  %i.aw = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.au, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ax = load i32, ptr %2, align 4
  %i.ay = add i32 %i.ax, 4                        ; 2 uses
  store i32 %i.ay, ptr %2, align 4
  %i.az = load i32, ptr @hf_qnet6_kif_client_info_cred_sgid, align 4
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.ay, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.bb = load i32, ptr %2, align 4
  %i.bc = add i32 %i.bb, 4                        ; 2 uses
  store i32 %i.bc, ptr %2, align 4
  %i.bd = load i32, ptr @hf_qnet6_kif_client_info_cred_ngroups, align 4
  %i.be = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ad, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.bc, i32 noundef 4, i32 noundef %3, ptr noundef nonnull %i.a) ; 0 uses
  %i.bf = load i32, ptr %2, align 4
  %i.bg = add i32 %i.bf, 4                        ; 2 uses
  store i32 %i.bg, ptr %2, align 4
  %i.bh = load i32, ptr %i.a, align 4             ; 4 uses
  %i.bi = icmp ugt i32 %i.bh, 8
  br i1 %i.bi, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bj = call i32 @llvm.umin.i32(i32 %i.c, i32 76)
  %i.bk = add nsw i32 %i.bj, -44
  %i.bl = shl nuw nsw i32 %i.bh, 2                ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bk, %i.bl
  br i1 %i.bm, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not1 = icmp eq i32 %i.bh, 0
  br i1 %.not1, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr @hf_qnet6_kif_client_info_cred_grouplist, align 4
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %i.ad, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bg, i32 noundef 4, i32 noundef %3) ; 3 uses
  %i.bp = load i32, ptr %2, align 4
  %i.bq = add i32 %i.bp, 4                        ; 2 uses
  store i32 %i.bq, ptr %2, align 4
  %.not11 = icmp eq i32 %i.bh, 1
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %i.br = phi i32 [ %i.bu, %.lr.ph ], [ %i.bq, %bb.e ]
  %.13 = phi i32 [ %i.bv, %.lr.ph ], [ 48, %bb.e ]
  %.11082.in = phi i32 [ %.11082, %.lr.ph ], [ %i.bl, %bb.e ] ; 2 uses
  %.11082 = add nsw i32 %.11082.in, -4
  %i.bs = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.br, i32 noundef %3)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.bo, ptr noundef nonnull @.str.1097, i32 noundef %i.bs)
  %i.bt = load i32, ptr %2, align 4
  %i.bu = add i32 %i.bt, 4                        ; 2 uses
  store i32 %i.bu, ptr %2, align 4
  %i.bv = add nuw i32 %.13, 4                     ; 2 uses
  %i.bw = icmp sgt i32 %.11082.in, 8
  br i1 %i.bw, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %bb.d, %bb.e
  %.010910 = phi ptr [ %i.bo, %bb.e ], [ null, %bb.d ], [ %i.bo, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi i32 [ 48, %bb.e ], [ 44, %bb.d ], [ %i.bv, %.lr.ph ] ; 3 uses
  call void @proto_item_set_len(ptr noundef %i.g, i32 noundef %.1.lcssa)
  %i.bx = add i32 %.1.lcssa, -16
  call void @proto_item_set_len(ptr noundef %i.ab, i32 noundef %i.bx)
  %.not = icmp eq ptr %.010910, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.by = add i32 %.1.lcssa, -44
  call void @proto_item_set_len(ptr noundef nonnull %.010910, i32 noundef %i.by)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.c, %bb.b, %bb.a
  %.0110 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %bb.f ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0110
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.nstime_t, align 8           ; 9 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [20 x i8], align 16               ; 7 uses
  %i.e = alloca [20 x i8], align 16               ; 7 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i16, align 2                      ; 5 uses
  %i.m = alloca i16, align 2                      ; 5 uses
  %i.n = alloca i16, align 2                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %i.q = alloca i16, align 2                      ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca i16, align 2                      ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %i.x = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #6
  %i.y = load i32, ptr %3, align 4
  %i.z = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.y) ; 3 uses
  %i.aa = load i32, ptr @hf_qnet6_kif_msg, align 4
  %i.ab = load i32, ptr %3, align 4
  %i.ac = tail call ptr @proto_tree_add_string(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.ab, i32 noundef -1, ptr noundef nonnull @.str.1100) ; 2 uses
  %i.ad = load i32, ptr @ett_qnet6_kif_msg, align 4
  %i.ae = tail call ptr @proto_item_add_subtree(ptr noundef %i.ac, i32 noundef %i.ad) ; 146 uses
  %i.af = load i32, ptr %3, align 4
  %i.ag = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.af, i32 noundef %4) ; 2 uses
  %i.ah = load i32, ptr @hf_qnet6_kif_msg_type, align 4
  %i.ai = load i32, ptr %3, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ai, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ak = load i32, ptr %3, align 4
  %i.al = add i32 %i.ak, 2
  store i32 %i.al, ptr %3, align 4
  %i.am = zext i16 %i.ag to i32
  %i.an = tail call ptr @try_val_to_str_ext(i32 noundef %i.am, ptr noundef nonnull @qnet6_kif_msgsend_msgtype_vals_ext) ; 3 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ap, i32 noundef 25, ptr noundef nonnull @.str.1101, ptr noundef nonnull %i.an)
  tail call void (ptr, ptr, ...) @proto_item_set_text(ptr noundef %i.ac, ptr noundef nonnull @.str.1102, ptr noundef nonnull %i.an)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  switch i16 %i.ag, label %bb.dz [
    i16 256, label %bb.d
    i16 262, label %bb.t
    i16 257, label %bb.z
    i16 258, label %bb.ag
    i16 264, label %bb.aq
    i16 260, label %bb.au
    i16 265, label %bb.ay
    i16 266, label %bb.bc
    i16 267, label %bb.bg
    i16 268, label %bb.bk
    i16 270, label %bb.bo
    i16 271, label %bb.bt
    i16 272, label %bb.bx
    i16 278, label %bb.cb
    i16 281, label %bb.cf
    i16 269, label %bb.cj
    i16 273, label %bb.cn
    i16 274, label %bb.cr
    i16 275, label %bb.cv
    i16 261, label %bb.cz
    i16 277, label %bb.dv
  ]

bb.d:                                             ; preds = %bb.c
  %i.aq = add i32 %i.z, -2
  %i.ar = icmp slt i32 %i.aq, 2
  br i1 %i.ar, label %bb.dz, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load i32, ptr @hf_qnet6_kif_msg_connect_subtype, align 4
  %i.at = load i32, ptr %3, align 4
  %i.au = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.at, i32 noundef 2, i32 noundef %4, ptr noundef nonnull %i.x) ; 0 uses
  %i.av = load i32, ptr %3, align 4
  %i.aw = add i32 %i.av, 2                        ; 2 uses
  store i32 %i.aw, ptr %3, align 4
  %i.ax = add i32 %i.z, -4
  %i.ay = icmp samesign ult i32 %i.ax, 36
  br i1 %i.ay, label %bb.dz, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = add i32 %i.z, -40                       ; 3 uses
  %i.ba = load i32, ptr @hf_qnet6_kif_msg_connect_filetype, align 4
  %i.bb = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.aw, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bc = load i32, ptr %3, align 4
  %i.bd = add i32 %i.bc, 4                        ; 2 uses
  store i32 %i.bd, ptr %3, align 4
  %i.be = load i32, ptr @hf_qnet6_kif_msg_connect_replymax, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bd, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bg = load i32, ptr %3, align 4
  %i.bh = add i32 %i.bg, 2                        ; 2 uses
  store i32 %i.bh, ptr %3, align 4
  %i.bi = load i32, ptr @hf_qnet6_kif_msg_connect_entrymax, align 4
  %i.bj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bh, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.bk = load i32, ptr %3, align 4
  %i.bl = add i32 %i.bk, 2                        ; 2 uses
  store i32 %i.bl, ptr %3, align 4
  %i.bm = load i32, ptr @hf_qnet6_kif_msg_connect_key, align 4
  %i.bn = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bl, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bo = load i32, ptr %3, align 4
  %i.bp = add i32 %i.bo, 4                        ; 2 uses
  store i32 %i.bp, ptr %3, align 4
  %i.bq = load i32, ptr @hf_qnet6_kif_msg_connect_handle, align 4
  %i.br = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.bq, ptr noundef %0, i32 noundef %i.bp, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bs = load i32, ptr %3, align 4
  %i.bt = add i32 %i.bs, 4                        ; 2 uses
  store i32 %i.bt, ptr %3, align 4
  %i.bu = load i32, ptr @hf_qnet6_kif_msg_connect_ioflag, align 4
  %i.bv = load i32, ptr @ett_qnet6_kif_msg_ioflag, align 4
  %i.bw = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.bt, i32 noundef %i.bu, i32 noundef %i.bv, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg.ioflag_fields, i32 noundef %4) ; 0 uses
  %i.bx = load i32, ptr %3, align 4
  %i.by = add i32 %i.bx, 4                        ; 2 uses
  store i32 %i.by, ptr %3, align 4
  %i.bz = load i32, ptr @hf_qnet6_kif_msg_connect_mode, align 4
  %i.ca = load i32, ptr @ett_qnet6_kif_msg_mode, align 4
  %i.cb = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.by, i32 noundef %i.bz, i32 noundef %i.ca, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg.mode_fields, i32 noundef %4) ; 0 uses
  %i.cc = load i32, ptr %3, align 4
  %i.cd = add i32 %i.cc, 4                        ; 2 uses
  store i32 %i.cd, ptr %3, align 4
  %i.ce = load i32, ptr @hf_qnet6_kif_msg_connect_sflag, align 4
  %i.cf = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ce, ptr noundef %0, i32 noundef %i.cd, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cg = load i32, ptr %3, align 4
  %i.ch = add i32 %i.cg, 2                        ; 2 uses
  store i32 %i.ch, ptr %3, align 4
  %i.ci = load i32, ptr @hf_qnet6_kif_msg_connect_access, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.ch, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ck = load i32, ptr %3, align 4
  %i.cl = add i32 %i.ck, 2                        ; 2 uses
  store i32 %i.cl, ptr %3, align 4
  %i.cm = load i32, ptr @hf_qnet6_kif_msg_connect_zero, align 4
  %i.cn = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.cm, ptr noundef %0, i32 noundef %i.cl, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.co = load i32, ptr %3, align 4
  %i.cp = add i32 %i.co, 2                        ; 2 uses
  store i32 %i.cp, ptr %3, align 4
  %i.cq = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.cp, i32 noundef %4)
  %i.cr = load i32, ptr @hf_qnet6_kif_msg_connect_pathlen, align 4
  %i.cs = load i32, ptr %3, align 4
  %i.ct = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cs, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.cu = load i32, ptr %3, align 4
  %i.cv = add i32 %i.cu, 2                        ; 2 uses
  store i32 %i.cv, ptr %3, align 4
  %i.cw = load i32, ptr @hf_qnet6_kif_msg_connect_eflag, align 4
  %i.cx = load i32, ptr @ett_qnet6_kif_msg_eflag, align 4
  %i.cy = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.cv, i32 noundef %i.cw, i32 noundef %i.cx, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg.eflag_fields, i32 noundef %4) ; 0 uses
  %i.cz = load i32, ptr %3, align 4
  %i.da = add i32 %i.cz, 1                        ; 2 uses
  store i32 %i.da, ptr %3, align 4
  %i.db = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.da)
  %i.dc = load i32, ptr @hf_qnet6_kif_msg_connect_extratype, align 4
  %i.dd = load i32, ptr %3, align 4
  %i.de = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.dc, ptr noundef %0, i32 noundef %i.dd, i32 noundef 1, i32 noundef %4) ; 0 uses
  %i.df = load i32, ptr %3, align 4
  %i.dg = add i32 %i.df, 1                        ; 2 uses
  store i32 %i.dg, ptr %3, align 4
  %i.dh = call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.dg, i32 noundef %4) ; 2 uses
  %i.di = load i32, ptr @hf_qnet6_kif_msg_connect_extralen, align 4
  %i.dj = load i32, ptr %3, align 4
  %i.dk = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.di, ptr noundef %0, i32 noundef %i.dj, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.dl = load i32, ptr %3, align 4
  %i.dm = add i32 %i.dl, 2                        ; 2 uses
  store i32 %i.dm, ptr %3, align 4
  %i.dn = zext i16 %i.cq to i32
  %spec.select463 = call i32 @llvm.umin.i32(i32 %i.az, i32 %i.dn) ; 5 uses
  %.not297 = icmp eq i32 %spec.select463, 0
  br i1 %.not297, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.do = load i32, ptr @hf_qnet6_kif_msg_connect_path, align 4
  %i.dp = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.do, ptr noundef %0, i32 noundef %i.dm, i32 noundef %spec.select463, i32 noundef 0) ; 0 uses
  %i.dq = load i32, ptr %3, align 4
  %i.dr = add i32 %i.dq, %spec.select463
  store i32 %i.dr, ptr %3, align 4
  %i.ds = sub nuw nsw i32 %i.az, %spec.select463
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0283 = phi i32 [ %i.ds, %bb.g ], [ %i.az, %bb.f ] ; 4 uses
  %i.dt = getelementptr i8, ptr %1, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load i16, ptr %i.x, align 2
  %i.dw = zext i16 %i.dv to i32
  %i.dx = call ptr @val_to_str_const(i32 noundef %i.dw, ptr noundef nonnull @qnet6_kif_msgsend_msg_connect_subtype_vals, ptr noundef nonnull @.str.1103)
  call void @col_set_str(ptr noundef %i.du, i32 noundef 25, ptr noundef %i.dx)
  %i.dy = zext i16 %i.dh to i32
  %i.dz = icmp ne i16 %i.dh, 0
  %6 = icmp ne i32 %.0283, 0
  %or.cond = select i1 %i.dz, i1 %6, i1 false
  br i1 %or.cond, label %bb.i, label %bb.dz

bb.i:                                             ; preds = %bb.h
  %i.ea = and i32 %spec.select463, 7              ; 2 uses
  %.not298 = icmp eq i32 %i.ea, 0
  br i1 %.not298, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eb = sub nuw nsw i32 8, %i.ea
  %spec.select299464 = call i32 @llvm.umin.i32(i32 %.0283, i32 %i.eb) ; 3 uses
  %i.ec = load i32, ptr @hf_qnet6_kif_msg_connect_pad_data, align 4
  %i.ed = load i32, ptr %3, align 4
  %i.ee = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ec, ptr noundef %0, i32 noundef %i.ed, i32 noundef %spec.select299464, i32 noundef 0) ; 0 uses
  %i.ef = load i32, ptr %3, align 4
  %i.eg = add i32 %i.ef, %spec.select299464
  store i32 %i.eg, ptr %3, align 4
  %i.eh = sub nuw nsw i32 %.0283, %spec.select299464
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1284 = phi i32 [ %i.eh, %bb.j ], [ %.0283, %bb.i ]
  %spec.select300465 = call i32 @llvm.umin.i32(i32 %.1284, i32 %i.dy) ; 3 uses
  %i.ei = load i16, ptr %i.x, align 2
  %switch = icmp ult i16 %i.ei, 2
  br i1 %switch, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %7 = icmp samesign ugt i32 %spec.select300465, 3
  br i1 %7, label %bb.m, label %bb.dz

bb.m:                                             ; preds = %bb.l
  %i.ej = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef %4)
  br label %bb.dz

bb.n:                                             ; preds = %bb.k
  %i.ek = load i32, ptr %3, align 4
  switch i8 %i.db, label %bb.r [
    i8 1, label %bb.s
    i8 2, label %bb.o
    i8 9, label %bb.p
    i8 10, label %bb.q
    i8 11, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  br label %bb.s

bb.q:                                             ; preds = %bb.n, %bb.n
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %hf_qnet6_kif_msg_connect_extra_link_ocb.sink = phi ptr [ @hf_qnet6_kif_msg_connect_extra_data, %bb.r ], [ @hf_qnet6_kif_msg_connect_extra_symlink_path, %bb.o ], [ @hf_qnet6_kif_msg_connect_extra_rename_path, %bb.p ], [ @hf_qnet6_kif_msg_connect_extra_mount, %bb.q ], [ @hf_qnet6_kif_msg_connect_extra_link_ocb, %bb.n ]
  %.sink521 = phi i32 [ 0, %bb.r ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ %4, %bb.n ]
  %i.el = load i32, ptr %hf_qnet6_kif_msg_connect_extra_link_ocb.sink, align 4
  %i.em = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.el, ptr noundef %0, i32 noundef %i.ek, i32 noundef %spec.select300465, i32 noundef %.sink521) ; 0 uses
  %i.en = load i32, ptr %3, align 4
  %i.eo = add i32 %i.en, %spec.select300465
  store i32 %i.eo, ptr %3, align 4
  br label %bb.dz

bb.t:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #6
  %i.ep = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.eq = load i32, ptr %3, align 4
  %i.er = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.ep, ptr noundef %0, i32 noundef %i.eq, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.w), !inline_history !12 ; 0 uses
  %i.es = load i32, ptr %3, align 4
  %i.et = add i32 %i.es, 2                        ; 2 uses
  store i32 %i.et, ptr %3, align 4
  %i.eu = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.et, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12
  %i.ev = load i32, ptr %3, align 4
  %i.ew = load i32, ptr @hf_qnet6_kif_msg_devctl_dcmd, align 4
  %i.ex = load i32, ptr @ett_qnet6_kif_msg_devctl_dcmd, align 4
  %i.ey = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.ev, i32 noundef %i.ew, i32 noundef %i.ex, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_devctl.dcmd_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12 ; 0 uses
  %i.ez = load i32, ptr %3, align 4
  %i.fa = add i32 %i.ez, 4                        ; 2 uses
  store i32 %i.fa, ptr %3, align 4
  %i.fb = load i32, ptr @hf_qnet6_kif_msg_devctl_nbytes, align 4
  %i.fc = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.fb, ptr noundef %0, i32 noundef %i.fa, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12 ; 0 uses
  %i.fd = load i32, ptr %3, align 4
  %i.fe = add i32 %i.fd, 4                        ; 2 uses
  store i32 %i.fe, ptr %3, align 4
  %i.ff = load i32, ptr @hf_qnet6_kif_msg_devctl_zero, align 4
  %i.fg = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ff, ptr noundef %0, i32 noundef %i.fe, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12 ; 0 uses
  %i.fh = load i32, ptr %3, align 4
  %i.fi = add i32 %i.fh, 4                        ; 2 uses
  store i32 %i.fi, ptr %3, align 4
  %i.fj = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.fi), !inline_history !12 ; 4 uses
  %i.fk = load i32, ptr %i.w, align 4
  %i.fl = and i32 %i.fk, -32769                   ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 16
  br i1 %i.fm, label %bb.u, label %dissect_qnet6_kif_msgsend_msg_extra.exit

bb.u:                                             ; preds = %bb.t
  %i.fn = add nsw i32 %i.fl, -16
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.fn, i32 %i.fj) ; 4 uses
  %i.fo = icmp sgt i32 %spec.select.i, 0
  br i1 %i.fo, label %bb.v, label %dissect_qnet6_kif_msgsend_msg_extra.exit

bb.v:                                             ; preds = %bb.u
  %i.fp = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.fq = load i32, ptr %3, align 4
  %i.fr = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.fp, ptr noundef %0, i32 noundef %i.fq, i32 noundef %spec.select.i, ptr noundef nonnull @.str.1104) ; 0 uses
  %i.fs = load i32, ptr %3, align 4
  %i.ft = add i32 %i.fs, %spec.select.i
  store i32 %i.ft, ptr %3, align 4
  %i.fu = sub i32 %i.fj, %spec.select.i
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit

dissect_qnet6_kif_msgsend_msg_extra.exit:         ; preds = %bb.t, %bb.u, %bb.v
  %.0 = phi i32 [ %i.fu, %bb.v ], [ %i.fj, %bb.u ], [ %i.fj, %bb.t ]
  %i.fv = and i32 %i.eu, 65535
  %i.fw = call ptr @try_val_to_str_ext(i32 noundef %i.fv, ptr noundef nonnull @qnet6_kif_msg_devctl_cmd_class_vals_ext), !inline_history !12 ; 2 uses
  %.not.i = icmp eq ptr %i.fw, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit
  %i.fx = getelementptr i8, ptr %1, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.fy, i32 noundef 25, ptr noundef nonnull @.str.1101, ptr noundef nonnull %i.fw), !inline_history !12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %dissect_qnet6_kif_msgsend_msg_extra.exit
  %i.fz = load i32, ptr %i.w, align 4
  %i.ga = and i32 %i.fz, 32768
  %i.gb = icmp ne i32 %i.ga, 0
  %i.gc = icmp sgt i32 %.0, 0
  %or.cond.i = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond.i, label %bb.y, label %dissect_qnet6_kif_msgsend_msg_devctl.exit

bb.y:                                             ; preds = %bb.x
  %i.gd = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !12
  br label %dissect_qnet6_kif_msgsend_msg_devctl.exit

dissect_qnet6_kif_msgsend_msg_devctl.exit:        ; preds = %bb.x, %bb.y
  %.0.i = phi i32 [ %i.gd, %bb.y ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #6
  br label %bb.dz

bb.z:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #6
  %i.ge = load i32, ptr %3, align 4
  %i.gf = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ge), !inline_history !13 ; 2 uses
  %i.gg = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.gh = load i32, ptr %3, align 4
  %i.gi = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.gg, ptr noundef %0, i32 noundef %i.gh, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.v), !inline_history !13 ; 0 uses
  %i.gj = load i32, ptr %3, align 4
  %i.gk = add i32 %i.gj, 2                        ; 2 uses
  store i32 %i.gk, ptr %3, align 4
  %i.gl = load i32, ptr @hf_qnet6_kif_msg_io_read_nbytes, align 4
  %i.gm = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.gl, ptr noundef %0, i32 noundef %i.gk, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  %i.gn = load i32, ptr %3, align 4
  %i.go = add i32 %i.gn, 4                        ; 2 uses
  store i32 %i.go, ptr %3, align 4
  %i.gp = call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.go, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13
  %i.gq = load i32, ptr %3, align 4
  %i.gr = load i32, ptr @hf_qnet6_kif_msg_io_read_xtypes, align 4
  %i.gs = load i32, ptr @ett_qnet6_kif_msg_read_xtypes, align 4
  %i.gt = call ptr @proto_tree_add_bitmask(ptr noundef %i.ae, ptr noundef %0, i32 noundef %i.gq, i32 noundef %i.gr, i32 noundef %i.gs, ptr noundef nonnull @dissect_qnet6_kif_msgsend_msg_read.xtypes_fields, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  %i.gu = load i32, ptr %3, align 4
  %i.gv = add i32 %i.gu, 4                        ; 2 uses
  store i32 %i.gv, ptr %3, align 4
  %i.gw = load i32, ptr @hf_qnet6_kif_zero, align 4
  %i.gx = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.gw, ptr noundef %0, i32 noundef %i.gv, i32 noundef 4, i32 noundef 0), !inline_history !13 ; 0 uses
  %i.gy = load i32, ptr %3, align 4
  %i.gz = add i32 %i.gy, 4                        ; 4 uses
  store i32 %i.gz, ptr %3, align 4
  %i.ha = add i32 %i.gf, -14
  %trunc.i = trunc i32 %i.gp to i8
  switch i8 %trunc.i, label %bb.ac [
    i8 5, label %bb.aa
    i8 1, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.hb = load i32, ptr @hf_qnet6_kif_msg_io_read_xoffset, align 4
  %i.hc = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.hb, ptr noundef %0, i32 noundef %i.gz, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.hd = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_min, align 4
  %i.he = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.hd, ptr noundef %0, i32 noundef %i.gz, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  %i.hf = load i32, ptr %3, align 4
  %i.hg = add i32 %i.hf, 4                        ; 2 uses
  store i32 %i.hg, ptr %3, align 4
  %i.hh = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_time, align 4
  %i.hi = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.hh, ptr noundef %0, i32 noundef %i.hg, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  %i.hj = load i32, ptr %3, align 4
  %i.hk = add i32 %i.hj, 4                        ; 2 uses
  store i32 %i.hk, ptr %3, align 4
  %i.hl = load i32, ptr @hf_qnet6_kif_msg_io_read_cond_timeout, align 4
  %i.hm = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.hl, ptr noundef %0, i32 noundef %i.hk, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.ab
  %.sink526 = phi i32 [ 4, %bb.ab ], [ 8, %bb.aa ]
  %.sink524 = phi i32 [ -26, %bb.ab ], [ -22, %bb.aa ]
  %.sink522.ph = phi i32 [ 28, %bb.ab ], [ 24, %bb.aa ]
  %i.hn = load i32, ptr %3, align 4
  %i.ho = add i32 %i.hn, %.sink526                ; 2 uses
  store i32 %i.ho, ptr %3, align 4
  %i.hp = add i32 %.sink524, %i.gf
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.z
  %i.hq = phi i32 [ %i.gz, %bb.z ], [ %i.ho, %.sink.split ]
  %.0540 = phi i32 [ %i.ha, %bb.z ], [ %i.hp, %.sink.split ] ; 4 uses
  %.sink522 = phi i32 [ 16, %bb.z ], [ %.sink522.ph, %.sink.split ] ; 2 uses
  %i.hr = load i32, ptr %i.v, align 4             ; 3 uses
  %i.hs = and i32 %i.hr, -32769                   ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, %.sink522
  br i1 %i.ht, label %bb.ad, label %dissect_qnet6_kif_msgsend_msg_extra.exit532

bb.ad:                                            ; preds = %bb.ac
  %i.hu = sub nsw i32 %i.hs, %.sink522
  %spec.select.i531 = call i32 @llvm.smin.i32(i32 %i.hu, i32 %.0540) ; 4 uses
  %i.hv = icmp sgt i32 %spec.select.i531, 0
  br i1 %i.hv, label %bb.ae, label %dissect_qnet6_kif_msgsend_msg_extra.exit532

bb.ae:                                            ; preds = %bb.ad
  %i.hw = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.hx = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.hw, ptr noundef %0, i32 noundef %i.hq, i32 noundef %spec.select.i531, ptr noundef nonnull @.str.1105) ; 0 uses
  %i.hy = load i32, ptr %3, align 4
  %i.hz = add i32 %i.hy, %spec.select.i531
  store i32 %i.hz, ptr %3, align 4
  %i.ia = sub i32 %.0540, %spec.select.i531
  %.pre546 = load i32, ptr %i.v, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit532

dissect_qnet6_kif_msgsend_msg_extra.exit532:      ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.ib = phi i32 [ %.pre546, %bb.ae ], [ %i.hr, %bb.ad ], [ %i.hr, %bb.ac ]
  %.1 = phi i32 [ %i.ia, %bb.ae ], [ %.0540, %bb.ad ], [ %.0540, %bb.ac ]
  %i.ic = and i32 %i.ib, 32768
  %i.id = icmp ne i32 %i.ic, 0
  %i.ie = icmp sgt i32 %.1, 0
  %or.cond.i301 = select i1 %i.id, i1 %i.ie, i1 false
  br i1 %or.cond.i301, label %bb.af, label %dissect_qnet6_kif_msgsend_msg_read.exit

bb.af:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit532
  %i.if = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !13
  br label %dissect_qnet6_kif_msgsend_msg_read.exit

dissect_qnet6_kif_msgsend_msg_read.exit:          ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit532, %bb.af
  %.0.i302 = phi i32 [ %i.if, %bb.af ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit532 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #6
  br label %bb.dz

bb.ag:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #6
  %i.ig = load i32, ptr %3, align 4
  %i.ih = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ig), !inline_history !14 ; 2 uses
  %i.ii = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.ij = load i32, ptr %3, align 4
  %i.ik = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.ii, ptr noundef %0, i32 noundef %i.ij, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.u), !inline_history !14 ; 0 uses
  %i.il = load i32, ptr %3, align 4
  %i.im = add i32 %i.il, 2                        ; 2 uses
  store i32 %i.im, ptr %3, align 4
  %i.in = load i32, ptr @hf_qnet6_kif_msg_io_write_nbytes, align 4
end_hunk_0
begin_hunk_1_@dissect_qnet6_kif_msgsend_msg:bb.a
  %i.os = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.ot = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.os, ptr noundef %0, i32 noundef %i.ok, i32 noundef %spec.select.i346, ptr noundef nonnull @.str.1110) ; 0 uses
  %i.ou = load i32, ptr %3, align 4
  %i.ov = add i32 %i.ou, %spec.select.i346
  store i32 %i.ov, ptr %3, align 4
  %i.ow = sub i32 %i.ol, %spec.select.i346
  %.pre486 = load i16, ptr %i.q, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit347

dissect_qnet6_kif_msgsend_msg_extra.exit347:      ; preds = %bb.bc, %bb.bd, %bb.be
  %i.ox = phi i16 [ %.pre486, %bb.be ], [ %i.om, %bb.bd ], [ %i.om, %bb.bc ]
  %.0448 = phi i32 [ %i.ow, %bb.be ], [ %i.ol, %bb.bd ], [ %i.ol, %bb.bc ]
  %i.oy = icmp slt i16 %i.ox, 0
  %i.oz = icmp sgt i32 %.0448, 0
  %or.cond.i312 = select i1 %i.oy, i1 %i.oz, i1 false
  br i1 %or.cond.i312, label %bb.bf, label %dissect_qnet6_kif_msgsend_msg_chmod.exit

bb.bf:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit347
  %i.pa = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !18
  br label %dissect_qnet6_kif_msgsend_msg_chmod.exit

dissect_qnet6_kif_msgsend_msg_chmod.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit347, %bb.bf
  %.0.i313 = phi i32 [ %i.pa, %bb.bf ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit347 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  br label %bb.dz

bb.bg:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  %i.pb = load i32, ptr %3, align 4
  %i.pc = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.pb), !inline_history !19
  %i.pd = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.pe = load i32, ptr %3, align 4
  %i.pf = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.pd, ptr noundef %0, i32 noundef %i.pe, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.p), !inline_history !19 ; 0 uses
  %i.pg = load i32, ptr %3, align 4
  %i.ph = add i32 %i.pg, 2                        ; 2 uses
  store i32 %i.ph, ptr %3, align 4
  %i.pi = load i32, ptr @hf_qnet6_kif_msg_io_chown_gid, align 4
  %i.pj = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.pi, ptr noundef %0, i32 noundef %i.ph, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !19 ; 0 uses
  %i.pk = load i32, ptr %3, align 4
  %i.pl = add i32 %i.pk, 4                        ; 2 uses
  store i32 %i.pl, ptr %3, align 4
  %i.pm = load i32, ptr @hf_qnet6_kif_msg_io_chown_uid, align 4
  %i.pn = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.pm, ptr noundef %0, i32 noundef %i.pl, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !19 ; 0 uses
  %i.po = load i32, ptr %3, align 4
  %i.pp = add i32 %i.po, 4                        ; 2 uses
  store i32 %i.pp, ptr %3, align 4
  %i.pq = add i32 %i.pc, -10                      ; 4 uses
  %i.pr = load i32, ptr %i.p, align 4             ; 3 uses
  %i.ps = and i32 %i.pr, -32769                   ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, 12
  br i1 %i.pt, label %bb.bh, label %dissect_qnet6_kif_msgsend_msg_extra.exit349

bb.bh:                                            ; preds = %bb.bg
  %i.pu = add nsw i32 %i.ps, -12
  %spec.select.i348 = call i32 @llvm.smin.i32(i32 %i.pu, i32 %i.pq) ; 4 uses
  %i.pv = icmp sgt i32 %spec.select.i348, 0
  br i1 %i.pv, label %bb.bi, label %dissect_qnet6_kif_msgsend_msg_extra.exit349

bb.bi:                                            ; preds = %bb.bh
  %i.pw = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.px = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.pw, ptr noundef %0, i32 noundef %i.pp, i32 noundef %spec.select.i348, ptr noundef nonnull @.str.1111) ; 0 uses
  %i.py = load i32, ptr %3, align 4
  %i.pz = add i32 %i.py, %spec.select.i348
  store i32 %i.pz, ptr %3, align 4
  %i.qa = sub i32 %i.pq, %spec.select.i348
  %.pre485 = load i32, ptr %i.p, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit349

dissect_qnet6_kif_msgsend_msg_extra.exit349:      ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.qb = phi i32 [ %.pre485, %bb.bi ], [ %i.pr, %bb.bh ], [ %i.pr, %bb.bg ]
  %.0449 = phi i32 [ %i.qa, %bb.bi ], [ %i.pq, %bb.bh ], [ %i.pq, %bb.bg ]
  %i.qc = and i32 %i.qb, 32768
  %i.qd = icmp ne i32 %i.qc, 0
  %i.qe = icmp sgt i32 %.0449, 0
  %or.cond.i314 = select i1 %i.qd, i1 %i.qe, i1 false
  br i1 %or.cond.i314, label %bb.bj, label %dissect_qnet6_kif_msgsend_msg_chown.exit

bb.bj:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit349
  %i.qf = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !19
  br label %dissect_qnet6_kif_msgsend_msg_chown.exit

dissect_qnet6_kif_msgsend_msg_chown.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit349, %bb.bj
  %.0.i315 = phi i32 [ %i.qf, %bb.bj ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit349 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  br label %bb.dz

bb.bk:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  %i.qg = load i32, ptr %3, align 4
  %i.qh = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.qg), !inline_history !20
  %i.qi = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.qj = load i32, ptr %3, align 4
  %i.qk = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.qi, ptr noundef %0, i32 noundef %i.qj, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.o), !inline_history !20 ; 0 uses
  %i.ql = load i32, ptr %3, align 4
  %i.qm = add i32 %i.ql, 2                        ; 2 uses
  store i32 %i.qm, ptr %3, align 4
  %i.qn = load i32, ptr @hf_qnet6_kif_msg_io_utime_curflag, align 4
  %i.qo = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.qn, ptr noundef %0, i32 noundef %i.qm, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !20 ; 0 uses
  %i.qp = load i32, ptr %3, align 4
  %i.qq = add i32 %i.qp, 4                        ; 2 uses
  store i32 %i.qq, ptr %3, align 4
  %i.qr = load i32, ptr @hf_qnet6_kif_msg_io_utime_actime, align 4
  %i.qs = or i32 %4, 18                           ; 2 uses
  %i.qt = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.qr, ptr noundef %0, i32 noundef %i.qq, i32 noundef 4, i32 noundef %i.qs), !inline_history !20 ; 0 uses
  %i.qu = load i32, ptr %3, align 4
  %i.qv = add i32 %i.qu, 4                        ; 2 uses
  store i32 %i.qv, ptr %3, align 4
  %i.qw = load i32, ptr @hf_qnet6_kif_msg_io_utime_modtime, align 4
  %i.qx = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.qw, ptr noundef %0, i32 noundef %i.qv, i32 noundef 4, i32 noundef %i.qs), !inline_history !20 ; 0 uses
  %i.qy = load i32, ptr %3, align 4
  %i.qz = add i32 %i.qy, 4                        ; 2 uses
  store i32 %i.qz, ptr %3, align 4
  %i.ra = add i32 %i.qh, -14                      ; 4 uses
  %i.rb = load i32, ptr %i.o, align 4             ; 3 uses
  %i.rc = and i32 %i.rb, -32769                   ; 2 uses
  %i.rd = icmp sgt i32 %i.rc, 16
  br i1 %i.rd, label %bb.bl, label %dissect_qnet6_kif_msgsend_msg_extra.exit351

bb.bl:                                            ; preds = %bb.bk
  %i.re = add nsw i32 %i.rc, -16
  %spec.select.i350 = call i32 @llvm.smin.i32(i32 %i.re, i32 %i.ra) ; 4 uses
  %i.rf = icmp sgt i32 %spec.select.i350, 0
  br i1 %i.rf, label %bb.bm, label %dissect_qnet6_kif_msgsend_msg_extra.exit351

bb.bm:                                            ; preds = %bb.bl
  %i.rg = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.rh = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.rg, ptr noundef %0, i32 noundef %i.qz, i32 noundef %spec.select.i350, ptr noundef nonnull @.str.1112) ; 0 uses
  %i.ri = load i32, ptr %3, align 4
  %i.rj = add i32 %i.ri, %spec.select.i350
  store i32 %i.rj, ptr %3, align 4
  %i.rk = sub i32 %i.ra, %spec.select.i350
  %.pre484 = load i32, ptr %i.o, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit351

dissect_qnet6_kif_msgsend_msg_extra.exit351:      ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.rl = phi i32 [ %.pre484, %bb.bm ], [ %i.rb, %bb.bl ], [ %i.rb, %bb.bk ]
  %.0450 = phi i32 [ %i.rk, %bb.bm ], [ %i.ra, %bb.bl ], [ %i.ra, %bb.bk ]
  %i.rm = and i32 %i.rl, 32768
  %i.rn = icmp ne i32 %i.rm, 0
  %i.ro = icmp sgt i32 %.0450, 0
  %or.cond.i316 = select i1 %i.rn, i1 %i.ro, i1 false
  br i1 %or.cond.i316, label %bb.bn, label %dissect_qnet6_kif_msgsend_msg_utime.exit

bb.bn:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit351
  %i.rp = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !20
  br label %dissect_qnet6_kif_msgsend_msg_utime.exit

dissect_qnet6_kif_msgsend_msg_utime.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit351, %bb.bn
  %.0.i317 = phi i32 [ %i.rp, %bb.bn ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit351 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  br label %bb.dz

bb.bo:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  %i.rq = load i32, ptr %3, align 4
  %i.rr = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.rq), !inline_history !21 ; 2 uses
  %i.rs = icmp slt i32 %i.rr, 14
  br i1 %i.rs, label %dissect_qnet6_kif_msgsend_msg_fdinfo.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rt = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.ru = load i32, ptr %3, align 4
  %i.rv = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.rt, ptr noundef %0, i32 noundef %i.ru, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.n), !inline_history !21 ; 0 uses
  %i.rw = load i32, ptr %3, align 4
  %i.rx = add i32 %i.rw, 2                        ; 2 uses
  store i32 %i.rx, ptr %3, align 4
  %i.ry = load i32, ptr @hf_qnet6_kif_msg_io_fdinfo_flags, align 4
  %i.rz = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ry, ptr noundef %0, i32 noundef %i.rx, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !21 ; 0 uses
  %i.sa = load i32, ptr %3, align 4
  %i.sb = add i32 %i.sa, 4                        ; 2 uses
  store i32 %i.sb, ptr %3, align 4
  %i.sc = load i32, ptr @hf_qnet6_kif_msg_io_fdinfo_path_len, align 4
  %i.sd = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.sc, ptr noundef %0, i32 noundef %i.sb, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !21 ; 0 uses
  %i.se = load i32, ptr %3, align 4
  %i.sf = add i32 %i.se, 4                        ; 2 uses
  store i32 %i.sf, ptr %3, align 4
  %i.sg = load i32, ptr @hf_qnet6_kif_msg_io_fdinfo_reserved, align 4
  %i.sh = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.sg, ptr noundef %0, i32 noundef %i.sf, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !21 ; 0 uses
  %i.si = load i32, ptr %3, align 4
  %i.sj = add i32 %i.si, 4                        ; 2 uses
  store i32 %i.sj, ptr %3, align 4
  %i.sk = add nsw i32 %i.rr, -14                  ; 4 uses
  %i.sl = load i16, ptr %i.n, align 2             ; 3 uses
  %i.sm = and i16 %i.sl, 32767                    ; 2 uses
  %i.sn = icmp samesign ugt i16 %i.sm, 16
  br i1 %i.sn, label %bb.bq, label %dissect_qnet6_kif_msgsend_msg_extra.exit353

bb.bq:                                            ; preds = %bb.bp
  %i.so = zext nneg i16 %i.sm to i32
  %i.sp = add nsw i32 %i.so, -16
  %i.sq = call i32 @llvm.umin.i32(i32 %i.sp, i32 %i.sk) ; 4 uses
  %.not462 = icmp eq i32 %i.sq, 0
  br i1 %.not462, label %dissect_qnet6_kif_msgsend_msg_extra.exit353, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sr = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.ss = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.sr, ptr noundef %0, i32 noundef %i.sj, i32 noundef %i.sq, ptr noundef nonnull @.str.1113) ; 0 uses
  %i.st = load i32, ptr %3, align 4
  %i.su = add i32 %i.st, %i.sq
  store i32 %i.su, ptr %3, align 4
  %i.sv = sub nuw nsw i32 %i.sk, %i.sq
  %.pre483 = load i16, ptr %i.n, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit353

dissect_qnet6_kif_msgsend_msg_extra.exit353:      ; preds = %bb.bp, %bb.bq, %bb.br
  %i.sw = phi i16 [ %.pre483, %bb.br ], [ %i.sl, %bb.bq ], [ %i.sl, %bb.bp ]
  %.0451 = phi i32 [ %i.sv, %bb.br ], [ %i.sk, %bb.bq ], [ %i.sk, %bb.bp ]
  %i.sx = icmp slt i16 %i.sw, 0
  %8 = icmp ne i32 %.0451, 0
  %or.cond.i318 = select i1 %i.sx, i1 %8, i1 false
  br i1 %or.cond.i318, label %bb.bs, label %dissect_qnet6_kif_msgsend_msg_fdinfo.exit

bb.bs:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit353
  %i.sy = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !21
  br label %dissect_qnet6_kif_msgsend_msg_fdinfo.exit

dissect_qnet6_kif_msgsend_msg_fdinfo.exit:        ; preds = %bb.bo, %dissect_qnet6_kif_msgsend_msg_extra.exit353, %bb.bs
  %.033.i = phi i32 [ -1, %bb.bo ], [ %i.sy, %bb.bs ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit353 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  br label %bb.dz

bb.bt:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  %i.sz = load i32, ptr %3, align 4
  %i.ta = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.sz), !inline_history !22
  %i.tb = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.tc = load i32, ptr %3, align 4
  %i.td = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.tb, ptr noundef %0, i32 noundef %i.tc, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.m), !inline_history !22 ; 0 uses
  %i.te = load i32, ptr %3, align 4
  %i.tf = add i32 %i.te, 2                        ; 2 uses
  store i32 %i.tf, ptr %3, align 4
  %i.tg = load i32, ptr @hf_qnet6_kif_msg_io_lock_subtype, align 4
  %i.th = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.tg, ptr noundef %0, i32 noundef %i.tf, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !22 ; 0 uses
  %i.ti = load i32, ptr %3, align 4
  %i.tj = add i32 %i.ti, 4                        ; 2 uses
  store i32 %i.tj, ptr %3, align 4
  %i.tk = load i32, ptr @hf_qnet6_kif_msg_io_lock_nbytes, align 4
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.tk, ptr noundef %0, i32 noundef %i.tj, i32 noundef 4, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !22 ; 0 uses
  %i.tm = load i32, ptr %3, align 4
  %i.tn = add i32 %i.tm, 4                        ; 2 uses
  store i32 %i.tn, ptr %3, align 4
  %i.to = add i32 %i.ta, -10                      ; 4 uses
  %i.tp = load i16, ptr %i.m, align 2             ; 3 uses
  %i.tq = and i16 %i.tp, 32767                    ; 2 uses
  %i.tr = icmp samesign ugt i16 %i.tq, 12
  br i1 %i.tr, label %bb.bu, label %dissect_qnet6_kif_msgsend_msg_extra.exit355

bb.bu:                                            ; preds = %bb.bt
  %i.ts = zext nneg i16 %i.tq to i32
  %i.tt = add nsw i32 %i.ts, -12
  %spec.select.i354 = call i32 @llvm.smin.i32(i32 %i.tt, i32 %i.to) ; 4 uses
  %i.tu = icmp sgt i32 %spec.select.i354, 0
  br i1 %i.tu, label %bb.bv, label %dissect_qnet6_kif_msgsend_msg_extra.exit355

bb.bv:                                            ; preds = %bb.bu
  %i.tv = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.tw = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.tv, ptr noundef %0, i32 noundef %i.tn, i32 noundef %spec.select.i354, ptr noundef nonnull @.str.1114) ; 0 uses
  %i.tx = load i32, ptr %3, align 4
  %i.ty = add i32 %i.tx, %spec.select.i354
  store i32 %i.ty, ptr %3, align 4
  %i.tz = sub i32 %i.to, %spec.select.i354
  %.pre482 = load i16, ptr %i.m, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit355

dissect_qnet6_kif_msgsend_msg_extra.exit355:      ; preds = %bb.bt, %bb.bu, %bb.bv
  %i.ua = phi i16 [ %.pre482, %bb.bv ], [ %i.tp, %bb.bu ], [ %i.tp, %bb.bt ]
  %.0452 = phi i32 [ %i.tz, %bb.bv ], [ %i.to, %bb.bu ], [ %i.to, %bb.bt ]
  %i.ub = icmp slt i16 %i.ua, 0
  %i.uc = icmp sgt i32 %.0452, 0
  %or.cond.i319 = select i1 %i.ub, i1 %i.uc, i1 false
  br i1 %or.cond.i319, label %bb.bw, label %dissect_qnet6_kif_msgsend_msg_lock.exit

bb.bw:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit355
  %i.ud = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !22
  br label %dissect_qnet6_kif_msgsend_msg_lock.exit

dissect_qnet6_kif_msgsend_msg_lock.exit:          ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit355, %bb.bw
  %.0.i320 = phi i32 [ %i.ud, %bb.bw ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit355 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  br label %bb.dz

bb.bx:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  %i.ue = load i32, ptr %3, align 4
  %i.uf = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.ue), !inline_history !23
  %i.ug = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.uh = load i32, ptr %3, align 4
  %i.ui = call ptr @proto_tree_add_item_ret_uint16(ptr noundef %i.ae, i32 noundef %i.ug, ptr noundef %0, i32 noundef %i.uh, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.l), !inline_history !23 ; 0 uses
  %i.uj = load i32, ptr %3, align 4
  %i.uk = add i32 %i.uj, 2                        ; 2 uses
  store i32 %i.uk, ptr %3, align 4
  %i.ul = load i32, ptr @hf_qnet6_kif_msg_io_space_subtype, align 4
  %i.um = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ul, ptr noundef %0, i32 noundef %i.uk, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23 ; 0 uses
  %i.un = load i32, ptr %3, align 4
  %i.uo = add i32 %i.un, 2                        ; 2 uses
  store i32 %i.uo, ptr %3, align 4
  %i.up = load i32, ptr @hf_qnet6_kif_msg_io_space_whence, align 4
  %i.uq = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.up, ptr noundef %0, i32 noundef %i.uo, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23 ; 0 uses
  %i.ur = load i32, ptr %3, align 4
  %i.us = add i32 %i.ur, 2                        ; 2 uses
  store i32 %i.us, ptr %3, align 4
  %i.ut = load i32, ptr @hf_qnet6_kif_msg_io_space_start, align 4
  %i.uu = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ut, ptr noundef %0, i32 noundef %i.us, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23 ; 0 uses
  %i.uv = load i32, ptr %3, align 4
  %i.uw = add i32 %i.uv, 8                        ; 2 uses
  store i32 %i.uw, ptr %3, align 4
  %i.ux = load i32, ptr @hf_qnet6_kif_msg_io_space_len, align 4
  %i.uy = call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ux, ptr noundef %0, i32 noundef %i.uw, i32 noundef 8, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23 ; 0 uses
  %i.uz = load i32, ptr %3, align 4
  %i.va = add i32 %i.uz, 8                        ; 2 uses
  store i32 %i.va, ptr %3, align 4
  %i.vb = add i32 %i.uf, -22                      ; 4 uses
  %i.vc = load i16, ptr %i.l, align 2             ; 3 uses
  %i.vd = and i16 %i.vc, 32767                    ; 2 uses
  %i.ve = icmp samesign ugt i16 %i.vd, 24
  br i1 %i.ve, label %bb.by, label %dissect_qnet6_kif_msgsend_msg_extra.exit357

bb.by:                                            ; preds = %bb.bx
  %i.vf = zext nneg i16 %i.vd to i32
  %i.vg = add nsw i32 %i.vf, -24
  %spec.select.i356 = call i32 @llvm.smin.i32(i32 %i.vg, i32 %i.vb) ; 4 uses
  %i.vh = icmp sgt i32 %spec.select.i356, 0
  br i1 %i.vh, label %bb.bz, label %dissect_qnet6_kif_msgsend_msg_extra.exit357

bb.bz:                                            ; preds = %bb.by
  %i.vi = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.vj = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.vi, ptr noundef %0, i32 noundef %i.va, i32 noundef %spec.select.i356, ptr noundef nonnull @.str.1115) ; 0 uses
  %i.vk = load i32, ptr %3, align 4
  %i.vl = add i32 %i.vk, %spec.select.i356
  store i32 %i.vl, ptr %3, align 4
  %i.vm = sub i32 %i.vb, %spec.select.i356
  %.pre481 = load i16, ptr %i.l, align 2
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit357

dissect_qnet6_kif_msgsend_msg_extra.exit357:      ; preds = %bb.bx, %bb.by, %bb.bz
  %i.vn = phi i16 [ %.pre481, %bb.bz ], [ %i.vc, %bb.by ], [ %i.vc, %bb.bx ]
  %.0453 = phi i32 [ %i.vm, %bb.bz ], [ %i.vb, %bb.by ], [ %i.vb, %bb.bx ]
  %i.vo = icmp slt i16 %i.vn, 0
  %i.vp = icmp sgt i32 %.0453, 0
  %or.cond.i321 = select i1 %i.vo, i1 %i.vp, i1 false
  br i1 %or.cond.i321, label %bb.ca, label %dissect_qnet6_kif_msgsend_msg_space.exit

bb.ca:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit357
  %i.vq = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !23
  br label %dissect_qnet6_kif_msgsend_msg_space.exit

dissect_qnet6_kif_msgsend_msg_space.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit357, %bb.ca
  %.0.i322 = phi i32 [ %i.vq, %bb.ca ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit357 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  br label %bb.dz

bb.cb:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %i.vr = load i32, ptr %3, align 4
  %i.vs = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.vr), !inline_history !24
  %i.vt = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
  %i.vu = load i32, ptr %3, align 4
  %i.vv = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ae, i32 noundef %i.vt, ptr noundef %0, i32 noundef %i.vu, i32 noundef 2, i32 noundef range(i32 -2147483648, 1) %4, ptr noundef nonnull %i.k), !inline_history !24 ; 0 uses
  %i.vw = load i32, ptr %3, align 4
  %i.vx = add i32 %i.vw, 2                        ; 2 uses
  store i32 %i.vx, ptr %3, align 4
  %i.vy = add i32 %i.vs, -2                       ; 4 uses
  %i.vz = load i32, ptr %i.k, align 4             ; 3 uses
  %i.wa = and i32 %i.vz, -32769                   ; 2 uses
  %i.wb = icmp sgt i32 %i.wa, 4
  br i1 %i.wb, label %bb.cc, label %dissect_qnet6_kif_msgsend_msg_extra.exit359

bb.cc:                                            ; preds = %bb.cb
  %i.wc = add nsw i32 %i.wa, -4
  %spec.select.i358 = call i32 @llvm.smin.i32(i32 %i.wc, i32 %i.vy) ; 4 uses
  %i.wd = icmp sgt i32 %spec.select.i358, 0
  br i1 %i.wd, label %bb.cd, label %dissect_qnet6_kif_msgsend_msg_extra.exit359

bb.cd:                                            ; preds = %bb.cc
  %i.we = load i32, ptr @hf_qnet6_kif_msgsend_extra, align 4
  %i.wf = call ptr @proto_tree_add_string(ptr noundef %i.ae, i32 noundef %i.we, ptr noundef %0, i32 noundef %i.vx, i32 noundef %spec.select.i358, ptr noundef nonnull @.str.1116) ; 0 uses
  %i.wg = load i32, ptr %3, align 4
  %i.wh = add i32 %i.wg, %spec.select.i358
  store i32 %i.wh, ptr %3, align 4
  %i.wi = sub i32 %i.vy, %spec.select.i358
  %.pre480 = load i32, ptr %i.k, align 4
  br label %dissect_qnet6_kif_msgsend_msg_extra.exit359

dissect_qnet6_kif_msgsend_msg_extra.exit359:      ; preds = %bb.cb, %bb.cc, %bb.cd
  %i.wj = phi i32 [ %.pre480, %bb.cd ], [ %i.vz, %bb.cc ], [ %i.vz, %bb.cb ]
  %.0454 = phi i32 [ %i.wi, %bb.cd ], [ %i.vy, %bb.cc ], [ %i.vy, %bb.cb ]
  %i.wk = and i32 %i.wj, 32768
  %i.wl = icmp ne i32 %i.wk, 0
  %i.wm = icmp sgt i32 %.0454, 0
  %or.cond.i323 = select i1 %i.wl, i1 %i.wm, i1 false
  br i1 %or.cond.i323, label %bb.ce, label %dissect_qnet6_kif_msgsend_msg_close.exit

bb.ce:                                            ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit359
  %i.wn = call fastcc i32 @dissect_qnet6_kif_msgsend_msg(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, ptr noundef %3, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !24
  br label %dissect_qnet6_kif_msgsend_msg_close.exit

dissect_qnet6_kif_msgsend_msg_close.exit:         ; preds = %dissect_qnet6_kif_msgsend_msg_extra.exit359, %bb.ce
  %.0.i324 = phi i32 [ %i.wn, %bb.ce ], [ 0, %dissect_qnet6_kif_msgsend_msg_extra.exit359 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  br label %bb.dz

bb.cf:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  %i.wo = load i32, ptr %3, align 4
  %i.wp = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.wo), !inline_history !25
  %i.wq = load i32, ptr %3, align 4
  %i.wr = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.wq, i32 noundef range(i32 -2147483648, 1) %4), !inline_history !25
  %i.ws = zext i16 %i.wr to i32
  store i32 %i.ws, ptr %i.j, align 4
  %i.wt = load i32, ptr @hf_qnet6_kif_msg_io_combine_len, align 4
end_hunk_1
