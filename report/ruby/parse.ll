inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@rb_reg_fragment_setenc:bb.a
    i8 117, label %char_to_option_kcode.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call nonnull ptr @rb_ascii8bit_encoding() #31
  br label %kcode_to_enc.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_enc_find_index(ptr noundef nonnull @.str.948) #31 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %find_enc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.823, ptr noundef nonnull @.str.948) #32
  unreachable

find_enc.exit.i:                                  ; preds = %bb.c
  %i.f = tail call ptr @rb_enc_from_index(i32 noundef %i.d) #31
  br label %kcode_to_enc.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call i32 @rb_enc_find_index(ptr noundef nonnull @.str.949) #31 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %find_enc.exit3.i

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.823, ptr noundef nonnull @.str.949) #32
  unreachable

find_enc.exit3.i:                                 ; preds = %bb.e
  %i.i = tail call ptr @rb_enc_from_index(i32 noundef %i.g) #31
  br label %kcode_to_enc.exit

char_to_option_kcode.exit:                        ; preds = %bb.a
  %i.j = tail call nonnull ptr @rb_utf8_encoding() #31
  br label %kcode_to_enc.exit

kcode_to_enc.exit:                                ; preds = %bb.a, %bb.b, %find_enc.exit.i, %find_enc.exit3.i, %char_to_option_kcode.exit
  %.0.i28 = phi ptr [ %i.j, %char_to_option_kcode.exit ], [ %i.c, %bb.b ], [ %i.f, %find_enc.exit.i ], [ %i.i, %find_enc.exit3.i ], [ null, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !25
  %.not26 = icmp eq ptr %.0.i28, %.val
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %kcode_to_enc.exit
  %i.l = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef nonnull %1)
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %rb_parser_enc_associate.exit

bb.h:                                             ; preds = %kcode_to_enc.exit, %bb.g
  store ptr %.0.i28, ptr %i.k, align 8, !tbaa !25
  br label %rb_parser_enc_associate.exit

bb.i:                                             ; preds = %bb.a
  %i.n = and i32 %2, 32
  %.not25 = icmp eq i32 %i.n, 0
  br i1 %.not25, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val27 = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.p = tail call nonnull ptr @rb_ascii8bit_encoding() #31
  %i.q = icmp eq ptr %.val27, %i.p
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = tail call fastcc i32 @rb_parser_enc_str_coderange(ptr noundef nonnull %1)
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %rb_parser_enc_associate.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = tail call nonnull ptr @rb_ascii8bit_encoding() #31 ; 2 uses
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.u = icmp eq ptr %.val.i, %i.t
  br i1 %i.u, label %rb_parser_enc_associate.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val9.i = load i32, ptr %1, align 8, !tbaa !24
  %i.v = icmp eq i32 %.val9.i, 1
  br i1 %i.v, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %1, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.t, ptr %i.o, align 8, !tbaa !25
  br label %rb_parser_enc_associate.exit

bb.p:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %0, i64 216
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !176
  %i.y = tail call nonnull ptr @rb_usascii_encoding() #31
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.q, label %rb_parser_enc_associate.exit

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call nonnull ptr @rb_ascii8bit_encoding() #31 ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val.i29 = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ac = icmp eq ptr %.val.i29, %i.aa
  br i1 %i.ac, label %rb_parser_enc_associate.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val9.i30 = load i32, ptr %1, align 8, !tbaa !24
  %i.ad = icmp eq i32 %.val9.i30, 1
  br i1 %i.ad, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %1, align 8, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !25
  br label %rb_parser_enc_associate.exit

rb_parser_enc_associate.exit:                     ; preds = %bb.t, %bb.q, %bb.o, %bb.l, %bb.h, %bb.g, %bb.k, %bb.p
  %.022 = phi i32 [ 0, %bb.p ], [ 110, %bb.k ], [ %i.b, %bb.g ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.q ], [ 0, %bb.t ]
  ret i32 %.022
}

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #2

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @rb_parser_assignable(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @assignable(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_reg_named_capture_assign_iter_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @rb_enc_symname_type(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 1) #31
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @rb_intern3(ptr noundef %1, i64 noundef %2, ptr noundef %3) #31 ; 3 uses
  %i.d = icmp slt i64 %2, 12
  br i1 %i.d, label %bb.d, label %reserved_word.exit.thread

bb.d:                                             ; preds = %bb.c
  %sext = shl i64 %2, 32
  %i.e = ashr exact i64 %sext, 32                 ; 3 uses
  %i.f = add nsw i64 %i.e, -2
  %or.cond.i = icmp ult i64 %i.f, 11
  br i1 %or.cond.i, label %bb.e, label %reserved_word.exit.thread

bb.e:                                             ; preds = %bb.d
  %switch.i.i = icmp samesign ult i64 %i.e, 3
  br i1 %switch.i.i, label %hash.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = trunc i64 %2 to i32
  %i.h = getelementptr i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !15
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr @hash.asso_values, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i32
  %i.n = add nuw nsw i32 %i.m, %i.g
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.n, %bb.f ], [ 2, %bb.e ]
  %i.o = load i8, ptr %1, align 1, !tbaa !15      ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr @hash.asso_values, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  %i.s = zext i8 %i.r to i32
  %i.t = add nuw nsw i32 %.0.i.i, %i.s
  %i.u = getelementptr i8, ptr %1, i64 %i.e
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr i8, ptr @hash.asso_values, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.t, %i.aa             ; 2 uses
  %i.ac = icmp samesign ult i32 %i.ab, 51
  br i1 %i.ac, label %bb.g, label %reserved_word.exit.thread

bb.g:                                             ; preds = %hash.exit.i
  %i.ad = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ae = shl nuw nsw i64 1, %i.ad
  %i.af = and i64 %i.ae, 1407374883553024
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %reserved_word.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.ad
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !493
  %i.ai = sext i16 %i.ah to i64
  %7 = and i64 %i.ai, 4294967295
  %i.aj = getelementptr i8, ptr @stringpool_contents, i64 %7 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = icmp eq i8 %i.o, %i.ak
  br i1 %i.al, label %bb.i, label %reserved_word.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %1, i64 1
  %i.an = getelementptr i8, ptr %i.aj, i64 1
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(1) %i.an) #35
  %.not24.i.not = icmp eq i32 %i.ao, 0
  br i1 %.not24.i.not, label %bb.j, label %reserved_word.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call fastcc i32 @lvar_defined(ptr noundef %0, i64 noundef %i.c)
  %.not44 = icmp eq i32 %i.ap, 0
  br i1 %.not44, label %bb.m, label %reserved_word.exit.thread

