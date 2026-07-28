inline.NumInlined: 18
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@padlock_cfb_cipher:bb.a
  %scevgep221 = getelementptr i8, ptr %.4, i64 %i.cz ; 2 uses
  %i.da = getelementptr i8, ptr %i.a, i64 %.594106
  %scevgep222 = getelementptr i8, ptr %i.da, i64 %i.e ; 2 uses
  %scevgep223 = getelementptr i8, ptr %.483, i64 %i.cz ; 2 uses
  %bound0224 = icmp ult ptr %i.ap, %scevgep222
  %bound1225 = icmp ult ptr %i.f, %scevgep221
  %found.conflict226 = and i1 %bound0224, %bound1225
  %bound0227 = icmp ult ptr %i.ap, %scevgep223
  %bound1228 = icmp ult ptr %i.aq, %scevgep221
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %found.conflict226, %found.conflict229
  %bound0231 = icmp ult ptr %i.f, %scevgep223
  %bound1232 = icmp ult ptr %i.aq, %scevgep222
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  br i1 %conflict.rdx234, label %vec.epilog.scalar.ph258.preheader, label %vector.main.loop.iter.check236

vector.main.loop.iter.check236:                   ; preds = %vector.memcheck220
  %min.iters.check237 = icmp ult i64 %.594106, 32
  br i1 %min.iters.check237, label %vec.epilog.ph261, label %vector.ph238

vector.ph238:                                     ; preds = %vector.main.loop.iter.check236
  %n.mod.vf239 = and i64 %.594106, 28
  %n.vec240 = and i64 %.594106, -32               ; 6 uses
  %i.db = getelementptr i8, ptr %i.f, i64 %n.vec240
  %i.dc = getelementptr i8, ptr %i.ap, i64 %n.vec240
  %i.dd = getelementptr i8, ptr %i.aq, i64 %n.vec240
  %i.de = and i64 %.594106, 31
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph238
  %index242 = phi i64 [ 0, %vector.ph238 ], [ %index.next250, %vector.body241 ] ; 4 uses
  %next.gep243 = getelementptr i8, ptr %i.f, i64 %index242 ; 3 uses
  %next.gep244 = getelementptr i8, ptr %i.ap, i64 %index242 ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.aq, i64 %index242 ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep245, i64 16
  %wide.load246 = load <16 x i8>, ptr %next.gep245, align 1, !tbaa !16, !alias.scope !36
  %wide.load247 = load <16 x i8>, ptr %i.df, align 1, !tbaa !16, !alias.scope !36
  %i.dg = getelementptr i8, ptr %next.gep243, i64 16 ; 2 uses
  %wide.load248 = load <16 x i8>, ptr %next.gep243, align 1, !tbaa !16, !alias.scope !39, !noalias !36
  %wide.load249 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !16, !alias.scope !39, !noalias !36
  %i.dh = xor <16 x i8> %wide.load248, %wide.load246 ; 2 uses
  %i.di = xor <16 x i8> %wide.load249, %wide.load247 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep244, i64 16
  store <16 x i8> %i.dh, ptr %next.gep244, align 1, !tbaa !16, !alias.scope !41, !noalias !43
  store <16 x i8> %i.di, ptr %i.dj, align 1, !tbaa !16, !alias.scope !41, !noalias !43
  store <16 x i8> %i.dh, ptr %next.gep243, align 1, !tbaa !16, !alias.scope !39, !noalias !36
  store <16 x i8> %i.di, ptr %i.dg, align 1, !tbaa !16, !alias.scope !39, !noalias !36
  %index.next250 = add nuw i64 %index242, 32      ; 2 uses
  %i.dk = icmp eq i64 %index.next250, %n.vec240
  br i1 %i.dk, label %middle.block251, label %vector.body241, !llvm.loop !44

middle.block251:                                  ; preds = %vector.body241
  %cmp.n252 = icmp eq i64 %.594106, %n.vec240
  br i1 %cmp.n252, label %.loopexit, label %vec.epilog.iter.check259

