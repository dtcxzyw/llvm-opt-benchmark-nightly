inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL26transpose_pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !526
  %i.gh = getelementptr inbounds nuw i8, ptr %.850, i64 4
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %.212151, i64 %i.k ; 3 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !526
  store i16 %i.gj, ptr %i.gh, align 2, !tbaa !526
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !526
  %i.gm = getelementptr inbounds nuw i8, ptr %.850, i64 6
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !526
  %i.gn = getelementptr inbounds nuw i8, ptr %.850, i64 8
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.k ; 3 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !526
  store i16 %i.gp, ptr %i.gn, align 2, !tbaa !526
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !526
  %i.gs = getelementptr inbounds nuw i8, ptr %.850, i64 10
  store i16 %i.gr, ptr %i.gs, align 2, !tbaa !526
  %i.gt = getelementptr inbounds nuw i8, ptr %.850, i64 12
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.go, i64 %i.k ; 3 uses
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !526
  store i16 %i.gv, ptr %i.gt, align 2, !tbaa !526
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !526
  %i.gy = getelementptr inbounds nuw i8, ptr %.850, i64 14
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !526
  %i.gz = getelementptr inbounds nuw i8, ptr %.850, i64 16 ; 3 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gu, i64 %i.k ; 2 uses
  %niter172.next.3 = add nuw nsw i32 %niter172, 4 ; 2 uses
  %niter172.ncmp.3 = icmp eq i32 %niter172.next.3, %unroll_iter171
  br i1 %niter172.ncmp.3, label %.loopexit5.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !819

