inline.NumInlined: 174
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@repo_format_commit_message:bb.a
  %i.dm = add i32 %.pre.i.i, %i.dl
  %i.dn = sext i32 %i.dm to i64
  call void @strbuf_addchars(ptr noundef nonnull %3, i32 noundef 32, i64 noundef %i.dn) #19
  %i.do = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.0.i.i
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.ds = load i64, ptr %i.p, align 8, !tbaa !107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dq, ptr align 1 %i.dr, i64 %i.ds, i1 false)
  br label %format_and_pad_commit.exit.i

format_and_pad_commit.exit.i:                     ; preds = %._crit_edge161.i.i, %bb.ac
  call void @strbuf_release(ptr noundef nonnull %5) #19
  store i32 0, ptr %i.l, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ag

bb.ag:                                            ; preds = %format_and_pad_commit.exit.i, %bb.h
  %.033.i = phi i64 [ %i.aj, %bb.h ], [ %.lcssa134.i.i, %format_and_pad_commit.exit.i ] ; 2 uses
  br i1 %.not44.i, label %format_commit_item.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = load i64, ptr %i.g, align 8, !tbaa !107
  %i.du = icmp eq i64 %i.ag, %i.dt                ; 2 uses
  %or.cond.i = and i1 %i.af, %i.du
  br i1 %or.cond.i, label %.preheader.i, label %bb.ao

.preheader.i:                                     ; preds = %bb.ah
  %.not3854.i = icmp eq i64 %i.ag, 0
  br i1 %.not3854.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %strbuf_setlen.exit.i
  %i.dv = phi i64 [ %.pr.i, %strbuf_setlen.exit.i ], [ %i.ag, %.preheader.i ]
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !108 ; 2 uses
  %i.dx = add i64 %i.dv, -1                       ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ea = icmp eq i8 %i.dz, 10
  br i1 %i.ea, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %.lr.ph.i
  %i.eb = load i64, ptr %3, align 8, !tbaa !106
  %spec.select.i39.i = call i64 @llvm.usub.sat.i64(i64 %i.eb, i64 1)
  %i.ec = icmp ugt i64 %i.dx, %spec.select.i39.i
  br i1 %i.ec, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.49, i32 noundef 167, ptr noundef nonnull @.str.50) #21
  unreachable

bb.ak:                                            ; preds = %bb.ai
  store i64 %i.dx, ptr %i.g, align 8, !tbaa !107
  %.not9.i.i = icmp eq ptr %i.dw, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i8 0, ptr %i.dy, align 1, !tbaa !15
  %.pr.pre.i = load i64, ptr %i.g, align 8, !tbaa !107
  br label %strbuf_setlen.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.ed = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !15
  %.not10.i.i = icmp eq i8 %i.ed, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #21
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.am, %bb.al
  %.pr.i = phi i64 [ %.pr.pre.i, %bb.al ], [ %i.dx, %bb.am ] ; 2 uses
  %.not38.i = icmp eq i64 %.pr.i, 0
  br i1 %.not38.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !156

bb.ao:                                            ; preds = %bb.ah
  %.not58 = xor i1 %i.du, true
  %brmerge.i = or i1 %i.ad, %i.ae
  %or.cond = and i1 %brmerge.i, %.not58
  br i1 %or.cond, label %.critedge.sink.split.i, label %.critedge.i

.critedge.sink.split.i:                           ; preds = %bb.ao
  %.str.26.mux.i = select i1 %i.ae, ptr @.str.26, ptr @.str.27
  call void @strbuf_insert(ptr noundef nonnull %3, i64 noundef %i.ag, ptr noundef nonnull %.str.26.mux.i, i64 noundef 1) #19
  br label %.critedge.i

.critedge.i:                                      ; preds = %strbuf_setlen.exit.i, %.lr.ph.i, %.critedge.sink.split.i, %bb.ao, %.preheader.i
  %i.ee = add i64 %.033.i, 1
  br label %format_commit_item.exit

format_commit_item.exit:                          ; preds = %bb.ag, %.critedge.i
  %.032.i = phi i64 [ %i.ee, %.critedge.i ], [ %.033.i, %bb.ag ] ; 2 uses
  %.not34 = icmp eq i64 %.032.i, 0
  br i1 %.not34, label %format_commit_item.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %format_commit_item.exit
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.032.i
  store ptr %i.eg, ptr %i.a, align 8, !tbaa !12
  br label %bb.aq

format_commit_item.exit.thread:                   ; preds = %bb.f, %format_commit_item.exit
  %i.eh = load i64, ptr %3, align 8, !tbaa !106   ; 2 uses
  %.not.i.i39 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i39, label %strbuf_avail.exit.thread.i44, label %strbuf_avail.exit.i40

