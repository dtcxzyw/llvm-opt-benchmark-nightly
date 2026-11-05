Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@bbcode_append:bb.a
  %.013.i.i126130.i.i = phi i64 [ %.0.lcssa.i.i.i.i, %bb.ab ], [ 0, %str_column_width.exit.thread127.i.i ], [ 0, %ic_strlen.exit.i.i.i ], [ 0, %bb.y ]
  %i.ho = sub nsw i64 %i.dr, %.013.i.i126130.i.i  ; 4 uses
  %i.hp = icmp eq i32 %.sroa.10.8.extract.trunc.i.i, 2 ; 2 uses
  br i1 %i.hp, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.thread.i.i
  %i.hq = icmp eq i32 %.sroa.10.8.extract.trunc.i.i, 0
  br i1 %i.hq, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hr = sdiv i64 %i.ho, 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %.thread.i.i
  %i.hs = phi i64 [ 0, %bb.ay ], [ %i.hr, %bb.az ], [ %i.ho, %.thread.i.i ] ; 4 uses
  %i.ht = icmp eq i32 %.sroa.10.8.extract.trunc.i.i, 0
  %i.hu = sub nsw i64 %i.ho, %i.hs
  %i.hv = select i1 %i.hp, i64 0, i64 %i.hu
  %i.hw = select i1 %i.ht, i64 %i.ho, i64 %i.hv   ; 2 uses
  %i.hx = icmp ne i8 %.sroa.17.8.extract.trunc.i.i, 0 ; 2 uses
  %i.hy = icmp sgt i64 %i.hs, 0
  %or.cond4.i.i = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %or.cond4.i.i, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.hz = icmp slt i64 %i.dt, 0
  %or.cond.i117.i.i = or i1 %i.u, %i.hz
  br i1 %or.cond.i117.i.i, label %.lr.ph.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ia = load i64, ptr %i.v, align 8, !tbaa !80
  %i.ib = icmp sgt i64 %i.dt, %i.ia
  br i1 %i.ib, label %.lr.ph.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ic = load ptr, ptr %3, align 8, !tbaa !75
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.dt
  %.sroa.0.0.copyload.i118.i.i = load i64, ptr %i.id, align 8, !tbaa !48
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd, %bb.bc, %bb.bb
  %.sroa.0.0.i119.i.i = phi i64 [ %.sroa.0.0.copyload.i118.i.i, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bb ]
  br label %bb.be

._crit_edge.i.i:                                  ; preds = %bb.be
  call fastcc void @attrbuf_insert_at(ptr noundef %3, i64 noundef %i.dt, i64 noundef %i.hs, i64 %.sroa.0.0.i119.i.i)
  br label %bb.bf

bb.be:                                            ; preds = %bb.be, %.lr.ph.i.i
  %.088136.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.if, %bb.be ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 %.sroa.17.8.extract.trunc.i.i, ptr %i.a, align 1, !tbaa !48
  store i8 0, ptr %i.w, align 1, !tbaa !48
  %i.ie = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.dt) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.if = add nuw nsw i64 %.088136.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.if, %i.hs
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.be, !llvm.loop !273

bb.bf:                                            ; preds = %._crit_edge.i.i, %bb.ba
  %i.ig = icmp sgt i64 %i.hw, 0
  %or.cond6.i.i = select i1 %i.hx, i1 %i.ig, i1 false
  br i1 %or.cond6.i.i, label %bb.bg, label %bbcode_restrict_width.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.ih = load i64, ptr %i.t, align 8, !tbaa !79  ; 2 uses
  %i.ii = add nsw i64 %i.ih, -1                   ; 2 uses
  %i.ij = icmp slt i64 %i.ih, 1
  %or.cond.i121.i.i = or i1 %i.u, %i.ij
  br i1 %or.cond.i121.i.i, label %.lr.ph138.preheader.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ik = load i64, ptr %i.v, align 8, !tbaa !80
  %i.il = icmp sgt i64 %i.ii, %i.ik
  br i1 %i.il, label %.lr.ph138.preheader.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.im = load ptr, ptr %3, align 8, !tbaa !75
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ii
  %.sroa.0.0.copyload.i122.i.i = load i64, ptr %i.in, align 8, !tbaa !48
  br label %.lr.ph138.preheader.i.i

.lr.ph138.preheader.i.i:                          ; preds = %bb.bi, %bb.bh, %bb.bg
  %.sroa.0.0.i123.i.i = phi i64 [ %.sroa.0.0.copyload.i122.i.i, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i8 %.sroa.17.8.extract.trunc.i.i, ptr %i.f, align 1, !tbaa !48
  store i8 0, ptr %i.x, align 1, !tbaa !48
  br label %.lr.ph138.i.i

._crit_edge139.i.i:                               ; preds = %.lr.ph138.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %bbcode_restrict_width.exit.i

.lr.ph138.i.i:                                    ; preds = %.lr.ph138.i.i, %.lr.ph138.preheader.i.i
  %.0137.i.i = phi i64 [ %i.io, %.lr.ph138.i.i ], [ 0, %.lr.ph138.preheader.i.i ]
  call fastcc void @attrbuf_append_n(ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.f, i64 noundef 1, i64 %.sroa.0.0.i123.i.i)
  %i.io = add nuw nsw i64 %.0137.i.i, 1           ; 2 uses
  %exitcond140.not.i.i = icmp eq i64 %i.io, %i.hw
  br i1 %exitcond140.not.i.i, label %._crit_edge139.i.i, label %.lr.ph138.i.i, !llvm.loop !274

bbcode_restrict_width.exit.i:                     ; preds = %._crit_edge139.i.i, %bb.bf, %attrbuf_attr_at.exit116.i.i, %attrbuf_delete_at.exit112.i.i, %attrbuf_attr_at.exit.i.i, %attrbuf_delete_at.exit.i.i, %str_column_width.exit.i.i, %bb.x, %bb.w
  %.sroa.0.2 = phi i64 [ %i.dq, %._crit_edge139.i.i ], [ %i.dq, %bb.bf ], [ %i.dq, %str_column_width.exit.i.i ], [ %i.dq, %attrbuf_attr_at.exit.i.i ], [ %i.dq, %attrbuf_delete_at.exit.i.i ], [ %i.dq, %attrbuf_attr_at.exit116.i.i ], [ %i.dq, %attrbuf_delete_at.exit112.i.i ], [ %i.dq, %bb.x ], [ %.sroa.0.078, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bbcode_process_tag.exit

bbcode_process_tag.exit:                          ; preds = %bbcode_open.exit.i, %bb.v, %bbcode_restrict_width.exit.i
  %.sroa.0.3 = phi i64 [ %.sroa.013.5.i.i.i, %bbcode_open.exit.i ], [ %.sroa.0.078, %bb.v ], [ %.sroa.0.2, %bbcode_restrict_width.exit.i ]
  %.2.i = phi ptr [ %i.ax, %bbcode_open.exit.i ], [ %.1.i, %bb.v ], [ %i.dn, %bbcode_restrict_width.exit.i ]
  %i.ip = ptrtoint ptr %.2.i to i64
  %i.iq = ptrtoint ptr %i.af to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ir = sub i64 %i.ae, %i.iq
  %i.is = add i64 %i.ir, %i.ip
  br label %bb.bm

bb.bj:                                            ; preds = %bb.h
  %i.it = add nsw i64 %i.ae, 1                    ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %1, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !48
  %.off = add i8 %i.iv, -91
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.iw = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call fastcc void @attrbuf_append_n(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.iw, i64 noundef 1, i64 %.sroa.0.078)
  %i.ix = add nsw i64 %i.ae, 2
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  call fastcc void @attrbuf_append_n(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.af, i64 noundef 1, i64 %.sroa.0.078)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.h, %bb.bl, %bb.bk, %bbcode_process_tag.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.078, %bb.h ], [ %.sroa.0.3, %bbcode_process_tag.exit ], [ %.sroa.0.078, %bb.bk ], [ %.sroa.0.078, %bb.bl ]
  %.156 = phi i64 [ %i.ae, %bb.h ], [ %i.is, %bbcode_process_tag.exit ], [ %i.ix, %bb.bk ], [ %i.it, %bb.bl ] ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %1, i64 %.156 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !48
  %.not = icmp eq i8 %i.iz, 0
  br i1 %.not, label %.preheader, label %.preheader71, !llvm.loop !275

.lr.ph:                                           ; preds = %.preheader, %bbcode_tag_pop.exit
  %i.ja = phi i64 [ %i.jd, %bbcode_tag_pop.exit ], [ %.promoted.pre, %.preheader ] ; 3 uses
  %i.jb = icmp slt i64 %i.ja, 1
  br i1 %i.jb, label %bbcode_tag_pop.exit, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph
  %i.jc = add nsw i64 %i.ja, -1                   ; 2 uses
  store i64 %i.jc, ptr %i.k, align 8, !tbaa !83
  br label %bbcode_tag_pop.exit

bbcode_tag_pop.exit:                              ; preds = %.lr.ph, %bb.bn
  %i.jd = phi i64 [ %i.ja, %.lr.ph ], [ %i.jc, %bb.bn ] ; 2 uses
  %i.je = icmp sgt i64 %i.jd, %i.l
  br i1 %i.je, label %.lr.ph, label %.loopexit, !llvm.loop !276

.loopexit:                                        ; preds = %bbcode_tag_pop.exit, %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @debug_msg(ptr nofree noundef readonly captures(none) %0, ...) unnamed_addr #2 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.248) #28
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !93
  %i.c = call i32 @vfprintf(ptr noundef %i.b, ptr noundef %0, ptr noundef nonnull %1) #30 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @ic_complete_word(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.word_closure_s, align 8     ; 6 uses
  %i.a = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.a, ptr @ic_char_is_nonseparator, ptr %3
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.thread.split, label %ic_strlen.exit.split.preheader

ic_strlen.exit.split.preheader:                   ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #29
  %i.d = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.c, i64 0) ; 2 uses
  br label %ic_strlen.exit.split

ic_strlen.exit.split:                             ; preds = %ic_strlen.exit.split.preheader, %str_prev_ofs.exit
  %.028 = phi i64 [ %5, %str_prev_ofs.exit ], [ %i.d, %ic_strlen.exit.split.preheader ] ; 8 uses
  %i.e = icmp sgt i64 %.028, 0
  br i1 %i.e, label %.preheader.i.preheader, label %.thread.split.loopexit

.preheader.i.preheader:                           ; preds = %ic_strlen.exit.split
  %exitcond.not.i35 = icmp eq i64 %.028, 1
  br i1 %exitcond.not.i35, label %str_prev_ofs.exit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.021.i36, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.f, %.028
  br i1 %exitcond.not.i, label %str_prev_ofs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.021.i36 = phi i64 [ %i.f, %.preheader.i ], [ 1, %.preheader.i.preheader ] ; 3 uses
  %i.g = sub nuw nsw i64 %.028, %.021.i36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !48
  %or.cond4.i = icmp sgt i8 %i.i, -65
  br i1 %or.cond4.i, label %str_prev_ofs.exit, label %.preheader.i

str_prev_ofs.exit:                                ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.2.i.a = phi i64 [ %.028, %.preheader.i.preheader ], [ %.028, %.preheader.i ], [ %.021.i36, %.lr.ph ] ; 2 uses
  %5 = sub nsw i64 %.028, %.2.i.a                 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %1, i64 %5
  %i.k = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.j, i64 noundef %.2.i.a) #28
  br i1 %i.k, label %ic_strlen.exit.split, label %.thread.split.loopexit

.thread.split.loopexit:                           ; preds = %str_prev_ofs.exit, %ic_strlen.exit.split
  %i.l = tail call i64 @llvm.smax.i64(i64 %.028, i64 0)
  br label %.thread.split

.thread.split:                                    ; preds = %bb.a, %.thread.split.loopexit
  %.0.i34 = phi i64 [ %i.d, %.thread.split.loopexit ], [ 0, %bb.a ]
  %.028.lcssa.split = phi i64 [ %i.l, %.thread.split.loopexit ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.m = sub nsw i64 %.0.i34, %.028.lcssa.split
  store i64 %i.m, ptr %4, align 8, !tbaa !95
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !99
  %i.q = load ptr, ptr %0, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !101
  store ptr @token_add_completion_ex, ptr %i.n, align 8, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %4, ptr %i.s, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.028.lcssa.split
  call void %2(ptr noundef nonnull %0, ptr noundef %i.t) #28
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !103
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @ic_char_is_nonseparator(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %ic_char_is_separator.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !48
  %i.d = sext i8 %i.c to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.4, i32 %i.d, i64 17)
  %i.e = icmp eq ptr %memchr.i, null
  br label %ic_char_is_separator.exit

ic_char_is_separator.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @token_add_completion_ex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = load i64, ptr %1, align 8, !tbaa !95
  %i.f = add nsw i64 %i.e, %5
  %i.g = tail call zeroext i1 %i.b(ptr noundef %0, ptr noundef %i.d, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %i.f, i64 noundef %6) #28
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_complete_qword(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @ic_complete_qword_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef signext 92, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ic_complete_qword_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i8 noundef signext %4, ptr nofree noundef readonly %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.qword_closure_s, align 8    ; 10 uses
  %i.a = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.a, ptr @ic_char_is_nonseparator, ptr %3 ; 5 uses
  %i.b = icmp eq ptr %5, null
  %spec.store.select2 = select i1 %i.b, ptr @.str.1, ptr %5 ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 3 uses
  br i1 %i.c, label %ic_strlen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #29
  %i.e = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0)
  br label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]   ; 7 uses
  %i.f = load i8, ptr %spec.store.select2, align 1, !tbaa !48
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.preheader171, label %.preheader172

.preheader172:                                    ; preds = %ic_strlen.exit, %bb.l
  %.0137 = phi i64 [ %i.aa, %bb.l ], [ 0, %ic_strlen.exit ] ; 8 uses
  %.0134 = phi i8 [ %.1135, %bb.l ], [ 0, %ic_strlen.exit ] ; 5 uses
  %.0129 = phi i64 [ %.1130, %bb.l ], [ -1, %ic_strlen.exit ] ; 4 uses
  %.0126 = phi i64 [ %.1127, %bb.l ], [ -1, %ic_strlen.exit ] ; 4 uses
  %.0123 = phi i64 [ %.1124, %bb.l ], [ 0, %ic_strlen.exit ] ; 6 uses
  %i.g = icmp slt i64 %.0137, %.0.i
  br i1 %i.g, label %bb.c, label %bb.m

bb.c:                                             ; preds = %.preheader172
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0137 ; 5 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !48
  %i.j = icmp eq i8 %i.i, %4
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %.0137, 1                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !48
  %.not148 = icmp eq i8 %i.m, 0
  br i1 %.not148, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.o = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.n, i64 noundef 1) #28
  br i1 %i.o, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = srem i64 %.0123, 2
  switch i64 %i.p, label %bb.k [
    i64 0, label %bb.g
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.h, align 1, !tbaa !48    ; 2 uses
  %i.r = sext i8 %i.q to i32
  %i.s = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %spec.store.select2, i32 noundef %i.r) #29
  %.not149 = icmp eq ptr %i.s, null
  br i1 %.not149, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i64 %.0123, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.h, align 1, !tbaa !48
  %i.v = icmp eq i8 %i.u, %.0134
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = add nsw i64 %.0123, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.i
  %i.x = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.h, i64 noundef 1) #28
  %spec.select = select i1 %i.x, i64 %.0126, i64 -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.h, %bb.j
  %.1138 = phi i64 [ %.0137, %bb.h ], [ %.0137, %bb.j ], [ %.0137, %bb.k ], [ %i.k, %bb.e ] ; 2 uses
  %.1135 = phi i8 [ %i.q, %bb.h ], [ %.0134, %bb.j ], [ %.0134, %bb.k ], [ %.0134, %bb.e ] ; 2 uses
  %.1130 = phi i64 [ %.0137, %bb.h ], [ %.0129, %bb.j ], [ %.0129, %bb.k ], [ %.0129, %bb.e ] ; 2 uses
  %.1127 = phi i64 [ %.0126, %bb.h ], [ %.0137, %bb.j ], [ %spec.select, %bb.k ], [ %.0126, %bb.e ] ; 2 uses
  %.1124 = phi i64 [ %i.t, %bb.h ], [ %i.w, %bb.j ], [ %.0123, %bb.k ], [ %.0123, %bb.e ] ; 2 uses
  %i.y = tail call fastcc i64 @str_next_ofs(ptr noundef nonnull %1, i64 noundef %.0.i, i64 noundef %.1138, ptr noundef null) ; 2 uses
  %i.z = icmp slt i64 %i.y, 1
  %i.aa = add nuw nsw i64 %i.y, %.1138
  br i1 %i.z, label %bb.m, label %.preheader172

bb.m:                                             ; preds = %bb.l, %.preheader172
  %.2136 = phi i8 [ %.1135, %bb.l ], [ %.0134, %.preheader172 ] ; 2 uses
  %.2131 = phi i64 [ %.1130, %bb.l ], [ %.0129, %.preheader172 ] ; 2 uses
  %.2128 = phi i64 [ %.1127, %bb.l ], [ %.0126, %.preheader172 ]
  %.2125 = phi i64 [ %.1124, %bb.l ], [ %.0123, %.preheader172 ]
  %i.ab = srem i64 %.2125, 2                      ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = icmp sgt i64 %.2128, -1
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = icmp eq i64 %i.ab, 1
  %or.cond153 = or i1 %i.ae, %or.cond
  br i1 %or.cond153, label %bb.n, label %.preheader171

bb.n:                                             ; preds = %bb.m
  %i.af = add nsw i64 %.2131, 1
  %i.ag = xor i64 %.2131, -1
  %i.ah = add i64 %.0.i, %i.ag                    ; 2 uses
  %i.ai = icmp eq i8 %.2136, 0
  br i1 %i.ai, label %.preheader171, label %.thread

.preheader171:                                    ; preds = %ic_strlen.exit, %bb.m, %bb.n
  %.1133206 = phi i64 [ %i.ah, %bb.n ], [ 0, %bb.m ], [ 0, %ic_strlen.exit ] ; 5 uses
  %i.aj = icmp eq i64 %.0.i, 0
  %or.cond170174.not = or i1 %i.aj, %i.c
  br i1 %or.cond170174.not, label %.thread, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader171, %bb.r
  %.6175 = phi i64 [ %.pre-phi, %bb.r ], [ %.0.i, %.preheader171 ] ; 11 uses
  %exitcond.not.i212 = icmp eq i64 %.6175, 1
  br i1 %exitcond.not.i212, label %str_prev_ofs.exit, label %.lr.ph214

.preheader.i:                                     ; preds = %.lr.ph214
  %i.ak = add nuw nsw i64 %.021.i213, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %.6175
  br i1 %exitcond.not.i, label %str_prev_ofs.exit, label %.lr.ph214

.lr.ph214:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.021.i213 = phi i64 [ %i.ak, %.preheader.i ], [ 1, %.preheader.i.preheader ] ; 3 uses
  %i.al = sub nuw nsw i64 %.6175, %.021.i213
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !48
  %or.cond4.i = icmp sgt i8 %i.an, -65
  br i1 %or.cond4.i, label %str_prev_ofs.exit.thread, label %.preheader.i

str_prev_ofs.exit:                                ; preds = %.preheader.i, %.preheader.i.preheader
  %7 = icmp slt i64 %.6175, 1
  br i1 %7, label %.thread, label %str_prev_ofs.exit.thread

str_prev_ofs.exit.thread:                         ; preds = %.lr.ph214, %str_prev_ofs.exit
  %.2.i208 = phi i64 [ %.6175, %str_prev_ofs.exit ], [ %.021.i213, %.lr.ph214 ] ; 4 uses
  %8 = sub nsw i64 %.6175, %.2.i208               ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %8 ; 2 uses
  %i.ap = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.ao, i64 noundef %.2.i208) #28
  br i1 %i.ap, label %bb.r, label %bb.o

bb.o:                                             ; preds = %str_prev_ofs.exit.thread
  %.not150 = icmp sgt i64 %.6175, %.2.i208
  br i1 %.not150, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr i8, ptr %i.ao, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !48
  %.not151 = icmp eq i8 %i.ar, %4
  br i1 %.not151, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.as = xor i64 %.2.i208, -1
  %.pre = add nsw i64 %.6175, %i.as
  br label %bb.r

bb.r:                                             ; preds = %str_prev_ofs.exit.thread, %bb.q
  %.pre-phi = phi i64 [ %8, %str_prev_ofs.exit.thread ], [ %.pre, %bb.q ] ; 3 uses
  %i.at = icmp sgt i64 %.pre-phi, 0
  br i1 %i.at, label %.preheader.i.preheader, label %.thread

