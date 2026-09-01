Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/mszipd?download=true
inline.NumInlined: 22
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@mszipd_decompress_kwaj:bb.a
  %.3.lcssa = phi i32 [ %i.cx, %.preheader ], [ %i.dv, %bb.z ]
  %i.dx = and i32 %.393.lcssa, 255
  %.not108 = icmp eq i32 %i.dx, 75
  br i1 %.not108, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %._crit_edge206
  %i.dy = add nsw i32 %.3.lcssa, -8
  %i.dz = lshr i32 %.393.lcssa, 8
  store i32 0, ptr %i.i, align 8, !tbaa !36
  store i32 0, ptr %i.j, align 8, !tbaa !29
  store ptr %.6104.lcssa, ptr %i.a, align 8, !tbaa !26
  store ptr %.6.lcssa, ptr %i.b, align 8, !tbaa !25
  store i32 %i.dz, ptr %i.c, align 4, !tbaa !27
  store i32 %i.dy, ptr %i.d, align 8, !tbaa !28
  %i.ea = tail call fastcc i32 @inflate(ptr noundef %0) ; 3 uses
  %.not109 = icmp eq i32 %i.ea, 0
  br i1 %.not109, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eb = icmp sgt i32 %i.ea, 0
  %i.ec = select i1 %i.eb, i32 %i.ea, i32 11
  br label %.loopexit.sink.split

bb.ac:                                            ; preds = %bb.aa
  %i.ed = load ptr, ptr %0, align 8, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !32
  %i.eg = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.eh = load i32, ptr %i.j, align 8, !tbaa !29
  %i.ei = tail call i32 %i.ef(ptr noundef %i.eg, ptr noundef nonnull %i.l, i32 noundef %i.eh) #7
  %i.ej = load i32, ptr %i.j, align 8, !tbaa !29
  %.not110 = icmp eq i32 %i.ei, %i.ej
  br i1 %.not110, label %bb.b, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.ac, %bb.e, %bb.c, %bb.k, %bb.i, %bb.q, %bb.o, %bb.w, %bb.u, %bb.ab
  %.sink = phi i32 [ 3, %bb.e ], [ %i.ec, %bb.ab ], [ 3, %bb.k ], [ 3, %bb.w ], [ 3, %bb.q ], [ 3, %bb.u ], [ 3, %bb.o ], [ 3, %bb.i ], [ 3, %bb.c ], [ 4, %bb.ac ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %i.ek, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge186, %._crit_edge206, %._crit_edge196, %.loopexit.sink.split
  %.0106 = phi i32 [ %.sink, %.loopexit.sink.split ], [ 8, %._crit_edge206 ], [ 0, %._crit_edge186 ], [ 8, %._crit_edge196 ]
  ret i32 %.0106
}

