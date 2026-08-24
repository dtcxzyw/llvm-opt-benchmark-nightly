Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDantzigLCP?download=true
inline.NumInlined: 132
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_Z12btLDLTRemovePPfPKiS_S_iiiiR20btAlignedObjectArrayIfE:bb.a
  %.in = phi ptr [ %i.hf, %bb.s ], [ %i.hi, %bb.t ]
  %i.hj = load float, ptr %.in, align 4, !tbaa !9
  %i.hk = fsub float %.1.lcssa.i, %i.hj
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv133
  store float %i.hk, ptr %i.hl, align 4, !tbaa !9
  %i.hm = getelementptr inbounds [4 x i8], ptr %.0102123, i64 %i.eo
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %._crit_edge127, label %bb.r, !llvm.loop !151

bb.v:                                             ; preds = %._crit_edge127, %._crit_edge131
  %.not.i = icmp slt i32 %6, %i.c
  br i1 %.not.i, label %bb.w, label %_Z14btRemoveRowColPfiii.exit

bb.w:                                             ; preds = %bb.v
  %i.hn = icmp sgt i32 %6, 0
  %i.ho = xor i32 %6, -1
  %i.hp = add i32 %5, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = shl nsw i64 %i.hq, 2                    ; 15 uses
  br i1 %i.hn, label %bb.x, label %.lr.ph58.i

bb.x:                                             ; preds = %bb.w
  %i.hs = zext nneg i32 %6 to i64                 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hs ; 2 uses
  %i.hu = sext i32 %7 to i64                      ; 14 uses
  %xtraiter183 = and i32 %6, 7                    ; 3 uses
  %i.hv = icmp ult i32 %6, 8
  br i1 %i.hv, label %.epil.preheader182, label %.new

.new:                                             ; preds = %bb.x
  %unroll_iter186 = and i32 %6, 2147483640
  br label %bb.z

.lr.ph.i120.unr-lcssa:                            ; preds = %bb.z
  %lcmp.mod184.not = icmp eq i32 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i120, label %.epil.preheader182

.epil.preheader182:                               ; preds = %.lr.ph.i120.unr-lcssa, %bb.x
  %.04553.i.epil.init = phi ptr [ %i.ht, %bb.x ], [ %i.iy, %.lr.ph.i120.unr-lcssa ]
  %lcmp.mod185 = icmp ne i32 %xtraiter183, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader182
  %.04553.i.epil = phi ptr [ %.04553.i.epil.init, %.epil.preheader182 ], [ %i.hx, %bb.y ] ; 3 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader182 ], [ %epil.iter.next, %bb.y ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.04553.i.epil, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.04553.i.epil, ptr nonnull align 4 %i.hw, i64 %i.hr, i1 false)
  %i.hx = getelementptr inbounds [4 x i8], ptr %.04553.i.epil, i64 %i.hu
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter183
  br i1 %epil.iter.cmp.not, label %.lr.ph.i120, label %bb.y, !llvm.loop !152

.lr.ph.i120:                                      ; preds = %bb.y, %.lr.ph.i120.unr-lcssa
  %i.hy = shl nuw nsw i64 %i.hs, 2                ; 5 uses
  %i.hz = mul nsw i32 %7, %6
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ia ; 2 uses
  %i.ic = xor i32 %6, -1
  %i.id = add i32 %5, %i.ic
  %i.ie = add i32 %5, -2
  %i.if = sub i32 %i.ie, %6
  %xtraiter188 = and i32 %i.id, 3                 ; 2 uses
  %lcmp.mod189.not = icmp eq i32 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i120, %.prol.preheader
  %.04655.i.prol = phi i32 [ %i.ih, %.prol.preheader ], [ %6, %.lr.ph.i120 ]
  %.04754.i.prol = phi ptr [ %i.ig, %.prol.preheader ], [ %i.ib, %.lr.ph.i120 ] ; 2 uses
  %prol.iter190 = phi i32 [ %prol.iter190.next, %.prol.preheader ], [ 0, %.lr.ph.i120 ]
  %i.ig = getelementptr inbounds [4 x i8], ptr %.04754.i.prol, i64 %i.hu ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.04754.i.prol, ptr align 4 %i.ig, i64 %i.hy, i1 false)
  %i.ih = add nuw nsw i32 %.04655.i.prol, 1       ; 2 uses
  %prol.iter190.next = add i32 %prol.iter190, 1   ; 2 uses
  %prol.iter190.cmp.not = icmp eq i32 %prol.iter190.next, %xtraiter188
  br i1 %prol.iter190.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !153

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i120
  %.04655.i.unr = phi i32 [ %6, %.lr.ph.i120 ], [ %i.ih, %.prol.preheader ]
  %.04754.i.unr = phi ptr [ %i.ib, %.lr.ph.i120 ], [ %i.ig, %.prol.preheader ]
  %i.ii = icmp ult i32 %i.if, 3
  br i1 %i.ii, label %.lr.ph58.i, label %.lr.ph.i120.new

