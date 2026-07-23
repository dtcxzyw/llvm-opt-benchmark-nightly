inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 23
begin_hunk_0_@gcm_mask:bb.a
  %scevgep129 = getelementptr i8, ptr %i.et, i64 400
  %scevgep130 = getelementptr nuw i8, ptr %5, i64 %.0.i.lcssa74
  %scevgep131 = getelementptr i8, ptr %5, i64 %3
  %bound0132 = icmp ult ptr %scevgep128, %scevgep131
  %bound1133 = icmp ult ptr %scevgep130, %scevgep129
  %found.conflict134 = and i1 %bound0132, %bound1133
  br i1 %found.conflict134, label %.lr.ph56.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %vector.memcheck127
  %min.iters.check137 = icmp ult i64 %i.ep, 32
  br i1 %min.iters.check137, label %vec.epilog.ph155, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %n.mod.vf139 = and i64 %i.ep, 24
  %n.vec140 = and i64 %i.ep, -32                  ; 4 uses
  %i.eu = add nsw i64 %.0.i.lcssa74, %n.vec140
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next147, %vector.body141 ] ; 2 uses
  %i.ev = add i64 %.0.i.lcssa74, %index142        ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ev ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load143 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !16, !alias.scope !68, !noalias !71
  %wide.load144 = load <16 x i8>, ptr %i.ex, align 1, !tbaa !16, !alias.scope !68, !noalias !71
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 %i.ev ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load145 = load <16 x i8>, ptr %i.ey, align 1, !tbaa !16, !alias.scope !71
  %wide.load146 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !16, !alias.scope !71
  %i.fa = xor <16 x i8> %wide.load145, %wide.load143
  %i.fb = xor <16 x i8> %wide.load146, %wide.load144
  store <16 x i8> %i.fa, ptr %i.ew, align 1, !tbaa !16, !alias.scope !68, !noalias !71
  store <16 x i8> %i.fb, ptr %i.ex, align 1, !tbaa !16, !alias.scope !68, !noalias !71
  %index.next147 = add nuw i64 %index142, 32      ; 2 uses
  %i.fc = icmp eq i64 %index.next147, %n.vec140
  br i1 %i.fc, label %middle.block148, label %vector.body141, !llvm.loop !73

middle.block148:                                  ; preds = %vector.body141
  %cmp.n149 = icmp eq i64 %i.ep, %n.vec140
  br i1 %cmp.n149, label %mbedtls_xor.exit, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %min.epilog.iters.check154 = icmp eq i64 %n.mod.vf139, 0
  br i1 %min.epilog.iters.check154, label %.lr.ph56.preheader, label %vec.epilog.ph155, !prof !60

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check136, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec140, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check136 ]
  %n.mod.vf156 = and i64 %3, 7                    ; 2 uses
  %n.vec157 = sub nsw i64 %i.ep, %n.mod.vf156     ; 2 uses
  %i.fd = add nsw i64 %.0.i.lcssa74, %n.vec157
  br label %vec.epilog.vector.body158

vec.epilog.vector.body158:                        ; preds = %vec.epilog.vector.body158, %vec.epilog.ph155
  %index159 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next162, %vec.epilog.vector.body158 ] ; 2 uses
  %i.fe = add i64 %.0.i.lcssa74, %index159        ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fe ; 2 uses
  %wide.load160 = load <8 x i8>, ptr %i.ff, align 1, !tbaa !16, !alias.scope !68, !noalias !71
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 %i.fe
  %wide.load161 = load <8 x i8>, ptr %i.fg, align 1, !tbaa !16, !alias.scope !71
  %i.fh = xor <8 x i8> %wide.load161, %wide.load160
  store <8 x i8> %i.fh, ptr %i.ff, align 1, !tbaa !16, !alias.scope !68, !noalias !71
  %index.next162 = add nuw i64 %index159, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.fi, label %vec.epilog.middle.block163, label %vec.epilog.vector.body158, !llvm.loop !74

