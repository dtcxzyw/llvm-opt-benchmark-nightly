inline.NumInlined: 64
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@EVP_DecryptFinal_ex:bb.a
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, ptr noundef null) #8
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1274, ptr noundef nonnull @__func__.EVP_DecryptFinal_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, ptr noundef null) #8
  br label %bb.af

bb.e:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !10     ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1279, ptr noundef nonnull @__func__.EVP_DecryptFinal_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, ptr noundef null) #8
  br label %bb.af

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @EVP_CIPHER_CTX_get_block_size(ptr noundef nonnull %0) #8 ; 3 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = load ptr, ptr %0, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1289, ptr noundef nonnull @__func__.EVP_DecryptFinal_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, ptr noundef null) #8
  br label %bb.af

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = icmp eq i32 %i.k, 1
  %i.t = select i1 %i.s, i32 0, i32 %i.k
  %i.u = zext nneg i32 %i.t to i64
  %i.v = call i32 %i.o(ptr noundef %i.r, ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.u) #8 ; 2 uses
  %.not66 = icmp eq i32 %i.v, 0
  br i1 %.not66, label %bb.af, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load i64, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.x = icmp ugt i64 %i.w, 2147483647
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1298, ptr noundef nonnull @__func__.EVP_DecryptFinal_ex) #8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, ptr noundef null) #8
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  %i.y = trunc nuw nsw i64 %i.w to i32
  store i32 %i.y, ptr %2, align 4, !tbaa !40
  br label %bb.af

bb.o:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !59
  %i.ab = and i64 %i.aa, 1048576
  %.not67 = icmp eq i64 %i.ab, 0
  br i1 %.not67, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  %i.ae = tail call i32 %i.ad(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i64 noundef 0) #8 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.af, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.ae, ptr %2, align 4, !tbaa !40
  br label %bb.af

bb.r:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !60 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !33
  %i.ak = and i64 %i.aj, 256
  %.not68 = icmp eq i64 %i.ak, 0
  br i1 %.not68, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !63
  %.not72 = icmp eq i32 %i.am, 0
  br i1 %.not72, label %bb.af, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1322, ptr noundef nonnull @__func__.EVP_DecryptFinal_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 138, ptr noundef null) #8
  br label %bb.af

bb.u:                                             ; preds = %bb.r
  %i.an = icmp ugt i32 %i.ah, 1
  br i1 %i.an, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !63
  %.not69 = icmp eq i32 %i.ap, 0
  br i1 %.not69, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !64
  %.not70 = icmp eq i32 %i.ar, 0
  br i1 %.not70, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1330, ptr noundef nonnull @__func__.EVP_DecryptFinal_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 109, ptr noundef null) #8
  br label %bb.af

bb.y:                                             ; preds = %bb.w
  %i.as = icmp ult i32 %i.ah, 33
  br i1 %i.as, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef 1333) #9
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.au = zext nneg i32 %i.ah to i64
  %i.av = getelementptr i8, ptr %i.at, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !74  ; 3 uses
  %i.ay = zext i8 %i.ax to i32                    ; 3 uses
  %i.az = icmp eq i8 %i.ax, 0
  %i.ba = icmp samesign ult i32 %i.ah, %i.ay
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond, label %bb.ab, label %.preheader

bb.ab:                                            ; preds = %bb.aa
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1341, ptr noundef nonnull @__func__.EVP_DecryptFinal_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 100, ptr noundef null) #8
  br label %bb.af

bb.ac:                                            ; preds = %.preheader
  %i.bb = add nuw nsw i32 %.05474, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.ay
  br i1 %exitcond.not, label %bb.ae, label %.preheader, !llvm.loop !75

.preheader:                                       ; preds = %bb.aa, %bb.ac
  %.05474 = phi i32 [ %i.bb, %bb.ac ], [ 0, %bb.aa ]
  %.05573 = phi i32 [ %i.bc, %bb.ac ], [ %i.ah, %bb.aa ]
  %i.bc = add i32 %.05573, -1                     ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !74
  %.not71 = icmp eq i8 %i.bf, %i.ax
  br i1 %.not71, label %bb.ac, label %bb.ad

bb.ad:                                            ; preds = %.preheader
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1346, ptr noundef nonnull @__func__.EVP_DecryptFinal_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 100, ptr noundef null) #8
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bg = sub nsw i32 %i.ah, %i.ay                ; 5 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.ae
  %wide.trip.count = zext nneg i32 %i.bg to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %i.bg, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bi = sub i64 %i.b, %i.a
  %i.bj = add i64 %i.bi, -137
  %diff.check = icmp ult i64 %i.bj, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check90 = icmp ult i32 %i.bg, 32
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load.a = load <16 x i8>, ptr %i.bk, align 1, !tbaa !74
  %wide.load91.a = load <16 x i8>, ptr %i.bl, align 1, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load.a, ptr %i.bm, align 1, !tbaa !74
  store <16 x i8> %wide.load91.a, ptr %i.bn, align 1, !tbaa !74
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 %index94
  %wide.load95 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !74
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %index94
  store <4 x i8> %wide.load95, ptr %i.bq, align 1, !tbaa !74
  %index.next96 = add nuw i64 %index94, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next96, %n.vec93
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !80

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %n.vec93, %wide.trip.count
  br i1 %cmp.n97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec93, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !74
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !81

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bv = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !74
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !74
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !74
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next.1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !74
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.at, i64 %indvars.iv.next.2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !74
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !74
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond77.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond77.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.ae
  store i32 %i.bg, ptr %2, align 4, !tbaa !40
  br label %bb.af

bb.af:                                            ; preds = %bb.s, %bb.u, %._crit_edge, %bb.p, %bb.k, %bb.n, %bb.ad, %bb.ab, %bb.x, %bb.t, %bb.q, %bb.m, %bb.j, %bb.f, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.k ], [ 1, %bb.q ], [ 0, %bb.t ], [ 1, %bb.u ], [ 0, %bb.x ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.p ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.c ], [ %i.v, %bb.n ], [ 1, %._crit_edge ], [ 1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CipherFinal(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !31
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @EVP_DecryptFinal_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_EncryptFinal(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_EncryptFinal_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_DecryptFinal(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_DecryptFinal_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CipherPipelineFinal(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !67

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 783, ptr noundef nonnull @__func__.EVP_CipherPipelineFinal) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 786690, ptr noundef null) #8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.e, !prof !67

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 788, ptr noundef nonnull @__func__.EVP_CipherPipelineFinal) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, ptr noundef null) #8
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.g, !prof !67

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 793, ptr noundef nonnull @__func__.EVP_CipherPipelineFinal) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 148, ptr noundef null) #8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %.preheader, !prof !67

