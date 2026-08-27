Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/print?download=true
inline.NumInlined: 65
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@write_json_proto_node_hex_dump:bb.a
  br i1 %i.aj, label %get_field_data_source.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add i32 %.018.i.i, 1
  %i.al = getelementptr i8, ptr %.01117.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !8

get_field_data_source.exit.i:                     ; preds = %bb.e
  %.not21.i = icmp eq ptr %i.ag, null
  br i1 %.not21.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %get_field_data_source.exit.i
  %i.an = load ptr, ptr %i.af, align 8
  %i.ao = getelementptr i8, ptr %1, i64 40
  store ptr %i.an, ptr %i.ao, align 8
  store ptr %i.ag, ptr %i.w, align 8
  %i.ap = getelementptr i8, ptr %1, i64 56
  store i32 %.018.i.i, ptr %i.ap, align 8
  br label %get_field_data_source_cached.exit

get_field_data_source_cached.exit:                ; preds = %bb.g, %bb.c
  %.0 = phi i32 [ %.018.i.i, %bb.g ], [ %i.ae, %bb.c ]
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = zext i32 %.0 to i64
  tail call void @json_dumper_value_uint(ptr noundef %i.aq, i64 noundef %i.ar)
  br label %bb.h

.loopexit:                                        ; preds = %bb.f, %get_field_data_source.exit.i, %bb.d
  %i.as = load ptr, ptr %i.c, align 8
  tail call void @json_dumper_value_literal(ptr noundef %i.as, ptr noundef nonnull @.str.87, i64 noundef 4)
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %get_field_data_source_cached.exit
  %i.at = load ptr, ptr %i.c, align 8
  tail call void @json_dumper_end_array(ptr noundef %i.at)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_set_member_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @write_json_proto_node_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call ptr @fvalue_to_string_repr(ptr noundef null, ptr noundef %i.d, i32 noundef 2, i32 noundef %i.g) ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @json_dumper_value_string(ptr noundef %i.j, ptr noundef %i.h)
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.h)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @write_json_proto_node_filtered(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = load ptr, ptr %.val, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8
  %i.e = load i32, ptr @hf_text_only, align 4
  %.not.i = icmp eq i32 %i.d, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %proto_node_to_json_key.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.i, null
  %.str.58..i = select i1 %.not6.i, ptr @.str.58, ptr %i.i
  br label %proto_node_to_json_key.exit

proto_node_to_json_key.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %.str.58..i, %bb.c ]
  %i.j = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @json_dumper_begin_object(ptr noundef %i.k)
  %i.l = load ptr, ptr %i.j, align 8
  tail call void @json_dumper_set_member_name_noesc(ptr noundef %i.l, ptr noundef nonnull @.str.90, i64 noundef 8)
  %i.m = load ptr, ptr %i.j, align 8
  tail call void @json_dumper_value_string(ptr noundef %i.m, ptr noundef %.0.i)
  %i.n = load ptr, ptr %i.j, align 8
  tail call void @json_dumper_end_object(ptr noundef %i.n)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @write_json_proto_node_dynamic(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [240 x i8], align 16              ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.e, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @json_dumper_value_string(ptr noundef %i.m, ptr noundef nonnull %i.k)
  br label %write_json_proto_node_no_value.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @proto_item_fill_label(ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null)
  %i.n = getelementptr i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  call void @json_dumper_value_string(ptr noundef %i.o, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %write_json_proto_node_no_value.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.q, ptr noundef nonnull @.str.58, i64 noundef 0)
  br label %write_json_proto_node_no_value.exit

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @write_json_proto_node_children(ptr noundef %0, ptr noundef %1)
  br label %write_json_proto_node_no_value.exit

write_json_proto_node_no_value.exit:              ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @write_json_proto_node_no_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [240 x i8], align 16              ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @json_dumper_value_string(ptr noundef %i.k, ptr noundef nonnull %i.i)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @proto_item_fill_label(ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef null)
  %i.l = getelementptr i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void @json_dumper_value_string(ptr noundef %i.m, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.o, ptr noundef nonnull @.str.58, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @json_write_field_hex_value(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 9 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 48         ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @fvalue_type_ftenum(ptr noundef %i.f)
  switch i32 %i.g, label %bb.g [
    i32 12, label %bb.c
    i32 13, label %bb.c
    i32 14, label %bb.c
    i32 15, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 16, label %bb.e
    i32 17, label %bb.e
    i32 18, label %bb.e
    i32 19, label %bb.e
    i32 8, label %bb.f
    i32 9, label %bb.f
    i32 10, label %bb.f
    i32 11, label %bb.f
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = tail call i32 @fvalue_get_sinteger(ptr noundef %i.j)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.i, ptr noundef nonnull @.str.88, i32 noundef %i.k)
  br label %bb.u

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = tail call i32 @fvalue_get_uinteger(ptr noundef %i.n)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.m, ptr noundef nonnull @.str.88, i32 noundef %i.o)
  br label %bb.u

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = tail call i64 @fvalue_get_sinteger64(ptr noundef %i.r)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.q, ptr noundef nonnull @.str.89, i64 noundef %i.s)
  br label %bb.u

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = tail call i64 @fvalue_get_uinteger64(ptr noundef %i.v)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.u, ptr noundef nonnull @.str.89, i64 noundef %i.w)
  br label %bb.u

