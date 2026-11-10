Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-per?download=true
inline.NumInlined: 74
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@proto_tree_add_item
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn null_pointer_is_valid sspstrong uwtable
define void @dissect_per_not_decoded_yet(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %0, ptr noundef %1, ptr noundef @ei_per_undecoded, ptr noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef @.str, ptr noundef %3) ; 0 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.c, i32 noundef 25, ptr noundef @.str.1, ptr noundef %3)
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_open_type(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_per_open_type_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_per_open_type_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = icmp slt i32 %4, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @proto_registrar_get_nth(i32 noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.0156 = phi i32 [ %1, %bb.c ], [ %i.ai, %bb.i ] ; 4 uses
  %.0151 = phi i32 [ 0, %bb.c ], [ %i.ak, %bb.i ] ; 3 uses
  %.0143 = phi ptr [ null, %bb.c ], [ %.1, %bb.i ] ; 2 uses
  %i.g = load i32, ptr @hf_per_open_type_length, align 4
  %i.h = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %.0156, ptr noundef %2, ptr noundef %3, i32 noundef %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 5 uses
  %i.i = load i32, ptr %i.a, align 4              ; 4 uses
  %i.j = icmp ugt i32 %i.i, 536870911
  %i.k = shl i32 %i.i, 3                          ; 6 uses
  %i.l = icmp slt i32 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.h, %.0156
  %i.q = add i32 %i.h, 7
  %i.r = lshr i32 %i.q, 3
  %i.s = lshr i32 %.0156, 3
  %i.t = sub nsw i32 %i.r, %i.s
  %i.u = select i1 %i.p, i32 0, i32 %i.t
  %i.v = ashr i32 %.0156, 3
  %i.w = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.o, ptr noundef @ei_per_open_type_len, ptr noundef %0, i32 noundef %i.v, i32 noundef %i.u, ptr noundef @.str.170, i32 noundef %i.i)
  %i.x = getelementptr i8, ptr %2, i64 24
  store ptr %i.w, ptr %i.x, align 8
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = and i32 %i.h, 7
  %.not = icmp ne i32 %i.aa, 0
  %or.cond.not = select i1 %i.z, i1 %.not, i1 false
  %i.ab = and i32 %i.h, -8
  %i.ac = add i32 %i.ab, 8
  %.1157 = select i1 %or.cond.not, i32 %i.ac, i32 %i.h ; 3 uses
  %i.ad = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %.thread217

bb.g:                                             ; preds = %bb.f
  %i.af = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.1157, i32 noundef %i.k)
  %i.ag = icmp eq i32 %.0151, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = call ptr @tvb_new_composite()
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi ptr [ %i.ah, %bb.h ], [ %.0143, %bb.g ] ; 3 uses
  call void @tvb_composite_append(ptr noundef %.1, ptr noundef %i.af)
  %i.ai = add i32 %.1157, %i.k                    ; 2 uses
  %i.aj = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ak = add i32 %i.aj, %.0151                   ; 2 uses
  %.pre = load i8, ptr %i.b, align 1, !range !7
  %i.al = trunc nuw i8 %.pre to i1
  br i1 %i.al, label %bb.d, label %.thread217, !llvm.loop !11

.thread217:                                       ; preds = %bb.f, %bb.i
  %.2223 = phi ptr [ %.1, %bb.i ], [ %.0143, %bb.f ] ; 6 uses
  %.1152222 = phi i32 [ %i.ak, %bb.i ], [ %.0151, %bb.f ] ; 3 uses
  %.2158221 = phi i32 [ %i.ai, %bb.i ], [ %.1157, %bb.f ] ; 10 uses
  %i.am = phi i32 [ %i.aj, %bb.i ], [ %i.i, %bb.f ] ; 6 uses
  %.not168 = icmp eq i32 %.1152222, 0
  br i1 %.not168, label %.thread, label %bb.j

bb.j:                                             ; preds = %.thread217
  %.not169 = icmp eq i32 %i.am, 0
  br i1 %.not169, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.2158221, i32 noundef %i.k)
  call void @tvb_composite_append(ptr noundef %.2223, ptr noundef %i.an)
  %i.ao = load i32, ptr %i.a, align 4
  %i.ap = add i32 %i.ao, %.1152222
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.2153 = phi i32 [ %i.ap, %bb.k ], [ %.1152222, %bb.j ] ; 2 uses
  call void @tvb_composite_finalize(ptr noundef %.2223)
  %i.aq = getelementptr i8, ptr %2, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call ptr @add_new_data_source(ptr noundef %i.ar, ptr noundef %.2223, ptr noundef @.str.44) ; 0 uses
  %i.at = add i32 %.2158221, %i.k                 ; 3 uses
  %.not170 = icmp eq i32 %6, 0
  br i1 %.not170, label %bb.aa, label %bb.m

.thread:                                          ; preds = %.thread217
  %i.au = add i32 %.2158221, %i.k                 ; 4 uses
  %.not170181 = icmp eq i32 %6, 0
  br i1 %.not170181, label %bb.aa, label %.thread188

bb.m:                                             ; preds = %bb.l
  %i.av = icmp eq i32 %.2153, 0
  br i1 %i.av, label %.thread188.thread, label %bb.s

.thread188:                                       ; preds = %.thread
  %.not172 = icmp eq i32 %i.am, 0
  br i1 %.not172, label %.thread188.thread, label %bb.n

bb.n:                                             ; preds = %.thread188
  %i.aw = call i32 @tvb_captured_length(ptr noundef %0)
  %i.ax = ashr i32 %.2158221, 3                   ; 2 uses
  %i.ay = sub i32 %i.aw, %i.ax                    ; 5 uses
  %i.az = icmp slt i32 %i.ay, %i.am
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = shl i32 %i.ay, 3
  %i.bb = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.2158221, i32 noundef %i.ba)
  %i.bc = getelementptr i8, ptr %2, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call ptr (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @proto_tree_add_expert_format(ptr noundef %3, ptr noundef %i.bd, ptr noundef @ei_per_open_type_len, ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef @.str.171, i32 noundef %i.am, i32 noundef %i.ay)
  %i.bf = getelementptr i8, ptr %2, i64 24
  store ptr %i.be, ptr %i.bf, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bg = shl i32 %i.am, 3
  %i.bh = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.2158221, i32 noundef %i.bg)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1149 = phi i32 [ %i.ay, %bb.o ], [ %i.am, %bb.p ] ; 2 uses
  %.0144 = phi ptr [ %i.bb, %bb.o ], [ %i.bh, %bb.p ] ; 3 uses
  %i.bi = and i32 %.2158221, 7
  %.not173 = icmp eq i32 %i.bi, 0
  br i1 %.not173, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr i8, ptr %2, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call ptr @add_new_data_source(ptr noundef %i.bk, ptr noundef %.0144, ptr noundef @.str.31) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %bb.q, %bb.r
  %.0147184195 = phi i32 [ %.2158221, %bb.q ], [ %.2158221, %bb.r ], [ 0, %bb.m ] ; 2 uses
  %.3186193 = phi ptr [ %0, %bb.q ], [ %0, %bb.r ], [ %.2223, %bb.m ] ; 2 uses
  %i.bm = phi i32 [ %i.au, %bb.q ], [ %i.au, %bb.r ], [ %i.at, %bb.m ] ; 2 uses
  %.2150 = phi i32 [ %.1149, %bb.q ], [ %.1149, %bb.r ], [ %.2153, %bb.m ] ; 6 uses
  %.1145 = phi ptr [ %.0144, %bb.q ], [ %.0144, %bb.r ], [ %.2223, %bb.m ] ; 5 uses
  %.not174 = icmp eq ptr %i.e, null
  br i1 %.not174, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr i8, ptr %i.e, i64 16
  %i.bo = load i32, ptr %i.bn, align 8            ; 3 uses
  switch i32 %i.bo, label %bb.y [
    i32 3, label %7
    i32 4, label %7
    i32 5, label %7
    i32 6, label %7
    i32 7, label %7
    i32 35, label %7
    i32 8, label %7
    i32 9, label %7
    i32 10, label %7
    i32 11, label %7
    i32 12, label %7
    i32 13, label %7
    i32 14, label %7
    i32 15, label %7
    i32 16, label %7
    i32 17, label %7
    i32 18, label %7
    i32 19, label %7
  ]

