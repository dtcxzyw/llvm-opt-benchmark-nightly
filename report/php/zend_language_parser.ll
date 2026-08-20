inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@zendparse:bb.a
  %i.bwr = sext i16 %i.bwq to i32
  call fastcc void @yydestruct(i32 noundef %i.bwr, ptr noundef %.51042)
  %i.bws = getelementptr inbounds i8, ptr %.51042, i64 -8
  %i.bwt = getelementptr inbounds i8, ptr %.51024, i64 -2 ; 2 uses
  %i.bwu = load i16, ptr %i.bwt, align 2, !tbaa !15
  %i.bwv = sext i16 %i.bwu to i32
  br label %bb.wj

bb.wo:                                            ; preds = %bb.wl
  %i.bww = zext nneg i16 %i.bwm to i32
  %i.bwx = getelementptr inbounds nuw i8, ptr %.51042, i64 8 ; 2 uses
  %i.bwy = load i64, ptr %0, align 8, !tbaa !12
  store i64 %i.bwy, ptr %i.bwx, align 8, !tbaa !12
  br label %bb.b

.loopexit:                                        ; preds = %bb.h, %bb.wg, %bb.wm, %bb.rc, %bb.mk, %bb.kb, %bb.ef, %bb.aa
  %.51146 = phi ptr [ %.11142, %bb.rc ], [ %.41145, %bb.wm ], [ %.11142, %bb.aa ], [ %.11142, %bb.ef ], [ %.11142, %bb.kb ], [ %.11142, %bb.mk ], [ %.11142, %bb.wg ], [ %.11142, %bb.h ]
  %.61043 = phi ptr [ %.31040, %bb.rc ], [ %.51042, %bb.wm ], [ %.31040, %bb.aa ], [ %.31040, %bb.ef ], [ %.31040, %bb.kb ], [ %.31040, %bb.mk ], [ %.31040, %bb.wg ], [ %i.ab, %bb.h ]
  %.31032 = phi i32 [ %i.bl, %bb.rc ], [ 0, %bb.wm ], [ %i.bl, %bb.aa ], [ %i.bl, %bb.ef ], [ %i.bl, %bb.kb ], [ %i.bl, %bb.mk ], [ 0, %bb.wg ], [ 0, %bb.h ]
  %.61025 = phi ptr [ %.31022, %bb.rc ], [ %.51024, %bb.wm ], [ %.31022, %bb.aa ], [ %.31022, %bb.ef ], [ %.31022, %bb.kb ], [ %.31022, %bb.mk ], [ %.31022, %bb.wg ], [ %i.z, %bb.h ]
  %.41016 = phi ptr [ %.31015, %bb.rc ], [ %.31015, %bb.wm ], [ %.31015, %bb.aa ], [ %.31015, %bb.ef ], [ %.31015, %bb.kb ], [ %.31015, %bb.mk ], [ %.31015, %bb.wg ], [ %i.r, %bb.h ]
  %.8 = phi i32 [ %.5, %bb.rc ], [ %.7, %bb.wm ], [ %.5, %bb.aa ], [ %.5, %bb.ef ], [ %.5, %bb.kb ], [ %.5, %bb.mk ], [ 0, %bb.wg ], [ %.1, %bb.h ]
  %i.bwz = sext i32 %.31032 to i64
  br label %.loopexit1207

.thread1155:                                      ; preds = %bb.e, %bb.d, %bb.we, %.thread1194
  %.61147 = phi ptr [ %.21143.ph, %.thread1194 ], [ %.11142, %bb.e ], [ %.11142, %bb.d ], [ %i.bvr, %bb.we ]
  %.71044 = phi ptr [ %.31040, %.thread1194 ], [ %.11038, %bb.e ], [ %.11038, %bb.d ], [ %.31040, %bb.we ]
  %.71026 = phi ptr [ %.31022, %.thread1194 ], [ %.11020, %bb.e ], [ %.11020, %bb.d ], [ %.31022, %bb.we ]
  %.51017 = phi ptr [ %.31015, %.thread1194 ], [ %.01012, %bb.e ], [ %.01012, %bb.d ], [ %.31015, %bb.we ]
  %.9 = phi i32 [ %.61192, %.thread1194 ], [ %.1, %bb.e ], [ %.1, %bb.d ], [ %.61192, %bb.we ]
  call void @zenderror(ptr noundef nonnull @.str.4) #10
  br label %.loopexit1207