bb.g:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.58, i32 noundef 7, ptr noundef nonnull @.str.73, i64 noundef 2076, ptr noundef nonnull @__func__.json_write_field_hex_value, ptr noundef nonnull @.str.74) #25
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.aa, ptr noundef nonnull @.str.58, i64 noundef 0)
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %1, i64 12        ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = tail call i32 @tvb_captured_length_remaining(ptr noundef nonnull %i.y, i32 noundef %i.ae)
  %i.ag = icmp ugt i32 %i.ac, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.ai, ptr noundef nonnull @.str.80, i64 noundef 21)
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.x, align 8
  %i.an = getelementptr i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %get_field_data_source_cached.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not16.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not16.i.i.i, label %get_field_data_cached.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.o
  %.018.i.i.i = phi i32 [ %i.au, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.01117.i.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %i.aq = load ptr, ptr %.01117.i.i.i, align 8    ; 4 uses
  %i.ar = load ptr, ptr %i.x, align 8
  %i.as = tail call ptr @get_data_source_tvb(ptr noundef %i.aq)
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %get_field_data_source.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add i32 %.018.i.i.i, 1
  %i.av = getelementptr i8, ptr %.01117.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %get_field_data_cached.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !8

get_field_data_source.exit.i.i:                   ; preds = %.lr.ph.i.i.i
  %.not21.i.i = icmp eq ptr %i.aq, null
  br i1 %.not21.i.i, label %get_field_data_cached.exit.thread, label %bb.p

bb.p:                                             ; preds = %get_field_data_source.exit.i.i
  %i.ax = load ptr, ptr %i.x, align 8
  %i.ay = getelementptr i8, ptr %0, i64 40
  store ptr %i.ax, ptr %i.ay, align 8
  store ptr %i.aq, ptr %i.ak, align 8
  %i.az = getelementptr i8, ptr %0, i64 56
  store i32 %.018.i.i.i, ptr %i.az, align 8
  br label %get_field_data_source_cached.exit.i

get_field_data_source_cached.exit.i:              ; preds = %bb.p, %bb.m
  %.0.i.i = phi ptr [ %i.aq, %bb.p ], [ %i.al, %bb.m ]
  %i.ba = tail call ptr @get_data_source_tvb(ptr noundef nonnull %.0.i.i) ; 2 uses
  %i.bb = load i32, ptr %i.ad, align 8
  %i.bc = tail call i32 @tvb_captured_length_remaining(ptr noundef %i.ba, i32 noundef %i.bb) ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %get_field_data_cached.exit.thread, label %get_field_data_cached.exit

get_field_data_cached.exit:                       ; preds = %get_field_data_source_cached.exit.i
  %i.be = load i32, ptr %i.ab, align 4
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = load i32, ptr %i.ad, align 8
  %i.bg = tail call ptr @tvb_get_ptr(ptr noundef %i.ba, i32 noundef %i.bf, i32 noundef %spec.select.i) ; 7 uses
  %.not53 = icmp eq ptr %i.bg, null
  br i1 %.not53, label %get_field_data_cached.exit.thread, label %bb.q

bb.q:                                             ; preds = %get_field_data_cached.exit
  %i.bh = load i32, ptr %i.ab, align 4            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bi = icmp ult i32 %i.bh, 256
  br i1 %i.bi, label %.preheader, label %.new

.preheader:                                       ; preds = %bb.q
  %.not60 = icmp eq i32 %i.bh, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count67 = zext nneg i32 %i.bh to i64 ; 2 uses
  %xtraiter83 = and i64 %wide.trip.count67, 1
  %i.bj = icmp eq i32 %i.bh, 1
  br i1 %i.bj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter86 = and i64 %wide.trip.count67, 254
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv64 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next65.1, %.lr.ph ] ; 4 uses
  %niter87 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter87.next.1, %.lr.ph ]
  %i.bk = getelementptr i8, ptr %i.bg, i64 %indvars.iv64
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %2 = trunc nuw i64 %indvars.iv64 to i32
  %3 = shl nuw i32 %2, 1                          ; 2 uses
  %4 = zext i32 %3 to i64
  %i.br = getelementptr i8, ptr %i.a, i64 %4
  store i8 %i.bq, ptr %i.br, align 4
  %i.bs = and i32 %i.bm, 15
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1
  %5 = or disjoint i32 %3, 1
  %6 = zext i32 %5 to i64
  %i.bw = getelementptr i8, ptr %i.a, i64 %6
  store i8 %i.bv, ptr %i.bw, align 1
  %indvars.iv.next65 = or disjoint i64 %indvars.iv64, 1 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next65
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = lshr i32 %i.bz, 4
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %7 = trunc nuw i64 %indvars.iv.next65 to i32
  %8 = shl nuw i32 %7, 1                          ; 2 uses
  %9 = zext i32 %8 to i64
  %i.ce = getelementptr i8, ptr %i.a, i64 %9
  store i8 %i.cd, ptr %i.ce, align 2
  %i.cf = and i32 %i.bz, 15
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %10 = or disjoint i32 %8, 1
  %11 = zext i32 %10 to i64
  %i.cj = getelementptr i8, ptr %i.a, i64 %11
  store i8 %i.ci, ptr %i.cj, align 1
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %niter87.next.1 = add nuw i64 %niter87, 2       ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !68

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv64.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next65.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.ck = getelementptr i8, ptr %i.bg, i64 %indvars.iv64.epil.init
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = lshr i32 %i.cm, 4
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  %12 = trunc nuw i64 %indvars.iv64.epil.init to i32
  %13 = shl i32 %12, 1                            ; 2 uses
  %14 = zext i32 %13 to i64
  %i.cr = getelementptr i8, ptr %i.a, i64 %14
  store i8 %i.cq, ptr %i.cr, align 2
  %i.cs = and i32 %i.cm, 15
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1
  %15 = or disjoint i32 %13, 1
  %16 = zext i32 %15 to i64
  %i.cw = getelementptr i8, ptr %i.a, i64 %16
  store i8 %i.cv, ptr %i.cw, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.cx = getelementptr i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = shl nuw nsw i32 %i.bh, 1
  %i.da = zext nneg i32 %i.cz to i64
  call void @json_dumper_value_string_noesc(ptr noundef %i.cy, ptr noundef nonnull %i.a, i64 noundef %i.da)
  br label %bb.t

