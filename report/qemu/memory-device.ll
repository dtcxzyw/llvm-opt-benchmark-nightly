Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/memory-device?download=true
inline.NumInlined: 71
inline.NumDeleted: 22
begin_hunk_0_@memory_device_get_free_addr:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = tail call i64 @memory_region_size(ptr noundef nonnull %i.f) #9 ; 3 uses
  %i.h = add i64 %.fr, -1                         ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %.not.i.i = icmp ule i64 %.fr, %i.i
  %i.j = icmp eq i64 %i.g, 0
  %or.cond.i.i = or i1 %i.j, %.not.i.i
  br i1 %or.cond.i.i, label %range_is_empty.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

range_is_empty.exit.i:                            ; preds = %bb.a
  %i.k = icmp ugt i64 %.fr, %i.i
  br i1 %i.k, label %bb.c, label %range_lob.exit

bb.c:                                             ; preds = %range_is_empty.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #11
  unreachable

range_lob.exit:                                   ; preds = %range_is_empty.exit.i
  %i.l = urem i64 %.fr, %2
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %range_lob.exit
  tail call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.13, i64 noundef %2) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %range_lob.exit
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %range_lob.exit98, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %1, align 8                ; 7 uses
  %i.o = urem i64 %i.n, %2
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i32 noundef 235, ptr noundef nonnull @__func__.memory_device_get_free_addr, ptr noundef nonnull @.str.14, i64 noundef %2) #9
  br label %range_lob.exit147

bb.h:                                             ; preds = %bb.f
  %i.q = add i64 %i.n, %3                         ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.n
  br i1 %i.r, label %range_lob.exit94, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = add i64 %i.q, -1                         ; 3 uses
  %.not.i.i85 = icmp ule i64 %i.n, %i.s           ; 2 uses
  %i.t = icmp eq i64 %3, 0
  %or.cond.i.i86 = or i1 %i.t, %.not.i.i85
  br i1 %or.cond.i.i86, label %range_contains_range.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

range_contains_range.exit:                        ; preds = %bb.i
  %.not.i = icmp ule i64 %.fr, %i.n
  %i.u = icmp uge i64 %i.i, %i.s
  %i.v = and i1 %.not.i, %i.u
  %spec.select.i = and i1 %.not.i.i85, %i.v
  br i1 %spec.select.i, label %range_init.exit102.thread, label %range_lob.exit94

range_lob.exit94:                                 ; preds = %bb.h, %range_contains_range.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i32 noundef 244, ptr noundef nonnull @__func__.memory_device_get_free_addr, ptr noundef nonnull @.str.15, i64 noundef %i.n, i64 noundef %3, i64 noundef %.fr, i64 noundef %i.g) #9
  br label %range_lob.exit147

range_lob.exit98:                                 ; preds = %bb.e
  %i.w = add i64 %i.h, %2                         ; 2 uses
  %i.x = urem i64 %i.w, %2
  %i.y = sub nuw i64 %i.w, %i.x                   ; 4 uses
  %i.z = add i64 %i.y, %3                         ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  br i1 %i.aa, label %range_init.exit102, label %bb.k

bb.k:                                             ; preds = %range_lob.exit98
  %i.ab = add i64 %i.z, -1                        ; 2 uses
  %.not.i.i99 = icmp ule i64 %i.y, %i.ab
  %i.ac = icmp eq i64 %3, 0
  %or.cond.i.i100 = or i1 %i.ac, %.not.i.i99
  br i1 %or.cond.i.i100, label %range_init.exit102.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

range_init.exit102:                               ; preds = %range_lob.exit98
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i32 noundef 249, ptr noundef nonnull @__func__.memory_device_get_free_addr, ptr noundef nonnull @.str.16) #9
  br label %range_lob.exit147

