Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@attrbuf_update_set_at:bb.a

bb.i:                                             ; preds = %.unr-lcssa, %bb.h
  %i.ak = icmp sgt i64 %2, 0
  br i1 %i.ak, label %.lr.ph, label %attrbuf_ensure_capacity.exit

.lr.ph:                                           ; preds = %bb.i
  %i.al = and i64 %.fr41, 268435455               ; 2 uses
  %i.am = and i64 %.fr41, 1152921500311879680     ; 2 uses
  %.not25.i = icmp eq i64 %i.am, 0                ; 2 uses
  %i.an = and i64 %.fr41, 805306368               ; 3 uses
  %.not26.i = icmp eq i64 %i.an, 0                ; 3 uses
  %.not27.i = icmp ult i64 %.fr41, 4611686018427387904 ; 4 uses
  %i.ao = and i64 %.fr41, -4611686018427387904    ; 4 uses
  %i.ap = and i64 %.fr41, 3221225472              ; 5 uses
  %.not28.i = icmp eq i64 %i.ap, 0                ; 4 uses
  %i.aq = and i64 %.fr41, 3458764513820540928     ; 5 uses
  %.not29.i = icmp eq i64 %i.aq, 0                ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.not.i26 = icmp eq i64 %i.al, 0
  br i1 %.not.i26, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.us
  %.129.us.us = phi i64 [ %i.be, %.lr.ph.split.us.split.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !75
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %.129.us.us ; 2 uses
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = and i64 %i.at, -1152921500311879681
  %i.av = or disjoint i64 %i.au, %i.am
  %.sroa.013.1.i.us.us = select i1 %.not25.i, i64 %i.at, i64 %i.av ; 2 uses
  %i.aw = and i64 %.sroa.013.1.i.us.us, -805306369
  %i.ax = or disjoint i64 %i.aw, %i.an
  %.sroa.013.2.i.us.us = select i1 %.not26.i, i64 %.sroa.013.1.i.us.us, i64 %i.ax ; 2 uses
  %i.ay = and i64 %.sroa.013.2.i.us.us, 4611686018427387903
  %i.az = or disjoint i64 %i.ay, %i.ao
  %.sroa.013.3.i.us.us = select i1 %.not27.i, i64 %.sroa.013.2.i.us.us, i64 %i.az ; 2 uses
  %i.ba = and i64 %.sroa.013.3.i.us.us, -3221225473
  %i.bb = or disjoint i64 %i.ba, %i.ap
  %.sroa.013.4.i.us.us = select i1 %.not28.i, i64 %.sroa.013.3.i.us.us, i64 %i.bb ; 2 uses
  %i.bc = and i64 %.sroa.013.4.i.us.us, -3458764513820540929
  %i.bd = or disjoint i64 %i.bc, %i.aq
  %.sroa.013.5.i.us.us = select i1 %.not29.i, i64 %.sroa.013.4.i.us.us, i64 %i.bd
  store i64 %.sroa.013.5.i.us.us, ptr %i.as, align 8, !tbaa !48
  %i.be = add nsw i64 %.129.us.us, 1              ; 2 uses
  %i.bf = icmp slt i64 %i.be, %i.a
  br i1 %i.bf, label %.lr.ph.split.us.split.us, label %attrbuf_ensure_capacity.exit, !llvm.loop !30

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not25.i, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %.lr.ph.split.us.split.split.us
  %.129.us.us30 = phi i64 [ %i.bt, %.lr.ph.split.us.split.split.us ], [ %1, %.lr.ph.split.us.split ] ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !75
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %.129.us.us30 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = and i64 %i.bi, -268435456
  %i.bk = or disjoint i64 %i.bj, %i.al            ; 2 uses
  %i.bl = and i64 %i.bk, -805306369
  %i.bm = or disjoint i64 %i.bl, %i.an
  %.sroa.013.2.i.us.us32 = select i1 %.not26.i, i64 %i.bk, i64 %i.bm ; 2 uses
  %i.bn = and i64 %.sroa.013.2.i.us.us32, 4611686018427387903
  %i.bo = or disjoint i64 %i.bn, %i.ao
  %.sroa.013.3.i.us.us33 = select i1 %.not27.i, i64 %.sroa.013.2.i.us.us32, i64 %i.bo ; 2 uses
  %i.bp = and i64 %.sroa.013.3.i.us.us33, -3221225473
  %i.bq = or disjoint i64 %i.bp, %i.ap
  %.sroa.013.4.i.us.us34 = select i1 %.not28.i, i64 %.sroa.013.3.i.us.us33, i64 %i.bq ; 2 uses
  %i.br = and i64 %.sroa.013.4.i.us.us34, -3458764513820540929
  %i.bs = or disjoint i64 %i.br, %i.aq
  %.sroa.013.5.i.us.us35 = select i1 %.not29.i, i64 %.sroa.013.4.i.us.us34, i64 %i.bs
  store i64 %.sroa.013.5.i.us.us35, ptr %i.bh, align 8, !tbaa !48
  %i.bt = add nsw i64 %.129.us.us30, 1            ; 2 uses
  %i.bu = icmp slt i64 %i.bt, %i.a
  br i1 %i.bu, label %.lr.ph.split.us.split.split.us, label %attrbuf_ensure_capacity.exit, !llvm.loop !30

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split
  %invariant.op58 = and i64 %.fr41, 1152921500580315135
  br i1 %.not26.i, label %.lr.ph.split.us.split.split.split.us, label %.lr.ph.split.us.split.split.split.preheader

.lr.ph.split.us.split.split.split.preheader:      ; preds = %.lr.ph.split.us.split.split
  %invariant.op56 = and i64 %.fr41, 1152921501385621503
  br label %.lr.ph.split.us.split.split.split

.lr.ph.split.us.split.split.split.us:             ; preds = %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.split.us
  %.129.us.us36 = phi i64 [ %i.cf, %.lr.ph.split.us.split.split.split.us ], [ %1, %.lr.ph.split.us.split.split ] ; 2 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !75
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %.129.us.us36 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = and i64 %i.bx, -1152921500580315136
  %.reass = or disjoint i64 %i.by, %invariant.op58 ; 2 uses
  %i.bz = and i64 %.reass, 4611686018427387903
  %i.ca = or disjoint i64 %i.bz, %i.ao
  %.sroa.013.3.i.us.us38 = select i1 %.not27.i, i64 %.reass, i64 %i.ca ; 2 uses
  %i.cb = and i64 %.sroa.013.3.i.us.us38, -3221225473
  %i.cc = or disjoint i64 %i.cb, %i.ap
  %.sroa.013.4.i.us.us39 = select i1 %.not28.i, i64 %.sroa.013.3.i.us.us38, i64 %i.cc ; 2 uses
  %i.cd = and i64 %.sroa.013.4.i.us.us39, -3458764513820540929
  %i.ce = or disjoint i64 %i.cd, %i.aq
  %.sroa.013.5.i.us.us40 = select i1 %.not29.i, i64 %.sroa.013.4.i.us.us39, i64 %i.ce
  store i64 %.sroa.013.5.i.us.us40, ptr %i.bw, align 8, !tbaa !48
  %i.cf = add nsw i64 %.129.us.us36, 1            ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.a
  br i1 %i.cg, label %.lr.ph.split.us.split.split.split.us, label %attrbuf_ensure_capacity.exit, !llvm.loop !30

.lr.ph.split.us.split.split.split:                ; preds = %.lr.ph.split.us.split.split.split.preheader, %.lr.ph.split.us.split.split.split
  %.129.us = phi i64 [ %i.cr, %.lr.ph.split.us.split.split.split ], [ %1, %.lr.ph.split.us.split.split.split.preheader ] ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !75
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %.129.us ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = and i64 %i.cj, -1152921501385621504
  %.reass57 = or disjoint i64 %i.ck, %invariant.op56 ; 2 uses
  %i.cl = and i64 %.reass57, 4611686018427387903
  %i.cm = or disjoint i64 %i.cl, %i.ao
  %.sroa.013.3.i.us = select i1 %.not27.i, i64 %.reass57, i64 %i.cm ; 2 uses
  %i.cn = and i64 %.sroa.013.3.i.us, -3221225473
  %i.co = or disjoint i64 %i.cn, %i.ap
  %.sroa.013.4.i.us = select i1 %.not28.i, i64 %.sroa.013.3.i.us, i64 %i.co ; 2 uses
  %i.cp = and i64 %.sroa.013.4.i.us, -3458764513820540929
  %i.cq = or disjoint i64 %i.cp, %i.aq
  %.sroa.013.5.i.us = select i1 %.not29.i, i64 %.sroa.013.4.i.us, i64 %i.cq
  store i64 %.sroa.013.5.i.us, ptr %i.ci, align 8, !tbaa !48
  %i.cr = add nsw i64 %.129.us, 1                 ; 2 uses
  %i.cs = icmp slt i64 %i.cr, %i.a
  br i1 %i.cs, label %.lr.ph.split.us.split.split.split, label %attrbuf_ensure_capacity.exit, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.129 = phi i64 [ %i.cv, %.lr.ph.split ], [ %1, %.lr.ph ] ; 2 uses
  %i.ct = load ptr, ptr %0, align 8, !tbaa !75
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.129
  store i64 %.fr41, ptr %i.cu, align 8, !tbaa !48
  %i.cv = add nsw i64 %.129, 1                    ; 2 uses
  %i.cw = icmp slt i64 %i.cv, %i.a
  br i1 %i.cw, label %.lr.ph.split, label %attrbuf_ensure_capacity.exit, !llvm.loop !30

attrbuf_ensure_capacity.exit:                     ; preds = %.lr.ph.split, %.lr.ph.split.us.split.split.split, %.lr.ph.split.us.split.split.split.us, %.lr.ph.split.us.split.split.us, %.lr.ph.split.us.split.us, %bb.i, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @sbuf_insert_at_n(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %3, 0
  br i1 %i.a, label %sbuf_ensure_extra.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !79   ; 3 uses
  %i.d = icmp sle i64 %3, %i.c
  %i.e = icmp ne ptr %1, null
  %or.cond.not37 = and i1 %i.e, %i.d
  %i.f = icmp sgt i64 %2, 0
  %or.cond35 = and i1 %i.f, %or.cond.not37
  br i1 %or.cond35, label %.lr.ph.i, label %sbuf_ensure_extra.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.05.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ]  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.05.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !48
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %str_limit_to_length.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = add nuw nsw i64 %.05.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %2
  br i1 %exitcond.not.i, label %str_limit_to_length.exit, label %.lr.ph.i, !llvm.loop !350

str_limit_to_length.exit:                         ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.05.i, %.lr.ph.i ], [ %2, %bb.c ] ; 6 uses
  %i.j = icmp slt i64 %.0.lcssa.i, 1
  br i1 %i.j, label %sbuf_ensure_extra.exit, label %bb.d

bb.d:                                             ; preds = %str_limit_to_length.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !213  ; 6 uses
  %i.m = add nuw nsw i64 %.0.lcssa.i, %i.c        ; 3 uses
  %.not.i32 = icmp slt i64 %i.l, %i.m
  br i1 %.not.i32, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.n = icmp slt i64 %i.l, 1
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ugt i64 %i.l, 1000
  %i.p = shl nuw nsw i64 %i.l, 1
  %i.q = add nuw nsw i64 %i.l, 1000
  %.ph.i = select i1 %i.o, i64 %i.q, i64 %i.p
  %spec.select33.i = tail call i64 @llvm.smax.i64(i64 %.ph.i, i64 %i.m) ; 2 uses
  tail call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.l, i64 noundef %spec.select33.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 120)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %spec.select34.i = phi i64 [ %spec.select33.i, %bb.f ], [ %spec.select.i, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78
  %i.t = load ptr, ptr %0, align 8, !tbaa !81
  %4 = getelementptr i8, ptr %i.s, i64 8
  %.val.i = load ptr, ptr %4, align 8, !tbaa !74
  %5 = add nuw nsw i64 %spec.select34.i, 1
  %i.u = tail call ptr %.val.i(ptr noundef %i.t, i64 noundef %5) #28, !inline_history !31 ; 3 uses
  %.not36.i = icmp eq ptr %i.u, null
  br i1 %.not36.i, label %sbuf_ensure_extra.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.u, ptr %0, align 8, !tbaa !81
  store i64 %spec.select34.i, ptr %i.k, align 8, !tbaa !213
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select34.i
  store i8 0, ptr %i.v, align 1, !tbaa !48
  %i.w = load ptr, ptr %0, align 8, !tbaa !81
  %i.x = load i64, ptr %i.b, align 8, !tbaa !79
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i8 0, ptr %i.y, align 1, !tbaa !48
  %.pre = load i64, ptr %i.b, align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %i.z = phi i64 [ %i.c, %bb.d ], [ %.pre, %bb.i ]
  %i.aa = sub nsw i64 %i.z, %3                    ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 1
  br i1 %i.ab, label %ic_memmove.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %0, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.lcssa.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr readonly align 1 %i.ad, i64 %i.aa, i1 false)
  br label %ic_memmove.exit

ic_memmove.exit:                                  ; preds = %bb.j, %bb.k
  %i.af = load ptr, ptr %0, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %1, i64 %.0.lcssa.i, i1 false)
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !81
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !79
  %i.ai = add nsw i64 %i.ah, %.0.lcssa.i          ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !79
  %i.aj = getelementptr inbounds i8, ptr %.pre38, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !48
  %i.ak = add nuw nsw i64 %.0.lcssa.i, %3
  br label %sbuf_ensure_extra.exit

sbuf_ensure_extra.exit:                           ; preds = %bb.h, %str_limit_to_length.exit, %bb.a, %bb.b, %ic_memmove.exit
  %.0 = phi i64 [ %i.ak, %ic_memmove.exit ], [ %3, %bb.a ], [ %3, %bb.b ], [ %3, %bb.h ], [ %3, %str_limit_to_length.exit ]
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @bbcode_close(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.sroa.9 = alloca { %union.attr_s, %struct.width_s, i64 }, align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83   ; 4 uses
  %i.c = icmp sgt i64 %i.b, %1
  br i1 %i.c, label %.lr.ph69, label %.loopexit

.lr.ph69:                                         ; preds = %bb.a
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.e = icmp slt i64 %i.b, 1
  br i1 %i.e, label %bbcode_tag_pop.exit.thread, label %bbcode_tag_pop.exit.us

bbcode_tag_pop.exit.us:                           ; preds = %.lr.ph69.split.us
  %i.f = add nsw i64 %i.b, -1                     ; 2 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !83
  %i.g = load ptr, ptr %0, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %.sroa.0.0.copyload41.us = load ptr, ptr %i.h, align 8, !tbaa !87
  %.sroa.9.0..sroa_idx43.us = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx43.us, i64 32, i1 false), !tbaa.struct !353
  br label %bbcode_tag_push.exit.thread52

.lr.ph69.split:                                   ; preds = %.lr.ph69, %bbcode_tag_push.exit
  %i.i = phi i64 [ %i.bo, %bbcode_tag_push.exit ], [ %i.b, %.lr.ph69 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %bbcode_tag_pop.exit.thread, label %bbcode_tag_pop.exit

bbcode_tag_pop.exit.thread:                       ; preds = %.lr.ph69.split, %.lr.ph69.split.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i8 0, i64 32, i1 false)
  br label %bbcode_tag_push.exit.thread52

bbcode_tag_pop.exit:                              ; preds = %.lr.ph69.split
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !tbaa !83
  %i.l = load ptr, ptr %0, align 8, !tbaa !85     ; 2 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.k ; 2 uses
  %.sroa.0.0.copyload41 = load ptr, ptr %i.m, align 8, !tbaa !87 ; 6 uses
  %.sroa.9.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx43, i64 32, i1 false), !tbaa.struct !353
  %i.n = icmp eq ptr %.sroa.0.0.copyload41, null
  br i1 %i.n, label %bbcode_tag_push.exit.thread52, label %bb.b