.new:                                             ; preds = %bb.q
  %i.db = shl i32 %i.bh, 1
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = tail call noalias ptr @g_malloc(i64 noundef %i.dc) #27 ; 8 uses
  %wide.trip.count = zext i32 %i.bh to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.r ]
  %i.de = getelementptr i8, ptr %i.bg, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32                    ; 2 uses
  %i.dh = lshr i32 %i.dg, 4
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = trunc nuw i64 %indvars.iv to i32
  %i.dm = shl i32 %i.dl, 1                        ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr i8, ptr %i.dd, i64 %i.dn
  store i8 %i.dk, ptr %i.do, align 1
  %i.dp = and i32 %i.dg, 15
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = or disjoint i32 %i.dm, 1
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.dd, i64 %i.du
  store i8 %i.ds, ptr %i.dv, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = trunc nuw i64 %indvars.iv.next to i32
  %i.ee = shl i32 %i.ed, 1                        ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr i8, ptr %i.dd, i64 %i.ef
  store i8 %i.ec, ptr %i.eg, align 1
  %i.eh = and i32 %i.dy, 15
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = or disjoint i32 %i.ee, 1
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr i8, ptr %i.dd, i64 %i.em
  store i8 %i.ek, ptr %i.en, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.r, !llvm.loop !69

.unr-lcssa:                                       ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod82 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.eo = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next.1
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = lshr i32 %i.eq, 4
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.ew = shl i32 %i.ev, 1                        ; 2 uses
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %i.dd, i64 %i.ex
  store i8 %i.eu, ptr %i.ey, align 1
  %i.ez = and i32 %i.eq, 15
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = or disjoint i32 %i.ew, 1
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr i8, ptr %i.dd, i64 %i.fe
  store i8 %i.fc, ptr %i.ff, align 1
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fg = getelementptr i8, ptr %0, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.fh, ptr noundef %i.dd, i64 noundef %i.dc)
  tail call void @g_free(ptr noundef %i.dd)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.u

