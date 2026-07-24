inline.NumInlined: 18
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@padlock_cfb_cipher:bb.a
  %next.gep245 = getelementptr i8, ptr %i.aq, i64 %index242 ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep245, i64 16
  %wide.load246 = load <16 x i8>, ptr %next.gep245, align 1, !tbaa !14, !alias.scope !34
  %wide.load247 = load <16 x i8>, ptr %i.df, align 1, !tbaa !14, !alias.scope !34
  %i.dg = getelementptr i8, ptr %next.gep243, i64 16 ; 2 uses
  %wide.load248 = load <16 x i8>, ptr %next.gep243, align 1, !tbaa !14, !alias.scope !37, !noalias !34
  %wide.load249 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !14, !alias.scope !37, !noalias !34
  %i.dh = xor <16 x i8> %wide.load248, %wide.load246 ; 2 uses
  %i.di = xor <16 x i8> %wide.load249, %wide.load247 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep244, i64 16
  store <16 x i8> %i.dh, ptr %next.gep244, align 1, !tbaa !14, !alias.scope !39, !noalias !41
  store <16 x i8> %i.di, ptr %i.dj, align 1, !tbaa !14, !alias.scope !39, !noalias !41
  store <16 x i8> %i.dh, ptr %next.gep243, align 1, !tbaa !14, !alias.scope !37, !noalias !34
  store <16 x i8> %i.di, ptr %i.dg, align 1, !tbaa !14, !alias.scope !37, !noalias !34
  %index.next250 = add nuw i64 %index242, 32      ; 2 uses
  %i.dk = icmp eq i64 %index.next250, %n.vec240
  br i1 %i.dk, label %middle.block251, label %vector.body241, !llvm.loop !42

middle.block251:                                  ; preds = %vector.body241
  %cmp.n252 = icmp eq i64 %.594106, %n.vec240
  br i1 %cmp.n252, label %.loopexit, label %vec.epilog.iter.check259

vec.epilog.iter.check259:                         ; preds = %middle.block251
  %min.epilog.iters.check260 = icmp eq i64 %n.mod.vf239, 0
  br i1 %min.epilog.iters.check260, label %vec.epilog.scalar.ph258.preheader, label %vec.epilog.ph261, !prof !29

vec.epilog.ph261:                                 ; preds = %vector.main.loop.iter.check236, %vec.epilog.iter.check259
  %vec.epilog.resume.val253 = phi i64 [ %n.vec240, %vec.epilog.iter.check259 ], [ 0, %vector.main.loop.iter.check236 ]
  %n.vec263 = and i64 %.594106, -4                ; 5 uses
  %i.dl = getelementptr i8, ptr %i.f, i64 %n.vec263
  %i.dm = getelementptr i8, ptr %i.ap, i64 %n.vec263
  %i.dn = getelementptr i8, ptr %i.aq, i64 %n.vec263
  %i.do = and i64 %.594106, 3
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph261
  %index265 = phi i64 [ %vec.epilog.resume.val253, %vec.epilog.ph261 ], [ %index.next271, %vec.epilog.vector.body264 ] ; 4 uses
  %next.gep266 = getelementptr i8, ptr %i.f, i64 %index265 ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.ap, i64 %index265
  %next.gep268 = getelementptr i8, ptr %i.aq, i64 %index265
  %wide.load269 = load <4 x i8>, ptr %next.gep268, align 1, !tbaa !14, !alias.scope !34
  %wide.load270 = load <4 x i8>, ptr %next.gep266, align 1, !tbaa !14, !alias.scope !37, !noalias !34
  %i.dp = xor <4 x i8> %wide.load270, %wide.load269 ; 2 uses
  store <4 x i8> %i.dp, ptr %next.gep267, align 1, !tbaa !14, !alias.scope !39, !noalias !41
  store <4 x i8> %i.dp, ptr %next.gep266, align 1, !tbaa !14, !alias.scope !37, !noalias !34
  %index.next271 = add nuw i64 %index265, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next271, %n.vec263
  br i1 %i.dq, label %vec.epilog.middle.block272, label %vec.epilog.vector.body264, !llvm.loop !43