bb.z:                                             ; preds = %bb.z, %.new
  %.04553.i = phi ptr [ %i.ht, %.new ], [ %i.iy, %bb.z ] ; 3 uses
  %niter187 = phi i32 [ 0, %.new ], [ %niter187.next.7, %bb.z ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.04553.i, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.04553.i, ptr nonnull align 4 %i.ij, i64 %i.hr, i1 false)
  %i.ik = getelementptr inbounds [4 x i8], ptr %.04553.i, i64 %i.hu ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ik, ptr nonnull align 4 %i.il, i64 %i.hr, i1 false)
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.hu ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.im, ptr nonnull align 4 %i.in, i64 %i.hr, i1 false)
  %i.io = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.hu ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.io, ptr nonnull align 4 %i.ip, i64 %i.hr, i1 false)
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.hu ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.iq, ptr nonnull align 4 %i.ir, i64 %i.hr, i1 false)
  %i.is = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.hu ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.is, ptr nonnull align 4 %i.it, i64 %i.hr, i1 false)
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.is, i64 %i.hu ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.iu, ptr nonnull align 4 %i.iv, i64 %i.hr, i1 false)
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.hu ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.iw, ptr nonnull align 4 %i.ix, i64 %i.hr, i1 false)
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.hu ; 2 uses
  %niter187.next.7 = add nuw nsw i32 %niter187, 8 ; 2 uses
  %niter187.ncmp.7 = icmp eq i32 %niter187.next.7, %unroll_iter186
  br i1 %niter187.ncmp.7, label %.lr.ph.i120.unr-lcssa, label %bb.z, !llvm.loop !126

.lr.ph.i120.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i120.new
  %.04655.i = phi i32 [ %i.jd, %.lr.ph.i120.new ], [ %.04655.i.unr, %.prol.loopexit ]
  %.04754.i = phi ptr [ %i.jc, %.lr.ph.i120.new ], [ %.04754.i.unr, %.prol.loopexit ] ; 2 uses
  %i.iz = getelementptr inbounds [4 x i8], ptr %.04754.i, i64 %i.hu ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.04754.i, ptr align 4 %i.iz, i64 %i.hy, i1 false)
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.hu ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.iz, ptr align 4 %i.ja, i64 %i.hy, i1 false)
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.hu ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ja, ptr align 4 %i.jb, i64 %i.hy, i1 false)
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.hu ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jb, ptr align 4 %i.jc, i64 %i.hy, i1 false)
  %i.jd = add nuw nsw i32 %.04655.i, 4            ; 2 uses
  %exitcond59.not.i.3 = icmp eq i32 %i.jd, %i.c
  br i1 %exitcond59.not.i.3, label %.lr.ph58.i, label %.lr.ph.i120.new, !llvm.loop !127

.lr.ph58.i:                                       ; preds = %.prol.loopexit, %.lr.ph.i120.new, %bb.w
  %i.je = add nsw i32 %7, 1                       ; 2 uses
  %i.jf = mul nsw i32 %i.je, %6
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jg ; 2 uses
  %i.ji = sext i32 %i.je to i64                   ; 5 uses
  %i.jj = xor i32 %6, -1
  %i.jk = add i32 %5, %i.jj
  %i.jl = add i32 %5, -2
  %i.jm = sub i32 %i.jl, %6
  %xtraiter193 = and i32 %i.jk, 3                 ; 2 uses
  %lcmp.mod194.not = icmp eq i32 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.prol.loopexit192, label %.prol.preheader191

.prol.preheader191:                               ; preds = %.lr.ph58.i, %.prol.preheader191
  %.057.i.prol = phi i32 [ %i.jp, %.prol.preheader191 ], [ %6, %.lr.ph58.i ]
  %.04456.i.prol = phi ptr [ %i.jo, %.prol.preheader191 ], [ %i.jh, %.lr.ph58.i ] ; 2 uses
  %prol.iter195 = phi i32 [ %prol.iter195.next, %.prol.preheader191 ], [ 0, %.lr.ph58.i ]
  %i.jn = getelementptr inbounds [4 x i8], ptr %.04456.i.prol, i64 %i.ji ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.04456.i.prol, ptr align 4 %i.jn, i64 %i.hr, i1 false)
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 -4 ; 2 uses
  %i.jp = add nsw i32 %.057.i.prol, 1             ; 2 uses
  %prol.iter195.next = add i32 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i32 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %.prol.loopexit192, label %.prol.preheader191, !llvm.loop !154

.prol.loopexit192:                                ; preds = %.prol.preheader191, %.lr.ph58.i
  %.057.i.unr = phi i32 [ %6, %.lr.ph58.i ], [ %i.jp, %.prol.preheader191 ]
  %.04456.i.unr = phi ptr [ %i.jh, %.lr.ph58.i ], [ %i.jo, %.prol.preheader191 ]
  %i.jq = icmp ult i32 %i.jm, 3
  br i1 %i.jq, label %.unr-lcssa, label %.lr.ph58.i.new

.lr.ph58.i.new:                                   ; preds = %.prol.loopexit192, %.lr.ph58.i.new
  %.057.i = phi i32 [ %i.jz, %.lr.ph58.i.new ], [ %.057.i.unr, %.prol.loopexit192 ]
  %.04456.i = phi ptr [ %i.jy, %.lr.ph58.i.new ], [ %.04456.i.unr, %.prol.loopexit192 ] ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %.04456.i, i64 %i.ji ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.04456.i, ptr align 4 %i.jr, i64 %i.hr, i1 false)
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -4 ; 2 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ji ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.js, ptr nonnull align 4 %i.jt, i64 %i.hr, i1 false)
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 -4 ; 2 uses
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %i.ji ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ju, ptr nonnull align 4 %i.jv, i64 %i.hr, i1 false)
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -4 ; 2 uses
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.ji ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.jw, ptr nonnull align 4 %i.jx, i64 %i.hr, i1 false)
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -4
  %i.jz = add nsw i32 %.057.i, 4                  ; 2 uses
  %exitcond60.not.i.3 = icmp eq i32 %i.jz, %i.c
  br i1 %exitcond60.not.i.3, label %.unr-lcssa, label %.lr.ph58.i.new, !llvm.loop !129

