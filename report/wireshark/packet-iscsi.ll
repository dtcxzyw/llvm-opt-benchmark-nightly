Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-iscsi?download=true
inline.NumInlined: 28
inline.NumDeleted: 4
begin_hunk_0_@try_val_to_str
declare ptr @try_val_to_str(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @value_is_in_range(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @find_or_create_conversation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @conversation_get_proto_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_file_scope() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare void @conversation_add_proto_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @conversation_set_dissector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @crc32c_tvb_offset_calculate(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @proto_report_dissector_bug(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_iscsi_pdu(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext range(i8 0, 64) %4, i32 noundef range(i32 0, 16777216) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca [3 x %struct._wmem_tree_key_t], align 16 ; 11 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %9 = alloca %struct.nstime_t, align 8           ; 4 uses
  %10 = alloca %struct.nstime_t, align 8          ; 4 uses
  %11 = alloca %struct.nstime_t, align 8          ; 4 uses
  %i.b = add i32 %3, 32                           ; 14 uses
  %i.c = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %3)
  %i.d = add i32 %i.c, %3                         ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = zext nneg i8 %4 to i32                   ; 3 uses
  %i.f = tail call ptr @val_to_str_const(i32 noundef %i.e, ptr noundef nonnull @iscsi_opcodes, ptr noundef nonnull @.str.522) ; 2 uses
  %i.g = and i32 %5, 3
  %.not = icmp eq i32 %i.g, 0
  %reass.sub = and i32 %5, 16777212
  %i.h = add nuw nsw i32 %reass.sub, 4
  %.01450 = select i1 %.not, i32 %5, i32 %i.h     ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 8          ; 16 uses
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @col_set_str(ptr noundef %i.j, i32 noundef 35, ptr noundef nonnull @.str.341)
  %i.k = add i32 %3, 16                           ; 17 uses
  %i.l = tail call i32 @tvb_get_ntohl(ptr noundef %0, i32 noundef %i.k)
  store i32 %i.l, ptr %i.a, align 4
  store i32 1, ptr %8, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.n, align 16
  %i.o = getelementptr i8, ptr %1, i64 20         ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 0, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %1, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 53
  %i.v = load i16, ptr %i.u, align 1
  %i.w = and i16 %i.v, 8
  %.not1496 = icmp eq i16 %i.w, 0
  br i1 %.not1496, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.x = icmp eq i8 %4, 1
  br i1 %i.x, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr i8, ptr %6, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call ptr @wmem_tree_lookup32_array_le(ptr noundef %i.z, ptr noundef nonnull %8) ; 3 uses
  %.not1497 = icmp eq ptr %i.aa, null
  br i1 %.not1497, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = load i32, ptr %i.a, align 4
  %.not1498 = icmp eq i32 %i.ac, %i.ad
  br i1 %.not1498, label %.thread1637, label %.thread

bb.e:                                             ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %6, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call ptr @wmem_tree_lookup32_array_le(ptr noundef %i.af, ptr noundef nonnull %8) ; 3 uses
  %.not1499 = icmp eq ptr %i.ag, null
  br i1 %.not1499, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = load i32, ptr %i.a, align 4
  %.not1500 = icmp eq i32 %i.ai, %i.aj
  br i1 %.not1500, label %.thread1637, label %.thread

bb.g:                                             ; preds = %bb.b
  %i.ak = call ptr @wmem_file_scope()
  %i.al = call noalias dereferenceable_or_null(88) ptr @wmem_alloc(ptr noundef %i.ak, i64 noundef 88) #10 ; 16 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = getelementptr i8, ptr %i.al, i64 24
  %i.ao = getelementptr i8, ptr %i.al, i64 32
  store i32 0, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %i.al, i64 36
  store i32 0, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %i.al, i64 48
  %i.ar = getelementptr i8, ptr %1, i64 24        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.aq, ptr noundef align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.as = getelementptr i8, ptr %i.al, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.as, ptr noundef align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  store i32 0, ptr %i.am, align 8
  %i.at = getelementptr i8, ptr %i.al, i64 20
  store i32 0, ptr %i.at, align 4
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.an, align 8
  %i.au = getelementptr i8, ptr %i.al, i64 40
  store i32 0, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %i.al, i64 80
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.al, i64 8
  store i32 0, ptr %i.aw, align 8
  store i32 0, ptr %i.al, align 8
  %i.ax = getelementptr i8, ptr %i.al, i64 4
  store i32 0, ptr %i.ax, align 4
  %i.ay = load i32, ptr %i.a, align 4
  %i.az = getelementptr i8, ptr %i.al, i64 12
  store i32 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr i8, ptr %6, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void @wmem_tree_insert32_array(ptr noundef %i.bb, ptr noundef nonnull %8, ptr noundef %i.al)
  %.not1501 = icmp eq ptr %i.al, null
  br i1 %.not1501, label %.thread, label %.thread1643

.thread:                                          ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %i.bc = getelementptr i8, ptr %1, i64 416
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noalias dereferenceable_or_null(88) ptr @wmem_alloc(ptr noundef %i.bd, i64 noundef 88) #10 ; 13 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  %i.bg = getelementptr i8, ptr %i.be, i64 24
  %i.bh = getelementptr i8, ptr %i.be, i64 32
  store i32 0, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %i.be, i64 36
  store i32 0, ptr %i.bi, align 4
  %i.bj = getelementptr i8, ptr %i.be, i64 48
  %i.bk = getelementptr i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %i.bj, ptr noundef align 8 dereferenceable(16) %i.bk, i64 16, i1 false)
  store i32 0, ptr %i.bf, align 8
  %i.bl = getelementptr i8, ptr %i.be, i64 20
  store i32 0, ptr %i.bl, align 4
  store <4 x i16> <i16 -1, i16 -1, i16 0, i16 0>, ptr %i.bg, align 8
  %i.bm = getelementptr i8, ptr %i.be, i64 40
  store i32 0, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.be, i64 80
  store ptr null, ptr %i.bn, align 8
  store i32 0, ptr %i.be, align 8
  %i.bo = getelementptr i8, ptr %i.be, i64 4
  store i32 0, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %i.be, i64 8
  store i32 0, ptr %i.bp, align 8
  %i.bq = load i32, ptr %i.a, align 4
  %i.br = getelementptr i8, ptr %i.be, i64 12
  store i32 %i.bq, ptr %i.br, align 4
  br label %.thread1637

.thread1637:                                      ; preds = %bb.f, %bb.d, %.thread
  %.11452 = phi ptr [ %i.be, %.thread ], [ %i.aa, %bb.d ], [ %i.ag, %bb.f ] ; 12 uses
  %i.bs = icmp eq i8 %4, 33                       ; 7 uses
  %i.bt = icmp eq i8 %4, 37                       ; 7 uses
  switch i8 %4, label %bb.i [
    i8 37, label %bb.h
    i8 33, label %bb.h
  ]

bb.h:                                             ; preds = %.thread1637, %.thread1637
  %i.bu = add i32 %3, 3
  %i.bv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bu)
  br label %bb.i

bb.i:                                             ; preds = %.thread1637, %bb.h
  %.01432 = phi i8 [ %i.bv, %bb.h ], [ 0, %.thread1637 ] ; 7 uses
  %i.bw = icmp eq i8 %4, 5                        ; 7 uses
  switch i8 %4, label %.thread1652 [
    i8 49, label %bb.j
    i8 37, label %bb.j
    i8 33, label %bb.j
    i8 5, label %bb.j
    i8 1, label %.thread1643
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.bx = add nsw i32 %i.e, -5
  %i.by = lshr exact i32 %i.bx, 2
  switch i32 %i.by, label %.thread1652 [
    i32 7, label %bb.k
    i32 11, label %bb.l
    i32 8, label %bb.m
    i32 0, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.bz = load i32, ptr %i.o, align 4
  %i.ca = getelementptr i8, ptr %.11452, i64 20
  store i32 %i.bz, ptr %i.ca, align 4
  br label %.thread1652

bb.l:                                             ; preds = %bb.j
  %i.cb = load i32, ptr %i.o, align 4
  %i.cc = getelementptr i8, ptr %.11452, i64 8
  store i32 %i.cb, ptr %i.cc, align 8
  br label %.thread1652

bb.m:                                             ; preds = %bb.j
  %i.cd = add i32 %3, 1
  %i.ce = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cd)
  %i.cf = and i8 %i.ce, 1
  %.not1504 = icmp eq i8 %i.cf, 0
  %.pre = load i32, ptr %i.o, align 4             ; 2 uses
  br i1 %.not1504, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr i8, ptr %.11452, i64 20
  store i32 %.pre, ptr %i.cg, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 %.pre, ptr %.11452, align 8
  br label %.thread1652

bb.p:                                             ; preds = %bb.j
  %i.ch = load i32, ptr %i.o, align 4
  %i.ci = getelementptr i8, ptr %.11452, i64 4
  store i32 %i.ch, ptr %i.ci, align 4
  br label %.thread1652

.thread1643:                                      ; preds = %bb.g, %bb.i
  %i.cj = phi i1 [ %i.bw, %bb.i ], [ false, %bb.g ] ; 3 uses
  %.014321648 = phi i8 [ %.01432, %bb.i ], [ 0, %bb.g ] ; 3 uses
  %.1145216421647 = phi ptr [ %.11452, %bb.i ], [ %i.al, %bb.g ] ; 5 uses
  %i.ck = phi i1 [ %i.bs, %bb.i ], [ false, %bb.g ] ; 3 uses
  %i.cl = phi i1 [ %i.bt, %bb.i ], [ false, %bb.g ] ; 3 uses
  %i.cm = add i32 %3, 8                           ; 2 uses
  %i.cn = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cm)
  %i.co = and i8 %i.cn, 64
  %.not1502 = icmp eq i8 %i.co, 0
  br i1 %.not1502, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread1643
  %i.cp = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cm)
  %i.cq = and i8 %i.cp, 63
  %i.cr = zext nneg i8 %i.cq to i16
  %i.cs = shl nuw nsw i16 %i.cr, 8
  %i.ct = add i32 %3, 9
  %i.cu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ct)
  %i.cv = zext i8 %i.cu to i16
  %i.cw = or disjoint i16 %i.cs, %i.cv
  br label %bb.s

