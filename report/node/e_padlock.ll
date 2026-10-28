Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_padlock?download=true
inline.NumInlined: 18
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@padlock_cfb_cipher:bb.a
  %i.de = getelementptr i8, ptr %.4, i64 %i.dd    ; 2 uses
  %i.df = getelementptr i8, ptr %i.a, i64 %.587106
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.e   ; 2 uses
  %i.dh = getelementptr i8, ptr %.493, i64 %i.dd  ; 2 uses
  %bound0238 = icmp ult ptr %i.ap, %i.dg
  %bound1239 = icmp ult ptr %i.f, %i.de
  %found.conflict240 = and i1 %bound0238, %bound1239
  %bound0241 = icmp ult ptr %i.ap, %i.dh
  %bound1242 = icmp ult ptr %i.aq, %i.de
  %found.conflict243 = and i1 %bound0241, %bound1242
  %conflict.rdx244 = or i1 %found.conflict240, %found.conflict243
  %bound0245 = icmp ult ptr %i.f, %i.dh
  %bound1246 = icmp ult ptr %i.aq, %i.dg
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx248 = or i1 %conflict.rdx244, %found.conflict247
  br i1 %conflict.rdx248, label %vec.epilog.scalar.ph267.preheader, label %vector.main.loop.iter.check249

vector.main.loop.iter.check249:                   ; preds = %vector.memcheck237
  %min.iters.check250 = icmp ult i64 %.587106, 32
  br i1 %min.iters.check250, label %vec.epilog.ph269, label %vector.ph251

vector.ph251:                                     ; preds = %vector.main.loop.iter.check249
  %i.di = and i64 %.587106, 28
  %n.vec252 = and i64 %.587106, -32               ; 6 uses
  %i.dj = getelementptr i8, ptr %i.f, i64 %n.vec252
  %i.dk = getelementptr i8, ptr %i.ap, i64 %n.vec252
  %i.dl = and i64 %.587106, 31
  %i.dm = getelementptr i8, ptr %i.aq, i64 %n.vec252
  br label %vector.body253

vector.body253:                                   ; preds = %vector.ph251, %vector.body253
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next262, %vector.body253 ] ; 4 uses
  %next.gep255 = getelementptr i8, ptr %i.f, i64 %index254 ; 3 uses
  %next.gep256 = getelementptr i8, ptr %i.ap, i64 %index254 ; 2 uses
  %next.gep257 = getelementptr i8, ptr %i.aq, i64 %index254 ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep257, i64 16
  %wide.load258 = load <16 x i8>, ptr %next.gep257, align 1, !tbaa !11, !alias.scope !44
  %wide.load259 = load <16 x i8>, ptr %i.dn, align 1, !tbaa !11, !alias.scope !44
  %i.do = getelementptr i8, ptr %next.gep255, i64 16 ; 2 uses
  %wide.load260 = load <16 x i8>, ptr %next.gep255, align 1, !tbaa !11, !alias.scope !45, !noalias !44
  %wide.load261 = load <16 x i8>, ptr %i.do, align 1, !tbaa !11, !alias.scope !45, !noalias !44
  %i.dp = xor <16 x i8> %wide.load260, %wide.load258 ; 2 uses
  %i.dq = xor <16 x i8> %wide.load261, %wide.load259 ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep256, i64 16
  store <16 x i8> %i.dp, ptr %next.gep256, align 1, !tbaa !11, !alias.scope !46, !noalias !47
  store <16 x i8> %i.dq, ptr %i.dr, align 1, !tbaa !11, !alias.scope !46, !noalias !47
  store <16 x i8> %i.dp, ptr %next.gep255, align 1, !tbaa !11, !alias.scope !45, !noalias !44
  store <16 x i8> %i.dq, ptr %i.do, align 1, !tbaa !11, !alias.scope !45, !noalias !44
  %index.next262 = add nuw i64 %index254, 32      ; 2 uses
  %i.ds = icmp eq i64 %index.next262, %n.vec252
  br i1 %i.ds, label %middle.block263, label %vector.body253, !llvm.loop !36