reserved_word.exit.thread:                        ; preds = %hash.exit.i, %bb.g, %bb.h, %bb.i, %bb.d, %bb.j, %bb.c
  %i.aq = tail call ptr %6(ptr noundef %0, i64 noundef %i.c, ptr noundef null, ptr noundef %5) #31 ; 2 uses
  %i.ar = tail call i64 @rb_id2str(i64 noundef %i.c) #31
  %i.as = getelementptr i8, ptr %0, i64 288       ; 2 uses
  %.val.i.i = load ptr, ptr %i.as, align 8, !tbaa !129
  %i.at = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i, i32 noundef range(i32 0, 115) 101, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.at, i32 noundef range(i32 0, 115) 101) #31
  %i.au = getelementptr i8, ptr %i.at, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !57
  %i.av = load i32, ptr %5, align 4, !tbaa !51
  %i.aw = sext i32 %i.av to i64
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !69
  %i.ay = and i64 %i.ax, 32767
  %i.az = shl nsw i64 %i.aw, 15
  %i.ba = or disjoint i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.at, align 8, !tbaa !69
  %i.bb = getelementptr i8, ptr %0, i64 296       ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !217 ; 2 uses
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !217
  %i.be = getelementptr i8, ptr %i.at, i64 24
  store i32 %i.bc, ptr %i.be, align 8, !tbaa !218
  %i.bf = tail call ptr @rb_str_to_parser_string(ptr poison, i64 noundef %i.ar)
  %i.bg = getelementptr i8, ptr %i.at, i64 32
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !345
  %i.bh = tail call fastcc ptr @node_assign(ptr noundef %0, ptr noundef %i.aq, ptr noundef nonnull %i.at, ptr noundef nonnull %5) ; 0 uses
  %i.bi = load ptr, ptr %4, align 8, !tbaa !257   ; 2 uses
  %.not45 = icmp eq ptr %i.bi, null
  br i1 %.not45, label %bb.k, label %bb.l

bb.k:                                             ; preds = %reserved_word.exit.thread
  %.val.i.i46 = load ptr, ptr %i.as, align 8, !tbaa !129
  %i.bj = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i46, i32 noundef range(i32 0, 115) 108, i64 noundef range(i64 32, 129) 32, i64 noundef 8) #31 ; 6 uses
  tail call void @rb_node_init(ptr noundef %i.bj, i32 noundef range(i32 0, 115) 108) #31
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !57
  %i.bl = load i32, ptr %5, align 4, !tbaa !51
  %i.bm = sext i32 %i.bl to i64
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !69
  %i.bo = and i64 %i.bn, 32767
  %i.bp = shl nsw i64 %i.bm, 15
  %i.bq = or disjoint i64 %i.bo, %i.bp
  store i64 %i.bq, ptr %i.bj, align 8, !tbaa !69
  %i.br = load i32, ptr %i.bb, align 8, !tbaa !217 ; 2 uses
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bb, align 8, !tbaa !217
  %i.bt = getelementptr i8, ptr %i.bj, i64 24
  store i32 %i.br, ptr %i.bt, align 8, !tbaa !218
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %reserved_word.exit.thread
  %.041 = phi ptr [ %i.bi, %reserved_word.exit.thread ], [ %i.bj, %bb.k ]
  %i.bu = tail call fastcc ptr @block_append(ptr noundef nonnull %0, ptr noundef nonnull %.041, ptr noundef %i.aq)
  store ptr %i.bu, ptr %4, align 8, !tbaa !257
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.b, %bb.a, %bb.l
  ret i32 0
}