vec.epilog.middle.block163:                       ; preds = %vec.epilog.vector.body158
  %cmp.n164 = icmp eq i64 %n.mod.vf156, 0
  br i1 %cmp.n164, label %mbedtls_xor.exit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %vector.memcheck127, %iter.check151, %vec.epilog.iter.check153, %vec.epilog.middle.block163
  %.1.i55.ph = phi i64 [ %.0.i.lcssa74, %iter.check151 ], [ %.0.i.lcssa74, %vector.memcheck127 ], [ %i.eu, %vec.epilog.iter.check153 ], [ %i.fd, %vec.epilog.middle.block163 ] ; 4 uses
  %i.fj = sub i64 %3, %.1.i55.ph
  %xtraiter171 = and i64 %i.fj, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader, %.lr.ph56.prol
  %.1.i55.prol = phi i64 [ %i.fp, %.lr.ph56.prol ], [ %.1.i55.ph, %.lr.ph56.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph56.prol ], [ 0, %.lr.ph56.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.en, i64 %.1.i55.prol ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !16
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i55.prol
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !16
  %i.fo = xor i8 %i.fn, %i.fl
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !16
  %i.fp = add nuw nsw i64 %.1.i55.prol, 1         ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol, !llvm.loop !75

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %.1.i55.unr = phi i64 [ %.1.i55.ph, %.lr.ph56.preheader ], [ %i.fp, %.lr.ph56.prol ]
  %i.fq = sub i64 %.1.i55.ph, %3
  %i.fr = icmp ugt i64 %i.fq, -4
  br i1 %i.fr, label %mbedtls_xor.exit, label %.lr.ph56

.lr.ph53:                                         ; preds = %bb.e
  %.0.copyload.i38 = load i64, ptr %i.en, align 1
  %.0.copyload.i37 = load i64, ptr %5, align 1
  %i.fs = xor i64 %.0.copyload.i37, %.0.copyload.i38
  store i64 %i.fs, ptr %i.en, align 1
  %.not.i = icmp samesign ult i64 %3, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph53.1

.lr.ph53.1:                                       ; preds = %.lr.ph53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %.0.copyload.i38.1 = load i64, ptr %i.ft, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.0.copyload.i37.1 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i37.1, %.0.copyload.i38.1
  store i64 %i.fv, ptr %i.ft, align 1
  br label %.preheader

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %.1.i55 = phi i64 [ %i.gt, %.lr.ph56 ], [ %.1.i55.unr, %.lr.ph56.prol.loopexit ] ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.en, i64 %.1.i55 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i55
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !16
  %i.ga = xor i8 %i.fz, %i.fx
  store i8 %i.ga, ptr %i.fw, align 1, !tbaa !16
  %i.gb = add nuw nsw i64 %.1.i55, 1              ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.gb ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !16
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 %i.gb
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !16
  %i.gg = xor i8 %i.gf, %i.gd
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !16
  %i.gh = add nuw nsw i64 %.1.i55, 2              ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.gh ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !16
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 %i.gh
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !16
  %i.gm = xor i8 %i.gl, %i.gj
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !16
  %i.gn = add nuw nsw i64 %.1.i55, 3              ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.gn ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !16
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 %i.gn
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !16
  %i.gs = xor i8 %i.gr, %i.gp
  store i8 %i.gs, ptr %i.go, align 1, !tbaa !16
  %i.gt = add nuw nsw i64 %.1.i55, 4              ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.gt, %3
  br i1 %exitcond60.not.3, label %mbedtls_xor.exit, label %.lr.ph56, !llvm.loop !76

mbedtls_xor.exit:                                 ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %middle.block148, %vec.epilog.middle.block163, %.preheader, %mbedtls_xor.exit29, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %i.e
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @mbedtls_gcm_finish(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = shl i64 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp ne i64 %i.b, 0
  %i.h = and i64 %i.e, 15
  %.not = icmp eq i64 %i.h, 0
  %or.cond37 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond37, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = add i64 %5, -17
  %or.cond = icmp ult i64 %i.j, -13
  br i1 %or.cond, label %mbedtls_xor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !52
  %i.l = and i64 %i.k, 15
  %.not36 = icmp eq i64 %i.l, 0
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 8 %i.n, i64 %5, i1 false)
  %i.o = icmp ne i64 %i.c, 0
  %i.p = icmp ne i64 %i.f, 0
  %or.cond3 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond3, label %mbedtls_xor.exit41, label %mbedtls_xor.exit

mbedtls_xor.exit41:                               ; preds = %bb.f
  %.sroa.6.12.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 14 uses
  %.0.copyload.i42 = load i64, ptr %i.q, align 8
  %.sroa.0.sroa.0.0.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.r = xor i64 %.sroa.0.sroa.0.0.insert.insert, %.0.copyload.i42
  store i64 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %.0.copyload.i42.1 = load i64, ptr %i.s, align 8
  %i.t = xor i64 %.sroa.6.12.insert.insert, %.0.copyload.i42.1
  store i64 %i.t, ptr %i.s, align 8
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q)
  %.not.i48 = icmp samesign ult i64 %5, 8
  br i1 %.not.i48, label %.preheader, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %mbedtls_xor.exit41
  %i.u = add nsw i64 %5, -8                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 104
  br i1 %min.iters.check, label %.lr.ph50.preheader91, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50.preheader
  %i.x = and i64 %5, 24                           ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.x
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  %scevgep54 = getelementptr i8, ptr %i.y, i64 400
  %bound0 = icmp ult ptr %4, %scevgep54
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph50.preheader91, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 3 uses
  %i.aa = or disjoint i64 %i.z, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ac, align 1, !alias.scope !77, !noalias !80
  %wide.load55 = load <2 x i64>, ptr %i.ad, align 1, !alias.scope !77, !noalias !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load56 = load <2 x i64>, ptr %i.ae, align 1, !alias.scope !80
  %wide.load57 = load <2 x i64>, ptr %i.af, align 1, !alias.scope !80
  %i.ag = xor <2 x i64> %wide.load56, %wide.load
  %i.ah = xor <2 x i64> %wide.load57, %wide.load55
  store <2 x i64> %i.ag, ptr %i.ac, align 1, !alias.scope !77, !noalias !80
  store <2 x i64> %i.ah, ptr %i.ad, align 1, !alias.scope !77, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph50.preheader91

