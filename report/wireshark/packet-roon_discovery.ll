Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-roon_discovery?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
begin_hunk_0_@dissect_roon_discover:bb.a
    i16 593, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.098 = phi i1 [ true, %bb.e ], [ false, %bb.d ] ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @col_set_str(ptr noundef %i.k, i32 noundef 35, ptr noundef nonnull @.str.61)
  %i.l = load ptr, ptr %i.j, align 8
  tail call void @col_clear(ptr noundef %i.l, i32 noundef 25)
  %i.m = load i32, ptr @proto_roon_discover, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.o = load i32, ptr @ett_roon_discover, align 4
  %i.p = tail call ptr @proto_item_add_subtree(ptr noundef %i.n, i32 noundef %i.o) ; 7 uses
  %i.q = load i32, ptr @hf_roon_disco_marker, align 4
  %i.r = tail call ptr @proto_tree_add_string(ptr noundef %i.p, i32 noundef %i.q, ptr noundef %0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @.str.64) ; 0 uses
  %i.s = load i32, ptr @hf_roon_disco_direction, align 4
  %spec.select206 = select i1 %.098, ptr @.str.65, ptr @.str.66 ; 3 uses
  %i.t = tail call ptr @proto_tree_add_string(ptr noundef %i.p, i32 noundef %i.s, ptr noundef %0, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %spec.select206) ; 0 uses
  %i.u = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.v = icmp ugt i32 %i.u, 6
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.f
  %i.w = load ptr, ptr %i.j, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.w, i32 noundef 25, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef nonnull %spec.select206)
  br label %bb.x

._crit_edge:                                      ; preds = %roon_map_name.exit136.thread
  %i.x = load ptr, ptr %i.j, align 8
  tail call void (ptr, i32, ptr, ...) @col_add_fstr(ptr noundef %i.x, i32 noundef 25, ptr noundef nonnull @.str.74, ptr noundef %.194, ptr noundef nonnull %spec.select206)
  %.not99 = icmp eq ptr %.297, null
  br i1 %.not99, label %bb.x, label %bb.t

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %roon_map_name.exit136.thread
  %.090170 = phi i32 [ %i.cw, %roon_map_name.exit136.thread ], [ 6, %bb.f ] ; 7 uses
  %.091169 = phi i1 [ %.2, %roon_map_name.exit136.thread ], [ false, %bb.f ] ; 4 uses
  %.093168 = phi ptr [ %.194, %roon_map_name.exit136.thread ], [ null, %bb.f ] ; 3 uses
  %.095167 = phi ptr [ %.297, %roon_map_name.exit136.thread ], [ null, %bb.f ] ; 4 uses
  %i.y = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.090170)
  %i.z = add nuw i32 %.090170, 1
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = zext i8 %i.y to i32                     ; 3 uses
  %i.ac = tail call ptr @tvb_get_string_enc(ptr noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef 0) ; 7 uses
  %i.ad = add i32 %.090170, 2
  %i.ae = add i32 %i.ad, %i.ab                    ; 2 uses
  %i.af = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ae)
  %i.ag = add i32 %i.ae, 1
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = zext i8 %i.af to i32                    ; 2 uses
  %i.aj = tail call ptr @tvb_get_string_enc(ptr noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef 0) ; 8 uses
  %i.ak = add nuw nsw i32 %i.ab, 3
  %i.al = add nuw nsw i32 %i.ak, %i.ai            ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.i
  %.021.i.i = phi i64 [ %.1.i.i, %bb.i ], [ 23, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.i ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.am = add i64 %.01620.i.i, %.021.i.i
  %i.an = lshr i64 %i.am, 1                       ; 3 uses
  %i.ao = mul i64 %i.an, 24                       ; 2 uses
  %i.ap = getelementptr i8, ptr @roon_disco_string_fields, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef %i.aq) #6 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %.not.i5.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i5.i, label %bsearch.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = add nuw i64 %i.an, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.117.i.i = phi i64 [ %i.at, %bb.h ], [ %.01620.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.021.i.i, %bb.h ], [ %i.an, %.lr.ph.i.i ] ; 2 uses
  %i.au = icmp ult i64 %.117.i.i, %.1.i.i
  br i1 %i.au, label %.lr.ph.i.i, label %.lr.ph.i.i128, !llvm.loop !6