7:                                                ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  switch i32 %i.bo, label %bb.u [
    i32 3, label %bb.v
    i32 4, label %bb.v
    i32 5, label %bb.v
    i32 6, label %bb.v
    i32 7, label %bb.v
    i32 35, label %bb.v
  ]

bb.u:                                             ; preds = %7
  %switch = icmp samesign ult i32 %i.bo, 12
  br i1 %switch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %7, %7, %7, %7, %7, %7
  %i.bp = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %4, ptr noundef %.1145, i32 noundef 0, i32 noundef %.2150, i32 noundef %.2150)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bq = call ptr @proto_tree_add_int(ptr noundef %3, i32 noundef %4, ptr noundef %.1145, i32 noundef 0, i32 noundef %.2150, i32 noundef %.2150)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi ptr [ %i.bq, %bb.w ], [ %i.bp, %bb.v ] ; 2 uses
  %8 = getelementptr i8, ptr %2, i64 24
  store ptr %.sink, ptr %8, align 8
  %i.br = getelementptr i8, ptr %2, i64 24
  %i.bs = icmp eq i32 %.2150, 1
  %i.bt = select i1 %i.bs, ptr @.str.45, ptr @.str.46
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.sink, ptr noundef nonnull %i.bt)
  %.pre210 = load ptr, ptr %i.br, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.bu = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef %.1145, i32 noundef 0, i32 noundef %.2150, i32 noundef 0) ; 2 uses
  %i.bv = getelementptr i8, ptr %2, i64 24
  store ptr %i.bu, ptr %i.bv, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bw = phi ptr [ %i.bu, %bb.y ], [ %.pre210, %bb.x ]
  %i.bx = load i32, ptr @ett_per_open_type, align 4
  %i.by = call ptr @proto_item_add_subtree(ptr noundef %i.bw, i32 noundef %i.bx)
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.s, %bb.z, %bb.l
  %i.bz = phi i32 [ %i.bm, %bb.z ], [ %i.bm, %bb.s ], [ %i.at, %bb.l ], [ %i.au, %.thread ] ; 5 uses
  %.3187 = phi ptr [ %.3186193, %bb.z ], [ %.3186193, %bb.s ], [ %.2223, %bb.l ], [ %0, %.thread ]
  %.0147185 = phi i32 [ %.0147184195, %bb.z ], [ %.0147184195, %bb.s ], [ 0, %bb.l ], [ %.2158221, %.thread ]
  %.2146 = phi ptr [ %.1145, %bb.z ], [ %.1145, %bb.s ], [ null, %bb.l ], [ null, %.thread ]
  %.0 = phi ptr [ %i.by, %bb.z ], [ %3, %bb.s ], [ %3, %bb.l ], [ %3, %.thread ]
  %.not175 = icmp eq ptr %5, null
  br i1 %.not175, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %trunc = trunc nuw i32 %6 to i1
  br i1 %trunc, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ca = call i32 %5(ptr noundef %.3187, i32 noundef %.0147185, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 0 uses
  br label %.thread188.thread

bb.ad:                                            ; preds = %bb.ab
  %i.cb = getelementptr i8, ptr %2, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %2, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i32 %5(ptr noundef %.2146, ptr noundef %i.cc, ptr noundef %.0, ptr noundef %i.ce) ; 0 uses
  br label %.thread188.thread

bb.ae:                                            ; preds = %bb.aa
  %i.cg = getelementptr i8, ptr %2, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = ashr i32 %1, 3                          ; 2 uses
  %i.cj = icmp eq i32 %i.bz, %1
  %i.ck = add i32 %i.bz, 7
  %i.cl = ashr i32 %i.ck, 3
  %i.cm = sub nsw i32 %i.cl, %i.ci
  %i.cn = select i1 %i.cj, i32 0, i32 %i.cm
  %i.co = call ptr @proto_tree_add_expert(ptr noundef %3, ptr noundef %i.ch, ptr noundef @ei_per_open_type, ptr noundef %0, i32 noundef %i.ci, i32 noundef %i.cn)
  %i.cp = getelementptr i8, ptr %2, i64 24
  store ptr %i.co, ptr %i.cp, align 8
  br label %.thread188.thread

.thread188.thread:                                ; preds = %bb.m, %bb.ae, %bb.ad, %bb.ac, %.thread188
  %i.cq = phi i32 [ %i.bz, %bb.ae ], [ %i.bz, %bb.ad ], [ %i.bz, %bb.ac ], [ %i.au, %.thread188 ], [ %i.at, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.cq
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_open_type_pdu_new(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @dissect_per_open_type_internal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %5, null                    ; 10 uses
  %.not203 = icmp eq ptr %6, null                 ; 4 uses
  br i1 %.not203, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %6, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.biased = add i32 %1, 7                        ; 2 uses
  %.0188 = and i32 %.biased, -8                   ; 2 uses
  %i.d = lshr i32 %.biased, 3
  %i.e = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.d) ; 2 uses
  %i.f = add i32 %.0188, 8                        ; 12 uses
  %i.g = zext i8 %i.e to i32                      ; 5 uses
  %i.h = icmp sgt i8 %i.e, -1
  br i1 %i.h, label %bb.bl, label %bb.bp

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 416
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noalias dereferenceable_or_null(322) ptr @wmem_alloc(ptr noundef %i.l, i64 noundef 322) #14 ; 22 uses
  %i.n = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %i.m, i64 noundef 322, i32 noundef 2, i64 noundef 322, ptr noundef @.str.2) ; 18 uses
  %i.o = and i32 %1, 7                            ; 10 uses
  %.not307 = icmp eq i32 %i.o, 0
  br i1 %.not307, label %.preheader.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.preheader
  store i8 46, ptr %i.m, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.preheader
  %.2.peel = phi i32 [ 1, %bb.f ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %exitcond.peel.not = icmp eq i32 %i.o, 1
  br i1 %exitcond.peel.not, label %.preheader.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.af, %bb.ae, %bb.ac, %bb.y, %bb.w, %bb.u
  %.2.lcssa = phi i32 [ %.2, %bb.u ], [ %.2.1, %bb.w ], [ %.2.2, %bb.y ], [ %.2.3, %bb.ac ], [ %.2.4, %bb.ae ], [ %i.ch, %bb.af ] ; 4 uses
  %i.q = and i32 %1, 3
  %.not205.peel = icmp eq i32 %i.q, 0
  %i.r = icmp slt i32 %.2.lcssa, %i.n
  %or.cond213.peel = select i1 %.not205.peel, i1 %i.r, i1 false
  br i1 %or.cond213.peel, label %bb.h, label %.preheader.thread

bb.h:                                             ; preds = %.preheader
  %i.s = add nsw i32 %.2.lcssa, 1
  %i.t = sext i32 %.2.lcssa to i64
  %i.u = getelementptr i8, ptr %i.m, i64 %i.t
  store i8 32, ptr %i.u, align 1
  br label %.preheader.thread

.preheader.thread:                                ; preds = %bb.g, %bb.e, %.preheader, %bb.h
  %.0181.lcssa369 = phi i32 [ %i.o, %.preheader ], [ %i.o, %bb.h ], [ 1, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %.4.peel = phi i32 [ %.2.lcssa, %.preheader ], [ %i.s, %bb.h ], [ %.2.peel, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.v = getelementptr i8, ptr %2, i64 24         ; 3 uses
  %i.w = add nuw nsw i32 %.0181.lcssa369, 1       ; 2 uses
  %i.x = lshr i32 %1, 3
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.x)
  %i.z = zext i8 %i.y to i32
  %i.aa = xor i32 %i.o, 7
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1                   ; 4 uses
  store ptr null, ptr %i.v, align 8
  %.0.i.peel = add i32 %1, 1                      ; 2 uses
  %i.ad = icmp slt i32 %.4.peel, %i.n
  %.375 = select i1 %i.ac, i32 16, i32 8          ; 3 uses
  %.376 = select i1 %i.ac, i32 2, i32 0           ; 3 uses
  br i1 %i.ad, label %.peel.next.sink.split, label %.peel.next

.peel.next.sink.split:                            ; preds = %.preheader.thread
  %. = select i1 %i.ac, i8 49, i8 48
  %i.ae = add nsw i32 %.4.peel, 1
  %i.af = sext i32 %.4.peel to i64
  %i.ag = getelementptr i8, ptr %i.m, i64 %i.af
  store i8 %., ptr %i.ag, align 1
  br label %.peel.next

.peel.next:                                       ; preds = %.preheader.thread, %.peel.next.sink.split
  %.7.peel = phi i32 [ %.4.peel, %.preheader.thread ], [ %i.ae, %.peel.next.sink.split ] ; 4 uses
  %i.ah = and i32 %i.w, 3
  %.not205.peel312 = icmp eq i32 %i.ah, 0
  %i.ai = icmp slt i32 %.7.peel, %i.n
  %or.cond213.peel314 = select i1 %.not205.peel312, i1 %i.ai, i1 false
  br i1 %or.cond213.peel314, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.peel.next
  %i.aj = add nsw i32 %.7.peel, 1
  %i.ak = sext i32 %.7.peel to i64
  %i.al = getelementptr i8, ptr %i.m, i64 %i.ak
  store i8 32, ptr %i.al, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.peel.next
  %.4.peel315 = phi i32 [ %.7.peel, %.peel.next ], [ %i.aj, %bb.i ] ; 4 uses
  %i.am = and i32 %i.w, 7
  %.not206.peel316 = icmp eq i32 %i.am, 0
  %i.an = icmp slt i32 %.4.peel315, %i.n
  %or.cond216.peel318 = select i1 %.not206.peel316, i1 %i.an, i1 false
  br i1 %or.cond216.peel318, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = add nsw i32 %.4.peel315, 1
  %i.ap = sext i32 %.4.peel315 to i64
  %i.aq = getelementptr i8, ptr %i.m, i64 %i.ap
  store i8 32, ptr %i.aq, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.5.peel319 = phi i32 [ %.4.peel315, %bb.j ], [ %i.ao, %bb.k ] ; 8 uses
  %i.ar = add nuw nsw i32 %.0181.lcssa369, 2
  %i.as = lshr i32 %.0.i.peel, 3
  %i.at = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.as)
  %i.au = zext i8 %i.at to i32
end_hunk_0
begin_hunk_1_@dissect_per_octet_string:bb.a

bb.j:                                             ; preds = %bb.h
  %i.w = icmp eq i32 %spec.store.select, %6       ; 2 uses
  %i.x = icmp slt i32 %6, 3
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.y = lshr i32 %.0154, 3
  %i.z = shl i32 %6, 3                            ; 2 uses
  %i.aa = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.0154, i32 noundef %i.z) ; 2 uses
  %i.ab = and i32 %.0154, 7
  %.not172 = icmp eq i32 %i.ab, 0
  br i1 %.not172, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call ptr @add_new_data_source(ptr noundef %i.ad, ptr noundef %i.aa, ptr noundef @.str.31) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = add i32 %.0154, %i.z
  br label %bb.ah

bb.n:                                             ; preds = %bb.j
  %i.ag = icmp slt i32 %spec.store.select, 65536
  %or.cond3 = and i1 %i.w, %i.ag
  br i1 %or.cond3, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %2, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !range !7, !noundef !8
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = and i32 %.0154, 7
  %.not170 = icmp ne i32 %i.ak, 0
  %or.cond178.not = and i1 %.not170, %i.aj
  %i.al = and i32 %.0154, -8
  %i.am = add i32 %i.al, 8
  %.1155 = select i1 %or.cond178.not, i32 %i.am, i32 %.0154 ; 4 uses
  %i.an = lshr i32 %.1155, 3
  %i.ao = shl i32 %6, 3                           ; 2 uses
  %i.ap = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.1155, i32 noundef %i.ao) ; 2 uses
  %i.aq = and i32 %.1155, 7
  %.not171 = icmp eq i32 %i.aq, 0
  br i1 %.not171, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr i8, ptr %2, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call ptr @add_new_data_source(ptr noundef %i.as, ptr noundef %i.ap, ptr noundef @.str.31) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.au = add i32 %.1155, %i.ao
  br label %bb.ah