bb.r:                                             ; preds = %.thread1643
  %i.cx = add i32 %3, 9
  %i.cy = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.cx)
  %i.cz = zext i8 %i.cy to i16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.01449 = phi i16 [ %i.cw, %bb.q ], [ %i.cz, %bb.r ] ; 2 uses
  %i.da = getelementptr i8, ptr %.1145216421647, i64 16
  %i.db = getelementptr i8, ptr %.1145216421647, i64 24
  store i16 %.01449, ptr %i.db, align 8
  %i.dc = load i32, ptr %i.o, align 4
  store i32 %i.dc, ptr %i.da, align 8
  %i.dd = getelementptr i8, ptr %6, i64 16        ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = zext nneg i16 %.01449 to i64
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = call ptr @wmem_map_lookup(ptr noundef %i.de, ptr noundef %i.dg) ; 2 uses
  %.not1503 = icmp eq ptr %i.dh, null
  br i1 %.not1503, label %bb.t, label %.thread1667

bb.t:                                             ; preds = %bb.s
  %i.di = call ptr @wmem_file_scope()
  %i.dj = call noalias dereferenceable_or_null(16) ptr @wmem_alloc(ptr noundef %i.di, i64 noundef 16) #10 ; 5 uses
  store i8 -1, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  store ptr %7, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %i.dd, align 8
  %i.dm = call ptr @wmem_map_insert(ptr noundef %i.dl, ptr noundef %i.dg, ptr noundef %i.dj) ; 0 uses
  %.not1505 = icmp eq ptr %i.dj, null
  br i1 %.not1505, label %.thread1652, label %.thread1667