bsearch.exit.i:                                   ; preds = %bb.g
  %i.av = getelementptr i8, ptr @roon_disco_string_fields, i64 %i.ao ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %.lr.ph.i.i128, label %roon_map_name.exit

roon_map_name.exit:                               ; preds = %bsearch.exit.i
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not100 = icmp eq ptr %i.ax, null
  br i1 %.not100, label %.lr.ph.i.i128, label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %roon_map_name.exit, %bb.l
  %.021.i.i109 = phi i64 [ %.1.i.i113, %bb.l ], [ 23, %roon_map_name.exit ] ; 2 uses
  %.01620.i.i110 = phi i64 [ %.117.i.i112, %bb.l ], [ 0, %roon_map_name.exit ] ; 2 uses
  %i.ay = add i64 %.01620.i.i110, %.021.i.i109
  %i.az = lshr i64 %i.ay, 1                       ; 3 uses
  %i.ba = mul i64 %i.az, 24                       ; 2 uses
  %i.bb = getelementptr i8, ptr @roon_disco_string_fields, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef %i.bc) #6 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i108
  %.not.i5.i111 = icmp eq i32 %i.bd, 0
  br i1 %.not.i5.i111, label %bsearch.exit.i114, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = add nuw i64 %i.az, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i108
  %.117.i.i112 = phi i64 [ %i.bf, %bb.k ], [ %.01620.i.i110, %.lr.ph.i.i108 ] ; 2 uses
  %.1.i.i113 = phi i64 [ %.021.i.i109, %bb.k ], [ %i.az, %.lr.ph.i.i108 ] ; 2 uses
  %i.bg = icmp ult i64 %.117.i.i112, %.1.i.i113
  br i1 %i.bg, label %.lr.ph.i.i108, label %roon_map_value.exit, !llvm.loop !6

bsearch.exit.i114:                                ; preds = %bb.j
  %i.bh = getelementptr i8, ptr @roon_disco_string_fields, i64 %i.ba ; 2 uses
  %.not.i115 = icmp eq ptr %i.bh, null
  br i1 %.not.i115, label %roon_map_value.exit, label %bb.m

bb.m:                                             ; preds = %bsearch.exit.i114
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %roon_map_value.exit

roon_map_value.exit:                              ; preds = %bb.l, %bsearch.exit.i114, %bb.m
  %i.bk = phi ptr [ %i.bj, %bb.m ], [ null, %bsearch.exit.i114 ], [ null, %bb.l ] ; 2 uses
  %i.bl = tail call i32 @strcmp(ptr noundef %i.ac, ptr noundef nonnull dereferenceable(11) @.str.67) #6
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i116.preheader, label %bb.n

bb.n:                                             ; preds = %roon_map_value.exit
  %i.bn = tail call i32 @strcmp(ptr noundef %i.ac, ptr noundef nonnull dereferenceable(17) @.str.68) #6
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i116.preheader, label %bb.s

.lr.ph.i.i116.preheader:                          ; preds = %bb.n, %roon_map_value.exit
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %bb.q
  %.021.i.i117 = phi i64 [ %.1.i.i121, %bb.q ], [ 6, %.lr.ph.i.i116.preheader ] ; 2 uses
  %.01620.i.i118 = phi i64 [ %.117.i.i120, %bb.q ], [ 0, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.bp = add i64 %.01620.i.i118, %.021.i.i117
  %i.bq = lshr i64 %i.bp, 1                       ; 3 uses
  %i.br = shl i64 %i.bq, 4                        ; 2 uses
  %i.bs = getelementptr i8, ptr @roon_service_ids, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 16
  %i.bu = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.aj, ptr noundef %i.bt) ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i116
  %.not.i.i119 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i119, label %bsearch.exit.i122, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = add nuw i64 %i.bq, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i116
  %.117.i.i120 = phi i64 [ %i.bw, %bb.p ], [ %.01620.i.i118, %.lr.ph.i.i116 ] ; 2 uses
  %.1.i.i121 = phi i64 [ %.021.i.i117, %bb.p ], [ %i.bq, %.lr.ph.i.i116 ] ; 2 uses
  %i.bx = icmp ult i64 %.117.i.i120, %.1.i.i121
  br i1 %i.bx, label %.lr.ph.i.i116, label %roon_map_uuid.exit, !llvm.loop !6

