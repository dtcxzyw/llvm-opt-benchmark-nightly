Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_mspack?download=true
inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 49
begin_hunk_0_@qtm_update_model:bb.a
  br i1 %i.dc, label %.lr.ph65, label %.loopexit55, !llvm.loop !263

.lr.ph69.new:                                     ; preds = %.prol.loopexit113, %.lr.ph69.new
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.3, %.lr.ph69.new ], [ %indvars.iv84.unr, %.prol.loopexit113 ] ; 5 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv84 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %i.df = load i16, ptr %i.de, align 2, !tbaa !209
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !209
  %i.di = add i16 %i.dh, %i.df
  store i16 %i.di, ptr %i.dg, align 2, !tbaa !209
  %i.dj = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv84 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 2
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !209
  %i.dm = getelementptr i8, ptr %i.dj, i64 -2     ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !209
  %i.do = add i16 %i.dn, %i.dl
  store i16 %i.do, ptr %i.dm, align 2, !tbaa !209
  %i.dp = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv84 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -2
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !209
  %i.ds = getelementptr i8, ptr %i.dp, i64 -6     ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !209
  %i.du = add i16 %i.dt, %i.dr
  store i16 %i.du, ptr %i.ds, align 2, !tbaa !209
  %indvars.iv.next85.2 = add nsw i64 %indvars.iv84, -3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next85.2 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 6
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !209
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !209
  %i.ea = add i16 %i.dz, %i.dx
  store i16 %i.ea, ptr %i.dy, align 2, !tbaa !209
  %indvars.iv.next85.3 = add nsw i64 %indvars.iv84, -4
  %.not101.3 = icmp eq i64 %indvars.iv.next85.2, 0
  br i1 %.not101.3, label %.loopexit, label %.lr.ph69.new, !llvm.loop !264

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph.new, %.prol.loopexit113, %.lr.ph69.new, %bb.c, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @qtm_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  tail call void @free(ptr noundef %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188
  tail call void @free(ptr noundef %i.d) #11
  tail call void @free(ptr noundef nonnull %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @cli_readn(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @mszip_make_decode_table(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 6, 10) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = shl nuw nsw i32 1, %1                    ; 5 uses
  %i.b = lshr exact i32 %i.a, 1                   ; 2 uses
  %i.c = trunc nuw nsw i32 %1 to i8
  %i.d = trunc nuw nsw i32 %0 to i16              ; 2 uses
  br label %.preheader141

.preheader141:                                    ; preds = %bb.a, %bb.e
  %indvar = phi i32 [ 0, %bb.a ], [ %indvar.next, %bb.e ] ; 3 uses
  %i.e = phi i32 [ 1, %bb.a ], [ %i.bf, %bb.e ]
  %.0154 = phi i32 [ %i.b, %bb.a ], [ %i.bd, %bb.e ] ; 6 uses
  %.096153 = phi i32 [ 0, %bb.a ], [ %.2, %bb.e ]
  %.098152 = phi i8 [ 1, %bb.a ], [ %i.be, %bb.e ] ; 4 uses
  %i.f = add i32 %indvar, 1                       ; 2 uses
  %i.g = shl nuw nsw i32 1, %i.e                  ; 5 uses
  %i.h = zext nneg i8 %.098152 to i32
  %i.i = sub nuw nsw i32 %1, %i.h
  %i.j = add nsw i32 %.0154, -1
  %xtraiter = and i32 %i.f, 3                     ; 3 uses
  %i.k = icmp ult i32 %indvar, 3
  %unroll_iter = and i32 %i.f, -4
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod222 = icmp ne i32 %xtraiter, 0
  %xtraiter223 = and i32 %.0154, 3                ; 2 uses
  %lcmp.mod224.not = icmp eq i32 %xtraiter223, 0
  %i.l = icmp ult i32 %i.j, 3
  br label %bb.b

bb.b:                                             ; preds = %.preheader141, %.loopexit140
  %.197151 = phi i32 [ %.096153, %.preheader141 ], [ %.2, %.loopexit140 ] ; 3 uses
  %.0105150 = phi i16 [ 0, %.preheader141 ], [ %i.bb, %.loopexit140 ] ; 7 uses
  %i.m = zext nneg i16 %.0105150 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !31
  %.not135 = icmp eq i8 %i.o, %.098152
  br i1 %.not135, label %bb.c, label %.loopexit140

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i32 %.197151, %i.i                  ; 2 uses
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c, %.new
  %.0116 = phi i32 [ %i.ac, %.new ], [ 0, %bb.c ]
  %.0113 = phi i32 [ %i.ad, %.new ], [ %i.p, %bb.c ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %.new ], [ 0, %bb.c ]
  %i.q = shl i32 %.0116, 3
  %i.r = shl i32 %.0113, 2
  %i.s = and i32 %i.r, 4
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = and i32 %.0113, 2
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = lshr i32 %.0113, 2
  %i.x = and i32 %i.w, 1
  %i.y = or disjoint i32 %i.x, %i.v
  %i.z = lshr i32 %.0113, 3
  %i.aa = shl i32 %i.y, 1
  %i.ab = and i32 %i.z, 1
  %i.ac = or disjoint i32 %i.ab, %i.aa            ; 3 uses
  %i.ad = lshr i32 %.0113, 4                      ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.new, !llvm.loop !265

.unr-lcssa:                                       ; preds = %.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.c
  %.0116.epil.init = phi i32 [ 0, %bb.c ], [ %i.ac, %.unr-lcssa ]
  %.0113.epil.init = phi i32 [ %i.p, %bb.c ], [ %i.ad, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod222)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.0116.epil = phi i32 [ %.0116.epil.init, %.epil.preheader ], [ %i.ag, %bb.d ]
  %.0113.epil = phi i32 [ %.0113.epil.init, %.epil.preheader ], [ %i.ah, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = shl i32 %.0116.epil, 1
  %i.af = and i32 %.0113.epil, 1
  %i.ag = or disjoint i32 %i.af, %i.ae            ; 2 uses
  %i.ah = lshr i32 %.0113.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.d, !llvm.loop !266

.epilog-lcssa:                                    ; preds = %bb.d, %.unr-lcssa
  %.lcssa220 = phi i32 [ %i.ac, %.unr-lcssa ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ai = add i32 %.197151, %.0154                ; 3 uses
  %i.aj = icmp ugt i32 %i.ai, %i.a
  br i1 %i.aj, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.epilog-lcssa
  br i1 %lcmp.mod224.not, label %.preheader175.prol.loopexit, label %.preheader175.prol

.preheader175.prol:                               ; preds = %iter.check, %.preheader175.prol
  %.1117.prol = phi i32 [ %i.am, %.preheader175.prol ], [ %.lcssa220, %iter.check ] ; 2 uses
  %.1109.prol = phi i32 [ %i.an, %.preheader175.prol ], [ %.0154, %iter.check ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader175.prol ], [ 0, %iter.check ]
  %i.ak = zext i32 %.1117.prol to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ak
  store i16 %.0105150, ptr %i.al, align 2, !tbaa !50
  %i.am = add i32 %.1117.prol, %i.g               ; 2 uses
  %i.an = add i32 %.1109.prol, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter223
  br i1 %prol.iter.cmp.not, label %.preheader175.prol.loopexit, label %.preheader175.prol, !llvm.loop !267

.preheader175.prol.loopexit:                      ; preds = %.preheader175.prol, %iter.check
  %.1117.unr = phi i32 [ %.lcssa220, %iter.check ], [ %i.am, %.preheader175.prol ]
  %.1109.unr = phi i32 [ %.0154, %iter.check ], [ %i.an, %.preheader175.prol ]
  br i1 %i.l, label %.loopexit140, label %.preheader175

.preheader175:                                    ; preds = %.preheader175.prol.loopexit, %.preheader175
  %.1117 = phi i32 [ %i.az, %.preheader175 ], [ %.1117.unr, %.preheader175.prol.loopexit ] ; 2 uses
  %.1109 = phi i32 [ %i.ba, %.preheader175 ], [ %.1109.unr, %.preheader175.prol.loopexit ]
  %i.ao = zext i32 %.1117 to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ao
  store i16 %.0105150, ptr %i.ap, align 2, !tbaa !50
  %i.aq = add i32 %.1117, %i.g                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ar
  store i16 %.0105150, ptr %i.as, align 2, !tbaa !50
  %i.at = add i32 %i.aq, %i.g                     ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.au
  store i16 %.0105150, ptr %i.av, align 2, !tbaa !50
  %i.aw = add i32 %i.at, %i.g                     ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ax
  store i16 %.0105150, ptr %i.ay, align 2, !tbaa !50
  %i.az = add i32 %i.aw, %i.g
  %i.ba = add i32 %.1109, -4                      ; 2 uses
  %.not137.3 = icmp eq i32 %i.ba, 0
  br i1 %.not137.3, label %.loopexit140, label %.preheader175, !llvm.loop !268

.loopexit140:                                     ; preds = %.preheader175.prol.loopexit, %.preheader175, %bb.b
  %.2 = phi i32 [ %.197151, %bb.b ], [ %i.ai, %.preheader175 ], [ %i.ai, %.preheader175.prol.loopexit ] ; 6 uses
  %i.bb = add nuw nsw i16 %.0105150, 1            ; 2 uses
  %i.bc = icmp samesign ult i16 %i.bb, %i.d
  br i1 %i.bc, label %bb.b, label %bb.e, !llvm.loop !269

bb.e:                                             ; preds = %.loopexit140
  %i.bd = lshr i32 %.0154, 1
  %i.be = add nuw nsw i8 %.098152, 1              ; 2 uses
  %i.bf = zext nneg i8 %i.be to i32
  %.not.not = icmp samesign ult i8 %.098152, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %.not.not, label %.preheader141, label %bb.f, !llvm.loop !270

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp eq i32 %.2, %i.a
  br i1 %i.bg, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = and i32 %.2, 65535                      ; 2 uses
  %i.bi = icmp samesign ugt i32 %i.a, %i.bh
  br i1 %i.bi, label %.preheader139.preheader, label %.preheader138.preheader

.preheader139.preheader:                          ; preds = %bb.g
  %4 = trunc i32 %.2 to i16
  %xtraiter227 = and i32 %1, 3                    ; 3 uses
  %unroll_iter233 = and i32 %1, 12
  %lcmp.mod229.not = icmp eq i32 %xtraiter227, 0
  %lcmp.mod232 = icmp ne i32 %xtraiter227, 0
  br label %.preheader139

.preheader139:                                    ; preds = %.preheader139.preheader, %.epilog-lcssa230
  %i.bj = phi i32 [ %6, %.epilog-lcssa230 ], [ %i.bh, %.preheader139.preheader ]
  %.1106155 = phi i16 [ %5, %.epilog-lcssa230 ], [ %4, %.preheader139.preheader ]
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader139
  %.2118 = phi i32 [ 0, %.preheader139 ], [ %i.bw, %bb.h ]
  %.1114 = phi i32 [ %i.bj, %.preheader139 ], [ %i.bx, %bb.h ] ; 5 uses
  %niter234 = phi i32 [ 0, %.preheader139 ], [ %niter234.next.3, %bb.h ]
  %i.bk = shl i32 %.2118, 3
  %i.bl = shl nsw i32 %.1114, 2
  %i.bm = and i32 %i.bl, 4
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = and i32 %.1114, 2
  %i.bp = or disjoint i32 %i.bo, %i.bn
  %i.bq = lshr i32 %.1114, 2
  %i.br = and i32 %i.bq, 1
  %i.bs = or disjoint i32 %i.br, %i.bp
  %i.bt = lshr i32 %.1114, 3
  %i.bu = shl i32 %i.bs, 1
  %i.bv = and i32 %i.bt, 1
  %i.bw = or disjoint i32 %i.bv, %i.bu            ; 3 uses
  %i.bx = lshr i32 %.1114, 4                      ; 2 uses
  %niter234.next.3 = add nuw nsw i32 %niter234, 4 ; 2 uses
  %niter234.ncmp.3 = icmp eq i32 %niter234.next.3, %unroll_iter233
  br i1 %niter234.ncmp.3, label %.unr-lcssa225, label %bb.h, !llvm.loop !271

.unr-lcssa225:                                    ; preds = %bb.h
  br i1 %lcmp.mod229.not, label %.epilog-lcssa230, label %.epil.preheader226

.epil.preheader226:                               ; preds = %.unr-lcssa225
  tail call void @llvm.assume(i1 %lcmp.mod232)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader226
  %.2118.epil = phi i32 [ %i.ca, %bb.i ], [ %i.bw, %.epil.preheader226 ]
  %.1114.epil = phi i32 [ %i.cb, %bb.i ], [ %i.bx, %.epil.preheader226 ] ; 2 uses
  %epil.iter228 = phi i32 [ %epil.iter228.next, %bb.i ], [ 0, %.epil.preheader226 ]
  %i.by = shl i32 %.2118.epil, 1
  %i.bz = and i32 %.1114.epil, 1
  %i.ca = or disjoint i32 %i.bz, %i.by            ; 2 uses
  %i.cb = lshr i32 %.1114.epil, 1
  %epil.iter228.next = add i32 %epil.iter228, 1   ; 2 uses
  %epil.iter228.cmp.not = icmp eq i32 %epil.iter228.next, %xtraiter227
  br i1 %epil.iter228.cmp.not, label %.epilog-lcssa230, label %bb.i, !llvm.loop !272

.epilog-lcssa230:                                 ; preds = %bb.i, %.unr-lcssa225
  %.lcssa218 = phi i32 [ %i.bw, %.unr-lcssa225 ], [ %i.ca, %bb.i ]
  %i.cc = zext i32 %.lcssa218 to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cc
  store i16 -1, ptr %i.cd, align 2, !tbaa !50
  %5 = add nuw i16 %.1106155, 1                   ; 2 uses
  %6 = zext i16 %5 to i32                         ; 2 uses
  %7 = icmp samesign ugt i32 %i.a, %6
  br i1 %7, label %.preheader139, label %.preheader138.preheader, !llvm.loop !273

.preheader138.preheader:                          ; preds = %.epilog-lcssa230, %bb.g
  %i.ce = shl nuw nsw i32 65536, %1               ; 2 uses
  %i.cf = shl i32 %.2, 16
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.b, i32 %0)
  %i.ch = trunc nuw nsw i32 %i.cg to i16
  %i.ci = add nuw nsw i32 %1, 1
  %xtraiter237 = and i32 %1, 3                    ; 3 uses
  %unroll_iter242 = and i32 %1, 12
  %lcmp.mod239.not = icmp eq i32 %xtraiter237, 0
  %lcmp.mod241 = icmp ne i32 %xtraiter237, 0
  br label %.preheader138.split.us.preheader

.preheader138.split.us.preheader:                 ; preds = %.split.us, %.preheader138.preheader
  %indvars.iv181 = phi i32 [ %i.ci, %.preheader138.preheader ], [ %indvars.iv.next182, %.split.us ] ; 2 uses
  %indvars.iv = phi i32 [ 1, %.preheader138.preheader ], [ %indvars.iv.next.a, %.split.us ] ; 2 uses
  %.1168 = phi i32 [ 32768, %.preheader138.preheader ], [ %i.ec, %.split.us ] ; 2 uses
  %.3167 = phi i32 [ %i.cf, %.preheader138.preheader ], [ %.5.us, %.split.us ]
  %.0100166 = phi i16 [ %i.ch, %.preheader138.preheader ], [ %.4104.us, %.split.us ]
  br label %.preheader138.split.us

.preheader138.split.us:                           ; preds = %.preheader138.split.us.preheader, %bb.n
  %.4163.us = phi i32 [ %.5.us, %bb.n ], [ %.3167, %.preheader138.split.us.preheader ] ; 4 uses
  %.1101162.us = phi i16 [ %.4104.us, %bb.n ], [ %.0100166, %.preheader138.split.us.preheader ] ; 2 uses
  %.2107161.us = phi i16 [ %i.dw, %bb.n ], [ 0, %.preheader138.split.us.preheader ] ; 3 uses
  %i.cj = zext nneg i16 %.2107161.us to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !31
  %i.cm = zext i8 %i.cl to i32
  %.not132.us = icmp eq i32 %indvars.iv181, %i.cm
  br i1 %.not132.us, label %.new235, label %bb.n

.new235:                                          ; preds = %.preheader138.split.us
  %i.cn = lshr i32 %.4163.us, 16
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new235
  %.3119.us = phi i32 [ 0, %.new235 ], [ %i.da, %bb.j ]
  %.2115.us = phi i32 [ %i.cn, %.new235 ], [ %i.db, %bb.j ] ; 5 uses
  %niter243 = phi i32 [ 0, %.new235 ], [ %niter243.next.3, %bb.j ]
  %i.co = shl i32 %.3119.us, 3
  %i.cp = shl nsw i32 %.2115.us, 2
  %i.cq = and i32 %i.cp, 4
  %i.cr = or disjoint i32 %i.co, %i.cq
  %i.cs = and i32 %.2115.us, 2
  %i.ct = or disjoint i32 %i.cs, %i.cr
  %i.cu = lshr i32 %.2115.us, 2
  %i.cv = and i32 %i.cu, 1
  %i.cw = or disjoint i32 %i.cv, %i.ct
  %i.cx = lshr i32 %.2115.us, 3
  %i.cy = shl i32 %i.cw, 1
  %i.cz = and i32 %i.cx, 1
  %i.da = or disjoint i32 %i.cz, %i.cy            ; 3 uses
  %i.db = lshr i32 %.2115.us, 4                   ; 2 uses
  %niter243.next.3 = add nuw nsw i32 %niter243, 4 ; 2 uses
  %niter243.ncmp.3 = icmp eq i32 %niter243.next.3, %unroll_iter242
  br i1 %niter243.ncmp.3, label %.preheader.us.preheader.unr-lcssa, label %bb.j, !llvm.loop !274

.preheader.us.preheader.unr-lcssa:                ; preds = %bb.j
  br i1 %lcmp.mod239.not, label %.preheader.us.preheader, label %.epil.preheader236

.epil.preheader236:                               ; preds = %.preheader.us.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod241)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader236
  %.3119.us.epil = phi i32 [ %i.da, %.epil.preheader236 ], [ %i.de, %bb.k ]
  %.2115.us.epil = phi i32 [ %i.db, %.epil.preheader236 ], [ %i.df, %bb.k ] ; 2 uses
  %epil.iter238 = phi i32 [ 0, %.epil.preheader236 ], [ %epil.iter238.next, %bb.k ]
  %i.dc = shl i32 %.3119.us.epil, 1
  %i.dd = and i32 %.2115.us.epil, 1
  %i.de = or disjoint i32 %i.dd, %i.dc            ; 2 uses
  %i.df = lshr i32 %.2115.us.epil, 1
  %epil.iter238.next = add i32 %epil.iter238, 1   ; 2 uses
  %epil.iter238.cmp.not = icmp eq i32 %epil.iter238.next, %xtraiter237
  br i1 %epil.iter238.cmp.not, label %.preheader.us.preheader, label %bb.k, !llvm.loop !275

.preheader.us.preheader:                          ; preds = %bb.k, %.preheader.us.preheader.unr-lcssa
  %.lcssa = phi i32 [ %i.da, %.preheader.us.preheader.unr-lcssa ], [ %i.de, %bb.k ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.m
  %.2102158.us = phi i16 [ %.3103.us, %bb.m ], [ %.1101162.us, %.preheader.us.preheader ] ; 5 uses
  %.4112157.us = phi i32 [ %i.dv, %bb.m ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.4120156.us = phi i32 [ %i.du, %bb.m ], [ %.lcssa, %.preheader.us.preheader ]
  %i.dg = zext i32 %.4120156.us to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !50 ; 2 uses
  %i.dj = icmp eq i16 %i.di, -1
  br i1 %i.dj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.us
  %i.dk = zext i16 %.2102158.us to i64
  %.idx.us = shl nuw nsw i64 %i.dk, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.us ; 2 uses
  store i16 -1, ptr %i.dl, align 2, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i16 -1, ptr %i.dm, align 2, !tbaa !50
  %i.dn = add i16 %.2102158.us, 1
  store i16 %.2102158.us, ptr %i.dh, align 2, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader.us
  %i.do = phi i16 [ %.2102158.us, %bb.l ], [ %i.di, %.preheader.us ]
  %.3103.us = phi i16 [ %i.dn, %bb.l ], [ %.2102158.us, %.preheader.us ] ; 2 uses
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = sub nuw nsw i32 15, %.4112157.us
  %i.ds = lshr i32 %.4163.us, %i.dr
  %i.dt = and i32 %i.ds, 1
  %i.du = or disjoint i32 %i.dq, %i.dt            ; 2 uses
  %i.dv = add nuw nsw i32 %.4112157.us, 1         ; 2 uses
  %exitcond.not.a = icmp eq i32 %i.dv, %indvars.iv
  br i1 %exitcond.not.a, label %._crit_edge159.us, label %.preheader.us, !llvm.loop !276

bb.n:                                             ; preds = %._crit_edge159.us, %.preheader138.split.us
  %.4104.us = phi i16 [ %.1101162.us, %.preheader138.split.us ], [ %.3103.us, %._crit_edge159.us ] ; 2 uses
  %.5.us = phi i32 [ %.4163.us, %.preheader138.split.us ], [ %i.ea, %._crit_edge159.us ] ; 3 uses
  %i.dw = add nuw nsw i16 %.2107161.us, 1         ; 2 uses
  %i.dx = icmp samesign ult i16 %i.dw, %i.d
  br i1 %i.dx, label %.preheader138.split.us, label %.split.us, !llvm.loop !277

._crit_edge159.us:                                ; preds = %bb.m
  %i.dy = zext nneg i32 %i.du to i64
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.dy
  store i16 %.2107161.us, ptr %i.dz, align 2, !tbaa !50
  %i.ea = add i32 %.4163.us, %.1168               ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, %i.ce
  br i1 %i.eb, label %.loopexit, label %bb.n

.split.us:                                        ; preds = %bb.n
  %i.ec = lshr i32 %.1168, 1
  %indvars.iv.next182 = add nuw nsw i32 %indvars.iv181, 1 ; 2 uses
  %indvars.iv.next.a = add nuw nsw i32 %indvars.iv, 1
  %exitcond184.not = icmp eq i32 %indvars.iv.next182, 17
  br i1 %exitcond184.not, label %._crit_edge170, label %.preheader138.split.us.preheader, !llvm.loop !278

._crit_edge170:                                   ; preds = %.split.us
  %.not131 = icmp ne i32 %.5.us, %i.ce
  %i.ed = zext i1 %.not131 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.epilog-lcssa, %._crit_edge159.us, %bb.f, %._crit_edge170
  %.0121 = phi i32 [ %i.ed, %._crit_edge170 ], [ 1, %._crit_edge159.us ], [ 0, %bb.f ], [ 1, %.epilog-lcssa ]
  ret i32 %.0121
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 40}
end_hunk_0
begin_hunk_1_@llvm.assume
!68 = distinct !{!68, !33, !56, !57}
!69 = !{!"branch_weights", i32 4, i32 28}
!70 = distinct !{!70, !33, !56, !57}
!71 = distinct !{!71, !45}
!72 = distinct !{!72, !33, !56}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33}
!75 = distinct !{!75, !33}
!76 = !{!77, !11, i64 32}
!77 = !{!"lzx_stream", !5, i64 0, !5, i64 4, !6, i64 8, !78, i64 16, !78, i64 24, !11, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !5, i64 144, !5, i64 148, !5, i64 152, !6, i64 156, !6, i64 240, !6, i64 960, !6, i64 1274, !6, i64 1346, !6, i64 1554, !6, i64 12370, !6, i64 21562, !6, i64 21852, !6, i64 22056, !6, i64 22107, !12, i64 54880, !10, i64 54888}
!78 = !{!"long", !6, i64 0}
!79 = !{!77, !11, i64 104}
!80 = !{!77, !5, i64 0}
!81 = !{!77, !5, i64 4}
!82 = !{!77, !6, i64 8}
!83 = !{!77, !78, i64 16}
!84 = !{!77, !78, i64 24}
!85 = !{!77, !12, i64 54880}
!86 = !{!77, !10, i64 54888}
!87 = !{!77, !5, i64 152}
!88 = !{!77, !5, i64 40}
!89 = !{!77, !5, i64 44}
!90 = !{!77, !5, i64 48}
!91 = !{!77, !5, i64 52}
!92 = !{!77, !5, i64 56}
!93 = !{!77, !5, i64 80}
!94 = !{!77, !5, i64 84}
!95 = !{!77, !6, i64 91}
!96 = !{!77, !6, i64 88}
!97 = !{!77, !6, i64 92}
!98 = !{!77, !5, i64 96}
!99 = !{!77, !11, i64 120}
!100 = !{!77, !11, i64 112}
!101 = !{!77, !11, i64 136}
!102 = !{!77, !11, i64 128}
!103 = !{!77, !5, i64 148}
!104 = !{!77, !5, i64 144}
!105 = !{!77, !5, i64 60}
!106 = !{!77, !5, i64 64}
!107 = !{!77, !5, i64 68}
!108 = !{!77, !6, i64 90}
!109 = !{!77, !5, i64 76}
!110 = !{!77, !6, i64 89}
!111 = !{ptr @lzx_read_input}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !33}
!114 = distinct !{!114, !33}
!115 = !{!77, !5, i64 72}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = !{!11, !11, i64 0}
!122 = distinct !{!122, !33}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33, !56, !57}
!127 = distinct !{!127, !33, !56}
!128 = distinct !{!128, !33, !56, !57}
!129 = distinct !{!129, !33, !56, !57}
!130 = distinct !{!130, !33, !56}
!131 = distinct !{!131, !33, !56, !57}
!132 = distinct !{!132, !33, !56}
!133 = distinct !{!133, !33}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33}
!140 = distinct !{!140, !33}
!141 = distinct !{!141, !33, !56, !57}
!142 = distinct !{!142, !33, !56}
!143 = distinct !{!143, !33, !56, !57}
!144 = distinct !{!144, !33, !56, !57}
!145 = distinct !{!145, !33, !56}
!146 = distinct !{!146, !33, !56, !57}
!147 = distinct !{!147, !33, !56}
!148 = distinct !{!148, !33}
!149 = distinct !{!149, !33}
!150 = distinct !{!150, !33}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33, !56, !57}
!155 = !{!"branch_weights", i32 4, i32 12}
!156 = distinct !{!156, !33, !56, !57}
!157 = distinct !{!157, !45}
!158 = distinct !{!158, !33, !56}
!159 = distinct !{!159, !33}
!160 = distinct !{!160, !33, !56, !57}
!161 = distinct !{!161, !33, !56, !57}
!162 = distinct !{!162, !33, !56}
!163 = distinct !{!163, !33}
!164 = distinct !{!164, !33}
!165 = distinct !{!165, !33}
!166 = distinct !{!166, !33}
!167 = distinct !{!167, !33}
!168 = distinct !{!168, !33}
!169 = distinct !{!169, !33}
!170 = distinct !{!170, !33}
!171 = distinct !{!171, !33}
!172 = distinct !{!172, !45}
!173 = distinct !{!173, !33, !56}
!174 = distinct !{!174, !33}
!175 = distinct !{!175, !33, !56, !57}
!176 = distinct !{!176, !45}
!177 = distinct !{!177, !33, !56}
!178 = distinct !{!178, !33}
!179 = distinct !{!179, !33}
!180 = distinct !{!180, !33}
!181 = distinct !{!181, !33}
!182 = distinct !{!182, !33}
!183 = distinct !{!183, !33}
!184 = !{!185, !11, i64 16}
!185 = !{!"qtm_stream", !5, i64 0, !5, i64 4, !6, i64 8, !11, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !51, i64 36, !51, i64 38, !51, i64 40, !6, i64 42, !5, i64 44, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !5, i64 88, !5, i64 92, !6, i64 96, !6, i64 100, !6, i64 268, !6, i64 310, !6, i64 337, !186, i64 368, !186, i64 384, !186, i64 400, !186, i64 416, !186, i64 432, !186, i64 448, !186, i64 464, !186, i64 480, !186, i64 496, !6, i64 512, !6, i64 772, !6, i64 1032, !6, i64 1292, !6, i64 1552, !6, i64 1652, !6, i64 1800, !6, i64 1972, !6, i64 2084, !12, i64 2120, !10, i64 2128}
!186 = !{!"qtm_model", !5, i64 0, !5, i64 4, !187, i64 8}
!187 = !{!"p1 _ZTS12qtm_modelsym", !10, i64 0}
!188 = !{!185, !11, i64 48}
!189 = !{!185, !5, i64 0}
!190 = !{!185, !5, i64 4}
!191 = !{!185, !6, i64 8}
!192 = !{!185, !5, i64 92}
!193 = !{!185, !5, i64 24}
!194 = !{!185, !5, i64 28}
!195 = !{!185, !5, i64 32}
!196 = !{!185, !6, i64 42}
!197 = !{!185, !5, i64 44}
!198 = !{!185, !11, i64 64}
!199 = !{!185, !11, i64 56}
!200 = !{!185, !11, i64 80}
!201 = !{!185, !11, i64 72}
!202 = !{!185, !6, i64 96}
!203 = !{!185, !5, i64 88}
!204 = !{!186, !5, i64 0}
!205 = !{!186, !5, i64 4}
!206 = !{!186, !187, i64 8}
!207 = !{!208, !51, i64 0}
!208 = !{!"qtm_modelsym", !51, i64 0, !51, i64 2}
!209 = !{!208, !51, i64 2}
!210 = distinct !{!210, !33, !57, !56}
!211 = distinct !{!211, !33, !56, !57}
!212 = distinct !{!212, !33, !57, !56}
!213 = !{!185, !12, i64 2120}
!214 = !{!185, !10, i64 2128}
!215 = !{!185, !51, i64 36}
!216 = !{!185, !51, i64 38}
!217 = !{!185, !51, i64 40}
!218 = distinct !{null}
!219 = distinct !{!219, !33}
!220 = !{!185, !187, i64 504}
!221 = !{!185, !5, i64 500}
!222 = distinct !{!222, !33}
!223 = distinct !{!223, !33}
!224 = distinct !{!224, !33}
!225 = distinct !{!225, !33}
!226 = !{!185, !187, i64 440}
!227 = !{!185, !5, i64 436}
!228 = distinct !{!228, !33}
!229 = distinct !{!229, !33}
!230 = distinct !{!230, !33}
!231 = !{!185, !187, i64 456}
!232 = !{!185, !5, i64 452}
!233 = distinct !{!233, !33}
!234 = distinct !{!234, !33}
!235 = distinct !{!235, !33}
!236 = !{!185, !187, i64 488}
!237 = !{!185, !5, i64 484}
!238 = distinct !{!238, !33}
!239 = distinct !{!239, !33}
!240 = distinct !{!240, !33}
!241 = !{!185, !187, i64 472}
!242 = !{!185, !5, i64 468}
!243 = distinct !{!243, !33}
!244 = distinct !{!244, !33}
!245 = distinct !{!245, !33}
!246 = distinct !{!246, !33, !56, !57}
!247 = distinct !{!247, !33, !56, !57}
!248 = distinct !{!248, !33, !56}
!249 = distinct !{!249, !33, !56, !57}
!250 = distinct !{!250, !33, !56, !57}
!251 = distinct !{!251, !33, !56}
!252 = distinct !{!252, !33, !56, !57}
!253 = distinct !{!253, !33, !56, !57}
!254 = distinct !{!254, !33, !56}
!255 = distinct !{!255, !33}
!256 = distinct !{!256, !33}
!257 = distinct !{!257, !33}
!258 = distinct !{!258, !33}
!259 = distinct !{!259, !45}
!260 = distinct !{!260, !33}
!261 = distinct !{!261, !33}
!262 = distinct !{!262, !45}
!263 = distinct !{!263, !33}
!264 = distinct !{!264, !33}
!265 = distinct !{!265, !33}
!266 = distinct !{!266, !45}
!267 = distinct !{!267, !45}
!268 = distinct !{!268, !33, !56}
!269 = distinct !{!269, !33}
!270 = distinct !{!270, !33}
!271 = distinct !{!271, !33}
!272 = distinct !{!272, !45}
!273 = distinct !{!273, !33}
!274 = distinct !{!274, !33}
!275 = distinct !{!275, !45}
!276 = distinct !{!276, !33}
!277 = distinct !{!277, !33}
!278 = distinct !{!278, !33}
end_hunk_1
