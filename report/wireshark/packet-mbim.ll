Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mbim?download=true
inline.NumInlined: 56
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mbim_dissect_service_id_uuid:bb.a
bb.l:                                             ; preds = %bb.k
  %i.ai = load i128, ptr %7, align 4
  %i.aj = icmp ne i128 %i.ai, -132146531245285392562743074770416600026
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i128, ptr %7, align 4
  %i.an = icmp ne i128 %i.am, -98345968071305751312978024968078500190
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i128, ptr %7, align 4
  %i.ar = icmp ne i128 %i.aq, -58565532530973105380931060863636141118
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load i128, ptr %7, align 4
  %i.av = icmp ne i128 %i.au, 86848625656943438812303659850353833163
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = load i128, ptr %7, align 4
  %i.az = icmp ne i128 %i.ay, 70817063542656821197264543183607573234
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i128, ptr %7, align 4
  %i.bd = icmp ne i128 %i.bc, 101633742708237363645124036677542874473
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = load i128, ptr %7, align 4
  %i.bh = icmp ne i128 %i.bg, -159323718912218509058949176847766039203
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i128, ptr %7, align 4
  %i.bl = icmp ne i128 %i.bk, -96496857131445974016794631116565253341
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load i128, ptr %7, align 4
  %i.bp = icmp ne i128 %i.bo, 135793567445636737334054195090676354138
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = load i128, ptr %7, align 4
  %i.bt = icmp ne i128 %i.bs, 81823754503906504632472024234356646690
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = load i128, ptr %7, align 4
  %i.bx = icmp ne i128 %i.bw, -168372566851354617487877804502151429808
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = load i128, ptr %7, align 4
  %i.cb = icmp ne i128 %i.ca, -101699854229633230662674551168097075764
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load i128, ptr %7, align 4
  %i.cf = icmp ne i128 %i.ce, -52680377232579222708914751196279917863
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = load i128, ptr %7, align 4
  %i.cj = icmp ne i128 %i.ci, -106864973367386523667679973609696011067
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = load i128, ptr %7, align 4
  %i.cn = icmp ne i128 %i.cm, 85256036278407393641553665280423640324
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = load i128, ptr %7, align 4
  %i.cr = icmp ne i128 %i.cq, 137677975953266982106210370658311231630
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load i128, ptr %7, align 4
  %i.cv = icmp ne i128 %i.cu, 61727526253200055726433088157422165690
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr @mbim_uuid_ext_hash, align 8
  %i.cz = icmp ne ptr %i.cy, null
  %i.da = icmp ne ptr %5, null
  %or.cond3 = and i1 %i.da, %i.cz
  br i1 %or.cond3, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.db = load i32, ptr %4, align 4
  %i.dc = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.db)
  store i32 %i.dc, ptr %i.a, align 16
  %i.dd = load i32, ptr %4, align 4
  %i.de = add i32 %i.dd, 4
  %i.df = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.df, ptr %i.dg, align 4
  %i.dh = load i32, ptr %4, align 4
  %i.di = add i32 %i.dh, 8
  %i.dj = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.di)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.dj, ptr %i.dk, align 8
  %i.dl = load i32, ptr %4, align 4
  %i.dm = add i32 %i.dl, 12
  %i.dn = call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.dn, ptr %i.do, align 4
  %i.dp = load ptr, ptr @mbim_uuid_ext_hash, align 8
  %i.dq = call ptr @wmem_map_lookup(ptr noundef %i.dp, ptr noundef nonnull %i.a) ; 3 uses
  store ptr %i.dq, ptr %5, align 8
  %.not = icmp eq ptr %i.dq, null
  br i1 %.not, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = load i32, ptr %4, align 4
  %i.ds = getelementptr i8, ptr %i.dq, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr i8, ptr %1, i64 416
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call ptr @guid_to_str(ptr noundef %i.dv, ptr noundef nonnull %7)
  %i.dx = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_guid_format_value(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.dr, i32 noundef 16, ptr noundef nonnull %7, ptr noundef @.str.2628, ptr noundef %i.dt, ptr noundef %i.dw) ; 0 uses
  %i.dy = load i32, ptr %4, align 4
  %i.dz = add i32 %i.dy, 16
  store i32 %i.dz, ptr %4, align 4
  br label %bb.af

.thread:                                          ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ad, %bb.ac
  %.044 = phi i32 [ 25, %bb.ac ], [ 25, %bb.ad ], [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 5, %bb.i ], [ 6, %bb.j ], [ 7, %bb.k ], [ 8, %bb.l ], [ 9, %bb.m ], [ 10, %bb.n ], [ 11, %bb.o ], [ 12, %bb.p ], [ 13, %bb.q ], [ 14, %bb.r ], [ 15, %bb.s ], [ 16, %bb.t ], [ 17, %bb.u ], [ 18, %bb.v ], [ 19, %bb.w ], [ 20, %bb.x ], [ 21, %bb.y ], [ 22, %bb.z ], [ 23, %bb.aa ], [ 24, %bb.ab ] ; 2 uses
  %i.ea = load i32, ptr %4, align 4
  %i.eb = call ptr @val_to_str_ext_const(i32 noundef %.044, ptr noundef @mbim_service_id_vals_ext, ptr noundef @.str.2007)
  %i.ec = getelementptr i8, ptr %1, i64 416
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call ptr @guid_to_str(ptr noundef %i.ed, ptr noundef nonnull %7)
  %i.ef = call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_guid_format_value(ptr noundef %2, i32 noundef %3, ptr noundef %0, i32 noundef %i.ea, i32 noundef 16, ptr noundef nonnull %7, ptr noundef @.str.2628, ptr noundef %i.eb, ptr noundef %i.ee) ; 0 uses
  %i.eg = load i32, ptr %4, align 4
  %i.eh = add i32 %i.eg, 16
  store i32 %i.eh, ptr %4, align 4
  %i.ei = trunc nuw nsw i32 %.044 to i8
  br label %bb.af

