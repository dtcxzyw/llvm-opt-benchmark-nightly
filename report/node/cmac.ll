inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@mbedtls_cipher_cmac_update:bb.a
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 33 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %mbedtls_cipher_info_get_block_size.exit

mbedtls_cipher_info_get_block_size.exit:          ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = and i32 %i.j, 31                         ; 7 uses
  %i.l = zext nneg i32 %i.k to i64                ; 28 uses
  %i.m = icmp samesign ult i32 %i.k, 17
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15   ; 3 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %mbedtls_cipher_info_get_block_size.exit
  %i.p = sub i64 %i.l, %i.o                       ; 2 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 1 %1, i64 %i.p, i1 false)
  %.not.i8192 = icmp samesign ult i32 %i.k, 8
  br i1 %.not.i8192, label %.preheader89, label %.lr.ph

.preheader89:                                     ; preds = %.lr.ph, %.lr.ph.1, %bb.e
  %.0.i80.lcssa = phi i64 [ 0, %bb.e ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 5 uses
  %i.t = icmp samesign ult i64 %.0.i80.lcssa, %i.l
  br i1 %i.t, label %iter.check, label %mbedtls_xor_no_simd.exit83

iter.check:                                       ; preds = %.preheader89
  %i.u = sub nuw nsw i64 %i.l, %.0.i80.lcssa      ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 8
  br i1 %min.iters.check, label %.lr.ph95.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.mod.vf163 = and i64 %i.l, 7                  ; 2 uses
  %n.vec164 = sub nuw nsw i64 %i.u, %n.mod.vf163  ; 2 uses
  %i.v = add nuw i64 %.0.i80.lcssa, %n.vec164
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next168, %vec.epilog.vector.body ] ; 2 uses
  %i.w = add nuw i64 %.0.i80.lcssa, %index165     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %wide.load166 = load <8 x i8>, ptr %i.x, align 1, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.w ; 2 uses
  %wide.load167 = load <8 x i8>, ptr %i.y, align 1, !tbaa !17
  %i.z = xor <8 x i8> %wide.load167, %wide.load166
  store <8 x i8> %i.z, ptr %i.y, align 1, !tbaa !17
  %index.next168 = add nuw i64 %index165, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next168, %n.vec164
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n169 = icmp eq i64 %n.mod.vf163, 0
  br i1 %cmp.n169, label %mbedtls_xor_no_simd.exit83, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %iter.check, %vec.epilog.middle.block
  %.1.i8294.ph = phi i64 [ %.0.i80.lcssa, %iter.check ], [ %i.v, %vec.epilog.middle.block ]
  br label %.lr.ph95