.thread:                                          ; preds = %bb.r, %str_prev_ofs.exit, %bb.p, %bb.o, %.preheader171, %bb.n
  %9 = phi i1 [ false, %bb.n ], [ true, %.preheader171 ], [ true, %bb.o ], [ true, %bb.p ], [ true, %str_prev_ofs.exit ], [ true, %bb.r ] ; 2 uses
  %.1133205 = phi i64 [ %i.ah, %bb.n ], [ %.1133206, %.preheader171 ], [ %.1133206, %bb.o ], [ %.1133206, %bb.p ], [ %.1133206, %str_prev_ofs.exit ], [ %.1133206, %bb.r ]
  %.4203 = phi i8 [ %.2136, %bb.n ], [ 0, %.preheader171 ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %str_prev_ofs.exit ], [ 0, %bb.r ]
  %.9 = phi i64 [ %i.af, %bb.n ], [ %.0.i, %.preheader171 ], [ %.pre-phi, %bb.r ], [ %.6175, %str_prev_ofs.exit ], [ %.6175, %bb.p ], [ %.6175, %bb.o ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %1, i64 %.9
  %i.av = sub nsw i64 %.0.i, %.9                  ; 6 uses
  %i.aw = select i1 %9, i64 %i.av, i64 %.1133205  ; 6 uses
  %i.ax = icmp slt i64 %i.aw, 0
  %or.cond.i155 = or i1 %i.c, %i.ax
  br i1 %or.cond.i155, label %mem_strndup.exit.thread, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.ay = load ptr, ptr %0, align 8, !tbaa !100
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !108
  %i.ba = add nuw nsw i64 %i.aw, 1
  %.val.i = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bb = tail call ptr %.val.i(i64 noundef %i.ba) #28, !inline_history !8 ; 8 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %mem_strndup.exit.thread, label %.preheader.i156

.preheader.i156:                                  ; preds = %bb.s
  %.not29.i = icmp eq i64 %i.aw, 0
  br i1 %.not29.i, label %mem_strndup.exit.thread165, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i156, %bb.t
  %.022.i = phi i64 [ %i.bg, %bb.t ], [ 0, %.preheader.i156 ] ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %.022.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !48  ; 2 uses
  %.not.i = icmp eq i8 %i.be, 0
  br i1 %.not.i, label %mem_strndup.exit.thread165, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.022.i
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !48
  %i.bg = add nuw nsw i64 %.022.i, 1              ; 2 uses
  %exitcond.not.i157 = icmp eq i64 %i.bg, %i.aw
  br i1 %exitcond.not.i157, label %mem_strndup.exit.thread165, label %.lr.ph.i, !llvm.loop !9

mem_strndup.exit.thread165:                       ; preds = %.lr.ph.i, %bb.t, %.preheader.i156
  %.022.i.lcssa.sink = phi i64 [ %i.aw, %.preheader.i156 ], [ %i.aw, %bb.t ], [ %.022.i, %.lr.ph.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.022.i.lcssa.sink
  store i8 0, ptr %i.bh, align 1, !tbaa !48
  %i.bi = icmp sgt i64 %i.av, 0
  %or.cond186 = select i1 %9, i1 %i.bi, i1 false
  br i1 %or.cond186, label %.lr.ph, label %.thread167

.lr.ph:                                           ; preds = %mem_strndup.exit.thread165, %bb.y
  %.0184 = phi i64 [ %i.bs, %bb.y ], [ 0, %mem_strndup.exit.thread165 ] ; 4 uses
  %i.bj = tail call fastcc i64 @str_next_ofs(ptr noundef nonnull %i.bb, i64 noundef %i.av, i64 noundef %.0184, ptr noundef null) ; 3 uses
  %i.bk = icmp slt i64 %i.bj, 1
  br i1 %i.bk, label %.thread167, label %bb.u

bb.u:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.0184 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !48
  %i.bn = icmp eq i8 %i.bm, %4
  br i1 %i.bn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !48
  %.not152 = icmp eq i8 %i.bp, 0
  br i1 %.not152, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = tail call zeroext i1 %spec.store.select(ptr noundef nonnull %i.bo, i64 noundef %i.bj) #28
  br i1 %i.bq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = sub nsw i64 %i.av, %.0184
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %i.bo, i64 %i.br, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %i.bs = add nuw nsw i64 %i.bj, %.0184           ; 2 uses
  %i.bt = icmp slt i64 %i.bs, %i.av
  br i1 %i.bt, label %.lr.ph, label %.thread167

.thread167:                                       ; preds = %bb.y, %.lr.ph, %mem_strndup.exit.thread165
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %.4203, ptr %i.bu, align 1, !tbaa !110
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %spec.store.select, ptr %i.bv, align 8, !tbaa !111
  store i8 %4, ptr %6, align 8, !tbaa !112
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.av, ptr %i.bw, align 8, !tbaa !113
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !114
  %i.ca = load ptr, ptr %0, align 8, !tbaa !100   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !115
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !108 ; 2 uses
  %.val.i158 = load ptr, ptr %i.cc, align 8, !tbaa !70
  %i.cd = tail call ptr %.val.i158(i64 noundef 32) #28, !inline_history !2 ; 4 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread167
  %i.ce = load ptr, ptr %0, align 8, !tbaa !100
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !108
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  %.val154 = load ptr, ptr %i.cg, align 8, !tbaa !82
  tail call void %.val154(ptr noundef nonnull %i.bb) #28, !inline_history !10
  br label %bb.ac

bb.aa:                                            ; preds = %.thread167
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cc, ptr %i.ch, align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i8 0, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.cd, ptr %i.ci, align 8, !tbaa !116
  store ptr @qword_add_completion_ex, ptr %i.bx, align 8, !tbaa !98
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %6, ptr %i.cj, align 8, !tbaa !102
  call void %2(ptr noundef nonnull %0, ptr noundef nonnull %i.bb) #28
  %i.ck = load ptr, ptr %i.bz, align 8, !tbaa !114
  store ptr %i.ck, ptr %i.bx, align 8, !tbaa !98
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !115
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !102
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !116 ; 5 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %sbuf_free.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !78
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !81
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.val.i.i = load ptr, ptr %i.cr, align 8, !tbaa !82
  call void %.val.i.i(ptr noundef %i.cq) #28, !inline_history !3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !78
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %.val.i159 = load ptr, ptr %i.ct, align 8, !tbaa !82
  call void %.val.i159(ptr noundef nonnull %i.cm) #28, !inline_history !4
  br label %sbuf_free.exit

sbuf_free.exit:                                   ; preds = %bb.aa, %bb.ab
  %i.cu = load ptr, ptr %0, align 8, !tbaa !100
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !108
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  %.val = load ptr, ptr %i.cw, align 8, !tbaa !82
  call void %.val(ptr noundef nonnull %i.bb) #28, !inline_history !10
  br label %bb.ac

bb.ac:                                            ; preds = %sbuf_free.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %mem_strndup.exit.thread

mem_strndup.exit.thread:                          ; preds = %bb.s, %.thread, %bb.ac
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @str_next_ofs(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #5 {
bb.a:
  %.not = icmp ne ptr %0, null
  %i.a = icmp sgt i64 %1, %2
  %or.cond25 = and i1 %.not, %i.a
  br i1 %or.cond25, label %bb.b, label %skip_esc.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %0, i64 %2 ; 5 uses
  %i.c = sub nsw i64 %1, %2                       ; 7 uses
  %i.d = icmp slt i64 %i.c, 2
  br i1 %i.d, label %skip_esc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.b, align 1, !tbaa !48
  %.not66.i = icmp eq i8 %i.e, 27
  br i1 %.not66.i, label %bb.d, label %skip_esc.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !48
  %.fr89.i = freeze i8 %i.g                       ; 2 uses
  %i.h = sext i8 %.fr89.i to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.h, i64 7)
  %.not67.i = icmp eq ptr %memchr.i, null
  %.not87.i = icmp eq i64 %i.c, 2
  %or.cond.i = or i1 %.not87.i, %.not67.i
  br i1 %or.cond.i, label %skip_esc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.not.i = icmp eq i8 %.fr89.i, 91
  br i1 %.not.i, label %.lr.ph.split.us.split.i, label %.lr.ph.split.split.us.i

.lr.ph.split.us.split.i:                          ; preds = %.lr.ph.i, %bb.e
  %.05475.us.i = phi i64 [ %i.i, %bb.e ], [ 2, %.lr.ph.i ] ; 2 uses
  %i.i = add nuw nsw i64 %.05475.us.i, 1          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %.05475.us.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !48    ; 2 uses
  %i.l = icmp sgt i8 %i.k, 63
  %i.m = icmp eq i8 %i.k, 2
  %or.cond116.i = or i1 %i.l, %i.m
  br i1 %or.cond116.i, label %skip_esc.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split.i
  %exitcond.not.i = icmp eq i64 %i.i, %i.c
  br i1 %exitcond.not.i, label %skip_esc.exit.thread, label %.lr.ph.split.us.split.i, !llvm.loop !11

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.i, %bb.h
  %.05475.us76.i = phi i64 [ %i.n, %bb.h ], [ 2, %.lr.ph.i ] ; 3 uses
  %i.n = add nuw nsw i64 %.05475.us76.i, 1        ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %.05475.us76.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !48    ; 2 uses
  switch i8 %i.p, label %bb.f [
    i8 7, label %skip_esc.exit.thread
    i8 2, label %skip_esc.exit.thread
  ]

bb.f:                                             ; preds = %.lr.ph.split.split.us.i
  %i.q = icmp eq i8 %i.p, 27
  %i.r = icmp sgt i64 %i.c, %i.n
  %or.cond.us.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond.us.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  %i.t = load i8, ptr %i.s, align 1, !tbaa !48
  %i.u = icmp eq i8 %i.t, 92
  br i1 %i.u, label %.split83.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %exitcond103.not.i = icmp eq i64 %i.n, %i.c
  br i1 %exitcond103.not.i, label %skip_esc.exit.thread, label %.lr.ph.split.split.us.i, !llvm.loop !11

.split83.us.i:                                    ; preds = %bb.g
  %i.v = add nuw nsw i64 %.05475.us76.i, 2
  br label %skip_esc.exit.thread

skip_esc.exit:                                    ; preds = %bb.c, %bb.b
  %i.w = add nsw i64 %2, 1                        ; 2 uses
  %i.x = icmp sgt i64 %1, %i.w
  br i1 %i.x, label %.lr.ph, label %skip_esc.exit.thread

.lr.ph:                                           ; preds = %skip_esc.exit, %bb.i
  %i.y = phi i64 [ %i.ac, %bb.i ], [ %i.w, %skip_esc.exit ]
end_hunk_0
begin_hunk_1_@edit_line:bb.a
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adl, i64 24
  store i64 %.5.ph.ph.i.i, ptr %i.adp, align 8, !tbaa !403
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adl, i64 32
  store i8 1, ptr %i.adq, align 8, !tbaa !404
  store ptr %.4366.ph.i.i, ptr %i.adl, align 8, !tbaa !405
  br label %hsearch_push.exit275.i.i

hsearch_push.exit275.i.i:                         ; preds = %bb.fh, %bb.fg
  %.16.i.i = phi ptr [ %.4366.ph.i.i, %bb.fg ], [ %i.adl, %bb.fh ]
  call fastcc void @edit_insert_unicode(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %i.vy)
  br label %bb.fk

bb.fi:                                            ; preds = %bb.ff
  %i.adr = load ptr, ptr %i.aa, align 8, !tbaa !143
  %i.ads = getelementptr i8, ptr %i.adr, i64 33
  %.val152.i.i = load i8, ptr %i.ads, align 1, !tbaa !159, !range !136, !noundef !137
  %i.adt = trunc nuw i8 %.val152.i.i to i1
  br i1 %i.adt, label %.outer.outer.i.i.backedge, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.adu = load ptr, ptr @stderr, align 8, !tbaa !93
  %fputc.i276.i.i = call i32 @fputc(i32 7, ptr %i.adu) ; 0 uses
  %i.adv = load ptr, ptr @stderr, align 8, !tbaa !93
  %i.adw = call i32 @fflush(ptr noundef %i.adv)   ; 0 uses
  br label %.outer.outer.i.i.backedge

bb.fk:                                            ; preds = %hsearch_push.exit275.i.i, %hsearch_push.exit273.i.i
  %.7369.i.i = phi ptr [ %.15.i.i, %hsearch_push.exit273.i.i ], [ %.16.i.i, %hsearch_push.exit275.i.i ] ; 3 uses
  %i.adx = load ptr, ptr %i.bv, align 8, !tbaa !161 ; 2 uses
  %i.ady = load ptr, ptr %6, align 8, !tbaa !217  ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aea = load i64, ptr %i.adz, align 8, !tbaa !79 ; 2 uses
  %i.aeb = icmp slt i64 %i.aea, 0
  br i1 %i.aeb, label %sbuf_string.exit280.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aec = load ptr, ptr %i.ady, align 8, !tbaa !81 ; 2 uses
  %i.aed = icmp eq ptr %i.aec, null
  %spec.select.i.i278.i.i = select i1 %i.aed, ptr @.str.3, ptr %i.aec
  br label %sbuf_string.exit280.i.i

sbuf_string.exit280.i.i:                          ; preds = %bb.fl, %bb.fk
  %.0.i.i279.i.i = phi ptr [ %spec.select.i.i278.i.i, %bb.fl ], [ null, %bb.fk ]
  %i.aee = load i64, ptr %i.adx, align 8, !tbaa !166 ; 3 uses
  %i.aef = icmp slt i64 %.4355.ph.i.i.ph, %i.aee
  br i1 %i.aef, label %history_get.exit.lr.ph.i281.i.i, label %.loopexit.i.i

history_get.exit.lr.ph.i281.i.i:                  ; preds = %sbuf_string.exit280.i.i
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !168
  %i.aei = getelementptr [8 x i8], ptr %i.aeh, i64 %i.aee
  %i.aej = icmp sgt i64 %.4355.ph.i.i.ph, -1
  call void @llvm.assume(i1 %i.aej)
  br label %history_get.exit.i282.i.i

history_get.exit.i282.i.i:                        ; preds = %bb.fm, %history_get.exit.lr.ph.i281.i.i
  %.058.i283.i.i = phi i64 [ %.4355.ph.i.i.ph, %history_get.exit.lr.ph.i281.i.i ], [ %i.aeo, %bb.fm ] ; 3 uses
  %i.aek = xor i64 %.058.i283.i.i, -1
  %i.ael = getelementptr [8 x i8], ptr %i.aei, i64 %i.aek
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !87 ; 2 uses
  %i.aen = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.aem, ptr noundef nonnull readonly dereferenceable(1) %.0.i.i279.i.i) #29 ; 2 uses
  %.not35.i284.i.i = icmp eq ptr %i.aen, null
  br i1 %.not35.i284.i.i, label %bb.fm, label %.thread46.i285.i.i

bb.fm:                                            ; preds = %history_get.exit.i282.i.i
  %i.aeo = add nuw nsw i64 %.058.i283.i.i, 1      ; 2 uses
  %exitcond.not.i289.i.i = icmp eq i64 %i.aeo, %i.aee
  br i1 %exitcond.not.i289.i.i, label %.loopexit.i.i, label %history_get.exit.i282.i.i, !llvm.loop !385

.thread46.i285.i.i:                               ; preds = %history_get.exit.i282.i.i
  %i.aep = ptrtoint ptr %i.aem to i64
  %i.aeq = ptrtoint ptr %i.aen to i64
  %i.aer = sub i64 %i.aeq, %i.aep
  %i.aes = icmp eq ptr %i.ady, null
  %spec.select427.i.i = select i1 %i.aes, i64 0, i64 %i.aea
  br label %.outer.outer.i.i.backedge

.loopexit.i.i:                                    ; preds = %bb.fm, %sbuf_string.exit280.i.i
  %i.aet = load ptr, ptr %i.aa, align 8, !tbaa !143
  %i.aeu = getelementptr i8, ptr %i.aet, i64 33
  %.val.i35.i = load i8, ptr %i.aeu, align 1, !tbaa !159, !range !136, !noundef !137
  %i.aev = trunc nuw i8 %.val.i35.i to i1
  br i1 %i.aev, label %.outer.outer.i.i.backedge, label %bb.fn

bb.fn:                                            ; preds = %.loopexit.i.i
  %i.aew = load ptr, ptr @stderr, align 8, !tbaa !93
  %fputc.i293.i.i = call i32 @fputc(i32 7, ptr %i.aew) ; 0 uses
  %i.aex = load ptr, ptr @stderr, align 8, !tbaa !93
  %i.aey = call i32 @fflush(ptr noundef %i.aex)   ; 0 uses
  br label %.outer.outer.i.i.backedge

.outer.outer.i.i.backedge:                        ; preds = %bb.fn, %.loopexit.i.i, %.thread46.i285.i.i, %bb.fj, %bb.fi, %sbuf_delete_char_before.exit.i.i.i, %hsearch_pop.exit.i.i, %bb.el
  %.4366.ph.ph.i.i.be = phi ptr [ null, %bb.el ], [ %i.yz, %sbuf_delete_char_before.exit.i.i.i ], [ %i.yz, %hsearch_pop.exit.i.i ], [ %.7369.i.i, %.loopexit.i.i ], [ %.4366.ph.i.i, %bb.fj ], [ %.7369.i.i, %bb.fn ], [ %.4366.ph.i.i, %bb.fi ], [ %.7369.i.i, %.thread46.i285.i.i ]
  %.4355.ph.ph.i.i.be = phi i64 [ %.4355.ph.i.i.ph, %bb.el ], [ %i.zb, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zb, %hsearch_pop.exit.i.i ], [ %.4355.ph.i.i.ph, %.loopexit.i.i ], [ %.4355.ph.i.i.ph, %bb.fj ], [ %.4355.ph.i.i.ph, %bb.fn ], [ %.4355.ph.i.i.ph, %bb.fi ], [ %.058.i283.i.i, %.thread46.i285.i.i ]
  %.4347.ph.ph.i.i.be = phi i64 [ %.4347.ph.i.i.ph, %bb.el ], [ %i.zd, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zd, %hsearch_pop.exit.i.i ], [ %.4347.ph.i.i.ph, %.loopexit.i.i ], [ %.4347.ph.i.i.ph, %bb.fj ], [ %.4347.ph.i.i.ph, %bb.fn ], [ %.4347.ph.i.i.ph, %bb.fi ], [ %i.aer, %.thread46.i285.i.i ]
  %.5.ph.ph.i.i.be = phi i64 [ %.5.ph.ph.i.i, %bb.el ], [ %i.zf, %sbuf_delete_char_before.exit.i.i.i ], [ %i.zf, %hsearch_pop.exit.i.i ], [ %.5.ph.ph.i.i, %.loopexit.i.i ], [ %.5.ph.ph.i.i, %bb.fj ], [ %.5.ph.ph.i.i, %bb.fn ], [ %.5.ph.ph.i.i, %bb.fi ], [ %spec.select427.i.i, %.thread46.i285.i.i ]
  br label %.outer.outer.i.i

editor_restore.exit:                              ; preds = %sbuf_replace.exit.i, %bb.dz, %sbuf_len.exit.i.i203
  store i8 0, ptr %i.ca, align 1, !tbaa !232
  %.not5.i.i.i = icmp eq ptr %.4366.ph.i.i, null
  br i1 %.not5.i.i.i, label %hsearch_done.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %editor_restore.exit
  %i.aez = load ptr, ptr %0, align 8, !tbaa !108
  %i.afa = getelementptr i8, ptr %i.aez, i64 16
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fo, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %.4366.ph.i.i, %.lr.ph.i.i.i ], [ %i.afb, %bb.fo ] ; 2 uses
  %i.afb = load ptr, ptr %.06.i.i.i, align 8, !tbaa !405 ; 2 uses
  %.val.i295.i.i = load ptr, ptr %i.afa, align 8, !tbaa !82
  call void %.val.i295.i.i(ptr noundef nonnull %.06.i.i.i) #28, !inline_history !392
  %.not.i296.i.i = icmp eq ptr %i.afb, null
  br i1 %.not.i296.i.i, label %hsearch_done.exit.i.i, label %bb.fo, !llvm.loop !393

hsearch_done.exit.i.i:                            ; preds = %bb.fo, %editor_restore.exit
  store ptr %i.rb, ptr %i.aj, align 8, !tbaa !226
  %i.afc = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.afd = icmp eq ptr %i.afc, null
  br i1 %i.afd, label %bb.fp, label %ic_get_env.exit.thread6.i297.i.i

bb.fp:                                            ; preds = %hsearch_done.exit.i.i
  %i.afe = call fastcc ptr @ic_env_create(ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  store ptr %i.afe, ptr @rpenv, align 8, !tbaa !129
  %.not.i.i299.i.i = icmp eq ptr %i.afe, null
  br i1 %.not.i.i299.i.i, label %ic_enable_hint.exit302.i.i, label %ic_get_env.exit.i300.i.i

ic_get_env.exit.i300.i.i:                         ; preds = %bb.fp
  %i.aff = call i32 @atexit(ptr noundef nonnull @ic_atexit) #28 ; 0 uses
  %.pre.i.i301.i.i = load ptr, ptr @rpenv, align 8, !tbaa !129 ; 2 uses
  %i.afg = icmp eq ptr %.pre.i.i301.i.i, null
  br i1 %i.afg, label %ic_enable_hint.exit302.i.i, label %ic_get_env.exit.thread6.i297.i.i

ic_get_env.exit.thread6.i297.i.i:                 ; preds = %ic_get_env.exit.i300.i.i, %hsearch_done.exit.i.i
  %i.afh = phi ptr [ %.pre.i.i301.i.i, %ic_get_env.exit.i300.i.i ], [ %i.afc, %hsearch_done.exit.i.i ]
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 112
  store i8 %i.ra, ptr %i.afi, align 8, !tbaa !174
  br label %ic_enable_hint.exit302.i.i

ic_enable_hint.exit302.i.i:                       ; preds = %ic_get_env.exit.thread6.i297.i.i, %ic_get_env.exit.i300.i.i, %bb.fp
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_history_search_with_current_word.exit

edit_history_search_with_current_word.exit:       ; preds = %bb.cf, %bb.cg, %ic_enable_hint.exit302.i.i
  %i.afj = load ptr, ptr %0, align 8, !tbaa !108
  %i.afk = getelementptr i8, ptr %i.afj, i64 16
  %.val.i204 = load ptr, ptr %i.afk, align 8, !tbaa !82
  call void %.val.i204(ptr noundef %.1.i) #28, !inline_history !394
  br label %edit_multiline_eol.exit.backedge

bb.fq:                                            ; preds = %bb.bh
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1)
  br label %edit_multiline_eol.exit.backedge

bb.fr:                                            ; preds = %bb.bh
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef -1)
  br label %edit_multiline_eol.exit.backedge

bb.fs:                                            ; preds = %bb.bh
  %i.afl = load i64, ptr %i.af, align 8, !tbaa !223
  %i.afm = load ptr, ptr %i.aa, align 8, !tbaa !143
  %i.afn = getelementptr i8, ptr %i.afm, i64 16
  %.val.i208 = load i64, ptr %i.afn, align 8, !tbaa !204
  %i.afo = add nsw i64 %.val.i208, -1
  store i64 %i.afo, ptr %i.af, align 8, !tbaa !223
  call fastcc void @edit_clear(ptr noundef nonnull %0, ptr noundef nonnull %6)
  store i64 %i.afl, ptr %i.af, align 8, !tbaa !223
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.ft:                                            ; preds = %bb.bh, %bb.bh
  call fastcc void @editor_restore(ptr noundef nonnull %6, ptr noundef %i.al, ptr noundef nonnull %i.am)
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.fu:                                            ; preds = %bb.bh
  call fastcc void @editor_restore(ptr noundef nonnull %6, ptr noundef %i.am, ptr noundef nonnull %i.al)
  store i8 0, ptr %i.ah, align 8, !tbaa !225
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.fv:                                            ; preds = %bb.bh
  call fastcc void @edit_show_help(ptr noundef %0, ptr noundef %6)
  br label %edit_multiline_eol.exit.backedge

bb.fw:                                            ; preds = %bb.bh, %bb.bh
  %i.afp = load ptr, ptr %6, align 8, !tbaa !217
  %i.afq = load i64, ptr %i.ae, align 8, !tbaa !222 ; 5 uses
  %.val.i209 = load ptr, ptr %i.afp, align 8, !tbaa !81 ; 4 uses
  %i.afr = icmp ne ptr %.val.i209, null
  %i.afs = icmp sgt i64 %i.afq, 0
  %or.cond.i.i.i.i = and i1 %i.afs, %i.afr
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.i.i.preheader, label %edit_multiline_eol.exit.backedge

edit_multiline_eol.exit.backedge:                 ; preds = %bb.fw, %bb.ko, %bb.kr, %bb.kq, %sbuf_swap_char.exit.i, %sbuf_len.exit.i362, %bb.kb, %sbuf_delete_from_to.exit.i353, %sbuf_find_line_end.exit.i348, %sbuf_find_line_start.exit.i345, %bb.jl, %sbuf_find_line_end.exit.thread.i, %sbuf_find_line_start.exit.i, %sbuf_delete_from_to.exit.i, %bb.hv, %sbuf_delete_char_at.exit.i266, %sbuf_len.exit.i258, %sbuf_delete_char_before.exit.i, %bb.ha, %bb.gz, %sbuf_string.exit.i242, %bb.gt, %bb.gs, %bb.gn, %sbuf_find_line_end.exit.i, %bb.fx, %sbuf_clear.exit.i, %sbuf_len.exit.i180, %bb.bk, %sbuf_delete_char_at.exit.i, %sbuf_len.exit.i171, %sbuf_delete_at.exit.i, %sbuf_string.exit.i, %bb.al, %bb.kl, %bb.km, %bb.gr, %bb.ga, %bb.gb, %edit_delete_to_start_of_word.exit, %edit_delete_to_start_of_ws_word.exit, %edit_cursor_to_end.exit, %bb.gu, %bb.go, %edit_cursor_line_start.exit, %edit_cursor_row_down.exit, %edit_cursor_row_up.exit, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %edit_history_search_with_current_word.exit, %bb.ca, %bb.bz, %bb.by
  br label %edit_multiline_eol.exit