.preheader:                                       ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 798, ptr noundef nonnull @__func__.EVP_CipherPipelineFinal) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 188, ptr noundef null) #8
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.019 = phi i64 [ %i.m, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.019
  store i64 0, ptr %i.l, align 8, !tbaa !43
  %i.m = add nuw i64 %.019, 1                     ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi i64 [ 0, %.preheader ], [ %i.n, %.lr.ph ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = tail call i32 %i.h(ptr noundef %i.q, i64 noundef %.lcssa, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) #8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.f, %bb.d, %bb.b
  %.015 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ %i.r, %._crit_edge ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_EncryptInit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %EVP_CipherInit.exit, label %.split7.i

.split7.i:                                        ; preds = %bb.a
  %i.a = tail call i32 @EVP_CIPHER_CTX_reset(ptr noundef %0) ; 0 uses
  br label %EVP_CipherInit.exit

EVP_CipherInit.exit:                              ; preds = %bb.a, %.split7.i
  %i.b = tail call fastcc i32 @evp_cipher_init_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_EncryptInit_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @evp_cipher_init_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_EncryptInit_ex2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @evp_cipher_init_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef 1, i8 noundef zeroext 0, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_DecryptInit(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %EVP_CipherInit.exit, label %.split7.i

.split7.i:                                        ; preds = %bb.a
  %i.a = tail call i32 @EVP_CIPHER_CTX_reset(ptr noundef %0) ; 0 uses
  br label %EVP_CipherInit.exit

EVP_CipherInit.exit:                              ; preds = %bb.a, %.split7.i
  %i.b = tail call fastcc i32 @evp_cipher_init_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_DecryptInit_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @evp_cipher_init_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_DecryptInit_ex2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @evp_cipher_init_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3, i32 noundef 0, i8 noundef zeroext 0, ptr noundef %4)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_is_partially_overlapping(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i32 %2, 0
  %i.e = icmp ne ptr %0, %1
  %i.f = and i1 %i.e, %i.d
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = icmp ult i64 %i.c, %i.g
  %i.i = sub nsw i64 0, %i.g
  %i.j = icmp ugt i64 %i.c, %i.i
  %i.k = or i1 %i.h, %i.j
  %i.l = and i1 %i.f, %i.k
  %i.m = zext i1 %i.l to i32
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @evp_EncryptDecryptUpdate(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_CIPHER_CTX_test_flags(ptr noundef %0, i32 noundef 8192) #8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %safe_div_round_up_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw i32 %4, 7
  %i.d = lshr i32 %i.c, 3
  br label %safe_div_round_up_int.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %4, 0
  br i1 %i.e, label %safe_div_round_up_int.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.nonneg.i = sub i32 0, %4                      ; 2 uses
  %i.f = and i32 %.nonneg.i, 7
  %i.g = lshr i32 %.nonneg.i, 3
  %i.h = icmp ne i32 %i.f, 0
  %i.i = zext i1 %i.h to i32
  %i.j = sub nsw i32 %i.i, %i.g
  br label %safe_div_round_up_int.exit

safe_div_round_up_int.exit:                       ; preds = %bb.e, %bb.c, %bb.a
  %.0 = phi i32 [ %4, %bb.a ], [ %i.d, %bb.c ], [ %i.j, %bb.e ] ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !59
  %i.p = and i64 %i.o, 1048576
  %.not102 = icmp eq i64 %i.p, 0
  br i1 %.not102, label %bb.k, label %bb.f

safe_div_round_up_int.exit.thread:                ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !59
  %i.v = and i64 %i.u, 1048576
  %.not102111 = icmp eq i64 %i.v, 0
  br i1 %.not102111, label %.thread, label %bb.f

bb.f:                                             ; preds = %safe_div_round_up_int.exit.thread, %safe_div_round_up_int.exit
  %i.w = phi i32 [ %i.s, %safe_div_round_up_int.exit.thread ], [ %i.m, %safe_div_round_up_int.exit ]
  %i.x = phi ptr [ %i.q, %safe_div_round_up_int.exit.thread ], [ %i.k, %safe_div_round_up_int.exit ]
  %.0112 = phi i32 [ 0, %safe_div_round_up_int.exit.thread ], [ %.0, %safe_div_round_up_int.exit ] ; 2 uses
  %i.y = icmp eq i32 %i.w, 1
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = ptrtoint ptr %3 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp slt i32 %.0112, 1
  %i.ad = icmp eq ptr %1, %3
  %.not122 = or i1 %i.ad, %i.ac
  %i.ae = sext i32 %.0112 to i64                  ; 2 uses
  %i.af = icmp uge i64 %i.ab, %i.ae
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = icmp ule i64 %i.ab, %i.ag
  %.not125 = and i1 %i.af, %i.ah
  %.not119 = or i1 %.not122, %.not125
  br i1 %.not119, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 899, ptr noundef nonnull @__func__.evp_EncryptDecryptUpdate) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, ptr noundef null) #8
  br label %bb.ag

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !70
  %i.ak = sext i32 %4 to i64
  %i.al = tail call i32 %i.aj(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, i64 noundef %i.ak) #8 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.ag, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.al, ptr %2, align 4, !tbaa !40
  br label %bb.ag

bb.k:                                             ; preds = %safe_div_round_up_int.exit
  %i.an = icmp slt i32 %4, 1
  br i1 %i.an, label %.thread, label %bb.l

.thread:                                          ; preds = %safe_div_round_up_int.exit.thread, %bb.k
  store i32 0, ptr %2, align 4, !tbaa !40
  %i.ao = icmp eq i32 %4, 0
  %i.ap = zext i1 %i.ao to i32
  br label %bb.ag

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !63 ; 3 uses
  %i.as = sext i32 %i.ar to i64                   ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.as ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %3 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = icmp slt i32 %.0, 1
  %i.ay = icmp eq ptr %i.at, %3
  %.not131 = or i1 %i.ax, %i.ay
  %i.az = sext i32 %.0 to i64                     ; 2 uses
  %i.ba = icmp uge i64 %i.aw, %i.az
  %i.bb = sub nsw i64 0, %i.az
  %i.bc = icmp ule i64 %i.aw, %i.bb
  %.not134 = and i1 %i.ba, %i.bc
  %.not128 = or i1 %.not131, %.not134
  br i1 %.not128, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 916, ptr noundef nonnull @__func__.evp_EncryptDecryptUpdate) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, ptr noundef null) #8
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp eq i32 %i.ar, 0
  br i1 %i.bd, label %bb.o, label %.thread115

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !65
  %i.bg = and i32 %i.bf, %4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70
  %i.bk = zext nneg i32 %4 to i64
  %i.bl = tail call i32 %i.bj(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, i64 noundef %i.bk) #8
  %.not108 = icmp eq i32 %i.bl, 0
  br i1 %.not108, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %4, ptr %2, align 4, !tbaa !40
  br label %bb.ag

bb.r:                                             ; preds = %bb.p
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %bb.ag

bb.s:                                             ; preds = %bb.o
  %i.bm = icmp slt i32 %i.m, 33
  br i1 %i.bm, label %bb.aa, label %bb.t

.thread115:                                       ; preds = %bb.n
  %i.bn = icmp slt i32 %i.m, 33
  br i1 %i.bn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread115, %bb.s
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str, i32 noundef 930) #9
  unreachable

bb.u:                                             ; preds = %.thread115
  %i.bo = sub nsw i32 %i.m, %i.ar                 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, %4
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.as
  %i.bs = zext nneg i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %3, i64 %i.bs, i1 false)
  %i.bt = load i32, ptr %i.aq, align 4, !tbaa !63
  %i.bu = add nsw i32 %i.bt, %4
  store i32 %i.bu, ptr %i.aq, align 4, !tbaa !63
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %bb.ag

bb.w:                                             ; preds = %bb.u
  %i.bv = sub nsw i32 %4, %i.bo                   ; 2 uses
  %i.bw = sub i32 0, %i.m
  %i.bx = and i32 %i.bv, %i.bw
  %i.by = sub nsw i32 2147483647, %i.m
  %i.bz = icmp sgt i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 948, ptr noundef nonnull @__func__.evp_EncryptDecryptUpdate) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 202, ptr noundef null) #8
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.as
  %i.cc = sext i32 %i.bo to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cb, ptr align 1 %3, i64 %i.cc, i1 false)
  %i.cd = load ptr, ptr %0, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !70
  %i.cg = sext i32 %i.m to i64                    ; 2 uses
  %i.ch = tail call i32 %i.cf(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ca, i64 noundef %i.cg) #8
  %.not105 = icmp eq i32 %i.ch, 0
  br i1 %.not105, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds i8, ptr %3, i64 %i.cc
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.cg
  br label %bb.aa

bb.aa:                                            ; preds = %bb.s, %bb.z
  %storemerge = phi i32 [ %i.m, %bb.z ], [ 0, %bb.s ]
  %.094 = phi ptr [ %i.ci, %bb.z ], [ %3, %bb.s ] ; 2 uses
  %.093 = phi i32 [ %i.bv, %bb.z ], [ %4, %bb.s ] ; 2 uses
  %.092 = phi ptr [ %i.cj, %bb.z ], [ %1, %bb.s ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !40
  %i.ck = add nsw i32 %i.m, -1
  %i.cl = and i32 %.093, %i.ck                    ; 4 uses
  %i.cm = sub nsw i32 %.093, %i.cl                ; 4 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %0, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !70
  %i.cr = zext nneg i32 %i.cm to i64
  %i.cs = tail call i32 %i.cq(ptr noundef nonnull %0, ptr noundef %.092, ptr noundef %.094, i64 noundef %i.cr) #8
  %.not106 = icmp eq i32 %i.cs, 0
  br i1 %.not106, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = load i32, ptr %2, align 4, !tbaa !40
  %i.cu = add nsw i32 %i.ct, %i.cm
  store i32 %i.cu, ptr %2, align 4, !tbaa !40
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.not107 = icmp eq i32 %i.cl, 0
  br i1 %.not107, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = sext i32 %i.cm to i64
  %i.cx = getelementptr inbounds i8, ptr %.094, i64 %i.cw
  %i.cy = sext i32 %i.cl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr align 1 %i.cx, i64 %i.cy, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i32 %i.cl, ptr %i.aq, align 4, !tbaa !63
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.y, %bb.i, %bb.af, %bb.x, %bb.v, %bb.r, %bb.q, %bb.m, %.thread, %bb.j, %bb.h
  %.091 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ 1, %bb.j ], [ %i.ap, %.thread ], [ 0, %bb.m ], [ 1, %bb.q ], [ 0, %bb.r ], [ 1, %bb.v ], [ 0, %bb.x ], [ 1, %bb.af ], [ 0, %bb.y ], [ 0, %bb.ab ]
  ret i32 %.091
}

