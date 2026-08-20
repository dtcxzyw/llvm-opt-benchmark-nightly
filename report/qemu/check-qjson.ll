inline.NumInlined: 67
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@float_number:.peel.begin
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.as, label %qobject_unref_impl.exit.2

bb.as:                                            ; preds = %bb.ar
  call void @qobject_destroy(ptr noundef nonnull %i.bs) #9
  br label %qobject_unref_impl.exit.2

qobject_unref_impl.exit.2:                        ; preds = %bb.as, %bb.ar
  %i.cj = call ptr @qobject_from_json(ptr noundef nonnull @.str.216, ptr noundef nonnull @error_abort) #9 ; 8 uses
  %.not.i.3 = icmp eq ptr %i.cj, null
  br i1 %.not.i.3, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %qobject_unref_impl.exit.2
  %.val.i.3 = load i32, ptr %i.cj, align 8        ; 2 uses
  %i.ck = add i32 %.val.i.3, -1
  %or.cond.i.i.3 = icmp ult i32 %i.ck, 6
  br i1 %or.cond.i.i.3, label %qobject_type.exit.i.3, label %.loopexit70

qobject_type.exit.i.3:                            ; preds = %bb.at
  %i.cl = icmp eq i32 %.val.i.3, 2
  br i1 %i.cl, label %qobject_check_type.exit.3, label %.loopexit

qobject_check_type.exit.3:                        ; preds = %qobject_type.exit.i.3
  %i.cm = call double @qnum_get_double(ptr noundef nonnull %i.cj) #9 ; 2 uses
  %i.cn = fcmp oeq double %i.cm, f0xC3E0000000000000
  br i1 %i.cn, label %bb.av, label %bb.au

bb.au:                                            ; preds = %qobject_check_type.exit.3
  %i.co = fpext double %i.cm to x86_fp80
  call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 899, ptr noundef nonnull @__func__.float_number, ptr noundef nonnull @.str.218, x86_fp80 noundef %i.co, ptr noundef nonnull @.str.64, x86_fp80 noundef f0xC03E8000000000000000, i8 noundef signext 102) #9
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %qobject_check_type.exit.3
  %i.cp = call zeroext i1 @qnum_get_try_int(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.a) #9
  br i1 %i.cp, label %.loopexit71, label %bb.aw, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.cq = call zeroext i1 @qnum_get_try_uint(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.b) #9
  br i1 %i.cq, label %.loopexit72, label %bb.ax, !prof !15

bb.ax:                                            ; preds = %bb.aw
  %i.cr = call ptr @qobject_to_json(ptr noundef nonnull %i.cj) #9 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = call i32 @g_strcmp0(ptr noundef %i.cs, ptr noundef nonnull @.str.217) #9
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 905, ptr noundef nonnull @__func__.float_number, ptr noundef nonnull @.str.203, ptr noundef %i.cs, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.217) #9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.cv = call ptr @g_string_free(ptr noundef nonnull %i.cr, i32 noundef 1) #9 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %.not6.i.3 = icmp eq i64 %i.cx, 0
  br i1 %.not6.i.3, label %.loopexit73, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cy = atomicrmw sub ptr %i.cw, i64 1 seq_cst, align 8
  %i.cz = icmp eq i64 %i.cy, 1
  br i1 %i.cz, label %bb.bb, label %qobject_unref_impl.exit.3

bb.bb:                                            ; preds = %bb.ba
  call void @qobject_destroy(ptr noundef nonnull %i.cj) #9
  br label %qobject_unref_impl.exit.3

qobject_unref_impl.exit.3:                        ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @keyword_literal() #2 {
bb.a:
  %i.a = tail call ptr @qobject_from_json(ptr noundef nonnull @.str.219, ptr noundef nonnull @error_abort) #9 ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %i.a, align 8           ; 2 uses
  %i.b = add i32 %.val.i, -1
  %or.cond.i.i = icmp ult i32 %i.b, 6
  br i1 %or.cond.i.i, label %qobject_type.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i:                              ; preds = %bb.b
  %i.c = icmp eq i32 %.val.i, 6
  br i1 %i.c, label %qobject_check_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.a, %qobject_type.exit.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 921, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.220) #10
  unreachable

qobject_check_type.exit:                          ; preds = %qobject_type.exit.i
  %i.d = tail call zeroext i1 @qbool_get_bool(ptr noundef nonnull %i.a) #9
  br i1 %i.d, label %bb.f, label %bb.e, !prof !14