bb.b:                                             ; preds = %bbcode_tag_pop.exit
  %i.o = tail call fastcc i32 @ic_stricmp(ptr noundef nonnull %.sroa.0.0.copyload41, ptr noundef nonnull %2)
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bbcode_tag_push.exit.thread52, label %bb.c

bbcode_tag_push.exit.thread52:                    ; preds = %bbcode_tag_pop.exit, %bb.b, %bbcode_tag_pop.exit.us, %bbcode_tag_pop.exit.thread
  %.sroa.0.047 = phi ptr [ null, %bbcode_tag_pop.exit.thread ], [ %.sroa.0.0.copyload41.us, %bbcode_tag_pop.exit.us ], [ null, %bbcode_tag_pop.exit ], [ %.sroa.0.0.copyload41, %bb.b ]
  store ptr %.sroa.0.047, ptr %3, align 8, !tbaa !87
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9, i64 32, i1 false), !tbaa.struct !353
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %.062 = add nsw i64 %i.i, -2                    ; 2 uses
  %i.q = icmp sgt i64 %.062, %1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %ic_stricmp.exit.thread
  %.063 = phi i64 [ %.0, %ic_stricmp.exit.thread ], [ %.062, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds [40 x i8], ptr %i.l, i64 %.063
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !208  ; 4 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %ic_stricmp.exit.thread, label %ic_strlen.exit15.i

ic_strlen.exit15.i:                               ; preds = %.lr.ph
  %i.t = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.s) #29 ; 2 uses
  %i.u = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %i.v = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #29 ; 4 uses
  %i.w = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.v, i64 0)
  %i.x = icmp sgt i64 %i.v, %i.u
  %i.y = icmp sgt i64 %i.t, %i.w
  %or.cond54 = or i1 %i.x, %i.y
  br i1 %or.cond54, label %ic_stricmp.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %ic_strlen.exit15.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !48    ; 2 uses
  %i.aa = icmp ne i8 %i.z, 0
  %i.ab = icmp sgt i64 %i.v, 0                    ; 2 uses
  %i.ac = and i1 %i.ab, %i.aa
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.d
  %i.ad = phi i8 [ %i.ao, %bb.d ], [ %i.z, %.preheader.i.i ] ; 3 uses
  %.02335.i.i = phi i64 [ %i.am, %bb.d ], [ 0, %.preheader.i.i ] ; 2 uses
  %.02434.i.i = phi i32 [ %.1.i.i, %bb.d ], [ undef, %.preheader.i.i ]
  %i.ae = add i8 %i.ad, -65
  %or.cond.i.i.i = icmp ult i8 %i.ae, 26
  %i.af = add nuw nsw i8 %i.ad, 32
  %i.ag = select i1 %or.cond.i.i.i, i8 %i.af, i8 %i.ad ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.02335.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !48  ; 3 uses
  %i.aj = add i8 %i.ai, -65
  %or.cond.i30.i.i = icmp ult i8 %i.aj, 26
  %i.ak = add nuw nsw i8 %i.ai, 32
  %i.al = select i1 %or.cond.i30.i.i, i8 %i.ak, i8 %i.ai ; 3 uses
  %.not.i.i = icmp slt i8 %i.ag, %i.al
  %.not31.i.i = icmp sgt i8 %i.ag, %i.al
  %..024.i.i = select i1 %.not31.i.i, i32 1, i32 %.02434.i.i
  %.1.i.i = select i1 %.not.i.i, i32 -1, i32 %..024.i.i ; 2 uses
  %cond.i.i = icmp eq i8 %i.ag, %i.al
  br i1 %cond.i.i, label %bb.d, label %ic_stricmp.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = add nuw nsw i64 %.02335.i.i, 1          ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !48  ; 2 uses
  %i.ap = icmp ne i8 %i.ao, 0
  %i.aq = icmp sgt i64 %i.v, %i.am                ; 2 uses
  %i.ar = and i1 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !25

._crit_edge.i.i:                                  ; preds = %bb.d, %.preheader.i.i
  %.023.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.am, %bb.d ]
  %.lcssa.i.i = phi i1 [ %i.ab, %.preheader.i.i ], [ %i.aq, %bb.d ]
  br i1 %.lcssa.i.i, label %bb.e, label %bbcode_tag_push.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 %.023.lcssa.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !48
  %i.au = icmp ne i8 %i.at, 0
  %i.av = sext i1 %i.au to i32
  br label %ic_stricmp.exit

ic_stricmp.exit:                                  ; preds = %.lr.ph.i.i, %bb.e
  %.0.i = phi i32 [ %i.av, %bb.e ], [ %.1.i.i, %.lr.ph.i.i ]
  %i.aw = icmp eq i32 %.0.i, 0
  br i1 %i.aw, label %bbcode_tag_push.exit, label %ic_stricmp.exit.thread

ic_stricmp.exit.thread:                           ; preds = %ic_strlen.exit15.i, %.lr.ph, %ic_stricmp.exit
  %.0 = add nsw i64 %.063, -1                     ; 2 uses
  %i.ax = icmp sgt i64 %.0, %1
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !351

._crit_edge:                                      ; preds = %bb.c, %ic_stricmp.exit.thread
  tail call void (ptr, ...) @bbcode_invalid(ptr noundef nonnull @.str.220, ptr noundef nonnull %.sroa.0.0.copyload41, ptr noundef nonnull %2)
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !83  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !84 ; 2 uses
end_hunk_0
begin_hunk_1_@filename_complete_indir:bb.a
  br i1 %or.cond.i.i.i, label %bb.an, label %.thread.i.i

bb.an:                                            ; preds = %bb.am
  %i.fl = add nsw i32 %i.fj, -97
  br label %ls_colors_from_char.exit.i.i

.thread.i.i:                                      ; preds = %bb.am, %ic_strlen.exit.i.i
  %i.fm = phi i32 [ %i.fj, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %.010.i.i = phi i8 [ %i.fi, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %.0198.i.i = phi i8 [ %i.fg, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %i.fn = add i8 %.0198.i.i, -65
  %or.cond5.i.i.i = icmp ult i8 %i.fn, 8
  %i.fo = add nsw i32 %i.fm, -57
  %spec.select.i.i.i = select i1 %or.cond5.i.i.i, i32 %i.fo, i32 256
  br label %ls_colors_from_char.exit.i.i

ls_colors_from_char.exit.i.i:                     ; preds = %.thread.i.i, %bb.an
  %.09.i.i = phi i8 [ %i.fi, %bb.an ], [ %.010.i.i, %.thread.i.i ] ; 3 uses
  %.0.i28.i.i = phi i32 [ %i.fl, %bb.an ], [ %spec.select.i.i.i, %.thread.i.i ]
  %i.fp = sext i8 %.09.i.i to i32                 ; 2 uses
  %i.fq = add i8 %.09.i.i, -97
  %or.cond.i29.i.i = icmp ult i8 %i.fq, 8
  br i1 %or.cond.i29.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %ls_colors_from_char.exit.i.i
  %i.fr = add nsw i32 %i.fp, -97
  br label %ls_colors_from_char.exit33.i.i

bb.ap:                                            ; preds = %ls_colors_from_char.exit.i.i
  %i.fs = add i8 %.09.i.i, -65
  %or.cond5.i30.i.i = icmp ult i8 %i.fs, 8
  %i.ft = add nsw i32 %i.fp, -57
  %spec.select.i31.i.i = select i1 %or.cond5.i30.i.i, i32 %i.ft, i32 256
  br label %ls_colors_from_char.exit33.i.i

ls_colors_from_char.exit33.i.i:                   ; preds = %bb.ap, %bb.ao
  %.0.i32.i.i = phi i32 [ %i.fr, %bb.ao ], [ %spec.select.i31.i.i, %bb.ap ]
  call void (ptr, ptr, ...) @sbuf_appendf(ptr noundef nonnull %3, ptr noundef nonnull @.str.226, i32 noundef %.0.i28.i.i, i32 noundef %.0.i32.i.i)
  br label %ls_colors_append.exit.i

ls_colors_append.exit.i:                          ; preds = %ls_colors_from_char.exit33.i.i, %bb.al, %ls_colors_from_key.exit.i.i, %.critedge.i.i.i, %bb.ag, %bb.ae, %ic_strlen.exit.i.i.i, %ls_colors_init.exit.i.i, %ls_colors_init.exit.thread2.i.i, %sbuf_clear.exit
  %.not.i63 = phi i1 [ true, %sbuf_clear.exit ], [ false, %ls_colors_from_char.exit33.i.i ], [ true, %ls_colors_init.exit.thread2.i.i ], [ false, %ls_colors_from_key.exit.i.i ], [ true, %ls_colors_init.exit.i.i ], [ true, %bb.al ], [ true, %ic_strlen.exit.i.i.i ], [ true, %bb.ag ], [ true, %bb.ae ], [ true, %.critedge.i.i.i ]
  %i.fu = load i64, ptr %i.t, align 8, !tbaa !79
  %i.fv = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly @.str.223, i64 noundef 6, i64 noundef %i.fu) ; 0 uses
  %i.fw = load i64, ptr %i.t, align 8, !tbaa !79
  %i.fx = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #29
  %i.fy = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.fx, i64 0)
  %i.fz = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.x, i64 noundef %i.fy, i64 noundef %i.fw) ; 0 uses
  %.not12.i = icmp eq i8 %i.dj, 0
  br i1 %.not12.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %ls_colors_append.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 %i.dj, ptr %i.a, align 1, !tbaa !48
  store i8 0, ptr %i.u, align 1, !tbaa !48
  %i.ga = load i64, ptr %i.t, align 8, !tbaa !79
  %i.gb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.a) #29
  %i.gc = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.gb, i64 0)
  %i.gd = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly %i.a, i64 noundef %i.gc, i64 noundef %i.ga) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %ls_colors_append.exit.i
  %i.ge = load i64, ptr %i.t, align 8, !tbaa !79
  %i.gf = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly @.str.224, i64 noundef 6, i64 noundef %i.ge) ; 0 uses
  br i1 %.not.i63, label %ls_colorize.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gg = load i64, ptr %i.t, align 8, !tbaa !79
  %i.gh = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly @.str.225, i64 noundef 3, i64 noundef %i.gg) ; 0 uses
  br label %ls_colorize.exit

ls_colorize.exit:                                 ; preds = %bb.ar, %bb.as
  %i.gi = load i64, ptr %i.m, align 8, !tbaa !79
  %i.gj = icmp slt i64 %i.gi, 0
  br i1 %i.gj, label %sbuf_string.exit67, label %bb.at

bb.at:                                            ; preds = %ls_colorize.exit
  %i.gk = load ptr, ptr %2, align 8, !tbaa !81    ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  %spec.select.i.i65 = select i1 %i.gl, ptr @.str.3, ptr %i.gk
  br label %sbuf_string.exit67

sbuf_string.exit67:                               ; preds = %ls_colorize.exit, %bb.at
  %.0.i.i66 = phi ptr [ %spec.select.i.i65, %bb.at ], [ null, %ls_colorize.exit ]
  %i.gm = load i64, ptr %i.t, align 8, !tbaa !79
  %i.gn = icmp slt i64 %i.gm, 0
  br i1 %i.gn, label %sbuf_string.exit70, label %bb.au

bb.au:                                            ; preds = %sbuf_string.exit67
  %i.go = load ptr, ptr %3, align 8, !tbaa !81    ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  %spec.select.i.i68 = select i1 %i.gp, ptr @.str.3, ptr %i.go
  br label %sbuf_string.exit70

sbuf_string.exit70:                               ; preds = %sbuf_string.exit67, %bb.au
  %.0.i.i69 = phi ptr [ %spec.select.i.i68, %bb.au ], [ null, %sbuf_string.exit67 ]
  %i.gq = load ptr, ptr %i.v, align 8, !tbaa !98
  %i.gr = load ptr, ptr %0, align 8, !tbaa !100
  %i.gs = load ptr, ptr %i.w, align 8, !tbaa !102
  %i.gt = call zeroext i1 %i.gq(ptr noundef %i.gr, ptr noundef %i.gs, ptr noundef %.0.i.i66, ptr noundef %.0.i.i69, ptr noundef null, i64 noundef 0, i64 noundef 0) #28, !inline_history !128
  br label %match_extension.exit

match_extension.exit:                             ; preds = %bb.x, %sbuf_string.exit70
  %.1 = phi i1 [ %i.gt, %sbuf_string.exit70 ], [ true, %bb.x ]
  %i.gu = load i64, ptr %i.m, align 8, !tbaa !79
  %i.gv = icmp sgt i64 %i.az, -1
  %.not.i.i71 = icmp slt i64 %i.az, %i.gu
  %or.cond.i72 = select i1 %i.gv, i1 %.not.i.i71, i1 false
  br i1 %or.cond.i72, label %ic_memmove.exit.i.i73, label %sbuf_delete_from.exit74

ic_memmove.exit.i.i73:                            ; preds = %match_extension.exit
  store i64 %i.az, ptr %i.m, align 8, !tbaa !79
  %i.gw = load ptr, ptr %2, align 8, !tbaa !81
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.az
  store i8 0, ptr %i.gx, align 1, !tbaa !48
  br label %sbuf_delete_from.exit74

sbuf_delete_from.exit74:                          ; preds = %ic_memmove.exit.i.i73, %match_extension.exit
  br i1 %.1, label %sbuf_delete_from.exit74.thread, label %.critedge

sbuf_delete_from.exit74.thread:                   ; preds = %bb.d, %ic_istarts_with.exit, %.tail, %.tail87, %sbuf_delete_from.exit74
  %i.gy = call ptr @readdir(ptr noundef nonnull %i.i) #28 ; 2 uses
  %.not86 = icmp eq ptr %i.gy, null
  br i1 %.not86, label %.critedge, label %sub_0, !llvm.loop !366

.critedge:                                        ; preds = %sbuf_delete_from.exit74, %sbuf_delete_from.exit74.thread
  %i.gz = call i32 @closedir(ptr noundef nonnull %i.i) ; 0 uses
  br label %os_findfirst.exit.thread

os_findfirst.exit.thread:                         ; preds = %sbuf_string.exit, %.critedge, %os_findfirst.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @lstat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal void @sbuf_appendf(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ...) unnamed_addr #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @sbuf_append_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sbuf_append_vprintf(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ic_strlen.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #29
  %i.c = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.b, i64 0)
  %i.d = add nuw nsw i64 %i.c, 16
  br label %ic_strlen.exit

