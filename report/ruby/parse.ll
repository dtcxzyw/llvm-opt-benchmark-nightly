Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/parse?download=true
inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@rb_sprintf
; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_parser_fatal(ptr nofree noundef captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca i64, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.c = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.77, i64 noundef 23) #31 ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !28
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.d = call i64 @rb_str_vcatf(i64 noundef %i.c, ptr noundef %1, ptr noundef nonnull %3) #31 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.k = getelementptr i8, ptr %0, i64 196        ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !63   ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = getelementptr i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !65
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !192
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.r
  %i.y = trunc i64 %i.x to i32
  store i32 %i.l, ptr %2, align 4, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.t, ptr %i.z, align 4, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.l, ptr %i.aa, align 4, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !71
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @.str.561, ptr noundef nonnull %i.j)
  %i.ac = load i32, ptr %i.k, align 4, !tbaa !63
  %i.ad = icmp eq i32 %i.l, %i.ac
  br i1 %i.ad, label %bb.c, label %parser_yyerror0.exit

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.ae = getelementptr i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !193
  %i.ag = getelementptr i8, ptr %0, i64 368
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !194
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.ah, ptr noundef nonnull readonly %2, i32 noundef %i.l, ptr noundef %i.af)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %RSTRING_PTR.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store ptr %i.a, ptr %i.b, align 8, !tbaa !43
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #31, !srcloc !552
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.aj = load volatile i64, ptr %i.ai, align 8, !tbaa !28 ; 0 uses
  %i.ak = call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #31 ; 2 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !28
  %i.al = getelementptr i8, ptr %0, i64 104
  %i.am = load i32, ptr %i.al, align 8, !tbaa !80
  %i.an = call fastcc i64 @append_lex_state_name(i32 noundef %i.am, i64 noundef %i.ak) ; 0 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !28
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.78, i64 noundef %i.ao)
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !28
  %i.aq = call i64 @rb_str_resize(i64 noundef %i.ap, i64 noundef 0) #31 ; 0 uses
  %i.ar = getelementptr i8, ptr %0, i64 120
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !120 ; 3 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %parser_yyerror0.exit
  %i.av = call i64 @rb_str_cat(i64 noundef %i.at, ptr noundef nonnull @.str.886, i64 noundef 1) #31 ; 0 uses
  br label %append_bitstack_value.exit

.preheader.i:                                     ; preds = %parser_yyerror0.exit, %.preheader.i
  %.0.i = phi i64 [ %i.ax, %.preheader.i ], [ -9223372036854775808, %parser_yyerror0.exit ] ; 5 uses
  %.not.i15 = icmp ne i64 %.0.i, 0
  %i.aw = and i64 %.0.i, %i.as
  %.not12.i = icmp eq i64 %i.aw, 0
  %or.cond.i = and i1 %.not.i15, %.not12.i
  %i.ax = lshr i64 %.0.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.preheader.i, !llvm.loop !3

.critedge.preheader.i:                            ; preds = %.preheader.i
  %.not131.i = icmp eq i64 %.0.i, 0
  br i1 %.not131.i, label %append_bitstack_value.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.preheader.i, %.critedge.i
  %.12.i = phi i64 [ %i.bb, %.critedge.i ], [ %.0.i, %.critedge.preheader.i ] ; 2 uses
  %i.ay = and i64 %.12.i, %i.as
  %.not14.i = icmp eq i64 %i.ay, 0
  %i.az = select i1 %.not14.i, ptr @.str.886, ptr @.str.887
  %i.ba = call i64 @rb_str_cat(i64 noundef %i.at, ptr noundef nonnull %i.az, i64 noundef 1) #31 ; 0 uses
  %i.bb = lshr i64 %.12.i, 1                      ; 2 uses
  %.not13.i = icmp eq i64 %i.bb, 0
  br i1 %.not13.i, label %append_bitstack_value.exit, label %.critedge.i, !llvm.loop !4

append_bitstack_value.exit:                       ; preds = %.critedge.i, %bb.d, %.critedge.preheader.i
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !28
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.79, i64 noundef %i.bc)
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !28
  %i.be = call i64 @rb_str_resize(i64 noundef %i.bd, i64 noundef 0) #31 ; 0 uses
  %i.bf = getelementptr i8, ptr %0, i64 128
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !130 ; 3 uses
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.bi = icmp eq i64 %i.bg, 0
  br i1 %i.bi, label %bb.e, label %.preheader.i16

