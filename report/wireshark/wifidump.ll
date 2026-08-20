inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@main:g_strdup_inline.exit139
bb.ai:                                            ; preds = %bb.ae, %bb.ag, %bb.ah, %bb.z, %bb.ad, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.q, %bb.m, %bb.j, %bb.i, %bb.h
  %.293 = phi ptr [ null, %bb.h ], [ %.091, %bb.y ], [ %.091, %bb.i ], [ %.091, %bb.j ], [ %.091, %bb.m ], [ %.091, %bb.q ], [ %.091, %bb.s ], [ %.091, %bb.v ], [ %.091, %bb.ag ], [ %.091, %bb.ab ], [ %.091, %bb.ad ], [ %.091, %bb.z ], [ %.091, %bb.ah ], [ %.091, %bb.ae ]
  %.2 = phi ptr [ null, %bb.h ], [ %.089, %bb.y ], [ %.089, %bb.i ], [ %.089, %bb.j ], [ %.089, %bb.m ], [ %.089, %bb.q ], [ %.089, %bb.s ], [ %.089, %bb.v ], [ %.089, %bb.ag ], [ %.089, %bb.ab ], [ %.089, %bb.ad ], [ %.089, %bb.z ], [ %.089, %bb.ah ], [ %.089, %bb.ae ]
  %.188 = phi i32 [ 1, %bb.h ], [ 1, %bb.y ], [ 0, %bb.i ], [ 0, %bb.j ], [ 1, %bb.m ], [ 1, %bb.q ], [ 1, %bb.s ], [ 1, %bb.v ], [ 1, %bb.ag ], [ %i.cx, %bb.ab ], [ 1, %bb.ad ], [ 0, %bb.z ], [ %i.du, %bb.ah ], [ 1, %bb.ae ]
  call void @ssh_params_free(ptr noundef %i.f)
  call void @g_free(ptr noundef %.293)
  call void @g_free(ptr noundef %.2)
  call void @extcap_base_cleanup(ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.188
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare ptr @ssh_params_new() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid
declare void @g_set_prgname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @extcap_log_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_path_get_basename(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_str_has_suffix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @init_process_policies() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @configuration_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @data_file_url(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @application_configuration_environment_prefix() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @extcap_base_set_util_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @add_libssh_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @extcap_base_register_interface(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @extcap_help_add_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @extcap_help_add_option(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @extcap_help_print(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @ws_getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @extcap_version_print(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou16(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @ws_strtou32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @extcap_base_parse_options(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @extcap_cmdline_debug(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @extcap_base_handle_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @list_config(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.1, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 427, ptr noundef nonnull @__func__.list_config, ptr noundef nonnull @.str.79)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @wifidump_extcap_interface, align 8
  %i.c = tail call i32 @g_strcmp0(ptr noundef nonnull %0, ptr noundef %i.b)
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @wifidump_extcap_interface, align 8
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.1, i32 noundef 5, ptr noundef nonnull @.str.4, i64 noundef 432, ptr noundef nonnull @__func__.list_config, ptr noundef nonnull @.str.80, ptr noundef %i.d)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 0) ; 0 uses
  %i.f = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef 1) ; 0 uses
  %i.g = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef 2) ; 0 uses
  %i.h = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef 3) ; 0 uses
  %i.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.85, i32 noundef 4) ; 0 uses
  %i.j = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.86, i32 noundef 5) ; 0 uses
  %i.k = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.87, i32 noundef 6) ; 0 uses
  %i.l = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.88, i32 noundef 7) ; 0 uses
  %i.m = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.89, i32 noundef 8) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %freq_to_channel.exit
  %indvars.iv = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %freq_to_channel.exit ] ; 4 uses
  %i.n = getelementptr [4 x i8], ptr @wifi_freqs_2dot4_5ghz, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4              ; 5 uses
  %i.p = add i32 %i.o, -2412                      ; 2 uses
  %or.cond.i = icmp ult i32 %i.p, 73
  br i1 %or.cond.i, label %freq_to_band.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add i32 %i.o, -5160
  %or.cond3.i = icmp ult i32 %i.q, 726
  br i1 %or.cond3.i, label %bb.i, label %freq_to_band.exit.thread45