.preheader.i.i.i.i.preheader:                     ; preds = %bb.fw
  %exitcond.not.i.i.i.i1128 = icmp eq i64 %i.afq, 1
  br i1 %exitcond.not.i.i.i.i1128, label %sbuf_prev.exit.i, label %.lr.ph1130

.preheader.i.i.i.i:                               ; preds = %.lr.ph1130
  %i.aft = add nuw nsw i64 %.021.i.i.i.i1129, 1   ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.aft, %i.afq
  br i1 %exitcond.not.i.i.i.i, label %sbuf_prev.exit.i, label %.lr.ph1130

.lr.ph1130:                                       ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
  %.021.i.i.i.i1129 = phi i64 [ %i.aft, %.preheader.i.i.i.i ], [ 1, %.preheader.i.i.i.i.preheader ] ; 3 uses
  %i.afu = sub nuw nsw i64 %i.afq, %.021.i.i.i.i1129 ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.val.i209, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !48
  %or.cond4.i.i.i.i = icmp sgt i8 %i.afw, -65
  br i1 %or.cond4.i.i.i.i, label %sbuf_prev.exit.thread9.i, label %.preheader.i.i.i.i

sbuf_prev.exit.thread9.i:                         ; preds = %.lr.ph1130
  %i.afx = getelementptr inbounds nuw i8, ptr %.val.i209, i64 %i.afu
  %i.afy = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.afx, i64 noundef %.021.i.i.i.i1129) ; 0 uses
  br label %bb.fx

sbuf_prev.exit.i:                                 ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader
  %7 = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %.val.i209, i64 noundef %i.afq) ; 0 uses
  br label %bb.fx

bb.fx:                                            ; preds = %sbuf_prev.exit.i, %sbuf_prev.exit.thread9.i
  %i.afz = phi i64 [ %i.afu, %sbuf_prev.exit.thread9.i ], [ 0, %sbuf_prev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.val.i.i211 = load ptr, ptr %i.aj, align 8, !tbaa !226
  %i.aga = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.agb = call fastcc i64 @bbcode_column_width(ptr noundef %i.aga, ptr noundef %.val.i.i211)
  %i.agc = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.agd = load ptr, ptr %.in.i, align 8, !tbaa !147
  %i.age = call fastcc i64 @bbcode_column_width(ptr noundef %i.agc, ptr noundef %i.agd)
  %i.agf = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.agg = load ptr, ptr %i.cd, align 8, !tbaa !157
  %i.agh = call fastcc i64 @bbcode_column_width(ptr noundef %i.agf, ptr noundef %i.agg) ; 2 uses
  %i.agi = add nsw i64 %i.age, %i.agb             ; 2 uses
  %i.agj = load i8, ptr %i.ce, align 2, !tbaa !173, !range !136, !noundef !137
  %i.agk = trunc nuw i8 %i.agj to i1
  %i.agl = call i64 @llvm.smax.i64(i64 %i.agi, i64 %i.agh)
  %i.agm = select i1 %i.agk, i64 %i.agh, i64 %i.agl
  %i.agn = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.ago = load i64, ptr %i.ad, align 8, !tbaa !221
  %i.agp = load i64, ptr %i.ae, align 8, !tbaa !222
  %.val6.i.i212 = load ptr, ptr %i.agn, align 8, !tbaa !81
  %i.agq = getelementptr i8, ptr %i.agn, i64 16
  %.val7.i.i213 = load i64, ptr %i.agq, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.agp, ptr %i.e, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.agr = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i.i212, i64 noundef %.val7.i.i213, i64 noundef %i.ago, i64 noundef %i.agi, i64 noundef %i.agm, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.e, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.afz, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %edit_multiline_eol.exit.backedge

bb.fy:                                            ; preds = %bb.bh, %bb.bh
  %i.ags = load i64, ptr %i.ae, align 8, !tbaa !222
  %i.agt = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.agu = icmp eq ptr %i.agt, null
  br i1 %i.agu, label %sbuf_len.exit215, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 16
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !79
  br label %sbuf_len.exit215

sbuf_len.exit215:                                 ; preds = %bb.fy, %bb.fz
  %.0.i214 = phi i64 [ %i.agw, %bb.fz ], [ 0, %bb.fy ]
  %i.agx = icmp eq i64 %i.ags, %.0.i214
  br i1 %i.agx, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %sbuf_len.exit215
  call fastcc void @edit_generate_completions(ptr noundef %0, ptr noundef %6, i1 noundef zeroext false)
  br label %edit_multiline_eol.exit.backedge

bb.gb:                                            ; preds = %sbuf_len.exit215
  call fastcc void @edit_cursor_right(ptr noundef %0, ptr noundef %6)
  br label %edit_multiline_eol.exit.backedge

bb.gc:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.val.i.i216 = load ptr, ptr %i.aj, align 8, !tbaa !226
  %i.agy = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.agz = call fastcc i64 @bbcode_column_width(ptr noundef %i.agy, ptr noundef %.val.i.i216)
  %i.aha = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.ahb = load ptr, ptr %.in.i, align 8, !tbaa !147
  %i.ahc = call fastcc i64 @bbcode_column_width(ptr noundef %i.aha, ptr noundef %i.ahb)
  %i.ahd = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.ahe = load ptr, ptr %i.cd, align 8, !tbaa !157
  %i.ahf = call fastcc i64 @bbcode_column_width(ptr noundef %i.ahd, ptr noundef %i.ahe) ; 2 uses
  %i.ahg = add nsw i64 %i.ahc, %i.agz             ; 2 uses
  %i.ahh = load i8, ptr %i.ce, align 2, !tbaa !173, !range !136, !noundef !137
  %i.ahi = trunc nuw i8 %i.ahh to i1
  %i.ahj = call i64 @llvm.smax.i64(i64 %i.ahg, i64 %i.ahf)
  %i.ahk = select i1 %i.ahi, i64 %i.ahf, i64 %i.ahj
  %i.ahl = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.ahm = load i64, ptr %i.ad, align 8, !tbaa !221
  %i.ahn = load i64, ptr %i.ae, align 8, !tbaa !222
  %.val6.i.i217 = load ptr, ptr %i.ahl, align 8, !tbaa !81
  %i.aho = getelementptr i8, ptr %i.ahl, i64 16
  %.val7.i.i218 = load i64, ptr %i.aho, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.ahn, ptr %i.d, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %i.ahp = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i.i217, i64 noundef %.val7.i.i218, i64 noundef %i.ahm, i64 noundef %i.ahg, i64 noundef %i.ahk, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.d, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ahq = load i64, ptr %3, align 8, !tbaa !239  ; 2 uses
  %i.ahr = icmp eq i64 %i.ahq, 0
  br i1 %i.ahr, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 1)
  br label %edit_cursor_row_up.exit

bb.ge:                                            ; preds = %bb.gc
  %i.ahs = add nsw i64 %i.ahq, -1
  %i.aht = load i64, ptr %i.ci, align 8, !tbaa !240
  call fastcc void @edit_set_pos_at_rowcol(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %i.ahs, i64 noundef %i.aht)
  br label %edit_cursor_row_up.exit

edit_cursor_row_up.exit:                          ; preds = %bb.gd, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %edit_multiline_eol.exit.backedge

bb.gf:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %.val.i.i219 = load ptr, ptr %i.aj, align 8, !tbaa !226
  %i.ahu = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.ahv = call fastcc i64 @bbcode_column_width(ptr noundef %i.ahu, ptr noundef %.val.i.i219)
  %i.ahw = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.ahx = load ptr, ptr %.in.i, align 8, !tbaa !147
  %i.ahy = call fastcc i64 @bbcode_column_width(ptr noundef %i.ahw, ptr noundef %i.ahx)
  %i.ahz = load ptr, ptr %i.bh, align 8, !tbaa !148
  %i.aia = load ptr, ptr %i.cd, align 8, !tbaa !157
  %i.aib = call fastcc i64 @bbcode_column_width(ptr noundef %i.ahz, ptr noundef %i.aia) ; 2 uses
  %i.aic = add nsw i64 %i.ahy, %i.ahv             ; 2 uses
  %i.aid = load i8, ptr %i.ce, align 2, !tbaa !173, !range !136, !noundef !137
  %i.aie = trunc nuw i8 %i.aid to i1
  %i.aif = call i64 @llvm.smax.i64(i64 %i.aic, i64 %i.aib)
  %i.aig = select i1 %i.aie, i64 %i.aib, i64 %i.aif
  %i.aih = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.aii = load i64, ptr %i.ad, align 8, !tbaa !221
  %i.aij = load i64, ptr %i.ae, align 8, !tbaa !222
  %.val6.i.i220 = load ptr, ptr %i.aih, align 8, !tbaa !81
  %i.aik = getelementptr i8, ptr %i.aih, i64 16
  %.val7.i.i221 = load i64, ptr %i.aik, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.aij, ptr %i.c, align 8, !tbaa !88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.ail = call fastcc i64 @str_for_each_row(ptr noundef %.val6.i.i220, i64 noundef %.val7.i.i221, i64 noundef %i.aii, i64 noundef %i.aic, i64 noundef %i.aig, ptr noundef nonnull @str_get_current_pos_iter, ptr noundef %i.c, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aim = load i64, ptr %2, align 8, !tbaa !239
  %i.ain = add nsw i64 %i.aim, 1                  ; 2 uses
  %.not.i222 = icmp slt i64 %i.ain, %i.ail
  br i1 %.not.i222, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef -1)
  br label %edit_cursor_row_down.exit

bb.gh:                                            ; preds = %bb.gf
  %i.aio = load i64, ptr %i.ch, align 8, !tbaa !240
  call fastcc void @edit_set_pos_at_rowcol(ptr noundef nonnull %0, ptr noundef nonnull %6, i64 noundef %i.ain, i64 noundef %i.aio)
  br label %edit_cursor_row_down.exit

edit_cursor_row_down.exit:                        ; preds = %bb.gg, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %edit_multiline_eol.exit.backedge

bb.gi:                                            ; preds = %bb.bh, %bb.bh
  %i.aip = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %.val.i223 = load ptr, ptr %i.aip, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i224 = icmp eq ptr %.val.i223, null
  br i1 %.not.i.i.i224, label %edit_cursor_line_start.exit, label %.thread.split.i.preheader.i.i.i

.thread.split.i.preheader.i.i.i:                  ; preds = %bb.gi
  %i.aiq = getelementptr i8, ptr %i.aip, i64 16
  %.val6.i = load i64, ptr %i.aiq, align 8, !tbaa !79
  %i.air = load i64, ptr %i.ae, align 8, !tbaa !222
  %spec.select.i.i.i.i = call i64 @llvm.smin.i64(i64 %i.air, i64 %.val6.i)
  %spec.store.select.i.i.i.i = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i, i64 0)
  br label %.thread.split.i.i.i.i

.thread.split.i.i.i.i:                            ; preds = %char_is_linefeed.exit.thread.i.i.i, %.thread.split.i.preheader.i.i.i
  %.3.i.i.i.i = phi i64 [ %i.aja, %char_is_linefeed.exit.thread.i.i.i ], [ %spec.store.select.i.i.i.i, %.thread.split.i.preheader.i.i.i ] ; 10 uses
  switch i64 %.3.i.i.i.i, label %.lr.ph1125 [
    i64 0, label %edit_cursor_line_start.exit
    i64 1, label %str_prev_ofs.exit49.i.i.i.i
  ]

.preheader.i45.i.i.i.i:                           ; preds = %.lr.ph1125
  %i.ais = add nuw nsw i64 %.021.i46.i.i.i.i1124, 1 ; 2 uses
  %exitcond.not.i47.i.i.i.i = icmp eq i64 %i.ais, %.3.i.i.i.i
  br i1 %exitcond.not.i47.i.i.i.i, label %str_prev_ofs.exit49.i.i.i.i, label %.lr.ph1125

.lr.ph1125:                                       ; preds = %.thread.split.i.i.i.i, %.preheader.i45.i.i.i.i
  %.021.i46.i.i.i.i1124 = phi i64 [ %i.ais, %.preheader.i45.i.i.i.i ], [ 1, %.thread.split.i.i.i.i ] ; 3 uses
  %i.ait = sub nuw nsw i64 %.3.i.i.i.i, %.021.i46.i.i.i.i1124
  %i.aiu = getelementptr inbounds nuw i8, ptr %.val.i223, i64 %i.ait
  %i.aiv = load i8, ptr %i.aiu, align 1, !tbaa !48
  %or.cond4.i48.i.i.i.i = icmp sgt i8 %i.aiv, -65
  br i1 %or.cond4.i48.i.i.i.i, label %str_prev_ofs.exit49.i.i.i.i, label %.preheader.i45.i.i.i.i

str_prev_ofs.exit49.i.i.i.i:                      ; preds = %.preheader.i45.i.i.i.i, %.lr.ph1125, %.thread.split.i.i.i.i
  %.2.i44.i.i.i.i = phi i64 [ %.3.i.i.i.i, %.thread.split.i.i.i.i ], [ %.3.i.i.i.i, %.preheader.i45.i.i.i.i ], [ %.021.i46.i.i.i.i1124, %.lr.ph1125 ] ; 2 uses
  %i.aiw = icmp eq i64 %.2.i44.i.i.i.i, 1
  br i1 %i.aiw, label %char_is_linefeed.exit.i.i.i, label %char_is_linefeed.exit.thread.i.i.i

char_is_linefeed.exit.i.i.i:                      ; preds = %str_prev_ofs.exit49.i.i.i.i
  %i.aix = getelementptr inbounds nuw i8, ptr %.val.i223, i64 %.3.i.i.i.i
  %i.aiy = getelementptr inbounds i8, ptr %i.aix, i64 -1
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !48
  switch i8 %i.aiz, label %char_is_linefeed.exit.thread.i.i.i [
    i8 10, label %edit_cursor_line_start.exit
    i8 0, label %edit_cursor_line_start.exit
  ]

char_is_linefeed.exit.thread.i.i.i:               ; preds = %char_is_linefeed.exit.i.i.i, %str_prev_ofs.exit49.i.i.i.i
  %i.aja = sub nsw i64 %.3.i.i.i.i, %.2.i44.i.i.i.i ; 2 uses
  %i.ajb = icmp sgt i64 %i.aja, 0
  br i1 %i.ajb, label %.thread.split.i.i.i.i, label %edit_cursor_line_start.exit, !llvm.loop !33

edit_cursor_line_start.exit:                      ; preds = %char_is_linefeed.exit.i.i.i, %char_is_linefeed.exit.i.i.i, %char_is_linefeed.exit.thread.i.i.i, %.thread.split.i.i.i.i, %bb.gi
  %.235.split.i.i.i.i = phi i64 [ 0, %bb.gi ], [ %.3.i.i.i.i, %.thread.split.i.i.i.i ], [ %.3.i.i.i.i, %char_is_linefeed.exit.i.i.i ], [ 0, %char_is_linefeed.exit.thread.i.i.i ], [ %.3.i.i.i.i, %char_is_linefeed.exit.i.i.i ]
  store i64 %.235.split.i.i.i.i, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gj:                                            ; preds = %bb.bh, %bb.bh
  %i.ajc = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %.val.i226 = load ptr, ptr %i.ajc, align 8, !tbaa !81 ; 3 uses
  %i.ajd = getelementptr i8, ptr %i.ajc, i64 16
  %.val6.i227 = load i64, ptr %i.ajd, align 8, !tbaa !79 ; 7 uses
  %i.aje = icmp eq ptr %.val.i226, null
  %i.ajf = icmp slt i64 %.val6.i227, 0
  %or.cond.i.i.i.i228 = or i1 %i.aje, %i.ajf
  br i1 %or.cond.i.i.i.i228, label %sbuf_find_line_end.exit.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ajg = load i64, ptr %i.ae, align 8, !tbaa !222
  %spec.select.i.i.i.i229 = call i64 @llvm.smin.i64(i64 %i.ajg, i64 %.val6.i227)
  %spec.store.select.i.i.i.i230 = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i229, i64 0)
  br label %bb.gl

bb.gl:                                            ; preds = %char_is_linefeed.exit.thread.i.i.i231, %bb.gk
  %.2.i.i.i.i = phi i64 [ %spec.store.select.i.i.i.i230, %bb.gk ], [ %i.ajm, %char_is_linefeed.exit.thread.i.i.i231 ] ; 5 uses
  %i.ajh = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val.i226, i64 noundef %.val6.i227, i64 noundef %.2.i.i.i.i, ptr noundef null) ; 3 uses
  %i.aji = icmp slt i64 %i.ajh, 1
  br i1 %i.aji, label %sbuf_find_line_end.exit.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ajj = icmp eq i64 %i.ajh, 1
  br i1 %i.ajj, label %char_is_linefeed.exit.i.i.i232, label %char_is_linefeed.exit.thread.i.i.i231

char_is_linefeed.exit.i.i.i232:                   ; preds = %bb.gm
  %i.ajk = getelementptr inbounds nuw i8, ptr %.val.i226, i64 %.2.i.i.i.i
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !48
  switch i8 %i.ajl, label %char_is_linefeed.exit.thread.i.i.i231 [
    i8 10, label %sbuf_find_line_end.exit.i
    i8 0, label %sbuf_find_line_end.exit.i
  ]

char_is_linefeed.exit.thread.i.i.i231:            ; preds = %char_is_linefeed.exit.i.i.i232, %bb.gm
  %i.ajm = add nuw nsw i64 %i.ajh, %.2.i.i.i.i    ; 2 uses
  %i.ajn = icmp slt i64 %i.ajm, %.val6.i227
  br i1 %i.ajn, label %bb.gl, label %sbuf_find_line_end.exit.i, !llvm.loop !34

sbuf_find_line_end.exit.i:                        ; preds = %char_is_linefeed.exit.thread.i.i.i231, %char_is_linefeed.exit.i.i.i232, %char_is_linefeed.exit.i.i.i232, %bb.gl, %bb.gj
  %i.ajo = phi i64 [ %.val6.i227, %bb.gj ], [ %.2.i.i.i.i, %char_is_linefeed.exit.i.i.i232 ], [ %.2.i.i.i.i, %char_is_linefeed.exit.i.i.i232 ], [ %.val6.i227, %bb.gl ], [ %.val6.i227, %char_is_linefeed.exit.thread.i.i.i231 ] ; 2 uses
  %i.ajp = icmp slt i64 %i.ajo, 0
  br i1 %i.ajp, label %edit_multiline_eol.exit.backedge, label %bb.gn

bb.gn:                                            ; preds = %sbuf_find_line_end.exit.i
  store i64 %i.ajo, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.go:                                            ; preds = %bb.bh, %bb.bh, %bb.bh
  %i.ajq = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.ajr = load i64, ptr %i.ae, align 8, !tbaa !222
  %.val.i233 = load ptr, ptr %i.ajq, align 8, !tbaa !81
  %i.ajs = getelementptr i8, ptr %i.ajq, i64 16
  %.val6.i234 = load i64, ptr %i.ajs, align 8, !tbaa !79
  %i.ajt = call fastcc i64 @sbuf_find_word_start(ptr %.val.i233, i64 %.val6.i234, i64 noundef %i.ajr)
  store i64 %i.ajt, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gp:                                            ; preds = %bb.bh, %bb.bh, %bb.bh
  %i.aju = load i64, ptr %i.ae, align 8, !tbaa !222 ; 2 uses
  %i.ajv = load ptr, ptr %6, align 8, !tbaa !217  ; 4 uses
  %i.ajw = icmp eq ptr %i.ajv, null
  br i1 %i.ajw, label %sbuf_len.exit236, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 16
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !79
  br label %sbuf_len.exit236

sbuf_len.exit236:                                 ; preds = %bb.gp, %bb.gq
  %.0.i235 = phi i64 [ %i.ajy, %bb.gq ], [ 0, %bb.gp ]
  %i.ajz = icmp eq i64 %i.aju, %.0.i235
  br i1 %i.ajz, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %sbuf_len.exit236
  call fastcc void @edit_generate_completions(ptr noundef %0, ptr noundef %6, i1 noundef zeroext false)
  br label %edit_multiline_eol.exit.backedge

bb.gs:                                            ; preds = %sbuf_len.exit236
  %.val.i237 = load ptr, ptr %i.ajv, align 8, !tbaa !81
  %i.aka = getelementptr i8, ptr %i.ajv, i64 16
  %.val6.i238 = load i64, ptr %i.aka, align 8, !tbaa !79
  %i.akb = call fastcc i64 @sbuf_find_word_end(ptr %.val.i237, i64 %.val6.i238, i64 noundef %i.aju) ; 2 uses
  %i.akc = icmp slt i64 %i.akb, 0
  br i1 %i.akc, label %edit_multiline_eol.exit.backedge, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  store i64 %i.akb, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gu:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  store i64 0, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gv:                                            ; preds = %bb.bh, %bb.bh, %bb.bh, %bb.bh
  %i.akd = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.ake = icmp eq ptr %i.akd, null
  br i1 %i.ake, label %edit_cursor_to_end.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 16
  %i.akg = load i64, ptr %i.akf, align 8, !tbaa !79
  br label %edit_cursor_to_end.exit

edit_cursor_to_end.exit:                          ; preds = %bb.gv, %bb.gw
  %.0.i.i240 = phi i64 [ %i.akg, %bb.gw ], [ 0, %bb.gv ]
  store i64 %.0.i.i240, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.gx:                                            ; preds = %bb.bh
  %i.akh = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !79
  %i.akk = icmp slt i64 %i.akj, 0
  br i1 %i.akk, label %sbuf_string.exit.i242, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.akl = load ptr, ptr %i.akh, align 8, !tbaa !81 ; 2 uses
  %i.akm = icmp eq ptr %i.akl, null
  %spec.select.i.i.i241 = select i1 %i.akm, ptr @.str.3, ptr %i.akl
  br label %sbuf_string.exit.i242

sbuf_string.exit.i242:                            ; preds = %bb.gy, %bb.gx
  %.0.i.i.i243 = phi ptr [ %spec.select.i.i.i241, %bb.gy ], [ null, %bb.gx ]
  %i.akn = load i64, ptr %i.ae, align 8, !tbaa !222
  %.val.i244 = load ptr, ptr %i.cg, align 8, !tbaa !181 ; 2 uses
  %i.ako = icmp eq ptr %.val.i244, null
  %spec.select.i.i245 = select i1 %i.ako, ptr @.str.267, ptr %.val.i244
  %i.akp = call fastcc i64 @find_matching_brace(ptr noundef %.0.i.i.i243, i64 noundef %i.akn, ptr noundef nonnull %spec.select.i.i245, ptr noundef null) ; 2 uses
  %i.akq = icmp slt i64 %i.akp, 0
  br i1 %i.akq, label %edit_multiline_eol.exit.backedge, label %bb.gz

bb.gz:                                            ; preds = %sbuf_string.exit.i242
  store i64 %i.akp, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.ha:                                            ; preds = %bb.bh
  %i.akr = load i64, ptr %i.ae, align 8, !tbaa !222 ; 3 uses
  %i.aks = icmp slt i64 %i.akr, 1
  br i1 %i.aks, label %edit_multiline_eol.exit.backedge, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.akt = load i8, ptr %i.ca, align 1, !tbaa !232, !range !136, !noundef !137
  %i.aku = trunc nuw i8 %i.akt to i1
  br i1 %i.aku, label %editor_undo_capture.exit.i487, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.akv = load ptr, ptr %i.l, align 8, !tbaa !216 ; 3 uses
  %i.akw = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 16
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !79
  %i.akz = icmp slt i64 %i.aky, 0
  br i1 %i.akz, label %sbuf_string.exit.i.i.i481, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.ala = load ptr, ptr %i.akw, align 8, !tbaa !81 ; 2 uses
  %i.alb = icmp eq ptr %i.ala, null
  %spec.select.i.i.i.i.i480 = select i1 %i.alb, ptr @.str.3, ptr %i.ala
  br label %sbuf_string.exit.i.i.i481

