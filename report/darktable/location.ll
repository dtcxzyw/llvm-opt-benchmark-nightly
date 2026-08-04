inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0_@_lib_location_parser_start_element:bb.a

bb.av:                                            ; preds = %bb.au
  %i.hf = load i64, ptr %i.go, align 1
  %i.hg = xor i64 %i.hf, 5283378029480790348
  %i.hh = getelementptr i8, ptr %i.go, i64 8
  %i.hi = load i16, ptr %i.hh, align 1
  %i.hj = zext i16 %i.hi to i64
  %i.hk = xor i64 %i.hj, 18254
  %i.hl = or i64 %i.hg, %i.hk
  %i.hm = icmp ne i64 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %bcmp287.fr = freeze i32 %i.hn
  %.not393 = icmp eq i32 %bcmp287.fr, 0
  br i1 %.not393, label %bb.aw, label %.thread325

.thread325:                                       ; preds = %.split383, %bb.au, %bb.av
  br label %bb.aw

bb.aw:                                            ; preds = %.split383, %bb.av, %.thread325
  %i.ho = phi i32 [ 3, %.thread325 ], [ 2, %bb.av ], [ 2, %.split383 ]
  store i32 %i.ho, ptr %i.m, align 8, !tbaa !85
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.loopexit397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.bl

.thread305:                                       ; preds = %.split376, %.thread302.thread, %bb.ab
  %i.hp = phi ptr [ %i.dn, %.thread302.thread ], [ %i.dn, %bb.ab ], [ %.pre354.pre, %.split376 ]
  %i.hq = call noalias ptr @g_strndup(ptr noundef %i.hp, i64 noundef 100) #12 ; 3 uses
  %i.hr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hq) #14
  %i.hs = load ptr, ptr %.0213343, align 8, !tbaa !104
  %i.ht = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hs) #14
  %i.hu = icmp eq i64 %i.hr, %i.ht
  %i.hv = select i1 %i.hu, ptr @.str.1, ptr @.str.23
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hv) #12
  call void @g_free(ptr noundef nonnull %i.hq) #12
  br label %bb.bl

bb.ay:                                            ; preds = %bb.r, %bb.q, %bb.p
  %i.hw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(5) @.str.24) #14
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.az, label %bb.bl

bb.az:                                            ; preds = %bb.ay
  %i.hy = load ptr, ptr %.0213343, align 8, !tbaa !104 ; 6 uses
  %i.hz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(8) @.str.25) #14
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 4, ptr %i.r, align 4, !tbaa !112
  br label %bb.bl

bb.bb:                                            ; preds = %bb.az
  %i.ib = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(7) @.str.26) #14
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 1, ptr %i.r, align 4, !tbaa !112
  br label %bb.bl

bb.bd:                                            ; preds = %bb.bb
  %i.id = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(5) @.str.27) #14
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 2, ptr %i.r, align 4, !tbaa !112
  br label %bb.bl

bb.bf:                                            ; preds = %bb.bd
  %i.if = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(15) @.str.28) #14
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 3, ptr %i.r, align 4, !tbaa !112
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.ih = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(11) @.str.29) #14
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 4, ptr %i.r, align 4, !tbaa !112
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.ij = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(12) @.str.30) #14
  %i.ik = icmp eq i32 %i.ij, 0
  br i1 %i.ik, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 4, ptr %i.r, align 4, !tbaa !112
  br label %bb.bl

bb.bl:                                            ; preds = %bb.f, %bb.o, %bb.ay, %bb.bc, %bb.bg, %bb.bj, %bb.bk, %bb.bi, %bb.be, %bb.ba, %bb.y, %.thread305, %bb.ax, %bb.h, %g_strdup_inline.exit
  %i.il = getelementptr inbounds nuw i8, ptr %.0212348, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0213343, i64 8
  %.pr = load ptr, ptr %i.il, align 8, !tbaa !104 ; 2 uses
  %.not252 = icmp eq ptr %.pr, null
  br i1 %.not252, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.bl, %bb.c
  %i.in = load float, ptr %i.g, align 8, !tbaa !92
  %i.io = fcmp uno float %i.in, 0.000000e+00
  br i1 %i.io, label %.loopexit337, label %bb.bm