declare i32 @EVP_CIPHER_CTX_get_block_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @EVP_CIPHER_CTX_test_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_CTX_set_key_length(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 6 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.e = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef nonnull %0) #8
  %i.f = icmp eq i32 %i.e, %1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %EVP_CIPHER_settable_ctx_params.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85
  %.not7.i = icmp eq ptr %i.i, null
  br i1 %.not7.i, label %EVP_CIPHER_settable_ctx_params.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %i.g) #8
  %i.k = tail call ptr @ossl_provider_ctx(ptr noundef %i.j) #8
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !85
  %i.m = tail call ptr %i.l(ptr noundef null, ptr noundef %i.k) #8, !inline_history !86
  br label %EVP_CIPHER_settable_ctx_params.exit

EVP_CIPHER_settable_ctx_params.exit:              ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.m, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  %i.n = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %.0.i, ptr noundef nonnull @.str.3) #8
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %EVP_CIPHER_settable_ctx_params.exit
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1372, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_set_key_length) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #8
  br label %bb.j

bb.g:                                             ; preds = %EVP_CIPHER_settable_ctx_params.exit
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #8
  %i.p = call i32 @OSSL_PARAM_set_int(ptr noundef nonnull %2, i32 noundef %1) #8
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %0, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = call i32 @evp_do_ciph_ctx_setparams(ptr noundef %i.q, ptr noundef %i.s, ptr noundef nonnull %2) #8
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %1, ptr %i.v, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.b, %bb.i, %bb.f
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  %i.y = and i64 %i.x, 128
  %.not21 = icmp eq i64 %i.y, 0
  br i1 %.not21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = tail call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1, ptr noundef null)
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.aa = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef nonnull %0) #8
  %i.ab = icmp eq i32 %i.aa, %1
  br i1 %i.ab, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp sgt i32 %1, 0
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %0, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !59
  %i.ag = and i64 %i.af, 8
  %.not22 = icmp eq i64 %i.ag, 0
  br i1 %.not22, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %1, ptr %i.ah, align 8, !tbaa !57
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1400, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_set_key_length) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #8
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q, %bb.p, %bb.l, %bb.j
  %.1 = phi i32 [ %.0, %bb.j ], [ %i.z, %bb.l ], [ 0, %bb.q ], [ 1, %bb.p ], [ 1, %bb.m ]
  ret i32 %.1
}

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_CIPHER_settable_ctx_params(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %0) #8
  %i.d = tail call ptr @ossl_provider_ctx(ptr noundef %i.c) #8
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.f = tail call ptr %i.e(ptr noundef null, ptr noundef %i.d) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_PARAM_set_int(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @evp_do_ciph_ctx_setparams(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_CTX_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca [4 x %struct.ossl_param_st], align 16 ; 38 uses
  %5 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %6 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %7 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %8 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %9 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %10 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %11 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %12 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %13 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %14 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %15 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.c = sext i32 %2 to i64                       ; 8 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %4, i8 0, i64 160, i1 false)
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1434, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_ctrl) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 131, ptr noundef null) #8
  br label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.at, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %1, label %.thread103 [
    i32 1, label %bb.f
    i32 6, label %bb.i
    i32 0, label %bb.ax
    i32 23, label %bb.aq
    i32 9, label %bb.j
    i32 20, label %bb.m
    i32 18, label %bb.o
    i32 19, label %bb.p
    i32 24, label %bb.s
    i32 4, label %bb.u
    i32 5, label %bb.v
    i32 39, label %bb.x
    i32 16, label %bb.z
    i32 17, label %bb.aa
    i32 22, label %bb.ab
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 28, label %bb.ag
    i32 25, label %bb.aj
    i32 26, label %bb.an
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = icmp slt i32 %2, 0
  br i1 %i.j, label %bb.ax, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !57
  %i.m = icmp eq i32 %i.l, %2
  br i1 %i.m, label %bb.ax, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #8
  store i32 -1, ptr %i.k, align 8, !tbaa !57
  br label %.thread

bb.i:                                             ; preds = %bb.e
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.5, ptr noundef %3, i64 noundef %i.c) #8
  br label %.thread100

bb.j:                                             ; preds = %bb.e
  %i.n = icmp slt i32 %2, 0
  br i1 %i.n, label %bb.ax, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !30
  %i.q = icmp eq i32 %i.p, %2
  br i1 %i.q, label %bb.ax, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #8
  store i32 -1, ptr %i.o, align 4, !tbaa !30
  br label %.thread

bb.m:                                             ; preds = %bb.e
  %i.r = add i32 %2, -9
  %or.cond = icmp ult i32 %i.r, -7
  br i1 %or.cond, label %bb.ax, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = sub nuw nsw i32 15, %2
  %i.t = zext nneg i32 %i.s to i64
  store i64 %i.t, ptr %i.a, align 8, !tbaa !43
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a) #8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 -1, ptr %i.u, align 4, !tbaa !30
  br label %.thread

bb.o:                                             ; preds = %bb.e
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.7, ptr noundef %3, i64 noundef %i.c) #8
  br label %.thread

bb.p:                                             ; preds = %bb.e
  %i.v = icmp slt i32 %2, 0
  br i1 %i.v, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.a, align 8, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.w = phi i64 [ 0, %bb.q ], [ %i.c, %bb.p ]
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.8, ptr noundef %3, i64 noundef %i.w) #8
  br label %.thread100

bb.s:                                             ; preds = %bb.e
  %i.x = icmp slt i32 %2, 0
  br i1 %i.x, label %bb.ax, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.9, ptr noundef %3, i64 noundef %i.c) #8
  br label %.thread

bb.u:                                             ; preds = %bb.e
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.e
  %.084 = phi i32 [ 0, %bb.u ], [ 1, %bb.e ]
  %i.y = icmp slt i32 %2, 0
  br i1 %i.y, label %bb.ax, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %2, ptr %i.b, align 4, !tbaa !40
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.b) #8
  br label %bb.as

bb.x:                                             ; preds = %bb.e
  %i.z = icmp slt i32 %2, 0
  br i1 %i.z, label %bb.ax, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %2, ptr %i.b, align 4, !tbaa !40
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.b) #8
  br label %.thread

bb.z:                                             ; preds = %bb.e
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.e
  %.185 = phi i32 [ 0, %bb.z ], [ 1, %bb.e ]
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.12, ptr noundef %3, i64 noundef %i.c) #8
  br label %bb.as

bb.ab:                                            ; preds = %bb.e
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.13, ptr noundef %3, i64 noundef %i.c) #8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = call i32 @evp_do_ciph_ctx_setparams(ptr noundef %i.aa, ptr noundef %i.ac, ptr noundef nonnull %4) #8 ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.aw, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %5, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.af = load ptr, ptr %0, align 8, !tbaa !10
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ah = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef nonnull %4) #8 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.aw, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !43
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.ax

bb.ae:                                            ; preds = %bb.e
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.e
  %.286 = phi i32 [ 0, %bb.ae ], [ 1, %bb.e ]
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a) #8
  br label %bb.as

bb.ag:                                            ; preds = %bb.e
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #8
  %i.al = load ptr, ptr %0, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.ao = call i32 @evp_do_ciph_ctx_setparams(ptr noundef %i.al, ptr noundef %i.an, ptr noundef nonnull %4) #8
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %bb.ax, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %6, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %7) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.ar = load ptr, ptr %0, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !21
  %i.at = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.ar, ptr noundef %i.as, ptr noundef nonnull %4) #8
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.ax, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.av = load i64, ptr %i.a, align 8, !tbaa !43
  %i.aw = trunc i64 %i.av to i32
  br label %bb.ax

bb.aj:                                            ; preds = %bb.e
  %i.ax = icmp slt i32 %2, 32
  br i1 %i.ax, label %bb.ax, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !91
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.18, ptr noundef %i.az, i64 noundef %i.bb) #8
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %8, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bd) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.be = load ptr, ptr %0, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bh = call i32 @evp_do_ciph_ctx_setparams(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef nonnull %4) #8 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %10, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.bd) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %11) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.bk = load ptr, ptr %0, align 8, !tbaa !10
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !21
  %i.bm = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.bk, ptr noundef %i.bl, ptr noundef nonnull %4) #8
  %i.bn = icmp slt i32 %i.bm, 1
  br i1 %i.bn, label %bb.ax, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !43
  %i.bp = trunc i64 %i.bo to i32
  br label %bb.ax

bb.an:                                            ; preds = %bb.e
  %i.bq = load ptr, ptr %3, align 8, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !91
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.21, ptr noundef %i.bq, i64 noundef %i.bs) #8
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !89
  %i.bw = load i64, ptr %i.br, align 8, !tbaa !91
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %12, ptr noundef nonnull @.str.22, ptr noundef %i.bv, i64 noundef %i.bw) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %12, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %13, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.by) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.bx, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  %i.bz = load ptr, ptr %0, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.cc = call i32 @evp_do_ciph_ctx_setparams(ptr noundef %i.bz, ptr noundef %i.cb, ptr noundef nonnull %4) #8 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 1
  br i1 %i.cd, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @OSSL_PARAM_construct_size_t(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %14, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %14, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %15) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  %i.ce = load ptr, ptr %0, align 8, !tbaa !10
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.cg = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.ce, ptr noundef %i.cf, ptr noundef nonnull %4) #8
  %i.ch = icmp slt i32 %i.cg, 1
  br i1 %i.ch, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !43
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.ax