bsearch.exit.i122:                                ; preds = %bb.o
  %i.by = getelementptr i8, ptr @roon_service_ids, i64 %i.br ; 2 uses
  %.not.i123 = icmp eq ptr %i.by, null
  br i1 %.not.i123, label %roon_map_uuid.exit, label %bb.r

bb.r:                                             ; preds = %bsearch.exit.i122
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  br label %roon_map_uuid.exit

roon_map_uuid.exit:                               ; preds = %bb.q, %bsearch.exit.i122, %bb.r
  %i.cb = phi ptr [ %i.ca, %bb.r ], [ null, %bsearch.exit.i122 ], [ null, %bb.q ] ; 2 uses
  %.not102 = icmp eq ptr %i.cb, null
  %i.cc = select i1 %.not102, ptr @.str.69, ptr %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.bk, align 4
  %i.ce = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_string_format_value(ptr noundef %i.p, i32 noundef %i.cd, ptr noundef %0, i32 noundef %.090170, i32 noundef %i.al, ptr noundef %i.aj, ptr noundef nonnull @.str.70, ptr noundef %i.aj, ptr noundef nonnull %i.cc) ; 0 uses
  %i.cf = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.71)
  %i.cg = icmp eq i32 %i.cf, 0
  %spec.select = select i1 %i.cg, i1 true, i1 %.091169
  br label %roon_map_name.exit136.thread

bb.s:                                             ; preds = %bb.n
  %i.ch = tail call i32 @strcmp(ptr noundef %i.ac, ptr noundef nonnull dereferenceable(5) @.str.72) #6
  %i.ci = icmp eq i32 %i.ch, 0
  %spec.select103 = select i1 %i.ci, ptr %i.aj, ptr %.095167
  %i.cj = load i32, ptr %i.bk, align 4
  %i.ck = tail call ptr @proto_tree_add_string(ptr noundef %i.p, i32 noundef %i.cj, ptr noundef %0, i32 noundef %.090170, i32 noundef %i.al, ptr noundef %i.aj) ; 0 uses
  br label %roon_map_name.exit136.thread

.lr.ph.i.i128:                                    ; preds = %bb.i, %roon_map_name.exit, %bsearch.exit.i
  %i.cl = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef nonnull dereferenceable(7) @.str.109) #6
  %.not.i5.i131 = icmp eq i32 %i.cl, 0
  br i1 %.not.i5.i131, label %.lr.ph.i.i141, label %roon_map_name.exit136.thread

.lr.ph.i.i141:                                    ; preds = %.lr.ph.i.i128
  %i.cm = tail call i32 @strcmp(ptr noundef readonly %i.ac, ptr noundef nonnull dereferenceable(7) @.str.109) #6
  %.not.i5.i144 = icmp eq i32 %i.cm, 0
  %i.cn = select i1 %.not.i5.i144, ptr @hf_roon_disco_is_dev, ptr null
  %i.co = load i8, ptr %i.aj, align 1
  %.not174 = icmp eq i8 %i.co, 48
  br i1 %.not174, label %sub_1, label %roon_map_value.exit149.tail

sub_1:                                            ; preds = %.lr.ph.i.i141
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = icmp ne i8 %i.cq, 0
  %i.cs = zext i1 %i.cr to i64
  br label %roon_map_value.exit149.tail

roon_map_value.exit149.tail:                      ; preds = %.lr.ph.i.i141, %sub_1
  %i.ct = phi i64 [ 1, %.lr.ph.i.i141 ], [ %i.cs, %sub_1 ]
  %i.cu = load i32, ptr %i.cn, align 4
  %i.cv = tail call ptr @proto_tree_add_boolean(ptr noundef %i.p, i32 noundef %i.cu, ptr noundef %0, i32 noundef %.090170, i32 noundef %i.al, i64 noundef %i.ct) ; 0 uses
  br label %roon_map_name.exit136.thread

