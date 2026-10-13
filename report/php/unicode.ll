Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/unicode?download=true
inline.NumInlined: 39
inline.NumDeleted: 6
begin_hunk_0_@lxb_unicode_canonical:bb.a
bb.az:                                            ; preds = %bb.ay
  %.lhs.trunc.i.i = trunc nuw nsw i32 %i.ev to i16
  %i.ew = urem i16 %.lhs.trunc.i.i, 28
  %i.ex = icmp eq i16 %i.ew, 0
  %i.ey = add i32 %i.p, -4520
  %i.ez = icmp ult i32 %i.ey, 27
  %or.cond11.i.i = and i1 %i.ez, %i.ex
  br i1 %or.cond11.i.i, label %bb.ba, label %.backedge.i5

bb.ba:                                            ; preds = %bb.az
  %i.fa = add nsw i32 %i.p, -4519
  %i.fb = add nuw nsw i32 %i.fa, %i.x
  br label %lxb_unicode_entry_compose_hangul.exit.i

lxb_unicode_entry_compose_hangul.exit.i:          ; preds = %bb.ba, %bb.ax
  %.0.i.i = phi i32 [ %i.eu, %bb.ax ], [ %i.fb, %bb.ba ]
  store i32 %.0.i.i, ptr %0, align 4, !tbaa !32
  br label %.backedge.sink.split.i

lxb_unicode_canonical_composition.exit:           ; preds = %.backedge.i5, %lxb_unicode_reorder.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @lxb_unicode_compatibility(ptr nofree noundef readnone captures(address) %0, ptr nofree noundef captures(address) %1, ptr nofree readnone captures(none) %2) #6 {
bb.a:
  %i.a = icmp ugt ptr %1, %0
  br i1 %i.a, label %.lr.ph.i, label %lxb_unicode_reorder.exit

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %.013.i = phi ptr [ %.0.be.i, %.backedge.i ], [ %1, %bb.a ] ; 5 uses
  %i.b = getelementptr inbounds i8, ptr %.013.i, i64 -8 ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %.013.i, i64 -4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !30
  %i.g = icmp ugt i8 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %.backedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load <2 x i64>, ptr %i.b, align 4
  %i.i = shufflevector <2 x i64> %i.h, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.i, ptr %i.b, align 4
  %i.j = icmp ult ptr %.013.i, %1
  %i.k = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  %spec.select.i = select i1 %i.j, ptr %i.k, ptr %i.b
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.b, %.lr.ph.i
  %.0.be.i = phi ptr [ %i.b, %.lr.ph.i ], [ %spec.select.i, %bb.b ] ; 2 uses
  %i.l = icmp ugt ptr %.0.be.i, %0
  br i1 %i.l, label %.lr.ph.i, label %lxb_unicode_reorder.exit, !llvm.loop !0

