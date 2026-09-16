Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/regexp-compiler?download=true
inline.NumInlined: 1535
inline.NumDeleted: 508
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2v88internal8TextNode4EmitEPNS0_14RegExpCompilerEPNS0_5TraceE:bb.a
  switch i32 %.sroa.4.0.copyload.i, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.l, i64 -8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 16
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ult i64 %i.o, 2147483648
  br i1 %i.p, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i:   ; preds = %bb.c
  %i.q = trunc nuw nsw i64 %i.o to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit:           ; preds = %bb.b, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i
  %.0.i.i = phi i32 [ %i.q, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.b ]
  %i.r = add i32 %.sroa.0.0.copyload.i, %i.e
  %i.s = add i32 %i.r, %.0.i.i
  %i.t = icmp sgt i32 %i.s, 32767
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal8TextNode6LengthEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 1, ptr %i.u, align 1
  br label %bb.ae

bb.g:                                             ; preds = %_ZN2v88internal8TextNode6LengthEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !23, !noundef !24
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre = load i32, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.y = phi i32 [ %.pre, %bb.h ], [ %i.e, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.z = add nsw i32 %i.y, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = add nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.b, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 8
  %.not = icmp eq i32 %i.af, 1                    ; 4 uses
  br i1 %.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %.sroa.0.0.copyload.i37, 2
  %.not54 = icmp eq i32 %i.ag, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i32 [ 3, %bb.k ], [ 1, %bb.j ]
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef %.sink, i1 noundef zeroext true, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef nonnull %i.b)
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef nonnull %i.b)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.sroa.0.0.copyload.i37.1 = load i32, ptr %i.ae, align 4
  %i.ah = and i32 %.sroa.0.0.copyload.i37.1, 2
  %.not54.1 = icmp eq i32 %i.ah, 0
  br i1 %.not54.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull %2, i1 noundef zeroext %.not, ptr noundef nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sink69 = phi i32 [ 3, %bb.n ], [ 1, %bb.m ]
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef %.sink69, i1 noundef zeroext false, ptr noundef nonnull %2, i1 noundef zeroext %.not, ptr noundef nonnull %i.b)
  call void @_ZN2v88internal8TextNode12TextEmitPassEPNS0_14RegExpCompilerENS1_16TextEmitPassTypeEbPNS0_5TraceEbPi(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %1, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull %2, i1 noundef zeroext %.not, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ai = load i32, ptr %2, align 8               ; 5 uses
  store i32 %i.ai, ptr %3, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.al = load i16, ptr %i.ak, align 4
  store i16 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ao = load i16, ptr %i.an, align 2
  %.lobit.i = and i16 %i.ao, 256
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load <2 x ptr>, ptr %i.ar, align 8
  store <2 x ptr> %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  %i.av = load i32, ptr %i.aa, align 4
  store i32 %i.av, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i64 64, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %2, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !range !23, !noundef !24 ; 2 uses
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = load ptr, ptr %i.bc, align 8
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr [16 x i8], ptr %i.bf, i64 %i.bg ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -16
  %.sroa.0.0.copyload.i38 = load i32, ptr %i.bi, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i39 = getelementptr i8, ptr %i.bh, i64 -12
  %.sroa.4.0.copyload.i40 = load i32, ptr %.sroa.4.0..sroa_idx.i39, align 4 ; 4 uses
  br i1 %i.bb, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  switch i32 %.sroa.4.0.copyload.i40, label %bb.s [
    i32 0, label %bb.q
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit45
  ]

bb.q:                                             ; preds = %bb.p
  %.sroa.5.0..sroa_idx.i42 = getelementptr i8, ptr %i.bh, i64 -8
  %.sroa.5.0.copyload.i43 = load ptr, ptr %.sroa.5.0..sroa_idx.i42, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i43, i64 16
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 2147483648
  br i1 %i.bl, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i44, label %bb.r, !prof !20

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i44: ; preds = %bb.q
  %i.bm = trunc nuw nsw i64 %i.bk to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit45

bb.s:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit45:         ; preds = %bb.p, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i44
  %.0.i.i41 = phi i32 [ %i.bm, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i44 ], [ %.sroa.4.0.copyload.i40, %bb.p ]
  %i.bn = add nsw i32 %.sroa.0.0.copyload.i38, %.0.i.i41
  %i.bo = sub nsw i32 0, %i.bn
  br label %bb.x

bb.t:                                             ; preds = %bb.o
  switch i32 %.sroa.4.0.copyload.i40, label %bb.w [
    i32 0, label %bb.u
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit53
  ]

bb.u:                                             ; preds = %bb.t
  %.sroa.5.0..sroa_idx.i50 = getelementptr i8, ptr %i.bh, i64 -8
  %.sroa.5.0.copyload.i51 = load ptr, ptr %.sroa.5.0..sroa_idx.i50, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i51, i64 16
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp ult i64 %i.bq, 2147483648
  br i1 %i.br, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i52, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i52: ; preds = %bb.u
  %i.bs = trunc nuw nsw i64 %i.bq to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit53

bb.w:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit53:         ; preds = %bb.t, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i52
  %.0.i.i49 = phi i32 [ %i.bs, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i52 ], [ %.sroa.4.0.copyload.i40, %bb.t ]
  %i.bt = add nsw i32 %.0.i.i49, %.sroa.0.0.copyload.i38
  br label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal8TextNode6LengthEv.exit53, %_ZN2v88internal8TextNode6LengthEv.exit45
  %i.bu = phi i32 [ %i.bo, %_ZN2v88internal8TextNode6LengthEv.exit45 ], [ %i.bt, %_ZN2v88internal8TextNode6LengthEv.exit53 ] ; 7 uses
  store i32 0, ptr %i.at, align 8
  %i.bv = load i32, ptr %i.aw, align 8            ; 6 uses
  %i.bw = icmp sge i32 %i.bu, %i.bv
  %i.bx = icmp slt i32 %i.bu, 0
  %or.cond.i.i = or i1 %i.bx, %i.bw
  br i1 %or.cond.i.i, label %bb.y, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.by = sub nuw i32 %i.bv, %i.bu                ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.ca = zext nneg i32 %i.bu to i64
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.by, i32 1) ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 2 uses
  %invariant.gep.i.i = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %i.ca ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %4 = icmp slt i32 %i.by, 2
  br i1 %4, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cb = icmp sgt i32 %i.bv, 0
  br i1 %i.cb, label %.lr.ph.i.i.i, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 9 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.bv to i64 ; 2 uses
  %xtraiter72 = and i64 %wide.trip.count.i.i.i, 7 ; 3 uses
  %i.cd = icmp ult i32 %i.bv, 8
  br i1 %i.cd, label %.epil.preheader71, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter75 = and i64 %wide.trip.count.i.i.i, 2147483640
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.7, %bb.z ] ; 9 uses
  %niter76 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter76.next.7, %bb.z ]
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ce, i8 0, i64 9, i1 false)
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cg, i8 0, i64 9, i1 false)
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ci, i8 0, i64 9, i1 false)
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ck, i8 0, i64 9, i1 false)
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cm, i8 0, i64 9, i1 false)
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.co, i8 0, i64 9, i1 false)
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cq, i8 0, i64 9, i1 false)
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 84
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cs, i8 0, i64 9, i1 false)
  %niter76.next.7 = add i64 %niter76, 8           ; 2 uses
  %niter76.ncmp.7 = icmp eq i64 %niter76.next.7, %unroll_iter75
  br i1 %niter76.ncmp.7, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa, label %bb.z, !llvm.loop !3

