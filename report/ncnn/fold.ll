loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK4ncnn4Fold7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %i.dl = mul i64 %factor.op.mul85, %i.dk
  %scevgep124 = getelementptr i8, ptr %i.y, i64 %i.dl
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124, i8 0, i64 %i.bk, i1 false), !tbaa !68
  %indvar.next123 = or disjoint i64 %indvar122, 1
  %i.dm = add nsw i64 %indvar.next123, %i.bi
  %i.dn = mul i64 %factor.op.mul85, %i.dm
  %scevgep124.1 = getelementptr i8, ptr %i.y, i64 %i.dn
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124.1, i8 0, i64 %i.bk, i1 false), !tbaa !68
  %indvar.next123.1 = or disjoint i64 %indvar122, 2
  %i.do = add nsw i64 %indvar.next123.1, %i.bi
  %i.dp = mul i64 %factor.op.mul85, %i.do
  %scevgep124.2 = getelementptr i8, ptr %i.y, i64 %i.dp
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124.2, i8 0, i64 %i.bk, i1 false), !tbaa !68
  %indvar.next123.2 = or disjoint i64 %indvar122, 3
  %i.dq = add nsw i64 %indvar.next123.2, %i.bi
  %i.dr = mul i64 %factor.op.mul85, %i.dq
  %scevgep124.3 = getelementptr i8, ptr %i.y, i64 %i.dr
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124.3, i8 0, i64 %i.bk, i1 false), !tbaa !68
  br label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3

_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3:    ; preds = %.noexc.us.us.us, %.lr.ph.us.us.us.preheader
  %indvar.next123.3 = add nuw nsw i64 %indvar122, 4 ; 2 uses
  %niter194.next.3 = add i32 %niter194, 4         ; 2 uses
  %niter194.ncmp.3 = icmp eq i32 %niter194.next.3, %unroll_iter193
  br i1 %niter194.ncmp.3, label %._crit_edge.loopexit166.unr-lcssa, label %.noexc.us.us.us

.noexc.lr.ph.split.us.split.us.split:             ; preds = %.noexc.lr.ph.split.us.split.us
  br i1 %i.ap, label %.noexc.us.us.us97.preheader, label %._crit_edge

.noexc.us.us.us97.preheader:                      ; preds = %.noexc.lr.ph.split.us.split.us.split
  %i.ds = sext i32 %i.k to i64                    ; 5 uses
  %i.dt = zext nneg i32 %i.ao to i64
  %i.du = shl nuw nsw i64 %i.dt, 2                ; 5 uses
  %i.dv = add nsw i32 %i.j, 1
  %i.dw = sub i32 %i.dv, %i.k                     ; 2 uses
  %i.dx = sub i32 %i.j, %i.k
  %xtraiter181 = and i32 %i.dw, 3                 ; 3 uses
  %i.dy = icmp ult i32 %i.dx, 3
  br i1 %i.dy, label %.noexc.us.us.us97.epil.preheader, label %.noexc.us.us.us97.preheader.new

.noexc.us.us.us97.preheader.new:                  ; preds = %.noexc.us.us.us97.preheader
  %unroll_iter185 = and i32 %i.dw, -4
  br label %.noexc.us.us.us97