.thread1652:                                      ; preds = %bb.i, %bb.p, %bb.o, %bb.l, %bb.k, %bb.j, %bb.t
  %i.dn = phi i1 [ %i.cl, %bb.t ], [ %i.bt, %bb.j ], [ %i.bt, %bb.k ], [ %i.bt, %bb.l ], [ %i.bt, %bb.o ], [ %i.bt, %bb.p ], [ %i.bt, %bb.i ] ; 10 uses
  %i.do = phi i1 [ %i.ck, %bb.t ], [ %i.bs, %bb.j ], [ %i.bs, %bb.k ], [ %i.bs, %bb.l ], [ %i.bs, %bb.o ], [ %i.bs, %bb.p ], [ %i.bs, %bb.i ] ; 3 uses
  %.11452164216461660 = phi ptr [ %.1145216421647, %bb.t ], [ %.11452, %bb.j ], [ %.11452, %bb.k ], [ %.11452, %bb.l ], [ %.11452, %bb.o ], [ %.11452, %bb.p ], [ %.11452, %bb.i ] ; 10 uses
  %.0143216491658 = phi i8 [ %.014321648, %bb.t ], [ %.01432, %bb.j ], [ %.01432, %bb.k ], [ %.01432, %bb.l ], [ %.01432, %bb.o ], [ %.01432, %bb.p ], [ %.01432, %bb.i ] ; 10 uses
  %i.dp = phi i1 [ %i.cj, %bb.t ], [ %i.bw, %bb.j ], [ %i.bw, %bb.k ], [ %i.bw, %bb.l ], [ %i.bw, %bb.o ], [ %i.bw, %bb.p ], [ %i.bw, %bb.i ] ; 9 uses
  %i.dq = getelementptr i8, ptr %6, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %.11452164216461660, i64 24
  %i.dt = load i16, ptr %i.ds, align 8
  %i.du = zext i16 %i.dt to i64
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = call ptr @wmem_map_lookup(ptr noundef %i.dr, ptr noundef %i.dv) ; 9 uses
  %.not1506 = icmp eq i8 %4, 1
  br i1 %.not1506, label %.thread1667, label %bb.u