range_init.exit102.thread:                        ; preds = %bb.k, %range_contains_range.exit
  %.sroa.13.0 = phi i64 [ %i.s, %range_contains_range.exit ], [ %i.ab, %bb.k ] ; 2 uses
  %.sroa.0152.0 = phi i64 [ %i.n, %range_contains_range.exit ], [ %i.y, %bb.k ] ; 2 uses
  %i.ad = call i32 @object_child_foreach(ptr noundef nonnull %0, ptr noundef nonnull @memory_device_build_list, ptr noundef nonnull %i.b) #9 ; 0 uses
  %.042225 = load ptr, ptr %i.b, align 8          ; 2 uses
  %.not50226 = icmp eq ptr %.042225, null
  br i1 %.not50226, label %range_is_empty.exit.i136, label %.lr.ph

.lr.ph:                                           ; preds = %range_init.exit102.thread, %range_init.exit125.thread
  %.042229 = phi ptr [ %.042, %range_init.exit125.thread ], [ %.042225, %range_init.exit102.thread ] ; 2 uses
  %.sroa.0152.1228 = phi i64 [ %.sroa.0152.3.ph, %range_init.exit125.thread ], [ %.sroa.0152.0, %range_init.exit102.thread ] ; 9 uses
  %.sroa.13.1227 = phi i64 [ %.sroa.13.3.ph, %range_init.exit125.thread ], [ %.sroa.13.0, %range_init.exit102.thread ] ; 10 uses
  %i.ae = load ptr, ptr %.042229, align 8         ; 7 uses
  %i.af = call ptr @object_get_class(ptr noundef %i.ae) #9
  %i.ag = call ptr @object_class_dynamic_cast_assert(ptr noundef %i.af, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 24, ptr noundef nonnull @__func__.MEMORY_DEVICE_GET_CLASS) #9
  %i.ah = call ptr @object_get_class(ptr noundef %i.ae) #9
  %i.ai = call ptr @object_class_dynamic_cast_assert(ptr noundef %i.ah, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 24, ptr noundef nonnull @__func__.MEMORY_DEVICE_GET_CLASS) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call ptr %i.ak(ptr noundef %i.ae, ptr noundef nonnull %i.a) #9, !inline_history !11
  %i.am = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i103 = icmp eq ptr %i.am, null
  br i1 %.not.i103, label %memory_device_is_empty.exit, label %memory_device_is_empty.exit.thread

memory_device_is_empty.exit.thread:               ; preds = %.lr.ph
  call void @error_free(ptr noundef nonnull %i.am) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.m

memory_device_is_empty.exit:                      ; preds = %.lr.ph
  %.not6.i = icmp eq ptr %i.al, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not6.i, label %range_init.exit125.thread, label %bb.m

bb.m:                                             ; preds = %memory_device_is_empty.exit.thread, %memory_device_is_empty.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call i64 %i.ao(ptr noundef %i.ae) #9    ; 8 uses
  %i.aq = call ptr @object_get_class(ptr noundef %i.ae) #9
  %i.ar = call ptr @object_class_dynamic_cast_assert(ptr noundef %i.aq, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 24, ptr noundef nonnull @__func__.MEMORY_DEVICE_GET_CLASS) #9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call ptr %i.at(ptr noundef %i.ae, ptr noundef nonnull @error_abort) #9, !inline_history !15 ; 2 uses
  %.not.i105 = icmp eq ptr %i.au, null
  br i1 %.not.i105, label %memory_device_get_region_size.exit.thread, label %memory_device_get_region_size.exit

memory_device_get_region_size.exit.thread:        ; preds = %bb.m
  %i.av = add i64 %i.ap, -1
  %.not.i.i107181 = icmp eq i64 %i.ap, 0
  br label %range_init_nofail.exit109

memory_device_get_region_size.exit:               ; preds = %bb.m
  %i.aw = call i64 @memory_region_size(ptr noundef nonnull %i.au) #9 ; 2 uses
  %i.ax = add i64 %i.ap, -1
  %i.ay = add i64 %i.ax, %i.aw                    ; 2 uses
  %.not.i.i107 = icmp ule i64 %i.ap, %i.ay        ; 2 uses
  %i.az = icmp eq i64 %i.aw, 0
  %or.cond.i.i108 = or i1 %i.az, %.not.i.i107
  br i1 %or.cond.i.i108, label %range_init_nofail.exit109, label %bb.n