bb.r:                                             ; preds = %bb.n
  %i.av = icmp sgt i32 %6, 0
  br i1 %i.av, label %bb.s, label %.thread206

bb.s:                                             ; preds = %bb.r
  %i.aw = load i32, ptr @hf_per_octet_string_length, align 4
  %i.ax = call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %.0154, ptr noundef %2, ptr noundef %3, i32 noundef %i.aw, i32 noundef %spec.store.select, i32 noundef %6, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 4 uses
  %i.ay = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %proto_item_set_hidden.exit183, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr i8, ptr %2, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i181 = icmp eq ptr %i.bb, null
  br i1 %.not.i181, label %proto_item_set_hidden.exit183, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not5.i182 = icmp eq ptr %i.bd, null
  br i1 %.not5.i182, label %proto_item_set_hidden.exit183, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr i8, ptr %i.bd, i64 28     ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = or i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4
  br label %proto_item_set_hidden.exit183

.thread206:                                       ; preds = %proto_item_set_hidden.exit, %bb.r, %bb.z
  %.2156 = phi i32 [ %i.bz, %bb.z ], [ %.0154, %bb.r ], [ %i.h, %proto_item_set_hidden.exit ]
  %.0147 = phi i32 [ %i.ca, %bb.z ], [ 0, %bb.r ], [ 0, %proto_item_set_hidden.exit ]
  %.0 = phi ptr [ %.2, %bb.z ], [ null, %bb.r ], [ null, %proto_item_set_hidden.exit ]
  %i.bh = load i32, ptr @hf_per_octet_string_length, align 4
  %i.bi = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %.2156, ptr noundef %2, ptr noundef %3, i32 noundef %i.bh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %proto_item_set_hidden.exit183