.unr-lcssa:                                       ; preds = %.lr.ph58.i.new, %.prol.loopexit192
  %i.ka = sext i32 %6 to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ka ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.kb, ptr nonnull align 4 %i.kc, i64 %i.hr, i1 false)
  br label %_Z14btRemoveRowColPfiii.exit

_Z14btRemoveRowColPfiii.exit:                     ; preds = %bb.v, %bb.a, %.unr-lcssa
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5btLCP22transfer_i_from_C_to_NEiR20btAlignedObjectArrayIfE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !64   ; 7 uses
  %i.e = icmp sgt i32 %i.d, 0
  %i.f = add nsw i32 %i.d, -1                     ; 5 uses
  br i1 %i.e, label %.lr.ph, label %.loopexit42

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv55 = phi i32 [ 1, %.lr.ph ], [ %indvars.iv.next56, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.03946 = phi i32 [ -1, %.lr.ph ], [ %spec.select, %bb.e ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !83   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.f
  %i.j = trunc nuw nsw i64 %indvars.iv to i32     ; 4 uses
  %spec.select = select i1 %i.i, i32 %i.j, i32 %.03946 ; 3 uses
  %i.k = icmp eq i32 %i.h, %1
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !62
  tail call void @_Z12btLDLTRemovePPfPKiS_S_iiiiR20btAlignedObjectArrayIfE(ptr noundef %i.n, ptr noundef nonnull %i.b, ptr noundef %i.p, ptr noundef %i.r, i32 poison, i32 noundef %i.d, i32 noundef %i.j, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(25) %2)
  %i.u = icmp eq i32 %spec.select, -1
  br i1 %i.u, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.c
  %i.v = zext nneg i32 %i.d to i64                ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %indvars.iv55) ; 2 uses
  %indvars.iv.next5477 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next5477, %i.v
  br i1 %3, label %.lr.ph79, label %.loopexit

.preheader:                                       ; preds = %.lr.ph79
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv.next5478, 1 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next54, %i.v
  br i1 %4, label %.lr.ph79, label %.loopexit, !llvm.loop !155

.lr.ph79:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next5478 = phi i64 [ %indvars.iv.next54, %.preheader ], [ %indvars.iv.next5477, %.preheader.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next5478
  %i.x = load i32, ptr %i.w, align 4, !tbaa !83
  %i.y = icmp eq i32 %i.x, %i.f
  br i1 %i.y, label %.loopexit.loopexit.split.loop.exit, label %.preheader, !llvm.loop !155

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph79
  %i.z = trunc nuw nsw i64 %indvars.iv.next5478 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.preheader.preheader, %.loopexit.loopexit.split.loop.exit, %bb.c
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %i.z, %.loopexit.loopexit.split.loop.exit ], [ %smax, %.preheader.preheader ], [ %smax, %.preheader ]
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !83
  %i.ab = sext i32 %.1 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ab
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !83
  %i.ad = icmp sgt i32 %i.f, %i.j
  br i1 %i.ad, label %bb.d, label %.loopexit42

bb.d:                                             ; preds = %.loopexit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.af = xor i32 %i.j, -1
  %i.ag = add nsw i32 %i.d, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 4 %i.ae, i64 %i.ai, i1 false)
  br label %.loopexit42

bb.e:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next56 = add nuw i32 %indvars.iv55, 1
  br i1 %exitcond.not, label %.loopexit42, label %bb.b, !llvm.loop !156

.loopexit42:                                      ; preds = %bb.e, %bb.a, %.loopexit, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !77
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !78
  %i.bb = load i32, ptr %0, align 8, !tbaa !54
  tail call fastcc void @_ZL13btSwapProblemPPfS_S_S_S_S_PiPbS1_iiiii(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ba, i32 noundef %i.bb, i32 noundef %1, i32 noundef %i.f, i32 noundef 1)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !65
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !65
  store i32 %i.f, ptr %i.c, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5btLCP22pN_equals_ANC_times_qCEPfS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 7 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr [4 x i8], ptr %1, i64 %i.c ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !65   ; 5 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %.02531.i = add i32 %i.b, -2                    ; 9 uses
  %i.j = icmp sgt i32 %i.b, 1
  %i.k = lshr i32 %.02531.i, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = add nuw nsw i64 %i.m, 8                  ; 2 uses
  %scevgep49.i = getelementptr i8, ptr %2, i64 %i.n
  br i1 %i.j, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.o = add nsw i32 %i.b, -4
  %i.p = and i32 %.02531.i, -2
  %i.q = sub nsw i32 %i.o, %i.p
  %i.r = icmp eq i32 %i.q, -1
  %i.s = zext nneg i32 %i.b to i64
  %wide.trip.count31 = zext nneg i32 %i.f to i64  ; 2 uses
  %invariant.gep39 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.s ; 2 uses
  br i1 %i.r, label %.lr.ph.i.preheader.us.us.preheader, label %.lr.ph.i.preheader.us.preheader

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph.split.us
  %i.t = and i32 %.02531.i, 2
  %lcmp.mod49.not.not = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.025.i.us.prol = add nsw i32 %i.b, -4
  %i.v = icmp ult i32 %.02531.i, 2
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us.us.preheader:               ; preds = %.lr.ph.split.us
  %i.w = and i32 %.02531.i, 2
  %lcmp.mod51.not.not = icmp eq i32 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.025.i.us.us.prol = add nsw i32 %i.b, -4
  %i.y = icmp ult i32 %.02531.i, 2
  br label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph.i.preheader.us.us.preheader, %._crit_edge.loopexit.i.us.us
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %._crit_edge.loopexit.i.us.us ], [ 0, %.lr.ph.i.preheader.us.us.preheader ] ; 3 uses
  %gep40 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep39, i64 %indvars.iv28
  %i.z = load ptr, ptr %gep40, align 8, !tbaa !81 ; 4 uses
  br i1 %lcmp.mod51.not.not, label %.lr.ph.i.us.us.prol, label %.lr.ph.i.us.us.prol.loopexit

