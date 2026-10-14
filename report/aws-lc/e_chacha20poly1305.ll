Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/e_chacha20poly1305?download=true
inline.NumInlined: 30
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cipher_chacha20_poly1305_do_cipher:bb.a
bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !33
  %i.ah = and i64 %i.ag, 15                       ; 2 uses
  %.not81 = icmp eq i64 %i.ah, 0
  br i1 %.not81, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = sub nuw nsw i64 16, %i.ah
  call void @CRYPTO_poly1305_update(ptr noundef nonnull %i.e, ptr noundef nonnull @cipher_chacha20_poly1305_do_cipher.padding.3, i64 noundef %i.ai) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 0, ptr %i.ad, align 4, !tbaa !34
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !35
  %i.am = and i64 %i.al, 15                       ; 2 uses
  %.not82 = icmp eq i64 %i.am, 0
  br i1 %.not82, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = sub nuw nsw i64 16, %i.am
  call void @CRYPTO_poly1305_update(ptr noundef nonnull %i.e, ptr noundef nonnull @cipher_chacha20_poly1305_do_cipher.padding.3, i64 noundef %i.an) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @CRYPTO_poly1305_update(ptr noundef nonnull %i.e, ptr noundef nonnull %i.aj, i64 noundef 16) #7
  %i.ao = call i32 @EVP_CIPHER_CTX_encrypting(ptr noundef nonnull %0) #7
  %.not83 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 129 ; 2 uses
  %i.aq = select i1 %.not83, ptr %i.b, ptr %i.ap
  call void @CRYPTO_poly1305_finish(ptr noundef nonnull %i.e, ptr noundef nonnull %i.aq) #7
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
  %.16.val5 = ptrtoaddr ptr %1 to i64
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %.16.val to i64            ; 2 uses
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
  %i.m = sub i64 %.16.val5, %i.a
  %diff.check = icmp ugt i64 %i.m, -32
  %i.n = add i64 %i.b, %i.i
  %i.o = sub i64 %i.a, %i.n
  %i.p = add i64 %i.o, -49
  %diff.check6 = icmp ult i64 %i.p, 31
  %conflict.rdx = or i1 %diff.check, %diff.check6
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp samesign ult i64 %umin, 31
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.l, 28
  %n.vec = and i64 %i.l, 96                       ; 7 uses
  %i.r = add nuw nsw i64 %n.vec, %i.i             ; 2 uses
  %i.s = sub i64 %2, %n.vec                       ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep8 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load9 = load <16 x i8>, ptr %i.v, align 1, !tbaa !13
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load10 = load <16 x i8>, ptr %gep, align 1, !tbaa !13
  %wide.load11 = load <16 x i8>, ptr %i.w, align 1, !tbaa !13
  %i.x = xor <16 x i8> %wide.load10, %wide.load
  %i.y = xor <16 x i8> %wide.load11, %wide.load9
  %i.z = getelementptr i8, ptr %next.gep8, i64 16
  store <16 x i8> %i.x, ptr %next.gep8, align 1, !tbaa !13
  store <16 x i8> %i.y, ptr %i.z, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %i.l, 124                    ; 6 uses
  %i.ab = add nuw nsw i64 %n.vec15, %i.i          ; 2 uses
  %i.ac = sub i64 %2, %n.vec15                    ; 2 uses
  %i.ad = getelementptr i8, ptr %1, i64 %n.vec15  ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec15  ; 2 uses
  %invariant.gep71 = getelementptr i8, ptr %i.h, i64 %i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 4 uses
  %next.gep17 = getelementptr i8, ptr %1, i64 %index16
  %next.gep18 = getelementptr i8, ptr %0, i64 %index16
  %wide.load19 = load <4 x i8>, ptr %next.gep17, align 1, !tbaa !13
  %gep72 = getelementptr i8, ptr %invariant.gep71, i64 %index16
  %wide.load20 = load <4 x i8>, ptr %gep72, align 1, !tbaa !13
  %i.af = xor <4 x i8> %wide.load20, %wide.load19
  store <4 x i8> %i.af, ptr %next.gep18, align 1, !tbaa !13
  %index.next21 = add nuw i64 %index16, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next21, %n.vec15
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.l, %n.vec15
  br i1 %cmp.n22, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.i, %iter.check ], [ %i.i, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.0683.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  %.0702.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ]
  %.0731.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.u, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.0683 = phi i64 [ %i.an, %vec.epilog.scalar.ph ], [ %.0683.ph, %vec.epilog.scalar.ph.preheader ]
  %.0702 = phi ptr [ %i.ah, %vec.epilog.scalar.ph ], [ %.0702.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0731 = phi ptr [ %i.am, %vec.epilog.scalar.ph ], [ %.0731.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0702, i64 1 ; 2 uses
  %i.ai = load i8, ptr %.0702, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = xor i8 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %.0731, i64 1 ; 2 uses
  store i8 %i.al, ptr %.0731, align 1, !tbaa !13
  %i.an = add i64 %.0683, -1                      ; 3 uses
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = icmp samesign ult i64 %indvars.iv, 63
  %i.aq = and i1 %i.ao, %i.ap
  br i1 %i.aq, label %vec.epilog.scalar.ph, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa4 = phi ptr [ %i.ad, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.ah, %vec.epilog.scalar.ph ]
  %indvars.iv.next.lcssa = phi i64 [ %i.ab, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %.lcssa3 = phi ptr [ %i.ae, %vec.epilog.middle.block ], [ %i.u, %middle.block ], [ %i.am, %vec.epilog.scalar.ph ]
  %.lcssa2 = phi i64 [ %i.ac, %vec.epilog.middle.block ], [ %i.s, %middle.block ], [ %i.an, %vec.epilog.scalar.ph ]
  %i.ar = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.073.lcssa = phi ptr [ %0, %.preheader ], [ %.lcssa3, %._crit_edge.loopexit ] ; 2 uses
  %.070.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa4, %._crit_edge.loopexit ] ; 2 uses
  %.068.lcssa = phi i64 [ %2, %.preheader ], [ %.lcssa2, %._crit_edge.loopexit ] ; 3 uses
  %.066.lcssa = phi i32 [ %i.d, %.preheader ], [ %i.ar, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.066.lcssa, ptr %i.c, align 4, !tbaa !23
  %i.as = icmp eq i64 %.068.lcssa, 0
  br i1 %i.as, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.at = icmp eq i32 %.066.lcssa, 64
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %.16.val, i64 32 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.174 = phi ptr [ %.073.lcssa, %bb.c ], [ %.073.lcssa, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.171 = phi ptr [ %.070.lcssa, %bb.c ], [ %.070.lcssa, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.169 = phi i64 [ %.068.lcssa, %bb.c ], [ %.068.lcssa, %bb.b ], [ %2, %bb.a ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.16.val, i64 116 ; 2 uses
  %i.ay = trunc i64 %.169 to i32
  %i.az = and i32 %i.ay, 63                       ; 2 uses
  %i.ba = and i64 %.169, -64                      ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.16.val, i64 32 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !17 ; 2 uses
  %.not808 = icmp eq i64 %i.ba, 0
  br i1 %.not808, label %._crit_edge15, label %.lr.ph14

.lr.ph14:                                         ; preds = %bb.d, %.lr.ph14
  %i.bd = phi i32 [ %spec.select, %.lr.ph14 ], [ %i.bc, %bb.d ] ; 2 uses
  %.211 = phi i64 [ %i.bl, %.lr.ph14 ], [ %i.ba, %bb.d ] ; 2 uses
  %.27210 = phi ptr [ %i.bm, %.lr.ph14 ], [ %.171, %bb.d ] ; 2 uses
  %.2759 = phi ptr [ %i.bn, %.lr.ph14 ], [ %.174, %bb.d ] ; 2 uses
  %i.be = lshr exact i64 %.211, 6
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.be, i64 268435456) ; 3 uses
  %i.bf = trunc nuw nsw i64 %spec.store.select to i32
  %i.bg = add i32 %i.bd, %i.bf                    ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = icmp samesign ugt i64 %spec.store.select, %i.bh ; 2 uses
  %spec.select = select i1 %i.bi, i32 0, i32 %i.bg ; 3 uses
  %i.bj = select i1 %i.bi, i64 %i.bh, i64 0
  %spec.select82 = sub nuw nsw i64 %spec.store.select, %i.bj
  %i.bk = shl nuw nsw i64 %spec.select82, 6       ; 4 uses
  tail call void @CRYPTO_chacha_20(ptr noundef %.2759, ptr noundef %.27210, i64 noundef %i.bk, ptr noundef nonnull %.16.val, ptr noundef nonnull %i.ax, i32 noundef %i.bd) #7
  %i.bl = sub i64 %.211, %i.bk                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.27210, i64 %i.bk ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.2759, i64 %i.bk ; 2 uses
  store i32 %spec.select, ptr %i.bb, align 4, !tbaa !17
  %.not80 = icmp eq i64 %i.bl, 0
  br i1 %.not80, label %._crit_edge15, label %.lr.ph14, !llvm.loop !42

._crit_edge15:                                    ; preds = %.lr.ph14, %bb.d
  %i.bo = phi i32 [ %i.bc, %bb.d ], [ %spec.select, %.lr.ph14 ]
  %.275.lcssa = phi ptr [ %.174, %bb.d ], [ %i.bn, %.lr.ph14 ] ; 8 uses
  %.272.lcssa = phi ptr [ %.171, %bb.d ], [ %i.bm, %.lr.ph14 ] ; 8 uses
  %.275.lcssa28 = ptrtoaddr ptr %.275.lcssa to i64 ; 2 uses
  %.272.lcssa29 = ptrtoaddr ptr %.272.lcssa to i64
  %.not81 = icmp eq i32 %i.az, 0
  br i1 %.not81, label %bb.e, label %iter.check48

iter.check48:                                     ; preds = %._crit_edge15
  %i.bp = getelementptr inbounds nuw i8, ptr %.16.val, i64 48 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bp, i8 0, i64 64, i1 false)
  tail call void @CRYPTO_chacha_20(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.bp, i64 noundef 64, ptr noundef nonnull %.16.val, ptr noundef nonnull %i.ax, i32 noundef %i.bo) #7
  %wide.trip.count = and i64 %.169, 63            ; 6 uses
  %min.iters.check33 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check33, label %vec.epilog.scalar.ph49.preheader, label %vector.memcheck27

vector.memcheck27:                                ; preds = %iter.check48
  %i.bq = sub i64 %.272.lcssa29, %.275.lcssa28
  %diff.check30 = icmp ugt i64 %i.bq, -16
  %i.br = sub i64 %.275.lcssa28, %i.b
  %i.bs = add i64 %i.br, -49
  %diff.check31 = icmp ult i64 %i.bs, 15
  %conflict.rdx32 = or i1 %diff.check30, %diff.check31
  br i1 %conflict.rdx32, label %vec.epilog.scalar.ph49.preheader, label %vector.main.loop.iter.check34

vector.main.loop.iter.check34:                    ; preds = %vector.memcheck27
  %min.iters.check35 = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check35, label %vec.epilog.ph52, label %vector.ph36

vector.ph36:                                      ; preds = %vector.main.loop.iter.check34
  %i.bt = and i64 %.169, 12
  %n.vec37 = and i64 %.169, 48                    ; 4 uses
  br label %vector.body38

vector.body38:                                    ; preds = %vector.ph36, %vector.body38
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next44, %vector.body38 ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %index39 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %wide.load40 = load <8 x i8>, ptr %i.bu, align 1, !tbaa !13
  %wide.load41 = load <8 x i8>, ptr %i.bv, align 1, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %index39 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %wide.load42 = load <8 x i8>, ptr %i.bw, align 1, !tbaa !13
  %wide.load43 = load <8 x i8>, ptr %i.bx, align 1, !tbaa !13
  %i.by = xor <8 x i8> %wide.load42, %wide.load40
  %i.bz = xor <8 x i8> %wide.load43, %wide.load41
  %i.ca = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %index39 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store <8 x i8> %i.by, ptr %i.ca, align 1, !tbaa !13
  store <8 x i8> %i.bz, ptr %i.cb, align 1, !tbaa !13
  %index.next44 = add nuw i64 %index39, 16        ; 2 uses
  %i.cc = icmp eq i64 %index.next44, %n.vec37
  br i1 %i.cc, label %middle.block45, label %vector.body38, !llvm.loop !43

middle.block45:                                   ; preds = %vector.body38
  %cmp.n46 = icmp eq i64 %wide.trip.count, %n.vec37
  br i1 %cmp.n46, label %.loopexit, label %vec.epilog.iter.check50

vec.epilog.iter.check50:                          ; preds = %middle.block45
  %min.epilog.iters.check51 = icmp eq i64 %i.bt, 0
  br i1 %min.epilog.iters.check51, label %vec.epilog.scalar.ph49.preheader, label %vec.epilog.ph52, !prof !14

vec.epilog.ph52:                                  ; preds = %vector.main.loop.iter.check34, %vec.epilog.iter.check50
  %vec.epilog.resume.val47 = phi i64 [ %n.vec37, %vec.epilog.iter.check50 ], [ 0, %vector.main.loop.iter.check34 ]
  %n.vec53 = and i64 %.169, 60                    ; 3 uses
  br label %vec.epilog.vector.body54

vec.epilog.vector.body54:                         ; preds = %vec.epilog.vector.body54, %vec.epilog.ph52
  %index55 = phi i64 [ %vec.epilog.resume.val47, %vec.epilog.ph52 ], [ %index.next58, %vec.epilog.vector.body54 ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %index55
  %wide.load56 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 %index55
  %wide.load57 = load <4 x i8>, ptr %i.ce, align 1, !tbaa !13
  %i.cf = xor <4 x i8> %wide.load57, %wide.load56
  %i.cg = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %index55
  store <4 x i8> %i.cf, ptr %i.cg, align 1, !tbaa !13
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.ch = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.ch, label %vec.epilog.middle.block59, label %vec.epilog.vector.body54, !llvm.loop !44

vec.epilog.middle.block59:                        ; preds = %vec.epilog.vector.body54
  %cmp.n60 = icmp eq i64 %wide.trip.count, %n.vec53
  br i1 %cmp.n60, label %.loopexit, label %vec.epilog.scalar.ph49.preheader

vec.epilog.scalar.ph49.preheader:                 ; preds = %iter.check48, %vector.memcheck27, %vec.epilog.iter.check50, %vec.epilog.middle.block59
  %indvars.iv25.ph = phi i64 [ 0, %iter.check48 ], [ 0, %vector.memcheck27 ], [ %n.vec37, %vec.epilog.iter.check50 ], [ %n.vec53, %vec.epilog.middle.block59 ] ; 3 uses
  %xtraiter = and i64 %.169, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph49.prol.loopexit, label %vec.epilog.scalar.ph49.prol

vec.epilog.scalar.ph49.prol:                      ; preds = %vec.epilog.scalar.ph49.preheader, %vec.epilog.scalar.ph49.prol
  %indvars.iv25.prol = phi i64 [ %indvars.iv.next26.prol, %vec.epilog.scalar.ph49.prol ], [ %indvars.iv25.ph, %vec.epilog.scalar.ph49.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph49.prol ], [ 0, %vec.epilog.scalar.ph49.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv25.prol
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv25.prol
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = xor i8 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv25.prol
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !13
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph49.prol.loopexit, label %vec.epilog.scalar.ph49.prol, !llvm.loop !45

vec.epilog.scalar.ph49.prol.loopexit:             ; preds = %vec.epilog.scalar.ph49.prol, %vec.epilog.scalar.ph49.preheader
  %indvars.iv25.unr = phi i64 [ %indvars.iv25.ph, %vec.epilog.scalar.ph49.preheader ], [ %indvars.iv.next26.prol, %vec.epilog.scalar.ph49.prol ]
  %i.co = sub nsw i64 %indvars.iv25.ph, %wide.trip.count
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %.loopexit, label %vec.epilog.scalar.ph49

vec.epilog.scalar.ph49:                           ; preds = %vec.epilog.scalar.ph49.prol.loopexit, %vec.epilog.scalar.ph49
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.3, %vec.epilog.scalar.ph49 ], [ %indvars.iv25.unr, %vec.epilog.scalar.ph49.prol.loopexit ] ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv25
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv25
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = xor i8 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv25
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !13
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv.next26
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next26
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = xor i8 %i.cz, %i.cx
  %i.db = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next26
  store i8 %i.da, ptr %i.db, align 1, !tbaa !13
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 2 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv.next26.1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next26.1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !13
  %i.dg = xor i8 %i.df, %i.dd
  %i.dh = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next26.1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !13
  %indvars.iv.next26.2 = add nuw nsw i64 %indvars.iv25, 3 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.272.lcssa, i64 %indvars.iv.next26.2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next26.2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13
  %i.dm = xor i8 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %.275.lcssa, i64 %indvars.iv.next26.2
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !13
  %indvars.iv.next26.3 = add nuw nsw i64 %indvars.iv25, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next26.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph49, !llvm.loop !46

.loopexit:                                        ; preds = %vec.epilog.scalar.ph49.prol.loopexit, %vec.epilog.scalar.ph49, %vec.epilog.middle.block59, %middle.block45
  store i32 %i.az, ptr %i.c, align 4, !tbaa !23
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
end_hunk_0