proto_item_set_hidden.exit183:                    ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %.thread206
  %.3157 = phi i32 [ %i.bi, %.thread206 ], [ %i.ax, %bb.v ], [ %i.ax, %bb.u ], [ %i.ax, %bb.t ], [ %i.ax, %bb.s ] ; 5 uses
  %.1148 = phi i32 [ %.0147, %.thread206 ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ] ; 4 uses
  %.1 = phi ptr [ %.0, %.thread206 ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.s ] ; 6 uses
  %i.bj = load i32, ptr %i.a, align 4             ; 8 uses
  %i.bk = icmp ne i32 %i.bj, 0                    ; 2 uses
  %i.bl = icmp ne i32 %.1148, 0                   ; 3 uses
  %or.cond5 = select i1 %i.bk, i1 true, i1 %i.bl
  br i1 %or.cond5, label %bb.w, label %bb.af

bb.w:                                             ; preds = %proto_item_set_hidden.exit183
  %i.bm = getelementptr i8, ptr %2, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !range !7, !noundef !8
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = and i32 %.3157, 7
  %.not = icmp ne i32 %i.bp, 0
  %or.cond180.not = select i1 %i.bo, i1 %.not, i1 false
  %i.bq = and i32 %.3157, -8
  %i.br = add i32 %i.bq, 8
  %.4158 = select i1 %or.cond180.not, i32 %i.br, i32 %.3157 ; 8 uses
  %i.bs = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bu = shl i32 %i.bj, 3
  %i.bv = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.4158, i32 noundef %i.bu)
  br i1 %i.bl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = call ptr @tvb_new_composite()
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2 = phi ptr [ %i.bw, %bb.y ], [ %.1, %bb.x ]  ; 2 uses
  call void @tvb_composite_append(ptr noundef %.2, ptr noundef %i.bv)
  %i.bx = load i32, ptr %i.a, align 4             ; 2 uses
  %i.by = shl i32 %i.bx, 3
  %i.bz = add i32 %i.by, %.4158
  %i.ca = add i32 %i.bx, %.1148
  br label %.thread206

bb.aa:                                            ; preds = %bb.w
  br i1 %i.bl, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.bk, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cb = shl i32 %i.bj, 3
  %i.cc = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.4158, i32 noundef %i.cb)
  call void @tvb_composite_append(ptr noundef %.1, ptr noundef %i.cc)
  %i.cd = load i32, ptr %i.a, align 4
  %i.ce = add i32 %i.cd, %.1148
  br label %bb.ag

bb.ad:                                            ; preds = %bb.aa
  %i.cf = shl i32 %i.bj, 3
  %i.cg = call ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %.4158, i32 noundef %i.cf) ; 3 uses
  %i.ch = and i32 %.4158, 7
  %.not167 = icmp eq i32 %i.ch, 0
  br i1 %.not167, label %.thread210, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = getelementptr i8, ptr %2, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call ptr @add_new_data_source(ptr noundef %i.cj, ptr noundef %i.cg, ptr noundef @.str.31) ; 0 uses
  br label %.thread210

bb.af:                                            ; preds = %proto_item_set_hidden.exit183
  %i.cl = lshr i32 %.3157, 3
  br label %.thread210

bb.ag:                                            ; preds = %bb.ab, %bb.ac
  %.2149 = phi i32 [ %i.ce, %bb.ac ], [ %.1148, %bb.ab ]
  %.2149.fr = freeze i32 %.2149                   ; 2 uses
  call void @tvb_composite_finalize(ptr noundef %.1)
  %i.cm = getelementptr i8, ptr %2, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call ptr @add_new_data_source(ptr noundef %i.cn, ptr noundef %.1, ptr noundef @.str.44) ; 0 uses
  %.not169 = icmp eq i32 %.2149.fr, 0
  %i.cp = load i32, ptr %i.a, align 4             ; 2 uses
  %spec.select = select i1 %.not169, i32 %i.cp, i32 %.2149.fr
  br label %.thread210

.thread210:                                       ; preds = %bb.af, %bb.ad, %bb.ae, %bb.ag
  %i.cq = phi i32 [ %i.cp, %bb.ag ], [ %i.bj, %bb.ae ], [ %i.bj, %bb.ad ], [ 0, %bb.af ]
  %.3221 = phi ptr [ %.1, %bb.ag ], [ %i.cg, %bb.ae ], [ %i.cg, %bb.ad ], [ %.1, %bb.af ]
  %.0152219 = phi i32 [ 0, %bb.ag ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ %i.cl, %bb.af ]
  %.5217 = phi i32 [ %.4158, %bb.ag ], [ %.4158, %bb.ae ], [ %.4158, %bb.ad ], [ %.3157, %bb.af ]
  %i.cr = phi i32 [ %spec.select, %bb.ag ], [ %i.bj, %bb.ae ], [ %i.bj, %bb.ad ], [ 0, %bb.af ]
  %i.cs = shl i32 %i.cq, 3
  %i.ct = add i32 %.5217, %i.cs
  br label %bb.ah

bb.ah:                                            ; preds = %bb.m, %.thread210, %bb.q, %bb.i
  %.6 = phi i32 [ %.0154, %bb.i ], [ %i.af, %bb.m ], [ %i.au, %bb.q ], [ %i.ct, %.thread210 ]
  %.1153 = phi i32 [ %i.v, %bb.i ], [ %i.y, %bb.m ], [ %i.an, %bb.q ], [ %.0152219, %.thread210 ] ; 2 uses
  %.0151 = phi i32 [ 0, %bb.i ], [ %6, %bb.m ], [ %6, %bb.q ], [ %i.cr, %.thread210 ] ; 8 uses
  %.4 = phi ptr [ null, %bb.i ], [ %i.aa, %bb.m ], [ %i.ap, %bb.q ], [ %.3221, %.thread210 ] ; 6 uses
  %.not173 = icmp eq ptr %i.f, null
  br i1 %.not173, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = getelementptr i8, ptr %i.f, i64 16
  %i.cv = load i32, ptr %i.cu, align 8            ; 3 uses
  switch i32 %i.cv, label %bb.an [
    i32 3, label %9
    i32 4, label %9
    i32 5, label %9
    i32 6, label %9
    i32 7, label %9
    i32 35, label %9
    i32 8, label %9
    i32 9, label %9
    i32 10, label %9
    i32 11, label %9
    i32 12, label %9
    i32 13, label %9
    i32 14, label %9
    i32 15, label %9
    i32 16, label %9
    i32 17, label %9
    i32 18, label %9
    i32 19, label %9
  ]