.lr.ph50.preheader91:                             ; preds = %vector.memcheck, %.lr.ph50.preheader, %middle.block
  %.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph50.preheader ], [ %i.aa, %middle.block ]
  %.0.i49.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph50.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph50

.preheader:                                       ; preds = %.lr.ph50, %middle.block, %mbedtls_xor.exit41
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_xor.exit41 ], [ %i.z, %middle.block ], [ %i.bj, %.lr.ph50 ] ; 9 uses
  %i.aj = icmp samesign ult i64 %.0.i.lcssa, %5
  br i1 %i.aj, label %iter.check, label %mbedtls_xor.exit

iter.check:                                       ; preds = %.preheader
  %i.ak = sub nuw i64 %5, %.0.i.lcssa             ; 4 uses
  %min.iters.check68 = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check68, label %.lr.ph52.preheader, label %vector.memcheck59

vector.memcheck59:                                ; preds = %iter.check
  %scevgep60 = getelementptr i8, ptr %4, i64 %.0.i.lcssa
  %scevgep61 = getelementptr i8, ptr %4, i64 %5
  %i.al = getelementptr i8, ptr %0, i64 %.0.i.lcssa
  %scevgep62 = getelementptr i8, ptr %i.al, i64 400
  %i.am = getelementptr i8, ptr %0, i64 %5
  %scevgep63 = getelementptr i8, ptr %i.am, i64 400
  %bound064 = icmp ult ptr %scevgep60, %scevgep63
  %bound165 = icmp ult ptr %scevgep62, %scevgep61
  %found.conflict66 = and i1 %bound064, %bound165
  br i1 %found.conflict66, label %.lr.ph52.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck59
  %min.iters.check69 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.body73