bb.e:                                             ; preds = %append_bitstack_value.exit
  %i.bj = call i64 @rb_str_cat(i64 noundef %i.bh, ptr noundef nonnull @.str.886, i64 noundef 1) #31 ; 0 uses
  br label %append_bitstack_value.exit27

.preheader.i16:                                   ; preds = %append_bitstack_value.exit, %.preheader.i16
  %.0.i17 = phi i64 [ %i.bl, %.preheader.i16 ], [ -9223372036854775808, %append_bitstack_value.exit ] ; 5 uses
  %.not.i18 = icmp ne i64 %.0.i17, 0
  %i.bk = and i64 %.0.i17, %i.bg
  %.not12.i19 = icmp eq i64 %i.bk, 0
  %or.cond.i20 = and i1 %.not.i18, %.not12.i19
  %i.bl = lshr i64 %.0.i17, 1
  br i1 %or.cond.i20, label %.preheader.i16, label %.critedge.preheader.i21, !llvm.loop !3

.critedge.preheader.i21:                          ; preds = %.preheader.i16
  %.not131.i22 = icmp eq i64 %.0.i17, 0
  br i1 %.not131.i22, label %append_bitstack_value.exit27, label %.critedge.i23

.critedge.i23:                                    ; preds = %.critedge.preheader.i21, %.critedge.i23
  %.12.i24 = phi i64 [ %i.bp, %.critedge.i23 ], [ %.0.i17, %.critedge.preheader.i21 ] ; 2 uses
  %i.bm = and i64 %.12.i24, %i.bg
  %.not14.i25 = icmp eq i64 %i.bm, 0
  %i.bn = select i1 %.not14.i25, ptr @.str.886, ptr @.str.887
  %i.bo = call i64 @rb_str_cat(i64 noundef %i.bh, ptr noundef nonnull %i.bn, i64 noundef 1) #31 ; 0 uses
  %i.bp = lshr i64 %.12.i24, 1                    ; 2 uses
  %.not13.i26 = icmp eq i64 %i.bp, 0
  br i1 %.not13.i26, label %append_bitstack_value.exit27, label %.critedge.i23, !llvm.loop !4

append_bitstack_value.exit27:                     ; preds = %.critedge.i23, %bb.e, %.critedge.preheader.i21
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !28
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.80, i64 noundef %i.bq)
  %i.br = getelementptr i8, ptr %0, i64 256       ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !196
  %i.bt = call i64 @rb_ractor_stdout() #31
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %append_bitstack_value.exit27
  %i.bv = call i64 @rb_ractor_stderr() #31
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !196
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %append_bitstack_value.exit27
  %i.bw = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = or i32 %i.bx, 32
  store i32 %i.by, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