bb.e:                                             ; preds = %qobject_check_type.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 922, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.221) #10
  unreachable

bb.f:                                             ; preds = %qobject_check_type.exit
  %i.e = tail call ptr @qobject_to_json(ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = tail call i32 @g_strcmp0(ptr noundef %i.f, ptr noundef nonnull @.str.219) #9
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 925, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.222, ptr noundef %i.f, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.219) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = tail call ptr @g_string_free(ptr noundef nonnull %i.e, i32 noundef 1) #9 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not6.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.l = atomicrmw sub ptr %i.j, i64 1 seq_cst, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.k, label %qobject_unref_impl.exit

bb.k:                                             ; preds = %bb.j
  tail call void @qobject_destroy(ptr noundef nonnull %i.a) #9
  br label %qobject_unref_impl.exit

qobject_unref_impl.exit:                          ; preds = %bb.j, %bb.k
  %i.n = tail call ptr @qobject_from_json(ptr noundef nonnull @.str.223, ptr noundef nonnull @error_abort) #9 ; 6 uses
  %.not.i88 = icmp eq ptr %i.n, null
  br i1 %.not.i88, label %bb.n, label %bb.l

bb.l:                                             ; preds = %qobject_unref_impl.exit
  %.val.i89 = load i32, ptr %i.n, align 8         ; 2 uses
  %i.o = add i32 %.val.i89, -1
  %or.cond.i.i90 = icmp ult i32 %i.o, 6
  br i1 %or.cond.i.i90, label %qobject_type.exit.i91, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i91:                            ; preds = %bb.l
  %i.p = icmp eq i32 %.val.i89, 6
  br i1 %i.p, label %qobject_check_type.exit93, label %bb.n

bb.n:                                             ; preds = %qobject_unref_impl.exit, %qobject_type.exit.i91
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 932, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.220) #10
  unreachable

qobject_check_type.exit93:                        ; preds = %qobject_type.exit.i91
  %i.q = tail call zeroext i1 @qbool_get_bool(ptr noundef nonnull %i.n) #9
  br i1 %i.q, label %bb.o, label %bb.p, !prof !15

bb.o:                                             ; preds = %qobject_check_type.exit93
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 933, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.224) #10
  unreachable

bb.p:                                             ; preds = %qobject_check_type.exit93
  %i.r = tail call ptr @qobject_to_json(ptr noundef nonnull %i.n) #9 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = tail call i32 @g_strcmp0(ptr noundef %i.s, ptr noundef nonnull @.str.223) #9
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @g_assertion_message_cmpstr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 936, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.225, ptr noundef %i.s, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.223) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.v = tail call ptr @g_string_free(ptr noundef nonnull %i.r, i32 noundef 1) #9 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %.not6.i95 = icmp eq i64 %i.x, 0
  br i1 %.not6.i95, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #10
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.y = atomicrmw sub ptr %i.w, i64 1 seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.u, label %qobject_unref_impl.exit96

bb.u:                                             ; preds = %bb.t
  tail call void @qobject_destroy(ptr noundef nonnull %i.n) #9
  br label %qobject_unref_impl.exit96

qobject_unref_impl.exit96:                        ; preds = %bb.t, %bb.u
  %i.aa = tail call ptr @qobject_from_json(ptr noundef nonnull @.str.226, ptr noundef nonnull @error_abort) #9 ; 5 uses
  %.not81 = icmp eq ptr %i.aa, null
  br i1 %.not81, label %bb.v, label %bb.w, !prof !15

bb.v:                                             ; preds = %qobject_unref_impl.exit96
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 942, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.227) #10
  unreachable

bb.w:                                             ; preds = %qobject_unref_impl.exit96
  %.val = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ab = add i32 %.val, -1
  %or.cond.i = icmp ult i32 %i.ab, 6
  br i1 %or.cond.i, label %qobject_type.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit:                                ; preds = %bb.w
  %.not84 = icmp eq i32 %.val, 1
  br i1 %.not84, label %bb.z, label %bb.y, !prof !14

bb.y:                                             ; preds = %qobject_type.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 943, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.228) #10
  unreachable

bb.z:                                             ; preds = %qobject_type.exit
  %i.ac = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @qnull_, i64 8), i64 1 seq_cst, align 8 ; 0 uses
  %.not86 = icmp eq ptr %i.aa, @qnull_
  br i1 %.not86, label %bb.ab, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 946, ptr noundef nonnull @__func__.keyword_literal, ptr noundef nonnull @.str.229) #10
  unreachable