bb.af:                                            ; preds = %.thread, %bb.ae
  %.038 = phi i8 [ -1, %bb.ae ], [ %i.ei, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret i8 %.038
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @mbim_dissect_cid(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i8 noundef zeroext %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = tail call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.a) ; 8 uses
  %i.c = icmp ult i8 %4, 25
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %4 to i64
  %i.e = getelementptr [24 x i8], ptr @mbim_uuid_info, i64 %i.d ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.f, align 4
  %i.h = load i32, ptr %3, align 4
  %i.i = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef %i.b) ; 0 uses
  %6 = getelementptr i8, ptr %i.e, i64 16
  %7 = load ptr, ptr %6, align 8                  ; 2 uses
  %.not.not = icmp eq ptr %7, null
  %8 = getelementptr i8, ptr %1, i64 8
  %9 = load ptr, ptr %8, align 8                  ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @val_to_str_ext_const(i32 noundef %i.b, ptr noundef nonnull %7, ptr noundef @.str.2007)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %9, i32 noundef 25, ptr noundef @.str.2657, ptr noundef %i.j)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @val_to_str_const(i32 noundef %i.b, ptr noundef %i.l, ptr noundef @.str.2007)
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %9, i32 noundef 25, ptr noundef @.str.2657, ptr noundef %i.m)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.n = icmp eq i8 %4, -1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %5, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call ptr @val_to_str_const(i32 noundef %i.b, ptr noundef %i.p, ptr noundef @.str.2007) ; 2 uses
  %i.r = load i32, ptr @hf_mbim_cid, align 4
  %i.s = load i32, ptr %3, align 4
  %i.t = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef %i.b, ptr noundef @.str.2658, ptr noundef %i.q, i32 noundef %i.b) ; 0 uses
  %i.u = getelementptr i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.v, i32 noundef 25, ptr noundef @.str.2657, ptr noundef %i.q)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.w = load i32, ptr @hf_mbim_cid, align 4
  %i.x = load i32, ptr %3, align 4
  %i.y = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.x, i32 noundef 4, i32 noundef %i.b) ; 0 uses
  %i.z = getelementptr i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @col_append_str(ptr noundef %i.aa, i32 noundef 25, ptr noundef @.str.2659)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %i.ab = load i32, ptr %3, align 4
  %i.ac = add i32 %i.ab, 4
  store i32 %i.ac, ptr %3, align 4
  ret i32 %i.b
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_set_pin(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = load i32, ptr @hf_mbim_set_pin_pin_type, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = add i32 %3, 4
  %i.h = load i32, ptr @hf_mbim_set_pin_pin_pin_operation, align 4
  %i.i = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.j = add i32 %3, 8
  %i.k = load i32, ptr @hf_mbim_set_pin_pin_pin_offset, align 4
  %i.l = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.m = add i32 %3, 12
  %i.n = load i32, ptr @hf_mbim_set_pin_pin_pin_size, align 4
  %i.o = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %i.m, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.p = add i32 %3, 16
  %i.q = load i32, ptr @hf_mbim_set_pin_new_pin_offset, align 4
  %i.r = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.s = add i32 %3, 20
  %i.t = load i32, ptr @hf_mbim_set_pin_new_pin_size, align 4
  %i.u = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.v = load i32, ptr %i.a, align 4              ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = load i32, ptr %i.b, align 4              ; 2 uses
  %i.y = icmp ne i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr @hf_mbim_set_pin_pin, align 4
  %i.aa = add i32 %i.v, %3
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.x, i32 noundef -2147483644)
  %i.ac = load i32, ptr %i.b, align 4
  %i.ad = icmp ugt i32 %i.ac, 32
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ab, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.af = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ai = icmp ne i32 %i.ah, 0
  %or.cond3 = select i1 %i.ag, i1 %i.ai, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr @hf_mbim_set_pin_new_pin, align 4
  %i.ak = add i32 %i.af, %3
  %i.al = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ak, i32 noundef %i.ah, i32 noundef -2147483644)
  %i.am = load i32, ptr %i.d, align 4
  %i.an = icmp ugt i32 %i.am, 32
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.al, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_provider(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.e = load i32, ptr @hf_mbim_provider_provider_id_offset, align 4
  %i.f = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.g = add i32 %3, 4
  %i.h = load i32, ptr @hf_mbim_provider_provider_id_size, align 4
  %i.i = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.j = add i32 %3, 8
  %i.k = load i32, ptr @hf_mbim_provider_state, align 4
  %i.l = load i32, ptr @ett_mbim_bitmap, align 4
  %i.m = call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef @mbim_provider_state_fields, i32 noundef -2147483648) ; 0 uses
  %i.n = add i32 %3, 12
  %i.o = load i32, ptr @hf_mbim_provider_provider_name_offset, align 4
  %i.p = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.q = add i32 %3, 16
  %i.r = load i32, ptr @hf_mbim_provider_provider_name_size, align 4
  %i.s = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.q, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.t = add i32 %3, 20
  %i.u = load i32, ptr @hf_mbim_provider_cellular_class, align 4
  %i.v = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.u, ptr noundef %0, i32 noundef %i.t, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.w = add i32 %3, 24
  %i.x = load i32, ptr @hf_mbim_provider_rssi, align 4
  %i.y = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.z = add i32 %3, 28
  %i.aa = load i32, ptr @hf_mbim_provider_error_rate, align 4
  %i.ab = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ac = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = load i32, ptr %i.b, align 4             ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ag = load i32, ptr @hf_mbim_provider_provider_id, align 4
  %i.ah = add i32 %i.ac, %3
  %i.ai = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.ah, i32 noundef %i.ae, i32 noundef -2147483644)
  %i.aj = load i32, ptr %i.b, align 4
  %i.ak = icmp ugt i32 %i.aj, 12
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ai, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.am = load i32, ptr %i.c, align 4             ; 2 uses
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ap = icmp ne i32 %i.ao, 0
  %or.cond3 = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond3, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = load i32, ptr @hf_mbim_provider_provider_name, align 4
  %i.ar = add i32 %i.am, %3
  %i.as = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.ao, i32 noundef -2147483644)
  %i.at = load i32, ptr %i.d, align 4
  %i.au = icmp ugt i32 %i.at, 40
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.as, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_providers(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
end_hunk_0
begin_hunk_1_@mbim_dissect_set_connect:bb.a
bb.e:                                             ; preds = %bb.d
  %i.bc = load i32, ptr @hf_mbim_set_connect_user_name, align 4
  %i.bd = add i32 %i.ay, %3
  %i.be = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bc, ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.ba, i32 noundef -2147483644)
  %i.bf = load i32, ptr %i.e, align 4
  %i.bg = icmp ugt i32 %i.bf, 510
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.be, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.bi = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = load i32, ptr %i.g, align 4             ; 2 uses
  %i.bl = icmp ne i32 %i.bk, 0
  %or.cond5 = select i1 %i.bj, i1 %i.bl, i1 false
  br i1 %or.cond5, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bm = load i32, ptr @hf_mbim_set_connect_password, align 4
  %i.bn = add i32 %i.bi, %3
  %i.bo = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bn, i32 noundef %i.bk, i32 noundef -2147483644)
  %i.bp = load i32, ptr %i.g, align 4
  %i.bq = icmp ugt i32 %i.bp, 510
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.bo, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store i32 0, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store i32 0, ptr %i.i, align 4
  %i.j = load i32, ptr @hf_mbim_context_context_id, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.j, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.l = add i32 %3, 4
  store i32 %i.l, ptr %i.a, align 4
  call fastcc void @mbim_dissect_context_type_uuid(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a)
  %i.m = load i32, ptr @hf_mbim_context_access_string_offset, align 4
  %i.n = load i32, ptr %i.a, align 4              ; 10 uses
  %i.o = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.p = add i32 %i.n, 4
  %i.q = load i32, ptr @hf_mbim_context_access_string_size, align 4
  %i.r = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.s = add i32 %i.n, 8
  %i.t = load i32, ptr @hf_mbim_context_user_name_offset, align 4
  %i.u = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.v = add i32 %i.n, 12
  %i.w = load i32, ptr @hf_mbim_context_user_name_size, align 4
  %i.x = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.e) ; 0 uses
  %i.y = add i32 %i.n, 16
  %i.z = load i32, ptr @hf_mbim_context_password_offset, align 4
  %i.aa = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.ab = add i32 %i.n, 20
  %i.ac = load i32, ptr @hf_mbim_context_password_size, align 4
  %i.ad = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ac, ptr noundef %0, i32 noundef %i.ab, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.g) ; 0 uses
  %i.ae = add i32 %i.n, 24
  %i.af = load i32, ptr @hf_mbim_context_compression, align 4
  %i.ag = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.af, ptr noundef %0, i32 noundef %i.ae, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ah = add i32 %i.n, 28
  %i.ai = load i32, ptr @hf_mbim_context_auth_protocol, align 4
  %i.aj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ak = add i32 %i.n, 32
  %i.al = load i32, ptr @hf_mbim_context_provider_id_offset, align 4
  %i.am = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.h) ; 0 uses
  %i.an = add i32 %i.n, 36
  %i.ao = load i32, ptr @hf_mbim_context_provider_id_size, align 4
  %i.ap = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.an, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aq = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = load i32, ptr %i.c, align 4             ; 2 uses
  %i.at = icmp ne i32 %i.as, 0
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.au = load i32, ptr @hf_mbim_context_access_string, align 4
  %i.av = add i32 %i.aq, %3
  %i.aw = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.av, i32 noundef %i.as, i32 noundef -2147483644)
  %i.ax = load i32, ptr %i.c, align 4
  %i.ay = icmp ugt i32 %i.ax, 200
  br i1 %i.ay, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.az = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.aw, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.ba = load i32, ptr %i.d, align 4             ; 2 uses
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = load i32, ptr %i.e, align 4             ; 2 uses
  %i.bd = icmp ne i32 %i.bc, 0
  %or.cond3 = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.be = load i32, ptr @hf_mbim_context_user_name, align 4
  %i.bf = add i32 %i.ba, %3
  %i.bg = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bf, i32 noundef %i.bc, i32 noundef -2147483644)
  %i.bh = load i32, ptr %i.e, align 4
  %i.bi = icmp ugt i32 %i.bh, 510
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.bg, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.bk = load i32, ptr %i.f, align 4             ; 2 uses
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = load i32, ptr %i.g, align 4             ; 2 uses
  %i.bn = icmp ne i32 %i.bm, 0
  %or.cond5 = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %or.cond5, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bo = load i32, ptr @hf_mbim_context_password, align 4
  %i.bp = add i32 %i.bk, %3
  %i.bq = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bo, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.bm, i32 noundef -2147483644)
  %i.br = load i32, ptr %i.g, align 4
  %i.bs = icmp ugt i32 %i.br, 510
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.bq, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.bu = load i32, ptr %i.h, align 4             ; 2 uses
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = load i32, ptr %i.i, align 4             ; 2 uses
  %i.bx = icmp ne i32 %i.bw, 0
  %or.cond7 = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %or.cond7, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.by = load i32, ptr @hf_mbim_context_provider_id, align 4
  %i.bz = add i32 %i.bu, %3
  %i.ca = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.by, ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.bw, i32 noundef -2147483644)
  %i.cb = load i32, ptr %i.i, align 4
  %i.cc = icmp ugt i32 %i.cb, 12
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.ca, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_device_service_subscribe_list(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %4 = alloca %struct.mbim_pair_list, align 4     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.e = load i32, ptr @hf_mbim_device_service_subscribe_element_count, align 4
  %i.f = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.g = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %3, 4                            ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 416
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call ptr @wmem_array_new(ptr noundef %i.j, i64 noundef 8) ; 2 uses
  %i.l = load i32, ptr %i.d, align 4
  %i.m = shl i32 %i.l, 3
  %i.n = load i32, ptr @ett_mbim_pair_list, align 4
  %i.o = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.h, i32 noundef %i.m, i32 noundef %i.n, ptr noundef null, ptr noundef @.str.2692) ; 2 uses
  %i.p = load i32, ptr %i.d, align 4
  %.not48 = icmp eq i32 %i.p, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.r = icmp eq i32 %i.aa, 0
  br i1 %i.r, label %.loopexit, label %.lr.ph47

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.045 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.c ]
  %.03644 = phi i32 [ %i.h, %.lr.ph ], [ %i.x, %bb.c ] ; 3 uses
  %i.s = load i32, ptr @hf_mbim_device_service_subscribe_device_service_offset, align 4
  %i.t = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.s, ptr noundef %0, i32 noundef %.03644, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %4) ; 0 uses
  %i.u = add i32 %.03644, 4
  %i.v = load i32, ptr @hf_mbim_device_service_subscribe_device_service_size, align 4
  %i.w = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.o, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.q) ; 0 uses
  %i.x = add i32 %.03644, 8
  %i.y = call zeroext i1 @wmem_array_append(ptr noundef %i.k, ptr noundef nonnull %4, i32 noundef 1) ; 0 uses
  %i.z = add nuw i32 %.045, 1                     ; 2 uses
  %i.aa = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ab = icmp ult i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.c, label %.preheader, !llvm.loop !14