strbuf_avail.exit.i40:                            ; preds = %format_commit_item.exit.thread
  %i.ei = load i64, ptr %i.g, align 8, !tbaa !107 ; 2 uses
  %.neg.i41 = add i64 %i.ei, 1                    ; 2 uses
  %.not.i42 = icmp eq i64 %i.eh, %.neg.i41
  br i1 %.not.i42, label %strbuf_avail.exit.thread.i44, label %strbuf_addch.exit48

strbuf_avail.exit.thread.i44:                     ; preds = %strbuf_avail.exit.i40, %format_commit_item.exit.thread
  call void @strbuf_grow(ptr noundef nonnull %3, i64 noundef 1) #19
  %.pre.i46 = load i64, ptr %i.g, align 8, !tbaa !107 ; 2 uses
  %.pre7.i47 = add i64 %.pre.i46, 1
  br label %strbuf_addch.exit48

strbuf_addch.exit48:                              ; preds = %strbuf_avail.exit.i40, %strbuf_avail.exit.thread.i44
  %.pre-phi.i43 = phi i64 [ %.pre7.i47, %strbuf_avail.exit.thread.i44 ], [ %.neg.i41, %strbuf_avail.exit.i40 ]
  %i.ej = phi i64 [ %.pre.i46, %strbuf_avail.exit.thread.i44 ], [ %i.ei, %strbuf_avail.exit.i40 ]
  %i.ek = load ptr, ptr %i.n, align 8, !tbaa !108
  store i64 %.pre-phi.i43, ptr %i.g, align 8, !tbaa !107
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ej
  store i8 37, ptr %i.el, align 1, !tbaa !15
  %i.em = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.en = load i64, ptr %i.g, align 8, !tbaa !107
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.en
  store i8 0, ptr %i.eo, align 1, !tbaa !15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %strbuf_addch.exit48, %strbuf_addch.exit
  %i.ep = call i32 @strbuf_expand_step(ptr noundef %3, ptr noundef nonnull %i.a) #19
  %.not = icmp eq i32 %i.ep, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !157

._crit_edge:                                      ; preds = %bb.aq, %bb.a
  call fastcc void @rewrap_message_tail(ptr noundef %3, ptr noundef %6, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  %.not28 = icmp eq ptr %i.j, null
  br i1 %.not28, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.eq = call i32 @same_encoding(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.j) #19
  %.not31 = icmp eq i32 %i.eq, 0
  br i1 %.not31, label %.thread54, label %.thread

bb.as:                                            ; preds = %._crit_edge
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !158 ; 2 uses
  %.not29 = icmp eq ptr %i.es, null
  br i1 %.not29, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.et = call i32 @same_encoding(ptr noundef nonnull %i.es, ptr noundef nonnull @.str.14) #19
  %.not30 = icmp ne i32 %i.et, 0
  %i.eu = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.eu, null
  %or.cond59 = select i1 %.not30, i1 true, i1 %.not32
  br i1 %or.cond59, label %.thread, label %.thread54

.thread54:                                        ; preds = %bb.at, %bb.ar
  %.057 = phi ptr [ %i.eu, %bb.at ], [ %i.j, %bb.ar ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !108
  %i.ex = load i64, ptr %i.g, align 8, !tbaa !107
  %i.ey = call ptr @reencode_string_len(ptr noundef %i.ew, i64 noundef %i.ex, ptr noundef nonnull %.057, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.b) #19 ; 2 uses
  %.not33 = icmp eq ptr %i.ey, null
  br i1 %.not33, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.thread54
  %i.ez = load i64, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.fa = add i64 %i.ez, 1
  call void @strbuf_attach(ptr noundef nonnull %3, ptr noundef nonnull %i.ey, i64 noundef %i.ez, i64 noundef %i.fa) #19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.thread54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.ar, %bb.as, %bb.av
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !158
  call void @free(ptr noundef %i.fc) #19
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !159
  call void @repo_unuse_commit_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %i.fe) #19
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @signature_check_clear(ptr noundef nonnull %i.ff) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare i32 @strbuf_expand_step(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @rewrap_message_tail(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 0, 16385) %2, i64 noundef range(i64 0, 16385) %3, i64 noundef range(i64 0, 16385) %4) unnamed_addr #1 {
bb.a:
  %5 = alloca [24 x i8], align 16                 ; 4 uses
  %6 = alloca %struct.strbuf, align 8             ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !160  ; 4 uses
  %i.c = icmp eq i64 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load i64, ptr %i.d, align 8, !tbaa !161
  %i.f = icmp eq i64 %i.e, %3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load i64, ptr %i.g, align 8, !tbaa !162
  %i.i = icmp eq i64 %i.h, %4
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !148  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !107  ; 2 uses
  %i.n = icmp ult i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.p = load i64, ptr %i.o, align 8, !tbaa !161  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.r = load i64, ptr %i.q, align 8, !tbaa !162  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.strbuf_wrap.tmp, i64 24, i1 false)
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108
  call void @strbuf_add(ptr noundef nonnull %6, ptr noundef %i.t, i64 noundef %i.k) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !108
  %i.w = icmp ugt i64 %i.p, 2147483647
  br i1 %i.w, label %bb.h, label %cast_size_t_to_int.exit.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @die(ptr noundef nonnull @.str.92, i64 noundef %i.p) #21
  unreachable

