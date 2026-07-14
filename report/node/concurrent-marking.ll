inline.NumInlined: 10829
inline.NumDeleted: 3307
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2v88internal23MemoryChunkLiveBytesMap13FlushAndClearEv:bb.a
  %i.df = atomicrmw add ptr %i.de, i64 %i.dd monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.21, i8 0, i64 16, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0.ptr15.22 = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.dg = load ptr, ptr %.0.ptr15.22, align 8     ; 2 uses
  %.not13.22 = icmp eq ptr %i.dg, null
  br i1 %.not13.22, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.dk = atomicrmw add ptr %i.dj, i64 %i.di monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.22, i8 0, i64 16, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0.ptr15.23 = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.dl = load ptr, ptr %.0.ptr15.23, align 8     ; 2 uses
  %.not13.23 = icmp eq ptr %i.dl, null
  br i1 %.not13.23, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 240
  %i.dp = atomicrmw add ptr %i.do, i64 %i.dn monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.23, i8 0, i64 16, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0.ptr15.24 = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.dq = load ptr, ptr %.0.ptr15.24, align 8     ; 2 uses
  %.not13.24 = icmp eq ptr %i.dq, null
  br i1 %.not13.24, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 240
  %i.du = atomicrmw add ptr %i.dt, i64 %i.ds monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.24, i8 0, i64 16, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.ptr15.25 = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.dv = load ptr, ptr %.0.ptr15.25, align 8     ; 2 uses
  %.not13.25 = icmp eq ptr %i.dv, null
  br i1 %.not13.25, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 240
  %i.dz = atomicrmw add ptr %i.dy, i64 %i.dx monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.25, i8 0, i64 16, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.ptr15.26 = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.ea = load ptr, ptr %.0.ptr15.26, align 8     ; 2 uses
  %.not13.26 = icmp eq ptr %i.ea, null
  br i1 %.not13.26, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 240
  %i.ee = atomicrmw add ptr %i.ed, i64 %i.ec monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.26, i8 0, i64 16, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.0.ptr15.27 = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ef = load ptr, ptr %.0.ptr15.27, align 8     ; 2 uses
  %.not13.27 = icmp eq ptr %i.ef, null
  br i1 %.not13.27, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 240
  %i.ej = atomicrmw add ptr %i.ei, i64 %i.eh monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.27, i8 0, i64 16, i1 false)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.ptr15.28 = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.ek = load ptr, ptr %.0.ptr15.28, align 8     ; 2 uses
  %.not13.28 = icmp eq ptr %i.ek, null
  br i1 %.not13.28, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 240
  %i.eo = atomicrmw add ptr %i.en, i64 %i.em monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.28, i8 0, i64 16, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0.ptr15.29 = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.ep = load ptr, ptr %.0.ptr15.29, align 8     ; 2 uses
  %.not13.29 = icmp eq ptr %i.ep, null
  br i1 %.not13.29, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 240
  %i.et = atomicrmw add ptr %i.es, i64 %i.er monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.29, i8 0, i64 16, i1 false)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.0.ptr15.30 = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.eu = load ptr, ptr %.0.ptr15.30, align 8     ; 2 uses
  %.not13.30 = icmp eq ptr %i.eu, null
  br i1 %.not13.30, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 240
  %i.ey = atomicrmw add ptr %i.ex, i64 %i.ew monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.30, i8 0, i64 16, i1 false)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.0.ptr15.31 = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.ez = load ptr, ptr %.0.ptr15.31, align 8     ; 2 uses
  %.not13.31 = icmp eq ptr %i.ez, null
  br i1 %.not13.31, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 240
  %i.fd = atomicrmw add ptr %i.fc, i64 %i.fb monotonic, align 8 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr15.31, i8 0, i64 16, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal17ConcurrentMarkingC2EPNS0_4HeapEPNS0_11WeakObjectsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) initializes((0, 16), (20, 21), (32, 73), (88, 89), (96, 112)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.d, i8 0, i64 33, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1116), align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZN2v88internal2V818GetCurrentPlatformEv() #26 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.06 = phi i32 [ %i.m, %bb.b ], [ %i.g, %bb.a ] ; 4 uses
  %i.n = add i32 %.06, 1
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = icmp slt i32 %.06, -1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.d, align 8              ; 9 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 4 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.w, %i.o
  br i1 %i.x, label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = sub i64 %i.aa, %i.u
  %i.ac = shl nuw nsw i64 %i.o, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #28 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i
  %3 = add i64 %i.aa, -8
  %i.ae = sub i64 %3, %i.u                        ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ah = add i64 %i.aa, -8
  %i.ai = sub i64 %i.ah, %i.u
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.ak
  %scevgep40 = getelementptr i8, ptr %i.s, i64 %i.ak
  %bound0 = icmp ult ptr %i.ad, %scevgep40
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.ad, i64 %i.al
  %i.an = getelementptr i8, ptr %i.s, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ao ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.s, i64 %i.ao ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.ap = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !alias.scope !10, !noalias !5
  %wide.load42 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !10, !noalias !5
  %i.aq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !13, !noalias !10
  store <2 x i64> %wide.load42, ptr %i.aq, align 8, !alias.scope !13, !noalias !10
  %i.ar = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !alias.scope !10, !noalias !5
  store <2 x ptr> splat (ptr null), ptr %i.ar, align 8, !alias.scope !10, !noalias !5
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader72