.loopexit1207:                                    ; preds = %.thread1162, %.thread1155, %.loopexit
  %.71148 = phi ptr [ %.51146, %.loopexit ], [ %.61147, %.thread1155 ], [ %.11142, %.thread1162 ] ; 2 uses
  %.81045 = phi ptr [ %.61043, %.loopexit ], [ %.71044, %.thread1155 ], [ %.31040, %.thread1162 ]
  %.01035 = phi i32 [ 1, %.loopexit ], [ 2, %.thread1155 ], [ 0, %.thread1162 ]
  %.41033 = phi i64 [ %i.bwz, %.loopexit ], [ 0, %.thread1155 ], [ 0, %.thread1162 ]
  %.81027 = phi ptr [ %.61025, %.loopexit ], [ %.71026, %.thread1155 ], [ %.31022, %.thread1162 ]
  %.61018 = phi ptr [ %.41016, %.loopexit ], [ %.51017, %.thread1155 ], [ %.31015, %.thread1162 ] ; 4 uses
  %.10 = phi i32 [ %.8, %.loopexit ], [ %.9, %.thread1155 ], [ %.1, %.thread1162 ] ; 3 uses
  %.not1115 = icmp eq i32 %.10, -2
  br i1 %.not1115, label %bb.ws, label %bb.wp

bb.wp:                                            ; preds = %.loopexit1207
  %or.cond11 = icmp ult i32 %.10, 413
  br i1 %or.cond11, label %bb.wq, label %bb.wr

bb.wq:                                            ; preds = %bb.wp
  %i.bxa = zext nneg i32 %.10 to i64
  %i.bxb = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.bxa
  %i.bxc = load i8, ptr %i.bxb, align 1, !tbaa !12
  %i.bxd = zext i8 %i.bxc to i32
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wp, %bb.wq
  %i.bxe = phi i32 [ %i.bxd, %bb.wq ], [ 2, %bb.wp ]
  call fastcc void @yydestruct(i32 noundef %i.bxe, ptr noundef %0)
  br label %bb.ws

bb.ws:                                            ; preds = %bb.wr, %.loopexit1207
  %i.bxf = sub nsw i64 0, %.41033                 ; 2 uses
  %i.bxg = getelementptr inbounds [2 x i8], ptr %.81027, i64 %i.bxf ; 2 uses
  %.not11161268 = icmp eq ptr %i.bxg, %.61018
  br i1 %.not11161268, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ws
  %i.bxh = getelementptr inbounds [8 x i8], ptr %.81045, i64 %i.bxf
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.910281270 = phi ptr [ %i.bxo, %.lr.ph ], [ %i.bxg, %.lr.ph.preheader ] ; 2 uses
  %.910461269 = phi ptr [ %i.bxn, %.lr.ph ], [ %i.bxh, %.lr.ph.preheader ] ; 2 uses
  %i.bxi = load i16, ptr %.910281270, align 2, !tbaa !15
  %i.bxj = sext i16 %i.bxi to i64
  %i.bxk = getelementptr inbounds [2 x i8], ptr @yystos, i64 %i.bxj
  %i.bxl = load i16, ptr %i.bxk, align 2, !tbaa !15
  %i.bxm = sext i16 %i.bxl to i32
  call fastcc void @yydestruct(i32 noundef %i.bxm, ptr noundef %.910461269)
  %i.bxn = getelementptr inbounds i8, ptr %.910461269, i64 -8
  %i.bxo = getelementptr inbounds i8, ptr %.910281270, i64 -2 ; 2 uses
  %.not1116 = icmp eq ptr %i.bxo, %.61018
  br i1 %.not1116, label %._crit_edge, label %.lr.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %bb.ws
  %.not1117 = icmp eq ptr %.61018, %i.a
  br i1 %.not1117, label %bb.wu, label %bb.wt

bb.wt:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %.61018) #10
  br label %bb.wu

bb.wu:                                            ; preds = %bb.wt, %._crit_edge
  %.not1118 = icmp eq ptr %.71148, %i.b
  br i1 %.not1118, label %bb.ww, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  call void @free(ptr noundef %.71148) #10
  br label %bb.ww

