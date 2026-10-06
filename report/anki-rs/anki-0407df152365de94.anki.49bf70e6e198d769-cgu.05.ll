Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.05?download=true
inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4fsrs10simulation17optimal_retention17h27bf23ad7e3cdf40E:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %6) ]
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = invoke { ptr, ptr } @"_ZN73_$LT$fsrs..simulation..CMRRTargetFn$u20$as$u20$core..default..Default$GT$7default17h78df24fa139be2edE"()
          to label %bb.d unwind label %bb.az      ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.56.0 = phi ptr [ %6, %bb.b ], [ %i.h, %bb.d ]
  %.sroa.05.0 = phi ptr [ %5, %bb.b ], [ %i.g, %bb.d ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.05.0, ptr %i.c, align 8, !noalias !6624
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.56.0, ptr %i.i, align 8, !noalias !6624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6624
  invoke void @_ZN4fsrs5model25check_and_fill_parameters17hf7e7cfcf981a4365E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.h unwind label %bb.g, !noalias !6625

.body.i:                                          ; preds = %bb.al, %bb.ai, %bb.n, %bb.g
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.n ], [ %i.db, %bb.ai ], [ %i.l, %bb.g ], [ %i.dg, %bb.al ] ; 2 uses
  %i.j = atomicrmw sub ptr %.sroa.05.0, i64 1 release, align 8, !noalias !6626
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit.i"

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8bc6fba739859777E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.c)
          to label %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit.i" unwind label %bb.au, !noalias !6627

bb.g:                                             ; preds = %bb.am, %bb.aj, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.a, align 8, !range !24, !noalias !6624, !noundef !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i8, ptr %i.o, align 8, !noalias !6624 ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6624
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i"

bb.j:                                             ; preds = %bb.h
  %.sroa.5126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5126.0..sroa_idx.i, i64 15, i1 false), !noalias !6624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6624
  store i64 %i.m, ptr %i.b, align 8, !noalias !6624
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i8 %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6624
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !6622, !noalias !6628, !noundef !10 ; 3 uses
  %i.s = icmp ult i64 %i.r, 31
  br i1 %i.s, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = icmp ult i64 %i.r, 365
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = uitofp nneg i64 %i.r to float            ; 3 uses
  %square.i = fmul float %i.u, %i.u
  %i.v = fmul nnan float %i.u, 2.410000e-03
  %i.w = fadd float %i.v, 1.300000e-02
  %i.x = call float @llvm.fma.f32(float %square.i, float 8.200000e-07, float %i.w)
  %i.y = fdiv float 1.600000e+01, %i.x
  %i.z = call float @llvm.round.f32(float %i.y)
  %i.aa = call i64 @llvm.fptoui.sat.i64.f32(float %i.z)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.010.0.i = phi i64 [ 180, %bb.j ], [ %i.aa, %bb.l ], [ 16, %bb.k ] ; 2 uses
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6624, !nonnull !10, !noundef !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !6624, !noundef !10
  %i.ae = invoke fastcc i64 @_ZN4fsrs10simulation6sample17h5bbd4d15a125f958E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ab, i64 noundef %i.ad, float noundef f0x3F333333, i64 noundef %.sroa.010.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.o unwind label %.loopexit.split-lp.i ; 3 uses

.loopexit.i:                                      ; preds = %bb.aa
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp.i:                             ; preds = %bb.m
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %.body.i unwind label %bb.au, !noalias !6627

