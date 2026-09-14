Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/gcm?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@gcm_mask:bb.a

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %i.fa = add nuw i64 %.0.i.lcssa74, %index138    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fa ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %wide.load140 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 %i.fa ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load141 = load <16 x i8>, ptr %i.fd, align 1, !tbaa !16, !alias.scope !76
  %wide.load142 = load <16 x i8>, ptr %i.fe, align 1, !tbaa !16, !alias.scope !76
  %i.ff = xor <16 x i8> %wide.load141, %wide.load139
  %i.fg = xor <16 x i8> %wide.load142, %wide.load140
  store <16 x i8> %i.ff, ptr %i.fb, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  store <16 x i8> %i.fg, ptr %i.fc, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %index.next143 = add nuw i64 %index138, 32      ; 2 uses
  %i.fh = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.fh, label %middle.block144, label %vector.body137, !llvm.loop !68

middle.block144:                                  ; preds = %vector.body137
  %cmp.n145 = icmp eq i64 %i.et, %n.vec136
  br i1 %cmp.n145, label %mbedtls_xor.exit, label %vec.epilog.iter.check149

vec.epilog.iter.check149:                         ; preds = %middle.block144
  %min.epilog.iters.check150 = icmp eq i64 %i.ey, 0
  br i1 %min.epilog.iters.check150, label %.lr.ph56.preheader, label %vec.epilog.ph151, !prof !74

vec.epilog.ph151:                                 ; preds = %vector.main.loop.iter.check133, %vec.epilog.iter.check149
  %vec.epilog.resume.val146 = phi i64 [ %n.vec136, %vec.epilog.iter.check149 ], [ 0, %vector.main.loop.iter.check133 ]
  %i.fi = and i64 %3, 7                           ; 2 uses
  %n.vec152 = sub nsw i64 %i.et, %i.fi            ; 2 uses
  %i.fj = add nsw i64 %.0.i.lcssa74, %n.vec152
  br label %vec.epilog.vector.body153

vec.epilog.vector.body153:                        ; preds = %vec.epilog.vector.body153, %vec.epilog.ph151
  %index154 = phi i64 [ %vec.epilog.resume.val146, %vec.epilog.ph151 ], [ %index.next157, %vec.epilog.vector.body153 ] ; 2 uses
  %i.fk = add nuw i64 %.0.i.lcssa74, %index154    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fk ; 2 uses
  %wide.load155 = load <8 x i8>, ptr %i.fl, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 %i.fk
  %wide.load156 = load <8 x i8>, ptr %i.fm, align 1, !tbaa !16, !alias.scope !76
  %i.fn = xor <8 x i8> %wide.load156, %wide.load155
  store <8 x i8> %i.fn, ptr %i.fl, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  %index.next157 = add nuw i64 %index154, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next157, %n.vec152
  br i1 %i.fo, label %vec.epilog.middle.block158, label %vec.epilog.vector.body153, !llvm.loop !69

vec.epilog.middle.block158:                       ; preds = %vec.epilog.vector.body153
  %cmp.n159 = icmp eq i64 %i.fi, 0
  br i1 %cmp.n159, label %mbedtls_xor.exit, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %vector.memcheck124, %iter.check147, %vec.epilog.iter.check149, %vec.epilog.middle.block158
  %.1.i55.ph = phi i64 [ %.0.i.lcssa74, %iter.check147 ], [ %.0.i.lcssa74, %vector.memcheck124 ], [ %i.ez, %vec.epilog.iter.check149 ], [ %i.fj, %vec.epilog.middle.block158 ] ; 4 uses
  %i.fp = sub i64 %3, %.1.i55.ph
  %xtraiter166 = and i64 %i.fp, 3                 ; 2 uses
  %lcmp.mod167.not = icmp eq i64 %xtraiter166, 0
  br i1 %lcmp.mod167.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol

