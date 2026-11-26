Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6926
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@CMAC_Init:bb.a

bb.j:                                             ; preds = %bb.h
  %i.de = shl i8 %i.ao, 1                         ; 2 uses
  %isneg.i28 = icmp slt i8 %i.p, 0
  %i.df = select i1 %isneg.i28, i8 27, i8 0
  %i.dg = xor i8 %i.de, %i.df                     ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !78
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dj = call i8 @llvm.fshl.i8(i8 %i.s, i8 %i.v, i8 1)
  store i8 %i.dj, ptr %i.di, align 8, !tbaa !78
  %i.dk = call i8 @llvm.fshl.i8(i8 %i.v, i8 %i.z, i8 1)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !78
  %i.dm = call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ad, i8 1)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.dm, ptr %i.dn, align 2, !tbaa !78
  %i.do = call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.ah, i8 1)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !78
  %i.dq = call i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.al, i8 1)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.dq, ptr %i.dr, align 4, !tbaa !78
  %i.ds = call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.ap, i8 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !78
  %i.du = call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.de, i8 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink43 = phi i64 [ 174, %bb.j ], [ 182, %bb.i ]
  %.sink41 = phi i8 [ %i.du, %bb.j ], [ %i.dd, %bb.i ]
  %.sink40 = phi i8 [ %i.dg, %bb.j ], [ %i.bz, %bb.i ]
  %.sink = phi i8 [ 27, %bb.j ], [ -121, %bb.i ]
  %.sink37 = phi i64 [ 175, %bb.j ], [ 183, %bb.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink43
  store i8 %.sink41, ptr %i.dv, align 1, !tbaa !78
  %i.dw = shl i8 %.sink40, 1
  %isneg.i29 = icmp slt i8 %i.s, 0
  %i.dx = select i1 %isneg.i29, i8 %.sink, i8 0
  %i.dy = xor i8 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink37
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !78
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ea, align 8, !tbaa !192
  br label %EVP_CIPHER_block_size.exit.thread

EVP_CIPHER_block_size.exit.thread:                ; preds = %bb.f, %bb.d, %bb.a, %EVP_CIPHER_block_size.exit, %EVP_CIPHER_key_length.exit, %bb.b, %EVP_Cipher.exit, %bb.g, %bb.k
  %.0 = phi i32 [ 0, %EVP_CIPHER_block_size.exit ], [ 0, %EVP_CIPHER_key_length.exit ], [ 1, %bb.k ], [ 0, %bb.g ], [ 0, %EVP_Cipher.exit ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CMAC_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !165    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !182
  %i.e = zext i32 %i.d to i64                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !192  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 %i.e, %i.h
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = icmp eq i64 %spec.select, 0
  br i1 %i.k, label %OPENSSL_memcpy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %1, i64 %spec.select, i1 false)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !192
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.g, %bb.b ], [ %.pre, %bb.c ]
  %i.n = sub nuw i64 %2, %spec.select             ; 2 uses
  %i.o = trunc i64 %spec.select to i32
  %i.p = add i32 %i.m, %i.o
  store i32 %i.p, ptr %i.f, align 8, !tbaa !192
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %.thread, label %EVP_Cipher.exit

EVP_Cipher.exit:                                  ; preds = %OPENSSL_memcpy.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !183
  %i.u = call i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, i64 noundef %i.e) #46, !inline_history !193
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %.thread, label %bb.d

bb.d:                                             ; preds = %EVP_Cipher.exit, %bb.a
  %.041 = phi ptr [ %1, %bb.a ], [ %i.r, %EVP_Cipher.exit ] ; 2 uses
  %.039 = phi i64 [ %2, %bb.a ], [ %i.n, %EVP_Cipher.exit ] ; 3 uses
  %i.v = icmp ugt i64 %.039, %i.e
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.14064 = phi i64 [ %i.ab, %bb.e ], [ %.039, %bb.d ]
  %.14263 = phi ptr [ %i.aa, %bb.e ], [ %.041, %bb.d ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !165    ; 2 uses
  %.not14.i51 = icmp eq ptr %i.w, null
  br i1 %.not14.i51, label %EVP_Cipher.exit53.thread, label %EVP_Cipher.exit53

EVP_Cipher.exit53.thread:                         ; preds = %.lr.ph
  call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 526) #46
  br label %.thread

EVP_Cipher.exit53:                                ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.z = call i32 %i.y(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %.14263, i64 noundef %i.e) #46, !inline_history !193
  %.not49 = icmp eq i32 %i.z, 0
  br i1 %.not49, label %.thread, label %bb.e

bb.e:                                             ; preds = %EVP_Cipher.exit53
  %i.aa = getelementptr inbounds nuw i8, ptr %.14263, i64 %i.e ; 2 uses
  %i.ab = sub nuw i64 %.14064, %i.e               ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, %i.e
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.142.lcssa = phi ptr [ %.041, %bb.d ], [ %i.aa, %bb.e ]
  %.140.lcssa = phi i64 [ %.039, %bb.d ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ad = icmp eq i64 %.140.lcssa, 0
  br i1 %i.ad, label %OPENSSL_memcpy.exit54, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %.142.lcssa, i64 %.140.lcssa, i1 false)
  br label %OPENSSL_memcpy.exit54

OPENSSL_memcpy.exit54:                            ; preds = %._crit_edge, %bb.f
  %i.af = trunc nuw i64 %.140.lcssa to i32
  store i32 %i.af, ptr %i.f, align 8, !tbaa !192
  br label %.thread

