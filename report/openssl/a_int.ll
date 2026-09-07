Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/a_int?download=true
inline.NumInlined: 20
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ossl_c2i_ASN1_INTEGER:bb.a
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load ptr, ptr %1, align 8, !tbaa !15
  %i.c = tail call fastcc i64 @c2i_ibuf(ptr noundef null, ptr noundef null, ptr noundef %i.b, i64 noundef %2) ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, null                     ; 3 uses
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call ptr @ASN1_INTEGER_new() #5     ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 2, ptr %i.j, align 4, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.0 = phi ptr [ %i.h, %bb.e ], [ %i.f, %bb.c ]  ; 8 uses
  %i.k = icmp ugt i64 %i.c, 2147483647
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = trunc nuw nsw i64 %i.c to i32
  %i.m = tail call i32 @ASN1_STRING_set(ptr noundef nonnull %.0, ptr noundef null, i32 noundef %i.l) #5
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 320, ptr noundef nonnull @__func__.ossl_c2i_ASN1_INTEGER) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 524301, ptr noundef null) #5
  br i1 %i.e, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = load ptr, ptr %1, align 8, !tbaa !15
  %i.r = call fastcc i64 @c2i_ibuf(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef %i.q, i64 noundef %2) ; 0 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !24
  %.not = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = and i32 %i.u, -257
  %masksel = select i1 %.not, i32 0, i32 256
  %.sink = or disjoint i32 %i.v, %masksel
  store i32 %.sink, ptr %i.t, align 4, !tbaa !14
  %i.w = load ptr, ptr %1, align 8, !tbaa !15
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %2
  store ptr %i.x, ptr %1, align 8, !tbaa !15
  br i1 %i.e, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %.0, ptr %0, align 8, !tbaa !23
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %0, align 8, !tbaa !23
  %.not32 = icmp eq ptr %i.y, %.0
  br i1 %.not32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  tail call void @ASN1_INTEGER_free(ptr noundef nonnull %.0) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.j, %bb.d, %bb.a
  %.026 = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ %.0, %bb.i ], [ %.0, %bb.j ], [ null, %bb.l ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @c2i_ibuf(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @__func__.c2i_ibuf) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 222, ptr noundef null) #5
  br label %twos_complement.exit

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !18      ; 3 uses
  %i.c = and i8 %i.b, -128                        ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = zext i8 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = icmp eq i64 %3, 1
  br i1 %i.e, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not45 = icmp eq ptr %0, null
  br i1 %.not45, label %twos_complement.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not46 = icmp eq i8 %i.c, 0
  %i.f = load i8, ptr %2, align 1, !tbaa !18      ; 2 uses
  br i1 %.not46, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = sub i8 0, %i.f
  store i8 %i.g, ptr %0, align 1, !tbaa !18
  br label %twos_complement.exit

bb.i:                                             ; preds = %bb.g
  store i8 %i.f, ptr %0, align 1, !tbaa !18
  br label %twos_complement.exit

bb.j:                                             ; preds = %bb.e
  %i.h = load i8, ptr %2, align 1, !tbaa !18
  switch i8 %i.h, label %.thread [
    i8 0, label %.thread50
    i8 -1, label %.lr.ph.preheader
  ]

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.i = add i64 %3, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %3, 9
  br i1 %min.iters.check, label %.lr.ph.preheader61, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, -8                       ; 3 uses
  %i.j = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %wide.load = load <4 x i8>, ptr %i.l, align 1, !tbaa !18
  %wide.load60 = load <4 x i8>, ptr %i.m, align 1, !tbaa !18
  %i.n = zext <4 x i8> %wide.load to <4 x i32>
  %i.o = zext <4 x i8> %wide.load60 to <4 x i32>
  %i.p = or <4 x i32> %vec.phi, %i.n              ; 2 uses
  %i.q = or <4 x i32> %vec.phi59, %i.o            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader61

.lr.ph.preheader61:                               ; preds = %.lr.ph.preheader, %middle.block
  %.055.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.03454.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader61, %.lr.ph
  %.055 = phi i64 [ %i.x, %.lr.ph ], [ %.055.ph, %.lr.ph.preheader61 ] ; 2 uses
  %.03454 = phi i32 [ %i.w, %.lr.ph ], [ %.03454.ph, %.lr.ph.preheader61 ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.055
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = zext i8 %i.u to i32
  %i.w = or i32 %.03454, %i.v                     ; 2 uses
  %i.x = add nuw i64 %.055, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i32 [ %i.s, %middle.block ], [ %i.w, %.lr.ph ]
  %.not41.not = icmp eq i32 %.lcssa, 0
  br i1 %.not41.not, label %.thread, label %.thread50

.thread50:                                        ; preds = %bb.j, %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18
  %i.aa = and i8 %i.z, -128
  %i.ab = icmp eq i8 %i.c, %i.aa
  br i1 %i.ab, label %bb.k, label %.thread

bb.k:                                             ; preds = %.thread50
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @__func__.c2i_ibuf) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 221, ptr noundef null) #5
  br label %twos_complement.exit

