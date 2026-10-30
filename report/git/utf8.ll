Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/utf8?download=true
inline.NumInlined: 51
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@strbuf_add_wrapped_text:bb.a
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @git_wcwidth.double_width, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !20
  %i.dm = icmp ugt i32 %i.cm, %i.dl
  br i1 %i.dm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.preheader.i11.i.i
  %i.dn = add nuw nsw i32 %i.dh, 1
  br label %bb.ad

bb.ab:                                            ; preds = %.preheader.i11.i.i
  %i.do = load i32, ptr %i.dj, align 8, !tbaa !21
  %i.dp = icmp ult i32 %i.cm, %i.do
  br i1 %i.dp, label %bb.ac, label %utf8_width.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dq = add nsw i32 %i.dh, -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.119.i15.i.i = phi i32 [ %.01822.i13.i.i, %bb.aa ], [ %i.dq, %bb.ac ] ; 2 uses
  %.1.i16.i.i = phi i32 [ %i.dn, %bb.aa ], [ %.023.i12.i.i, %bb.ac ] ; 2 uses
  %.not.i17.i.i = icmp slt i32 %.119.i15.i.i, %.1.i16.i.i
  br i1 %.not.i17.i.i, label %utf8_width.exit, label %.preheader.i11.i.i, !llvm.loop !1

utf8_width.exit.thread:                           ; preds = %bb.t, %bb.u
  %.0.i103.ph = phi i32 [ -1, %bb.t ], [ 1, %bb.u ]
  %i.dr = add nsw i32 %.0.i103.ph, %.156
  br label %.loopexit132.outer184.backedge

.loopexit132.outer184:                            ; preds = %.loopexit132.outer184.backedge, %.loopexit132.outer
  %.promoted.ph185 = phi ptr [ %.049.ph, %.loopexit132.outer ], [ %.promoted.ph185.be, %.loopexit132.outer184.backedge ]
  %.156.ph186 = phi i32 [ %.156.ph, %.loopexit132.outer ], [ %.156.ph186.be, %.loopexit132.outer184.backedge ]
  %.153.ph187 = phi i32 [ %.153.ph, %.loopexit132.outer ], [ %.153.ph187.be, %.loopexit132.outer184.backedge ] ; 2 uses
  %.148.ph189 = phi ptr [ %.148.ph, %.loopexit132.outer ], [ %.148, %.loopexit132.outer184.backedge ]
  br label %.loopexit132

utf8_width.exit:                                  ; preds = %bb.w, %bb.ab, %bb.ad, %bb.s, %bb.z
  %.0.i103 = phi i32 [ 0, %bb.s ], [ 1, %bb.ad ], [ 1, %bb.z ], [ 2, %bb.ab ], [ 0, %bb.w ]
  %i.ds = add nsw i32 %.0.i103, %.156
  br i1 %.not.i101, label %bb.ae, label %.loopexit132.outer184.backedge

bb.ae:                                            ; preds = %utf8_width.exit
  store ptr %1, ptr %i.a, align 8, !tbaa !18
  %i.dt = load i64, ptr %0, align 8, !tbaa !32
  %spec.select.i104 = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 1)
  %i.du = icmp ugt i64 %i.c, %spec.select.i104
  br i1 %i.du, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.19, i32 noundef 167, ptr noundef nonnull @.str.20) #20
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store i64 %i.c, ptr %i.b, align 8, !tbaa !25
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %.not9.i = icmp eq ptr %i.dv, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.c
  store i8 0, ptr %i.dw, align 1, !tbaa !14
  br label %.loopexit132.outer.backedge

.loopexit132.outer.backedge:                      ; preds = %bb.ah, %bb.ai, %strbuf_addch.exit100
  %.062.ph.be = phi i32 [ %3, %strbuf_addch.exit100 ], [ %2, %bb.ai ], [ %2, %bb.ah ]
  %.156.ph.be = phi i32 [ %3, %strbuf_addch.exit100 ], [ %spec.select, %bb.ai ], [ %spec.select, %bb.ah ]
  %.153.ph.be = phi i32 [ %.153.ph187, %strbuf_addch.exit100 ], [ 0, %bb.ai ], [ 0, %bb.ah ]
  %.049.ph.be = phi ptr [ %i.cj, %strbuf_addch.exit100 ], [ %1, %bb.ai ], [ %1, %bb.ah ]
  %.148.ph.be = phi ptr [ null, %strbuf_addch.exit100 ], [ %spec.select76, %bb.ai ], [ %spec.select76, %bb.ah ]
  br label %.loopexit132.outer