bb.ww:                                            ; preds = %bb.wu, %bb.wv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret i32 %.01035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @zendlex(ptr noundef) local_unnamed_addr #4

declare i32 @zend_lex_tstring(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_zval(ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_list_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_list_0(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @zend_ast_create_2(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_list_1(i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_with_attributes(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_1(i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_zval_from_long(i64 noundef) local_unnamed_addr #4

declare i64 @zend_get_scanned_file_offset() local_unnamed_addr #4

declare void @zend_stop_lexing() local_unnamed_addr #4

declare ptr @zend_throw_exception(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_4(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @zend_handle_encoding_declaration(ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_3(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_decl(i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @zend_add_class_modifier(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @zend_add_anonymous_class_modifier(i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_zval_from_str(ptr noundef) local_unnamed_addr #4

declare i32 @zend_modifier_list_to_flags(i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_ex_n(i16 noundef zeroext, i32 noundef, ...) local_unnamed_addr #4

declare ptr @zend_ast_create_list_2(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_fcc() local_unnamed_addr #4

declare i32 @zend_modifier_token_to_flag(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @zend_ast_destroy(ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_concat_op(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_ast_create_zval_ex(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare ptr @zend_ast_create_class_const_or_name(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @zend_negate_num_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 -2, 1) i32 @yysyntax_error(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree readonly captures(none) %.0.val1, i32 %.8.val) unnamed_addr #5 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not.i = icmp eq i32 %.8.val, -2
  br i1 %.not.i, label %yy_syntax_error_arguments.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.8.val, ptr %i.a, align 16, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.val.val.i = load i16, ptr %.0.val1, align 2, !tbaa !15
  %i.c = sext i16 %.val.val.i to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !15   ; 4 uses
  %i.f = icmp eq i16 %i.e, -937
  br i1 %i.f, label %.critedge.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = sext i16 %i.e to i32                       ; 2 uses
  %i.g = icmp slt i16 %i.e, 0
  %i.h = sub nsw i32 0, %1
  %i.i = select i1 %i.g, i32 %i.h, i32 0          ; 2 uses
  %i.j = sub nsw i32 11318, %1
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.j, i32 185) ; 2 uses
  %.not4.i.i = icmp slt i32 %i.i, %i.k
  br i1 %.not4.i.i, label %.lr.ph.preheader.i.i, label %.critedge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.l = sext i32 %i.i to i64
  %i.m = sext i16 %i.e to i64
  %i.n = sext i32 %i.k to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.l, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 4 uses
  %.0365.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.g ] ; 5 uses
  %i.o = add nsw i64 %indvars.iv.i.i, %i.m        ; 2 uses
  %i.p = getelementptr inbounds [2 x i8], ptr @yycheck, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !15
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = trunc nsw i64 %indvars.iv.i.i to i32
  %i.t = icmp eq i32 %i.s, %i.r
  %i.u = icmp ne i64 %indvars.iv.i.i, 1
  %or.cond.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds [2 x i8], ptr @yytable, i64 %i.o
  %i.w = load i16, ptr %i.v, align 2, !tbaa !15
  %i.x = icmp eq i16 %i.w, -607
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i32 %.0365.i.i, 4
  br i1 %i.y, label %yy_syntax_error_arguments.exit.thread6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add i32 %.0365.i.i, 1
  %i.aa = sext i32 %.0365.i.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  store i32 %i.r, ptr %i.ab, align 4, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %.0365.i.i, %bb.d ], [ %i.z, %bb.f ], [ %.0365.i.i, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.n
  br i1 %exitcond.not.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !66

.critedge.i.i:                                    ; preds = %bb.g
  switch i32 %.1.i.i, label %yy_syntax_error_arguments.exit [
    i32 0, label %.critedge.thread.i.i
    i32 -2, label %yy_syntax_error_arguments.exit.thread8
  ]

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.c, %bb.b
  store i32 -2, ptr %i.b, align 4, !tbaa !65
  br label %yy_syntax_error_arguments.exit.thread6

yy_syntax_error_arguments.exit:                   ; preds = %.critedge.i.i
  %i.ac = add nsw i32 %.1.i.i, 1                  ; 8 uses
  switch i32 %i.ac, label %yy_syntax_error_arguments.exit.thread6 [
    i32 -2, label %yy_syntax_error_arguments.exit.thread8
    i32 5, label %bb.l
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.h:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.i:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.j:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.k:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.l:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

yy_syntax_error_arguments.exit.thread6:           ; preds = %bb.e, %.critedge.thread.i.i, %bb.a, %yy_syntax_error_arguments.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.118.i5 = phi i32 [ %i.ac, %bb.k ], [ %i.ac, %bb.l ], [ %i.ac, %bb.h ], [ %i.ac, %bb.i ], [ %i.ac, %bb.j ], [ %i.ac, %yy_syntax_error_arguments.exit ], [ 0, %bb.a ], [ 1, %.critedge.thread.i.i ], [ 1, %bb.e ] ; 4 uses
  %.046 = phi ptr [ @.str.10, %bb.k ], [ @.str.11, %bb.l ], [ @.str.7, %bb.h ], [ @.str.8, %bb.i ], [ @.str.9, %bb.j ], [ @.str.1, %yy_syntax_error_arguments.exit ], [ @.str.1, %bb.a ], [ @.str.7, %.critedge.thread.i.i ], [ @.str.7, %bb.e ] ; 2 uses
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.046) #12
  %i.ae = shl nsw i32 %.118.i5, 1
  %i.af = sext i32 %i.ae to i64
  %reass.sub = sub i64 %i.ad, %i.af
  %i.ag = add i64 %reass.sub, 1                   ; 2 uses
  %.not13 = icmp sgt i32 %.118.i5, 0
  br i1 %.not13, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %yy_syntax_error_arguments.exit.thread6
  %wide.trip.count = zext nneg i32 %.118.i5 to i64
  br label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.04414 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %i.an, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !65
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68
  %i.am = tail call fastcc i64 @zend_yytnamerr(ptr noundef null, ptr noundef %i.al)
  %i.an = add i64 %i.am, %.04414                  ; 3 uses
  %.not.not = icmp sgt i64 %.04414, %i.an
  br i1 %.not.not, label %yy_syntax_error_arguments.exit.thread8, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %yy_syntax_error_arguments.exit.thread6
  %.044.lcssa = phi i64 [ %i.ag, %yy_syntax_error_arguments.exit.thread6 ], [ %i.an, %bb.m ] ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !tbaa !13
  %i.ap = icmp slt i64 %i.ao, %.044.lcssa
  br i1 %i.ap, label %bb.n, label %.preheader

bb.n:                                             ; preds = %._crit_edge
  %i.aq = shl nsw i64 %.044.lcssa, 1              ; 2 uses
  %.not56 = icmp sgt i64 %.044.lcssa, %i.aq
  %spec.store.select = select i1 %.not56, i64 9223372036854775807, i64 %i.aq
  store i64 %spec.store.select, ptr %0, align 8
  br label %yy_syntax_error_arguments.exit.thread8

.preheader:                                       ; preds = %._crit_edge, %bb.q
  %.147 = phi ptr [ %i.bf, %bb.q ], [ %.046, %._crit_edge ] ; 3 uses
  %.039 = phi ptr [ %i.be, %bb.q ], [ %.0.val, %._crit_edge ] ; 3 uses
  %.0 = phi i32 [ %.1, %bb.q ], [ 0, %._crit_edge ] ; 5 uses
  %i.ar = load i8, ptr %.147, align 1, !tbaa !12  ; 2 uses
  store i8 %i.ar, ptr %.039, align 1, !tbaa !12
  switch i8 %i.ar, label %bb.q [
    i8 0, label %yy_syntax_error_arguments.exit.thread8
    i8 37, label %bb.o
  ]

bb.o:                                             ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %.147, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !12
  %i.au = icmp eq i8 %i.at, 115
  %i.av = icmp slt i32 %.0, %.118.i5
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i32 %.0, 1
  %i.ax = sext i32 %.0 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !65
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !68
  %i.bd = tail call fastcc i64 @zend_yytnamerr(ptr noundef nonnull %.039, ptr noundef %i.bc)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.preheader, %bb.p
  %.sink26 = phi i64 [ %i.bd, %bb.p ], [ 1, %.preheader ], [ 1, %bb.o ]
  %.sink = phi i64 [ 2, %bb.p ], [ 1, %.preheader ], [ 1, %bb.o ]
  %.1 = phi i32 [ %i.aw, %bb.p ], [ %.0, %.preheader ], [ %.0, %bb.o ]
  %i.be = getelementptr inbounds nuw i8, ptr %.039, i64 %.sink26
  %i.bf = getelementptr inbounds nuw i8, ptr %.147, i64 %.sink
  br label %.preheader, !llvm.loop !69

yy_syntax_error_arguments.exit.thread8:           ; preds = %.lr.ph, %.preheader, %.critedge.i.i, %bb.n, %yy_syntax_error_arguments.exit
  %.3 = phi i32 [ %.1.i.i, %.critedge.i.i ], [ %i.ac, %yy_syntax_error_arguments.exit ], [ 0, %.preheader ], [ -1, %bb.n ], [ -2, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.3
}

declare void @zenderror(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @yydestruct(i32 noundef range(i32 -32768, 32768) %0, ptr nofree noundef nonnull readonly %1) unnamed_addr #0 {
bb.a:
  switch i32 %0, label %zend_string_release_ex.exit [
    i32 21, label %bb.b
    i32 22, label %bb.c
    i32 23, label %bb.d
    i32 24, label %bb.e
    i32 25, label %bb.f
    i32 26, label %bb.g
    i32 27, label %bb.h
    i32 28, label %bb.i
    i32 29, label %bb.j
    i32 30, label %bb.k
    i32 31, label %bb.l
    i32 32, label %bb.m
    i32 190, label %bb.n
    i32 191, label %bb.o
    i32 192, label %bb.p
    i32 193, label %bb.q
    i32 194, label %bb.r
    i32 195, label %bb.s
    i32 196, label %bb.t
    i32 197, label %bb.u
    i32 198, label %bb.v
    i32 199, label %bb.w
    i32 200, label %bb.x
    i32 201, label %bb.y
    i32 202, label %bb.z
    i32 206, label %bb.aa
    i32 207, label %bb.ab
    i32 209, label %bb.ac
    i32 210, label %bb.ad
    i32 211, label %bb.ae
    i32 212, label %bb.af
    i32 213, label %bb.ag
    i32 214, label %bb.ah
    i32 215, label %bb.ai
end_hunk_0
begin_hunk_1_@zend_yytnamerr:bb.a

bb.al:                                            ; preds = %bb.b
  %i.bj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.14) #12
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  br i1 %i.d, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  store i32 2251810, ptr %0, align 1
  br label %bb.av

bb.ao:                                            ; preds = %bb.al
  %i.bl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.16) #12
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.d, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false)
  br label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.bn = icmp ugt i64 %i.c, 1
  br i1 %i.bn, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.bo = load i8, ptr %1, align 1, !tbaa !12
  %i.bp = icmp eq i8 %i.bo, 34
  br i1 %i.bp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.br = add i64 %i.c, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.2102 = phi ptr [ %i.bq, %bb.at ], [ %1, %bb.as ], [ %1, %bb.ar ] ; 8 uses
  %.299 = phi i64 [ %i.br, %bb.at ], [ %i.c, %bb.as ], [ %i.c, %bb.ar ] ; 14 uses
  %.2102187 = ptrtoaddr ptr %.2102 to i64
  br i1 %i.d, label %.preheader, label %bb.av

.preheader:                                       ; preds = %bb.au
  %.not176 = icmp eq i64 %.299, 0
  br i1 %.not176, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %.299, 8
  %i.bs = sub i64 %.2102187, %i.a
  %diff.check = icmp ugt i64 %i.bs, -32
  %or.cond195 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond195, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check188 = icmp ult i64 %.299, 32
  br i1 %min.iters.check188, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bt = and i64 %.299, 24
  %n.vec = and i64 %.299, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.2102, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <16 x i8>, ptr %i.bu, align 1, !tbaa !12 ; 2 uses
  %wide.load189 = load <16 x i8>, ptr %i.bv, align 1, !tbaa !12 ; 2 uses
  %i.bw = icmp eq <16 x i8> %wide.load, splat (i8 39)
  %i.bx = icmp eq <16 x i8> %wide.load189, splat (i8 39)
  %i.by = select <16 x i1> %i.bw, <16 x i8> splat (i8 34), <16 x i8> %wide.load
  %i.bz = select <16 x i1> %i.bx, <16 x i8> splat (i8 34), <16 x i8> %wide.load189
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <16 x i8> %i.by, ptr %i.ca, align 1, !tbaa !12
  store <16 x i8> %i.bz, ptr %i.cb, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.299, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !74

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec190 = and i64 %.299, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2102, i64 %index191
  %wide.load192 = load <8 x i8>, ptr %i.cd, align 1, !tbaa !12 ; 2 uses
  %i.ce = icmp eq <8 x i8> %wide.load192, splat (i8 39)
  %i.cf = select <8 x i1> %i.ce, <8 x i8> splat (i8 34), <8 x i8> %wide.load192
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %index191
  store <8 x i8> %i.cf, ptr %i.cg, align 1, !tbaa !12
  %index.next193 = add nuw i64 %index191, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next193, %n.vec190
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !75

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %.299, %n.vec190
  br i1 %cmp.n194, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0175.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec190, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.299, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0175.prol = phi i64 [ %i.cm, %.lr.ph.prol ], [ %.0175.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.2102, i64 %.0175.prol
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !12  ; 2 uses
  %i.ck = icmp eq i8 %i.cj, 39
  %spec.select.prol = select i1 %i.ck, i8 34, i8 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %.0175.prol
  store i8 %spec.select.prol, ptr %i.cl, align 1, !tbaa !12
  %i.cm = add nuw i64 %.0175.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !76

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0175.unr = phi i64 [ %.0175.ph, %.lr.ph.preheader ], [ %i.cm, %.lr.ph.prol ]
  %i.cn = sub i64 %.0175.ph, %.299
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0175 = phi i64 [ %i.di, %.lr.ph ], [ %.0175.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.2102, i64 %.0175
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !12  ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 39
  %spec.select = select i1 %i.cr, i8 34, i8 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %.0175
  store i8 %spec.select, ptr %i.cs, align 1, !tbaa !12
  %i.ct = add nuw i64 %.0175, 1                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.2102, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12  ; 2 uses
  %i.cw = icmp eq i8 %i.cv, 39
  %spec.select.1 = select i1 %i.cw, i8 34, i8 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct
  store i8 %spec.select.1, ptr %i.cx, align 1, !tbaa !12
  %i.cy = add nuw i64 %.0175, 2                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.2102, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !12  ; 2 uses
  %i.db = icmp eq i8 %i.da, 39
  %spec.select.2 = select i1 %i.db, i8 34, i8 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  store i8 %spec.select.2, ptr %i.dc, align 1, !tbaa !12
  %i.dd = add nuw i64 %.0175, 3                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2102, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !12  ; 2 uses
  %i.dg = icmp eq i8 %i.df, 39
  %spec.select.3 = select i1 %i.dg, i8 34, i8 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %i.dd
  store i8 %spec.select.3, ptr %i.dh, align 1, !tbaa !12
  %i.di = add nuw i64 %.0175, 4                   ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.di, %.299
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !78

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.299
  store i8 0, ptr %i.dj, align 1, !tbaa !12
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge, %bb.ap, %bb.aq, %bb.am, %bb.an, %bb.ak
  %.1104 = phi i64 [ %.0103, %bb.ak ], [ 9, %bb.ap ], [ 3, %bb.am ], [ 3, %bb.an ], [ 9, %bb.aq ], [ %.299, %._crit_edge ], [ %.299, %bb.au ]
  ret i64 %.1104
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !10, i64 0}
!17 = !{!18, !39, i64 448}
!18 = !{!"_zend_compiler_globals", !19, i64 0, !21, i64 24, !22, i64 32, !9, i64 40, !23, i64 48, !24, i64 56, !24, i64 64, !24, i64 72, !10, i64 80, !25, i64 81, !25, i64 82, !25, i64 83, !25, i64 84, !26, i64 88, !28, i64 144, !25, i64 152, !25, i64 153, !25, i64 154, !25, i64 155, !22, i64 160, !9, i64 168, !9, i64 172, !29, i64 176, !32, i64 256, !36, i64 360, !34, i64 368, !37, i64 424, !14, i64 432, !25, i64 440, !25, i64 441, !25, i64 442, !39, i64 448, !36, i64 456, !19, i64 464, !24, i64 488, !9, i64 496, !20, i64 504, !20, i64 512, !14, i64 520, !14, i64 528, !24, i64 536, !24, i64 544, !24, i64 552, !21, i64 560, !9, i64 568, !20, i64 576, !9, i64 584, !19, i64 592}
!19 = !{!"_zend_stack", !9, i64 0, !9, i64 4, !9, i64 8, !20, i64 16}
!20 = !{!"any pointer", !10, i64 0}
!21 = !{!"p1 _ZTS17_zend_class_entry", !20, i64 0}
!22 = !{!"p1 _ZTS12_zend_string", !20, i64 0}
!23 = !{!"p1 _ZTS14_zend_op_array", !20, i64 0}
!24 = !{!"p1 _ZTS11_zend_array", !20, i64 0}
!25 = !{!"_Bool", !10, i64 0}
!26 = !{!"_zend_llist", !27, i64 0, !27, i64 8, !14, i64 16, !14, i64 24, !20, i64 32, !10, i64 40, !27, i64 48}
!27 = !{!"p1 _ZTS19_zend_llist_element", !20, i64 0}
!28 = !{!"p1 _ZTS22_zend_ini_parser_param", !20, i64 0}
!29 = !{!"_zend_oparray_context", !30, i64 0, !23, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !31, i64 48, !24, i64 56, !22, i64 64, !9, i64 72, !25, i64 76, !25, i64 77}
!30 = !{!"p1 _ZTS21_zend_oparray_context", !20, i64 0}
!31 = !{!"p1 _ZTS22_zend_brk_cont_element", !20, i64 0}
!32 = !{!"_zend_file_context", !33, i64 0, !22, i64 8, !25, i64 16, !25, i64 17, !24, i64 24, !24, i64 32, !24, i64 40, !34, i64 48}
!33 = !{!"_zend_declarables", !14, i64 0}
!34 = !{!"_zend_array", !35, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !14, i64 40, !20, i64 48}
!35 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!36 = !{!"p1 _ZTS11_zend_arena", !20, i64 0}
!37 = !{!"p2 _ZTS14_zend_encoding", !38, i64 0}
!38 = !{!"any p2 pointer", !20, i64 0}
!39 = !{!"p1 _ZTS9_zend_ast", !20, i64 0}
!40 = !{!41, !16, i64 2}
!41 = !{!"_zend_ast", !16, i64 0, !16, i64 2, !9, i64 4, !10, i64 8}
!42 = !{!18, !22, i64 160}
!43 = !{!35, !9, i64 0}
!44 = !{!21, !21, i64 0}
!45 = !{!18, !9, i64 168}
!46 = !{!18, !9, i64 40}
!47 = !{!39, !39, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"p2 _ZTS12_zend_string", !38, i64 0}
!50 = !{!22, !22, i64 0}
!51 = !{!41, !16, i64 0}
!52 = !{!53, !9, i64 12}
!53 = !{!"_zend_ast_decl", !16, i64 0, !16, i64 2, !9, i64 4, !9, i64 8, !9, i64 12, !22, i64 16, !22, i64 24, !10, i64 32}
!54 = !{!55, !57, i64 32}
!55 = !{!"_zend_php_scanner_globals", !56, i64 0, !56, i64 8, !9, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !9, i64 64, !19, i64 72, !58, i64 96, !19, i64 128, !25, i64 152, !9, i64 156, !25, i64 160, !57, i64 168, !14, i64 176, !57, i64 184, !14, i64 192, !20, i64 200, !20, i64 208, !59, i64 216, !9, i64 224, !20, i64 232, !20, i64 240}
!56 = !{!"p1 _ZTS17_zend_file_handle", !20, i64 0}
!57 = !{!"p1 omnipotent char", !20, i64 0}
!58 = !{!"_zend_ptr_stack", !9, i64 0, !9, i64 4, !38, i64 8, !38, i64 16, !25, i64 24}
!59 = !{!"p1 _ZTS14_zend_encoding", !20, i64 0}
!60 = !{!41, !9, i64 4}
!61 = !{!62, !9, i64 8}
!62 = !{!"_zend_ast_list", !16, i64 0, !16, i64 2, !9, i64 4, !9, i64 8, !10, i64 16}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!9, !9, i64 0}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = !{!57, !57, i64 0}
!69 = distinct !{!69, !64}
!70 = !{!18, !10, i64 80}
!71 = distinct !{!71, !64, !72, !73}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!"branch_weights", i32 8, i32 24}
!75 = distinct !{!75, !64, !72, !73}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !64, !72}
end_hunk_1