bb.u:                                             ; preds = %.thread1652
  %i.dx = load ptr, ptr %i.i, align 8
  call void @col_append_str(ptr noundef %i.dx, i32 noundef 25, ptr noundef %i.f)
  br i1 %i.do, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.dn, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dy = add i32 %3, 1
  %i.dz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.dy)
  %i.ea = and i8 %i.dz, 1
  %.not1507 = icmp eq i8 %i.ea, 0
  br i1 %.not1507, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.eb = load ptr, ptr %i.i, align 8
  %i.ec = getelementptr i8, ptr %1, i64 416
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = zext i8 %.0143216491658 to i32
  %i.ef = call ptr @val_to_str(ptr noundef %i.ed, i32 noundef %i.ee, ptr noundef nonnull @scsi_status_val, ptr noundef nonnull @.str.524)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.eb, i32 noundef 25, ptr noundef nonnull @.str.523, ptr noundef %i.ef)
  br label %.thread1667

bb.y:                                             ; preds = %bb.w, %bb.v
  switch i8 %4, label %.thread1667 [
    i8 35, label %bb.z
    i8 6, label %bb.aa
    i8 2, label %bb.ag
    i8 34, label %bb.ah
    i8 63, label %bb.ai
    i8 50, label %bb.aj
  ]

bb.z:                                             ; preds = %bb.y
  %i.eg = add i32 %3, 36
  %i.eh = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.eg)
  %i.ei = load ptr, ptr %i.i, align 8
  %i.ej = getelementptr i8, ptr %1, i64 416
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = zext i16 %i.eh to i32
  %i.em = call ptr @val_to_str(ptr noundef %i.ek, i32 noundef %i.el, ptr noundef nonnull @iscsi_login_status, ptr noundef nonnull @.str.524)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ei, i32 noundef 25, ptr noundef nonnull @.str.523, ptr noundef %i.em)
  br label %.thread1667

bb.aa:                                            ; preds = %bb.y
  %i.en = load i32, ptr @iscsi_protocol_version, align 4 ; 2 uses
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ep = add i32 %3, 11
  %i.eq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ep)
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.er = icmp sgt i32 %i.en, 4
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = add i32 %3, 1
  %i.et = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.es)
  %i.eu = and i8 %i.et, 127
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ev = add i32 %3, 23
  %i.ew = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ev)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ab
  %.01433 = phi i8 [ %i.eq, %bb.ab ], [ %i.eu, %bb.ad ], [ %i.ew, %bb.ae ]
  %i.ex = load ptr, ptr %i.i, align 8
  %i.ey = getelementptr i8, ptr %1, i64 416
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = zext i8 %.01433 to i32
  %i.fb = call ptr @val_to_str(ptr noundef %i.ez, i32 noundef %i.fa, ptr noundef nonnull @iscsi_logout_reasons, ptr noundef nonnull @.str.524)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ex, i32 noundef 25, ptr noundef nonnull @.str.523, ptr noundef %i.fb)
  br label %.thread1667

