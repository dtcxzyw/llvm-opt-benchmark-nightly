inline.NumInlined: 51
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@strbuf_add_wrapped_text:bb.a
  %.148.ph.ph.be = phi i32 [ %spec.select76, %bb.ag ], [ %spec.select76, %bb.ah ], [ %3, %strbuf_addch.exit100 ]
  %.046.ph.ph.be = phi i32 [ %2, %bb.ag ], [ %2, %bb.ah ], [ %3, %strbuf_addch.exit100 ]
  br label %.loopexit132.outer.outer

bb.p:                                             ; preds = %bb.j, %strbuf_addch.exit90, %bb.k
  %.260 = phi ptr [ %i.x, %bb.k ], [ %i.ay, %strbuf_addch.exit90 ], [ %i.x, %bb.j ]
  %.249 = phi i32 [ %i.ax, %bb.k ], [ %.148, %strbuf_addch.exit90 ], [ %.148, %bb.j ]
  %i.ck = add nsw i32 %.249, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !15
  br label %.loopexit132.outer

bb.q:                                             ; preds = %.thread
  %.not73 = icmp eq i32 %.153, 0
  br i1 %.not73, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = call fastcc i32 @pick_one_utf8_char(ptr noundef nonnull %i.a, ptr noundef null) ; 9 uses
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %.not.i101 = icmp eq ptr %i.cn, null            ; 2 uses
  %i.co = icmp eq i32 %i.cm, 0
  %or.cond.i102 = select i1 %.not.i101, i1 true, i1 %i.co
  br i1 %or.cond.i102, label %utf8_width.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = icmp samesign ult i32 %i.cm, 32
  %i.cq = add nsw i32 %i.cm, -127
  %or.cond.i.i = icmp ult i32 %i.cq, 33
  %or.cond10.i.i = select i1 %i.cp, i1 true, i1 %or.cond.i.i
  br i1 %or.cond10.i.i, label %utf8_width.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = add nsw i32 %i.cm, -918000
  %or.cond25.i.i = icmp ult i32 %i.cr, -917232
  br i1 %or.cond25.i.i, label %utf8_width.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.t, %bb.x
  %.01823.i.i.i = phi i32 [ %.1.i.i.i, %bb.x ], [ 0, %bb.t ] ; 3 uses
  %.01922.i.i.i = phi i32 [ %.120.i.i.i, %bb.x ], [ 375, %bb.t ] ; 2 uses
  %i.cs = sub nsw i32 %.01922.i.i.i, %.01823.i.i.i
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = add nuw nsw i32 %i.ct, %.01823.i.i.i    ; 3 uses
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @git_wcwidth.zero_width, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !18
  %i.cz = icmp ugt i32 %i.cm, %i.cy
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader.i.i.i
  %i.da = add nuw nsw i32 %i.cu, 1
  br label %bb.x

bb.v:                                             ; preds = %.preheader.i.i.i
  %i.db = load i32, ptr %i.cw, align 8, !tbaa !20
  %i.dc = icmp ult i32 %i.cm, %i.db
  br i1 %i.dc, label %bb.w, label %utf8_width.exit

bb.w:                                             ; preds = %bb.v
  %i.dd = add nsw i32 %i.cu, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.120.i.i.i = phi i32 [ %.01922.i.i.i, %bb.u ], [ %i.dd, %bb.w ] ; 2 uses
  %.1.i.i.i = phi i32 [ %i.da, %bb.u ], [ %.01823.i.i.i, %bb.w ] ; 2 uses
  %.not.i.i.i = icmp slt i32 %.120.i.i.i, %.1.i.i.i
  br i1 %.not.i.i.i, label %bb.y, label %.preheader.i.i.i, !llvm.loop !21

bb.y:                                             ; preds = %bb.x
  %i.de = add nsw i32 %i.cm, -262142
  %or.cond26.i.i = icmp ult i32 %i.de, -257790
  br i1 %or.cond26.i.i, label %utf8_width.exit, label %.preheader.i11.i.i

.preheader.i11.i.i:                               ; preds = %bb.y, %bb.ac
  %.01823.i12.i.i = phi i32 [ %.1.i16.i.i, %bb.ac ], [ 0, %bb.y ] ; 3 uses
  %.01922.i13.i.i = phi i32 [ %.120.i15.i.i, %bb.ac ], [ 122, %bb.y ] ; 2 uses
  %i.df = sub nsw i32 %.01922.i13.i.i, %.01823.i12.i.i
  %i.dg = lshr i32 %i.df, 1
  %i.dh = add nuw nsw i32 %i.dg, %.01823.i12.i.i  ; 3 uses
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @git_wcwidth.double_width, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  %i.dm = icmp ugt i32 %i.cm, %i.dl
  br i1 %i.dm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader.i11.i.i
  %i.dn = add nuw nsw i32 %i.dh, 1
  br label %bb.ac