.preheader.i.i.unr-lcssa:                         ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i32 %smax.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %gep.i.i.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil.init
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %indvars.iv.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ct, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.i.epil, i64 9, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.unr-lcssa, %.epil.preheader
  %5 = icmp slt i32 %i.by, %i.bv
  br i1 %5, label %.lr.ph24.i.i, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i

.lr.ph24.i.i:                                     ; preds = %.preheader.i.i
  %i.cu = sext i32 %i.by to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.aa, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.aa ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.aa ]
  %gep.i.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %indvars.iv.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cv, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.i, i64 9, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %gep.i.i.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i.i
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cw, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.i.1, i64 9, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.i.unr-lcssa, label %bb.aa, !llvm.loop !4

._crit_edge.loopexit.i.i:                         ; preds = %bb.ab
  %.pre.i.i = sub nsw i32 %i.cy, %i.bu
  %.pre60 = load i32, ptr %3, align 8
  br label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i

bb.ab:                                            ; preds = %bb.ab, %.lr.ph24.i.i
  %indvars.iv28.i.i = phi i64 [ %i.cu, %.lr.ph24.i.i ], [ %indvars.iv.next29.i.i, %bb.ab ] ; 2 uses
  %i.cx = getelementptr inbounds [12 x i8], ptr %i.bz, i64 %indvars.iv28.i.i
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cx, i8 0, i64 9, i1 false)
  %i.cy = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next29.i.i, %i.cz
  br i1 %i.da, label %bb.ab, label %._crit_edge.loopexit.i.i, !llvm.loop !5