bb.ab:                                            ; preds = %bb.z
  %0 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ad = load i64, ptr %0, align 8
  %.not6.i98 = icmp eq i64 %i.ad, 0
  br i1 %.not6.i98, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #10
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ae = atomicrmw sub ptr %0, i64 1 seq_cst, align 8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.ae, label %qobject_unref_impl.exit99

bb.ae:                                            ; preds = %bb.ad
  tail call void @qobject_destroy(ptr noundef nonnull %i.aa) #9
  br label %qobject_unref_impl.exit99

qobject_unref_impl.exit99:                        ; preds = %bb.ad, %bb.ae
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @qnull_, i64 8), align 8
  %.not6.i100 = icmp eq i64 %i.ag, 0
  br i1 %.not6.i100, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %qobject_unref_impl.exit99
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #10
  unreachable

bb.ag:                                            ; preds = %qobject_unref_impl.exit99
  %i.ah = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @qnull_, i64 8), i64 1 seq_cst, align 8
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.ah, label %qobject_unref_impl.exit101

bb.ah:                                            ; preds = %bb.ag
  tail call void @qobject_destroy(ptr noundef nonnull @qnull_) #9
  br label %qobject_unref_impl.exit101

qobject_unref_impl.exit101:                       ; preds = %bb.ag, %bb.ah
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @interpolation_valid() #2 {
bb.a:
  %i.a = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @qnull_, i64 8), i64 1 seq_cst, align 8 ; 0 uses
  %i.b = tail call ptr (ptr, ...) @qobject_from_jsonf_nofail(ptr noundef nonnull @.str.231, i32 noundef 0) #9 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i32, ptr %i.b, align 8           ; 2 uses
  %i.c = add i32 %.val.i, -1
  %or.cond.i.i = icmp ult i32 %i.c, 6
  br i1 %or.cond.i.i, label %qobject_type.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i:                              ; preds = %bb.b
  %i.d = icmp eq i32 %.val.i, 6
  br i1 %i.d, label %qobject_check_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.a, %qobject_type.exit.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 973, ptr noundef nonnull @__func__.interpolation_valid, ptr noundef nonnull @.str.220) #10
  unreachable

qobject_check_type.exit:                          ; preds = %qobject_type.exit.i
  %i.e = tail call zeroext i1 @qbool_get_bool(ptr noundef nonnull %i.b) #9
  br i1 %i.e, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %qobject_check_type.exit
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 974, ptr noundef nonnull @__func__.interpolation_valid, ptr noundef nonnull @.str.224) #10
  unreachable

bb.f:                                             ; preds = %qobject_check_type.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not6.i = icmp eq i64 %i.g, 0
  br i1 %.not6.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = atomicrmw sub ptr %i.f, i64 1 seq_cst, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.i, label %qobject_unref_impl.exit

bb.i:                                             ; preds = %bb.h
  tail call void @qobject_destroy(ptr noundef nonnull %i.b) #9
  br label %qobject_unref_impl.exit

qobject_unref_impl.exit:                          ; preds = %bb.h, %bb.i
  %i.j = tail call ptr (ptr, ...) @qobject_from_jsonf_nofail(ptr noundef nonnull @.str.231, i32 noundef 2) #9 ; 5 uses
  %.not.i221 = icmp eq ptr %i.j, null
  br i1 %.not.i221, label %bb.l, label %bb.j

bb.j:                                             ; preds = %qobject_unref_impl.exit
  %.val.i222 = load i32, ptr %i.j, align 8        ; 2 uses
  %i.k = add i32 %.val.i222, -1
  %or.cond.i.i223 = icmp ult i32 %i.k, 6
  br i1 %or.cond.i.i223, label %qobject_type.exit.i224, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i224:                           ; preds = %bb.j
  %i.l = icmp eq i32 %.val.i222, 6
  br i1 %i.l, label %qobject_check_type.exit226, label %bb.l

bb.l:                                             ; preds = %qobject_unref_impl.exit, %qobject_type.exit.i224
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 979, ptr noundef nonnull @__func__.interpolation_valid, ptr noundef nonnull @.str.220) #10
  unreachable

qobject_check_type.exit226:                       ; preds = %qobject_type.exit.i224
  %i.m = tail call zeroext i1 @qbool_get_bool(ptr noundef nonnull %i.j) #9
  br i1 %i.m, label %bb.n, label %bb.m, !prof !14