declare i64 @rb_str_vcatf(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_ractor_stdout() local_unnamed_addr #2

declare i64 @rb_ractor_stderr() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @rb_parser_set_location_from_strterm_heredoc(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 16)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !352  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !353
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !354
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 25
  %i.j = load i8, ptr %i.i, align 1, !tbaa !355
  %3 = lshr i8 %i.j, 5
  %i.k = and i8 %3, 1
  %4 = or disjoint i8 %i.k, 2
  %5 = zext nneg i8 %4 to i32
  %i.l = add nuw nsw i32 %i.h, %5
  %6 = sub i32 %i.e, %i.l
  %i.m = getelementptr i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !356
  %i.o = add i32 %i.h, %i.e
  %i.p = add i32 %i.o, %i.n
  store i32 %i.b, ptr %2, align 4, !tbaa !68
  %i.q = getelementptr i8, ptr %2, i64 4
  store i32 %6, ptr %i.q, align 4, !tbaa !69
  %i.r = getelementptr i8, ptr %2, i64 8
  store i32 %i.b, ptr %i.r, align 4, !tbaa !70
  %i.s = getelementptr i8, ptr %2, i64 12
  store i32 %i.p, ptr %i.s, align 4, !tbaa !71
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @rb_parser_set_location_of_delayed_token(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 16)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 272
  %i.b = load <4 x i32>, ptr %i.a, align 8, !tbaa !26
  store <4 x i32> %i.b, ptr %1, align 4, !tbaa !26
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @rb_parser_set_location_of_heredoc_end(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 16)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !324
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32
  store i32 %i.b, ptr %1, align 4, !tbaa !68
  %i.p = getelementptr i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.p, align 4, !tbaa !69
  %i.q = getelementptr i8, ptr %1, i64 8
  store i32 %i.b, ptr %i.q, align 4, !tbaa !70
  %i.r = getelementptr i8, ptr %1, i64 12
  store i32 %i.o, ptr %i.r, align 4, !tbaa !71
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @rb_parser_set_location_of_dummy_end(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef returned captures(ret: address, provenance) initializes((8, 16)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i64, ptr %1, align 4
  store i64 %i.b, ptr %i.a, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @rb_parser_set_location(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 16)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 196
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = getelementptr i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !192
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32
  store i32 %i.b, ptr %1, align 4, !tbaa !68
  %i.p = getelementptr i8, ptr %1, i64 4
  store i32 %i.j, ptr %i.p, align 4, !tbaa !69
  %i.q = getelementptr i8, ptr %1, i64 8
  store i32 %i.b, ptr %i.q, align 4, !tbaa !70
  %i.r = getelementptr i8, ptr %1, i64 12
  store i32 %i.o, ptr %i.r, align 4, !tbaa !71
  ret ptr %1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_parser_local_defined(ptr nofree noundef readnone captures(none) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %2) #31
  ret i32 %i.a
}

declare i32 @rb_local_defined(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_parser_dvar_defined_ref(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !154  ; 4 uses
  %i.e = icmp ult ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !202  ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %vtable_included.exit43.thread.us
  %.061.us = phi ptr [ null, %vtable_included.exit43.thread.us ], [ %i.g, %.lr.ph ]
  %.02560.us = phi ptr [ %i.y, %vtable_included.exit43.thread.us ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02659.us = phi ptr [ %i.aa, %vtable_included.exit43.thread.us ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.i = icmp ult ptr %.02560.us, inttoptr (i64 2 to ptr)
  br i1 %i.i, label %vtable_included.exit.thread.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.lr.ph.split.us
  %i.j = getelementptr i8, ptr %.02560.us, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !198  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i.us, label %vtable_included.exit.thread.us

.lr.ph.i.us:                                      ; preds = %.preheader.i.us
  %i.m = load ptr, ptr %.02560.us, align 8, !tbaa !200
  %wide.trip.count.i.us = zext nneg i32 %i.k to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %bb.c ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv.i.us
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  %i.p = icmp eq i64 %i.o, %1
  br i1 %i.p, label %vtable_included.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %vtable_included.exit.thread.us, label %bb.b, !llvm.loop !2

vtable_included.exit.thread.us:                   ; preds = %bb.c, %.preheader.i.us, %.lr.ph.split.us
  %i.q = getelementptr i8, ptr %.02659.us, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !198  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.i38.us, label %vtable_included.exit43.thread.us

.lr.ph.i38.us:                                    ; preds = %vtable_included.exit.thread.us
  %i.t = load ptr, ptr %.02659.us, align 8, !tbaa !200
  %wide.trip.count.i39.us = zext nneg i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i38.us
  %indvars.iv.i40.us = phi i64 [ 0, %.lr.ph.i38.us ], [ %indvars.iv.next.i41.us, %bb.e ] ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i40.us
  %i.v = load i64, ptr %i.u, align 8, !tbaa !28
  %i.w = icmp eq i64 %i.v, %1
  br i1 %i.w, label %vtable_included.exit43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i41.us = add nuw nsw i64 %indvars.iv.i40.us, 1 ; 2 uses
  %exitcond.not.i42.us = icmp eq i64 %indvars.iv.next.i41.us, %wide.trip.count.i39.us
  br i1 %exitcond.not.i42.us, label %vtable_included.exit43.thread.us, label %bb.d, !llvm.loop !2

vtable_included.exit43.thread.us:                 ; preds = %bb.e, %vtable_included.exit.thread.us
  %i.x = getelementptr i8, ptr %.02560.us, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156
  %i.z = getelementptr i8, ptr %.02659.us, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156 ; 3 uses
  %i.ab = icmp ult ptr %i.aa, inttoptr (i64 2 to ptr)
  br i1 %i.ab, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !7

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %.061 = phi ptr [ %.2, %bb.l ], [ %i.g, %.lr.ph ] ; 3 uses
  %.02560 = phi ptr [ %i.aw, %bb.l ], [ %i.h, %.lr.ph ] ; 4 uses
  %.02659 = phi ptr [ %i.ay, %bb.l ], [ %i.d, %.lr.ph ] ; 3 uses
  %i.ac = icmp ult ptr %.02560, inttoptr (i64 2 to ptr)
  br i1 %i.ac, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.split
  %i.ad = getelementptr i8, ptr %.02560, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !198 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ag = load ptr, ptr %.02560, align 8, !tbaa !200
  %wide.trip.count.i = zext nneg i32 %i.ae to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.aj = icmp eq i64 %i.ai, %1
  br i1 %i.aj, label %vtable_included.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.f, !llvm.loop !2

vtable_included.exit.thread:                      ; preds = %bb.g, %.preheader.i, %.lr.ph.split
  %i.ak = getelementptr i8, ptr %.02659, i64 8
end_hunk_0
begin_hunk_1_@parse_ident:bb.a
  %.not.i219 = icmp eq i32 %i.kh, 0               ; 2 uses
  br i1 %i.dd, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  br i1 %.not.i219, label %parser_set_lex_state.exit220, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ki = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 32, i32 noundef 10442) ; 0 uses
  br label %parser_set_lex_state.exit220

bb.ca:                                            ; preds = %bb.bx
  br i1 %.not.i219, label %parser_set_lex_state.exit220, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kj = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 16, i32 noundef 10445) ; 0 uses
  br label %parser_set_lex_state.exit220

bb.cc:                                            ; preds = %thread-pre-split
  %i.kk = icmp eq i32 %.pr.pre, 128
  %i.kl = load i32, ptr %i.h, align 8
  %i.km = and i32 %i.kl, 32
  %.not.i223 = icmp eq i32 %i.km, 0               ; 2 uses
  br i1 %i.kk, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not.i223, label %parser_set_lex_state.exit220, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kn = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef 128, i32 noundef 8, i32 noundef 10449) ; 0 uses
  br label %parser_set_lex_state.exit220

bb.cf:                                            ; preds = %bb.cc
  br i1 %.not.i223, label %parser_set_lex_state.exit220, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ko = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 2, i32 noundef 10452) ; 0 uses
  br label %parser_set_lex_state.exit220

parser_set_lex_state.exit220:                     ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.sink = phi i32 [ 16, %bb.cb ], [ 8, %bb.ce ], [ 32, %bb.bz ], [ 32, %bb.by ], [ 16, %bb.ca ], [ 8, %bb.cd ], [ 2, %bb.cf ], [ 2, %bb.cg ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !80
  %i.kp = load ptr, ptr %i.cu, align 8, !tbaa !362
  %i.kq = load i32, ptr %i.cw, align 8, !tbaa !388
  %i.kr = sext i32 %i.kq to i64
  %i.ks = load ptr, ptr %i.j, align 8, !tbaa !180
  %i.kt = tail call i64 @rb_intern3(ptr noundef %i.kp, i64 noundef %i.kr, ptr noundef %i.ks) #31 ; 7 uses
  %i.ku = load ptr, ptr %0, align 8, !tbaa !76
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !31
  br i1 %i.ct, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %parser_set_lex_state.exit220
  %i.kv = icmp ugt i64 %i.kt, 171
  %i.kw = and i64 %i.kt, 14
  %i.kx = icmp eq i64 %i.kw, 0
  %i.ky = and i1 %i.kv, %i.kx
  %spec.select185 = select i1 %i.ky, i32 307, i32 311
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %parser_set_lex_state.exit220
  %.1137 = phi i32 [ %.0136, %parser_set_lex_state.exit220 ], [ %spec.select185, %bb.ch ] ; 2 uses
  %i.kz = and i32 %i.b, 384
  %i.la = icmp eq i32 %i.kz, 0
  %i.lb = icmp eq i32 %.1137, 307
  %or.cond9 = and i1 %i.la, %i.lb
  br i1 %or.cond9, label %bb.cj, label %.thread239

bb.cj:                                            ; preds = %bb.ci
  %i.lc = tail call fastcc i32 @lvar_defined(ptr noundef nonnull %0, i64 noundef %i.kt)
  %.not181 = icmp eq i32 %i.lc, 0
  br i1 %.not181, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ld = and i64 %i.kt, 14
  %i.le = icmp ne i64 %i.ld, 0
  %i.lf = icmp ult i64 %i.kt, 3776
  %i.lg = lshr i64 %i.kt, 4
  %i.lh = trunc i64 %i.lg to i32
  %i.li = add i32 %i.lh, -245
  %i.lj = icmp ult i32 %i.li, -9
  %.not246 = or i1 %i.le, %i.lj
  %narrow.i.not = or i1 %i.lf, %.not246
  br i1 %narrow.i.not, label %.thread239, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.lk = load i32, ptr %i.h, align 8
  %i.ll = and i32 %i.lk, 32
  %.not.i228 = icmp eq i32 %i.ll, 0
  br i1 %.not.i228, label %parser_set_lex_state.exit229, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lm = load i32, ptr %i.a, align 8, !tbaa !80
  %i.ln = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.lm, i32 noundef 1026, i32 noundef 10460) ; 0 uses
  br label %parser_set_lex_state.exit229

parser_set_lex_state.exit229:                     ; preds = %bb.cl, %bb.cm
  store i32 1026, ptr %i.a, align 8, !tbaa !80
  br label %.thread239

.thread239:                                       ; preds = %.critedge.backedge, %bb.a, %bb.br, %bb.bo, %bb.bw, %bb.bl, %parser_set_lex_state.exit214, %bb.bs, %bb.ci, %bb.ck, %parser_set_lex_state.exit229, %nextc0.exit202
  %.2140 = phi i32 [ 313, %nextc0.exit202 ], [ %i.jx, %bb.bs ], [ %.1137, %bb.ci ], [ 307, %parser_set_lex_state.exit229 ], [ 307, %bb.ck ], [ %spec.select186, %bb.br ], [ 282, %bb.bo ], [ %i.ke, %bb.bw ], [ 284, %bb.bl ], [ %i.ir, %parser_set_lex_state.exit214 ], [ 0, %bb.a ], [ 0, %.critedge.backedge ]
  ret i32 %.2140
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_dispatch_heredoc_end(ptr nofree noundef captures(none) %0, i32 noundef range(i32 9096, 9190) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @parser_dispatch_delayed_token(ptr noundef nonnull %0, i32 noundef 321, i32 noundef 9014)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 360
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 65536
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !324  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = getelementptr i8, ptr %0, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !180
  %i.o = icmp slt i64 %i.l, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.81, i64 noundef %i.l) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.q = add nuw i64 %i.l, 1
  %i.r = tail call noalias nonnull ptr @ruby_xcalloc(i64 noundef %i.q, i64 noundef 1) #33 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.r, ptr %i.s, align 8, !tbaa !38
  %.not.i.i = icmp eq ptr %i.g, null
  %.not.i.i.i = icmp eq ptr %i.i, %i.g
  %or.cond.i.i = or i1 %.not.i.i, %.not.i.i.i
  br i1 %or.cond.i.i, label %rb_parser_encoding_string_new.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.r, ptr noundef nonnull readonly align 1 %i.g, i64 noundef range(i64 1, 0) %i.l, i1 noundef false) #31
  br label %rb_parser_encoding_string_new.exit

rb_parser_encoding_string_new.exit:               ; preds = %bb.f, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.l, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr i8, ptr %i.r, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !31
  store i32 0, ptr %i.p, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.n, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77   ; 4 uses
  %i.y = getelementptr i8, ptr %0, i64 196
  %i.z = load i32, ptr %i.y, align 4, !tbaa !63   ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.ab = getelementptr i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !65
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !324
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ae
  %i.ak = trunc i64 %i.aj to i32
  store i32 %i.z, ptr %i.x, align 4, !tbaa !68
  %i.al = getelementptr i8, ptr %i.x, i64 4
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !69
  %i.am = getelementptr i8, ptr %i.x, i64 8
  store i32 %i.z, ptr %i.am, align 4, !tbaa !70
  %i.an = getelementptr i8, ptr %i.x, i64 12
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !71
  tail call fastcc void @parser_append_tokens(ptr noundef nonnull %0, ptr noundef nonnull %i.p, i32 noundef 357, i32 noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %rb_parser_encoding_string_new.exit, %bb.c
  %i.ao = getelementptr i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !182 ; 5 uses
  %i.aq = getelementptr i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !352 ; 2 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !353
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ap, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !354
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %2 = getelementptr i8, ptr %i.ap, i64 33
  %3 = load i8, ptr %2, align 1, !tbaa !355
  %4 = lshr i8 %3, 5
  %i.ba = and i8 %4, 1
  %5 = or disjoint i8 %i.ba, 2
  %6 = zext nneg i8 %5 to i32
  %i.bb = add nuw nsw i32 %i.az, %6
  %7 = sub i32 %i.aw, %i.bb
  %i.bc = getelementptr i8, ptr %i.ap, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !356
  %i.be = add i32 %i.az, %i.aw
  %i.bf = add i32 %i.be, %i.bd
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !68
  %i.bg = getelementptr i8, ptr %i.ar, i64 4
  store i32 %7, ptr %i.bg, align 4, !tbaa !69
  %i.bh = getelementptr i8, ptr %i.ar, i64 8
  store i32 %i.at, ptr %i.bh, align 4, !tbaa !70
  %i.bi = getelementptr i8, ptr %i.ar, i64 12
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !71
  %i.bj = getelementptr i8, ptr %0, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !324 ; 2 uses
  %i.bl = getelementptr i8, ptr %0, i64 80
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !192
  %i.bm = getelementptr i8, ptr %0, i64 96
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tokadd(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %1 to i8
  %i.b = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !362
  %i.d = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !388  ; 2 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !388
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g
  store i8 %i.a, ptr %i.h, align 1, !tbaa !31
  %i.i = load i32, ptr %i.d, align 8, !tbaa !388
  %i.j = getelementptr i8, ptr %0, i64 140        ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !365  ; 2 uses
  %.not = icmp slt i32 %i.i, %i.k
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = shl i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.j, align 4, !tbaa !365
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !362
  %i.n = sext i32 %i.l to i64
  %i.o = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.m, i64 noundef %i.n, i64 noundef 1) #38
  store ptr %i.o, ptr %i.b, align 8, !tbaa !362
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 256) i32 @tokadd_string(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.rb_code_location_struct, align 4 ; 7 uses
  %8 = alloca %struct.rb_code_location_struct, align 4 ; 7 uses
  %9 = alloca %struct.rb_code_location_struct, align 4 ; 8 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 80         ; 31 uses
  %i.c = getelementptr i8, ptr %0, i64 88         ; 7 uses
  %i.d = getelementptr i8, ptr %0, i64 360        ; 12 uses
  %i.e = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 148        ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %.not158 = icmp ne i32 %3, 0                    ; 3 uses
  %i.h = and i32 %1, 2                            ; 2 uses
  %i.i = icmp ne i32 %i.h, 0                      ; 3 uses
  %i.j = icmp eq i32 %i.h, 0                      ; 2 uses
  %i.k = and i32 %1, 4                            ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 160        ; 32 uses
  %i.m = getelementptr i8, ptr %0, i64 136        ; 33 uses
  %i.n = getelementptr i8, ptr %0, i64 140        ; 22 uses
  %i.o = and i32 %1, 1
  %.not163 = icmp eq i32 %i.o, 0                  ; 2 uses
  %i.p = and i32 %1, 8
  %.not164 = icmp eq i32 %i.p, 0                  ; 3 uses
  %i.q = and i32 %1, 32
  %.not165 = icmp eq i32 %i.q, 0
  %i.r = icmp eq i32 %2, 10
  %.not169 = icmp eq i32 %i.k, 0
  %i.s = getelementptr i8, ptr %0, i64 72         ; 8 uses
  %i.t = getelementptr i8, ptr %0, i64 96         ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 196        ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.y = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 368        ; 3 uses
  %.not176 = icmp eq ptr %4, null
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0138 = phi i8 [ 0, %bb.a ], [ %.0138.be, %.backedge.backedge ] ; 14 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !192 ; 2 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !324
  %.not.i = icmp ult ptr %i.ad, %i.ae
  br i1 %.not.i, label %bb.b, label %.critedge.i, !prof !374

bb.b:                                             ; preds = %.backedge
  %i.af = load i32, ptr %i.d, align 8
  %i.ag = and i32 %i.af, 8
  %.not13.i = icmp eq i32 %i.ag, 0
  br i1 %.not13.i, label %bb.c, label %.critedge.i, !prof !374

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !375
  %i.ai = icmp ugt ptr %i.ah, inttoptr (i64 1 to ptr)
  br i1 %i.ai, label %.critedge.i, label %bb.d, !prof !207

.critedge.i:                                      ; preds = %bb.c, %bb.b, %.backedge
  %i.aj = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.aj, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !192
  br label %bb.d

bb.d:                                             ; preds = %.critedge._crit_edge.i, %bb.c
  %i.ak = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.ad, %bb.c ] ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 1      ; 6 uses
  store ptr %i.al, ptr %i.b, align 8, !tbaa !192
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !31  ; 2 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = icmp eq i8 %i.am, 13
  br i1 %i.ao, label %bb.e, label %bb.h, !prof !207

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !324
  %.not.i.i = icmp ult ptr %i.al, %i.ap
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aq = load i8, ptr %i.al, align 1, !tbaa !31
  %i.ar = icmp eq i8 %i.aq, 10
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.ak, i64 2      ; 2 uses
  store ptr %i.as, ptr %i.b, align 8, !tbaa !192
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.g, %bb.f
  %i.at = phi ptr [ %i.al, %bb.f ], [ %i.as, %bb.g ], [ %i.al, %bb.e ], [ %i.al, %bb.d ] ; 9 uses
  %.011.i.ph = phi i32 [ 13, %bb.f ], [ 10, %bb.g ], [ 13, %bb.e ], [ %i.an, %bb.d ] ; 12 uses
  %i.au = load i32, ptr %i.f, align 4, !tbaa !181 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %parser_update_heredoc_indent.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !184 ; 5 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = icmp eq i32 %.011.i.ph, 10
  br i1 %i.ay, label %.sink.split.i, label %parser_update_heredoc_indent.exit

bb.k:                                             ; preds = %bb.i
  %trunc = trunc nuw i32 %.011.i.ph to i8
  switch i8 %trunc, label %bb.n [
    i8 32, label %bb.l
    i8 9, label %bb.m
    i8 10, label %.sink.split.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = add nuw i32 %i.aw, 1
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.ba = sdiv i32 %i.aw, 8
  %i.bb = shl nsw i32 %i.ba, 3
  %i.bc = add i32 %i.bb, 8
  br label %.sink.split.i

bb.n:                                             ; preds = %bb.k
  %i.bd = icmp sgt i32 %i.au, %i.aw
  br i1 %i.bd, label %bb.o, label %.sink.split.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.aw, ptr %i.f, align 4, !tbaa !181
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i = phi i32 [ %i.az, %bb.l ], [ -1, %bb.n ], [ 0, %bb.j ], [ %i.bc, %bb.m ], [ -1, %bb.o ], [ 0, %bb.k ]
  store i32 %.sink.i, ptr %i.g, align 8, !tbaa !184
  br label %parser_update_heredoc_indent.exit

parser_update_heredoc_indent.exit:                ; preds = %.sink.split.i, %bb.j, %bb.h
  %i.be = icmp eq i32 %.011.i.ph, %3
  %or.cond182 = and i1 %.not158, %i.be
  br i1 %or.cond182, label %bb.p, label %bb.q

bb.p:                                             ; preds = %parser_update_heredoc_indent.exit
  %i.bf = load i64, ptr %4, align 8, !tbaa !28
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %4, align 8, !tbaa !28
  br label %pushback.exit192

bb.q:                                             ; preds = %parser_update_heredoc_indent.exit
  %i.bh = icmp eq i32 %.011.i.ph, %2
  br i1 %i.bh, label %bb.r, label %bb.y
end_hunk_1
