Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/ccm?download=true
inline.NumInlined: 15
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@mbedtls_ccm_update:bb.a
middle.block248:                                  ; preds = %vector.body241
  %cmp.n249 = icmp eq i64 %i.cn, %n.vec240
  br i1 %cmp.n249, label %mbedtls_ccm_crypt.exit.thread, label %vec.epilog.iter.check253

vec.epilog.iter.check253:                         ; preds = %middle.block248
  %min.epilog.iters.check254 = icmp eq i64 %i.cp, 0
  br i1 %min.epilog.iters.check254, label %.lr.ph14.i.preheader, label %vec.epilog.ph255, !prof !60

vec.epilog.ph255:                                 ; preds = %vector.main.loop.iter.check237, %vec.epilog.iter.check253
  %vec.epilog.resume.val250 = phi i64 [ %n.vec240, %vec.epilog.iter.check253 ], [ 0, %vector.main.loop.iter.check237 ]
  %i.db = and i64 %spec.select, 7                 ; 2 uses
  %n.vec256 = sub nsw i64 %i.cn, %i.db            ; 2 uses
  %i.dc = add nsw i64 %.0.i.lcssa16.i, %n.vec256
  br label %vec.epilog.vector.body257

vec.epilog.vector.body257:                        ; preds = %vec.epilog.vector.body257, %vec.epilog.ph255
  %index258 = phi i64 [ %vec.epilog.resume.val250, %vec.epilog.ph255 ], [ %index.next261, %vec.epilog.vector.body257 ] ; 2 uses
  %i.dd = add nuw i64 %.0.i.lcssa16.i, %index258  ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.082152, i64 %i.dd
  %wide.load259 = load <8 x i8>, ptr %i.de, align 1, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dd
  %wide.load260 = load <8 x i8>, ptr %i.df, align 1, !tbaa !16
  %i.dg = xor <8 x i8> %wide.load260, %wide.load259
  %i.dh = getelementptr inbounds nuw i8, ptr %.083150, i64 %i.dd
  store <8 x i8> %i.dg, ptr %i.dh, align 1, !tbaa !16
  %index.next261 = add nuw i64 %index258, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next261, %n.vec256
  br i1 %i.di, label %vec.epilog.middle.block262, label %vec.epilog.vector.body257, !llvm.loop !44

vec.epilog.middle.block262:                       ; preds = %vec.epilog.vector.body257
  %cmp.n263 = icmp eq i64 %i.db, 0
  br i1 %cmp.n263, label %mbedtls_ccm_crypt.exit.thread, label %.lr.ph14.i.preheader

.lr.ph14.i.preheader:                             ; preds = %iter.check251, %vec.epilog.iter.check253, %vec.epilog.middle.block262
  %.1.i13.i.ph = phi i64 [ %.0.i.lcssa16.i, %iter.check251 ], [ %i.cq, %vec.epilog.iter.check253 ], [ %i.dc, %vec.epilog.middle.block262 ] ; 4 uses
  %i.dj = sub i64 %spec.select, %.1.i13.i.ph
  %xtraiter312 = and i64 %i.dj, 3                 ; 2 uses
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.lr.ph14.i.prol.loopexit, label %.lr.ph14.i.prol