sbuf_string.exit.i.i.i481:                        ; preds = %bb.hd, %bb.hc
  %.0.i.i.i.i.i482 = phi ptr [ %spec.select.i.i.i.i.i480, %bb.hd ], [ null, %bb.hc ] ; 2 uses
  %.val.i.i.i.i483 = load ptr, ptr %i.akv, align 8, !tbaa !70
  %i.alc = call ptr %.val.i.i.i.i483(i64 noundef 24) #28, !inline_history !375 ; 9 uses
  %.not.i.i.i.i.i484 = icmp eq ptr %i.alc, null
  br i1 %.not.i.i.i.i.i484, label %editor_undo_capture.exit.i487, label %bb.he

bb.he:                                            ; preds = %sbuf_string.exit.i.i.i481
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.alc, i8 0, i64 24, i1 false)
  %i.ald = icmp eq ptr %.0.i.i.i.i.i482, null
  %spec.store.select.i.i.i.i485 = select i1 %i.ald, ptr @.str.3, ptr %.0.i.i.i.i.i482 ; 2 uses
  %i.ale = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i485) #29
  %i.alf = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ale, i64 0)
  %i.alg = add nuw nsw i64 %i.alf, 1              ; 2 uses
  %.val.i.i.i.i.i486 = load ptr, ptr %i.akv, align 8, !tbaa !70
  %i.alh = call ptr %.val.i.i.i.i.i486(i64 noundef %i.alg) #28, !inline_history !376 ; 3 uses
  %i.ali = icmp eq ptr %i.alh, null
  br i1 %i.ali, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  store ptr null, ptr %i.alj, align 8, !tbaa !234
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alc, i64 16
  store i64 %i.akr, ptr %i.alk, align 8, !tbaa !235
  %i.all = getelementptr i8, ptr %i.akv, i64 16
  %.val14.i.i.i.i494 = load ptr, ptr %i.all, align 8, !tbaa !82
  call void %.val14.i.i.i.i494(ptr noundef nonnull %i.alc) #28, !inline_history !377
  br label %editor_undo_capture.exit.i487

bb.hg:                                            ; preds = %bb.he
end_hunk_1
begin_hunk_2_@edit_line:bb.a
  %spec.store.select.i.i.i.i517 = select i1 %i.apg, ptr @.str.3, ptr %.0.i.i.i.i.i514 ; 2 uses
  %i.aph = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i517) #29
  %i.api = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.aph, i64 0)
  %i.apj = add nuw nsw i64 %i.api, 1              ; 2 uses
  %.val.i.i.i.i.i518 = load ptr, ptr %i.aox, align 8, !tbaa !70
  %i.apk = call ptr %.val.i.i.i.i.i518(i64 noundef %i.apj) #28, !inline_history !376 ; 3 uses
  %i.apl = icmp eq ptr %i.apk, null
  br i1 %i.apl, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  store ptr null, ptr %i.apm, align 8, !tbaa !234
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apf, i64 16
  store i64 %i.ape, ptr %i.apn, align 8, !tbaa !235
  %i.apo = getelementptr i8, ptr %i.aox, i64 16
  %.val14.i.i.i.i526 = load ptr, ptr %i.apo, align 8, !tbaa !82
  call void %.val14.i.i.i.i526(ptr noundef nonnull %i.apf) #28, !inline_history !377
  br label %editor_undo_capture.exit.i519

bb.ib:                                            ; preds = %bb.hz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.apk, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i517, i64 %i.apj, i1 false)
  %i.app = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  store ptr %i.apk, ptr %i.app, align 8, !tbaa !234
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apf, i64 16
  store i64 %i.ape, ptr %i.apq, align 8, !tbaa !235
  %i.apr = load ptr, ptr %i.al, align 8, !tbaa !236
  store ptr %i.apr, ptr %i.apf, align 8, !tbaa !237
  store ptr %i.apf, ptr %i.al, align 8, !tbaa !236
  br label %editor_undo_capture.exit.i519

editor_undo_capture.exit.i519:                    ; preds = %bb.ib, %bb.ia, %sbuf_string.exit.i.i.i513, %bb.hw
  %.pr.i.i520 = load ptr, ptr %i.am, align 8, !tbaa !236 ; 2 uses
  %.not10.i.i521 = icmp eq ptr %.pr.i.i520, null
  br i1 %.not10.i.i521, label %editor_start_modify.exit527, label %.lr.ph.i.i522

.lr.ph.i.i522:                                    ; preds = %editor_undo_capture.exit.i519
  %i.aps = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.apt = getelementptr i8, ptr %i.aps, i64 16   ; 2 uses
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ic, %.lr.ph.i.i522
  %i.apu = phi ptr [ %.pr.i.i520, %.lr.ph.i.i522 ], [ %i.apv, %bb.ic ] ; 2 uses
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !237 ; 3 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apu, i64 8
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !234
  %.val9.i.i523 = load ptr, ptr %i.apt, align 8, !tbaa !82
  call void %.val9.i.i523(ptr noundef %i.apx) #28, !inline_history !378
  %i.apy = load ptr, ptr %i.am, align 8, !tbaa !236
  %.val.i.i524 = load ptr, ptr %i.apt, align 8, !tbaa !82
  call void %.val.i.i524(ptr noundef %i.apy) #28, !inline_history !378
  store ptr %i.apv, ptr %i.am, align 8, !tbaa !236
  %.not.i.i525 = icmp eq ptr %i.apv, null
  br i1 %.not.i.i525, label %editor_start_modify.exit527, label %bb.ic, !llvm.loop !32

editor_start_modify.exit527:                      ; preds = %bb.ic, %editor_undo_capture.exit.i519
  store ptr null, ptr %i.am, align 8, !tbaa !236
  store i8 1, ptr %i.ah, align 8, !tbaa !225
  %i.apz = load ptr, ptr %6, align 8, !tbaa !217  ; 3 uses
  %i.aqa = load i64, ptr %i.ae, align 8, !tbaa !222 ; 4 uses
  %or.cond.i.not.i = icmp ult i64 %i.aqa, %i.aot
  br i1 %or.cond.i.not.i, label %bb.id, label %sbuf_delete_from_to.exit.i

bb.id:                                            ; preds = %editor_start_modify.exit527
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apz, i64 16 ; 3 uses
  %i.aqc = load i64, ptr %i.aqb, align 8, !tbaa !79 ; 5 uses
  %.not.i.i.i273 = icmp slt i64 %i.aqa, %i.aqc
  br i1 %.not.i.i.i273, label %bb.ie, label %sbuf_delete_from_to.exit.i

bb.ie:                                            ; preds = %bb.id
  %i.aqd = call i64 @llvm.umin.i64(i64 %i.aot, i64 %i.aqc) ; 3 uses
  %spec.select.i.neg.i.i = sub nsw i64 %i.aqa, %i.aqd
  %.not.i274 = icmp samesign ugt i64 %i.aqc, %i.aot
  br i1 %.not.i274, label %bb.if, label %ic_memmove.exit.i.i.i275

bb.if:                                            ; preds = %bb.ie
  %i.aqe = sub nuw nsw i64 %i.aqc, %i.aqd
  %i.aqf = load ptr, ptr %i.apz, align 8, !tbaa !81 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqa
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqd
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aqg, ptr nonnull readonly align 1 %i.aqh, i64 %i.aqe, i1 false)
  %.pre.i.i.i276 = load i64, ptr %i.aqb, align 8, !tbaa !79
  br label %ic_memmove.exit.i.i.i275

ic_memmove.exit.i.i.i275:                         ; preds = %bb.if, %bb.ie
  %i.aqi = phi i64 [ %i.aqc, %bb.ie ], [ %.pre.i.i.i276, %bb.if ]
  %i.aqj = add i64 %i.aqi, %spec.select.i.neg.i.i ; 2 uses
  store i64 %i.aqj, ptr %i.aqb, align 8, !tbaa !79
  %i.aqk = load ptr, ptr %i.apz, align 8, !tbaa !81
  %i.aql = getelementptr inbounds i8, ptr %i.aqk, i64 %i.aqj
  store i8 0, ptr %i.aql, align 1, !tbaa !48
  br label %sbuf_delete_from_to.exit.i

sbuf_delete_from_to.exit.i:                       ; preds = %ic_memmove.exit.i.i.i275, %bb.id, %editor_start_modify.exit527
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.ig:                                            ; preds = %bb.bh
  %i.aqm = load ptr, ptr %6, align 8, !tbaa !217  ; 3 uses
  %.val.i277 = load ptr, ptr %i.aqm, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i278 = icmp eq ptr %.val.i277, null   ; 2 uses
  br i1 %.not.i.i.i278, label %sbuf_find_ws_word_start.exit.thread.i, label %.preheader.split.i.preheader.i.i.i

.preheader.split.i.preheader.i.i.i:               ; preds = %bb.ig
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 16
  %.val10.i = load i64, ptr %i.aqn, align 8, !tbaa !79
  %i.aqo = load i64, ptr %i.ae, align 8, !tbaa !222
  %spec.select.i.i.i.i279 = call i64 @llvm.smin.i64(i64 %i.aqo, i64 %.val10.i) ; 2 uses
  %spec.store.select.i.i.i.i280 = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i279, i64 0)
  %i.aqp = icmp slt i64 %spec.select.i.i.i.i279, 1
  %i.aqq = sext i1 %i.aqp to i64
  br label %.preheader.split.i.i.i.i

.preheader.split.i.i.i.i:                         ; preds = %ic_char_is_white.exit7.i.i.i, %.preheader.split.i.preheader.i.i.i
  %.031.i.i.i.i = phi i64 [ %spec.select41.i.i.i.i, %ic_char_is_white.exit7.i.i.i ], [ %spec.store.select.i.i.i.i280, %.preheader.split.i.preheader.i.i.i ] ; 10 uses
  switch i64 %.031.i.i.i.i, label %.lr.ph1108 [
    i64 0, label %.thread.split.i.i.i.i282.preheader
    i64 1, label %.critedge
  ]

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph1108
  %i.aqr = add nuw nsw i64 %.021.i.i.i.i.i1107, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.aqr, %.031.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.thread.split.i.i.i.i282.preheader, label %.lr.ph1108

.lr.ph1108:                                       ; preds = %.preheader.split.i.i.i.i, %.preheader.i.i.i.i.i
  %.021.i.i.i.i.i1107 = phi i64 [ %i.aqr, %.preheader.i.i.i.i.i ], [ 1, %.preheader.split.i.i.i.i ] ; 3 uses
  %i.aqs = sub nuw nsw i64 %.031.i.i.i.i, %.021.i.i.i.i.i1107
  %i.aqt = getelementptr inbounds nuw i8, ptr %.val.i277, i64 %i.aqs
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !48
  %or.cond4.i.i.i.i.i = icmp sgt i8 %i.aqu, -65
  br i1 %or.cond4.i.i.i.i.i, label %.str_prev_ofs.exit.i.i.i.i_crit_edge, label %.preheader.i.i.i.i.i

.str_prev_ofs.exit.i.i.i.i_crit_edge:             ; preds = %.lr.ph1108
  %i.aqv = icmp eq i64 %.021.i.i.i.i.i1107, 1
  br i1 %i.aqv, label %.critedge, label %.thread.split.i.i.i.i282.preheader

.critedge:                                        ; preds = %.preheader.split.i.i.i.i, %.str_prev_ofs.exit.i.i.i.i_crit_edge
  %i.aqw = getelementptr inbounds nuw i8, ptr %.val.i277, i64 %.031.i.i.i.i
  %i.aqx = getelementptr inbounds i8, ptr %i.aqw, i64 -1
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !48
  switch i8 %i.aqy, label %.thread.split.i.i.i.i282.preheader [
    i8 32, label %ic_char_is_white.exit7.i.i.i
    i8 10, label %ic_char_is_white.exit7.i.i.i
    i8 9, label %ic_char_is_white.exit7.i.i.i
    i8 13, label %ic_char_is_white.exit7.i.i.i
  ]

ic_char_is_white.exit7.i.i.i:                     ; preds = %.critedge, %.critedge, %.critedge, %.critedge
  %spec.select41.i.i.i.i = add nsw i64 %.031.i.i.i.i, -1
  %i.aqz = icmp sgt i64 %.031.i.i.i.i, 1
  br i1 %i.aqz, label %.preheader.split.i.i.i.i, label %.thread.split.i.i.i.i282.preheader, !llvm.loop !35

.thread.split.i.i.i.i282.preheader:               ; preds = %.preheader.split.i.i.i.i, %ic_char_is_white.exit7.i.i.i, %.critedge, %.str_prev_ofs.exit.i.i.i.i_crit_edge, %.preheader.i.i.i.i.i
  %.3.i.i.i.i283.ph = phi i64 [ %.031.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.031.i.i.i.i, %.str_prev_ofs.exit.i.i.i.i_crit_edge ], [ %i.aqq, %ic_char_is_white.exit7.i.i.i ], [ %.031.i.i.i.i, %.preheader.split.i.i.i.i ], [ %.031.i.i.i.i, %.critedge ]
  br label %.thread.split.i.i.i.i282

.thread.split.i.i.i.i282:                         ; preds = %.thread.split.i.i.i.i282.preheader, %bb.ii
  %.3.i.i.i.i283 = phi i64 [ %i.ari, %bb.ii ], [ %.3.i.i.i.i283.ph, %.thread.split.i.i.i.i282.preheader ] ; 12 uses
  %i.ara = icmp sgt i64 %.3.i.i.i.i283, 0
  br i1 %i.ara, label %.preheader.i45.i.i.i.i289.preheader, label %sbuf_find_ws_word_start.exit.thread.i

.preheader.i45.i.i.i.i289.preheader:              ; preds = %.thread.split.i.i.i.i282
  %exitcond.not.i47.i.i.i.i2911111 = icmp eq i64 %.3.i.i.i.i283, 1
  br i1 %exitcond.not.i47.i.i.i.i2911111, label %str_prev_ofs.exit49.i.i.i.i293, label %.lr.ph1113

.preheader.i45.i.i.i.i289:                        ; preds = %.lr.ph1113
  %i.arb = add nuw nsw i64 %.021.i46.i.i.i.i2901112, 1 ; 2 uses
  %exitcond.not.i47.i.i.i.i291 = icmp eq i64 %i.arb, %.3.i.i.i.i283
  br i1 %exitcond.not.i47.i.i.i.i291, label %str_prev_ofs.exit49.i.i.i.i293, label %.lr.ph1113

.lr.ph1113:                                       ; preds = %.preheader.i45.i.i.i.i289.preheader, %.preheader.i45.i.i.i.i289
  %.021.i46.i.i.i.i2901112 = phi i64 [ %i.arb, %.preheader.i45.i.i.i.i289 ], [ 1, %.preheader.i45.i.i.i.i289.preheader ] ; 3 uses
  %i.arc = sub nuw nsw i64 %.3.i.i.i.i283, %.021.i46.i.i.i.i2901112
  %i.ard = getelementptr inbounds nuw i8, ptr %.val.i277, i64 %i.arc
  %i.are = load i8, ptr %i.ard, align 1, !tbaa !48
  %or.cond4.i48.i.i.i.i292 = icmp sgt i8 %i.are, -65
  br i1 %or.cond4.i48.i.i.i.i292, label %str_prev_ofs.exit49.i.i.i.i293, label %.preheader.i45.i.i.i.i289

str_prev_ofs.exit49.i.i.i.i293:                   ; preds = %.preheader.i45.i.i.i.i289, %.lr.ph1113, %.preheader.i45.i.i.i.i289.preheader
  %.2.i44.i.i.i.i294 = phi i64 [ %.3.i.i.i.i283, %.preheader.i45.i.i.i.i289.preheader ], [ %.3.i.i.i.i283, %.preheader.i45.i.i.i.i289 ], [ %.021.i46.i.i.i.i2901112, %.lr.ph1113 ] ; 2 uses
  %.not19.i.i.i = icmp eq i64 %.2.i44.i.i.i.i294, 1
  br i1 %.not19.i.i.i, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %str_prev_ofs.exit49.i.i.i.i293
  %i.arf = getelementptr inbounds nuw i8, ptr %.val.i277, i64 %.3.i.i.i.i283
  %i.arg = getelementptr inbounds i8, ptr %i.arf, i64 -1
  %i.arh = load i8, ptr %i.arg, align 1, !tbaa !48
  switch i8 %i.arh, label %bb.ii [
    i8 32, label %sbuf_find_ws_word_start.exit.thread.i
    i8 10, label %sbuf_find_ws_word_start.exit.thread.i
    i8 9, label %sbuf_find_ws_word_start.exit.thread.i
    i8 13, label %sbuf_find_ws_word_start.exit.thread.i
  ]

bb.ii:                                            ; preds = %bb.ih, %str_prev_ofs.exit49.i.i.i.i293
  %i.ari = sub nsw i64 %.3.i.i.i.i283, %.2.i44.i.i.i.i294 ; 2 uses
  %i.arj = icmp sgt i64 %i.ari, 0
  br i1 %i.arj, label %.thread.split.i.i.i.i282, label %sbuf_find_ws_word_start.exit.thread.i, !llvm.loop !33

sbuf_find_ws_word_start.exit.thread.i:            ; preds = %bb.ii, %bb.ih, %bb.ih, %bb.ih, %bb.ih, %.thread.split.i.i.i.i282, %bb.ig
  %.235.split.i.i.i13.i = phi i64 [ 0, %bb.ig ], [ 0, %bb.ii ], [ 0, %.thread.split.i.i.i.i282 ], [ %.3.i.i.i.i283, %bb.ih ], [ %.3.i.i.i.i283, %bb.ih ], [ %.3.i.i.i.i283, %bb.ih ], [ %.3.i.i.i.i283, %bb.ih ] ; 5 uses
  %i.ark = load i8, ptr %i.ca, align 1, !tbaa !232, !range !136, !noundef !137
  %i.arl = trunc nuw i8 %i.ark to i1
  br i1 %i.arl, label %editor_undo_capture.exit.i535, label %sbuf_string.exit.i.i.i529

sbuf_string.exit.i.i.i529:                        ; preds = %sbuf_find_ws_word_start.exit.thread.i
  %i.arm = load ptr, ptr %i.l, align 8, !tbaa !216 ; 3 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  %i.aro = load i64, ptr %i.arn, align 8, !tbaa !79
  %i.arp = load i64, ptr %i.ae, align 8, !tbaa !222 ; 2 uses
  %.val.i.i.i.i531 = load ptr, ptr %i.arm, align 8, !tbaa !70
  %i.arq = call ptr %.val.i.i.i.i531(i64 noundef 24) #28, !inline_history !375 ; 9 uses
  %.not.i.i.i.i.i532 = icmp eq ptr %i.arq, null
  br i1 %.not.i.i.i.i.i532, label %editor_undo_capture.exit.i535, label %bb.ij

bb.ij:                                            ; preds = %sbuf_string.exit.i.i.i529
  %i.arr = icmp slt i64 %i.aro, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.arq, i8 0, i64 24, i1 false)
  %i.ars = or i1 %.not.i.i.i278, %i.arr
  %spec.store.select.i.i.i.i533 = select i1 %i.ars, ptr @.str.3, ptr %.val.i277 ; 2 uses
  %i.art = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i533) #29
  %i.aru = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.art, i64 0)
  %i.arv = add nuw nsw i64 %i.aru, 1              ; 2 uses
  %.val.i.i.i.i.i534 = load ptr, ptr %i.arm, align 8, !tbaa !70
  %i.arw = call ptr %.val.i.i.i.i.i534(i64 noundef %i.arv) #28, !inline_history !376 ; 3 uses
  %i.arx = icmp eq ptr %i.arw, null
  br i1 %i.arx, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  store ptr null, ptr %i.ary, align 8, !tbaa !234
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  store i64 %i.arp, ptr %i.arz, align 8, !tbaa !235
  %i.asa = getelementptr i8, ptr %i.arm, i64 16
  %.val14.i.i.i.i542 = load ptr, ptr %i.asa, align 8, !tbaa !82
  call void %.val14.i.i.i.i542(ptr noundef nonnull %i.arq) #28, !inline_history !377
  br label %editor_undo_capture.exit.i535

bb.il:                                            ; preds = %bb.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.arw, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i533, i64 %i.arv, i1 false)
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  store ptr %i.arw, ptr %i.asb, align 8, !tbaa !234
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  store i64 %i.arp, ptr %i.asc, align 8, !tbaa !235
  %i.asd = load ptr, ptr %i.al, align 8, !tbaa !236
  store ptr %i.asd, ptr %i.arq, align 8, !tbaa !237
  store ptr %i.arq, ptr %i.al, align 8, !tbaa !236
  br label %editor_undo_capture.exit.i535

editor_undo_capture.exit.i535:                    ; preds = %bb.il, %bb.ik, %sbuf_string.exit.i.i.i529, %sbuf_find_ws_word_start.exit.thread.i
  %.pr.i.i536 = load ptr, ptr %i.am, align 8, !tbaa !236 ; 2 uses
  %.not10.i.i537 = icmp eq ptr %.pr.i.i536, null
  br i1 %.not10.i.i537, label %editor_start_modify.exit543, label %.lr.ph.i.i538

.lr.ph.i.i538:                                    ; preds = %editor_undo_capture.exit.i535
  %i.ase = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.asf = getelementptr i8, ptr %i.ase, i64 16   ; 2 uses
  br label %bb.im

bb.im:                                            ; preds = %bb.im, %.lr.ph.i.i538
  %i.asg = phi ptr [ %.pr.i.i536, %.lr.ph.i.i538 ], [ %i.ash, %bb.im ] ; 2 uses
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !237 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !234
  %.val9.i.i539 = load ptr, ptr %i.asf, align 8, !tbaa !82
  call void %.val9.i.i539(ptr noundef %i.asj) #28, !inline_history !378
  %i.ask = load ptr, ptr %i.am, align 8, !tbaa !236
  %.val.i.i540 = load ptr, ptr %i.asf, align 8, !tbaa !82
  call void %.val.i.i540(ptr noundef %i.ask) #28, !inline_history !378
  store ptr %i.ash, ptr %i.am, align 8, !tbaa !236
  %.not.i.i541 = icmp eq ptr %i.ash, null
  br i1 %.not.i.i541, label %editor_start_modify.exit543, label %bb.im, !llvm.loop !32

editor_start_modify.exit543:                      ; preds = %bb.im, %editor_undo_capture.exit.i535
  store ptr null, ptr %i.am, align 8, !tbaa !236
  store i8 1, ptr %i.ah, align 8, !tbaa !225
  %i.asl = load ptr, ptr %6, align 8, !tbaa !217  ; 3 uses
  %i.asm = load i64, ptr %i.ae, align 8, !tbaa !222 ; 2 uses
  %.not.i.not.i284 = icmp sgt i64 %i.asm, %.235.split.i.i.i13.i
  br i1 %.not.i.not.i284, label %bb.in, label %edit_delete_to_start_of_ws_word.exit

bb.in:                                            ; preds = %editor_start_modify.exit543
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asl, i64 16 ; 3 uses
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !79 ; 4 uses
  %.not.i.i11.i = icmp slt i64 %.235.split.i.i.i13.i, %i.aso
  br i1 %.not.i.i11.i, label %bb.io, label %edit_delete_to_start_of_ws_word.exit