freq_to_band.exit:                                ; preds = %bb.f
  %i.r = icmp eq i64 %indvars.iv, 13
  br i1 %i.r, label %freq_to_channel.exit, label %bb.h

freq_to_band.exit.thread45:                       ; preds = %bb.g
  %i.s = add i32 %i.o, -5955                      ; 2 uses
  %or.cond5.i = icmp ugt i32 %i.s, 1160           ; 2 uses
  %i.t = icmp eq i64 %indvars.iv, 13              ; 3 uses
  %brmerge = or i1 %i.t, %or.cond5.i
  %i.u = xor i1 %or.cond5.i, true
  %i.v = and i1 %i.t, %i.u
  %.str.103..i.mux = select i1 %i.v, ptr @.str.103, ptr null
  %.mux = select i1 %i.t, i32 14, i32 0
  br i1 %brmerge, label %freq_to_channel.exit, label %bb.j

bb.h:                                             ; preds = %freq_to_band.exit
  %.lhs.trunc.i = trunc nuw nsw i32 %i.p to i8
  %i.w = udiv i8 %.lhs.trunc.i, 5
  %narrow19.i = add nuw nsw i8 %i.w, 1
  %i.x = zext nneg i8 %narrow19.i to i32
  br label %freq_to_channel.exit

bb.i:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.o, -5180
  %i.z = udiv i32 %i.y, 5
  %i.aa = add nuw nsw i32 %i.z, 36
  br label %freq_to_channel.exit

bb.j:                                             ; preds = %freq_to_band.exit.thread45
  %.lhs.trunc17.i = trunc nuw nsw i32 %i.s to i16
  %i.ab = udiv i16 %.lhs.trunc17.i, 5
  %narrow.i = add nuw nsw i16 %i.ab, 1
  %i.ac = zext nneg i16 %narrow.i to i32
  br label %freq_to_channel.exit

freq_to_channel.exit:                             ; preds = %freq_to_band.exit.thread45, %freq_to_band.exit, %bb.h, %bb.i, %bb.j
  %.0.i42 = phi ptr [ @.str.101, %freq_to_band.exit ], [ @.str.101, %bb.h ], [ @.str.102, %bb.i ], [ @.str.103, %bb.j ], [ %.str.103..i.mux, %freq_to_band.exit.thread45 ]
  %.0.i24 = phi i32 [ 14, %freq_to_band.exit ], [ %i.x, %bb.h ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ %.mux, %freq_to_band.exit.thread45 ]
  %i.ad = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.90, i32 noundef 8, i32 noundef %i.o, ptr noundef %.0.i42, i32 noundef %.0.i24) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not20 = icmp eq i64 %indvars.iv.next, 39
  br i1 %.not20, label %freq_to_channel.exit39, label %bb.f, !llvm.loop !10

freq_to_channel.exit39:                           ; preds = %freq_to_channel.exit, %freq_to_channel.exit39
  %.069 = phi i32 [ %i.al, %freq_to_channel.exit39 ], [ 5955, %freq_to_channel.exit ] ; 3 uses
  %.01468 = phi i32 [ %i.am, %freq_to_channel.exit39 ], [ 3, %freq_to_channel.exit ] ; 2 uses
  %i.ae = trunc i32 %.069 to i16
  %.lhs.trunc17.i35 = add i16 %i.ae, -5955
  %i.af = udiv i16 %.lhs.trunc17.i35, 5
  %narrow.i36 = add nuw nsw i16 %i.af, 1
  %i.ag = zext nneg i16 %narrow.i36 to i32
  %i.ah = and i32 %.01468, 3
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = select i1 %i.ai, ptr @.str.92, ptr @.str.93
  %i.ak = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.91, i32 noundef 8, i32 noundef %.069, ptr noundef nonnull @.str.103, i32 noundef %i.ag, ptr noundef nonnull %i.aj) ; 0 uses
  %i.al = add nuw nsw i32 %.069, 20
  %i.am = add nuw nsw i32 %.01468, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, 62
  br i1 %exitcond.not, label %bb.k, label %freq_to_channel.exit39, !llvm.loop !11