.lr.ph.i.i.i.i.preheader72:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader72, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader72 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader72 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  %i.at = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !8, !noalias !5
  store i64 %i.at, ptr %.012.i.i.i.i, align 8, !alias.scope !5, !noalias !8
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !8, !noalias !5
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !19

_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre.i = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i

_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i
  %i.aw = phi ptr [ %.pre.i, %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.loopexit.i ], [ %i.s, %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.aw, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i
  %i.ax = load ptr, ptr %i.q, align 8
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #29
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i
  store ptr %i.ad, ptr %i.d, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store ptr %i.bb, ptr %i.y, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.o
  store ptr %i.bc, ptr %i.q, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i
  %.not19 = icmp slt i32 %.06, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS3_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS3_EED2Ev.exit
  %.020 = phi i32 [ 0, %.lr.ph ], [ %i.dq, %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  %i.be = tail call noalias noundef nonnull dereferenceable(680) ptr @_Znwm(i64 noundef 680) #28, !noalias !20 ; 16 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 536
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.be, i8 0, i64 664, i1 false), !noalias !20
  store i64 1, ptr %i.bf, align 8, !noalias !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 568
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 616
  store ptr %i.bh, ptr %i.bg, align 8, !noalias !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 576
  store i64 1, ptr %i.bi, align 8, !noalias !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 584
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !noalias !20
  store float 1.000000e+00, ptr %i.bk, align 8, !noalias !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false), !noalias !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 624 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 672 ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8, !noalias !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 632 ; 3 uses
  store i64 1, ptr %i.bo, align 8, !noalias !20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 640
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 656 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !noalias !20
  store float 1.000000e+00, ptr %i.bq, align 8, !noalias !20
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false), !noalias !20
  %i.bs = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 noundef 256) #26, !noalias !20 ; 6 uses
  %i.bt = load i64, ptr %i.bo, align 8, !noalias !20
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.h, label %_ZSt11make_uniqueIN2v88internal17ConcurrentMarking9TaskStateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.bv = icmp eq i64 %i.bs, 1
  br i1 %i.bv, label %bb.i, label %bb.j, !prof !23

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %i.bn, align 8, !noalias !20
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bw = icmp ugt i64 %i.bs, 1152921504606846975
  br i1 %i.bw, label %bb.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, !prof !23

bb.k:                                             ; preds = %bb.j
  %i.bx = icmp ugt i64 %i.bs, 2305843009213693951
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27, !noalias !20
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_ZSt17__throw_bad_allocv() #27, !noalias !20
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i: ; preds = %bb.j
  %i.by = shl nuw nsw i64 %i.bs, 3                ; 2 uses
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #28, !noalias !20 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bz, i8 0, i64 %i.by, i1 false), !noalias !20
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i, %bb.i
  %.0.i.i.i.i.i = phi ptr [ %i.bn, %bb.i ], [ %i.bz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i ]
  store ptr %.0.i.i.i.i.i, ptr %i.bm, align 8, !noalias !20
  store i64 %i.bs, ptr %i.bo, align 8, !noalias !20
  br label %_ZSt11make_uniqueIN2v88internal17ConcurrentMarking9TaskStateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN2v88internal17ConcurrentMarking9TaskStateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.g, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i
  %i.ca = load ptr, ptr %i.bd, align 8            ; 5 uses
  %i.cb = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt11make_uniqueIN2v88internal17ConcurrentMarking9TaskStateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cc = ptrtoint ptr %i.be to i64
  store i64 %i.cc, ptr %i.ca, align 8
  %i.cd = load ptr, ptr %i.bd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.bd, align 8
  br label %_ZNSt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS3_EED2Ev.exit

bb.o:                                             ; preds = %_ZSt11make_uniqueIN2v88internal17ConcurrentMarking9TaskStateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cf = load ptr, ptr %i.d, align 8             ; 10 uses
  %i.cg = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.ch = ptrtoint ptr %i.cf to i64               ; 4 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.o
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
end_hunk_0
begin_hunk_1_@_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSQ_PFvSQ_hmmE:bb.a
  %.062 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %bb.c
  %i.p = add nuw i64 %.062, 16                    ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !264