bb.io:                                            ; preds = %bb.in
  %i.asp = call i64 @llvm.umin.i64(i64 %i.asm, i64 %i.aso) ; 3 uses
  %spec.select.i.neg.i.i286 = sub nsw i64 %.235.split.i.i.i13.i, %i.asp
  %i.asq = sub nuw nsw i64 %i.aso, %i.asp         ; 2 uses
  %i.asr = icmp slt i64 %i.asq, 1
  br i1 %i.asr, label %ic_memmove.exit.i.i.i288, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.ass = load ptr, ptr %i.asl, align 8, !tbaa !81 ; 2 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 %.235.split.i.i.i13.i
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ass, i64 %i.asp
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ast, ptr readonly align 1 %i.asu, i64 %i.asq, i1 false)
  %.pre.i.i.i287 = load i64, ptr %i.asn, align 8, !tbaa !79
  br label %ic_memmove.exit.i.i.i288

ic_memmove.exit.i.i.i288:                         ; preds = %bb.ip, %bb.io
  %i.asv = phi i64 [ %i.aso, %bb.io ], [ %.pre.i.i.i287, %bb.ip ]
  %i.asw = add i64 %i.asv, %spec.select.i.neg.i.i286 ; 2 uses
  store i64 %i.asw, ptr %i.asn, align 8, !tbaa !79
  %i.asx = load ptr, ptr %i.asl, align 8, !tbaa !81
  %i.asy = getelementptr inbounds i8, ptr %i.asx, i64 %i.asw
  store i8 0, ptr %i.asy, align 1, !tbaa !48
  br label %edit_delete_to_start_of_ws_word.exit

edit_delete_to_start_of_ws_word.exit:             ; preds = %editor_start_modify.exit543, %bb.in, %ic_memmove.exit.i.i.i288
  store i64 %.235.split.i.i.i13.i, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.iq:                                            ; preds = %bb.bh, %bb.bh
  %i.asz = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.ata = load i64, ptr %i.ae, align 8, !tbaa !222 ; 3 uses
  %.val.i295 = load ptr, ptr %i.asz, align 8, !tbaa !81 ; 3 uses
  %i.atb = getelementptr i8, ptr %i.asz, i64 16
  %.val10.i296 = load i64, ptr %i.atb, align 8, !tbaa !79 ; 2 uses
  %i.atc = call fastcc i64 @sbuf_find_word_start(ptr %.val.i295, i64 %.val10.i296, i64 noundef %i.ata) ; 5 uses
  %i.atd = load i8, ptr %i.ca, align 1, !tbaa !232, !range !136, !noundef !137
  %i.ate = trunc nuw i8 %i.atd to i1
  br i1 %i.ate, label %editor_undo_capture.exit.i551, label %sbuf_string.exit.i.i.i545

sbuf_string.exit.i.i.i545:                        ; preds = %bb.iq
  %i.atf = load ptr, ptr %i.l, align 8, !tbaa !216 ; 3 uses
  %.val.i.i.i.i547 = load ptr, ptr %i.atf, align 8, !tbaa !70
  %i.atg = call ptr %.val.i.i.i.i547(i64 noundef 24) #28, !inline_history !375 ; 9 uses
  %.not.i.i.i.i.i548 = icmp eq ptr %i.atg, null
  br i1 %.not.i.i.i.i.i548, label %editor_undo_capture.exit.i551, label %bb.ir

bb.ir:                                            ; preds = %sbuf_string.exit.i.i.i545
  %i.ath = icmp slt i64 %.val10.i296, 0
  %i.ati = icmp eq ptr %.val.i295, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.atg, i8 0, i64 24, i1 false)
  %i.atj = select i1 %i.ath, i1 true, i1 %i.ati
  %spec.store.select.i.i.i.i549 = select i1 %i.atj, ptr @.str.3, ptr %.val.i295 ; 2 uses
  %i.atk = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i549) #29
  %i.atl = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.atk, i64 0)
  %i.atm = add nuw nsw i64 %i.atl, 1              ; 2 uses
  %.val.i.i.i.i.i550 = load ptr, ptr %i.atf, align 8, !tbaa !70
  %i.atn = call ptr %.val.i.i.i.i.i550(i64 noundef %i.atm) #28, !inline_history !376 ; 3 uses
  %i.ato = icmp eq ptr %i.atn, null
  br i1 %i.ato, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atg, i64 8
  store ptr null, ptr %i.atp, align 8, !tbaa !234
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  store i64 %i.ata, ptr %i.atq, align 8, !tbaa !235
  %i.atr = getelementptr i8, ptr %i.atf, i64 16
  %.val14.i.i.i.i558 = load ptr, ptr %i.atr, align 8, !tbaa !82
  call void %.val14.i.i.i.i558(ptr noundef nonnull %i.atg) #28, !inline_history !377
  br label %editor_undo_capture.exit.i551

bb.it:                                            ; preds = %bb.ir
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.atn, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i549, i64 %i.atm, i1 false)
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atg, i64 8
  store ptr %i.atn, ptr %i.ats, align 8, !tbaa !234
  %i.att = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  store i64 %i.ata, ptr %i.att, align 8, !tbaa !235
  %i.atu = load ptr, ptr %i.al, align 8, !tbaa !236
  store ptr %i.atu, ptr %i.atg, align 8, !tbaa !237
  store ptr %i.atg, ptr %i.al, align 8, !tbaa !236
  br label %editor_undo_capture.exit.i551

editor_undo_capture.exit.i551:                    ; preds = %bb.it, %bb.is, %sbuf_string.exit.i.i.i545, %bb.iq
  %.pr.i.i552 = load ptr, ptr %i.am, align 8, !tbaa !236 ; 2 uses
  %.not10.i.i553 = icmp eq ptr %.pr.i.i552, null
  br i1 %.not10.i.i553, label %editor_start_modify.exit559, label %.lr.ph.i.i554

.lr.ph.i.i554:                                    ; preds = %editor_undo_capture.exit.i551
  %i.atv = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.atw = getelementptr i8, ptr %i.atv, i64 16   ; 2 uses
  br label %bb.iu

bb.iu:                                            ; preds = %bb.iu, %.lr.ph.i.i554
  %i.atx = phi ptr [ %.pr.i.i552, %.lr.ph.i.i554 ], [ %i.aty, %bb.iu ] ; 2 uses
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !237 ; 3 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atx, i64 8
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !234
  %.val9.i.i555 = load ptr, ptr %i.atw, align 8, !tbaa !82
  call void %.val9.i.i555(ptr noundef %i.aua) #28, !inline_history !378
  %i.aub = load ptr, ptr %i.am, align 8, !tbaa !236
  %.val.i.i556 = load ptr, ptr %i.atw, align 8, !tbaa !82
  call void %.val.i.i556(ptr noundef %i.aub) #28, !inline_history !378
  store ptr %i.aty, ptr %i.am, align 8, !tbaa !236
  %.not.i.i557 = icmp eq ptr %i.aty, null
  br i1 %.not.i.i557, label %editor_start_modify.exit559, label %bb.iu, !llvm.loop !32

editor_start_modify.exit559:                      ; preds = %bb.iu, %editor_undo_capture.exit.i551
  store ptr null, ptr %i.am, align 8, !tbaa !236
  store i8 1, ptr %i.ah, align 8, !tbaa !225
  %i.auc = load ptr, ptr %6, align 8, !tbaa !217  ; 3 uses
  %i.aud = load i64, ptr %i.ae, align 8, !tbaa !222 ; 3 uses
  %.not.i.not.i297 = icmp sgt i64 %i.aud, %i.atc
  br i1 %.not.i.not.i297, label %bb.iv, label %edit_delete_to_start_of_word.exit

bb.iv:                                            ; preds = %editor_start_modify.exit559
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 16 ; 3 uses
  %i.auf = load i64, ptr %i.aue, align 8, !tbaa !79 ; 5 uses
  %.not.i.i.i298 = icmp slt i64 %i.atc, %i.auf
  br i1 %.not.i.i.i298, label %bb.iw, label %edit_delete_to_start_of_word.exit

bb.iw:                                            ; preds = %bb.iv
  %i.aug = call i64 @llvm.umin.i64(i64 %i.aud, i64 %i.auf) ; 3 uses
  %spec.select.i.neg.i.i299 = sub nsw i64 %i.atc, %i.aug
  %.not.i300 = icmp samesign ugt i64 %i.auf, %i.aud
  br i1 %.not.i300, label %bb.ix, label %ic_memmove.exit.i.i.i301

bb.ix:                                            ; preds = %bb.iw
  %i.auh = sub nuw nsw i64 %i.auf, %i.aug
  %i.aui = load ptr, ptr %i.auc, align 8, !tbaa !81 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 %i.atc
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aui, i64 %i.aug
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.auj, ptr readonly align 1 %i.auk, i64 %i.auh, i1 false)
  %.pre.i.i.i302 = load i64, ptr %i.aue, align 8, !tbaa !79
  br label %ic_memmove.exit.i.i.i301

ic_memmove.exit.i.i.i301:                         ; preds = %bb.ix, %bb.iw
  %i.aul = phi i64 [ %i.auf, %bb.iw ], [ %.pre.i.i.i302, %bb.ix ]
  %i.aum = add i64 %i.aul, %spec.select.i.neg.i.i299 ; 2 uses
  store i64 %i.aum, ptr %i.aue, align 8, !tbaa !79
  %i.aun = load ptr, ptr %i.auc, align 8, !tbaa !81
  %i.auo = getelementptr inbounds i8, ptr %i.aun, i64 %i.aum
  store i8 0, ptr %i.auo, align 1, !tbaa !48
  br label %edit_delete_to_start_of_word.exit

edit_delete_to_start_of_word.exit:                ; preds = %editor_start_modify.exit559, %bb.iv, %ic_memmove.exit.i.i.i301
  store i64 %i.atc, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.iy:                                            ; preds = %bb.bh
  %i.aup = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %.val26.i = load ptr, ptr %i.aup, align 8, !tbaa !81 ; 7 uses
  %i.auq = getelementptr i8, ptr %i.aup, i64 16
  %.val27.i = load i64, ptr %i.auq, align 8, !tbaa !79 ; 7 uses
  %.not.i.i.i303 = icmp eq ptr %.val26.i, null
  br i1 %.not.i.i.i303, label %sbuf_find_line_end.exit.thread.i, label %.thread.split.i.preheader.i.i.i304

.thread.split.i.preheader.i.i.i304:               ; preds = %bb.iy
  %i.aur = load i64, ptr %i.ae, align 8, !tbaa !222 ; 3 uses
  %spec.select.i.i.i.i305 = call i64 @llvm.smin.i64(i64 %i.aur, i64 %.val27.i)
  %spec.store.select.i.i.i.i306 = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i305, i64 0) ; 2 uses
  br label %.thread.split.i.i.i.i307

.thread.split.i.i.i.i307:                         ; preds = %char_is_linefeed.exit.thread.i.i.i316, %.thread.split.i.preheader.i.i.i304
  %.3.i.i.i.i308 = phi i64 [ %i.ava, %char_is_linefeed.exit.thread.i.i.i316 ], [ %spec.store.select.i.i.i.i306, %.thread.split.i.preheader.i.i.i304 ] ; 10 uses
  switch i64 %.3.i.i.i.i308, label %.lr.ph1103 [
    i64 0, label %sbuf_find_line_start.exit.i
    i64 1, label %str_prev_ofs.exit49.i.i.i.i314
  ]

.preheader.i45.i.i.i.i310:                        ; preds = %.lr.ph1103
  %i.aus = add nuw nsw i64 %.021.i46.i.i.i.i3111102, 1 ; 2 uses
  %exitcond.not.i47.i.i.i.i312 = icmp eq i64 %i.aus, %.3.i.i.i.i308
  br i1 %exitcond.not.i47.i.i.i.i312, label %str_prev_ofs.exit49.i.i.i.i314, label %.lr.ph1103

.lr.ph1103:                                       ; preds = %.thread.split.i.i.i.i307, %.preheader.i45.i.i.i.i310
  %.021.i46.i.i.i.i3111102 = phi i64 [ %i.aus, %.preheader.i45.i.i.i.i310 ], [ 1, %.thread.split.i.i.i.i307 ] ; 3 uses
  %i.aut = sub nuw nsw i64 %.3.i.i.i.i308, %.021.i46.i.i.i.i3111102
  %i.auu = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.aut
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !48
  %or.cond4.i48.i.i.i.i313 = icmp sgt i8 %i.auv, -65
  br i1 %or.cond4.i48.i.i.i.i313, label %str_prev_ofs.exit49.i.i.i.i314, label %.preheader.i45.i.i.i.i310

str_prev_ofs.exit49.i.i.i.i314:                   ; preds = %.preheader.i45.i.i.i.i310, %.lr.ph1103, %.thread.split.i.i.i.i307
  %.2.i44.i.i.i.i315 = phi i64 [ %.3.i.i.i.i308, %.thread.split.i.i.i.i307 ], [ %.3.i.i.i.i308, %.preheader.i45.i.i.i.i310 ], [ %.021.i46.i.i.i.i3111102, %.lr.ph1103 ] ; 2 uses
  %i.auw = icmp eq i64 %.2.i44.i.i.i.i315, 1
  br i1 %i.auw, label %char_is_linefeed.exit.i.i.i327, label %char_is_linefeed.exit.thread.i.i.i316

char_is_linefeed.exit.i.i.i327:                   ; preds = %str_prev_ofs.exit49.i.i.i.i314
  %i.aux = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %.3.i.i.i.i308
  %i.auy = getelementptr inbounds i8, ptr %i.aux, i64 -1
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !48
  switch i8 %i.auz, label %char_is_linefeed.exit.thread.i.i.i316 [
    i8 10, label %sbuf_find_line_start.exit.i
    i8 0, label %sbuf_find_line_start.exit.i
  ]

char_is_linefeed.exit.thread.i.i.i316:            ; preds = %char_is_linefeed.exit.i.i.i327, %str_prev_ofs.exit49.i.i.i.i314
  %i.ava = sub nsw i64 %.3.i.i.i.i308, %.2.i44.i.i.i.i315 ; 2 uses
  %i.avb = icmp sgt i64 %i.ava, 0
  br i1 %i.avb, label %.thread.split.i.i.i.i307, label %sbuf_find_line_start.exit.i, !llvm.loop !33

sbuf_find_line_start.exit.i:                      ; preds = %.thread.split.i.i.i.i307, %char_is_linefeed.exit.thread.i.i.i316, %char_is_linefeed.exit.i.i.i327, %char_is_linefeed.exit.i.i.i327
  %.235.split.i.i.i.i317 = phi i64 [ %.3.i.i.i.i308, %char_is_linefeed.exit.i.i.i327 ], [ %.3.i.i.i.i308, %.thread.split.i.i.i.i307 ], [ %.3.i.i.i.i308, %char_is_linefeed.exit.i.i.i327 ], [ 0, %char_is_linefeed.exit.thread.i.i.i316 ] ; 8 uses
  %i.avc = icmp slt i64 %.val27.i, 0
  br i1 %i.avc, label %edit_multiline_eol.exit.backedge, label %.preheader

.preheader:                                       ; preds = %sbuf_find_line_start.exit.i, %char_is_linefeed.exit.thread.i.i30.i
  %.2.i.i.i.i318 = phi i64 [ %i.avi, %char_is_linefeed.exit.thread.i.i30.i ], [ %spec.store.select.i.i.i.i306, %sbuf_find_line_start.exit.i ] ; 5 uses
  %i.avd = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %.val26.i, i64 noundef %.val27.i, i64 noundef %.2.i.i.i.i318, ptr noundef null) ; 3 uses
  %i.ave = icmp slt i64 %i.avd, 1
  br i1 %i.ave, label %sbuf_find_line_end.exit.i319, label %bb.iz

bb.iz:                                            ; preds = %.preheader
  %i.avf = icmp eq i64 %i.avd, 1
  br i1 %i.avf, label %char_is_linefeed.exit.i.i31.i, label %char_is_linefeed.exit.thread.i.i30.i

char_is_linefeed.exit.i.i31.i:                    ; preds = %bb.iz
  %i.avg = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %.2.i.i.i.i318
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !48
  switch i8 %i.avh, label %char_is_linefeed.exit.thread.i.i30.i [
    i8 10, label %sbuf_find_line_end.exit.i319
    i8 0, label %sbuf_find_line_end.exit.i319
  ]

char_is_linefeed.exit.thread.i.i30.i:             ; preds = %char_is_linefeed.exit.i.i31.i, %bb.iz
  %i.avi = add nuw nsw i64 %i.avd, %.2.i.i.i.i318 ; 2 uses
  %i.avj = icmp slt i64 %i.avi, %.val27.i
  br i1 %i.avj, label %.preheader, label %sbuf_find_line_end.exit.i319, !llvm.loop !34

sbuf_find_line_end.exit.i319:                     ; preds = %char_is_linefeed.exit.thread.i.i30.i, %char_is_linefeed.exit.i.i31.i, %char_is_linefeed.exit.i.i31.i, %.preheader
  %i.avk = phi i64 [ %.val27.i, %char_is_linefeed.exit.thread.i.i30.i ], [ %.2.i.i.i.i318, %char_is_linefeed.exit.i.i31.i ], [ %.2.i.i.i.i318, %char_is_linefeed.exit.i.i31.i ], [ %.val27.i, %.preheader ]
  %i.avl = load i8, ptr %i.ca, align 1, !tbaa !232, !range !136, !noundef !137
  %i.avm = trunc nuw i8 %i.avl to i1
  br i1 %i.avm, label %editor_undo_capture.exit.i567, label %sbuf_string.exit.i.i.i561

sbuf_string.exit.i.i.i561:                        ; preds = %sbuf_find_line_end.exit.i319
  %i.avn = load ptr, ptr %i.l, align 8, !tbaa !216 ; 3 uses
  %.val.i.i.i.i563 = load ptr, ptr %i.avn, align 8, !tbaa !70
  %i.avo = call ptr %.val.i.i.i.i563(i64 noundef 24) #28, !inline_history !375 ; 9 uses
  %.not.i.i.i.i.i564 = icmp eq ptr %i.avo, null
  br i1 %.not.i.i.i.i.i564, label %editor_undo_capture.exit.i567, label %bb.ja

bb.ja:                                            ; preds = %sbuf_string.exit.i.i.i561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.avo, i8 0, i64 24, i1 false)
  %i.avp = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val26.i) #29
  %i.avq = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.avp, i64 0)
  %i.avr = add nuw nsw i64 %i.avq, 1              ; 2 uses
  %.val.i.i.i.i.i566 = load ptr, ptr %i.avn, align 8, !tbaa !70
  %i.avs = call ptr %.val.i.i.i.i.i566(i64 noundef %i.avr) #28, !inline_history !376 ; 3 uses
  %i.avt = icmp eq ptr %i.avs, null
  br i1 %i.avt, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avo, i64 8
  store ptr null, ptr %i.avu, align 8, !tbaa !234
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avo, i64 16
  store i64 %i.aur, ptr %i.avv, align 8, !tbaa !235
  %i.avw = getelementptr i8, ptr %i.avn, i64 16
  %.val14.i.i.i.i574 = load ptr, ptr %i.avw, align 8, !tbaa !82
  call void %.val14.i.i.i.i574(ptr noundef nonnull %i.avo) #28, !inline_history !377
  br label %editor_undo_capture.exit.i567

bb.jc:                                            ; preds = %bb.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.avs, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val26.i, i64 %i.avr, i1 false)
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avo, i64 8
  store ptr %i.avs, ptr %i.avx, align 8, !tbaa !234
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avo, i64 16
  store i64 %i.aur, ptr %i.avy, align 8, !tbaa !235
  %i.avz = load ptr, ptr %i.al, align 8, !tbaa !236
  store ptr %i.avz, ptr %i.avo, align 8, !tbaa !237
  store ptr %i.avo, ptr %i.al, align 8, !tbaa !236
  br label %editor_undo_capture.exit.i567

editor_undo_capture.exit.i567:                    ; preds = %bb.jc, %bb.jb, %sbuf_string.exit.i.i.i561, %sbuf_find_line_end.exit.i319
  %.pr.i.i568 = load ptr, ptr %i.am, align 8, !tbaa !236 ; 2 uses
  %.not10.i.i569 = icmp eq ptr %.pr.i.i568, null
  br i1 %.not10.i.i569, label %editor_start_modify.exit575, label %.lr.ph.i.i570

.lr.ph.i.i570:                                    ; preds = %editor_undo_capture.exit.i567
  %i.awa = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.awb = getelementptr i8, ptr %i.awa, i64 16   ; 2 uses
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jd, %.lr.ph.i.i570
  %i.awc = phi ptr [ %.pr.i.i568, %.lr.ph.i.i570 ], [ %i.awd, %bb.jd ] ; 2 uses
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !237 ; 3 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awc, i64 8
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !234
  %.val9.i.i571 = load ptr, ptr %i.awb, align 8, !tbaa !82
  call void %.val9.i.i571(ptr noundef %i.awf) #28, !inline_history !378
  %i.awg = load ptr, ptr %i.am, align 8, !tbaa !236
  %.val.i.i572 = load ptr, ptr %i.awb, align 8, !tbaa !82
  call void %.val.i.i572(ptr noundef %i.awg) #28, !inline_history !378
  store ptr %i.awd, ptr %i.am, align 8, !tbaa !236
  %.not.i.i573 = icmp eq ptr %i.awd, null
  br i1 %.not.i.i573, label %editor_start_modify.exit575, label %bb.jd, !llvm.loop !32

editor_start_modify.exit575:                      ; preds = %bb.jd, %editor_undo_capture.exit.i567
  store ptr null, ptr %i.am, align 8, !tbaa !236
  store i8 1, ptr %i.ah, align 8, !tbaa !225
  %.not.i320 = icmp eq i64 %.235.split.i.i.i.i317, 0
  %.pre52.i = load ptr, ptr %6, align 8, !tbaa !217 ; 7 uses
  br i1 %.not.i320, label %sbuf_char_at.exit.thread.i, label %bb.je

sbuf_find_line_end.exit.thread.i:                 ; preds = %bb.iy
  %i.awh = icmp slt i64 %.val27.i, 0
  br i1 %i.awh, label %edit_multiline_eol.exit.backedge, label %.thread.i328

.thread.i328:                                     ; preds = %sbuf_find_line_end.exit.thread.i
  call fastcc void @editor_start_modify(ptr noundef nonnull %6)
  %.pre51.i = load ptr, ptr %6, align 8, !tbaa !217
  br label %sbuf_char_at.exit.thread.i

bb.je:                                            ; preds = %editor_start_modify.exit575
  %i.awi = add nsw i64 %.235.split.i.i.i.i317, -1 ; 4 uses
  %i.awj = load ptr, ptr %.pre52.i, align 8, !tbaa !81 ; 4 uses
  %i.awk = icmp eq ptr %i.awj, null
  br i1 %i.awk, label %sbuf_char_at.exit.thread.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.awl = getelementptr inbounds nuw i8, ptr %.pre52.i, i64 16 ; 3 uses
  %i.awm = load i64, ptr %i.awl, align 8, !tbaa !79 ; 6 uses
  %i.awn = icmp slt i64 %i.awm, %i.awi
  br i1 %i.awn, label %sbuf_char_at.exit.thread.i, label %sbuf_char_at.exit.i