.lr.ph.i.us.us.prol:                              ; preds = %.lr.ph.i.preheader.us.us
  %i.aa = load <2 x float>, ptr %i.z, align 4, !tbaa !9
  %i.ab = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.ac = fmul <2 x float> %i.aa, %i.ab           ; 2 uses
  %i.ad = extractelement <2 x float> %i.ac, i64 0
  %i.ae = fadd float %i.ad, 0.000000e+00
  %i.af = extractelement <2 x float> %i.ac, i64 1
  %i.ag = fadd float %i.ae, %i.af                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %.lr.ph.i.us.us.prol.loopexit

.lr.ph.i.us.us.prol.loopexit:                     ; preds = %.lr.ph.i.us.us.prol, %.lr.ph.i.preheader.us.us
  %.02535.i.us.us.unr = phi i32 [ %.02531.i, %.lr.ph.i.preheader.us.us ], [ %.025.i.us.us.prol, %.lr.ph.i.us.us.prol ]
  %.034.i.us.us.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader.us.us ], [ %i.ag, %.lr.ph.i.us.us.prol ]
  %.02733.i.us.us.unr = phi ptr [ %2, %.lr.ph.i.preheader.us.us ], [ %i.x, %.lr.ph.i.us.us.prol ]
  %.02932.i.us.us.unr = phi ptr [ %i.z, %.lr.ph.i.preheader.us.us ], [ %i.ah, %.lr.ph.i.us.us.prol ]
  %.lcssa.unr = phi float [ poison, %.lr.ph.i.preheader.us.us ], [ %i.ag, %.lr.ph.i.us.us.prol ]
  br i1 %i.y, label %._crit_edge.loopexit.i.us.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.prol.loopexit, %.lr.ph.i.us.us
  %.02535.i.us.us = phi i32 [ %.025.i.us.us.1, %.lr.ph.i.us.us ], [ %.02535.i.us.us.unr, %.lr.ph.i.us.us.prol.loopexit ] ; 2 uses
  %.034.i.us.us = phi float [ %i.ax, %.lr.ph.i.us.us ], [ %.034.i.us.us.unr, %.lr.ph.i.us.us.prol.loopexit ]
  %.02733.i.us.us = phi ptr [ %i.az, %.lr.ph.i.us.us ], [ %.02733.i.us.us.unr, %.lr.ph.i.us.us.prol.loopexit ] ; 3 uses
  %.02932.i.us.us = phi ptr [ %i.ay, %.lr.ph.i.us.us ], [ %.02932.i.us.us.unr, %.lr.ph.i.us.us.prol.loopexit ] ; 3 uses
  %i.ai = load <2 x float>, ptr %.02932.i.us.us, align 4, !tbaa !9
  %i.aj = load <2 x float>, ptr %.02733.i.us.us, align 4, !tbaa !9
  %i.ak = fmul <2 x float> %i.ai, %i.aj           ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = fadd float %.034.i.us.us, %i.al
  %i.an = extractelement <2 x float> %i.ak, i64 1
  %i.ao = fadd float %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.02932.i.us.us, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.02733.i.us.us, i64 8
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !9
  %i.as = load <2 x float>, ptr %i.aq, align 4, !tbaa !9
  %i.at = fmul <2 x float> %i.ar, %i.as           ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  %i.av = fadd float %i.ao, %i.au
  %i.aw = extractelement <2 x float> %i.at, i64 1
  %i.ax = fadd float %i.av, %i.aw                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02932.i.us.us, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.02733.i.us.us, i64 16
  %.025.i.us.us.1 = add nsw i32 %.02535.i.us.us, -4
  %i.ba = icmp sgt i32 %.02535.i.us.us, 3
  br i1 %i.ba, label %.lr.ph.i.us.us, label %._crit_edge.loopexit.i.us.us, !llvm.loop !115

._crit_edge.loopexit.i.us.us:                     ; preds = %.lr.ph.i.us.us, %.lr.ph.i.us.us.prol.loopexit
  %.lcssa = phi float [ %.lcssa.unr, %.lr.ph.i.us.us.prol.loopexit ], [ %i.ax, %.lr.ph.i.us.us ]
  %scevgep.i.us.us = getelementptr i8, ptr %i.z, i64 %i.n
  %i.bb = load float, ptr %scevgep.i.us.us, align 4, !tbaa !9
  %i.bc = load float, ptr %scevgep49.i, align 4, !tbaa !9
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bc, float %.lcssa)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv28
  store float %i.bd, ptr %i.be, align 4, !tbaa !9
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %._crit_edge, label %.lr.ph.i.preheader.us.us, !llvm.loop !157

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %._crit_edge.loopexit.i.us
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %._crit_edge.loopexit.i.us ], [ 0, %.lr.ph.i.preheader.us.preheader ] ; 3 uses
  %gep38 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep39, i64 %indvars.iv23
  %i.bf = load ptr, ptr %gep38, align 8, !tbaa !81 ; 3 uses
  br i1 %lcmp.mod49.not.not, label %.lr.ph.i.us.prol, label %.lr.ph.i.us.prol.loopexit

