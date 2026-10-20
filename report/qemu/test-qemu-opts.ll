Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/test-qemu-opts?download=true
inline.NumInlined: 34
inline.NumDeleted: 4
begin_hunk_0_@test_opts_parse_size:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i64 0, ptr %i.d, align 8
  %i.at = call i32 @qemu_opt_foreach(ptr noundef %i.as, ptr noundef nonnull @opts_count_iter, ptr noundef nonnull %i.d, ptr noundef null) #7 ; 0 uses
  %i.au = load i64, ptr %i.d, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.av = icmp eq i64 %i.au, 2
  br i1 %i.av, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = uitofp i64 %i.au to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 658, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.115, x86_fp80 noundef %i.aw, ptr noundef nonnull @.str.46, x86_fp80 noundef 2.000000e+00, i8 noundef signext 105) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.ax = call i64 @qemu_opt_get_size(ptr noundef %i.as, ptr noundef nonnull @.str.32, i64 noundef 1) #7 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, -2048
  br i1 %i.ay, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.az = uitofp i64 %i.ax to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 660, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.151, x86_fp80 noundef %i.az, ptr noundef nonnull @.str.46, x86_fp80 noundef f0x403EFFFFFFFFFFFFF800, i8 noundef signext 120) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ba = call i64 @qemu_opt_get_size(ptr noundef %i.as, ptr noundef nonnull @.str.33, i64 noundef 1) #7 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, -1025
  br i1 %i.bb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = uitofp i64 %i.ba to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 662, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.152, x86_fp80 noundef %i.bc, ptr noundef nonnull @.str.46, x86_fp80 noundef f0x403EFFFFFFFFFFFFFBFF, i8 noundef signext 120) #7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.bd = call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_02, ptr noundef nonnull @.str.153, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i64 0, ptr %i.c, align 8
  %i.be = call i32 @qemu_opt_foreach(ptr noundef %i.bd, ptr noundef nonnull @opts_count_iter, ptr noundef nonnull %i.c, ptr noundef null) #7 ; 0 uses
  %i.bf = load i64, ptr %i.c, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = uitofp i64 %i.bf to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 668, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.74, x86_fp80 noundef %i.bh, ptr noundef nonnull @.str.46, x86_fp80 noundef 1.000000e+00, i8 noundef signext 105) #7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bi = call i64 @qemu_opt_get_size(ptr noundef %i.bd, ptr noundef nonnull @.str.32, i64 noundef 1) #7 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, -1
  br i1 %i.bj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = uitofp i64 %i.bi to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 670, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.154, x86_fp80 noundef %i.bk, ptr noundef nonnull @.str.46, x86_fp80 noundef f0x403EFFFFFFFFFFFFFFFF, i8 noundef signext 120) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bl = call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_02, ptr noundef nonnull @.str.155, i1 noundef zeroext false, ptr noundef nonnull %i.h) #7
  call void @error_free_or_abort(ptr noundef nonnull %i.h) #7
  %.not.not = icmp eq ptr %i.bl, null
  br i1 %.not.not, label %bb.ag, label %bb.af, !prof !8

bb.af:                                            ; preds = %bb.ae
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 675, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.96) #8
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.bm = call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_02, ptr noundef nonnull @.str.156, i1 noundef zeroext false, ptr noundef nonnull %i.h) #7
  call void @error_free_or_abort(ptr noundef nonnull %i.h) #7
  %.not.not152 = icmp eq ptr %i.bm, null
  br i1 %.not.not152, label %bb.ai, label %bb.ah, !prof !8

