Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dcm?download=true
inline.NumInlined: 60
inline.NumDeleted: 36
begin_hunk_0_@dissect_dcm_pdv_body:bb.a
  %.not120.i = icmp ult i32 %i.kp, %i.kq
  br i1 %.not120.i, label %dcm_export_create_object.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kr = getelementptr i8, ptr %1, i64 416       ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = zext i32 %i.kp to i64                   ; 4 uses
  %i.ku = tail call noalias ptr @wmem_alloc0(ptr noundef %i.ks, i64 noundef %i.kt) #11 ; 4 uses
  %.not121.i = icmp eq i32 %.0111, 0
  br i1 %.not121.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kv = zext nneg i32 %.0111 to i64             ; 3 uses
  %i.kw = tail call ptr @__memmove_chk(ptr noundef %i.ku, ptr noundef %.089.i, i64 noundef range(i64 0, 4294967296) %i.kv, i64 noundef %i.kt) #12 ; 0 uses
  %i.kx = getelementptr i8, ptr %i.ku, i64 %i.kv
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.ky = phi i64 [ %i.kv, %bb.bv ], [ 0, %bb.bu ] ; 3 uses
  %.090.i = phi ptr [ %i.kx, %bb.bv ], [ %i.ku, %bb.bu ] ; 2 uses
  %i.kz = getelementptr i8, ptr %.092.lcssa156.i, i64 75
  %i.la = load i8, ptr %i.kz, align 1, !range !9, !noundef !10
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %._crit_edge.i, label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %bb.bw, %.lr.ph139.i
  %.1138.i = phi ptr [ %i.lp, %.lr.ph139.i ], [ %.090.i, %bb.bw ] ; 2 uses
  %i.lc = phi i64 [ %i.lo, %.lr.ph139.i ], [ %i.ky, %bb.bw ]
  %i.ld = phi i64 [ %i.ln, %.lr.ph139.i ], [ %i.ky, %bb.bw ] ; 2 uses
  %.193137.i = phi ptr [ %i.lq, %.lr.ph139.i ], [ %.092.lcssa156.i, %bb.bw ] ; 3 uses
  %i.le = getelementptr i8, ptr %.193137.i, i64 40
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = getelementptr i8, ptr %.193137.i, i64 48 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 8
  %i.li = zext i32 %i.lh to i64
  %i.lj = tail call i64 @llvm.usub.sat.i64(i64 %i.kt, i64 %i.ld)
  %i.lk = tail call ptr @__memmove_chk(ptr noundef %.1138.i, ptr noundef %i.lf, i64 noundef range(i64 0, 4294967296) %i.li, i64 noundef %i.lj) #12 ; 0 uses
  %i.ll = load i32, ptr %i.lg, align 8
  %i.lm = zext i32 %i.ll to i64                   ; 3 uses
  %i.ln = add i64 %i.ld, %i.lm
  %i.lo = add i64 %i.lc, %i.lm                    ; 2 uses
  %i.lp = getelementptr i8, ptr %.1138.i, i64 %i.lm ; 2 uses
  %i.lq = load ptr, ptr %.193137.i, align 8       ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 75
  %i.ls = load i8, ptr %i.lr, align 1, !range !9, !noundef !10
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %._crit_edge.i, label %.lr.ph139.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph139.i, %bb.bw
  %.lcssa.i = phi i64 [ %i.ky, %bb.bw ], [ %i.lo, %.lr.ph139.i ]
  %.1.lcssa.i = phi ptr [ %.090.i, %bb.bw ], [ %i.lp, %.lr.ph139.i ]
  %i.lu = getelementptr i8, ptr %4, i64 40
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = load i32, ptr %i.dx, align 8
  %i.lx = zext i32 %i.lw to i64
  %i.ly = tail call i64 @llvm.usub.sat.i64(i64 %i.kt, i64 %.lcssa.i)
  %i.lz = tail call ptr @__memmove_chk(ptr noundef %.1.lcssa.i, ptr noundef %i.lv, i64 noundef range(i64 0, 4294967296) %i.lx, i64 noundef %i.ly) #12 ; 0 uses
  %i.ma = load ptr, ptr %i.kr, align 8
  %i.mb = tail call noalias dereferenceable_or_null(48) ptr @wmem_alloc0(ptr noundef %i.ma, i64 noundef 48) #11 ; 6 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 8
  store ptr %.085.i, ptr %i.mc, align 8
  %i.md = getelementptr i8, ptr %i.mb, i64 16
  store ptr %.086.i, ptr %i.md, align 8
  %i.me = load ptr, ptr %i.bn, align 8
  %i.mf = getelementptr i8, ptr %i.mb, i64 24
  store ptr %i.me, ptr %i.mf, align 8
  %i.mg = getelementptr i8, ptr %i.mb, i64 32
  store i32 %i.kp, ptr %i.mg, align 8
  %i.mh = getelementptr i8, ptr %i.mb, i64 40
  store ptr %i.ku, ptr %i.mh, align 8
  %i.mi = load i32, ptr @dicom_eo_tap, align 4
  tail call void @tap_queue_packet(i32 noundef %i.mi, ptr noundef %1, ptr noundef %i.mb)
  br label %dcm_export_create_object.exit