9:                                                ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  switch i32 %i.cv, label %bb.aj [
    i32 3, label %bb.ak
    i32 4, label %bb.ak
    i32 5, label %bb.ak
    i32 6, label %bb.ak
    i32 7, label %bb.ak
    i32 35, label %bb.ak
  ]

bb.aj:                                            ; preds = %9
  %switch = icmp samesign ult i32 %i.cv, 12
  br i1 %switch, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %9, %9, %9, %9, %9, %9
  %i.cw = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %4, ptr noundef %.4, i32 noundef 0, i32 noundef %.0151, i32 noundef %.0151)
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cx = call ptr @proto_tree_add_int(ptr noundef %3, i32 noundef %4, ptr noundef %.4, i32 noundef 0, i32 noundef %.0151, i32 noundef %.0151)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink = phi ptr [ %i.cx, %bb.al ], [ %i.cw, %bb.ak ] ; 2 uses
  %10 = getelementptr i8, ptr %2, i64 24
  store ptr %.sink, ptr %10, align 8
  %i.cy = icmp eq i32 %.0151, 1
  %i.cz = select i1 %i.cy, ptr @.str.45, ptr @.str.46
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %.sink, ptr noundef nonnull %i.cz)
  br label %bb.ap

bb.an:                                            ; preds = %bb.ai
  %.not174 = icmp eq ptr %.4, null
  %i.da = getelementptr i8, ptr %2, i64 24        ; 2 uses
  br i1 %.not174, label %.thread223, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.db = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef nonnull %.4, i32 noundef 0, i32 noundef %.0151, i32 noundef 0)
  store ptr %i.db, ptr %i.da, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.ao, %bb.ah
  %.not175 = icmp eq ptr %8, null
  br i1 %.not175, label %bb.as, label %bb.aq

.thread223:                                       ; preds = %bb.an
  %i.dc = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %.1153, i32 noundef %.0151, i32 noundef 0)
  store ptr %i.dc, ptr %i.da, align 8
  %.not175224 = icmp eq ptr %8, null
  br i1 %.not175224, label %bb.as, label %.thread225

bb.aq:                                            ; preds = %bb.ap
  %.not176 = icmp eq ptr %.4, null
  br i1 %.not176, label %.thread225, label %bb.ar

.thread225:                                       ; preds = %.thread223, %bb.aq
  %i.dd = call ptr @tvb_new_subset_length(ptr noundef %0, i32 noundef %.1153, i32 noundef %.0151)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread225
  %i.de = phi ptr [ %i.dd, %.thread225 ], [ %.4, %bb.aq ]
  store ptr %i.de, ptr %8, align 8
  br label %bb.as

bb.as:                                            ; preds = %.thread223, %bb.ar, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.6
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_constrained_sequence_of(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br i1 %9, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.d = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, ptr noundef nonnull %i.b) ; 2 uses
  %i.e = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.j, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.j, i64 28       ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.n = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.f, label %.thread

.thread:                                          ; preds = %proto_item_set_hidden.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.g

bb.f:                                             ; preds = %proto_item_set_hidden.exit
  %i.p = load i32, ptr @hf_per_sequence_of_length, align 4
  %i.q = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef %3, i32 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %proto_item_set_hidden.exit80

bb.g:                                             ; preds = %.thread, %bb.a
  %.1 = phi i32 [ %i.d, %.thread ], [ %1, %bb.a ] ; 3 uses
  %i.r = icmp eq i32 %7, %8
  %i.s = icmp slt i32 %7, 65536
  %or.cond = and i1 %i.s, %i.r
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %7, ptr %i.a, align 4
  br label %proto_item_set_hidden.exit80

bb.i:                                             ; preds = %bb.g
  %i.t = icmp sgt i32 %8, 65535
  %i.u = icmp eq i32 %8, -1
  %or.cond3 = or i1 %i.t, %i.u
  %i.v = load i32, ptr @hf_per_sequence_of_length, align 4 ; 2 uses
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 @dissect_per_length_determinant(ptr noundef %0, i32 noundef %.1, ptr noundef %2, ptr noundef %3, i32 noundef %i.v, ptr noundef nonnull %i.a, ptr noundef null)
  br label %proto_item_set_hidden.exit80

bb.k:                                             ; preds = %bb.i
  %i.x = call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %.1, ptr noundef %2, ptr noundef %3, i32 noundef %i.v, i32 noundef %7, i32 noundef %8, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 4 uses
  %i.y = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %proto_item_set_hidden.exit80, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %2, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i78 = icmp eq ptr %i.ab, null
  br i1 %.not.i78, label %proto_item_set_hidden.exit80, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not5.i79 = icmp eq ptr %i.ad, null
  br i1 %.not5.i79, label %proto_item_set_hidden.exit80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %i.ad, i64 28     ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = or i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4
  br label %proto_item_set_hidden.exit80

proto_item_set_hidden.exit80:                     ; preds = %bb.n, %bb.m, %bb.l, %bb.f, %bb.k, %bb.j, %bb.h
  %.2 = phi i32 [ %.1, %bb.h ], [ %i.w, %bb.j ], [ %i.x, %bb.k ], [ %i.q, %bb.f ], [ %i.x, %bb.l ], [ %i.x, %bb.m ], [ %i.x, %bb.n ] ; 4 uses
  %i.ah = call ptr @proto_registrar_get_nth(i32 noundef %4)
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = lshr i32 %.2, 3                         ; 2 uses
  switch i32 %i.aj, label %bb.p [
    i32 3, label %bb.o
    i32 4, label %bb.o
    i32 5, label %bb.o
    i32 6, label %bb.o
    i32 7, label %bb.o
    i32 35, label %bb.o
    i32 8, label %bb.o
    i32 9, label %bb.o
    i32 10, label %bb.o
    i32 11, label %bb.o
  ]

bb.o:                                             ; preds = %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80, %proto_item_set_hidden.exit80
  %i.al = load i32, ptr %i.a, align 4             ; 3 uses
  %i.am = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.ak, i32 noundef 0, i32 noundef %i.al) ; 2 uses
  %i.an = icmp eq i32 %i.al, 1
  %i.ao = select i1 %i.an, ptr @.str.9, ptr @.str.10
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.am, ptr noundef nonnull %i.ao)
  br label %bb.q