ic_strlen.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.d, %bb.b ], [ 16, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !213  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !79   ; 2 uses
  %i.i = add nsw i64 %i.h, %.0.i                  ; 3 uses
  %.not.i = icmp slt i64 %i.f, %i.i
  br i1 %.not.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %ic_strlen.exit
  %i.j = icmp slt i64 %i.f, 1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp samesign ugt i64 %i.f, 1000
  %i.l = shl nuw nsw i64 %i.f, 1
  %i.m = add nuw nsw i64 %i.f, 1000
  %.ph.i = select i1 %i.k, i64 %i.m, i64 %i.l
  %spec.select33.i = tail call i64 @llvm.smax.i64(i64 %.ph.i, i64 %i.i) ; 2 uses
  tail call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.f, i64 noundef %spec.select33.i)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.i, i64 120)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %spec.select34.i = phi i64 [ %spec.select33.i, %bb.d ], [ %spec.select.i, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.p = load ptr, ptr %0, align 8, !tbaa !81
  %4 = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load ptr, ptr %4, align 8, !tbaa !74
  %5 = add nuw nsw i64 %spec.select34.i, 1
  %i.q = tail call ptr %.val.i(ptr noundef %i.p, i64 noundef %5) #28, !inline_history !31 ; 3 uses
  %.not36.i = icmp eq ptr %i.q, null
  br i1 %.not36.i, label %sbuf_ensure_extra.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !81
  store i64 %spec.select34.i, ptr %i.e, align 8, !tbaa !213
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select34.i
  store i8 0, ptr %i.r, align 1, !tbaa !48
  %i.s = load ptr, ptr %0, align 8, !tbaa !81
  %i.t = load i64, ptr %i.g, align 8, !tbaa !79
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !48
  %.pre = load i64, ptr %i.e, align 8, !tbaa !213
  %.pre50 = load i64, ptr %i.g, align 8, !tbaa !79
  br label %bb.h

bb.h:                                             ; preds = %ic_strlen.exit, %bb.g
  %i.v = phi i64 [ %i.h, %ic_strlen.exit ], [ %.pre50, %bb.g ]
  %i.w = phi i64 [ %i.f, %ic_strlen.exit ], [ %.pre, %bb.g ]
  %i.x = sub nsw i64 %i.w, %i.v                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr %2)
  %i.y = load ptr, ptr %0, align 8, !tbaa !81
  %i.z = load i64, ptr %i.g, align 8, !tbaa !79
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.x, i64 0)
  %i.ac = call i32 @vsnprintf(ptr noundef %i.aa, i64 noundef %i.ab, ptr noundef %1, ptr noundef nonnull %3) #28
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %i.ae = icmp slt i64 %i.x, %i.ad
  br i1 %i.ae, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %0, align 8, !tbaa !81
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !79
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  store i8 0, ptr %i.ah, align 1, !tbaa !48
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !213 ; 7 uses
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !79  ; 2 uses
  %i.ak = add nsw i64 %i.aj, %i.ad                ; 3 uses
  %.not.i39 = icmp slt i64 %i.ai, %i.ak
  br i1 %.not.i39, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.al = icmp slt i64 %i.ai, 1
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = icmp samesign ugt i64 %i.ai, 1000
  %i.an = shl nuw nsw i64 %i.ai, 1
  %i.ao = add nuw nsw i64 %i.ai, 1000
  %.ph.i41 = select i1 %i.am, i64 %i.ao, i64 %i.an
  %spec.select33.i42 = call i64 @llvm.smax.i64(i64 %.ph.i41, i64 %i.ak) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.ai, i64 noundef %spec.select33.i42)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %spec.select.i46 = call i64 @llvm.smax.i64(i64 %i.ak, i64 120)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %spec.select34.i43 = phi i64 [ %spec.select33.i42, %bb.k ], [ %spec.select.i46, %bb.l ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !78
  %i.ar = load ptr, ptr %0, align 8, !tbaa !81
  %6 = getelementptr i8, ptr %i.aq, i64 8
  %.val.i44 = load ptr, ptr %6, align 8, !tbaa !74
  %7 = add nuw nsw i64 %spec.select34.i43, 1
  %i.as = call ptr %.val.i44(ptr noundef %i.ar, i64 noundef %7) #28, !inline_history !31 ; 3 uses
  %.not36.i45 = icmp eq ptr %i.as, null
  br i1 %.not36.i45, label %sbuf_ensure_extra.exit47, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.as, ptr %0, align 8, !tbaa !81
  store i64 %spec.select34.i43, ptr %i.e, align 8, !tbaa !213
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %spec.select34.i43
  store i8 0, ptr %i.at, align 1, !tbaa !48
  %i.au = load ptr, ptr %0, align 8, !tbaa !81
  %i.av = load i64, ptr %i.g, align 8, !tbaa !79
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store i8 0, ptr %i.aw, align 1, !tbaa !48
  %.pre51 = load i64, ptr %i.e, align 8, !tbaa !213
  %.pre52 = load i64, ptr %i.g, align 8, !tbaa !79
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n
  %i.ax = phi i64 [ %i.aj, %bb.i ], [ %.pre52, %bb.n ] ; 2 uses
  %i.ay = phi i64 [ %i.ai, %bb.i ], [ %.pre51, %bb.n ]
  %i.az = sub nsw i64 %i.ay, %i.ax                ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !81
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.ax
  %i.bc = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.az, i64 0)
  %i.bd = call i32 @vsnprintf(ptr noundef %i.bb, i64 noundef %i.bc, ptr noundef %1, ptr noundef %2) #28
  %i.be = sext i32 %i.bd to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.h
  %.034 = phi i64 [ %i.az, %bb.o ], [ %i.x, %bb.h ] ; 2 uses
  %.0 = phi i64 [ %i.be, %bb.o ], [ %i.ad, %bb.h ] ; 2 uses
  %i.bf = icmp sgt i64 %.0, %.034
  %i.bg = call i64 @llvm.smax.i64(i64 %.0, i64 0)
  %i.bh = select i1 %i.bf, i64 %.034, i64 %i.bg
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !79
  %i.bj = add nsw i64 %i.bh, %i.bi                ; 2 uses
  store i64 %i.bj, ptr %i.g, align 8, !tbaa !79
  %i.bk = load ptr, ptr %0, align 8, !tbaa !81
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !48
  br label %sbuf_ensure_extra.exit47

sbuf_ensure_extra.exit47:                         ; preds = %bb.m, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %sbuf_ensure_extra.exit

sbuf_ensure_extra.exit:                           ; preds = %bb.f, %sbuf_ensure_extra.exit47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy.p0(ptr, ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #11

declare ptr @readdir(ptr noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 -1, 3) i64 @char_column_width(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i64 %1, 1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %utf8_char_width.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !48      ; 6 uses
  %i.d = icmp ult i8 %i.c, 32
  br i1 %i.d, label %utf8_char_width.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i8 %i.c to i32                      ; 3 uses
  %i.f = icmp ult i8 %i.c, -62
  br i1 %i.f, label %utf8_char_width.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i8 %i.c, -32
  %i.h = icmp samesign ugt i64 %1, 1
  %or.cond.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i32 %i.e, 6
  %i.j = and i32 %i.i, 1984
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !48
  %i.m = and i8 %i.l, 63
  %i.n = zext nneg i8 %i.m to i32
  %i.o = or disjoint i32 %i.j, %i.n               ; 6 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %utf8_char_width.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp samesign ult i32 %i.o, 32
  %i.r = add nsw i32 %i.o, -127
  %or.cond.i.i = icmp ult i32 %i.r, 33
  %or.cond10.i.i = select i1 %i.q, i1 true, i1 %or.cond.i.i
  br i1 %or.cond10.i.i, label %utf8_char_width.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond15.i.i = icmp samesign ult i32 %i.o, 173
  br i1 %or.cond15.i.i, label %utf8_char_width.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.g, %bb.k
  %.022.i.i.i = phi i32 [ %.1.i.i.i, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.01721.i.i.i = phi i32 [ %.118.i.i.i, %bb.k ], [ 310, %bb.g ] ; 2 uses
  %i.s = add nsw i32 %.01721.i.i.i, %.022.i.i.i
  %i.t = sdiv i32 %i.s, 2                         ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr @mk_wcwidth.combining, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !373
  %i.y = icmp sgt i32 %i.o, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.preheader.i.i.i
  %i.z = add nsw i32 %i.t, 1
  br label %bb.k

bb.i:                                             ; preds = %.preheader.i.i.i
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !374
  %i.ab = icmp slt i32 %i.o, %i.aa
  br i1 %i.ab, label %bb.j, label %utf8_char_width.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i32 %i.t, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.118.i.i.i = phi i32 [ %.01721.i.i.i, %bb.h ], [ %i.ac, %bb.j ] ; 2 uses
  %.1.i.i.i = phi i32 [ %i.z, %bb.h ], [ %.022.i.i.i, %bb.j ] ; 2 uses
  %.not.i.i.i = icmp slt i32 %.118.i.i.i, %.1.i.i.i
  br i1 %.not.i.i.i, label %utf8_char_width.exit, label %.preheader.i.i.i, !llvm.loop !371

bb.l:                                             ; preds = %bb.d
  %i.ad = icmp samesign ult i8 %i.c, -16
  %i.ae = icmp samesign ugt i64 %1, 2
  %or.cond3.i = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3.i, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.af = shl nuw nsw i32 %i.e, 12
  %i.ag = and i32 %i.af, 61440
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !48
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 6
  %i.am = or disjoint i32 %i.al, %i.ag            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !48
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.am, %i.aq            ; 8 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %utf8_char_width.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = icmp samesign ult i32 %i.ar, 32
  %i.au = add nsw i32 %i.ar, -127
  %or.cond.i32.i = icmp ult i32 %i.au, 33
  %or.cond10.i33.i = select i1 %i.at, i1 true, i1 %or.cond.i32.i
  br i1 %or.cond10.i33.i, label %utf8_char_width.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond15.i34.i = icmp samesign ult i32 %i.ar, 173
  br i1 %or.cond15.i34.i, label %utf8_char_width.exit, label %.preheader.i.i35.i

.preheader.i.i35.i:                               ; preds = %bb.o, %bb.s
  %.022.i.i36.i = phi i32 [ %.1.i.i40.i, %bb.s ], [ 0, %bb.o ] ; 2 uses
  %.01721.i.i37.i = phi i32 [ %.118.i.i39.i, %bb.s ], [ 310, %bb.o ] ; 2 uses
  %i.av = add nsw i32 %.01721.i.i37.i, %.022.i.i36.i
  %i.aw = sdiv i32 %i.av, 2                       ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr @mk_wcwidth.combining, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !373
  %i.bb = icmp sgt i32 %i.ar, %i.ba
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i.i35.i
  %i.bc = add nsw i32 %i.aw, 1
  br label %bb.s

bb.q:                                             ; preds = %.preheader.i.i35.i
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !374
  %i.be = icmp slt i32 %i.ar, %i.bd
  br i1 %i.be, label %bb.r, label %utf8_char_width.exit

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i32 %i.aw, -1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.118.i.i39.i = phi i32 [ %.01721.i.i37.i, %bb.p ], [ %i.bf, %bb.r ] ; 2 uses
  %.1.i.i40.i = phi i32 [ %i.bc, %bb.p ], [ %.022.i.i36.i, %bb.r ] ; 2 uses
  %.not.i.i41.i = icmp slt i32 %.118.i.i39.i, %.1.i.i40.i
end_hunk_1
begin_hunk_2_@edit_generate_completions:bb.a
  %.not17.i.i13.i.i = icmp eq i8 %i.lk, 0
  br i1 %.not17.i.i13.i.i, label %sbuf_len.exit.i.i.i, label %.lr.ph.i.i14.i.i

.lr.ph.i.i14.i.i:                                 ; preds = %bb.bh, %bb.bp
  %i.ll = phi i8 [ %i.mv, %bb.bp ], [ %i.lk, %bb.bh ]
  %.019.i.i15.i.i = phi i64 [ %i.ms, %bb.bp ], [ 0, %bb.bh ] ; 3 uses
  %.01218.i.i16.i.i = phi i64 [ %i.mt, %bb.bp ], [ 0, %bb.bh ] ; 6 uses
  %i.lm = icmp sgt i64 %i.li, %.01218.i.i16.i.i
  br i1 %i.lm, label %bb.bi, label %sbuf_len.exit.i.i.i

bb.bi:                                            ; preds = %.lr.ph.i.i14.i.i
  %i.ln = getelementptr inbounds i8, ptr %spec.select.i260.i, i64 %.01218.i.i16.i.i ; 6 uses
  %i.lo = sub nsw i64 %i.li, %.01218.i.i16.i.i    ; 7 uses
  %i.lp = icmp sgt i64 %i.lo, 1
  %.not66.i.i.i = icmp eq i8 %i.ll, 27
  %or.cond1043.i = and i1 %.not66.i.i.i, %i.lp
  br i1 %or.cond1043.i, label %bb.bj, label %skip_esc.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ln, i64 1
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !48
  %.fr89.i.i.i = freeze i8 %i.lr                  ; 2 uses
  %i.ls = sext i8 %.fr89.i.i.i to i32
  %memchr.i.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.ls, i64 7)
  %.not67.i.i.i = icmp eq ptr %memchr.i.i.i, null
  %.not87.i.i.i = icmp eq i64 %i.lo, 2
  %or.cond.i.i.i = or i1 %.not87.i.i.i, %.not67.i.i.i
  br i1 %or.cond.i.i.i, label %str_next_ofs.exit.thread.i, label %.lr.ph.i.i433.i

.lr.ph.i.i433.i:                                  ; preds = %bb.bj
  %.not.i.i434.i = icmp eq i8 %.fr89.i.i.i, 91
  br i1 %.not.i.i434.i, label %.lr.ph.split.us.split.i.i.i, label %.lr.ph.split.split.us.i.i.i

.lr.ph.split.us.split.i.i.i:                      ; preds = %.lr.ph.i.i433.i, %bb.bk
  %.05475.us.i.i.i = phi i64 [ %i.lt, %bb.bk ], [ 2, %.lr.ph.i.i433.i ] ; 2 uses
  %i.lt = add nuw nsw i64 %.05475.us.i.i.i, 1     ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.05475.us.i.i.i
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !48  ; 2 uses
  %i.lw = icmp sgt i8 %i.lv, 63
  %i.lx = icmp eq i8 %i.lv, 2
  %or.cond116.i.i.i = or i1 %i.lw, %i.lx
  br i1 %or.cond116.i.i.i, label %str_next_ofs.exit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.split.us.split.i.i.i
  %exitcond.not.i.i435.i = icmp eq i64 %i.lt, %i.lo
  br i1 %exitcond.not.i.i435.i, label %str_next_ofs.exit.thread.i, label %.lr.ph.split.us.split.i.i.i, !llvm.loop !11

.lr.ph.split.split.us.i.i.i:                      ; preds = %.lr.ph.i.i433.i, %bb.bn
  %.05475.us76.i.i.i = phi i64 [ %i.ly, %bb.bn ], [ 2, %.lr.ph.i.i433.i ] ; 3 uses
  %i.ly = add nuw nsw i64 %.05475.us76.i.i.i, 1   ; 6 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ln, i64 %.05475.us76.i.i.i
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.ma, label %bb.bl [
    i8 7, label %str_next_ofs.exit.thread.i
    i8 2, label %str_next_ofs.exit.thread.i
  ]

bb.bl:                                            ; preds = %.lr.ph.split.split.us.i.i.i
  %i.mb = icmp eq i8 %i.ma, 27
  %i.mc = icmp sgt i64 %i.lo, %i.ly
  %or.cond.us.i.i.i = select i1 %i.mb, i1 %i.mc, i1 false
  br i1 %or.cond.us.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ly
  %i.me = load i8, ptr %i.md, align 1, !tbaa !48
  %i.mf = icmp eq i8 %i.me, 92
  br i1 %i.mf, label %.split83.us.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %exitcond103.not.i.i.i = icmp eq i64 %i.ly, %i.lo
  br i1 %exitcond103.not.i.i.i, label %str_next_ofs.exit.thread.i, label %.lr.ph.split.split.us.i.i.i, !llvm.loop !11

.split83.us.i.i.i:                                ; preds = %bb.bm
  %i.mg = add nuw nsw i64 %.05475.us76.i.i.i, 2
  br label %str_next_ofs.exit.thread.i

skip_esc.exit.i.i:                                ; preds = %bb.bi
  %i.mh = add nsw i64 %.01218.i.i16.i.i, 1        ; 2 uses
  %i.mi = icmp sgt i64 %i.li, %i.mh
  br i1 %i.mi, label %.lr.ph.i431.i, label %str_next_ofs.exit.thread.i

.lr.ph.i431.i:                                    ; preds = %skip_esc.exit.i.i, %bb.bo
  %i.mj = phi i64 [ %i.mn, %bb.bo ], [ %i.mh, %skip_esc.exit.i.i ]
  %.02837.i.i = phi i64 [ %i.mm, %bb.bo ], [ 1, %skip_esc.exit.i.i ] ; 2 uses
  %i.mk = getelementptr inbounds i8, ptr %spec.select.i260.i, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !48
  %or.cond.i.i36 = icmp sgt i8 %i.ml, -65
  br i1 %or.cond.i.i36, label %str_next_ofs.exit.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i431.i
  %i.mm = add nuw i64 %.02837.i.i, 1              ; 3 uses
  %i.mn = add nsw i64 %i.mm, %.01218.i.i16.i.i
  %exitcond.not.i432.i = icmp eq i64 %i.mm, %i.lo
  br i1 %exitcond.not.i432.i, label %str_next_ofs.exit.i, label %.lr.ph.i431.i

str_next_ofs.exit.thread.i:                       ; preds = %bb.bn, %.lr.ph.split.split.us.i.i.i, %.lr.ph.split.split.us.i.i.i, %bb.bk, %.lr.ph.split.us.split.i.i.i, %skip_esc.exit.i.i, %.split83.us.i.i.i, %bb.bj
  %.2.i.ph.i = phi i64 [ 1, %skip_esc.exit.i.i ], [ %i.mg, %.split83.us.i.i.i ], [ %i.lt, %.lr.ph.split.us.split.i.i.i ], [ 2, %bb.bj ], [ 2, %bb.bk ], [ 2, %bb.bn ], [ %i.ly, %.lr.ph.split.split.us.i.i.i ], [ %i.ly, %.lr.ph.split.split.us.i.i.i ] ; 2 uses
  %i.mo = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.ln, i64 noundef %.2.i.ph.i)
  br label %bb.bp

str_next_ofs.exit.i:                              ; preds = %bb.bo, %.lr.ph.i431.i
  %.2.i.i = phi i64 [ %.02837.i.i, %.lr.ph.i431.i ], [ %i.lo, %bb.bo ] ; 3 uses
  %i.mp = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.ln, i64 noundef %.2.i.i)
  %i.mq = icmp sgt i64 %.2.i.i, 0
  br i1 %i.mq, label %bb.bp, label %sbuf_len.exit.i.i.i