declare i32 @rb_enc_symname_type(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_intern3(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @lvar_defined(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168        ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !101 ; 6 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.b, align 8, !tbaa !147 ; 7 uses
  %switch.i = icmp ult ptr %.val.val, inttoptr (i64 2 to ptr)
  br i1 %switch.i, label %dyna_in_block.exit.thread, label %dyna_in_block.exit

dyna_in_block.exit:                               ; preds = %bb.a
  %i.c = getelementptr i8, ptr %.val.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %dyna_in_block.exit.thread.thread, label %.lr.ph.split.us.i.i

dyna_in_block.exit.thread.thread:                 ; preds = %dyna_in_block.exit
  %i.e = load ptr, ptr %.val, align 8, !tbaa !198
  br label %.lr.ph.i.i.preheader

.lr.ph.split.us.i.i:                              ; preds = %dyna_in_block.exit, %vtable_included.exit43.thread.us.i.i
  %.02660.us.i.in.i = phi ptr [ %i.u, %vtable_included.exit43.thread.us.i.i ], [ %.val, %dyna_in_block.exit ]
  %.02759.us.i.i = phi ptr [ %i.w, %vtable_included.exit43.thread.us.i.i ], [ %.val.val, %dyna_in_block.exit ] ; 3 uses
  %.02660.us.i.i = load ptr, ptr %.02660.us.i.in.i, align 8, !tbaa !390 ; 4 uses
  %i.f = icmp ult ptr %.02660.us.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.f, label %vtable_included.exit.thread.us.i.i, label %.preheader.i.us.i.i

.preheader.i.us.i.i:                              ; preds = %.lr.ph.split.us.i.i
  %i.g = getelementptr i8, ptr %.02660.us.i.i, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !195  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.us.i.i, label %vtable_included.exit.thread.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.preheader.i.us.i.i
  %i.j = load ptr, ptr %.02660.us.i.i, align 8, !tbaa !197
  %wide.trip.count.i.us.i.i = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.c ] ; 2 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.i.us.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %dvar_defined.exit.thread10, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.us.i.i
  br i1 %exitcond.not.i.us.i.i, label %vtable_included.exit.thread.us.i.i, label %bb.b, !llvm.loop !214

vtable_included.exit.thread.us.i.i:               ; preds = %bb.c, %.preheader.i.us.i.i, %.lr.ph.split.us.i.i
  %i.n = getelementptr i8, ptr %.02759.us.i.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !195  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i38.us.i.i, label %vtable_included.exit43.thread.us.i.i

.lr.ph.i38.us.i.i:                                ; preds = %vtable_included.exit.thread.us.i.i
  %i.q = load ptr, ptr %.02759.us.i.i, align 8, !tbaa !197
  %wide.trip.count.i39.us.i.i = zext nneg i32 %i.o to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i38.us.i.i
  %indvars.iv.i40.us.i.i = phi i64 [ 0, %.lr.ph.i38.us.i.i ], [ %indvars.iv.next.i41.us.i.i, %bb.e ] ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.i40.us.i.i
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %dvar_defined.exit.thread10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i41.us.i.i = add nuw nsw i64 %indvars.iv.i40.us.i.i, 1 ; 2 uses
  %exitcond.not.i42.us.i.i = icmp eq i64 %indvars.iv.next.i41.us.i.i, %wide.trip.count.i39.us.i.i
  br i1 %exitcond.not.i42.us.i.i, label %vtable_included.exit43.thread.us.i.i, label %bb.d, !llvm.loop !214

vtable_included.exit43.thread.us.i.i:             ; preds = %bb.e, %vtable_included.exit.thread.us.i.i
  %i.u = getelementptr i8, ptr %.02660.us.i.i, i64 16
  %i.v = getelementptr i8, ptr %.02759.us.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !148  ; 3 uses
  %i.x = icmp ult ptr %i.w, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %._crit_edge.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !428

._crit_edge.i.i:                                  ; preds = %vtable_included.exit43.thread.us.i.i
  %.not48.i.i = icmp eq ptr %i.w, inttoptr (i64 1 to ptr)
  br i1 %.not48.i.i, label %bb.f, label %dyna_in_block.exit.thread

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.y = and i64 %1, 14
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ult i64 %1, 3776
  %i.ab = lshr i64 %1, 4
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, -245
  %i.ae = icmp ult i32 %i.ad, -9
  %.not53.i.i = or i1 %i.z, %i.ae
  %narrow.i.not.i.i = or i1 %i.aa, %.not53.i.i
  br i1 %narrow.i.not.i.i, label %dvar_defined.exit, label %dyna_in_block.exit.thread

dvar_defined.exit:                                ; preds = %bb.f
  %i.af = getelementptr i8, ptr %0, i64 352
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.ah = tail call i32 @rb_dvar_defined(i64 noundef %1, ptr noundef %i.ag) #31
  %.not4 = icmp eq i32 %i.ah, 0
  br i1 %.not4, label %dvar_defined.exit.dyna_in_block.exit.thread_crit_edge, label %dvar_defined.exit.thread10

dvar_defined.exit.dyna_in_block.exit.thread_crit_edge: ; preds = %dvar_defined.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 8
  %.pre30 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !147
  br label %dyna_in_block.exit.thread

dyna_in_block.exit.thread:                        ; preds = %dvar_defined.exit.dyna_in_block.exit.thread_crit_edge, %bb.f, %._crit_edge.i.i, %bb.a
  %i.ai = phi ptr [ %.pre30, %dvar_defined.exit.dyna_in_block.exit.thread_crit_edge ], [ %.val.val, %bb.f ], [ %.val.val, %._crit_edge.i.i ], [ %.val.val, %bb.a ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %dvar_defined.exit.dyna_in_block.exit.thread_crit_edge ], [ %.val, %bb.f ], [ %.val, %._crit_edge.i.i ], [ %.val, %bb.a ]
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !198 ; 2 uses
  %.not60.i.i = icmp eq ptr %i.ai, null
  br i1 %.not60.i.i, label %.critedge37.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %dyna_in_block.exit.thread.thread, %dyna_in_block.exit.thread
  %.03062.i.i.ph = phi ptr [ %i.ak, %dyna_in_block.exit.thread ], [ %i.e, %dyna_in_block.exit.thread.thread ]
  %.03161.i.i.ph = phi ptr [ %i.ai, %dyna_in_block.exit.thread ], [ %.val.val, %dyna_in_block.exit.thread.thread ]
  br label %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@local_free:bb.a
  br label %bb.b

bb.b:                                             ; preds = %vtable_free_gen.exit.i, %.lr.ph.i
  %.08.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.f, %vtable_free_gen.exit.i ] ; 4 uses
  %i.e = getelementptr i8, ptr %.08.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !148  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8
  %i.h = and i32 %i.g, 32
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.947, i32 noundef 14913, ptr noundef nonnull @.str.950, ptr noundef nonnull %.08.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %.08.i, align 8, !tbaa !197 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.i, null
  br i1 %.not12.i.i, label %vtable_free_gen.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.i) #31
  br label %vtable_free_gen.exit.i

vtable_free_gen.exit.i:                           ; preds = %bb.e, %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %.08.i) #31
  %i.j = icmp ult ptr %i.f, inttoptr (i64 2 to ptr)
  br i1 %i.j, label %vtable_chain_free.exit, label %bb.b, !llvm.loop !508

vtable_chain_free.exit:                           ; preds = %vtable_free_gen.exit.i, %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !198    ; 2 uses
  %i.l = icmp ult ptr %i.k, inttoptr (i64 2 to ptr)
  br i1 %i.l, label %vtable_chain_free.exit12, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %vtable_chain_free.exit
  %i.m = getelementptr i8, ptr %0, i64 360
  br label %bb.f

bb.f:                                             ; preds = %vtable_free_gen.exit.i11, %.lr.ph.i7
  %.08.i8 = phi ptr [ %i.k, %.lr.ph.i7 ], [ %i.o, %vtable_free_gen.exit.i11 ] ; 4 uses
  %i.n = getelementptr i8, ptr %.08.i8, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !148  ; 2 uses
  %i.p = load i32, ptr %i.m, align 8
  %i.q = and i32 %i.p, 32
  %.not.i.i9 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.947, i32 noundef 14913, ptr noundef nonnull @.str.950, ptr noundef nonnull %.08.i8)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr %.08.i8, align 8, !tbaa !197 ; 2 uses
  %.not12.i.i10 = icmp eq ptr %i.r, null
  br i1 %.not12.i.i10, label %vtable_free_gen.exit.i11, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ruby_xfree(ptr noundef nonnull %i.r) #31
  br label %vtable_free_gen.exit.i11

vtable_free_gen.exit.i11:                         ; preds = %bb.i, %bb.h
  tail call void @ruby_xfree(ptr noundef nonnull %.08.i8) #31
  %i.s = icmp ult ptr %i.o, inttoptr (i64 2 to ptr)
  br i1 %i.s, label %vtable_chain_free.exit12, label %bb.f, !llvm.loop !508

vtable_chain_free.exit12:                         ; preds = %vtable_free_gen.exit.i11, %vtable_chain_free.exit
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !147  ; 2 uses
  %i.v = icmp ult ptr %i.u, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %vtable_chain_free.exit18, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %vtable_chain_free.exit12
  %i.w = getelementptr i8, ptr %0, i64 360
  br label %bb.j