bb.p:                                             ; preds = %proto_item_set_hidden.exit80
  %i.ap = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.ak, i32 noundef 0, i32 noundef 0)
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = phi i32 [ %i.al, %bb.o ], [ %.pre, %bb.p ] ; 5 uses
  %.071 = phi ptr [ %i.am, %bb.o ], [ %i.ap, %bb.p ] ; 4 uses
  %i.ar = call ptr @proto_item_add_subtree(ptr noundef %.071, i32 noundef %5)
  %.not.i81 = icmp ne i32 %7, -1
  %i.as = icmp ult i32 %i.aq, %7
  %or.cond.i = and i1 %.not.i81, %i.as
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr i8, ptr %2, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.au, ptr noundef %.071, ptr noundef @ei_per_size_constraint_too_few, ptr noundef @.str.174, i32 noundef %i.aq, i32 noundef %7, i32 noundef %8) ; 0 uses
  br label %per_check_items.exit

bb.s:                                             ; preds = %bb.q
  %i.aw = icmp ugt i32 %i.aq, %8
  br i1 %i.aw, label %bb.t, label %per_check_items.exit

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr i8, ptr %2, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.ay, ptr noundef %.071, ptr noundef @ei_per_size_constraint_too_many, ptr noundef @.str.175, i32 noundef %i.aq, i32 noundef %7, i32 noundef %8) ; 0 uses
  br label %per_check_items.exit

per_check_items.exit:                             ; preds = %bb.r, %bb.s, %bb.t
  %i.ba = getelementptr i8, ptr %6, i64 16
end_hunk_1
begin_hunk_2_@dissect_per_constrained_integer_64b:bb.a
  br i1 %or.cond290.5, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph347.5
  %i.et = add nsw i32 %.9.4, 1
  %i.eu = sext i32 %.9.4 to i64
  %i.ev = getelementptr i8, ptr %i.bb, i64 %i.eu
  store i8 32, ptr %i.ev, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph347.5
  %.8.5 = phi i32 [ %.9.4, %.lr.ph347.5 ], [ %i.et, %bb.av ] ; 4 uses
  %i.ew = icmp slt i32 %.8.5, 640
  br i1 %i.ew, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ex = add nsw i32 %.8.5, 1
  %i.ey = sext i32 %.8.5 to i64
  %i.ez = getelementptr i8, ptr %i.bb, i64 %i.ey
  store i8 46, ptr %i.ez, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.9.5 = phi i32 [ %i.ex, %bb.ax ], [ %.8.5, %bb.aw ] ; 5 uses
  %i.fa = add nuw i32 %.1241.lcssa, 6             ; 2 uses
  %i.fb = and i32 %i.fa, 7
  %.not274.5 = icmp eq i32 %i.fb, 0
  br i1 %.not274.5, label %._crit_edge348, label %.lr.ph347.6

.lr.ph347.6:                                      ; preds = %bb.ay
  %i.fc = and i32 %i.fa, 3
  %.not276.6 = icmp eq i32 %i.fc, 0
  %i.fd = icmp slt i32 %.9.5, 640
  %or.cond290.6 = select i1 %.not276.6, i1 %i.fd, i1 false
  br i1 %or.cond290.6, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.lr.ph347.6
  %i.fe = add nsw i32 %.9.5, 1
  %i.ff = sext i32 %.9.5 to i64
  %i.fg = getelementptr i8, ptr %i.bb, i64 %i.ff
  store i8 32, ptr %i.fg, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.lr.ph347.6
  %.8.6 = phi i32 [ %.9.5, %.lr.ph347.6 ], [ %i.fe, %bb.az ] ; 4 uses
  %i.fh = icmp slt i32 %.8.6, 640
  br i1 %i.fh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fi = add nsw i32 %.8.6, 1
  %i.fj = sext i32 %.8.6 to i64
  %i.fk = getelementptr i8, ptr %i.bb, i64 %i.fj
  store i8 46, ptr %i.fk, align 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.9.6 = phi i32 [ %i.fi, %bb.bb ], [ %.8.6, %bb.ba ] ; 5 uses
  %i.fl = add nuw i32 %.1241.lcssa, 7             ; 2 uses
  %i.fm = and i32 %i.fl, 7
  %.not274.6 = icmp eq i32 %i.fm, 0
  br i1 %.not274.6, label %._crit_edge348, label %.lr.ph347.7

.lr.ph347.7:                                      ; preds = %bb.bc
  %i.fn = and i32 %i.fl, 3
  %.not276.7 = icmp eq i32 %i.fn, 0
  %i.fo = icmp slt i32 %.9.6, 640
  %or.cond290.7 = select i1 %.not276.7, i1 %i.fo, i1 false
  br i1 %or.cond290.7, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph347.7
  %i.fp = add nsw i32 %.9.6, 1
  %i.fq = sext i32 %.9.6 to i64
  %i.fr = getelementptr i8, ptr %i.bb, i64 %i.fq
  store i8 32, ptr %i.fr, align 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph347.7
  %.8.7 = phi i32 [ %.9.6, %.lr.ph347.7 ], [ %i.fp, %bb.bd ] ; 4 uses
  %i.fs = icmp slt i32 %.8.7, 640
  br i1 %i.fs, label %bb.bf, label %._crit_edge348

bb.bf:                                            ; preds = %bb.be
  %i.ft = add nsw i32 %.8.7, 1
  %i.fu = sext i32 %.8.7 to i64
  %i.fv = getelementptr i8, ptr %i.bb, i64 %i.fu
  store i8 46, ptr %i.fv, align 1
  br label %._crit_edge348

._crit_edge348:                                   ; preds = %bb.ae, %bb.ai, %bb.am, %bb.aq, %bb.au, %bb.ay, %bb.bc, %bb.bf, %bb.be, %.preheader
  %.7.lcssa = phi i32 [ %.3.lcssa, %.preheader ], [ %.9, %bb.ae ], [ %.9.1, %bb.ai ], [ %.9.2, %bb.am ], [ %.9.3, %bb.aq ], [ %.9.4, %bb.au ], [ %.9.5, %bb.ay ], [ %.9.6, %bb.bc ], [ %i.ft, %bb.bf ], [ %.8.7, %bb.be ]
  %i.fw = sext i32 %.7.lcssa to i64
  %i.fx = getelementptr i8, ptr %i.bb, i64 %i.fw
  store i8 0, ptr %i.fx, align 1
  %i.fy = sub i32 %.2260.lcssa, %i.aw
  %i.fz = lshr i32 %i.fy, 3                       ; 5 uses
  %i.ga = add i64 %.0250.lcssa, %5                ; 4 uses
  %i.gb = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %._crit_edge348
  %i.gd = load i32, ptr @hf_per_internal_range, align 4
  %i.ge = call ptr @proto_tree_add_uint64(ptr noundef %3, i32 noundef %i.gd, ptr noundef %0, i32 noundef %i.fz, i32 noundef %.0238.lcssa, i64 noundef %.0254298302370378) ; 0 uses
  %i.gf = load i32, ptr @hf_per_internal_num_bits, align 4
  %i.gg = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.gf, ptr noundef %0, i32 noundef %i.fz, i32 noundef %.0238.lcssa, i32 noundef %i.aw) ; 0 uses
  %i.gh = load i32, ptr @hf_per_internal_value, align 4
  %i.gi = call ptr (ptr, i32, ptr, i32, i32, i64, ptr, ...) @proto_tree_add_uint64_format_value(ptr noundef %3, i32 noundef %i.gh, ptr noundef %0, i32 noundef %i.fz, i32 noundef %.0238.lcssa, i64 noundef %i.ga, ptr noundef @.str.29, ptr noundef %i.bb, i64 noundef %i.ga) ; 0 uses
  br label %bb.bp