dcm_export_create_object.exit:                    ; preds = %._crit_edge.i, %bb.bt, %bb.ai, %bb.aj, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.c
}

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_raw_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @have_tap_listener(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bytes_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @dissect_dcm_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7, ptr nofree noundef writeonly captures(none) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr @.str.260, ptr %i.b, align 8
  %i.e = getelementptr i8, ptr %3, i64 33
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 2                       ; 2 uses
  %i.h = select i1 %i.g, i32 0, i32 -2147483648   ; 4 uses
  %i.i = icmp eq i8 %i.f, 1                       ; 4 uses
  store ptr null, ptr %7, align 8
  %i.j = getelementptr i8, ptr %3, i64 8          ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = icmp ne ptr %i.k, null
  %or.cond = and i1 %6, %i.l
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.k, i64 124
  %i.n = load i32, ptr %i.m, align 4              ; 4 uses
  %i.o = icmp ugt i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.0308352 = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.p = add i32 %4, 2                            ; 2 uses
  %i.q = icmp ugt i32 %i.p, %5
  br i1 %i.q, label %dcm_tag_is_open.exit.thread, label %.thread353

dcm_tag_is_open.exit.thread:                      ; preds = %.thread
  %i.r = getelementptr i8, ptr %3, i64 120
  store i8 1, ptr %i.r, align 8
  %i.s = sub i32 %5, %4
  %i.t = getelementptr i8, ptr %3, i64 124
  store i32 %i.s, ptr %i.t, align 4
  br label %bb.cf

.thread353:                                       ; preds = %.thread
  %i.u = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %4, i32 noundef %i.h) ; 2 uses
  %i.v = getelementptr i8, ptr %3, i64 128
  store i16 %i.u, ptr %i.v, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.k, i64 128
  %i.x = load i16, ptr %i.w, align 8              ; 2 uses
  %i.y = add i32 %i.n, -2                         ; 2 uses
  %i.z = icmp ugt i32 %i.y, 1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.k, i64 130
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = add i32 %i.n, -4
  br label %bb.f

bb.e:                                             ; preds = %.thread353, %bb.c
  %.1309360 = phi i32 [ %.0308352, %.thread353 ], [ %i.y, %bb.c ]
  %.0313359 = phi i16 [ %i.u, %.thread353 ], [ %i.x, %bb.c ]
  %.0325357 = phi i32 [ %i.p, %.thread353 ], [ %4, %bb.c ] ; 2 uses
  %i.ad = add i32 %.0325357, 2                    ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, %5
  br i1 %i.ae, label %dcm_tag_is_open.exit342.thread, label %dcm_tag_is_open.exit342