bb.j:                                             ; preds = %vtable_free_gen.exit.i17, %.lr.ph.i13
  %.08.i14 = phi ptr [ %i.u, %.lr.ph.i13 ], [ %i.y, %vtable_free_gen.exit.i17 ] ; 4 uses
  %i.x = getelementptr i8, ptr %.08.i14, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !148  ; 2 uses
  %i.z = load i32, ptr %i.w, align 8
  %i.aa = and i32 %i.z, 32
  %.not.i.i15 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.947, i32 noundef 14913, ptr noundef nonnull @.str.950, ptr noundef nonnull %.08.i14)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ab = load ptr, ptr %.08.i14, align 8, !tbaa !197 ; 2 uses
  %.not12.i.i16 = icmp eq ptr %i.ab, null
  br i1 %.not12.i.i16, label %vtable_free_gen.exit.i17, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ruby_xfree(ptr noundef nonnull %i.ab) #31
  br label %vtable_free_gen.exit.i17

vtable_free_gen.exit.i17:                         ; preds = %bb.m, %bb.l
  tail call void @ruby_xfree(ptr noundef nonnull %.08.i14) #31
  %i.ac = icmp ult ptr %i.y, inttoptr (i64 2 to ptr)
  br i1 %i.ac, label %vtable_chain_free.exit18, label %bb.j, !llvm.loop !508

vtable_chain_free.exit18:                         ; preds = %vtable_free_gen.exit.i17, %vtable_chain_free.exit12
  tail call void @ruby_xfree(ptr noundef nonnull %1) #31
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_ruby_parser_memsize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !509
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, 408                    ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 168
  %.01013 = load ptr, ptr %i.e, align 8, !tbaa !510 ; 2 uses
  %.not14 = icmp eq ptr %.01013, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.01016 = phi ptr [ %.010, %bb.c ], [ %.01013, %bb.a ] ; 2 uses
  %.015 = phi i64 [ %.1, %bb.c ], [ %i.d, %bb.a ]
  %i.f = add i64 %.015, 64                        ; 2 uses
  %i.g = getelementptr i8, ptr %.01016, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147  ; 2 uses
  %.not12 = icmp eq ptr %i.h, null
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !196
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = add i64 %i.l, %i.f
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i64 [ %i.m, %bb.b ], [ %i.f, %.lr.ph ] ; 2 uses
  %i.n = getelementptr i8, ptr %.01016, i64 24
  %.010 = load ptr, ptr %i.n, align 8, !tbaa !510 ; 2 uses
  %.not = icmp eq ptr %.010, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !511

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i64 [ %i.d, %bb.a ], [ %.1, %bb.c ]
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @rb_reserved_word(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = add i32 %1, -2
  %or.cond.i = icmp ult i32 %i.b, 11
  br i1 %or.cond.i, label %bb.b, label %reserved_word.exit

bb.b:                                             ; preds = %bb.a
  %switch.i.i = icmp samesign ult i32 %1, 3
  br i1 %switch.i.i, label %hash.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr @hash.asso_values, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15
  %i.h = zext i8 %i.g to i32
  %i.i = add nuw nsw i32 %1, %i.h
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.i, %bb.c ], [ 2, %bb.b ]
  %i.j = load i8, ptr %0, align 1, !tbaa !15      ; 2 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr @hash.asso_values, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15
  %i.n = zext i8 %i.m to i32
  %i.o = add nuw nsw i32 %.0.i.i, %i.n
  %i.p = getelementptr i8, ptr %0, i64 %i.a
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr @hash.asso_values, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %i.o, %i.v               ; 2 uses
  %i.x = icmp samesign ult i32 %i.w, 51
  br i1 %i.x, label %bb.d, label %.critedge26.thread.i

bb.d:                                             ; preds = %hash.exit.i
  %i.y = zext nneg i32 %i.w to i64                ; 2 uses
  %i.z = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.y ; 2 uses
  %i.aa = shl nuw nsw i64 1, %i.y
  %i.ab = and i64 %i.aa, 1407374883553024
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %.critedge26.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i16, ptr %i.z, align 8, !tbaa !493
  %i.ad = sext i16 %i.ac to i64
  %2 = and i64 %i.ad, 4294967295
  %i.ae = getelementptr i8, ptr @stringpool_contents, i64 %2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !15
  %i.ag = icmp eq i8 %i.j, %i.af
  br i1 %i.ag, label %bb.f, label %.critedge26.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %0, i64 1
  %i.ai = getelementptr i8, ptr %i.ae, i64 1
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) %i.ai) #35
  %.not24.i = icmp eq i32 %i.aj, 0
  br i1 %.not24.i, label %reserved_word.exit, label %.critedge26.thread.i

.critedge26.thread.i:                             ; preds = %bb.f, %bb.e, %bb.d, %hash.exit.i
  br label %reserved_word.exit