bb.bp:                                            ; preds = %str_next_ofs.exit.i, %str_next_ofs.exit.thread.i
  %i.mr = phi i64 [ %i.mo, %str_next_ofs.exit.thread.i ], [ %i.mp, %str_next_ofs.exit.i ]
  %.2.i639.i = phi i64 [ %.2.i.ph.i, %str_next_ofs.exit.thread.i ], [ %.2.i.i, %str_next_ofs.exit.i ]
  %i.ms = add nsw i64 %i.mr, %.019.i.i15.i.i      ; 2 uses
  %i.mt = add nuw nsw i64 %.2.i639.i, %.01218.i.i16.i.i ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %spec.select.i260.i, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !48  ; 2 uses
  %.not.i.i20.i.i = icmp eq i8 %i.mv, 0
  br i1 %.not.i.i20.i.i, label %sbuf_len.exit.i.i.i, label %.lr.ph.i.i14.i.i, !llvm.loop !7

sbuf_len.exit.i.i.i:                              ; preds = %.lr.ph.i.i14.i.i, %bb.bp, %str_next_ofs.exit.i, %bb.bh, %ic_strlen.exit.i12.i.i
  %.013.i.i1927.i.i = phi i64 [ 0, %ic_strlen.exit.i12.i.i ], [ 0, %bb.bh ], [ %.019.i.i15.i.i, %.lr.ph.i.i14.i.i ], [ %.019.i.i15.i.i, %str_next_ofs.exit.i ], [ %i.ms, %bb.bp ] ; 2 uses
  %.not.i.i23.not.i.i = icmp eq i64 %i.ld, 0
  br i1 %.not.i.i23.not.i.i, label %bbcode_column_width.exit.i, label %ic_memmove.exit.i.i.i.i

ic_memmove.exit.i.i.i.i:                          ; preds = %sbuf_len.exit.i.i.i
  store i64 0, ptr %i.lc, align 8, !tbaa !79
  store i8 0, ptr %i.lf, align 1, !tbaa !48
  br label %bbcode_column_width.exit.i

bbcode_column_width.exit.i:                       ; preds = %.lr.ph.i.i.i.i, %bb.bf, %str_next_ofs.exit460.i, %ic_memmove.exit.i.i.i.i, %sbuf_len.exit.i.i.i, %bb.bg, %ic_strlen.exit.i.i.i, %bb.aw
  %.0.i261.i = phi i64 [ 0, %ic_strlen.exit.i.i.i ], [ 0, %bb.bg ], [ 0, %bb.aw ], [ %.013.i.i1927.i.i, %ic_memmove.exit.i.i.i.i ], [ %.013.i.i1927.i.i, %sbuf_len.exit.i.i.i ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.019.i.i.i.i, %str_next_ofs.exit460.i ], [ %i.kx, %bb.bf ]
  %i.mw = add i64 %.0.i275.i, 2
  %i.mx = add i64 %i.mw, %.0.i261.i
  br label %completions_get_display.exit.thread.i.i

completions_get_display.exit.thread.i.i:          ; preds = %bbcode_column_width.exit.i, %bbcode_column_width.exit284.i, %completions_get.exit.i.i.i, %.preheader763.i
  %.0.i.i31 = phi i64 [ %i.mx, %bbcode_column_width.exit.i ], [ %.0.i275.i, %bbcode_column_width.exit284.i ], [ 0, %completions_get.exit.i.i.i ], [ 0, %.preheader763.i ]
  %spec.select.i.i32 = call i64 @llvm.smax.i64(i64 %.0.i.i31, i64 %.01218.i.i) ; 2 uses
  %i.my = add nuw nsw i64 %.01119.i.i, 1          ; 2 uses
  %exitcond.not.i.i33 = icmp eq i64 %i.my, 9
  br i1 %exitcond.not.i.i33, label %edit_completions_max_width.exit.i, label %.preheader763.i, !llvm.loop !420

edit_completions_max_width.exit.i:                ; preds = %completions_get_display.exit.thread.i.i
  %i.mz = add nuw nsw i64 %spec.select.i.i32, 3   ; 4 uses
  %i.na = mul nuw nsw i64 %i.mz, 3
  %i.nb = add nuw nsw i64 %i.na, 4
  %i.nc = icmp slt i64 %i.nb, %i.fe
  br i1 %i.nc, label %.preheader.i, label %bb.cm

.preheader.i:                                     ; preds = %edit_completions_max_width.exit.i, %sbuf_insert_at_n.exit308.i
  %.0171735.i = phi i64 [ %i.rj, %sbuf_insert_at_n.exit308.i ], [ 0, %edit_completions_max_width.exit.i ] ; 6 uses
  %.not194.i = icmp eq i64 %.0171735.i, 0
  br i1 %.not194.i, label %sbuf_insert_at_n.exit.i, label %bb.bq

bb.bq:                                            ; preds = %.preheader.i
  %i.nd = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %sbuf_append.exit.thread.i, label %sbuf_append.exit.i

sbuf_append.exit.i:                               ; preds = %bb.bq
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !79 ; 3 uses
  %i.nh = icmp slt i64 %i.ng, 0
  br i1 %i.nh, label %sbuf_insert_at_n.exit.i, label %.lr.ph.i.i.i

sbuf_append.exit.thread.i:                        ; preds = %bb.bq
  %.pre133 = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not683.i = icmp slt i64 %.pre133, 0
  br i1 %.not683.i, label %sbuf_insert_at_n.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %sbuf_append.exit.i, %sbuf_append.exit.thread.i
  %.0.i.i200978.i314 = phi i64 [ 0, %sbuf_append.exit.thread.i ], [ %i.ng, %sbuf_append.exit.i ] ; 3 uses
  %i.ni = phi i64 [ %.pre133, %sbuf_append.exit.thread.i ], [ %i.ng, %sbuf_append.exit.i ] ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !213 ; 6 uses
  %i.nm = add nuw nsw i64 %i.ni, 1                ; 2 uses
  %.not.i32.i.not.i = icmp sgt i64 %i.nl, %i.ni
  br i1 %.not.i32.i.not.i, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.nn = icmp slt i64 %i.nl, 1
  br i1 %i.nn, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.no = icmp samesign ugt i64 %i.nl, 1000
  %i.np = shl nuw nsw i64 %i.nl, 1
  %i.nq = add nuw nsw i64 %i.nl, 1000
  %.ph.i.i.i = select i1 %i.no, i64 %i.nq, i64 %i.np
  %i.nr = call i64 @llvm.umax.i64(i64 %.ph.i.i.i, i64 %i.nm) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.nl, i64 noundef %i.nr)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.ns = call i64 @llvm.umax.i64(i64 %i.nm, i64 120)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %spec.select34.i.i.i = phi i64 [ %i.nr, %bb.bs ], [ %i.ns, %bb.bt ] ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !78
  %i.nv = load ptr, ptr %i.nd, align 8, !tbaa !81
  %5 = getelementptr i8, ptr %i.nu, i64 8
  %.val.i.i.i = load ptr, ptr %5, align 8, !tbaa !74
  %6 = add nuw nsw i64 %spec.select34.i.i.i, 1
  %i.nw = call ptr %.val.i.i.i(ptr noundef %i.nv, i64 noundef %6) #28, !inline_history !421 ; 3 uses
  %.not36.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not36.i.i.i, label %sbuf_insert_at_n.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.nw, ptr %i.nd, align 8, !tbaa !81
  store i64 %spec.select34.i.i.i, ptr %i.nk, align 8, !tbaa !213
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 %spec.select34.i.i.i
  store i8 0, ptr %i.nx, align 1, !tbaa !48
  %i.ny = load ptr, ptr %i.nd, align 8, !tbaa !81
  %i.nz = load i64, ptr %i.nj, align 8, !tbaa !79
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %i.nz
  store i8 0, ptr %i.oa, align 1, !tbaa !48
  %.pre.i288.i = load i64, ptr %i.nj, align 8, !tbaa !79
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph.i.i.i
  %i.ob = phi i64 [ %i.ni, %.lr.ph.i.i.i ], [ %.pre.i288.i, %bb.bv ]
  %i.oc = sub nsw i64 %i.ob, %.0.i.i200978.i314   ; 2 uses
  %i.od = icmp slt i64 %i.oc, 1
  br i1 %i.od, label %ic_memmove.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.oe = load ptr, ptr %i.nd, align 8, !tbaa !81
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.0.i.i200978.i314 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.og, ptr readonly align 1 %i.of, i64 %i.oc, i1 false)
  br label %ic_memmove.exit.i.i

ic_memmove.exit.i.i:                              ; preds = %bb.bx, %bb.bw
  %i.oh = load ptr, ptr %i.nd, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 %.0.i.i200978.i314
  store i8 10, ptr %i.oi, align 1
  %.pre38.i.i = load ptr, ptr %i.nd, align 8, !tbaa !81
  %i.oj = load i64, ptr %i.nj, align 8, !tbaa !79
  %i.ok = add nsw i64 %i.oj, 1                    ; 2 uses
  store i64 %i.ok, ptr %i.nj, align 8, !tbaa !79
  %i.ol = getelementptr inbounds i8, ptr %.pre38.i.i, i64 %i.ok
  store i8 0, ptr %i.ol, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit.i

sbuf_insert_at_n.exit.i:                          ; preds = %ic_memmove.exit.i.i, %bb.bu, %sbuf_append.exit.thread.i, %sbuf_append.exit.i, %.preheader.i
  %i.om = add nuw nsw i64 %.0171735.i, 3          ; 2 uses
  %i.on = add nuw nsw i64 %.0171735.i, 6          ; 2 uses
  %i.oo = icmp eq i64 %.0171735.i, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775808, 3) %.0171735.i, i64 noundef range(i64 3, -9223372036854775808) %i.mz, i1 noundef zeroext %i.oo)
  %i.op = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.oq = icmp eq ptr %i.op, null
  br i1 %i.oq, label %sbuf_append.exit.i.thread.i, label %sbuf_append.exit.i.i

sbuf_append.exit.i.i:                             ; preds = %sbuf_insert_at_n.exit.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.os = load i64, ptr %i.or, align 8, !tbaa !79 ; 3 uses
  %i.ot = icmp slt i64 %i.os, 0
  br i1 %i.ot, label %sbuf_insert_at_n.exit327.i, label %.lr.ph.i.i311.preheader.i

sbuf_append.exit.i.thread.i:                      ; preds = %sbuf_insert_at_n.exit.i
  %.pre800.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not684.i = icmp slt i64 %.pre800.i, 0
  br i1 %.not684.i, label %sbuf_insert_at_n.exit327.i, label %.lr.ph.i.i311.preheader.i

.lr.ph.i.i311.preheader.i:                        ; preds = %sbuf_append.exit.i.i, %sbuf_append.exit.i.thread.i
  %.0.i.i.i643981.i = phi i64 [ 0, %sbuf_append.exit.i.thread.i ], [ %i.os, %sbuf_append.exit.i.i ] ; 3 uses
  %i.ou = phi i64 [ %.pre800.i, %sbuf_append.exit.i.thread.i ], [ %i.os, %sbuf_append.exit.i.i ] ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 16 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 2 uses
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !213 ; 6 uses
  %i.oy = add nuw nsw i64 %i.ou, 2                ; 3 uses
  %.not.i32.i317.i = icmp slt i64 %i.ox, %i.oy
  br i1 %.not.i32.i317.i, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %.lr.ph.i.i311.preheader.i
  %i.oz = icmp slt i64 %i.ox, 1
  br i1 %i.oz, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.pa = icmp samesign ugt i64 %i.ox, 1000
  %i.pb = shl nuw nsw i64 %i.ox, 1
  %i.pc = add nuw nsw i64 %i.ox, 1000
  %.ph.i.i320.i = select i1 %i.pa, i64 %i.pc, i64 %i.pb
  %i.pd = call i64 @llvm.umax.i64(i64 %.ph.i.i320.i, i64 %i.oy) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.ox, i64 noundef %i.pd)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.pe = call i64 @llvm.umax.i64(i64 %i.oy, i64 120)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %spec.select34.i.i322.i = phi i64 [ %i.pd, %bb.bz ], [ %i.pe, %bb.ca ] ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !78
  %i.ph = load ptr, ptr %i.op, align 8, !tbaa !81
  %7 = getelementptr i8, ptr %i.pg, i64 8
  %.val.i.i323.i = load ptr, ptr %7, align 8, !tbaa !74
  %8 = add nuw nsw i64 %spec.select34.i.i322.i, 1
  %i.pi = call ptr %.val.i.i323.i(ptr noundef %i.ph, i64 noundef %8) #28, !inline_history !421 ; 3 uses
  %.not36.i.i324.i = icmp eq ptr %i.pi, null
  br i1 %.not36.i.i324.i, label %sbuf_insert_at_n.exit327.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.pi, ptr %i.op, align 8, !tbaa !81
  store i64 %spec.select34.i.i322.i, ptr %i.ow, align 8, !tbaa !213
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %spec.select34.i.i322.i
  store i8 0, ptr %i.pj, align 1, !tbaa !48
  %i.pk = load ptr, ptr %i.op, align 8, !tbaa !81
  %i.pl = load i64, ptr %i.ov, align 8, !tbaa !79
  %i.pm = getelementptr inbounds i8, ptr %i.pk, i64 %i.pl
  store i8 0, ptr %i.pm, align 1, !tbaa !48
  %.pre.i325.i = load i64, ptr %i.ov, align 8, !tbaa !79
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph.i.i311.preheader.i
  %i.pn = phi i64 [ %i.ou, %.lr.ph.i.i311.preheader.i ], [ %.pre.i325.i, %bb.cc ]
  %i.po = sub nsw i64 %i.pn, %.0.i.i.i643981.i    ; 2 uses
  %i.pp = icmp slt i64 %i.po, 1
  br i1 %i.pp, label %ic_memmove.exit.i318.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pq = load ptr, ptr %i.op, align 8, !tbaa !81
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 %.0.i.i.i643981.i ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ps, ptr readonly align 1 %i.pr, i64 %i.po, i1 false)
  br label %ic_memmove.exit.i318.i