.lr.ph47:                                         ; preds = %.preheader, %bb.f
  %.146 = phi i32 [ %i.cc, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.ac = call ptr @wmem_array_index(ptr noundef %i.k, i32 noundef %.146) ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph47
  %i.ae = getelementptr i8, ptr %i.ac, i64 4
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %.not40 = icmp eq i32 %i.af, 0
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = add i32 %i.ad, %3
  %i.ah = load i32, ptr @ett_mbim_pair_list, align 4
  %i.ai = add nuw i32 %.146, 1
  %i.aj = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.af, i32 noundef %i.ah, ptr noundef null, ptr noundef @.str.2693, i32 noundef %i.ai) ; 5 uses
  %i.ak = load i32, ptr %i.ac, align 4
  %i.al = add i32 %i.ak, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.al, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8
  %i.am = load i32, ptr @hf_mbim_event_entry_device_service_id, align 4
  %i.an = call fastcc zeroext i8 @mbim_dissect_service_id_uuid(ptr noundef %0, ptr noundef readonly %1, ptr noundef %i.aj, i32 noundef %i.am, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  %.fr38.i = freeze i8 %i.an                      ; 3 uses
  %i.ao = load i32, ptr @hf_mbim_event_entry_cid_count, align 4
  %i.ap = load i32, ptr %i.a, align 4             ; 2 uses
  %i.aq = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.aj, i32 noundef %i.ao, ptr noundef %0, i32 noundef %i.ap, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.ar = add i32 %i.ap, 4                        ; 3 uses
  %i.as = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %mbim_dissect_event_entry.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.at = icmp ult i8 %.fr38.i, 25
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 24
  %i.aw = zext nneg i8 %.fr38.i to i64
  %i.ax = getelementptr [24 x i8], ptr @mbim_uuid_info, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  br i1 %i.at, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i, %.lr.ph.split.us.split.i
  %.032.us.us.i = phi i32 [ %i.bg, %.lr.ph.split.us.split.i ], [ 0, %.lr.ph.i ]
  %i.ba = phi i32 [ %i.bf, %.lr.ph.split.us.split.i ], [ %i.ar, %.lr.ph.i ] ; 3 uses
  %i.bb = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ba) ; 4 uses
  %i.bc = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not.us.i = icmp eq ptr %i.bc, null
  %i.bd = load i32, ptr @hf_mbim_event_entry_cid, align 4
  br i1 %.not.us.i, label %7, label %5

5:                                                ; preds = %.lr.ph.split.us.split.us.i
  %6 = call ptr @val_to_str_ext_const(i32 noundef %i.bb, ptr noundef nonnull %i.bc, ptr noundef @.str.2007)
  br label %.lr.ph.split.us.split.i