.loopexit5.loopexit.unr-lcssa:                    ; preds = %.lr.ph53
  br i1 %lcmp.mod168.not, label %.loopexit5, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %.loopexit5.loopexit.unr-lcssa, %.lr.ph53.preheader
  %.212151.epil.init = phi ptr [ %i.fb, %.lr.ph53.preheader ], [ %i.ha, %.loopexit5.loopexit.unr-lcssa ]
  %.850.epil.init = phi ptr [ %.556, %.lr.ph53.preheader ], [ %i.gz, %.loopexit5.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph53.epil

.lr.ph53.epil:                                    ; preds = %.lr.ph53.epil, %.lr.ph53.epil.preheader
  %.212151.epil = phi ptr [ %i.hg, %.lr.ph53.epil ], [ %.212151.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  %.850.epil = phi ptr [ %i.hf, %.lr.ph53.epil ], [ %.850.epil.init, %.lr.ph53.epil.preheader ] ; 3 uses
  %epil.iter167 = phi i32 [ %epil.iter167.next, %.lr.ph53.epil ], [ 0, %.lr.ph53.epil.preheader ]
  %i.hb = load i16, ptr %.212151.epil, align 2, !tbaa !526
  store i16 %i.hb, ptr %.850.epil, align 2, !tbaa !526
  %i.hc = getelementptr inbounds nuw i8, ptr %.212151.epil, i64 2
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !526
  %i.he = getelementptr inbounds nuw i8, ptr %.850.epil, i64 2
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !526
  %i.hf = getelementptr inbounds nuw i8, ptr %.850.epil, i64 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.212151.epil, i64 %i.k
  %epil.iter167.next = add i32 %epil.iter167, 1   ; 2 uses
  %epil.iter167.cmp.not = icmp eq i32 %epil.iter167.next, %xtraiter166
  br i1 %epil.iter167.cmp.not, label %.loopexit5, label %.lr.ph53.epil, !llvm.loop !820

.loopexit5:                                       ; preds = %.lr.ph, %.loopexit5.loopexit.unr-lcssa, %.lr.ph53.epil, %.loopexit7
  %.9 = phi ptr [ %.556, %.loopexit7 ], [ %i.hf, %.lr.ph53.epil ], [ %i.gz, %.loopexit5.loopexit.unr-lcssa ], [ %i.fy, %.lr.ph ] ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 2 ; 3 uses
  %i.hh = icmp slt i64 %indvars.iv.next111, %invariant.op
  br i1 %i.hh, label %bb.c, label %.preheader3.loopexit, !llvm.loop !821

bb.d:                                             ; preds = %.lr.ph73, %.loopexit
  %indvars.iv114 = phi i64 [ %i.eq, %.lr.ph73 ], [ %indvars.iv.next115, %.loopexit ] ; 2 uses
  %.1072 = phi ptr [ %.5.lcssa, %.lr.ph73 ], [ %.14, %.loopexit ] ; 5 uses
  %i.hi = load ptr, ptr %0, align 8, !tbaa !18
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.el
  %i.hk = add nsw i64 %indvars.iv114, %i.er
  %i.hl = mul nsw i64 %i.hk, %i.es
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.hl ; 4 uses
  br i1 %brmerge83, label %.loopexit2, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.d
  br i1 %i.ex, label %.lr.ph63.epil.preheader, label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %.lr.ph63
  %.011661 = phi ptr [ %i.hy, %.lr.ph63 ], [ %i.hm, %.lr.ph63.preheader ] ; 2 uses
  %.1160 = phi ptr [ %i.hx, %.lr.ph63 ], [ %.1072, %.lr.ph63.preheader ] ; 5 uses
  %niter179 = phi i32 [ %niter179.next.3, %.lr.ph63 ], [ 0, %.lr.ph63.preheader ]
  %i.hn = load i64, ptr %.011661, align 1, !tbaa !113
  store i64 %i.hn, ptr %.1160, align 1, !tbaa !113
  %i.ho = getelementptr inbounds nuw i8, ptr %.1160, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.011661, i64 %.idx ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 1, !tbaa !113
  store i64 %i.hq, ptr %i.ho, align 1, !tbaa !113
  %i.hr = getelementptr inbounds nuw i8, ptr %.1160, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.idx ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 1, !tbaa !113
  store i64 %i.ht, ptr %i.hr, align 1, !tbaa !113
  %i.hu = getelementptr inbounds nuw i8, ptr %.1160, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 1, !tbaa !113
  store i64 %i.hw, ptr %i.hu, align 1, !tbaa !113
  %i.hx = getelementptr inbounds nuw i8, ptr %.1160, i64 32 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.idx ; 2 uses
  %niter179.next.3 = add nuw nsw i32 %niter179, 4 ; 2 uses
  %niter179.ncmp.3.not = icmp eq i32 %niter179.next.3, %unroll_iter178
  br i1 %niter179.ncmp.3.not, label %.loopexit.loopexit148.unr-lcssa, label %.lr.ph63, !llvm.loop !822

.loopexit2:                                       ; preds = %bb.d
  br i1 %brmerge86, label %.loopexit, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %.loopexit2
  br i1 %i.ey, label %.lr.ph69.epil.preheader, label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %.267 = phi ptr [ %i.iw, %.lr.ph69 ], [ %i.hm, %.lr.ph69.preheader ] ; 2 uses
  %.1366 = phi ptr [ %i.iv, %.lr.ph69 ], [ %.1072, %.lr.ph69.preheader ] ; 9 uses
  %niter186 = phi i32 [ %niter186.next.7, %.lr.ph69 ], [ 0, %.lr.ph69.preheader ]
  %i.hz = load i16, ptr %.267, align 2, !tbaa !526
  store i16 %i.hz, ptr %.1366, align 2, !tbaa !526
  %i.ia = getelementptr inbounds nuw i8, ptr %.1366, i64 2
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.267, i64 %i.k ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !526
  store i16 %i.ic, ptr %i.ia, align 2, !tbaa !526
  %i.id = getelementptr inbounds nuw i8, ptr %.1366, i64 4
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.k ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !526
  store i16 %i.if, ptr %i.id, align 2, !tbaa !526
  %i.ig = getelementptr inbounds nuw i8, ptr %.1366, i64 6
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.k ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !526
  store i16 %i.ii, ptr %i.ig, align 2, !tbaa !526
  %i.ij = getelementptr inbounds nuw i8, ptr %.1366, i64 8
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %i.k ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !526
  store i16 %i.il, ptr %i.ij, align 2, !tbaa !526
  %i.im = getelementptr inbounds nuw i8, ptr %.1366, i64 10
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.ik, i64 %i.k ; 2 uses
  %i.io = load i16, ptr %i.in, align 2, !tbaa !526
  store i16 %i.io, ptr %i.im, align 2, !tbaa !526
  %i.ip = getelementptr inbounds nuw i8, ptr %.1366, i64 12
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.k ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !526
  store i16 %i.ir, ptr %i.ip, align 2, !tbaa !526
  %i.is = getelementptr inbounds nuw i8, ptr %.1366, i64 14
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.k ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !526
  store i16 %i.iu, ptr %i.is, align 2, !tbaa !526
  %i.iv = getelementptr inbounds nuw i8, ptr %.1366, i64 16 ; 3 uses
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %i.k ; 2 uses
  %niter186.next.7 = add nuw nsw i32 %niter186, 8 ; 2 uses
  %niter186.ncmp.7 = icmp eq i32 %niter186.next.7, %unroll_iter185
  br i1 %niter186.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph69, !llvm.loop !823

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph69
  br i1 %lcmp.mod182.not, label %.loopexit, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.267.epil.init = phi ptr [ %i.hm, %.lr.ph69.preheader ], [ %i.iw, %.loopexit.loopexit.unr-lcssa ]
  %.1366.epil.init = phi ptr [ %.1072, %.lr.ph69.preheader ], [ %i.iv, %.loopexit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph69.epil

.lr.ph69.epil:                                    ; preds = %.lr.ph69.epil, %.lr.ph69.epil.preheader
  %.267.epil = phi ptr [ %i.iz, %.lr.ph69.epil ], [ %.267.epil.init, %.lr.ph69.epil.preheader ] ; 2 uses
  %.1366.epil = phi ptr [ %i.iy, %.lr.ph69.epil ], [ %.1366.epil.init, %.lr.ph69.epil.preheader ] ; 2 uses
  %epil.iter181 = phi i32 [ %epil.iter181.next, %.lr.ph69.epil ], [ 0, %.lr.ph69.epil.preheader ]
  %i.ix = load i16, ptr %.267.epil, align 2, !tbaa !526
  store i16 %i.ix, ptr %.1366.epil, align 2, !tbaa !526
  %i.iy = getelementptr inbounds nuw i8, ptr %.1366.epil, i64 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %.267.epil, i64 %i.k
  %epil.iter181.next = add i32 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i32 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %.loopexit, label %.lr.ph69.epil, !llvm.loop !824

.loopexit.loopexit148.unr-lcssa:                  ; preds = %.lr.ph63
  br i1 %lcmp.mod175.not, label %.loopexit, label %.lr.ph63.epil.preheader

.lr.ph63.epil.preheader:                          ; preds = %.loopexit.loopexit148.unr-lcssa, %.lr.ph63.preheader
  %.011661.epil.init = phi ptr [ %i.hm, %.lr.ph63.preheader ], [ %i.hy, %.loopexit.loopexit148.unr-lcssa ]
  %.1160.epil.init = phi ptr [ %.1072, %.lr.ph63.preheader ], [ %i.hx, %.loopexit.loopexit148.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph63.epil

.lr.ph63.epil:                                    ; preds = %.lr.ph63.epil, %.lr.ph63.epil.preheader
  %.011661.epil = phi ptr [ %i.jc, %.lr.ph63.epil ], [ %.011661.epil.init, %.lr.ph63.epil.preheader ] ; 2 uses
  %.1160.epil = phi ptr [ %i.jb, %.lr.ph63.epil ], [ %.1160.epil.init, %.lr.ph63.epil.preheader ] ; 2 uses
  %epil.iter174 = phi i32 [ %epil.iter174.next, %.lr.ph63.epil ], [ 0, %.lr.ph63.epil.preheader ]
  %i.ja = load i64, ptr %.011661.epil, align 1, !tbaa !113
  store i64 %i.ja, ptr %.1160.epil, align 1, !tbaa !113
  %i.jb = getelementptr inbounds nuw i8, ptr %.1160.epil, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.011661.epil, i64 %.idx
  %epil.iter174.next = add i32 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i32 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %.loopexit, label %.lr.ph63.epil, !llvm.loop !825

.loopexit:                                        ; preds = %.loopexit.loopexit148.unr-lcssa, %.lr.ph63.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph69.epil, %.loopexit2
  %.14 = phi ptr [ %.1072, %.loopexit2 ], [ %i.iy, %.lr.ph69.epil ], [ %i.iv, %.loopexit.loopexit.unr-lcssa ], [ %i.hx, %.loopexit.loopexit148.unr-lcssa ], [ %i.jb, %.lr.ph63.epil ]
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond117.not, label %._crit_edge, label %bb.d, !llvm.loop !826

._crit_edge:                                      ; preds = %.loopexit, %.preheader3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = icmp eq i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = select i1 %i.c, i64 %i.e, i64 %i.h       ; 19 uses
  %i.j = icmp sgt i32 %2, 3
  br i1 %i.j, label %.lr.ph32, label %.preheader1

.lr.ph32:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %i.m = mul i32 %i.l, %3
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp ne i32 %i.l, 4                      ; 2 uses
  %i.p = icmp slt i32 %4, 1                       ; 2 uses
  %i.q = icmp eq i32 %i.l, 1
  %.idx = shl i64 %i.i, 2
  %.idx124 = mul i64 %i.i, 6
  %i.r = icmp sgt i32 %4, 3
  br i1 %i.q, label %.lr.ph32.split.us.preheader, label %.lr.ph32.split

.lr.ph32.split.us.preheader:                      ; preds = %.lr.ph32
  %i.s = and i32 %4, -4
  %i.t = sext i32 %1 to i64                       ; 2 uses
  %i.u = zext nneg i32 %2 to i64
  %brmerge = or i1 %i.o, %i.p
  %i.v = mul i64 %i.i, %i.t
  %i.w = mul i64 %i.v, -2
  %i.x = shl nsw i64 %i.n, 1
  %i.y = sub i64 %i.w, %i.x
  %i.z = mul i64 %i.i, -8
  %i.aa = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check192 = icmp ult i32 %4, 6
  %n.vec194 = and i64 %i.aa, 2147483644           ; 4 uses
  %i.ab = shl nuw nsw i64 %n.vec194, 3            ; 2 uses
  %i.ac = trunc nuw nsw i64 %n.vec194 to i32
  %cmp.n203 = icmp eq i64 %n.vec194, %i.aa
  br label %.lr.ph32.split.us

.lr.ph32.split.us:                                ; preds = %.lr.ph32.split.us.preheader, %.loopexit.us
  %indvar188 = phi i64 [ 0, %.lr.ph32.split.us.preheader ], [ %indvar.next189, %.loopexit.us ] ; 2 uses
  %indvars.iv100 = phi i64 [ 0, %.lr.ph32.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 2 uses
  %.010731.us = phi ptr [ %.0.val, %.lr.ph32.split.us.preheader ], [ %.4.lcssa.us, %.loopexit.us ] ; 6 uses
  %.010731.us187 = ptrtoaddr ptr %.010731.us to i64
  %i.ad = mul i64 %i.z, %indvar188
  %i.ae = add i64 %i.y, %i.ad
  %i.af = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = add nsw i64 %indvars.iv100, %i.t
  %i.ai = mul i64 %i.i, %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.aj, i64 %i.n ; 5 uses
  br i1 %brmerge, label %.loopexit4.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph32.split.us
  br i1 %min.iters.check192, label %.lr.ph.us.preheader295, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.us.preheader
  %i.al = add i64 %i.ae, %.010731.us187
  %i.am = sub i64 %i.ag, %i.al
  %diff.check190 = icmp ugt i64 %i.am, -32
  br i1 %diff.check190, label %.lr.ph.us.preheader295, label %vector.ph193

vector.ph193:                                     ; preds = %vector.memcheck186
  %i.an = getelementptr i8, ptr %.010731.us, i64 %i.ab ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 %i.ab  ; 2 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ap = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %.010731.us, i64 %i.ap ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 1, !tbaa !113
  %wide.load200 = load <2 x i64>, ptr %i.aq, align 1, !tbaa !113
  %i.ar = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 1, !tbaa !113
  store <2 x i64> %wide.load200, ptr %i.ar, align 1, !tbaa !113
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.as, label %middle.block202, label %vector.body195, !llvm.loop !827

middle.block202:                                  ; preds = %vector.body195
  br i1 %cmp.n203, label %.loopexit4.us, label %.lr.ph.us.preheader295

.lr.ph.us.preheader295:                           ; preds = %vector.memcheck186, %.lr.ph.us.preheader, %middle.block202
  %.17.us.ph = phi ptr [ %.010731.us, %vector.memcheck186 ], [ %.010731.us, %.lr.ph.us.preheader ], [ %i.an, %middle.block202 ] ; 2 uses
  %.01116.us.ph = phi ptr [ %i.ak, %vector.memcheck186 ], [ %i.ak, %.lr.ph.us.preheader ], [ %i.ao, %middle.block202 ] ; 2 uses
  %.01155.us.ph = phi i32 [ 0, %vector.memcheck186 ], [ 0, %.lr.ph.us.preheader ], [ %i.ac, %middle.block202 ] ; 4 uses
  %i.at = sub i32 %4, %.01155.us.ph
  %xtraiter305 = and i32 %i.at, 7                 ; 2 uses
  %lcmp.mod306.not = icmp eq i32 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader295, %.lr.ph.us.prol
  %.17.us.prol = phi ptr [ %i.av, %.lr.ph.us.prol ], [ %.17.us.ph, %.lr.ph.us.preheader295 ] ; 2 uses
  %.01116.us.prol = phi ptr [ %i.aw, %.lr.ph.us.prol ], [ %.01116.us.ph, %.lr.ph.us.preheader295 ] ; 2 uses
  %.01155.us.prol = phi i32 [ %i.ax, %.lr.ph.us.prol ], [ %.01155.us.ph, %.lr.ph.us.preheader295 ]
  %prol.iter307 = phi i32 [ %prol.iter307.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader295 ]
  %i.au = load i64, ptr %.01116.us.prol, align 1, !tbaa !113
  store i64 %i.au, ptr %.17.us.prol, align 1, !tbaa !113
  %i.av = getelementptr inbounds nuw i8, ptr %.17.us.prol, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01116.us.prol, i64 8 ; 3 uses
  %i.ax = add nuw nsw i32 %.01155.us.prol, 1      ; 2 uses
  %prol.iter307.next = add i32 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i32 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !828

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader295
  %.lcssa297.unr = phi ptr [ poison, %.lr.ph.us.preheader295 ], [ %i.av, %.lr.ph.us.prol ]
  %.lcssa296.unr = phi ptr [ poison, %.lr.ph.us.preheader295 ], [ %i.aw, %.lr.ph.us.prol ]
  %.17.us.unr = phi ptr [ %.17.us.ph, %.lr.ph.us.preheader295 ], [ %i.av, %.lr.ph.us.prol ]
  %.01116.us.unr = phi ptr [ %.01116.us.ph, %.lr.ph.us.preheader295 ], [ %i.aw, %.lr.ph.us.prol ]
  %.01155.us.unr = phi i32 [ %.01155.us.ph, %.lr.ph.us.preheader295 ], [ %i.ax, %.lr.ph.us.prol ]
  %i.ay = sub i32 %.01155.us.ph, %4
  %i.az = icmp ugt i32 %i.ay, -8
  br i1 %i.az, label %.loopexit4.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.17.us = phi ptr [ %i.bw, %.lr.ph.us ], [ %.17.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.01116.us = phi ptr [ %i.bx, %.lr.ph.us ], [ %.01116.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.01155.us = phi i32 [ %i.by, %.lr.ph.us ], [ %.01155.us.unr, %.lr.ph.us.prol.loopexit ]
  %i.ba = load i64, ptr %.01116.us, align 1, !tbaa !113
  store i64 %i.ba, ptr %.17.us, align 1, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %.17.us, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01116.us, i64 8
  %i.bd = load i64, ptr %i.bc, align 1, !tbaa !113
  store i64 %i.bd, ptr %i.bb, align 1, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %.17.us, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.01116.us, i64 16
  %i.bg = load i64, ptr %i.bf, align 1, !tbaa !113
  store i64 %i.bg, ptr %i.be, align 1, !tbaa !113
  %i.bh = getelementptr inbounds nuw i8, ptr %.17.us, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %.01116.us, i64 24
  %i.bj = load i64, ptr %i.bi, align 1, !tbaa !113
  store i64 %i.bj, ptr %i.bh, align 1, !tbaa !113
  %i.bk = getelementptr inbounds nuw i8, ptr %.17.us, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.01116.us, i64 32
  %i.bm = load i64, ptr %i.bl, align 1, !tbaa !113
  store i64 %i.bm, ptr %i.bk, align 1, !tbaa !113
  %i.bn = getelementptr inbounds nuw i8, ptr %.17.us, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %.01116.us, i64 40
  %i.bp = load i64, ptr %i.bo, align 1, !tbaa !113
  store i64 %i.bp, ptr %i.bn, align 1, !tbaa !113
  %i.bq = getelementptr inbounds nuw i8, ptr %.17.us, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %.01116.us, i64 48
  %i.bs = load i64, ptr %i.br, align 1, !tbaa !113
  store i64 %i.bs, ptr %i.bq, align 1, !tbaa !113
  %i.bt = getelementptr inbounds nuw i8, ptr %.17.us, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %.01116.us, i64 56
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !113
  store i64 %i.bv, ptr %i.bt, align 1, !tbaa !113
  %i.bw = getelementptr inbounds nuw i8, ptr %.17.us, i64 64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01116.us, i64 64 ; 2 uses
  %i.by = add nuw nsw i32 %.01155.us, 8           ; 2 uses
  %exitcond98.not.7 = icmp eq i32 %i.by, %4
  br i1 %exitcond98.not.7, label %.loopexit4.us, label %.lr.ph.us, !llvm.loop !829

.loopexit4.us:                                    ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block202, %.lr.ph32.split.us
  %.1112.us = phi ptr [ %i.ak, %.lr.ph32.split.us ], [ %i.ao, %middle.block202 ], [ %.lcssa296.unr, %.lr.ph.us.prol.loopexit ], [ %i.bx, %.lr.ph.us ] ; 5 uses
  %.2.us = phi ptr [ %.010731.us, %.lr.ph32.split.us ], [ %i.an, %middle.block202 ], [ %.lcssa297.unr, %.lr.ph.us.prol.loopexit ], [ %i.bw, %.lr.ph.us ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.1112.us, i64 %i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1112.us, i64 %.idx ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.1112.us, i64 %.idx124 ; 2 uses
  br i1 %i.r, label %.lr.ph15.us, label %.preheader2.us

.lr.ph15.us:                                      ; preds = %.loopexit4.us, %.lr.ph15.us
  %.314.us = phi ptr [ %i.cv, %.lr.ph15.us ], [ %.2.us, %.loopexit4.us ] ; 3 uses
  %.211313.us = phi ptr [ %i.cw, %.lr.ph15.us ], [ %.1112.us, %.loopexit4.us ] ; 2 uses
  %.011612.us = phi ptr [ %i.cx, %.lr.ph15.us ], [ %i.bz, %.loopexit4.us ] ; 2 uses
  %.011811.us = phi ptr [ %i.cy, %.lr.ph15.us ], [ %i.ca, %.loopexit4.us ] ; 2 uses
  %.012010.us = phi i32 [ %i.da, %.lr.ph15.us ], [ 0, %.loopexit4.us ]
  %.01229.us = phi ptr [ %i.cz, %.lr.ph15.us ], [ %i.cb, %.loopexit4.us ] ; 2 uses
  %i.cc = load i64, ptr %.211313.us, align 1, !tbaa !113
  %i.cd = insertelement <2 x i64> poison, i64 %i.cc, i64 0
  %i.ce = load i64, ptr %.011612.us, align 1, !tbaa !113
  %i.cf = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %i.cg = load i64, ptr %.011811.us, align 1, !tbaa !113
  %i.ch = insertelement <2 x i64> poison, i64 %i.cg, i64 0
  %i.ci = load i64, ptr %.01229.us, align 1, !tbaa !113
  %i.cj = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %i.ck = bitcast <2 x i64> %i.cd to <8 x i16>
  %i.cl = bitcast <2 x i64> %i.cf to <8 x i16>
  %i.cm = shufflevector <8 x i16> %i.ck, <8 x i16> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cn = bitcast <2 x i64> %i.ch to <8 x i16>
  %i.co = bitcast <2 x i64> %i.cj to <8 x i16>
  %i.cp = shufflevector <8 x i16> %i.cn, <8 x i16> %i.co, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cq = bitcast <8 x i16> %i.cm to <4 x i32>    ; 2 uses
  %i.cr = bitcast <8 x i16> %i.cp to <4 x i32>    ; 2 uses
  %i.cs = shufflevector <4 x i32> %i.cq, <4 x i32> %i.cr, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ct = shufflevector <4 x i32> %i.cq, <4 x i32> %i.cr, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x i32> %i.cs, ptr %.314.us, align 1, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %.314.us, i64 16
  store <4 x i32> %i.ct, ptr %i.cu, align 1, !tbaa !113
  %i.cv = getelementptr inbounds nuw i8, ptr %.314.us, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL16pack_A_tile_bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %i.dc, label %.lr.ph15.us, label %.preheader2.us, !llvm.loop !830

.lr.ph28.us:                                      ; preds = %.lr.ph28.us.prol.loopexit, %.lr.ph28.us
  %.427.us = phi ptr [ %i.dw, %.lr.ph28.us ], [ %.427.us.unr, %.lr.ph28.us.prol.loopexit ] ; 9 uses
  %.311426.us = phi ptr [ %i.dx, %.lr.ph28.us ], [ %.311426.us.unr, %.lr.ph28.us.prol.loopexit ] ; 3 uses
  %.111725.us = phi ptr [ %i.dy, %.lr.ph28.us ], [ %.111725.us.unr, %.lr.ph28.us.prol.loopexit ] ; 3 uses
  %.111924.us = phi ptr [ %i.dz, %.lr.ph28.us ], [ %.111924.us.unr, %.lr.ph28.us.prol.loopexit ] ; 3 uses
  %.112123.us = phi i32 [ %i.eb, %.lr.ph28.us ], [ %.112123.us.unr, %.lr.ph28.us.prol.loopexit ]
  %.112322.us = phi ptr [ %i.ea, %.lr.ph28.us ], [ %.112322.us.unr, %.lr.ph28.us.prol.loopexit ] ; 3 uses
  %i.dd = load i16, ptr %.311426.us, align 2, !tbaa !526
  store i16 %i.dd, ptr %.427.us, align 2, !tbaa !526
  %i.de = load i16, ptr %.111725.us, align 2, !tbaa !526
  %i.df = getelementptr inbounds nuw i8, ptr %.427.us, i64 2
  store i16 %i.de, ptr %i.df, align 2, !tbaa !526
  %i.dg = load i16, ptr %.111924.us, align 2, !tbaa !526
  %i.dh = getelementptr inbounds nuw i8, ptr %.427.us, i64 4
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !526
  %i.di = load i16, ptr %.112322.us, align 2, !tbaa !526
  %i.dj = getelementptr inbounds nuw i8, ptr %.427.us, i64 6
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !526
  %i.dk = getelementptr inbounds nuw i8, ptr %.427.us, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.311426.us, i64 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.111725.us, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.111924.us, i64 2
  %i.do = getelementptr inbounds nuw i8, ptr %.112322.us, i64 2
  %i.dp = load i16, ptr %i.dl, align 2, !tbaa !526
  store i16 %i.dp, ptr %i.dk, align 2, !tbaa !526
  %i.dq = load i16, ptr %i.dm, align 2, !tbaa !526
  %i.dr = getelementptr inbounds nuw i8, ptr %.427.us, i64 10
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !526
  %i.ds = load i16, ptr %i.dn, align 2, !tbaa !526
  %i.dt = getelementptr inbounds nuw i8, ptr %.427.us, i64 12
  store i16 %i.ds, ptr %i.dt, align 2, !tbaa !526
  %i.du = load i16, ptr %i.do, align 2, !tbaa !526
  %i.dv = getelementptr inbounds nuw i8, ptr %.427.us, i64 14
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !526
  %i.dw = getelementptr inbounds nuw i8, ptr %.427.us, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.311426.us, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.111725.us, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.111924.us, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.112322.us, i64 4
  %i.eb = add nuw nsw i32 %.112123.us, 2          ; 2 uses
  %exitcond99.not.1 = icmp eq i32 %i.eb, %4
  br i1 %exitcond99.not.1, label %.loopexit.us, label %.lr.ph28.us, !llvm.loop !831

.preheader2.us:                                   ; preds = %.lr.ph15.us, %.loopexit4.us
  %.0122.lcssa.us = phi ptr [ %i.cb, %.loopexit4.us ], [ %i.cz, %.lr.ph15.us ] ; 6 uses
  %.0120.lcssa.us = phi i32 [ 0, %.loopexit4.us ], [ %i.s, %.lr.ph15.us ] ; 6 uses
  %.0118.lcssa.us = phi ptr [ %i.ca, %.loopexit4.us ], [ %i.cy, %.lr.ph15.us ] ; 6 uses
  %.0116.lcssa.us = phi ptr [ %i.bz, %.loopexit4.us ], [ %i.cx, %.lr.ph15.us ] ; 6 uses
  %.2113.lcssa.us = phi ptr [ %.1112.us, %.loopexit4.us ], [ %i.cw, %.lr.ph15.us ] ; 6 uses
  %.3.lcssa.us = phi ptr [ %.2.us, %.loopexit4.us ], [ %i.cv, %.lr.ph15.us ] ; 10 uses
  %i.ec = icmp slt i32 %.0120.lcssa.us, %4
  br i1 %i.ec, label %.lr.ph28.us.preheader, label %.loopexit.us

.lr.ph28.us.preheader:                            ; preds = %.preheader2.us
  %i.ed = xor i32 %.0120.lcssa.us, -1
  %i.ee = add i32 %4, %i.ed                       ; 2 uses
  %i.ef = zext i32 %i.ee to i64
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check163 = icmp ult i32 %i.ee, 79
  br i1 %min.iters.check163, label %.lr.ph28.us.preheader294, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph28.us.preheader
  %scevgep = getelementptr i8, ptr %.3.lcssa.us, i64 8
  %i.eh = xor i32 %.0120.lcssa.us, -1
  %i.ei = add i32 %4, %i.eh
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = shl nuw nsw i64 %i.ej, 3
  %scevgep142 = getelementptr i8, ptr %scevgep, i64 %i.ek ; 4 uses
  %scevgep143 = getelementptr i8, ptr %.0122.lcssa.us, i64 2
  %i.el = shl nuw nsw i64 %i.ej, 1                ; 4 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.el
  %scevgep145 = getelementptr i8, ptr %.0118.lcssa.us, i64 2
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.el
  %scevgep147 = getelementptr i8, ptr %.0116.lcssa.us, i64 2
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.el
  %scevgep149 = getelementptr i8, ptr %.2113.lcssa.us, i64 2
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.el
  %bound0 = icmp ult ptr %.3.lcssa.us, %scevgep144
  %bound1 = icmp ult ptr %.0122.lcssa.us, %scevgep142
  %found.conflict = and i1 %bound0, %bound1
  %bound0151 = icmp ult ptr %.3.lcssa.us, %scevgep146
  %bound1152 = icmp ult ptr %.0118.lcssa.us, %scevgep142
  %found.conflict153 = and i1 %bound0151, %bound1152
  %conflict.rdx = or i1 %found.conflict, %found.conflict153
  %bound0154 = icmp ult ptr %.3.lcssa.us, %scevgep148
  %bound1155 = icmp ult ptr %.0116.lcssa.us, %scevgep142
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %conflict.rdx, %found.conflict156
  %bound0158 = icmp ult ptr %.3.lcssa.us, %scevgep150
  %bound1159 = icmp ult ptr %.2113.lcssa.us, %scevgep142
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx157, %found.conflict160
  br i1 %conflict.rdx161, label %.lr.ph28.us.preheader294, label %vector.ph164

vector.ph164:                                     ; preds = %vector.memcheck141
  %n.vec165 = and i64 %i.eg, 8589934584           ; 5 uses
  %i.em = shl nuw nsw i64 %n.vec165, 3
  %i.en = getelementptr i8, ptr %.3.lcssa.us, i64 %i.em ; 2 uses
  %i.eo = shl nuw nsw i64 %n.vec165, 1            ; 4 uses
  %i.ep = getelementptr i8, ptr %.2113.lcssa.us, i64 %i.eo
  %i.eq = getelementptr i8, ptr %.0116.lcssa.us, i64 %i.eo
  %i.er = getelementptr i8, ptr %.0118.lcssa.us, i64 %i.eo
  %i.es = trunc i64 %n.vec165 to i32
  %i.et = add i32 %.0120.lcssa.us, %i.es
  %i.eu = getelementptr i8, ptr %.0122.lcssa.us, i64 %i.eo
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next177, %vector.body166 ] ; 3 uses
  %i.ev = shl i64 %index167, 3
  %next.gep168 = getelementptr i8, ptr %.3.lcssa.us, i64 %i.ev
  %i.ew = shl i64 %index167, 1                    ; 4 uses
  %next.gep169 = getelementptr i8, ptr %.2113.lcssa.us, i64 %i.ew
  %next.gep170 = getelementptr i8, ptr %.0116.lcssa.us, i64 %i.ew
  %next.gep171 = getelementptr i8, ptr %.0118.lcssa.us, i64 %i.ew
  %next.gep172 = getelementptr i8, ptr %.0122.lcssa.us, i64 %i.ew
  %wide.load173 = load <8 x i16>, ptr %next.gep169, align 2, !tbaa !526, !alias.scope !832
  %wide.load174 = load <8 x i16>, ptr %next.gep170, align 2, !tbaa !526, !alias.scope !835
  %wide.load175 = load <8 x i16>, ptr %next.gep171, align 2, !tbaa !526, !alias.scope !837
  %wide.load176 = load <8 x i16>, ptr %next.gep172, align 2, !tbaa !526, !alias.scope !839
  %i.ex = shufflevector <8 x i16> %wide.load173, <8 x i16> %wide.load174, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ey = shufflevector <8 x i16> %wide.load175, <8 x i16> %wide.load176, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i16> %i.ex, <16 x i16> %i.ey, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %next.gep168, align 2, !tbaa !526, !alias.scope !841, !noalias !843
  %index.next177 = add nuw i64 %index167, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next177, %n.vec165
  br i1 %i.ez, label %middle.block178, label %vector.body166, !llvm.loop !844

middle.block178:                                  ; preds = %vector.body166
  %cmp.n179 = icmp eq i64 %i.eg, %n.vec165
  br i1 %cmp.n179, label %.loopexit.us, label %.lr.ph28.us.preheader294

.lr.ph28.us.preheader294:                         ; preds = %vector.memcheck141, %.lr.ph28.us.preheader, %middle.block178
  %.427.us.ph = phi ptr [ %.3.lcssa.us, %vector.memcheck141 ], [ %.3.lcssa.us, %.lr.ph28.us.preheader ], [ %i.en, %middle.block178 ] ; 6 uses
  %.311426.us.ph = phi ptr [ %.2113.lcssa.us, %vector.memcheck141 ], [ %.2113.lcssa.us, %.lr.ph28.us.preheader ], [ %i.ep, %middle.block178 ] ; 3 uses
  %.111725.us.ph = phi ptr [ %.0116.lcssa.us, %vector.memcheck141 ], [ %.0116.lcssa.us, %.lr.ph28.us.preheader ], [ %i.eq, %middle.block178 ] ; 3 uses
  %.111924.us.ph = phi ptr [ %.0118.lcssa.us, %vector.memcheck141 ], [ %.0118.lcssa.us, %.lr.ph28.us.preheader ], [ %i.er, %middle.block178 ] ; 3 uses
  %.112123.us.ph = phi i32 [ %.0120.lcssa.us, %vector.memcheck141 ], [ %.0120.lcssa.us, %.lr.ph28.us.preheader ], [ %i.et, %middle.block178 ] ; 4 uses
  %.112322.us.ph = phi ptr [ %.0122.lcssa.us, %vector.memcheck141 ], [ %.0122.lcssa.us, %.lr.ph28.us.preheader ], [ %i.eu, %middle.block178 ] ; 3 uses
  %i.fa = sub i32 %4, %.112123.us.ph
  %.neg325 = add i32 %.112123.us.ph, 1
  %xtraiter308 = and i32 %i.fa, 1
  %lcmp.mod309.not = icmp eq i32 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.lr.ph28.us.prol.loopexit, label %.lr.ph28.us.prol

.lr.ph28.us.prol:                                 ; preds = %.lr.ph28.us.preheader294
  %i.fb = load i16, ptr %.311426.us.ph, align 2, !tbaa !526
  store i16 %i.fb, ptr %.427.us.ph, align 2, !tbaa !526
  %i.fc = load i16, ptr %.111725.us.ph, align 2, !tbaa !526
  %i.fd = getelementptr inbounds nuw i8, ptr %.427.us.ph, i64 2
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !526
  %i.fe = load i16, ptr %.111924.us.ph, align 2, !tbaa !526
  %i.ff = getelementptr inbounds nuw i8, ptr %.427.us.ph, i64 4
  store i16 %i.fe, ptr %i.ff, align 2, !tbaa !526
  %i.fg = load i16, ptr %.112322.us.ph, align 2, !tbaa !526
  %i.fh = getelementptr inbounds nuw i8, ptr %.427.us.ph, i64 6
  store i16 %i.fg, ptr %i.fh, align 2, !tbaa !526
  %i.fi = getelementptr inbounds nuw i8, ptr %.427.us.ph, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.311426.us.ph, i64 2
  %i.fk = getelementptr inbounds nuw i8, ptr %.111725.us.ph, i64 2
  %i.fl = getelementptr inbounds nuw i8, ptr %.111924.us.ph, i64 2
  %i.fm = getelementptr inbounds nuw i8, ptr %.112322.us.ph, i64 2
  %i.fn = add nuw nsw i32 %.112123.us.ph, 1
  br label %.lr.ph28.us.prol.loopexit

.lr.ph28.us.prol.loopexit:                        ; preds = %.lr.ph28.us.prol, %.lr.ph28.us.preheader294
  %.lcssa303.unr = phi ptr [ poison, %.lr.ph28.us.preheader294 ], [ %i.fi, %.lr.ph28.us.prol ]
  %.427.us.unr = phi ptr [ %.427.us.ph, %.lr.ph28.us.preheader294 ], [ %i.fi, %.lr.ph28.us.prol ]
  %.311426.us.unr = phi ptr [ %.311426.us.ph, %.lr.ph28.us.preheader294 ], [ %i.fj, %.lr.ph28.us.prol ]
  %.111725.us.unr = phi ptr [ %.111725.us.ph, %.lr.ph28.us.preheader294 ], [ %i.fk, %.lr.ph28.us.prol ]
  %.111924.us.unr = phi ptr [ %.111924.us.ph, %.lr.ph28.us.preheader294 ], [ %i.fl, %.lr.ph28.us.prol ]
  %.112123.us.unr = phi i32 [ %.112123.us.ph, %.lr.ph28.us.preheader294 ], [ %i.fn, %.lr.ph28.us.prol ]
  %.112322.us.unr = phi ptr [ %.112322.us.ph, %.lr.ph28.us.preheader294 ], [ %i.fm, %.lr.ph28.us.prol ]
  %i.fo = icmp eq i32 %4, %.neg325
  br i1 %i.fo, label %.loopexit.us, label %.lr.ph28.us

.loopexit.us:                                     ; preds = %.lr.ph28.us.prol.loopexit, %.lr.ph28.us, %middle.block178, %.preheader2.us
  %.4.lcssa.us = phi ptr [ %.3.lcssa.us, %.preheader2.us ], [ %i.en, %middle.block178 ], [ %.lcssa303.unr, %.lr.ph28.us.prol.loopexit ], [ %i.dw, %.lr.ph28.us ] ; 2 uses
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 4 ; 3 uses
  %i.fp = or disjoint i64 %indvars.iv.next101, 3
  %i.fq = icmp samesign ult i64 %i.fp, %i.u
  %indvar.next189 = add i64 %indvar188, 1
  br i1 %i.fq, label %.lr.ph32.split.us, label %.preheader1.loopexit, !llvm.loop !845

.lr.ph32.split:                                   ; preds = %.lr.ph32
  br i1 %i.o, label %.lr.ph32.split.split.preheader, label %.lr.ph32.split.split.us

.lr.ph32.split.split.preheader:                   ; preds = %.lr.ph32.split
  %i.fr = and i32 %2, 2147483644
  br label %.preheader1

.lr.ph32.split.split.us:                          ; preds = %.lr.ph32.split
  br i1 %i.p, label %.preheader3.us42.preheader, label %.preheader3.us42.us.preheader

.preheader3.us42.us.preheader:                    ; preds = %.lr.ph32.split.split.us
  %i.fs = sext i32 %1 to i64                      ; 2 uses
  %i.ft = zext nneg i32 %2 to i64
  %i.fu = mul i64 %i.i, %i.fs
  %5 = mul i64 %i.fu, -2
  %i.fv = shl nsw i64 %i.n, 1
  %6 = sub i64 %5, %i.fv
  %7 = mul i64 %i.i, -8
  %i.fw = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 6
  %n.vec = and i64 %i.fw, 2147483644              ; 4 uses
  %i.fx = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.fy = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.fw
  br label %.preheader3.us42.us

.preheader3.us42.preheader:                       ; preds = %.lr.ph32.split.split.us
  %i.fz = and i32 %2, 2147483644
  br label %.preheader1

.preheader3.us42.us:                              ; preds = %.preheader3.us42.us.preheader, %..loopexit4_crit_edge.us46.us
  %indvar = phi i64 [ 0, %.preheader3.us42.us.preheader ], [ %indvar.next, %..loopexit4_crit_edge.us46.us ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader3.us42.us.preheader ], [ %indvars.iv.next, %..loopexit4_crit_edge.us46.us ] ; 2 uses
  %.010731.us36.us = phi ptr [ %.0.val, %.preheader3.us42.us.preheader ], [ %.lcssa135, %..loopexit4_crit_edge.us46.us ] ; 5 uses
  %i.ga = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.gb = add nsw i64 %indvars.iv, %i.fs
  %i.gc = mul i64 %i.i, %i.gb
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.gc
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.gd, i64 %i.n ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader3.us42.us
  %i.gf = ptrtoaddr ptr %i.ga to i64
  %i.gg = mul i64 %7, %indvar
  %i.gh = add i64 %6, %i.gg
  %.010731.us36.us136 = ptrtoaddr ptr %.010731.us36.us to i64
  %i.gi = add i64 %i.gh, %.010731.us36.us136
  %i.gj = sub i64 %i.gf, %i.gi
  %diff.check = icmp ugt i64 %i.gj, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gk = getelementptr i8, ptr %.010731.us36.us, i64 %i.fx ; 2 uses
  %i.gl = getelementptr i8, ptr %i.ge, i64 %i.fx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.010731.us36.us, i64 %i.gm ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.ge, i64 %i.gm ; 2 uses
  %i.gn = getelementptr i8, ptr %next.gep137, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep137, align 1, !tbaa !113
  %wide.load138 = load <2 x i64>, ptr %i.gn, align 1, !tbaa !113
  %i.go = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1, !tbaa !113
  store <2 x i64> %wide.load138, ptr %i.go, align 1, !tbaa !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gp = icmp eq i64 %index.next, %n.vec
  br i1 %i.gp, label %middle.block, label %vector.body, !llvm.loop !846

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit4_crit_edge.us46.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader3.us42.us, %middle.block
  %.17.us38.us.ph = phi ptr [ %.010731.us36.us, %vector.memcheck ], [ %.010731.us36.us, %.preheader3.us42.us ], [ %i.gk, %middle.block ] ; 2 uses
  %.01116.us39.us.ph = phi ptr [ %i.ge, %vector.memcheck ], [ %i.ge, %.preheader3.us42.us ], [ %i.gl, %middle.block ] ; 2 uses
  %.01155.us40.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader3.us42.us ], [ %i.fy, %middle.block ] ; 4 uses
  %i.gq = sub i32 %4, %.01155.us40.us.ph
  %xtraiter = and i32 %i.gq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.17.us38.us.prol = phi ptr [ %i.gs, %scalar.ph.prol ], [ %.17.us38.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.01116.us39.us.prol = phi ptr [ %i.gt, %scalar.ph.prol ], [ %.01116.us39.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.01155.us40.us.prol = phi i32 [ %i.gu, %scalar.ph.prol ], [ %.01155.us40.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gr = load i64, ptr %.01116.us39.us.prol, align 1, !tbaa !113
  store i64 %i.gr, ptr %.17.us38.us.prol, align 1, !tbaa !113
  %i.gs = getelementptr inbounds nuw i8, ptr %.17.us38.us.prol, i64 8 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.01116.us39.us.prol, i64 8 ; 2 uses
  %i.gu = add nuw nsw i32 %.01155.us40.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !847

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa304.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.gs, %scalar.ph.prol ]
  %.17.us38.us.unr = phi ptr [ %.17.us38.us.ph, %scalar.ph.preheader ], [ %i.gs, %scalar.ph.prol ]
  %.01116.us39.us.unr = phi ptr [ %.01116.us39.us.ph, %scalar.ph.preheader ], [ %i.gt, %scalar.ph.prol ]
  %.01155.us40.us.unr = phi i32 [ %.01155.us40.us.ph, %scalar.ph.preheader ], [ %i.gu, %scalar.ph.prol ]
  %i.gv = sub i32 %.01155.us40.us.ph, %4
  %i.gw = icmp ugt i32 %i.gv, -8
  br i1 %i.gw, label %..loopexit4_crit_edge.us46.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.17.us38.us = phi ptr [ %i.ht, %scalar.ph ], [ %.17.us38.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01116.us39.us = phi ptr [ %i.hu, %scalar.ph ], [ %.01116.us39.us.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.01155.us40.us = phi i32 [ %i.hv, %scalar.ph ], [ %.01155.us40.us.unr, %scalar.ph.prol.loopexit ]
  %i.gx = load i64, ptr %.01116.us39.us, align 1, !tbaa !113
  store i64 %i.gx, ptr %.17.us38.us, align 1, !tbaa !113
  %i.gy = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 8
  %i.ha = load i64, ptr %i.gz, align 1, !tbaa !113
  store i64 %i.ha, ptr %i.gy, align 1, !tbaa !113
  %i.hb = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 16
  %i.hd = load i64, ptr %i.hc, align 1, !tbaa !113
  store i64 %i.hd, ptr %i.hb, align 1, !tbaa !113
  %i.he = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 24
  %i.hg = load i64, ptr %i.hf, align 1, !tbaa !113
  store i64 %i.hg, ptr %i.he, align 1, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 32
  %i.hj = load i64, ptr %i.hi, align 1, !tbaa !113
  store i64 %i.hj, ptr %i.hh, align 1, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 40
  %i.hl = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 40
  %i.hm = load i64, ptr %i.hl, align 1, !tbaa !113
  store i64 %i.hm, ptr %i.hk, align 1, !tbaa !113
  %i.hn = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 48
  %i.hp = load i64, ptr %i.ho, align 1, !tbaa !113
  store i64 %i.hp, ptr %i.hn, align 1, !tbaa !113
  %i.hq = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 56
  %i.hr = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 56
  %i.hs = load i64, ptr %i.hr, align 1, !tbaa !113
  store i64 %i.hs, ptr %i.hq, align 1, !tbaa !113
  %i.ht = getelementptr inbounds nuw i8, ptr %.17.us38.us, i64 64 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.01116.us39.us, i64 64
  %i.hv = add nuw nsw i32 %.01155.us40.us, 8      ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.hv, %4
  br i1 %exitcond.not.7, label %..loopexit4_crit_edge.us46.us, label %scalar.ph, !llvm.loop !848

..loopexit4_crit_edge.us46.us:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa135 = phi ptr [ %i.gk, %middle.block ], [ %.lcssa304.unr, %scalar.ph.prol.loopexit ], [ %i.ht, %scalar.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.hw = or disjoint i64 %indvars.iv.next, 3
  %i.hx = icmp samesign ult i64 %i.hw, %i.ft
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hx, label %.preheader3.us42.us, label %.preheader1.loopexit79, !llvm.loop !845

.preheader1.loopexit:                             ; preds = %.loopexit.us
  %i.hy = trunc nuw nsw i64 %indvars.iv.next101 to i32
  br label %.preheader1

.preheader1.loopexit79:                           ; preds = %..loopexit4_crit_edge.us46.us
  %i.hz = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit79, %.preheader3.us42.preheader, %.lr.ph32.split.split.preheader, %.preheader1.loopexit, %bb.a
  %.0108.lcssa = phi i32 [ 0, %bb.a ], [ %i.hy, %.preheader1.loopexit ], [ %i.fr, %.lr.ph32.split.split.preheader ], [ %i.fz, %.preheader3.us42.preheader ], [ %i.hz, %.preheader1.loopexit79 ] ; 6 uses
  %.0107.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.4.lcssa.us, %.preheader1.loopexit ], [ %.0.val, %.lr.ph32.split.split.preheader ], [ %.0.val, %.preheader3.us42.preheader ], [ %.lcssa135, %.preheader1.loopexit79 ] ; 3 uses
  %i.ia = or disjoint i32 %.0108.lcssa, 1
  %i.ib = icmp slt i32 %i.ia, %2
  br i1 %i.ib, label %.lr.ph60, label %.preheader

.lr.ph60:                                         ; preds = %.preheader1
  %i.ic = load ptr, ptr %0, align 8, !tbaa !18    ; 5 uses
  %i.id = sext i32 %3 to i64                      ; 3 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ic, i64 %i.id
  %i.ie = icmp sgt i32 %4, 0
  br i1 %i.ie, label %.lr.ph.us63.preheader, label %.lr.ph60.split.preheader

.lr.ph60.split.preheader:                         ; preds = %.lr.ph60
  %i.if = add i32 %.0108.lcssa, 3
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.if)
  %i.ig = add i32 %smax, -2
  %i.ih = sub i32 %i.ig, %.0108.lcssa
  %i.ii = and i32 %i.ih, -2
  %i.ij = add i32 %.0108.lcssa, %i.ii
  %i.ik = add i32 %i.ij, 2
  br label %.preheader

.lr.ph.us63.preheader:                            ; preds = %.lr.ph60
  %i.il = sext i32 %.0108.lcssa to i64            ; 4 uses
  %i.im = sext i32 %1 to i64                      ; 2 uses
  %i.in = sext i32 %2 to i64
  %invariant.op = add nsw i64 %i.in, -1           ; 2 uses
  %i.io = add nsw i32 %4, -1
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = shl nuw nsw i64 %i.ip, 2
  %i.ir = add nsw i64 %i.il, %i.im                ; 2 uses
  %i.is = shl nsw i64 %i.ir, 1                    ; 3 uses
  %i.it = add nsw i64 %i.is, 2
  %i.iu = mul i64 %i.i, %i.it
  %i.iv = shl nsw i64 %i.id, 1                    ; 3 uses
  %i.iw = getelementptr i8, ptr %i.ic, i64 %i.iu
  %scevgep209 = getelementptr i8, ptr %i.iw, i64 %i.iv
  %i.ix = add nsw i64 %i.il, 2
  %smax210 = tail call i64 @llvm.smax.i64(i64 %invariant.op, i64 %i.ix)
  %i.iy = xor i64 %i.il, -1
  %i.iz = add i64 %smax210, %i.iy
  %i.ja = shl i64 %i.iz, 1
  %i.jb = and i64 %i.ja, -4                       ; 2 uses
  %i.jc = add i64 %i.jb, %i.is
  %i.jd = add i64 %i.jc, 2
  %i.je = mul i64 %i.i, %i.jd
  %i.jf = shl nuw nsw i64 %i.ip, 1                ; 2 uses
  %i.jg = getelementptr i8, ptr %i.ic, i64 %i.je
  %i.jh = getelementptr i8, ptr %i.jg, i64 %i.iv
  %i.ji = getelementptr i8, ptr %i.jh, i64 %i.jf
  %scevgep211 = getelementptr i8, ptr %i.ji, i64 2
  %i.jj = mul i64 %i.i, %i.ir
  %i.jk = add i64 %i.jj, %i.id
  %i.jl = shl i64 %i.jk, 1
  %scevgep212 = getelementptr i8, ptr %i.ic, i64 %i.jl
  %i.jm = add i64 %i.jb, %i.is
  %i.jn = mul i64 %i.i, %i.jm
  %i.jo = getelementptr i8, ptr %i.ic, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.jo, i64 %i.iv
  %i.jq = getelementptr i8, ptr %i.jp, i64 %i.jf
  %scevgep213 = getelementptr i8, ptr %i.jq, i64 2
  %i.jr = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check223 = icmp ult i32 %4, 12
  %.mask = and i64 %i.i, 2305843009213693952
  %stride.check220 = icmp ne i64 %.mask, 0
  %n.vec225 = and i64 %i.jr, 2147483640           ; 5 uses
  %i.js = trunc nuw nsw i64 %n.vec225 to i32
  %i.jt = shl nuw nsw i64 %n.vec225, 1            ; 2 uses
  %i.ju = shl nuw nsw i64 %n.vec225, 2
  %cmp.n240 = icmp eq i64 %n.vec225, %i.jr
  br label %.lr.ph.us63

.lr.ph.us63:                                      ; preds = %.lr.ph.us63.preheader, %._crit_edge.us
  %indvars.iv104 = phi i64 [ %i.il, %.lr.ph.us63.preheader ], [ %indvars.iv.next105, %._crit_edge.us ] ; 2 uses
  %.659.us = phi ptr [ %.0107.lcssa, %.lr.ph.us63.preheader ], [ %.lcssa126, %._crit_edge.us ] ; 8 uses
  %i.jv = add nsw i64 %indvars.iv104, %i.im
  %i.jw = mul i64 %i.i, %i.jv
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.jw ; 5 uses
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %gep.us, i64 %i.i ; 4 uses
  br i1 %min.iters.check223, label %scalar.ph222.preheader, label %vector.memcheck207

vector.memcheck207:                               ; preds = %.lr.ph.us63
  %i.jy = getelementptr i8, ptr %.659.us, i64 %i.iq
  %scevgep208 = getelementptr i8, ptr %i.jy, i64 4 ; 2 uses
end_hunk_1