_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa: ; preds = %bb.z
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i, label %.epil.preheader71

.epil.preheader71:                                ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.7, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter72, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader71
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader71 ], [ %indvars.iv.next.i.i.i.epil, %bb.ac ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader71 ], [ %epil.iter.next, %bb.ac ]
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.cc, i64 %indvars.iv.i.i.i.epil
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.db, i8 0, i64 9, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter72
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i, label %bb.ac, !llvm.loop !65

_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i: ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa, %bb.ac, %._crit_edge.loopexit.i.i, %.preheader.i.i, %bb.y
  %i.dc = phi i32 [ %i.ai, %.preheader.i.i ], [ %i.ai, %bb.y ], [ %.pre60, %._crit_edge.loopexit.i.i ], [ %i.ai, %bb.ac ], [ %i.ai, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa ]
  %storemerge.i.i = phi i32 [ %i.by, %.preheader.i.i ], [ 0, %bb.y ], [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ 0, %bb.ac ], [ 0, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i.loopexit.unr-lcssa ]
  store i32 %storemerge.i.i, ptr %i.aw, align 8
  %i.dd = add nsw i32 %i.dc, %i.bu                ; 2 uses
  store i32 %i.dd, ptr %3, align 8
  %i.de = icmp sgt i32 %i.dd, 32767
  br i1 %i.de, label %bb.ad, label %_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE.exit

bb.ad:                                            ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 1, ptr %i.df, align 1
  store i32 0, ptr %3, align 8
  %.pre61 = load i8, ptr %i.az, align 8, !range !23
  br label %_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE.exit

_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE.exit: ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i, %bb.ad
  %i.dg = phi i8 [ %i.ba, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.i ], [ %.pre61, %bb.ad ]
  %i.dh = load i32, ptr %i.au, align 4
  %i.di = sub nsw i32 %i.dh, %i.bu
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.di, i32 0)
  store i32 %.sroa.speculated.i, ptr %i.au, align 4
  %i.dj = sub nsw i8 0, %i.dg
  %i.dk = zext i8 %i.dj to i16
  %i.dl = or disjoint i16 %.lobit.i, %i.dk
  store i16 %i.dl, ptr %i.am, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  call void %i.dt(ptr noundef nonnull align 8 dereferenceable(56) %i.dq, ptr noundef nonnull %1, ptr noundef nonnull %3) #26
  %i.du = load i32, ptr %i.dm, align 8
  %i.dv = add nsw i32 %i.du, -1
  store i32 %i.dv, ptr %i.dm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal5Trace29AdvanceCurrentPositionInTraceEiPNS0_14RegExpCompilerE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(112) initializes((32, 36)) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8              ; 6 uses
  %i.d = icmp sge i32 %1, %i.c
  %i.e = icmp slt i32 %1, 0
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %bb.b, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = sub nuw i32 %i.c, %1                     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.h = zext nneg i32 %1 to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1) ; 2 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %3 = icmp slt i32 %i.f, 2
  br i1 %3, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %.lr.ph.i.i, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 2 uses
  %xtraiter13 = and i64 %wide.trip.count.i.i, 7   ; 3 uses
  %i.k = icmp ult i32 %i.c, 8
  br i1 %i.k, label %.epil.preheader12, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter16 = and i64 %wide.trip.count.i.i, 2147483640
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.c ] ; 9 uses
  %niter17 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter17.next.7, %bb.c ]
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.l, i8 0, i64 9, i1 false)
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.n, i8 0, i64 9, i1 false)
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.p, i8 0, i64 9, i1 false)
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.r, i8 0, i64 9, i1 false)
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.t, i8 0, i64 9, i1 false)
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.v, i8 0, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.x, i8 0, i64 9, i1 false)
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 84
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.z, i8 0, i64 9, i1 false)
  %niter17.next.7 = add i64 %niter17, 8           ; 2 uses
  %niter17.ncmp.7 = icmp eq i64 %niter17.next.7, %unroll_iter16
  br i1 %niter17.ncmp.7, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !3

.preheader.i.unr-lcssa:                           ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %smax.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %gep.i.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.aa, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.epil, i64 9, i1 false)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %4 = icmp slt i32 %i.f, %i.c
  br i1 %4, label %.lr.ph24.i, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit

.lr.ph24.i:                                       ; preds = %.preheader.i
  %i.ab = sext i32 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %gep.i = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ac, ptr noundef nonnull align 4 dereferenceable(9) %gep.i, i64 9, i1 false)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %indvars.iv.next.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ad, ptr noundef nonnull align 4 dereferenceable(9) %gep.i.1, i64 9, i1 false)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.d, !llvm.loop !4

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %.pre.i = sub nsw i32 %i.af, %1
  br label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit

bb.e:                                             ; preds = %bb.e, %.lr.ph24.i
  %indvars.iv28.i = phi i64 [ %i.ab, %.lr.ph24.i ], [ %indvars.iv.next29.i, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %i.g, i64 %indvars.iv28.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ae, i8 0, i64 9, i1 false)
  %i.af = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next29.i, %i.ag
  br i1 %i.ah, label %bb.e, label %._crit_edge.loopexit.i, !llvm.loop !5

_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit, label %.epil.preheader12

.epil.preheader12:                                ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter13, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader12
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader12 ], [ %indvars.iv.next.i.i.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader12 ], [ %epil.iter.next, %bb.f ]
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv.i.i.epil
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ai, i8 0, i64 9, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter13
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit, label %bb.f, !llvm.loop !66

_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit: ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa, %bb.f, %bb.b, %.preheader.i, %._crit_edge.loopexit.i
  %storemerge.i = phi i32 [ %i.f, %.preheader.i ], [ 0, %bb.b ], [ %.pre.i, %._crit_edge.loopexit.i ], [ 0, %bb.f ], [ 0, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit.loopexit.unr-lcssa ]
  store i32 %storemerge.i, ptr %i.b, align 8
  %i.aj = load i32, ptr %0, align 8
  %i.ak = add nsw i32 %i.aj, %1                   ; 2 uses
  store i32 %i.ak, ptr %0, align 8
  %i.al = icmp sgt i32 %i.ak, 32767
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 49
  store i8 1, ptr %i.am, align 1
  store i32 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal17QuickCheckDetails7AdvanceEib.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sub nsw i32 %i.ao, %1
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  store i32 %.sroa.speculated, ptr %i.an, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8TextNode19MakeCaseIndependentEPNS0_7IsolateEbNS_4base5FlagsINS0_10RegExpFlagEiiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr noundef %1, i1 noundef zeroext %2, i32 %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = and i32 %3, 274
  %or.cond.not = icmp eq i32 %i.a, 2
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %i.k = icmp eq i32 %.sroa.3.0.copyload, 1
  br i1 %i.k, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal17RegExpClassRanges11is_standardEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0.copyload, ptr noundef %i.l) #26
  br i1 %i.m, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.p = tail call noundef ptr @_ZN2v88internal12CharacterSet6rangesEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef %i.n) #26
  %i.q = load ptr, ptr %i.g, align 8
  tail call void @_ZN2v88internal14CharacterRange18AddCaseEquivalentsEPNS0_7IsolateEPNS0_4ZoneEPNS0_8ZoneListIS1_EEb(ptr noundef %1, ptr noundef %i.q, ptr noundef %i.p, i1 noundef zeroext %2) #26
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !10

.loopexit:                                        ; preds = %.critedge, %bb.b, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN2v88internal17RegExpClassRanges11is_standardEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

declare void @_ZN2v88internal14CharacterRange18AddCaseEquivalentsEPNS0_7IsolateEPNS0_4ZoneEPNS0_8ZoneListIS1_EEb(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8TextNode21FixedLengthLoopLengthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr [16 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.g, i64 -12
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  switch i32 %.sroa.4.0.copyload.i, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %_ZN2v88internal8TextNode6LengthEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.g, i64 -8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp ult i64 %i.j, 2147483648
  br i1 %i.k, label %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #25
  unreachable

_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i:   ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %i.j to i32
  br label %_ZN2v88internal8TextNode6LengthEv.exit

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #25
  unreachable

_ZN2v88internal8TextNode6LengthEv.exit:           ; preds = %bb.a, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i
  %.0.i.i = phi i32 [ %i.l, %_ZNK2v88internal10RegExpAtom6lengthEv.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.a ]
  %i.m = add nsw i32 %.0.i.i, %.sroa.0.0.copyload.i
  ret i32 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8TextNode32GetSuccessorOfOmnivorousTextNodeEPNS0_14RegExpCompilerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_0