7:                                                ; preds = %.lr.ph.split.us.split.us.i
  %8 = load ptr, ptr %i.az, align 8
  %9 = call ptr @val_to_str_const(i32 noundef %i.bb, ptr noundef %8, ptr noundef @.str.2007)
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %7, %5
  %.sink.i = phi ptr [ %9, %7 ], [ %6, %5 ]
  %i.be = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.aj, i32 noundef %i.bd, ptr noundef %0, i32 noundef %i.ba, i32 noundef 4, i32 noundef %i.bb, ptr noundef @.str.2658, ptr noundef %.sink.i, i32 noundef %i.bb) ; 0 uses
  %i.bf = add i32 %i.ba, 4
  %i.bg = add nuw i32 %.032.us.us.i, 1            ; 2 uses
  %i.bh = load i32, ptr %i.b, align 4
  %i.bi = icmp ult i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph.split.us.split.us.i, label %mbim_dissect_event_entry.exit, !llvm.loop !15

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bj = icmp eq i8 %.fr38.i, -1
  br i1 %i.bj, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %.lr.ph.split.split.us.i
  %.032.us33.i = phi i32 [ %i.br, %.lr.ph.split.split.us.i ], [ 0, %.lr.ph.split.i ]
  %i.bk = phi i32 [ %i.bq, %.lr.ph.split.split.us.i ], [ %i.ar, %.lr.ph.split.i ] ; 3 uses
  %i.bl = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.bk) ; 3 uses
  %i.bm = load i32, ptr @hf_mbim_device_service_element_cid, align 4
  %i.bn = load ptr, ptr %i.av, align 8
  %i.bo = call ptr @val_to_str_const(i32 noundef %i.bl, ptr noundef %i.bn, ptr noundef @.str.2007)
  %i.bp = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.aj, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bk, i32 noundef 4, i32 noundef %i.bl, ptr noundef @.str.2658, ptr noundef %i.bo, i32 noundef %i.bl) ; 0 uses
  %i.bq = add i32 %i.bk, 4
  %i.br = add nuw i32 %.032.us33.i, 1             ; 2 uses
  %i.bs = load i32, ptr %i.b, align 4
  %i.bt = icmp ult i32 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph.split.split.us.i, label %mbim_dissect_event_entry.exit, !llvm.loop !15

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %.lr.ph.split.split.i
  %.032.i = phi i32 [ %i.bz, %.lr.ph.split.split.i ], [ 0, %.lr.ph.split.i ]
  %i.bu = phi i32 [ %i.by, %.lr.ph.split.split.i ], [ %i.ar, %.lr.ph.split.i ] ; 3 uses
  %i.bv = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.bu)
  %i.bw = load i32, ptr @hf_mbim_event_entry_cid, align 4
  %i.bx = call ptr @proto_tree_add_uint(ptr noundef %i.aj, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bu, i32 noundef 4, i32 noundef %i.bv) ; 0 uses
  %i.by = add i32 %i.bu, 4
  %i.bz = add nuw i32 %.032.i, 1                  ; 2 uses
  %i.ca = load i32, ptr %i.b, align 4
  %i.cb = icmp ult i32 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph.split.split.i, label %mbim_dissect_event_entry.exit, !llvm.loop !15

mbim_dissect_event_entry.exit:                    ; preds = %.lr.ph.split.split.i, %.lr.ph.split.split.us.i, %.lr.ph.split.us.split.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph47, %bb.d, %mbim_dissect_event_entry.exit
  %i.cc = add nuw i32 %.146, 1                    ; 2 uses
  %i.cd = load i32, ptr %i.d, align 4
  %i.ce = icmp ult i32 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph47, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.f, %bb.b, %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_packet_filters(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %5 = alloca %struct.mbim_pair_list, align 4     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.e = load i32, ptr @hf_mbim_packet_filters_session_id, align 4
  %i.f = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.g = add i32 %3, 4
  %i.h = load i32, ptr @hf_mbim_packet_filters_packet_filters_count, align 4
  %i.i = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.j = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %3, 8                            ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call ptr @wmem_array_new(ptr noundef %i.m, i64 noundef 8) ; 2 uses
  %i.o = load i32, ptr %i.d, align 4
  %i.p = shl i32 %i.o, 3
  %i.q = load i32, ptr @ett_mbim_pair_list, align 4
  %i.r = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.p, i32 noundef %i.q, ptr noundef null, ptr noundef @.str.2694) ; 2 uses
  %i.s = load i32, ptr %i.d, align 4
  %.not50 = icmp eq i32 %i.s, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.u = icmp eq i32 %i.ae, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader
  %i.v = getelementptr i8, ptr %4, i64 24
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.047 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.c ]
  %.04146 = phi i32 [ %i.k, %.lr.ph ], [ %i.ab, %bb.c ] ; 3 uses
  %i.w = load i32, ptr @hf_mbim_packet_filters_packet_filters_packet_filter_offset, align 4
  %i.x = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.r, i32 noundef %i.w, ptr noundef %0, i32 noundef %.04146, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %5) ; 0 uses
  %i.y = add i32 %.04146, 4
  %i.z = load i32, ptr @hf_mbim_packet_filters_packet_filters_packet_filter_size, align 4
  %i.aa = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.r, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.t) ; 0 uses
  %i.ab = add i32 %.04146, 8
  %i.ac = call zeroext i1 @wmem_array_append(ptr noundef %i.n, ptr noundef nonnull %5, i32 noundef 1) ; 0 uses
  %i.ad = add nuw i32 %.047, 1                    ; 2 uses
  %i.ae = load i32, ptr %i.d, align 4             ; 2 uses
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %.preheader, !llvm.loop !17

bb.d:                                             ; preds = %.lr.ph49, %bb.n
  %.148 = phi i32 [ 0, %.lr.ph49 ], [ %i.bq, %bb.n ] ; 3 uses
  %i.ag = call ptr @wmem_array_index(ptr noundef %i.n, i32 noundef %.148) ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not44 = icmp eq i32 %i.ah, 0
  br i1 %.not44, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %i.ag, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %.not45 = icmp eq i32 %i.aj, 0
  br i1 %.not45, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add i32 %i.ah, %3
  %i.al = load i32, ptr @ett_mbim_pair_list, align 4
  %i.am = add nuw i32 %.148, 1
  %i.an = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %i.ak, i32 noundef %i.aj, i32 noundef %i.al, ptr noundef null, ptr noundef @.str.2695, i32 noundef %i.am) ; 6 uses
  %i.ao = load i32, ptr %i.ag, align 4
  %i.ap = add i32 %i.ao, %3                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.aq = load i32, ptr @hf_mbim_single_packet_filter_filter_size, align 4
  %i.ar = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.an, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ap, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.as = add i32 %i.ap, 4
  %i.at = load i32, ptr @hf_mbim_single_packet_filter_packet_filter_offset, align 4
  %i.au = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.an, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.as, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.av = add i32 %i.ap, 8
  %i.aw = load i32, ptr @hf_mbim_single_packet_filter_packet_mask_offset, align 4
  %i.ax = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.an, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.av, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.ay = add i32 %i.ap, 12
  %i.az = load i32, ptr %i.v, align 8             ; 2 uses
  %i.ba = icmp ugt i32 %i.az, 2
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = load i32, ptr @preferred_mbim_extended_version, align 4
  %i.bd = icmp sgt i32 %i.bc, 2
  %or.cond.i = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.be = load i32, ptr @hf_mbim_single_packet_filter_filter_id, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.ay, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bg = load i32, ptr %i.a, align 4             ; 2 uses
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %mbim_dissect_single_packet_filter.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load i32, ptr %i.b, align 4             ; 2 uses
  %.not27.i = icmp eq i32 %i.bh, 0
  br i1 %.not27.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr @hf_mbim_single_packet_filter_packet_filter, align 4
  %i.bj = add i32 %i.bh, %i.ap
  %i.bk = call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.bi, ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.bg, i32 noundef 0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = load i32, ptr %i.c, align 4             ; 2 uses
  %.not28.i = icmp eq i32 %i.bl, 0
  br i1 %.not28.i, label %mbim_dissect_single_packet_filter.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = load i32, ptr @hf_mbim_single_packet_filter_packet_mask, align 4
  %i.bn = add i32 %i.bl, %i.ap
  %i.bo = load i32, ptr %i.a, align 4
  %i.bp = call ptr @proto_tree_add_item(ptr noundef %i.an, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bn, i32 noundef %i.bo, i32 noundef 0) ; 0 uses
  br label %mbim_dissect_single_packet_filter.exit