bb.m:                                             ; preds = %qobject_check_type.exit226
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 980, ptr noundef nonnull @__func__.interpolation_valid, ptr noundef nonnull @.str.221) #10
  unreachable

bb.n:                                             ; preds = %qobject_check_type.exit226
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not6.i228 = icmp eq i64 %i.o, 0
  br i1 %.not6.i228, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #10
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.p = atomicrmw sub ptr %i.n, i64 1 seq_cst, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.q, label %qobject_unref_impl.exit229

bb.q:                                             ; preds = %bb.p
  tail call void @qobject_destroy(ptr noundef nonnull %i.j) #9
  br label %qobject_unref_impl.exit229

qobject_unref_impl.exit229:                       ; preds = %bb.p, %bb.q
  %i.r = tail call ptr (ptr, ...) @qobject_from_jsonf_nofail(ptr noundef nonnull @.str.232, i32 noundef -1985229329) #9 ; 3 uses
  %.not.i230 = icmp eq ptr %i.r, null
  br i1 %.not.i230, label %bb.t, label %bb.r

bb.r:                                             ; preds = %qobject_unref_impl.exit229
  %.val.i231 = load i32, ptr %i.r, align 8        ; 2 uses
  %i.s = add i32 %.val.i231, -1
  %or.cond.i.i232 = icmp ult i32 %i.s, 6
  br i1 %or.cond.i.i232, label %qobject_type.exit.i233, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i233:                           ; preds = %bb.r
  %i.t = icmp eq i32 %.val.i231, 2
  br i1 %i.t, label %qobject_check_type.exit235, label %bb.t

bb.t:                                             ; preds = %qobject_type.exit.i233, %qobject_unref_impl.exit229
  br label %qobject_check_type.exit235

qobject_check_type.exit235:                       ; preds = %qobject_type.exit.i233, %bb.t
  %.0.i234 = phi ptr [ null, %bb.t ], [ %i.r, %qobject_type.exit.i233 ] ; 4 uses
  %i.u = tail call i64 @qnum_get_int(ptr noundef %.0.i234) #9 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1985229329
  br i1 %i.v, label %bb.v, label %bb.u

bb.u:                                             ; preds = %qobject_check_type.exit235
  %i.w = sitofp i64 %i.u to x86_fp80
  tail call void @g_assertion_message_cmpnum(ptr noundef null, ptr noundef nonnull @.str.62, i32 noundef 986, ptr noundef nonnull @__func__.interpolation_valid, ptr noundef nonnull @.str.233, x86_fp80 noundef %i.w, ptr noundef nonnull @.str.64, x86_fp80 noundef f0xC01DECA8642200000000, i8 noundef signext 105) #9
  br label %bb.v

bb.v:                                             ; preds = %qobject_check_type.exit235, %bb.u
  %.not198 = icmp eq ptr %.0.i234, null
  br i1 %.not198, label %qobject_unref_impl.exit238, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i234, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %.not6.i237 = icmp eq i64 %i.y, 0
  br i1 %.not6.i237, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 98, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_unref_impl) #10
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.z = atomicrmw sub ptr %i.x, i64 1 seq_cst, align 8
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.z, label %qobject_unref_impl.exit238

bb.z:                                             ; preds = %bb.y
  tail call void @qobject_destroy(ptr noundef nonnull %.0.i234) #9
  br label %qobject_unref_impl.exit238

qobject_unref_impl.exit238:                       ; preds = %bb.v, %bb.y, %bb.z
  %i.ab = tail call ptr (ptr, ...) @qobject_from_jsonf_nofail(ptr noundef nonnull @.str.234, i64 noundef 81985529216486895) #9 ; 3 uses
  %.not.i239 = icmp eq ptr %i.ab, null
  br i1 %.not.i239, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %qobject_unref_impl.exit238
  %.val.i240 = load i32, ptr %i.ab, align 8       ; 2 uses
  %i.ac = add i32 %.val.i240, -1
  %or.cond.i.i241 = icmp ult i32 %i.ac, 6
  br i1 %or.cond.i.i241, label %qobject_type.exit.i242, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @__assert_fail(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__.qobject_type) #10
  unreachable

qobject_type.exit.i242:                           ; preds = %bb.aa
  %i.ad = icmp eq i32 %.val.i240, 2
end_hunk_0