bb.bh:                                            ; preds = %bb.o
  %i.gj = icmp eq i64 %.0254, 256
  br i1 %i.gj, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %.1259.biased317 = add i32 %.1259, 7            ; 2 uses
  %.3261 = and i32 %.1259.biased317, -8
  %i.gk = lshr i32 %.1259.biased317, 3
  %i.gl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gk)
  %i.gm = zext i8 %i.gl to i64
  %i.gn = add i32 %.3261, 8                       ; 2 uses
  %i.go = lshr exact i32 %i.gn, 3
  %i.gp = add nsw i32 %i.go, -1
  %i.gq = add i64 %5, %i.gm
  br label %bb.bp

bb.bj:                                            ; preds = %bb.bh
  %i.gr = icmp ult i64 %.0254, 65537
  br i1 %i.gr, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %.1259.biased = add i32 %.1259, 7               ; 2 uses
  %.4262 = and i32 %.1259.biased, -8
  %i.gs = lshr i32 %.1259.biased, 3
  %i.gt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gs)
  %i.gu = zext i8 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 8
  %i.gw = add i32 %.1259, 15
  %i.gx = lshr i32 %i.gw, 3
  %i.gy = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.gx)
  %i.gz = zext i8 %i.gy to i64
  %i.ha = add i32 %.4262, 16                      ; 2 uses
  %i.hb = lshr exact i32 %i.ha, 3
  %i.hc = add nsw i32 %i.hb, -2
  %i.hd = add i64 %5, %i.gz
  %i.he = add i64 %i.hd, %i.gv
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %i.hf = icmp ugt i64 %.0254, 4294967295
  %spec.select316 = select i1 %i.hf, i32 3, i32 2
  br label %.thread312

.thread312:                                       ; preds = %bb.bl, %.thread303
  %.0254298301305308311314 = phi i64 [ %.0254, %bb.bl ], [ -1, %.thread303 ]
  %i.hg = phi i32 [ %spec.select316, %bb.bl ], [ 3, %.thread303 ] ; 3 uses
  %i.hh = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %.1259, i32 noundef %i.hg)
  %i.hi = zext i8 %i.hh to i32                    ; 3 uses
  %i.hj = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.bm, label %.thread312._crit_edge

bb.bm:                                            ; preds = %.thread312
  %i.hl = add nuw nsw i32 %i.hi, 1
  %i.hm = load i32, ptr @hf_per_const_int_len, align 4
  %i.hn = call ptr @proto_tree_add_bits_item(ptr noundef %3, i32 noundef %i.hm, ptr noundef %0, i32 noundef %.1259, i32 noundef %i.hg, i32 noundef 0)
  call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %i.hn, ptr noundef @.str.30, i32 noundef %i.hl, i64 noundef %.0254298301305308311314)
  br label %.thread312._crit_edge

.thread312._crit_edge:                            ; preds = %.thread312, %bb.bm
  %i.ho = add i32 %.1259, 7
  %.biased = add i32 %i.ho, %i.hg
  %.5263 = and i32 %.biased, -8
  br label %bb.bn

bb.bn:                                            ; preds = %.thread312._crit_edge, %bb.bn
  %.0234321 = phi i32 [ 0, %.thread312._crit_edge ], [ %i.hv, %bb.bn ] ; 2 uses
  %.2252320 = phi i64 [ 0, %.thread312._crit_edge ], [ %i.ht, %bb.bn ]
  %.6264319 = phi i32 [ %.5263, %.thread312._crit_edge ], [ %i.hu, %bb.bn ] ; 2 uses
  %i.hp = shl i64 %.2252320, 8
  %i.hq = lshr exact i32 %.6264319, 3
  %i.hr = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.hq)
  %i.hs = zext i8 %i.hr to i64
  %i.ht = or disjoint i64 %i.hp, %i.hs            ; 2 uses
  %i.hu = add i32 %.6264319, 8                    ; 3 uses
  %i.hv = add nuw nsw i32 %.0234321, 1
  %exitcond.not = icmp eq i32 %.0234321, %i.hi
  br i1 %exitcond.not, label %bb.bo, label %bb.bn, !llvm.loop !25

bb.bo:                                            ; preds = %bb.bn
  %i.hw = lshr exact i32 %i.hu, 3
  %i.hx = add nuw nsw i32 %i.hi, 2                ; 2 uses
  %i.hy = sub nsw i32 %i.hw, %i.hx
  %i.hz = add i64 %i.ht, %5
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge348, %bb.bg, %bb.bk, %bb.bo, %bb.bi, %bb.m
  %.7265 = phi i32 [ %.1259, %bb.m ], [ %i.hu, %bb.bo ], [ %i.gn, %bb.bi ], [ %i.ha, %bb.bk ], [ %.2260.lcssa, %bb.bg ], [ %.2260.lcssa, %._crit_edge348 ] ; 2 uses
  %.3253 = phi i64 [ %5, %bb.m ], [ %i.hz, %bb.bo ], [ %i.gq, %bb.bi ], [ %i.he, %bb.bk ], [ %i.ga, %bb.bg ], [ %i.ga, %._crit_edge348 ] ; 8 uses
  %.0249 = phi i32 [ %i.ab, %bb.m ], [ %i.hy, %bb.bo ], [ %i.gp, %bb.bi ], [ %i.hc, %bb.bk ], [ %i.fz, %bb.bg ], [ %i.fz, %._crit_edge348 ] ; 3 uses
  %.0248 = phi i32 [ 0, %bb.m ], [ %i.hx, %bb.bo ], [ 1, %bb.bi ], [ 2, %bb.bk ], [ %.0238.lcssa, %bb.bg ], [ %.0238.lcssa, %._crit_edge348 ] ; 3 uses
  %i.ia = getelementptr i8, ptr %i.p, i64 16
  %i.ib = load i32, ptr %i.ia, align 8            ; 2 uses
  switch i32 %i.ib, label %10 [
    i32 3, label %bb.bq
    i32 4, label %bb.bq
    i32 5, label %bb.bq
    i32 6, label %bb.bq
    i32 7, label %bb.bq
    i32 35, label %bb.bq
    i32 8, label %bb.bq
    i32 9, label %bb.bq
    i32 10, label %bb.bq
    i32 11, label %bb.bq
    i32 12, label %bb.br
    i32 13, label %bb.br
    i32 14, label %bb.br
    i32 15, label %bb.br
    i32 16, label %bb.br
    i32 17, label %bb.br
    i32 18, label %bb.br
    i32 19, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  %i.ic = call ptr @proto_tree_add_uint64(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %.0249, i32 noundef %.0248, i64 noundef %.3253) ; 3 uses
  %.not = icmp ugt i64 %.3253, %6
  br i1 %.not, label %.sink.split.i, label %per_check_value64.exit

.sink.split.i:                                    ; preds = %bb.bq
  %i.id = getelementptr i8, ptr %2, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.ie, ptr noundef %i.ic, ptr noundef @ei_per_size_constraint_value, ptr noundef @.str.180, i64 noundef %.3253, i64 noundef %5, i64 noundef %6) ; 0 uses
  br label %per_check_value64.exit