.loopexit132.outer:                               ; preds = %.loopexit132.outer.backedge, %.preheader
  %.062.ph = phi i32 [ %2, %.preheader ], [ %.062.ph.be, %.loopexit132.outer.backedge ]
  %.156.ph = phi i32 [ %spec.select, %.preheader ], [ %.156.ph.be, %.loopexit132.outer.backedge ]
  %.153.ph = phi i32 [ 1, %.preheader ], [ %.153.ph.be, %.loopexit132.outer.backedge ]
  %.049.ph = phi ptr [ %1, %.preheader ], [ %.049.ph.be, %.loopexit132.outer.backedge ] ; 3 uses
  %.148.ph = phi ptr [ %spec.select76, %.preheader ], [ %.148.ph.be, %.loopexit132.outer.backedge ]
  %i.dx = sext i32 %.062.ph to i64
  br label %.loopexit132.outer184

bb.ai:                                            ; preds = %bb.ag
  %i.dy = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !14
  %.not10.i = icmp eq i8 %i.dy, 0
  br i1 %.not10.i, label %.loopexit132.outer.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #20
  unreachable

bb.ak:                                            ; preds = %bb.r
  %i.dz = add nsw i32 %.156, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !18
  br label %.loopexit132.outer184.backedge

.loopexit132.outer184.backedge:                   ; preds = %bb.ak, %utf8_width.exit, %utf8_width.exit.thread
  %.promoted.ph185.be = phi ptr [ %i.cn, %utf8_width.exit.thread ], [ %i.cn, %utf8_width.exit ], [ %i.ea, %bb.ak ]
  %.156.ph186.be = phi i32 [ %i.dr, %utf8_width.exit.thread ], [ %i.ds, %utf8_width.exit ], [ %i.dz, %bb.ak ]
  %.153.ph187.be = phi i32 [ 1, %utf8_width.exit.thread ], [ 1, %utf8_width.exit ], [ 0, %bb.ak ]
  br label %.loopexit132.outer184

strbuf_add_indented_text.exit:                    ; preds = %bb.j, %bb.g, %.lr.ph.i, %.lr.ph.preheader.i, %bb.b
  ret void
}