mbim_dissect_single_packet_filter.exit:           ; preds = %bb.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.e, %mbim_dissect_single_packet_filter.exit
  %i.bq = add nuw i32 %.148, 1                    ; 2 uses
  %i.br = load i32, ptr %i.d, align 4
  %i.bs = icmp ult i32 %i.bq, %i.br
  br i1 %i.bs, label %bb.d, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.n, %bb.b, %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_set_sms_configuration(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i32, ptr @hf_mbim_set_sms_configuration_format, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.e = add i32 %3, 4
  %i.f = load i32, ptr @hf_mbim_set_sms_configuration_sc_address_offset, align 4
  %i.g = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.e, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.h = add i32 %3, 8
  %i.i = load i32, ptr @hf_mbim_set_sms_configuration_sc_address_size, align 4
  %i.j = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.k = load i32, ptr %i.a, align 4              ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  %i.m = load i32, ptr %i.b, align 4              ; 2 uses
  %i.n = icmp ne i32 %i.m, 0
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr @hf_mbim_set_sms_configuration_sc_address, align 4
  %i.p = add i32 %i.k, %3
  %i.q = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.p, i32 noundef %i.m, i32 noundef -2147483644)
  %i.r = load i32, ptr %i.b, align 4
  %i.s = icmp ugt i32 %i.r, 40
  br i1 %i.s, label %bb.c, label %bb.d

end_hunk_1
begin_hunk_2_@mbim_dissect_ip_configuration_info:bb.a
  %i.r = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, ptr noundef @mbim_ip_configuration_info_ipv4_configuration_available_fields, i32 noundef -2147483648) ; 0 uses
  %i.s = add i32 %3, 8
  %i.t = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_configuration_available, align 4
  %i.u = load i32, ptr @ett_mbim_bitmap, align 4
  %i.v = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.u, ptr noundef @mbim_ip_configuration_info_ipv6_configuration_available_fields, i32 noundef -2147483648) ; 0 uses
  %i.w = add i32 %3, 12
  %i.x = load i32, ptr @hf_mbim_ip_configuration_info_ipv4_address_count, align 4
  %i.y = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.c) ; 0 uses
  %i.z = add i32 %3, 16
  %i.aa = load i32, ptr @hf_mbim_ip_configuration_info_ipv4_address_offset, align 4
  %i.ab = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.ac = add i32 %3, 20
  %i.ad = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_address_count, align 4
  %i.ae = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ac, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.e) ; 0 uses
  %i.af = add i32 %3, 24
  %i.ag = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_address_offset, align 4
  %i.ah = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.af, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.f) ; 0 uses
  %i.ai = add i32 %3, 28
  %i.aj = load i32, ptr @hf_mbim_ip_configuration_info_ipv4_gateway_offset, align 4
  %i.ak = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.g) ; 0 uses
  %i.al = add i32 %3, 32
  %i.am = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_gateway_offset, align 4
  %i.an = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.h) ; 0 uses
  %i.ao = add i32 %3, 36
  %i.ap = load i32, ptr @hf_mbim_ip_configuration_info_ipv4_dns_count, align 4
  %i.aq = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.i) ; 0 uses
  %i.ar = add i32 %3, 40
  %i.as = load i32, ptr @hf_mbim_ip_configuration_info_ipv4_dns_offset, align 4
  %i.at = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.as, ptr noundef %0, i32 noundef %i.ar, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.j) ; 0 uses
  %i.au = add i32 %3, 44
  %i.av = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_dns_count, align 4
  %i.aw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.au, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.k) ; 0 uses
  %i.ax = add i32 %3, 48
  %i.ay = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_dns_offset, align 4
  %i.az = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.ax, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.l) ; 0 uses
  %i.ba = add i32 %3, 52
  %i.bb = load i32, ptr @hf_mbim_ip_configuration_info_ipv4_mtu, align 4
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.ba, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bd = add i32 %3, 56
  %i.be = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_mtu, align 4
  %i.bf = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bd, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bg = load i32, ptr %i.c, align 4
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = load i32, ptr %i.d, align 4             ; 2 uses
  %i.bj = icmp ne i32 %i.bi, 0
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit105

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.bk = add i32 %i.bi, %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %mbim_dissect_ipv4_element.exit
  %.0107 = phi i32 [ %i.bu, %mbim_dissect_ipv4_element.exit ], [ 0, %.lr.ph.preheader ]
  %.099106 = phi i32 [ %i.bt, %mbim_dissect_ipv4_element.exit ], [ %i.bk, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.bl = load i32, ptr @hf_mbim_ipv4_element_on_link_prefix_length, align 4
  %i.bm = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.bl, ptr noundef %0, i32 noundef %.099106, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b)
  %i.bn = add i32 %.099106, 4
  %i.bo = load i32, ptr %i.b, align 4             ; 2 uses
  %i.bp = icmp ugt i32 %i.bo, 32
  br i1 %i.bp, label %bb.b, label %mbim_dissect_ipv4_element.exit

bb.b:                                             ; preds = %.lr.ph
  %i.bq = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bm, ptr noundef @ei_mbim_illegal_on_link_prefix_length, ptr noundef @.str.2717, i32 noundef %i.bo) ; 0 uses
  br label %mbim_dissect_ipv4_element.exit

mbim_dissect_ipv4_element.exit:                   ; preds = %.lr.ph, %bb.b
  %i.br = load i32, ptr @hf_mbim_ipv4_element_ipv4_address, align 4
  %i.bs = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bn, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.bt = add i32 %.099106, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.bu = add nuw i32 %.0107, 1                   ; 2 uses
  %i.bv = load i32, ptr %i.c, align 4
  %i.bw = icmp ult i32 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.loopexit105, !llvm.loop !37

.loopexit105:                                     ; preds = %mbim_dissect_ipv4_element.exit, %bb.a
  %i.bx = load i32, ptr %i.e, align 4
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = load i32, ptr %i.f, align 4             ; 2 uses
  %i.ca = icmp ne i32 %i.bz, 0
  %or.cond3 = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond3, label %.lr.ph110.preheader, label %.loopexit104