; Function Attrs: nounwind uwtable
define void @mszipd_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  tail call void %i.c(ptr noundef %i.e) #7
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !16
  tail call void %i.f(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @make_decode_table(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 6, 10) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = shl nuw nsw i32 1, %1                    ; 5 uses
  %i.b = lshr exact i32 %i.a, 1                   ; 2 uses
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = trunc nuw nsw i32 %0 to i16              ; 2 uses
  br label %.preheader144

.preheader144:                                    ; preds = %bb.a, %bb.e
  %indvar = phi i32 [ 0, %bb.a ], [ %indvar.next, %bb.e ] ; 3 uses
  %i.e = phi i32 [ 1, %bb.a ], [ %i.bf, %bb.e ]
  %.0157 = phi i32 [ %i.b, %bb.a ], [ %i.bd, %bb.e ] ; 6 uses
  %.098156 = phi i32 [ 0, %bb.a ], [ %.2, %bb.e ]
  %.0100155 = phi i8 [ 1, %bb.a ], [ %i.be, %bb.e ] ; 4 uses
  %i.f = add i32 %indvar, 1                       ; 2 uses
  %i.g = shl nuw nsw i32 1, %i.e                  ; 5 uses
  %i.h = zext nneg i8 %.0100155 to i32
  %i.i = sub nuw nsw i32 %1, %i.h
  %i.j = add nsw i32 %.0157, -1
  %xtraiter = and i32 %i.f, 3                     ; 3 uses
  %i.k = icmp ult i32 %indvar, 3
  %unroll_iter = and i32 %i.f, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod219 = icmp ne i32 %xtraiter, 0
  %xtraiter220 = and i32 %.0157, 3                ; 2 uses
  %lcmp.mod221.not = icmp eq i32 %xtraiter220, 0
  %i.l = icmp ult i32 %i.j, 3
  br label %bb.b

bb.b:                                             ; preds = %.preheader144, %.loopexit143
  %.199154 = phi i32 [ %.098156, %.preheader144 ], [ %.2, %.loopexit143 ] ; 3 uses
  %.0121153 = phi i16 [ 0, %.preheader144 ], [ %i.bb, %.loopexit143 ] ; 7 uses
  %i.m = zext nneg i16 %.0121153 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %.not138 = icmp eq i8 %i.o, %.0100155
  br i1 %.not138, label %bb.c, label %.loopexit143

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i32 %.199154, %i.i                  ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c, %.new
  %.0110 = phi i32 [ %i.ac, %.new ], [ 0, %bb.c ]
  %.0102 = phi i32 [ %i.ad, %.new ], [ %i.p, %bb.c ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.new ], [ 0, %bb.c ]
  %i.q = shl i32 %.0110, 3
  %i.r = shl i32 %.0102, 2
  %i.s = and i32 %i.r, 4
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = and i32 %.0102, 2
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = lshr i32 %.0102, 2
  %i.x = and i32 %i.w, 1
  %i.y = or disjoint i32 %i.x, %i.v
  %i.z = lshr i32 %.0102, 3
  %i.aa = shl i32 %i.y, 1
  %i.ab = and i32 %i.z, 1
  %i.ac = or disjoint i32 %i.ab, %i.aa            ; 3 uses
  %i.ad = lshr i32 %.0102, 4                      ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %.0110.epil.init = phi i32 [ 0, %bb.c ], [ %i.ac, %.unr-lcssa ]
  %.0102.epil.init = phi i32 [ %i.p, %bb.c ], [ %i.ad, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod219)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.0110.epil = phi i32 [ %.0110.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ]
  %.0102.epil = phi i32 [ %.0102.epil.init, %.epil.preheader ], [ %i.ah, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = shl i32 %.0110.epil, 1
  %i.af = and i32 %.0102.epil, 1
  %i.ag = or disjoint i32 %i.af, %i.ae            ; 2 uses
  %i.ah = lshr i32 %.0102.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.d, !llvm.loop !57

.epilog-lcssa:                                    ; preds = %bb.d, %.unr-lcssa
  %.lcssa217 = phi i32 [ %i.ac, %.unr-lcssa ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ai = add i32 %.199154, %.0157                ; 3 uses
  %i.aj = icmp ugt i32 %i.ai, %i.a
  br i1 %i.aj, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.epilog-lcssa
  br i1 %lcmp.mod221.not, label %.preheader178.prol.loopexit, label %.preheader178.prol

.preheader178.prol:                               ; preds = %iter.check, %.preheader178.prol
  %.1111.prol = phi i32 [ %i.am, %.preheader178.prol ], [ %.lcssa217, %iter.check ] ; 2 uses
  %.1106.prol = phi i32 [ %i.an, %.preheader178.prol ], [ %.0157, %iter.check ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader178.prol ], [ 0, %iter.check ]
  %i.ak = zext i32 %.1111.prol to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ak
  store i16 %.0121153, ptr %i.al, align 2, !tbaa !42
  %i.am = add i32 %.1111.prol, %i.g               ; 2 uses
  %i.an = add i32 %.1106.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter220
  br i1 %prol.iter.cmp.not, label %.preheader178.prol.loopexit, label %.preheader178.prol, !llvm.loop !58

.preheader178.prol.loopexit:                      ; preds = %.preheader178.prol, %iter.check
  %.1111.unr = phi i32 [ %.lcssa217, %iter.check ], [ %i.am, %.preheader178.prol ]
  %.1106.unr = phi i32 [ %.0157, %iter.check ], [ %i.an, %.preheader178.prol ]
  br i1 %i.l, label %.loopexit143, label %.preheader178

.preheader178:                                    ; preds = %.preheader178.prol.loopexit, %.preheader178
  %.1111 = phi i32 [ %i.az, %.preheader178 ], [ %.1111.unr, %.preheader178.prol.loopexit ] ; 2 uses
  %.1106 = phi i32 [ %i.ba, %.preheader178 ], [ %.1106.unr, %.preheader178.prol.loopexit ]
  %i.ao = zext i32 %.1111 to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ao
  store i16 %.0121153, ptr %i.ap, align 2, !tbaa !42
  %i.aq = add i32 %.1111, %i.g                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ar
  store i16 %.0121153, ptr %i.as, align 2, !tbaa !42
  %i.at = add i32 %i.aq, %i.g                     ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.au
  store i16 %.0121153, ptr %i.av, align 2, !tbaa !42
  %i.aw = add i32 %i.at, %i.g                     ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ax
  store i16 %.0121153, ptr %i.ay, align 2, !tbaa !42
  %i.az = add i32 %i.aw, %i.g
  %i.ba = add i32 %.1106, -4                      ; 2 uses
  %.not140.3 = icmp eq i32 %i.ba, 0
  br i1 %.not140.3, label %.loopexit143, label %.preheader178, !llvm.loop !59

.loopexit143:                                     ; preds = %.preheader178.prol.loopexit, %.preheader178, %bb.b
  %.2 = phi i32 [ %.199154, %bb.b ], [ %i.ai, %.preheader178 ], [ %i.ai, %.preheader178.prol.loopexit ] ; 6 uses
  %i.bb = add nuw nsw i16 %.0121153, 1            ; 2 uses
  %i.bc = icmp samesign ult i16 %i.bb, %i.d
  br i1 %i.bc, label %bb.b, label %bb.e

bb.e:                                             ; preds = %.loopexit143
  %i.bd = lshr i32 %.0157, 1
  %i.be = add nuw nsw i8 %.0100155, 1             ; 2 uses
  %i.bf = zext nneg i8 %i.be to i32
  %.not.not = icmp samesign ult i8 %.0100155, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %.preheader144, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp eq i32 %.2, %i.a
  br i1 %i.bg, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = and i32 %.2, 65535                      ; 2 uses
  %i.bi = icmp samesign ugt i32 %i.a, %i.bh
  br i1 %i.bi, label %.preheader142.preheader, label %.preheader141.preheader

.preheader142.preheader:                          ; preds = %bb.g
  %4 = trunc i32 %.2 to i16
  %xtraiter224 = and i32 %1, 3                    ; 3 uses
  %unroll_iter230 = and i32 %1, 12
  %lcmp.mod226.not = icmp eq i32 %xtraiter224, 0
  %lcmp.mod229 = icmp ne i32 %xtraiter224, 0
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.preheader, %.epilog-lcssa227
  %i.bj = phi i32 [ %6, %.epilog-lcssa227 ], [ %i.bh, %.preheader142.preheader ]
  %.1122158 = phi i16 [ %5, %.epilog-lcssa227 ], [ %4, %.preheader142.preheader ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader142
  %.2112 = phi i32 [ 0, %.preheader142 ], [ %i.bw, %bb.h ]
  %.1103 = phi i32 [ %i.bj, %.preheader142 ], [ %i.bx, %bb.h ] ; 5 uses
  %niter231 = phi i32 [ 0, %.preheader142 ], [ %niter231.next.3, %bb.h ]
  %i.bk = shl i32 %.2112, 3
  %i.bl = shl nsw i32 %.1103, 2
  %i.bm = and i32 %i.bl, 4
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = and i32 %.1103, 2
  %i.bp = or disjoint i32 %i.bo, %i.bn
  %i.bq = lshr i32 %.1103, 2
  %i.br = and i32 %i.bq, 1
  %i.bs = or disjoint i32 %i.br, %i.bp
  %i.bt = lshr i32 %.1103, 3
  %i.bu = shl i32 %i.bs, 1
  %i.bv = and i32 %i.bt, 1
  %i.bw = or disjoint i32 %i.bv, %i.bu            ; 3 uses
  %i.bx = lshr i32 %.1103, 4                      ; 2 uses
  %niter231.next.3 = add nuw nsw i32 %niter231, 4 ; 2 uses
  %niter231.ncmp.3 = icmp eq i32 %niter231.next.3, %unroll_iter230
  br i1 %niter231.ncmp.3, label %.unr-lcssa222, label %bb.h

.unr-lcssa222:                                    ; preds = %bb.h
  br i1 %lcmp.mod226.not, label %.epilog-lcssa227, label %.epil.preheader223

.epil.preheader223:                               ; preds = %.unr-lcssa222
  tail call void @llvm.assume(i1 %lcmp.mod229)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader223
  %.2112.epil = phi i32 [ %i.ca, %bb.i ], [ %i.bw, %.epil.preheader223 ]
  %.1103.epil = phi i32 [ %i.cb, %bb.i ], [ %i.bx, %.epil.preheader223 ] ; 2 uses
  %epil.iter225 = phi i32 [ %epil.iter225.next, %bb.i ], [ 0, %.epil.preheader223 ]
  %i.by = shl i32 %.2112.epil, 1
  %i.bz = and i32 %.1103.epil, 1
  %i.ca = or disjoint i32 %i.bz, %i.by            ; 2 uses
  %i.cb = lshr i32 %.1103.epil, 1
  %epil.iter225.next = add i32 %epil.iter225, 1   ; 2 uses
  %epil.iter225.cmp.not = icmp eq i32 %epil.iter225.next, %xtraiter224
  br i1 %epil.iter225.cmp.not, label %.epilog-lcssa227, label %bb.i, !llvm.loop !60

.epilog-lcssa227:                                 ; preds = %bb.i, %.unr-lcssa222
  %.lcssa215 = phi i32 [ %i.bw, %.unr-lcssa222 ], [ %i.ca, %bb.i ]
  %i.cc = zext i32 %.lcssa215 to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cc
  store i16 -1, ptr %i.cd, align 2, !tbaa !42
  %5 = add nuw i16 %.1122158, 1                   ; 2 uses
  %6 = zext i16 %5 to i32                         ; 2 uses
  %7 = icmp samesign ugt i32 %i.a, %6
  br i1 %7, label %.preheader142, label %.preheader141.preheader

.preheader141.preheader:                          ; preds = %.epilog-lcssa227, %bb.g
  %i.ce = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cf = shl i32 %.2, 16
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.b, i32 %0)
  %i.ch = trunc nuw nsw i32 %i.cg to i16
  %i.ci = add nuw nsw i32 %1, 1
  %xtraiter234 = and i32 %1, 3                    ; 3 uses
  %unroll_iter239 = and i32 %1, 12
  %lcmp.mod236.not = icmp eq i32 %xtraiter234, 0
  %lcmp.mod238 = icmp ne i32 %xtraiter234, 0
  br label %.preheader141.split.us.preheader

.preheader141.split.us.preheader:                 ; preds = %.split.us, %.preheader141.preheader
  %indvars.iv183 = phi i32 [ %i.ci, %.preheader141.preheader ], [ %indvars.iv.next184, %.split.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader141.preheader ], [ %indvars.iv.next.a, %.split.us ] ; 2 uses
  %.1171 = phi i32 [ 32768, %.preheader141.preheader ], [ %i.ea, %.split.us ] ; 2 uses
  %.3170 = phi i32 [ %i.cf, %.preheader141.preheader ], [ %.5.us, %.split.us ]
  %.0116169 = phi i16 [ %i.ch, %.preheader141.preheader ], [ %.4120.us, %.split.us ]
  br label %.preheader141.split.us

.preheader141.split.us:                           ; preds = %.preheader141.split.us.preheader, %bb.o
  %.4166.us = phi i32 [ %.5.us, %bb.o ], [ %.3170, %.preheader141.split.us.preheader ] ; 5 uses
  %.1117165.us = phi i16 [ %.4120.us, %bb.o ], [ %.0116169, %.preheader141.split.us.preheader ] ; 2 uses
  %.2123164.us = phi i16 [ %i.dv, %bb.o ], [ 0, %.preheader141.split.us.preheader ] ; 3 uses
  %i.cj = zext nneg i16 %.2123164.us to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !35
  %i.cm = zext i8 %i.cl to i32
  %.not133.us = icmp eq i32 %indvars.iv183, %i.cm
  br i1 %.not133.us, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.preheader141.split.us
  %.not134.us = icmp ult i32 %.4166.us, %i.ce
  br i1 %.not134.us, label %.new232, label %.loopexit

.new232:                                          ; preds = %bb.j
  %i.cn = lshr i32 %.4166.us, 16
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.new232
  %.3113.us = phi i32 [ 0, %.new232 ], [ %i.da, %bb.k ]
  %.2104.us = phi i32 [ %i.cn, %.new232 ], [ %i.db, %bb.k ] ; 5 uses
  %niter240 = phi i32 [ 0, %.new232 ], [ %niter240.next.3, %bb.k ]
  %i.co = shl i32 %.3113.us, 3
  %i.cp = shl nsw i32 %.2104.us, 2
  %i.cq = and i32 %i.cp, 4
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = and i32 %.2104.us, 2
  %i.ct = or disjoint i32 %i.cs, %i.cr
  %i.cu = lshr i32 %.2104.us, 2
  %i.cv = and i32 %i.cu, 1
  %i.cw = or disjoint i32 %i.cv, %i.ct
  %i.cx = lshr i32 %.2104.us, 3
  %i.cy = shl i32 %i.cw, 1
  %i.cz = and i32 %i.cx, 1
  %i.da = or disjoint i32 %i.cz, %i.cy            ; 3 uses
  %i.db = lshr i32 %.2104.us, 4                   ; 2 uses
  %niter240.next.3 = add nuw nsw i32 %niter240, 4 ; 2 uses
  %niter240.ncmp.3 = icmp eq i32 %niter240.next.3, %unroll_iter239
  br i1 %niter240.ncmp.3, label %.preheader.us.preheader.unr-lcssa, label %bb.k

.preheader.us.preheader.unr-lcssa:                ; preds = %bb.k
  br i1 %lcmp.mod236.not, label %.preheader.us.preheader, label %.epil.preheader233

.epil.preheader233:                               ; preds = %.preheader.us.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod238)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader233
  %.3113.us.epil = phi i32 [ %i.da, %.epil.preheader233 ], [ %i.de, %bb.l ]
  %.2104.us.epil = phi i32 [ %i.db, %.epil.preheader233 ], [ %i.df, %bb.l ] ; 2 uses
  %epil.iter235 = phi i32 [ 0, %.epil.preheader233 ], [ %epil.iter235.next, %bb.l ]
  %i.dc = shl i32 %.3113.us.epil, 1
  %i.dd = and i32 %.2104.us.epil, 1
  %i.de = or disjoint i32 %i.dd, %i.dc            ; 2 uses
  %i.df = lshr i32 %.2104.us.epil, 1
  %epil.iter235.next = add i32 %epil.iter235, 1   ; 2 uses
  %epil.iter235.cmp.not = icmp eq i32 %epil.iter235.next, %xtraiter234
  br i1 %epil.iter235.cmp.not, label %.preheader.us.preheader, label %bb.l, !llvm.loop !61

.preheader.us.preheader:                          ; preds = %bb.l, %.preheader.us.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.da, %.preheader.us.preheader.unr-lcssa ], [ %i.de, %bb.l ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.n
  %.4109161.us = phi i32 [ %i.du, %bb.n ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.4114160.us = phi i32 [ %spec.select.us, %bb.n ], [ %.lcssa, %.preheader.us.preheader ]
  %.2118159.us = phi i16 [ %.3119.us, %bb.n ], [ %.1117165.us, %.preheader.us.preheader ] ; 5 uses
  %i.dg = zext i32 %.4114160.us to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !42 ; 2 uses
  %i.dj = icmp eq i16 %i.di, -1
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.preheader.us
  %i.dk = zext i16 %.2118159.us to i64
  %.idx.us = shl nuw nsw i64 %i.dk, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.us ; 2 uses
  store i16 -1, ptr %i.dl, align 2, !tbaa !42
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i16 -1, ptr %i.dm, align 2, !tbaa !42
  %i.dn = add i16 %.2118159.us, 1
  store i16 %.2118159.us, ptr %i.dh, align 2, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader.us
  %i.do = phi i16 [ %.2118159.us, %bb.m ], [ %i.di, %.preheader.us ]
  %.3119.us = phi i16 [ %i.dn, %bb.m ], [ %.2118159.us, %.preheader.us ] ; 2 uses
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = sub nuw nsw i32 15, %.4109161.us
  %i.ds = lshr i32 %.4166.us, %i.dr
  %i.dt = and i32 %i.ds, 1
  %spec.select.us = or disjoint i32 %i.dq, %i.dt  ; 2 uses
  %i.du = add nuw nsw i32 %.4109161.us, 1         ; 2 uses
  %exitcond.not.a = icmp eq i32 %i.du, %indvars.iv
  br i1 %exitcond.not.a, label %._crit_edge162.us, label %.preheader.us

bb.o:                                             ; preds = %._crit_edge162.us, %.preheader141.split.us
  %.4120.us = phi i16 [ %.1117165.us, %.preheader141.split.us ], [ %.3119.us, %._crit_edge162.us ] ; 2 uses
  %.5.us = phi i32 [ %.4166.us, %.preheader141.split.us ], [ %i.dz, %._crit_edge162.us ] ; 3 uses
  %i.dv = add nuw nsw i16 %.2123164.us, 1         ; 2 uses
  %i.dw = icmp samesign ult i16 %i.dv, %i.d
  br i1 %i.dw, label %.preheader141.split.us, label %.split.us

._crit_edge162.us:                                ; preds = %bb.n
  %i.dx = zext nneg i32 %spec.select.us to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dx
  store i16 %.2123164.us, ptr %i.dy, align 2, !tbaa !42
  %i.dz = add i32 %.4166.us, %.1171
  br label %bb.o

.split.us:                                        ; preds = %bb.o
  %i.ea = lshr i32 %.1171, 1
  %indvars.iv.next184 = add nuw nsw i32 %indvars.iv183, 1 ; 2 uses
  %indvars.iv.next.a = add nuw nsw i32 %indvars.iv, 1
  %exitcond186.not = icmp eq i32 %indvars.iv.next184, 17
  br i1 %exitcond186.not, label %._crit_edge173, label %.preheader141.split.us.preheader

._crit_edge173:                                   ; preds = %.split.us
  %i.eb = icmp ne i32 %.5.us, %i.ce
  %i.ec = zext i1 %i.eb to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.epilog-lcssa, %bb.j, %bb.f, %._crit_edge173
  %.0124 = phi i32 [ %i.ec, %._crit_edge173 ], [ 1, %bb.j ], [ 0, %bb.f ], [ 1, %.epilog-lcssa ]
  ret i32 %.0124
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 56}
!9 = !{!"mspack_system", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !15, i64 56}
!12 = !{!"mszipd_stream", !13, i64 0, !14, i64 8, !14, i64 16, !5, i64 24, !10, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !6, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !6, i64 112, !6, i64 400, !6, i64 432, !6, i64 2736, !6, i64 2992}
!13 = !{!"p1 _ZTS13mspack_system", !10, i64 0}
!14 = !{!"p1 _ZTS11mspack_file", !10, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!9, !10, i64 64}
!17 = !{!12, !13, i64 0}
!18 = !{!12, !14, i64 8}
!19 = !{!12, !14, i64 16}
!20 = !{!12, !5, i64 108}
!21 = !{!12, !6, i64 96}
!22 = !{!12, !5, i64 40}
!23 = !{!12, !5, i64 44}
!24 = !{!12, !10, i64 32}
!25 = !{!12, !15, i64 72}
!26 = !{!12, !15, i64 64}
!27 = !{!12, !5, i64 100}
!28 = !{!12, !5, i64 104}
!29 = !{!12, !5, i64 48}
!30 = !{!12, !15, i64 88}
!31 = !{!12, !15, i64 80}
!32 = !{!9, !10, i64 24}
!33 = !{!9, !10, i64 16}
!34 = distinct !{null}
!35 = !{!6, !6, i64 0}
!36 = !{!12, !5, i64 24}
!37 = !{!9, !10, i64 48}
!38 = !{!9, !10, i64 72}
!39 = distinct !{null, null}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !6, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 8, i32 24}
!48 = distinct !{!48, !45, !46}
!49 = distinct !{!49, !41}
!50 = distinct !{!50, !45}
!51 = distinct !{null}
!52 = distinct !{!52, !45, !46}
!53 = !{!"branch_weights", i32 4, i32 28}
!54 = distinct !{!54, !45, !46}
!55 = distinct !{!55, !41}
!56 = distinct !{!56, !45}
!57 = distinct !{!57, !41}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !45}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
end_hunk_0