sbuf_char_at.exit.i:                              ; preds = %bb.jf
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awj, i64 %i.awi ; 2 uses
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !48
  %i.awq = icmp eq i8 %i.awp, 10
  %i.awr = icmp eq i64 %.235.split.i.i.i.i317, %i.avk
  %or.cond.i = and i1 %i.awr, %i.awq
  br i1 %or.cond.i, label %.critedge.i, label %sbuf_char_at.exit.thread.i

.critedge.i:                                      ; preds = %sbuf_char_at.exit.i
  %i.aws = load i64, ptr %i.ae, align 8, !tbaa !222 ; 3 uses
  %.not.i.i321 = icmp slt i64 %i.aws, %.235.split.i.i.i.i317
  %.not.i.i33.not.i = icmp sgt i64 %.235.split.i.i.i.i317, %i.awm
  %or.cond67.i = or i1 %.not.i.i33.not.i, %.not.i.i321
  br i1 %or.cond67.i, label %sbuf_delete_from_to.exit.i324, label %bb.jg

bb.jg:                                            ; preds = %.critedge.i
  %i.awt = call i64 @llvm.umin.i64(i64 %i.aws, i64 %i.awm) ; 3 uses
  %spec.select.i.neg.i.i322 = sub nsw i64 %i.awi, %i.awt
  %.not68.i = icmp ugt i64 %i.awm, %i.aws
  br i1 %.not68.i, label %bb.jh, label %ic_memmove.exit.i.i.i323

bb.jh:                                            ; preds = %bb.jg
  %i.awu = sub nuw nsw i64 %i.awm, %i.awt
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awj, i64 %i.awt
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.awo, ptr nonnull readonly align 1 %i.awv, i64 %i.awu, i1 false)
  %.pre.i.i.i325 = load i64, ptr %i.awl, align 8, !tbaa !79
  %.pre.i326 = load ptr, ptr %.pre52.i, align 8, !tbaa !81
  br label %ic_memmove.exit.i.i.i323

ic_memmove.exit.i.i.i323:                         ; preds = %bb.jh, %bb.jg
  %i.aww = phi ptr [ %i.awj, %bb.jg ], [ %.pre.i326, %bb.jh ]
  %i.awx = phi i64 [ %i.awm, %bb.jg ], [ %.pre.i.i.i325, %bb.jh ]
  %i.awy = add i64 %i.awx, %spec.select.i.neg.i.i322 ; 2 uses
  store i64 %i.awy, ptr %i.awl, align 8, !tbaa !79
  %i.awz = getelementptr inbounds i8, ptr %i.aww, i64 %i.awy
  store i8 0, ptr %i.awz, align 1, !tbaa !48
  br label %sbuf_delete_from_to.exit.i324

sbuf_delete_from_to.exit.i324:                    ; preds = %ic_memmove.exit.i.i.i323, %.critedge.i
  store i64 %i.awi, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_cursor_right(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %bb.jl

sbuf_char_at.exit.thread.i:                       ; preds = %sbuf_char_at.exit.i, %bb.jf, %bb.je, %editor_start_modify.exit575, %.thread.i328
  %i.axa = phi ptr [ %.pre52.i, %sbuf_char_at.exit.i ], [ %.pre52.i, %editor_start_modify.exit575 ], [ %.pre51.i, %.thread.i328 ], [ %.pre52.i, %bb.jf ], [ %.pre52.i, %bb.je ] ; 3 uses
  %.022.i = phi i64 [ %.235.split.i.i.i.i317, %sbuf_char_at.exit.i ], [ 0, %editor_start_modify.exit575 ], [ 0, %.thread.i328 ], [ %.235.split.i.i.i.i317, %bb.jf ], [ %.235.split.i.i.i.i317, %bb.je ] ; 5 uses
  %i.axb = load i64, ptr %i.ae, align 8, !tbaa !222 ; 2 uses
  %.not.i34.not.i = icmp sgt i64 %i.axb, %.022.i
  br i1 %.not.i34.not.i, label %bb.ji, label %sbuf_delete_from_to.exit41.i

bb.ji:                                            ; preds = %sbuf_char_at.exit.thread.i
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axa, i64 16 ; 3 uses
  %i.axd = load i64, ptr %i.axc, align 8, !tbaa !79 ; 4 uses
  %.not.i.i36.i = icmp slt i64 %.022.i, %i.axd
  br i1 %.not.i.i36.i, label %bb.jj, label %sbuf_delete_from_to.exit41.i

bb.jj:                                            ; preds = %bb.ji
  %spec.select.i.v.i37.i = call i64 @llvm.smin.i64(i64 %i.axb, i64 %i.axd) ; 3 uses
  %spec.select.i.neg.i38.i = sub nsw i64 %.022.i, %spec.select.i.v.i37.i
  %i.axe = sub nsw i64 %i.axd, %spec.select.i.v.i37.i ; 2 uses
  %i.axf = icmp slt i64 %i.axe, 1
  %.pre54.i = load ptr, ptr %i.axa, align 8, !tbaa !81 ; 3 uses
  br i1 %i.axf, label %ic_memmove.exit.i.i40.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.axg = getelementptr inbounds nuw i8, ptr %.pre54.i, i64 %.022.i
  %i.axh = getelementptr inbounds nuw i8, ptr %.pre54.i, i64 %spec.select.i.v.i37.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.axg, ptr readonly align 1 %i.axh, i64 %i.axe, i1 false)
  %.pre.i.i39.i = load i64, ptr %i.axc, align 8, !tbaa !79
  %.pre53.i = load ptr, ptr %i.axa, align 8, !tbaa !81
  br label %ic_memmove.exit.i.i40.i

ic_memmove.exit.i.i40.i:                          ; preds = %bb.jk, %bb.jj
  %i.axi = phi ptr [ %.pre54.i, %bb.jj ], [ %.pre53.i, %bb.jk ]
  %i.axj = phi i64 [ %i.axd, %bb.jj ], [ %.pre.i.i39.i, %bb.jk ]
  %i.axk = add i64 %i.axj, %spec.select.i.neg.i38.i ; 2 uses
  store i64 %i.axk, ptr %i.axc, align 8, !tbaa !79
  %i.axl = getelementptr inbounds i8, ptr %i.axi, i64 %i.axk
  store i8 0, ptr %i.axl, align 1, !tbaa !48
  br label %sbuf_delete_from_to.exit41.i

sbuf_delete_from_to.exit41.i:                     ; preds = %ic_memmove.exit.i.i40.i, %bb.ji, %sbuf_char_at.exit.thread.i
  store i64 %.022.i, ptr %i.ae, align 8, !tbaa !222
  br label %bb.jl

bb.jl:                                            ; preds = %sbuf_delete_from_to.exit41.i, %sbuf_delete_from_to.exit.i324
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.jm:                                            ; preds = %bb.bh
  %i.axm = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %.val24.i329 = load ptr, ptr %i.axm, align 8, !tbaa !81 ; 6 uses
  %i.axn = getelementptr i8, ptr %i.axm, i64 16
  %.val25.i330 = load i64, ptr %i.axn, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i331 = icmp eq ptr %.val24.i329, null ; 2 uses
  br i1 %.not.i.i.i331, label %sbuf_find_line_end.exit.i348, label %.thread.split.i.preheader.i.i.i332

.thread.split.i.preheader.i.i.i332:               ; preds = %bb.jm
  %i.axo = load i64, ptr %i.ae, align 8, !tbaa !222
  %spec.select.i.i.i.i333 = call i64 @llvm.smin.i64(i64 %i.axo, i64 %.val25.i330)
  %spec.store.select.i.i.i.i334 = call i64 @llvm.smax.i64(i64 %spec.select.i.i.i.i333, i64 0) ; 2 uses
  br label %.thread.split.i.i.i.i335

.thread.split.i.i.i.i335:                         ; preds = %char_is_linefeed.exit.thread.i.i.i344, %.thread.split.i.preheader.i.i.i332
  %.3.i.i.i.i336 = phi i64 [ %i.axx, %char_is_linefeed.exit.thread.i.i.i344 ], [ %spec.store.select.i.i.i.i334, %.thread.split.i.preheader.i.i.i332 ] ; 10 uses
  switch i64 %.3.i.i.i.i336, label %.lr.ph1098 [
    i64 0, label %sbuf_find_line_start.exit.i345
    i64 1, label %str_prev_ofs.exit49.i.i.i.i342
  ]

.preheader.i45.i.i.i.i338:                        ; preds = %.lr.ph1098
  %i.axp = add nuw nsw i64 %.021.i46.i.i.i.i3391097, 1 ; 2 uses
  %exitcond.not.i47.i.i.i.i340 = icmp eq i64 %i.axp, %.3.i.i.i.i336
  br i1 %exitcond.not.i47.i.i.i.i340, label %str_prev_ofs.exit49.i.i.i.i342, label %.lr.ph1098

.lr.ph1098:                                       ; preds = %.thread.split.i.i.i.i335, %.preheader.i45.i.i.i.i338
  %.021.i46.i.i.i.i3391097 = phi i64 [ %i.axp, %.preheader.i45.i.i.i.i338 ], [ 1, %.thread.split.i.i.i.i335 ] ; 3 uses
  %i.axq = sub nuw nsw i64 %.3.i.i.i.i336, %.021.i46.i.i.i.i3391097
  %i.axr = getelementptr inbounds nuw i8, ptr %.val24.i329, i64 %i.axq
  %i.axs = load i8, ptr %i.axr, align 1, !tbaa !48
  %or.cond4.i48.i.i.i.i341 = icmp sgt i8 %i.axs, -65
  br i1 %or.cond4.i48.i.i.i.i341, label %str_prev_ofs.exit49.i.i.i.i342, label %.preheader.i45.i.i.i.i338

str_prev_ofs.exit49.i.i.i.i342:                   ; preds = %.preheader.i45.i.i.i.i338, %.lr.ph1098, %.thread.split.i.i.i.i335
  %.2.i44.i.i.i.i343 = phi i64 [ %.3.i.i.i.i336, %.thread.split.i.i.i.i335 ], [ %.3.i.i.i.i336, %.preheader.i45.i.i.i.i338 ], [ %.021.i46.i.i.i.i3391097, %.lr.ph1098 ] ; 2 uses
  %i.axt = icmp eq i64 %.2.i44.i.i.i.i343, 1
  br i1 %i.axt, label %char_is_linefeed.exit.i.i.i361, label %char_is_linefeed.exit.thread.i.i.i344

char_is_linefeed.exit.i.i.i361:                   ; preds = %str_prev_ofs.exit49.i.i.i.i342
  %i.axu = getelementptr inbounds nuw i8, ptr %.val24.i329, i64 %.3.i.i.i.i336
  %i.axv = getelementptr inbounds i8, ptr %i.axu, i64 -1
  %i.axw = load i8, ptr %i.axv, align 1, !tbaa !48
  switch i8 %i.axw, label %char_is_linefeed.exit.thread.i.i.i344 [
    i8 10, label %sbuf_find_line_start.exit.i345
    i8 0, label %sbuf_find_line_start.exit.i345
  ]

char_is_linefeed.exit.thread.i.i.i344:            ; preds = %char_is_linefeed.exit.i.i.i361, %str_prev_ofs.exit49.i.i.i.i342
  %i.axx = sub nsw i64 %.3.i.i.i.i336, %.2.i44.i.i.i.i343 ; 2 uses
  %i.axy = icmp sgt i64 %i.axx, 0
  br i1 %i.axy, label %.thread.split.i.i.i.i335, label %sbuf_find_line_start.exit.i345, !llvm.loop !33

sbuf_find_line_start.exit.i345:                   ; preds = %.thread.split.i.i.i.i335, %char_is_linefeed.exit.thread.i.i.i344, %char_is_linefeed.exit.i.i.i361, %char_is_linefeed.exit.i.i.i361
  %.235.split.i.i.i.i346 = phi i64 [ %.3.i.i.i.i336, %char_is_linefeed.exit.i.i.i361 ], [ %.3.i.i.i.i336, %.thread.split.i.i.i.i335 ], [ %.3.i.i.i.i336, %char_is_linefeed.exit.i.i.i361 ], [ 0, %char_is_linefeed.exit.thread.i.i.i344 ] ; 4 uses
  %i.axz = icmp slt i64 %.val25.i330, 0
  br i1 %i.axz, label %edit_multiline_eol.exit.backedge, label %.preheader644

.preheader644:                                    ; preds = %sbuf_find_line_start.exit.i345, %char_is_linefeed.exit.thread.i.i28.i
  %.2.i.i.i.i347 = phi i64 [ %i.ayf, %char_is_linefeed.exit.thread.i.i28.i ], [ %spec.store.select.i.i.i.i334, %sbuf_find_line_start.exit.i345 ] ; 5 uses
  %i.aya = call fastcc i64 @str_next_ofs(ptr noundef nonnull readonly %.val24.i329, i64 noundef %.val25.i330, i64 noundef %.2.i.i.i.i347, ptr noundef null) ; 3 uses
  %i.ayb = icmp slt i64 %i.aya, 1
  br i1 %i.ayb, label %sbuf_find_line_end.exit.i348, label %bb.jn

bb.jn:                                            ; preds = %.preheader644
  %i.ayc = icmp eq i64 %i.aya, 1
  br i1 %i.ayc, label %char_is_linefeed.exit.i.i29.i, label %char_is_linefeed.exit.thread.i.i28.i

char_is_linefeed.exit.i.i29.i:                    ; preds = %bb.jn
  %i.ayd = getelementptr inbounds nuw i8, ptr %.val24.i329, i64 %.2.i.i.i.i347
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !48
  switch i8 %i.aye, label %char_is_linefeed.exit.thread.i.i28.i [
    i8 10, label %sbuf_find_line_end.exit.i348
    i8 0, label %sbuf_find_line_end.exit.i348
  ]

char_is_linefeed.exit.thread.i.i28.i:             ; preds = %char_is_linefeed.exit.i.i29.i, %bb.jn
  %i.ayf = add nuw nsw i64 %i.aya, %.2.i.i.i.i347 ; 2 uses
  %i.ayg = icmp slt i64 %i.ayf, %.val25.i330
  br i1 %i.ayg, label %.preheader644, label %sbuf_find_line_end.exit.i348, !llvm.loop !34

sbuf_find_line_end.exit.i348:                     ; preds = %char_is_linefeed.exit.thread.i.i28.i, %char_is_linefeed.exit.i.i29.i, %char_is_linefeed.exit.i.i29.i, %.preheader644, %bb.jm
  %.235.split.i.i.i37.i = phi i64 [ 0, %bb.jm ], [ %.235.split.i.i.i.i346, %.preheader644 ], [ %.235.split.i.i.i.i346, %char_is_linefeed.exit.i.i29.i ], [ %.235.split.i.i.i.i346, %char_is_linefeed.exit.i.i29.i ], [ %.235.split.i.i.i.i346, %char_is_linefeed.exit.thread.i.i28.i ] ; 10 uses
  %i.ayh = phi i64 [ %.val25.i330, %bb.jm ], [ %.val25.i330, %char_is_linefeed.exit.thread.i.i28.i ], [ %.2.i.i.i.i347, %char_is_linefeed.exit.i.i29.i ], [ %.2.i.i.i.i347, %char_is_linefeed.exit.i.i29.i ], [ %.val25.i330, %.preheader644 ] ; 3 uses
  %i.ayi = icmp slt i64 %i.ayh, 0
  br i1 %i.ayi, label %edit_multiline_eol.exit.backedge, label %bb.jo

bb.jo:                                            ; preds = %sbuf_find_line_end.exit.i348
  %i.ayj = load i8, ptr %i.ca, align 1, !tbaa !232, !range !136, !noundef !137
  %i.ayk = trunc nuw i8 %i.ayj to i1
  br i1 %i.ayk, label %editor_undo_capture.exit.i583, label %sbuf_string.exit.i.i.i577

sbuf_string.exit.i.i.i577:                        ; preds = %bb.jo
  %i.ayl = load ptr, ptr %i.l, align 8, !tbaa !216 ; 3 uses
  %i.aym = load i64, ptr %i.ae, align 8, !tbaa !222 ; 2 uses
  %.val.i.i.i.i579 = load ptr, ptr %i.ayl, align 8, !tbaa !70
  %i.ayn = call ptr %.val.i.i.i.i579(i64 noundef 24) #28, !inline_history !375 ; 9 uses
  %.not.i.i.i.i.i580 = icmp eq ptr %i.ayn, null
  br i1 %.not.i.i.i.i.i580, label %editor_undo_capture.exit.i583, label %bb.jp

bb.jp:                                            ; preds = %sbuf_string.exit.i.i.i577
  %i.ayo = icmp slt i64 %.val25.i330, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ayn, i8 0, i64 24, i1 false)
  %i.ayp = or i1 %.not.i.i.i331, %i.ayo
  %spec.store.select.i.i.i.i581 = select i1 %i.ayp, ptr @.str.3, ptr %.val24.i329 ; 2 uses
  %i.ayq = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i581) #29
  %i.ayr = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ayq, i64 0)
  %i.ays = add nuw nsw i64 %i.ayr, 1              ; 2 uses
  %.val.i.i.i.i.i582 = load ptr, ptr %i.ayl, align 8, !tbaa !70
  %i.ayt = call ptr %.val.i.i.i.i.i582(i64 noundef %i.ays) #28, !inline_history !376 ; 3 uses
  %i.ayu = icmp eq ptr %i.ayt, null
  br i1 %i.ayu, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayn, i64 8
  store ptr null, ptr %i.ayv, align 8, !tbaa !234
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayn, i64 16
  store i64 %i.aym, ptr %i.ayw, align 8, !tbaa !235
  %i.ayx = getelementptr i8, ptr %i.ayl, i64 16
  %.val14.i.i.i.i590 = load ptr, ptr %i.ayx, align 8, !tbaa !82
  call void %.val14.i.i.i.i590(ptr noundef nonnull %i.ayn) #28, !inline_history !377
  br label %editor_undo_capture.exit.i583

bb.jr:                                            ; preds = %bb.jp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ayt, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i581, i64 %i.ays, i1 false)
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayn, i64 8
  store ptr %i.ayt, ptr %i.ayy, align 8, !tbaa !234
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayn, i64 16
  store i64 %i.aym, ptr %i.ayz, align 8, !tbaa !235
  %i.aza = load ptr, ptr %i.al, align 8, !tbaa !236
  store ptr %i.aza, ptr %i.ayn, align 8, !tbaa !237
  store ptr %i.ayn, ptr %i.al, align 8, !tbaa !236
  br label %editor_undo_capture.exit.i583

editor_undo_capture.exit.i583:                    ; preds = %bb.jr, %bb.jq, %sbuf_string.exit.i.i.i577, %bb.jo
  %.pr.i.i584 = load ptr, ptr %i.am, align 8, !tbaa !236 ; 2 uses
  %.not10.i.i585 = icmp eq ptr %.pr.i.i584, null
  br i1 %.not10.i.i585, label %editor_start_modify.exit591, label %.lr.ph.i.i586

.lr.ph.i.i586:                                    ; preds = %editor_undo_capture.exit.i583
  %i.azb = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.azc = getelementptr i8, ptr %i.azb, i64 16   ; 2 uses
  br label %bb.js

bb.js:                                            ; preds = %bb.js, %.lr.ph.i.i586
  %i.azd = phi ptr [ %.pr.i.i584, %.lr.ph.i.i586 ], [ %i.aze, %bb.js ] ; 2 uses
  %i.aze = load ptr, ptr %i.azd, align 8, !tbaa !237 ; 3 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azd, i64 8
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !234
  %.val9.i.i587 = load ptr, ptr %i.azc, align 8, !tbaa !82
  call void %.val9.i.i587(ptr noundef %i.azg) #28, !inline_history !378
  %i.azh = load ptr, ptr %i.am, align 8, !tbaa !236
  %.val.i.i588 = load ptr, ptr %i.azc, align 8, !tbaa !82
  call void %.val.i.i588(ptr noundef %i.azh) #28, !inline_history !378
  store ptr %i.aze, ptr %i.am, align 8, !tbaa !236
  %.not.i.i589 = icmp eq ptr %i.aze, null
  br i1 %.not.i.i589, label %editor_start_modify.exit591, label %bb.js, !llvm.loop !32

editor_start_modify.exit591:                      ; preds = %bb.js, %editor_undo_capture.exit.i583
  store ptr null, ptr %i.am, align 8, !tbaa !236
  store i8 1, ptr %i.ah, align 8, !tbaa !225
  %i.azi = icmp eq i64 %.235.split.i.i.i37.i, %i.ayh
  %.pre.i349 = load ptr, ptr %6, align 8, !tbaa !217 ; 5 uses
  br i1 %i.azi, label %bb.jt, label %.critedge.i350

bb.jt:                                            ; preds = %editor_start_modify.exit591
  %i.azj = load ptr, ptr %.pre.i349, align 8, !tbaa !81 ; 3 uses
  %i.azk = icmp eq ptr %i.azj, null
  br i1 %i.azk, label %.critedge.i350, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.azl = getelementptr inbounds nuw i8, ptr %.pre.i349, i64 16
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !79 ; 2 uses
  %i.azn = icmp slt i64 %i.azm, %.235.split.i.i.i37.i
  br i1 %i.azn, label %sbuf_char_at.exit.thread.i360, label %sbuf_char_at.exit.i359

sbuf_char_at.exit.i359:                           ; preds = %bb.ju
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azj, i64 %.235.split.i.i.i37.i
  %i.azp = load i8, ptr %i.azo, align 1, !tbaa !48
  %i.azq = icmp eq i8 %i.azp, 10
  br i1 %i.azq, label %bb.jv, label %sbuf_char_at.exit.thread.i360

bb.jv:                                            ; preds = %sbuf_char_at.exit.i359
  %i.azr = add nuw nsw i64 %.235.split.i.i.i37.i, 1
  br label %.critedge.i350

sbuf_char_at.exit.thread.i360:                    ; preds = %sbuf_char_at.exit.i359, %bb.ju
  %i.azs = add nsw i64 %.235.split.i.i.i37.i, -1  ; 2 uses
  %i.azt = icmp eq i64 %.235.split.i.i.i37.i, 0
  br i1 %i.azt, label %.critedge.i350, label %bb.jw

bb.jw:                                            ; preds = %sbuf_char_at.exit.thread.i360
  %i.azu = icmp slt i64 %i.azm, %i.azs
  br i1 %i.azu, label %.critedge.i350, label %sbuf_char_at.exit32.i

sbuf_char_at.exit32.i:                            ; preds = %bb.jw
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azj, i64 %i.azs
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !48
  %i.azx = icmp eq i8 %i.azw, 10
  br i1 %i.azx, label %bb.jx, label %.critedge.i350

bb.jx:                                            ; preds = %sbuf_char_at.exit32.i
  %i.azy = load i64, ptr %i.ae, align 8, !tbaa !222
  %i.azz = add nsw i64 %i.azy, -1
  store i64 %i.azz, ptr %i.ae, align 8, !tbaa !222
  br label %.critedge.i350

.critedge.i350:                                   ; preds = %bb.jx, %sbuf_char_at.exit32.i, %bb.jw, %sbuf_char_at.exit.thread.i360, %bb.jv, %bb.jt, %editor_start_modify.exit591
  %.0.i351 = phi i64 [ %i.azr, %bb.jv ], [ %.235.split.i.i.i37.i, %bb.jx ], [ %.235.split.i.i.i37.i, %sbuf_char_at.exit32.i ], [ %i.ayh, %editor_start_modify.exit591 ], [ %.235.split.i.i.i37.i, %bb.jw ], [ 0, %sbuf_char_at.exit.thread.i360 ], [ %.235.split.i.i.i37.i, %bb.jt ] ; 3 uses
  %i.baa = load i64, ptr %i.ae, align 8, !tbaa !222 ; 5 uses
  %.not.i.i352 = icmp sle i64 %.0.i351, %i.baa
  %i.bab = icmp slt i64 %i.baa, 0
  %or.cond.i33.i = or i1 %i.bab, %.not.i.i352
  br i1 %or.cond.i33.i, label %sbuf_delete_from_to.exit.i353, label %bb.jy