vec.epilog.middle.block272:                       ; preds = %vec.epilog.vector.body264
  %cmp.n273 = icmp eq i64 %.594106, %n.vec263
  br i1 %cmp.n273, label %.loopexit, label %vec.epilog.scalar.ph258.preheader

vec.epilog.scalar.ph258.preheader:                ; preds = %vector.memcheck220, %iter.check257, %vec.epilog.iter.check259, %vec.epilog.middle.block272
  %.175134.ph = phi ptr [ %i.f, %iter.check257 ], [ %i.f, %vector.memcheck220 ], [ %i.db, %vec.epilog.iter.check259 ], [ %i.dl, %vec.epilog.middle.block272 ] ; 2 uses
  %.6133.ph = phi ptr [ %i.ap, %iter.check257 ], [ %i.ap, %vector.memcheck220 ], [ %i.dc, %vec.epilog.iter.check259 ], [ %i.dm, %vec.epilog.middle.block272 ] ; 2 uses
  %.685132.ph = phi ptr [ %i.aq, %iter.check257 ], [ %i.aq, %vector.memcheck220 ], [ %i.dd, %vec.epilog.iter.check259 ], [ %i.dn, %vec.epilog.middle.block272 ] ; 2 uses
  %.7131.ph = phi i64 [ %.594106, %iter.check257 ], [ %.594106, %vector.memcheck220 ], [ %i.de, %vec.epilog.iter.check259 ], [ %i.do, %vec.epilog.middle.block272 ] ; 4 uses
  %i.dr = add i64 %.7131.ph, -1
  %xtraiter287 = and i64 %.7131.ph, 3             ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %vec.epilog.scalar.ph258.prol.loopexit, label %vec.epilog.scalar.ph258.prol

