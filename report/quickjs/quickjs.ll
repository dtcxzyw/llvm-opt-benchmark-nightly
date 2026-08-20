inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@js_parse_directives:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ac = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not16 = icmp eq i32 %i.ac, 0
  br i1 %.not16, label %.critedge19, label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.ad = load i8, ptr %i.n, align 8, !tbaa !1928, !range !58, !noundef !59
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.critedge19, label %.critedge

.critedge19:                                      ; preds = %bb.d, %bb.c, %bb.c, %bb.e
  %i.af = load i64, ptr %i.a, align 16
  %i.ag = xor i64 %i.af, 7598263559141028725
  %i.ah = getelementptr i8, ptr %i.a, i64 3
  %i.ai = load i64, ptr %i.ah, align 1
  %i.aj = xor i64 %i.ai, 32760401841386272
  %i.ak = or i64 %i.ag, %i.aj
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %.not17 = icmp eq i32 %i.am, 0
  br i1 %.not17, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge19
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !844
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 60 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 4
  %i.aq = or i64 %i.ap, 128
  store i64 %i.aq, ptr %i.ao, align 4
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !844
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 60 ; 2 uses
  %i.at = load i64, ptr %i.as, align 4
  %i.au = or i64 %i.at, 549755813888
  store i64 %i.au, ptr %i.as, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge19
  %i.av = load i32, ptr %i.b, align 8, !tbaa !1092
  %i.aw = icmp eq i32 %i.av, -127
  br i1 %i.aw, label %bb.b, label %.critedge, !llvm.loop !1929

.critedge:                                        ; preds = %bb.g, %bb.e, %bb.c
  store <2 x i32> %i.e, ptr %i.f, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.g, ptr %i.ax, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.i, ptr %i.ay, align 8, !tbaa !1086
  store <2 x ptr> %i.k, ptr %i.j, align 8, !tbaa !255
  store ptr %i.m, ptr %i.l, align 8, !tbaa !1090
  store i8 %i.o, ptr %i.n, align 8, !tbaa !1928
  %i.az = tail call fastcc range(i32 -1, 1) i32 @next_token(ptr noundef nonnull %0)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a, %.critedge
  %.014 = phi i32 [ %i.az, %.critedge ], [ 0, %bb.a ], [ -1, %bb.b ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @add_var(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 92 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1870 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 65534
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.513, i32 noundef 65534) ; 0 uses
  br label %update_var_htab.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %.not23 = icmp slt i32 %i.b, %i.g
  br i1 %.not23, label %js_resize_array.exit.thread, label %js_resize_array.exit, !prof !195

js_resize_array.exit:                             ; preds = %bb.c
  %i.h = add nsw i32 %i.b, 1
  %i.i = tail call fastcc i32 @js_realloc_array(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 20, ptr noundef nonnull %i.f, i32 noundef %i.h), !inline_history !854
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, label %update_var_htab.exit

js_resize_array.exit.js_resize_array.exit.thread_crit_edge: ; preds = %js_resize_array.exit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !1870
  br label %js_resize_array.exit.thread

js_resize_array.exit.thread:                      ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, %bb.c
  %i.j = phi i32 [ %.pre, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !1871
  %i.l = add nsw i32 %i.j, 1
  store i32 %i.l, ptr %i.a, align 4, !tbaa !1870
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [20 x i8], ptr %i.k, i64 %i.m ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  %i.o = icmp slt i32 %2, 242
  br i1 %i.o, label %JS_DupAtom.exit, label %bb.d

bb.d:                                             ; preds = %js_resize_array.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !154
  %i.t = zext nneg i32 %2 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !155
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !8
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %js_resize_array.exit.thread, %bb.d
  store i32 %2, ptr %i.n, align 4, !tbaa !723
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 -1, ptr %i.z, align 4, !tbaa !1930
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !1870 ; 5 uses
  %i.ab = icmp slt i32 %i.aa, 27
  br i1 %i.ab, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %JS_DupAtom.exit
  %i.ac = udiv i32 %i.aa, 5
  %i.ad = add nuw nsw i32 %i.ac, %i.aa            ; 3 uses
  %i.ae = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.ad)
  %.not.i = icmp samesign ult i32 %i.ae, 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1873 ; 2 uses
  br i1 %.not.i, label %bb.f, label %._crit_edge50.i

._crit_edge50.i:                                  ; preds = %bb.e
  %i.ah = add nsw i32 %i.aa, -1
  %i.ai = zext nneg i32 %i.ah to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = shl nuw i32 %i.ad, 1                    ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 2                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ao = tail call ptr @js_realloc_rt(ptr noundef %i.an, ptr noundef %i.ag, i64 noundef %i.al), !inline_history !346 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.g, label %js_realloc.exit.preheader.i, !prof !9

js_realloc.exit.preheader.i:                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ao, i8 -1, i64 %i.al, i1 false), !tbaa !8
  store ptr %i.ao, ptr %i.af, align 8, !tbaa !1873
  %i.ap = add i32 %i.aj, -1
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1256 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !57, !range !58, !noundef !59
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %update_var_htab.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.ar, align 8, !tbaa !57
  %i.au = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1464 ; 0 uses
  store i8 0, ptr %i.ar, align 8, !tbaa !57
  br label %update_var_htab.exit

