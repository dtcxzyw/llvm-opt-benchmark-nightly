Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/e_chacha20poly1305?download=true
inline.NumInlined: 30
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cipher_chacha20_poly1305_do_cipher:bb.a
  store i32 0, ptr %i.f, align 8, !tbaa !26
  %i.ar = call i32 @EVP_CIPHER_CTX_encrypting(ptr noundef nonnull %0) #7
  %.not84 = icmp eq i32 %i.ar, 0
  br i1 %.not84, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.at = load i8, ptr %i.as, align 8, !tbaa !27
  %i.au = zext i8 %i.at to i64
  %i.av = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ap, i64 noundef %i.au) #7
  %.not85 = icmp eq i32 %i.av, 0
  br i1 %.not85, label %.critedge, label %bb.u

.critedge:                                        ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.w

bb.v:                                             ; preds = %bb.k, %bb.l, %.critedge
  %i.aw = trunc i64 %3 to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.e
  %.1 = phi i32 [ %i.q, %bb.e ], [ %i.aw, %bb.v ], [ -1, %bb.u ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @cipher_chacha20_poly1305_cleanup(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 688) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @cipher_chacha20_poly1305_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 9 uses
  switch i32 %1, label %OPENSSL_memcpy.exit [
    i32 0, label %bb.b
    i32 8, label %bb.f
    i32 9, label %bb.i
    i32 16, label %bb.j
    i32 17, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38
  %i.g = zext i32 %i.f to i64
  %i.h = tail call ptr @OPENSSL_zalloc(i64 noundef %i.g) #7 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !21
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %OPENSSL_memcpy.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str, i32 noundef 660) #7
  br label %OPENSSL_memcpy.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 0, ptr %i.k, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  br label %OPENSSL_memcpy.exit

bb.f:                                             ; preds = %bb.a
  %.not44 = icmp eq ptr %i.b, null
  br i1 %.not44, label %OPENSSL_memcpy.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26
  %.not45 = icmp eq i32 %i.m, 0
  br i1 %.not45, label %OPENSSL_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 0, %i.v
  %i.x = and i64 %i.w, 63
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(449) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(449) %i.r, i64 449, i1 false)
  br label %OPENSSL_memcpy.exit

bb.i:                                             ; preds = %bb.a
  %.not43 = icmp eq i32 %2, 12
  %. = zext i1 %.not43 to i32
  br label %OPENSSL_memcpy.exit

bb.j:                                             ; preds = %bb.a
  %i.z = add i32 %2, -17
  %or.cond = icmp ult i32 %i.z, -16
  br i1 %or.cond, label %OPENSSL_memcpy.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call i32 @EVP_CIPHER_CTX_encrypting(ptr noundef nonnull %0) #7
  %.not42 = icmp eq i32 %i.aa, 0
  br i1 %.not42, label %OPENSSL_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  %i.ac = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull readonly align 1 %i.ab, i64 range(i64 0, 450) %i.ac, i1 false)
  br label %OPENSSL_memcpy.exit

bb.m:                                             ; preds = %bb.a
  %i.ad = add i32 %2, -17
  %or.cond3 = icmp ult i32 %i.ad, -16
  br i1 %or.cond3, label %OPENSSL_memcpy.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = tail call i32 @EVP_CIPHER_CTX_encrypting(ptr noundef nonnull %0) #7
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.o, label %OPENSSL_memcpy.exit

bb.o:                                             ; preds = %bb.n
  %.not41 = icmp eq ptr %3, null
  br i1 %.not41, label %OPENSSL_memcpy.exit, label %OPENSSL_memcpy.exit46

OPENSSL_memcpy.exit46:                            ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  %i.ag = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %3, i64 range(i64 0, 450) %i.ag, i1 false)
  %i.ah = trunc nuw nsw i32 %2 to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 %i.ah, ptr %i.ai, align 8, !tbaa !27
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.l, %bb.a, %bb.o, %OPENSSL_memcpy.exit46, %bb.m, %bb.n, %bb.j, %bb.k, %bb.i, %bb.f, %bb.g, %bb.h, %bb.e, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.o ], [ 0, %bb.d ], [ 0, %bb.m ], [ 1, %bb.e ], [ %., %bb.i ], [ 1, %bb.f ], [ 1, %bb.g ], [ -1, %bb.a ], [ 0, %bb.j ], [ 1, %bb.c ], [ 1, %bb.h ], [ 0, %bb.k ], [ 0, %bb.n ], [ 1, %OPENSSL_memcpy.exit46 ], [ 1, %bb.l ]
  ret i32 %.0
}

