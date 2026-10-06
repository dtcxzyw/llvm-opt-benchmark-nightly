Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/imreadwrite?download=true
inline.NumInlined: 679
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZL13stbi__get16beP13stbi__context:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !33
  %i.g = load i8, ptr %i.b, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !5 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !31
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !33
  %i.al = load i8, ptr %i.ai, align 1, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit7

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !30
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %_ZL10stbi__get8P13stbi__context.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !5 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !31
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !31
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8, !tbaa !35
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i4: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8, !tbaa !36
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !33
  br label %_ZL10stbi__get8P13stbi__context.exit7

_ZL10stbi__get8P13stbi__context.exit7:            ; preds = %bb.g, %bb.h, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4
  %.0.i6 = phi i8 [ %i.al, %bb.g ], [ %i.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4 ], [ 0, %bb.h ]
  %i.bm = zext i8 %.0.i to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = zext i8 %.0.i6 to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo
  ret i32 %i.bp
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local ptr @stbi_zlib_decode_malloc_guesssize_headerflag(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.stbi__zbuf, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.a = sext i32 %2 to i64
  %i.b = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.a) #37 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %5, align 8, !tbaa !106
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !107
  %i.g = call fastcc noundef i32 @_ZL13stbi__do_zlibP10stbi__zbufPciii(ptr noundef %5, ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef 1, i32 noundef %4)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not12 = icmp eq ptr %3, null
  br i1 %.not12, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !108
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %3, align 4, !tbaa !23
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108
  call void @free(ptr noundef %i.q) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.a, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.a ], [ %.pre, %._crit_edge ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr nofree captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = mul i32 %.0.val.4.val, %.0.val.0.val     ; 8 uses
  %i.b = icmp eq i32 %1, 2
  %.not8 = icmp eq i32 %i.a, 0                    ; 2 uses
  br i1 %i.b, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.preheader
  %i.e = zext i32 %i.a to i64                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 25
  br i1 %min.iters.check, label %.lr.ph7.preheader7, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph7.preheader
  %i.f = add i32 %i.a, -1
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = getelementptr i8, ptr %.24.val, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %i.k = getelementptr i8, ptr %0, i64 2
  %bound0 = icmp ult ptr %.24.val, %i.k
  %bound1 = icmp ult ptr %0, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph7.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.l = and i64 %i.e, 3                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 4, i64 %i.l
  %n.vec = sub nsw i64 %i.e, %i.n                 ; 3 uses
  %i.o = shl nsw i64 %n.vec, 2
  %i.p = getelementptr i8, ptr %.24.val, i64 %i.o
  %i.q = trunc i64 %n.vec to i32
  %i.r = load i16, ptr %0, align 2, !tbaa !41, !alias.scope !296
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.r, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %.24.val, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %.24.val, i64 %i.s
  %i.u = getelementptr i8, ptr %.24.val, i64 %i.s
  %i.v = getelementptr i8, ptr %.24.val, i64 %i.s
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !tbaa !41, !alias.scope !297, !noalias !296
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.w = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.x = sext <4 x i1> %i.w to <4 x i16>          ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.z = getelementptr i8, ptr %i.t, i64 6
  %i.aa = getelementptr i8, ptr %i.u, i64 10
  %i.ab = getelementptr i8, ptr %i.v, i64 14
  %i.ac = extractelement <4 x i16> %i.x, i64 0
  store i16 %i.ac, ptr %i.y, align 2, !tbaa !41, !alias.scope !297, !noalias !296
  %i.ad = extractelement <4 x i16> %i.x, i64 1
  store i16 %i.ad, ptr %i.z, align 2, !tbaa !41, !alias.scope !297, !noalias !296
  %i.ae = extractelement <4 x i16> %i.x, i64 2
  store i16 %i.ae, ptr %i.aa, align 2, !tbaa !41, !alias.scope !297, !noalias !296
  %i.af = extractelement <4 x i16> %i.x, i64 3
  store i16 %i.af, ptr %i.ab, align 2, !tbaa !41, !alias.scope !297, !noalias !296
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %.lr.ph7.preheader7, label %vector.body, !llvm.loop !292

.lr.ph7.preheader7:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph7.preheader
  %.06.ph = phi ptr [ %.24.val, %vector.memcheck ], [ %.24.val, %.lr.ph7.preheader ], [ %i.p, %vector.body ] ; 2 uses
  %.0225.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.preheader ], [ %i.q, %vector.body ] ; 4 uses
  %i.ah = sub i32 %i.a, %.0225.ph
  %xtraiter = and i32 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol

.lr.ph7.prol:                                     ; preds = %.lr.ph7.preheader7, %.lr.ph7.prol
  %.06.prol = phi ptr [ %i.an, %.lr.ph7.prol ], [ %.06.ph, %.lr.ph7.preheader7 ] ; 3 uses
  %.0225.prol = phi i32 [ %i.ao, %.lr.ph7.prol ], [ %.0225.ph, %.lr.ph7.preheader7 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph7.prol ], [ 0, %.lr.ph7.preheader7 ]
  %i.ai = load i16, ptr %.06.prol, align 2, !tbaa !41
  %i.aj = load i16, ptr %0, align 2, !tbaa !41
  %i.ak = icmp ne i16 %i.ai, %i.aj
  %i.al = sext i1 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %.06.prol, i64 2
  store i16 %i.al, ptr %i.am, align 2, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %.06.prol, i64 4 ; 2 uses
  %i.ao = add nuw i32 %.0225.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol, !llvm.loop !293

.lr.ph7.prol.loopexit:                            ; preds = %.lr.ph7.prol, %.lr.ph7.preheader7
  %.06.unr = phi ptr [ %.06.ph, %.lr.ph7.preheader7 ], [ %i.an, %.lr.ph7.prol ]
  %.0225.unr = phi i32 [ %.0225.ph, %.lr.ph7.preheader7 ], [ %i.ao, %.lr.ph7.prol ]
  %i.ap = sub i32 %.0225.ph, %i.a
  %i.aq = icmp ugt i32 %i.ap, -4
  br i1 %i.aq, label %.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.prol.loopexit, %.lr.ph7
  %.06 = phi ptr [ %i.bo, %.lr.ph7 ], [ %.06.unr, %.lr.ph7.prol.loopexit ] ; 9 uses
  %.0225 = phi i32 [ %i.bp, %.lr.ph7 ], [ %.0225.unr, %.lr.ph7.prol.loopexit ]
  %i.ar = load i16, ptr %.06, align 2, !tbaa !41
  %i.as = load i16, ptr %0, align 2, !tbaa !41
  %i.at = icmp ne i16 %i.ar, %i.as
  %i.au = sext i1 %i.at to i16
  %i.av = getelementptr inbounds nuw i8, ptr %.06, i64 2
  store i16 %i.au, ptr %i.av, align 2, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !41
  %i.ay = load i16, ptr %0, align 2, !tbaa !41
  %i.az = icmp ne i16 %i.ax, %i.ay
  %i.ba = sext i1 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %.06, i64 6
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !41
  %i.be = load i16, ptr %0, align 2, !tbaa !41
  %i.bf = icmp ne i16 %i.bd, %i.be
  %i.bg = sext i1 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %.06, i64 10
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %.06, i64 12
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !41
  %i.bk = load i16, ptr %0, align 2, !tbaa !41
  %i.bl = icmp ne i16 %i.bj, %i.bk
  %i.bm = sext i1 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.06, i64 14
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.bp = add nuw i32 %.0225, 4                   ; 2 uses
  %exitcond10.not.3 = icmp eq i32 %i.bp, %i.a
  br i1 %exitcond10.not.3, label %.loopexit, label %.lr.ph7, !llvm.loop !294

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.cb, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.cc, %bb.f ]
  %2 = load i16, ptr %.14, align 2, !tbaa !41
  %i.bq = load i16, ptr %0, align 2, !tbaa !41
  %i.br = icmp eq i16 %2, %i.bq
  br i1 %i.br, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !41
  %i.bu = load i16, ptr %i.c, align 2, !tbaa !41
  %i.bv = icmp eq i16 %i.bt, %i.bu
  br i1 %i.bv, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !41
  %i.by = load i16, ptr %i.d, align 2, !tbaa !41
  %i.bz = icmp eq i16 %i.bx, %i.by
  br i1 %i.bz, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ca = getelementptr inbounds nuw i8, ptr %.14, i64 6
  store i16 0, ptr %i.ca, align 2, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %.14, i64 8
  %i.cc = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !295