.noexc.us.us.us97:                                ; preds = %.noexc.us.us.us97, %.noexc.us.us.us97.preheader.new
  %indvar117 = phi i64 [ 0, %.noexc.us.us.us97.preheader.new ], [ %indvar.next118.3, %.noexc.us.us.us97 ] ; 5 uses
  %niter186 = phi i32 [ 0, %.noexc.us.us.us97.preheader.new ], [ %niter186.next.3, %.noexc.us.us.us97 ]
  %i.dz = add nsw i64 %indvar117, %i.ds
  %i.ea = mul i64 %factor.op.mul85, %i.dz
  %scevgep119 = getelementptr i8, ptr %i.y, i64 %i.ea
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119, i8 0, i64 %i.du, i1 false), !tbaa !68
  %indvar.next118 = or disjoint i64 %indvar117, 1
  %i.eb = add nsw i64 %indvar.next118, %i.ds
  %i.ec = mul i64 %factor.op.mul85, %i.eb
  %scevgep119.1 = getelementptr i8, ptr %i.y, i64 %i.ec
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119.1, i8 0, i64 %i.du, i1 false), !tbaa !68
  %indvar.next118.1 = or disjoint i64 %indvar117, 2
  %i.ed = add nsw i64 %indvar.next118.1, %i.ds
  %i.ee = mul i64 %factor.op.mul85, %i.ed
  %scevgep119.2 = getelementptr i8, ptr %i.y, i64 %i.ee
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119.2, i8 0, i64 %i.du, i1 false), !tbaa !68
  %indvar.next118.2 = or disjoint i64 %indvar117, 3
  %i.ef = add nsw i64 %indvar.next118.2, %i.ds
  %i.eg = mul i64 %factor.op.mul85, %i.ef
  %scevgep119.3 = getelementptr i8, ptr %i.y, i64 %i.eg
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119.3, i8 0, i64 %i.du, i1 false), !tbaa !68
  %indvar.next118.3 = add nuw nsw i64 %indvar117, 4 ; 2 uses
  %niter186.next.3 = add i32 %niter186, 4         ; 2 uses
  %niter186.ncmp.3 = icmp eq i32 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %._crit_edge.loopexit167.unr-lcssa, label %.noexc.us.us.us97

.noexc.lr.ph.split.us.split:                      ; preds = %.noexc.lr.ph.split.us
  br i1 %i.ap, label %.noexc.us.preheader, label %._crit_edge

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us.split
  %i.eh = sext i32 %i.k to i64                    ; 5 uses
  %i.ei = zext nneg i32 %i.ao to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2                ; 5 uses
  %i.ek = add nsw i32 %i.j, 1
  %i.el = sub i32 %i.ek, %i.k                     ; 2 uses
  %i.em = sub i32 %i.j, %i.k
  %xtraiter173 = and i32 %i.el, 3                 ; 3 uses
  %i.en = icmp ult i32 %i.em, 3
  br i1 %i.en, label %.noexc.us.epil.preheader, label %.noexc.us.preheader.new

.noexc.us.preheader.new:                          ; preds = %.noexc.us.preheader
  %unroll_iter177 = and i32 %i.el, -4
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us, %.noexc.us.preheader.new
  %indvar112 = phi i64 [ 0, %.noexc.us.preheader.new ], [ %indvar.next113.3, %.noexc.us ] ; 5 uses
  %niter178 = phi i32 [ 0, %.noexc.us.preheader.new ], [ %niter178.next.3, %.noexc.us ]
  %i.eo = add nsw i64 %indvar112, %i.eh
  %i.ep = mul i64 %factor.op.mul85, %i.eo
  %scevgep114 = getelementptr i8, ptr %i.y, i64 %i.ep
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114, i8 0, i64 %i.ej, i1 false), !tbaa !68
  %indvar.next113 = or disjoint i64 %indvar112, 1
  %i.eq = add nsw i64 %indvar.next113, %i.eh
  %i.er = mul i64 %factor.op.mul85, %i.eq
  %scevgep114.1 = getelementptr i8, ptr %i.y, i64 %i.er
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114.1, i8 0, i64 %i.ej, i1 false), !tbaa !68
  %indvar.next113.1 = or disjoint i64 %indvar112, 2
  %i.es = add nsw i64 %indvar.next113.1, %i.eh
  %i.et = mul i64 %factor.op.mul85, %i.es
  %scevgep114.2 = getelementptr i8, ptr %i.y, i64 %i.et
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114.2, i8 0, i64 %i.ej, i1 false), !tbaa !68
  %indvar.next113.2 = or disjoint i64 %indvar112, 3
  %i.eu = add nsw i64 %indvar.next113.2, %i.eh
  %i.ev = mul i64 %factor.op.mul85, %i.eu
  %scevgep114.3 = getelementptr i8, ptr %i.y, i64 %i.ev
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114.3, i8 0, i64 %i.ej, i1 false), !tbaa !68
  %indvar.next113.3 = add nuw nsw i64 %indvar112, 4 ; 2 uses
  %niter178.next.3 = add i32 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i32 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %._crit_edge.loopexit168.unr-lcssa, label %.noexc.us

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  br i1 %i.ap, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split
  %i.ew = sext i32 %i.k to i64                    ; 5 uses
  %i.ex = zext nneg i32 %i.ao to i64
  %i.ey = shl nuw nsw i64 %i.ex, 2                ; 5 uses
  %i.ez = add nsw i32 %i.j, 1
  %i.fa = sub i32 %i.ez, %i.k                     ; 2 uses
  %i.fb = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.fa, 3                    ; 3 uses
  %i.fc = icmp ult i32 %i.fb, 3
  br i1 %i.fc, label %.noexc.epil.preheader, label %.noexc.preheader.new