.lr.ph.i.us.prol:                                 ; preds = %.lr.ph.i.preheader.us
  %i.bg = load <2 x float>, ptr %i.bf, align 4, !tbaa !9
  %i.bh = load <2 x float>, ptr %2, align 4, !tbaa !9
  %i.bi = fmul <2 x float> %i.bg, %i.bh           ; 2 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = fadd float %i.bj, 0.000000e+00
  %i.bl = extractelement <2 x float> %i.bi, i64 1
  %i.bm = fadd float %i.bk, %i.bl                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %.lr.ph.i.us.prol.loopexit

.lr.ph.i.us.prol.loopexit:                        ; preds = %.lr.ph.i.us.prol, %.lr.ph.i.preheader.us
  %.02535.i.us.unr = phi i32 [ %.02531.i, %.lr.ph.i.preheader.us ], [ %.025.i.us.prol, %.lr.ph.i.us.prol ]
  %.034.i.us.unr = phi float [ 0.000000e+00, %.lr.ph.i.preheader.us ], [ %i.bm, %.lr.ph.i.us.prol ]
  %.02733.i.us.unr = phi ptr [ %2, %.lr.ph.i.preheader.us ], [ %i.u, %.lr.ph.i.us.prol ]
  %.02932.i.us.unr = phi ptr [ %i.bf, %.lr.ph.i.preheader.us ], [ %i.bn, %.lr.ph.i.us.prol ]
  %.lcssa45.unr = phi float [ poison, %.lr.ph.i.preheader.us ], [ %i.bm, %.lr.ph.i.us.prol ]
  br i1 %i.v, label %._crit_edge.loopexit.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.prol.loopexit, %.lr.ph.i.us
  %.02535.i.us = phi i32 [ %.025.i.us.1, %.lr.ph.i.us ], [ %.02535.i.us.unr, %.lr.ph.i.us.prol.loopexit ] ; 2 uses
  %.034.i.us = phi float [ %i.cd, %.lr.ph.i.us ], [ %.034.i.us.unr, %.lr.ph.i.us.prol.loopexit ]
  %.02733.i.us = phi ptr [ %i.cf, %.lr.ph.i.us ], [ %.02733.i.us.unr, %.lr.ph.i.us.prol.loopexit ] ; 3 uses
  %.02932.i.us = phi ptr [ %i.ce, %.lr.ph.i.us ], [ %.02932.i.us.unr, %.lr.ph.i.us.prol.loopexit ] ; 3 uses
  %i.bo = load <2 x float>, ptr %.02932.i.us, align 4, !tbaa !9
  %i.bp = load <2 x float>, ptr %.02733.i.us, align 4, !tbaa !9
  %i.bq = fmul <2 x float> %i.bo, %i.bp           ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = fadd float %.034.i.us, %i.br
  %i.bt = extractelement <2 x float> %i.bq, i64 1
  %i.bu = fadd float %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.02932.i.us, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.02733.i.us, i64 8
  %i.bx = load <2 x float>, ptr %i.bv, align 4, !tbaa !9
  %i.by = load <2 x float>, ptr %i.bw, align 4, !tbaa !9
  %i.bz = fmul <2 x float> %i.bx, %i.by           ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0
  %i.cb = fadd float %i.bu, %i.ca
  %i.cc = extractelement <2 x float> %i.bz, i64 1
  %i.cd = fadd float %i.cb, %i.cc                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02932.i.us, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.02733.i.us, i64 16
  %.025.i.us.1 = add nsw i32 %.02535.i.us, -4
  %i.cg = icmp sgt i32 %.02535.i.us, 3
  br i1 %i.cg, label %.lr.ph.i.us, label %._crit_edge.loopexit.i.us, !llvm.loop !115

._crit_edge.loopexit.i.us:                        ; preds = %.lr.ph.i.us, %.lr.ph.i.us.prol.loopexit
  %.lcssa45 = phi float [ %.lcssa45.unr, %.lr.ph.i.us.prol.loopexit ], [ %i.cd, %.lr.ph.i.us ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv23
end_hunk_0
begin_hunk_1_@_Z17btSolveDantzigLCPiPfS_S_S_iS_S_PiR22btDantzigScratchMemory:bb.a
  %i.apf = trunc nuw i8 %i.ape to i1
  %indvars.iv.next639 = add nsw i64 %indvars.iv638, 1 ; 2 uses
  %lftr.wideiv654 = trunc i64 %indvars.iv.next639 to i32
  %exitcond655.not = icmp eq i32 %0, %lftr.wideiv654
  %or.cond758 = select i1 %i.apf, i1 true, i1 %exitcond655.not
  br i1 %or.cond758, label %.thread._crit_edge, label %bb.ar, !llvm.loop !307

.thread._crit_edge:                               ; preds = %.thread, %_ZN20btAlignedObjectArrayIbE6resizeEiRKb.exit
  %i.apg = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !76 ; 13 uses
  %i.api = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !67 ; 6 uses
  %i.apk = load i32, ptr %10, align 8, !tbaa !54  ; 5 uses
  %i.apl = sext i32 %i.apk to i64
  %i.apm = shl nsw i64 %i.apl, 2                  ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aph, ptr align 4 %i.apj, i64 %i.apm, i1 false)
  %i.apn = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !79 ; 10 uses
  %i.app = icmp sgt i32 %i.apk, 0
  br i1 %i.app, label %.lr.ph.preheader.i568, label %._crit_edge.i567