ic_memmove.exit.i318.i:                           ; preds = %bb.ce, %bb.cd
  %i.pt = load ptr, ptr %i.op, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %.0.i.i.i643981.i
  store i16 8224, ptr %i.pu, align 1
  %.pre38.i319.i = load ptr, ptr %i.op, align 8, !tbaa !81
  %i.pv = load i64, ptr %i.ov, align 8, !tbaa !79
  %i.pw = add nsw i64 %i.pv, 2                    ; 2 uses
  store i64 %i.pw, ptr %i.ov, align 8, !tbaa !79
  %i.px = getelementptr inbounds i8, ptr %.pre38.i319.i, i64 %i.pw
  store i8 0, ptr %i.px, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit327.i

sbuf_insert_at_n.exit327.i:                       ; preds = %ic_memmove.exit.i318.i, %bb.cb, %sbuf_append.exit.i.thread.i, %sbuf_append.exit.i.i
  %i.py = icmp eq i64 %i.om, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775805, 6) %i.om, i64 noundef range(i64 3, -9223372036854775808) %i.mz, i1 noundef zeroext %i.py)
  %i.pz = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %editor_append_completion3.exit.thread.i, label %editor_append_completion3.exit.i

editor_append_completion3.exit.i:                 ; preds = %sbuf_insert_at_n.exit327.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !79 ; 3 uses
  %i.qd = icmp slt i64 %i.qc, 0
  br i1 %i.qd, label %sbuf_insert_at_n.exit308.i, label %.lr.ph.i.i292.preheader.i

editor_append_completion3.exit.thread.i:          ; preds = %sbuf_insert_at_n.exit327.i
  %.pre802.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not685.i = icmp slt i64 %.pre802.i, 0
  br i1 %.not685.i, label %sbuf_insert_at_n.exit308.i, label %.lr.ph.i.i292.preheader.i

.lr.ph.i.i292.preheader.i:                        ; preds = %editor_append_completion3.exit.i, %editor_append_completion3.exit.thread.i
  %.0.i.i19.i647984.i = phi i64 [ 0, %editor_append_completion3.exit.thread.i ], [ %i.qc, %editor_append_completion3.exit.i ] ; 3 uses
  %i.qe = phi i64 [ %.pre802.i, %editor_append_completion3.exit.thread.i ], [ %i.qc, %editor_append_completion3.exit.i ] ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !213 ; 6 uses
  %i.qi = add nuw nsw i64 %i.qe, 2                ; 3 uses
  %.not.i32.i298.i = icmp slt i64 %i.qh, %i.qi
  br i1 %.not.i32.i298.i, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %.lr.ph.i.i292.preheader.i
  %i.qj = icmp slt i64 %i.qh, 1
  br i1 %i.qj, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qk = icmp samesign ugt i64 %i.qh, 1000
  %i.ql = shl nuw nsw i64 %i.qh, 1
  %i.qm = add nuw nsw i64 %i.qh, 1000
  %.ph.i.i301.i = select i1 %i.qk, i64 %i.qm, i64 %i.ql
  %i.qn = call i64 @llvm.umax.i64(i64 %.ph.i.i301.i, i64 %i.qi) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.qh, i64 noundef %i.qn)
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.qo = call i64 @llvm.umax.i64(i64 %i.qi, i64 120)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %spec.select34.i.i303.i = phi i64 [ %i.qn, %bb.cg ], [ %i.qo, %bb.ch ] ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !78
  %i.qr = load ptr, ptr %i.pz, align 8, !tbaa !81
  %9 = getelementptr i8, ptr %i.qq, i64 8
  %.val.i.i304.i = load ptr, ptr %9, align 8, !tbaa !74
  %10 = add nuw nsw i64 %spec.select34.i.i303.i, 1
  %i.qs = call ptr %.val.i.i304.i(ptr noundef %i.qr, i64 noundef %10) #28, !inline_history !421 ; 3 uses
  %.not36.i.i305.i = icmp eq ptr %i.qs, null
  br i1 %.not36.i.i305.i, label %sbuf_insert_at_n.exit308.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr %i.qs, ptr %i.pz, align 8, !tbaa !81
  store i64 %spec.select34.i.i303.i, ptr %i.qg, align 8, !tbaa !213
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 %spec.select34.i.i303.i
  store i8 0, ptr %i.qt, align 1, !tbaa !48
  %i.qu = load ptr, ptr %i.pz, align 8, !tbaa !81
  %i.qv = load i64, ptr %i.qf, align 8, !tbaa !79
  %i.qw = getelementptr inbounds i8, ptr %i.qu, i64 %i.qv
  store i8 0, ptr %i.qw, align 1, !tbaa !48
  %.pre.i306.i = load i64, ptr %i.qf, align 8, !tbaa !79
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.lr.ph.i.i292.preheader.i
  %i.qx = phi i64 [ %i.qe, %.lr.ph.i.i292.preheader.i ], [ %.pre.i306.i, %bb.cj ]
  %i.qy = sub nsw i64 %i.qx, %.0.i.i19.i647984.i  ; 2 uses
  %i.qz = icmp slt i64 %i.qy, 1
  br i1 %i.qz, label %ic_memmove.exit.i299.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ra = load ptr, ptr %i.pz, align 8, !tbaa !81
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.0.i.i19.i647984.i ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rc, ptr readonly align 1 %i.rb, i64 %i.qy, i1 false)
  br label %ic_memmove.exit.i299.i

ic_memmove.exit.i299.i:                           ; preds = %bb.cl, %bb.ck
  %i.rd = load ptr, ptr %i.pz, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %.0.i.i19.i647984.i
  store i16 8224, ptr %i.re, align 1
  %.pre38.i300.i = load ptr, ptr %i.pz, align 8, !tbaa !81
  %i.rf = load i64, ptr %i.qf, align 8, !tbaa !79
  %i.rg = add nsw i64 %i.rf, 2                    ; 2 uses
  store i64 %i.rg, ptr %i.qf, align 8, !tbaa !79
  %i.rh = getelementptr inbounds i8, ptr %.pre38.i300.i, i64 %i.rg
  store i8 0, ptr %i.rh, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit308.i

sbuf_insert_at_n.exit308.i:                       ; preds = %ic_memmove.exit.i299.i, %bb.ci, %editor_append_completion3.exit.thread.i, %editor_append_completion3.exit.i
  %i.ri = icmp eq i64 %i.on, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775802, 9) %i.on, i64 noundef range(i64 3, -9223372036854775808) %i.mz, i1 noundef zeroext %i.ri)
  %i.rj = add nuw nsw i64 %.0171735.i, 1          ; 2 uses
  %exitcond793.not.i = icmp eq i64 %i.rj, 3
  br i1 %exitcond793.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !422

bb.cm:                                            ; preds = %edit_completions_max_width.exit.i
  br i1 %.not679.i, label %sbuf_insert_at_n.exit429.peel.thread.i, label %.preheader762.i

sbuf_insert_at_n.exit429.peel.thread.i:           ; preds = %bb.cm
  %i.rk = icmp eq i64 %.0173.i, 0
  call fastcc void @editor_append_completion(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 0, i64 noundef -1, i1 noundef zeroext %i.rk)
  br label %.lr.ph.peel.next.i.preheader

.preheader762.i:                                  ; preds = %bb.cm, %completions_get_display.exit.thread.i204.i
  %.01119.i201.i = phi i64 [ %i.ze, %completions_get_display.exit.thread.i204.i ], [ 0, %bb.cm ] ; 3 uses
  %.01218.i202.i = phi i64 [ %spec.select.i206.i, %completions_get_display.exit.thread.i204.i ], [ 0, %bb.cm ]
  %i.rl = load ptr, ptr %i.eh, align 8, !tbaa !148 ; 2 uses
  %i.rm = load ptr, ptr %i.n, align 8, !tbaa !122 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !126
  %.not.i.i.i203.i = icmp slt i64 %.01119.i201.i, %i.ro
  br i1 %.not.i.i.i203.i, label %completions_get.exit.i.i208.i, label %completions_get_display.exit.thread.i204.i

completions_get.exit.i.i208.i:                    ; preds = %.preheader762.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 40
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !189 ; 2 uses
  %i.rr = getelementptr inbounds nuw [40 x i8], ptr %i.rq, i64 %.01119.i201.i ; 3 uses
  %i.rs = icmp eq ptr %i.rq, null
  br i1 %i.rs, label %completions_get_display.exit.thread.i204.i, label %bb.cn

bb.cn:                                            ; preds = %completions_get.exit.i.i208.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !194 ; 7 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !192 ; 2 uses
  %.not14.i.i209.i = icmp eq ptr %i.rw, null
  br i1 %.not14.i.i209.i, label %completions_get_display.exit.i210.i, label %completions_get_display.exit.i210.thread.i

completions_get_display.exit.i210.i:              ; preds = %bb.cn
  %i.rx = load ptr, ptr %i.rr, align 8, !tbaa !193 ; 2 uses
  %i.ry = icmp eq ptr %i.rx, null
  br i1 %i.ry, label %bbcode_column_width.exit371.i, label %completions_get_display.exit.i210.thread.i

completions_get_display.exit.i210.thread.i:       ; preds = %completions_get_display.exit.i210.i, %bb.cn
  %.0.i.i211651.i = phi ptr [ %i.rx, %completions_get_display.exit.i210.i ], [ %i.rw, %bb.cn ] ; 6 uses
  %i.rz = load i8, ptr %.0.i.i211651.i, align 1, !tbaa !48 ; 2 uses
  %i.sa = icmp eq i8 %i.rz, 0
  br i1 %i.sa, label %bbcode_column_width.exit371.i, label %bb.co

bb.co:                                            ; preds = %completions_get_display.exit.i210.thread.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rl, i64 80 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !149 ; 2 uses
  %i.sd = icmp eq ptr %i.sc, null
  br i1 %i.sd, label %ic_strlen.exit.i.i364.i, label %bb.cx

ic_strlen.exit.i.i364.i:                          ; preds = %bb.co
  %i.se = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i211651.i) #29 ; 2 uses
  %i.sf = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.se, i64 0) ; 3 uses
  %i.sg = icmp slt i64 %i.se, 1
  br i1 %i.sg, label %bbcode_column_width.exit371.i, label %.lr.ph.i.i.i365.i

.lr.ph.i.i.i365.i:                                ; preds = %ic_strlen.exit.i.i364.i, %bb.cw
  %i.sh = phi i8 [ %i.tr, %bb.cw ], [ %i.rz, %ic_strlen.exit.i.i364.i ]
  %.019.i.i.i366.i = phi i64 [ %i.to, %bb.cw ], [ 0, %ic_strlen.exit.i.i364.i ] ; 3 uses
  %.01218.i.i.i367.i = phi i64 [ %i.tp, %bb.cw ], [ 0, %ic_strlen.exit.i.i364.i ] ; 6 uses
  %i.si = icmp sgt i64 %i.sf, %.01218.i.i.i367.i
  br i1 %i.si, label %bb.cp, label %bbcode_column_width.exit371.i

bb.cp:                                            ; preds = %.lr.ph.i.i.i365.i
  %i.sj = getelementptr inbounds i8, ptr %.0.i.i211651.i, i64 %.01218.i.i.i367.i ; 6 uses
  %i.sk = sub nsw i64 %i.sf, %.01218.i.i.i367.i   ; 7 uses
  %i.sl = icmp sgt i64 %i.sk, 1
  %.not66.i.i594.i = icmp eq i8 %i.sh, 27
  %or.cond1044.i = and i1 %.not66.i.i594.i, %i.sl
  br i1 %or.cond1044.i, label %bb.cq, label %skip_esc.exit.i595.i

bb.cq:                                            ; preds = %bb.cp
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !48
  %.fr89.i.i600.i = freeze i8 %i.sn               ; 2 uses
  %i.so = sext i8 %.fr89.i.i600.i to i32
  %memchr.i.i601.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.so, i64 7)
  %.not67.i.i602.i = icmp eq ptr %memchr.i.i601.i, null
  %.not87.i.i603.i = icmp eq i64 %i.sk, 2
  %or.cond.i.i604.i = or i1 %.not87.i.i603.i, %.not67.i.i602.i
  br i1 %or.cond.i.i604.i, label %str_next_ofs.exit616.thread.i, label %.lr.ph.i.i605.i

.lr.ph.i.i605.i:                                  ; preds = %bb.cq
  %.not.i.i606.i = icmp eq i8 %.fr89.i.i600.i, 91
  br i1 %.not.i.i606.i, label %.lr.ph.split.us.split.i.i612.i, label %.lr.ph.split.split.us.i.i607.i

.lr.ph.split.us.split.i.i612.i:                   ; preds = %.lr.ph.i.i605.i, %bb.cr
  %.05475.us.i.i613.i = phi i64 [ %i.sp, %bb.cr ], [ 2, %.lr.ph.i.i605.i ] ; 2 uses
  %i.sp = add nuw nsw i64 %.05475.us.i.i613.i, 1  ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.05475.us.i.i613.i
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !48  ; 2 uses
  %i.ss = icmp sgt i8 %i.sr, 63
  %i.st = icmp eq i8 %i.sr, 2
  %or.cond116.i.i614.i = or i1 %i.ss, %i.st
  br i1 %or.cond116.i.i614.i, label %str_next_ofs.exit616.thread.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.split.us.split.i.i612.i
  %exitcond.not.i.i615.i = icmp eq i64 %i.sp, %i.sk
  br i1 %exitcond.not.i.i615.i, label %str_next_ofs.exit616.thread.i, label %.lr.ph.split.us.split.i.i612.i, !llvm.loop !11

.lr.ph.split.split.us.i.i607.i:                   ; preds = %.lr.ph.i.i605.i, %bb.cu
  %.05475.us76.i.i608.i = phi i64 [ %i.su, %bb.cu ], [ 2, %.lr.ph.i.i605.i ] ; 3 uses
  %i.su = add nuw nsw i64 %.05475.us76.i.i608.i, 1 ; 6 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.05475.us76.i.i608.i
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.sw, label %bb.cs [
    i8 7, label %str_next_ofs.exit616.thread.i
    i8 2, label %str_next_ofs.exit616.thread.i
  ]

bb.cs:                                            ; preds = %.lr.ph.split.split.us.i.i607.i
  %i.sx = icmp eq i8 %i.sw, 27
  %i.sy = icmp sgt i64 %i.sk, %i.su
  %or.cond.us.i.i609.i = select i1 %i.sx, i1 %i.sy, i1 false
  br i1 %or.cond.us.i.i609.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.su
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !48
  %i.tb = icmp eq i8 %i.ta, 92
  br i1 %i.tb, label %.split83.us.i.i611.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %exitcond103.not.i.i610.i = icmp eq i64 %i.su, %i.sk
  br i1 %exitcond103.not.i.i610.i, label %str_next_ofs.exit616.thread.i, label %.lr.ph.split.split.us.i.i607.i, !llvm.loop !11

.split83.us.i.i611.i:                             ; preds = %bb.ct
  %i.tc = add nuw nsw i64 %.05475.us76.i.i608.i, 2
  br label %str_next_ofs.exit616.thread.i

skip_esc.exit.i595.i:                             ; preds = %bb.cp
  %i.td = add nsw i64 %.01218.i.i.i367.i, 1       ; 2 uses
  %i.te = icmp sgt i64 %i.sf, %i.td
  br i1 %i.te, label %.lr.ph.i596.i, label %str_next_ofs.exit616.thread.i