get_field_data_cached.exit.thread:                ; preds = %bb.o, %get_field_data_source.exit.i.i, %bb.n, %get_field_data_source_cached.exit.i, %get_field_data_cached.exit
  %i.fi = getelementptr i8, ptr %0, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.fj, ptr noundef nonnull @.str.58, i64 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %get_field_data_cached.exit.thread, %bb.k, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_int(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_uint(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_literal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @write_json_proto_node(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = load ptr, ptr %.val, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr @hf_text_only, align 4
  %.not.i = icmp eq i32 %i.f, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %proto_node_to_json_key.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.k, null
  %.str.58..i = select i1 %.not6.i, ptr @.str.58, ptr %i.k
  br label %proto_node_to_json_key.exit

proto_node_to_json_key.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %.str.58..i, %bb.c ] ; 3 uses
  %i.l = load i8, ptr %1, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %proto_node_to_json_key.exit
  %i.n = getelementptr i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @json_dumper_set_member_name(ptr noundef %i.o, ptr noundef %.0.i)
  br label %bb.j

bb.e:                                             ; preds = %proto_node_to_json_key.exit
  %i.p = tail call i64 @strlen(ptr noundef %.0.i) #24 ; 4 uses
  %i.q = tail call i64 @strlen(ptr noundef %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.r = add i64 %i.q, 1                          ; 2 uses
  %i.s = add i64 %i.r, %i.p                       ; 3 uses
  %i.t = icmp ult i64 %i.s, 257
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noalias ptr @g_malloc(i64 noundef %i.s) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ 256, %bb.e ]  ; 3 uses
  %i.w = phi ptr [ %i.u, %bb.f ], [ %i.a, %bb.e ] ; 5 uses
  %i.x = icmp ne i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = call ptr @__memcpy_chk(ptr noundef %i.w, ptr noundef %.0.i, i64 noundef %i.p, i64 noundef %i.v) #23, !alias.scope !70 ; 0 uses
  %i.z = getelementptr i8, ptr %i.w, i64 %i.p
  %i.aa = call i64 @llvm.usub.sat.i64(i64 %i.v, i64 %i.p) ; 2 uses
  %i.ab = icmp ne i64 %i.aa, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = call ptr @__memcpy_chk(ptr noundef %i.z, ptr noundef %1, i64 noundef %i.r, i64 noundef %i.aa) #23, !alias.scope !74 ; 0 uses
  %i.ad = getelementptr i8, ptr %3, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @json_dumper_set_member_name(ptr noundef %i.ae, ptr noundef %i.w)
  %.not = icmp eq ptr %i.w, %i.a
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @g_free(ptr noundef %i.w)
  br label %bb.i

end_hunk_0