bb.ah:                                            ; preds = %bb.ag
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 680, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.96) #8
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.bn = call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_02, ptr noundef nonnull @.str.157, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 0, ptr %i.b, align 8
  %i.bo = call i32 @qemu_opt_foreach(ptr noundef %i.bn, ptr noundef nonnull @opts_count_iter, ptr noundef nonnull %i.b, ptr noundef null) #7 ; 0 uses
  %i.bp = load i64, ptr %i.b, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.bq = icmp eq i64 %i.bp, 3
  br i1 %i.bq, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.br = uitofp i64 %i.bp to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 685, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.78, x86_fp80 noundef %i.br, ptr noundef nonnull @.str.46, x86_fp80 noundef 3.000000e+00, i8 noundef signext 105) #7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.bs = call i64 @qemu_opt_get_size(ptr noundef %i.bn, ptr noundef nonnull @.str.32, i64 noundef 0) #7 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 8
  br i1 %i.bt, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bu = uitofp i64 %i.bs to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 686, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.158, x86_fp80 noundef %i.bu, ptr noundef nonnull @.str.46, x86_fp80 noundef 8.000000e+00, i8 noundef signext 120) #7
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.bv = call i64 @qemu_opt_get_size(ptr noundef %i.bn, ptr noundef nonnull @.str.33, i64 noundef 0) #7 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 1536
  br i1 %i.bw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bx = uitofp i64 %i.bv to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 687, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.159, x86_fp80 noundef %i.bx, ptr noundef nonnull @.str.46, x86_fp80 noundef 1.536000e+03, i8 noundef signext 120) #7
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.by = call i64 @qemu_opt_get_size(ptr noundef %i.bn, ptr noundef nonnull @.str.34, i64 noundef 0) #7 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2097152
  br i1 %i.bz, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ca = uitofp i64 %i.by to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 688, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.160, x86_fp80 noundef %i.ca, ptr noundef nonnull @.str.46, x86_fp80 noundef f0x40148000000000000000, i8 noundef signext 120) #7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.cb = call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_02, ptr noundef nonnull @.str.161, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8
  %i.cc = call i32 @qemu_opt_foreach(ptr noundef %i.cb, ptr noundef nonnull @opts_count_iter, ptr noundef nonnull %i.a, ptr noundef null) #7 ; 0 uses
  %i.cd = load i64, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ce = icmp eq i64 %i.cd, 2
  br i1 %i.ce, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cf = uitofp i64 %i.cd to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 691, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.115, x86_fp80 noundef %i.cf, ptr noundef nonnull @.str.46, x86_fp80 noundef 2.000000e+00, i8 noundef signext 105) #7
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.cg = call i64 @qemu_opt_get_size(ptr noundef %i.cb, ptr noundef nonnull @.str.32, i64 noundef 0) #7 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 107374182
  br i1 %i.ch, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ci = uitofp i64 %i.cg to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 692, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.162, x86_fp80 noundef %i.ci, ptr noundef nonnull @.str.46, x86_fp80 noundef f0x4019CCCCCCC000000000, i8 noundef signext 120) #7
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %i.cj = call i64 @qemu_opt_get_size(ptr noundef %i.cb, ptr noundef nonnull @.str.33, i64 noundef 0) #7 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, -1099511627776
  br i1 %i.ck, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cl = uitofp i64 %i.cj to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 693, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.163, x86_fp80 noundef %i.cl, ptr noundef nonnull @.str.46, x86_fp80 noundef f0x403EFFFFFF0000000000, i8 noundef signext 120) #7
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.cm = call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_02, ptr noundef nonnull @.str.164, i1 noundef zeroext false, ptr noundef nonnull %i.h) #7
  call void @error_free_or_abort(ptr noundef nonnull %i.h) #7
  %.not.not154 = icmp eq ptr %i.cm, null
  br i1 %.not.not154, label %bb.ay, label %bb.ax, !prof !8

bb.ax:                                            ; preds = %bb.aw
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 699, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.96) #8
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.cn = call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_02, ptr noundef nonnull @.str.165, i1 noundef zeroext false, ptr noundef nonnull %i.h) #7
  call void @error_free_or_abort(ptr noundef nonnull %i.h) #7
  %.not.not156 = icmp eq ptr %i.cn, null
  br i1 %.not.not156, label %bb.ba, label %bb.az, !prof !8

bb.az:                                            ; preds = %bb.ay
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 704, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.96) #8
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.co = call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_02, ptr noundef nonnull @.str.166, i1 noundef zeroext false, ptr noundef nonnull %i.h) #7
  call void @error_free_or_abort(ptr noundef nonnull %i.h) #7
  %.not.not158 = icmp eq ptr %i.co, null
  br i1 %.not.not158, label %bb.bc, label %bb.bb, !prof !8

