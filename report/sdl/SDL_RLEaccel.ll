Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_RLEaccel?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@SDL_RLEAlphaBlit:bb.a
  tail call void @SDL_UnlockSurface_REAL(ptr noundef nonnull %2) #8
  br label %bb.cs

bb.cs:                                            ; preds = %RLEAlphaClipBlit.exit, %bb.cr, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.cr ], [ true, %RLEAlphaClipBlit.exit ]
  ret i1 %.0
}

declare void @SDL_UpdateSurfaceLockFlag(ptr noundef) local_unnamed_addr #1

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_InvalidateMap(ptr noundef) local_unnamed_addr #1

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 256) i32 @getpix_8(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @getpix_16(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i16, ptr %0, align 2
  %i.b = zext i16 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 16777216) i32 @getpix_24(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i16, ptr %0, align 1
  %i.b = zext i16 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 16
  %i.g = or disjoint i32 %i.f, %i.b
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @getpix_32(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  ret i32 %i.a
}

declare zeroext i1 @SDL_LockSurface_REAL(ptr noundef) local_unnamed_addr #1

declare void @SDL_UnlockSurface_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2147483648, 2147483647) i32 @copy_opaque_16(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 25
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 29
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 30
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.034 = phi ptr [ %1, %.lr.ph ], [ %i.cf, %bb.b ] ; 2 uses
  %.02933 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %bb.b ]
  %.03032 = phi ptr [ %0, %.lr.ph ], [ %i.cg, %bb.b ] ; 2 uses
  %i.r = load i8, ptr %i.b, align 4
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i32, ptr %.034, align 4             ; 3 uses
  %i.w = load i32, ptr %i.c, align 4
  %i.x = and i32 %i.w, %i.v
  %i.y = load i8, ptr %i.d, align 4
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = lshr i32 %i.x, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = load i8, ptr %i.e, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i32, ptr %i.f, align 4
  %i.ak = and i32 %i.aj, %i.v
  %i.al = load i8, ptr %i.g, align 1
  %i.am = zext nneg i8 %i.al to i32
  %i.an = lshr i32 %i.ak, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = load i8, ptr %i.h, align 2
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @SDL_expand_byte, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load i32, ptr %i.i, align 4
  %i.ax = and i32 %i.aw, %i.v
  %i.ay = load i8, ptr %i.j, align 2
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = lshr i32 %i.ax, %i.az
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i32
  %i.bf = load i8, ptr %i.k, align 4
  %i.bg = zext i8 %i.bf to i32
  %i.bh = sub nsw i32 8, %i.bg
  %i.bi = lshr i32 %i.ae, %i.bh
  %i.bj = load i8, ptr %i.l, align 4
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = shl i32 %i.bi, %i.bk
  %i.bm = load i8, ptr %i.m, align 1
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 8, %i.bn
  %i.bp = lshr i32 %i.ar, %i.bo
  %i.bq = load i8, ptr %i.n, align 1
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl i32 %i.bp, %i.br
  %i.bt = or i32 %i.bs, %i.bl
  %i.bu = load i8, ptr %i.o, align 2
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 8, %i.bv
  %i.bx = lshr i32 %i.be, %i.bw
  %i.by = load i8, ptr %i.p, align 2
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = shl i32 %i.bx, %i.bz
  %i.cb = load i32, ptr %i.q, align 4
  %i.cc = or i32 %i.bt, %i.cb
  %i.cd = or i32 %i.cc, %i.ca
  %i.ce = trunc i32 %i.cd to i16
  store i16 %i.ce, ptr %.03032, align 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.034, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.03032, i64 2
  %i.ch = add nuw nsw i32 %.02933, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !214

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ci = shl nsw i32 %2, 1
  ret i32 %i.ci
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483648, 2147483645) i32 @copy_transl_565(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 29 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 30 ; 2 uses
  %i.p = getelementptr i8, ptr %4, i64 20         ; 3 uses
  %i.q = zext nneg i32 %2 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = add nsw i32 %2, -1
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 4                  ; 2 uses
  %5 = getelementptr i8, ptr %0, i64 %i.u         ; 3 uses
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 32
  %6 = getelementptr i8, ptr %4, i64 31
  %bound0.a = icmp ult ptr %0, %i.v
  %bound1 = icmp ult ptr %1, %5
  %found.conflict = and i1 %bound0.a, %bound1
  %bound048 = icmp ult ptr %0, %i.w
  %bound149 = icmp ult ptr %i.b, %5
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  %bound051 = icmp ult ptr %0, %6
  %bound152 = icmp ult ptr %i.p, %5
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %conflict.rdx, %found.conflict53
  br i1 %conflict.rdx54, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 2147483644               ; 4 uses
  %i.x = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %i.z = trunc nuw nsw i64 %n.vec to i32
  %i.aa = getelementptr i8, ptr %0, i64 %i.x
  %i.ab = load i32, ptr %i.b, align 4, !alias.scope !222
  %broadcast.splatinsert74 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat75 = shufflevector <4 x i32> %broadcast.splatinsert74, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ac = load i8, ptr %i.c, align 4, !alias.scope !222
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ad = zext nneg <4 x i8> %broadcast.splat to <4 x i32>
  %i.ae = load i32, ptr %i.d, align 4, !alias.scope !222
  %broadcast.splatinsert76 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat77 = shufflevector <4 x i32> %broadcast.splatinsert76, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.af = load i8, ptr %i.e, align 1, !alias.scope !222
  %broadcast.splatinsert55 = insertelement <4 x i8> poison, i8 %i.af, i64 0
  %broadcast.splat56 = shufflevector <4 x i8> %broadcast.splatinsert55, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ag = zext nneg <4 x i8> %broadcast.splat56 to <4 x i32>
  %i.ah = load i32, ptr %i.f, align 4, !alias.scope !222
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ai = load i8, ptr %i.g, align 2, !alias.scope !222
  %broadcast.splatinsert57 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat58 = shufflevector <4 x i8> %broadcast.splatinsert57, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.aj = zext nneg <4 x i8> %broadcast.splat58 to <4 x i32>
  %i.ak = load i32, ptr %i.h, align 4, !alias.scope !222
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.al = load i8, ptr %i.i, align 1, !alias.scope !222
  %broadcast.splatinsert59 = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat60 = shufflevector <4 x i8> %broadcast.splatinsert59, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.am = zext nneg <4 x i8> %broadcast.splat60 to <4 x i32>
  %i.an = load i8, ptr %i.j, align 4, !alias.scope !223
  %broadcast.splatinsert61 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat62 = shufflevector <4 x i8> %broadcast.splatinsert61, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ao = zext <4 x i8> %broadcast.splat62 to <4 x i32>
  %i.ap = sub nsw <4 x i32> splat (i32 8), %i.ao
  %i.aq = load i8, ptr %i.k, align 4, !alias.scope !223
  %broadcast.splatinsert63 = insertelement <4 x i8> poison, i8 %i.aq, i64 0
  %broadcast.splat64 = shufflevector <4 x i8> %broadcast.splatinsert63, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ar = zext nneg <4 x i8> %broadcast.splat64 to <4 x i32>
  %i.as = load i8, ptr %i.l, align 1, !alias.scope !223
  %broadcast.splatinsert65 = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %broadcast.splat66 = shufflevector <4 x i8> %broadcast.splatinsert65, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.at = zext <4 x i8> %broadcast.splat66 to <4 x i32>
  %i.au = sub nsw <4 x i32> splat (i32 8), %i.at
  %i.av = load i8, ptr %i.m, align 1, !alias.scope !223
  %broadcast.splatinsert67 = insertelement <4 x i8> poison, i8 %i.av, i64 0
  %broadcast.splat68 = shufflevector <4 x i8> %broadcast.splatinsert67, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.aw = zext nneg <4 x i8> %broadcast.splat68 to <4 x i32>
  %i.ax = load i8, ptr %i.n, align 2, !alias.scope !223
  %broadcast.splatinsert69 = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %broadcast.splat70 = shufflevector <4 x i8> %broadcast.splatinsert69, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ay = zext <4 x i8> %broadcast.splat70 to <4 x i32>
  %i.az = sub nsw <4 x i32> splat (i32 8), %i.ay
  %i.ba = load i8, ptr %i.o, align 2, !alias.scope !223
  %broadcast.splatinsert71 = insertelement <4 x i8> poison, i8 %i.ba, i64 0
  %broadcast.splat72 = shufflevector <4 x i8> %broadcast.splatinsert71, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bb = zext nneg <4 x i8> %broadcast.splat72 to <4 x i32>
  %i.bc = load i32, ptr %i.p, align 4, !alias.scope !223
  %broadcast.splatinsert82 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat83 = shufflevector <4 x i32> %broadcast.splatinsert82, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.bd
  %next.gep73 = getelementptr i8, ptr %0, i64 %i.bd
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !224 ; 4 uses
  %i.be = and <4 x i32> %broadcast.splat75, %wide.load
  %i.bf = lshr <4 x i32> %i.be, %i.ad
  %i.bg = and <4 x i32> %broadcast.splat77, %wide.load
  %i.bh = lshr <4 x i32> %i.bg, %i.ag
  %i.bi = and <4 x i32> %broadcast.splat79, %wide.load
  %i.bj = lshr <4 x i32> %i.bi, %i.aj
  %i.bk = and <4 x i32> %broadcast.splat81, %wide.load
  %i.bl = lshr <4 x i32> %i.bk, %i.am
  %i.bm = lshr <4 x i32> %i.bf, %i.ap
  %i.bn = shl <4 x i32> %i.bm, %i.ar
  %i.bo = lshr <4 x i32> %i.bh, %i.au
  %i.bp = shl <4 x i32> %i.bo, %i.aw
  %i.bq = or <4 x i32> %i.bp, %i.bn
  %i.br = lshr <4 x i32> %i.bj, %i.az
  %i.bs = shl <4 x i32> %i.br, %i.bb
  %i.bt = or <4 x i32> %i.bq, %broadcast.splat83
  %i.bu = or <4 x i32> %i.bt, %i.bs               ; 2 uses
  %i.bv = shl <4 x i32> %i.bu, splat (i32 16)
  %i.bw = and <4 x i32> %i.bv, splat (i32 132120576)
  %i.bx = and <4 x i32> %i.bu, splat (i32 63519)
  %i.by = shl <4 x i32> %i.bl, splat (i32 2)
  %i.bz = and <4 x i32> %i.by, splat (i32 2016)
  %i.ca = or disjoint <4 x i32> %i.bx, %i.bz
  %i.cb = or disjoint <4 x i32> %i.ca, %i.bw
  store <4 x i32> %i.cb, ptr %next.gep73, align 4, !alias.scope !225, !noalias !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.037.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.y, %middle.block ]
  %.03236.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.z, %middle.block ]
  %.03335.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph ], [ %i.aa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.037 = phi ptr [ %i.ee, %scalar.ph ], [ %.037.ph, %scalar.ph.preheader ] ; 2 uses
  %.03236 = phi i32 [ %i.eg, %scalar.ph ], [ %.03236.ph, %scalar.ph.preheader ]
  %.03335 = phi ptr [ %i.ef, %scalar.ph ], [ %.03335.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cd = load i32, ptr %.037, align 4            ; 4 uses
  %i.ce = load i32, ptr %i.b, align 4
  %i.cf = and i32 %i.ce, %i.cd
  %i.cg = load i8, ptr %i.c, align 4
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = lshr i32 %i.cf, %i.ch
  %i.cj = load i32, ptr %i.d, align 4
  %i.ck = and i32 %i.cj, %i.cd
  %i.cl = load i8, ptr %i.e, align 1
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = lshr i32 %i.ck, %i.cm
  %i.co = load i32, ptr %i.f, align 4
  %i.cp = and i32 %i.co, %i.cd
  %i.cq = load i8, ptr %i.g, align 2
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = lshr i32 %i.cp, %i.cr
  %i.ct = load i32, ptr %i.h, align 4
  %i.cu = and i32 %i.ct, %i.cd
  %i.cv = load i8, ptr %i.i, align 1
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = lshr i32 %i.cu, %i.cw
  %i.cy = load i8, ptr %i.j, align 4
  %i.cz = zext i8 %i.cy to i32
  %i.da = sub nsw i32 8, %i.cz
  %i.db = lshr i32 %i.ci, %i.da
  %i.dc = load i8, ptr %i.k, align 4
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = shl i32 %i.db, %i.dd
  %i.df = load i8, ptr %i.l, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 8, %i.dg
  %i.di = lshr i32 %i.cn, %i.dh
  %i.dj = load i8, ptr %i.m, align 1
  %i.dk = zext nneg i8 %i.dj to i32
  %i.dl = shl i32 %i.di, %i.dk
  %i.dm = or i32 %i.dl, %i.de
  %i.dn = load i8, ptr %i.n, align 2
  %i.do = zext i8 %i.dn to i32
  %i.dp = sub nsw i32 8, %i.do
  %i.dq = lshr i32 %i.cs, %i.dp
  %i.dr = load i8, ptr %i.o, align 2
  %i.ds = zext nneg i8 %i.dr to i32
  %i.dt = shl i32 %i.dq, %i.ds
  %i.du = load i32, ptr %i.p, align 4
  %i.dv = or i32 %i.dm, %i.du
  %i.dw = or i32 %i.dv, %i.dt                     ; 2 uses
  %i.dx = shl i32 %i.dw, 16
  %i.dy = and i32 %i.dx, 132120576
  %i.dz = and i32 %i.dw, 63519
  %i.ea = shl i32 %i.cx, 2
  %i.eb = and i32 %i.ea, 2016
  %i.ec = or disjoint i32 %i.dz, %i.eb
  %i.ed = or disjoint i32 %i.ec, %i.dy
  store i32 %i.ed, ptr %.03335, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.037, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.03335, i64 4
  %i.eg = add nuw nsw i32 %.03236, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, %2
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !221

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.eh = shl nsw i32 %2, 2
  ret i32 %i.eh
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483648, 2147483645) i32 @copy_transl_555(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 29 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 30 ; 2 uses
  %i.p = getelementptr i8, ptr %4, i64 20         ; 3 uses
  %i.q = zext nneg i32 %2 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = add nsw i32 %2, -1
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 4                  ; 2 uses
  %5 = getelementptr i8, ptr %0, i64 %i.u         ; 3 uses
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %i.w = getelementptr i8, ptr %3, i64 32
  %6 = getelementptr i8, ptr %4, i64 31
  %bound0.a = icmp ult ptr %0, %i.v
  %bound1 = icmp ult ptr %1, %5
  %found.conflict = and i1 %bound0.a, %bound1
  %bound048 = icmp ult ptr %0, %i.w
  %bound149 = icmp ult ptr %i.b, %5
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  %bound051 = icmp ult ptr %0, %6
  %bound152 = icmp ult ptr %i.p, %5
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %conflict.rdx, %found.conflict53
  br i1 %conflict.rdx54, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 2147483644               ; 4 uses
  %i.x = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %i.z = trunc nuw nsw i64 %n.vec to i32
  %i.aa = getelementptr i8, ptr %0, i64 %i.x
  %i.ab = load i32, ptr %i.b, align 4, !alias.scope !234
  %broadcast.splatinsert74 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat75 = shufflevector <4 x i32> %broadcast.splatinsert74, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ac = load i8, ptr %i.c, align 4, !alias.scope !234
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ad = zext nneg <4 x i8> %broadcast.splat to <4 x i32>
  %i.ae = load i32, ptr %i.d, align 4, !alias.scope !234
  %broadcast.splatinsert76 = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat77 = shufflevector <4 x i32> %broadcast.splatinsert76, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.af = load i8, ptr %i.e, align 1, !alias.scope !234
  %broadcast.splatinsert55 = insertelement <4 x i8> poison, i8 %i.af, i64 0
  %broadcast.splat56 = shufflevector <4 x i8> %broadcast.splatinsert55, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ag = zext nneg <4 x i8> %broadcast.splat56 to <4 x i32>
  %i.ah = load i32, ptr %i.f, align 4, !alias.scope !234
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ai = load i8, ptr %i.g, align 2, !alias.scope !234
  %broadcast.splatinsert57 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splat58 = shufflevector <4 x i8> %broadcast.splatinsert57, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.aj = zext nneg <4 x i8> %broadcast.splat58 to <4 x i32>
  %i.ak = load i32, ptr %i.h, align 4, !alias.scope !234
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.al = load i8, ptr %i.i, align 1, !alias.scope !234
  %broadcast.splatinsert59 = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %broadcast.splat60 = shufflevector <4 x i8> %broadcast.splatinsert59, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.am = zext nneg <4 x i8> %broadcast.splat60 to <4 x i32>
  %i.an = load i8, ptr %i.j, align 4, !alias.scope !235
  %broadcast.splatinsert61 = insertelement <4 x i8> poison, i8 %i.an, i64 0
  %broadcast.splat62 = shufflevector <4 x i8> %broadcast.splatinsert61, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ao = zext <4 x i8> %broadcast.splat62 to <4 x i32>
  %i.ap = sub nsw <4 x i32> splat (i32 8), %i.ao
  %i.aq = load i8, ptr %i.k, align 4, !alias.scope !235
  %broadcast.splatinsert63 = insertelement <4 x i8> poison, i8 %i.aq, i64 0
  %broadcast.splat64 = shufflevector <4 x i8> %broadcast.splatinsert63, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ar = zext nneg <4 x i8> %broadcast.splat64 to <4 x i32>
  %i.as = load i8, ptr %i.l, align 1, !alias.scope !235
  %broadcast.splatinsert65 = insertelement <4 x i8> poison, i8 %i.as, i64 0
  %broadcast.splat66 = shufflevector <4 x i8> %broadcast.splatinsert65, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.at = zext <4 x i8> %broadcast.splat66 to <4 x i32>
  %i.au = sub nsw <4 x i32> splat (i32 8), %i.at
  %i.av = load i8, ptr %i.m, align 1, !alias.scope !235
  %broadcast.splatinsert67 = insertelement <4 x i8> poison, i8 %i.av, i64 0
  %broadcast.splat68 = shufflevector <4 x i8> %broadcast.splatinsert67, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.aw = zext nneg <4 x i8> %broadcast.splat68 to <4 x i32>
  %i.ax = load i8, ptr %i.n, align 2, !alias.scope !235
  %broadcast.splatinsert69 = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %broadcast.splat70 = shufflevector <4 x i8> %broadcast.splatinsert69, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ay = zext <4 x i8> %broadcast.splat70 to <4 x i32>
  %i.az = sub nsw <4 x i32> splat (i32 8), %i.ay
  %i.ba = load i8, ptr %i.o, align 2, !alias.scope !235
  %broadcast.splatinsert71 = insertelement <4 x i8> poison, i8 %i.ba, i64 0
  %broadcast.splat72 = shufflevector <4 x i8> %broadcast.splatinsert71, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.bb = zext nneg <4 x i8> %broadcast.splat72 to <4 x i32>
  %i.bc = load i32, ptr %i.p, align 4, !alias.scope !235
  %broadcast.splatinsert82 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat83 = shufflevector <4 x i32> %broadcast.splatinsert82, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.bd
  %next.gep73 = getelementptr i8, ptr %0, i64 %i.bd
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !236 ; 4 uses
  %i.be = and <4 x i32> %broadcast.splat75, %wide.load
  %i.bf = lshr <4 x i32> %i.be, %i.ad
  %i.bg = and <4 x i32> %broadcast.splat77, %wide.load
  %i.bh = lshr <4 x i32> %i.bg, %i.ag
  %i.bi = and <4 x i32> %broadcast.splat79, %wide.load
  %i.bj = lshr <4 x i32> %i.bi, %i.aj
  %i.bk = and <4 x i32> %broadcast.splat81, %wide.load
  %i.bl = lshr <4 x i32> %i.bk, %i.am
  %i.bm = lshr <4 x i32> %i.bf, %i.ap
  %i.bn = shl <4 x i32> %i.bm, %i.ar
  %i.bo = lshr <4 x i32> %i.bh, %i.au
  %i.bp = shl <4 x i32> %i.bo, %i.aw
  %i.bq = or <4 x i32> %i.bp, %i.bn
  %i.br = lshr <4 x i32> %i.bj, %i.az
  %i.bs = shl <4 x i32> %i.br, %i.bb
  %i.bt = or <4 x i32> %i.bq, %broadcast.splat83
  %i.bu = or <4 x i32> %i.bt, %i.bs               ; 2 uses
  %i.bv = shl <4 x i32> %i.bu, splat (i32 16)
  %i.bw = and <4 x i32> %i.bv, splat (i32 65011712)
  %i.bx = and <4 x i32> %i.bu, splat (i32 64543)
  %i.by = shl <4 x i32> %i.bl, splat (i32 2)
  %i.bz = and <4 x i32> %i.by, splat (i32 992)
  %i.ca = or disjoint <4 x i32> %i.bx, %i.bz
  %i.cb = or disjoint <4 x i32> %i.ca, %i.bw
  store <4 x i32> %i.cb, ptr %next.gep73, align 4, !alias.scope !237, !noalias !238
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.037.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.y, %middle.block ]
  %.03236.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.z, %middle.block ]
  %.03335.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph ], [ %i.aa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.037 = phi ptr [ %i.ee, %scalar.ph ], [ %.037.ph, %scalar.ph.preheader ] ; 2 uses
  %.03236 = phi i32 [ %i.eg, %scalar.ph ], [ %.03236.ph, %scalar.ph.preheader ]
  %.03335 = phi ptr [ %i.ef, %scalar.ph ], [ %.03335.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cd = load i32, ptr %.037, align 4            ; 4 uses
  %i.ce = load i32, ptr %i.b, align 4
  %i.cf = and i32 %i.ce, %i.cd
  %i.cg = load i8, ptr %i.c, align 4
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = lshr i32 %i.cf, %i.ch
  %i.cj = load i32, ptr %i.d, align 4
  %i.ck = and i32 %i.cj, %i.cd
  %i.cl = load i8, ptr %i.e, align 1
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = lshr i32 %i.ck, %i.cm
  %i.co = load i32, ptr %i.f, align 4
  %i.cp = and i32 %i.co, %i.cd
  %i.cq = load i8, ptr %i.g, align 2
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = lshr i32 %i.cp, %i.cr
  %i.ct = load i32, ptr %i.h, align 4
  %i.cu = and i32 %i.ct, %i.cd
  %i.cv = load i8, ptr %i.i, align 1
  %i.cw = zext nneg i8 %i.cv to i32
  %i.cx = lshr i32 %i.cu, %i.cw
  %i.cy = load i8, ptr %i.j, align 4
  %i.cz = zext i8 %i.cy to i32
  %i.da = sub nsw i32 8, %i.cz
  %i.db = lshr i32 %i.ci, %i.da
  %i.dc = load i8, ptr %i.k, align 4
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = shl i32 %i.db, %i.dd
  %i.df = load i8, ptr %i.l, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = sub nsw i32 8, %i.dg
  %i.di = lshr i32 %i.cn, %i.dh
  %i.dj = load i8, ptr %i.m, align 1
  %i.dk = zext nneg i8 %i.dj to i32
  %i.dl = shl i32 %i.di, %i.dk
  %i.dm = or i32 %i.dl, %i.de
  %i.dn = load i8, ptr %i.n, align 2
  %i.do = zext i8 %i.dn to i32
  %i.dp = sub nsw i32 8, %i.do
  %i.dq = lshr i32 %i.cs, %i.dp
  %i.dr = load i8, ptr %i.o, align 2
  %i.ds = zext nneg i8 %i.dr to i32
  %i.dt = shl i32 %i.dq, %i.ds
  %i.du = load i32, ptr %i.p, align 4
  %i.dv = or i32 %i.dm, %i.du
  %i.dw = or i32 %i.dv, %i.dt                     ; 2 uses
  %i.dx = shl i32 %i.dw, 16
  %i.dy = and i32 %i.dx, 65011712
  %i.dz = and i32 %i.dw, 64543
  %i.ea = shl i32 %i.cx, 2
  %i.eb = and i32 %i.ea, 992
  %i.ec = or disjoint i32 %i.dz, %i.eb
  %i.ed = or disjoint i32 %i.ec, %i.dy
  store i32 %i.ed, ptr %.03335, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.037, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.03335, i64 4
  %i.eg = add nuw nsw i32 %.03236, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, %2
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !233

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.eh = shl nsw i32 %2, 2
  ret i32 %i.eh
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 -2147483648, 2147483645) i32 @copy_32(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 29 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 30 ; 2 uses
  %i.p = zext nneg i32 %2 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.q = add nsw i32 %2, -1
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 4                  ; 2 uses
  %5 = getelementptr i8, ptr %0, i64 %i.t         ; 3 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %3, i64 32
  %6 = getelementptr i8, ptr %4, i64 31
  %bound0.a = icmp ult ptr %0, %i.u
  %bound1 = icmp ult ptr %1, %5
  %found.conflict = and i1 %bound0.a, %bound1
  %bound045 = icmp ult ptr %0, %i.v
  %bound146 = icmp ult ptr %i.b, %5
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx = or i1 %found.conflict, %found.conflict47
  %bound048 = icmp ult ptr %0, %6
  %bound149 = icmp ult ptr %i.j, %5
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx, %found.conflict50
  br i1 %conflict.rdx51, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 2147483644               ; 4 uses
  %i.w = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %i.w
  %i.y = trunc nuw nsw i64 %n.vec to i32
  %i.z = getelementptr i8, ptr %0, i64 %i.w
  %i.aa = load i32, ptr %i.b, align 4, !alias.scope !246
  %broadcast.splatinsert71 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat72 = shufflevector <4 x i32> %broadcast.splatinsert71, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ab = load i8, ptr %i.c, align 4, !alias.scope !246
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ac = zext nneg <4 x i8> %broadcast.splat to <4 x i32>
  %i.ad = load i32, ptr %i.d, align 4, !alias.scope !246
  %broadcast.splatinsert73 = insertelement <4 x i32> poison, i32 %i.ad, i64 0
  %broadcast.splat74 = shufflevector <4 x i32> %broadcast.splatinsert73, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ae = load i8, ptr %i.e, align 1, !alias.scope !246
  %broadcast.splatinsert52 = insertelement <4 x i8> poison, i8 %i.ae, i64 0
  %broadcast.splat53 = shufflevector <4 x i8> %broadcast.splatinsert52, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.af = zext nneg <4 x i8> %broadcast.splat53 to <4 x i32>
  %i.ag = load i32, ptr %i.f, align 4, !alias.scope !246
  %broadcast.splatinsert75 = insertelement <4 x i32> poison, i32 %i.ag, i64 0
  %broadcast.splat76 = shufflevector <4 x i32> %broadcast.splatinsert75, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ah = load i8, ptr %i.g, align 2, !alias.scope !246
  %broadcast.splatinsert54 = insertelement <4 x i8> poison, i8 %i.ah, i64 0
  %broadcast.splat55 = shufflevector <4 x i8> %broadcast.splatinsert54, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ai = zext nneg <4 x i8> %broadcast.splat55 to <4 x i32>
  %i.aj = load i32, ptr %i.h, align 4, !alias.scope !246
  %broadcast.splatinsert77 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat78 = shufflevector <4 x i32> %broadcast.splatinsert77, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ak = load i8, ptr %i.i, align 1, !alias.scope !246
  %broadcast.splatinsert56 = insertelement <4 x i8> poison, i8 %i.ak, i64 0
  %broadcast.splat57 = shufflevector <4 x i8> %broadcast.splatinsert56, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.al = zext nneg <4 x i8> %broadcast.splat57 to <4 x i32>
  %i.am = load i8, ptr %i.j, align 4, !alias.scope !247
  %broadcast.splatinsert58 = insertelement <4 x i8> poison, i8 %i.am, i64 0
  %broadcast.splat59 = shufflevector <4 x i8> %broadcast.splatinsert58, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.an = zext <4 x i8> %broadcast.splat59 to <4 x i32>
  %i.ao = sub nsw <4 x i32> splat (i32 8), %i.an
  %i.ap = load i8, ptr %i.k, align 4, !alias.scope !247
  %broadcast.splatinsert60 = insertelement <4 x i8> poison, i8 %i.ap, i64 0
  %broadcast.splat61 = shufflevector <4 x i8> %broadcast.splatinsert60, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.aq = zext nneg <4 x i8> %broadcast.splat61 to <4 x i32>
  %i.ar = load i8, ptr %i.l, align 1, !alias.scope !247
  %broadcast.splatinsert62 = insertelement <4 x i8> poison, i8 %i.ar, i64 0
  %broadcast.splat63 = shufflevector <4 x i8> %broadcast.splatinsert62, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.as = zext <4 x i8> %broadcast.splat63 to <4 x i32>
  %i.at = sub nsw <4 x i32> splat (i32 8), %i.as
  %i.au = load i8, ptr %i.m, align 1, !alias.scope !247
  %broadcast.splatinsert64 = insertelement <4 x i8> poison, i8 %i.au, i64 0
  %broadcast.splat65 = shufflevector <4 x i8> %broadcast.splatinsert64, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.av = zext nneg <4 x i8> %broadcast.splat65 to <4 x i32>
  %i.aw = load i8, ptr %i.n, align 2, !alias.scope !247
  %broadcast.splatinsert66 = insertelement <4 x i8> poison, i8 %i.aw, i64 0
  %broadcast.splat67 = shufflevector <4 x i8> %broadcast.splatinsert66, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ax = zext <4 x i8> %broadcast.splat67 to <4 x i32>
  %i.ay = sub nsw <4 x i32> splat (i32 8), %i.ax
  %i.az = load i8, ptr %i.o, align 2, !alias.scope !247
  %broadcast.splatinsert68 = insertelement <4 x i8> poison, i8 %i.az, i64 0
  %broadcast.splat69 = shufflevector <4 x i8> %broadcast.splatinsert68, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ba = zext nneg <4 x i8> %broadcast.splat69 to <4 x i32>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.bb
  %next.gep70 = getelementptr i8, ptr %0, i64 %i.bb
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !248 ; 4 uses
  %i.bc = and <4 x i32> %broadcast.splat72, %wide.load
  %i.bd = lshr <4 x i32> %i.bc, %i.ac
  %i.be = and <4 x i32> %broadcast.splat74, %wide.load
  %i.bf = lshr <4 x i32> %i.be, %i.af
  %i.bg = and <4 x i32> %broadcast.splat76, %wide.load
  %i.bh = lshr <4 x i32> %i.bg, %i.ai
  %i.bi = and <4 x i32> %broadcast.splat78, %wide.load
  %i.bj = lshr <4 x i32> %i.bi, %i.al
  %i.bk = lshr <4 x i32> %i.bd, %i.ao
  %i.bl = shl <4 x i32> %i.bk, %i.aq
  %i.bm = lshr <4 x i32> %i.bf, %i.at
  %i.bn = shl <4 x i32> %i.bm, %i.av
  %i.bo = lshr <4 x i32> %i.bh, %i.ay
  %i.bp = shl <4 x i32> %i.bo, %i.ba
  %i.bq = shl <4 x i32> %i.bj, splat (i32 24)
  %i.br = or <4 x i32> %i.bl, %i.bq
  %i.bs = or <4 x i32> %i.br, %i.bn
  %i.bt = or <4 x i32> %i.bs, %i.bp
  store <4 x i32> %i.bt, ptr %next.gep70, align 4, !alias.scope !249, !noalias !250
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.034.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.x, %middle.block ]
  %.02933.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.y, %middle.block ]
  %.03032.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph ], [ %i.z, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.034 = phi ptr [ %i.dq, %scalar.ph ], [ %.034.ph, %scalar.ph.preheader ] ; 2 uses
  %.02933 = phi i32 [ %i.dr, %scalar.ph ], [ %.02933.ph, %scalar.ph.preheader ]
  %.03032 = phi ptr [ %i.dp, %scalar.ph ], [ %.03032.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bv = load i32, ptr %.034, align 4            ; 4 uses
  %i.bw = load i32, ptr %i.b, align 4
  %i.bx = and i32 %i.bw, %i.bv
  %i.by = load i8, ptr %i.c, align 4
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = lshr i32 %i.bx, %i.bz
  %i.cb = load i32, ptr %i.d, align 4
  %i.cc = and i32 %i.cb, %i.bv
  %i.cd = load i8, ptr %i.e, align 1
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = lshr i32 %i.cc, %i.ce
  %i.cg = load i32, ptr %i.f, align 4
  %i.ch = and i32 %i.cg, %i.bv
  %i.ci = load i8, ptr %i.g, align 2
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = lshr i32 %i.ch, %i.cj
  %i.cl = load i32, ptr %i.h, align 4
  %i.cm = and i32 %i.cl, %i.bv
  %i.cn = load i8, ptr %i.i, align 1
  %i.co = zext nneg i8 %i.cn to i32
  %i.cp = lshr i32 %i.cm, %i.co
  %i.cq = load i8, ptr %i.j, align 4
  %i.cr = zext i8 %i.cq to i32
  %i.cs = sub nsw i32 8, %i.cr
  %i.ct = lshr i32 %i.ca, %i.cs
  %i.cu = load i8, ptr %i.k, align 4
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = shl i32 %i.ct, %i.cv
  %i.cx = load i8, ptr %i.l, align 1
  %i.cy = zext i8 %i.cx to i32
  %i.cz = sub nsw i32 8, %i.cy
  %i.da = lshr i32 %i.cf, %i.cz
  %i.db = load i8, ptr %i.m, align 1
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = shl i32 %i.da, %i.dc
  %i.de = load i8, ptr %i.n, align 2
  %i.df = zext i8 %i.de to i32
  %i.dg = sub nsw i32 8, %i.df
  %i.dh = lshr i32 %i.ck, %i.dg
  %i.di = load i8, ptr %i.o, align 2
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = shl i32 %i.dh, %i.dj
  %i.dl = shl i32 %i.cp, 24
  %i.dm = or i32 %i.cw, %i.dl
  %i.dn = or i32 %i.dm, %i.dd
  %i.do = or i32 %i.dn, %i.dk
  store i32 %i.do, ptr %.03032, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.03032, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.034, i64 4
  %i.dr = add nuw nsw i32 %.02933, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dr, %2
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !245

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ds = shl nsw i32 %2, 2
  ret i32 %i.ds
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!"llvm.loop.isvectorized", i32 1}
!5 = !{!"llvm.loop.unroll.runtime.disable"}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3, !4, !5}
!9 = distinct !{!9, !3, !4, !5}
!10 = distinct !{!10, !3, !4, !5}
!11 = distinct !{!11, !3, !5, !4}
end_hunk_0