bb.o:                                             ; preds = %bb.m
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %.loopexit179.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.o
  %.sroa.6135.0.extract.shift.i = lshr i64 %i.ae, 32
  %.sroa.6135.0.extract.trunc.i = trunc nuw i64 %.sroa.6135.0.extract.shift.i to i32
  %i.ag = bitcast i32 %.sroa.6135.0.extract.trunc.i to float ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.af, %.preheader.preheader.i
  %.sroa.019.0194.i = phi float [ %.sroa.019.1.i, %bb.af ], [ %i.ag, %.preheader.preheader.i ] ; 6 uses
  %.sroa.025.0193.i = phi float [ %.sroa.025.1.i, %bb.af ], [ f0x3F333333, %.preheader.preheader.i ] ; 26 uses
  %.sroa.048.0192.i = phi float [ %.sroa.048.1.i, %bb.af ], [ f0x3F333333, %.preheader.preheader.i ] ; 4 uses
  %.sroa.052.0191.i = phi float [ %.sroa.052.1.i, %bb.af ], [ f0x3F333333, %.preheader.preheader.i ] ; 7 uses
  %.sroa.058.0190.i = phi float [ %.sroa.058.1.i, %bb.af ], [ %i.ag, %.preheader.preheader.i ] ; 7 uses
  %.sroa.062.0189.i = phi float [ %.sroa.062.1.i, %bb.af ], [ %i.ag, %.preheader.preheader.i ] ; 3 uses
  %.sroa.064.0188.i = phi float [ %.sroa.064.1.i, %bb.af ], [ 0.000000e+00, %.preheader.preheader.i ] ; 2 uses
  %.sroa.068.0187.i = phi i32 [ %i.cx, %bb.af ], [ 0, %.preheader.preheader.i ]
  %.sroa.095.0186.i = phi float [ %.sroa.095.1.i, %bb.af ], [ 0.000000e+00, %.preheader.preheader.i ] ; 3 uses
  %.sroa.0111.0185.i = phi float [ %.sroa.0111.2.i, %bb.af ], [ f0x3F333333, %.preheader.preheader.i ] ; 8 uses
  %.sroa.0117.0184.i = phi float [ %.sroa.0117.2.i, %bb.af ], [ f0x3F733333, %.preheader.preheader.i ] ; 8 uses
  %i.ah = call float @llvm.fabs.f32(float %.sroa.025.0193.i)
  %i.ai = call float @llvm.fma.f32(float %i.ah, float f0x3C23D70A, float 1.000000e-10) ; 7 uses
  %i.aj = fmul float %i.ai, 2.000000e+00          ; 3 uses
  %i.ak = fadd float %.sroa.0111.0185.i, %.sroa.0117.0184.i
  %i.al = fmul float %i.ak, 5.000000e-01          ; 4 uses
  %i.am = fsub float %.sroa.025.0193.i, %i.al
  %i.an = call float @llvm.fabs.f32(float %i.am)
  %i.ao = fsub float %.sroa.0117.0184.i, %.sroa.0111.0185.i
  %i.ap = fneg float %i.ao
  %i.aq = call float @llvm.fma.f32(float %i.ap, float 5.000000e-01, float %i.aj)
  %i.ar = fcmp olt float %i.an, %i.aq
  br i1 %i.ar, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.as = call float @llvm.fabs.f32(float %.sroa.064.0188.i)
  %i.at = fcmp ugt float %i.as, %i.ai
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.au = fsub float %.sroa.025.0193.i, %.sroa.052.0191.i ; 2 uses
  %i.av = fsub float %.sroa.058.0190.i, %.sroa.062.0189.i
  %i.aw = fmul float %i.au, %i.av                 ; 2 uses
  %i.ax = fsub float %.sroa.025.0193.i, %.sroa.048.0192.i ; 2 uses
  %i.ay = fsub float %.sroa.058.0190.i, %.sroa.019.0194.i
  %i.az = fmul float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fneg float %i.au
  %i.bb = fmul float %i.aw, %i.ba
  %i.bc = call float @llvm.fma.f32(float %i.ax, float %i.az, float %i.bb) ; 3 uses
  %i.bd = fsub float %i.az, %i.aw
  %i.be = fmul float %i.bd, 2.000000e+00          ; 2 uses
  %i.bf = fcmp ogt float %i.be, 0.000000e+00
  %i.bg = fneg float %i.bc
  %.sroa.090.0.i = select i1 %i.bf, float %i.bg, float %i.bc ; 3 uses
  %i.bh = call float @llvm.fabs.f32(float %i.be)  ; 4 uses
  %i.bi = fsub float %.sroa.0111.0185.i, %.sroa.025.0193.i
  %i.bj = fmul float %i.bi, %i.bh
  %i.bk = fcmp ogt float %.sroa.090.0.i, %i.bj
  br i1 %i.bk, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bl = fcmp ult float %.sroa.025.0193.i, %i.al
  %.sroa.0117.0..sroa.0111.0.i = select i1 %i.bl, float %.sroa.0117.0184.i, float %.sroa.0111.0185.i
  %i.bm = fsub float %.sroa.0117.0..sroa.0111.0.i, %.sroa.025.0193.i ; 2 uses
  %i.bn = fmul float %i.bm, 3.819660e-01
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.bo = fsub float %.sroa.0117.0184.i, %.sroa.025.0193.i
  %i.bp = fmul float %i.bh, %i.bo
  %i.bq = fcmp olt float %.sroa.090.0.i, %i.bp
  br i1 %i.bq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.q
  %i.br = fcmp ult float %.sroa.025.0193.i, %i.al
  %.sroa.0117.0..sroa.0111.0156.i = select i1 %i.br, float %.sroa.0117.0184.i, float %.sroa.0111.0185.i
  %i.bs = fsub float %.sroa.0117.0..sroa.0111.0156.i, %.sroa.025.0193.i ; 2 uses
  %i.bt = fmul float %i.bs, 3.819660e-01
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.bu = call float @llvm.fabs.f32(float %i.bc)
  %i.bv = fmul float %i.bh, 5.000000e-01
  %i.bw = fmul float %.sroa.064.0188.i, %i.bv
  %i.bx = call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp olt float %i.bu, %i.bx
  br i1 %i.by, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.bz = fdiv float %.sroa.090.0.i, %i.bh        ; 2 uses
  %i.ca = fadd float %.sroa.025.0193.i, %i.bz     ; 2 uses
  %i.cb = fsub float %i.ca, %.sroa.0111.0185.i
  %i.cc = fcmp olt float %i.cb, %i.aj
  %i.cd = fsub float %.sroa.0117.0184.i, %i.ca
  %i.ce = fcmp olt float %i.cd, %i.aj
  %or.cond.i = select i1 %i.cc, i1 true, i1 %i.ce
  br i1 %or.cond.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cf = fsub float %i.al, %.sroa.025.0193.i
  %i.cg = fcmp ult float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = fneg float %i.ai
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.r
  %.sroa.095.1.i = phi float [ %i.bn, %bb.r ], [ %i.bt, %bb.t ], [ %i.ch, %bb.x ], [ %i.bz, %bb.v ], [ %i.ai, %bb.w ] ; 4 uses
  %.sroa.064.1.i = phi float [ %i.bm, %bb.r ], [ %i.bs, %bb.t ], [ %.sroa.095.0186.i, %bb.x ], [ %.sroa.095.0186.i, %bb.v ], [ %.sroa.095.0186.i, %bb.w ]
  %i.ci = call float @llvm.fabs.f32(float %.sroa.095.1.i)
  %i.cj = fcmp olt float %i.ci, %i.ai
  br i1 %i.cj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ck = fcmp ult float %.sroa.095.1.i, 0.000000e+00
  %i.cl = fneg float %i.ai
  %.sroa.0102.0.i = select i1 %i.ck, float %i.cl, float %i.ai
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.0101.0.i = phi float [ %.sroa.0102.0.i, %bb.z ], [ %.sroa.095.1.i, %bb.y ]
  %i.cm = fadd float %.sroa.025.0193.i, %.sroa.0101.0.i ; 8 uses
  %i.cn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6624, !nonnull !10, !noundef !10
  %i.co = load i64, ptr %i.ac, align 8, !noalias !6624, !noundef !10
  %i.cp = invoke fastcc i64 @_ZN4fsrs10simulation6sample17h5bbd4d15a125f958E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.cn, i64 noundef %i.co, float noundef %i.cm, i64 noundef %.sroa.010.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.ab unwind label %.loopexit.i ; 3 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cq = trunc i64 %i.cp to i1
  %.sroa.6148.0.extract.shift.i = lshr i64 %i.cp, 32
  %.sroa.6148.0.extract.trunc.i = trunc nuw i64 %.sroa.6148.0.extract.shift.i to i32
  %i.cr = bitcast i32 %.sroa.6148.0.extract.trunc.i to float ; 6 uses
  br i1 %i.cq, label %.loopexit179.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = fcmp olt float %.sroa.058.0190.i, %i.cr
  br i1 %i.cs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = fcmp ult float %i.cm, %.sroa.025.0193.i ; 2 uses
  %.sroa.025.0..sroa.0117.0.i = select i1 %i.ct, float %.sroa.025.0193.i, float %.sroa.0117.0184.i
  %.sroa.0111.0..sroa.025.0.i = select i1 %i.ct, float %.sroa.0111.0185.i, float %.sroa.025.0193.i
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.cu = fcmp olt float %i.cm, %.sroa.025.0193.i ; 2 uses
  %.sroa.0117.0..i = select i1 %i.cu, float %.sroa.0117.0184.i, float %i.cm ; 3 uses
  %..sroa.0111.0.i = select i1 %i.cu, float %i.cm, float %.sroa.0111.0185.i ; 3 uses
  %i.cv = fcmp oge float %.sroa.019.0194.i, %i.cr
  %i.cw = fcmp oeq float %.sroa.052.0191.i, %.sroa.025.0193.i
  %or.cond158.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond158.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %.sroa.0117.2.i = phi float [ %.sroa.025.0..sroa.0117.0.i, %bb.ad ], [ %.sroa.0117.0..i, %bb.ah ], [ %.sroa.0117.0..i, %bb.ag ], [ %.sroa.0117.0..i, %bb.ae ]
  %.sroa.0111.2.i = phi float [ %.sroa.0111.0..sroa.025.0.i, %bb.ad ], [ %..sroa.0111.0.i, %bb.ah ], [ %..sroa.0111.0.i, %bb.ag ], [ %..sroa.0111.0.i, %bb.ae ]
  %.sroa.062.1.i = phi float [ %.sroa.019.0194.i, %bb.ad ], [ %i.cr, %bb.ah ], [ %.sroa.062.0189.i, %bb.ag ], [ %.sroa.019.0194.i, %bb.ae ]
  %.sroa.058.1.i = phi float [ %i.cr, %bb.ad ], [ %.sroa.058.0190.i, %bb.ah ], [ %.sroa.058.0190.i, %bb.ag ], [ %.sroa.058.0190.i, %bb.ae ]
  %.sroa.052.1.i = phi float [ %.sroa.025.0193.i, %bb.ad ], [ %.sroa.052.0191.i, %bb.ah ], [ %.sroa.052.0191.i, %bb.ag ], [ %i.cm, %bb.ae ]
  %.sroa.048.1.i = phi float [ %.sroa.052.0191.i, %bb.ad ], [ %i.cm, %bb.ah ], [ %.sroa.048.0192.i, %bb.ag ], [ %.sroa.052.0191.i, %bb.ae ]
  %.sroa.025.1.i = phi float [ %i.cm, %bb.ad ], [ %.sroa.025.0193.i, %bb.ah ], [ %.sroa.025.0193.i, %bb.ag ], [ %.sroa.025.0193.i, %bb.ae ] ; 2 uses
  %.sroa.019.1.i = phi float [ %.sroa.058.0190.i, %bb.ad ], [ %.sroa.019.0194.i, %bb.ah ], [ %.sroa.019.0194.i, %bb.ag ], [ %i.cr, %bb.ae ]
  %i.cx = add nuw nsw i32 %.sroa.068.0187.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cx, 64
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %.preheader.i