declare void @strbuf_addchars(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_add_wrapped_bytes(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call ptr @xstrndup(ptr noundef %1, i64 noundef %i.a) #22 ; 2 uses
  tail call void @strbuf_add_wrapped_text(ptr noundef %0, ptr noundef %i.b, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  tail call void @free(ptr noundef %i.b) #22
  ret void
}

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @strbuf_utf8_replace(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.strbuf, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @strbuf_init(ptr noundef nonnull %4, i64 noundef %i.f) #22
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = add nsw i32 %2, %1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.r
  %.promoted = phi ptr [ %i.d, %.preheader.lr.ph ], [ %5, %bb.r ] ; 3 uses
  %.02264 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bj, %bb.r ] ; 3 uses
  %.02363 = phi ptr [ %3, %.preheader.lr.ph ], [ %.124, %bb.r ] ; 4 uses
  %i.i = load i8, ptr %.promoted, align 1, !tbaa !14
  %.not.i55 = icmp eq i8 %i.i, 27
  br i1 %.not.i55, label %.lr.ph, label %display_mode_esc_sequence_len.exit.thread

.lr.ph:                                           ; preds = %.preheader, %display_mode_esc_sequence_len.exit
  %i.j = phi ptr [ %i.x, %display_mode_esc_sequence_len.exit ], [ %.promoted, %.preheader ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %.not11.i = icmp eq i8 %i.l, 91
  br i1 %.not11.i, label %.critedge.preheader.i, label %display_mode_esc_sequence_len.exit.thread

.critedge.preheader.i:                            ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %.critedge.preheader.i
  %.0.i = phi ptr [ %i.t, %.critedge.i ], [ %i.m, %.critedge.preheader.i ] ; 2 uses
  %i.n = load i8, ptr %.0.i, align 1, !tbaa !14   ; 3 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  %i.r = and i8 %i.q, 2
  %.not12.i = icmp ne i8 %i.r, 0
  %i.s = icmp eq i8 %i.n, 59
  %or.cond.i = or i1 %i.s, %.not12.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.critedge.i, label %bb.b, !llvm.loop !0

bb.b:                                             ; preds = %.critedge.i
  %.not13.i = icmp eq i8 %i.n, 109
  br i1 %.not13.i, label %display_mode_esc_sequence_len.exit, label %display_mode_esc_sequence_len.exit.thread

display_mode_esc_sequence_len.exit:               ; preds = %bb.b
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.j, i64 noundef %i.w) #22
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.y, 27
  br i1 %.not.i, label %.lr.ph, label %display_mode_esc_sequence_len.exit.thread, !llvm.loop !33

display_mode_esc_sequence_len.exit.thread:        ; preds = %display_mode_esc_sequence_len.exit, %.lr.ph, %bb.b, %.preheader
  %.lcssa54 = phi ptr [ %.promoted, %.preheader ], [ %i.j, %bb.b ], [ %i.j, %.lr.ph ], [ %i.x, %display_mode_esc_sequence_len.exit ] ; 4 uses
  store ptr %.lcssa54, ptr %i.b, align 8
  %.not29 = icmp ult ptr %.lcssa54, %i.g
  br i1 %.not29, label %bb.c, label %.thread

bb.c:                                             ; preds = %display_mode_esc_sequence_len.exit.thread
  %i.z = call fastcc i32 @pick_one_utf8_char(ptr noundef nonnull %i.b, ptr noundef null) ; 9 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %.not.i36 = icmp eq ptr %i.aa, null             ; 2 uses
  %i.ab = icmp eq i32 %i.z, 0
  %or.cond.i37 = select i1 %.not.i36, i1 true, i1 %i.ab
  br i1 %or.cond.i37, label %utf8_width.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp samesign ult i32 %i.z, 32
  %i.ad = add nsw i32 %i.z, -127
  %or.cond.i.i = icmp ult i32 %i.ad, 33
  %or.cond10.i.i = select i1 %i.ac, i1 true, i1 %or.cond.i.i
  br i1 %or.cond10.i.i, label %utf8_width.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = add nsw i32 %i.z, -918000
  %or.cond25.i.i = icmp ult i32 %i.ae, -917232
  br i1 %or.cond25.i.i, label %utf8_width.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.i
  %.023.i.i.i = phi i32 [ %.1.i.i.i, %bb.i ], [ 0, %bb.e ] ; 3 uses
  %.01822.i.i.i = phi i32 [ %.119.i.i.i, %bb.i ], [ 375, %bb.e ] ; 2 uses
  %i.af = sub nsw i32 %.01822.i.i.i, %.023.i.i.i
  %i.ag = lshr i32 %i.af, 1
  %i.ah = add nuw nsw i32 %i.ag, %.023.i.i.i      ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @git_wcwidth.zero_width, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !20
  %i.am = icmp ugt i32 %i.z, %i.al
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.an = add nuw nsw i32 %i.ah, 1
  br label %bb.i

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !21
  %i.ap = icmp ult i32 %i.z, %i.ao
  br i1 %i.ap, label %bb.h, label %utf8_width.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = add nsw i32 %i.ah, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.119.i.i.i = phi i32 [ %.01822.i.i.i, %bb.f ], [ %i.aq, %bb.h ] ; 2 uses
  %.1.i.i.i = phi i32 [ %i.an, %bb.f ], [ %.023.i.i.i, %bb.h ] ; 2 uses
  %.not.i.i.i = icmp slt i32 %.119.i.i.i, %.1.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %.preheader.i.i.i, !llvm.loop !1

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %i.z, -262142
  %or.cond26.i.i = icmp ult i32 %i.ar, -257790
  br i1 %or.cond26.i.i, label %utf8_width.exit, label %.preheader.i11.i.i

.preheader.i11.i.i:                               ; preds = %bb.j, %bb.n
  %.023.i12.i.i = phi i32 [ %.1.i16.i.i, %bb.n ], [ 0, %bb.j ] ; 3 uses
  %.01822.i13.i.i = phi i32 [ %.119.i15.i.i, %bb.n ], [ 122, %bb.j ] ; 2 uses
  %i.as = sub nsw i32 %.01822.i13.i.i, %.023.i12.i.i
  %i.at = lshr i32 %i.as, 1
  %i.au = add nuw nsw i32 %i.at, %.023.i12.i.i    ; 3 uses
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @git_wcwidth.double_width, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !20
  %i.az = icmp ugt i32 %i.z, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.i11.i.i
  %i.ba = add nuw nsw i32 %i.au, 1
  br label %bb.n

bb.l:                                             ; preds = %.preheader.i11.i.i
  %i.bb = load i32, ptr %i.aw, align 8, !tbaa !21
  %i.bc = icmp ult i32 %i.z, %i.bb
  br i1 %i.bc, label %bb.m, label %utf8_width.exit

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.119.i15.i.i = phi i32 [ %.01822.i13.i.i, %bb.k ], [ %i.bd, %bb.m ] ; 2 uses
  %.1.i16.i.i = phi i32 [ %i.ba, %bb.k ], [ %.023.i12.i.i, %bb.m ] ; 2 uses
  %.not.i17.i.i = icmp slt i32 %.119.i15.i.i, %.1.i16.i.i
  br i1 %.not.i17.i.i, label %utf8_width.exit, label %.preheader.i11.i.i, !llvm.loop !1

utf8_width.exit:                                  ; preds = %bb.g, %bb.l, %bb.n, %bb.c, %bb.j
  %.0.i38 = phi i32 [ 0, %bb.c ], [ 1, %bb.n ], [ 1, %bb.j ], [ 2, %bb.l ], [ 0, %bb.g ]
  br i1 %.not.i36, label %.thread46, label %utf8_width.exit.thread

utf8_width.exit.thread:                           ; preds = %bb.e, %bb.d, %utf8_width.exit
  %.0.i3842 = phi i32 [ %.0.i38, %utf8_width.exit ], [ -1, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %spec.store.select = call i32 @llvm.smax.i32(i32 %.0.i3842, i32 0)
  %.not31 = icmp sgt i32 %.0.i3842, 0
  %.not32 = icmp sge i32 %.02264, %1
  %or.cond.not50 = select i1 %.not31, i1 %.not32, i1 false
  %i.be = icmp slt i32 %.02264, %i.h
  %or.cond35 = select i1 %or.cond.not50, i1 %i.be, i1 false
  br i1 %or.cond35, label %bb.o, label %bb.q

bb.o:                                             ; preds = %utf8_width.exit.thread
  %.not33 = icmp eq ptr %.02363, null
  br i1 %.not33, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.02363) #21
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %.02363, i64 noundef %i.bf) #22
  br label %bb.r

bb.q:                                             ; preds = %utf8_width.exit.thread
  %i.bg = ptrtoint ptr %i.aa to i64
  %i.bh = ptrtoint ptr %.lcssa54 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %.lcssa54, i64 noundef %i.bi) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.124 = phi ptr [ null, %bb.p ], [ null, %bb.o ], [ %.02363, %bb.q ]
  %i.bj = add nuw nsw i32 %spec.store.select, %.02264
  %5 = load ptr, ptr %i.b, align 8, !tbaa !18     ; 2 uses
  %i.bk = icmp ult ptr %5, %i.g
  br i1 %i.bk, label %.preheader, label %.thread