bb.aa:                                            ; preds = %.preheader.i11.i.i
  %i.do = load i32, ptr %i.dj, align 8, !tbaa !20
  %i.dp = icmp ult i32 %i.cm, %i.do
  br i1 %i.dp, label %bb.ab, label %utf8_width.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dq = add nsw i32 %i.dh, -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.120.i15.i.i = phi i32 [ %.01922.i13.i.i, %bb.z ], [ %i.dq, %bb.ab ] ; 2 uses
  %.1.i16.i.i = phi i32 [ %i.dn, %bb.z ], [ %.01823.i12.i.i, %bb.ab ] ; 2 uses
  %.not.i17.i.i = icmp slt i32 %.120.i15.i.i, %.1.i16.i.i
  br i1 %.not.i17.i.i, label %utf8_width.exit, label %.preheader.i11.i.i, !llvm.loop !21

utf8_width.exit.thread:                           ; preds = %bb.s, %bb.t
  %.0.i103.ph = phi i32 [ -1, %bb.s ], [ 1, %bb.t ]
  %i.dr = add nsw i32 %.0.i103.ph, %.148
  br label %.loopexit132.backedge

.loopexit132.backedge:                            ; preds = %utf8_width.exit.thread, %bb.aj, %utf8_width.exit
  %.promoted.be = phi ptr [ %i.cn, %utf8_width.exit.thread ], [ %i.ea, %bb.aj ], [ %i.cn, %utf8_width.exit ]
  %.153.be = phi i32 [ 1, %utf8_width.exit.thread ], [ 0, %bb.aj ], [ 1, %utf8_width.exit ]
  %.148.be = phi i32 [ %i.dr, %utf8_width.exit.thread ], [ %i.dz, %bb.aj ], [ %i.ds, %utf8_width.exit ]
  br label %.loopexit132

utf8_width.exit:                                  ; preds = %bb.v, %bb.aa, %bb.ac, %bb.r, %bb.y
  %.0.i103 = phi i32 [ 0, %bb.r ], [ 1, %bb.ac ], [ 1, %bb.y ], [ 2, %bb.aa ], [ 0, %bb.v ]
  %i.ds = add nsw i32 %.0.i103, %.148
  br i1 %.not.i101, label %bb.ad, label %.loopexit132.backedge

bb.ad:                                            ; preds = %utf8_width.exit
  store ptr %1, ptr %i.a, align 8, !tbaa !15
  %i.dt = load i64, ptr %0, align 8, !tbaa !31
  %spec.select.i104 = tail call i64 @llvm.usub.sat.i64(i64 %i.dt, i64 1)
  %i.du = icmp ugt i64 %i.c, %spec.select.i104
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.19, i32 noundef 167, ptr noundef nonnull @.str.20) #20
  unreachable

bb.af:                                            ; preds = %bb.ad
  store i64 %i.c, ptr %i.b, align 8, !tbaa !26
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %.not9.i = icmp eq ptr %i.dv, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.c
  store i8 0, ptr %i.dw, align 1, !tbaa !12
  br label %.loopexit132.outer.outer.backedge

.loopexit132.outer.outer:                         ; preds = %.loopexit132.outer.outer.backedge, %.preheader
  %.159.ph.ph = phi ptr [ %spec.select, %.preheader ], [ %.159.ph.ph.be, %.loopexit132.outer.outer.backedge ]
  %.055.ph.ph = phi ptr [ %1, %.preheader ], [ %.055.ph.ph.be, %.loopexit132.outer.outer.backedge ] ; 3 uses
  %.153.ph.ph = phi i32 [ 1, %.preheader ], [ %.153.ph.ph.be, %.loopexit132.outer.outer.backedge ]
  %.148.ph.ph = phi i32 [ %spec.select76, %.preheader ], [ %.148.ph.ph.be, %.loopexit132.outer.outer.backedge ]
  %.046.ph.ph = phi i32 [ %2, %.preheader ], [ %.046.ph.ph.be, %.loopexit132.outer.outer.backedge ]
  %i.dx = sext i32 %.046.ph.ph to i64
  br label %.loopexit132.outer