.loopexit:                                        ; preds = %bb.f, %.lr.ph7.prol.loopexit, %.lr.ph7, %.preheader1, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr nofree captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #13 {
bb.a:
  %i.a = mul i32 %.0.val.4.val, %.0.val.0.val     ; 5 uses
  %i.b = icmp eq i32 %1, 2
  %.not8 = icmp eq i32 %i.a, 0                    ; 2 uses
  br i1 %i.b, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not8, label %.loopexit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %.preheader
  %xtraiter = and i32 %i.a, 3                     ; 3 uses
  %i.e = icmp ult i32 %i.a, 4
  br i1 %i.e, label %.lr.ph7.epil.preheader, label %.lr.ph7.preheader.new

.lr.ph7.preheader.new:                            ; preds = %.lr.ph7.preheader
  %unroll_iter = and i32 %i.a, -4
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7, %.lr.ph7.preheader.new
  %.06 = phi ptr [ %.24.val, %.lr.ph7.preheader.new ], [ %i.ac, %.lr.ph7 ] ; 9 uses
  %niter = phi i32 [ 0, %.lr.ph7.preheader.new ], [ %niter.next.3, %.lr.ph7 ]
  %i.f = load i8, ptr %.06, align 1, !tbaa !35
  %i.g = load i8, ptr %0, align 1, !tbaa !35
  %i.h = icmp ne i8 %i.f, %i.g
  %i.i = sext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %.06, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !35
  %i.m = load i8, ptr %0, align 1, !tbaa !35
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.06, i64 3
  store i8 %i.o, ptr %i.p, align 1, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.r = load i8, ptr %i.q, align 1, !tbaa !35
  %i.s = load i8, ptr %0, align 1, !tbaa !35
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.06, i64 5
  store i8 %i.u, ptr %i.v, align 1, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.06, i64 6
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = load i8, ptr %0, align 1, !tbaa !35
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.06, i64 7
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.06, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph7, !llvm.loop !298

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.ao, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %bb.f ]
  %2 = load i8, ptr %.14, align 1, !tbaa !35
  %i.ad = load i8, ptr %0, align 1, !tbaa !35
  %i.ae = icmp eq i8 %2, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !35
  %i.ah = load i8, ptr %i.c, align 1, !tbaa !35
  %i.ai = icmp eq i8 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = load i8, ptr %i.d, align 1, !tbaa !35
  %i.am = icmp eq i8 %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.14, i64 3
  store i8 0, ptr %i.an, align 1, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.ap = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !299

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph7.epil.preheader