vector.body73:                                    ; preds = %vector.main.loop.iter.check, %vector.body73
  %index74 = phi i64 [ %index.next79, %vector.body73 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.an = add i64 %.0.i.lcssa, %index74           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load75 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !16, !alias.scope !83, !noalias !86
  %wide.load76 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !16, !alias.scope !83, !noalias !86
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load77 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !16, !alias.scope !86
  %wide.load78 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !16, !alias.scope !86
  %i.as = xor <16 x i8> %wide.load77, %wide.load75
  %i.at = xor <16 x i8> %wide.load78, %wide.load76
  store <16 x i8> %i.as, ptr %i.ao, align 1, !tbaa !16, !alias.scope !83, !noalias !86
  store <16 x i8> %i.at, ptr %i.ap, align 1, !tbaa !16, !alias.scope !83, !noalias !86
  %index.next79 = add nuw i64 %index74, 32
  br label %vector.body73, !llvm.loop !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec84 = and i64 %i.ak, 24                    ; 3 uses
  %i.au = add i64 %.0.i.lcssa, %n.vec84
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 2 uses
  %i.av = add i64 %.0.i.lcssa, %index85           ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %i.av ; 2 uses
  %wide.load86.a = load <8 x i8>, ptr %i.aw, align 1, !tbaa !16, !alias.scope !83, !noalias !86
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  %wide.load87.a = load <8 x i8>, ptr %i.ax, align 1, !tbaa !16, !alias.scope !86
  %i.ay = xor <8 x i8> %wide.load87.a, %wide.load86.a
  store <8 x i8> %i.ay, ptr %i.aw, align 1, !tbaa !16, !alias.scope !83, !noalias !86
  %index.next88 = add nuw i64 %index85, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next88, %n.vec84
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.ak, %n.vec84
  br i1 %cmp.n89, label %mbedtls_xor.exit, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %vector.memcheck59, %iter.check, %vec.epilog.middle.block
  %.1.i51.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck59 ], [ %.0.i.lcssa, %iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 4 uses
  %i.ba = sub i64 %5, %.1.i51.ph
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol

.lr.ph52.prol:                                    ; preds = %.lr.ph52.preheader, %.lr.ph52.prol
  %.1.i51.prol = phi i64 [ %i.bg, %.lr.ph52.prol ], [ %.1.i51.ph, %.lr.ph52.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph52.prol ], [ 0, %.lr.ph52.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i51.prol ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i51.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !16
  %i.bf = xor i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.bb, align 1, !tbaa !16
  %i.bg = add nuw i64 %.1.i51.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol, !llvm.loop !90

.lr.ph52.prol.loopexit:                           ; preds = %.lr.ph52.prol, %.lr.ph52.preheader
  %.1.i51.unr = phi i64 [ %.1.i51.ph, %.lr.ph52.preheader ], [ %i.bg, %.lr.ph52.prol ]
  %i.bh = sub i64 %.1.i51.ph, %5
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %mbedtls_xor.exit, label %.lr.ph52

.lr.ph50:                                         ; preds = %.lr.ph50.preheader91, %.lr.ph50
  %i.bj = phi i64 [ %i.bn, %.lr.ph50 ], [ %.ph, %.lr.ph50.preheader91 ] ; 3 uses
  %.0.i49 = phi i64 [ %i.bj, %.lr.ph50 ], [ %.0.i49.ph, %.lr.ph50.preheader91 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i49 ; 2 uses
  %.0.copyload.i44 = load i64, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i49
  %.0.copyload.i43 = load i64, ptr %i.bl, align 1
  %i.bm = xor i64 %.0.copyload.i43, %.0.copyload.i44
  store i64 %i.bm, ptr %i.bk, align 1
  %i.bn = add nuw nsw i64 %i.bj, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.bn, %5
  br i1 %.not.i, label %.preheader, label %.lr.ph50, !llvm.loop !91

.lr.ph52:                                         ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52
  %.1.i51 = phi i64 [ %i.cl, %.lr.ph52 ], [ %.1.i51.unr, %.lr.ph52.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i51 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i51
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !16
  %i.bs = xor i8 %i.br, %i.bp
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !16
  %i.bt = add nuw i64 %.1.i51, 1                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = xor i8 %i.bx, %i.bv
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !16
  %i.bz = add nuw i64 %.1.i51, 2                  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %i.bz ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = xor i8 %i.cd, %i.cb
  store i8 %i.ce, ptr %i.ca, align 1, !tbaa !16
  %i.cf = add nuw i64 %.1.i51, 3                  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cf
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = xor i8 %i.cj, %i.ch
  store i8 %i.ck, ptr %i.cg, align 1, !tbaa !16
  %i.cl = add nuw i64 %.1.i51, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cl, %5
  br i1 %exitcond.not.3, label %mbedtls_xor.exit, label %.lr.ph52, !llvm.loop !92

mbedtls_xor.exit:                                 ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52, %vec.epilog.middle.block, %.preheader, %bb.f, %bb.c
  %.0 = phi i32 [ -20, %bb.c ], [ 0, %bb.f ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph52 ], [ 0, %.lr.ph52.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind uwtable
define i32 @mbedtls_gcm_crypt_and_tag(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef %1, ptr noundef %3, i64 noundef %4) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 2 uses
  %.not23 = icmp eq i32 %i.c, 0
  br i1 %.not23, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %7, i64 noundef %2, ptr noundef %8, i64 noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not24 = icmp eq i32 %i.d, 0
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @mbedtls_gcm_finish(ptr noundef %0, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef %10, i64 noundef %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.c ], [ %i.b, %bb.a ], [ %i.c, %bb.b ], [ %i.e, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_gcm_auth_decrypt(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call i32 @mbedtls_gcm_starts(ptr noundef %0, i32 noundef 0, ptr noundef readonly %2, i64 noundef %3) ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @mbedtls_gcm_update_ad(ptr noundef %0, ptr noundef readonly %4, i64 noundef %5) ; 2 uses
  %.not23.i = icmp eq i32 %i.d, 0
  br i1 %.not23.i, label %bb.c, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @mbedtls_gcm_update(ptr noundef %0, ptr noundef %8, i64 noundef %1, ptr noundef %9, i64 noundef %1, ptr noundef nonnull %i.a) ; 2 uses
  %.not24.i = icmp eq i32 %i.e, 0
  br i1 %.not24.i, label %mbedtls_gcm_crypt_and_tag.exit, label %mbedtls_gcm_crypt_and_tag.exit.thread

mbedtls_gcm_crypt_and_tag.exit.thread:            ; preds = %bb.c, %bb.a, %bb.b
  %.0.i.ph = phi i32 [ %i.d, %bb.b ], [ %i.c, %bb.a ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

mbedtls_gcm_crypt_and_tag.exit:                   ; preds = %bb.c
  %i.f = call i32 @mbedtls_gcm_finish(ptr noundef %0, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit
  %i.g = call i32 @mbedtls_ct_memcmp(ptr noundef %6, ptr noundef nonnull %i.b, i64 noundef %7) #9
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @mbedtls_platform_zeroize(ptr noundef %9, i64 noundef %1) #9
  br label %bb.f

bb.f:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit.thread, %bb.d, %mbedtls_gcm_crypt_and_tag.exit, %bb.e
  %.0 = phi i32 [ %i.f, %mbedtls_gcm_crypt_and_tag.exit ], [ -18, %bb.e ], [ 0, %bb.d ], [ %.0.i.ph, %mbedtls_gcm_crypt_and_tag.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0
}

declare i32 @mbedtls_ct_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @mbedtls_gcm_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_cipher_free(ptr noundef nonnull %0) #9
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 424) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_gcm_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.mbedtls_gcm_context, align 8 ; 43 uses
  %i.c = alloca [64 x i8], align 16               ; 13 uses
  %i.d = alloca [16 x i8], align 16               ; 10 uses
  %i.e = alloca i64, align 8                      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %.not = icmp eq i32 %0, 0                       ; 8 uses
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.f = tail call i32 @mbedtls_aesni_has_support(i32 noundef 2) #9
  %.not160 = icmp eq i32 %i.f, 0
  %str.str.1 = select i1 %.not160, ptr @str, ptr @str.1
  %puts161 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.str.1) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread239
  %indvars.iv262 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next263, %.thread239 ] ; 3 uses
  %i.h = shl nuw nsw i64 %indvars.iv262, 6
  %i.i = add nuw nsw i64 %i.h, 128                ; 3 uses
  %i.j = icmp eq i64 %i.i, 192
  %i.k = mul nuw nsw i64 %indvars.iv262, 6
  %i.l = trunc nuw nsw i64 %i.i to i32            ; 2 uses
  %.pre = trunc nuw nsw i64 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.ba
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.ba ] ; 14 uses
  br i1 %.not, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.l, i32 noundef %i.m, ptr noundef nonnull @.str.3) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %.pre-phi = phi i32 [ %i.l, %bb.e ], [ %.pre, %bb.d ] ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %1, i8 0, i64 424, i1 false)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @pt_index_test_data, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [32 x i8], ptr @key_test_data, i64 %i.q ; 4 uses
  %i.s = call i32 @mbedtls_gcm_setkey(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %i.r, i32 noundef %.pre-phi) ; 3 uses
  %i.t = icmp eq i32 %i.s, -114
  %or.cond = select i1 %i.t, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %puts205 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.thread239

bb.g:                                             ; preds = %._crit_edge
  %.not162 = icmp eq i32 %i.s, 0
  br i1 %.not162, label %bb.h, label %.thread249

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @pt_len_test_data, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8, !tbaa !8    ; 14 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @iv_index_test_data, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [64 x i8], ptr @iv_test_data, i64 %i.y ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @iv_len_test_data, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !8  ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @add_index_test_data, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [64 x i8], ptr @additional_test_data, i64 %i.ae ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @add_len_test_data, i64 %indvars.iv
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !8  ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @pt_index_test_data, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [64 x i8], ptr @pt_test_data, i64 %i.ak ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.am = call i32 @mbedtls_gcm_starts(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull readonly %i.z, i64 noundef %i.ab) ; 2 uses
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %bb.i, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.an = call i32 @mbedtls_gcm_update_ad(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.af, i64 noundef %i.ah) ; 2 uses
  %.not23.i = icmp eq i32 %i.an, 0
  br i1 %.not23.i, label %bb.j, label %mbedtls_gcm_crypt_and_tag.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ao = call i32 @mbedtls_gcm_update(ptr noundef nonnull %1, ptr noundef nonnull %i.al, i64 noundef %i.v, ptr noundef nonnull %i.c, i64 noundef %i.v, ptr noundef nonnull %i.b) ; 2 uses
  %.not24.i = icmp eq i32 %i.ao, 0
end_hunk_0
begin_hunk_1_@mbedtls_gcm_self_test:bb.a
mbedtls_gcm_crypt_and_tag.exit220:                ; preds = %bb.r
  %i.bd = call i32 @mbedtls_gcm_finish(ptr noundef nonnull %1, ptr poison, i64 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i64 noundef 16) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not169 = icmp eq i32 %i.bd, 0
  br i1 %.not169, label %bb.s, label %.thread249

bb.s:                                             ; preds = %mbedtls_gcm_crypt_and_tag.exit220
  %bcmp170 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.al, i64 %i.v)
  %.not171 = icmp eq i32 %bcmp170, 0
  br i1 %.not171, label %bb.t, label %.thread249

bb.t:                                             ; preds = %bb.s
  %i.be = load i128, ptr %i.d, align 16
  %i.bf = load i128, ptr %i.as, align 1
  %i.bg = icmp ne i128 %i.be, %i.bf
  %i.bh = zext i1 %i.bg to i32
  %.not173 = icmp eq i32 %i.bh, 0
  br i1 %.not173, label %bb.u, label %.thread249

bb.u:                                             ; preds = %bb.t
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 424) #9
  br i1 %.not, label %.critedge209, label %bb.v

bb.v:                                             ; preds = %bb.u
  %puts174 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %1, i8 0, i64 424, i1 false)
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.pre-phi, i32 noundef %i.bi, ptr noundef nonnull @.str.3) ; 0 uses
  br label %bb.w