.loopexit132.outer:                               ; preds = %.loopexit132.outer.outer, %bb.p
  %.promoted.ph = phi ptr [ %i.cl, %bb.p ], [ %.055.ph.ph, %.loopexit132.outer.outer ]
  %.159.ph = phi ptr [ %.260, %bb.p ], [ %.159.ph.ph, %.loopexit132.outer.outer ] ; 3 uses
  %.153.ph = phi i32 [ %.153, %bb.p ], [ %.153.ph.ph, %.loopexit132.outer.outer ]
  %.148.ph = phi i32 [ %i.ck, %bb.p ], [ %.148.ph.ph, %.loopexit132.outer.outer ]
  br label %.loopexit132

bb.ah:                                            ; preds = %bb.af
  %i.dy = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i = icmp eq i8 %i.dy, 0
  br i1 %.not10.i, label %.loopexit132.outer.outer.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #20
  unreachable

bb.aj:                                            ; preds = %bb.q
  %i.dz = add nsw i32 %.148, 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !15
  br label %.loopexit132.backedge

strbuf_add_indented_text.exit:                    ; preds = %bb.i, %bb.f, %.lr.ph.i, %.lr.ph.preheader.i, %bb.b
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
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.strbuf, align 8             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @strbuf_init(ptr noundef nonnull %4, i64 noundef %i.e) #22
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.g = add nsw i32 %2, %1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.r
  %.promoted = phi ptr [ %i.c, %.preheader.lr.ph ], [ %i.bj, %bb.r ] ; 3 uses
  %.02264 = phi ptr [ %3, %.preheader.lr.ph ], [ %.1, %bb.r ] ; 4 uses
  %.02363 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bi, %bb.r ] ; 3 uses
  %i.h = load i8, ptr %.promoted, align 1, !tbaa !12
  %.not.i55 = icmp eq i8 %i.h, 27
  br i1 %.not.i55, label %.lr.ph, label %display_mode_esc_sequence_len.exit.thread

.lr.ph:                                           ; preds = %.preheader, %display_mode_esc_sequence_len.exit
  %i.i = phi ptr [ %i.w, %display_mode_esc_sequence_len.exit ], [ %.promoted, %.preheader ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %.not11.i = icmp eq i8 %i.k, 91
  br i1 %.not11.i, label %.critedge.preheader.i, label %display_mode_esc_sequence_len.exit.thread

.critedge.preheader.i:                            ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %.critedge.preheader.i
  %.0.i = phi ptr [ %i.s, %.critedge.i ], [ %i.l, %.critedge.preheader.i ] ; 2 uses
  %i.m = load i8, ptr %.0.i, align 1, !tbaa !12   ; 3 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = and i8 %i.p, 2
  %.not12.i = icmp ne i8 %i.q, 0
  %i.r = icmp eq i8 %i.m, 59
  %or.cond.i = or i1 %i.r, %.not12.i
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  br i1 %or.cond.i, label %.critedge.i, label %bb.b, !llvm.loop !13

bb.b:                                             ; preds = %.critedge.i
  %.not13.i = icmp eq i8 %i.m, 109
  br i1 %.not13.i, label %display_mode_esc_sequence_len.exit, label %display_mode_esc_sequence_len.exit.thread

display_mode_esc_sequence_len.exit:               ; preds = %bb.b
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.i, i64 noundef %i.v) #22
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.x, 27
  br i1 %.not.i, label %.lr.ph, label %display_mode_esc_sequence_len.exit.thread, !llvm.loop !33

display_mode_esc_sequence_len.exit.thread:        ; preds = %display_mode_esc_sequence_len.exit, %.lr.ph, %bb.b, %.preheader
  %.lcssa54 = phi ptr [ %.promoted, %.preheader ], [ %i.i, %bb.b ], [ %i.i, %.lr.ph ], [ %i.w, %display_mode_esc_sequence_len.exit ] ; 4 uses
  store ptr %.lcssa54, ptr %i.a, align 8
  %.not29 = icmp ult ptr %.lcssa54, %i.f
  br i1 %.not29, label %bb.c, label %.thread

