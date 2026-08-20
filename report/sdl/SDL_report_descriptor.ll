inline.NumInlined: 63
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@SDL_ParseReportDescriptor:bb.a

.lr.ph.i97.i.i.epil.preheader:                    ; preds = %ParseGlobalItem.exit.i.loopexit154.unr-lcssa, %.lr.ph.i97.i.i.preheader
  %.012.i98.i.i.epil.init = phi i32 [ 0, %.lr.ph.i97.i.i.preheader ], [ %i.ey, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ]
  %.0511.i99.i.i.epil.init = phi i32 [ 0, %.lr.ph.i97.i.i.preheader ], [ %i.ex, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ]
  %.079.i101.i.i.epil.init = phi ptr [ %i.d, %.lr.ph.i97.i.i.preheader ], [ %i.et, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ]
  %lcmp.mod192 = icmp ne i32 %i.g, 3
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i97.i.i.epil

.lr.ph.i97.i.i.epil:                              ; preds = %.lr.ph.i97.i.i.epil, %.lr.ph.i97.i.i.epil.preheader
  %.012.i98.i.i.epil = phi i32 [ %i.jp, %.lr.ph.i97.i.i.epil ], [ %.012.i98.i.i.epil.init, %.lr.ph.i97.i.i.epil.preheader ] ; 2 uses
  %.0511.i99.i.i.epil = phi i32 [ %i.jo, %.lr.ph.i97.i.i.epil ], [ %.0511.i99.i.i.epil.init, %.lr.ph.i97.i.i.epil.preheader ]
  %.079.i101.i.i.epil = phi ptr [ %i.jk, %.lr.ph.i97.i.i.epil ], [ %.079.i101.i.i.epil.init, %.lr.ph.i97.i.i.epil.preheader ] ; 2 uses
  %epil.iter189 = phi i32 [ %epil.iter189.next, %.lr.ph.i97.i.i.epil ], [ 0, %.lr.ph.i97.i.i.epil.preheader ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.079.i101.i.i.epil, i64 1
  %i.jl = load i8, ptr %.079.i101.i.i.epil, align 1
  %i.jm = zext i8 %i.jl to i32
  %i.jn = shl i32 %i.jm, %.012.i98.i.i.epil
  %i.jo = or i32 %i.jn, %.0511.i99.i.i.epil       ; 2 uses
  %i.jp = add nuw nsw i32 %.012.i98.i.i.epil, 8
  %epil.iter189.next = add i32 %epil.iter189, 1   ; 2 uses
  %epil.iter189.cmp.not = icmp eq i32 %epil.iter189.next, %xtraiter188
  br i1 %epil.iter189.cmp.not, label %ParseGlobalItem.exit.i, label %.lr.ph.i97.i.i.epil, !llvm.loop !12

ParseGlobalItem.exit.i.loopexit155.unr-lcssa:     ; preds = %.lr.ph.i26.i.i
  %i.jq = icmp eq i32 %i.g, 3
  br i1 %i.jq, label %ParseGlobalItem.exit.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %ParseGlobalItem.exit.i.loopexit155.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %.012.i27.i.i.epil.init = phi i32 [ 0, %.lr.ph.i26.i.i.preheader ], [ %i.ho, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ]
  %.0511.i28.i.i.epil.init = phi i32 [ 0, %.lr.ph.i26.i.i.preheader ], [ %i.hn, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ]
  %.079.i30.i.i.epil.init = phi ptr [ %i.d, %.lr.ph.i26.i.i.preheader ], [ %i.hj, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ]
  %lcmp.mod178 = icmp ne i32 %i.g, 3
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %.012.i27.i.i.epil = phi i32 [ %i.jw, %.lr.ph.i26.i.i.epil ], [ %.012.i27.i.i.epil.init, %.lr.ph.i26.i.i.epil.preheader ] ; 2 uses
  %.0511.i28.i.i.epil = phi i32 [ %i.jv, %.lr.ph.i26.i.i.epil ], [ %.0511.i28.i.i.epil.init, %.lr.ph.i26.i.i.epil.preheader ]
  %.079.i30.i.i.epil = phi ptr [ %i.jr, %.lr.ph.i26.i.i.epil ], [ %.079.i30.i.i.epil.init, %.lr.ph.i26.i.i.epil.preheader ] ; 2 uses
  %epil.iter175 = phi i32 [ %epil.iter175.next, %.lr.ph.i26.i.i.epil ], [ 0, %.lr.ph.i26.i.i.epil.preheader ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.079.i30.i.i.epil, i64 1
  %i.js = load i8, ptr %.079.i30.i.i.epil, align 1
  %i.jt = zext i8 %i.js to i32
  %i.ju = shl i32 %i.jt, %.012.i27.i.i.epil
  %i.jv = or i32 %i.ju, %.0511.i28.i.i.epil       ; 2 uses
  %i.jw = add nuw nsw i32 %.012.i27.i.i.epil, 8
  %epil.iter175.next = add i32 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i32 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %ParseGlobalItem.exit.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !13

ParseGlobalItem.exit.i.loopexit156.unr-lcssa:     ; preds = %.lr.ph.i35.i.i
  %i.jx = icmp eq i32 %i.g, 3
  br i1 %i.jx, label %ParseGlobalItem.exit.i, label %.lr.ph.i35.i.i.epil.preheader

.lr.ph.i35.i.i.epil.preheader:                    ; preds = %ParseGlobalItem.exit.i.loopexit156.unr-lcssa, %.lr.ph.i35.i.i.preheader
  %.012.i36.i.i.epil.init = phi i32 [ 0, %.lr.ph.i35.i.i.preheader ], [ %i.in, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.0511.i37.i.i.epil.init = phi i32 [ 0, %.lr.ph.i35.i.i.preheader ], [ %i.im, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.079.i39.i.i.epil.init = phi ptr [ %i.d, %.lr.ph.i35.i.i.preheader ], [ %i.ii, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %lcmp.mod173 = icmp ne i32 %i.g, 3
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %.lr.ph.i35.i.i.epil

.lr.ph.i35.i.i.epil:                              ; preds = %.lr.ph.i35.i.i.epil, %.lr.ph.i35.i.i.epil.preheader
  %.012.i36.i.i.epil = phi i32 [ %i.kd, %.lr.ph.i35.i.i.epil ], [ %.012.i36.i.i.epil.init, %.lr.ph.i35.i.i.epil.preheader ] ; 2 uses
  %.0511.i37.i.i.epil = phi i32 [ %i.kc, %.lr.ph.i35.i.i.epil ], [ %.0511.i37.i.i.epil.init, %.lr.ph.i35.i.i.epil.preheader ]
  %.079.i39.i.i.epil = phi ptr [ %i.jy, %.lr.ph.i35.i.i.epil ], [ %.079.i39.i.i.epil.init, %.lr.ph.i35.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i35.i.i.epil ], [ 0, %.lr.ph.i35.i.i.epil.preheader ]
  %i.jy = getelementptr inbounds nuw i8, ptr %.079.i39.i.i.epil, i64 1
  %i.jz = load i8, ptr %.079.i39.i.i.epil, align 1
  %i.ka = zext i8 %i.jz to i32
  %i.kb = shl i32 %i.ka, %.012.i36.i.i.epil
  %i.kc = or i32 %i.kb, %.0511.i37.i.i.epil       ; 2 uses
  %i.kd = add nuw nsw i32 %.012.i36.i.i.epil, 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ParseGlobalItem.exit.i, label %.lr.ph.i35.i.i.epil, !llvm.loop !14

ParseGlobalItem.exit.i:                           ; preds = %ParseGlobalItem.exit.i.loopexit156.unr-lcssa, %.lr.ph.i35.i.i.epil, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa, %.lr.ph.i26.i.i.epil, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa, %.lr.ph.i97.i.i.epil, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa, %.lr.ph.i88.i.i.epil, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa, %.lr.ph.i79.i.i.epil, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.g, %bb.l, %.critedge.i.i.i, %bb.c, %bb.v, %bb.u, %bb.q, %bb.p, %bb.o, %bb.n, %ReadValue.exit.i.i, %bb.d, %.thread.i.i.i, %bb.t, %bb.r, %bb.m
  %.sroa.6.1 = phi i32 [ %.sroa.6.0, %bb.u ], [ %.sroa.6.0, %bb.m ], [ %.sroa.6.0, %bb.l ], [ 0, %bb.n ], [ %.sroa.6.0, %bb.o ], [ %.sroa.6.0, %bb.p ], [ %.sroa.6.0, %bb.r ], [ %.sroa.6.0, %bb.t ], [ %.sroa.6.0, %.thread.i.i.i ], [ %.sroa.6.0, %bb.q ], [ %i.it, %.lr.ph.i.i.i.epil ], [ %.sroa.6.0, %ReadValue.exit.i.i ], [ %.sroa.6.0, %bb.d ], [ %.sroa.6.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.6.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.6.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.6.0, %bb.g ], [ %.sroa.6.0, %bb.v ], [ %.sroa.6.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.6.0, %bb.c ], [ %.sroa.6.0, %.critedge.i.i.i ], [ %i.ca, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.6.0, %.lr.ph.i79.i.i.epil ], [ %.sroa.6.0, %.lr.ph.i88.i.i.epil ], [ %.sroa.6.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.6.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.6.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.6.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.9.1 = phi i32 [ %.sroa.9.0, %bb.u ], [ %.sroa.9.0, %bb.m ], [ %.sroa.9.0, %bb.l ], [ %.sroa.9.0, %bb.n ], [ 0, %bb.o ], [ %.sroa.9.0, %bb.p ], [ %.sroa.9.0, %bb.r ], [ %.sroa.9.0, %bb.t ], [ %.sroa.9.0, %.thread.i.i.i ], [ %.sroa.9.0, %bb.q ], [ %.sroa.9.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.9.0, %ReadValue.exit.i.i ], [ 0, %bb.d ], [ %i.ja, %.lr.ph.i79.i.i.epil ], [ %.sroa.9.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.9.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.9.0, %bb.g ], [ %.sroa.9.0, %bb.v ], [ %.sroa.9.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.9.0, %bb.c ], [ %.sroa.9.0, %.critedge.i.i.i ], [ %.sroa.9.0, %.lr.ph.i.i.i.epil ], [ %i.cz, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.9.0, %.lr.ph.i88.i.i.epil ], [ %.sroa.9.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.9.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.9.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.9.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.12.1 = phi i32 [ %.sroa.12.0, %bb.u ], [ %.sroa.12.0, %bb.m ], [ %.sroa.12.0, %bb.l ], [ %.sroa.12.0, %bb.n ], [ %.sroa.12.0, %bb.o ], [ %.sroa.12.0, %bb.p ], [ %.sroa.12.0, %bb.r ], [ %.sroa.12.0, %bb.t ], [ %.sroa.12.0, %.thread.i.i.i ], [ 0, %bb.q ], [ %.sroa.12.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ 0, %ReadValue.exit.i.i ], [ %.sroa.12.0, %bb.d ], [ %.sroa.12.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.12.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %i.jo, %.lr.ph.i97.i.i.epil ], [ %.sroa.12.0, %bb.g ], [ %.sroa.12.0, %bb.v ], [ %.sroa.12.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.12.0, %bb.c ], [ %.sroa.12.0, %.critedge.i.i.i ], [ %.sroa.12.0, %.lr.ph.i.i.i.epil ], [ %.sroa.12.0, %.lr.ph.i79.i.i.epil ], [ %.sroa.12.0, %.lr.ph.i88.i.i.epil ], [ %i.ex, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.12.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.12.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.12.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.16.1 = phi i32 [ %.sroa.16.0, %bb.u ], [ %.sroa.16.0, %bb.m ], [ %.sroa.16.0, %bb.l ], [ %.sroa.16.0, %bb.n ], [ %.sroa.16.0, %bb.o ], [ 0, %bb.p ], [ %.sroa.16.0, %bb.r ], [ %.sroa.16.0, %bb.t ], [ %.sroa.16.0, %.thread.i.i.i ], [ %.sroa.16.0, %bb.q ], [ %.sroa.16.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.16.0, %ReadValue.exit.i.i ], [ %.sroa.16.0, %bb.d ], [ %.sroa.16.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %i.jh, %.lr.ph.i88.i.i.epil ], [ %.sroa.16.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.16.0, %bb.g ], [ %.sroa.16.0, %bb.v ], [ %.sroa.16.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.16.0, %bb.c ], [ %.sroa.16.0, %.critedge.i.i.i ], [ %.sroa.16.0, %.lr.ph.i.i.i.epil ], [ %.sroa.16.0, %.lr.ph.i79.i.i.epil ], [ %i.dy, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.16.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.16.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.16.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.16.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.1810.1 = phi i32 [ 0, %bb.u ], [ %.sroa.1810.0, %bb.m ], [ 0, %bb.l ], [ %.sroa.1810.0, %bb.n ], [ %.sroa.1810.0, %bb.o ], [ %.sroa.1810.0, %bb.p ], [ %.sroa.1810.0, %bb.r ], [ %.sroa.1810.0, %bb.t ], [ %.sroa.1810.0, %.thread.i.i.i ], [ %.sroa.1810.0, %bb.q ], [ %.sroa.1810.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ 0, %ReadValue.exit.i.i ], [ 0, %bb.d ], [ %.sroa.1810.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.1810.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.1810.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ 0, %bb.g ], [ %.sroa.1810.0, %bb.v ], [ %i.jv, %.lr.ph.i26.i.i.epil ], [ 0, %bb.c ], [ 0, %.critedge.i.i.i ], [ %.sroa.1810.0, %.lr.ph.i.i.i.epil ], [ %.sroa.1810.0, %.lr.ph.i79.i.i.epil ], [ %.sroa.1810.0, %.lr.ph.i88.i.i.epil ], [ %.sroa.1810.0, %.lr.ph.i97.i.i.epil ], [ %i.hn, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.1810.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.1810.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.21.1 = phi i32 [ %i.c, %bb.u ], [ %i.c, %bb.m ], [ 0, %bb.l ], [ %i.c, %bb.n ], [ %i.c, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.r ], [ %i.c, %bb.t ], [ %i.c, %.thread.i.i.i ], [ %i.c, %bb.q ], [ %i.c, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ 0, %ReadValue.exit.i.i ], [ 0, %bb.d ], [ %i.c, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %i.c, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %i.c, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ 0, %bb.g ], [ 0, %bb.v ], [ %i.c, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ 0, %bb.c ], [ 0, %.critedge.i.i.i ], [ %i.c, %.lr.ph.i.i.i.epil ], [ %i.c, %.lr.ph.i79.i.i.epil ], [ %i.c, %.lr.ph.i88.i.i.epil ], [ %i.c, %.lr.ph.i97.i.i.epil ], [ %i.c, %.lr.ph.i26.i.i.epil ], [ %i.im, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ], [ %i.kc, %.lr.ph.i35.i.i.epil ]
  %.sroa.25.1 = phi i32 [ %.sroa.25.0, %bb.u ], [ %.sroa.25.0, %bb.m ], [ %.sroa.25.4, %bb.l ], [ %.sroa.25.0, %bb.n ], [ %.sroa.25.0, %bb.o ], [ %.sroa.25.0, %bb.p ], [ %.sroa.25.0, %bb.r ], [ %.sroa.25.0, %bb.t ], [ %.sroa.25.2, %.thread.i.i.i ], [ %.sroa.25.0, %bb.q ], [ %.sroa.25.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.25.0, %ReadValue.exit.i.i ], [ %.sroa.25.0, %bb.d ], [ %.sroa.25.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.25.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.25.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.25.5, %bb.g ], [ %.sroa.25.0, %bb.v ], [ %.sroa.25.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.25.0, %bb.c ], [ %.sroa.25.4, %.critedge.i.i.i ], [ %.sroa.25.0, %.lr.ph.i.i.i.epil ], [ %.sroa.25.0, %.lr.ph.i79.i.i.epil ], [ %.sroa.25.0, %.lr.ph.i88.i.i.epil ], [ %.sroa.25.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.25.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.25.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.25.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.29.1 = phi i32 [ %.sroa.29.0, %bb.u ], [ %.sroa.29.0, %bb.m ], [ 0, %bb.l ], [ %.sroa.29.0, %bb.n ], [ %.sroa.29.0, %bb.o ], [ %.sroa.29.0, %bb.p ], [ %.sroa.29.0, %bb.r ], [ %.sroa.25.0, %bb.t ], [ %i.gn, %.thread.i.i.i ], [ %.sroa.29.0, %bb.q ], [ %.sroa.29.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ 0, %ReadValue.exit.i.i ], [ 0, %bb.d ], [ %.sroa.29.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.29.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.29.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ 0, %bb.g ], [ %.sroa.29.0, %bb.v ], [ %.sroa.29.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ 0, %bb.c ], [ 0, %.critedge.i.i.i ], [ %.sroa.29.0, %.lr.ph.i.i.i.epil ], [ %.sroa.29.0, %.lr.ph.i79.i.i.epil ], [ %.sroa.29.0, %.lr.ph.i88.i.i.epil ], [ %.sroa.29.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.29.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.29.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.29.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.38.1 = phi ptr [ %.sroa.38.0, %bb.u ], [ %.sroa.38.0, %bb.m ], [ %.sroa.38.4, %bb.l ], [ %.sroa.38.0, %bb.n ], [ %.sroa.38.0, %bb.o ], [ %.sroa.38.0, %bb.p ], [ %.sroa.38.0, %bb.r ], [ %.sroa.38.0, %bb.t ], [ %.sroa.38.2, %.thread.i.i.i ], [ %.sroa.38.0, %bb.q ], [ %.sroa.38.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.38.0, %ReadValue.exit.i.i ], [ %.sroa.38.0, %bb.d ], [ %.sroa.38.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.38.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.38.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.38.5, %bb.g ], [ %.sroa.38.0, %bb.v ], [ %.sroa.38.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.38.0, %bb.c ], [ %.sroa.38.4, %.critedge.i.i.i ], [ %.sroa.38.0, %.lr.ph.i.i.i.epil ], [ %.sroa.38.0, %.lr.ph.i79.i.i.epil ], [ %.sroa.38.0, %.lr.ph.i88.i.i.epil ], [ %.sroa.38.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.38.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.38.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.38.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ] ; 2 uses
  %.sroa.46.1 = phi i32 [ %.sroa.46.0, %bb.u ], [ %.sroa.46.0, %bb.m ], [ %.sroa.46.3, %bb.l ], [ %.sroa.46.0, %bb.n ], [ %.sroa.46.0, %bb.o ], [ %.sroa.46.0, %bb.p ], [ %.sroa.46.0, %bb.r ], [ %.sroa.46.0, %bb.t ], [ %.sroa.46.0, %.thread.i.i.i ], [ %.sroa.46.0, %bb.q ], [ %.sroa.46.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.46.0, %ReadValue.exit.i.i ], [ %.sroa.46.0, %bb.d ], [ %.sroa.46.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.46.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.46.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.46.0, %bb.g ], [ %.sroa.46.0, %bb.v ], [ %.sroa.46.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.46.0, %bb.c ], [ %.sroa.46.5, %.critedge.i.i.i ], [ %.sroa.46.0, %.lr.ph.i.i.i.epil ], [ %.sroa.46.0, %.lr.ph.i79.i.i.epil ], [ %.sroa.46.0, %.lr.ph.i88.i.i.epil ], [ %.sroa.46.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.46.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.46.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.46.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.48.1 = phi i32 [ %.sroa.48.0, %bb.u ], [ %.sroa.48.0, %bb.m ], [ %.sroa.46.3, %bb.l ], [ %.sroa.48.0, %bb.n ], [ %.sroa.48.0, %bb.o ], [ %.sroa.48.0, %bb.p ], [ %.sroa.48.0, %bb.r ], [ %.sroa.48.0, %bb.t ], [ %.sroa.48.0, %.thread.i.i.i ], [ %.sroa.48.0, %bb.q ], [ %.sroa.48.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.48.0, %ReadValue.exit.i.i ], [ %.sroa.48.0, %bb.d ], [ %.sroa.48.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.48.0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.48.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.48.0, %bb.g ], [ %.sroa.48.0, %bb.v ], [ %.sroa.48.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.48.0, %bb.c ], [ %.sroa.48.4, %.critedge.i.i.i ], [ %.sroa.48.0, %.lr.ph.i.i.i.epil ], [ %.sroa.48.0, %.lr.ph.i79.i.i.epil ], [ %.sroa.48.0, %.lr.ph.i88.i.i.epil ], [ %.sroa.48.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.48.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.48.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.48.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ] ; 2 uses
  %.sroa.52.1 = phi i32 [ %.sroa.52.0, %bb.u ], [ %.sroa.52.0, %bb.m ], [ %.sroa.52.3, %bb.l ], [ %.sroa.52.0, %bb.n ], [ %.sroa.52.0, %bb.o ], [ 0, %bb.p ], [ %.sroa.52.0, %bb.r ], [ %.sroa.52.0, %bb.t ], [ %.sroa.52.0, %.thread.i.i.i ], [ %.sroa.52.0, %bb.q ], [ %.sroa.52.0, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.52.0, %ReadValue.exit.i.i ], [ %.sroa.52.0, %bb.d ], [ %.sroa.52.0, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ 0, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.52.0, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.52.0, %bb.g ], [ %.sroa.52.0, %bb.v ], [ %.sroa.52.0, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.52.0, %bb.c ], [ %i.bb, %.critedge.i.i.i ], [ %.sroa.52.0, %.lr.ph.i.i.i.epil ], [ %.sroa.52.0, %.lr.ph.i79.i.i.epil ], [ 0, %.lr.ph.i88.i.i.epil ], [ %.sroa.52.0, %.lr.ph.i97.i.i.epil ], [ %.sroa.52.0, %.lr.ph.i26.i.i.epil ], [ %.sroa.52.0, %.lr.ph.i35.i.i.epil ], [ %.sroa.52.0, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ]
  %.sroa.5624.2 = phi ptr [ %.sroa.5624.1, %bb.u ], [ %.sroa.5624.1, %bb.m ], [ %.sroa.5624.4, %bb.l ], [ %.sroa.5624.1, %bb.n ], [ %.sroa.5624.1, %bb.o ], [ %.sroa.5624.1, %bb.p ], [ %.sroa.5624.1, %bb.r ], [ %.sroa.5624.1, %bb.t ], [ %.sroa.5624.1, %.thread.i.i.i ], [ %.sroa.5624.1, %bb.q ], [ %.sroa.5624.1, %ParseGlobalItem.exit.i.loopexit151.unr-lcssa ], [ %.sroa.5624.1, %ReadValue.exit.i.i ], [ %.sroa.5624.1, %bb.d ], [ %.sroa.5624.1, %ParseGlobalItem.exit.i.loopexit152.unr-lcssa ], [ %.sroa.5624.1, %ParseGlobalItem.exit.i.loopexit153.unr-lcssa ], [ %.sroa.5624.1, %ParseGlobalItem.exit.i.loopexit154.unr-lcssa ], [ %.sroa.5624.1, %bb.g ], [ %.sroa.5624.1, %bb.v ], [ %.sroa.5624.1, %ParseGlobalItem.exit.i.loopexit155.unr-lcssa ], [ %.sroa.5624.1, %bb.c ], [ %.sroa.5624.6, %.critedge.i.i.i ], [ %.sroa.5624.1, %.lr.ph.i.i.i.epil ], [ %.sroa.5624.1, %.lr.ph.i79.i.i.epil ], [ %.sroa.5624.1, %.lr.ph.i88.i.i.epil ], [ %.sroa.5624.1, %.lr.ph.i97.i.i.epil ], [ %.sroa.5624.1, %.lr.ph.i26.i.i.epil ], [ %.sroa.5624.1, %.lr.ph.i35.i.i.epil ], [ %.sroa.5624.1, %ParseGlobalItem.exit.i.loopexit156.unr-lcssa ] ; 2 uses
  %.not.i = icmp ult ptr %i.m, %i.b
  br i1 %.not.i, label %.lr.ph.i, label %ParseDescriptor.exit.thread, !llvm.loop !15

ParseDescriptor.exit:                             ; preds = %.lr.ph.i, %bb.b
  %.str.2.sink.i = phi ptr [ @.str.1, %.lr.ph.i ], [ @.str.2, %bb.b ]
  %i.ke = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull %.str.2.sink.i) #7
  br i1 %i.ke, label %ParseDescriptor.exit.thread, label %bb.x

ParseDescriptor.exit.thread:                      ; preds = %ParseGlobalItem.exit.i, %bb.a, %ParseDescriptor.exit
  %.sroa.5624.748 = phi ptr [ %.sroa.5624.1, %ParseDescriptor.exit ], [ null, %bb.a ], [ %.sroa.5624.2, %ParseGlobalItem.exit.i ] ; 2 uses
  %.sroa.48.547 = phi i32 [ %.sroa.48.0, %ParseDescriptor.exit ], [ 0, %bb.a ], [ %.sroa.48.1, %ParseGlobalItem.exit.i ]
  %.sroa.38.746 = phi ptr [ %.sroa.38.0, %ParseDescriptor.exit ], [ null, %bb.a ], [ %.sroa.38.1, %ParseGlobalItem.exit.i ] ; 2 uses
  %i.kf = tail call noalias ptr @SDL_malloc_REAL(i64 noundef 16) #7 ; 4 uses
  %.not = icmp eq ptr %i.kf, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %ParseDescriptor.exit.thread
  store i32 %.sroa.48.547, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %.sroa.5624.748, ptr %i.kg, align 8
  br label %bb.x

bb.x:                                             ; preds = %ParseDescriptor.exit.thread, %bb.w, %ParseDescriptor.exit
  %.sroa.38.745 = phi ptr [ %.sroa.38.746, %ParseDescriptor.exit.thread ], [ %.sroa.38.746, %bb.w ], [ %.sroa.38.0, %ParseDescriptor.exit ]
  %.sroa.5624.0 = phi ptr [ %.sroa.5624.748, %ParseDescriptor.exit.thread ], [ null, %bb.w ], [ %.sroa.5624.1, %ParseDescriptor.exit ]
  %.0 = phi ptr [ null, %ParseDescriptor.exit.thread ], [ %i.kf, %bb.w ], [ null, %ParseDescriptor.exit ]
  tail call void @SDL_free_REAL(ptr noundef %.sroa.38.745) #7
  tail call void @SDL_free_REAL(ptr noundef %.sroa.5624.0) #7
  ret ptr %.0
}

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @SDL_DescriptorHasUsage(ptr nofree noundef readonly captures(address_is_null) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i16 %1 to i32
  %i.b = shl nuw i32 %i.a, 16
  %i.c = zext i16 %2 to i32
  %i.d = or disjoint i32 %i.b, %i.c
  %i.e = load i32, ptr %0, align 8                ; 2 uses
  %.not1314 = icmp sgt i32 %i.e, 0
  br i1 %.not1314, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, %i.d                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.k, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %bb.c, !llvm.loop !16

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.k, %bb.c ]
  ret i1 %.2
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_DestroyDescriptor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.b) #7
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_ReadReportData(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %2, 8                           ; 2 uses
  %i.b = srem i32 %2, 8
  %.not = icmp slt i32 %i.a, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str) #7
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.off = add i32 %3, 14
  %.not8.i = icmp ult i32 %.off, 15
  br i1 %.not8.i, label %ReadValue.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.d = add nuw nsw i32 %3, 7
  %i.e = sdiv i32 %i.d, 8                         ; 3 uses
  %i.f = sext i32 %i.a to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = add nsw i32 %i.e, -1
  %xtraiter = and i32 %i.e, 3                     ; 3 uses
  %i.i = icmp ult i32 %i.h, 3
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.e, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.012.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.af, %.lr.ph.i ] ; 4 uses
  %.0511.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ae, %.lr.ph.i ]
  %.079.i = phi ptr [ %i.g, %.lr.ph.i.preheader.new ], [ %i.aa, %.lr.ph.i ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.079.i, i64 1
  %i.k = load i8, ptr %.079.i, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = or i32 %.0511.i, %i.l
  %i.n = or disjoint i32 %.012.i, 8
  %i.o = getelementptr inbounds nuw i8, ptr %.079.i, i64 2
  %i.p = load i8, ptr %i.j, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = shl i32 %i.q, %i.n
  %i.s = or i32 %i.r, %i.m
  %i.t = or disjoint i32 %.012.i, 16
  %i.u = getelementptr inbounds nuw i8, ptr %.079.i, i64 3
  %i.v = load i8, ptr %i.o, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = shl i32 %i.w, %i.t
  %i.y = or i32 %i.x, %i.s
  %i.z = or disjoint i32 %.012.i, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.u, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl i32 %i.ac, %i.z
  %i.ae = or i32 %i.ad, %i.y                      ; 3 uses
  %i.af = add nuw nsw i32 %.012.i, 32             ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ReadValue.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

ReadValue.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ReadValue.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ReadValue.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.af, %ReadValue.exit.loopexit.unr-lcssa ]
  %.0511.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ae, %ReadValue.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi ptr [ %i.g, %.lr.ph.i.preheader ], [ %i.aa, %ReadValue.exit.loopexit.unr-lcssa ]
  %lcmp.mod21 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.012.i.epil = phi i32 [ %i.al, %.lr.ph.i.epil ], [ %.012.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0511.i.epil = phi i32 [ %i.ak, %.lr.ph.i.epil ], [ %.0511.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.079.i.epil = phi ptr [ %i.ag, %.lr.ph.i.epil ], [ %.079.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.epil, i64 1
  %i.ah = load i8, ptr %.079.i.epil, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl i32 %i.ai, %.012.i.epil
  %i.ak = or i32 %i.aj, %.0511.i.epil             ; 2 uses
  %i.al = add nuw nsw i32 %.012.i.epil, 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ReadValue.exit, label %.lr.ph.i.epil, !llvm.loop !17

ReadValue.exit:                                   ; preds = %ReadValue.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.c
  %.05.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ae, %ReadValue.exit.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph.i.epil ]
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %spec.select = lshr i32 %.05.lcssa.i, %i.am     ; 5 uses
  store i32 %spec.select, ptr %4, align 4
  switch i32 %3, label %bb.h [
    i32 1, label %bb.d
    i32 4, label %bb.e
    i32 10, label %bb.f
    i32 15, label %bb.g
  ]

bb.d:                                             ; preds = %ReadValue.exit
  %i.an = and i32 %spec.select, 1
  store i32 %i.an, ptr %4, align 4
  br label %bb.h

bb.e:                                             ; preds = %ReadValue.exit
  %i.ao = and i32 %spec.select, 15
  store i32 %i.ao, ptr %4, align 4
  br label %bb.h

bb.f:                                             ; preds = %ReadValue.exit
  %i.ap = and i32 %spec.select, 1023
  store i32 %i.ap, ptr %4, align 4
  br label %bb.h

bb.g:                                             ; preds = %ReadValue.exit
  %i.aq = and i32 %spec.select, 32767
  store i32 %i.aq, ptr %4, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %ReadValue.exit, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %ReadValue.exit ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

declare zeroext i1 @SDL_SetError_REAL(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(1)
declare ptr @SDL_realloc_REAL(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind allocsize(1) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !8}
end_hunk_0