bb.bb:                                            ; preds = %bb.ba
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 707, ptr noundef nonnull @__func__.test_opts_parse_size, ptr noundef nonnull @.str.96) #8
  unreachable

bb.bc:                                            ; preds = %bb.ba
  call void @qemu_opts_reset(ptr noundef nonnull @opts_list_02) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_has_help_option() #2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr @test_has_help_option.test, i64 %indvars.iv
  %i.b = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.c = tail call zeroext i1 @has_help_option(ptr noundef %i.b) #7 ; 2 uses
  %0 = trunc i64 %indvars.iv to i32
  %1 = add i32 %0, -4
  %2 = icmp ult i32 %1, -2                        ; 4 uses
  %3 = xor i1 %2, %i.c
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = uitofp i1 %i.c to x86_fp80
  %i.e = uitofp i1 %2 to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 739, ptr noundef nonnull @__func__.test_has_help_option, ptr noundef nonnull @.str.179, x86_fp80 noundef %i.d, ptr noundef nonnull @.str.46, x86_fp80 noundef %i.e, i8 noundef signext 105) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.f = tail call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_03, ptr noundef %i.b, i1 noundef zeroext false, ptr noundef nonnull @error_abort) #7 ; 2 uses
  %i.g = tail call zeroext i1 @qemu_opt_has_help_opt(ptr noundef %i.f) #7 ; 2 uses
  %4 = xor i1 %2, %i.g
  br i1 %4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = uitofp i1 %i.g to x86_fp80
  %i.i = uitofp i1 %2 to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 743, ptr noundef nonnull @__func__.test_has_help_option, ptr noundef nonnull @.str.180, x86_fp80 noundef %i.h, ptr noundef nonnull @.str.46, x86_fp80 noundef %i.i, i8 noundef signext 105) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @qemu_opts_del(ptr noundef %i.f) #7
  %i.j = tail call ptr @qemu_opts_parse(ptr noundef nonnull @opts_list_03, ptr noundef %i.b, i1 noundef zeroext true, ptr noundef nonnull @error_abort) #7 ; 2 uses
  %i.k = tail call zeroext i1 @qemu_opt_has_help_opt(ptr noundef %i.j) #7 ; 2 uses
  %5 = lshr i64 3312, %indvars.iv                 ; 2 uses
  %6 = trunc i64 %5 to i1
  %7 = xor i1 %i.k, %6
  br i1 %7, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %8 = and i64 %5, 1
  %i.l = uitofp i1 %i.k to x86_fp80
  %i.m = uitofp nneg i64 %8 to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 748, ptr noundef nonnull @__func__.test_has_help_option, ptr noundef nonnull @.str.181, x86_fp80 noundef %i.l, ptr noundef nonnull @.str.46, x86_fp80 noundef %i.m, i8 noundef signext 105) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  tail call void @qemu_opts_del(ptr noundef %i.j) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12
  br i1 %exitcond.not, label %bb.i, label %bb.b, !llvm.loop !12