bb.br:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  %i.ig = call ptr @proto_tree_add_int64(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %.0249, i32 noundef %.0248, i64 noundef %.3253) ; 3 uses
  %i.ih = icmp sgt i64 %.3253, %6
  br i1 %i.ih, label %.sink.split.i292, label %per_check_value64.exit

.sink.split.i292:                                 ; preds = %bb.br
  %i.ii = getelementptr i8, ptr %2, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  %i.ik = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %i.ij, ptr noundef %i.ig, ptr noundef @ei_per_size_constraint_value, ptr noundef @.str.181, i64 noundef %.3253, i64 noundef %5, i64 noundef %6) ; 0 uses
  br label %per_check_value64.exit

10:                                               ; preds = %bb.bp
  %11 = and i32 %i.ib, -2
  %switch = icmp eq i32 %11, 24
  br i1 %switch, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %10
  %i.il = and i64 %.3253, 4294967295
  store i64 %i.il, ptr %9, align 8
  %i.im = call ptr @proto_tree_add_time(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %.0249, i32 noundef %.0248, ptr noundef nonnull %9)
  br label %per_check_value64.exit

bb.bt:                                            ; preds = %10
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

per_check_value64.exit:                           ; preds = %.sink.split.i292, %bb.br, %.sink.split.i, %bb.bq, %bb.bs
  %.0255 = phi ptr [ %i.im, %bb.bs ], [ %i.ic, %.sink.split.i ], [ %i.ic, %bb.bq ], [ %i.ig, %bb.br ], [ %i.ig, %.sink.split.i292 ]
  %i.in = getelementptr i8, ptr %2, i64 24
  store ptr %.0255, ptr %i.in, align 8
  %.not282 = icmp eq ptr %7, null
  br i1 %.not282, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %per_check_value64.exit
  store i64 %.3253, ptr %7, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %.thread, %per_check_value64.exit, %bb.bu
  %.1257 = phi i32 [ %i.o, %.thread ], [ %.7265, %bb.bu ], [ %.7265, %per_check_value64.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  ret i32 %.1257
}

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_bits8(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bits_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @dissect_per_enumerated(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, i1 noundef zeroext %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 0, ptr %i.b, align 1
  br i1 %7, label %bb.b, label %proto_item_set_hidden.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_per_extension_present_bit, align 4
  %i.d = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, ptr noundef nonnull %i.b) ; 4 uses
  %i.e = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.j, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.j, i64 28       ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %1, %bb.a ], [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ] ; 2 uses
  %i.n = load i8, ptr %i.b, align 1, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %proto_item_set_hidden.exit
  %i.p = load i32, ptr @hf_per_enum_index, align 4
  %i.q = add i32 %5, -1
  %i.r = call i32 @dissect_per_constrained_integer(ptr noundef %0, i32 noundef %.0, ptr noundef %2, ptr noundef %3, i32 noundef %i.p, i32 noundef 0, i32 noundef %i.q, ptr noundef nonnull %i.a, i1 noundef zeroext false) ; 4 uses
  %i.s = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %proto_item_set_hidden.exit54, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i52 = icmp eq ptr %i.v, null
  br i1 %.not.i52, label %proto_item_set_hidden.exit54, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not5.i53 = icmp eq ptr %i.x, null
  br i1 %.not5.i53, label %proto_item_set_hidden.exit54, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.x, i64 28       ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = or i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  br label %proto_item_set_hidden.exit54

bb.j:                                             ; preds = %proto_item_set_hidden.exit
  %i.ab = load i32, ptr @hf_per_enum_extension_index, align 4
  %i.ac = call fastcc i32 @dissect_per_normally_small_nonnegative_whole_number(ptr noundef %0, i32 noundef %.0, ptr noundef %2, ptr noundef %3, i32 noundef %i.ab, ptr noundef nonnull %i.a)
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = add i32 %i.ad, %5
  store i32 %i.ae, ptr %i.a, align 4
  br label %proto_item_set_hidden.exit54

proto_item_set_hidden.exit54:                     ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.j
  %.1 = phi i32 [ %i.ac, %bb.j ], [ %i.r, %bb.f ], [ %i.r, %bb.g ], [ %i.r, %bb.h ], [ %i.r, %bb.i ] ; 3 uses
  %.not = icmp eq ptr %9, null
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %proto_item_set_hidden.exit54
  %i.af = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ag = add i32 %8, %5
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = zext i32 %i.af to i64
  %i.aj = getelementptr [4 x i8], ptr %9, i64 %i.ai
  br label %bb.m

bb.m:                                             ; preds = %proto_item_set_hidden.exit54, %bb.k, %bb.l
  %.in = phi ptr [ %i.aj, %bb.l ], [ %i.a, %bb.k ], [ %i.a, %proto_item_set_hidden.exit54 ]
  %i.ak = load i32, ptr %.in, align 4             ; 2 uses
  %i.al = call ptr @proto_registrar_get_nth(i32 noundef %4)
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %i.an = load i32, ptr %i.am, align 8
  switch i32 %i.an, label %bb.o [
    i32 3, label %bb.n
    i32 4, label %bb.n
    i32 5, label %bb.n
    i32 6, label %bb.n
    i32 7, label %bb.n
    i32 35, label %bb.n
    i32 8, label %bb.n
    i32 9, label %bb.n
    i32 10, label %bb.n
    i32 11, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.ao = lshr i32 %1, 3                          ; 2 uses
  %i.ap = icmp eq i32 %.1, %1
  %i.aq = add i32 %.1, 7
  %i.ar = lshr i32 %i.aq, 3
  %i.as = sub nsw i32 %i.ar, %i.ao
  %i.at = select i1 %i.ap, i32 0, i32 %i.as
  %i.au = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %4, ptr noundef %0, i32 noundef %i.ao, i32 noundef %i.at, i32 noundef %i.ak)
  %i.av = getelementptr i8, ptr %2, i64 24
  store ptr %i.au, ptr %i.av, align 8
  %.not51 = icmp eq ptr %6, null
  br i1 %.not51, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #12
  unreachable

bb.p:                                             ; preds = %bb.n
  store i32 %i.ak, ptr %6, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_per_normally_small_nonnegative_whole_number(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((24, 32)) %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %.not = icmp eq ptr %5, null                    ; 7 uses
  %i.c = load i32, ptr @hf_per_small_number_bit, align 4
  %i.d = call i32 @dissect_per_boolean(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, ptr noundef nonnull %i.a) ; 18 uses
  %i.e = load i8, ptr @display_internal_per_fields, align 1, !range !7, !noundef !8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %proto_item_set_hidden.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %proto_item_set_hidden.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.j, null
  br i1 %.not5.i, label %proto_item_set_hidden.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.j, i64 28       ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  br label %proto_item_set_hidden.exit

proto_item_set_hidden.exit:                       ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.n = load i8, ptr %i.a, align 1, !range !7, !noundef !8
end_hunk_2