bb.aq:                                            ; preds = %bb.e
  %i.ck = icmp slt i32 %2, 0
  br i1 %i.ck, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4, ptr noundef nonnull @.str.24, ptr noundef %3, i64 noundef %i.c) #8
  br label %.thread

bb.as:                                            ; preds = %bb.af, %bb.aa, %bb.w
  %.3 = phi i32 [ %.286, %bb.af ], [ %.185, %bb.aa ], [ %.084, %bb.w ]
  %.not = icmp eq i32 %.3, 0
  br i1 %.not, label %.thread100, label %.thread

.thread:                                          ; preds = %bb.y, %bb.t, %bb.o, %bb.n, %bb.l, %bb.ar, %bb.h, %bb.as
  %i.cl = load ptr, ptr %0, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21
  %i.co = call i32 @evp_do_ciph_ctx_setparams(ptr noundef %i.cl, ptr noundef %i.cn, ptr noundef nonnull %4) #8
  br label %bb.aw

.thread100:                                       ; preds = %bb.r, %bb.i, %bb.as
  %i.cp = load ptr, ptr %0, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cs = call i32 @evp_do_ciph_ctx_getparams(ptr noundef %i.cp, ptr noundef %i.cr, ptr noundef nonnull %4) #8
  br label %bb.aw

bb.at:                                            ; preds = %bb.d
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !93 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1620, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_ctrl) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 132, ptr noundef null) #8
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.cw = tail call i32 %i.cu(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #8
  br label %bb.aw

bb.aw:                                            ; preds = %.thread, %.thread100, %bb.ac, %bb.ab, %bb.av
  %.083 = phi i32 [ %i.cw, %bb.av ], [ %i.ah, %bb.ac ], [ %i.co, %.thread ], [ %i.cs, %.thread100 ], [ %i.ad, %bb.ab ] ; 2 uses
  %i.cx = icmp eq i32 %.083, -1
  br i1 %i.cx, label %.thread103, label %bb.ax

.thread103:                                       ; preds = %bb.e, %bb.aw
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1628, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_ctrl) #8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 133, ptr noundef null) #8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.aq, %bb.ap, %bb.an, %bb.ao, %bb.am, %bb.aj, %bb.ak, %bb.al, %bb.ah, %bb.ag, %bb.x, %bb.v, %bb.s, %bb.m, %bb.k, %bb.j, %bb.e, %bb.g, %bb.f, %.thread103, %bb.au, %bb.ai, %bb.ad, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %bb.au ], [ 0, %.thread103 ], [ -1, %bb.aq ], [ 0, %bb.al ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.ao ], [ 1, %bb.e ], [ 0, %bb.j ], [ 1, %bb.k ], [ 0, %bb.m ], [ 0, %bb.s ], [ 0, %bb.v ], [ %i.ak, %bb.ad ], [ 0, %bb.x ], [ 0, %bb.ag ], [ %i.aw, %bb.ai ], [ 0, %bb.ah ], [ %i.bp, %bb.am ], [ 0, %bb.aj ], [ %i.bh, %bb.ak ], [ %i.cj, %bb.ap ], [ %i.cc, %bb.an ], [ %.083, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @EVP_CIPHER_CTX_set_padding(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 %1, ptr %i.a, align 4, !tbaa !40
  %.not = icmp eq i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !33
  %i.d = and i64 %i.c, -257
  %masksel = select i1 %.not, i64 256, i64 0
  %.sink = or disjoint i64 %i.d, %masksel
  store i64 %.sink, ptr %i.b, align 8, !tbaa !33
  %i.e = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @OSSL_PARAM_construct_uint(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a) #8
  %i.i = load ptr, ptr %0, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = call i32 @evp_do_ciph_ctx_setparams(ptr noundef %i.i, ptr noundef %i.k, ptr noundef nonnull %2) #8
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

declare void @OSSL_PARAM_construct_uint(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_octet_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @evp_do_ciph_ctx_getparams(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_get_params(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 %i.b(ptr noundef %1) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.c, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_CTX_set_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = tail call i32 %i.c(ptr noundef %i.e, ptr noundef %1) #8 ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.3) #8 ; 2 uses
  %.not24 = icmp eq ptr %i.h, null
  br i1 %.not24, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.j = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #8
  %.not25 = icmp eq i32 %i.j, 0
  br i1 %.not25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 -1, ptr %i.i, align 8, !tbaa !57
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.6) #8 ; 2 uses
  %.not26 = icmp eq ptr %i.k, null
  br i1 %.not26, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.m = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #8
  %.not27 = icmp eq i32 %i.m, 0
  br i1 %.not27, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.l, align 4, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.f, %bb.i, %bb.h, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ %i.f, %bb.h ], [ 0, %bb.i ], [ %i.f, %bb.g ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.f ]
  ret i32 %.1
}

declare i32 @OSSL_PARAM_get_int(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_CTX_get_params(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = tail call i32 %i.c(ptr noundef %i.e, ptr noundef %1) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_CIPHER_gettable_params(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %0) #8
  %i.d = tail call ptr @ossl_provider_ctx(ptr noundef %i.c) #8
  %i.e = tail call ptr %i.b(ptr noundef %i.d) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @ossl_provider_ctx(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_get0_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_CIPHER_gettable_ctx_params(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %0) #8
  %i.d = tail call ptr @ossl_provider_ctx(ptr noundef %i.c) #8
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.f = tail call ptr %i.e(ptr noundef null, ptr noundef %i.d) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_CIPHER_CTX_settable_params(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %i.a) #8
  %i.e = tail call ptr @ossl_provider_ctx(ptr noundef %i.d) #8
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = tail call ptr %i.h(ptr noundef %i.j, ptr noundef %i.e) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_CIPHER_CTX_gettable_params(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %i.a) #8
  %i.e = tail call ptr @ossl_provider_ctx(ptr noundef %i.d) #8
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = tail call ptr %i.h(ptr noundef %i.j, ptr noundef %i.e) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_CIPHER_CTX_rand_key(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59
  %i.d = and i64 %i.c, 512
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %EVP_CIPHER_CTX_get_libctx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @EVP_CIPHER_CTX_ctrl(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0, ptr noundef %1)
  br label %bb.d

EVP_CIPHER_CTX_get_libctx.exit:                   ; preds = %bb.a
  %i.f = tail call ptr @EVP_CIPHER_get0_provider(ptr noundef nonnull %i.a) #8
  %i.g = tail call ptr @ossl_provider_libctx(ptr noundef %i.f) #8
  %i.h = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef nonnull %0) #8 ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %EVP_CIPHER_CTX_get_libctx.exit
  %i.j = zext nneg i32 %i.h to i64
  %i.k = tail call i32 @RAND_priv_bytes_ex(ptr noundef %i.g, ptr noundef %1, i64 noundef %i.j, i32 noundef 0) #8
  %i.l = icmp sgt i32 %i.k, 0
  %spec.select = zext i1 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %EVP_CIPHER_CTX_get_libctx.exit, %bb.b
  %.1 = phi i32 [ %i.e, %bb.b ], [ 0, %EVP_CIPHER_CTX_get_libctx.exit ], [ %spec.select, %bb.c ]
  ret i32 %.1
}

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_CIPHER_CTX_dup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 76) #8 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %EVP_CIPHER_CTX_new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 -1, ptr %i.c, align 4, !tbaa !30
  %i.d = tail call i32 @EVP_CIPHER_CTX_copy(ptr noundef nonnull %i.a, ptr noundef %0)
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %EVP_CIPHER_CTX_free.exit, label %EVP_CIPHER_CTX_new.exit.thread

EVP_CIPHER_CTX_free.exit:                         ; preds = %bb.b
  %i.e = tail call i32 @EVP_CIPHER_CTX_reset(ptr noundef nonnull %i.a) ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 89) #8
  br label %EVP_CIPHER_CTX_new.exit.thread

EVP_CIPHER_CTX_new.exit.thread:                   ; preds = %bb.a, %EVP_CIPHER_CTX_free.exit, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %EVP_CIPHER_CTX_free.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @EVP_CIPHER_CTX_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1773, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_copy) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 111, ptr noundef null) #8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !98
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1781, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_copy) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, ptr noundef null) #8
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.j = tail call i32 @EVP_CIPHER_CTX_reset(ptr noundef %0) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false), !tbaa.struct !99
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %EVP_CIPHER_up_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !24
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %EVP_CIPHER_up_ref.exit

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.r = atomicrmw add ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %EVP_CIPHER_up_ref.exit