.thread:                                          ; preds = %EVP_Cipher.exit53, %EVP_Cipher.exit, %OPENSSL_memcpy.exit, %EVP_Cipher.exit53.thread, %OPENSSL_memcpy.exit54
  %.2 = phi i32 [ 0, %EVP_Cipher.exit ], [ 1, %OPENSSL_memcpy.exit54 ], [ 0, %EVP_Cipher.exit53.thread ], [ 1, %OPENSSL_memcpy.exit ], [ 0, %EVP_Cipher.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @CMAC_Final(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !165    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !182  ; 6 uses
  %i.f = zext i32 %i.e to i64                     ; 11 uses
  store i64 %i.f, ptr %2, align 8, !tbaa !82
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %EVP_Cipher.exit.thread39, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !192  ; 2 uses
  %.not = icmp eq i32 %i.i, %i.e
  br i1 %.not, label %OPENSSL_memset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 -128, ptr %i.l, align 1, !tbaa !78
  %i.m = load i32, ptr %i.h, align 8, !tbaa !192  ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.e, %i.n
  br i1 %i.o, label %OPENSSL_memset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %i.n to i64
  %i.q = sub nsw i64 %i.f, %i.p
  %i.r = zext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.q, i1 false)
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bb.d, %bb.c, %bb.b
  %i.u = phi i64 [ 152, %bb.b ], [ 168, %bb.c ], [ 168, %bb.d ] ; 2 uses
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %EVP_Cipher.exit, label %iter.check

iter.check:                                       ; preds = %OPENSSL_memset.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %3 = add i64 %i.u, %i.b
  %4 = sub i64 %3, %i.a
  %diff.check = icmp ugt i64 %4, -32
  %5 = sub i64 %i.a, %i.b
  %6 = add i64 %5, -185
  %diff.check52 = icmp ult i64 %6, 31
  %conflict.rdx = or i1 %diff.check, %diff.check52
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check53 = icmp ult i32 %i.e, 32
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.f, 28
  %n.vec = and i64 %i.f, 4294967264               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <16 x i8>, ptr %i.y, align 1, !tbaa !78
  %wide.load54 = load <16 x i8>, ptr %i.z, align 1, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load55 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !78
  %wide.load56 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !78
  %i.ac = xor <16 x i8> %wide.load55, %wide.load
  %i.ad = xor <16 x i8> %wide.load56, %wide.load54
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <16 x i8> %i.ac, ptr %i.ae, align 1, !tbaa !78
  store <16 x i8> %i.ad, ptr %i.af, align 1, !tbaa !78
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1599

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.f, 4294967292             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 %index58
  %wide.load59 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %index58
  %wide.load60 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !78
  %i.aj = xor <4 x i8> %wide.load60, %wide.load59
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %index58
  store <4 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !78
  %index.next61 = add nuw i64 %index58, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next61, %n.vec57
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1600

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %n.vec57, %i.f
  br i1 %cmp.n62, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec57, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.prol
  %i.an = load i8, ptr %i.am, align 1, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.prol
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !78
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !78
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1601

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.as = sub nsw i64 %indvars.iv.ph, %i.f
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !165   ; 2 uses
  %.not14.i = icmp eq ptr %.pre, null
  br i1 %.not14.i, label %EVP_Cipher.exit.thread, label %EVP_Cipher.exit

EVP_Cipher.exit.thread:                           ; preds = %._crit_edge
  tail call void @ERR_put_error(i32 noundef 14, i32 noundef 0, i32 noundef 67, ptr noundef nonnull @.str.15, i32 noundef 526) #46
  br label %EVP_Cipher.exit.thread39

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.av = load i8, ptr %i.au, align 1, !tbaa !78
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !78
  %i.ay = xor i8 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !78
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !78
  %i.be = xor i8 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !78
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !78
  %i.bk = xor i8 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !78
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !78
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !78
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !78
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.f
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1602

EVP_Cipher.exit:                                  ; preds = %OPENSSL_memset.exit, %._crit_edge
  %i.bs = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %OPENSSL_memset.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !183
  %i.bv = tail call i32 %i.bu(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %1, i64 noundef %i.f) #46, !inline_history !193
  br label %EVP_Cipher.exit.thread39

EVP_Cipher.exit.thread39:                         ; preds = %EVP_Cipher.exit, %bb.a, %EVP_Cipher.exit.thread
  %.03038 = phi i32 [ 0, %EVP_Cipher.exit.thread ], [ 1, %bb.a ], [ %i.bv, %EVP_Cipher.exit ]
  ret i32 %.03038
}

; Function Attrs: nounwind uwtable
define ptr @CMAC_CTX_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_zalloc(i64 noundef 208) #46
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define void @CMAC_CTX_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !165    ; 2 uses
  %.not11.i.i = icmp eq ptr %i.b, null
  br i1 %.not11.i.i, label %CMAC_CTX_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.d, null
  br i1 %.not12.i.i, label %CMAC_CTX_cleanup.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.d(ptr noundef nonnull %0) #46, !inline_history !21
  br label %CMAC_CTX_cleanup.exit

CMAC_CTX_cleanup.exit:                            ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168
  tail call void @OPENSSL_free(ptr noundef %i.f) #46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.g, align 8, !tbaa !164
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.h, i64 noundef 16) #46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.i, i64 noundef 16) #46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.j, i64 noundef 16) #46
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %CMAC_CTX_cleanup.exit
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CMAC_CTX_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_CIPHER_CTX_copy(ptr noundef %0, ptr noundef %1)
  %.not = icmp eq i32 %i.a, 0
end_hunk_0
