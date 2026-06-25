inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZL20stbi__parse_png_fileP9stbi__pngii:bb.a

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i8, ptr %i.b, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL10stbi__get8P13stbi__context.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call noundef i32 %i.k(ptr noundef %i.m, ptr noundef nonnull %i.n, i32 noundef %i.p), !inline_history !161 ; 2 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add nsw i32 %i.z, %i.x
  store i32 %i.aa, ptr %i.y, align 8
  %i.ab = icmp eq i32 %i.q, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.n, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = sext i32 %i.q to i64
  %i.ae = getelementptr inbounds i8, ptr %i.n, i64 %i.ad
  %.pre.i = load i8, ptr %i.n, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i:  ; preds = %bb.f, %bb.e
  %i.af = phi i8 [ 0, %bb.e ], [ %.pre.i, %bb.f ]
  %.sink.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ae, %bb.f ] ; 2 uses
  store ptr %.sink.i.i, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit

_ZL10stbi__get8P13stbi__context.exit:             ; preds = %bb.b, %bb.c, %_ZL19stbi__refill_bufferP13stbi__context.exit.i
  %i.ah = phi ptr [ %i.d, %bb.b ], [ %.sink.i.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.d, %bb.c ]
  %i.ai = phi ptr [ %i.f, %bb.b ], [ %i.ag, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ %i.b, %bb.c ] ; 3 uses
  %.0.i = phi i8 [ %i.g, %bb.b ], [ %i.af, %_ZL19stbi__refill_bufferP13stbi__context.exit.i ], [ 0, %bb.c ]
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = load i8, ptr %i.ai, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit7

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8
  %.not.i2 = icmp eq i32 %i.an, 0
  br i1 %.not.i2, label %_ZL10stbi__get8P13stbi__context.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.au = load i32, ptr %i.at, align 4
  %i.av = tail call noundef i32 %i.ap(ptr noundef %i.ar, ptr noundef nonnull %i.as, i32 noundef %i.au), !inline_history !161 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  %i.bg = icmp eq i32 %i.av, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.am, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.as, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

bb.k:                                             ; preds = %bb.i
  %i.bi = sext i32 %i.av to i64
  %i.bj = getelementptr inbounds i8, ptr %i.as, i64 %i.bi
  %.pre.i3 = load i8, ptr %i.as, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4