bb.c:                                             ; preds = %display_mode_esc_sequence_len.exit.thread
  %i.y = call fastcc i32 @pick_one_utf8_char(ptr noundef nonnull %i.a, ptr noundef null) ; 9 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not.i36 = icmp eq ptr %i.z, null              ; 2 uses
  %i.aa = icmp eq i32 %i.y, 0
  %or.cond.i37 = select i1 %.not.i36, i1 true, i1 %i.aa
  br i1 %or.cond.i37, label %utf8_width.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp samesign ult i32 %i.y, 32
  %i.ac = add nsw i32 %i.y, -127
  %or.cond.i.i = icmp ult i32 %i.ac, 33
  %or.cond10.i.i = select i1 %i.ab, i1 true, i1 %or.cond.i.i
  br i1 %or.cond10.i.i, label %utf8_width.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add nsw i32 %i.y, -918000
  %or.cond25.i.i = icmp ult i32 %i.ad, -917232
  br i1 %or.cond25.i.i, label %utf8_width.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.i
  %.01823.i.i.i = phi i32 [ %.1.i.i.i, %bb.i ], [ 0, %bb.e ] ; 3 uses
  %.01922.i.i.i = phi i32 [ %.120.i.i.i, %bb.i ], [ 375, %bb.e ] ; 2 uses
  %i.ae = sub nsw i32 %.01922.i.i.i, %.01823.i.i.i
  %i.af = lshr i32 %i.ae, 1
  %i.ag = add nuw nsw i32 %i.af, %.01823.i.i.i    ; 3 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @git_wcwidth.zero_width, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = icmp ugt i32 %i.y, %i.ak
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.am = add nuw nsw i32 %i.ag, 1
  br label %bb.i

bb.g:                                             ; preds = %.preheader.i.i.i
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !20
  %i.ao = icmp ult i32 %i.y, %i.an
  br i1 %i.ao, label %bb.h, label %utf8_width.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = add nsw i32 %i.ag, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.120.i.i.i = phi i32 [ %.01922.i.i.i, %bb.f ], [ %i.ap, %bb.h ] ; 2 uses
  %.1.i.i.i = phi i32 [ %i.am, %bb.f ], [ %.01823.i.i.i, %bb.h ] ; 2 uses
  %.not.i.i.i = icmp slt i32 %.120.i.i.i, %.1.i.i.i
  br i1 %.not.i.i.i, label %bb.j, label %.preheader.i.i.i, !llvm.loop !21

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %i.y, -262142
  %or.cond26.i.i = icmp ult i32 %i.aq, -257790
  br i1 %or.cond26.i.i, label %utf8_width.exit, label %.preheader.i11.i.i

.preheader.i11.i.i:                               ; preds = %bb.j, %bb.n
  %.01823.i12.i.i = phi i32 [ %.1.i16.i.i, %bb.n ], [ 0, %bb.j ] ; 3 uses
  %.01922.i13.i.i = phi i32 [ %.120.i15.i.i, %bb.n ], [ 122, %bb.j ] ; 2 uses
  %i.ar = sub nsw i32 %.01922.i13.i.i, %.01823.i12.i.i
  %i.as = lshr i32 %i.ar, 1
  %i.at = add nuw nsw i32 %i.as, %.01823.i12.i.i  ; 3 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @git_wcwidth.double_width, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.ay = icmp ugt i32 %i.y, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.i11.i.i
  %i.az = add nuw nsw i32 %i.at, 1
  br label %bb.n

bb.l:                                             ; preds = %.preheader.i11.i.i
  %i.ba = load i32, ptr %i.av, align 8, !tbaa !20
  %i.bb = icmp ult i32 %i.y, %i.ba
  br i1 %i.bb, label %bb.m, label %utf8_width.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = add nsw i32 %i.at, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.120.i15.i.i = phi i32 [ %.01922.i13.i.i, %bb.k ], [ %i.bc, %bb.m ] ; 2 uses
  %.1.i16.i.i = phi i32 [ %i.az, %bb.k ], [ %.01823.i12.i.i, %bb.m ] ; 2 uses
  %.not.i17.i.i = icmp slt i32 %.120.i15.i.i, %.1.i16.i.i
  br i1 %.not.i17.i.i, label %utf8_width.exit, label %.preheader.i11.i.i, !llvm.loop !21

utf8_width.exit:                                  ; preds = %bb.g, %bb.l, %bb.n, %bb.c, %bb.j
  %.0.i38 = phi i32 [ 0, %bb.c ], [ 1, %bb.n ], [ 1, %bb.j ], [ 2, %bb.l ], [ 0, %bb.g ]
  br i1 %.not.i36, label %.thread46, label %utf8_width.exit.thread

utf8_width.exit.thread:                           ; preds = %bb.e, %bb.d, %utf8_width.exit
  %.0.i3842 = phi i32 [ %.0.i38, %utf8_width.exit ], [ -1, %bb.d ], [ 1, %bb.e ] ; 2 uses
  %spec.store.select = call i32 @llvm.smax.i32(i32 %.0.i3842, i32 0)
  %.not31 = icmp sgt i32 %.0.i3842, 0
  %.not32 = icmp sge i32 %.02363, %1
  %or.cond.not50 = select i1 %.not31, i1 %.not32, i1 false
  %i.bd = icmp slt i32 %.02363, %i.g
  %or.cond35 = select i1 %or.cond.not50, i1 %i.bd, i1 false
  br i1 %or.cond35, label %bb.o, label %bb.q