.lr.ph110.preheader:                              ; preds = %.loopexit105
  %i.cb = add i32 %i.bz, %3
  br label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.preheader, %mbim_dissect_ipv6_element.exit
  %.1109 = phi i32 [ %i.cl, %mbim_dissect_ipv6_element.exit ], [ 0, %.lr.ph110.preheader ]
  %.1100108 = phi i32 [ %i.ck, %mbim_dissect_ipv6_element.exit ], [ %i.cb, %.lr.ph110.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.cc = load i32, ptr @hf_mbim_ipv6_element_on_link_prefix_length, align 4
  %i.cd = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.cc, ptr noundef %0, i32 noundef %.1100108, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a)
  %i.ce = add i32 %.1100108, 4
  %i.cf = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cg = icmp ugt i32 %i.cf, 128
  br i1 %i.cg, label %bb.c, label %mbim_dissect_ipv6_element.exit

bb.c:                                             ; preds = %.lr.ph110
  %i.ch = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.cd, ptr noundef @ei_mbim_illegal_on_link_prefix_length, ptr noundef @.str.2718, i32 noundef %i.cf) ; 0 uses
  br label %mbim_dissect_ipv6_element.exit

mbim_dissect_ipv6_element.exit:                   ; preds = %.lr.ph110, %bb.c
  %i.ci = load i32, ptr @hf_mbim_ipv6_element_ipv6_address, align 4
  %i.cj = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ci, ptr noundef %0, i32 noundef %i.ce, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.ck = add i32 %.1100108, 20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.cl = add nuw i32 %.1109, 1                   ; 2 uses
  %i.cm = load i32, ptr %i.e, align 4
  %i.cn = icmp ult i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph110, label %.loopexit104, !llvm.loop !38

.loopexit104:                                     ; preds = %mbim_dissect_ipv6_element.exit, %.loopexit105
  %i.co = load i32, ptr %i.g, align 4             ; 2 uses
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit104
  %i.cp = load i32, ptr @hf_mbim_ip_configuration_info_ipv4_gateway, align 4
  %i.cq = add i32 %i.co, %3
  %i.cr = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cp, ptr noundef %0, i32 noundef %i.cq, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit104
  %i.cs = load i32, ptr %i.h, align 4             ; 2 uses
  %.not70 = icmp eq i32 %i.cs, 0
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_gateway, align 4
  %i.cu = add i32 %i.cs, %3
  %i.cv = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ct, ptr noundef %0, i32 noundef %i.cu, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cw = load i32, ptr %i.i, align 4
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = load i32, ptr %i.j, align 4             ; 2 uses
  %i.cz = icmp ne i32 %i.cy, 0
  %or.cond5 = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond5, label %.lr.ph113.preheader, label %.loopexit103

.lr.ph113.preheader:                              ; preds = %bb.g
  %i.da = add i32 %i.cy, %3
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %.lr.ph113
  %.2112 = phi i32 [ %i.de, %.lr.ph113 ], [ 0, %.lr.ph113.preheader ]
  %.2101111 = phi i32 [ %i.dd, %.lr.ph113 ], [ %i.da, %.lr.ph113.preheader ] ; 2 uses
  %i.db = load i32, ptr @hf_mbim_ip_configuration_info_ipv4_dns, align 4
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.db, ptr noundef %0, i32 noundef %.2101111, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.dd = add i32 %.2101111, 4
  %i.de = add nuw i32 %.2112, 1                   ; 2 uses
  %i.df = load i32, ptr %i.i, align 4
  %i.dg = icmp ult i32 %i.de, %i.df
  br i1 %i.dg, label %.lr.ph113, label %.loopexit103, !llvm.loop !39

.loopexit103:                                     ; preds = %.lr.ph113, %bb.g
  %i.dh = load i32, ptr %i.k, align 4
  %i.di = icmp ne i32 %i.dh, 0
  %i.dj = load i32, ptr %i.l, align 4             ; 2 uses
  %i.dk = icmp ne i32 %i.dj, 0
  %or.cond7 = select i1 %i.di, i1 %i.dk, i1 false
  br i1 %or.cond7, label %.lr.ph116.preheader, label %.loopexit

.lr.ph116.preheader:                              ; preds = %.loopexit103
  %i.dl = add i32 %i.dj, %3
  br label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.preheader, %.lr.ph116
  %.3115 = phi i32 [ %i.dp, %.lr.ph116 ], [ 0, %.lr.ph116.preheader ]
  %.3102114 = phi i32 [ %i.do, %.lr.ph116 ], [ %i.dl, %.lr.ph116.preheader ] ; 2 uses
  %i.dm = load i32, ptr @hf_mbim_ip_configuration_info_ipv6_dns, align 4
  %i.dn = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.dm, ptr noundef %0, i32 noundef %.3102114, i32 noundef 16, i32 noundef 0) ; 0 uses
  %i.do = add i32 %.3102114, 16
  %i.dp = add nuw i32 %.3115, 1                   ; 2 uses
  %i.dq = load i32, ptr %i.k, align 4
  %i.dr = icmp ult i32 %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph116, label %.loopexit, !llvm.loop !40

.loopexit:                                        ; preds = %.lr.ph116, %.loopexit103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_device_services_info(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %4 = alloca %struct.mbim_pair_list, align 4     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.e = load i32, ptr @hf_mbim_device_services_info_device_services_count, align 4
  %i.f = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.e, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.d) ; 0 uses
  %i.g = add i32 %3, 4
  %i.h = load i32, ptr @hf_mbim_device_services_info_max_dss_sessions, align 4
  %i.i = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.j = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %3, 8                            ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 416
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call ptr @wmem_array_new(ptr noundef %i.m, i64 noundef 8) ; 2 uses
  %i.o = load i32, ptr %i.d, align 4
  %i.p = shl i32 %i.o, 3
  %i.q = load i32, ptr @ett_mbim_pair_list, align 4
  %i.r = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.p, i32 noundef %i.q, ptr noundef null, ptr noundef @.str.2719) ; 2 uses
  %i.s = load i32, ptr %i.d, align 4
  %.not52 = icmp eq i32 %i.s, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.u = icmp eq i32 %i.ad, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph51

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.049 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.c ]
  %.04048 = phi i32 [ %i.k, %.lr.ph ], [ %i.aa, %bb.c ] ; 3 uses
  %i.v = load i32, ptr @hf_mbim_device_services_info_device_services_offset, align 4
  %i.w = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.r, i32 noundef %i.v, ptr noundef %0, i32 noundef %.04048, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %4) ; 0 uses
  %i.x = add i32 %.04048, 4
  %i.y = load i32, ptr @hf_mbim_device_services_info_device_services_size, align 4
  %i.z = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.r, i32 noundef %i.y, ptr noundef %0, i32 noundef %i.x, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.t) ; 0 uses
  %i.aa = add i32 %.04048, 8
  %i.ab = call zeroext i1 @wmem_array_append(ptr noundef %i.n, ptr noundef nonnull %4, i32 noundef 1) ; 0 uses
  %i.ac = add nuw i32 %.049, 1                    ; 2 uses
  %i.ad = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ae = icmp ult i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %.preheader, !llvm.loop !41