.lr.ph:                                           ; preds = %bb.c, %bb.q
  %.sroa.052.061 = phi i16 [ %i.bv, %bb.q ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.062, %i.s              ; 4 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.t ; 11 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.x = xor i64 %i.w, %.sroa.0.0.copyload.i.i.i.i.i ; 6 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8             ; 2 uses
  %i.aa = sub i64 %i.t, %i.x                      ; 2 uses
  %i.ab = and i64 %i.h, %i.aa
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %.lr.ph
  %i.ad = and i64 %i.aa, 15
  %i.ae = add i64 %i.ad, %i.x
  %i.af = and i64 %i.ae, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ag = and i64 %i.x, %i.b
  %.not.i = icmp ult i64 %i.ag, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !47

bb.f:                                             ; preds = %bb.e
  %i.ah = and i64 %i.x, %i.a                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ah
  %i.aj = load <16 x i8>, ptr %i.ai, align 1
  %i.ak = icmp slt <16 x i8> %i.aj, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.al, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.al, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %i.ah, %i.an
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.z, i64 noundef %i.t, i64 noundef %i.x) #26
  br label %bb.q

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.ao, %bb.g ], [ %i.af, %bb.d ] ; 3 uses
  %i.ap = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.z, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i ; 7 uses
  %i.as = load i64, ptr %i.u, align 8
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 5 uses
  store ptr %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ar, %i.u
  br i1 %i.az, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.au, align 8            ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  %i.bc = load ptr, ptr %i.au, align 8
  store ptr %i.bc, ptr %i.at, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  store ptr %i.be, ptr %i.aw, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.ba to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, 8
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !47

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ba, i64 %i.bl, i1 false)
  br label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bn = icmp eq i64 %i.bl, 8
  br i1 %i.bn, label %bb.o, label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.ba, align 8
  store i64 %i.bo, ptr %i.av, align 8
  br label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bl
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %.sink16.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.k ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bg, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sink16.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bq, align 8
  store ptr %i.bb, ptr %i.au, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.bb, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.bs, ptr %i.bt, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit: ; preds = %bb.i, %bb.p
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit, %bb.h
  %i.bu = add i16 %.sroa.052.061, -1
  %i.bv = and i16 %i.bu, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #22 comdat align 2 {
_ZSt9destroy_nIPN2v88internal6TaggedINS1_10HeapObjectEEElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal6TaggedINS1_10HeapObjectEEElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #29
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal6TaggedINS1_10HeapObjectEEElET_S6_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v88internal6Object6HasherENS5_6TaggedINS5_10HeapObjectEEELb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !41, !align !43
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = xor i64 %.sroa.0.0.copyload.i.i.i.i.i, %1
  ret i64 %i.c
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #22 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %2 = ptrtoint ptr %i.b to i64
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %3 = add i64 %2, -8
  %i.r = sub i64 %3, %i.g                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 72
  %i.u = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.c, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ac, ptr %.08.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.af = icmp eq ptr %i.ad, %i.b
  br i1 %i.af, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !266

_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ag = shl nuw i64 1, %i.k
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %i.ah, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ai
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ag
  store ptr %i.ak, ptr %i.d, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal27DescriptorArrayMarkingState22TryUpdateIndicesToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEEt(i32 noundef %0, i64 %1, i16 noundef zeroext %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = and i32 %0, 3                            ; 2 uses
  %i.b = add i64 %1, 11
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = zext i16 %2 to i32                       ; 2 uses
  %i.e = shl nuw i32 %i.d, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = load atomic volatile i32, ptr %i.c monotonic, align 4 ; 4 uses
  %i.g = and i32 %i.f, 3
  %.not = icmp eq i32 %i.a, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i32 %i.f to i16
  %i.i = lshr i16 %i.h, 2                         ; 2 uses
  %i.j = lshr i32 %i.f, 16
  %i.k = zext nneg i16 %i.i to i32                ; 2 uses
  %i.l = add nuw nsw i32 %i.j, %i.k
  %.not27 = icmp samesign ult i32 %i.l, %i.d
  br i1 %.not27, label %.thread, label %.thread34

.thread:                                          ; preds = %bb.c
  %i.m = sub i16 %2, %i.i
  %i.n = shl nuw nsw i32 %i.k, 2
  %i.o = zext i16 %i.m to i32
  %i.p = shl nuw i32 %i.o, 16
  %i.q = or disjoint i32 %i.p, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread
  %.pn = phi i32 [ %i.q, %.thread ], [ %i.e, %bb.b ]
  %.123 = or disjoint i32 %.pn, %i.a
  %i.r = cmpxchg volatile ptr %i.c, i32 %i.f, i32 %.123 acq_rel acquire, align 4
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %.thread34, label %bb.b, !llvm.loop !267

.thread34:                                        ; preds = %bb.c, %bb.d
  %.337 = phi i1 [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.337
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18SharedFunctionInfoEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !41, !align !43 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18SharedFunctionInfoEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !40, !noundef !41
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 524272
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 64, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18SharedFunctionInfoEEELt64EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18SharedFunctionInfoEEELt64EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !41, !align !43 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !40, !noundef !41
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 6 uses
end_hunk_1