middle.block263:                                  ; preds = %vector.body253
  %cmp.n264 = icmp eq i64 %.587106, %n.vec252
  br i1 %cmp.n264, label %.loopexit, label %vec.epilog.iter.check266

vec.epilog.iter.check266:                         ; preds = %middle.block263
  %min.epilog.iters.check268 = icmp eq i64 %i.di, 0
  br i1 %min.epilog.iters.check268, label %vec.epilog.scalar.ph267.preheader, label %vec.epilog.ph269, !prof !15

vec.epilog.ph269:                                 ; preds = %vector.main.loop.iter.check249, %vec.epilog.iter.check266
  %vec.epilog.resume.val270 = phi i64 [ %n.vec252, %vec.epilog.iter.check266 ], [ 0, %vector.main.loop.iter.check249 ]
  %n.vec271 = and i64 %.587106, -4                ; 5 uses
  %i.dt = getelementptr i8, ptr %i.f, i64 %n.vec271
  %i.du = getelementptr i8, ptr %i.ap, i64 %n.vec271
  %i.dv = and i64 %.587106, 3
  %i.dw = getelementptr i8, ptr %i.aq, i64 %n.vec271
  br label %vec.epilog.vector.body272

vec.epilog.vector.body272:                        ; preds = %vec.epilog.vector.body272, %vec.epilog.ph269
  %index273 = phi i64 [ %vec.epilog.resume.val270, %vec.epilog.ph269 ], [ %index.next279, %vec.epilog.vector.body272 ] ; 4 uses
  %next.gep274 = getelementptr i8, ptr %i.f, i64 %index273 ; 2 uses
  %next.gep275 = getelementptr i8, ptr %i.ap, i64 %index273
  %next.gep276 = getelementptr i8, ptr %i.aq, i64 %index273
  %wide.load277 = load <4 x i8>, ptr %next.gep276, align 1, !tbaa !11, !alias.scope !44
  %wide.load278 = load <4 x i8>, ptr %next.gep274, align 1, !tbaa !11, !alias.scope !45, !noalias !44
  %i.dx = xor <4 x i8> %wide.load278, %wide.load277 ; 2 uses
  store <4 x i8> %i.dx, ptr %next.gep275, align 1, !tbaa !11, !alias.scope !46, !noalias !47
  store <4 x i8> %i.dx, ptr %next.gep274, align 1, !tbaa !11, !alias.scope !45, !noalias !44
  %index.next279 = add nuw i64 %index273, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next279, %n.vec271
  br i1 %i.dy, label %vec.epilog.middle.block280, label %vec.epilog.vector.body272, !llvm.loop !37

vec.epilog.middle.block280:                       ; preds = %vec.epilog.vector.body272
  %cmp.n281 = icmp eq i64 %.587106, %n.vec271
  br i1 %cmp.n281, label %.loopexit, label %vec.epilog.scalar.ph267.preheader

vec.epilog.scalar.ph267.preheader:                ; preds = %iter.check265, %vector.memcheck237, %vec.epilog.iter.check266, %vec.epilog.middle.block280
  %.175134.ph = phi ptr [ %i.f, %iter.check265 ], [ %i.f, %vector.memcheck237 ], [ %i.dj, %vec.epilog.iter.check266 ], [ %i.dt, %vec.epilog.middle.block280 ] ; 2 uses
  %.6133.ph = phi ptr [ %i.ap, %iter.check265 ], [ %i.ap, %vector.memcheck237 ], [ %i.dk, %vec.epilog.iter.check266 ], [ %i.du, %vec.epilog.middle.block280 ] ; 2 uses
  %.7132.ph = phi i64 [ %.587106, %iter.check265 ], [ %.587106, %vector.memcheck237 ], [ %i.dl, %vec.epilog.iter.check266 ], [ %i.dv, %vec.epilog.middle.block280 ] ; 4 uses
  %.695131.ph = phi ptr [ %i.aq, %iter.check265 ], [ %i.aq, %vector.memcheck237 ], [ %i.dm, %vec.epilog.iter.check266 ], [ %i.dw, %vec.epilog.middle.block280 ] ; 2 uses
  %i.dz = add i64 %.7132.ph, -1
  %xtraiter295 = and i64 %.7132.ph, 3             ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %vec.epilog.scalar.ph267.prol.loopexit, label %vec.epilog.scalar.ph267.prol