.noexc.preheader.new:                             ; preds = %.noexc.preheader
  %unroll_iter = and i32 %i.fa, -4
  br label %.noexc

.noexc:                                           ; preds = %.noexc, %.noexc.preheader.new
  %indvar = phi i64 [ 0, %.noexc.preheader.new ], [ %indvar.next.3, %.noexc ] ; 5 uses
  %niter = phi i32 [ 0, %.noexc.preheader.new ], [ %niter.next.3, %.noexc ]
  %i.fd = add nsw i64 %indvar, %i.ew
  %i.fe = mul i64 %factor.op.mul85, %i.fd
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.fe
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ey, i1 false), !tbaa !68
  %indvar.next = or disjoint i64 %indvar, 1
  %i.ff = add nsw i64 %indvar.next, %i.ew
  %i.fg = mul i64 %factor.op.mul85, %i.ff
  %scevgep.1 = getelementptr i8, ptr %i.y, i64 %i.fg
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.ey, i1 false), !tbaa !68
  %indvar.next.1 = or disjoint i64 %indvar, 2
  %i.fh = add nsw i64 %indvar.next.1, %i.ew
  %i.fi = mul i64 %factor.op.mul85, %i.fh
  %scevgep.2 = getelementptr i8, ptr %i.y, i64 %i.fi
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.ey, i1 false), !tbaa !68
  %indvar.next.2 = or disjoint i64 %indvar, 3
  %i.fj = add nsw i64 %indvar.next.2, %i.ew
  %i.fk = mul i64 %factor.op.mul85, %i.fj
  %scevgep.3 = getelementptr i8, ptr %i.y, i64 %i.fk
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.ey, i1 false), !tbaa !68
  %indvar.next.3 = add nuw nsw i64 %indvar, 4     ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit169.unr-lcssa, label %.noexc

._crit_edge.loopexit166.unr-lcssa:                ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.3
  %lcmp.mod191.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %._crit_edge, label %.noexc.us.us.us.epil.preheader

.noexc.us.us.us.epil.preheader:                   ; preds = %._crit_edge.loopexit166.unr-lcssa, %.noexc.us.us.us.preheader
  %indvar122.epil.init = phi i64 [ 0, %.noexc.us.us.us.preheader ], [ %indvar.next123.3, %._crit_edge.loopexit166.unr-lcssa ]
  %lcmp.mod192 = icmp ne i32 %xtraiter189, 0
  call void @llvm.assume(i1 %lcmp.mod192)
  br label %.noexc.us.us.us.epil

.noexc.us.us.us.epil:                             ; preds = %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil, %.noexc.us.us.us.epil.preheader
  %indvar122.epil = phi i64 [ %indvar122.epil.init, %.noexc.us.us.us.epil.preheader ], [ %indvar.next123.epil, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil ] ; 2 uses
  %epil.iter190 = phi i32 [ 0, %.noexc.us.us.us.epil.preheader ], [ %epil.iter190.next, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil ]
  br i1 %i.ap, label %.lr.ph.us.us.us.preheader.epil, label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil

.lr.ph.us.us.us.preheader.epil:                   ; preds = %.noexc.us.us.us.epil
  %i.fl = add i64 %indvar122.epil, %i.bi
  %i.fm = mul i64 %factor.op.mul85, %i.fl
  %scevgep124.epil = getelementptr i8, ptr %i.y, i64 %i.fm
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep124.epil, i8 0, i64 %i.bk, i1 false), !tbaa !68
  br label %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil

_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil: ; preds = %.lr.ph.us.us.us.preheader.epil, %.noexc.us.us.us.epil
  %indvar.next123.epil = add nuw nsw i64 %indvar122.epil, 1
  %epil.iter190.next = add i32 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i32 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %._crit_edge, label %.noexc.us.us.us.epil, !llvm.loop !77

._crit_edge.loopexit167.unr-lcssa:                ; preds = %.noexc.us.us.us97
  %lcmp.mod183.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %._crit_edge, label %.noexc.us.us.us97.epil.preheader