reserved_word.exit:                               ; preds = %bb.a, %bb.f, %.critedge26.thread.i
  %.5.i = phi ptr [ %i.z, %bb.f ], [ null, %.critedge26.thread.i ], [ null, %bb.a ]
  ret ptr %.5.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias noundef nonnull ptr @rb_ruby_parser_allocate() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(408) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 408) #33
  ret ptr %i.a
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define hidden noalias noundef nonnull ptr @rb_ruby_parser_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(408) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 408) #33 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 360 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i64 4, ptr %i.d, align 8, !tbaa !427
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 -1, ptr %i.e, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = tail call noalias nonnull dereferenceable(152) ptr @ruby_xmalloc(i64 noundef 152) #34 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.g, ptr %i.h, align 8, !tbaa !512
  store ptr %i.g, ptr %i.f, align 8, !tbaa !513
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 16, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !11
  store ptr null, ptr %i.g, align 8, !tbaa !504
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 0, ptr %i.k, align 8, !tbaa !217
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr null, ptr %i.l, align 8, !tbaa !64
  %i.m = or i32 %i.c, 7
  store i32 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 0, ptr %i.n, align 8, !tbaa !190
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store ptr null, ptr %i.o, align 8, !tbaa !423
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store i32 0, ptr %i.p, align 8, !tbaa !514
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr null, ptr %i.q, align 8, !tbaa !495
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i64 4, ptr %i.r, align 8, !tbaa !192
  %i.s = tail call i64 @rb_ractor_stdout() #31
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i64 %i.s, ptr %i.t, align 8, !tbaa !193
  %i.u = tail call nonnull ptr @rb_utf8_encoding() #31
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store ptr %i.u, ptr %i.v, align 8, !tbaa !176
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr null, ptr %i.w, align 8, !tbaa !79
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden noundef ptr @rb_ruby_parser_set_context(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((352, 360), (368, 376)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = select i1 %.not, i64 4, i64 0
  %i.b = getelementptr i8, ptr %0, i64 368
  store i64 %i.a, ptr %i.b, align 8, !tbaa !190
  %i.c = getelementptr i8, ptr %0, i64 352
  store ptr %1, ptr %i.c, align 8, !tbaa !68
  ret ptr %0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ruby_parser_set_script_lines(ptr nofree noundef writeonly captures(none) initializes((376, 384)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !352
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 10, ptr %i.c, align 8, !tbaa !347
  %i.d = tail call noalias nonnull dereferenceable(80) ptr @ruby_xcalloc(i64 noundef 10, i64 noundef 8) #33
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !350
  store i32 2, ptr %i.a, align 8, !tbaa !351
  %i.f = getelementptr i8, ptr %0, i64 376
  store ptr %i.a, ptr %i.f, align 8, !tbaa !515
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define hidden void @rb_ruby_parser_error_tolerant(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 32768
  store i32 %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_ruby_parser_keep_tokens(ptr nofree noundef captures(none) initializes((400, 408)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 65536
  store i32 %i.c, ptr %i.a, align 8
  %i.d = tail call noalias nonnull dereferenceable(32) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 32) #33 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !352
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 10, ptr %i.f, align 8, !tbaa !347
  %i.g = tail call noalias nonnull dereferenceable(80) ptr @ruby_xcalloc(i64 noundef 10, i64 noundef 8) #33
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !350
  store i32 1, ptr %i.d, align 8, !tbaa !351
  %i.i = getelementptr i8, ptr %0, i64 400
  store ptr %i.d, ptr %i.i, align 8, !tbaa !495
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local ptr @rb_ruby_parser_encoding(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @rb_ruby_parser_end_seen_p(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 1
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @rb_ruby_parser_set_yydebug(ptr nofree noundef captures(none) %0, i32 noundef returned %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = shl i32 %1, 5
  %i.d = and i32 %i.c, 32
  %i.e = and i32 %i.b, -33
  %i.f = or disjoint i32 %i.e, %i.d
  store i32 %i.f, ptr %i.a, align 8
  ret i32 %1
}

declare i64 @rb_io_write(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local i64 @rb_yytnamerr(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr %2, align 1, !tbaa !15
  %i.b = icmp eq i8 %i.a, 34
  br i1 %i.b, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  %.not71 = icmp eq ptr %1, null                  ; 5 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.preheader
  %.055.ph = phi i64 [ 0, %.preheader ], [ %.055.ph.be, %.outer.backedge ]
  %.053.ph = phi i64 [ 0, %.preheader ], [ %.053.ph.be, %.outer.backedge ] ; 5 uses
  %.052.ph = phi ptr [ %2, %.preheader ], [ %.052.ph.be, %.outer.backedge ]
  %.not66 = icmp eq i64 %.053.ph, 0
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.055 = phi i64 [ %.055.ph, %.outer ], [ %.055.be, %.backedge ] ; 10 uses
  %.052 = phi ptr [ %.052.ph, %.outer ], [ %.052.be, %.backedge ] ; 5 uses
  %i.c = getelementptr i8, ptr %.052, i64 1       ; 6 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15    ; 2 uses
  switch i8 %i.d, label %bb.m [
    i8 0, label %.thread
    i8 39, label %bb.c
    i8 44, label %.thread
    i8 92, label %bb.l
    i8 34, label %bb.p
  ]

end_hunk_1
begin_hunk_2_@parse_ident:bb.a
  %i.cz = getelementptr i8, ptr %i.cv, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !15
  %i.da = load i32, ptr %i.a, align 8, !tbaa !67  ; 5 uses
  %i.db = and i32 %i.da, 1032
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = icmp ne i32 %2, 0                       ; 2 uses
  %or.cond3 = or i1 %i.dd, %i.dc
  %i.de = and i32 %i.da, 48
  %.not162 = icmp eq i32 %i.de, 0
  %or.cond = and i1 %.not162, %or.cond3
  br i1 %or.cond, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %tokadd.exit
  %i.df = load ptr, ptr %i.f, align 8, !tbaa !188 ; 4 uses
  %i.dg = load ptr, ptr %i.g, align 8, !tbaa !426 ; 3 uses
  %.not163 = icmp ult ptr %i.df, %i.dg
  br i1 %.not163, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !15
  %i.di = icmp eq i8 %i.dh, 58
  br i1 %i.di, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr i8, ptr %i.df, i64 1      ; 2 uses
  %.not164 = icmp ult ptr %i.dj, %i.dg
  br i1 %.not164, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !15
  %i.dl = icmp eq i8 %i.dk, 58
  br i1 %i.dl, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = load i32, ptr %i.h, align 8
  %i.dn = and i32 %i.dm, 32
  %.not.i194 = icmp eq i32 %i.dn, 0
  br i1 %.not.i194, label %parser_set_lex_state.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.da, i32 noundef 2064, i32 noundef 10371) ; 0 uses
  %.pre258 = load ptr, ptr %i.f, align 8, !tbaa !188
  %.pre259 = load ptr, ptr %i.g, align 8, !tbaa !426
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.ac, %bb.ad
  %i.dp = phi ptr [ %i.dg, %bb.ac ], [ %.pre259, %bb.ad ]
  %i.dq = phi ptr [ %i.df, %bb.ac ], [ %.pre258, %bb.ad ] ; 2 uses
  store i32 2064, ptr %i.a, align 8, !tbaa !67
  %.not.i195 = icmp ult ptr %i.dq, %i.dp
  br i1 %.not.i195, label %bb.ae, label %.critedge.i196, !prof !527

bb.ae:                                            ; preds = %parser_set_lex_state.exit
  %i.dr = load i32, ptr %i.h, align 8
  %i.ds = and i32 %i.dr, 8
  %.not13.i202 = icmp eq i32 %i.ds, 0
  br i1 %.not13.i202, label %bb.af, label %.critedge.i196, !prof !527

bb.af:                                            ; preds = %bb.ae
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !528
  %i.du = icmp ugt ptr %i.dt, inttoptr (i64 1 to ptr)
  br i1 %i.du, label %.critedge.i196, label %bb.ag, !prof !205

.critedge.i196:                                   ; preds = %bb.af, %bb.ae, %parser_set_lex_state.exit
  %i.dv = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i197 = icmp eq i32 %i.dv, 0
  br i1 %.not14.i197, label %.critedge._crit_edge.i199, label %nextc0.exit203

.critedge._crit_edge.i199:                        ; preds = %.critedge.i196
  %.pre.i200 = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge._crit_edge.i199, %bb.af
  %i.dw = phi ptr [ %.pre.i200, %.critedge._crit_edge.i199 ], [ %i.dq, %bb.af ] ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 1      ; 3 uses
  store ptr %i.dx, ptr %i.f, align 8, !tbaa !188
  %i.dy = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.dz = icmp eq i8 %i.dy, 13
  br i1 %i.dz, label %bb.ah, label %nextc0.exit203, !prof !205

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not.i.i201 = icmp ult ptr %i.dx, %i.ea
  br i1 %.not.i.i201, label %bb.ai, label %nextc0.exit203

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load i8, ptr %i.dx, align 1, !tbaa !15
  %i.ec = icmp eq i8 %i.eb, 10
  br i1 %i.ec, label %bb.aj, label %nextc0.exit203

bb.aj:                                            ; preds = %bb.ai
  %i.ed = getelementptr i8, ptr %i.dw, i64 2
  store ptr %i.ed, ptr %i.f, align 8, !tbaa !188
  br label %nextc0.exit203

nextc0.exit203:                                   ; preds = %.critedge.i196, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.ee = load ptr, ptr %i.cu, align 8, !tbaa !500
  %i.ef = load i32, ptr %i.cw, align 8, !tbaa !570
  %i.eg = sext i32 %i.ef to i64
  %i.eh = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.ei = tail call i64 @rb_intern3(ptr noundef %i.ee, i64 noundef %i.eg, ptr noundef %i.eh) #31
  %i.ej = load ptr, ptr %0, align 8, !tbaa !62
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !15
  br label %.thread240

bb.ak:                                            ; preds = %tokadd.exit, %bb.y, %bb.z, %bb.ab
  %i.ek = getelementptr i8, ptr %0, i64 384
  %.val188 = load ptr, ptr %i.ek, align 8, !tbaa !423 ; 2 uses
  %.not165 = icmp eq ptr %.val188, null
  br i1 %.not165, label %reserved_word.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr i8, ptr %0, i64 96
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !49
  %i.en = getelementptr i8, ptr %0, i64 72
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !50
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.er to i32                  ; 2 uses
  %i.et = load ptr, ptr %.val188, align 8, !tbaa !420 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !520 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.et, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !521 ; 2 uses
  %i.ex = load i32, ptr %i.h, align 8
  %i.ey = and i32 %i.ex, 32
  %.not166 = icmp eq i32 %i.ey, 0
  br i1 %.not166, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr i8, ptr %0, i64 196
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !29
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.861, i32 noundef %i.fa, i32 noundef %i.es, i32 noundef %i.eu, i32 noundef %i.ew)
  %.pr.pre.pre263.pre = load i32, ptr %i.a, align 8, !tbaa !67
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pr.pre.pre263 = phi i32 [ %.pr.pre.pre263.pre, %bb.am ], [ %i.da, %bb.al ] ; 8 uses
  %i.fb = getelementptr i8, ptr %0, i64 196
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !29
  %i.fd = icmp sle i32 %i.fc, %i.eu
  %.not167 = icmp slt i32 %i.ew, %i.es
  %or.cond184 = select i1 %i.fd, i1 true, i1 %.not167
  %i.fe = and i32 %.pr.pre.pre263, 256
  %.not168 = icmp eq i32 %i.fe, 0
  %or.cond286 = select i1 %or.cond184, i1 true, i1 %.not168
  br i1 %or.cond286, label %reserved_word.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ff = load ptr, ptr %i.cu, align 8, !tbaa !500 ; 4 uses
  %i.fg = load i32, ptr %i.cw, align 8, !tbaa !570 ; 3 uses
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = add nsw i64 %i.fh, -2
  %or.cond.i = icmp ult i64 %i.fi, 11
  br i1 %or.cond.i, label %bb.ap, label %reserved_word.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %switch.i.i = icmp ult i32 %i.fg, 3
  br i1 %switch.i.i, label %hash.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = getelementptr i8, ptr %i.ff, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr i8, ptr @hash.asso_values, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !15
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nuw nsw i32 %i.fg, %i.fo
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi i32 [ %i.fp, %bb.aq ], [ 2, %bb.ap ]
  %i.fq = load i8, ptr %i.ff, align 1, !tbaa !15  ; 2 uses
  %i.fr = zext i8 %i.fq to i64
  %i.fs = getelementptr i8, ptr @hash.asso_values, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !15
  %i.fu = zext i8 %i.ft to i32
  %i.fv = add nuw nsw i32 %.0.i.i, %i.fu
  %i.fw = getelementptr i8, ptr %i.ff, i64 %i.fh
  %i.fx = getelementptr i8, ptr %i.fw, i64 -1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !15
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr i8, ptr @hash.asso_values, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !15
  %i.gc = zext i8 %i.gb to i32
  %i.gd = add nuw nsw i32 %i.fv, %i.gc            ; 3 uses
  %i.ge = icmp samesign ult i32 %i.gd, 51
  br i1 %i.ge, label %bb.ar, label %reserved_word.exit.thread

bb.ar:                                            ; preds = %hash.exit.i
  %i.gf = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gg = shl nuw nsw i64 1, %i.gf
  %i.gh = and i64 %i.gg, 1407374883553024
  %.not.i204 = icmp eq i64 %i.gh, 0
  br i1 %.not.i204, label %reserved_word.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gi = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.gf
  %i.gj = load i16, ptr %i.gi, align 8, !tbaa !493
  %i.gk = sext i16 %i.gj to i64
  %3 = and i64 %i.gk, 4294967295
  %i.gl = getelementptr i8, ptr @stringpool_contents, i64 %3 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = icmp eq i8 %i.fq, %i.gm
  br i1 %i.gn, label %bb.at, label %reserved_word.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.go = getelementptr i8, ptr %i.ff, i64 1
  %i.gp = getelementptr i8, ptr %i.gl, i64 1
  %i.gq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.go, ptr noundef nonnull dereferenceable(1) %i.gp) #35
  %.not24.i.not = icmp eq i32 %i.gq, 0
  %i.gr = icmp eq i32 %i.gd, 12
  %or.cond249 = and i1 %i.gr, %.not24.i.not
  br i1 %or.cond249, label %bb.au, label %reserved_word.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.gs = load i32, ptr %i.h, align 8
  %i.gt = and i32 %i.gs, 32
  %.not170 = icmp eq i32 %i.gt, 0
  br i1 %.not170, label %reserved_word.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.862)
  %.pr.pre.pre = load i32, ptr %i.a, align 8, !tbaa !67
  br label %reserved_word.exit.thread

reserved_word.exit.thread:                        ; preds = %hash.exit.i, %bb.ar, %bb.as, %bb.at, %bb.ao, %bb.an, %bb.au, %bb.av, %bb.ak
  %.pr.pre = phi i32 [ %i.da, %bb.ak ], [ %.pr.pre.pre263, %bb.an ], [ %.pr.pre.pre263, %bb.as ], [ %.pr.pre.pre263, %bb.ar ], [ %.pr.pre.pre263, %hash.exit.i ], [ %.pr.pre.pre, %bb.av ], [ %.pr.pre.pre263, %bb.au ], [ %.pr.pre.pre263, %bb.ao ], [ %.pr.pre.pre263, %bb.at ] ; 11 uses
  %.2139 = phi i1 [ false, %bb.ak ], [ false, %bb.an ], [ false, %bb.as ], [ false, %bb.ar ], [ false, %hash.exit.i ], [ true, %bb.av ], [ true, %bb.au ], [ false, %bb.ao ], [ false, %bb.at ]
  br i1 %spec.select254, label %bb.aw, label %thread-pre-split

bb.aw:                                            ; preds = %reserved_word.exit.thread
  %i.gu = and i32 %.pr.pre, 256
  %i.gv = icmp eq i32 %i.gu, 0
  %or.cond7 = or i1 %.2139, %i.gv
  br i1 %or.cond7, label %bb.ax, label %thread-pre-split

bb.ax:                                            ; preds = %bb.aw
  %i.gw = load ptr, ptr %i.cu, align 8, !tbaa !500 ; 5 uses
  %i.gx = load i32, ptr %i.cw, align 8, !tbaa !570 ; 3 uses
  %i.gy = sext i32 %i.gx to i64                   ; 3 uses
  %i.gz = add nsw i64 %i.gy, -2
  %or.cond.i205 = icmp ult i64 %i.gz, 11
  br i1 %or.cond.i205, label %bb.ay, label %thread-pre-split

bb.ay:                                            ; preds = %bb.ax
  %switch.i.i207 = icmp ult i32 %i.gx, 3
  br i1 %switch.i.i207, label %hash.exit.i208, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ha = getelementptr i8, ptr %i.gw, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !15
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr i8, ptr @hash.asso_values, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !15
  %i.hf = zext i8 %i.he to i32
  %i.hg = add nuw nsw i32 %i.gx, %i.hf
  br label %hash.exit.i208

hash.exit.i208:                                   ; preds = %bb.az, %bb.ay
  %.0.i.i209 = phi i32 [ %i.hg, %bb.az ], [ 2, %bb.ay ]
  %i.hh = load i8, ptr %i.gw, align 1, !tbaa !15  ; 2 uses
  %i.hi = zext i8 %i.hh to i64
  %i.hj = getelementptr i8, ptr @hash.asso_values, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !15
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nuw nsw i32 %.0.i.i209, %i.hl
  %i.hn = getelementptr i8, ptr %i.gw, i64 %i.gy
  %i.ho = getelementptr i8, ptr %i.hn, i64 -1
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !15
  %i.hq = zext i8 %i.hp to i64
  %i.hr = getelementptr i8, ptr @hash.asso_values, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nuw nsw i32 %i.hm, %i.ht            ; 3 uses
  %i.hv = icmp samesign ult i32 %i.hu, 51
  br i1 %i.hv, label %bb.ba, label %thread-pre-split

bb.ba:                                            ; preds = %hash.exit.i208
  %i.hw = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hx = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.hw ; 5 uses
  %i.hy = shl nuw nsw i64 1, %i.hw                ; 2 uses
  %i.hz = and i64 %i.hy, 1407374883553024
  %.not.i211 = icmp eq i64 %i.hz, 0
  br i1 %.not.i211, label %thread-pre-split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ia = load i16, ptr %i.hx, align 8, !tbaa !493
  %i.ib = sext i16 %i.ia to i64
  %4 = and i64 %i.ib, 4294967295
  %i.ic = getelementptr i8, ptr @stringpool_contents, i64 %4 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !15
  %i.ie = icmp eq i8 %i.hh, %i.id
  br i1 %i.ie, label %bb.bc, label %thread-pre-split

bb.bc:                                            ; preds = %bb.bb
  %i.if = getelementptr i8, ptr %i.gw, i64 1
  %i.ig = getelementptr i8, ptr %i.ic, i64 1
  %i.ih = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.if, ptr noundef nonnull dereferenceable(1) %i.ig) #35
  %.not24.i212.not = icmp eq i32 %i.ih, 0
  br i1 %.not24.i212.not, label %bb.bd, label %thread-pre-split

bb.bd:                                            ; preds = %bb.bc
  %i.ii = and i32 %.pr.pre, 128
  %.not172 = icmp eq i32 %i.ii, 0
  br i1 %.not172, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ij = load i32, ptr %i.h, align 8
  %i.ik = and i32 %i.ij, 32
  %.not.i214 = icmp eq i32 %i.ik, 0
  br i1 %.not.i214, label %parser_set_lex_state.exit215, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.il = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 8, i32 noundef 10412) ; 0 uses
  %.pre260 = load ptr, ptr %i.cu, align 8, !tbaa !500
  %.pre261 = load i32, ptr %i.cw, align 8, !tbaa !570
  %.pre266 = sext i32 %.pre261 to i64
  br label %parser_set_lex_state.exit215

parser_set_lex_state.exit215:                     ; preds = %bb.be, %bb.bf
  %.pre-phi = phi i64 [ %i.gy, %bb.be ], [ %.pre266, %bb.bf ]
  %i.im = phi ptr [ %i.gw, %bb.be ], [ %.pre260, %bb.bf ]
  store i32 8, ptr %i.a, align 8, !tbaa !67
  %i.in = tail call i64 @rb_intern2(ptr noundef %i.im, i64 noundef %.pre-phi) #31
  %i.io = load ptr, ptr %0, align 8, !tbaa !62
  store i64 %i.in, ptr %i.io, align 8, !tbaa !15
  %i.ip = getelementptr i8, ptr %i.hx, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !58
  %i.ir = sext i16 %i.iq to i32
  br label %.thread240

bb.bg:                                            ; preds = %bb.bd
  %i.is = getelementptr i8, ptr %i.hx, i64 6
  %i.it = load i16, ptr %i.is, align 2, !tbaa !618
  %i.iu = sext i16 %i.it to i32                   ; 3 uses
  %i.iv = load i32, ptr %i.h, align 8
  %i.iw = and i32 %i.iv, 32
  %.not.i216 = icmp eq i32 %i.iw, 0
  br i1 %.not.i216, label %parser_set_lex_state.exit217, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ix = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef %i.iu, i32 noundef 10416) ; 0 uses
  br label %parser_set_lex_state.exit217

parser_set_lex_state.exit217:                     ; preds = %bb.bg, %bb.bh
  store i32 %i.iu, ptr %i.a, align 8, !tbaa !67
  %i.iy = and i64 %i.hy, 1125045557384703
  %.not173.not = icmp eq i64 %i.iy, 0
  br i1 %.not173.not, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %parser_set_lex_state.exit217
  %i.iz = load i32, ptr %i.h, align 8
  %i.ja = or i32 %i.iz, 4
  store i32 %i.ja, ptr %i.h, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %parser_set_lex_state.exit217
  %i.jb = getelementptr i8, ptr %i.hx, i64 2
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !58 ; 2 uses
  %i.jd = icmp eq i32 %i.hu, 25
  br i1 %i.jd, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.je = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !164
  %i.jg = getelementptr i8, ptr %0, i64 108
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !181
  %i.ji = icmp eq i32 %i.jf, %i.jh
  br i1 %i.ji, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 -1, ptr %i.je, align 8, !tbaa !164
  br label %.thread240

bb.bm:                                            ; preds = %bb.bk
  %i.jj = load i32, ptr %i.h, align 8
  %i.jk = and i32 %i.jj, 32
  %.not176 = icmp eq i32 %i.jk, 0
  br i1 %.not176, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jl = getelementptr i8, ptr %0, i64 120
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !111
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.jm, ptr noundef nonnull @.str.863, i32 noundef 10425)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.jn = getelementptr i8, ptr %0, i64 120
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !111
  %i.jp = and i64 %i.jo, 1
  %.not177 = icmp eq i64 %i.jp, 0
  br i1 %.not177, label %bb.bp, label %.thread240

bb.bp:                                            ; preds = %bb.bo
  %i.jq = load i32, ptr %i.h, align 8
  %i.jr = and i32 %i.jq, 32
  %.not178 = icmp eq i32 %i.jr, 0
  br i1 %.not178, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.js = getelementptr i8, ptr %0, i64 128
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !121
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.jt, ptr noundef nonnull @.str.864, i32 noundef 10426)
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.ju = getelementptr i8, ptr %0, i64 128
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !121
  %.not179 = trunc i64 %i.jv to i1
  %i.jw = and i32 %.pr.pre, 32
  %.not180 = icmp eq i32 %i.jw, 0
  %or.cond185 = and i1 %.not180, %.not179
  %spec.select187 = select i1 %or.cond185, i32 283, i32 281
  br label %.thread240

bb.bs:                                            ; preds = %bb.bj
  %i.jx = sext i16 %i.jc to i32
  %i.jy = and i32 %.pr.pre, 2561
  %.not174 = icmp eq i32 %i.jy, 0
  br i1 %.not174, label %bb.bt, label %.thread240

bb.bt:                                            ; preds = %bb.bs
  %i.jz = getelementptr i8, ptr %i.hx, i64 4
  %i.ka = load i16, ptr %i.jz, align 4, !tbaa !58 ; 2 uses
  %.not175 = icmp eq i16 %i.jc, %i.ka
  br i1 %.not175, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kb = load i32, ptr %i.h, align 8
  %i.kc = and i32 %i.kb, 32
  %.not.i218 = icmp eq i32 %i.kc, 0
  br i1 %.not.i218, label %parser_set_lex_state.exit219, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kd = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.iu, i32 noundef 1025, i32 noundef 10434) ; 0 uses
  br label %parser_set_lex_state.exit219