.lr.ph.i596.i:                                    ; preds = %skip_esc.exit.i595.i, %bb.cv
  %i.tf = phi i64 [ %i.tj, %bb.cv ], [ %i.td, %skip_esc.exit.i595.i ]
  %.02837.i597.i = phi i64 [ %i.ti, %bb.cv ], [ 1, %skip_esc.exit.i595.i ] ; 2 uses
  %i.tg = getelementptr inbounds i8, ptr %.0.i.i211651.i, i64 %i.tf
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !48
  %or.cond.i598.i = icmp sgt i8 %i.th, -65
  br i1 %or.cond.i598.i, label %str_next_ofs.exit616.i, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i596.i
  %i.ti = add nuw i64 %.02837.i597.i, 1           ; 3 uses
  %i.tj = add nsw i64 %i.ti, %.01218.i.i.i367.i
  %exitcond.not.i599.i = icmp eq i64 %i.ti, %i.sk
  br i1 %exitcond.not.i599.i, label %str_next_ofs.exit616.i, label %.lr.ph.i596.i

str_next_ofs.exit616.thread.i:                    ; preds = %bb.cu, %.lr.ph.split.split.us.i.i607.i, %.lr.ph.split.split.us.i.i607.i, %bb.cr, %.lr.ph.split.us.split.i.i612.i, %skip_esc.exit.i595.i, %.split83.us.i.i611.i, %bb.cq
  %.2.i593.ph.i = phi i64 [ 1, %skip_esc.exit.i595.i ], [ %i.tc, %.split83.us.i.i611.i ], [ %i.sp, %.lr.ph.split.us.split.i.i612.i ], [ 2, %bb.cq ], [ 2, %bb.cr ], [ 2, %bb.cu ], [ %i.su, %.lr.ph.split.split.us.i.i607.i ], [ %i.su, %.lr.ph.split.split.us.i.i607.i ] ; 2 uses
  %i.tk = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.sj, i64 noundef %.2.i593.ph.i)
  br label %bb.cw
end_hunk_2
begin_hunk_3_@edit_generate_completions:bb.a

bb.ds:                                            ; preds = %ic_strlen.exit.i12.i328.i
  %i.xq = load i8, ptr %spec.select.i329.i, align 1, !tbaa !48 ; 2 uses
  %.not17.i.i13.i330.i = icmp eq i8 %i.xq, 0
  br i1 %.not17.i.i13.i330.i, label %sbuf_len.exit.i.i336.i, label %.lr.ph.i.i14.i331.i

.lr.ph.i.i14.i331.i:                              ; preds = %bb.ds, %bb.ea
  %i.xr = phi i8 [ %i.zb, %bb.ea ], [ %i.xq, %bb.ds ]
  %.019.i.i15.i332.i = phi i64 [ %i.yy, %bb.ea ], [ 0, %bb.ds ] ; 3 uses
  %.01218.i.i16.i333.i = phi i64 [ %i.yz, %bb.ea ], [ 0, %bb.ds ] ; 6 uses
  %i.xs = icmp sgt i64 %i.xo, %.01218.i.i16.i333.i
  br i1 %i.xs, label %bb.dt, label %sbuf_len.exit.i.i336.i

bb.dt:                                            ; preds = %.lr.ph.i.i14.i331.i
  %i.xt = getelementptr inbounds i8, ptr %spec.select.i329.i, i64 %.01218.i.i16.i333.i ; 6 uses
  %i.xu = sub nsw i64 %i.xo, %.01218.i.i16.i333.i ; 7 uses
  %i.xv = icmp sgt i64 %i.xu, 1
  %.not66.i.i516.i = icmp eq i8 %i.xr, 27
  %or.cond1047.i = and i1 %.not66.i.i516.i, %i.xv
  br i1 %or.cond1047.i, label %bb.du, label %skip_esc.exit.i517.i

bb.du:                                            ; preds = %bb.dt
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 1
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !48
  %.fr89.i.i522.i = freeze i8 %i.xx               ; 2 uses
  %i.xy = sext i8 %.fr89.i.i522.i to i32
  %memchr.i.i523.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.xy, i64 7)
  %.not67.i.i524.i = icmp eq ptr %memchr.i.i523.i, null
  %.not87.i.i525.i = icmp eq i64 %i.xu, 2
  %or.cond.i.i526.i = or i1 %.not87.i.i525.i, %.not67.i.i524.i
  br i1 %or.cond.i.i526.i, label %str_next_ofs.exit538.thread.i, label %.lr.ph.i.i527.i

.lr.ph.i.i527.i:                                  ; preds = %bb.du
  %.not.i.i528.i = icmp eq i8 %.fr89.i.i522.i, 91
  br i1 %.not.i.i528.i, label %.lr.ph.split.us.split.i.i534.i, label %.lr.ph.split.split.us.i.i529.i

.lr.ph.split.us.split.i.i534.i:                   ; preds = %.lr.ph.i.i527.i, %bb.dv
  %.05475.us.i.i535.i = phi i64 [ %i.xz, %bb.dv ], [ 2, %.lr.ph.i.i527.i ] ; 2 uses
  %i.xz = add nuw nsw i64 %.05475.us.i.i535.i, 1  ; 3 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.05475.us.i.i535.i
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !48  ; 2 uses
  %i.yc = icmp sgt i8 %i.yb, 63
  %i.yd = icmp eq i8 %i.yb, 2
  %or.cond116.i.i536.i = or i1 %i.yc, %i.yd
  br i1 %or.cond116.i.i536.i, label %str_next_ofs.exit538.thread.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.split.us.split.i.i534.i
  %exitcond.not.i.i537.i = icmp eq i64 %i.xz, %i.xu
  br i1 %exitcond.not.i.i537.i, label %str_next_ofs.exit538.thread.i, label %.lr.ph.split.us.split.i.i534.i, !llvm.loop !11

.lr.ph.split.split.us.i.i529.i:                   ; preds = %.lr.ph.i.i527.i, %bb.dy
  %.05475.us76.i.i530.i = phi i64 [ %i.ye, %bb.dy ], [ 2, %.lr.ph.i.i527.i ] ; 3 uses
  %i.ye = add nuw nsw i64 %.05475.us76.i.i530.i, 1 ; 6 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.05475.us76.i.i530.i
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.yg, label %bb.dw [
    i8 7, label %str_next_ofs.exit538.thread.i
    i8 2, label %str_next_ofs.exit538.thread.i
  ]

bb.dw:                                            ; preds = %.lr.ph.split.split.us.i.i529.i
  %i.yh = icmp eq i8 %i.yg, 27
  %i.yi = icmp sgt i64 %i.xu, %i.ye
  %or.cond.us.i.i531.i = select i1 %i.yh, i1 %i.yi, i1 false
  br i1 %or.cond.us.i.i531.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.ye
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !48
  %i.yl = icmp eq i8 %i.yk, 92
  br i1 %i.yl, label %.split83.us.i.i533.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %exitcond103.not.i.i532.i = icmp eq i64 %i.ye, %i.xu
  br i1 %exitcond103.not.i.i532.i, label %str_next_ofs.exit538.thread.i, label %.lr.ph.split.split.us.i.i529.i, !llvm.loop !11

.split83.us.i.i533.i:                             ; preds = %bb.dx
  %i.ym = add nuw nsw i64 %.05475.us76.i.i530.i, 2
  br label %str_next_ofs.exit538.thread.i

skip_esc.exit.i517.i:                             ; preds = %bb.dt
  %i.yn = add nsw i64 %.01218.i.i16.i333.i, 1     ; 2 uses
  %i.yo = icmp sgt i64 %i.xo, %i.yn
  br i1 %i.yo, label %.lr.ph.i518.i, label %str_next_ofs.exit538.thread.i

.lr.ph.i518.i:                                    ; preds = %skip_esc.exit.i517.i, %bb.dz
  %i.yp = phi i64 [ %i.yt, %bb.dz ], [ %i.yn, %skip_esc.exit.i517.i ]
  %.02837.i519.i = phi i64 [ %i.ys, %bb.dz ], [ 1, %skip_esc.exit.i517.i ] ; 2 uses
  %i.yq = getelementptr inbounds i8, ptr %spec.select.i329.i, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !48
  %or.cond.i520.i = icmp sgt i8 %i.yr, -65
  br i1 %or.cond.i520.i, label %str_next_ofs.exit538.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i518.i
  %i.ys = add nuw i64 %.02837.i519.i, 1           ; 3 uses
  %i.yt = add nsw i64 %i.ys, %.01218.i.i16.i333.i
  %exitcond.not.i521.i = icmp eq i64 %i.ys, %i.xu
  br i1 %exitcond.not.i521.i, label %str_next_ofs.exit538.i, label %.lr.ph.i518.i

str_next_ofs.exit538.thread.i:                    ; preds = %bb.dy, %.lr.ph.split.split.us.i.i529.i, %.lr.ph.split.split.us.i.i529.i, %bb.dv, %.lr.ph.split.us.split.i.i534.i, %skip_esc.exit.i517.i, %.split83.us.i.i533.i, %bb.du
  %.2.i515.ph.i = phi i64 [ 1, %skip_esc.exit.i517.i ], [ %i.ym, %.split83.us.i.i533.i ], [ %i.xz, %.lr.ph.split.us.split.i.i534.i ], [ 2, %bb.du ], [ 2, %bb.dv ], [ 2, %bb.dy ], [ %i.ye, %.lr.ph.split.split.us.i.i529.i ], [ %i.ye, %.lr.ph.split.split.us.i.i529.i ] ; 2 uses
  %i.yu = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.xt, i64 noundef %.2.i515.ph.i)
  br label %bb.ea

str_next_ofs.exit538.i:                           ; preds = %bb.dz, %.lr.ph.i518.i
  %.2.i515.i = phi i64 [ %.02837.i519.i, %.lr.ph.i518.i ], [ %i.xu, %bb.dz ] ; 3 uses
  %i.yv = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.xt, i64 noundef %.2.i515.i)
  %i.yw = icmp sgt i64 %.2.i515.i, 0
  br i1 %i.yw, label %bb.ea, label %sbuf_len.exit.i.i336.i

bb.ea:                                            ; preds = %str_next_ofs.exit538.i, %str_next_ofs.exit538.thread.i
  %i.yx = phi i64 [ %i.yu, %str_next_ofs.exit538.thread.i ], [ %i.yv, %str_next_ofs.exit538.i ]
  %.2.i515665.i = phi i64 [ %.2.i515.ph.i, %str_next_ofs.exit538.thread.i ], [ %.2.i515.i, %str_next_ofs.exit538.i ]
  %i.yy = add nsw i64 %i.yx, %.019.i.i15.i332.i   ; 2 uses
  %i.yz = add nuw nsw i64 %.2.i515665.i, %.01218.i.i16.i333.i ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %spec.select.i329.i, i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !48  ; 2 uses
  %.not.i.i20.i341.i = icmp eq i8 %i.zb, 0
  br i1 %.not.i.i20.i341.i, label %sbuf_len.exit.i.i336.i, label %.lr.ph.i.i14.i331.i, !llvm.loop !7

sbuf_len.exit.i.i336.i:                           ; preds = %.lr.ph.i.i14.i331.i, %bb.ea, %str_next_ofs.exit538.i, %bb.ds, %ic_strlen.exit.i12.i328.i
  %.013.i.i1927.i337.i = phi i64 [ 0, %ic_strlen.exit.i12.i328.i ], [ 0, %bb.ds ], [ %.019.i.i15.i332.i, %.lr.ph.i.i14.i331.i ], [ %.019.i.i15.i332.i, %str_next_ofs.exit538.i ], [ %i.yy, %bb.ea ] ; 2 uses
  %.not.i.i23.not.i338.i = icmp eq i64 %i.xj, 0
  br i1 %.not.i.i23.not.i338.i, label %bbcode_column_width.exit349.i, label %ic_memmove.exit.i.i.i339.i

ic_memmove.exit.i.i.i339.i:                       ; preds = %sbuf_len.exit.i.i336.i
  store i64 0, ptr %i.xi, align 8, !tbaa !79
  store i8 0, ptr %i.xl, align 1, !tbaa !48
  br label %bbcode_column_width.exit349.i

bbcode_column_width.exit349.i:                    ; preds = %.lr.ph.i.i.i343.i, %bb.dq, %str_next_ofs.exit564.i, %ic_memmove.exit.i.i.i339.i, %sbuf_len.exit.i.i336.i, %bb.dr, %ic_strlen.exit.i.i342.i, %bb.dh
  %.0.i340.i = phi i64 [ 0, %ic_strlen.exit.i.i342.i ], [ 0, %bb.dr ], [ 0, %bb.dh ], [ %.013.i.i1927.i337.i, %ic_memmove.exit.i.i.i339.i ], [ %.013.i.i1927.i337.i, %sbuf_len.exit.i.i336.i ], [ %.019.i.i.i344.i, %.lr.ph.i.i.i343.i ], [ %.019.i.i.i344.i, %str_next_ofs.exit564.i ], [ %i.xd, %bb.dq ]
  %i.zc = add i64 %.0.i362.i, 2
  %i.zd = add i64 %i.zc, %.0.i340.i
  br label %completions_get_display.exit.thread.i204.i

completions_get_display.exit.thread.i204.i:       ; preds = %bbcode_column_width.exit349.i, %bbcode_column_width.exit371.i, %completions_get.exit.i.i208.i, %.preheader762.i
  %.0.i205.i = phi i64 [ %i.zd, %bbcode_column_width.exit349.i ], [ %.0.i362.i, %bbcode_column_width.exit371.i ], [ 0, %completions_get.exit.i.i208.i ], [ 0, %.preheader762.i ]
  %spec.select.i206.i = call i64 @llvm.smax.i64(i64 %.0.i205.i, i64 %.01218.i202.i) ; 2 uses
  %i.ze = add nuw nsw i64 %.01119.i201.i, 1       ; 2 uses
  %exitcond.not.i207.i = icmp eq i64 %i.ze, 8
  br i1 %exitcond.not.i207.i, label %edit_completions_max_width.exit213.i, label %.preheader762.i, !llvm.loop !420

edit_completions_max_width.exit213.i:             ; preds = %completions_get_display.exit.thread.i204.i
  %i.zf = add nuw nsw i64 %spec.select.i206.i, 3  ; 5 uses
  %i.zg = shl nuw nsw i64 %i.zf, 1
  %i.zh = add nuw nsw i64 %i.zg, 2
  %i.zi = icmp slt i64 %i.zh, %i.fe
  br i1 %i.zi, label %sbuf_insert_at_n.exit391.peel.i, label %.thread.i

sbuf_insert_at_n.exit391.peel.i:                  ; preds = %edit_completions_max_width.exit213.i
  %i.zj = icmp eq i64 %.0173.i, 0
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775808, 4) 0, i64 noundef range(i64 3, -9223372036854775808) %i.zf, i1 noundef zeroext %i.zj)
  %i.zk = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.zl = icmp eq ptr %i.zk, null
  br i1 %i.zl, label %editor_append_completion2.exit.thread.peel.i, label %editor_append_completion2.exit.peel.i

editor_append_completion2.exit.peel.i:            ; preds = %sbuf_insert_at_n.exit391.peel.i
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !79 ; 3 uses
  %i.zo = icmp slt i64 %i.zn, 0
  br i1 %i.zo, label %.peel.next.i, label %.lr.ph.i.i394.preheader.peel.i

editor_append_completion2.exit.thread.peel.i:     ; preds = %sbuf_insert_at_n.exit391.peel.i
  %.pre.i34 = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not682.peel.i = icmp slt i64 %.pre.i34, 0
  br i1 %.not682.peel.i, label %.peel.next.i, label %.lr.ph.i.i394.preheader.peel.i