bb.i:                                             ; preds = %bb.h
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_opts_append_to_null() #2 {
bb.a:
  %i.a = tail call ptr @qemu_opts_append(ptr noundef null, ptr noundef nonnull @opts_list_01) #7 ; 6 uses
  %.not = icmp eq ptr %i.a, @opts_list_01
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 845, ptr noundef nonnull @__func__.test_opts_append_to_null, ptr noundef nonnull @.str.182) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call i32 @g_strcmp0(ptr noundef %i.b, ptr noundef null) #7
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 847, ptr noundef nonnull @__func__.test_opts_append_to_null, ptr noundef nonnull @.str.183, ptr noundef %i.b, ptr noundef nonnull @.str.46, ptr noundef null) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = tail call i32 @g_strcmp0(ptr noundef %i.f, ptr noundef null) #7
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 848, ptr noundef nonnull @__func__.test_opts_append_to_null, ptr noundef nonnull @.str.184, ptr noundef %i.f, ptr noundef nonnull @.str.46, ptr noundef null) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !10, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 849, ptr noundef nonnull @__func__.test_opts_append_to_null, ptr noundef nonnull @.str.185) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call fastcc void @append_verify_list_01(ptr noundef nonnull %i.l, i1 noundef zeroext true)
  tail call void @qemu_opts_free(ptr noundef nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @test_opts_append() #2 {
bb.a:
  %i.a = tail call ptr @qemu_opts_append(ptr noundef null, ptr noundef nonnull @opts_list_02) #7 ; 2 uses
  %i.b = tail call ptr @qemu_opts_append(ptr noundef %i.a, ptr noundef nonnull @opts_list_01) #7 ; 34 uses
  %.not = icmp eq ptr %i.a, @opts_list_02
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 862, ptr noundef nonnull @__func__.test_opts_append, ptr noundef nonnull @.str.199) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not25 = icmp eq ptr %i.b, @opts_list_01
  br i1 %.not25, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 863, ptr noundef nonnull @__func__.test_opts_append, ptr noundef nonnull @.str.182) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = tail call i32 @g_strcmp0(ptr noundef %i.c, ptr noundef null) #7
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 865, ptr noundef nonnull @__func__.test_opts_append, ptr noundef nonnull @.str.183, ptr noundef %i.c, ptr noundef nonnull @.str.46, ptr noundef null) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = tail call i32 @g_strcmp0(ptr noundef %i.g, ptr noundef null) #7
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 866, ptr noundef nonnull @__func__.test_opts_append, ptr noundef nonnull @.str.184, ptr noundef %i.g, ptr noundef nonnull @.str.46, ptr noundef null) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %bb.i
  tail call void @g_assertion_message(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 867, ptr noundef nonnull @__func__.test_opts_append, ptr noundef nonnull @.str.185) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call i32 @g_strcmp0(ptr noundef %i.n, ptr noundef nonnull @.str.20) #7
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 798, ptr noundef nonnull @__func__.append_verify_list_02, ptr noundef nonnull @.str.186, ptr noundef %i.n, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.20) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = uitofp i32 %i.r to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 799, ptr noundef nonnull @__func__.append_verify_list_02, ptr noundef nonnull @.str.187, x86_fp80 noundef %i.t, ptr noundef nonnull @.str.46, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = tail call i32 @g_strcmp0(ptr noundef %i.v, ptr noundef null) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 800, ptr noundef nonnull @__func__.append_verify_list_02, ptr noundef nonnull @.str.191, ptr noundef %i.v, ptr noundef nonnull @.str.46, ptr noundef null) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = tail call i32 @g_strcmp0(ptr noundef %i.z, ptr noundef null) #7
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 801, ptr noundef nonnull @__func__.append_verify_list_02, ptr noundef nonnull @.str.192, ptr noundef %i.z, ptr noundef nonnull @.str.46, ptr noundef null) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = tail call i32 @g_strcmp0(ptr noundef %i.ad, ptr noundef nonnull @.str.23) #7
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 804, ptr noundef nonnull @__func__.append_verify_list_02, ptr noundef nonnull @.str.190, ptr noundef %i.ad, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.23) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = uitofp i32 %i.ah to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 805, ptr noundef nonnull @__func__.append_verify_list_02, ptr noundef nonnull @.str.187, x86_fp80 noundef %i.aj, ptr noundef nonnull @.str.46, x86_fp80 noundef 0.000000e+00, i8 noundef signext 105) #7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = tail call i32 @g_strcmp0(ptr noundef %i.al, ptr noundef null) #7
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 806, ptr noundef nonnull @__func__.append_verify_list_02, ptr noundef nonnull @.str.191, ptr noundef %i.al, ptr noundef nonnull @.str.46, ptr noundef null) #7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = tail call i32 @g_strcmp0(ptr noundef %i.ap, ptr noundef null) #7
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 807, ptr noundef nonnull @__func__.append_verify_list_02, ptr noundef nonnull @.str.192, ptr noundef %i.ap, ptr noundef nonnull @.str.46, ptr noundef null) #7
  br label %bb.aa
end_hunk_0