.lr.ph56.prol:                                    ; preds = %.lr.ph56.preheader, %.lr.ph56.prol
  %.1.i55.prol = phi i64 [ %i.fv, %.lr.ph56.prol ], [ %.1.i55.ph, %.lr.ph56.preheader ] ; 3 uses
  %prol.iter168 = phi i64 [ %prol.iter168.next, %.lr.ph56.prol ], [ 0, %.lr.ph56.preheader ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 %.1.i55.prol ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !16
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i55.prol
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !16
  %i.fu = xor i8 %i.ft, %i.fr
  store i8 %i.fu, ptr %i.fq, align 1, !tbaa !16
  %i.fv = add nuw nsw i64 %.1.i55.prol, 1         ; 2 uses
  %prol.iter168.next = add i64 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i64 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %.lr.ph56.prol.loopexit, label %.lr.ph56.prol, !llvm.loop !70

.lr.ph56.prol.loopexit:                           ; preds = %.lr.ph56.prol, %.lr.ph56.preheader
  %.1.i55.unr = phi i64 [ %.1.i55.ph, %.lr.ph56.preheader ], [ %i.fv, %.lr.ph56.prol ]
  %i.fw = sub i64 %.1.i55.ph, %3
  %i.fx = icmp ugt i64 %i.fw, -4
  br i1 %i.fx, label %mbedtls_xor.exit, label %.lr.ph56

.lr.ph53:                                         ; preds = %bb.e
  %.0.copyload.i38 = load i64, ptr %i.er, align 1
  %.0.copyload.i37 = load i64, ptr %5, align 1
  %i.fy = xor i64 %.0.copyload.i37, %.0.copyload.i38
  store i64 %i.fy, ptr %i.er, align 1
  %.not.i = icmp samesign ult i64 %3, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph53.1

.lr.ph53.1:                                       ; preds = %.lr.ph53
  %i.fz = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %.0.copyload.i38.1 = load i64, ptr %i.fz, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.0.copyload.i37.1 = load i64, ptr %i.ga, align 1
  %i.gb = xor i64 %.0.copyload.i37.1, %.0.copyload.i38.1
  store i64 %i.gb, ptr %i.fz, align 1
  br label %.preheader

.lr.ph56:                                         ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56
  %.1.i55 = phi i64 [ %i.gz, %.lr.ph56 ], [ %.1.i55.unr, %.lr.ph56.prol.loopexit ] ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.er, i64 %.1.i55 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !16
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 %.1.i55
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !16
  %i.gg = xor i8 %i.gf, %i.gd
  store i8 %i.gg, ptr %i.gc, align 1, !tbaa !16
  %i.gh = add nuw nsw i64 %.1.i55, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gh ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !16
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 %i.gh
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !16
  %i.gm = xor i8 %i.gl, %i.gj
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !16
  %i.gn = add nuw nsw i64 %.1.i55, 2              ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gn ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !16
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 %i.gn
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !16
  %i.gs = xor i8 %i.gr, %i.gp
  store i8 %i.gs, ptr %i.go, align 1, !tbaa !16
  %i.gt = add nuw nsw i64 %.1.i55, 3              ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.gt ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !16
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 %i.gt
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !16
  %i.gy = xor i8 %i.gx, %i.gv
  store i8 %i.gy, ptr %i.gu, align 1, !tbaa !16
  %i.gz = add nuw nsw i64 %.1.i55, 4              ; 2 uses
  %exitcond60.not.3 = icmp eq i64 %i.gz, %3
  br i1 %exitcond60.not.3, label %mbedtls_xor.exit, label %.lr.ph56, !llvm.loop !71

mbedtls_xor.exit:                                 ; preds = %.lr.ph56.prol.loopexit, %.lr.ph56, %middle.block144, %vec.epilog.middle.block158, %.preheader, %mbedtls_xor.exit29, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %i.e
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden range(i32 -135, 1) i32 @mbedtls_gcm_finish(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  store i64 0, ptr %3, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = shl i64 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = shl i64 %i.e, 3                          ; 2 uses
  %i.g = icmp ne i64 %i.b, 0
  %i.h = and i64 %i.e, 15
  %.not = icmp eq i64 %i.h, 0
  %or.cond37 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond37, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = add i64 %5, -17
  %or.cond = icmp ult i64 %i.j, -13
  br i1 %or.cond, label %mbedtls_xor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !23
  %i.l = and i64 %i.k, 15
  %.not36 = icmp eq i64 %i.l, 0
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  tail call fastcc void @gcm_mult(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.m)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 8 %i.n, i64 %5, i1 false)
  %i.o = icmp ne i64 %i.c, 0
  %i.p = icmp ne i64 %i.f, 0
  %or.cond3 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond3, label %mbedtls_xor.exit41, label %mbedtls_xor.exit

mbedtls_xor.exit41:                               ; preds = %bb.f
  %.sroa.6.12.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.c)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 16 uses
  %.0.copyload.i42 = load i64, ptr %i.q, align 8
  %.sroa.0.sroa.0.0.insert.insert = tail call i64 @llvm.bswap.i64(i64 %i.f)
  %i.r = xor i64 %.sroa.0.sroa.0.0.insert.insert, %.0.copyload.i42
  store i64 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
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
  %min.iters.check = icmp ult i64 %i.u, 88
  br i1 %min.iters.check, label %.lr.ph50.preheader89, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50.preheader
  %i.x = and i64 %5, 24                           ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.x
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  %scevgep54 = getelementptr i8, ptr %i.y, i64 408
  %bound0 = icmp ult ptr %4, %scevgep54
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph50.preheader89, label %vector.ph

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
  %wide.load = load <2 x i64>, ptr %i.ac, align 1, !alias.scope !88, !noalias !89
  %wide.load55 = load <2 x i64>, ptr %i.ad, align 1, !alias.scope !88, !noalias !89
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load56 = load <2 x i64>, ptr %i.ae, align 1, !alias.scope !89
  %wide.load57 = load <2 x i64>, ptr %i.af, align 1, !alias.scope !89
  %i.ag = xor <2 x i64> %wide.load56, %wide.load
  %i.ah = xor <2 x i64> %wide.load57, %wide.load55
  store <2 x i64> %i.ag, ptr %i.ac, align 1, !alias.scope !88, !noalias !89
  store <2 x i64> %i.ah, ptr %i.ad, align 1, !alias.scope !88, !noalias !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph50.preheader89