.lr.ph.i.i394.preheader.peel.i:                   ; preds = %editor_append_completion2.exit.peel.i, %editor_append_completion2.exit.thread.peel.i
  %.0.i.i.i219669.peel987.i = phi i64 [ 0, %editor_append_completion2.exit.thread.peel.i ], [ %i.zn, %editor_append_completion2.exit.peel.i ] ; 3 uses
  %i.zp = phi i64 [ %.pre.i34, %editor_append_completion2.exit.thread.peel.i ], [ %i.zn, %editor_append_completion2.exit.peel.i ] ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zk, i64 16 ; 4 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zk, i64 8 ; 2 uses
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !213 ; 6 uses
  %i.zt = add nuw nsw i64 %i.zp, 2                ; 3 uses
  %.not.i32.i400.peel.i = icmp slt i64 %i.zs, %i.zt
  br i1 %.not.i32.i400.peel.i, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %.lr.ph.i.i394.preheader.peel.i
  %i.zu = icmp slt i64 %i.zs, 1
  br i1 %i.zu, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.zv = icmp samesign ugt i64 %i.zs, 1000
  %i.zw = shl nuw nsw i64 %i.zs, 1
  %i.zx = add nuw nsw i64 %i.zs, 1000
  %.ph.i.i403.peel.i = select i1 %i.zv, i64 %i.zx, i64 %i.zw
  %i.zy = call i64 @llvm.umax.i64(i64 %.ph.i.i403.peel.i, i64 %i.zt) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.zs, i64 noundef %i.zy)
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.zz = call i64 @llvm.umax.i64(i64 %i.zt, i64 120)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %spec.select34.i.i405.peel.i = phi i64 [ %i.zy, %bb.ec ], [ %i.zz, %bb.ed ] ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !78
  %i.aac = load ptr, ptr %i.zk, align 8, !tbaa !81
  %11 = getelementptr i8, ptr %i.aab, i64 8
  %.val.i.i406.peel.i = load ptr, ptr %11, align 8, !tbaa !74
  %12 = add nuw nsw i64 %spec.select34.i.i405.peel.i, 1
  %i.aad = call ptr %.val.i.i406.peel.i(ptr noundef %i.aac, i64 noundef %12) #28, !inline_history !421 ; 3 uses
  %.not36.i.i407.peel.i = icmp eq ptr %i.aad, null
  br i1 %.not36.i.i407.peel.i, label %.peel.next.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.aad, ptr %i.zk, align 8, !tbaa !81
  store i64 %spec.select34.i.i405.peel.i, ptr %i.zr, align 8, !tbaa !213
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %spec.select34.i.i405.peel.i
  store i8 0, ptr %i.aae, align 1, !tbaa !48
  %i.aaf = load ptr, ptr %i.zk, align 8, !tbaa !81
  %i.aag = load i64, ptr %i.zq, align 8, !tbaa !79
  %i.aah = getelementptr inbounds i8, ptr %i.aaf, i64 %i.aag
  store i8 0, ptr %i.aah, align 1, !tbaa !48
  %.pre.i408.peel.i = load i64, ptr %i.zq, align 8, !tbaa !79
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph.i.i394.preheader.peel.i
  %i.aai = phi i64 [ %i.zp, %.lr.ph.i.i394.preheader.peel.i ], [ %.pre.i408.peel.i, %bb.ef ]
  %i.aaj = sub nsw i64 %i.aai, %.0.i.i.i219669.peel987.i ; 2 uses
  %i.aak = icmp slt i64 %i.aaj, 1
  br i1 %i.aak, label %ic_memmove.exit.i401.peel.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aal = load ptr, ptr %i.zk, align 8, !tbaa !81
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 %.0.i.i.i219669.peel987.i ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aan, ptr readonly align 1 %i.aam, i64 %i.aaj, i1 false)
  br label %ic_memmove.exit.i401.peel.i

ic_memmove.exit.i401.peel.i:                      ; preds = %bb.eh, %bb.eg
  %i.aao = load ptr, ptr %i.zk, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 %.0.i.i.i219669.peel987.i
  store i16 8224, ptr %i.aap, align 1
  %.pre38.i402.peel.i = load ptr, ptr %i.zk, align 8, !tbaa !81
  %i.aaq = load i64, ptr %i.zq, align 8, !tbaa !79
  %i.aar = add nsw i64 %i.aaq, 2                  ; 2 uses
  store i64 %i.aar, ptr %i.zq, align 8, !tbaa !79
  %i.aas = getelementptr inbounds i8, ptr %.pre38.i402.peel.i, i64 %i.aar
  store i8 0, ptr %i.aas, align 1, !tbaa !48
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %ic_memmove.exit.i401.peel.i, %bb.ee, %editor_append_completion2.exit.thread.peel.i, %editor_append_completion2.exit.peel.i
  %i.aat = icmp eq i64 %i.ek, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775805, 8) %i.ek, i64 noundef range(i64 3, -9223372036854775808) %i.zf, i1 noundef zeroext %i.aat)
  br label %bb.ei

bb.ei:                                            ; preds = %sbuf_insert_at_n.exit410.i, %.peel.next.i
  %.0170733.i = phi i64 [ %i.adp, %sbuf_insert_at_n.exit410.i ], [ 1, %.peel.next.i ] ; 4 uses
  %i.aau = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.aav = icmp eq ptr %i.aau, null
  br i1 %i.aav, label %sbuf_append.exit217.thread.i, label %sbuf_append.exit217.i

sbuf_append.exit217.i:                            ; preds = %bb.ei
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !79 ; 3 uses
  %i.aay = icmp slt i64 %i.aax, 0
  br i1 %i.aay, label %sbuf_insert_at_n.exit391.i, label %.lr.ph.i.i375.i

sbuf_append.exit217.thread.i:                     ; preds = %bb.ei
  %.pre129 = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not681.i = icmp slt i64 %.pre129, 0
  br i1 %.not681.i, label %sbuf_insert_at_n.exit391.i, label %.lr.ph.i.i375.i

.lr.ph.i.i375.i:                                  ; preds = %sbuf_append.exit217.i, %sbuf_append.exit217.thread.i
  %.0.i.i215989.i317 = phi i64 [ 0, %sbuf_append.exit217.thread.i ], [ %i.aax, %sbuf_append.exit217.i ] ; 3 uses
  %i.aaz = phi i64 [ %.pre129, %sbuf_append.exit217.thread.i ], [ %i.aax, %sbuf_append.exit217.i ] ; 3 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aau, i64 16 ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aau, i64 8 ; 2 uses
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !213 ; 6 uses
  %i.abd = add nuw nsw i64 %i.aaz, 1              ; 2 uses
  %.not.i32.i381.not.i = icmp sgt i64 %i.abc, %i.aaz
  br i1 %.not.i32.i381.not.i, label %bb.eo, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph.i.i375.i
  %i.abe = icmp slt i64 %i.abc, 1
  br i1 %i.abe, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.abf = icmp samesign ugt i64 %i.abc, 1000
  %i.abg = shl nuw nsw i64 %i.abc, 1
  %i.abh = add nuw nsw i64 %i.abc, 1000
  %.ph.i.i384.i = select i1 %i.abf, i64 %i.abh, i64 %i.abg
  %i.abi = call i64 @llvm.umax.i64(i64 %.ph.i.i384.i, i64 %i.abd) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.abc, i64 noundef %i.abi)
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.abj = call i64 @llvm.umax.i64(i64 %i.abd, i64 120)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %spec.select34.i.i386.i = phi i64 [ %i.abi, %bb.ek ], [ %i.abj, %bb.el ] ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aau, i64 24
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !78
  %i.abm = load ptr, ptr %i.aau, align 8, !tbaa !81
  %13 = getelementptr i8, ptr %i.abl, i64 8
  %.val.i.i387.i = load ptr, ptr %13, align 8, !tbaa !74
  %14 = add nuw nsw i64 %spec.select34.i.i386.i, 1
  %i.abn = call ptr %.val.i.i387.i(ptr noundef %i.abm, i64 noundef %14) #28, !inline_history !421 ; 3 uses
  %.not36.i.i388.i = icmp eq ptr %i.abn, null
  br i1 %.not36.i.i388.i, label %sbuf_insert_at_n.exit391.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  store ptr %i.abn, ptr %i.aau, align 8, !tbaa !81
  store i64 %spec.select34.i.i386.i, ptr %i.abb, align 8, !tbaa !213
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 %spec.select34.i.i386.i
  store i8 0, ptr %i.abo, align 1, !tbaa !48
  %i.abp = load ptr, ptr %i.aau, align 8, !tbaa !81
  %i.abq = load i64, ptr %i.aba, align 8, !tbaa !79
  %i.abr = getelementptr inbounds i8, ptr %i.abp, i64 %i.abq
  store i8 0, ptr %i.abr, align 1, !tbaa !48
  %.pre.i389.i = load i64, ptr %i.aba, align 8, !tbaa !79
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %.lr.ph.i.i375.i
  %i.abs = phi i64 [ %i.aaz, %.lr.ph.i.i375.i ], [ %.pre.i389.i, %bb.en ]
  %i.abt = sub nsw i64 %i.abs, %.0.i.i215989.i317 ; 2 uses
  %i.abu = icmp slt i64 %i.abt, 1
  br i1 %i.abu, label %ic_memmove.exit.i382.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.abv = load ptr, ptr %i.aau, align 8, !tbaa !81
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 %.0.i.i215989.i317 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.abx, ptr readonly align 1 %i.abw, i64 %i.abt, i1 false)
  br label %ic_memmove.exit.i382.i

ic_memmove.exit.i382.i:                           ; preds = %bb.ep, %bb.eo
  %i.aby = load ptr, ptr %i.aau, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 %.0.i.i215989.i317
  store i8 10, ptr %i.abz, align 1
  %.pre38.i383.i = load ptr, ptr %i.aau, align 8, !tbaa !81
  %i.aca = load i64, ptr %i.aba, align 8, !tbaa !79
  %i.acb = add nsw i64 %i.aca, 1                  ; 2 uses
  store i64 %i.acb, ptr %i.aba, align 8, !tbaa !79
  %i.acc = getelementptr inbounds i8, ptr %.pre38.i383.i, i64 %i.acb
  store i8 0, ptr %i.acc, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit391.i

sbuf_insert_at_n.exit391.i:                       ; preds = %ic_memmove.exit.i382.i, %bb.em, %sbuf_append.exit217.thread.i, %sbuf_append.exit217.i
  %i.acd = add nuw nsw i64 %.0170733.i, %i.ek     ; 2 uses
  %i.ace = icmp eq i64 %.0170733.i, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775808, 4) %.0170733.i, i64 noundef range(i64 3, -9223372036854775808) %i.zf, i1 noundef zeroext %i.ace)
  %i.acf = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.acg = icmp eq ptr %i.acf, null
  br i1 %i.acg, label %editor_append_completion2.exit.thread.i, label %editor_append_completion2.exit.i

editor_append_completion2.exit.i:                 ; preds = %sbuf_insert_at_n.exit391.i
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !79 ; 3 uses
  %i.acj = icmp slt i64 %i.aci, 0
  br i1 %i.acj, label %sbuf_insert_at_n.exit410.i, label %.lr.ph.i.i394.preheader.i

editor_append_completion2.exit.thread.i:          ; preds = %sbuf_insert_at_n.exit391.i
  %.pre797.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not682.i = icmp slt i64 %.pre797.i, 0
  br i1 %.not682.i, label %sbuf_insert_at_n.exit410.i, label %.lr.ph.i.i394.preheader.i

.lr.ph.i.i394.preheader.i:                        ; preds = %editor_append_completion2.exit.i, %editor_append_completion2.exit.thread.i
  %.0.i.i.i219669992.i = phi i64 [ 0, %editor_append_completion2.exit.thread.i ], [ %i.aci, %editor_append_completion2.exit.i ] ; 3 uses
  %i.ack = phi i64 [ %.pre797.i, %editor_append_completion2.exit.thread.i ], [ %i.aci, %editor_append_completion2.exit.i ] ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acf, i64 16 ; 4 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acf, i64 8 ; 2 uses
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !213 ; 6 uses
  %i.aco = add nuw nsw i64 %i.ack, 2              ; 3 uses
  %.not.i32.i400.i = icmp slt i64 %i.acn, %i.aco
  br i1 %.not.i32.i400.i, label %bb.eq, label %bb.ev

bb.eq:                                            ; preds = %.lr.ph.i.i394.preheader.i
  %i.acp = icmp slt i64 %i.acn, 1
  br i1 %i.acp, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.acq = icmp samesign ugt i64 %i.acn, 1000
  %i.acr = shl nuw nsw i64 %i.acn, 1
  %i.acs = add nuw nsw i64 %i.acn, 1000
  %.ph.i.i403.i = select i1 %i.acq, i64 %i.acs, i64 %i.acr
  %i.act = call i64 @llvm.umax.i64(i64 %.ph.i.i403.i, i64 %i.aco) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.acn, i64 noundef %i.act)
  br label %bb.et

bb.es:                                            ; preds = %bb.eq
  %i.acu = call i64 @llvm.umax.i64(i64 %i.aco, i64 120)
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %spec.select34.i.i405.i = phi i64 [ %i.act, %bb.er ], [ %i.acu, %bb.es ] ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !78
  %i.acx = load ptr, ptr %i.acf, align 8, !tbaa !81
  %15 = getelementptr i8, ptr %i.acw, i64 8
  %.val.i.i406.i = load ptr, ptr %15, align 8, !tbaa !74
  %16 = add nuw nsw i64 %spec.select34.i.i405.i, 1
  %i.acy = call ptr %.val.i.i406.i(ptr noundef %i.acx, i64 noundef %16) #28, !inline_history !421 ; 3 uses
  %.not36.i.i407.i = icmp eq ptr %i.acy, null
  br i1 %.not36.i.i407.i, label %sbuf_insert_at_n.exit410.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store ptr %i.acy, ptr %i.acf, align 8, !tbaa !81
  store i64 %spec.select34.i.i405.i, ptr %i.acm, align 8, !tbaa !213
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 %spec.select34.i.i405.i
  store i8 0, ptr %i.acz, align 1, !tbaa !48
  %i.ada = load ptr, ptr %i.acf, align 8, !tbaa !81
  %i.adb = load i64, ptr %i.acl, align 8, !tbaa !79
  %i.adc = getelementptr inbounds i8, ptr %i.ada, i64 %i.adb
  store i8 0, ptr %i.adc, align 1, !tbaa !48
  %.pre.i408.i = load i64, ptr %i.acl, align 8, !tbaa !79
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %.lr.ph.i.i394.preheader.i
  %i.add = phi i64 [ %i.ack, %.lr.ph.i.i394.preheader.i ], [ %.pre.i408.i, %bb.eu ]
  %i.ade = sub nsw i64 %i.add, %.0.i.i.i219669992.i ; 2 uses
  %i.adf = icmp slt i64 %i.ade, 1
  br i1 %i.adf, label %ic_memmove.exit.i401.i, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.adg = load ptr, ptr %i.acf, align 8, !tbaa !81
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 %.0.i.i.i219669992.i ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.adi, ptr readonly align 1 %i.adh, i64 %i.ade, i1 false)
  br label %ic_memmove.exit.i401.i

ic_memmove.exit.i401.i:                           ; preds = %bb.ew, %bb.ev
  %i.adj = load ptr, ptr %i.acf, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 %.0.i.i.i219669992.i
  store i16 8224, ptr %i.adk, align 1
  %.pre38.i402.i = load ptr, ptr %i.acf, align 8, !tbaa !81
  %i.adl = load i64, ptr %i.acl, align 8, !tbaa !79
  %i.adm = add nsw i64 %i.adl, 2                  ; 2 uses
  store i64 %i.adm, ptr %i.acl, align 8, !tbaa !79
  %i.adn = getelementptr inbounds i8, ptr %.pre38.i402.i, i64 %i.adm
  store i8 0, ptr %i.adn, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit410.i