dcm_tag_is_open.exit342.thread:                   ; preds = %bb.e
  %i.af = getelementptr i8, ptr %3, i64 120
  store i8 1, ptr %i.af, align 8
  %i.ag = sub i32 %5, %4
  %i.ah = getelementptr i8, ptr %3, i64 124
  store i32 %i.ag, ptr %i.ah, align 4
  br label %bb.cf

dcm_tag_is_open.exit342:                          ; preds = %bb.e
  %i.ai = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %.0325357, i32 noundef %i.h) ; 2 uses
  %i.aj = getelementptr i8, ptr %3, i64 130
  store i16 %i.ai, ptr %i.aj, align 2
  br label %bb.f

bb.f:                                             ; preds = %dcm_tag_is_open.exit342, %bb.d
  %.0313358 = phi i16 [ %i.x, %bb.d ], [ %.0313359, %dcm_tag_is_open.exit342 ] ; 10 uses
  %.1326 = phi i32 [ %4, %bb.d ], [ %i.ad, %dcm_tag_is_open.exit342 ] ; 9 uses
  %.0312 = phi i16 [ %i.ab, %bb.d ], [ %i.ai, %dcm_tag_is_open.exit342 ] ; 11 uses
  %.2310 = phi i32 [ %i.ac, %bb.d ], [ %.1309360, %dcm_tag_is_open.exit342 ] ; 7 uses
  %i.ak = load ptr, ptr @dcm_tag_table, align 8
  %i.al = zext i16 %.0313358 to i32               ; 5 uses
  %i.am = shl nuw i32 %i.al, 16                   ; 2 uses
  %i.an = zext i16 %.0312 to i32                  ; 9 uses
  %i.ao = or disjoint i32 %i.am, %i.an            ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = tail call ptr @wmem_map_lookup(ptr noundef %i.ak, ptr noundef %i.aq) ; 3 uses
  store ptr %i.ar, ptr @dcm_tag_lookup.tag_def, align 8
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.g, label %dcm_tag_lookup.exit