vec.epilog.scalar.ph258.prol:                     ; preds = %vec.epilog.scalar.ph258.preheader, %vec.epilog.scalar.ph258.prol
  %.175134.prol = phi ptr [ %i.dx, %vec.epilog.scalar.ph258.prol ], [ %.175134.ph, %vec.epilog.scalar.ph258.preheader ] ; 3 uses
  %.6133.prol = phi ptr [ %i.dw, %vec.epilog.scalar.ph258.prol ], [ %.6133.ph, %vec.epilog.scalar.ph258.preheader ] ; 2 uses
  %.685132.prol = phi ptr [ %i.ds, %vec.epilog.scalar.ph258.prol ], [ %.685132.ph, %vec.epilog.scalar.ph258.preheader ] ; 2 uses
  %.7131.prol = phi i64 [ %i.dy, %vec.epilog.scalar.ph258.prol ], [ %.7131.ph, %vec.epilog.scalar.ph258.preheader ]
  %prol.iter289 = phi i64 [ %prol.iter289.next, %vec.epilog.scalar.ph258.prol ], [ 0, %vec.epilog.scalar.ph258.preheader ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.685132.prol, i64 1 ; 2 uses
  %i.dt = load i8, ptr %.685132.prol, align 1, !tbaa !14
  %i.du = load i8, ptr %.175134.prol, align 1, !tbaa !14
  %i.dv = xor i8 %i.du, %i.dt                     ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.6133.prol, i64 1 ; 2 uses
  store i8 %i.dv, ptr %.6133.prol, align 1, !tbaa !14
  store i8 %i.dv, ptr %.175134.prol, align 1, !tbaa !14
  %i.dx = getelementptr inbounds nuw i8, ptr %.175134.prol, i64 1 ; 2 uses
  %i.dy = add i64 %.7131.prol, -1                 ; 2 uses
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %vec.epilog.scalar.ph258.prol.loopexit, label %vec.epilog.scalar.ph258.prol, !llvm.loop !44

vec.epilog.scalar.ph258.prol.loopexit:            ; preds = %vec.epilog.scalar.ph258.prol, %vec.epilog.scalar.ph258.preheader
  %.175134.unr = phi ptr [ %.175134.ph, %vec.epilog.scalar.ph258.preheader ], [ %i.dx, %vec.epilog.scalar.ph258.prol ]
  %.6133.unr = phi ptr [ %.6133.ph, %vec.epilog.scalar.ph258.preheader ], [ %i.dw, %vec.epilog.scalar.ph258.prol ]
  %.685132.unr = phi ptr [ %.685132.ph, %vec.epilog.scalar.ph258.preheader ], [ %i.ds, %vec.epilog.scalar.ph258.prol ]
  %.7131.unr = phi i64 [ %.7131.ph, %vec.epilog.scalar.ph258.preheader ], [ %i.dy, %vec.epilog.scalar.ph258.prol ]
  %i.dz = icmp ult i64 %i.dr, 3
  br i1 %i.dz, label %.loopexit, label %vec.epilog.scalar.ph258

vec.epilog.scalar.ph258:                          ; preds = %vec.epilog.scalar.ph258.prol.loopexit, %vec.epilog.scalar.ph258
  %.175134 = phi ptr [ %i.ex, %vec.epilog.scalar.ph258 ], [ %.175134.unr, %vec.epilog.scalar.ph258.prol.loopexit ] ; 6 uses
  %.6133 = phi ptr [ %i.ew, %vec.epilog.scalar.ph258 ], [ %.6133.unr, %vec.epilog.scalar.ph258.prol.loopexit ] ; 5 uses
  %.685132 = phi ptr [ %i.es, %vec.epilog.scalar.ph258 ], [ %.685132.unr, %vec.epilog.scalar.ph258.prol.loopexit ] ; 5 uses
  %.7131 = phi i64 [ %i.ey, %vec.epilog.scalar.ph258 ], [ %.7131.unr, %vec.epilog.scalar.ph258.prol.loopexit ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.685132, i64 1
  %i.eb = load i8, ptr %.685132, align 1, !tbaa !14
  %i.ec = load i8, ptr %.175134, align 1, !tbaa !14
  %i.ed = xor i8 %i.ec, %i.eb                     ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.6133, i64 1
  store i8 %i.ed, ptr %.6133, align 1, !tbaa !14
  store i8 %i.ed, ptr %.175134, align 1, !tbaa !14
  %i.ef = getelementptr inbounds nuw i8, ptr %.175134, i64 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.685132, i64 2
  %i.eh = load i8, ptr %i.ea, align 1, !tbaa !14
  %i.ei = load i8, ptr %i.ef, align 1, !tbaa !14
  %i.ej = xor i8 %i.ei, %i.eh                     ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.6133, i64 2
  store i8 %i.ej, ptr %i.ee, align 1, !tbaa !14
  store i8 %i.ej, ptr %i.ef, align 1, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %.175134, i64 2 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.685132, i64 3
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !14
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !14
  %i.ep = xor i8 %i.eo, %i.en                     ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.6133, i64 3
  store i8 %i.ep, ptr %i.ek, align 1, !tbaa !14
  store i8 %i.ep, ptr %i.el, align 1, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %.175134, i64 3 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.685132, i64 4
  %i.et = load i8, ptr %i.em, align 1, !tbaa !14
  %i.eu = load i8, ptr %i.er, align 1, !tbaa !14
  %i.ev = xor i8 %i.eu, %i.et                     ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.6133, i64 4
  store i8 %i.ev, ptr %i.eq, align 1, !tbaa !14
  store i8 %i.ev, ptr %i.er, align 1, !tbaa !14
  %i.ex = getelementptr inbounds nuw i8, ptr %.175134, i64 4
  %i.ey = add i64 %.7131, -4                      ; 2 uses
  %.not102.3 = icmp eq i64 %i.ey, 0
  br i1 %.not102.3, label %.loopexit, label %vec.epilog.scalar.ph258, !llvm.loop !45

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph258.prol.loopexit, %vec.epilog.scalar.ph258, %middle.block, %vec.epilog.middle.block, %middle.block251, %vec.epilog.middle.block272, %bb.g
  %i.ez = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ez, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.d, %.loopexit
  %.1 = phi i32 [ 0, %bb.f ], [ 1, %.loopexit ], [ 1, %bb.d ], [ 0, %bb.b ]
  ret i32 %.1
}

declare i32 @EVP_CIPHER_CTX_get_num(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_set_num(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @padlock_cfb_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @padlock_aes_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @padlock_ofb_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #6 ; 2 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #6
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 0, %i.f
  %i.h = and i64 %i.g, 15
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h ; 12 uses
  %i.j = tail call i32 @EVP_CIPHER_CTX_get_num(ptr noundef %0) #6 ; 4 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #6 ; 5 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp ult i32 %i.j, 16
  br i1 %i.m, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %.not78 = icmp eq i64 %3, 0
  br i1 %.not78, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.n = zext nneg i32 %i.j to i64                ; 8 uses
  %i.o = add i64 %3, -1
  %i.p = sub nuw nsw i64 15, %i.n
  %umin = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.p) ; 2 uses
  %i.q = add nuw nsw i64 %umin, 1                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.r, -16
  %i.s = add i64 %i.l, %i.n
  %i.t = sub i64 %i.s, %i.b
  %diff.check91 = icmp ugt i64 %i.t, -16
  %conflict.rdx = or i1 %diff.check, %diff.check91
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec98 = and i64 %i.q, 28                     ; 7 uses
  %i.u = add nuw nsw i64 %n.vec98, %i.n           ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 %n.vec98   ; 2 uses
  %i.w = sub i64 %3, %n.vec98                     ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 %n.vec98   ; 2 uses
  %wide.load102 = load <4 x i8>, ptr %2, align 1, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  %wide.load103 = load <4 x i8>, ptr %i.y, align 1, !tbaa !14
  %i.z = xor <4 x i8> %wide.load103, %wide.load102
  store <4 x i8> %i.z, ptr %1, align 1, !tbaa !14
  %i.aa = icmp eq i64 %n.vec98, 4
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %next.gep100.1 = getelementptr i8, ptr %1, i64 4
  %next.gep101.1 = getelementptr i8, ptr %2, i64 4
  %wide.load102.1 = load <4 x i8>, ptr %next.gep101.1, align 1, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.n
  %wide.load103.1 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !14
  %i.ad = xor <4 x i8> %wide.load103.1, %wide.load102.1
  store <4 x i8> %i.ad, ptr %next.gep100.1, align 1, !tbaa !14
  %i.ae = icmp eq i64 %n.vec98, 8
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %next.gep100.2 = getelementptr i8, ptr %1, i64 8
  %next.gep101.2 = getelementptr i8, ptr %2, i64 8
  %wide.load102.2 = load <4 x i8>, ptr %next.gep101.2, align 1, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.n
  %wide.load103.2 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !14
  %i.ah = xor <4 x i8> %wide.load103.2, %wide.load102.2
  store <4 x i8> %i.ah, ptr %next.gep100.2, align 1, !tbaa !14
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n105 = icmp eq i64 %i.q, %n.vec98
  br i1 %cmp.n105, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.04770.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.04869.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.05068.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %iter.check ], [ %i.w, %vec.epilog.middle.block ]
  %.05467.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04770 = phi i64 [ %i.ao, %.lr.ph ], [ %.04770.ph, %.lr.ph.preheader ] ; 3 uses
  %.04869 = phi ptr [ %i.an, %.lr.ph ], [ %.04869.ph, %.lr.ph.preheader ] ; 2 uses
  %.05068 = phi i64 [ %i.ap, %.lr.ph ], [ %.05068.ph, %.lr.ph.preheader ]
  %.05467 = phi ptr [ %i.ai, %.lr.ph ], [ %.05467.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05467, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.05467, align 1, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 %.04770
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = xor i8 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %.04869, i64 1 ; 2 uses
  store i8 %i.am, ptr %.04869, align 1, !tbaa !14
  %i.ao = add nuw nsw i64 %.04770, 1              ; 2 uses
  %i.ap = add i64 %.05068, -1                     ; 3 uses
  %i.aq = icmp samesign ult i64 %.04770, 15
  %i.ar = icmp ne i64 %i.ap, 0
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block
  %.lcssa90 = phi ptr [ %i.x, %vec.epilog.middle.block ], [ %i.ai, %.lr.ph ]
  %.lcssa89 = phi ptr [ %i.v, %vec.epilog.middle.block ], [ %i.an, %.lr.ph ]
  %.lcssa88 = phi i64 [ %i.u, %vec.epilog.middle.block ], [ %i.ao, %.lr.ph ]
  %.lcssa = phi i64 [ %i.w, %vec.epilog.middle.block ], [ %i.ap, %.lr.ph ]
  %i.at = trunc nuw nsw i64 %.lcssa88 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.054.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa90, %._crit_edge.loopexit ]
  %.050.lcssa = phi i64 [ 0, %.preheader ], [ %.lcssa, %._crit_edge.loopexit ]
  %.048.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa89, %._crit_edge.loopexit ]
  %.047.lcssa = phi i32 [ %i.j, %.preheader ], [ %i.at, %._crit_edge.loopexit ]
  %i.au = and i32 %.047.lcssa, 15
  %i.av = tail call i32 @EVP_CIPHER_CTX_set_num(ptr noundef %0, i32 noundef %i.au) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.256 = phi ptr [ %.054.lcssa, %._crit_edge ], [ %2, %bb.a ] ; 3 uses
  %.252 = phi i64 [ %.050.lcssa, %._crit_edge ], [ %3, %bb.a ] ; 4 uses
  %.2 = phi ptr [ %.048.lcssa, %._crit_edge ], [ %1, %bb.a ] ; 3 uses
  %.2111 = ptrtoaddr ptr %.2 to i64               ; 2 uses
  %.256112 = ptrtoaddr ptr %.256 to i64
  %i.aw = icmp eq i64 %.252, 0
  br i1 %i.aw, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = tail call ptr @EVP_CIPHER_CTX_iv(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.ay = and i64 %.252, -16                      ; 5 uses
  %.not60 = icmp eq i64 %i.ay, 0
  br i1 %.not60, label %iter.check138, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = tail call i32 @padlock_ofb_encrypt(ptr noundef %.2, ptr noundef %.256, ptr noundef nonnull %i.i, i64 noundef %i.ay) #6
  %.not61 = icmp eq i32 %i.az, 0
  br i1 %.not61, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = and i64 %.252, 15                       ; 2 uses
  %.not62 = icmp eq i64 %i.ba, 0
  br i1 %.not62, label %.loopexit, label %iter.check138

iter.check138:                                    ; preds = %bb.d, %bb.f
  %.35366 = phi i64 [ %i.ba, %bb.f ], [ %.252, %bb.d ] ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.2, i64 %i.ay ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.256, i64 %i.ay ; 6 uses
  %i.bd = trunc nuw nsw i64 %.35366 to i32
  %i.be = tail call i32 @EVP_CIPHER_CTX_set_num(ptr noundef %0, i32 noundef %i.bd) #6 ; 0 uses
  tail call void @padlock_reload_key() #6
  tail call void @padlock_aes_block(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #6
  tail call void @padlock_reload_key() #6
  %min.iters.check116 = icmp ult i64 %.35366, 4
  br i1 %min.iters.check116, label %vec.epilog.scalar.ph139.preheader, label %vector.memcheck110

vector.memcheck110:                               ; preds = %iter.check138
  %i.bf = sub i64 %.256112, %.2111
  %diff.check113 = icmp ugt i64 %i.bf, -32
  %i.bg = add i64 %i.ay, %.2111
  %i.bh = add i64 %i.f, 15
  %i.bi = or i64 %i.bh, -16
  %i.bj = sub i64 %i.bi, %i.d
  %i.bk = add i64 %i.bj, %i.bg
  %diff.check114 = icmp ult i64 %i.bk, 31
  %conflict.rdx115 = or i1 %diff.check113, %diff.check114
  br i1 %conflict.rdx115, label %vec.epilog.scalar.ph139.preheader, label %vector.main.loop.iter.check117

vector.main.loop.iter.check117:                   ; preds = %vector.memcheck110
  %min.iters.check118 = icmp ult i64 %.35366, 32
  br i1 %min.iters.check118, label %vec.epilog.ph142, label %vector.ph119

vector.ph119:                                     ; preds = %vector.main.loop.iter.check117
  %n.mod.vf120 = and i64 %.35366, 28
  %n.vec121 = and i64 %.35366, -32                ; 6 uses
  %i.bl = getelementptr i8, ptr %i.i, i64 %n.vec121
  %i.bm = getelementptr i8, ptr %i.bb, i64 %n.vec121
  %i.bn = and i64 %.35366, 31
  %i.bo = getelementptr i8, ptr %i.bc, i64 %n.vec121
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
  %index123 = phi i64 [ 0, %vector.ph119 ], [ %index.next131, %vector.body122 ] ; 4 uses
  %next.gep124 = getelementptr i8, ptr %i.i, i64 %index123 ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.bb, i64 %index123 ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.bc, i64 %index123 ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load127 = load <16 x i8>, ptr %next.gep126, align 1, !tbaa !14
  %wide.load128 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !14
  %i.bq = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load129 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !14
  %wide.load130 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !14
  %i.br = xor <16 x i8> %wide.load129, %wide.load127
  %i.bs = xor <16 x i8> %wide.load130, %wide.load128
  %i.bt = getelementptr i8, ptr %next.gep125, i64 16
  store <16 x i8> %i.br, ptr %next.gep125, align 1, !tbaa !14
  store <16 x i8> %i.bs, ptr %i.bt, align 1, !tbaa !14
  %index.next131 = add nuw i64 %index123, 32      ; 2 uses
  %i.bu = icmp eq i64 %index.next131, %n.vec121
  br i1 %i.bu, label %middle.block132, label %vector.body122, !llvm.loop !47

middle.block132:                                  ; preds = %vector.body122
  %cmp.n133 = icmp eq i64 %.35366, %n.vec121
  br i1 %cmp.n133, label %.loopexit, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block132
  %min.epilog.iters.check141 = icmp eq i64 %n.mod.vf120, 0
  br i1 %min.epilog.iters.check141, label %vec.epilog.scalar.ph139.preheader, label %vec.epilog.ph142, !prof !29

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check117, %vec.epilog.iter.check140
  %vec.epilog.resume.val134 = phi i64 [ %n.vec121, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check117 ]
  %n.vec144 = and i64 %.35366, -4                 ; 5 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %n.vec144
  %i.bw = getelementptr i8, ptr %i.bb, i64 %n.vec144
  %i.bx = and i64 %.35366, 3
  %i.by = getelementptr i8, ptr %i.bc, i64 %n.vec144
  br label %vec.epilog.vector.body145

vec.epilog.vector.body145:                        ; preds = %vec.epilog.vector.body145, %vec.epilog.ph142
  %index146 = phi i64 [ %vec.epilog.resume.val134, %vec.epilog.ph142 ], [ %index.next152, %vec.epilog.vector.body145 ] ; 4 uses
  %next.gep147 = getelementptr i8, ptr %i.i, i64 %index146
  %next.gep148 = getelementptr i8, ptr %i.bb, i64 %index146
  %next.gep149 = getelementptr i8, ptr %i.bc, i64 %index146
  %wide.load150 = load <4 x i8>, ptr %next.gep149, align 1, !tbaa !14
  %wide.load151 = load <4 x i8>, ptr %next.gep147, align 1, !tbaa !14
  %i.bz = xor <4 x i8> %wide.load151, %wide.load150
  store <4 x i8> %i.bz, ptr %next.gep148, align 1, !tbaa !14
  %index.next152 = add nuw i64 %index146, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next152, %n.vec144
  br i1 %i.ca, label %vec.epilog.middle.block153, label %vec.epilog.vector.body145, !llvm.loop !48

vec.epilog.middle.block153:                       ; preds = %vec.epilog.vector.body145
  %cmp.n154 = icmp eq i64 %.35366, %n.vec144
  br i1 %cmp.n154, label %.loopexit, label %vec.epilog.scalar.ph139.preheader

vec.epilog.scalar.ph139.preheader:                ; preds = %vector.memcheck110, %iter.check138, %vec.epilog.iter.check140, %vec.epilog.middle.block153
  %.077.ph = phi ptr [ %i.i, %iter.check138 ], [ %i.i, %vector.memcheck110 ], [ %i.bl, %vec.epilog.iter.check140 ], [ %i.bv, %vec.epilog.middle.block153 ] ; 2 uses
  %.376.ph = phi ptr [ %i.bb, %iter.check138 ], [ %i.bb, %vector.memcheck110 ], [ %i.bm, %vec.epilog.iter.check140 ], [ %i.bw, %vec.epilog.middle.block153 ] ; 2 uses
  %.475.ph = phi i64 [ %.35366, %iter.check138 ], [ %.35366, %vector.memcheck110 ], [ %i.bn, %vec.epilog.iter.check140 ], [ %i.bx, %vec.epilog.middle.block153 ] ; 4 uses
  %.35774.ph = phi ptr [ %i.bc, %iter.check138 ], [ %i.bc, %vector.memcheck110 ], [ %i.bo, %vec.epilog.iter.check140 ], [ %i.by, %vec.epilog.middle.block153 ] ; 2 uses
  %i.cb = add i64 %.475.ph, -1
  %xtraiter = and i64 %.475.ph, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol

vec.epilog.scalar.ph139.prol:                     ; preds = %vec.epilog.scalar.ph139.preheader, %vec.epilog.scalar.ph139.prol
  %.077.prol = phi ptr [ %i.ch, %vec.epilog.scalar.ph139.prol ], [ %.077.ph, %vec.epilog.scalar.ph139.preheader ] ; 2 uses
  %.376.prol = phi ptr [ %i.cg, %vec.epilog.scalar.ph139.prol ], [ %.376.ph, %vec.epilog.scalar.ph139.preheader ] ; 2 uses
  %.475.prol = phi i64 [ %i.ci, %vec.epilog.scalar.ph139.prol ], [ %.475.ph, %vec.epilog.scalar.ph139.preheader ]
  %.35774.prol = phi ptr [ %i.cc, %vec.epilog.scalar.ph139.prol ], [ %.35774.ph, %vec.epilog.scalar.ph139.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph139.prol ], [ 0, %vec.epilog.scalar.ph139.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.35774.prol, i64 1 ; 2 uses
  %i.cd = load i8, ptr %.35774.prol, align 1, !tbaa !14
  %i.ce = load i8, ptr %.077.prol, align 1, !tbaa !14
  %i.cf = xor i8 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %.376.prol, i64 1 ; 2 uses
  store i8 %i.cf, ptr %.376.prol, align 1, !tbaa !14
  %i.ch = getelementptr inbounds nuw i8, ptr %.077.prol, i64 1 ; 2 uses
  %i.ci = add i64 %.475.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol, !llvm.loop !49

vec.epilog.scalar.ph139.prol.loopexit:            ; preds = %vec.epilog.scalar.ph139.prol, %vec.epilog.scalar.ph139.preheader
  %.077.unr = phi ptr [ %.077.ph, %vec.epilog.scalar.ph139.preheader ], [ %i.ch, %vec.epilog.scalar.ph139.prol ]
  %.376.unr = phi ptr [ %.376.ph, %vec.epilog.scalar.ph139.preheader ], [ %i.cg, %vec.epilog.scalar.ph139.prol ]
end_hunk_0