bb.ag:                                            ; preds = %bb.ae
  %i.cy = fcmp oge float %.sroa.062.0189.i, %i.cr
  %i.cz = fcmp oeq float %.sroa.048.0192.i, %.sroa.025.0193.i
  %or.cond159.i = select i1 %i.cy, i1 true, i1 %i.cz
  %i.da = fcmp oeq float %.sroa.048.0192.i, %.sroa.052.0191.i
  %or.cond160.i = select i1 %or.cond159.i, i1 true, i1 %i.da
  br i1 %or.cond160.i, label %bb.ah, label %bb.af

bb.ah:                                            ; preds = %bb.ag
  br label %bb.af

.loopexit179.i:                                   ; preds = %bb.ab, %bb.o
  %.sroa.6.0.in.in.i = phi i64 [ %i.ae, %bb.o ], [ %i.cp, %bb.ab ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.aj unwind label %bb.ai, !noalias !6627

bb.ai:                                            ; preds = %.loopexit179.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.ak, !noalias !6627

bb.aj:                                            ; preds = %.loopexit179.i
  %.sroa.6.0.in.i = lshr i64 %.sroa.6.0.in.in.i, 8
  %.sroa.6.0.i = trunc i64 %.sroa.6.0.in.i to i8
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i" unwind label %bb.g, !noalias !6627

bb.ak:                                            ; preds = %bb.ai
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !6627
  unreachable

.critedge.i:                                      ; preds = %.preheader.i
  %i.dd = fcmp oge float %.sroa.025.0193.i, f0x3F333333
  %i.de = fcmp ole float %.sroa.025.0193.i, f0x3F733333
  %spec.select.i.i = and i1 %i.dd, %i.de
  %cond.fr.i = freeze i1 %spec.select.i.i
  %not.cond.fr.i = xor i1 %cond.fr.i, true
  %spec.select.i = zext i1 %not.cond.fr.i to i64
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.af, %.critedge.i
  %.sroa.025.0183.i = phi float [ %.sroa.025.0193.i, %.critedge.i ], [ %.sroa.025.1.i, %bb.af ]
  %i.df = phi i64 [ %spec.select.i, %.critedge.i ], [ 1, %bb.af ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.am unwind label %bb.al, !noalias !6627

bb.al:                                            ; preds = %.critedge.thread.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.an, !noalias !6627

bb.am:                                            ; preds = %.critedge.thread.i
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit166.i" unwind label %bb.g, !noalias !6627

bb.an:                                            ; preds = %bb.al
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !6627
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit166.i": ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6624
  %i.di = atomicrmw sub ptr %.sroa.05.0, i64 1 release, align 8, !noalias !6629
  %i.dj = icmp eq i64 %i.di, 1
  br i1 %i.dj, label %bb.ao, label %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit168.i"

bb.ao:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit166.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8bc6fba739859777E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.c)
          to label %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit168.i" unwind label %bb.ap, !noalias !6627

bb.ap:                                            ; preds = %bb.at, %bb.ao
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit.i"

"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit168.i": ; preds = %bb.ao, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit166.i"
  %i.dl = load i64, ptr %i.e, align 8, !range !24, !alias.scope !6630, !noalias !6631, !noundef !10
  %i.dm = icmp eq i64 %i.dl, -9223372036854775808
  br i1 %i.dm, label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$fsrs..simulation..Card$GT$$GT$$GT$17h60f346c209c4f033E.exit.i", label %bb.aq

bb.aq:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit168.i"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5640021b47770761E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$fsrs..simulation..Card$GT$$GT$17hb9b8b09b040be9f8E.exit.i.i" unwind label %bb.ar, !noalias !6627

bb.ar:                                            ; preds = %bb.aq
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3d700932197ad98E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.thread unwind label %bb.as, !noalias !6627

bb.as:                                            ; preds = %bb.ar
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !6627
  unreachable

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$fsrs..simulation..Card$GT$$GT$17hb9b8b09b040be9f8E.exit.i.i": ; preds = %bb.aq
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3d700932197ad98E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$fsrs..simulation..Card$GT$$GT$$GT$17h60f346c209c4f033E.exit.i"

"_ZN4core3ptr94drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$fsrs..simulation..Card$GT$$GT$$GT$17h60f346c209c4f033E.exit.i": ; preds = %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$fsrs..simulation..Card$GT$$GT$17hb9b8b09b040be9f8E.exit.i.i", %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit168.i"
  %i.dp = bitcast float %.sroa.025.0183.i to i32
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw i64 %i.dq, 32
  %i.ds = or disjoint i64 %i.dr, 768
  br label %bb.ay

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i": ; preds = %bb.aj, %bb.i
  %.sroa.6.3.i = phi i8 [ %i.p, %bb.i ], [ %.sroa.6.0.i, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6624
  %i.dt = atomicrmw sub ptr %.sroa.05.0, i64 1 release, align 8, !noalias !6632
  %i.du = icmp eq i64 %i.dt, 1
  br i1 %i.du, label %bb.at, label %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit170.i"

bb.at:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8bc6fba739859777E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.c)
          to label %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit170.i" unwind label %bb.ap, !noalias !6627

bb.au:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$fsrs..simulation..CMRRTargetFn$GT$17hea328cb6b4bda84aE.exit.i", %bb.n, %bb.f
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !6627
end_hunk_0