.lr.ph.preheader.i568:                            ; preds = %.thread._crit_edge
  %wide.trip.count.i569 = zext nneg i32 %i.apk to i64 ; 4 uses
  %xtraiter1132 = and i64 %wide.trip.count.i569, 3 ; 3 uses
  %i.apq = icmp ult i32 %i.apk, 4
  br i1 %i.apq, label %.lr.ph.i570.epil.preheader, label %.lr.ph.preheader.i568.new

.lr.ph.preheader.i568.new:                        ; preds = %.lr.ph.preheader.i568
  %unroll_iter1136 = and i64 %wide.trip.count.i569, 2147483644
  br label %.lr.ph.i570

._crit_edge.i567:                                 ; preds = %.thread._crit_edge
  %i.apr = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aph, ptr align 4 %i.aps, i64 %i.apm, i1 false)
  br label %_ZN5btLCP9unpermuteEv.exit

.lr.ph20.preheader.i.unr-lcssa:                   ; preds = %.lr.ph.i570
  %lcmp.mod1134.not = icmp eq i64 %xtraiter1132, 0
  br i1 %lcmp.mod1134.not, label %.lr.ph20.preheader.i, label %.lr.ph.i570.epil.preheader

.lr.ph.i570.epil.preheader:                       ; preds = %.lr.ph20.preheader.i.unr-lcssa, %.lr.ph.preheader.i568
  %indvars.iv.i571.epil.init = phi i64 [ 0, %.lr.ph.preheader.i568 ], [ %indvars.iv.next.i572.3, %.lr.ph20.preheader.i.unr-lcssa ]
  %lcmp.mod1135 = icmp ne i64 %xtraiter1132, 0
  tail call void @llvm.assume(i1 %lcmp.mod1135)
  br label %.lr.ph.i570.epil

.lr.ph.i570.epil:                                 ; preds = %.lr.ph.i570.epil, %.lr.ph.i570.epil.preheader
  %indvars.iv.i571.epil = phi i64 [ %indvars.iv.i571.epil.init, %.lr.ph.i570.epil.preheader ], [ %indvars.iv.next.i572.epil, %.lr.ph.i570.epil ] ; 3 uses
  %epil.iter1133 = phi i64 [ 0, %.lr.ph.i570.epil.preheader ], [ %epil.iter1133.next, %.lr.ph.i570.epil ]
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.i571.epil
  %i.apu = load float, ptr %i.apt, align 4, !tbaa !9
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv.i571.epil
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !83
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.apj, i64 %i.apx
  store float %i.apu, ptr %i.apy, align 4, !tbaa !9
  %indvars.iv.next.i572.epil = add nuw nsw i64 %indvars.iv.i571.epil, 1
  %epil.iter1133.next = add i64 %epil.iter1133, 1 ; 2 uses
  %epil.iter1133.cmp.not = icmp eq i64 %epil.iter1133.next, %xtraiter1132
  br i1 %epil.iter1133.cmp.not, label %.lr.ph20.preheader.i, label %.lr.ph.i570.epil, !llvm.loop !308

.lr.ph20.preheader.i:                             ; preds = %.lr.ph.i570.epil, %.lr.ph20.preheader.i.unr-lcssa
  %i.apz = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !69 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aph, ptr align 4 %i.aqa, i64 %i.apm, i1 false)
  %xtraiter1138 = and i64 %wide.trip.count.i569, 3 ; 3 uses
  %i.aqb = icmp ult i32 %i.apk, 4
  br i1 %i.aqb, label %.lr.ph20.i.epil.preheader, label %.lr.ph20.preheader.i.new

.lr.ph20.preheader.i.new:                         ; preds = %.lr.ph20.preheader.i
  %unroll_iter1142 = and i64 %wide.trip.count.i569, 2147483644
  br label %.lr.ph20.i

.lr.ph.i570:                                      ; preds = %.lr.ph.i570, %.lr.ph.preheader.i568.new
  %indvars.iv.i571 = phi i64 [ 0, %.lr.ph.preheader.i568.new ], [ %indvars.iv.next.i572.3, %.lr.ph.i570 ] ; 6 uses
  %niter1137 = phi i64 [ 0, %.lr.ph.preheader.i568.new ], [ %niter1137.next.3, %.lr.ph.i570 ]
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.i571
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !9
  %i.aqe = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv.i571
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !83
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = getelementptr inbounds [4 x i8], ptr %i.apj, i64 %i.aqg
  store float %i.aqd, ptr %i.aqh, align 4, !tbaa !9
  %indvars.iv.next.i572 = or disjoint i64 %indvars.iv.i571, 1 ; 2 uses
  %i.aqi = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.next.i572
  %i.aqj = load float, ptr %i.aqi, align 4, !tbaa !9
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv.next.i572
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !83
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr inbounds [4 x i8], ptr %i.apj, i64 %i.aqm
  store float %i.aqj, ptr %i.aqn, align 4, !tbaa !9
  %indvars.iv.next.i572.1 = or disjoint i64 %indvars.iv.i571, 2 ; 2 uses
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.next.i572.1
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !9
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv.next.i572.1
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !83
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds [4 x i8], ptr %i.apj, i64 %i.aqs
  store float %i.aqp, ptr %i.aqt, align 4, !tbaa !9
  %indvars.iv.next.i572.2 = or disjoint i64 %indvars.iv.i571, 3 ; 2 uses
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.next.i572.2
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !9
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv.next.i572.2
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !83
  %i.aqy = sext i32 %i.aqx to i64
  %i.aqz = getelementptr inbounds [4 x i8], ptr %i.apj, i64 %i.aqy
  store float %i.aqv, ptr %i.aqz, align 4, !tbaa !9
  %indvars.iv.next.i572.3 = add nuw nsw i64 %indvars.iv.i571, 4 ; 2 uses
  %niter1137.next.3 = add i64 %niter1137, 4       ; 2 uses
  %niter1137.ncmp.3 = icmp eq i64 %niter1137.next.3, %unroll_iter1136
  br i1 %niter1137.ncmp.3, label %.lr.ph20.preheader.i.unr-lcssa, label %.lr.ph.i570, !llvm.loop !204