.noexc.us.us.us97.epil.preheader:                 ; preds = %._crit_edge.loopexit167.unr-lcssa, %.noexc.us.us.us97.preheader
  %indvar117.epil.init = phi i64 [ 0, %.noexc.us.us.us97.preheader ], [ %indvar.next118.3, %._crit_edge.loopexit167.unr-lcssa ]
  %lcmp.mod184 = icmp ne i32 %xtraiter181, 0
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %.noexc.us.us.us97.epil

.noexc.us.us.us97.epil:                           ; preds = %.noexc.us.us.us97.epil, %.noexc.us.us.us97.epil.preheader
  %indvar117.epil = phi i64 [ %indvar117.epil.init, %.noexc.us.us.us97.epil.preheader ], [ %indvar.next118.epil, %.noexc.us.us.us97.epil ] ; 2 uses
  %epil.iter182 = phi i32 [ 0, %.noexc.us.us.us97.epil.preheader ], [ %epil.iter182.next, %.noexc.us.us.us97.epil ]
  %i.fn = add i64 %indvar117.epil, %i.ds
  %i.fo = mul i64 %factor.op.mul85, %i.fn
  %scevgep119.epil = getelementptr i8, ptr %i.y, i64 %i.fo
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep119.epil, i8 0, i64 %i.du, i1 false), !tbaa !68
  %indvar.next118.epil = add nuw nsw i64 %indvar117.epil, 1
  %epil.iter182.next = add i32 %epil.iter182, 1   ; 2 uses
  %epil.iter182.cmp.not = icmp eq i32 %epil.iter182.next, %xtraiter181
  br i1 %epil.iter182.cmp.not, label %._crit_edge, label %.noexc.us.us.us97.epil, !llvm.loop !78

._crit_edge.loopexit168.unr-lcssa:                ; preds = %.noexc.us
  %lcmp.mod175.not = icmp eq i32 %xtraiter173, 0
  br i1 %lcmp.mod175.not, label %._crit_edge, label %.noexc.us.epil.preheader

.noexc.us.epil.preheader:                         ; preds = %._crit_edge.loopexit168.unr-lcssa, %.noexc.us.preheader
  %indvar112.epil.init = phi i64 [ 0, %.noexc.us.preheader ], [ %indvar.next113.3, %._crit_edge.loopexit168.unr-lcssa ]
  %lcmp.mod176 = icmp ne i32 %xtraiter173, 0
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %.noexc.us.epil

.noexc.us.epil:                                   ; preds = %.noexc.us.epil, %.noexc.us.epil.preheader
  %indvar112.epil = phi i64 [ %indvar112.epil.init, %.noexc.us.epil.preheader ], [ %indvar.next113.epil, %.noexc.us.epil ] ; 2 uses
  %epil.iter174 = phi i32 [ 0, %.noexc.us.epil.preheader ], [ %epil.iter174.next, %.noexc.us.epil ]
  %i.fp = add i64 %indvar112.epil, %i.eh
  %i.fq = mul i64 %factor.op.mul85, %i.fp
  %scevgep114.epil = getelementptr i8, ptr %i.y, i64 %i.fq
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep114.epil, i8 0, i64 %i.ej, i1 false), !tbaa !68
  %indvar.next113.epil = add nuw nsw i64 %indvar112.epil, 1
  %epil.iter174.next = add i32 %epil.iter174, 1   ; 2 uses
  %epil.iter174.cmp.not = icmp eq i32 %epil.iter174.next, %xtraiter173
  br i1 %epil.iter174.cmp.not, label %._crit_edge, label %.noexc.us.epil, !llvm.loop !79

._crit_edge.loopexit169.unr-lcssa:                ; preds = %.noexc
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.noexc.epil.preheader

.noexc.epil.preheader:                            ; preds = %._crit_edge.loopexit169.unr-lcssa, %.noexc.preheader
  %indvar.epil.init = phi i64 [ 0, %.noexc.preheader ], [ %indvar.next.3, %._crit_edge.loopexit169.unr-lcssa ]
  %lcmp.mod170 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.noexc.epil