EVP_CIPHER_up_ref.exit:                           ; preds = %bb.i, %bb.h, %bb.g
  %i.s = load ptr, ptr %1, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = tail call ptr %i.u(ptr noundef %i.w) #8  ; 2 uses
  store ptr %i.x, ptr %i.k, align 8, !tbaa !21
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.v

bb.j:                                             ; preds = %EVP_CIPHER_up_ref.exit
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1797, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_copy) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 190, ptr noundef null) #8
  br label %bb.v

bb.k:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %.not40 = icmp eq ptr %i.aa, null
  br i1 %.not40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call i32 @ENGINE_init(ptr noundef nonnull %i.aa) #8
  %.not41 = icmp eq i32 %i.ab, 0
  br i1 %.not41, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1809, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_copy) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524326, ptr noundef null) #8
  br label %bb.v

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ac = tail call i32 @EVP_CIPHER_CTX_reset(ptr noundef %0) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 192, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  %.not42 = icmp eq ptr %i.ae, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !10    ; 3 uses
  br i1 %.not42, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %.not43 = icmp eq i32 %i.ag, 0
  br i1 %.not43, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = sext i32 %i.ag to i64
  %i.ai = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.ah, ptr noundef nonnull @.str, i32 noundef 1818) #8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !27
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %0, align 8, !tbaa !10
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.am = load ptr, ptr %1, align 8, !tbaa !10    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !28
  %i.ap = sext i32 %i.ao to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr align 1 %i.al, i64 %i.ap, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.n
  %i.aq = phi ptr [ %i.am, %bb.r ], [ %.pre, %bb.o ], [ %.pre, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !59
  %i.at = and i64 %i.as, 1024
  %.not44 = icmp eq i64 %i.at, 0
  br i1 %.not44, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !93
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %0) #8
  %.not45 = icmp eq i32 %i.aw, 0
  br i1 %.not45, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %0, align 8, !tbaa !10
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1829, ptr noundef nonnull @__func__.EVP_CIPHER_CTX_copy) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 134, ptr noundef null) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %EVP_CIPHER_up_ref.exit, %bb.u, %bb.q, %bb.m, %bb.j, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.q ], [ 1, %EVP_CIPHER_up_ref.exit ], [ 0, %bb.u ], [ 0, %bb.m ], [ 0, %bb.f ], [ 0, %bb.j ], [ 1, %bb.t ], [ 1, %bb.s ]
  ret i32 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @EVP_CIPHER_up_ref(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = atomicrmw add ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

declare i32 @ENGINE_init(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @evp_cipher_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 296, ptr noundef nonnull @.str, i32 noundef 1837) #8 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store atomic i32 1, ptr %i.b seq_cst, align 4, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @EVP_CIPHER_fetch(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @evp_generic_fetch(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @evp_cipher_from_algorithm, ptr noundef nonnull @evp_cipher_up_ref, ptr noundef nonnull @evp_cipher_free) #8
  ret ptr %i.a
}