_ZL19stbi__refill_bufferP13stbi__context.exit.i4: ; preds = %bb.k, %bb.j
  %i.bk = phi i8 [ 0, %bb.j ], [ %.pre.i3, %bb.k ]
  %.sink.i.i5 = phi ptr [ %i.bh, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %.sink.i.i5, ptr %i.c, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.bl, ptr %i.a, align 8
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
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL28stbi__compute_transparency16P9stbi__pngPti(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr nofree captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #34 {
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
  %scevgep = getelementptr i8, ptr %i.i, i64 4
  %scevgep2 = getelementptr i8, ptr %0, i64 2
  %bound0 = icmp ult ptr %.24.val, %scevgep2
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph7.preheader7, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.e, 3                     ; 2 uses
  %i.j = icmp eq i64 %n.mod.vf, 0
  %i.k = select i1 %i.j, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.e, %i.k                 ; 3 uses
  %i.l = shl nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %.24.val, i64 %i.l
  %i.n = trunc i64 %n.vec to i32
  %i.o = load i16, ptr %0, align 2, !alias.scope !175
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2                        ; 4 uses
  %next.gep = getelementptr i8, ptr %.24.val, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %.24.val, i64 %i.p
  %i.r = getelementptr i8, ptr %.24.val, i64 %i.p
  %i.s = getelementptr i8, ptr %.24.val, i64 %i.p
  %wide.vec = load <8 x i16>, ptr %next.gep, align 2, !alias.scope !178, !noalias !175
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.t = icmp ne <4 x i16> %strided.vec, %broadcast.splat
  %i.u = sext <4 x i1> %i.t to <4 x i16>          ; 4 uses
  %2 = extractelement <4 x i16> %i.u, i64 0
  %3 = extractelement <4 x i16> %i.u, i64 1
  %4 = extractelement <4 x i16> %i.u, i64 2
  %5 = extractelement <4 x i16> %i.u, i64 3
  %6 = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %7 = getelementptr i8, ptr %i.q, i64 6
  %8 = getelementptr i8, ptr %i.r, i64 10
  %9 = getelementptr i8, ptr %i.s, i64 14
  store i16 %2, ptr %6, align 2, !alias.scope !178, !noalias !175
  store i16 %3, ptr %7, align 2, !alias.scope !178, !noalias !175
  store i16 %4, ptr %8, align 2, !alias.scope !178, !noalias !175
  store i16 %5, ptr %9, align 2, !alias.scope !178, !noalias !175
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %.lr.ph7.preheader7, label %vector.body, !llvm.loop !180

.lr.ph7.preheader7:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph7.preheader
  %.06.ph = phi ptr [ %.24.val, %vector.memcheck ], [ %.24.val, %.lr.ph7.preheader ], [ %i.m, %vector.body ] ; 2 uses
  %.0225.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.preheader ], [ %i.n, %vector.body ] ; 4 uses
  %i.w = sub i32 %i.a, %.0225.ph
  %xtraiter = and i32 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol

.lr.ph7.prol:                                     ; preds = %.lr.ph7.preheader7, %.lr.ph7.prol
  %.06.prol = phi ptr [ %i.ac, %.lr.ph7.prol ], [ %.06.ph, %.lr.ph7.preheader7 ] ; 3 uses
  %.0225.prol = phi i32 [ %i.ad, %.lr.ph7.prol ], [ %.0225.ph, %.lr.ph7.preheader7 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph7.prol ], [ 0, %.lr.ph7.preheader7 ]
  %i.x = load i16, ptr %.06.prol, align 2
  %i.y = load i16, ptr %0, align 2
  %i.z = icmp ne i16 %i.x, %i.y
  %i.aa = sext i1 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.prol, i64 2
  store i16 %i.aa, ptr %i.ab, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.prol, i64 4 ; 2 uses
  %i.ad = add nuw i32 %.0225.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph7.prol.loopexit, label %.lr.ph7.prol, !llvm.loop !181

.lr.ph7.prol.loopexit:                            ; preds = %.lr.ph7.prol, %.lr.ph7.preheader7
  %.06.unr = phi ptr [ %.06.ph, %.lr.ph7.preheader7 ], [ %i.ac, %.lr.ph7.prol ]
  %.0225.unr = phi i32 [ %.0225.ph, %.lr.ph7.preheader7 ], [ %i.ad, %.lr.ph7.prol ]
  %i.ae = sub i32 %.0225.ph, %i.a
  %i.af = icmp ugt i32 %i.ae, -4
  br i1 %i.af, label %.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.prol.loopexit, %.lr.ph7
  %.06 = phi ptr [ %i.bd, %.lr.ph7 ], [ %.06.unr, %.lr.ph7.prol.loopexit ] ; 9 uses
  %.0225 = phi i32 [ %i.be, %.lr.ph7 ], [ %.0225.unr, %.lr.ph7.prol.loopexit ]
  %i.ag = load i16, ptr %.06, align 2
  %i.ah = load i16, ptr %0, align 2
  %i.ai = icmp ne i16 %i.ag, %i.ah
  %i.aj = sext i1 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %.06, i64 2
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.am = load i16, ptr %i.al, align 2
  %i.an = load i16, ptr %0, align 2
  %i.ao = icmp ne i16 %i.am, %i.an
  %i.ap = sext i1 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.06, i64 6
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %.06, i64 8
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = load i16, ptr %0, align 2
  %i.au = icmp ne i16 %i.as, %i.at
  %i.av = sext i1 %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %.06, i64 10
  store i16 %i.av, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %.06, i64 12
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = load i16, ptr %0, align 2
  %i.ba = icmp ne i16 %i.ay, %i.az
  %i.bb = sext i1 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %.06, i64 14
  store i16 %i.bb, ptr %i.bc, align 2
  %i.bd = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.be = add nuw i32 %.0225, 4                   ; 2 uses
  %exitcond10.not.3 = icmp eq i32 %i.be, %i.a
  br i1 %exitcond10.not.3, label %.loopexit, label %.lr.ph7, !llvm.loop !182

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.br, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.bs, %bb.f ]
  %i.bf = load i16, ptr %.14, align 2
  %i.bg = load i16, ptr %0, align 2
  %i.bh = icmp eq i16 %i.bf, %i.bg
  br i1 %i.bh, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = load i16, ptr %i.c, align 2
  %i.bl = icmp eq i16 %i.bj, %i.bk
  br i1 %i.bl, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = load i16, ptr %i.d, align 2
  %i.bp = icmp eq i16 %i.bn, %i.bo
  br i1 %i.bp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %.14, i64 6
  store i16 0, ptr %i.bq, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %.14, i64 8
  %i.bs = add nuw i32 %.1233, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %i.a
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !183

.loopexit:                                        ; preds = %bb.f, %.lr.ph7.prol.loopexit, %.lr.ph7, %.preheader1, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL26stbi__compute_transparencyP9stbi__pngPhi(i32 %.0.val.0.val, i32 %.0.val.4.val, ptr nofree captures(none) %.24.val, ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #34 {
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
  %i.f = load i8, ptr %.06, align 1
  %i.g = load i8, ptr %0, align 1
  %i.h = icmp ne i8 %i.f, %i.g
  %i.i = sext i1 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %.06, i64 1
  store i8 %i.i, ptr %i.j, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.06, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = load i8, ptr %0, align 1
  %i.n = icmp ne i8 %i.l, %i.m
  %i.o = sext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.06, i64 3
  store i8 %i.o, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.06, i64 4
  %i.r = load i8, ptr %i.q, align 1
  %i.s = load i8, ptr %0, align 1
  %i.t = icmp ne i8 %i.r, %i.s
  %i.u = sext i1 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %.06, i64 5
  store i8 %i.u, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.06, i64 6
  %i.x = load i8, ptr %i.w, align 1
  %i.y = load i8, ptr %0, align 1
  %i.z = icmp ne i8 %i.x, %i.y
  %i.aa = sext i1 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %.06, i64 7
  store i8 %i.aa, ptr %i.ab, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.06, i64 8 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph7, !llvm.loop !184

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.14 = phi ptr [ %.24.val, %.lr.ph ], [ %i.ap, %bb.f ] ; 5 uses
  %.1233 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.f ]
  %i.ad = load i8, ptr %.14, align 1
  %i.ae = load i8, ptr %0, align 1
  %i.af = icmp eq i8 %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = load i8, ptr %i.c, align 1
  %i.aj = icmp eq i8 %i.ah, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.14, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = load i8, ptr %i.d, align 1
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.14, i64 3
  store i8 0, ptr %i.ao, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.14, i64 4
  %i.aq = add nuw i32 %.1233, 1                   ; 2 uses
end_hunk_0