bb.ag:                                            ; preds = %bb.y
  %i.fc = add i32 %3, 1
  %i.fd = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fc)
  %i.fe = and i8 %i.fd, 127
  %i.ff = load ptr, ptr %i.i, align 8
  %i.fg = getelementptr i8, ptr %1, i64 416
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = zext nneg i8 %i.fe to i32
  %i.fj = call ptr @val_to_str(ptr noundef %i.fh, i32 noundef %i.fi, ptr noundef nonnull @iscsi_task_management_functions, ptr noundef nonnull @.str.524)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ff, i32 noundef 25, ptr noundef nonnull @.str.523, ptr noundef %i.fj)
  br label %.thread1667

bb.ah:                                            ; preds = %bb.y
  %i.fk = add i32 %3, 2
  %i.fl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fk)
  %i.fm = load ptr, ptr %i.i, align 8
  %i.fn = getelementptr i8, ptr %1, i64 416
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = zext i8 %i.fl to i32
  %i.fq = call ptr @val_to_str(ptr noundef %i.fo, i32 noundef %i.fp, ptr noundef nonnull @iscsi_task_management_responses, ptr noundef nonnull @.str.524)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.fm, i32 noundef 25, ptr noundef nonnull @.str.523, ptr noundef %i.fq)
  br label %.thread1667

bb.ai:                                            ; preds = %bb.y
  %i.fr = add i32 %3, 2
  %i.fs = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fr)
  %i.ft = load ptr, ptr %i.i, align 8
  %i.fu = getelementptr i8, ptr %1, i64 416
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = zext i8 %i.fs to i32
  %i.fx = call ptr @val_to_str(ptr noundef %i.fv, i32 noundef %i.fw, ptr noundef nonnull @iscsi_reject_reasons, ptr noundef nonnull @.str.524)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ft, i32 noundef 25, ptr noundef nonnull @.str.523, ptr noundef %i.fx)
  br label %.thread1667

bb.aj:                                            ; preds = %bb.y
  %i.fy = add i32 %3, 36
  %i.fz = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.fy)
  %i.ga = load ptr, ptr %i.i, align 8
  %i.gb = getelementptr i8, ptr %1, i64 416
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = zext i8 %i.fz to i32
  %i.ge = call ptr @val_to_str(ptr noundef %i.gc, i32 noundef %i.gd, ptr noundef nonnull @iscsi_asyncevents, ptr noundef nonnull @.str.524)
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.ga, i32 noundef 25, ptr noundef nonnull @.str.523, ptr noundef %i.ge)
  br label %.thread1667