declare ptr @evp_generic_fetch(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @evp_cipher_from_algorithm(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.c = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 296, ptr noundef nonnull @.str, i32 noundef 1837) #8 ; 35 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1886, ptr noundef nonnull @__func__.evp_cipher_from_algorithm) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524294, ptr noundef null) #8
  br label %EVP_CIPHER_free.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 2 uses
  store atomic i32 1, ptr %i.d seq_cst, align 4, !tbaa !102
  store i32 0, ptr %i.c, align 8, !tbaa !48
  %i.e = tail call i32 @evp_names_do_all(ptr noundef %2, i32 noundef %0, ptr noundef nonnull @set_legacy_nid, ptr noundef nonnull %i.c) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %i.c, align 8, !tbaa !48
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i32 %0, ptr %i.h, align 8, !tbaa !106
  %i.i = tail call ptr @ossl_algorithm_get1_first_name(ptr noundef nonnull %1) #8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store ptr %i.i, ptr %i.j, align 8, !tbaa !25
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.bg, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %i.m, ptr %i.n, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 152 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.av, %bb.f
  %.0120 = phi ptr [ %i.b, %bb.f ], [ %i.cf, %bb.av ] ; 22 uses
  %.0118 = phi i32 [ 0, %bb.f ], [ %.1119, %bb.av ] ; 42 uses
  %.0116 = phi i32 [ 0, %bb.f ], [ %.1117, %bb.av ] ; 40 uses
  %.0114 = phi i32 [ 0, %bb.f ], [ %.1115, %bb.av ] ; 40 uses
  %.0112 = phi i32 [ 0, %bb.f ], [ %.1113, %bb.av ] ; 44 uses
  %.0 = phi i32 [ 0, %bb.f ], [ %.1, %bb.av ]     ; 43 uses
  %i.ai = load i32, ptr %.0120, align 8, !tbaa !109
  switch i32 %i.ai, label %bb.av [
    i32 0, label %bb.aw
    i32 1, label %bb.h
    i32 2, label %bb.j
    i32 3, label %bb.l
    i32 19, label %bb.n
    i32 20, label %bb.p
    i32 4, label %bb.r
    i32 5, label %bb.t
    i32 6, label %bb.v
    i32 15, label %bb.x
    i32 16, label %bb.z
    i32 17, label %bb.ab
    i32 18, label %bb.ad
    i32 7, label %bb.af
    i32 8, label %bb.ah
    i32 9, label %bb.aj
    i32 10, label %bb.al
    i32 11, label %bb.an
    i32 12, label %bb.ap
    i32 13, label %bb.ar
    i32 14, label %bb.at
  ]

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !34
  %.not149 = icmp eq ptr %i.aj, null
  br i1 %.not149, label %bb.i, label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %.0120, i64 8
  %.0120.val = load ptr, ptr %i.ak, align 8, !tbaa !111
  store ptr %.0120.val, ptr %i.ah, align 8, !tbaa !34
  %i.al = add nsw i32 %.0, 1
  br label %bb.av

bb.j:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !44
  %.not148 = icmp eq ptr %i.am, null
  br i1 %.not148, label %bb.k, label %bb.av

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %.0120, i64 8
  %.0120.val150 = load ptr, ptr %i.an, align 8, !tbaa !111
  store ptr %.0120.val150, ptr %i.ag, align 8, !tbaa !44
  br label %bb.av

bb.l:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !47
  %.not147 = icmp eq ptr %i.ao, null
  br i1 %.not147, label %bb.m, label %bb.av

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %.0120, i64 8
  %.0120.val151 = load ptr, ptr %i.ap, align 8, !tbaa !111
  store ptr %.0120.val151, ptr %i.af, align 8, !tbaa !47
  br label %bb.av

bb.n:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !41
  %.not146 = icmp eq ptr %i.aq, null
  br i1 %.not146, label %bb.o, label %bb.av

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr i8, ptr %.0120, i64 8
  %.0120.val152 = load ptr, ptr %i.ar, align 8, !tbaa !111
  store ptr %.0120.val152, ptr %i.ae, align 8, !tbaa !41
  br label %bb.av

bb.p:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !46
  %.not145 = icmp eq ptr %i.as, null
  br i1 %.not145, label %bb.q, label %bb.av

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr i8, ptr %.0120, i64 8
  %.0120.val153 = load ptr, ptr %i.at, align 8, !tbaa !111
  store ptr %.0120.val153, ptr %i.ad, align 8, !tbaa !46
  br label %bb.av

bb.r:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !68
  %.not144 = icmp eq ptr %i.au, null
  br i1 %.not144, label %bb.s, label %bb.av

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr i8, ptr %.0120, i64 8
  %.0120.val154 = load ptr, ptr %i.av, align 8, !tbaa !111
  store ptr %.0120.val154, ptr %i.ac, align 8, !tbaa !68
  %i.aw = add nsw i32 %.0118, 1
  br label %bb.av

bb.t:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.ab, align 8, !tbaa !73
  %.not143 = icmp eq ptr %i.ax, null
  br i1 %.not143, label %bb.u, label %bb.av

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr i8, ptr %.0120, i64 8
  %.0120.val155 = load ptr, ptr %i.ay, align 8, !tbaa !111
  store ptr %.0120.val155, ptr %i.ab, align 8, !tbaa !73
  %i.az = add nsw i32 %.0118, 1
  br label %bb.av

bb.v:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !112
  %.not142 = icmp eq ptr %i.ba, null
  br i1 %.not142, label %bb.w, label %bb.av

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr i8, ptr %.0120, i64 8
  %.0120.val156 = load ptr, ptr %i.bb, align 8, !tbaa !111
  store ptr %.0120.val156, ptr %i.aa, align 8, !tbaa !112
  br label %bb.av

bb.x:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !51
  %.not141 = icmp eq ptr %i.bc, null
  br i1 %.not141, label %bb.y, label %bb.av

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr i8, ptr %.0120, i64 8
  %.0120.val157 = load ptr, ptr %i.bd, align 8, !tbaa !111
  store ptr %.0120.val157, ptr %i.z, align 8, !tbaa !51
  %i.be = add nsw i32 %.0112, 1
  br label %bb.av

bb.z:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !52
  %.not140 = icmp eq ptr %i.bf, null
  br i1 %.not140, label %bb.aa, label %bb.av

bb.aa:                                            ; preds = %bb.z
  %i.bg = getelementptr i8, ptr %.0120, i64 8
  %.0120.val158 = load ptr, ptr %i.bg, align 8, !tbaa !111
  store ptr %.0120.val158, ptr %i.y, align 8, !tbaa !52
  %i.bh = add nsw i32 %.0112, 1
  br label %bb.av

bb.ab:                                            ; preds = %bb.g
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !53
  %.not139 = icmp eq ptr %i.bi, null
  br i1 %.not139, label %bb.ac, label %bb.av

bb.ac:                                            ; preds = %bb.ab
  %i.bj = getelementptr i8, ptr %.0120, i64 8
  %.0120.val159 = load ptr, ptr %i.bj, align 8, !tbaa !111
  store ptr %.0120.val159, ptr %i.x, align 8, !tbaa !53
  %i.bk = add nsw i32 %.0112, 1
  br label %bb.av

bb.ad:                                            ; preds = %bb.g
  %i.bl = load ptr, ptr %i.w, align 8, !tbaa !54
  %.not138 = icmp eq ptr %i.bl, null
  br i1 %.not138, label %bb.ae, label %bb.av

bb.ae:                                            ; preds = %bb.ad
  %i.bm = getelementptr i8, ptr %.0120, i64 8
  %.0120.val160 = load ptr, ptr %i.bm, align 8, !tbaa !111
  store ptr %.0120.val160, ptr %i.w, align 8, !tbaa !54
  %i.bn = add nsw i32 %.0112, 1
  br label %bb.av

bb.af:                                            ; preds = %bb.g
  %i.bo = load ptr, ptr %i.v, align 8, !tbaa !22
  %.not137 = icmp eq ptr %i.bo, null
  br i1 %.not137, label %bb.ag, label %bb.av

bb.ag:                                            ; preds = %bb.af
  %i.bp = getelementptr i8, ptr %.0120, i64 8
  %.0120.val161 = load ptr, ptr %i.bp, align 8, !tbaa !111
  store ptr %.0120.val161, ptr %i.v, align 8, !tbaa !22
  %i.bq = add nsw i32 %.0, 1
  br label %bb.av

bb.ah:                                            ; preds = %bb.g
  %i.br = load ptr, ptr %i.u, align 8, !tbaa !98
  %.not136 = icmp eq ptr %i.br, null
  br i1 %.not136, label %bb.ai, label %bb.av

bb.ai:                                            ; preds = %bb.ah
  %i.bs = getelementptr i8, ptr %.0120, i64 8
  %.0120.val162 = load ptr, ptr %i.bs, align 8, !tbaa !111
  store ptr %.0120.val162, ptr %i.u, align 8, !tbaa !98
  br label %bb.av

bb.aj:                                            ; preds = %bb.g
  %i.bt = load ptr, ptr %i.t, align 8, !tbaa !94
  %.not135 = icmp eq ptr %i.bt, null
  br i1 %.not135, label %bb.ak, label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.bu = getelementptr i8, ptr %.0120, i64 8
  %.0120.val163 = load ptr, ptr %i.bu, align 8, !tbaa !111
  store ptr %.0120.val163, ptr %i.t, align 8, !tbaa !94
  br label %bb.av

bb.al:                                            ; preds = %bb.g
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !95
  %.not134 = icmp eq ptr %i.bv, null
  br i1 %.not134, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  %i.bw = getelementptr i8, ptr %.0120, i64 8
  %.0120.val164 = load ptr, ptr %i.bw, align 8, !tbaa !111
  store ptr %.0120.val164, ptr %i.s, align 8, !tbaa !95
  br label %bb.av

bb.an:                                            ; preds = %bb.g
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !55
  %.not133 = icmp eq ptr %i.bx, null
  br i1 %.not133, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.by = getelementptr i8, ptr %.0120, i64 8
  %.0120.val165 = load ptr, ptr %i.by, align 8, !tbaa !111
  store ptr %.0120.val165, ptr %i.r, align 8, !tbaa !55
  br label %bb.av

bb.ap:                                            ; preds = %bb.g
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !96
  %.not132 = icmp eq ptr %i.bz, null
  br i1 %.not132, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.ca = getelementptr i8, ptr %.0120, i64 8
  %.0120.val166 = load ptr, ptr %i.ca, align 8, !tbaa !111
  store ptr %.0120.val166, ptr %i.q, align 8, !tbaa !96
  br label %bb.av

bb.ar:                                            ; preds = %bb.g
  %i.cb = load ptr, ptr %i.p, align 8, !tbaa !97
  %.not131 = icmp eq ptr %i.cb, null
  br i1 %.not131, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.cc = getelementptr i8, ptr %.0120, i64 8
  %.0120.val167 = load ptr, ptr %i.cc, align 8, !tbaa !111
  store ptr %.0120.val167, ptr %i.p, align 8, !tbaa !97
  br label %bb.av

bb.at:                                            ; preds = %bb.g
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !85
  %.not130 = icmp eq ptr %i.cd, null
  br i1 %.not130, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ce = getelementptr i8, ptr %.0120, i64 8
  %.0120.val168 = load ptr, ptr %i.ce, align 8, !tbaa !111
  store ptr %.0120.val168, ptr %i.o, align 8, !tbaa !85
  br label %bb.av

bb.av:                                            ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.aq, %bb.as, %bb.au, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.aj, %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at
  %.1119 = phi i32 [ %.0118, %bb.g ], [ %.0118, %bb.h ], [ %.0118, %bb.i ], [ %.0118, %bb.j ], [ %.0118, %bb.k ], [ %.0118, %bb.l ], [ %.0118, %bb.m ], [ %.0118, %bb.n ], [ %.0118, %bb.o ], [ %.0118, %bb.p ], [ %.0118, %bb.q ], [ %.0118, %bb.r ], [ %i.aw, %bb.s ], [ %.0118, %bb.t ], [ %i.az, %bb.u ], [ %.0118, %bb.v ], [ %.0118, %bb.w ], [ %.0118, %bb.x ], [ %.0118, %bb.y ], [ %.0118, %bb.z ], [ %.0118, %bb.aa ], [ %.0118, %bb.ab ], [ %.0118, %bb.ac ], [ %.0118, %bb.ad ], [ %.0118, %bb.ae ], [ %.0118, %bb.af ], [ %.0118, %bb.ag ], [ %.0118, %bb.ah ], [ %.0118, %bb.ai ], [ %.0118, %bb.aj ], [ %.0118, %bb.ak ], [ %.0118, %bb.al ], [ %.0118, %bb.am ], [ %.0118, %bb.an ], [ %.0118, %bb.ao ], [ %.0118, %bb.ap ], [ %.0118, %bb.aq ], [ %.0118, %bb.ar ], [ %.0118, %bb.as ], [ %.0118, %bb.at ], [ %.0118, %bb.au ]
  %.1117 = phi i32 [ %.0116, %bb.g ], [ %.0116, %bb.h ], [ %.0116, %bb.i ], [ %.0116, %bb.j ], [ 1, %bb.k ], [ %.0116, %bb.l ], [ %.0116, %bb.m ], [ %.0116, %bb.n ], [ 1, %bb.o ], [ %.0116, %bb.p ], [ %.0116, %bb.q ], [ %.0116, %bb.r ], [ %.0116, %bb.s ], [ %.0116, %bb.t ], [ %.0116, %bb.u ], [ %.0116, %bb.v ], [ %.0116, %bb.w ], [ %.0116, %bb.x ], [ %.0116, %bb.y ], [ %.0116, %bb.z ], [ %.0116, %bb.aa ], [ %.0116, %bb.ab ], [ %.0116, %bb.ac ], [ %.0116, %bb.ad ], [ %.0116, %bb.ae ], [ %.0116, %bb.af ], [ %.0116, %bb.ag ], [ %.0116, %bb.ah ], [ %.0116, %bb.ai ], [ %.0116, %bb.aj ], [ %.0116, %bb.ak ], [ %.0116, %bb.al ], [ %.0116, %bb.am ], [ %.0116, %bb.an ], [ %.0116, %bb.ao ], [ %.0116, %bb.ap ], [ %.0116, %bb.aq ], [ %.0116, %bb.ar ], [ %.0116, %bb.as ], [ %.0116, %bb.at ], [ %.0116, %bb.au ]
  %.1115 = phi i32 [ %.0114, %bb.g ], [ %.0114, %bb.h ], [ %.0114, %bb.i ], [ %.0114, %bb.j ], [ %.0114, %bb.k ], [ %.0114, %bb.l ], [ 1, %bb.m ], [ %.0114, %bb.n ], [ %.0114, %bb.o ], [ %.0114, %bb.p ], [ 1, %bb.q ], [ %.0114, %bb.r ], [ %.0114, %bb.s ], [ %.0114, %bb.t ], [ %.0114, %bb.u ], [ %.0114, %bb.v ], [ %.0114, %bb.w ], [ %.0114, %bb.x ], [ %.0114, %bb.y ], [ %.0114, %bb.z ], [ %.0114, %bb.aa ], [ %.0114, %bb.ab ], [ %.0114, %bb.ac ], [ %.0114, %bb.ad ], [ %.0114, %bb.ae ], [ %.0114, %bb.af ], [ %.0114, %bb.ag ], [ %.0114, %bb.ah ], [ %.0114, %bb.ai ], [ %.0114, %bb.aj ], [ %.0114, %bb.ak ], [ %.0114, %bb.al ], [ %.0114, %bb.am ], [ %.0114, %bb.an ], [ %.0114, %bb.ao ], [ %.0114, %bb.ap ], [ %.0114, %bb.aq ], [ %.0114, %bb.ar ], [ %.0114, %bb.as ], [ %.0114, %bb.at ], [ %.0114, %bb.au ]
  %.1113 = phi i32 [ %.0112, %bb.g ], [ %.0112, %bb.h ], [ %.0112, %bb.i ], [ %.0112, %bb.j ], [ %.0112, %bb.k ], [ %.0112, %bb.l ], [ %.0112, %bb.m ], [ %.0112, %bb.n ], [ %.0112, %bb.o ], [ %.0112, %bb.p ], [ %.0112, %bb.q ], [ %.0112, %bb.r ], [ %.0112, %bb.s ], [ %.0112, %bb.t ], [ %.0112, %bb.u ], [ %.0112, %bb.v ], [ %.0112, %bb.w ], [ %.0112, %bb.x ], [ %i.be, %bb.y ], [ %.0112, %bb.z ], [ %i.bh, %bb.aa ], [ %.0112, %bb.ab ], [ %i.bk, %bb.ac ], [ %.0112, %bb.ad ], [ %i.bn, %bb.ae ], [ %.0112, %bb.af ], [ %.0112, %bb.ag ], [ %.0112, %bb.ah ], [ %.0112, %bb.ai ], [ %.0112, %bb.aj ], [ %.0112, %bb.ak ], [ %.0112, %bb.al ], [ %.0112, %bb.am ], [ %.0112, %bb.an ], [ %.0112, %bb.ao ], [ %.0112, %bb.ap ], [ %.0112, %bb.aq ], [ %.0112, %bb.ar ], [ %.0112, %bb.as ], [ %.0112, %bb.at ], [ %.0112, %bb.au ]
  %.1 = phi i32 [ %.0, %bb.g ], [ %.0, %bb.h ], [ %i.al, %bb.i ], [ %.0, %bb.j ], [ %.0, %bb.k ], [ %.0, %bb.l ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.r ], [ %.0, %bb.s ], [ %.0, %bb.t ], [ %.0, %bb.u ], [ %.0, %bb.v ], [ %.0, %bb.w ], [ %.0, %bb.x ], [ %.0, %bb.y ], [ %.0, %bb.z ], [ %.0, %bb.aa ], [ %.0, %bb.ab ], [ %.0, %bb.ac ], [ %.0, %bb.ad ], [ %.0, %bb.ae ], [ %.0, %bb.af ], [ %i.bq, %bb.ag ], [ %.0, %bb.ah ], [ %.0, %bb.ai ], [ %.0, %bb.aj ], [ %.0, %bb.ak ], [ %.0, %bb.al ], [ %.0, %bb.am ], [ %.0, %bb.an ], [ %.0, %bb.ao ], [ %.0, %bb.ap ], [ %.0, %bb.aq ], [ %.0, %bb.ar ], [ %.0, %bb.as ], [ %.0, %bb.at ], [ %.0, %bb.au ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0120, i64 16
  br label %bb.g, !llvm.loop !113

bb.aw:                                            ; preds = %bb.g
  %i.cg = add i32 %.0116, %.0118
  %i.ch = add i32 %i.cg, %.0114
  switch i32 %i.ch, label %.sink.split [
    i32 0, label %bb.ax
    i32 3, label %bb.ay
    i32 4, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ci = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.cj = icmp eq ptr %i.ci, null
  %i.ck = icmp eq i32 %.0112, 0
  %or.cond5 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond5, label %.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.aw, %bb.ax
  %.not126 = icmp eq i32 %.0112, 0
  br i1 %.not126, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cl = icmp slt i32 %.0112, 3
  br i1 %i.cl, label %.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cm = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.co = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.cp = icmp eq ptr %i.co, null
  %i.cq = icmp ne i32 %.0, 2
  %or.cond7 = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %or.cond7, label %.sink.split, label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %.old6.not = icmp eq i32 %.0, 2
  br i1 %.old6.not, label %bb.bd, label %.sink.split

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %.not127 = icmp eq ptr %2, null
  br i1 %.not127, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cr = tail call i32 @ossl_provider_up_ref(ptr noundef nonnull %2) #8
  %.not128 = icmp eq i32 %i.cr, 0
  br i1 %.not128, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store ptr %2, ptr %i.cs, align 8, !tbaa !16
  %i.ct = tail call i32 @evp_cipher_cache_constants(ptr noundef nonnull %i.c) #8
  %.not129 = icmp eq i32 %i.ct, 0
  br i1 %.not129, label %.sink.split, label %EVP_CIPHER_free.exit

.sink.split:                                      ; preds = %bb.bf, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.ax, %bb.aw, %bb.c, %bb.d
  %.sink173 = phi i32 [ 2032, %bb.az ], [ 1894, %bb.c ], [ 1894, %bb.d ], [ 2032, %bb.aw ], [ 2032, %bb.ax ], [ 2032, %bb.bc ], [ 2032, %bb.bb ], [ 2032, %bb.ba ], [ 2041, %bb.bf ]
  %.sink = phi i32 [ 193, %bb.az ], [ 786691, %bb.c ], [ 786691, %bb.d ], [ 193, %bb.aw ], [ 193, %bb.ax ], [ 193, %bb.bc ], [ 193, %bb.bb ], [ 193, %bb.ba ], [ 225, %bb.bf ]
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink173, ptr noundef nonnull @__func__.evp_cipher_from_algorithm) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, ptr noundef null) #8
  br label %bb.bg

bb.bg:                                            ; preds = %.sink.split, %bb.e, %bb.be
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !24
  %.not.i169 = icmp eq i32 %i.cv, 0
  br i1 %.not.i169, label %bb.bh, label %EVP_CIPHER_free.exit

bb.bh:                                            ; preds = %bb.bg
  %i.cw = atomicrmw sub ptr %i.d, i32 1 release, align 4 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %bb.bh
  fence acquire
  br label %bb.bi

CRYPTO_DOWN_REF.exit.i:                           ; preds = %bb.bh
  %i.cy = icmp sgt i32 %i.cw, 1
  br i1 %i.cy, label %EVP_CIPHER_free.exit, label %bb.bi

bb.bi:                                            ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !25
  tail call void @CRYPTO_free(ptr noundef %i.da, ptr noundef nonnull @.str, i32 noundef 2103) #8
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !16
  tail call void @ossl_provider_free(ptr noundef %i.dc) #8
  tail call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 2106) #8
  br label %EVP_CIPHER_free.exit