vec.epilog.iter.check259:                         ; preds = %middle.block251
  %min.epilog.iters.check260 = icmp eq i64 %n.mod.vf239, 0
  br i1 %min.epilog.iters.check260, label %vec.epilog.scalar.ph258.preheader, label %vec.epilog.ph261, !prof !31

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
  %wide.load269 = load <4 x i8>, ptr %next.gep268, align 1, !tbaa !16, !alias.scope !36
  %wide.load270 = load <4 x i8>, ptr %next.gep266, align 1, !tbaa !16, !alias.scope !39, !noalias !36
  %i.dp = xor <4 x i8> %wide.load270, %wide.load269 ; 2 uses
  store <4 x i8> %i.dp, ptr %next.gep267, align 1, !tbaa !16, !alias.scope !41, !noalias !43
  store <4 x i8> %i.dp, ptr %next.gep266, align 1, !tbaa !16, !alias.scope !39, !noalias !36
  %index.next271 = add nuw i64 %index265, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next271, %n.vec263
  br i1 %i.dq, label %vec.epilog.middle.block272, label %vec.epilog.vector.body264, !llvm.loop !45

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
  %i.dt = load i8, ptr %.685132.prol, align 1, !tbaa !16
  %i.du = load i8, ptr %.175134.prol, align 1, !tbaa !16
  %i.dv = xor i8 %i.du, %i.dt                     ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.6133.prol, i64 1 ; 2 uses
  store i8 %i.dv, ptr %.6133.prol, align 1, !tbaa !16
  store i8 %i.dv, ptr %.175134.prol, align 1, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %.175134.prol, i64 1 ; 2 uses
  %i.dy = add i64 %.7131.prol, -1                 ; 2 uses
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %vec.epilog.scalar.ph258.prol.loopexit, label %vec.epilog.scalar.ph258.prol, !llvm.loop !46

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
  %i.eb = load i8, ptr %.685132, align 1, !tbaa !16
  %i.ec = load i8, ptr %.175134, align 1, !tbaa !16
  %i.ed = xor i8 %i.ec, %i.eb                     ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.6133, i64 1
  store i8 %i.ed, ptr %.6133, align 1, !tbaa !16
  store i8 %i.ed, ptr %.175134, align 1, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %.175134, i64 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.685132, i64 2
  %i.eh = load i8, ptr %i.ea, align 1, !tbaa !16
  %i.ei = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.ej = xor i8 %i.ei, %i.eh                     ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.6133, i64 2
  store i8 %i.ej, ptr %i.ee, align 1, !tbaa !16
  store i8 %i.ej, ptr %i.ef, align 1, !tbaa !16
  %i.el = getelementptr inbounds nuw i8, ptr %.175134, i64 2 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.685132, i64 3
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !16
  %i.eo = load i8, ptr %i.el, align 1, !tbaa !16
  %i.ep = xor i8 %i.eo, %i.en                     ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.6133, i64 3
  store i8 %i.ep, ptr %i.ek, align 1, !tbaa !16
  store i8 %i.ep, ptr %i.el, align 1, !tbaa !16
  %i.er = getelementptr inbounds nuw i8, ptr %.175134, i64 3 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.685132, i64 4
  %i.et = load i8, ptr %i.em, align 1, !tbaa !16
  %i.eu = load i8, ptr %i.er, align 1, !tbaa !16
  %i.ev = xor i8 %i.eu, %i.et                     ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.6133, i64 4
  store i8 %i.ev, ptr %i.eq, align 1, !tbaa !16
  store i8 %i.ev, ptr %i.er, align 1, !tbaa !16
  %i.ex = getelementptr inbounds nuw i8, ptr %.175134, i64 4
  %i.ey = add i64 %.7131, -4                      ; 2 uses
  %.not102.3 = icmp eq i64 %i.ey, 0
  br i1 %.not102.3, label %.loopexit, label %vec.epilog.scalar.ph258, !llvm.loop !47

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
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 0, %i.f
  %i.h = and i64 %i.g, 15                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h ; 12 uses
  %i.j = tail call i32 @EVP_CIPHER_CTX_get_num(ptr noundef %0) #6 ; 4 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #6 ; 3 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp ult i32 %i.j, 16
  br i1 %i.m, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %.not78 = icmp eq i64 %3, 0
  br i1 %.not78, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.n = zext nneg i32 %i.j to i64                ; 6 uses
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
  %n.vec98 = and i64 %i.q, 28                     ; 6 uses
  %i.u = add nuw nsw i64 %n.vec98, %i.n           ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 %n.vec98   ; 2 uses
  %i.w = sub i64 %3, %n.vec98                     ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 %n.vec98   ; 2 uses
  %i.y = getelementptr i8, ptr %i.k, i64 %i.n
  br label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.vector.body.1, %vec.epilog.ph
  %index99 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body.1 ] ; 4 uses
  %next.gep101.1 = getelementptr i8, ptr %1, i64 %index99
  %next.gep101 = getelementptr i8, ptr %2, i64 %index99
  %wide.load102 = load <4 x i8>, ptr %next.gep101, align 1, !tbaa !16
  %i.z = getelementptr i8, ptr %i.y, i64 %index99
  %wide.load103.1 = load <4 x i8>, ptr %i.z, align 1, !tbaa !16
  %i.aa = xor <4 x i8> %wide.load103.1, %wide.load102
  store <4 x i8> %i.aa, ptr %next.gep101.1, align 1, !tbaa !16
  %index.next104 = add nuw i64 %index99, 4        ; 2 uses
  %i.ab = icmp eq i64 %index.next104, %n.vec98
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.1
  %cmp.n105 = icmp eq i64 %i.q, %n.vec98
  br i1 %cmp.n105, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.04770.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.04869.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.05068.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %iter.check ], [ %i.w, %vec.epilog.middle.block ]
  %.05467.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04770 = phi i64 [ %i.ai, %.lr.ph ], [ %.04770.ph, %.lr.ph.preheader ] ; 3 uses
  %.04869 = phi ptr [ %i.ah, %.lr.ph ], [ %.04869.ph, %.lr.ph.preheader ] ; 2 uses
  %.05068 = phi i64 [ %i.aj, %.lr.ph ], [ %.05068.ph, %.lr.ph.preheader ]
  %.05467 = phi ptr [ %i.ac, %.lr.ph ], [ %.05467.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05467, i64 1 ; 2 uses
  %i.ad = load i8, ptr %.05467, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %.04770
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = xor i8 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.04869, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.04869, align 1, !tbaa !16
  %i.ai = add nuw nsw i64 %.04770, 1              ; 2 uses
  %i.aj = add i64 %.05068, -1                     ; 3 uses
  %i.ak = icmp samesign ult i64 %.04770, 15
  %i.al = icmp ne i64 %i.aj, 0
  %i.am = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block
  %.lcssa90 = phi ptr [ %i.x, %vec.epilog.middle.block ], [ %i.ac, %.lr.ph ]
  %.lcssa89 = phi ptr [ %i.v, %vec.epilog.middle.block ], [ %i.ah, %.lr.ph ]
  %.lcssa88 = phi i64 [ %i.u, %vec.epilog.middle.block ], [ %i.ai, %.lr.ph ]
  %.lcssa = phi i64 [ %i.w, %vec.epilog.middle.block ], [ %i.aj, %.lr.ph ]
  %i.an = trunc nuw nsw i64 %.lcssa88 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.054.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa90, %._crit_edge.loopexit ]
  %.050.lcssa = phi i64 [ 0, %.preheader ], [ %.lcssa, %._crit_edge.loopexit ]
  %.048.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa89, %._crit_edge.loopexit ]
  %.047.lcssa = phi i32 [ %i.j, %.preheader ], [ %i.an, %._crit_edge.loopexit ]
  %i.ao = and i32 %.047.lcssa, 15
  %i.ap = tail call i32 @EVP_CIPHER_CTX_set_num(ptr noundef %0, i32 noundef %i.ao) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.256 = phi ptr [ %.054.lcssa, %._crit_edge ], [ %2, %bb.a ] ; 3 uses
  %.252 = phi i64 [ %.050.lcssa, %._crit_edge ], [ %3, %bb.a ] ; 4 uses
  %.2 = phi ptr [ %.048.lcssa, %._crit_edge ], [ %1, %bb.a ] ; 3 uses
  %.2111 = ptrtoaddr ptr %.2 to i64               ; 2 uses
  %.256112 = ptrtoaddr ptr %.256 to i64
  %i.aq = icmp eq i64 %.252, 0
  br i1 %i.aq, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = tail call ptr @EVP_CIPHER_CTX_iv(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.as = and i64 %.252, -16                      ; 5 uses
  %.not60 = icmp eq i64 %i.as, 0
  br i1 %.not60, label %iter.check138, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = tail call i32 @padlock_ofb_encrypt(ptr noundef %.2, ptr noundef %.256, ptr noundef nonnull %i.i, i64 noundef %i.as) #6
  %.not61 = icmp eq i32 %i.at, 0
  br i1 %.not61, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = and i64 %.252, 15                       ; 2 uses
  %.not62 = icmp eq i64 %i.au, 0
  br i1 %.not62, label %.loopexit, label %iter.check138

iter.check138:                                    ; preds = %bb.d, %bb.f
  %.35366 = phi i64 [ %i.au, %bb.f ], [ %.252, %bb.d ] ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.2, i64 %i.as ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.256, i64 %i.as ; 6 uses
  %i.ax = trunc nuw nsw i64 %.35366 to i32
  %i.ay = tail call i32 @EVP_CIPHER_CTX_set_num(ptr noundef %0, i32 noundef %i.ax) #6 ; 0 uses
  tail call void @padlock_reload_key() #6
  tail call void @padlock_aes_block(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #6
  tail call void @padlock_reload_key() #6
  %min.iters.check116 = icmp ult i64 %.35366, 4
  br i1 %min.iters.check116, label %vec.epilog.scalar.ph139.preheader, label %vector.memcheck110

vector.memcheck110:                               ; preds = %iter.check138
  %i.az = sub i64 %.256112, %.2111
  %diff.check113 = icmp ugt i64 %i.az, -32
  %i.ba = add i64 %i.as, %.2111
  %i.bb = add i64 %i.h, %i.d
  %i.bc = sub i64 %i.bb, %i.ba
  %diff.check114 = icmp ugt i64 %i.bc, -32
  %conflict.rdx115 = or i1 %diff.check113, %diff.check114
  br i1 %conflict.rdx115, label %vec.epilog.scalar.ph139.preheader, label %vector.main.loop.iter.check117

vector.main.loop.iter.check117:                   ; preds = %vector.memcheck110
  %min.iters.check118 = icmp ult i64 %.35366, 32
  br i1 %min.iters.check118, label %vec.epilog.ph142, label %vector.ph119

vector.ph119:                                     ; preds = %vector.main.loop.iter.check117
  %n.mod.vf120 = and i64 %.35366, 28
  %n.vec121 = and i64 %.35366, -32                ; 6 uses
  %i.bd = getelementptr i8, ptr %i.i, i64 %n.vec121
  %i.be = getelementptr i8, ptr %i.av, i64 %n.vec121
  %i.bf = and i64 %.35366, 31
  %i.bg = getelementptr i8, ptr %i.aw, i64 %n.vec121
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph119
  %index123 = phi i64 [ 0, %vector.ph119 ], [ %index.next131, %vector.body122 ] ; 4 uses
  %next.gep124 = getelementptr i8, ptr %i.i, i64 %index123 ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.av, i64 %index123 ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.aw, i64 %index123 ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load127 = load <16 x i8>, ptr %next.gep126, align 1, !tbaa !16
  %wide.load128 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !16
  %i.bi = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load129 = load <16 x i8>, ptr %next.gep124, align 1, !tbaa !16
  %wide.load130 = load <16 x i8>, ptr %i.bi, align 1, !tbaa !16
  %i.bj = xor <16 x i8> %wide.load129, %wide.load127
  %i.bk = xor <16 x i8> %wide.load130, %wide.load128
  %i.bl = getelementptr i8, ptr %next.gep125, i64 16
  store <16 x i8> %i.bj, ptr %next.gep125, align 1, !tbaa !16
  store <16 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !16
  %index.next131 = add nuw i64 %index123, 32      ; 2 uses
  %i.bm = icmp eq i64 %index.next131, %n.vec121
  br i1 %i.bm, label %middle.block132, label %vector.body122, !llvm.loop !50

middle.block132:                                  ; preds = %vector.body122
  %cmp.n133 = icmp eq i64 %.35366, %n.vec121
  br i1 %cmp.n133, label %.loopexit, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block132
  %min.epilog.iters.check141 = icmp eq i64 %n.mod.vf120, 0
  br i1 %min.epilog.iters.check141, label %vec.epilog.scalar.ph139.preheader, label %vec.epilog.ph142, !prof !31

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check117, %vec.epilog.iter.check140
  %vec.epilog.resume.val134 = phi i64 [ %n.vec121, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check117 ]
  %n.vec144 = and i64 %.35366, -4                 ; 5 uses
  %i.bn = getelementptr i8, ptr %i.i, i64 %n.vec144
  %i.bo = getelementptr i8, ptr %i.av, i64 %n.vec144
  %i.bp = and i64 %.35366, 3
  %i.bq = getelementptr i8, ptr %i.aw, i64 %n.vec144
  br label %vec.epilog.vector.body145

vec.epilog.vector.body145:                        ; preds = %vec.epilog.vector.body145, %vec.epilog.ph142
  %index146 = phi i64 [ %vec.epilog.resume.val134, %vec.epilog.ph142 ], [ %index.next152, %vec.epilog.vector.body145 ] ; 4 uses
  %next.gep147 = getelementptr i8, ptr %i.i, i64 %index146
  %next.gep148 = getelementptr i8, ptr %i.av, i64 %index146
  %next.gep149 = getelementptr i8, ptr %i.aw, i64 %index146
  %wide.load150 = load <4 x i8>, ptr %next.gep149, align 1, !tbaa !16
  %wide.load151 = load <4 x i8>, ptr %next.gep147, align 1, !tbaa !16
  %i.br = xor <4 x i8> %wide.load151, %wide.load150
  store <4 x i8> %i.br, ptr %next.gep148, align 1, !tbaa !16
  %index.next152 = add nuw i64 %index146, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next152, %n.vec144
  br i1 %i.bs, label %vec.epilog.middle.block153, label %vec.epilog.vector.body145, !llvm.loop !51

vec.epilog.middle.block153:                       ; preds = %vec.epilog.vector.body145
  %cmp.n154 = icmp eq i64 %.35366, %n.vec144
  br i1 %cmp.n154, label %.loopexit, label %vec.epilog.scalar.ph139.preheader

vec.epilog.scalar.ph139.preheader:                ; preds = %vector.memcheck110, %iter.check138, %vec.epilog.iter.check140, %vec.epilog.middle.block153
  %.077.ph = phi ptr [ %i.i, %iter.check138 ], [ %i.i, %vector.memcheck110 ], [ %i.bd, %vec.epilog.iter.check140 ], [ %i.bn, %vec.epilog.middle.block153 ] ; 2 uses
  %.376.ph = phi ptr [ %i.av, %iter.check138 ], [ %i.av, %vector.memcheck110 ], [ %i.be, %vec.epilog.iter.check140 ], [ %i.bo, %vec.epilog.middle.block153 ] ; 2 uses
  %.475.ph = phi i64 [ %.35366, %iter.check138 ], [ %.35366, %vector.memcheck110 ], [ %i.bf, %vec.epilog.iter.check140 ], [ %i.bp, %vec.epilog.middle.block153 ] ; 4 uses
  %.35774.ph = phi ptr [ %i.aw, %iter.check138 ], [ %i.aw, %vector.memcheck110 ], [ %i.bg, %vec.epilog.iter.check140 ], [ %i.bq, %vec.epilog.middle.block153 ] ; 2 uses
  %i.bt = add i64 %.475.ph, -1
  %xtraiter = and i64 %.475.ph, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol

vec.epilog.scalar.ph139.prol:                     ; preds = %vec.epilog.scalar.ph139.preheader, %vec.epilog.scalar.ph139.prol
  %.077.prol = phi ptr [ %i.bz, %vec.epilog.scalar.ph139.prol ], [ %.077.ph, %vec.epilog.scalar.ph139.preheader ] ; 2 uses
  %.376.prol = phi ptr [ %i.by, %vec.epilog.scalar.ph139.prol ], [ %.376.ph, %vec.epilog.scalar.ph139.preheader ] ; 2 uses
  %.475.prol = phi i64 [ %i.ca, %vec.epilog.scalar.ph139.prol ], [ %.475.ph, %vec.epilog.scalar.ph139.preheader ]
  %.35774.prol = phi ptr [ %i.bu, %vec.epilog.scalar.ph139.prol ], [ %.35774.ph, %vec.epilog.scalar.ph139.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph139.prol ], [ 0, %vec.epilog.scalar.ph139.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.35774.prol, i64 1 ; 2 uses
  %i.bv = load i8, ptr %.35774.prol, align 1, !tbaa !16
  %i.bw = load i8, ptr %.077.prol, align 1, !tbaa !16
  %i.bx = xor i8 %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.376.prol, i64 1 ; 2 uses
  store i8 %i.bx, ptr %.376.prol, align 1, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %.077.prol, i64 1 ; 2 uses
  %i.ca = add i64 %.475.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol, !llvm.loop !52

vec.epilog.scalar.ph139.prol.loopexit:            ; preds = %vec.epilog.scalar.ph139.prol, %vec.epilog.scalar.ph139.preheader
  %.077.unr = phi ptr [ %.077.ph, %vec.epilog.scalar.ph139.preheader ], [ %i.bz, %vec.epilog.scalar.ph139.prol ]
  %.376.unr = phi ptr [ %.376.ph, %vec.epilog.scalar.ph139.preheader ], [ %i.by, %vec.epilog.scalar.ph139.prol ]
  %.475.unr = phi i64 [ %.475.ph, %vec.epilog.scalar.ph139.preheader ], [ %i.ca, %vec.epilog.scalar.ph139.prol ]
  %.35774.unr = phi ptr [ %.35774.ph, %vec.epilog.scalar.ph139.preheader ], [ %i.bu, %vec.epilog.scalar.ph139.prol ]
  %i.cb = icmp ult i64 %i.bt, 3
  br i1 %i.cb, label %.loopexit, label %vec.epilog.scalar.ph139

vec.epilog.scalar.ph139:                          ; preds = %vec.epilog.scalar.ph139.prol.loopexit, %vec.epilog.scalar.ph139
  %.077 = phi ptr [ %i.cz, %vec.epilog.scalar.ph139 ], [ %.077.unr, %vec.epilog.scalar.ph139.prol.loopexit ] ; 5 uses
  %.376 = phi ptr [ %i.cy, %vec.epilog.scalar.ph139 ], [ %.376.unr, %vec.epilog.scalar.ph139.prol.loopexit ] ; 5 uses
  %.475 = phi i64 [ %i.da, %vec.epilog.scalar.ph139 ], [ %.475.unr, %vec.epilog.scalar.ph139.prol.loopexit ]
  %.35774 = phi ptr [ %i.cu, %vec.epilog.scalar.ph139 ], [ %.35774.unr, %vec.epilog.scalar.ph139.prol.loopexit ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.35774, i64 1
  %i.cd = load i8, ptr %.35774, align 1, !tbaa !16
  %i.ce = load i8, ptr %.077, align 1, !tbaa !16
  %i.cf = xor i8 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %.376, i64 1
  store i8 %i.cf, ptr %.376, align 1, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %.077, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.35774, i64 2
  %i.cj = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ck = load i8, ptr %i.ch, align 1, !tbaa !16
  %i.cl = xor i8 %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %.376, i64 2
  store i8 %i.cl, ptr %i.cg, align 1, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %.077, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %.35774, i64 3
  %i.cp = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.cq = load i8, ptr %i.cn, align 1, !tbaa !16
  %i.cr = xor i8 %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %.376, i64 3
  store i8 %i.cr, ptr %i.cm, align 1, !tbaa !16
  %i.ct = getelementptr inbounds nuw i8, ptr %.077, i64 3
  %i.cu = getelementptr inbounds nuw i8, ptr %.35774, i64 4
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cw = load i8, ptr %i.ct, align 1, !tbaa !16
  %i.cx = xor i8 %i.cw, %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %.376, i64 4
  store i8 %i.cx, ptr %i.cs, align 1, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %.077, i64 4
  %i.da = add i64 %.475, -4                       ; 2 uses
  %.not63.3 = icmp eq i64 %i.da, 0
  br i1 %.not63.3, label %.loopexit, label %vec.epilog.scalar.ph139, !llvm.loop !53

.loopexit:                                        ; preds = %vec.epilog.scalar.ph139.prol.loopexit, %vec.epilog.scalar.ph139, %middle.block132, %vec.epilog.middle.block153, %bb.f
  %i.db = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.db, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.c, %.loopexit
  %.1 = phi i32 [ 0, %bb.e ], [ 1, %.loopexit ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.1
}

declare i32 @padlock_ofb_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @padlock_ctr_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #6
  %i.c = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #6
  %i.d = tail call i32 @EVP_CIPHER_CTX_get_num(ptr noundef %0) #6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 0, %i.f
  %i.h = and i64 %i.g, 15
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  store i32 %i.d, ptr %i.a, align 4, !tbaa !10
  %i.j = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #6
  %i.k = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #6
  call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull @padlock_ctr32_encrypt_glue) #6
  %i.l = load i32, ptr %i.a, align 4, !tbaa !10
  %i.m = call i32 @EVP_CIPHER_CTX_set_num(ptr noundef %0, i32 noundef %i.l) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @padlock_ctr32_encrypt_glue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef initializes((0, 16)) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %4, i64 16, i1 false)
  %i.a = shl i64 %2, 4
  %i.b = tail call i32 @padlock_ctr32_encrypt(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.a) #6 ; 0 uses
  ret void
}

declare i32 @padlock_ctr32_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS13evp_cipher_st", !13, i64 0}
!16 = !{!8, !8, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = !{!26}
!26 = distinct !{!26, !22}
!27 = !{!24, !21}
!28 = distinct !{!28, !18, !29, !30}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 4, i32 28}
!32 = distinct !{!32, !18, !29, !30}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !18, !29}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = !{!42}
!42 = distinct !{!42, !38}
!43 = !{!40, !37}
!44 = distinct !{!44, !18, !29, !30}
!45 = distinct !{!45, !18, !29, !30}
!46 = distinct !{!46, !34}
!47 = distinct !{!47, !18, !29}
!48 = distinct !{!48, !18, !29, !30}
!49 = distinct !{!49, !18, !29}
!50 = distinct !{!50, !18, !29, !30}
!51 = distinct !{!51, !18, !29, !30}
!52 = distinct !{!52, !34}
!53 = distinct !{!53, !18, !29}
end_hunk_0