.critedge209:                                     ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %1, i8 0, i64 424, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %.critedge209, %bb.v
  %i.bk = call i32 @mbedtls_gcm_setkey(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %i.r, i32 noundef %.pre-phi) ; 2 uses
  %.not175 = icmp eq i32 %i.bk, 0
  br i1 %.not175, label %bb.x, label %.thread249

bb.x:                                             ; preds = %bb.w
  %i.bl = call i32 @mbedtls_gcm_starts(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.z, i64 noundef %i.ab) ; 2 uses
  %.not176 = icmp eq i32 %i.bl, 0
  br i1 %.not176, label %bb.y, label %.thread249

bb.y:                                             ; preds = %bb.x
  %i.bm = call i32 @mbedtls_gcm_update_ad(ptr noundef nonnull %1, ptr noundef nonnull %i.af, i64 noundef %i.ah) ; 2 uses
  %.not177 = icmp eq i32 %i.bm, 0
  br i1 %.not177, label %bb.z, label %.thread249

bb.z:                                             ; preds = %bb.y
  %i.bn = icmp samesign ugt i64 %indvars.iv, 1    ; 2 uses
  br i1 %i.bn, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bo = add i64 %i.v, -32                       ; 2 uses
  %i.bp = call i32 @mbedtls_gcm_update(ptr noundef nonnull %1, ptr noundef nonnull %i.al, i64 noundef 32, ptr noundef nonnull %i.c, i64 noundef 64, ptr noundef nonnull %i.e) ; 2 uses
  %.not180 = icmp eq i32 %i.bp, 0
  br i1 %.not180, label %bb.ab, label %.thread249

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !8
  %.not181 = icmp eq i64 %i.bq, 32
  br i1 %.not181, label %bb.ac, label %.thread244