.lr.ph51:                                         ; preds = %.preheader, %bb.f
  %.150 = phi i32 [ %i.cm, %bb.f ], [ 0, %.preheader ] ; 3 uses
  %i.af = call ptr @wmem_array_index(ptr noundef %i.n, i32 noundef %.150) ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %.not43 = icmp eq i32 %i.ag, 0
  br i1 %.not43, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph51
  %i.ah = getelementptr i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4            ; 2 uses
  %.not44 = icmp eq i32 %i.ai, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = add i32 %i.ag, %3
  %i.ak = load i32, ptr @ett_mbim_pair_list, align 4
  %i.al = add nuw i32 %.150, 1
  %i.am = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %i.aj, i32 noundef %i.ai, i32 noundef %i.ak, ptr noundef null, ptr noundef @.str.2693, i32 noundef %i.al) ; 7 uses
  %i.an = load i32, ptr %i.af, align 4
  %i.ao = add i32 %i.an, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ao, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8
  %i.ap = load i32, ptr @hf_mbim_device_service_element_device_service_id, align 4
  %i.aq = call fastcc zeroext i8 @mbim_dissect_service_id_uuid(ptr noundef %0, ptr noundef readonly %1, ptr noundef %i.am, i32 noundef %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i1 noundef zeroext true)
  %.fr42.i = freeze i8 %i.aq                      ; 3 uses
  %i.ar = load i32, ptr %i.a, align 4             ; 4 uses
  %i.as = load i32, ptr @hf_mbim_device_service_element_dss_payload, align 4
  %i.at = load i32, ptr @ett_mbim_bitmap, align 4
  %i.au = call ptr @proto_tree_add_bitmask(ptr noundef %i.am, ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, ptr noundef @mbim_device_service_element_dss_payload_fields, i32 noundef -2147483648) ; 0 uses
  %i.av = add i32 %i.ar, 4
  %i.aw = load i32, ptr @hf_mbim_device_service_element_max_dss_instances, align 4
  %i.ax = call ptr @proto_tree_add_item(ptr noundef %i.am, i32 noundef %i.aw, ptr noundef %0, i32 noundef %i.av, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.ay = add i32 %i.ar, 8
  %i.az = load i32, ptr @hf_mbim_device_service_element_cid_count, align 4
  %i.ba = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.am, i32 noundef %i.az, ptr noundef %0, i32 noundef %i.ay, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.bb = add i32 %i.ar, 12                       ; 3 uses
  %i.bc = load i32, ptr %i.b, align 4
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %mbim_dissect_device_service_element.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bd = icmp ult i8 %.fr42.i, 25
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %i.bg = zext nneg i8 %.fr42.i to i64
  %i.bh = getelementptr [24 x i8], ptr @mbim_uuid_info, i64 %i.bg ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  br i1 %i.bd, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i, %.lr.ph.split.us.split.i
  %.036.us.us.i = phi i32 [ %i.bq, %.lr.ph.split.us.split.i ], [ 0, %.lr.ph.i ]
  %i.bk = phi i32 [ %i.bp, %.lr.ph.split.us.split.i ], [ %i.bb, %.lr.ph.i ] ; 3 uses
  %i.bl = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.bk) ; 4 uses
  %i.bm = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.us.i = icmp eq ptr %i.bm, null
  %i.bn = load i32, ptr @hf_mbim_device_service_element_cid, align 4
  br i1 %.not.us.i, label %7, label %5

5:                                                ; preds = %.lr.ph.split.us.split.us.i
  %6 = call ptr @val_to_str_ext_const(i32 noundef %i.bl, ptr noundef nonnull %i.bm, ptr noundef @.str.2007)
  br label %.lr.ph.split.us.split.i

7:                                                ; preds = %.lr.ph.split.us.split.us.i
  %8 = load ptr, ptr %i.bj, align 8
  %9 = call ptr @val_to_str_const(i32 noundef %i.bl, ptr noundef %8, ptr noundef @.str.2007)
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %7, %5
  %.sink.i = phi ptr [ %9, %7 ], [ %6, %5 ]
  %i.bo = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.am, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bk, i32 noundef 4, i32 noundef %i.bl, ptr noundef @.str.2658, ptr noundef %.sink.i, i32 noundef %i.bl) ; 0 uses
  %i.bp = add i32 %i.bk, 4
  %i.bq = add nuw i32 %.036.us.us.i, 1            ; 2 uses
  %i.br = load i32, ptr %i.b, align 4
  %i.bs = icmp ult i32 %i.bq, %i.br
  br i1 %i.bs, label %.lr.ph.split.us.split.us.i, label %mbim_dissect_device_service_element.exit, !llvm.loop !42

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bt = icmp eq i8 %.fr42.i, -1
  br i1 %i.bt, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i, %.lr.ph.split.split.us.i
  %.036.us37.i = phi i32 [ %i.cb, %.lr.ph.split.split.us.i ], [ 0, %.lr.ph.split.i ]
  %i.bu = phi i32 [ %i.ca, %.lr.ph.split.split.us.i ], [ %i.bb, %.lr.ph.split.i ] ; 3 uses
  %i.bv = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.bu) ; 3 uses
  %i.bw = load i32, ptr @hf_mbim_device_service_element_cid, align 4
  %i.bx = load ptr, ptr %i.bf, align 8
  %i.by = call ptr @val_to_str_const(i32 noundef %i.bv, ptr noundef %i.bx, ptr noundef @.str.2007)
  %i.bz = call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %i.am, i32 noundef %i.bw, ptr noundef %0, i32 noundef %i.bu, i32 noundef 4, i32 noundef %i.bv, ptr noundef @.str.2658, ptr noundef %i.by, i32 noundef %i.bv) ; 0 uses
  %i.ca = add i32 %i.bu, 4
  %i.cb = add nuw i32 %.036.us37.i, 1             ; 2 uses
  %i.cc = load i32, ptr %i.b, align 4
  %i.cd = icmp ult i32 %i.cb, %i.cc
  br i1 %i.cd, label %.lr.ph.split.split.us.i, label %mbim_dissect_device_service_element.exit, !llvm.loop !42

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i, %.lr.ph.split.split.i
  %.036.i = phi i32 [ %i.cj, %.lr.ph.split.split.i ], [ 0, %.lr.ph.split.i ]
  %i.ce = phi i32 [ %i.ci, %.lr.ph.split.split.i ], [ %i.bb, %.lr.ph.split.i ] ; 3 uses
  %i.cf = call i32 @tvb_get_letohl(ptr noundef %0, i32 noundef %i.ce)
  %i.cg = load i32, ptr @hf_mbim_device_service_element_cid, align 4
  %i.ch = call ptr @proto_tree_add_uint(ptr noundef %i.am, i32 noundef %i.cg, ptr noundef %0, i32 noundef %i.ce, i32 noundef 4, i32 noundef %i.cf) ; 0 uses
  %i.ci = add i32 %i.ce, 4
  %i.cj = add nuw i32 %.036.i, 1                  ; 2 uses
  %i.ck = load i32, ptr %i.b, align 4
  %i.cl = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.split.split.i, label %mbim_dissect_device_service_element.exit, !llvm.loop !42