bb.i:                                             ; preds = %js_realloc.exit.preheader.i, %._crit_edge50.i
  %i.av = phi ptr [ %i.ag, %._crit_edge50.i ], [ %i.ao, %js_realloc.exit.preheader.i ] ; 3 uses
  %.033.i = phi i64 [ %i.ai, %._crit_edge50.i ], [ 0, %js_realloc.exit.preheader.i ]
  %.0.i18 = phi i32 [ %i.ad, %._crit_edge50.i ], [ %i.ap, %js_realloc.exit.preheader.i ]
  %i.aw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.0.i18, i1 true)
  %i.ax = lshr i32 -1, %i.aw                      ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !1871
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.i ], [ %.033.i, %bb.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [20 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !723
  %i.bb = mul i32 %i.ba, 1640531527               ; 2 uses
  %i.bc = and i32 %i.bb, %i.ax
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.03447.i = phi i32 [ %i.bi, %.lr.ph.i ], [ 1, %bb.j ] ; 2 uses
  %.13646.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bb, %bb.j ]
  %i.bh = add i32 %.13646.i, %.03447.i            ; 2 uses
  %i.bi = add i32 %.03447.i, 1
  %i.bj = and i32 %i.bh, %i.ax
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.lcssa45.i = phi i64 [ %i.bd, %bb.j ], [ %i.bk, %.lr.ph.i ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.lcssa45.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.i = trunc i64 %indvars.iv.next to i32
  %i.bp = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !8
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !1870 ; 2 uses
  %3 = icmp ugt i32 %i.bq, %indvars.i
  br i1 %3, label %bb.j, label %.loopexit, !llvm.loop !1931

.loopexit:                                        ; preds = %._crit_edge.i, %JS_DupAtom.exit
  %i.br = phi i32 [ %i.aa, %JS_DupAtom.exit ], [ %i.bq, %._crit_edge.i ]
  %i.bs = add nsw i32 %i.br, -1
  br label %update_var_htab.exit

update_var_htab.exit:                             ; preds = %bb.h, %bb.g, %js_resize_array.exit, %.loopexit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.bs, %.loopexit ], [ -1, %js_resize_array.exit ], [ -1, %bb.g ], [ -1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_parse_source_element(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %1 = alloca %struct.JSValue, align 8            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !844  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 21 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1092 ; 2 uses
  switch i32 %i.e, label %token_is_pseudo_keyword.exit.thread [
    i32 -59, label %bb.d
    i32 -125, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = icmp eq i32 %i.g, 143
  br i1 %i.h, label %token_is_pseudo_keyword.exit, label %.thread

token_is_pseudo_keyword.exit:                     ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.j = load i8, ptr %i.i, align 4, !tbaa !35, !range !58, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread, label %bb.c

bb.c:                                             ; preds = %token_is_pseudo_keyword.exit
  %i.l = getelementptr i8, ptr %0, i64 120
  %.val23 = load ptr, ptr %i.l, align 8, !tbaa !1086
  %i.m = tail call fastcc i32 @peek_token(ptr %.val23, i1 noundef zeroext true)
  %i.n = icmp eq i32 %i.m, -59
  br i1 %i.n, label %bb.d, label %.token_is_pseudo_keyword.exit.threadthread-pre-split_crit_edge

.token_is_pseudo_keyword.exit.threadthread-pre-split_crit_edge: ; preds = %bb.c
  %.pr.pre = load i32, ptr %i.d, align 8, !tbaa !1092
  br label %token_is_pseudo_keyword.exit.thread

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !846
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !849
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !845
  %i.u = tail call fastcc range(i32 -1, 1) i32 @js_parse_function_decl2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.p, i32 noundef %i.r, i32 noundef %i.t, i32 noundef 0, ptr noundef null)
  %.not22 = icmp eq i32 %i.u, 0
  br i1 %.not22, label %js_parse_import.exit.thread39, label %js_parse_export.exit.thread

token_is_pseudo_keyword.exit.thread:              ; preds = %.token_is_pseudo_keyword.exit.threadthread-pre-split_crit_edge, %bb.a
  %i.v = phi i32 [ %i.e, %bb.a ], [ %.pr.pre, %.token_is_pseudo_keyword.exit.threadthread-pre-split_crit_edge ]
  switch i32 %i.v, label %.thread [
    i32 -53, label %bb.e
    i32 -51, label %bb.bl
  ]

bb.e:                                             ; preds = %token_is_pseudo_keyword.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1188
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %0, align 8, !tbaa !838    ; 11 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !844
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 520
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1188 ; 9 uses
  %i.ac = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !1932
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %js_parse_export.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !1092 ; 3 uses
  switch i32 %i.ad, label %token_is_pseudo_keyword.exit33.thread [
    i32 -56, label %bb.h
    i32 -59, label %bb.k
    i32 -125, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call fastcc i32 @js_parse_class(ptr noundef nonnull %0, i1 noundef zeroext false, i32 noundef 1), !inline_history !1932
  br label %js_parse_export.exit

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35
  %i.ah = icmp eq i32 %i.ag, 143
  br i1 %i.ah, label %token_is_pseudo_keyword.exit33, label %token_is_pseudo_keyword.exit33.thread

token_is_pseudo_keyword.exit33:                   ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !35, !range !58, !noundef !59
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %token_is_pseudo_keyword.exit33.thread, label %bb.j

bb.j:                                             ; preds = %token_is_pseudo_keyword.exit33
  %i.al = getelementptr i8, ptr %0, i64 120
  %.val169.i = load ptr, ptr %i.al, align 8, !tbaa !1086
  %i.am = tail call fastcc i32 @peek_token(ptr %.val169.i, i1 noundef zeroext true), !inline_history !1932
  %i.an = icmp eq i32 %i.am, -59
  br i1 %i.an, label %bb.k, label %token_is_pseudo_keyword.exit33.thread

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !846
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !849
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load i32, ptr %i.as, align 8, !tbaa !845
  %i.au = tail call fastcc i32 @js_parse_function_decl2(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at, i32 noundef 1, ptr noundef null)
  br label %js_parse_export.exit

token_is_pseudo_keyword.exit33.thread:            ; preds = %bb.g, %bb.i, %bb.j, %token_is_pseudo_keyword.exit33
  %i.av = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !1932
  %.not151.i = icmp eq i32 %i.av, 0
  br i1 %.not151.i, label %bb.l, label %js_parse_export.exit.thread

bb.l:                                             ; preds = %token_is_pseudo_keyword.exit33.thread
  switch i32 %i.ad, label %bb.bk [
    i32 123, label %bb.m
    i32 42, label %bb.ap
    i32 -64, label %bb.bc
    i32 -79, label %bb.bj
    i32 -46, label %bb.bj
    i32 -55, label %bb.bj
    i32 -49, label %bb.bj
  ]

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !222 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.ai, %bb.m
  %.0.i = phi i1 [ false, %bb.m ], [ %.1.i, %bb.ai ] ; 3 uses
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !1092 ; 4 uses
  %.not157.i = icmp eq i32 %i.bc, 125
  br i1 %.not157.i, label %bb.aj, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = icmp eq i32 %i.bc, -125
  %i.be = add i32 %i.bc, 85
  %i.bf = icmp ult i32 %i.be, 47
  %i.bg = or i1 %i.bd, %i.bf
  br i1 %i.bg, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %i.ay, align 8, !tbaa !35 ; 4 uses
  %i.bi = icmp slt i32 %i.bh, 242
  br i1 %i.bi, label %JS_DupAtom.exit32, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !154
  %i.bm = zext nneg i32 %i.bh to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !155
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !8
  br label %JS_DupAtom.exit32

bb.r:                                             ; preds = %bb.o
  %i.bs = icmp eq i32 %i.bc, -127
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = load i64, ptr %i.ay, align 8
  %i.bu = load i64, ptr %i.az, align 8
  %i.bv = tail call fastcc i32 @JS_ValueToAtomInternal(ptr noundef %i.y, i64 %i.bt, i64 %i.bu, i32 noundef 0), !inline_history !1933 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %js_parse_export.exit.thread, label %JS_DupAtom.exit32

bb.t:                                             ; preds = %bb.r
  %i.bx = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.585), !inline_history !1932 ; 0 uses
  br label %js_parse_export.exit.thread

JS_DupAtom.exit32:                                ; preds = %bb.q, %bb.p, %bb.s
  %.0134.i = phi i32 [ %i.bv, %bb.s ], [ %i.bh, %bb.p ], [ %i.bh, %bb.q ] ; 7 uses
  %.1.i = phi i1 [ true, %bb.s ], [ %.0.i, %bb.p ], [ %.0.i, %bb.q ] ; 2 uses
  %i.by = tail call fastcc i32 @next_token(ptr noundef nonnull %0), !inline_history !1932
  %.not158.i = icmp eq i32 %i.by, 0
  br i1 %.not158.i, label %bb.u, label %.loopexit43

end_hunk_0