.lr.ph:                                           ; preds = %bb.e
  %.0.copyload.i84 = load i64, ptr %i.r, align 8
  %.0.copyload.i = load i64, ptr %i.g, align 8
  %i.ab = xor i64 %.0.copyload.i, %.0.copyload.i84
  store i64 %i.ab, ptr %i.g, align 8
  %.not.i81 = icmp samesign ult i32 %i.k, 16
  br i1 %.not.i81, label %.preheader89, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.0.copyload.i84.1 = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.0.copyload.i.1 = load i64, ptr %i.ad, align 8
  %i.ae = xor i64 %.0.copyload.i.1, %.0.copyload.i84.1
  store i64 %i.ae, ptr %i.ad, align 8
  br label %.preheader89

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %.lr.ph95
  %.1.i8294 = phi i64 [ %i.ak, %.lr.ph95 ], [ %.1.i8294.ph, %.lr.ph95.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.i8294
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i8294 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = xor i8 %i.ai, %i.ag
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !17
  %i.ak = add nuw nsw i64 %.1.i8294, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.l
  br i1 %exitcond.not, label %mbedtls_xor_no_simd.exit83, label %.lr.ph95, !llvm.loop !22

mbedtls_xor_no_simd.exit83:                       ; preds = %.lr.ph95, %vec.epilog.middle.block, %.preheader89
  %i.al = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not77 = icmp eq i32 %i.al, 0
  br i1 %.not77, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %mbedtls_xor_no_simd.exit83
  %i.am = load i64, ptr %i.n, align 8, !tbaa !15
  %i.an = sub i64 %i.l, %i.am                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = sub i64 %2, %i.an
  store i64 0, ptr %i.n, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %mbedtls_cipher_info_get_block_size.exit
  %.063 = phi i64 [ %i.ap, %bb.f ], [ %2, %bb.d ], [ %2, %mbedtls_cipher_info_get_block_size.exit ] ; 4 uses
  %.060 = phi ptr [ %i.ao, %bb.f ], [ %1, %bb.d ], [ %1, %mbedtls_cipher_info_get_block_size.exit ] ; 7 uses
  %i.aq = add nsw i64 %i.l, -1
  %i.ar = add i64 %i.aq, %.063
  %i.as = udiv i64 %i.ar, %i.l                    ; 4 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %.preheader88.lr.ph, label %._crit_edge

.preheader88.lr.ph:                               ; preds = %bb.g
  %.not.i96 = icmp samesign ult i32 %i.k, 8
  br i1 %.not.i96, label %.preheader88.us.preheader, label %.preheader88.preheader

.preheader88.preheader:                           ; preds = %.preheader88.lr.ph
  %i.au = and i64 %i.l, 24                        ; 3 uses
  %i.av = add nsw i64 %i.au, -8
  %i.aw = or disjoint i64 %i.au, 1                ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.l)
  %i.ax = sub nsw i64 %umax, %i.av                ; 2 uses
  %umax174 = call i64 @llvm.umax.i64(i64 %i.aw, i64 %i.l) ; 2 uses
  %i.ay = sub nsw i64 %umax174, %i.au             ; 6 uses
  %.not.i = icmp samesign ult i32 %i.k, 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %min.iters.check175 = icmp ult i64 %i.ay, 4
  %i.ba = getelementptr i8, ptr %i.g, i64 %i.ax
  %invariant.gep = getelementptr i8, ptr %.060, i64 %i.ax
  %min.iters.check177 = icmp ult i64 %i.ay, 16
  %n.mod.vf179 = and i64 %i.ay, 12
  %n.vec180 = and i64 %i.ay, -16                  ; 4 uses
  %cmp.n187 = icmp eq i64 %i.ay, %n.vec180
  %min.epilog.iters.check192 = icmp eq i64 %n.mod.vf179, 0
  %n.mod.vf194 = and i64 %umax174, 3              ; 2 uses
  %n.vec195 = sub nsw i64 %i.ay, %n.mod.vf194     ; 2 uses
  %cmp.n202 = icmp eq i64 %n.mod.vf194, 0
  br label %.preheader88

.preheader88.us.preheader:                        ; preds = %.preheader88.lr.ph
  %scevgep205 = getelementptr i8, ptr %i.g, i64 %i.l
  %i.bb = add i64 %i.as, -1
  %i.bc = mul i64 %i.bb, %i.l
  %scevgep206 = getelementptr i8, ptr %.060, i64 %i.bc
  %min.iters.check210 = icmp samesign ult i32 %i.k, 4
  %bound0207 = icmp ult ptr %i.g, %scevgep206
  %bound1208 = icmp ult ptr %.060, %scevgep205
  %found.conflict209 = and i1 %bound0207, %bound1208
  %n.vec229 = and i64 %i.l, 4                     ; 2 uses
  %cmp.n236 = icmp eq i64 %n.vec229, %i.l
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check223

iter.check223:                                    ; preds = %.preheader88.us.preheader, %3
  %.059104.us = phi i64 [ %6, %3 ], [ 1, %.preheader88.us.preheader ]
  %.1103.us = phi ptr [ %5, %3 ], [ %.060, %.preheader88.us.preheader ] ; 7 uses
  %.164102.us = phi i64 [ %4, %3 ], [ %.063, %.preheader88.us.preheader ]
  %brmerge = select i1 %min.iters.check210, i1 true, i1 %found.conflict209
  br i1 %brmerge, label %vec.epilog.scalar.ph224.preheader, label %vec.epilog.vector.body230

vec.epilog.vector.body230:                        ; preds = %iter.check223
  %wide.load232 = load <4 x i8>, ptr %.1103.us, align 1, !tbaa !17, !alias.scope !23
  %wide.load233 = load <4 x i8>, ptr %i.g, align 8, !tbaa !17, !alias.scope !26, !noalias !23
  %i.bd = xor <4 x i8> %wide.load233, %wide.load232
  store <4 x i8> %i.bd, ptr %i.g, align 8, !tbaa !17, !alias.scope !26, !noalias !23
  br i1 %cmp.n236, label %.mbedtls_xor_no_simd.exit_crit_edge.us, label %vec.epilog.scalar.ph224.preheader