bb.k:                                             ; preds = %freq_to_channel.exit39
  %i.an = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.94, i32 noundef 9) ; 0 uses
  %i.ao = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.95, i32 noundef 9) ; 0 uses
  %i.ap = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.96, i32 noundef 9) ; 0 uses
  %i.aq = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.97, i32 noundef 9) ; 0 uses
  %i.ar = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.98, i32 noundef 9) ; 0 uses
  %i.as = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.99, i32 noundef 10) ; 0 uses
  store i32 12, ptr %i.a, align 4
  %i.at = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.100, i32 noundef 11) ; 0 uses
  call void @extcap_config_debug(ptr noundef nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.b
  %.016 = phi i32 [ 1, %bb.d ], [ 0, %bb.k ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.016
}

; Function Attrs: null_pointer_is_valid
declare ptr @ws_init_sockets() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @please_report_bug() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal fastcc range(i32 -1, 65536) i32 @center_freq(i32 noundef range(i32 0, 65536) %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #5 {
bb.a:
  %i.a = add nsw i32 %1, -20                      ; 2 uses
  %i.b = tail call i32 @llvm.fshl.i32(i32 %i.a, i32 %i.a, i32 30)
  switch i32 %i.b, label %.loopexit [
    i32 0, label %bb.k
    i32 5, label %bb.b
    i32 15, label %bb.f
    i32 35, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %0, -5180
  %or.cond = icmp ult i32 %i.c, 541
  br i1 %or.cond, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %bb.b
  %i.d = add nsw i32 %0, -5201
  %or.cond104 = icmp ult i32 %i.d, -21
  br i1 %or.cond104, label %.preheader.1, label %bb.k

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.e = add nsw i32 %0, -5241
  %or.cond104.1 = icmp ult i32 %i.e, -21
  br i1 %or.cond104.1, label %.preheader.2, label %bb.k

.preheader.2:                                     ; preds = %.preheader.1
  %i.f = add nsw i32 %0, -5281
  %or.cond104.2 = icmp ult i32 %i.f, -21
  br i1 %or.cond104.2, label %.preheader.3, label %bb.k

.preheader.3:                                     ; preds = %.preheader.2
  %i.g = add nsw i32 %0, -5321
  %or.cond104.3 = icmp ult i32 %i.g, -21
  br i1 %or.cond104.3, label %.preheader.4, label %bb.k

.preheader.4:                                     ; preds = %.preheader.3
  %i.h = add nsw i32 %0, -5361
  %or.cond104.4 = icmp ult i32 %i.h, -21
  br i1 %or.cond104.4, label %.preheader.5, label %bb.k

.preheader.5:                                     ; preds = %.preheader.4
  %i.i = add nsw i32 %0, -5401
  %or.cond104.5 = icmp ult i32 %i.i, -21
  br i1 %or.cond104.5, label %.preheader.6, label %bb.k

.preheader.6:                                     ; preds = %.preheader.5
  %i.j = add nsw i32 %0, -5441
  %or.cond104.6 = icmp ult i32 %i.j, -21
  br i1 %or.cond104.6, label %.preheader.7, label %bb.k

.preheader.7:                                     ; preds = %.preheader.6
  %i.k = add nsw i32 %0, -5481
  %or.cond104.7 = icmp ult i32 %i.k, -21
  br i1 %or.cond104.7, label %.preheader.8, label %bb.k

.preheader.8:                                     ; preds = %.preheader.7
  %i.l = add nsw i32 %0, -5521
  %or.cond104.8 = icmp ult i32 %i.l, -21
  br i1 %or.cond104.8, label %.preheader.9, label %bb.k

.preheader.9:                                     ; preds = %.preheader.8
  %i.m = add nsw i32 %0, -5561
  %or.cond104.9 = icmp ult i32 %i.m, -21
  br i1 %or.cond104.9, label %.preheader.10, label %bb.k

.preheader.10:                                    ; preds = %.preheader.9
  %i.n = add nsw i32 %0, -5601
  %or.cond104.10 = icmp ult i32 %i.n, -21
  br i1 %or.cond104.10, label %.preheader.11, label %bb.k

.preheader.11:                                    ; preds = %.preheader.10
  %i.o = add nsw i32 %0, -5641
  %or.cond104.11 = icmp ult i32 %i.o, -21
  br i1 %or.cond104.11, label %.preheader.12, label %bb.k

.preheader.12:                                    ; preds = %.preheader.11
  %i.p = add nsw i32 %0, -5681
  %or.cond104.12 = icmp ult i32 %i.p, -21
  br i1 %or.cond104.12, label %.preheader.13, label %bb.k

.preheader.13:                                    ; preds = %.preheader.12
  %or.cond104.13 = icmp samesign ult i32 %0, 5700
  br i1 %or.cond104.13, label %.loopexit, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %0, -5745
  %or.cond3 = icmp ult i32 %i.q, 21
  br i1 %or.cond3, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %0, -5785
  %or.cond5 = icmp ult i32 %i.r, 21
  br i1 %or.cond5, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %0, -5955
  %or.cond7 = icmp ult i32 %i.s, 1141
  br i1 %or.cond7, label %.preheader110.preheader, label %.loopexit

.preheader110.preheader:                          ; preds = %bb.e
  %i.t = add nsw i32 %0, -5976
  %or.cond105 = icmp ult i32 %i.t, -21
  br i1 %or.cond105, label %.preheader110.1, label %bb.k

.preheader110.1:                                  ; preds = %.preheader110.preheader
  %i.u = add nsw i32 %0, -6016
  %or.cond105.1 = icmp ult i32 %i.u, -21
  br i1 %or.cond105.1, label %.preheader110.2, label %bb.k

.preheader110.2:                                  ; preds = %.preheader110.1
  %i.v = add nsw i32 %0, -6056
  %or.cond105.2 = icmp ult i32 %i.v, -21
  br i1 %or.cond105.2, label %.preheader110.3, label %bb.k

.preheader110.3:                                  ; preds = %.preheader110.2
  %i.w = add nsw i32 %0, -6096
  %or.cond105.3 = icmp ult i32 %i.w, -21
  br i1 %or.cond105.3, label %.preheader110.4, label %bb.k

.preheader110.4:                                  ; preds = %.preheader110.3
  %i.x = add nsw i32 %0, -6136
  %or.cond105.4 = icmp ult i32 %i.x, -21
  br i1 %or.cond105.4, label %.preheader110.5, label %bb.k

.preheader110.5:                                  ; preds = %.preheader110.4
  %i.y = add nsw i32 %0, -6176
  %or.cond105.5 = icmp ult i32 %i.y, -21
  br i1 %or.cond105.5, label %.preheader110.6, label %bb.k

.preheader110.6:                                  ; preds = %.preheader110.5
  %i.z = add nsw i32 %0, -6216
  %or.cond105.6 = icmp ult i32 %i.z, -21
  br i1 %or.cond105.6, label %.preheader110.7, label %bb.k

.preheader110.7:                                  ; preds = %.preheader110.6
  %i.aa = add nsw i32 %0, -6256
  %or.cond105.7 = icmp ult i32 %i.aa, -21
  br i1 %or.cond105.7, label %.preheader110.8, label %bb.k

.preheader110.8:                                  ; preds = %.preheader110.7
  %i.ab = add nsw i32 %0, -6296
  %or.cond105.8 = icmp ult i32 %i.ab, -21
  br i1 %or.cond105.8, label %.preheader110.9, label %bb.k

.preheader110.9:                                  ; preds = %.preheader110.8
  %i.ac = add nsw i32 %0, -6336
  %or.cond105.9 = icmp ult i32 %i.ac, -21
  br i1 %or.cond105.9, label %.preheader110.10, label %bb.k

.preheader110.10:                                 ; preds = %.preheader110.9
  %i.ad = add nsw i32 %0, -6376
  %or.cond105.10 = icmp ult i32 %i.ad, -21
  br i1 %or.cond105.10, label %.preheader110.11, label %bb.k

.preheader110.11:                                 ; preds = %.preheader110.10
  %i.ae = add nsw i32 %0, -6416
  %or.cond105.11 = icmp ult i32 %i.ae, -21
  br i1 %or.cond105.11, label %.preheader110.12, label %bb.k

.preheader110.12:                                 ; preds = %.preheader110.11
  %i.af = add nsw i32 %0, -6456
end_hunk_0