.noexc.epil:                                      ; preds = %.noexc.epil, %.noexc.epil.preheader
  %indvar.epil = phi i64 [ %indvar.epil.init, %.noexc.epil.preheader ], [ %indvar.next.epil, %.noexc.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.noexc.epil.preheader ], [ %epil.iter.next, %.noexc.epil ]
  %i.fr = add i64 %indvar.epil, %i.ew
  %i.fs = mul i64 %factor.op.mul85, %i.fr
  %scevgep.epil = getelementptr i8, ptr %i.y, i64 %i.fs
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.epil, i8 0, i64 %i.ey, i1 false), !tbaa !68
  %indvar.next.epil = add nuw nsw i64 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.noexc.epil, !llvm.loop !80

._crit_edge:                                      ; preds = %._crit_edge.loopexit169.unr-lcssa, %.noexc.epil, %._crit_edge.loopexit168.unr-lcssa, %.noexc.us.epil, %._crit_edge.loopexit167.unr-lcssa, %.noexc.us.us.us97.epil, %._crit_edge.loopexit166.unr-lcssa, %_ZN4ncnn3Mat4fillEf.exit.preheader.us.us.us.epil, %_ZN4ncnn3Mat4fillEf.exit._ZN4ncnn3MatD2Ev.exit_crit_edge.split82.us.split.us.us.us.us.us, %.noexc.lr.ph.split.us.split.us.split, %.noexc.lr.ph.split.us.split, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !81 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN4ncnn15copy_cut_borderERKNS_3MatERS0_iiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 208}
!10 = !{!"_ZTSN4ncnn4FoldE", !11, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252}
!11 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !18, i64 112, !18, i64 136, !23, i64 160, !23, i64 184}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!28 = !{!10, !6, i64 212}
!29 = !{!10, !6, i64 216}
!30 = !{!10, !6, i64 220}
!31 = !{!10, !6, i64 224}
!32 = !{!10, !6, i64 228}
!33 = !{!10, !6, i64 232}
!34 = !{!10, !6, i64 236}
!35 = !{!10, !6, i64 240}
!36 = !{!10, !6, i64 244}
!37 = !{!10, !6, i64 248}
!38 = !{!10, !6, i64 252}
!39 = !{!40, !6, i64 48}
!40 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !41, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!41 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!42 = !{!40, !17, i64 16}
!43 = !{!6, !6, i64 0}
!44 = !{!40, !17, i64 64}
!45 = !{!40, !22, i64 8}
!46 = !{!40, !41, i64 32}
!47 = !{!40, !13, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !8, i64 0}
!50 = distinct !{null}
!51 = !{!13, !13, i64 0}
!52 = !{!40, !6, i64 24}
!53 = !{!40, !6, i64 56}
!54 = !{!41, !41, i64 0}
!55 = !{!56, !6, i64 4}
!56 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !41, i64 8, !41, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!57 = !{i64 0, i64 1, !58, i64 1, i64 1, !58, i64 2, i64 1, !58, i64 3, i64 1, !58, i64 4, i64 4, !43, i64 8, i64 8, !54, i64 16, i64 8, !54, i64 24, i64 4, !43, i64 28, i64 1, !58, i64 29, i64 1, !58, i64 30, i64 1, !58, i64 31, i64 1, !58, i64 32, i64 1, !58, i64 33, i64 1, !58, i64 34, i64 1, !58, i64 35, i64 1, !58, i64 36, i64 1, !58, i64 37, i64 1, !58, i64 38, i64 1, !58, i64 39, i64 1, !58, i64 40, i64 4, !43, i64 44, i64 1, !58, i64 45, i64 1, !58, i64 46, i64 1, !58, i64 47, i64 1, !58, i64 48, i64 1, !59, i64 49, i64 1, !58, i64 50, i64 1, !58, i64 51, i64 1, !58, i64 52, i64 1, !58, i64 53, i64 1, !58, i64 54, i64 1, !58, i64 55, i64 1, !58, i64 56, i64 1, !58, i64 57, i64 1, !58, i64 58, i64 1, !58, i64 59, i64 1, !58, i64 60, i64 1, !58, i64 61, i64 1, !58, i64 62, i64 1, !58, i64 63, i64 1, !58}
!58 = !{!12, !12, i64 0}
!59 = !{!7, !7, i64 0}
!60 = !{!56, !12, i64 39}
!61 = !{!11, !12, i64 8}
!62 = !{!40, !6, i64 44}
end_hunk_0