.lr.ph20.i:                                       ; preds = %.lr.ph20.i, %.lr.ph20.preheader.i.new
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph20.preheader.i.new ], [ %indvars.iv.next24.i.3, %.lr.ph20.i ] ; 6 uses
  %niter1143 = phi i64 [ 0, %.lr.ph20.preheader.i.new ], [ %niter1143.next.3, %.lr.ph20.i ]
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv23.i
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !9
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv23.i
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !83
  %i.are = sext i32 %i.ard to i64
  %i.arf = getelementptr inbounds [4 x i8], ptr %i.aqa, i64 %i.are
  store float %i.arb, ptr %i.arf, align 4, !tbaa !9
  %indvars.iv.next24.i = or disjoint i64 %indvars.iv23.i, 1 ; 2 uses
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.next24.i
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !9
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv.next24.i
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !83
  %i.ark = sext i32 %i.arj to i64
  %i.arl = getelementptr inbounds [4 x i8], ptr %i.aqa, i64 %i.ark
  store float %i.arh, ptr %i.arl, align 4, !tbaa !9
  %indvars.iv.next24.i.1 = or disjoint i64 %indvars.iv23.i, 2 ; 2 uses
  %i.arm = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.next24.i.1
  %i.arn = load float, ptr %i.arm, align 4, !tbaa !9
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv.next24.i.1
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !83
  %i.arq = sext i32 %i.arp to i64
  %i.arr = getelementptr inbounds [4 x i8], ptr %i.aqa, i64 %i.arq
  store float %i.arn, ptr %i.arr, align 4, !tbaa !9
  %indvars.iv.next24.i.2 = or disjoint i64 %indvars.iv23.i, 3 ; 2 uses
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv.next24.i.2
  %i.art = load float, ptr %i.ars, align 4, !tbaa !9
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv.next24.i.2
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !83
  %i.arw = sext i32 %i.arv to i64
  %i.arx = getelementptr inbounds [4 x i8], ptr %i.aqa, i64 %i.arw
  store float %i.art, ptr %i.arx, align 4, !tbaa !9
  %indvars.iv.next24.i.3 = add nuw nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %niter1143.next.3 = add i64 %niter1143, 4       ; 2 uses
  %niter1143.ncmp.3 = icmp eq i64 %niter1143.next.3, %unroll_iter1142
  br i1 %niter1143.ncmp.3, label %_ZN5btLCP9unpermuteEv.exit.loopexit.unr-lcssa, label %.lr.ph20.i, !llvm.loop !206

_ZN5btLCP9unpermuteEv.exit.loopexit.unr-lcssa:    ; preds = %.lr.ph20.i
  %lcmp.mod1140.not = icmp eq i64 %xtraiter1138, 0
  br i1 %lcmp.mod1140.not, label %_ZN5btLCP9unpermuteEv.exit, label %.lr.ph20.i.epil.preheader