parser_set_lex_state.exit219:                     ; preds = %bb.bu, %bb.bv
  store i32 1025, ptr %i.a, align 8, !tbaa !67
  br label %bb.bw

bb.bw:                                            ; preds = %parser_set_lex_state.exit219, %bb.bt
  %i.ke = sext i16 %i.ka to i32
  br label %.thread240

thread-pre-split:                                 ; preds = %reserved_word.exit.thread, %bb.ax, %bb.bc, %bb.bb, %bb.ba, %hash.exit.i208, %bb.aw
  %i.kf = and i32 %.pr.pre, 881
  %.not181 = icmp eq i32 %i.kf, 0
  br i1 %.not181, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %thread-pre-split
  %i.kg = load i32, ptr %i.h, align 8
  %i.kh = and i32 %i.kg, 32
  %.not.i220 = icmp eq i32 %i.kh, 0               ; 2 uses
  br i1 %i.dd, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  br i1 %.not.i220, label %parser_set_lex_state.exit221, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ki = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 32, i32 noundef 10442) ; 0 uses
  br label %parser_set_lex_state.exit221

bb.ca:                                            ; preds = %bb.bx
  br i1 %.not.i220, label %parser_set_lex_state.exit221, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kj = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 16, i32 noundef 10445) ; 0 uses
  br label %parser_set_lex_state.exit221

bb.cc:                                            ; preds = %thread-pre-split
  %i.kk = icmp eq i32 %.pr.pre, 128
  %i.kl = load i32, ptr %i.h, align 8
  %i.km = and i32 %i.kl, 32
  %.not.i224 = icmp eq i32 %i.km, 0               ; 2 uses
  br i1 %i.kk, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  br i1 %.not.i224, label %parser_set_lex_state.exit221, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kn = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef 128, i32 noundef 8, i32 noundef 10449) ; 0 uses
  br label %parser_set_lex_state.exit221

bb.cf:                                            ; preds = %bb.cc
  br i1 %.not.i224, label %parser_set_lex_state.exit221, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ko = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pr.pre, i32 noundef 2, i32 noundef 10452) ; 0 uses
  br label %parser_set_lex_state.exit221
end_hunk_2