.thread1667:                                      ; preds = %bb.s, %bb.t, %bb.y, %bb.x, %bb.af, %bb.ah, %bb.aj, %bb.ai, %bb.ag, %bb.z, %.thread1652
  %.not15061674 = phi i1 [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.z ], [ true, %.thread1652 ], [ true, %bb.t ], [ true, %bb.s ]
  %.114461673 = phi ptr [ %i.dw, %bb.y ], [ %i.dw, %bb.x ], [ %i.dw, %bb.af ], [ %i.dw, %bb.ah ], [ %i.dw, %bb.aj ], [ %i.dw, %bb.ai ], [ %i.dw, %bb.ag ], [ %i.dw, %bb.z ], [ %i.dw, %.thread1652 ], [ %i.dj, %bb.t ], [ %i.dh, %bb.s ] ; 7 uses
  %i.gf = phi i1 [ %i.dp, %bb.y ], [ %i.dp, %bb.x ], [ %i.dp, %bb.af ], [ %i.dp, %bb.ah ], [ %i.dp, %bb.aj ], [ %i.dp, %bb.ai ], [ %i.dp, %bb.ag ], [ %i.dp, %bb.z ], [ %i.dp, %.thread1652 ], [ %i.cj, %bb.t ], [ %i.cj, %bb.s ] ; 2 uses
  %.114521642164616591672 = phi ptr [ %.11452164216461660, %bb.y ], [ %.11452164216461660, %bb.x ], [ %.11452164216461660, %bb.af ], [ %.11452164216461660, %bb.ah ], [ %.11452164216461660, %bb.aj ], [ %.11452164216461660, %bb.ai ], [ %.11452164216461660, %bb.ag ], [ %.11452164216461660, %bb.z ], [ %.11452164216461660, %.thread1652 ], [ %.1145216421647, %bb.t ], [ %.1145216421647, %bb.s ] ; 36 uses
  %i.gg = phi i1 [ false, %bb.y ], [ %i.do, %bb.x ], [ false, %bb.af ], [ false, %bb.ah ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ag ], [ false, %bb.z ], [ %i.do, %.thread1652 ], [ %i.ck, %bb.t ], [ %i.ck, %bb.s ] ; 2 uses
  %i.gh = phi i1 [ %i.dn, %bb.y ], [ %i.dn, %bb.x ], [ %i.dn, %bb.af ], [ %i.dn, %bb.ah ], [ %i.dn, %bb.aj ], [ %i.dn, %bb.ai ], [ %i.dn, %bb.ag ], [ %i.dn, %bb.z ], [ %i.dn, %.thread1652 ], [ %i.cl, %bb.t ], [ %i.cl, %bb.s ]
  %.014321650 = phi i8 [ %.0143216491658, %bb.y ], [ %.0143216491658, %bb.x ], [ %.0143216491658, %bb.af ], [ %.0143216491658, %bb.ah ], [ %.0143216491658, %bb.aj ], [ %.0143216491658, %bb.ai ], [ %.0143216491658, %bb.ag ], [ %.0143216491658, %bb.z ], [ %.0143216491658, %.thread1652 ], [ %.014321648, %bb.t ], [ %.014321648, %bb.s ] ; 3 uses
  %.not1508 = icmp eq ptr %2, null
  br i1 %.not1508, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.thread1667
  %i.gi = load i32, ptr @proto_iscsi, align 4
  %i.gj = call ptr (ptr, i32, ptr, i32, i32, ptr, ...) @proto_tree_add_protocol_format(ptr noundef nonnull %2, i32 noundef %i.gi, ptr noundef %0, i32 noundef %3, i32 noundef -1, ptr noundef nonnull @.str.525, ptr noundef %i.f)
  %i.gk = load i32, ptr @ett_iscsi, align 4
  %i.gl = call ptr @proto_item_add_subtree(ptr noundef %i.gj, i32 noundef %i.gk)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.thread1667
  %.01431 = phi ptr [ %i.gl, %bb.ak ], [ null, %.thread1667 ] ; 254 uses
  %i.gm = load i32, ptr @hf_iscsi_Opcode, align 4
  %i.gn = call ptr @proto_tree_add_item(ptr noundef %.01431, i32 noundef %i.gm, ptr noundef %0, i32 noundef %3, i32 noundef 1, i32 noundef 0)
  %i.go = call ptr @try_val_to_str(i32 noundef %i.e, ptr noundef nonnull @iscsi_opcodes)
  %.not1509 = icmp eq ptr %i.go, null
  br i1 %.not1509, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gp = call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.gn, ptr noundef nonnull @ei_iscsi_opcode_invalid) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gq = icmp samesign ult i8 %4, 32
  br i1 %i.gq, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.gr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %3) ; 2 uses
  %i.gs = load i32, ptr @iscsi_protocol_version, align 4
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  switch i8 %4, label %bb.aq [
    i8 5, label %bb.ci
    i8 16, label %bb.ci
    i8 6, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gu = load i32, ptr @hf_iscsi_X, align 4
  %i.gv = zext i8 %i.gr to i64
  %i.gw = call ptr @proto_tree_add_boolean(ptr noundef %.01431, i32 noundef %i.gu, ptr noundef %0, i32 noundef %3, i32 noundef 1, i64 noundef %i.gv) ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  switch i8 %4, label %bb.as [
    i8 3, label %bb.ci
    i8 5, label %bb.ci
    i8 16, label %bb.ci
  ]

bb.as:                                            ; preds = %bb.ap, %bb.ar
  %i.gx = load i32, ptr @hf_iscsi_I, align 4
  %i.gy = zext i8 %i.gr to i64
  %i.gz = call ptr @proto_tree_add_boolean(ptr noundef %.01431, i32 noundef %i.gx, ptr noundef %0, i32 noundef %3, i32 noundef 1, i64 noundef %i.gy) ; 0 uses
  br label %bb.at
end_hunk_0