vec.epilog.scalar.ph224.preheader:                ; preds = %iter.check223, %vec.epilog.vector.body230
  %.1.i100.us.ph = phi i64 [ %n.vec229, %vec.epilog.vector.body230 ], [ 0, %iter.check223 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph224.prol.loopexit, label %vec.epilog.scalar.ph224.prol

vec.epilog.scalar.ph224.prol:                     ; preds = %vec.epilog.scalar.ph224.preheader, %vec.epilog.scalar.ph224.prol
  %.1.i100.us.prol = phi i64 [ %i.bj, %vec.epilog.scalar.ph224.prol ], [ %.1.i100.us.ph, %vec.epilog.scalar.ph224.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph224.prol ], [ 0, %vec.epilog.scalar.ph224.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %.1.i100.us.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i100.us.prol ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = xor i8 %i.bh, %i.bf
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !17
  %i.bj = add nuw nsw i64 %.1.i100.us.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph224.prol.loopexit, label %vec.epilog.scalar.ph224.prol, !llvm.loop !28

vec.epilog.scalar.ph224.prol.loopexit:            ; preds = %vec.epilog.scalar.ph224.prol, %vec.epilog.scalar.ph224.preheader
  %.1.i100.us.unr = phi i64 [ %.1.i100.us.ph, %vec.epilog.scalar.ph224.preheader ], [ %i.bj, %vec.epilog.scalar.ph224.prol ]
  %i.bk = sub nsw i64 %.1.i100.us.ph, %i.l
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %.mbedtls_xor_no_simd.exit_crit_edge.us, label %vec.epilog.scalar.ph224

3:                                                ; preds = %.mbedtls_xor_no_simd.exit_crit_edge.us
  %4 = sub i64 %.164102.us, %i.l                  ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %i.l ; 2 uses
  %6 = add nuw i64 %.059104.us, 1                 ; 2 uses
  %7 = icmp ult i64 %6, %i.as
  br i1 %7, label %iter.check223, label %._crit_edge, !llvm.loop !30

vec.epilog.scalar.ph224:                          ; preds = %vec.epilog.scalar.ph224.prol.loopexit, %vec.epilog.scalar.ph224
  %.1.i100.us = phi i64 [ %i.cj, %vec.epilog.scalar.ph224 ], [ %.1.i100.us.unr, %vec.epilog.scalar.ph224.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %.1.i100.us
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i100.us ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = xor i8 %i.bp, %i.bn
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !17
  %i.br = add nuw nsw i64 %.1.i100.us, 1          ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = xor i8 %i.bv, %i.bt
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !17
  %i.bx = add nuw nsw i64 %.1.i100.us, 2          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bx ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17
  %i.cc = xor i8 %i.cb, %i.bz
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !17
  %i.cd = add nuw nsw i64 %.1.i100.us, 3          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1103.us, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cd ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !17
  %i.ci = xor i8 %i.ch, %i.cf
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !17
  %i.cj = add nuw nsw i64 %.1.i100.us, 4          ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %i.cj, %i.l
  br i1 %exitcond120.not.3, label %.mbedtls_xor_no_simd.exit_crit_edge.us, label %vec.epilog.scalar.ph224, !llvm.loop !31

.mbedtls_xor_no_simd.exit_crit_edge.us:           ; preds = %vec.epilog.scalar.ph224.prol.loopexit, %vec.epilog.scalar.ph224, %vec.epilog.vector.body230
  %i.ck = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not79.us = icmp eq i32 %i.ck, 0
  br i1 %.not79.us, label %3, label %.loopexit

.preheader88:                                     ; preds = %.preheader88.preheader, %bb.i
  %indvar = phi i64 [ 0, %.preheader88.preheader ], [ %indvar.next, %bb.i ] ; 2 uses
  %.059104 = phi i64 [ 1, %.preheader88.preheader ], [ %i.do, %bb.i ]
  %.1103 = phi ptr [ %.060, %.preheader88.preheader ], [ %i.dn, %bb.i ] ; 6 uses
  %.164102 = phi i64 [ %.063, %.preheader88.preheader ], [ %i.dm, %bb.i ]
  %i.cl = mul i64 %indvar, %i.l                   ; 2 uses
  %.0.copyload.i86 = load i64, ptr %.1103, align 1
  %.0.copyload.i85 = load i64, ptr %i.g, align 8
  %i.cm = xor i64 %.0.copyload.i85, %.0.copyload.i86
  store i64 %i.cm, ptr %i.g, align 8
  br i1 %.not.i, label %..preheader_crit_edge, label %bb.h

..preheader_crit_edge:                            ; preds = %bb.h, %.preheader88
  %.lcssa242 = phi i64 [ 8, %.preheader88 ], [ 16, %bb.h ] ; 10 uses
  %i.cn = icmp samesign ult i64 %.lcssa242, %i.l
  br i1 %i.cn, label %iter.check189, label %mbedtls_xor_no_simd.exit

iter.check189:                                    ; preds = %..preheader_crit_edge
  br i1 %min.iters.check175, label %.lr.ph101.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check189
  %scevgep = getelementptr i8, ptr %i.g, i64 %.lcssa242
  %i.co = add nsw i64 %.lcssa242, -8              ; 2 uses
  %scevgep171 = getelementptr i8, ptr %i.ba, i64 %i.co
  %i.cp = getelementptr i8, ptr %.060, i64 %.lcssa242
  %scevgep172 = getelementptr i8, ptr %i.cp, i64 %i.cl
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.co
  %scevgep173 = getelementptr i8, ptr %gep, i64 %i.cl
  %bound0 = icmp ult ptr %scevgep, %scevgep173
  %bound1 = icmp ult ptr %scevgep172, %scevgep171
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph101.preheader, label %vector.main.loop.iter.check176

vector.main.loop.iter.check176:                   ; preds = %vector.memcheck
  br i1 %min.iters.check177, label %vec.epilog.ph193, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check176
  %i.cq = add i64 %.lcssa242, %n.vec180
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body181 ] ; 2 uses
  %i.cr = add nuw i64 %.lcssa242, %index182       ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1103, i64 %i.cr
  %wide.load183 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !17, !alias.scope !32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cr ; 2 uses
  %wide.load184 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !17, !alias.scope !35, !noalias !32
  %i.cu = xor <16 x i8> %wide.load184, %wide.load183
  store <16 x i8> %i.cu, ptr %i.ct, align 1, !tbaa !17, !alias.scope !35, !noalias !32
  %index.next185 = add nuw i64 %index182, 16      ; 2 uses
  %i.cv = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.cv, label %middle.block186, label %vector.body181, !llvm.loop !37

middle.block186:                                  ; preds = %vector.body181
  br i1 %cmp.n187, label %mbedtls_xor_no_simd.exit, label %vec.epilog.iter.check191

vec.epilog.iter.check191:                         ; preds = %middle.block186
  br i1 %min.epilog.iters.check192, label %.lr.ph101.preheader, label %vec.epilog.ph193, !prof !38

vec.epilog.ph193:                                 ; preds = %vector.main.loop.iter.check176, %vec.epilog.iter.check191
  %vec.epilog.resume.val188 = phi i64 [ %n.vec180, %vec.epilog.iter.check191 ], [ 0, %vector.main.loop.iter.check176 ]
  %i.cw = add i64 %.lcssa242, %n.vec195
  br label %vec.epilog.vector.body196

vec.epilog.vector.body196:                        ; preds = %vec.epilog.vector.body196, %vec.epilog.ph193
  %index197 = phi i64 [ %vec.epilog.resume.val188, %vec.epilog.ph193 ], [ %index.next200, %vec.epilog.vector.body196 ] ; 2 uses
  %i.cx = add nuw i64 %.lcssa242, %index197       ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1103, i64 %i.cx
  %wide.load198 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !17, !alias.scope !32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cx ; 2 uses
  %wide.load199 = load <4 x i8>, ptr %i.cz, align 1, !tbaa !17, !alias.scope !35, !noalias !32
  %i.da = xor <4 x i8> %wide.load199, %wide.load198
  store <4 x i8> %i.da, ptr %i.cz, align 1, !tbaa !17, !alias.scope !35, !noalias !32
  %index.next200 = add nuw i64 %index197, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next200, %n.vec195
  br i1 %i.db, label %vec.epilog.middle.block201, label %vec.epilog.vector.body196, !llvm.loop !39

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body196
  br i1 %cmp.n202, label %mbedtls_xor_no_simd.exit, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %vector.memcheck, %iter.check189, %vec.epilog.iter.check191, %vec.epilog.middle.block201
  %.1.i100.ph = phi i64 [ %.lcssa242, %iter.check189 ], [ %.lcssa242, %vector.memcheck ], [ %i.cq, %vec.epilog.iter.check191 ], [ %i.cw, %vec.epilog.middle.block201 ]
  br label %.lr.ph101

bb.h:                                             ; preds = %.preheader88
  %i.dc = getelementptr inbounds nuw i8, ptr %.1103, i64 8
  %.0.copyload.i86.1 = load i64, ptr %i.dc, align 1
  %.0.copyload.i85.1 = load i64, ptr %i.az, align 8
  %i.dd = xor i64 %.0.copyload.i85.1, %.0.copyload.i86.1
  store i64 %i.dd, ptr %i.az, align 8
  br label %..preheader_crit_edge

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %.lr.ph101
  %.1.i100 = phi i64 [ %i.dj, %.lr.ph101 ], [ %.1.i100.ph, %.lr.ph101.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1103, i64 %.1.i100
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 %.1.i100 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !17
  %i.di = xor i8 %i.dh, %i.df
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !17
  %i.dj = add nuw nsw i64 %.1.i100, 1             ; 2 uses
  %i.dk = icmp samesign ult i64 %i.dj, %i.l
  br i1 %i.dk, label %.lr.ph101, label %mbedtls_xor_no_simd.exit, !llvm.loop !40

mbedtls_xor_no_simd.exit:                         ; preds = %.lr.ph101, %middle.block186, %vec.epilog.middle.block201, %..preheader_crit_edge
  %i.dl = call i32 @mbedtls_cipher_update(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i64 noundef %i.l, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not79 = icmp eq i32 %i.dl, 0
  br i1 %.not79, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %mbedtls_xor_no_simd.exit
  %i.dm = sub i64 %.164102, %i.l                  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.1103, i64 %i.l ; 2 uses
  %i.do = add nuw i64 %.059104, 1                 ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.as
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dp, label %.preheader88, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.i, %3, %bb.g
  %.164.lcssa = phi i64 [ %.063, %bb.g ], [ %4, %3 ], [ %i.dm, %bb.i ] ; 3 uses
  %.1.lcssa = phi ptr [ %.060, %bb.g ], [ %5, %3 ], [ %i.dn, %bb.i ]
  %.not78 = icmp eq i64 %.164.lcssa, 0
  br i1 %.not78, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dr = load i64, ptr %i.n, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr align 1 %.1.lcssa, i64 %.164.lcssa, i1 false)
  %i.dt = load i64, ptr %i.n, align 8, !tbaa !15
  %i.du = add i64 %i.dt, %.164.lcssa
  store i64 %i.du, ptr %i.n, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_xor_no_simd.exit, %.mbedtls_xor_no_simd.exit_crit_edge.us, %mbedtls_xor_no_simd.exit83, %bb.j, %._crit_edge, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ -24832, %bb.a ], [ -24832, %bb.c ], [ -24832, %bb.b ], [ %i.al, %mbedtls_xor_no_simd.exit83 ], [ 0, %._crit_edge ], [ 0, %bb.j ], [ %i.ck, %.mbedtls_xor_no_simd.exit_crit_edge.us ], [ %i.dl, %mbedtls_xor_no_simd.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @mbedtls_cipher_update(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @mbedtls_cipher_cmac_finish(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 9 uses
  %i.b = alloca [16 x i8], align 16               ; 9 uses
  %i.c = alloca [16 x i8], align 16               ; 18 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 13 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp eq ptr %1, null
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.k, label %mbedtls_cipher_info_get_block_size.exit

mbedtls_cipher_info_get_block_size.exit:          ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 31                         ; 8 uses
  %i.o = zext nneg i32 %i.n to i64                ; 16 uses
  %i.p = icmp samesign ult i32 %i.n, 17
  tail call void @llvm.assume(i1 %i.p)
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  %i.q = call fastcc i32 @cmac_generate_subkeys(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15   ; 4 uses
  %i.u = icmp ult i64 %i.t, %i.o
  br i1 %i.u, label %.lr.ph.preheader.i, label %.preheader57

.preheader57:                                     ; preds = %mbedtls_cipher_info_get_block_size.exit
  %.not.i4058 = icmp samesign ult i32 %i.n, 8
  br i1 %.not.i4058, label %.preheader55, label %.lr.ph

.lr.ph.preheader.i:                               ; preds = %mbedtls_cipher_info_get_block_size.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %.015.i = phi i64 [ %i.ac, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %i.w = icmp samesign ult i64 %.015.i, %i.t
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %.015.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %.015.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !17
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = icmp eq i64 %.015.i, %i.t
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 -128, ptr %i.v, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %.015.i
  store i8 0, ptr %i.ab, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ac = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.o
  br i1 %exitcond.not.i, label %cmac_pad.exit.preheader, label %.lr.ph.i, !llvm.loop !41

cmac_pad.exit.preheader:                          ; preds = %bb.h
  %.not.i4462 = icmp samesign ult i32 %i.n, 8
  br i1 %.not.i4462, label %.preheader54, label %cmac_pad.exit

.preheader54:                                     ; preds = %cmac_pad.exit, %cmac_pad.exit.1, %cmac_pad.exit.preheader
  %.0.i43.lcssa = phi i64 [ 0, %cmac_pad.exit.preheader ], [ 8, %cmac_pad.exit ], [ 16, %cmac_pad.exit.1 ] ; 5 uses
  %i.ad = icmp samesign ult i64 %.0.i43.lcssa, %i.o
  br i1 %i.ad, label %iter.check122, label %mbedtls_xor.exit46

iter.check122:                                    ; preds = %.preheader54
  %i.ae = sub nuw nsw i64 %i.o, %.0.i43.lcssa     ; 2 uses
  %min.iters.check106 = icmp samesign ult i64 %i.ae, 8
  br i1 %min.iters.check106, label %.lr.ph67.preheader, label %vec.epilog.ph126

vec.epilog.ph126:                                 ; preds = %iter.check122
  %n.mod.vf127 = and i64 %i.o, 7                  ; 2 uses
  %n.vec128 = sub nuw nsw i64 %i.ae, %n.mod.vf127 ; 2 uses
  %i.af = add nuw i64 %.0.i43.lcssa, %n.vec128
  br label %vec.epilog.vector.body129

vec.epilog.vector.body129:                        ; preds = %vec.epilog.vector.body129, %vec.epilog.ph126
  %index130 = phi i64 [ 0, %vec.epilog.ph126 ], [ %index.next133, %vec.epilog.vector.body129 ] ; 2 uses
  %i.ag = add nuw i64 %.0.i43.lcssa, %index130    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag ; 2 uses
  %wide.load131 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ag
  %wide.load132 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !17
  %i.aj = xor <8 x i8> %wide.load132, %wide.load131
  store <8 x i8> %i.aj, ptr %i.ah, align 1, !tbaa !17
  %index.next133 = add nuw i64 %index130, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next133, %n.vec128
  br i1 %i.ak, label %vec.epilog.middle.block134, label %vec.epilog.vector.body129, !llvm.loop !42

vec.epilog.middle.block134:                       ; preds = %vec.epilog.vector.body129
  %cmp.n135 = icmp eq i64 %n.mod.vf127, 0
  br i1 %cmp.n135, label %mbedtls_xor.exit46, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %iter.check122, %vec.epilog.middle.block134
  %.1.i4566.ph = phi i64 [ %.0.i43.lcssa, %iter.check122 ], [ %i.af, %vec.epilog.middle.block134 ]
  br label %.lr.ph67

cmac_pad.exit:                                    ; preds = %cmac_pad.exit.preheader
  %.0.copyload.i47 = load i64, ptr %i.c, align 16
  %.0.copyload.i = load i64, ptr %i.b, align 16
  %i.al = xor i64 %.0.copyload.i, %.0.copyload.i47
  store i64 %i.al, ptr %i.c, align 16
  %.not.i44 = icmp samesign ult i32 %i.n, 16
  br i1 %.not.i44, label %.preheader54, label %cmac_pad.exit.1

cmac_pad.exit.1:                                  ; preds = %cmac_pad.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.0.copyload.i47.1 = load i64, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.an, align 8
  %i.ao = xor i64 %.0.copyload.i.1, %.0.copyload.i47.1
  store i64 %i.ao, ptr %i.am, align 8
  br label %.preheader54

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %.lr.ph67
  %.1.i4566 = phi i64 [ %i.au, %.lr.ph67 ], [ %.1.i4566.ph, %.lr.ph67.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i4566 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1.i4566
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.at = xor i8 %i.as, %i.aq
  store i8 %i.at, ptr %i.ap, align 1, !tbaa !17
  %i.au = add nuw nsw i64 %.1.i4566, 1            ; 2 uses
  %exitcond78.not = icmp eq i64 %i.au, %i.o
  br i1 %exitcond78.not, label %mbedtls_xor.exit46, label %.lr.ph67, !llvm.loop !43

.preheader55:                                     ; preds = %.lr.ph, %.lr.ph.1, %.preheader57
  %.0.i39.lcssa = phi i64 [ 0, %.preheader57 ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 5 uses
  %i.av = icmp samesign ult i64 %.0.i39.lcssa, %i.o
  br i1 %i.av, label %iter.check, label %mbedtls_xor.exit46

iter.check:                                       ; preds = %.preheader55
  %i.aw = sub nuw nsw i64 %i.o, %.0.i39.lcssa     ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph61.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %n.mod.vf98 = and i64 %i.o, 7                   ; 2 uses
  %n.vec99 = sub nuw nsw i64 %i.aw, %n.mod.vf98   ; 2 uses
  %i.ax = add nuw i64 %.0.i39.lcssa, %n.vec99
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 2 uses
end_hunk_0
begin_hunk_1_@test_aes128_cmac_prf:bb.a
  %i.q = icmp ne i128 %i.p, 60211786437030481425530515803079183000
  %i.r = zext i1 %i.q to i32
  %.not14.us.1 = icmp eq i32 %i.r, 0
  br i1 %.not14.us.1, label %.split.us.2, label %.loopexit

.split.us.2:                                      ; preds = %bb.d
  %i.s = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.t = call ptr @mbedtls_cipher_info_from_type(i32 noundef 2) #10 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.loopexit21.thread56, label %bb.e

bb.e:                                             ; preds = %.split.us.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.v = call i32 @mbedtls_cipher_cmac(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @PRFK, i64 noundef 10, ptr noundef nonnull %i.b) ; 2 uses
  %.not.i.us.2 = icmp eq i32 %i.v, 0
  br i1 %.not.i.us.2, label %mbedtls_aes_cmac_prf_128.exit.us.2, label %.loopexit21.thread56

mbedtls_aes_cmac_prf_128.exit.us.2:               ; preds = %bb.e
  %i.w = call i32 @mbedtls_cipher_cmac(ptr noundef nonnull %i.t, ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @PRFM, i64 noundef 20, ptr noundef nonnull %i.c)
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit

bb.f:                                             ; preds = %.split.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.x = call i32 @mbedtls_cipher_cmac(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @PRFK, i64 noundef 18, ptr noundef nonnull %i.b) ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %mbedtls_aes_cmac_prf_128.exit, label %.loopexit21

mbedtls_aes_cmac_prf_128.exit:                    ; preds = %bb.f
  %i.y = call i32 @mbedtls_cipher_cmac(ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @PRFM, i64 noundef 20, ptr noundef nonnull %i.c) ; 2 uses
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.g, label %.loopexit21.thread52

bb.g:                                             ; preds = %mbedtls_aes_cmac_prf_128.exit
  %i.z = load i128, ptr %i.c, align 16
  %i.aa = icmp ne i128 %i.z, -134748922916016215525000343822521556092
  %i.ab = zext i1 %i.aa to i32
  %.not14 = icmp eq i32 %i.ab, 0
  br i1 %.not14, label %.split.1, label %.loopexit21.thread52

.loopexit21.thread56:                             ; preds = %bb.e, %.split.us.2, %.split.us.1, %bb.b, %.split.us.preheader
  %.us-phi.ph = phi i32 [ %i.v, %bb.e ], [ -24704, %.split.us.1 ], [ %i.g, %bb.b ], [ -24704, %.split.us.preheader ], [ -24704, %.split.us.2 ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit

.loopexit21:                                      ; preds = %bb.i, %.split.2, %.split.1, %bb.f, %.split.preheader
  %.us-phi = phi i32 [ %i.x, %bb.f ], [ -24704, %.split.preheader ], [ -24704, %.split.1 ], [ %i.am, %bb.i ], [ -24704, %.split.2 ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit21.thread52

.loopexit21.thread52:                             ; preds = %bb.j, %mbedtls_aes_cmac_prf_128.exit.2, %bb.h, %mbedtls_aes_cmac_prf_128.exit.1, %bb.g, %mbedtls_aes_cmac_prf_128.exit, %.loopexit21
  %.018.i2054 = phi i32 [ %.us-phi, %.loopexit21 ], [ 0, %bb.j ], [ %i.an, %mbedtls_aes_cmac_prf_128.exit.2 ], [ 0, %bb.h ], [ %i.af, %mbedtls_aes_cmac_prf_128.exit.1 ], [ %i.y, %mbedtls_aes_cmac_prf_128.exit ], [ 0, %bb.g ]
  %puts17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %.loopexit

.split.1:                                         ; preds = %bb.g
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ad = call ptr @mbedtls_cipher_info_from_type(i32 noundef 2) #10 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.loopexit21, label %mbedtls_aes_cmac_prf_128.exit.1

mbedtls_aes_cmac_prf_128.exit.1:                  ; preds = %.split.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @PRFK, i64 16, i1 false)
  %i.af = call i32 @mbedtls_cipher_cmac(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @PRFM, i64 noundef 20, ptr noundef nonnull %i.c) ; 2 uses
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not.1 = icmp eq i32 %i.af, 0
  br i1 %.not.1, label %bb.h, label %.loopexit21.thread52

bb.h:                                             ; preds = %mbedtls_aes_cmac_prf_128.exit.1
  %i.ag = load i128, ptr %i.c, align 16
  %i.ah = icmp ne i128 %i.ag, 60211786437030481425530515803079183000
  %i.ai = zext i1 %i.ah to i32
  %.not14.1 = icmp eq i32 %i.ai, 0
  br i1 %.not14.1, label %.split.2, label %.loopexit21.thread52

.split.2:                                         ; preds = %bb.h
  %puts.1 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ak = call ptr @mbedtls_cipher_info_from_type(i32 noundef 2) #10 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.loopexit21, label %bb.i

bb.i:                                             ; preds = %.split.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.am = call i32 @mbedtls_cipher_cmac(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @PRFK, i64 noundef 10, ptr noundef nonnull %i.b) ; 2 uses
  %.not.i.2 = icmp eq i32 %i.am, 0
  br i1 %.not.i.2, label %mbedtls_aes_cmac_prf_128.exit.2, label %.loopexit21

mbedtls_aes_cmac_prf_128.exit.2:                  ; preds = %bb.i
  %i.an = call i32 @mbedtls_cipher_cmac(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b, i64 noundef 128, ptr noundef nonnull @PRFM, i64 noundef 20, ptr noundef nonnull %i.c) ; 2 uses
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not.2 = icmp eq i32 %i.an, 0
  br i1 %.not.2, label %bb.j, label %.loopexit21.thread52

bb.j:                                             ; preds = %mbedtls_aes_cmac_prf_128.exit.2
  %i.ao = load i128, ptr %i.c, align 16
  %i.ap = icmp ne i128 %i.ao, 81330672619194571546356631503560903977
  %i.aq = zext i1 %i.ap to i32
  %.not14.2 = icmp eq i32 %i.aq, 0
  br i1 %.not14.2, label %.loopexit.loopexit31, label %.loopexit21.thread52

.loopexit.loopexit31:                             ; preds = %bb.j
  %puts.2 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_aes_cmac_prf_128.exit.us.2, %bb.d, %mbedtls_aes_cmac_prf_128.exit.us.1, %mbedtls_aes_cmac_prf_128.exit.us, %bb.c, %.loopexit21.thread56, %.loopexit.loopexit31, %.loopexit21.thread52
  %.012 = phi i32 [ %.us-phi.ph, %.loopexit21.thread56 ], [ %.018.i2054, %.loopexit21.thread52 ], [ 0, %.loopexit.loopexit31 ], [ %i.h, %mbedtls_aes_cmac_prf_128.exit.us ], [ %i.w, %mbedtls_aes_cmac_prf_128.exit.us.2 ], [ 0, %bb.d ], [ %i.o, %mbedtls_aes_cmac_prf_128.exit.us.1 ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  ret i32 %.012
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"mbedtls_cipher_context_t", !10, i64 0, !5, i64 8, !5, i64 12, !11, i64 16, !11, i64 24, !6, i64 32, !12, i64 48, !6, i64 56, !12, i64 72, !11, i64 80, !13, i64 88}
!10 = !{!"p1 _ZTS21mbedtls_cipher_info_t", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTS22mbedtls_cmac_context_t", !11, i64 0}
!14 = !{!9, !13, i64 88}
!15 = !{!16, !12, i64 32}
!16 = !{!"mbedtls_cmac_context_t", !6, i64 0, !6, i64 16, !12, i64 32}
!17 = !{!6, !6, i64 0}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !19, !21, !20}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19, !20}
!32 = !{!33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!36}
!36 = distinct !{!36, !34}
!37 = distinct !{!37, !19, !20, !21}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = distinct !{!39, !19, !20, !21}
!40 = distinct !{!40, !19, !20}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19, !20, !21}
!43 = distinct !{!43, !19, !21, !20}
!44 = distinct !{!44, !19, !20, !21}
!45 = distinct !{!45, !19, !21, !20}
!46 = distinct !{!46, !19, !20, !21}
!47 = distinct !{!47, !19, !21, !20}
!48 = !{i64 1063780, i64 1063830, i64 1063902, i64 1063974, i64 1064046}
end_hunk_1