cast_size_t_to_int.exit.i:                        ; preds = %bb.g
  %i.x = icmp ugt i64 %i.r, 2147483647
  br i1 %i.x, label %bb.i, label %cast_size_t_to_int.exit8.i

bb.i:                                             ; preds = %cast_size_t_to_int.exit.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.92, i64 noundef %i.r) #21
  unreachable

cast_size_t_to_int.exit8.i:                       ; preds = %cast_size_t_to_int.exit.i
  %i.y = icmp ugt i64 %i.b, 2147483647
  br i1 %i.y, label %bb.j, label %strbuf_wrap.exit

bb.j:                                             ; preds = %cast_size_t_to_int.exit8.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.92, i64 noundef %i.b) #21
  unreachable

strbuf_wrap.exit:                                 ; preds = %cast_size_t_to_int.exit8.i
  %i.z = trunc nuw nsw i64 %i.r to i32
  %i.aa = trunc nuw nsw i64 %i.p to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.k
  %i.ac = trunc nuw nsw i64 %i.b to i32
  call void @strbuf_add_wrapped_text(ptr noundef nonnull %6, ptr noundef %i.ab, i32 noundef %i.aa, i32 noundef %i.z, i32 noundef %i.ac) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @strbuf_release(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %.pre = load i64, ptr %i.l, align 8, !tbaa !107
  br label %bb.k

bb.k:                                             ; preds = %strbuf_wrap.exit, %bb.d
  %i.ad = phi i64 [ %.pre, %strbuf_wrap.exit ], [ %i.m, %bb.d ]
  store i64 %i.ad, ptr %i.j, align 8, !tbaa !148
  store i64 %2, ptr %i.a, align 8, !tbaa !160
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %3, ptr %i.ae, align 8, !tbaa !161
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 %4, ptr %i.af, align 8, !tbaa !162
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k
  ret void
}