.lr.ph20.i.epil.preheader:                        ; preds = %_ZN5btLCP9unpermuteEv.exit.loopexit.unr-lcssa, %.lr.ph20.preheader.i
  %indvars.iv23.i.epil.init = phi i64 [ 0, %.lr.ph20.preheader.i ], [ %indvars.iv.next24.i.3, %_ZN5btLCP9unpermuteEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod1141 = icmp ne i64 %xtraiter1138, 0
  tail call void @llvm.assume(i1 %lcmp.mod1141)
  br label %.lr.ph20.i.epil

.lr.ph20.i.epil:                                  ; preds = %.lr.ph20.i.epil, %.lr.ph20.i.epil.preheader
  %indvars.iv23.i.epil = phi i64 [ %indvars.iv23.i.epil.init, %.lr.ph20.i.epil.preheader ], [ %indvars.iv.next24.i.epil, %.lr.ph20.i.epil ] ; 3 uses
  %epil.iter1139 = phi i64 [ 0, %.lr.ph20.i.epil.preheader ], [ %epil.iter1139.next, %.lr.ph20.i.epil ]
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.aph, i64 %indvars.iv23.i.epil
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !9
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %i.apo, i64 %indvars.iv23.i.epil
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !83
  %i.asc = sext i32 %i.asb to i64
  %i.asd = getelementptr inbounds [4 x i8], ptr %i.aqa, i64 %i.asc
  store float %i.arz, ptr %i.asd, align 4, !tbaa !9
  %indvars.iv.next24.i.epil = add nuw nsw i64 %indvars.iv23.i.epil, 1
  %epil.iter1139.next = add i64 %epil.iter1139, 1 ; 2 uses
  %epil.iter1139.cmp.not = icmp eq i64 %epil.iter1139.next, %xtraiter1138
  br i1 %epil.iter1139.cmp.not, label %_ZN5btLCP9unpermuteEv.exit, label %.lr.ph20.i.epil, !llvm.loop !309

_ZN5btLCP9unpermuteEv.exit:                       ; preds = %_ZN5btLCP9unpermuteEv.exit.loopexit.unr-lcssa, %.lr.ph20.i.epil, %._crit_edge.i567
  %i.ase = load i8, ptr @s_error, align 1, !tbaa !109, !range !111, !noundef !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN5btLCP9unpermuteEv.exit, %_Z11btSolveLDLTPKfS0_Pfii.exit
  %.0314.in.in = phi i8 [ %i.am, %_Z11btSolveLDLTPKfS0_Pfii.exit ], [ %i.ase, %_ZN5btLCP9unpermuteEv.exit ]
  %.0314.in = trunc nuw i8 %.0314.in.in to i1
  %.0314 = xor i1 %.0314.in, true
  ret i1 %.0314
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !12, !42, !43}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = distinct !{!44, !25}
!45 = distinct !{!45, !12, !42}
!46 = !{!47}
!47 = distinct !{!47, !48}
!48 = distinct !{!48, !"LVerDomain"}
!49 = !{!50}
!50 = distinct !{!50, !48}
!51 = distinct !{!51, !12, !42, !43}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !12, !42}
!54 = !{!55, !6, i64 0}
!55 = !{!"_ZTS5btLCP", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !56, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !59, i64 104, !60, i64 112, !61, i64 120, !61, i64 128, !61, i64 136}
!56 = !{!"p2 float", !57, i64 0}
!57 = !{!"any p2 pointer", !58, i64 0}
!58 = !{!"any pointer", !7, i64 0}
!59 = !{!"p1 float", !58, i64 0}
!60 = !{!"p1 bool", !58, i64 0}
!61 = !{!"p1 int", !58, i64 0}
!62 = !{!55, !6, i64 4}
!63 = !{!55, !6, i64 8}
!64 = !{!55, !6, i64 12}
!65 = !{!55, !6, i64 16}
!66 = !{!55, !56, i64 24}
!67 = !{!55, !59, i64 32}
!68 = !{!55, !59, i64 40}
!69 = !{!55, !59, i64 48}
!70 = !{!55, !59, i64 56}
!71 = !{!55, !59, i64 64}
!72 = !{!55, !59, i64 72}
!73 = !{!55, !59, i64 80}
!74 = !{!55, !59, i64 88}
!75 = !{!55, !59, i64 96}
!76 = !{!55, !59, i64 104}
!77 = !{!55, !60, i64 112}
!78 = !{!55, !61, i64 120}
!79 = !{!55, !61, i64 128}
!80 = !{!55, !61, i64 136}
!81 = !{!59, !59, i64 0}
!82 = distinct !{!82, !25}
!83 = !{!6, !6, i64 0}
!84 = distinct !{!84, !12, !42, !43}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12, !43, !42}
!87 = distinct !{!87, !12}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !12, !42, !43}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !12, !42}
!96 = distinct !{!96, !12, !42, !43}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12, !43, !42}
!99 = distinct !{!99, !12}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !12, !42, !43}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12, !42}
!108 = distinct !{!108, !12}
!109 = !{!110, !110, i64 0}
!110 = !{!"bool", !7, i64 0}
!111 = !{i8 0, i8 2}
!112 = !{}
!113 = distinct !{!113, !12, !42, !43}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12, !42}
!117 = distinct !{!117, !12, !42, !43}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !12, !42}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12, !42, !43}
!123 = distinct !{!123, !12, !42}
!124 = distinct !{!124, !25}
!125 = distinct !{!125, !25}
!126 = distinct !{!126, !12}
!127 = distinct !{!127, !12}
!128 = distinct !{!128, !25}
!129 = distinct !{!129, !12}
!130 = !{!131, !6, i64 4}
!131 = !{!"_ZTS20btAlignedObjectArrayIfE", !132, i64 0, !6, i64 4, !6, i64 8, !59, i64 16, !110, i64 24}
!132 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!133 = !{!131, !59, i64 16}
!134 = !{!131, !6, i64 8}
!135 = distinct !{!135, !12, !42, !43}
!136 = distinct !{!136, !25}
!137 = distinct !{!137, !12, !42}
!138 = !{!131, !110, i64 24}
!139 = distinct !{!139, !12, !42, !43}
!140 = distinct !{!140, !12}
!141 = distinct !{!141, !12, !42}
!142 = distinct !{!142, !12}
!143 = distinct !{!143, !12}
!144 = distinct !{!144, !12, !42, !43}
!145 = distinct !{!145, !25}
!146 = distinct !{!146, !12, !42}
!147 = distinct !{!147, !12}
!148 = distinct !{!148, !12, !42, !43}
!149 = distinct !{!149, !25}
!150 = distinct !{!150, !12, !42}
!151 = distinct !{!151, !12}
!152 = distinct !{!152, !25}
!153 = distinct !{!153, !25}
!154 = distinct !{!154, !25}
!155 = distinct !{!155, !12}
!156 = distinct !{!156, !12}
!157 = distinct !{!157, !12}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!162}
!162 = distinct !{!162, !160}
!163 = distinct !{!163, !12, !42, !43}
!164 = distinct !{!164, !25}
!165 = distinct !{!165, !12, !42}
!166 = !{!167}
!167 = distinct !{!167, !168}
!168 = distinct !{!168, !"LVerDomain"}
!169 = !{!170}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !12, !42, !43}
!172 = distinct !{!172, !25}
!173 = distinct !{!173, !12, !42}
!174 = !{!175}
!175 = distinct !{!175, !176}
!176 = distinct !{!176, !"LVerDomain"}
!177 = !{!178}
!178 = distinct !{!178, !176}
!179 = distinct !{!179, !12, !42, !43}
end_hunk_1