declare i32 @EVP_CIPHER_CTX_encrypting(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cipher_chacha20_do_cipher(ptr %.16.val, ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %.16.val7 = ptrtoaddr ptr %.16.val to i64       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.16.val, i64 112 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 4 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = icmp ne i64 %2, 0
  %i.f = icmp ult i32 %i.d, 64
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.16.val, i64 48 ; 3 uses
  %i.i = zext nneg i32 %i.d to i64                ; 8 uses
  %i.j = add i64 %2, -1
  %i.k = sub nuw nsw i64 63, %i.i
  %umin = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k) ; 3 uses
  %i.l = add nuw nsw i64 %umin, 1                 ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = add i64 %.16.val7, %i.i
  %i.o = sub i64 %i.a, %i.n
  %i.p = add i64 %i.o, -49
  %diff.check8 = icmp ult i64 %i.p, 31
  %conflict.rdx = or i1 %diff.check, %diff.check8
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %3 = and i64 %i.l, 28
  %n.vec = and i64 %i.l, 96                       ; 7 uses
  %4 = add nuw nsw i64 %n.vec, %i.i               ; 2 uses
  %5 = sub i64 %2, %n.vec                         ; 2 uses
  %6 = getelementptr i8, ptr %1, i64 %n.vec       ; 2 uses
  %7 = getelementptr i8, ptr %0, i64 %n.vec       ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep10 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load11 = load <16 x i8>, ptr %i.q, align 1, !tbaa !13
  %gep.a = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %gep.a, i64 16
  %wide.load12 = load <16 x i8>, ptr %gep.a, align 1, !tbaa !13
  %wide.load13 = load <16 x i8>, ptr %i.r, align 1, !tbaa !13
  %i.s = xor <16 x i8> %wide.load12, %wide.load
  %i.t = xor <16 x i8> %wide.load13, %wide.load11
  %i.u = getelementptr i8, ptr %next.gep10, i64 16
  store <16 x i8> %i.s, ptr %next.gep10, align 1, !tbaa !13
  store <16 x i8> %i.t, ptr %i.u, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.l, 124                    ; 6 uses
  %i.w = add nuw nsw i64 %n.vec14, %i.i           ; 2 uses
  %i.x = sub i64 %2, %n.vec14                     ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %n.vec14   ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %n.vec14   ; 2 uses
  %invariant.gep76 = getelementptr i8, ptr %i.h, i64 %i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 4 uses
  %next.gep16 = getelementptr i8, ptr %1, i64 %index15
  %next.gep17 = getelementptr i8, ptr %0, i64 %index15
  %wide.load18 = load <4 x i8>, ptr %next.gep16, align 1, !tbaa !13
  %gep77 = getelementptr i8, ptr %invariant.gep76, i64 %index15
  %wide.load19 = load <4 x i8>, ptr %gep77, align 1, !tbaa !13
  %i.aa = xor <4 x i8> %wide.load19, %wide.load18
  store <4 x i8> %i.aa, ptr %next.gep17, align 1, !tbaa !13
  %index.next20 = add nuw i64 %index15, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next20, %n.vec14
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %i.l, %n.vec14
  br i1 %cmp.n21, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.i, %iter.check ], [ %i.i, %vector.memcheck ], [ %4, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  %.0683.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.0702.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %6, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ]
  %.0731.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %7, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.0683 = phi i64 [ %i.ai, %vec.epilog.scalar.ph ], [ %.0683.ph, %vec.epilog.scalar.ph.preheader ]
  %.0702 = phi ptr [ %i.ac, %vec.epilog.scalar.ph ], [ %.0702.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0731 = phi ptr [ %i.ah, %vec.epilog.scalar.ph ], [ %.0731.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0702, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.0702, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = xor i8 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.0731, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.0731, align 1, !tbaa !13
  %i.ai = add i64 %.0683, -1                      ; 3 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = icmp samesign ult i64 %indvars.iv, 63
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa4 = phi ptr [ %i.y, %vec.epilog.middle.block ], [ %6, %middle.block ], [ %i.ac, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.w, %vec.epilog.middle.block ], [ %4, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa3 = phi ptr [ %i.z, %vec.epilog.middle.block ], [ %7, %middle.block ], [ %i.ah, %vec.epilog.scalar.ph ]
  %.lcssa2 = phi i64 [ %i.x, %vec.epilog.middle.block ], [ %5, %middle.block ], [ %i.ai, %vec.epilog.scalar.ph ]
  %i.am = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.073.lcssa = phi ptr [ %0, %.preheader ], [ %.lcssa3, %._crit_edge.loopexit ] ; 2 uses
  %.070.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa4, %._crit_edge.loopexit ] ; 2 uses
  %.068.lcssa = phi i64 [ %2, %.preheader ], [ %.lcssa2, %._crit_edge.loopexit ] ; 3 uses
  %.066.lcssa = phi i32 [ %i.d, %.preheader ], [ %i.am, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.066.lcssa, ptr %i.c, align 4, !tbaa !23
  %i.an = icmp eq i64 %.068.lcssa, 0
  br i1 %i.an, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ao = icmp eq i32 %.066.lcssa, 64
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %.16.val, i64 32 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !17
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.174 = phi ptr [ %.073.lcssa, %bb.c ], [ %.073.lcssa, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.171 = phi ptr [ %.070.lcssa, %bb.c ], [ %.070.lcssa, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.169 = phi i64 [ %.068.lcssa, %bb.c ], [ %.068.lcssa, %bb.b ], [ %2, %bb.a ] ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.16.val, i64 116 ; 2 uses
  %i.at = trunc i64 %.169 to i32
  %i.au = and i32 %i.at, 63                       ; 2 uses
  %i.av = and i64 %.169, -64                      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.16.val, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !17 ; 2 uses
  %.not808 = icmp eq i64 %i.av, 0
  br i1 %.not808, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.d, %.lr.ph14
  %i.ay = phi i32 [ %spec.select, %.lr.ph14 ], [ %i.ax, %bb.d ] ; 2 uses
  %.211 = phi i64 [ %i.bg, %.lr.ph14 ], [ %i.av, %bb.d ] ; 2 uses
  %.27210 = phi ptr [ %i.bh, %.lr.ph14 ], [ %.171, %bb.d ] ; 2 uses
  %.2759 = phi ptr [ %i.bi, %.lr.ph14 ], [ %.174, %bb.d ] ; 2 uses
  %i.az = lshr exact i64 %.211, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.az, i64 268435456) ; 3 uses
  %i.ba = trunc nuw nsw i64 %spec.store.select to i32
  %i.bb = add i32 %i.ay, %i.ba                    ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp samesign ugt i64 %spec.store.select, %i.bc ; 2 uses
  %spec.select = select i1 %i.bd, i32 0, i32 %i.bb ; 3 uses
  %i.be = select i1 %i.bd, i64 %i.bc, i64 0
  %spec.select82 = sub nuw nsw i64 %spec.store.select, %i.be
  %i.bf = shl nuw nsw i64 %spec.select82, 6       ; 4 uses
  tail call void @CRYPTO_chacha_20(ptr noundef %.2759, ptr noundef %.27210, i64 noundef %i.bf, ptr noundef nonnull %.16.val, ptr noundef nonnull %i.as, i32 noundef %i.ay) #7
  %i.bg = sub i64 %.211, %i.bf                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.27210, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.2759, i64 %i.bf ; 2 uses
  store i32 %spec.select, ptr %i.aw, align 4, !tbaa !17
  %.not80 = icmp eq i64 %i.bg, 0
  br i1 %.not80, label %._crit_edge15, label %.lr.ph14, !llvm.loop !42

._crit_edge15:                                    ; preds = %.lr.ph14, %bb.d
  %i.bj = phi i32 [ %i.ax, %bb.d ], [ %spec.select, %.lr.ph14 ]
  %.275.lcssa = phi ptr [ %.174, %bb.d ], [ %i.bi, %.lr.ph14 ] ; 8 uses
  %.272.lcssa = phi ptr [ %.171, %bb.d ], [ %i.bh, %.lr.ph14 ] ; 8 uses
  %.272.lcssa31 = ptrtoaddr ptr %.272.lcssa to i64
  %.275.lcssa32 = ptrtoaddr ptr %.275.lcssa to i64 ; 2 uses
  %.not81 = icmp eq i32 %i.au, 0
  br i1 %.not81, label %bb.e, label %iter.check51

iter.check51:                                     ; preds = %._crit_edge15
  %i.bk = getelementptr inbounds nuw i8, ptr %.16.val, i64 48 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bk, i8 0, i64 64, i1 false)
  tail call void @CRYPTO_chacha_20(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bk, i64 noundef 64, ptr noundef nonnull %.16.val, ptr noundef nonnull %i.as, i32 noundef %i.bj) #7
  %wide.trip.count = and i64 %.169, 63            ; 6 uses
  %min.iters.check33 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check33, label %vec.epilog.scalar.ph53.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %iter.check51
  %i.bl = sub i64 %.272.lcssa31, %.275.lcssa32
  %diff.check35 = icmp ugt i64 %i.bl, -16
  %i.bm = sub i64 %.275.lcssa32, %.16.val7
  %i.bn = add i64 %i.bm, -49
  %diff.check36 = icmp ult i64 %i.bn, 15
  %conflict.rdx37 = or i1 %diff.check35, %diff.check36
  br i1 %conflict.rdx37, label %vec.epilog.scalar.ph53.preheader, label %vector.main.loop.iter.check38

vector.main.loop.iter.check38:                    ; preds = %vector.memcheck34
  %min.iters.check39 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check39, label %vec.epilog.ph55, label %vector.ph40

vector.ph40:                                      ; preds = %vector.main.loop.iter.check38
  %i.bo = and i64 %.169, 12
  %n.vec41 = and i64 %.169, 48                    ; 4 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.ph40, %vector.body42
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next48, %vector.body42 ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %index43 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %wide.load44 = load <8 x i8>, ptr %i.bp, align 1, !tbaa !13
  %wide.load45 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index43 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %wide.load46 = load <8 x i8>, ptr %i.br, align 1, !tbaa !13
  %wide.load47 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !13
  %i.bt = xor <8 x i8> %wide.load46, %wide.load44
  %i.bu = xor <8 x i8> %wide.load47, %wide.load45
  %i.bv = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %index43 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store <8 x i8> %i.bt, ptr %i.bv, align 1, !tbaa !13
  store <8 x i8> %i.bu, ptr %i.bw, align 1, !tbaa !13
  %index.next48 = add nuw i64 %index43, 16        ; 2 uses
  %i.bx = icmp eq i64 %index.next48, %n.vec41
  br i1 %i.bx, label %middle.block49, label %vector.body42, !llvm.loop !43

middle.block49:                                   ; preds = %vector.body42
  %cmp.n50 = icmp eq i64 %wide.trip.count, %n.vec41
  br i1 %cmp.n50, label %.loopexit, label %vec.epilog.iter.check52

vec.epilog.iter.check52:                          ; preds = %middle.block49
  %min.epilog.iters.check54 = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check54, label %vec.epilog.scalar.ph53.preheader, label %vec.epilog.ph55, !prof !14

vec.epilog.ph55:                                  ; preds = %vector.main.loop.iter.check38, %vec.epilog.iter.check52
  %vec.epilog.resume.val56 = phi i64 [ %n.vec41, %vec.epilog.iter.check52 ], [ 0, %vector.main.loop.iter.check38 ]
  %n.vec57 = and i64 %.169, 60                    ; 3 uses
  br label %vec.epilog.vector.body58

vec.epilog.vector.body58:                         ; preds = %vec.epilog.vector.body58, %vec.epilog.ph55
  %index59 = phi i64 [ %vec.epilog.resume.val56, %vec.epilog.ph55 ], [ %index.next62, %vec.epilog.vector.body58 ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %index59
  %wide.load60 = load <4 x i8>, ptr %i.by, align 1, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index59
  %wide.load61 = load <4 x i8>, ptr %i.bz, align 1, !tbaa !13
  %i.ca = xor <4 x i8> %wide.load61, %wide.load60
  %i.cb = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %index59
  store <4 x i8> %i.ca, ptr %i.cb, align 1, !tbaa !13
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.cc, label %vec.epilog.middle.block63, label %vec.epilog.vector.body58, !llvm.loop !44

vec.epilog.middle.block63:                        ; preds = %vec.epilog.vector.body58
  %cmp.n64 = icmp eq i64 %wide.trip.count, %n.vec57
  br i1 %cmp.n64, label %.loopexit, label %vec.epilog.scalar.ph53.preheader

vec.epilog.scalar.ph53.preheader:                 ; preds = %iter.check51, %vector.memcheck34, %vec.epilog.iter.check52, %vec.epilog.middle.block63
  %indvars.iv25.ph = phi i64 [ 0, %iter.check51 ], [ 0, %vector.memcheck34 ], [ %n.vec41, %vec.epilog.iter.check52 ], [ %n.vec57, %vec.epilog.middle.block63 ] ; 3 uses
  %xtraiter = and i64 %.169, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph53.prol.loopexit, label %vec.epilog.scalar.ph53.prol

vec.epilog.scalar.ph53.prol:                      ; preds = %vec.epilog.scalar.ph53.preheader, %vec.epilog.scalar.ph53.prol
  %indvars.iv25.prol = phi i64 [ %indvars.iv.next26.prol, %vec.epilog.scalar.ph53.prol ], [ %indvars.iv25.ph, %vec.epilog.scalar.ph53.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph53.prol ], [ 0, %vec.epilog.scalar.ph53.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv25.prol
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv25.prol
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = xor i8 %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv25.prol
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !13
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph53.prol.loopexit, label %vec.epilog.scalar.ph53.prol, !llvm.loop !45

vec.epilog.scalar.ph53.prol.loopexit:             ; preds = %vec.epilog.scalar.ph53.prol, %vec.epilog.scalar.ph53.preheader
  %indvars.iv25.unr = phi i64 [ %indvars.iv25.ph, %vec.epilog.scalar.ph53.preheader ], [ %indvars.iv.next26.prol, %vec.epilog.scalar.ph53.prol ]
  %i.cj = sub nsw i64 %indvars.iv25.ph, %wide.trip.count
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %.loopexit, label %vec.epilog.scalar.ph53

vec.epilog.scalar.ph53:                           ; preds = %vec.epilog.scalar.ph53.prol.loopexit, %vec.epilog.scalar.ph53
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.3, %vec.epilog.scalar.ph53 ], [ %indvars.iv25.unr, %vec.epilog.scalar.ph53.prol.loopexit ] ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv25
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv25
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = xor i8 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv25
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !13
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv.next26
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next26
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = xor i8 %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next26
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !13
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 2 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv.next26.1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next26.1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.db = xor i8 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next26.1
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !13
  %indvars.iv.next26.2 = add nuw nsw i64 %indvars.iv25, 3 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv.next26.2
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next26.2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = xor i8 %i.dg, %i.de
  %i.di = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next26.2
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !13
  %indvars.iv.next26.3 = add nuw nsw i64 %indvars.iv25, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next26.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph53, !llvm.loop !46

.loopexit:                                        ; preds = %vec.epilog.scalar.ph53.prol.loopexit, %vec.epilog.scalar.ph53, %vec.epilog.middle.block63, %middle.block49
  store i32 %i.au, ptr %i.c, align 4, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge15, %.loopexit, %._crit_edge
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_zalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS11evp_aead_st", !8, i64 0}
!10 = !{!"evp_aead_ctx_st", !9, i64 0, !4, i64 8, !4, i64 576, !4, i64 577}
!11 = !{!10, !4, i64 577}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!4, !4, i64 0}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!5, !5, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"p1 _ZTS13evp_cipher_st", !8, i64 0}
!20 = !{!"evp_cipher_ctx_st", !19, i64 0, !8, i64 8, !8, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !4, i64 36, !4, i64 52, !4, i64 68, !5, i64 100, !5, i64 104, !5, i64 108, !4, i64 112, !5, i64 144}
!21 = !{!20, !8, i64 16}
!22 = !{!"", !4, i64 0, !4, i64 32, !4, i64 48, !5, i64 112}
!23 = !{!22, !5, i64 112}
!24 = !{!"", !18, i64 0, !18, i64 8}
!25 = !{!"cipher_chacha_poly_ctx", !22, i64 0, !4, i64 116, !4, i64 128, !4, i64 129, !24, i64 152, !5, i64 168, !5, i64 172, !4, i64 176}
!26 = !{!25, !5, i64 168}
!27 = !{!25, !4, i64 128}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12, !15, !16}
!30 = distinct !{!30, !12, !15}
!31 = !{!18, !18, i64 0}
!32 = !{!25, !5, i64 112}
!33 = !{!25, !18, i64 152}
!34 = !{!25, !5, i64 172}
!35 = !{!25, !18, i64 160}
!36 = !{!20, !19, i64 0}
!37 = !{!"evp_cipher_st", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!38 = !{!37, !5, i64 16}
!39 = distinct !{!39, !12, !15, !16}
!40 = distinct !{!40, !12, !15, !16}
!41 = distinct !{!41, !12, !15}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12, !15, !16}
!44 = distinct !{!44, !12, !15, !16}
!45 = distinct !{!45, !48}
!46 = distinct !{!46, !12, !15}
!47 = !{!"branch_weights", i32 4, i32 28}
!48 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