bb.bm:                                            ; preds = %.loopexit
  %i.ip = load float, ptr %i.h, align 4, !tbaa !91
  %i.iq = fcmp uno float %i.ip, 0.000000e+00
  br i1 %i.iq, label %.loopexit337, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !28
  %i.it = call ptr @g_list_append(ptr noundef %i.is, ptr noundef nonnull %i.f) #12
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !28
  br label %bb.bo

.loopexit337:                                     ; preds = %g_strdup_inline.exit, %.loopexit, %bb.bm
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !78
  call void @g_free(ptr noundef %i.iv) #12
  call void @g_free(ptr noundef nonnull %i.f) #12
  br label %bb.bo

bb.bo:                                            ; preds = %bb.b, %.loopexit337, %bb.bn, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #10

declare i32 @dt_conf_get_bool(ptr noundef) local_unnamed_addr #4

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #4

declare double @g_strtod(ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @g_ascii_strtod(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @g_str_has_prefix(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noalias ptr @g_strndup(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #4

declare void @gtk_box_pack_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @_show_location(ptr nofree noundef captures(none) initializes((64, 72)) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load float, ptr %i.a, align 8, !tbaa !105 ; 2 uses
  %i.c = fcmp uno float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load float, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  %i.f = fcmp uno float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load float, ptr %i.g, align 8, !tbaa !107 ; 2 uses
  %i.i = fcmp uno float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !108 ; 2 uses
  %i.l = fcmp uno float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.m = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.m, align 4, !tbaa !112 ; 2 uses
  %i.n = icmp ult i32 %.val, 5
  br i1 %i.n, label %switch.lookup, label %_lib_location_place_get_zoom.exit

switch.lookup:                                    ; preds = %bb.e
  %i.o = zext nneg i32 %.val to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._show_location, i64 %i.o
  %switch.load = load double, ptr %switch.gep, align 8
  br label %_lib_location_place_get_zoom.exit

_lib_location_place_get_zoom.exit:                ; preds = %bb.e, %switch.lookup
  %.0.i = phi double [ %switch.load, %switch.lookup ], [ 8.000000e+00, %bb.e ]
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = load <2 x float>, ptr %i.q, align 8, !tbaa !84
  %3 = fpext <2 x float> %2 to <2 x double>       ; 2 uses
  %4 = extractelement <2 x double> %3, i64 0
  %5 = extractelement <2 x double> %3, i64 1
  tail call void @dt_view_map_center_on_location(ptr noundef %i.p, double noundef %4, double noundef %5, double noundef %.0.i) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !32
  %i.s = fpext reassoc nsz arcp contract afn float %i.b to double
  %i.t = fpext reassoc nsz arcp contract afn float %i.e to double
  %i.u = fpext reassoc nsz arcp contract afn float %i.h to double
  %i.v = fpext reassoc nsz arcp contract afn float %i.k to double
  tail call void @dt_view_map_center_on_bbox(ptr noundef %i.r, double noundef %i.s, double noundef %i.t, double noundef %i.u, double noundef %i.v) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_lib_location_place_get_zoom.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_clear_markers.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.ac = tail call i32 @dt_view_map_remove_marker(ptr noundef %i.z, i32 noundef %i.x, ptr noundef %i.ab) #12 ; 0 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !74
  tail call void @g_object_unref(ptr noundef %i.ad) #12
  store ptr null, ptr %i.aa, align 8, !tbaa !74
  store i32 0, ptr %i.w, align 8, !tbaa !31
  br label %_clear_markers.exit

_clear_markers.exit:                              ; preds = %bb.g, %bb.h
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82
  %i.aj = tail call ptr @dt_view_map_add_marker(ptr noundef %i.ae, i32 noundef %i.ag, ptr noundef %i.ai) #12
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !74
  %i.al = load i32, ptr %i.af, align 8, !tbaa !85 ; 3 uses
  store i32 %i.al, ptr %i.w, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.am, align 8, !tbaa !27
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !113
  %i.ao = trunc i32 %i.an to i1
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3496), align 8
  %i.aq = icmp ne i32 %i.ap, 0
  %or.cond = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_clear_markers.exit
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !114
  %i.as = and i32 %i.ar, 1048576
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef 331, ptr noundef nonnull @__FUNCTION__._show_location) #12
  %.pre = load i32, ptr %i.af, align 8, !tbaa !85
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %_clear_markers.exit
  %i.at = phi i32 [ %.pre, %bb.j ], [ %i.al, %bb.i ], [ %i.al, %_clear_markers.exit ]
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !115
  %i.av = icmp eq i32 %i.at, 3
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !82
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ax = phi ptr [ %i.aw, %bb.l ], [ null, %bb.k ]
  tail call void (ptr, i32, ...) @dt_control_signal_raise(ptr noundef %i.au, i32 noundef 45, ptr noundef %i.ax) #12
  ret void
}

declare ptr @gtk_event_box_new() local_unnamed_addr #4

declare void @gtk_widget_set_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_event_box_enter_leave(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !116
  %i.b = icmp eq i32 %i.a, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @gtk_widget_set_state_flags(ptr noundef %0, i32 noundef 2, i32 noundef 0) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @gtk_widget_unset_state_flags(ptr noundef %0, i32 noundef 2) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #4

declare void @gtk_label_set_line_wrap(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @dt_util_latitude_str(float noundef) local_unnamed_addr #4

declare ptr @dt_util_longitude_str(float noundef) local_unnamed_addr #4

declare noalias ptr @g_strconcat(ptr noundef, ...) local_unnamed_addr #4

declare void @gtk_container_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gtk_widget_show_all(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @_lib_location_result_item_activated(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96
  tail call fastcc void @_show_location(ptr noundef %i.a, ptr noundef %i.c)
  ret i32 1
}

declare void @gtk_widget_set_state_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gtk_widget_unset_state_flags(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @dt_view_map_center_on_location(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare void @dt_view_map_center_on_bbox(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #4

declare ptr @dt_view_map_add_marker(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @dt_control_signal_raise(ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !15, i64 288}
!12 = !{!"dt_lib_module_t", !13, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !17, i64 280, !15, i64 288, !9, i64 296, !18, i64 424, !18, i64 432, !8, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !8, i64 480}
!13 = !{!"dt_action_t", !8, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !16, i64 40}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 _ZTS11dt_action_t", !15, i64 0}
!17 = !{!"p1 _ZTS8_GModule", !15, i64 0}
!18 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"dt_lib_location_t", !21, i64 0, !18, i64 8, !22, i64 16, !22, i64 24, !14, i64 32, !23, i64 40, !24, i64 48, !8, i64 56, !25, i64 64, !22, i64 72}
!21 = !{!"p1 _ZTS9_GtkEntry", !15, i64 0}
!22 = !{!"p1 _ZTS6_GList", !15, i64 0}
!23 = !{!"long", !9, i64 0}
!24 = !{!"p1 _ZTS8_GObject", !15, i64 0}
!25 = !{!"p1 _ZTS22_lib_location_result_t", !15, i64 0}
!26 = !{!20, !14, i64 32}
!27 = !{!20, !25, i64 64}
!28 = !{!20, !22, i64 24}
!29 = !{!20, !18, i64 8}
!30 = !{!20, !22, i64 16}
!31 = !{!20, !8, i64 56}
!32 = !{!33, !39, i64 80}
!33 = !{!"darktable_t", !34, i64 0, !8, i64 4, !8, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !35, i64 48, !36, i64 56, !37, i64 64, !38, i64 72, !39, i64 80, !40, i64 88, !41, i64 96, !42, i64 104, !43, i64 112, !44, i64 120, !45, i64 128, !46, i64 136, !47, i64 144, !48, i64 152, !49, i64 160, !50, i64 168, !51, i64 176, !52, i64 184, !53, i64 192, !54, i64 200, !55, i64 208, !56, i64 216, !57, i64 224, !9, i64 232, !58, i64 2792, !58, i64 2832, !58, i64 2872, !58, i64 2912, !58, i64 2952, !58, i64 2992, !14, i64 3032, !14, i64 3040, !14, i64 3048, !14, i64 3056, !14, i64 3064, !14, i64 3072, !14, i64 3080, !14, i64 3088, !14, i64 3096, !14, i64 3104, !14, i64 3112, !14, i64 3120, !14, i64 3128, !59, i64 3136, !22, i64 3288, !66, i64 3296, !22, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !67, i64 3520, !68, i64 3528, !69, i64 3536, !71, i64 3576, !72, i64 3600, !73, i64 3632, !8, i64 3672}
!34 = !{!"dt_codepath_t", !8, i64 0}
!35 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!36 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!37 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
end_hunk_0