EVP_CIPHER_free.exit:                             ; preds = %bb.bi, %CRYPTO_DOWN_REF.exit.i, %bb.bg, %bb.bf, %bb.b
  %.0121 = phi ptr [ null, %bb.b ], [ %i.c, %bb.bf ], [ null, %bb.bg ], [ null, %CRYPTO_DOWN_REF.exit.i ], [ null, %bb.bi ]
  ret ptr %.0121
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @evp_cipher_up_ref(ptr nofree noundef captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %EVP_CIPHER_up_ref.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = atomicrmw add ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %EVP_CIPHER_up_ref.exit

EVP_CIPHER_up_ref.exit:                           ; preds = %bb.a, %bb.b
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @evp_cipher_free(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %EVP_CIPHER_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %EVP_CIPHER_free.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = atomicrmw sub ptr %i.d, i32 1 release, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %CRYPTO_DOWN_REF.exit.thread.i, label %CRYPTO_DOWN_REF.exit.i

CRYPTO_DOWN_REF.exit.thread.i:                    ; preds = %bb.c
  fence acquire
  br label %bb.d

CRYPTO_DOWN_REF.exit.i:                           ; preds = %bb.c
  %i.g = icmp sgt i32 %i.e, 1
  br i1 %i.g, label %EVP_CIPHER_free.exit, label %bb.d

bb.d:                                             ; preds = %CRYPTO_DOWN_REF.exit.i, %CRYPTO_DOWN_REF.exit.thread.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  tail call void @CRYPTO_free(ptr noundef %i.i, ptr noundef nonnull @.str, i32 noundef 2103) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  tail call void @ossl_provider_free(ptr noundef %i.k) #8
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 2106) #8
  br label %EVP_CIPHER_free.exit

EVP_CIPHER_free.exit:                             ; preds = %bb.a, %bb.b, %CRYPTO_DOWN_REF.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @evp_cipher_fetch_from_prov(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @evp_generic_fetch_from_prov(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @evp_cipher_from_algorithm, ptr noundef nonnull @evp_cipher_up_ref, ptr noundef nonnull @evp_cipher_free) #8
  ret ptr %i.a
}

declare ptr @evp_generic_fetch_from_prov(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @EVP_CIPHER_can_pipeline(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.e, label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %.critedge
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @evp_cipher_free_int(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  tail call void @CRYPTO_free(ptr noundef %i.b, ptr noundef nonnull @.str, i32 noundef 2103) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  tail call void @ossl_provider_free(ptr noundef %i.d) #8
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2106) #8
  ret void
}

declare void @ossl_provider_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @EVP_CIPHER_do_all_provided(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @evp_generic_do_all(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @evp_cipher_from_algorithm, ptr noundef nonnull @evp_cipher_up_ref, ptr noundef nonnull @evp_cipher_free) #8
  ret void
}

declare void @evp_generic_do_all(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_SKEY_get0_raw_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ENGINE_get_cipher_engine(i32 noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef) local_unnamed_addr #2

declare ptr @ENGINE_get_cipher(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_mode(ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_CTX_get0_cipher(ptr noundef) local_unnamed_addr #2

declare i64 @EVP_CIPHER_get_flags(ptr noundef) local_unnamed_addr #2

declare ptr @ossl_provider_libctx(ptr noundef) local_unnamed_addr #2

declare i32 @evp_names_do_all(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @set_legacy_nid(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @OBJ_NAME_get(ptr noundef %0, i32 noundef 2) #8 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !40
  %i.c = icmp eq i32 %i.b, -1
  %i.d = icmp eq ptr %i.a, null
  %or.cond12 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond12, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.e = tail call i32 @EVP_CIPHER_get_nid(ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !40     ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  %.not11 = icmp eq i32 %i.f, %i.e
  %or.cond = select i1 %.not, i1 true, i1 %.not11
  %. = select i1 %or.cond, i32 %i.e, i32 -1
  store i32 %., ptr %1, align 4, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare ptr @ossl_algorithm_get1_first_name(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_provider_up_ref(ptr noundef) local_unnamed_addr #2

declare i32 @evp_cipher_cache_constants(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_NAME_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_nid(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"evp_cipher_ctx_st", !12, i64 0, !14, i64 8, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 40, !8, i64 56, !7, i64 88, !13, i64 96, !7, i64 104, !7, i64 108, !15, i64 112, !13, i64 120, !7, i64 128, !7, i64 132, !8, i64 136, !15, i64 168, !13, i64 176, !12, i64 184}
!12 = !{!"p1 _ZTS13evp_cipher_st", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS9engine_st", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !19, i64 120}
!17 = !{!"evp_cipher_st", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !15, i64 16, !7, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !7, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !7, i64 96, !18, i64 104, !18, i64 112, !19, i64 120, !20, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"p1 _ZTS16ossl_provider_st", !13, i64 0}
!20 = !{!"", !8, i64 0}
!21 = !{!11, !13, i64 176}
!22 = !{!17, !13, i64 216}
!23 = !{!11, !12, i64 184}
!24 = !{!17, !7, i64 24}
!25 = !{!17, !18, i64 104}
!26 = !{!17, !13, i64 48}
!27 = !{!11, !13, i64 120}
!28 = !{!17, !7, i64 56}
!29 = !{!11, !14, i64 8}
!30 = !{!11, !7, i64 108}
!31 = !{!11, !7, i64 16}
!32 = distinct !{null}
!33 = !{!11, !15, i64 112}
!34 = !{!17, !13, i64 136}
!35 = !{!36, !37, i64 24}
!36 = !{!"evp_skey_st", !20, i64 0, !13, i64 8, !13, i64 16, !37, i64 24}
!37 = !{!"p1 _ZTS15evp_skeymgmt_st", !13, i64 0}
!38 = !{!39, !19, i64 24}
!39 = !{!"evp_skeymgmt_st", !7, i64 0, !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88}
!40 = !{!7, !7, i64 0}
!41 = !{!17, !13, i64 280}
!42 = !{!18, !18, i64 0}
!43 = !{!15, !15, i64 0}
!44 = !{!17, !13, i64 144}
!45 = !{!36, !13, i64 16}
!46 = !{!17, !13, i64 288}
!47 = !{!17, !13, i64 152}
!48 = !{!17, !7, i64 0}
!49 = !{}
!50 = !{!"branch_weights", !"expected", i32 3935085, i32 2143548563}
!51 = !{!17, !13, i64 184}
!52 = !{!17, !13, i64 192}
!53 = !{!17, !13, i64 200}
!54 = !{!17, !13, i64 208}
!55 = !{!17, !13, i64 248}
!56 = !{ptr @EVP_CIPHER_CTX_set_params}
!57 = !{!11, !7, i64 104}
!58 = !{!17, !7, i64 8}
!59 = !{!17, !15, i64 16}
!60 = !{!17, !7, i64 4}
!61 = !{!11, !7, i64 88}
!62 = !{!17, !13, i64 32}
!63 = !{!11, !7, i64 20}
!64 = !{!11, !7, i64 128}
!65 = !{!11, !7, i64 132}
!66 = !{!11, !15, i64 168}
!67 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!68 = !{!17, !13, i64 160}
!69 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!70 = !{!17, !13, i64 40}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!17, !13, i64 168}
!74 = !{!8, !8, i64 0}
!75 = distinct !{!75, !72}
!76 = distinct !{!76, !72, !77, !78}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"branch_weights", i32 4, i32 28}
!80 = distinct !{!80, !72, !77, !78}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !72, !77}
!84 = distinct !{!84, !72}
!85 = !{!17, !13, i64 272}
!86 = !{ptr @EVP_CIPHER_settable_ctx_params}
!87 = !{i64 0, i64 8, !42, i64 8, i64 4, !40, i64 16, i64 8, !88, i64 24, i64 8, !43, i64 32, i64 8, !43}
!88 = !{!13, !13, i64 0}
!89 = !{!90, !18, i64 8}
!90 = !{!"", !18, i64 0, !18, i64 8, !15, i64 16, !7, i64 24}
!91 = !{!90, !15, i64 16}
!92 = !{!90, !18, i64 0}
!93 = !{!17, !13, i64 80}
!94 = !{!17, !13, i64 232}
!95 = !{!17, !13, i64 240}
!96 = !{!17, !13, i64 256}
!97 = !{!17, !13, i64 264}
!98 = !{!17, !13, i64 224}
!99 = !{i64 0, i64 8, !100, i64 8, i64 8, !101, i64 16, i64 4, !40, i64 20, i64 4, !40, i64 24, i64 16, !74, i64 40, i64 16, !74, i64 56, i64 32, !74, i64 88, i64 4, !40, i64 96, i64 8, !88, i64 104, i64 4, !40, i64 108, i64 4, !40, i64 112, i64 8, !43, i64 120, i64 8, !88, i64 128, i64 4, !40, i64 132, i64 4, !40, i64 136, i64 32, !74, i64 168, i64 8, !43, i64 176, i64 8, !88, i64 184, i64 8, !100}
!100 = !{!12, !12, i64 0}
!101 = !{!14, !14, i64 0}
!102 = !{!20, !8, i64 0}
!103 = !{!104, !105, i64 16}
!104 = !{!"ossl_algorithm_st", !18, i64 0, !18, i64 8, !105, i64 16, !18, i64 24}
!105 = !{!"p1 _ZTS16ossl_dispatch_st", !13, i64 0}
!106 = !{!17, !7, i64 96}
!107 = !{!104, !18, i64 24}
!108 = !{!17, !18, i64 112}
!109 = !{!110, !7, i64 0}
!110 = !{!"ossl_dispatch_st", !7, i64 0, !13, i64 8}
!111 = !{!110, !13, i64 8}
!112 = !{!17, !13, i64 176}
!113 = distinct !{!113, !72}
end_hunk_0