bb.ac:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.bs = call i32 @mbedtls_gcm_update(ptr noundef nonnull %1, ptr noundef nonnull %i.br, i64 noundef %i.bo, ptr noundef nonnull %i.g, i64 noundef 32, ptr noundef nonnull %i.e) ; 2 uses
  %.not182 = icmp eq i32 %i.bs, 0
  br i1 %.not182, label %bb.ad, label %.thread249

bb.ad:                                            ; preds = %bb.ac
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !8
  %.not183 = icmp eq i64 %i.bt, %i.bo
  br i1 %.not183, label %bb.ag, label %.thread244

bb.ae:                                            ; preds = %bb.z
  %i.bu = call i32 @mbedtls_gcm_update(ptr noundef nonnull %1, ptr noundef nonnull %i.al, i64 noundef %i.v, ptr noundef nonnull %i.c, i64 noundef 64, ptr noundef nonnull %i.e) ; 2 uses
  %.not178 = icmp eq i32 %i.bu, 0
  br i1 %.not178, label %bb.af, label %.thread249

bb.af:                                            ; preds = %bb.ae
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !8
  %.not179 = icmp eq i64 %i.bv, %i.v
  br i1 %.not179, label %bb.ag, label %.thread244

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %i.bw = call i32 @mbedtls_gcm_finish(ptr noundef nonnull %1, ptr poison, i64 poison, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef 16) ; 2 uses
  %.not184 = icmp eq i32 %i.bw, 0
  br i1 %.not184, label %bb.ah, label %.thread249

bb.ah:                                            ; preds = %bb.ag
  %bcmp185 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.ar, i64 %i.v)
  %.not186 = icmp eq i32 %bcmp185, 0
  br i1 %.not186, label %bb.ai, label %.thread249

bb.ai:                                            ; preds = %bb.ah
  %i.bx = load i128, ptr %i.d, align 16
  %i.by = load i128, ptr %i.as, align 1
  %i.bz = icmp ne i128 %i.bx, %i.by
  %i.ca = zext i1 %i.bz to i32
  %.not188 = icmp eq i32 %i.ca, 0
  br i1 %.not188, label %bb.aj, label %.thread249

bb.aj:                                            ; preds = %bb.ai
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 424) #9
  br i1 %.not, label %.critedge212, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %puts189 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %1, i8 0, i64 424, i1 false)
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.pre-phi, i32 noundef %i.cb, ptr noundef nonnull @.str.6) ; 0 uses
  br label %bb.al