bb.jy:                                            ; preds = %.critedge.i350
  %i.bac = getelementptr inbounds nuw i8, ptr %.pre.i349, i64 16 ; 3 uses
  %i.bad = load i64, ptr %i.bac, align 8, !tbaa !79 ; 5 uses
  %.not.i.i34.i = icmp slt i64 %i.baa, %i.bad
  br i1 %.not.i.i34.i, label %bb.jz, label %sbuf_delete_from_to.exit.i353

bb.jz:                                            ; preds = %bb.jy
  %i.bae = call i64 @llvm.umin.i64(i64 %.0.i351, i64 %i.bad) ; 3 uses
  %spec.select.i.neg.i.i355 = sub nsw i64 %i.baa, %i.bae
  %.not.i356 = icmp samesign ugt i64 %i.bad, %.0.i351
  %.pre42.i = load ptr, ptr %.pre.i349, align 8, !tbaa !81 ; 3 uses
  br i1 %.not.i356, label %bb.ka, label %ic_memmove.exit.i.i.i357

bb.ka:                                            ; preds = %bb.jz
  %i.baf = sub nuw nsw i64 %i.bad, %i.bae
  %i.bag = getelementptr inbounds nuw i8, ptr %.pre42.i, i64 %i.baa
  %i.bah = getelementptr inbounds nuw i8, ptr %.pre42.i, i64 %i.bae
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bag, ptr readonly align 1 %i.bah, i64 %i.baf, i1 false)
  %.pre.i.i.i358 = load i64, ptr %i.bac, align 8, !tbaa !79
  %.pre41.i = load ptr, ptr %.pre.i349, align 8, !tbaa !81
  br label %ic_memmove.exit.i.i.i357

ic_memmove.exit.i.i.i357:                         ; preds = %bb.ka, %bb.jz
  %i.bai = phi ptr [ %.pre42.i, %bb.jz ], [ %.pre41.i, %bb.ka ]
  %i.baj = phi i64 [ %i.bad, %bb.jz ], [ %.pre.i.i.i358, %bb.ka ]
  %i.bak = add i64 %i.baj, %spec.select.i.neg.i.i355 ; 2 uses
  store i64 %i.bak, ptr %i.bac, align 8, !tbaa !79
  %i.bal = getelementptr inbounds i8, ptr %i.bai, i64 %i.bak
  store i8 0, ptr %i.bal, align 1, !tbaa !48
  br label %sbuf_delete_from_to.exit.i353

sbuf_delete_from_to.exit.i353:                    ; preds = %ic_memmove.exit.i.i.i357, %bb.jy, %.critedge.i350
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.kb:                                            ; preds = %bb.bh
  %i.bam = load i64, ptr %i.ae, align 8, !tbaa !222 ; 4 uses
  %i.ban = icmp slt i64 %i.bam, 1
  br i1 %i.ban, label %edit_multiline_eol.exit.backedge, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bao = load ptr, ptr %6, align 8, !tbaa !217  ; 4 uses
  %i.bap = icmp eq ptr %i.bao, null
  br i1 %i.bap, label %sbuf_len.exit.thread.i, label %sbuf_len.exit.i362

sbuf_len.exit.i362:                               ; preds = %bb.kc
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bao, i64 16
  %i.bar = load i64, ptr %i.baq, align 8, !tbaa !79
  %i.bas = icmp eq i64 %i.bam, %i.bar
  br i1 %i.bas, label %edit_multiline_eol.exit.backedge, label %sbuf_len.exit.thread.i

sbuf_len.exit.thread.i:                           ; preds = %sbuf_len.exit.i362, %bb.kc
  %i.bat = load i8, ptr %i.ca, align 1, !tbaa !232, !range !136, !noundef !137
  %i.bau = trunc nuw i8 %i.bat to i1
  br i1 %i.bau, label %editor_undo_capture.exit.i599, label %bb.kd

bb.kd:                                            ; preds = %sbuf_len.exit.thread.i
  %i.bav = load ptr, ptr %i.l, align 8, !tbaa !216 ; 3 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bao, i64 16
  %i.bax = load i64, ptr %i.baw, align 8, !tbaa !79
  %i.bay = icmp slt i64 %i.bax, 0
  br i1 %i.bay, label %sbuf_string.exit.i.i.i593, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.baz = load ptr, ptr %i.bao, align 8, !tbaa !81 ; 2 uses
  %i.bba = icmp eq ptr %i.baz, null
  %spec.select.i.i.i.i.i592 = select i1 %i.bba, ptr @.str.3, ptr %i.baz
  br label %sbuf_string.exit.i.i.i593

sbuf_string.exit.i.i.i593:                        ; preds = %bb.ke, %bb.kd
  %.0.i.i.i.i.i594 = phi ptr [ %spec.select.i.i.i.i.i592, %bb.ke ], [ null, %bb.kd ] ; 2 uses
  %.val.i.i.i.i595 = load ptr, ptr %i.bav, align 8, !tbaa !70
  %i.bbb = call ptr %.val.i.i.i.i595(i64 noundef 24) #28, !inline_history !375 ; 9 uses
  %.not.i.i.i.i.i596 = icmp eq ptr %i.bbb, null
  br i1 %.not.i.i.i.i.i596, label %editor_undo_capture.exit.i599, label %bb.kf

bb.kf:                                            ; preds = %sbuf_string.exit.i.i.i593
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bbb, i8 0, i64 24, i1 false)
  %i.bbc = icmp eq ptr %.0.i.i.i.i.i594, null
  %spec.store.select.i.i.i.i597 = select i1 %i.bbc, ptr @.str.3, ptr %.0.i.i.i.i.i594 ; 2 uses
  %i.bbd = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.store.select.i.i.i.i597) #29
  %i.bbe = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bbd, i64 0)
  %i.bbf = add nuw nsw i64 %i.bbe, 1              ; 2 uses
  %.val.i.i.i.i.i598 = load ptr, ptr %i.bav, align 8, !tbaa !70
  %i.bbg = call ptr %.val.i.i.i.i.i598(i64 noundef %i.bbf) #28, !inline_history !376 ; 3 uses
  %i.bbh = icmp eq ptr %i.bbg, null
  br i1 %i.bbh, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  store ptr null, ptr %i.bbi, align 8, !tbaa !234
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16
  store i64 %i.bam, ptr %i.bbj, align 8, !tbaa !235
  %i.bbk = getelementptr i8, ptr %i.bav, i64 16
  %.val14.i.i.i.i606 = load ptr, ptr %i.bbk, align 8, !tbaa !82
  call void %.val14.i.i.i.i606(ptr noundef nonnull %i.bbb) #28, !inline_history !377
  br label %editor_undo_capture.exit.i599

bb.kh:                                            ; preds = %bb.kf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bbg, ptr noundef nonnull readonly align 1 dereferenceable(1) %spec.store.select.i.i.i.i597, i64 %i.bbf, i1 false)
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  store ptr %i.bbg, ptr %i.bbl, align 8, !tbaa !234
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbb, i64 16
  store i64 %i.bam, ptr %i.bbm, align 8, !tbaa !235
  %i.bbn = load ptr, ptr %i.al, align 8, !tbaa !236
  store ptr %i.bbn, ptr %i.bbb, align 8, !tbaa !237
  store ptr %i.bbb, ptr %i.al, align 8, !tbaa !236
  br label %editor_undo_capture.exit.i599

editor_undo_capture.exit.i599:                    ; preds = %bb.kh, %bb.kg, %sbuf_string.exit.i.i.i593, %sbuf_len.exit.thread.i
  %.pr.i.i600 = load ptr, ptr %i.am, align 8, !tbaa !236 ; 2 uses
  %.not10.i.i601 = icmp eq ptr %.pr.i.i600, null
  br i1 %.not10.i.i601, label %editor_start_modify.exit607, label %.lr.ph.i.i602

.lr.ph.i.i602:                                    ; preds = %editor_undo_capture.exit.i599
  %i.bbo = load ptr, ptr %i.l, align 8, !tbaa !216
  %i.bbp = getelementptr i8, ptr %i.bbo, i64 16   ; 2 uses
  br label %bb.ki

bb.ki:                                            ; preds = %bb.ki, %.lr.ph.i.i602
  %i.bbq = phi ptr [ %.pr.i.i600, %.lr.ph.i.i602 ], [ %i.bbr, %bb.ki ] ; 2 uses
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !237 ; 3 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbq, i64 8
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !234
  %.val9.i.i603 = load ptr, ptr %i.bbp, align 8, !tbaa !82
  call void %.val9.i.i603(ptr noundef %i.bbt) #28, !inline_history !378
  %i.bbu = load ptr, ptr %i.am, align 8, !tbaa !236
  %.val.i.i604 = load ptr, ptr %i.bbp, align 8, !tbaa !82
  call void %.val.i.i604(ptr noundef %i.bbu) #28, !inline_history !378
  store ptr %i.bbr, ptr %i.am, align 8, !tbaa !236
  %.not.i.i605 = icmp eq ptr %i.bbr, null
  br i1 %.not.i.i605, label %editor_start_modify.exit607, label %bb.ki, !llvm.loop !32

editor_start_modify.exit607:                      ; preds = %bb.ki, %editor_undo_capture.exit.i599
  store ptr null, ptr %i.am, align 8, !tbaa !236
  store i8 1, ptr %i.ah, align 8, !tbaa !225
  %i.bbv = load ptr, ptr %6, align 8, !tbaa !217  ; 3 uses
  %i.bbw = load i64, ptr %i.ae, align 8, !tbaa !222 ; 10 uses
  %.val.i.i363 = load ptr, ptr %i.bbv, align 8, !tbaa !81 ; 4 uses
  %i.bbx = getelementptr i8, ptr %i.bbv, i64 16
  %.val26.i.i = load i64, ptr %i.bbx, align 8, !tbaa !79
  %i.bby = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val.i.i363, i64 noundef %.val26.i.i, i64 noundef %i.bbw, ptr noundef null) ; 3 uses
  %i.bbz = icmp slt i64 %i.bby, 1
  br i1 %i.bbz, label %sbuf_swap_char.exit.i, label %bb.kj

bb.kj:                                            ; preds = %editor_start_modify.exit607
  %i.bca = icmp ne ptr %.val.i.i363, null
  %i.bcb = icmp sgt i64 %i.bbw, 0
  %or.cond.i.i.i.i364 = and i1 %i.bcb, %i.bca
  br i1 %or.cond.i.i.i.i364, label %.preheader.i.i.i.i365.preheader, label %sbuf_swap_char.exit.i

.preheader.i.i.i.i365.preheader:                  ; preds = %bb.kj
  %exitcond.not.i.i.i.i3671093 = icmp eq i64 %i.bbw, 1
  br i1 %exitcond.not.i.i.i.i3671093, label %sbuf_prev_ofs.exit.thread30.i.i, label %.lr.ph

.preheader.i.i.i.i365:                            ; preds = %.lr.ph
  %i.bcc = add nuw nsw i64 %.021.i.i.i.i3661094, 1 ; 2 uses
  %exitcond.not.i.i.i.i367 = icmp eq i64 %i.bcc, %i.bbw
  br i1 %exitcond.not.i.i.i.i367, label %sbuf_prev_ofs.exit.thread30.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i.i365.preheader, %.preheader.i.i.i.i365
  %.021.i.i.i.i3661094 = phi i64 [ %i.bcc, %.preheader.i.i.i.i365 ], [ 1, %.preheader.i.i.i.i365.preheader ] ; 3 uses
  %i.bcd = sub nuw nsw i64 %i.bbw, %.021.i.i.i.i3661094
  %i.bce = getelementptr inbounds nuw i8, ptr %.val.i.i363, i64 %i.bcd
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !48
  %or.cond4.i.i.i.i368 = icmp sgt i8 %i.bcf, -65
  br i1 %or.cond4.i.i.i.i368, label %sbuf_prev_ofs.exit.thread30.i.i, label %.preheader.i.i.i.i365

sbuf_prev_ofs.exit.thread30.i.i:                  ; preds = %.preheader.i.i.i.i365, %.lr.ph, %.preheader.i.i.i.i365.preheader
  %.2.i.i32.i.i = phi i64 [ %i.bbw, %.preheader.i.i.i.i365.preheader ], [ %i.bbw, %.preheader.i.i.i.i365 ], [ %.021.i.i.i.i3661094, %.lr.ph ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %8 = icmp sgt i64 %.2.i.i32.i.i, 62
  br i1 %8, label %bb.kk, label %ic_memmove.exit28.i.i

ic_memmove.exit28.i.i:                            ; preds = %sbuf_prev_ofs.exit.thread30.i.i
  %i.bcg = getelementptr inbounds nuw i8, ptr %.val.i.i363, i64 %i.bbw ; 2 uses
  %i.bch = sub nsw i64 0, %.2.i.i32.i.i           ; 2 uses
  %i.bci = getelementptr inbounds i8, ptr %i.bcg, i64 %i.bch ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull readonly align 1 %i.bci, i64 %.2.i.i32.i.i, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bci, ptr nonnull readonly align 1 %i.bcg, i64 %i.bby, i1 false)
  %i.bcj = load ptr, ptr %i.bbv, align 8, !tbaa !81
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 %i.bbw
  %i.bcl = getelementptr inbounds i8, ptr %i.bck, i64 %i.bch
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %i.bby
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bcm, ptr nonnull readonly align 16 %i.b, i64 %.2.i.i32.i.i, i1 false)
  %i.bcn = sub nsw i64 %i.bbw, %.2.i.i32.i.i
  br label %bb.kk

bb.kk:                                            ; preds = %ic_memmove.exit28.i.i, %sbuf_prev_ofs.exit.thread30.i.i
  %.0.i9.i = phi i64 [ %i.bcn, %ic_memmove.exit28.i.i ], [ 0, %sbuf_prev_ofs.exit.thread30.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %sbuf_swap_char.exit.i

sbuf_swap_char.exit.i:                            ; preds = %bb.kk, %bb.kj, %editor_start_modify.exit607
  %.2.i.i = phi i64 [ 0, %editor_start_modify.exit607 ], [ %.0.i9.i, %bb.kk ], [ 0, %bb.kj ]
  store i64 %.2.i.i, ptr %i.ae, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %edit_multiline_eol.exit.backedge

bb.kl:                                            ; preds = %bb.bh, %bb.bh
  %i.bco = load i8, ptr %i.cb, align 1, !tbaa !158, !range !136, !noundef !137
  %i.bcp = trunc nuw i8 %i.bco to i1
  br i1 %i.bcp, label %edit_multiline_eol.exit.backedge, label %bb.km

bb.km:                                            ; preds = %bb.kl
  call fastcc void @edit_insert_char(ptr noundef %0, ptr noundef %6, i8 noundef signext 10)
  br label %edit_multiline_eol.exit.backedge

bb.kn:                                            ; preds = %bb.bh
  %i.bcq = add i32 %i.fn, -32
  %or.cond.i369 = icmp ult i32 %i.bcq, 96
  br i1 %or.cond.i369, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.bcr = trunc nuw nsw i32 %i.fn to i8
  call fastcc void @edit_insert_char(ptr noundef %0, ptr noundef %6, i8 noundef signext %i.bcr)
  br label %edit_multiline_eol.exit.backedge

bb.kp:                                            ; preds = %bb.kn
  %i.bcs = icmp ult i32 %i.fn, 1114112
  br i1 %i.bcs, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %.thread621, %bb.kp
  %..i623 = phi i32 [ 0, %.thread621 ], [ %i.fn, %bb.kp ]
  call fastcc void @edit_insert_unicode(ptr noundef %0, ptr noundef %6, i32 noundef %..i623)
  br label %edit_multiline_eol.exit.backedge

bb.kr:                                            ; preds = %bb.kp
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.249, i32 noundef %i.fn)
  br label %edit_multiline_eol.exit.backedge

.loopexit:                                        ; preds = %editor_pos_is_at_end.exit179, %bb.aj, %editor_pos_is_at_end.exit, %bb.bg, %bb.ak, %sbuf_string.exit, %sbuf_clear.exit.i189, %sbuf_len.exit.i185
  %.pr = load ptr, ptr %6, align 8, !tbaa !217    ; 2 uses
  %i.bct = icmp eq ptr %.pr, null
  br i1 %i.bct, label %sbuf_len.exit371, label %bb.ks

bb.ks:                                            ; preds = %.loopexit
  %i.bcu = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.bcv = load i64, ptr %i.bcu, align 8, !tbaa !79
  br label %sbuf_len.exit371

sbuf_len.exit371.thread:                          ; preds = %bb.bj, %bb.bp
  store i64 0, ptr %i.ae, align 8, !tbaa !222
  %i.bcw = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 3 uses
  %i.bcx = load i8, ptr %i.bcw, align 2, !tbaa !180, !range !136, !noundef !137
  store i8 1, ptr %i.bcw, align 2, !tbaa !180
  call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %6)
  store i8 %i.bcx, ptr %i.bcw, align 2, !tbaa !180
  br label %bb.ku

sbuf_len.exit371:                                 ; preds = %.loopexit, %bb.ks
  %.0.i370 = phi i64 [ %i.bcv, %bb.ks ], [ 0, %.loopexit ]
  store i64 %.0.i370, ptr %i.ae, align 8, !tbaa !222
  %i.bcy = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 3 uses
  %i.bcz = load i8, ptr %i.bcy, align 2, !tbaa !180, !range !136, !noundef !137
  store i8 1, ptr %i.bcy, align 2, !tbaa !180
  call fastcc void @edit_refresh(ptr noundef %0, ptr noundef %6)
  store i8 %i.bcz, ptr %i.bcy, align 2, !tbaa !180
  switch i32 %i.fn, label %bb.ku [
    i32 4, label %bb.kt
    i32 3, label %sbuf_strdup_from_utf8.exit
    i32 33554435, label %sbuf_strdup_from_utf8.exit
  ]

bb.kt:                                            ; preds = %sbuf_len.exit371.thread979, %sbuf_len.exit371
  %i.bda = load ptr, ptr %6, align 8, !tbaa !217  ; 2 uses
  %i.bdb = icmp eq ptr %i.bda, null
  br i1 %i.bdb, label %sbuf_strdup_from_utf8.exit, label %sbuf_len.exit373

sbuf_len.exit373:                                 ; preds = %bb.kt
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bda, i64 16
  %i.bdd = load i64, ptr %i.bdc, align 8, !tbaa !79
  %i.bde = icmp eq i64 %i.bdd, 0
  br i1 %i.bde, label %sbuf_strdup_from_utf8.exit, label %bb.ku

bb.ku:                                            ; preds = %sbuf_len.exit371.thread, %sbuf_len.exit371, %sbuf_len.exit373
  %i.bdf = load ptr, ptr %i.bz, align 8, !tbaa !138 ; 2 uses
  %i.bdg = icmp eq ptr %i.bdf, null
  br i1 %i.bdg, label %.tty_is_utf8.exit.thread_crit_edge, label %tty_is_utf8.exit

.tty_is_utf8.exit.thread_crit_edge:               ; preds = %bb.ku
  %.pre755 = load ptr, ptr %6, align 8, !tbaa !217
  br label %tty_is_utf8.exit.thread

tty_is_utf8.exit:                                 ; preds = %bb.ku
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdf, i64 5
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !201, !range !136, !noundef !137
  %i.bdj = trunc nuw i8 %i.bdi to i1
  %.pre756 = load ptr, ptr %6, align 8, !tbaa !217 ; 5 uses
  br i1 %i.bdj, label %tty_is_utf8.exit.thread, label %bb.kv

bb.kv:                                            ; preds = %tty_is_utf8.exit
  %i.bdk = icmp eq ptr %.pre756, null
  br i1 %i.bdk, label %sbuf_strdup_from_utf8.exit, label %sbuf_len.exit.i375

sbuf_len.exit.i375:                               ; preds = %bb.kv
  %i.bdl = getelementptr i8, ptr %.pre756, i64 16 ; 2 uses
  %i.bdm = load i64, ptr %i.bdl, align 8, !tbaa !79 ; 4 uses
  %i.bdn = icmp slt i64 %i.bdm, 1
  br i1 %i.bdn, label %sbuf_strdup_from_utf8.exit, label %bb.kw

bb.kw:                                            ; preds = %sbuf_len.exit.i375
  %i.bdo = getelementptr inbounds nuw i8, ptr %.pre756, i64 24
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !78
  %.val.i376 = load ptr, ptr %i.bdp, align 8, !tbaa !70
  %i.bdq = call ptr %.val.i376(i64 noundef %i.bdm) #28, !inline_history !395 ; 6 uses
  %.not.i.i377 = icmp eq ptr %i.bdq, null
  br i1 %.not.i.i377, label %sbuf_strdup_from_utf8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.kw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bdq, i8 0, i64 %i.bdm, i1 false)
  br label %bb.kx

bb.kx:                                            ; preds = %bb.ld, %.lr.ph.i
  %.055.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bef, %bb.ld ] ; 3 uses
  %.03554.i = phi i64 [ 0, %.lr.ph.i ], [ %.2.i, %bb.ld ] ; 7 uses
  %.val45.i = load ptr, ptr %.pre756, align 8, !tbaa !81 ; 2 uses
  %.val46.i = load i64, ptr %i.bdl, align 8, !tbaa !79
  %i.bdr = call fastcc i64 @str_next_ofs(ptr noundef readonly %.val45.i, i64 noundef %.val46.i, i64 noundef %.055.i, ptr noundef null) ; 4 uses
  %i.bds = icmp sgt i64 %i.bdr, 0
  br i1 %i.bds, label %bb.ky, label %.thread.i378

bb.ky:                                            ; preds = %bb.kx
  %i.bdt = icmp eq i64 %i.bdr, 1
  %i.bdu = getelementptr inbounds nuw i8, ptr %.val45.i, i64 %.055.i ; 2 uses
  %i.bdv = load i8, ptr %i.bdu, align 1, !tbaa !48 ; 2 uses
  br i1 %i.bdt, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.bdw = add nsw i64 %.03554.i, 1
  %i.bdx = getelementptr inbounds i8, ptr %i.bdq, i64 %.03554.i
  store i8 %i.bdv, ptr %i.bdx, align 1, !tbaa !48
  br label %bb.ld

bb.la:                                            ; preds = %bb.ky
  %i.bdy = icmp eq i8 %i.bdv, 27
  br i1 %i.bdy, label %bb.ld, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bdz = call fastcc i32 @unicode_from_qutf8(ptr noundef nonnull %i.bdu, i64 noundef %i.bdr, ptr noundef %i.a) ; 3 uses
  %i.bea = and i32 %i.bdz, 2096896
  %or.cond.i.i380 = icmp eq i32 %i.bea, 974848
  %i.beb = icmp samesign ult i32 %i.bdz, 128
  %or.cond.i381 = select i1 %or.cond.i.i380, i1 true, i1 %i.beb
  br i1 %or.cond.i381, label %.sink.split.i, label %bb.lc

.sink.split.i:                                    ; preds = %bb.lb
  %i.bec = trunc i32 %i.bdz to i8
  %i.bed = add nsw i64 %.03554.i, 1
  %i.bee = getelementptr inbounds i8, ptr %i.bdq, i64 %.03554.i
  store i8 %i.bec, ptr %i.bee, align 1, !tbaa !48
  br label %bb.lc