.thread:                                          ; preds = %bb.r, %display_mode_esc_sequence_len.exit.thread, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 16 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread46

.thread46:                                        ; preds = %utf8_width.exit, %.thread
  call void @strbuf_release(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

declare void @strbuf_init(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @strbuf_release(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @is_encoding_utf8(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull @.str, ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define internal fastcc range(i32 0, 2) i32 @same_utf_encoding(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #9 {
bb.a:
  %scevgep.i = getelementptr i8, ptr %0, i64 3    ; 2 uses
  %i.a = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14
  %i.e = shl i8 %i.d, 3
  %i.f = and i8 %i.e, 32
  %spec.select.i1.i = or i8 %i.f, %i.a
  %i.g = icmp eq i8 %spec.select.i1.i, 117
  br i1 %i.g, label %bb.b, label %skip_iprefix_impl.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14    ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = shl i8 %i.l, 3
  %i.n = and i8 %i.m, 32
  %spec.select.i1.1.i = or i8 %i.n, %i.i
  %i.o = icmp eq i8 %spec.select.i1.1.i, 116
  br i1 %i.o, label %bb.c, label %skip_iprefix_impl.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14    ; 2 uses
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  %i.u = shl i8 %i.t, 3
  %i.v = and i8 %i.u, 32
  %spec.select.i1.2.i = or i8 %i.v, %i.q
  %i.w = icmp eq i8 %spec.select.i1.2.i, 102
  br i1 %i.w, label %skip_iprefix_impl.exit, label %skip_iprefix_impl.exit.thread

skip_iprefix_impl.exit:                           ; preds = %bb.c
  %scevgep.i1 = getelementptr i8, ptr %1, i64 3   ; 2 uses
  %i.x = load i8, ptr %1, align 1, !tbaa !14      ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = shl i8 %i.aa, 3
  %i.ac = and i8 %i.ab, 32
  %spec.select.i1.i2 = or i8 %i.ac, %i.x
  %i.ad = icmp eq i8 %spec.select.i1.i2, 117
  br i1 %i.ad, label %bb.d, label %skip_iprefix_impl.exit.thread

bb.d:                                             ; preds = %skip_iprefix_impl.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14  ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = shl i8 %i.ai, 3
  %i.ak = and i8 %i.aj, 32
  %spec.select.i1.1.i4 = or i8 %i.ak, %i.af
  %i.al = icmp eq i8 %spec.select.i1.1.i4, 116
  br i1 %i.al, label %bb.e, label %skip_iprefix_impl.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14  ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.ar = shl i8 %i.aq, 3
  %i.as = and i8 %i.ar, 32
  %spec.select.i1.2.i5 = or i8 %i.as, %i.an
  %i.at = icmp eq i8 %spec.select.i1.2.i5, 102
  br i1 %i.at, label %skip_iprefix_impl.exit6, label %skip_iprefix_impl.exit.thread

skip_iprefix_impl.exit6:                          ; preds = %bb.e
  %i.au = load i8, ptr %scevgep.i, align 1, !tbaa !14
  %i.av = icmp eq i8 %i.au, 45
  %scevgep.i7 = getelementptr i8, ptr %0, i64 4
  %spec.select = select i1 %i.av, ptr %scevgep.i7, ptr %scevgep.i
  %i.aw = load i8, ptr %scevgep.i1, align 1, !tbaa !14
  %i.ax = icmp eq i8 %i.aw, 45
  %scevgep.i8 = getelementptr i8, ptr %1, i64 4
  %.1 = select i1 %i.ax, ptr %scevgep.i8, ptr %scevgep.i1
  %i.ay = tail call i32 @strcasecmp(ptr noundef %spec.select, ptr noundef %.1) #21
  %.not = icmp eq i32 %i.ay, 0
  %i.az = zext i1 %.not to i32
  br label %skip_iprefix_impl.exit.thread

skip_iprefix_impl.exit.thread:                    ; preds = %skip_iprefix_impl.exit, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c, %skip_iprefix_impl.exit6
  %.0 = phi i32 [ %i.az, %skip_iprefix_impl.exit6 ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %skip_iprefix_impl.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @same_encoding(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, ptr @.str.26, ptr %0 ; 2 uses
  %.not7 = icmp eq ptr %1, null
  %spec.store.select1 = select i1 %.not7, ptr @.str.26, ptr %1 ; 2 uses
  %i.a = tail call fastcc i32 @same_utf_encoding(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %spec.store.select1)
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @strcasecmp(ptr noundef nonnull %spec.store.select, ptr noundef nonnull %spec.store.select1) #21
  %.not9 = icmp eq i32 %i.b, 0
  %i.c = zext i1 %.not9 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @utf8_fprintf(ptr nofree noundef captures(none) %0, ptr noundef %1, ...) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.utf8_fprintf.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.va_start.p0(ptr nonnull %3)
  call void @strbuf_vaddf(ptr noundef nonnull %2, ptr noundef %1, ptr noundef nonnull %3) #22
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = call i32 @fputs(ptr noundef %i.b, ptr noundef %0) ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #21
  %i.g = call range(i32 0, -2147483648) i32 @utf8_strnwidth(ptr noundef nonnull %i.e, i64 noundef %i.f, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.c, %bb.a ]
  call void @strbuf_release(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

declare void @strbuf_vaddf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

end_hunk_0