.critedge212:                                     ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %1, i8 0, i64 424, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %.critedge212, %bb.ak
  %i.cd = call i32 @mbedtls_gcm_setkey(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %i.r, i32 noundef %.pre-phi) ; 2 uses
  %.not190 = icmp eq i32 %i.cd, 0
  br i1 %.not190, label %bb.am, label %.thread249

bb.am:                                            ; preds = %bb.al
  %i.ce = call i32 @mbedtls_gcm_starts(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %i.z, i64 noundef %i.ab) ; 2 uses
  %.not191 = icmp eq i32 %i.ce, 0
  br i1 %.not191, label %bb.an, label %.thread249

bb.an:                                            ; preds = %bb.am
  %i.cf = call i32 @mbedtls_gcm_update_ad(ptr noundef nonnull %1, ptr noundef nonnull %i.af, i64 noundef %i.ah) ; 2 uses
  %.not192 = icmp eq i32 %i.cf, 0
  br i1 %.not192, label %bb.ao, label %.thread249

bb.ao:                                            ; preds = %bb.an
  br i1 %i.bn, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.cg = add i64 %i.v, -32                       ; 2 uses
  %i.ch = call i32 @mbedtls_gcm_update(ptr noundef nonnull %1, ptr noundef nonnull %i.ar, i64 noundef 32, ptr noundef nonnull %i.c, i64 noundef 64, ptr noundef nonnull %i.e) ; 2 uses
  %.not195 = icmp eq i32 %i.ch, 0
  br i1 %.not195, label %bb.aq, label %.thread249

bb.aq:                                            ; preds = %bb.ap
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !8
  %.not196 = icmp eq i64 %i.ci, 32
  br i1 %.not196, label %bb.ar, label %.thread244

bb.ar:                                            ; preds = %bb.aq
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ck = call i32 @mbedtls_gcm_update(ptr noundef nonnull %1, ptr noundef nonnull %i.cj, i64 noundef %i.cg, ptr noundef nonnull %i.g, i64 noundef 32, ptr noundef nonnull %i.e) ; 2 uses
  %.not197 = icmp eq i32 %i.ck, 0
  br i1 %.not197, label %bb.as, label %.thread249

bb.as:                                            ; preds = %bb.ar
  %i.cl = load i64, ptr %i.e, align 8, !tbaa !8
  %.not198 = icmp eq i64 %i.cl, %i.cg
  br i1 %.not198, label %bb.av, label %.thread244

bb.at:                                            ; preds = %bb.ao
  %i.cm = call i32 @mbedtls_gcm_update(ptr noundef nonnull %1, ptr noundef nonnull %i.ar, i64 noundef %i.v, ptr noundef nonnull %i.c, i64 noundef 64, ptr noundef nonnull %i.e) ; 2 uses
  %.not193 = icmp eq i32 %i.cm, 0
  br i1 %.not193, label %bb.au, label %.thread249

bb.au:                                            ; preds = %bb.at
  %i.cn = load i64, ptr %i.e, align 8, !tbaa !8
  %.not194 = icmp eq i64 %i.cn, %i.v
  br i1 %.not194, label %bb.av, label %.thread244

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.co = call i32 @mbedtls_gcm_finish(ptr noundef nonnull %1, ptr poison, i64 poison, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef 16) ; 2 uses
  %.not199 = icmp eq i32 %i.co, 0
  br i1 %.not199, label %bb.aw, label %.thread249

bb.aw:                                            ; preds = %bb.av
  %bcmp200 = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.al, i64 %i.v)
  %.not201 = icmp eq i32 %bcmp200, 0
  br i1 %.not201, label %bb.ax, label %.thread249

bb.ax:                                            ; preds = %bb.aw
  %i.cp = load i128, ptr %i.d, align 16
  %i.cq = load i128, ptr %i.as, align 1
  %i.cr = icmp ne i128 %i.cp, %i.cq
  %i.cs = zext i1 %i.cr to i32
  %.not203 = icmp eq i32 %i.cs, 0
  br i1 %.not203, label %bb.ay, label %.thread249

bb.ay:                                            ; preds = %bb.ax
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 424) #9
  br i1 %.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %puts204 = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %.thread239, label %bb.d, !llvm.loop !93

.thread239:                                       ; preds = %bb.ba, %bb.f
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next263, 3
  br i1 %exitcond265.not, label %bb.bb, label %bb.c, !llvm.loop !94

bb.bb:                                            ; preds = %.thread239
  br i1 %.not, label %.thread244, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %.thread244