.lr.ph14.i.prol:                                  ; preds = %.lr.ph14.i.preheader, %.lr.ph14.i.prol
  %.1.i13.i.prol = phi i64 [ %i.dq, %.lr.ph14.i.prol ], [ %.1.i13.i.ph, %.lr.ph14.i.preheader ] ; 4 uses
  %prol.iter314 = phi i64 [ %prol.iter314.next, %.lr.ph14.i.prol ], [ 0, %.lr.ph14.i.preheader ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.082152, i64 %.1.i13.i.prol
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.1.i13.i.prol
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !16
  %i.do = xor i8 %i.dn, %i.dl
  %i.dp = getelementptr inbounds nuw i8, ptr %.083150, i64 %.1.i13.i.prol
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !16
  %i.dq = add nuw nsw i64 %.1.i13.i.prol, 1       ; 2 uses
  %prol.iter314.next = add i64 %prol.iter314, 1   ; 2 uses
  %prol.iter314.cmp.not = icmp eq i64 %prol.iter314.next, %xtraiter312
  br i1 %prol.iter314.cmp.not, label %.lr.ph14.i.prol.loopexit, label %.lr.ph14.i.prol, !llvm.loop !45

.lr.ph14.i.prol.loopexit:                         ; preds = %.lr.ph14.i.prol, %.lr.ph14.i.preheader
  %.1.i13.i.unr = phi i64 [ %.1.i13.i.ph, %.lr.ph14.i.preheader ], [ %i.dq, %.lr.ph14.i.prol ]
  %i.dr = sub i64 %.1.i13.i.ph, %spec.select
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %mbedtls_ccm_crypt.exit.thread, label %.lr.ph14.i

.lr.ph.i:                                         ; preds = %bb.l
  %.0.copyload.i10.i = load i64, ptr %.082152, align 1
  %.0.copyload.i.i = load i64, ptr %i.cl, align 1
  %i.dt = xor i64 %.0.copyload.i.i, %.0.copyload.i10.i
  store i64 %i.dt, ptr %.083150, align 1
  %.not.i.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i.i, label %.preheader.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.du = getelementptr inbounds nuw i8, ptr %.082152, i64 8
  %.0.copyload.i10.i.1 = load i64, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.0.copyload.i.i.1 = load i64, ptr %i.dv, align 1
  %i.dw = xor i64 %.0.copyload.i.i.1, %.0.copyload.i10.i.1
  %i.dx = getelementptr inbounds nuw i8, ptr %.083150, i64 8
  store i64 %i.dw, ptr %i.dx, align 1
  br label %.preheader.i

.lr.ph14.i:                                       ; preds = %.lr.ph14.i.prol.loopexit, %.lr.ph14.i
  %.1.i13.i = phi i64 [ %i.ez, %.lr.ph14.i ], [ %.1.i13.i.unr, %.lr.ph14.i.prol.loopexit ] ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.082152, i64 %.1.i13.i
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.1.i13.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !16
  %i.ec = xor i8 %i.eb, %i.dz
  %i.ed = getelementptr inbounds nuw i8, ptr %.083150, i64 %.1.i13.i
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !16
  %i.ee = add nuw nsw i64 %.1.i13.i, 1            ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.082152, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ee
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !16
  %i.ej = xor i8 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %.083150, i64 %i.ee
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !16
  %i.el = add nuw nsw i64 %.1.i13.i, 2            ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.082152, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.el
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !16
  %i.eq = xor i8 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %.083150, i64 %i.el
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !16
  %i.es = add nuw nsw i64 %.1.i13.i, 3            ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.082152, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.es
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !16
  %i.ex = xor i8 %i.ew, %i.eu
  %i.ey = getelementptr inbounds nuw i8, ptr %.083150, i64 %i.es
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !16
  %i.ez = add nuw nsw i64 %.1.i13.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ez, %spec.select
  br i1 %exitcond.not.i.3, label %mbedtls_ccm_crypt.exit.thread, label %.lr.ph14.i, !llvm.loop !46

mbedtls_ccm_crypt.exit.thread:                    ; preds = %.lr.ph14.i.prol.loopexit, %.lr.ph14.i, %middle.block248, %vec.epilog.middle.block262, %.preheader.i
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %.pr = load i32, ptr %i.t, align 4, !tbaa !14
  br label %bb.m

mbedtls_ccm_crypt.exit:                           ; preds = %bb.k
  %i.fa = load i32, ptr %i.g, align 8, !tbaa !17
  %i.fb = or i32 %i.fa, 16
  store i32 %i.fb, ptr %i.g, align 8, !tbaa !17
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.c, i64 noundef 16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.loopexit128

bb.m:                                             ; preds = %mbedtls_ccm_crypt.exit.thread, %bb.f
  %i.fc = phi i32 [ %.pr, %mbedtls_ccm_crypt.exit.thread ], [ %i.ae, %bb.f ]
  switch i32 %i.fc, label %._crit_edge [
    i32 0, label %bb.n
    i32 2, label %bb.n
  ]

._crit_edge:                                      ; preds = %bb.m
  %.pre = add nuw nsw i64 %spec.select, %i.ab
  br label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 0, ptr %i.b, align 8, !tbaa !26
  %i.fd = call i32 @mbedtls_cipher_update(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, i64 noundef 16, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not.i112 = icmp eq i32 %i.fd, 0
  br i1 %.not.i112, label %bb.o, label %mbedtls_ccm_crypt.exit125

bb.o:                                             ; preds = %bb.n
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab ; 5 uses
  %.not.i11.i113 = icmp samesign ult i64 %spec.select, 8 ; 2 uses
  br i1 %.not.i11.i113, label %iter.check219, label %.lr.ph.i114

.preheader.i119:                                  ; preds = %.lr.ph.i114.1, %.lr.ph.i114
  %.lcssa305 = phi i64 [ 8, %.lr.ph.i114 ], [ 16, %.lr.ph.i114.1 ] ; 2 uses
  %i.ff = icmp samesign ult i64 %.lcssa305, %spec.select
  br i1 %i.ff, label %iter.check219, label %.loopexit126.thread

.loopexit126.thread:                              ; preds = %.preheader.i119
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  br label %.lr.ph141

iter.check219:                                    ; preds = %.preheader.i119, %bb.o
  %.0.i.lcssa16.i121 = phi i64 [ %.lcssa305, %.preheader.i119 ], [ 0, %bb.o ] ; 6 uses
  %i.fh = sub nsw i64 %spec.select, %.0.i.lcssa16.i121 ; 6 uses
  %min.iters.check204 = icmp ult i64 %i.fh, 8
  br i1 %min.iters.check204, label %.lr.ph14.i122.preheader, label %vector.main.loop.iter.check205

vector.main.loop.iter.check205:                   ; preds = %iter.check219
  %min.iters.check206 = icmp ult i64 %i.fh, 32
  br i1 %min.iters.check206, label %vec.epilog.ph223, label %vector.ph207

vector.ph207:                                     ; preds = %vector.main.loop.iter.check205
  %i.fi = and i64 %i.fh, 24
  %n.vec208 = and i64 %i.fh, -32                  ; 4 uses
  %i.fj = add nsw i64 %.0.i.lcssa16.i121, %n.vec208
  br label %vector.body209

vector.body209:                                   ; preds = %vector.ph207, %vector.body209
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next215, %vector.body209 ] ; 2 uses
  %i.fk = add nuw i64 %.0.i.lcssa16.i121, %index210 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.082152, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load211 = load <16 x i8>, ptr %i.fl, align 1, !tbaa !16
  %wide.load212 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fk ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load213 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !16
  %wide.load214 = load <16 x i8>, ptr %i.fo, align 1, !tbaa !16
  %i.fp = xor <16 x i8> %wide.load213, %wide.load211
  %i.fq = xor <16 x i8> %wide.load214, %wide.load212
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fk ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <16 x i8> %i.fp, ptr %i.fr, align 8, !tbaa !16
  store <16 x i8> %i.fq, ptr %i.fs, align 8, !tbaa !16
  %index.next215 = add nuw i64 %index210, 32      ; 2 uses
  %i.ft = icmp eq i64 %index.next215, %n.vec208
  br i1 %i.ft, label %middle.block216, label %vector.body209, !llvm.loop !47

middle.block216:                                  ; preds = %vector.body209
  %cmp.n217 = icmp eq i64 %i.fh, %n.vec208
  br i1 %cmp.n217, label %.loopexit126, label %vec.epilog.iter.check221

vec.epilog.iter.check221:                         ; preds = %middle.block216
  %min.epilog.iters.check222 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check222, label %.lr.ph14.i122.preheader, label %vec.epilog.ph223, !prof !60

vec.epilog.ph223:                                 ; preds = %vector.main.loop.iter.check205, %vec.epilog.iter.check221
  %vec.epilog.resume.val218 = phi i64 [ %n.vec208, %vec.epilog.iter.check221 ], [ 0, %vector.main.loop.iter.check205 ]
  %i.fu = and i64 %spec.select, 7                 ; 2 uses
  %n.vec224 = sub nsw i64 %i.fh, %i.fu            ; 2 uses
  %i.fv = add nsw i64 %.0.i.lcssa16.i121, %n.vec224
  br label %vec.epilog.vector.body225

vec.epilog.vector.body225:                        ; preds = %vec.epilog.vector.body225, %vec.epilog.ph223
  %index226 = phi i64 [ %vec.epilog.resume.val218, %vec.epilog.ph223 ], [ %index.next229, %vec.epilog.vector.body225 ] ; 2 uses
  %i.fw = add nuw i64 %.0.i.lcssa16.i121, %index226 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.082152, i64 %i.fw
  %wide.load227 = load <8 x i8>, ptr %i.fx, align 1, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fw
  %wide.load228 = load <8 x i8>, ptr %i.fy, align 1, !tbaa !16
  %i.fz = xor <8 x i8> %wide.load228, %wide.load227
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fw
  store <8 x i8> %i.fz, ptr %i.ga, align 1, !tbaa !16
  %index.next229 = add nuw i64 %index226, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.gb, label %vec.epilog.middle.block230, label %vec.epilog.vector.body225, !llvm.loop !48

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body225
  %cmp.n231 = icmp eq i64 %i.fu, 0
  br i1 %cmp.n231, label %.loopexit126, label %.lr.ph14.i122.preheader

.lr.ph14.i122.preheader:                          ; preds = %iter.check219, %vec.epilog.iter.check221, %vec.epilog.middle.block230
  %.1.i13.i123.ph = phi i64 [ %.0.i.lcssa16.i121, %iter.check219 ], [ %i.fj, %vec.epilog.iter.check221 ], [ %i.fv, %vec.epilog.middle.block230 ]
  br label %.lr.ph14.i122

.lr.ph.i114:                                      ; preds = %bb.o
  %.0.copyload.i10.i116 = load i64, ptr %.082152, align 1
  %.0.copyload.i.i117 = load i64, ptr %i.fe, align 1
  %i.gc = xor i64 %.0.copyload.i.i117, %.0.copyload.i10.i116
  store i64 %i.gc, ptr %i.f, align 16
  %.not.i.i118 = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i.i118, label %.preheader.i119, label %.lr.ph.i114.1

.lr.ph.i114.1:                                    ; preds = %.lr.ph.i114
  %i.gd = getelementptr inbounds nuw i8, ptr %.082152, i64 8
  %.0.copyload.i10.i116.1 = load i64, ptr %i.gd, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.0.copyload.i.i117.1 = load i64, ptr %i.ge, align 1
  %i.gf = xor i64 %.0.copyload.i.i117.1, %.0.copyload.i10.i116.1
  store i64 %i.gf, ptr %i.y, align 8
  br label %.preheader.i119

.lr.ph14.i122:                                    ; preds = %.lr.ph14.i122.preheader, %.lr.ph14.i122
  %.1.i13.i123 = phi i64 [ %i.gm, %.lr.ph14.i122 ], [ %.1.i13.i123.ph, %.lr.ph14.i122.preheader ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.082152, i64 %.1.i13.i123
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.1.i13.i123
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !16
  %i.gk = xor i8 %i.gj, %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i13.i123
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !16
  %i.gm = add nuw nsw i64 %.1.i13.i123, 1         ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %i.gm, %spec.select
  br i1 %exitcond.not.i124, label %.loopexit126, label %.lr.ph14.i122, !llvm.loop !49

mbedtls_ccm_crypt.exit125:                        ; preds = %bb.n
  %i.gn = load i32, ptr %i.g, align 8, !tbaa !17
  %i.go = or i32 %i.gn, 16
  store i32 %i.go, ptr %i.g, align 8, !tbaa !17
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit128

.loopexit126:                                     ; preds = %.lr.ph14.i122, %vec.epilog.middle.block230, %middle.block216
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 2 uses
  br i1 %.not.i11.i113, label %.preheader, label %.lr.ph141

.preheader:                                       ; preds = %.lr.ph141, %.lr.ph141.1, %.loopexit126
  %i.gq = phi ptr [ %i.gp, %.loopexit126 ], [ %i.hj, %.lr.ph141.1 ], [ %i.hj, %.lr.ph141 ] ; 8 uses
  %.0.i.lcssa = phi i64 [ 0, %.loopexit126 ], [ 8, %.lr.ph141 ], [ 16, %.lr.ph141.1 ] ; 8 uses
  %i.gr = icmp samesign ult i64 %.0.i.lcssa, %spec.select
  br i1 %i.gr, label %iter.check, label %mbedtls_xor.exit

iter.check:                                       ; preds = %.preheader
  %i.gs = sub nuw nsw i64 %spec.select, %.0.i.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.gs, 8
  br i1 %min.iters.check, label %.lr.ph144.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.gq, i64 %.0.i.lcssa
  %scevgep190 = getelementptr i8, ptr %i.gq, i64 %spec.select
  %scevgep191 = getelementptr i8, ptr %i.f, i64 %.0.i.lcssa
  %scevgep192 = getelementptr i8, ptr %i.f, i64 %spec.select
  %bound0 = icmp ult ptr %scevgep, %scevgep192
  %bound1 = icmp ult ptr %scevgep191, %scevgep190
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph144.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %i.gt = and i64 %spec.select, 7                 ; 2 uses
  %n.vec197 = sub nsw i64 %i.gs, %i.gt            ; 2 uses
  %i.gu = add nsw i64 %.0.i.lcssa, %n.vec197
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index198 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 2 uses
  %i.gv = add nuw i64 %.0.i.lcssa, %index198      ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gv ; 2 uses
  %wide.load199 = load <8 x i8>, ptr %i.gw, align 1, !tbaa !16, !alias.scope !61, !noalias !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gv
  %wide.load200 = load <8 x i8>, ptr %i.gx, align 1, !tbaa !16, !alias.scope !62
  %i.gy = xor <8 x i8> %wide.load200, %wide.load199
  store <8 x i8> %i.gy, ptr %i.gw, align 1, !tbaa !16, !alias.scope !61, !noalias !62
  %index.next201 = add nuw i64 %index198, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next201, %n.vec197
  br i1 %i.gz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n202 = icmp eq i64 %i.gt, 0
  br i1 %cmp.n202, label %mbedtls_xor.exit, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.1.i143.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck ], [ %.0.i.lcssa, %iter.check ], [ %i.gu, %vec.epilog.middle.block ] ; 4 uses
  %i.ha = sub nsw i64 %spec.select, %.1.i143.ph
  %xtraiter315 = and i64 %i.ha, 3                 ; 2 uses
  %lcmp.mod316.not = icmp eq i64 %xtraiter315, 0
  br i1 %lcmp.mod316.not, label %.lr.ph144.prol.loopexit, label %.lr.ph144.prol

.lr.ph144.prol:                                   ; preds = %.lr.ph144.preheader, %.lr.ph144.prol
  %.1.i143.prol = phi i64 [ %i.hg, %.lr.ph144.prol ], [ %.1.i143.ph, %.lr.ph144.preheader ] ; 3 uses
  %prol.iter317 = phi i64 [ %prol.iter317.next, %.lr.ph144.prol ], [ 0, %.lr.ph144.preheader ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.1.i143.prol ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i143.prol
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !16
  %i.hf = xor i8 %i.he, %i.hc
  store i8 %i.hf, ptr %i.hb, align 1, !tbaa !16
  %i.hg = add nuw nsw i64 %.1.i143.prol, 1        ; 2 uses
  %prol.iter317.next = add i64 %prol.iter317, 1   ; 2 uses
  %prol.iter317.cmp.not = icmp eq i64 %prol.iter317.next, %xtraiter315
  br i1 %prol.iter317.cmp.not, label %.lr.ph144.prol.loopexit, label %.lr.ph144.prol, !llvm.loop !54

.lr.ph144.prol.loopexit:                          ; preds = %.lr.ph144.prol, %.lr.ph144.preheader
  %.1.i143.unr = phi i64 [ %.1.i143.ph, %.lr.ph144.preheader ], [ %i.hg, %.lr.ph144.prol ]
  %i.hh = sub nsw i64 %.1.i143.ph, %spec.select
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %mbedtls_xor.exit, label %.lr.ph144

.lr.ph141:                                        ; preds = %.loopexit126, %.loopexit126.thread
  %i.hj = phi ptr [ %i.fg, %.loopexit126.thread ], [ %i.gp, %.loopexit126 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab ; 2 uses
  %.0.copyload.i110 = load i64, ptr %i.hk, align 1
  %.0.copyload.i109 = load i64, ptr %i.f, align 16
  %i.hl = xor i64 %.0.copyload.i109, %.0.copyload.i110
  store i64 %i.hl, ptr %i.hk, align 1
  %.not.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph141.1

.lr.ph141.1:                                      ; preds = %.lr.ph141
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %.0.copyload.i110.1 = load i64, ptr %i.hn, align 1
  %.0.copyload.i109.1 = load i64, ptr %i.z, align 8
  %i.ho = xor i64 %.0.copyload.i109.1, %.0.copyload.i110.1
  store i64 %i.ho, ptr %i.hn, align 1
  br label %.preheader

.lr.ph144:                                        ; preds = %.lr.ph144.prol.loopexit, %.lr.ph144
  %.1.i143 = phi i64 [ %i.im, %.lr.ph144 ], [ %.1.i143.unr, %.lr.ph144.prol.loopexit ] ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.1.i143 ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i143
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !16
  %i.ht = xor i8 %i.hs, %i.hq
  store i8 %i.ht, ptr %i.hp, align 1, !tbaa !16
  %i.hu = add nuw nsw i64 %.1.i143, 1             ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hu ; 2 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hu
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !16
  %i.hz = xor i8 %i.hy, %i.hw
  store i8 %i.hz, ptr %i.hv, align 1, !tbaa !16
  %i.ia = add nuw nsw i64 %.1.i143, 2             ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ia ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !16
  %i.id = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ia
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !16
  %i.if = xor i8 %i.ie, %i.ic
  store i8 %i.if, ptr %i.ib, align 1, !tbaa !16
  %i.ig = add nuw nsw i64 %.1.i143, 3             ; 2 uses
end_hunk_0