vec.epilog.scalar.ph267.prol:                     ; preds = %vec.epilog.scalar.ph267.preheader, %vec.epilog.scalar.ph267.prol
  %.175134.prol = phi ptr [ %i.ef, %vec.epilog.scalar.ph267.prol ], [ %.175134.ph, %vec.epilog.scalar.ph267.preheader ] ; 3 uses
  %.6133.prol = phi ptr [ %i.ee, %vec.epilog.scalar.ph267.prol ], [ %.6133.ph, %vec.epilog.scalar.ph267.preheader ] ; 2 uses
  %.7132.prol = phi i64 [ %i.eg, %vec.epilog.scalar.ph267.prol ], [ %.7132.ph, %vec.epilog.scalar.ph267.preheader ]
  %.695131.prol = phi ptr [ %i.ea, %vec.epilog.scalar.ph267.prol ], [ %.695131.ph, %vec.epilog.scalar.ph267.preheader ] ; 2 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %vec.epilog.scalar.ph267.prol ], [ 0, %vec.epilog.scalar.ph267.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.695131.prol, i64 1 ; 2 uses
  %i.eb = load i8, ptr %.695131.prol, align 1, !tbaa !11
  %i.ec = load i8, ptr %.175134.prol, align 1, !tbaa !11
  %i.ed = xor i8 %i.ec, %i.eb                     ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.6133.prol, i64 1 ; 2 uses
  store i8 %i.ed, ptr %.6133.prol, align 1, !tbaa !11
  store i8 %i.ed, ptr %.175134.prol, align 1, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %.175134.prol, i64 1 ; 2 uses
  %i.eg = add i64 %.7132.prol, -1                 ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %vec.epilog.scalar.ph267.prol.loopexit, label %vec.epilog.scalar.ph267.prol, !llvm.loop !38

vec.epilog.scalar.ph267.prol.loopexit:            ; preds = %vec.epilog.scalar.ph267.prol, %vec.epilog.scalar.ph267.preheader
  %.175134.unr = phi ptr [ %.175134.ph, %vec.epilog.scalar.ph267.preheader ], [ %i.ef, %vec.epilog.scalar.ph267.prol ]
  %.6133.unr = phi ptr [ %.6133.ph, %vec.epilog.scalar.ph267.preheader ], [ %i.ee, %vec.epilog.scalar.ph267.prol ]
  %.7132.unr = phi i64 [ %.7132.ph, %vec.epilog.scalar.ph267.preheader ], [ %i.eg, %vec.epilog.scalar.ph267.prol ]
  %.695131.unr = phi ptr [ %.695131.ph, %vec.epilog.scalar.ph267.preheader ], [ %i.ea, %vec.epilog.scalar.ph267.prol ]
  %i.eh = icmp ult i64 %i.dz, 3
  br i1 %i.eh, label %.loopexit, label %vec.epilog.scalar.ph267

vec.epilog.scalar.ph267:                          ; preds = %vec.epilog.scalar.ph267.prol.loopexit, %vec.epilog.scalar.ph267
  %.175134 = phi ptr [ %i.ff, %vec.epilog.scalar.ph267 ], [ %.175134.unr, %vec.epilog.scalar.ph267.prol.loopexit ] ; 6 uses
  %.6133 = phi ptr [ %i.fe, %vec.epilog.scalar.ph267 ], [ %.6133.unr, %vec.epilog.scalar.ph267.prol.loopexit ] ; 5 uses
  %.7132 = phi i64 [ %i.fg, %vec.epilog.scalar.ph267 ], [ %.7132.unr, %vec.epilog.scalar.ph267.prol.loopexit ]
  %.695131 = phi ptr [ %i.fa, %vec.epilog.scalar.ph267 ], [ %.695131.unr, %vec.epilog.scalar.ph267.prol.loopexit ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.695131, i64 1
  %i.ej = load i8, ptr %.695131, align 1, !tbaa !11
  %i.ek = load i8, ptr %.175134, align 1, !tbaa !11
  %i.el = xor i8 %i.ek, %i.ej                     ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.6133, i64 1
  store i8 %i.el, ptr %.6133, align 1, !tbaa !11
  store i8 %i.el, ptr %.175134, align 1, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %.175134, i64 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.695131, i64 2
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !11
  %i.eq = load i8, ptr %i.en, align 1, !tbaa !11
  %i.er = xor i8 %i.eq, %i.ep                     ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.6133, i64 2
  store i8 %i.er, ptr %i.em, align 1, !tbaa !11
  store i8 %i.er, ptr %i.en, align 1, !tbaa !11
  %i.et = getelementptr inbounds nuw i8, ptr %.175134, i64 2 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.695131, i64 3
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !11
  %i.ew = load i8, ptr %i.et, align 1, !tbaa !11
  %i.ex = xor i8 %i.ew, %i.ev                     ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.6133, i64 3
  store i8 %i.ex, ptr %i.es, align 1, !tbaa !11
  store i8 %i.ex, ptr %i.et, align 1, !tbaa !11
  %i.ez = getelementptr inbounds nuw i8, ptr %.175134, i64 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.695131, i64 4
  %i.fb = load i8, ptr %i.eu, align 1, !tbaa !11
  %i.fc = load i8, ptr %i.ez, align 1, !tbaa !11
  %i.fd = xor i8 %i.fc, %i.fb                     ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.6133, i64 4
  store i8 %i.fd, ptr %i.ey, align 1, !tbaa !11
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !11
  %i.ff = getelementptr inbounds nuw i8, ptr %.175134, i64 4
  %i.fg = add i64 %.7132, -4                      ; 2 uses
  %.not102.3 = icmp eq i64 %i.fg, 0
  br i1 %.not102.3, label %.loopexit, label %vec.epilog.scalar.ph267, !llvm.loop !39

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph267.prol.loopexit, %vec.epilog.scalar.ph267, %middle.block, %vec.epilog.middle.block, %middle.block263, %vec.epilog.middle.block280, %bb.g
  %i.fh = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fh, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
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
  %diff.check92 = icmp ugt i64 %i.t, -16
  %conflict.rdx = or i1 %diff.check, %diff.check92
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.vec95 = and i64 %i.q, 28                     ; 6 uses
  %i.u = add nuw nsw i64 %n.vec95, %i.n           ; 2 uses
  %i.v = sub i64 %3, %n.vec95                     ; 2 uses
  %i.w = getelementptr i8, ptr %2, i64 %n.vec95   ; 2 uses
  %i.x = getelementptr i8, ptr %1, i64 %n.vec95   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.k, i64 %i.n
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index96 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 4 uses
  %next.gep97 = getelementptr i8, ptr %2, i64 %index96
  %next.gep98 = getelementptr i8, ptr %1, i64 %index96
  %wide.load99 = load <4 x i8>, ptr %next.gep97, align 1, !tbaa !11
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index96
  %wide.load100.a = load <4 x i8>, ptr %gep, align 1, !tbaa !11
  %i.y = xor <4 x i8> %wide.load100.a, %wide.load99
  store <4 x i8> %i.y, ptr %next.gep98, align 1, !tbaa !11
  %index.next101 = add nuw i64 %index96, 4        ; 2 uses
  %i.z = icmp eq i64 %index.next101, %n.vec95
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.q, %n.vec95
  br i1 %cmp.n102, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.04670.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %iter.check ], [ %i.u, %vec.epilog.middle.block ]
  %.04769.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.04868.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %iter.check ], [ %i.w, %vec.epilog.middle.block ]
  %.05267.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %iter.check ], [ %i.x, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04670 = phi i64 [ %i.ag, %.lr.ph ], [ %.04670.ph, %.lr.ph.preheader ] ; 3 uses
  %.04769 = phi i64 [ %i.ah, %.lr.ph ], [ %.04769.ph, %.lr.ph.preheader ]
  %.04868 = phi ptr [ %i.aa, %.lr.ph ], [ %.04868.ph, %.lr.ph.preheader ] ; 2 uses
  %.05267 = phi ptr [ %i.af, %.lr.ph ], [ %.05267.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.04868, i64 1 ; 2 uses
  %i.ab = load i8, ptr %.04868, align 1, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %.04670
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ae = xor i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %.05267, i64 1 ; 2 uses
  store i8 %i.ae, ptr %.05267, align 1, !tbaa !11
  %i.ag = add nuw nsw i64 %.04670, 1              ; 2 uses
  %i.ah = add i64 %.04769, -1                     ; 3 uses
  %i.ai = icmp samesign ult i64 %.04670, 15
  %i.aj = icmp ne i64 %i.ah, 0
  %i.ak = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block
  %.lcssa90 = phi ptr [ %i.w, %vec.epilog.middle.block ], [ %i.aa, %.lr.ph ]
  %.lcssa89 = phi ptr [ %i.x, %vec.epilog.middle.block ], [ %i.af, %.lr.ph ]
  %.lcssa88 = phi i64 [ %i.u, %vec.epilog.middle.block ], [ %i.ag, %.lr.ph ]
  %.lcssa = phi i64 [ %i.v, %vec.epilog.middle.block ], [ %i.ah, %.lr.ph ]
  %i.al = trunc nuw nsw i64 %.lcssa88 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.052.lcssa = phi ptr [ %1, %.preheader ], [ %.lcssa89, %._crit_edge.loopexit ]
  %.048.lcssa = phi ptr [ %2, %.preheader ], [ %.lcssa90, %._crit_edge.loopexit ]
  %.047.lcssa = phi i64 [ 0, %.preheader ], [ %.lcssa, %._crit_edge.loopexit ]
  %.046.lcssa = phi i32 [ %i.j, %.preheader ], [ %i.al, %._crit_edge.loopexit ]
  %i.am = and i32 %.046.lcssa, 15
  %i.an = tail call i32 @EVP_CIPHER_CTX_set_num(ptr noundef %0, i32 noundef %i.am) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %.254 = phi ptr [ %.052.lcssa, %._crit_edge ], [ %1, %bb.a ] ; 3 uses
  %.250 = phi ptr [ %.048.lcssa, %._crit_edge ], [ %2, %bb.a ] ; 3 uses
  %.2 = phi i64 [ %.047.lcssa, %._crit_edge ], [ %3, %bb.a ] ; 4 uses
  %.254112 = ptrtoaddr ptr %.254 to i64           ; 2 uses
  %.250113 = ptrtoaddr ptr %.250 to i64
  %i.ao = icmp eq i64 %.2, 0
  br i1 %i.ao, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = tail call ptr @EVP_CIPHER_CTX_iv(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.ap, i64 16, i1 false)
  %i.aq = and i64 %.2, -16                        ; 5 uses
  %.not60 = icmp eq i64 %i.aq, 0
  br i1 %.not60, label %iter.check135, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call i32 @padlock_ofb_encrypt(ptr noundef %.254, ptr noundef %.250, ptr noundef nonnull %i.i, i64 noundef %i.aq) #6
  %.not61 = icmp eq i32 %i.ar, 0
  br i1 %.not61, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = and i64 %.2, 15                         ; 2 uses
  %.not62 = icmp eq i64 %i.as, 0
  br i1 %.not62, label %.loopexit, label %iter.check135

iter.check135:                                    ; preds = %bb.d, %bb.f
  %.366 = phi i64 [ %i.as, %bb.f ], [ %.2, %bb.d ] ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.254, i64 %i.aq ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.250, i64 %i.aq ; 6 uses
  %i.av = trunc nuw nsw i64 %.366 to i32
  %i.aw = tail call i32 @EVP_CIPHER_CTX_set_num(ptr noundef %0, i32 noundef %i.av) #6 ; 0 uses
  tail call void @padlock_reload_key() #6
  tail call void @padlock_aes_block(ptr noundef nonnull %i.i, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i) #6
  tail call void @padlock_reload_key() #6
  %min.iters.check114 = icmp ult i64 %.366, 4
  br i1 %min.iters.check114, label %vec.epilog.scalar.ph137.preheader, label %vector.memcheck115

vector.memcheck115:                               ; preds = %iter.check135
  %i.ax = sub i64 %.250113, %.254112
  %diff.check116 = icmp ugt i64 %i.ax, -32
  %i.ay = add i64 %i.h, %i.d
  %i.az = add i64 %i.aq, %.254112
  %i.ba = sub i64 %i.ay, %i.az
  %diff.check117 = icmp ugt i64 %i.ba, -32
  %conflict.rdx118 = or i1 %diff.check116, %diff.check117
  br i1 %conflict.rdx118, label %vec.epilog.scalar.ph137.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %vector.memcheck115
  %min.iters.check120 = icmp ult i64 %.366, 32
  br i1 %min.iters.check120, label %vec.epilog.ph139, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %i.bb = and i64 %.366, 28
  %n.vec122 = and i64 %.366, -32                  ; 6 uses
  %i.bc = getelementptr i8, ptr %i.i, i64 %n.vec122
  %i.bd = and i64 %.366, 31
  %i.be = getelementptr i8, ptr %i.au, i64 %n.vec122
  %i.bf = getelementptr i8, ptr %i.at, i64 %n.vec122
  br label %vector.body123

vector.body123:                                   ; preds = %vector.ph121, %vector.body123
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next132, %vector.body123 ] ; 4 uses
  %next.gep125 = getelementptr i8, ptr %i.i, i64 %index124 ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.au, i64 %index124 ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.at, i64 %index124 ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load128 = load <16 x i8>, ptr %next.gep126, align 1, !tbaa !11
  %wide.load129 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !11
  %i.bh = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load130 = load <16 x i8>, ptr %next.gep125, align 1, !tbaa !11
  %wide.load131 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !11
  %i.bi = xor <16 x i8> %wide.load130, %wide.load128
  %i.bj = xor <16 x i8> %wide.load131, %wide.load129
  %i.bk = getelementptr i8, ptr %next.gep127, i64 16
  store <16 x i8> %i.bi, ptr %next.gep127, align 1, !tbaa !11
  store <16 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !11
  %index.next132 = add nuw i64 %index124, 32      ; 2 uses
  %i.bl = icmp eq i64 %index.next132, %n.vec122
  br i1 %i.bl, label %middle.block133, label %vector.body123, !llvm.loop !50

middle.block133:                                  ; preds = %vector.body123
  %cmp.n134 = icmp eq i64 %.366, %n.vec122
  br i1 %cmp.n134, label %.loopexit, label %vec.epilog.iter.check136

vec.epilog.iter.check136:                         ; preds = %middle.block133
  %min.epilog.iters.check138 = icmp eq i64 %i.bb, 0
  br i1 %min.epilog.iters.check138, label %vec.epilog.scalar.ph137.preheader, label %vec.epilog.ph139, !prof !15

vec.epilog.ph139:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check136
  %vec.epilog.resume.val140 = phi i64 [ %n.vec122, %vec.epilog.iter.check136 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec141 = and i64 %.366, -4                   ; 5 uses
  %i.bm = getelementptr i8, ptr %i.i, i64 %n.vec141
  %i.bn = and i64 %.366, 3
  %i.bo = getelementptr i8, ptr %i.au, i64 %n.vec141
  %i.bp = getelementptr i8, ptr %i.at, i64 %n.vec141
  br label %vec.epilog.vector.body142

vec.epilog.vector.body142:                        ; preds = %vec.epilog.vector.body142, %vec.epilog.ph139
  %index143 = phi i64 [ %vec.epilog.resume.val140, %vec.epilog.ph139 ], [ %index.next149, %vec.epilog.vector.body142 ] ; 4 uses
  %next.gep144 = getelementptr i8, ptr %i.i, i64 %index143
  %next.gep145 = getelementptr i8, ptr %i.au, i64 %index143
  %next.gep146 = getelementptr i8, ptr %i.at, i64 %index143
  %wide.load147 = load <4 x i8>, ptr %next.gep145, align 1, !tbaa !11
  %wide.load148 = load <4 x i8>, ptr %next.gep144, align 1, !tbaa !11
  %i.bq = xor <4 x i8> %wide.load148, %wide.load147
  store <4 x i8> %i.bq, ptr %next.gep146, align 1, !tbaa !11
  %index.next149 = add nuw i64 %index143, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next149, %n.vec141
  br i1 %i.br, label %vec.epilog.middle.block150, label %vec.epilog.vector.body142, !llvm.loop !51

vec.epilog.middle.block150:                       ; preds = %vec.epilog.vector.body142
  %cmp.n151 = icmp eq i64 %.366, %n.vec141
  br i1 %cmp.n151, label %.loopexit, label %vec.epilog.scalar.ph137.preheader

vec.epilog.scalar.ph137.preheader:                ; preds = %iter.check135, %vector.memcheck115, %vec.epilog.iter.check136, %vec.epilog.middle.block150
  %.077.ph = phi ptr [ %i.i, %iter.check135 ], [ %i.i, %vector.memcheck115 ], [ %i.bc, %vec.epilog.iter.check136 ], [ %i.bm, %vec.epilog.middle.block150 ] ; 2 uses
  %.476.ph = phi i64 [ %.366, %iter.check135 ], [ %.366, %vector.memcheck115 ], [ %i.bd, %vec.epilog.iter.check136 ], [ %i.bn, %vec.epilog.middle.block150 ] ; 4 uses
  %.35175.ph = phi ptr [ %i.au, %iter.check135 ], [ %i.au, %vector.memcheck115 ], [ %i.be, %vec.epilog.iter.check136 ], [ %i.bo, %vec.epilog.middle.block150 ] ; 2 uses
  %.35574.ph = phi ptr [ %i.at, %iter.check135 ], [ %i.at, %vector.memcheck115 ], [ %i.bf, %vec.epilog.iter.check136 ], [ %i.bp, %vec.epilog.middle.block150 ] ; 2 uses
  %i.bs = add i64 %.476.ph, -1
  %xtraiter = and i64 %.476.ph, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph137.prol.loopexit, label %vec.epilog.scalar.ph137.prol

vec.epilog.scalar.ph137.prol:                     ; preds = %vec.epilog.scalar.ph137.preheader, %vec.epilog.scalar.ph137.prol
  %.077.prol = phi ptr [ %i.by, %vec.epilog.scalar.ph137.prol ], [ %.077.ph, %vec.epilog.scalar.ph137.preheader ] ; 2 uses
  %.476.prol = phi i64 [ %i.bz, %vec.epilog.scalar.ph137.prol ], [ %.476.ph, %vec.epilog.scalar.ph137.preheader ]
  %.35175.prol = phi ptr [ %i.bt, %vec.epilog.scalar.ph137.prol ], [ %.35175.ph, %vec.epilog.scalar.ph137.preheader ] ; 2 uses
  %.35574.prol = phi ptr [ %i.bx, %vec.epilog.scalar.ph137.prol ], [ %.35574.ph, %vec.epilog.scalar.ph137.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph137.prol ], [ 0, %vec.epilog.scalar.ph137.preheader ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.35175.prol, i64 1 ; 2 uses
  %i.bu = load i8, ptr %.35175.prol, align 1, !tbaa !11
  %i.bv = load i8, ptr %.077.prol, align 1, !tbaa !11
  %i.bw = xor i8 %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %.35574.prol, i64 1 ; 2 uses
  store i8 %i.bw, ptr %.35574.prol, align 1, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %.077.prol, i64 1 ; 2 uses
  %i.bz = add i64 %.476.prol, -1                  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph137.prol.loopexit, label %vec.epilog.scalar.ph137.prol, !llvm.loop !52

vec.epilog.scalar.ph137.prol.loopexit:            ; preds = %vec.epilog.scalar.ph137.prol, %vec.epilog.scalar.ph137.preheader
  %.077.unr = phi ptr [ %.077.ph, %vec.epilog.scalar.ph137.preheader ], [ %i.by, %vec.epilog.scalar.ph137.prol ]
  %.476.unr = phi i64 [ %.476.ph, %vec.epilog.scalar.ph137.preheader ], [ %i.bz, %vec.epilog.scalar.ph137.prol ]
  %.35175.unr = phi ptr [ %.35175.ph, %vec.epilog.scalar.ph137.preheader ], [ %i.bt, %vec.epilog.scalar.ph137.prol ]
  %.35574.unr = phi ptr [ %.35574.ph, %vec.epilog.scalar.ph137.preheader ], [ %i.bx, %vec.epilog.scalar.ph137.prol ]
  %i.ca = icmp ult i64 %i.bs, 3
  br i1 %i.ca, label %.loopexit, label %vec.epilog.scalar.ph137

vec.epilog.scalar.ph137:                          ; preds = %vec.epilog.scalar.ph137.prol.loopexit, %vec.epilog.scalar.ph137
  %.077 = phi ptr [ %i.cy, %vec.epilog.scalar.ph137 ], [ %.077.unr, %vec.epilog.scalar.ph137.prol.loopexit ] ; 5 uses
  %.476 = phi i64 [ %i.cz, %vec.epilog.scalar.ph137 ], [ %.476.unr, %vec.epilog.scalar.ph137.prol.loopexit ]
  %.35175 = phi ptr [ %i.ct, %vec.epilog.scalar.ph137 ], [ %.35175.unr, %vec.epilog.scalar.ph137.prol.loopexit ] ; 5 uses
  %.35574 = phi ptr [ %i.cx, %vec.epilog.scalar.ph137 ], [ %.35574.unr, %vec.epilog.scalar.ph137.prol.loopexit ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.35175, i64 1
  %i.cc = load i8, ptr %.35175, align 1, !tbaa !11
  %i.cd = load i8, ptr %.077, align 1, !tbaa !11
  %i.ce = xor i8 %i.cd, %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %.35574, i64 1
  store i8 %i.ce, ptr %.35574, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %.077, i64 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.35175, i64 2
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cj = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ck = xor i8 %i.cj, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %.35574, i64 2
  store i8 %i.ck, ptr %i.cf, align 1, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %.077, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %.35175, i64 3
  %i.co = load i8, ptr %i.ch, align 1, !tbaa !11
  %i.cp = load i8, ptr %i.cm, align 1, !tbaa !11
  %i.cq = xor i8 %i.cp, %i.co
  %i.cr = getelementptr inbounds nuw i8, ptr %.35574, i64 3
  store i8 %i.cq, ptr %i.cl, align 1, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %.077, i64 3
  %i.ct = getelementptr inbounds nuw i8, ptr %.35175, i64 4
  %i.cu = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cv = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cw = xor i8 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %.35574, i64 4
  store i8 %i.cw, ptr %i.cr, align 1, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %.077, i64 4
  %i.cz = add i64 %.476, -4                       ; 2 uses
  %.not63.3 = icmp eq i64 %i.cz, 0
  br i1 %.not63.3, label %.loopexit, label %vec.epilog.scalar.ph137, !llvm.loop !53

.loopexit:                                        ; preds = %vec.epilog.scalar.ph137.prol.loopexit, %vec.epilog.scalar.ph137, %middle.block133, %vec.epilog.middle.block150, %bb.f
  %i.da = tail call ptr @EVP_CIPHER_CTX_iv_noconst(ptr noundef %0) #6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.da, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.c, %.loopexit
  %.157 = phi i32 [ 0, %bb.e ], [ 1, %.loopexit ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.157
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
!llvm.errno.tbaa = !{!9}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"branch_weights", i32 4, i32 28}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"p1 int", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTS13evp_cipher_st", !17, i64 0}
!21 = !{!20, !20, i64 0}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, i1 false, !"LVerDomain"}
!25 = distinct !{!25, !24}
!26 = distinct !{!26, !24}
!27 = distinct !{!27, !24}
!28 = distinct !{!28, !12, !13, !14}
!29 = distinct !{!29, !12, !13, !14}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !12, !13}
!32 = distinct !{!32, i1 false, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !12, !13, !14}
!37 = distinct !{!37, !12, !13, !14}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !12, !13}
!40 = !{!25}
!41 = !{!26}
!42 = !{!27}
!43 = !{!26, !25}
!44 = !{!33}
!45 = !{!34}
!46 = !{!35}
!47 = !{!34, !33}
!48 = distinct !{!48, !12, !13, !14}
!49 = distinct !{!49, !12, !13}
!50 = distinct !{!50, !12, !13, !14}
!51 = distinct !{!51, !12, !13, !14}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !12, !13}
end_hunk_0