bb.n:                                             ; preds = %memory_device_get_region_size.exit
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

range_init_nofail.exit109:                        ; preds = %memory_device_get_region_size.exit.thread, %memory_device_get_region_size.exit
  %.not.i.i107183 = phi i1 [ %.not.i.i107181, %memory_device_get_region_size.exit.thread ], [ %.not.i.i107, %memory_device_get_region_size.exit ]
  %i.ba = phi i64 [ %i.av, %memory_device_get_region_size.exit.thread ], [ %i.ay, %memory_device_get_region_size.exit ]
  %.fr52 = freeze i64 %i.ba                       ; 4 uses
  %i.bb = add i64 %.fr52, 1
  %i.bc = icmp eq i64 %i.ap, %i.bb
  %or.cond.i.i.i111 = or i1 %.not.i.i107183, %i.bc
  br i1 %or.cond.i.i.i111, label %range_is_empty.exit.i112, label %bb.o

bb.o:                                             ; preds = %range_init_nofail.exit109
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

range_is_empty.exit.i112:                         ; preds = %range_init_nofail.exit109
  %i.bd = icmp ugt i64 %i.ap, %.fr52
  br i1 %i.bd, label %bb.v, label %bb.p

bb.p:                                             ; preds = %range_is_empty.exit.i112
  %.not.i.i10.i113 = icmp ule i64 %.sroa.0152.1228, %.sroa.13.1227 ; 2 uses
  %i.be = add i64 %.sroa.13.1227, 1               ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0152.1228, %i.be
  %or.cond.i.i11.i114 = or i1 %.not.i.i10.i113, %i.bf
  br i1 %or.cond.i.i11.i114, label %range_overlaps_range.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

range_overlaps_range.exit:                        ; preds = %bb.p
  %i.bg = icmp uge i64 %.sroa.13.1227, %i.ap
  %i.bh = icmp uge i64 %.fr52, %.sroa.0152.1228
  %i.bi = and i1 %i.bg, %i.bh
  %spec.select.i116 = and i1 %.not.i.i10.i113, %i.bi
  br i1 %spec.select.i116, label %bb.r, label %range_is_empty.exit.i132

bb.r:                                             ; preds = %range_overlaps_range.exit
  br i1 %.not, label %range_upb.exit, label %range_init.exit125

range_upb.exit:                                   ; preds = %bb.r
  %i.bj = add i64 %.fr52, %2                      ; 3 uses
  %5 = urem i64 %i.bj, %2                         ; 2 uses
  %.not53 = icmp eq i64 %i.bj, %5
  br i1 %.not53, label %range_is_empty.exit.i136, label %bb.s

bb.s:                                             ; preds = %range_upb.exit
  %i.bk = sub nuw i64 %i.bj, %5                   ; 4 uses
  %reass.sub.i121 = sub nuw i64 %.sroa.13.1227, %.sroa.0152.1228 ; 2 uses
  %i.bl = add i64 %reass.sub.i121, 1              ; 2 uses
  %i.bm = xor i64 %i.bk, -1
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %range_is_empty.exit.i136, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = add i64 %i.bk, %reass.sub.i121          ; 2 uses
  %.not.i.i122 = icmp ule i64 %i.bk, %i.bo
  %i.bp = icmp eq i64 %i.bl, 0
  %or.cond.i.i123 = or i1 %i.bp, %.not.i.i122
  br i1 %or.cond.i.i123, label %range_init.exit125.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

bb.v:                                             ; preds = %range_is_empty.exit.i112
  call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #11
  unreachable

range_is_empty.exit.i132:                         ; preds = %range_overlaps_range.exit
  %i.bq = icmp ugt i64 %.sroa.0152.1228, %.sroa.13.1227
  br i1 %i.bq, label %bb.w, label %range_upb.exit133

bb.w:                                             ; preds = %range_is_empty.exit.i132
  call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 110, ptr noundef nonnull @__PRETTY_FUNCTION__.range_upb) #11
  unreachable