mbim_dissect_device_service_element.exit:         ; preds = %.lr.ph.split.split.i, %.lr.ph.split.split.us.i, %.lr.ph.split.us.split.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph51, %bb.d, %mbim_dissect_device_service_element.exit
  %i.cm = add nuw i32 %.150, 1                    ; 2 uses
  %i.cn = load i32, ptr %i.d, align 4
  %i.co = icmp ult i32 %i.cm, %i.cn
  br i1 %i.co, label %.lr.ph51, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %bb.f, %bb.b, %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_packet_statistics_info(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @hf_mbim_packet_statistics_info_in_discards, align 4
  %i.b = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.a, ptr noundef %0, i32 noundef %2, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.c = add i32 %2, 4
  %i.d = load i32, ptr @hf_mbim_packet_statistics_info_in_errors, align 4
  %i.e = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.d, ptr noundef %0, i32 noundef %i.c, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.f = add i32 %2, 8
  %i.g = load i32, ptr @hf_mbim_packet_statistics_info_in_octets, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.g, ptr noundef %0, i32 noundef %i.f, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.i = add i32 %2, 16
  %i.j = load i32, ptr @hf_mbim_packet_statistics_info_in_packets, align 4
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.i, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.l = add i32 %2, 24
  %i.m = load i32, ptr @hf_mbim_packet_statistics_info_out_octets, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.o = add i32 %2, 32
  %i.p = load i32, ptr @hf_mbim_packet_statistics_info_out_packets, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.o, i32 noundef 8, i32 noundef -2147483648) ; 0 uses
  %i.r = add i32 %2, 40
  %i.s = load i32, ptr @hf_mbim_packet_statistics_info_out_errors, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.s, ptr noundef %0, i32 noundef %i.r, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.u = add i32 %2, 44
  %i.v = load i32, ptr @hf_mbim_packet_statistics_info_out_discards, align 4
  %i.w = tail call ptr @proto_tree_add_item(ptr noundef %1, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_sms_configuration_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i32, ptr @hf_mbim_sms_configuration_info_sms_storage_state, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.c, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.e = add i32 %3, 4
  %i.f = load i32, ptr @hf_mbim_sms_configuration_info_format, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.e, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.h = add i32 %3, 8
  %i.i = load i32, ptr @hf_mbim_sms_configuration_info_max_messages, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %i.h, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.k = add i32 %3, 12
  %i.l = load i32, ptr @hf_mbim_sms_configuration_info_cdma_short_message_size, align 4
  %i.m = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.k, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.n = add i32 %3, 16
  %i.o = load i32, ptr @hf_mbim_sms_configuration_info_sc_address_offset, align 4
  %i.p = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.o, ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.a) ; 0 uses
  %i.q = add i32 %3, 20
  %i.r = load i32, ptr @hf_mbim_sms_configuration_info_sc_address_size, align 4
  %i.s = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.q, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.b) ; 0 uses
  %i.t = load i32, ptr %i.a, align 4              ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  %i.v = load i32, ptr %i.b, align 4              ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  %or.cond = select i1 %i.u, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr @hf_mbim_sms_configuration_info_sc_address, align 4
  %i.y = add i32 %i.t, %3
  %i.z = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.y, i32 noundef %i.v, i32 noundef -2147483644)
  %i.aa = load i32, ptr %i.b, align 4
  %i.ab = icmp ugt i32 %i.aa, 40
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.z, ptr noundef @ei_mbim_oversized_string) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @mbim_dissect_sms_read_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 10 uses
  %i.k = alloca i32, align 4                      ; 9 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %5 = alloca %struct.mbim_pair_list, align 4     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.n = load i32, ptr @hf_mbim_sms_read_info_format, align 4
  %i.o = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.n, ptr noundef %0, i32 noundef %3, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.l) ; 0 uses
  %i.p = add i32 %3, 4
  %i.q = load i32, ptr @hf_mbim_sms_read_info_element_count, align 4
  %i.r = call ptr @proto_tree_add_item_ret_uint(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.m) ; 0 uses
  %i.s = load i32, ptr %i.m, align 4
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = add i32 %3, 8                            ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 416
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call ptr @wmem_array_new(ptr noundef %i.v, i64 noundef 8) ; 2 uses
  %i.x = load i32, ptr %i.m, align 4
  %i.y = shl i32 %i.x, 3
  %i.z = load i32, ptr @ett_mbim_pair_list, align 4
  %i.aa = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.y, i32 noundef %i.z, ptr noundef null, ptr noundef @.str.2720) ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4
  %.not63 = icmp eq i32 %i.ab, 0
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.c

.preheader:                                       ; preds = %bb.c
  %i.ad = icmp eq i32 %i.ao, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader
  %i.ae = getelementptr i8, ptr %4, i64 20        ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 356
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.060 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.c ]
  %.05259 = phi i32 [ %i.t, %.lr.ph ], [ %i.al, %bb.c ] ; 3 uses
  %i.ag = load i32, ptr @hf_mbim_sms_read_info_sms_offset, align 4
  %i.ah = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.aa, i32 noundef %i.ag, ptr noundef %0, i32 noundef %.05259, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %5) ; 0 uses
  %i.ai = add i32 %.05259, 4
  %i.aj = load i32, ptr @hf_mbim_sms_read_info_sms_size, align 4
  %i.ak = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.aa, i32 noundef %i.aj, ptr noundef %0, i32 noundef %i.ai, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.ac) ; 0 uses
  %i.al = add i32 %.05259, 8
  %i.am = call zeroext i1 @wmem_array_append(ptr noundef %i.w, ptr noundef nonnull %5, i32 noundef 1) ; 0 uses
  %i.an = add nuw i32 %.060, 1                    ; 2 uses
  %i.ao = load i32, ptr %i.m, align 4             ; 2 uses
  %i.ap = icmp ult i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.c, label %.preheader, !llvm.loop !44

bb.d:                                             ; preds = %.lr.ph62, %bb.ah
  %.161 = phi i32 [ 0, %.lr.ph62 ], [ %i.gs, %bb.ah ] ; 3 uses
  %i.aq = call ptr @wmem_array_index(ptr noundef %i.w, i32 noundef %.161) ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not56 = icmp eq i32 %i.ar, 0
  br i1 %.not56, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr i8, ptr %i.aq, i64 4      ; 2 uses
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %.not57 = icmp eq i32 %i.at, 0
  br i1 %.not57, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = add i32 %i.ar, %3
  %i.av = load i32, ptr @ett_mbim_pair_list, align 4
  %i.aw = add nuw i32 %.161, 1
  %i.ax = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef %0, i32 noundef %i.au, i32 noundef %i.at, i32 noundef %i.av, ptr noundef null, ptr noundef @.str.2721, i32 noundef %i.aw) ; 21 uses
  %i.ay = load i32, ptr %i.l, align 4
  %i.az = load i32, ptr %i.aq, align 4
  %i.ba = add i32 %i.az, %3                       ; 28 uses
  switch i32 %i.ay, label %bb.ag [
    i32 0, label %bb.g
    i32 1, label %bb.w
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  %i.bb = load i32, ptr @hf_mbim_sms_pdu_record_message_index, align 4
  %i.bc = call ptr @proto_tree_add_item(ptr noundef %i.ax, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.ba, i32 noundef 4, i32 noundef -2147483648) ; 0 uses
  %i.bd = add i32 %i.ba, 4
  %i.be = load i32, ptr @hf_mbim_sms_pdu_record_message_status, align 4
  %i.bf = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ax, i32 noundef %i.be, ptr noundef %0, i32 noundef %i.bd, i32 noundef 4, i32 noundef -2147483648, ptr noundef nonnull %i.i) ; 0 uses
end_hunk_2