bb.g:                                             ; preds = %bb.f
  %i.at = trunc i16 %.0313358 to i1               ; 2 uses
  %i.au = icmp eq i16 %.0312, 0                   ; 2 uses
  %dcm_tag_lookup.tag_private_grp_len.mux.i = select i1 %i.au, ptr @dcm_tag_lookup.tag_private_grp_len, ptr @dcm_tag_lookup.tag_private
  %brmerge41.i = or i1 %i.au, %i.at
  %dcm_tag_lookup.tag_private_grp_len.mux.mux.i = select i1 %i.at, ptr %dcm_tag_lookup.tag_private_grp_len.mux.i, ptr @dcm_tag_lookup.tag_grp_length
  br i1 %brmerge41.i, label %.thread.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = and i32 %i.al, 65280                    ; 2 uses
  %trunc.i = trunc nuw i32 %i.av to i16
  switch i16 %trunc.i, label %bb.j [
    i16 20480, label %bb.i
    i16 24576, label %bb.i
    i16 32512, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.aw = load ptr, ptr @dcm_tag_table, align 8
  %i.ax = shl nuw nsw i32 %i.av, 16
  %i.ay = or disjoint i32 %i.ax, %i.an
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = tail call ptr @wmem_map_lookup(ptr noundef %i.aw, ptr noundef nonnull %i.ba)
  br label %thread-pre-split.i

bb.j:                                             ; preds = %bb.h
  %i.bc = icmp eq i16 %.0313358, 32
  %i.bd = and i32 %i.an, 65280                    ; 3 uses
  %i.be = icmp eq i32 %i.bd, 12544
  %or.cond34.i = and i1 %i.bc, %i.be
  br i1 %or.cond34.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr @dcm_tag_table, align 8
  %i.bg = tail call ptr @wmem_map_lookup(ptr noundef %i.bf, ptr noundef nonnull inttoptr (i64 2109696 to ptr))
  br label %thread-pre-split.i

bb.l:                                             ; preds = %bb.j
  %i.bh = icmp eq i16 %.0313358, 40               ; 2 uses
  %i.bi = icmp eq i32 %i.bd, 1024
  %or.cond36.i = and i1 %i.bh, %i.bi
  br i1 %or.cond36.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr @dcm_tag_table, align 8
  %i.bk = and i32 %i.an, 1039
  %i.bl = or disjoint i32 %i.bk, 2621456
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = tail call ptr @wmem_map_lookup(ptr noundef %i.bj, ptr noundef nonnull %i.bn)
  br label %thread-pre-split.i

bb.n:                                             ; preds = %bb.l
  %i.bp = icmp eq i32 %i.bd, 2048
  %or.cond38.i = and i1 %i.bh, %i.bp
  br i1 %or.cond38.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr @dcm_tag_table, align 8
  %i.br = and i32 %i.an, 2063
  %i.bs = or disjoint i32 %i.br, 2621440
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = tail call ptr @wmem_map_lookup(ptr noundef %i.bq, ptr noundef nonnull %i.bu)
  br label %thread-pre-split.i

bb.p:                                             ; preds = %bb.n
  switch i16 %.0313358, label %.thread.sink.split.i [
    i16 4096, label %bb.q
    i16 4112, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr @dcm_tag_table, align 8
  %i.bx = and i32 %i.an, 15
  %i.by = or disjoint i32 %i.bx, 268435456
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = tail call ptr @wmem_map_lookup(ptr noundef %i.bw, ptr noundef nonnull %i.ca)
  br label %thread-pre-split.i

bb.r:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr @dcm_tag_table, align 8
  %i.cd = zext nneg i32 %i.am to i64
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = tail call ptr @wmem_map_lookup(ptr noundef %i.cc, ptr noundef nonnull %i.ce)
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i
  %.sink.i = phi ptr [ %i.bb, %bb.i ], [ %i.bo, %bb.m ], [ %i.cb, %bb.q ], [ %i.cf, %bb.r ], [ %i.bv, %bb.o ], [ %i.bg, %bb.k ] ; 3 uses
  store ptr %.sink.i, ptr @dcm_tag_lookup.tag_def, align 8
  %i.cg = icmp eq ptr %.sink.i, null
  br i1 %i.cg, label %.thread.sink.split.i, label %dcm_tag_lookup.exit

.thread.sink.split.i:                             ; preds = %thread-pre-split.i, %bb.p, %bb.g
  %dcm_tag_lookup.tag_private_grp_len.sink.i = phi ptr [ @dcm_tag_lookup.tag_unknown, %bb.p ], [ @dcm_tag_lookup.tag_unknown, %thread-pre-split.i ], [ %dcm_tag_lookup.tag_private_grp_len.mux.mux.i, %bb.g ] ; 2 uses
  store ptr %dcm_tag_lookup.tag_private_grp_len.sink.i, ptr @dcm_tag_lookup.tag_def, align 8
  br label %dcm_tag_lookup.exit

dcm_tag_lookup.exit:                              ; preds = %bb.f, %thread-pre-split.i, %.thread.sink.split.i
  %i.ch = phi ptr [ %i.ar, %bb.f ], [ %.sink.i, %thread-pre-split.i ], [ %dcm_tag_lookup.tag_private_grp_len.sink.i, %.thread.sink.split.i ] ; 4 uses
  %i.ci = icmp eq i16 %.0313358, -2               ; 4 uses
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %dcm_tag_lookup.exit
  switch i16 %.0312, label %bb.t [
    i16 -7971, label %bb.ab
    i16 -8179, label %bb.ab
    i16 -8192, label %bb.ab
  ]

bb.t:                                             ; preds = %bb.s, %dcm_tag_lookup.exit
  br i1 %i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr i8, ptr %1, i64 416
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr i8, ptr %i.ch, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noalias ptr @wmem_strdup(ptr noundef %i.ck, ptr noundef %i.cm)
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.co = icmp ugt i32 %.2310, 1
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr i8, ptr %1, i64 416
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.j, align 8
  %i.cs = getelementptr i8, ptr %i.cr, i64 136
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call noalias ptr @wmem_strdup(ptr noundef %i.cq, ptr noundef %i.ct)
  %i.cv = add i32 %.2310, -2
  br label %sub_0

bb.x:                                             ; preds = %bb.v
  %i.cw = add i32 %.1326, 2                       ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, %5
  br i1 %i.cx, label %dcm_tag_is_open.exit343.thread, label %dcm_tag_is_open.exit343

dcm_tag_is_open.exit343.thread:                   ; preds = %bb.x
  %i.cy = getelementptr i8, ptr %3, i64 120
  store i8 1, ptr %i.cy, align 8
  %i.cz = sub i32 %5, %4
  %i.da = getelementptr i8, ptr %3, i64 124
  store i32 %i.cz, ptr %i.da, align 4
  br label %bb.cf

dcm_tag_is_open.exit343:                          ; preds = %bb.x
  %i.db = getelementptr i8, ptr %1, i64 416
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call ptr @tvb_get_string_enc(ptr noundef %i.dc, ptr noundef %0, i32 noundef %.1326, i32 noundef 2, i32 noundef 0) ; 2 uses
  %i.de = tail call ptr @wmem_file_scope()
  %i.df = getelementptr i8, ptr %3, i64 136       ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void @wmem_free(ptr noundef %i.de, ptr noundef %i.dg)
  %i.dh = tail call ptr @wmem_file_scope()
  %i.di = tail call noalias ptr @wmem_strdup(ptr noundef %i.dh, ptr noundef %i.dd)
  store ptr %i.di, ptr %i.df, align 8
  br label %sub_0

sub_0:                                            ; preds = %bb.w, %dcm_tag_is_open.exit343
  %.2327 = phi i32 [ %.1326, %bb.w ], [ %i.cw, %dcm_tag_is_open.exit343 ] ; 5 uses
  %.0318 = phi ptr [ %i.cu, %bb.w ], [ %i.dd, %dcm_tag_is_open.exit343 ] ; 25 uses
  %.3311 = phi i32 [ %i.cv, %bb.w ], [ %.2310, %dcm_tag_is_open.exit343 ] ; 3 uses
  %i.dj = load i8, ptr %.0318, align 1
  switch i8 %i.dj, label %.thread403 [
    i8 79, label %sub_1
    i8 83, label %sub_1440
    i8 85, label %sub_1445
  ]

sub_1:                                            ; preds = %sub_0
  %i.dk = getelementptr inbounds nuw i8, ptr %.0318, i64 1
  %i.dl = load i8, ptr %i.dk, align 1
  %.not477 = icmp eq i8 %i.dl, 66
  br i1 %.not477, label %.tail, label %sub_1420

.tail:                                            ; preds = %sub_1
  %i.dm = getelementptr inbounds nuw i8, ptr %.0318, i64 2
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.y, label %sub_1420

sub_1420:                                         ; preds = %.tail, %sub_1
  %i.dp = getelementptr inbounds nuw i8, ptr %.0318, i64 1
  %i.dq = load i8, ptr %i.dp, align 1
  %.not479 = icmp eq i8 %i.dq, 87
  br i1 %.not479, label %.tail418, label %sub_1425

.tail418:                                         ; preds = %sub_1420
  %i.dr = getelementptr inbounds nuw i8, ptr %.0318, i64 2
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.y, label %sub_1425

sub_1425:                                         ; preds = %.tail418, %sub_1420
  %i.du = getelementptr inbounds nuw i8, ptr %.0318, i64 1
  %i.dv = load i8, ptr %i.du, align 1
  %.not481 = icmp eq i8 %i.dv, 70
  br i1 %.not481, label %.tail423, label %sub_1430

end_hunk_0