range_upb.exit133:                                ; preds = %range_is_empty.exit.i132
  %i.br = icmp ugt i64 %i.ap, %.sroa.13.1227
  br i1 %i.br, label %range_is_empty.exit.i136, label %range_init.exit125.thread

range_init.exit125:                               ; preds = %bb.r
  %i.bs = call ptr @object_dynamic_cast_assert(ptr noundef %i.ae, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.bu, null
  %spec.select = select i1 %.not55, ptr @.str.18, ptr %i.bu
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i32 noundef 273, ptr noundef nonnull @__func__.memory_device_get_free_addr, ptr noundef nonnull @.str.17, ptr noundef nonnull %spec.select) #9
  br label %bb.z

range_init.exit125.thread:                        ; preds = %range_upb.exit133, %bb.t, %memory_device_is_empty.exit
  %.sroa.13.3.ph = phi i64 [ %i.bo, %bb.t ], [ %.sroa.13.1227, %memory_device_is_empty.exit ], [ %.sroa.13.1227, %range_upb.exit133 ] ; 2 uses
  %.sroa.0152.3.ph = phi i64 [ %i.bk, %bb.t ], [ %.sroa.0152.1228, %memory_device_is_empty.exit ], [ %.sroa.0152.1228, %range_upb.exit133 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.042229, i64 8
  %.042 = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not50 = icmp eq ptr %.042, null
  br i1 %.not50, label %range_is_empty.exit.i136, label %.lr.ph, !llvm.loop !16

range_is_empty.exit.i136:                         ; preds = %range_init.exit125.thread, %bb.s, %range_upb.exit133, %range_upb.exit, %range_init.exit102.thread
  %.sroa.13.4 = phi i64 [ %.sroa.13.0, %range_init.exit102.thread ], [ 0, %bb.s ], [ 0, %range_upb.exit ], [ %.sroa.13.1227, %range_upb.exit133 ], [ %.sroa.13.3.ph, %range_init.exit125.thread ] ; 5 uses
  %.sroa.0152.4 = phi i64 [ %.sroa.0152.0, %range_init.exit102.thread ], [ 1, %bb.s ], [ 1, %range_upb.exit ], [ %.sroa.0152.1228, %range_upb.exit133 ], [ %.sroa.0152.3.ph, %range_init.exit125.thread ] ; 5 uses
  %.not.i.i10.i137 = icmp ule i64 %.sroa.0152.4, %.sroa.13.4 ; 2 uses
  %i.bw = add i64 %.sroa.13.4, 1                  ; 3 uses
  %i.bx = icmp eq i64 %.sroa.0152.4, %i.bw
  %or.cond.i.i11.i138 = or i1 %.not.i.i10.i137, %i.bx
  br i1 %or.cond.i.i11.i138, label %range_contains_range.exit143, label %bb.x

bb.x:                                             ; preds = %range_is_empty.exit.i136
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

range_contains_range.exit143:                     ; preds = %range_is_empty.exit.i136
  %.not.i140 = icmp ule i64 %.fr, %.sroa.0152.4
  %i.by = icmp uge i64 %i.i, %.sroa.13.4
  %i.bz = and i1 %i.by, %.not.i140
  %spec.select.i141 = and i1 %.not.i.i10.i137, %i.bz
  br i1 %spec.select.i141, label %bb.z, label %bb.y

bb.y:                                             ; preds = %range_contains_range.exit143
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, i32 noundef 289, ptr noundef nonnull @__func__.memory_device_get_free_addr, ptr noundef nonnull @.str.19) #9
  br label %bb.z