sbuf_insert_at_n.exit410.i:                       ; preds = %ic_memmove.exit.i401.i, %bb.et, %editor_append_completion2.exit.thread.i, %editor_append_completion2.exit.i
  %i.ado = icmp eq i64 %i.acd, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775805, 8) %i.acd, i64 noundef range(i64 3, -9223372036854775808) %i.zf, i1 noundef zeroext %i.ado)
  %i.adp = add nuw nsw i64 %.0170733.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.adp, %i.ek
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.ei, !llvm.loop !423

.thread.i:                                        ; preds = %edit_completions_max_width.exit213.i, %sbuf_clear.exit.i
  br i1 %i.em, label %sbuf_insert_at_n.exit429.peel.i, label %.loopexit.i

sbuf_insert_at_n.exit429.peel.i:                  ; preds = %.thread.i
  %i.adq = icmp eq i64 %.0173.i, 0
  call fastcc void @editor_append_completion(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 0, i64 noundef -1, i1 noundef zeroext %i.adq)
  br i1 %exitcond791.peel.not.i, label %.loopexit.i, label %.lr.ph.peel.next.i.preheader

.lr.ph.peel.next.i.preheader:                     ; preds = %sbuf_insert_at_n.exit429.peel.i, %sbuf_insert_at_n.exit429.peel.thread.i
  br label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %.lr.ph.peel.next.i.preheader, %sbuf_insert_at_n.exit429.i
  %.0169734.i = phi i64 [ %i.afb, %sbuf_insert_at_n.exit429.i ], [ 1, %.lr.ph.peel.next.i.preheader ] ; 3 uses
  %i.adr = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.ads = icmp eq ptr %i.adr, null
  br i1 %i.ads, label %sbuf_append.exit223.thread.i, label %sbuf_append.exit223.i

sbuf_append.exit223.i:                            ; preds = %.lr.ph.peel.next.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !79 ; 3 uses
  %i.adv = icmp slt i64 %i.adu, 0
  br i1 %i.adv, label %sbuf_insert_at_n.exit429.i, label %.lr.ph.i.i413.i

sbuf_append.exit223.thread.i:                     ; preds = %.lr.ph.peel.next.i
  %.pre131 = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not680.i = icmp slt i64 %.pre131, 0
  br i1 %.not680.i, label %sbuf_insert_at_n.exit429.i, label %.lr.ph.i.i413.i

.lr.ph.i.i413.i:                                  ; preds = %sbuf_append.exit223.i, %sbuf_append.exit223.thread.i
  %.0.i.i221995.i320 = phi i64 [ 0, %sbuf_append.exit223.thread.i ], [ %i.adu, %sbuf_append.exit223.i ] ; 3 uses
  %i.adw = phi i64 [ %.pre131, %sbuf_append.exit223.thread.i ], [ %i.adu, %sbuf_append.exit223.i ] ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adr, i64 16 ; 4 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adr, i64 8 ; 2 uses
  %i.adz = load i64, ptr %i.ady, align 8, !tbaa !213 ; 6 uses
  %i.aea = add nuw nsw i64 %i.adw, 1              ; 2 uses
  %.not.i32.i419.not.i = icmp sgt i64 %i.adz, %i.adw
  br i1 %.not.i32.i419.not.i, label %bb.fc, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph.i.i413.i
  %i.aeb = icmp slt i64 %i.adz, 1
  br i1 %i.aeb, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aec = icmp samesign ugt i64 %i.adz, 1000
  %i.aed = shl nuw nsw i64 %i.adz, 1
  %i.aee = add nuw nsw i64 %i.adz, 1000
  %.ph.i.i422.i = select i1 %i.aec, i64 %i.aee, i64 %i.aed
  %i.aef = call i64 @llvm.umax.i64(i64 %.ph.i.i422.i, i64 %i.aea) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.adz, i64 noundef %i.aef)
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.aeg = call i64 @llvm.umax.i64(i64 %i.aea, i64 120)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %spec.select34.i.i424.i = phi i64 [ %i.aef, %bb.ey ], [ %i.aeg, %bb.ez ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 24
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !78
  %i.aej = load ptr, ptr %i.adr, align 8, !tbaa !81
  %17 = getelementptr i8, ptr %i.aei, i64 8
  %.val.i.i425.i = load ptr, ptr %17, align 8, !tbaa !74
  %18 = add nuw nsw i64 %spec.select34.i.i424.i, 1
  %i.aek = call ptr %.val.i.i425.i(ptr noundef %i.aej, i64 noundef %18) #28, !inline_history !421 ; 3 uses
  %.not36.i.i426.i = icmp eq ptr %i.aek, null
  br i1 %.not36.i.i426.i, label %sbuf_insert_at_n.exit429.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store ptr %i.aek, ptr %i.adr, align 8, !tbaa !81
  store i64 %spec.select34.i.i424.i, ptr %i.ady, align 8, !tbaa !213
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 %spec.select34.i.i424.i
  store i8 0, ptr %i.ael, align 1, !tbaa !48
  %i.aem = load ptr, ptr %i.adr, align 8, !tbaa !81
  %i.aen = load i64, ptr %i.adx, align 8, !tbaa !79
  %i.aeo = getelementptr inbounds i8, ptr %i.aem, i64 %i.aen
  store i8 0, ptr %i.aeo, align 1, !tbaa !48
  %.pre.i427.i = load i64, ptr %i.adx, align 8, !tbaa !79
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %.lr.ph.i.i413.i
  %i.aep = phi i64 [ %i.adw, %.lr.ph.i.i413.i ], [ %.pre.i427.i, %bb.fb ]
  %i.aeq = sub nsw i64 %i.aep, %.0.i.i221995.i320 ; 2 uses
  %i.aer = icmp slt i64 %i.aeq, 1
  br i1 %i.aer, label %ic_memmove.exit.i420.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.aes = load ptr, ptr %i.adr, align 8, !tbaa !81
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 %.0.i.i221995.i320 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aeu, ptr readonly align 1 %i.aet, i64 %i.aeq, i1 false)
  br label %ic_memmove.exit.i420.i

ic_memmove.exit.i420.i:                           ; preds = %bb.fd, %bb.fc
  %i.aev = load ptr, ptr %i.adr, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 %.0.i.i221995.i320
  store i8 10, ptr %i.aew, align 1
  %.pre38.i421.i = load ptr, ptr %i.adr, align 8, !tbaa !81
  %i.aex = load i64, ptr %i.adx, align 8, !tbaa !79
  %i.aey = add nsw i64 %i.aex, 1                  ; 2 uses
  store i64 %i.aey, ptr %i.adx, align 8, !tbaa !79
  %i.aez = getelementptr inbounds i8, ptr %.pre38.i421.i, i64 %i.aey
  store i8 0, ptr %i.aez, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit429.i

sbuf_insert_at_n.exit429.i:                       ; preds = %ic_memmove.exit.i420.i, %bb.fa, %sbuf_append.exit223.thread.i, %sbuf_append.exit223.i
  %i.afa = icmp eq i64 %.0173.i, %.0169734.i
  call fastcc void @editor_append_completion(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %.0169734.i, i64 noundef -1, i1 noundef zeroext %i.afa)
  %i.afb = add nuw nsw i64 %.0169734.i, 1         ; 2 uses
  %exitcond791.not.i = icmp eq i64 %i.afb, %i.el
  br i1 %exitcond791.not.i, label %.loopexit.i, label %.lr.ph.peel.next.i, !llvm.loop !424

.loopexit.i:                                      ; preds = %sbuf_insert_at_n.exit410.i, %sbuf_insert_at_n.exit429.i, %sbuf_insert_at_n.exit308.i, %sbuf_insert_at_n.exit429.peel.i, %.thread.i
  %.0176.i = phi i64 [ %i.el, %sbuf_insert_at_n.exit308.i ], [ %i.el, %.thread.i ], [ %i.el, %sbuf_insert_at_n.exit429.peel.i ], [ %i.el, %sbuf_insert_at_n.exit429.i ], [ %i.ei, %sbuf_insert_at_n.exit410.i ] ; 4 uses
  %i.afc = icmp sgt i64 %.val197.i, %.0176.i
  br i1 %i.afc, label %bb.fe, label %bb.fi

bb.fe:                                            ; preds = %.loopexit.i
  %i.afd = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 4 uses
  br i1 %i.w, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.afe = icmp eq ptr %i.afd, null
  br i1 %i.afe, label %sbuf_append.exit227.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !79
  br label %sbuf_append.exit227.i

sbuf_append.exit227.i:                            ; preds = %bb.fg, %bb.ff
  %.0.i.i225.i = phi i64 [ %i.afg, %bb.fg ], [ 0, %bb.ff ]
  %i.afh = call fastcc i64 @sbuf_insert_at_n(ptr noundef %i.afd, ptr noundef nonnull readonly @.str.297, i64 noundef 73, i64 noundef %.0.i.i225.i) ; 0 uses
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fe
  call void (ptr, ptr, ...) @sbuf_appendf(ptr noundef %i.afd, ptr noundef nonnull @.str.298, i64 noundef %.val197.i)
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %sbuf_append.exit227.i, %.loopexit.i
  %i.afi = load i8, ptr %i.dz, align 4, !tbaa !172, !range !136, !noundef !137
  %i.afj = trunc nuw i8 %i.afi to i1
  %i.afk = icmp slt i64 %.0173.i, 0
  %.not.i = icmp sgt i64 %.0173.i, %.0176.i
  %i.afl = or i1 %i.afk, %.not.i
  %or.cond.i = select i1 %i.afj, i1 true, i1 %i.afl
  br i1 %or.cond.i, label %bb.fn, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call fastcc void @editor_start_modify(ptr noundef nonnull %1)
  %i.afm = load ptr, ptr %i.n, align 8, !tbaa !122 ; 2 uses
  %i.afn = load ptr, ptr %1, align 8, !tbaa !217
  %i.afo = load i64, ptr %i.d, align 8, !tbaa !222
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afm, i64 24
  %i.afq = load i64, ptr %i.afp, align 8, !tbaa !126
  %.not.i.i.i228.i = icmp slt i64 %.0173.i, %i.afq
  br i1 %.not.i.i.i228.i, label %bb.fk, label %completions_apply.exit.i.i27

bb.fk:                                            ; preds = %bb.fj
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afm, i64 40
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !189
  %i.aft = getelementptr inbounds nuw [40 x i8], ptr %i.afs, i64 %.0173.i
  br label %completions_apply.exit.i.i27

completions_apply.exit.i.i27:                     ; preds = %bb.fk, %bb.fj
  %.0.i.i.i229.i = phi ptr [ %i.aft, %bb.fk ], [ null, %bb.fj ]
  %i.afu = call fastcc i64 @completion_apply(ptr noundef %.0.i.i.i229.i, ptr noundef %i.afn, i64 noundef %i.afo) ; 2 uses
  %i.afv = icmp sgt i64 %i.afu, -1
  br i1 %i.afv, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %completions_apply.exit.i.i27
  call fastcc void @editor_restore(ptr noundef nonnull %1, ptr noundef %i.en, ptr noundef null)
  br label %edit_complete.exit.i

bb.fm:                                            ; preds = %completions_apply.exit.i.i27
  store i64 %i.afu, ptr %i.d, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %edit_complete.exit.i

edit_complete.exit.i:                             ; preds = %bb.fm, %bb.fl
  call fastcc void @editor_restore(ptr noundef nonnull %1, ptr noundef %i.en, ptr noundef null)
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fi
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %edit_complete.exit.i
  %i.afw = load ptr, ptr %i.eo, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.afx = call fastcc zeroext i1 @tty_read_timeout(ptr noundef %i.afw, i64 noundef -1, ptr noundef %i.b)
  %i.afy = load i32, ptr %i.b, align 4
  %.0.i230.i = select i1 %i.afx, i32 %i.afy, i32 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.afz = load ptr, ptr %i.eo, align 8, !tbaa !138 ; 3 uses
  %i.aga = icmp eq ptr %i.afz, null
  br i1 %i.aga, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 6
  %i.agc = load i8, ptr %i.agb, align 2, !tbaa !200, !range !136, !noundef !137
  %i.agd = trunc nuw i8 %i.agc to i1
  br i1 %i.agd, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.age = getelementptr inbounds nuw i8, ptr %i.afz, i64 7 ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !229, !range !136, !noundef !137
  %i.agg = trunc nuw i8 %i.agf to i1
  br i1 %i.agg, label %bb.fr, label %tty_term_resize_event.exit.i

bb.fr:                                            ; preds = %bb.fq
  store i8 0, ptr %i.age, align 1, !tbaa !229
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fp, %bb.fo
  call fastcc void @edit_resize(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %tty_term_resize_event.exit.i

tty_term_resize_event.exit.i:                     ; preds = %bb.fs, %bb.fq
  %i.agh = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 5 uses
  %i.agi = icmp eq ptr %i.agh, null
  br i1 %i.agi, label %.sbuf_len.exit_crit_edge.i239.i, label %bb.ft

.sbuf_len.exit_crit_edge.i239.i:                  ; preds = %tty_term_resize_event.exit.i
  %.pre.i240.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %i.agj = call i64 @llvm.smin.i64(i64 %.pre.i240.i, i64 0)
  br label %sbuf_len.exit.i232.i

bb.ft:                                            ; preds = %tty_term_resize_event.exit.i
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  %i.agl = load i64, ptr %i.agk, align 8, !tbaa !79 ; 2 uses
  br label %sbuf_len.exit.i232.i

sbuf_len.exit.i232.i:                             ; preds = %bb.ft, %.sbuf_len.exit_crit_edge.i239.i
  %i.agm = phi i64 [ %i.agl, %bb.ft ], [ %.pre.i240.i, %.sbuf_len.exit_crit_edge.i239.i ] ; 2 uses
  %.0.i.i233.i = phi i64 [ %i.agl, %bb.ft ], [ %i.agj, %.sbuf_len.exit_crit_edge.i239.i ] ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agh, i64 16 ; 2 uses
  %.not.i.i234.i = icmp sgt i64 %i.agm, 0
  br i1 %.not.i.i234.i, label %bb.fu, label %sbuf_clear.exit241.i

bb.fu:                                            ; preds = %sbuf_len.exit.i232.i
  %i.ago = sub i64 %i.agm, %.0.i.i233.i           ; 3 uses
  %i.agp = icmp slt i64 %i.ago, 1
  br i1 %i.agp, label %ic_memmove.exit.i.i237.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.agq = load ptr, ptr %i.agh, align 8, !tbaa !81 ; 2 uses
  %i.agr = getelementptr inbounds i8, ptr %i.agq, i64 %.0.i.i233.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.agq, ptr readonly align 1 %i.agr, i64 %i.ago, i1 false)
  %.pre.i.i235.i = load i64, ptr %i.agn, align 8, !tbaa !79
  %.pre2.i236.i = sub nsw i64 %.pre.i.i235.i, %.0.i.i233.i
  br label %ic_memmove.exit.i.i237.i

ic_memmove.exit.i.i237.i:                         ; preds = %bb.fv, %bb.fu
  %.pre-phi.i238.i = phi i64 [ %.pre2.i236.i, %bb.fv ], [ %i.ago, %bb.fu ] ; 2 uses
  store i64 %.pre-phi.i238.i, ptr %i.agn, align 8, !tbaa !79
  %i.ags = load ptr, ptr %i.agh, align 8, !tbaa !81
  %i.agt = getelementptr inbounds i8, ptr %i.ags, i64 %.pre-phi.i238.i
  store i8 0, ptr %i.agt, align 1, !tbaa !48
  br label %sbuf_clear.exit241.i

sbuf_clear.exit241.i:                             ; preds = %ic_memmove.exit.i.i237.i, %sbuf_len.exit.i232.i
  %i.agu = add i32 %.0.i230.i, -49                ; 2 uses
  %or.cond3.i = icmp ult i32 %i.agu, 9
  %i.agv = zext nneg i32 %i.agu to i64            ; 2 uses
end_hunk_3