.lr.ph50.preheader89:                             ; preds = %vector.memcheck, %.lr.ph50.preheader, %middle.block
  %.ph = phi i64 [ 8, %vector.memcheck ], [ 8, %.lr.ph50.preheader ], [ %i.aa, %middle.block ]
  %.0.i49.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph50.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph50

.preheader:                                       ; preds = %.lr.ph50, %middle.block, %mbedtls_xor.exit41
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_xor.exit41 ], [ %i.z, %middle.block ], [ %i.br, %.lr.ph50 ] ; 12 uses
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
  %scevgep62 = getelementptr i8, ptr %i.al, i64 408
  %i.am = getelementptr i8, ptr %0, i64 %5
  %scevgep63 = getelementptr i8, ptr %i.am, i64 408
  %bound064 = icmp ult ptr %scevgep60, %scevgep63
  %bound165 = icmp ult ptr %scevgep62, %scevgep61
  %found.conflict66 = and i1 %bound064, %bound165
  br i1 %found.conflict66, label %.lr.ph52.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck59
  %min.iters.check69 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.body72

vector.body72:                                    ; preds = %vector.main.loop.iter.check, %vector.body72
  %index73 = phi i64 [ %index.next78, %vector.body72 ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.an = add nuw i64 %.0.i.lcssa, %index73       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load74 = load <16 x i8>, ptr %i.ao, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  %wide.load75 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load76 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !16, !alias.scope !91
  %wide.load77 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !16, !alias.scope !91
  %i.as = xor <16 x i8> %wide.load76, %wide.load74
  %i.at = xor <16 x i8> %wide.load77, %wide.load75
  store <16 x i8> %i.as, ptr %i.ao, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  store <16 x i8> %i.at, ptr %i.ap, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  %index.next78 = add nuw i64 %index73, 32
  br label %vector.body72, !llvm.loop !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec82 = and i64 %i.ak, 24                    ; 4 uses
  %i.au = add i64 %.0.i.lcssa, %n.vec82
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i.lcssa ; 2 uses
  %wide.load84 = load <8 x i8>, ptr %i.av, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i.lcssa
  %wide.load85 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !16, !alias.scope !91
  %i.ax = xor <8 x i8> %wide.load85, %wide.load84
  store <8 x i8> %i.ax, ptr %i.av, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  %i.ay = icmp eq i64 %n.vec82, 8
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body.1

vec.epilog.vector.body.1:                         ; preds = %vec.epilog.ph
  %i.az = add nuw i64 %.0.i.lcssa, 8              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 %i.az ; 2 uses
  %wide.load84.1 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.az
  %wide.load85.1 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !16, !alias.scope !91
  %i.bc = xor <8 x i8> %wide.load85.1, %wide.load84.1
  store <8 x i8> %i.bc, ptr %i.ba, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  %i.bd = icmp eq i64 %n.vec82, 16
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body.2

vec.epilog.vector.body.2:                         ; preds = %vec.epilog.vector.body.1
  %i.be = add nuw i64 %.0.i.lcssa, 16             ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 %i.be ; 2 uses
  %wide.load84.2 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.be
  %wide.load85.2 = load <8 x i8>, ptr %i.bg, align 1, !tbaa !16, !alias.scope !91
  %i.bh = xor <8 x i8> %wide.load85.2, %wide.load84.2
  store <8 x i8> %i.bh, ptr %i.bf, align 1, !tbaa !16, !alias.scope !90, !noalias !91
  br label %vec.epilog.middle.block

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.2, %vec.epilog.vector.body.1, %vec.epilog.ph
  %cmp.n87 = icmp eq i64 %i.ak, %n.vec82
  br i1 %cmp.n87, label %mbedtls_xor.exit, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %vector.memcheck59, %iter.check, %vec.epilog.middle.block
  %.1.i51.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck59 ], [ %.0.i.lcssa, %iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 4 uses
  %i.bi = sub i64 %5, %.1.i51.ph
  %xtraiter = and i64 %i.bi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol

.lr.ph52.prol:                                    ; preds = %.lr.ph52.preheader, %.lr.ph52.prol
  %.1.i51.prol = phi i64 [ %i.bo, %.lr.ph52.prol ], [ %.1.i51.ph, %.lr.ph52.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph52.prol ], [ 0, %.lr.ph52.preheader ]
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i51.prol ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i51.prol
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16
  %i.bn = xor i8 %i.bm, %i.bk
  store i8 %i.bn, ptr %i.bj, align 1, !tbaa !16
  %i.bo = add nuw i64 %.1.i51.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol, !llvm.loop !85

.lr.ph52.prol.loopexit:                           ; preds = %.lr.ph52.prol, %.lr.ph52.preheader
  %.1.i51.unr = phi i64 [ %.1.i51.ph, %.lr.ph52.preheader ], [ %i.bo, %.lr.ph52.prol ]
  %i.bp = sub i64 %.1.i51.ph, %5
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %mbedtls_xor.exit, label %.lr.ph52

.lr.ph50:                                         ; preds = %.lr.ph50.preheader89, %.lr.ph50
  %i.br = phi i64 [ %i.bv, %.lr.ph50 ], [ %.ph, %.lr.ph50.preheader89 ] ; 3 uses
  %.0.i49 = phi i64 [ %i.br, %.lr.ph50 ], [ %.0.i49.ph, %.lr.ph50.preheader89 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 %.0.i49 ; 2 uses
  %.0.copyload.i44 = load i64, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.i49
  %.0.copyload.i43 = load i64, ptr %i.bt, align 1
  %i.bu = xor i64 %.0.copyload.i43, %.0.copyload.i44
  store i64 %i.bu, ptr %i.bs, align 1
  %i.bv = add nuw nsw i64 %i.br, 8                ; 2 uses
  %.not.i = icmp ugt i64 %i.bv, %5
  br i1 %.not.i, label %.preheader, label %.lr.ph50, !llvm.loop !86

.lr.ph52:                                         ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52
  %.1.i51 = phi i64 [ %i.ct, %.lr.ph52 ], [ %.1.i51.unr, %.lr.ph52.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 %.1.i51 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i51
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !16
  %i.ca = xor i8 %i.bz, %i.bx
  store i8 %i.ca, ptr %i.bw, align 1, !tbaa !16
  %i.cb = add nuw i64 %.1.i51, 1                  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cb
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = xor i8 %i.cf, %i.cd
  store i8 %i.cg, ptr %i.cc, align 1, !tbaa !16
  %i.ch = add nuw i64 %.1.i51, 2                  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = xor i8 %i.cl, %i.cj
  store i8 %i.cm, ptr %i.ci, align 1, !tbaa !16
  %i.cn = add nuw i64 %.1.i51, 3                  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cn
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !16
  %i.cs = xor i8 %i.cr, %i.cp
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !16
  %i.ct = add nuw i64 %.1.i51, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ct, %5
  br i1 %exitcond.not.3, label %mbedtls_xor.exit, label %.lr.ph52, !llvm.loop !87

mbedtls_xor.exit:                                 ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52, %vec.epilog.middle.block, %.preheader, %bb.f, %bb.c
  %.0 = phi i32 [ -135, %bb.c ], [ 0, %bb.f ], [ 0, %.preheader ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph52 ], [ 0, %.lr.ph52.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_gcm_crypt_and_tag(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #2 {
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
define hidden i32 @mbedtls_gcm_auth_decrypt(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #2 {
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
  %.0 = phi i32 [ %i.f, %mbedtls_gcm_crypt_and_tag.exit ], [ -149, %bb.e ], [ 0, %bb.d ], [ %.0.i.ph, %mbedtls_gcm_crypt_and_tag.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0
}

declare i32 @mbedtls_ct_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_gcm_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mbedtls_cipher_free(ptr noundef nonnull %0) #9
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 432) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_gcm_self_test(i32 noundef %0) local_unnamed_addr #2 {
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

bb.c:                                             ; preds = %bb.b, %.thread238
  %indvars.iv261 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next262, %.thread238 ] ; 3 uses
  %i.h = shl nuw nsw i64 %indvars.iv261, 6
  %i.i = add nuw nsw i64 %i.h, 128                ; 3 uses
  %i.j = icmp eq i64 %i.i, 192
  %i.k = mul nuw nsw i64 %indvars.iv261, 6
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %1, i8 0, i64 432, i1 false)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @pt_index_test_data, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !94
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [32 x i8], ptr @key_test_data, i64 %i.q ; 4 uses
  %i.s = call i32 @mbedtls_gcm_setkey(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %i.r, i32 noundef %.pre-phi) ; 3 uses
  %i.t = icmp eq i32 %i.s, -134
  %or.cond = select i1 %i.t, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
end_hunk_0