roon_map_name.exit136.thread:                     ; preds = %.lr.ph.i.i128, %roon_map_value.exit149.tail, %bb.s, %roon_map_uuid.exit
  %.297 = phi ptr [ %.095167, %roon_map_uuid.exit ], [ %spec.select103, %bb.s ], [ %.095167, %roon_map_value.exit149.tail ], [ %.095167, %.lr.ph.i.i128 ] ; 5 uses
  %.194 = phi ptr [ %i.cc, %roon_map_uuid.exit ], [ %.093168, %bb.s ], [ %.093168, %roon_map_value.exit149.tail ], [ %.093168, %.lr.ph.i.i128 ] ; 2 uses
  %.2 = phi i1 [ %spec.select, %roon_map_uuid.exit ], [ %.091169, %bb.s ], [ %.091169, %roon_map_value.exit149.tail ], [ %.091169, %.lr.ph.i.i128 ] ; 2 uses
  %i.cw = add i32 %i.al, %.090170                 ; 2 uses
  %i.cx = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph.i.i.preheader, label %._crit_edge, !llvm.loop !7

bb.t:                                             ; preds = %._crit_edge
  %i.cz = tail call ptr @ascii_strdown_inplace(ptr noundef nonnull %.297) ; 0 uses
  br i1 %.098, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.da = tail call fastcc ptr @transaction_end(ptr noundef %1, ptr noundef %i.p, ptr noundef %.297)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.db = tail call fastcc ptr @transaction_start(ptr noundef %1, ptr noundef %i.p, ptr noundef %.297, i1 noundef zeroext %.2)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0 = phi ptr [ %i.da, %bb.u ], [ %i.db, %bb.v ]
  %i.dc = load i32, ptr @roon_tap, align 4
  tail call void @tap_queue_packet(i32 noundef %i.dc, ptr noundef %1, ptr noundef %.0)
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread, %bb.w, %._crit_edge
  %i.dd = tail call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.c, %bb.d, %bb.a, %bb.b
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.dd, %bb.x ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @register_tap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_roon_discover() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @roon_discover_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef nonnull @.str.63, i32 noundef 9003, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_string_enc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare signext i16 @tvb_get_int16(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_string_format_value(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_boolean(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @ascii_strdown_inplace(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @transaction_end(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [3 x %struct._wmem_tree_key_t], align 16 ; 19 uses
  %4 = alloca %struct.nstime_t, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #6
  %i.e = tail call i32 @wmem_strong_hash(ptr noundef nonnull %2, i64 noundef %i.d)
  store i32 %i.e, ptr %i.a, align 4
  %i.f = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr i8, ptr %0, i64 232
  %i.i = getelementptr i8, ptr %0, i64 284
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @conversation_pt_to_conversation_type(i32 noundef %i.j)
  %i.l = getelementptr i8, ptr %0, i64 288
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 292
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call ptr @find_conversation(i32 noundef %i.g, ptr noundef null, ptr noundef %i.h, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef 0) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr @proto_roon_discover, align 4
  %i.s = tail call ptr @conversation_get_proto_data(ptr noundef nonnull %i.p, i32 noundef %i.r) ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 53
  %i.x = load i16, ptr %i.w, align 1
  %i.y = and i16 %i.x, 8
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 1, ptr %3, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr null, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = call ptr @wmem_tree_lookup32_array(ptr noundef %i.ac, ptr noundef nonnull %3) ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.ad, i64 4      ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4
  %.not47 = icmp eq i32 %i.ag, 0
  br i1 %.not47, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.e
  %i.ah = load i32, ptr %i.f, align 4
  store i32 %i.ah, ptr %i.af, align 4
  store i32 1, ptr %3, align 16
  store ptr %i.a, ptr %i.z, align 8
  store i32 1, ptr %i.aa, align 16
  store ptr %i.b, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_0