bb.o:                                             ; preds = %utf8_width.exit.thread
  %.not33 = icmp eq ptr %.02264, null
  br i1 %.not33, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.02264) #21
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %.02264, i64 noundef %i.be) #22
  br label %bb.r

bb.q:                                             ; preds = %utf8_width.exit.thread
  %i.bf = ptrtoint ptr %i.z to i64
  %i.bg = ptrtoint ptr %.lcssa54 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %.lcssa54, i64 noundef %i.bh) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.1 = phi ptr [ null, %bb.p ], [ null, %bb.o ], [ %.02264, %bb.q ]
  %i.bi = add nuw nsw i32 %spec.store.select, %.02363
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.f
  br i1 %i.bk, label %.preheader, label %.thread

.thread:                                          ; preds = %bb.r, %display_mode_esc_sequence_len.exit.thread, %bb.a
  %.sroa.0.0.copyload = load <24 x i8>, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store <24 x i8> %.sroa.0.0.copyload, ptr %4, align 8
  br label %.thread46

.thread46:                                        ; preds = %utf8_width.exit, %.thread
  call void @strbuf_release(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
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
  %i.a = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %i.e = shl i8 %i.d, 3
  %i.f = and i8 %i.e, 32
  %spec.select.i1.i = or i8 %i.f, %i.a
  %i.g = icmp eq i8 %spec.select.i1.i, 117
  br i1 %i.g, label %bb.b, label %skip_iprefix_impl.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12    ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = shl i8 %i.l, 3
  %i.n = and i8 %i.m, 32
  %spec.select.i1.1.i = or i8 %i.n, %i.i
  %i.o = icmp eq i8 %spec.select.i1.1.i, 116
  br i1 %i.o, label %bb.c, label %skip_iprefix_impl.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12    ; 2 uses
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  %i.u = shl i8 %i.t, 3
  %i.v = and i8 %i.u, 32
  %spec.select.i1.2.i = or i8 %i.v, %i.q
  %i.w = icmp eq i8 %spec.select.i1.2.i, 102
  br i1 %i.w, label %skip_iprefix_impl.exit, label %skip_iprefix_impl.exit.thread

skip_iprefix_impl.exit:                           ; preds = %bb.c
  %scevgep.i1 = getelementptr i8, ptr %1, i64 3   ; 2 uses
  %i.x = load i8, ptr %1, align 1, !tbaa !12      ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12
  %i.ab = shl i8 %i.aa, 3
  %i.ac = and i8 %i.ab, 32
  %spec.select.i1.i2 = or i8 %i.ac, %i.x
  %i.ad = icmp eq i8 %spec.select.i1.i2, 117
  br i1 %i.ad, label %bb.d, label %skip_iprefix_impl.exit.thread

bb.d:                                             ; preds = %skip_iprefix_impl.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12  ; 2 uses
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = shl i8 %i.ai, 3
  %i.ak = and i8 %i.aj, 32
  %spec.select.i1.1.i4 = or i8 %i.ak, %i.af
  %i.al = icmp eq i8 %spec.select.i1.1.i4, 116
  br i1 %i.al, label %bb.e, label %skip_iprefix_impl.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12  ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %i.ar = shl i8 %i.aq, 3
  %i.as = and i8 %i.ar, 32
  %spec.select.i1.2.i5 = or i8 %i.as, %i.an
  %i.at = icmp eq i8 %spec.select.i1.2.i5, 102
  br i1 %i.at, label %skip_iprefix_impl.exit6, label %skip_iprefix_impl.exit.thread

skip_iprefix_impl.exit6:                          ; preds = %bb.e
  %i.au = load i8, ptr %scevgep.i, align 1, !tbaa !12
  %i.av = icmp eq i8 %i.au, 45
  %scevgep.i7 = getelementptr i8, ptr %0, i64 4
  %spec.select = select i1 %i.av, ptr %scevgep.i7, ptr %scevgep.i
  %i.aw = load i8, ptr %scevgep.i1, align 1, !tbaa !12
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = call i32 @fputs(ptr noundef %i.b, ptr noundef %0) ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
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

; Function Attrs: nounwind uwtable
define dso_local ptr @reencode_string_iconv(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 %1, ptr %i.b, align 8, !tbaa !22
  %i.e = add i64 %3, 1                            ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %i.e) ; 2 uses
end_hunk_0