declare ptr @reencode_string_len(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @strbuf_attach(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @signature_check_clear(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @pp_email_subject(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.strbuf, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @strbuf_init(ptr noundef nonnull %5, i64 noundef 80) #19
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !163
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, ptr @.str.27, ptr @.str.26
  br label %.split.i

.split.i:                                         ; preds = %bb.a, %is_blank_line.exit.i
  %.not17.i = phi i1 [ true, %is_blank_line.exit.i ], [ false, %bb.a ]
  %.012.i = phi ptr [ %i.i, %is_blank_line.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.split.i
  %.06.i.i = phi i32 [ 0, %.split.i ], [ %.1.i.i, %bb.b ]
  %.05.i.i = phi ptr [ %.012.i, %.split.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 1
  %i.f = load i8, ptr %.05.i.i, align 1, !tbaa !15 ; 2 uses
  %.not.i.i = icmp ne i8 %i.f, 0
  %i.g = zext i1 %.not.i.i to i32
  %.1.i.i = add nuw nsw i32 %.06.i.i, %i.g        ; 3 uses
  switch i8 %i.f, label %bb.b [
    i8 10, label %get_one_line.exit.i
    i8 0, label %get_one_line.exit.i
  ]

get_one_line.exit.i:                              ; preds = %bb.b, %bb.b
  %i.h = zext nneg i32 %.1.i.i to i64             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 %i.h ; 2 uses
  %.not.i = icmp eq i32 %.1.i.i, 0
  br i1 %.not.i, label %format_subject.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %get_one_line.exit.i, %bb.c
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ %i.h, %get_one_line.exit.i ] ; 4 uses
  %i.j = getelementptr i8, ptr %.012.i, i64 %indvars.iv.i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !15
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !15
  %i.p = and i8 %i.o, 1
  %.not7.i.i = icmp eq i8 %i.p, 0
  br i1 %.not7.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %.not.i18.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i18.i, label %format_subject.exit, label %.lr.ph.i.i, !llvm.loop !120

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = shl i64 %indvars.iv.i.i, 32
  %sext.i = add i64 %i.q, 8589934592
  %i.r = ashr exact i64 %sext.i, 32
  call void @strbuf_grow(ptr noundef nonnull %5, i64 noundef %i.r) #19
  br i1 %.not17.i, label %bb.e, label %is_blank_line.exit.i

bb.e:                                             ; preds = %bb.d
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.d, i64 noundef 1) #19
  br label %is_blank_line.exit.i

is_blank_line.exit.i:                             ; preds = %bb.e, %bb.d
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %.012.i, i64 noundef %indvars.iv.i.i) #19
  br label %.split.i

format_subject.exit:                              ; preds = %get_one_line.exit.i, %bb.c
  store ptr %i.i, ptr %1, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !107
  %i.u = add i64 %i.t, 1024
  call void @strbuf_grow(ptr noundef %2, i64 noundef %i.u) #19
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103
  call void @fmt_output_email_subject(ptr noundef %2, ptr noundef %i.w) #19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load i8, ptr %i.x, align 8
  %.not43 = trunc i8 %i.y to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !108 ; 4 uses
  %.pre99 = load i64, ptr %i.s, align 8, !tbaa !107 ; 3 uses
  %.pre100 = trunc i64 %.pre99 to i32             ; 2 uses
  %i.z = icmp sgt i32 %.pre100, 0
  %or.cond = select i1 %.not43, i1 %i.z, i1 false
  br i1 %or.cond, label %.lr.ph.preheader.i, label %needs_rfc2047_encoding.exit

.lr.ph.preheader.i:                               ; preds = %format_subject.exit
  %i.aa = and i64 %.pre99, 2147483647             ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  %.fr.i = freeze i8 %i.ac                        ; 3 uses
  %i.ad = icmp slt i8 %.fr.i, 0
  br i1 %i.ad, label %bb.h, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph.i
  switch i8 %.fr.i, label %bb.f [
    i8 27, label %bb.h
    i8 10, label %bb.h
  ]

bb.f:                                             ; preds = %switch.early.test.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next.i, %i.aa
  %i.af = icmp eq i8 %.fr.i, 61
  %or.cond3.i = and i1 %i.ae, %i.af
  br i1 %or.cond3.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.next.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = icmp eq i8 %i.ah, 63
  br i1 %i.ai, label %bb.h, label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aa
  br i1 %exitcond.not.i, label %needs_rfc2047_encoding.exit, label %.lr.ph.i, !llvm.loop !104

bb.h:                                             ; preds = %.lr.ph.i, %switch.early.test.i, %switch.early.test.i, %bb.g
  call fastcc void @add_rfc2047(ptr noundef %2, ptr noundef nonnull %.pre, i64 noundef %.pre99, ptr noundef %3, i32 noundef 0)
  br label %bb.k

needs_rfc2047_encoding.exit:                      ; preds = %.critedge.i, %format_subject.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !107 ; 2 uses
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = add i32 %i.al, -1
  %smin.i = call i32 @llvm.smin.i32(i32 %i.an, i32 -1)
  %i.ao = add nsw i32 %smin.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %needs_rfc2047_encoding.exit
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49, %bb.j ], [ %i.ak, %needs_rfc2047_encoding.exit ] ; 2 uses
  %indvars.iv.next.i49 = add i64 %indvars.iv.i48, -1 ; 3 uses
  %i.ap = and i64 %indvars.iv.next.i49, 2147483648
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %last_line_length.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !108
  %i.as = and i64 %indvars.iv.next.i49, 2147483647
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15
  %i.av = icmp eq i8 %i.au, 10
  br i1 %i.av, label %.split.loop.exit.i, label %bb.i, !llvm.loop !110

.split.loop.exit.i:                               ; preds = %bb.j
  %i.aw = trunc i64 %indvars.iv.i48 to i32
  br label %last_line_length.exit

last_line_length.exit:                            ; preds = %bb.i, %.split.loop.exit.i
  %.0.in.lcssa.i = phi i32 [ %i.aw, %.split.loop.exit.i ], [ %i.ao, %bb.i ]
  %.neg = sub i32 %.0.in.lcssa.i, %i.al
  call void @strbuf_add_wrapped_bytes(ptr noundef nonnull %2, ptr noundef %.pre, i32 noundef %.pre100, i32 noundef %.neg, i32 noundef 1, i32 noundef 78) #19
  br label %bb.k

bb.k:                                             ; preds = %last_line_length.exit, %bb.h
  %i.ax = load i64, ptr %2, align 8, !tbaa !106   ; 2 uses
  %.not.i.i50 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i50, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !107 ; 2 uses
  %.neg.i = add i64 %i.az, 1                      ; 2 uses
  %.not.i51 = icmp eq i64 %i.ax, %.neg.i
  br i1 %.not.i51, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %bb.k
  call void @strbuf_grow(ptr noundef nonnull %2, i64 noundef 1) #19
end_hunk_0