.thread249:                                       ; preds = %bb.ar, %bb.ap, %bb.aa, %bb.ac, %bb.aw, %bb.ae, %bb.g, %mbedtls_gcm_crypt_and_tag.exit, %bb.k, %bb.o, %mbedtls_gcm_crypt_and_tag.exit220, %bb.s, %bb.w, %bb.x, %bb.ag, %bb.ah, %bb.al, %bb.am, %bb.av, %bb.an, %bb.at, %bb.y, %bb.l, %bb.t, %bb.ai, %bb.ax, %mbedtls_gcm_crypt_and_tag.exit.thread, %mbedtls_gcm_crypt_and_tag.exit220.thread
  %.5.ph252 = phi i32 [ %.0.i217.ph, %mbedtls_gcm_crypt_and_tag.exit220.thread ], [ %.0.i.ph, %mbedtls_gcm_crypt_and_tag.exit.thread ], [ %i.bs, %bb.ac ], [ %i.bp, %bb.aa ], [ %i.ch, %bb.ap ], [ %i.ck, %bb.ar ], [ 1, %bb.ax ], [ 1, %bb.ai ], [ 1, %bb.t ], [ 1, %bb.l ], [ %i.bm, %bb.y ], [ %i.cm, %bb.at ], [ %i.cf, %bb.an ], [ %i.co, %bb.av ], [ %i.ce, %bb.am ], [ %i.cd, %bb.al ], [ 1, %bb.ah ], [ %i.bw, %bb.ag ], [ %i.bl, %bb.x ], [ %i.bk, %bb.w ], [ 1, %bb.s ], [ %i.bd, %mbedtls_gcm_crypt_and_tag.exit220 ], [ %i.az, %bb.o ], [ 1, %bb.k ], [ %i.ap, %mbedtls_gcm_crypt_and_tag.exit ], [ %i.s, %bb.g ], [ %i.bu, %bb.ae ], [ 1, %bb.aw ]
  br i1 %.not, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.thread249
  %puts207 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.thread249
  call void @mbedtls_cipher_free(ptr noundef nonnull %1) #9
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %1, i64 noundef 424) #9
  br label %.thread244

.thread244:                                       ; preds = %bb.as, %bb.ad, %bb.ab, %bb.aq, %bb.af, %bb.au, %bb.bb, %bb.bc, %bb.be
  %.6247 = phi i32 [ 0, %bb.bb ], [ 0, %bb.bc ], [ %.5.ph252, %bb.be ], [ 0, %bb.au ], [ 0, %bb.af ], [ 0, %bb.aq ], [ 0, %bb.ab ], [ 0, %bb.ad ], [ 0, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i32 %.6247
}

declare i32 @mbedtls_aesni_has_support(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @mbedtls_aesni_gcm_mult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !6, i64 417}
!11 = !{!"mbedtls_gcm_context", !12, i64 0, !6, i64 96, !9, i64 352, !9, i64 360, !6, i64 368, !6, i64 384, !6, i64 400, !6, i64 416, !6, i64 417}
!12 = !{!"mbedtls_cipher_context_t", !13, i64 0, !5, i64 8, !5, i64 12, !14, i64 16, !14, i64 24, !6, i64 32, !9, i64 48, !6, i64 56, !9, i64 72, !14, i64 80, !15, i64 88}
!13 = !{!"p1 _ZTS21mbedtls_cipher_info_t", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS22mbedtls_cmac_context_t", !14, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!11, !6, i64 416}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !24, !25, !26}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !24, !25}
!30 = distinct !{!30, !24}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !6, i64 0}
!33 = distinct !{!33, !24}
!34 = !{!11, !9, i64 360}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !24, !25, !26}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !24, !25}
!43 = distinct !{!43, !24}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !24, !25, !26}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !24, !25}
!52 = !{!11, !9, i64 352}
!53 = distinct !{!53, !24}
!54 = !{!55}
!55 = distinct !{!55, !56}
!56 = distinct !{!56, !"LVerDomain"}
!57 = !{!58}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !24, !25, !26}
!60 = !{!"branch_weights", i32 8, i32 24}
!61 = distinct !{!61, !24, !25, !26}
!62 = distinct !{!62, !28}
!63 = distinct !{!63, !24, !25}
!64 = distinct !{!64, !24, !25, !26}
!65 = distinct !{!65, !24, !25, !26}
!66 = distinct !{!66, !28}
!67 = distinct !{!67, !24, !25}
!68 = !{!69}
!69 = distinct !{!69, !70}
!70 = distinct !{!70, !"LVerDomain"}
!71 = !{!72}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !24, !25, !26}
!74 = distinct !{!74, !24, !25, !26}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !24, !25}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = distinct !{!82, !24, !25, !26}
!83 = !{!84}
!84 = distinct !{!84, !85}
!85 = distinct !{!85, !"LVerDomain"}
!86 = !{!87}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !24, !25, !26}
!89 = distinct !{!89, !24, !25, !26}
!90 = distinct !{!90, !28}
!91 = distinct !{!91, !24, !25}
!92 = distinct !{!92, !24, !25}
!93 = distinct !{!93, !24}
!94 = distinct !{!94, !24}
end_hunk_1