bb.z:                                             ; preds = %range_init.exit125, %range_contains_range.exit143, %bb.y
  %.pre-phi = phi i64 [ %i.be, %range_init.exit125 ], [ %i.bw, %range_contains_range.exit143 ], [ %i.bw, %bb.y ]
  %.sroa.13.5 = phi i64 [ %.sroa.13.1227, %range_init.exit125 ], [ %.sroa.13.4, %range_contains_range.exit143 ], [ %.sroa.13.4, %bb.y ] ; 2 uses
  %.sroa.0152.5 = phi i64 [ %.sroa.0152.1228, %range_init.exit125 ], [ %.sroa.0152.4, %range_contains_range.exit143 ], [ %.sroa.0152.4, %bb.y ] ; 4 uses
  %i.ca = load ptr, ptr %i.b, align 8
  call void @g_slist_free(ptr noundef %i.ca) #9
  %.not.i.i.i144 = icmp ule i64 %.sroa.0152.5, %.sroa.13.5
  %i.cb = icmp eq i64 %.sroa.0152.5, %.pre-phi
  %or.cond.i.i.i145 = or i1 %.not.i.i.i144, %i.cb
  br i1 %or.cond.i.i.i145, label %range_is_empty.exit.i146, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #11
  unreachable

range_is_empty.exit.i146:                         ; preds = %bb.z
  %i.cc = icmp ugt i64 %.sroa.0152.5, %.sroa.13.5
  br i1 %i.cc, label %bb.ab, label %range_lob.exit147

bb.ab:                                            ; preds = %range_is_empty.exit.i146
  call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #11
  unreachable

range_lob.exit147:                                ; preds = %range_is_empty.exit.i146, %range_init.exit102, %range_lob.exit94, %bb.g
  %.043 = phi i64 [ 0, %range_lob.exit94 ], [ 0, %bb.g ], [ 0, %range_init.exit102 ], [ %.sroa.0152.5, %range_is_empty.exit.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i64 %.043
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_memory_device_pre_plug(ptr noundef %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_MEMORY_DEVICE_PRE_PLUG_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, ptr noundef %0, i64 noundef %1) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @memory_device_plug(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call ptr @object_get_class(ptr noundef %0) #9
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 24, ptr noundef nonnull @__func__.MEMORY_DEVICE_GET_CLASS) #9 ; 3 uses
  %i.d = tail call ptr @object_get_class(ptr noundef %0) #9
  %i.e = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.d, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 24, ptr noundef nonnull @__func__.MEMORY_DEVICE_GET_CLASS) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call ptr %i.g(ptr noundef %0, ptr noundef nonnull %i.a) #9, !inline_history !11
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %memory_device_is_empty.exit, label %memory_device_is_empty.exit.thread

memory_device_is_empty.exit.thread:               ; preds = %bb.a
  call void @error_free(ptr noundef nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.b

memory_device_is_empty.exit:                      ; preds = %bb.a
  %.not6.i = icmp eq ptr %i.h, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not6.i, label %trace_memory_device_plug.exit, label %bb.b

bb.b:                                             ; preds = %memory_device_is_empty.exit.thread, %memory_device_is_empty.exit
  %i.j = call ptr @object_get_class(ptr noundef %0) #9
  %i.k = call ptr @object_class_dynamic_cast_assert(ptr noundef %i.j, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 24, ptr noundef nonnull @__func__.MEMORY_DEVICE_GET_CLASS) #9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not.i26 = icmp eq ptr %i.m, null
  br i1 %.not.i26, label %memory_device_get_memslots.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i32 %i.m(ptr noundef %0) #9, !inline_history !18
  br label %memory_device_get_memslots.exit

memory_device_get_memslots.exit:                  ; preds = %bb.b, %bb.c
  %.0.i27 = phi i32 [ %i.n, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i64 %i.p(ptr noundef %0) #9         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call ptr %i.s(ptr noundef %0, ptr noundef nonnull @error_abort) #9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.d, label %bb.e, !prof !19

bb.d:                                             ; preds = %memory_device_get_memslots.exit
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 429, ptr noundef nonnull @__func__.memory_device_plug, ptr noundef nonnull @.str.5) #11
  unreachable

bb.e:                                             ; preds = %memory_device_get_memslots.exit
  %i.w = call i64 @memory_region_size(ptr noundef %i.t) #9
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 648 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, %i.w
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = load ptr, ptr %i.u, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 656 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 16
  %i.ae = add i32 %i.ad, %.0.i27
  store i32 %i.ae, ptr %i.ac, align 16
end_hunk_0