.lr.ph7.epil.preheader:                           ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph7.preheader
  %.06.epil.init = phi ptr [ %.24.val, %.lr.ph7.preheader ], [ %i.ac, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.lr.ph7.epil

.lr.ph7.epil:                                     ; preds = %.lr.ph7.epil, %.lr.ph7.epil.preheader
  %.06.epil = phi ptr [ %i.av, %.lr.ph7.epil ], [ %.06.epil.init, %.lr.ph7.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph7.epil ], [ 0, %.lr.ph7.epil.preheader ]
  %i.aq = load i8, ptr %.06.epil, align 1, !tbaa !35
  %i.ar = load i8, ptr %0, align 1, !tbaa !35
  %i.as = icmp ne i8 %i.aq, %i.ar
  %i.at = sext i1 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %.06.epil, i64 1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %.06.epil, i64 2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph7.epil, !llvm.loop !300

.loopexit:                                        ; preds = %bb.f, %.loopexit.loopexit.unr-lcssa, %.lr.ph7.epil, %.preheader1, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL15stbi__de_iphoneP9stbi__png(ptr nofree readonly captures(none) %.0.val, ptr nofree captures(none) %.24.val) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr %.0.val, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52
  %i.d = mul i32 %i.c, %i.a                       ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not21 = icmp eq i32 %i.d, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %.preheader
  %xtraiter35 = and i32 %i.d, 3                   ; 3 uses
  %i.h = icmp ult i32 %i.d, 4
  br i1 %i.h, label %.lr.ph18.epil.preheader, label %.lr.ph18.preheader.new

.lr.ph18.preheader.new:                           ; preds = %.lr.ph18.preheader
  %unroll_iter39 = and i32 %i.d, -4
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18, %.lr.ph18.preheader.new
  %.04616 = phi ptr [ %.24.val, %.lr.ph18.preheader.new ], [ %i.x, %.lr.ph18 ] ; 10 uses
  %niter40 = phi i32 [ 0, %.lr.ph18.preheader.new ], [ %niter40.next.3, %.lr.ph18 ]
  %i.i = load i8, ptr %.04616, align 1, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %.04616, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !35
  store i8 %i.k, ptr %.04616, align 1, !tbaa !35
  store i8 %i.i, ptr %i.j, align 1, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %.04616, i64 3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %.04616, i64 5 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  store i8 %i.o, ptr %i.l, align 1, !tbaa !35
  store i8 %i.m, ptr %i.n, align 1, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.04616, i64 6 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %.04616, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  store i8 %i.s, ptr %i.p, align 1, !tbaa !35
  store i8 %i.q, ptr %i.r, align 1, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %.04616, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.04616, i64 11 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35
  store i8 %i.w, ptr %i.t, align 1, !tbaa !35
  store i8 %i.u, ptr %i.v, align 1, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.04616, i64 12 ; 2 uses
  %niter40.next.3 = add i32 %niter40, 4           ; 2 uses
  %niter40.ncmp.3 = icmp eq i32 %niter40.next.3, %unroll_iter39
  br i1 %niter40.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph18, !llvm.loop !301

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr @_ZL34stbi__unpremultiply_on_load_global, align 4, !tbaa !23
  %.not = icmp eq i32 %i.y, 0
  %.not20 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not, label %.preheader7, label %.preheader9

.preheader9:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph

.preheader7:                                      ; preds = %bb.b
  br i1 %.not20, label %.loopexit, label %.lr.ph15.preheader

.lr.ph15.preheader:                               ; preds = %.preheader7
  %xtraiter = and i32 %i.d, 3                     ; 3 uses
  %i.z = icmp ult i32 %i.d, 4
  br i1 %i.z, label %.lr.ph15.epil.preheader, label %.lr.ph15.preheader.new

.lr.ph15.preheader.new:                           ; preds = %.lr.ph15.preheader
  %unroll_iter = and i32 %i.d, -4
  br label %.lr.ph15

.lr.ph:                                           ; preds = %.preheader9, %bb.e
  %.112 = phi i32 [ %i.bb, %bb.e ], [ 0, %.preheader9 ]
  %.14711 = phi ptr [ %i.ba, %bb.e ], [ %.24.val, %.preheader9 ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.14711, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35  ; 3 uses
  %i.ac = load i8, ptr %.14711, align 1, !tbaa !35 ; 2 uses
  %.not50 = icmp eq i8 %i.ab, 0
  br i1 %.not50, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ad = lshr i8 %i.ab, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !35
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.ag, 255
  %i.ai = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.aj = add nuw nsw i32 %i.ah, %i.ai
  %.lhs.trunc = trunc nuw i32 %i.aj to i16
  %.rhs.trunc = zext i8 %i.ab to i16              ; 3 uses
  %i.ak = udiv i16 %.lhs.trunc, %.rhs.trunc
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %.14711, align 1, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %.14711, i64 1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !35
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, 255
  %i.aq = add nuw nsw i32 %i.ap, %i.ai
  %.lhs.trunc1 = trunc nuw i32 %i.aq to i16
  %i.ar = udiv i16 %.lhs.trunc1, %.rhs.trunc
  %i.as = trunc i16 %i.ar to i8
  store i8 %i.as, ptr %i.am, align 1, !tbaa !35
  %i.at = zext i8 %i.ac to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.ai
  %.lhs.trunc4 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ae, align 1, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !35
  store i8 %i.az, ptr %.14711, align 1, !tbaa !35
  store i8 %i.ac, ptr %i.ay, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bb = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !302

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.br, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  store i8 %i.be, ptr %.24813, align 1, !tbaa !35
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !35
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !35
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !35
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !35
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !35
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !303

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
end_hunk_0