.thread:                                          ; preds = %bb.j, %.thread50, %._crit_edge
  %.149.neg = phi i64 [ 0, %._crit_edge ], [ -1, %.thread50 ], [ 0, %bb.j ]
  %i.ac = add i64 %.149.neg, %3                   ; 8 uses
  %.not43 = icmp eq ptr %0, null
  br i1 %.not43, label %twos_complement.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread
  %sext = ashr i8 %i.b, 7                         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac ; 2 uses
  %i.af = lshr i8 %i.b, 7
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.ah = add nsw i64 %i.ac, -1
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 -1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = xor i8 %i.aj, %sext
  %i.al = zext i8 %i.ak to i32
  %i.am = add nuw nsw i32 %i.ag, %i.al            ; 2 uses
  %i.an = trunc i32 %i.am to i8
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -1 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !18
  %i.ap = lshr i32 %i.am, 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.021.i.unr = phi i32 [ %i.ag, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph.i.prol ]
  %.120.i.unr = phi ptr [ %i.ae, %.lr.ph.preheader.i ], [ %i.ao, %.lr.ph.i.prol ]
  %.01219.i.unr = phi i64 [ %i.ac, %.lr.ph.preheader.i ], [ %i.ah, %.lr.ph.i.prol ]
  %.11418.i.unr = phi ptr [ %i.ad, %.lr.ph.preheader.i ], [ %i.ai, %.lr.ph.i.prol ]
  %i.aq = icmp eq i64 %i.ac, 1
  br i1 %i.aq, label %twos_complement.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.021.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %.021.i.unr, %.lr.ph.i.prol.loopexit ]
  %.120.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.120.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.01219.i = phi i64 [ %i.az, %.lr.ph.i ], [ %.01219.i.unr, %.lr.ph.i.prol.loopexit ]
  %.11418.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %.11418.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.11418.i, i64 -1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
  %i.at = xor i8 %i.as, %sext
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %.021.i, %i.au          ; 2 uses
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds i8, ptr %.120.i, i64 -1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !18
  %i.ay = lshr i32 %i.av, 8
  %i.az = add i64 %.01219.i, -2                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.11418.i, i64 -2 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18
  %i.bc = xor i8 %i.bb, %sext
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.ay, %i.bd            ; 2 uses
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds i8, ptr %.120.i, i64 -2 ; 2 uses
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !18
  %i.bh = lshr i32 %i.be, 8
  %.not16.i.1 = icmp eq i64 %i.az, 0
  br i1 %.not16.i.1, label %twos_complement.exit, label %.lr.ph.i, !llvm.loop !0

twos_complement.exit:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.thread, %bb.f, %bb.i, %bb.h, %bb.k, %bb.b
  %.035 = phi i64 [ 0, %bb.b ], [ 1, %bb.f ], [ 0, %bb.k ], [ 1, %bb.h ], [ 1, %bb.i ], [ %i.ac, %.thread ], [ %i.ac, %.lr.ph.i ], [ %i.ac, %.lr.ph.i.prol.loopexit ]
  ret i64 %.035
}

declare ptr @ASN1_INTEGER_new() local_unnamed_addr #1

declare i32 @ASN1_STRING_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ASN1_INTEGER_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @d2i_ASN1_UINTEGER(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 0, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.e = icmp eq ptr %0, null                     ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call ptr @ASN1_INTEGER_new() #5     ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 2, ptr %i.j, align 4, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.024 = phi ptr [ %i.h, %bb.d ], [ %i.f, %bb.b ] ; 6 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !15
  store ptr %i.k, ptr %i.a, align 8, !tbaa !15
  %i.l = call i32 @ASN1_get_object(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %2) #5
  %i.m = and i32 %i.l, 128
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.c, align 4, !tbaa !24
  %.not32 = icmp eq i32 %i.n, 2
  br i1 %.not32, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = shl i64 %i.o, 32
  %sext = add i64 %i.q, 4294967296
  %i.r = ashr exact i64 %sext, 32
  %i.s = call noalias ptr @CRYPTO_malloc(i64 noundef %i.r, ptr noundef nonnull @.str, i32 noundef 448) #5 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.024, i64 4
  store i32 2, ptr %i.u, align 4, !tbaa !14
  %i.v = load i64, ptr %i.b, align 8, !tbaa !25   ; 4 uses
  %.not33 = icmp eq i64 %i.v, 0
  br i1 %.not33, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = icmp eq i8 %i.x, 0
  %i.z = icmp ne i64 %i.v, 1
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !15
  %i.ab = add nsw i64 %i.v, -1                    ; 2 uses
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = phi i64 [ %i.ab, %bb.k ], [ %i.v, %bb.j ] ; 3 uses
  %i.ad = phi ptr [ %i.aa, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %sext34 = shl i64 %i.ac, 32
  %i.ae = ashr exact i64 %sext34, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %i.ad, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ac
  store ptr %i.af, ptr %i.a, align 8, !tbaa !15
  %i.ag = trunc i64 %i.ac to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.ah = phi i32 [ %i.ag, %bb.l ], [ 0, %bb.i ]
  call void @ASN1_STRING_set0(ptr noundef nonnull %.024, ptr noundef nonnull %i.s, i32 noundef %i.ah) #5
  br i1 %i.e, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %.024, ptr %0, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !15
  store ptr %i.ai, ptr %1, align 8, !tbaa !15
  br label %bb.s

bb.p:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ 226, %bb.g ], [ 102, %bb.e ], [ 115, %bb.f ]
  call void @ERR_new() #5
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 468, ptr noundef nonnull @__func__.d2i_ASN1_UINTEGER) #5
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef %.0, ptr noundef null) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.p
  br i1 %i.e, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.aj = load ptr, ptr %0, align 8, !tbaa !23
  %.not37 = icmp eq ptr %i.aj, %.024
  br i1 %.not37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %.critedge
  call void @ASN1_INTEGER_free(ptr noundef nonnull %.024) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.c, %bb.o
  %.025 = phi ptr [ %.024, %bb.o ], [ null, %bb.c ], [ null, %bb.r ], [ null, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.025
}

declare i32 @ASN1_get_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @ASN1_STRING_set0(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_INTEGER_get_int64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @asn1_string_get_int64(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @asn1_string_get_int64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 2, 11) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 344, ptr noundef nonnull @__func__.asn1_string_get_int64) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 13, i32 noundef 786690, ptr noundef null) #5
  br label %asn1_get_int64.exit

end_hunk_0