lxb_unicode_reorder.exit:                         ; preds = %.backedge.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @lxb_unicode_compatibility_decomposition(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc ptr @lxb_unicode_decomposition(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 17)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_unicode_flush(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [4096 x i8], align 16             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4096
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !49
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.i = ptrtoint ptr %i.b to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.outer, %.lr.ph.lr.ph
  %.0.ph27 = phi ptr [ %i.e, %.lr.ph.lr.ph ], [ %i.s, %.outer ] ; 3 uses
  %i.j = load i32, ptr %.0.ph27, align 4, !tbaa !32 ; 2 uses
  %.not20.us24 = icmp eq i32 %i.j, 2097151
  br i1 %.not20.us24, label %.outer, label %.lr.ph25

.lr.ph25:                                         ; preds = %.lr.ph.split.us, %bb.c
  %i.k = phi i32 [ %i.r, %bb.c ], [ %i.j, %.lr.ph.split.us ]
  %i.l = call signext i8 @lxb_encoding_encode_utf_8_single(ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i32 noundef %i.k) #11
  %i.m = icmp eq i8 %i.l, -2
  br i1 %i.m, label %bb.b, label %.outer

bb.b:                                             ; preds = %.lr.ph25
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.i
  %i.q = call i32 %1(ptr noundef nonnull %i.b, i64 noundef %i.p, ptr noundef %2) #11 ; 2 uses
  %.not21.us = icmp eq i32 %i.q, 0
  br i1 %.not21.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr %i.a, align 8, !tbaa !49
  %i.r = load i32, ptr %.0.ph27, align 4, !tbaa !32 ; 2 uses
  %.not20.us = icmp eq i32 %i.r, 2097151
  br i1 %.not20.us, label %.outer, label %.lr.ph25

.outer:                                           ; preds = %.lr.ph25, %bb.c, %.lr.ph.split.us
  %i.s = getelementptr inbounds nuw i8, ptr %.0.ph27, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.g
  br i1 %i.t, label %.lr.ph.split.us, label %.outer._crit_edge, !llvm.loop !1

.outer._crit_edge:                                ; preds = %.outer, %bb.a
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.outer._crit_edge
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.b to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = call i32 %1(ptr noundef nonnull %i.b, i64 noundef %i.x, ptr noundef %2) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.outer._crit_edge, %bb.d
  %.015 = phi i32 [ 0, %.outer._crit_edge ], [ %i.y, %bb.d ], [ %i.q, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.015
}

declare signext i8 @lxb_encoding_encode_utf_8_single(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_unicode_flush_cp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.0.ptr32 = phi ptr [ %.0.ptr, %bb.d ], [ %i.a, %bb.a ]
  %.0.idx31 = phi i64 [ %.1.idx, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.01930 = phi ptr [ %i.j, %bb.d ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = load i32, ptr %.01930, align 4, !tbaa !32 ; 2 uses
  %.not26 = icmp eq i32 %i.g, 2097151
  br i1 %.not26, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.0.add = add nuw nsw i64 %.0.idx31, 4          ; 2 uses
  store i32 %i.g, ptr %.0.ptr32, align 4, !tbaa !35
  %.not27 = icmp slt i64 %.0.idx31, 16380
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr exact i64 %.0.add, 2
  %i.i = call i32 %1(ptr noundef nonnull %i.a, i64 noundef %i.h, ptr noundef %2) #11 ; 2 uses
  %.not28 = icmp eq i32 %i.i, 0
  br i1 %.not28, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph
  %.1.idx = phi i64 [ %.0.idx31, %.lr.ph ], [ %.0.add, %bb.b ], [ 0, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01930, i64 8 ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.idx
  %i.k = icmp ult ptr %i.j, %i.e
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.d
  %.not = icmp samesign eq i64 %.1.idx, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.l = ashr exact i64 %.1.idx, 2
  %i.m = call i32 %1(ptr noundef nonnull %i.a, i64 noundef %i.l, ptr noundef %2) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %._crit_edge, %bb.e
  %.020 = phi i32 [ 0, %._crit_edge ], [ %i.m, %bb.e ], [ 0, %bb.a ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_unicode_normalize(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @lxb_unicode_normalize_body(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lxb_unicode_normalize_body(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %.0.val, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = alloca [4096 x i32], align 16            ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca [4096 x i8], align 16             ; 10 uses
  %i.f = alloca [4096 x i32], align 16            ; 7 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = alloca [4096 x i8], align 16             ; 9 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  %i.k = alloca ptr, align 8                      ; 12 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  store ptr %i.n, ptr %i.l, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !50
  store ptr %1, ptr %i.j, align 8, !tbaa !49
  %i.q = select i1 %5, i64 2, i64 0
  %i.r = shl i64 %2, %i.q
  %.fr127 = freeze i64 %i.r                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.fr127 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !21    ; 4 uses
  %i.v = icmp eq i8 %i.u, 0
  %or.cond = or i1 %5, %i.v
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store ptr %i.w, ptr %i.i, align 8, !tbaa !49
  %i.x = load i8, ptr %i.w, align 8, !tbaa !51
  %i.y = tail call zeroext i8 @lxb_encoding_decode_utf_8_length(i8 noundef zeroext %i.x) #11 ; 2 uses
  %i.z = zext i8 %i.y to i64                      ; 3 uses
  %i.aa = icmp ult i8 %i.u, %i.y
  %i.ab = icmp ne i64 %.fr127, 0
  %i.ac = and i1 %i.ab, %i.aa
  br i1 %i.ac, label %iter.check, label %lxb_unicode_restore.exit

iter.check:                                       ; preds = %bb.b
  %i.ad = zext i8 %i.u to i64                     ; 8 uses
  %i.ae = add i64 %.fr127, %i.b
  %i.af = add i64 %i.b, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = xor i64 %i.b, -1
  %i.ah = add i64 %umax, %i.ag
  %i.ai = xor i64 %i.ad, -1
  %i.aj = add nsw i64 %i.ai, %i.z
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.aj)
  %i.ak = add i64 %umin, 1                        ; 7 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.al = add i64 %i.a, %i.ad
  %i.am = sub i64 %i.al, %i.b
  %i.an = add i64 %i.am, 55
  %diff.check = icmp ult i64 %i.an, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check116 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check116, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.ak, 28
  %n.vec = and i64 %i.ak, -32                     ; 5 uses
  %i.ap = add i64 %n.vec, %i.ad                   ; 2 uses
  %i.aq = getelementptr i8, ptr %1, i64 %n.vec    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.w, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !51
  %wide.load117 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !51
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !51
  store <16 x i8> %wide.load117, ptr %i.as, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec119 = and i64 %i.ak, -4                   ; 4 uses
  %i.au = add i64 %n.vec119, %i.ad                ; 2 uses
  %i.av = getelementptr i8, ptr %1, i64 %n.vec119 ; 2 uses
  %invariant.gep156 = getelementptr i8, ptr %i.w, i64 %i.ad
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next123, %vec.epilog.vector.body ] ; 3 uses
  %next.gep121 = getelementptr i8, ptr %1, i64 %index120
  %wide.load122 = load <4 x i8>, ptr %next.gep121, align 1, !tbaa !51
  %gep157 = getelementptr i8, ptr %invariant.gep156, i64 %index120
  store <4 x i8> %wide.load122, ptr %gep157, align 1, !tbaa !51
  %index.next123 = add nuw i64 %index120, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next123, %n.vec119
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n124 = icmp eq i64 %i.ak, %n.vec119
  br i1 %cmp.n124, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.i.ph = phi i64 [ %i.ad, %iter.check ], [ %i.ad, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.01920.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.021.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01920.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.01920.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ax = load i8, ptr %.01920.i, align 1, !tbaa !51
  %i.ay = add nuw nsw i64 %.021.i, 1              ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 %.021.i
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %.01920.i, i64 1 ; 3 uses
  %i.bb = icmp samesign ult i64 %i.ay, %i.z
  %i.bc = icmp ult ptr %i.ba, %i.s
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !68

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa115 = phi i64 [ %i.au, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i ]
  %.lcssa114 = phi ptr [ %i.av, %vec.epilog.middle.block ], [ %i.aq, %middle.block ], [ %i.ba, %.lr.ph.i ]
  %i.be = trunc nuw i64 %.lcssa115 to i8
  br label %lxb_unicode_restore.exit

lxb_unicode_restore.exit:                         ; preds = %bb.b, %._crit_edge.loopexit.i
  %.019.lcssa.i = phi ptr [ %1, %bb.b ], [ %.lcssa114, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i8 [ %i.u, %bb.b ], [ %i.be, %._crit_edge.loopexit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.bg = call i32 @lxb_encoding_decode_valid_utf_8_single(ptr noundef nonnull %i.i, ptr noundef nonnull %i.bf) #11 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 2097151              ; 2 uses
  %brmerge.not.i = and i1 %4, %i.bh
  %spec.store.select.i = select i1 %brmerge.not.i, i32 65533, i32 %i.bg
  %i.bi = xor i1 %i.bh, true
  %i.bj = or i1 %4, %i.bi                         ; 2 uses
  %spec.select.i = select i1 %i.bj, i8 0, i8 %.0.lcssa.i
  %spec.select27.i = select i1 %i.bj, ptr %.019.lcssa.i, ptr null ; 2 uses
  store i8 %spec.select.i, ptr %i.t, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  store ptr %spec.select27.i, ptr %i.j, align 8, !tbaa !49
  %i.bk = icmp eq ptr %spec.select27.i, null
  br i1 %i.bk, label %.loopexit13, label %bb.i

.outer..outer..loopexit_crit_edge_crit_edge:      ; preds = %.outer
  br label %.outer..loopexit_crit_edge, !llvm.loop !69

.outer..loopexit_crit_edge:                       ; preds = %.outer..outer..loopexit_crit_edge_crit_edge, %.preheader
  %i.bl = phi ptr [ %i.fl, %.outer..outer..loopexit_crit_edge_crit_edge ], [ %i.cg, %.preheader ]
  br label %.loopexit, !llvm.loop !69

..loopexit_crit_edge:                             ; preds = %lxb_unicode_reorder.exit
  br label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.outer..loopexit_crit_edge
  %i.bm = phi ptr [ %i.dp, %..loopexit_crit_edge ], [ %i.bl, %.outer..loopexit_crit_edge ]
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  %i.bn = phi ptr [ %i.bm, %.loopexit ], [ %i.p, %bb.a ] ; 5 uses
  %i.bo = phi ptr [ %.pre, %.loopexit ], [ %1, %bb.a ] ; 5 uses
  %i.bp = icmp ult ptr %i.bo, %i.s
  br i1 %i.bp, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  br i1 %5, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = call i32 @lxb_encoding_decode_valid_utf_8_single(ptr noundef nonnull %i.j, ptr noundef nonnull %i.s) #11 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 2097151
  br i1 %i.br, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bt = icmp ult ptr %i.bs, %i.s
  %or.cond3 = or i1 %4, %i.bt
  br i1 %or.cond3, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %i.k, align 8, !tbaa !50
  store ptr %i.bu, ptr %i.o, align 8, !tbaa !25
  %i.bv = ptrtoint ptr %i.s to i64
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = trunc i64 %i.bx to i8
  store i8 %i.by, ptr %i.t, align 4, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = and i64 %i.bx, 255
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 1 %i.bo, i64 %i.ca, i1 false)
  br label %.loopexit13

bb.h:                                             ; preds = %bb.d
  %i.cb = load i32, ptr %i.bo, align 4, !tbaa !35
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store ptr %i.cc, ptr %i.j, align 8, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.e, %lxb_unicode_restore.exit
  %.01 = phi i32 [ %i.cb, %bb.h ], [ %spec.store.select.i, %lxb_unicode_restore.exit ], [ %i.bq, %bb.e ], [ 65533, %bb.f ]
  %i.cd = load ptr, ptr %0, align 8, !tbaa !18
  %i.ce = call ptr %i.cd(ptr noundef nonnull %0, i32 noundef %.01, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #11 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.cg = load ptr, ptr %i.k, align 8, !tbaa !50  ; 3 uses
  %i.ch = icmp ult ptr %i.cg, %i.ce
  br i1 %i.ch, label %.lr.ph.lr.ph, label %.outer..loopexit_crit_edge, !llvm.loop !69

.lr.ph.lr.ph:                                     ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.h, i64 4096
  %i.co = ptrtoint ptr %i.h to i64                ; 2 uses
  br label %.lr.ph, !llvm.loop !69

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.t, align 4, !tbaa !21
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.cp, align 8, !tbaa !22
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !23 ; 2 uses
  store ptr %i.cr, ptr %i.o, align 8, !tbaa !25
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 0, ptr %i.ct, align 1, !tbaa !27
  br label %.loopexit13

bb.k:                                             ; preds = %.lr.ph, %lxb_unicode_reorder.exit
  %.pre40158 = phi ptr [ %.promoted, %.lr.ph ], [ %i.dp, %lxb_unicode_reorder.exit ]
  %i.cu = phi ptr [ %i.fn, %.lr.ph ], [ %i.dp, %lxb_unicode_reorder.exit ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !30
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %bb.l, label %.outer

bb.l:                                             ; preds = %bb.k
end_hunk_0
begin_hunk_1_@lxb_unicode_normalize_body:bb.a
.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %i.fn = phi ptr [ %i.cg, %.lr.ph.lr.ph ], [ %i.fl, %.outer ]
  %.0.ph25 = phi ptr [ %i.ce, %.lr.ph.lr.ph ], [ %.1, %.outer ] ; 5 uses
  %.promoted = load ptr, ptr %i.k, align 8
  br label %bb.k, !llvm.loop !69

bb.ac:                                            ; preds = %bb.c
  br i1 %4, label %bb.ad, label %bb.ar

bb.ad:                                            ; preds = %bb.ac
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !22 ; 3 uses
  %.not = icmp eq ptr %i.fp, null
  br i1 %.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fq = getelementptr inbounds i8, ptr %i.bn, i64 -8 ; 2 uses
  %.not90 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not90, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !19
  call void %i.fs(ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fq, ptr noundef %i.bn) #11
  %.pre37 = load ptr, ptr %i.k, align 8, !tbaa !50
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ft = phi ptr [ %.pre37, %bb.af ], [ %i.bn, %bb.ae ], [ %i.bn, %bb.ad ] ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !26
  br i1 %5, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !23 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  %i.fy = icmp ult ptr %i.fx, %i.ft
  br i1 %i.fy, label %.lr.ph.lr.ph.i101, label %lxb_unicode_flush.exit109

.lr.ph.lr.ph.i101:                                ; preds = %bb.ah
  %i.fz = ptrtoint ptr %i.e to i64
  br label %.lr.ph.split.us.i102

.lr.ph.split.us.i102:                             ; preds = %.outer.i106, %.lr.ph.lr.ph.i101
  %.0.ph27.i103 = phi ptr [ %i.fx, %.lr.ph.lr.ph.i101 ], [ %i.gj, %.outer.i106 ] ; 3 uses
  %i.ga = load i32, ptr %.0.ph27.i103, align 4, !tbaa !32 ; 2 uses
  %.not20.us24.i104 = icmp eq i32 %i.ga, 2097151
  br i1 %.not20.us24.i104, label %.outer.i106, label %.lr.ph25.i105

.lr.ph25.i105:                                    ; preds = %.lr.ph.split.us.i102, %bb.aj
  %i.gb = phi i32 [ %i.gi, %bb.aj ], [ %i.ga, %.lr.ph.split.us.i102 ]
  %i.gc = call signext i8 @lxb_encoding_encode_utf_8_single(ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.fv, i32 noundef %i.gb) #11
  %i.gd = icmp eq i8 %i.gc, -2
  br i1 %i.gd, label %bb.ai, label %.outer.i106

bb.ai:                                            ; preds = %.lr.ph25.i105
  %i.ge = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fz
  %i.gh = call i32 %.0.val(ptr noundef nonnull %i.e, i64 noundef %i.gg, ptr noundef %3) #11, !inline_history !71 ; 2 uses
  %.not21.us.i107 = icmp eq i32 %i.gh, 0
  br i1 %.not21.us.i107, label %bb.aj, label %lxb_unicode_flush.exit109

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  %i.gi = load i32, ptr %.0.ph27.i103, align 4, !tbaa !32 ; 2 uses
  %.not20.us.i108 = icmp eq i32 %i.gi, 2097151
  br i1 %.not20.us.i108, label %.outer.i106, label %.lr.ph25.i105

.outer.i106:                                      ; preds = %bb.aj, %.lr.ph25.i105, %.lr.ph.split.us.i102
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.ph27.i103, i64 8 ; 2 uses
  %i.gk = icmp ult ptr %i.gj, %i.ft
  br i1 %i.gk, label %.lr.ph.split.us.i102, label %.outer._crit_edge.i98, !llvm.loop !1

.outer._crit_edge.i98:                            ; preds = %.outer.i106
  %.pre38 = load ptr, ptr %i.d, align 8, !tbaa !49 ; 2 uses
  %.not.i99 = icmp eq ptr %.pre38, %i.e
  br i1 %.not.i99, label %lxb_unicode_flush.exit109, label %bb.ak

bb.ak:                                            ; preds = %.outer._crit_edge.i98
  %i.gl = ptrtoint ptr %.pre38 to i64
  %i.gm = ptrtoint ptr %i.e to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = call i32 %.0.val(ptr noundef nonnull %i.e, i64 noundef %i.gn, ptr noundef %3) #11, !inline_history !71
  br label %lxb_unicode_flush.exit109

lxb_unicode_flush.exit109:                        ; preds = %bb.ai, %bb.ah, %.outer._crit_edge.i98, %bb.ak
  %.015.i100 = phi i32 [ 0, %.outer._crit_edge.i98 ], [ %i.go, %bb.ak ], [ 0, %bb.ah ], [ %i.gh, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.aq

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !23 ; 2 uses
  %i.gr = icmp ult ptr %i.gq, %i.ft
  br i1 %i.gr, label %.lr.ph.i111, label %lxb_unicode_flush_cp.exit123

.lr.ph.i111:                                      ; preds = %bb.al, %.lr.ph.i111.backedge
  %.0.ptr32.i112 = phi ptr [ %.0.ptr32.i112.be, %.lr.ph.i111.backedge ], [ %i.c, %bb.al ]
  %.0.idx31.i113 = phi i64 [ %.0.idx31.i113.be, %.lr.ph.i111.backedge ], [ 0, %bb.al ] ; 3 uses
  %.01930.i114 = phi ptr [ %.01930.i114.be, %.lr.ph.i111.backedge ], [ %i.gq, %bb.al ] ; 3 uses
  %i.gs = load i32, ptr %.01930.i114, align 4, !tbaa !32 ; 2 uses
  %.not26.i115 = icmp eq i32 %i.gs, 2097151
  br i1 %.not26.i115, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i111
  %.0.add.i116 = add nuw nsw i64 %.0.idx31.i113, 4 ; 2 uses
  store i32 %i.gs, ptr %.0.ptr32.i112, align 4, !tbaa !35
  %.not27.i117 = icmp slt i64 %.0.idx31.i113, 16380
  br i1 %.not27.i117, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gt = lshr exact i64 %.0.add.i116, 2
  %i.gu = call i32 %.0.val(ptr noundef nonnull %i.c, i64 noundef %i.gt, ptr noundef %3) #11, !inline_history !72 ; 2 uses
  %.not28.i118 = icmp eq i32 %i.gu, 0
  br i1 %.not28.i118, label %.thread7, label %lxb_unicode_flush_cp.exit123

bb.ao:                                            ; preds = %bb.am, %.lr.ph.i111
  %.1.idx.i119 = phi i64 [ %.0.idx31.i113, %.lr.ph.i111 ], [ %.0.add.i116, %bb.am ] ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01930.i114, i64 8 ; 2 uses
  %.0.ptr.i120 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.idx.i119
  %i.gw = icmp ult ptr %i.gv, %i.ft
  br i1 %i.gw, label %.lr.ph.i111.backedge, label %._crit_edge.i121

.lr.ph.i111.backedge:                             ; preds = %bb.ao, %.thread7
  %.0.ptr32.i112.be = phi ptr [ %i.c, %.thread7 ], [ %.0.ptr.i120, %bb.ao ]
  %.0.idx31.i113.be = phi i64 [ 0, %.thread7 ], [ %.1.idx.i119, %bb.ao ]
  %.01930.i114.be = phi ptr [ %i.gx, %.thread7 ], [ %i.gv, %bb.ao ]
  br label %.lr.ph.i111, !llvm.loop !2

.thread7:                                         ; preds = %bb.an
  %i.gx = getelementptr inbounds nuw i8, ptr %.01930.i114, i64 8 ; 2 uses
  %i.gy = icmp ult ptr %i.gx, %i.ft
  br i1 %i.gy, label %.lr.ph.i111.backedge, label %lxb_unicode_flush_cp.exit123

._crit_edge.i121:                                 ; preds = %bb.ao
  %.not.i122 = icmp samesign eq i64 %.1.idx.i119, 0
  br i1 %.not.i122, label %lxb_unicode_flush_cp.exit123, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i121
  %i.gz = ashr exact i64 %.1.idx.i119, 2
  %i.ha = call i32 %.0.val(ptr noundef nonnull %i.c, i64 noundef %i.gz, ptr noundef %3) #11, !inline_history !72
  br label %lxb_unicode_flush_cp.exit123

lxb_unicode_flush_cp.exit123:                     ; preds = %.thread7, %bb.an, %bb.al, %._crit_edge.i121, %bb.ap
  %.020.i110 = phi i32 [ 0, %._crit_edge.i121 ], [ %i.ha, %bb.ap ], [ 0, %bb.al ], [ 0, %.thread7 ], [ %i.gu, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.aq

bb.aq:                                            ; preds = %lxb_unicode_flush_cp.exit123, %lxb_unicode_flush.exit109
  %.181 = phi i32 [ %.020.i110, %lxb_unicode_flush_cp.exit123 ], [ %.015.i100, %lxb_unicode_flush.exit109 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !23 ; 2 uses
  store ptr %i.hc, ptr %i.o, align 8, !tbaa !25
  store ptr %i.hc, ptr %i.fu, align 8, !tbaa !26
  store ptr null, ptr %i.fo, align 8, !tbaa !22
  br label %.loopexit13

bb.ar:                                            ; preds = %bb.ac
  store ptr %i.bn, ptr %i.o, align 8, !tbaa !25
  br label %.loopexit13

.loopexit13:                                      ; preds = %bb.aa, %bb.aq, %bb.ar, %lxb_unicode_restore.exit, %bb.j, %bb.g
  %.082 = phi i32 [ 2, %bb.j ], [ 0, %lxb_unicode_restore.exit ], [ 0, %bb.g ], [ 0, %bb.ar ], [ %.181, %bb.aq ], [ %.080, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  ret i32 %.082
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_unicode_normalize_cp(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @lxb_unicode_normalize_body(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_unicode_normalize_end(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @lxb_unicode_normalize_body(ptr noundef %0, ptr noundef null, i64 noundef 0, ptr readonly %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext false)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lxb_unicode_normalize_cp_end(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @lxb_unicode_normalize_body(ptr noundef %0, ptr noundef null, i64 noundef 0, ptr readonly %1, ptr noundef %2, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @lxb_unicode_quick_check(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !21    ; 4 uses
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !49
  %i.i = load i8, ptr %i.h, align 4, !tbaa !51
  %i.j = tail call zeroext i8 @lxb_encoding_decode_utf_8_length(i8 noundef zeroext %i.i) #11 ; 2 uses
  %i.k = zext i8 %i.j to i64                      ; 3 uses
  %i.l = icmp ult i8 %i.g, %i.j
  %i.m = icmp ne i64 %2, 0
  %i.n = and i1 %i.m, %i.l
  br i1 %i.n, label %iter.check, label %lxb_unicode_restore.exit

iter.check:                                       ; preds = %bb.b
  %i.o = zext i8 %i.g to i64                      ; 8 uses
  %i.p = add i64 %2, %i.b
  %i.q = add i64 %i.b, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.r = xor i64 %i.b, -1
  %i.s = add i64 %umax, %i.r
  %i.t = xor i64 %i.o, -1
  %i.u = add nsw i64 %i.t, %i.k
  %umin = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u)
  %i.v = add i64 %umin, 1                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.w = add i64 %i.a, %i.o
  %i.x = sub i64 %i.w, %i.b
  %i.y = add i64 %i.x, 55
  %diff.check = icmp ult i64 %i.y, 31
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check61 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.v, 28
  %n.vec = and i64 %i.v, -32                      ; 5 uses
  %i.aa = add i64 %n.vec, %i.o                    ; 2 uses
  %i.ab = getelementptr i8, ptr %1, i64 %n.vec    ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !51
  %wide.load62 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !51
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !51
  store <16 x i8> %wide.load62, ptr %i.ad, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %i.v, -4                     ; 4 uses
  %i.af = add i64 %n.vec64, %i.o                  ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec64  ; 2 uses
  %invariant.gep76 = getelementptr i8, ptr %i.h, i64 %i.o
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %next.gep66 = getelementptr i8, ptr %1, i64 %index65
  %wide.load67 = load <4 x i8>, ptr %next.gep66, align 1, !tbaa !51
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %index65
  store <4 x i8> %wide.load67, ptr %gep77, align 1, !tbaa !51
  %index.next68 = add nuw i64 %index65, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next68, %n.vec64
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %i.v, %n.vec64
  br i1 %cmp.n69, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.021.i.ph = phi i64 [ %i.o, %iter.check ], [ %i.o, %vector.memcheck ], [ %i.aa, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.01920.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.021.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01920.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.01920.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ai = load i8, ptr %.01920.i, align 1, !tbaa !51
  %i.aj = add nuw nsw i64 %.021.i, 1              ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 %.021.i
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %.01920.i, i64 1 ; 3 uses
  %i.am = icmp samesign ult i64 %i.aj, %i.k
  %i.an = icmp ult ptr %i.al, %i.e
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !75

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.lcssa60 = phi i64 [ %i.af, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %i.aj, %.lr.ph.i ]
  %.lcssa = phi ptr [ %i.ag, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.al, %.lr.ph.i ]
  %i.ap = trunc nuw i64 %.lcssa60 to i8
  br label %lxb_unicode_restore.exit

lxb_unicode_restore.exit:                         ; preds = %bb.b, %._crit_edge.loopexit.i
  %.019.lcssa.i = phi ptr [ %1, %bb.b ], [ %.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i8 [ %i.g, %bb.b ], [ %i.ap, %._crit_edge.loopexit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.ar = call i32 @lxb_encoding_decode_valid_utf_8_single(ptr noundef nonnull %i.c, ptr noundef nonnull %i.aq) #11 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 2097151              ; 2 uses
  %brmerge.not.i = and i1 %3, %i.as
  %spec.store.select.i = select i1 %brmerge.not.i, i32 65533, i32 %i.ar
  %i.at = xor i1 %i.as, true
  %i.au = or i1 %3, %i.at                         ; 2 uses
  %spec.select.i = select i1 %i.au, i8 0, i8 %.0.lcssa.i
  %spec.select27.i = select i1 %i.au, ptr %.019.lcssa.i, ptr null ; 2 uses
  store i8 %spec.select.i, ptr %i.f, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  store ptr %spec.select27.i, ptr %i.d, align 8, !tbaa !49
  %i.av = icmp eq ptr %spec.select27.i, null
  br i1 %i.av, label %bb.ah, label %bb.g

bb.c:                                             ; preds = %bb.ac, %bb.ad, %bb.a
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !49  ; 3 uses
  %i.ax = icmp ult ptr %i.aw, %i.e
  br i1 %i.ax, label %bb.d, label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.ay = call i32 @lxb_encoding_decode_valid_utf_8_single(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #11 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 2097151
  br i1 %i.az, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.bb = icmp ult ptr %i.ba, %i.e
  %or.cond = or i1 %3, %i.bb
  br i1 %or.cond, label %.thread49, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = ptrtoint ptr %i.e to i64
  %i.bd = ptrtoint ptr %i.aw to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = trunc i64 %i.be to i8
  store i8 %i.bf, ptr %i.f, align 4, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = and i64 %i.be, 255
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 1 %i.aw, i64 %i.bh, i1 false)
  br label %bb.ah

bb.g:                                             ; preds = %bb.d, %lxb_unicode_restore.exit
  %.035 = phi i32 [ %spec.store.select.i, %lxb_unicode_restore.exit ], [ %i.ay, %bb.d ] ; 28 uses
  %i.bi = icmp ugt i32 %.035, 1114110
  br i1 %i.bi, label %lxb_unicode_normalization_entry_by_cp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp samesign ult i32 %.035, 210042
  br i1 %i.bj, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.bk = icmp samesign ult i32 %.035, 83527
  br i1 %i.bk, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bl = icmp samesign ult i32 %.035, 57345
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = zext nneg i32 %.035 to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr @lxb_unicode_table_map_0_57345, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !34
  %i.bp = zext i16 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr @lxb_unicode_entries, i64 %i.bp
  br label %lxb_unicode_normalization_entry_by_cp.exit

bb.l:                                             ; preds = %bb.j
  %i.br = icmp samesign ugt i32 %.035, 63742
  br i1 %i.br, label %.thread49, label %bb.z

.thread49:                                        ; preds = %bb.e, %bb.l
  %.0353741454851 = phi i32 [ %.035, %bb.l ], [ 65533, %bb.e ] ; 2 uses
  %i.bs = zext nneg i32 %.0353741454851 to i64
  %i.bt = getelementptr [2 x i8], ptr @lxb_unicode_table_map_63743_83527, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -127486
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !34
  %i.bw = zext i16 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @lxb_unicode_entries, i64 %i.bw
  br label %lxb_unicode_normalization_entry_by_cp.exit

bb.m:                                             ; preds = %bb.i
  %i.by = icmp samesign ugt i32 %.035, 90367
  br i1 %i.by, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  %i.bz = icmp samesign ult i32 %.035, 101875
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = zext nneg i32 %.035 to i64
  %i.cb = getelementptr [2 x i8], ptr @lxb_unicode_table_map_90368_101875, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -180736
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !34
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @lxb_unicode_entries, i64 %i.ce
  br label %lxb_unicode_normalization_entry_by_cp.exit

bb.p:                                             ; preds = %bb.n
  %i.cg = icmp samesign ugt i32 %.035, 110575
  br i1 %i.cg, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ch = zext nneg i32 %.035 to i64
  %i.ci = getelementptr [4 x i8], ptr @lxb_unicode_table_map_110576_210042, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -442304
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !35
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @lxb_unicode_entries, i64 %i.cl
  br label %lxb_unicode_normalization_entry_by_cp.exit

bb.r:                                             ; preds = %bb.h
  %i.cn = icmp samesign ugt i32 %.035, 917504
end_hunk_1