bb.lc:                                            ; preds = %.sink.split.i, %bb.lb
  %.136.i = phi i64 [ %.03554.i, %bb.lb ], [ %i.bed, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.la, %bb.kz
  %.2.i = phi i64 [ %i.bdw, %bb.kz ], [ %.03554.i, %bb.la ], [ %.136.i, %bb.lc ] ; 2 uses
  %i.bef = add nuw nsw i64 %i.bdr, %.055.i        ; 2 uses
  %i.beg = icmp slt i64 %i.bef, %i.bdm
  br i1 %i.beg, label %bb.kx, label %.thread.i378, !llvm.loop !396

.thread.i378:                                     ; preds = %bb.ld, %bb.kx
  %.035.lcssa.ph.i = phi i64 [ %.2.i, %bb.ld ], [ %.03554.i, %bb.kx ]
  %i.beh = getelementptr inbounds i8, ptr %i.bdq, i64 %.035.lcssa.ph.i
  store i8 0, ptr %i.beh, align 1, !tbaa !48
  br label %sbuf_strdup_from_utf8.exit

tty_is_utf8.exit.thread:                          ; preds = %.tty_is_utf8.exit.thread_crit_edge, %tty_is_utf8.exit
end_hunk_2
begin_hunk_3_@edit_clear:bb.a

term_up.exit:                                     ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !223  ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %term_up.exit
  %.lcssa = phi i64 [ %i.h, %term_up.exit ], [ %i.q, %.lr.ph ]
  %i.j = load i64, ptr %i.c, align 8, !tbaa !224
  %i.k = sub nsw i64 %.lcssa, %i.j                ; 2 uses
  %i.l = icmp slt i64 %i.k, 1
  br i1 %i.l, label %term_up.exit11, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !143
  tail call void (ptr, ptr, ...) @term_writef(ptr noundef readonly %i.m, ptr noundef nonnull @.str.270, i64 noundef %i.k)
  br label %term_up.exit11

term_up.exit11:                                   ; preds = %._crit_edge, %bb.c
  ret void

.lr.ph:                                           ; preds = %term_up.exit, %.lr.ph
  %.012 = phi i64 [ %i.p, %.lr.ph ], [ 0, %term_up.exit ]
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !143
  tail call fastcc void @term_write_n(ptr noundef %i.n, ptr noundef nonnull @.str.273, i64 noundef 4)
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !143
  tail call fastcc void @term_write_n(ptr noundef %i.o, ptr noundef nonnull @.str.296, i64 noundef 1)
  %i.p = add nuw nsw i64 %.012, 1                 ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !223  ; 2 uses
  %i.r = icmp slt i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !467
}

; Function Attrs: nounwind uwtable
define internal void @bbcode_printf(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ...) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %bbcode_vprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @sbuf_append_vprintf(ptr noundef nonnull %i.b, ptr noundef nonnull readonly %1, ptr noundef nonnull %2)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !79
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %sbuf_string.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %spec.select.i.i.i = select i1 %i.j, ptr @.str.3, ptr %i.i
  br label %sbuf_string.exit.i

sbuf_string.exit.i:                               ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.c ], [ null, %bb.b ]
  call fastcc void @bbcode_print(ptr noundef nonnull %0, ptr noundef %.0.i.i.i)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !149  ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.sbuf_len.exit_crit_edge.i.i, label %bb.d

.sbuf_len.exit_crit_edge.i.i:                     ; preds = %sbuf_string.exit.i
  %.pre.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %i.m = call i64 @llvm.smin.i64(i64 %.pre.i.i, i64 0)
  br label %sbuf_len.exit.i.i

bb.d:                                             ; preds = %sbuf_string.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !79   ; 2 uses
  br label %sbuf_len.exit.i.i

sbuf_len.exit.i.i:                                ; preds = %bb.d, %.sbuf_len.exit_crit_edge.i.i
  %i.p = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i, %.sbuf_len.exit_crit_edge.i.i ] ; 2 uses
  %.0.i.i10.i = phi i64 [ %i.o, %bb.d ], [ %i.m, %.sbuf_len.exit_crit_edge.i.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %i.p, 0
  br i1 %.not.i.i.i, label %bb.e, label %bbcode_vprintf.exit

bb.e:                                             ; preds = %sbuf_len.exit.i.i
  %i.r = sub i64 %i.p, %.0.i.i10.i                ; 3 uses
  %i.s = icmp slt i64 %i.r, 1
  br i1 %i.s, label %ic_memmove.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !81   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %.0.i.i10.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr readonly align 1 %i.u, i64 %i.r, i1 false)
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !79
  %.pre2.i.i = sub nsw i64 %.pre.i.i.i, %.0.i.i10.i
  br label %ic_memmove.exit.i.i.i

ic_memmove.exit.i.i.i:                            ; preds = %bb.f, %bb.e
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.q, align 8, !tbaa !79
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !81
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %.pre-phi.i.i
  store i8 0, ptr %i.w, align 1, !tbaa !48
  br label %bbcode_vprintf.exit

bbcode_vprintf.exit:                              ; preds = %bb.a, %sbuf_len.exit.i.i, %ic_memmove.exit.i.i.i
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @sbuf_find_word_start(ptr nofree readonly captures(address_is_null) %.0.val, i64 %.16.val, i64 noundef %0) unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %.0.val, null
  br i1 %.not.i, label %str_find_word_start.exit, label %.preheader.split.i.preheader.i

.preheader.split.i.preheader.i:                   ; preds = %bb.a
  %spec.select.i.i = tail call i64 @llvm.smin.i64(i64 %0, i64 %.16.val)
  %spec.store.select.i.i = tail call i64 @llvm.smax.i64(i64 %spec.select.i.i, i64 0)
  br label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %ic_char_is_idletter.exit15.thread.i, %.preheader.split.i.preheader.i
  %.031.i.i = phi i64 [ %spec.select41.i.i, %ic_char_is_idletter.exit15.thread.i ], [ %spec.store.select.i.i, %.preheader.split.i.preheader.i ] ; 9 uses
  switch i64 %.031.i.i, label %.lr.ph [
    i64 0, label %.thread.split.i.i.preheader
    i64 1, label %str_prev_ofs.exit.i.i
  ]

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.a = add nuw i64 %.021.i.i.i7, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.a, %.031.i.i
  br i1 %exitcond.not.i.i.i, label %str_prev_ofs.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.i.i, %.preheader.i.i.i
  %.021.i.i.i7 = phi i64 [ %i.a, %.preheader.i.i.i ], [ 1, %.preheader.split.i.i ] ; 3 uses
  %i.b = sub nuw nsw i64 %.031.i.i, %.021.i.i.i7
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !48
  %or.cond4.i.i.i = icmp sgt i8 %i.d, -65
  br i1 %or.cond4.i.i.i, label %str_prev_ofs.exit.i.i, label %.preheader.i.i.i

str_prev_ofs.exit.i.i:                            ; preds = %.preheader.i.i.i, %.lr.ph, %.preheader.split.i.i
  %.2.i.i.i = phi i64 [ %.031.i.i, %.preheader.split.i.i ], [ %.031.i.i, %.preheader.i.i.i ], [ %.021.i.i.i7, %.lr.ph ] ; 4 uses
  %i.e = icmp slt i64 %.2.i.i.i, 1
  br i1 %i.e, label %.thread.split.i.i.preheader, label %bb.b

bb.b:                                             ; preds = %str_prev_ofs.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.031.i.i
  %i.g = sub nsw i64 0, %.2.i.i.i
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !48    ; 6 uses
  %i.j = icmp slt i8 %i.i, 0
  %i.k = add nsw i8 %i.i, -65
  %or.cond4.i7.i = icmp ult i8 %i.k, 26
  %or.cond27.i8.i = select i1 %i.j, i1 true, i1 %or.cond4.i7.i
  %i.l = add nsw i8 %i.i, -97
  %or.cond7.i9.i = icmp ult i8 %i.l, 26
  %or.cond28.i10.i = select i1 %or.cond27.i8.i, i1 true, i1 %or.cond7.i9.i
  br i1 %or.cond28.i10.i, label %ic_char_is_idletter.exit15.thread.i, label %ic_char_is_idletter.exit15.i

ic_char_is_idletter.exit15.i:                     ; preds = %bb.b
  %i.m = add nsw i8 %i.i, -48
  %or.cond10.i11.i = icmp ult i8 %i.m, 10
  %i.n = icmp eq i8 %i.i, 95
  %or.cond13.i12.i = or i1 %i.n, %or.cond10.i11.i
  %i.o = icmp eq i8 %i.i, 45
  %spec.select.i13.i = or i1 %i.o, %or.cond13.i12.i
  %cond.fr.i = freeze i1 %spec.select.i13.i       ; 2 uses
  %spec.select.i = select i1 %cond.fr.i, i64 %.2.i.i.i, i64 0
  br label %ic_char_is_idletter.exit15.thread.i

ic_char_is_idletter.exit15.thread.i:              ; preds = %ic_char_is_idletter.exit15.i, %bb.b
  %.0.i1418.i = phi i1 [ %cond.fr.i, %ic_char_is_idletter.exit15.i ], [ true, %bb.b ]
  %i.p = phi i64 [ %spec.select.i, %ic_char_is_idletter.exit15.i ], [ %.2.i.i.i, %bb.b ]
  %spec.select41.i.i = sub nsw i64 %.031.i.i, %i.p ; 3 uses
  %i.q = icmp sgt i64 %spec.select41.i.i, 0
  %or.cond.i.i = select i1 %.0.i1418.i, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %.preheader.split.i.i, label %.thread.split.i.i.preheader, !llvm.loop !35

.thread.split.i.i.preheader:                      ; preds = %.preheader.split.i.i, %ic_char_is_idletter.exit15.thread.i, %str_prev_ofs.exit.i.i
  %.3.i.i.ph = phi i64 [ %.031.i.i, %str_prev_ofs.exit.i.i ], [ %spec.select41.i.i, %ic_char_is_idletter.exit15.thread.i ], [ %.031.i.i, %.preheader.split.i.i ]
  br label %.thread.split.i.i

.thread.split.i.i:                                ; preds = %.thread.split.i.i.preheader, %ic_char_is_idletter.exit.thread28.i
  %.3.i.i = phi i64 [ %i.ab, %ic_char_is_idletter.exit.thread28.i ], [ %.3.i.i.ph, %.thread.split.i.i.preheader ] ; 11 uses
  %i.r = icmp sgt i64 %.3.i.i, 0
  br i1 %i.r, label %.preheader.i45.i.i.preheader, label %str_find_word_start.exit

.preheader.i45.i.i.preheader:                     ; preds = %.thread.split.i.i
  %exitcond.not.i47.i.i9 = icmp eq i64 %.3.i.i, 1
  br i1 %exitcond.not.i47.i.i9, label %str_prev_ofs.exit49.i.i, label %.lr.ph11

.preheader.i45.i.i:                               ; preds = %.lr.ph11
  %i.s = add nuw nsw i64 %.021.i46.i.i10, 1       ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %i.s, %.3.i.i
  br i1 %exitcond.not.i47.i.i, label %str_prev_ofs.exit49.i.i, label %.lr.ph11

.lr.ph11:                                         ; preds = %.preheader.i45.i.i.preheader, %.preheader.i45.i.i
  %.021.i46.i.i10 = phi i64 [ %i.s, %.preheader.i45.i.i ], [ 1, %.preheader.i45.i.i.preheader ] ; 4 uses
  %i.t = sub nuw nsw i64 %.3.i.i, %.021.i46.i.i10
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !48
  %or.cond4.i48.i.i = icmp sgt i8 %i.v, -65
  br i1 %or.cond4.i48.i.i, label %str_prev_ofs.exit49.i.thread.i, label %.preheader.i45.i.i

str_prev_ofs.exit49.i.thread.i:                   ; preds = %.lr.ph11
  %1 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.3.i.i
  %2 = sub nsw i64 0, %.021.i46.i.i10
  %3 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %str_prev_ofs.exit49.i.i

str_prev_ofs.exit49.i.i:                          ; preds = %.preheader.i45.i.i, %.preheader.i45.i.i.preheader, %str_prev_ofs.exit49.i.thread.i
  %4 = phi ptr [ %3, %str_prev_ofs.exit49.i.thread.i ], [ %.0.val, %.preheader.i45.i.i.preheader ], [ %.0.val, %.preheader.i45.i.i ]
  %.2.i44.i24.i = phi i64 [ %.021.i46.i.i10, %str_prev_ofs.exit49.i.thread.i ], [ %.3.i.i, %.preheader.i45.i.i.preheader ], [ %.3.i.i, %.preheader.i45.i.i ]
  %i.w = load i8, ptr %4, align 1, !tbaa !48
  %.fr32.i = freeze i8 %i.w                       ; 5 uses
  %i.x = icmp slt i8 %.fr32.i, 0
  %i.y = add nsw i8 %.fr32.i, -65
  %or.cond4.i.i = icmp ult i8 %i.y, 26
  %or.cond27.i.i = select i1 %i.x, i1 true, i1 %or.cond4.i.i
  %i.z = add nsw i8 %.fr32.i, -97
  %or.cond7.i.i = icmp ult i8 %i.z, 26
  %or.cond28.i.i = select i1 %or.cond27.i.i, i1 true, i1 %or.cond7.i.i
  %i.aa = add i8 %.fr32.i, -48
  %or.cond10.i.i = icmp ult i8 %i.aa, 10
  %or.cond.i = or i1 %or.cond10.i.i, %or.cond28.i.i
  br i1 %or.cond.i, label %str_find_word_start.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %str_prev_ofs.exit49.i.i
  switch i8 %.fr32.i, label %ic_char_is_idletter.exit.thread28.i [
    i8 95, label %str_find_word_start.exit
    i8 45, label %str_find_word_start.exit
  ]

ic_char_is_idletter.exit.thread28.i:              ; preds = %switch.early.test.i
  %i.ab = sub nsw i64 %.3.i.i, %.2.i44.i24.i      ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.thread.split.i.i, label %str_find_word_start.exit, !llvm.loop !33

str_find_word_start.exit:                         ; preds = %.thread.split.i.i, %str_prev_ofs.exit49.i.i, %switch.early.test.i, %switch.early.test.i, %ic_char_is_idletter.exit.thread28.i, %bb.a
  %.235.split.i.i = phi i64 [ 0, %bb.a ], [ %.3.i.i, %switch.early.test.i ], [ 0, %.thread.split.i.i ], [ %.3.i.i, %switch.early.test.i ], [ 0, %ic_char_is_idletter.exit.thread28.i ], [ %.3.i.i, %str_prev_ofs.exit49.i.i ]
  ret i64 %.235.split.i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edit_history_at(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 -1, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !225, !range !136, !noundef !137
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !238
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 6 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !217    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %history_update.exit, label %select.unfold

select.unfold:                                    ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %spec.select = select i1 %i.k, ptr @.str.3, ptr %i.j
  %i.l = load i64, ptr %i.e, align 8, !tbaa !166  ; 4 uses
  %spec.select.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.l, i64 1) ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %history_remove_last.exit.i

.lr.ph.i.i.i:                                     ; preds = %select.unfold
  %i.n = sub nsw i64 %i.l, %spec.select.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !167
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !168
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.017.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.u = getelementptr i8, ptr %i.q, i64 16
  %.val.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !82
  tail call void %.val.i.i.i(ptr noundef %i.t) #28, !inline_history !36
  %i.v = add nuw nsw i64 %.017.i.i.i, 1           ; 2 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !166  ; 2 uses
  %i.x = icmp slt i64 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %history_remove_last.exit.i, !llvm.loop !19

history_remove_last.exit.i:                       ; preds = %bb.c, %select.unfold
  %.lcssa.i.i.i = phi i64 [ %i.l, %select.unfold ], [ %i.w, %bb.c ]
  %i.y = sub nsw i64 %.lcssa.i.i.i, %spec.select.i.i.i
  store i64 %i.y, ptr %i.e, align 8, !tbaa !166
  %i.z = tail call fastcc zeroext i1 @history_push(ptr noundef nonnull %i.e, ptr noundef nonnull readonly %spec.select) ; 0 uses
  br label %history_update.exit

history_update.exit:                              ; preds = %bb.b, %history_remove_last.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.aa, align 8, !tbaa !238
  store i8 0, ptr %i.a, align 8, !tbaa !225
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %history_update.exit
  %i.ab = phi i64 [ %.pre, %._crit_edge ], [ 0, %history_update.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !161 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = sext i32 %2 to i64
  %i.ag = add nsw i64 %i.ab, %i.af                ; 4 uses
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %history_get.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !166 ; 2 uses
  %.not.i = icmp slt i64 %i.ag, %i.ai
  br i1 %.not.i, label %history_get.exit, label %history_get.exit.thread

history_get.exit:                                 ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !168
  %i.al = xor i64 %i.ag, -1
  %i.am = getelementptr [8 x i8], ptr %i.ak, i64 %i.ai
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !87 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %history_get.exit.thread, label %bb.g

history_get.exit.thread:                          ; preds = %bb.d, %bb.e, %history_get.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !143
  %i.as = getelementptr i8, ptr %i.ar, i64 33
  %.val = load i8, ptr %i.as, align 1, !tbaa !159, !range !136, !noundef !137
  %i.at = trunc nuw i8 %.val to i1
  br i1 %i.at, label %term_beep.exit, label %bb.f

bb.f:                                             ; preds = %history_get.exit.thread
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !93
  %fputc.i = tail call i32 @fputc(i32 7, ptr %i.au) ; 0 uses
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !93
  %i.aw = tail call i32 @fflush(ptr noundef %i.av) ; 0 uses
  br label %term_beep.exit

bb.g:                                             ; preds = %history_get.exit
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !238
  %i.ax = load ptr, ptr %1, align 8, !tbaa !217   ; 5 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %sbuf_len.exit.i.i, label %sbuf_len.exit.i.thread.i

sbuf_len.exit.i.i:                                ; preds = %bb.g
  %.pre.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not.i.i.i = icmp sgt i64 %.pre.i.i, 0
  br i1 %.not.i.i.i, label %bb.h, label %sbuf_replace.exit

sbuf_len.exit.i.thread.i:                         ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !79 ; 4 uses
  %.not.i.i6.i = icmp sgt i64 %i.ba, 0
  br i1 %.not.i.i6.i, label %bb.h, label %sbuf_replace.exit

bb.h:                                             ; preds = %sbuf_len.exit.i.thread.i, %sbuf_len.exit.i.i
  %i.bb = phi ptr [ %i.az, %sbuf_len.exit.i.thread.i ], [ inttoptr (i64 16 to ptr), %sbuf_len.exit.i.i ] ; 3 uses
  %.0.i.i7.i = phi i64 [ %i.ba, %sbuf_len.exit.i.thread.i ], [ 0, %sbuf_len.exit.i.i ] ; 3 uses
  %i.bc = phi i64 [ %i.ba, %sbuf_len.exit.i.thread.i ], [ %.pre.i.i, %sbuf_len.exit.i.i ]
  %i.bd = sub nsw i64 %i.bc, %.0.i.i7.i           ; 3 uses
  %i.be = icmp slt i64 %i.bd, 1
  br i1 %i.be, label %sbuf_clear.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !81 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.0.i.i7.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr readonly align 1 %i.bg, i64 %i.bd, i1 false)
  %.pre.i.i.i = load i64, ptr %i.bb, align 8, !tbaa !79
  %.pre2.i.i = sub nsw i64 %.pre.i.i.i, %.0.i.i7.i
  br label %sbuf_clear.exit.thread.i

sbuf_clear.exit.thread.i:                         ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %bb.i ], [ %i.bd, %bb.h ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.bb, align 8, !tbaa !79
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !81
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.pre-phi.i.i
  store i8 0, ptr %i.bi, align 1, !tbaa !48
  %.pre.i = load i64, ptr %i.bb, align 8, !tbaa !79
  br label %sbuf_replace.exit

sbuf_replace.exit:                                ; preds = %sbuf_clear.exit.thread.i, %sbuf_len.exit.i.thread.i, %sbuf_len.exit.i.i
  %.0.i.i4.i = phi i64 [ 0, %sbuf_len.exit.i.i ], [ %.pre.i, %sbuf_clear.exit.thread.i ], [ %i.ba, %sbuf_len.exit.i.thread.i ]
  %i.bj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ao) #29
  %i.bk = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bj, i64 0)
  %i.bl = tail call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.ax, ptr noundef nonnull readonly %i.ao, i64 noundef %i.bk, i64 noundef %.0.i.i4.i) ; 0 uses
  %i.bm = icmp sgt i32 %2, 0
  %i.bn = load ptr, ptr %1, align 8, !tbaa !217   ; 4 uses
  br i1 %i.bm, label %bb.j, label %bb.l

bb.j:                                             ; preds = %sbuf_replace.exit
  %.val22 = load ptr, ptr %i.bn, align 8, !tbaa !81 ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %.val23 = load i64, ptr %i.bo, align 8, !tbaa !79 ; 6 uses
  %i.bp = icmp eq ptr %.val22, null
  %i.bq = icmp slt i64 %.val23, 0
  %or.cond.i.i.i = or i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i, label %sbuf_find_line_end.exit, label %.preheader

.preheader:                                       ; preds = %bb.j, %char_is_linefeed.exit.thread.i.i
  %.2.i.i.i = phi i64 [ %i.bw, %char_is_linefeed.exit.thread.i.i ], [ 0, %bb.j ] ; 5 uses
  %i.br = tail call fastcc i64 @str_next_ofs(ptr noundef readonly %.val22, i64 noundef %.val23, i64 noundef %.2.i.i.i, ptr noundef null) ; 3 uses
  %i.bs = icmp slt i64 %i.br, 1
  br i1 %i.bs, label %sbuf_find_line_end.exit, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.bt = icmp eq i64 %i.br, 1
  br i1 %i.bt, label %char_is_linefeed.exit.i.i, label %char_is_linefeed.exit.thread.i.i

char_is_linefeed.exit.i.i:                        ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %.val22, i64 %.2.i.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !48
  switch i8 %i.bv, label %char_is_linefeed.exit.thread.i.i [
    i8 10, label %sbuf_find_line_end.exit
    i8 0, label %sbuf_find_line_end.exit
  ]

char_is_linefeed.exit.thread.i.i:                 ; preds = %char_is_linefeed.exit.i.i, %bb.k
  %i.bw = add nuw nsw i64 %i.br, %.2.i.i.i        ; 2 uses
  %i.bx = icmp slt i64 %i.bw, %.val23
  br i1 %i.bx, label %.preheader, label %sbuf_find_line_end.exit, !llvm.loop !34

sbuf_find_line_end.exit:                          ; preds = %.preheader, %char_is_linefeed.exit.i.i, %char_is_linefeed.exit.i.i, %char_is_linefeed.exit.thread.i.i, %bb.j
  %i.by = phi i64 [ %.val23, %bb.j ], [ %.val23, %char_is_linefeed.exit.thread.i.i ], [ %.val23, %.preheader ], [ %.2.i.i.i, %char_is_linefeed.exit.i.i ], [ %.2.i.i.i, %char_is_linefeed.exit.i.i ]
  %i.bz = tail call i64 @llvm.smax.i64(i64 %i.by, i64 0)
  br label %sbuf_len.exit

bb.l:                                             ; preds = %sbuf_replace.exit
  %i.ca = icmp eq ptr %i.bn, null
  br i1 %i.ca, label %sbuf_len.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_3
