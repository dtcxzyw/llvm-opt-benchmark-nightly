Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/smooth.dispatch?download=true
inline.NumInlined: 2390
inline.NumDeleted: 435
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN2cv12cpu_baseline22GaussianBlurFixedPointItEEvRKNS_3MatERS2_PKT_iS8_ii:bb.a

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ca

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 0)
          to label %bb.i unwind label %bb.bx

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 0)
          to label %bb.j unwind label %bb.bx

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24   ; 4 uses
  %i.x = load i32, ptr %1, align 8, !tbaa !16
  %i.y = lshr i32 %i.x, 5
  %i.z = and i32 %i.y, 127
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = and i32 %6, -17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEE, i64 16), ptr %10, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.r, ptr %i.ad, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.p, ptr %i.ae, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.s, ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %i.u, ptr %i.ag, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 %i.w, ptr %i.ah, align 4, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %i.aa, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %2, ptr %i.aj, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %4, ptr %i.ak, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i32 %3, ptr %i.al, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 76
  store i32 %5, ptr %i.am, align 4, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i32 %i.ab, ptr %i.an, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  store i8 0, ptr %i.ao, align 4, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 85 ; 2 uses
  store i8 0, ptr %i.ap, align 1, !tbaa !126
  switch i32 %3, label %bb.ad [
    i32 1, label %bb.k
    i32 3, label %bb.n
    i32 5, label %bb.u
  ]

bb.k:                                             ; preds = %bb.j
  %i.aq = load i16, ptr %2, align 2, !tbaa !46
  %i.ar = icmp eq i16 %i.aq, 256
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_114hlineSmooth1N1IhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.as, align 8, !tbaa !47
  br label %.loopexit159.i.i

bb.m:                                             ; preds = %bb.k
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth1NIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.as, align 8, !tbaa !47
  br label %.loopexit159.i.i

bb.n:                                             ; preds = %bb.j
  %i.at = load i16, ptr %2, align 2, !tbaa !46    ; 2 uses
  %i.au = icmp eq i16 %i.at, 64
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !46
  %i.ax = icmp eq i16 %i.aw, 128
  br i1 %i.ax, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !46
  %i.ba = icmp eq i16 %i.az, 64
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_116hlineSmooth3N121IhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.bb, align 8, !tbaa !47
  br label %.loopexit159.i.i

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !46, !noalias !127
  %.not.i.i = icmp ugt i16 %i.at, %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_116hlineSmooth3NabaIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.be, align 8, !tbaa !47
  br label %.loopexit159.i.i

bb.t:                                             ; preds = %bb.r
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth3NIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.be, align 8, !tbaa !47
  br label %.loopexit159.i.i

bb.u:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !46
  %i.bh = icmp eq i16 %i.bg, 96
  br i1 %i.bh, label %bb.v, label %.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !46
  %i.bk = icmp eq i16 %i.bj, 64
  br i1 %i.bk, label %bb.w, label %.thread.i.i

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !46
  %i.bn = icmp eq i16 %i.bm, 64
  br i1 %i.bn, label %bb.x, label %.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.bo = load i16, ptr %2, align 2, !tbaa !46
  %i.bp = icmp eq i16 %i.bo, 16
  br i1 %i.bp, label %bb.y, label %.thread.i.i

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !46
  %i.bs = icmp eq i16 %i.br, 16
  br i1 %i.bs, label %bb.z, label %.thread.i.i

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_118hlineSmooth5N14641IhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.bt, align 8, !tbaa !47
  br label %.loopexit159.i.i

.thread.i.i:                                      ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load i16, ptr %2, align 2, !tbaa !46
  %i.bw = load i16, ptr %i.bu, align 2, !tbaa !46
  %i.bx = icmp eq i16 %i.bv, %i.bw
  br i1 %i.bx, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.thread.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ca = load i16, ptr %i.by, align 2, !tbaa !46
  %i.cb = load i16, ptr %i.bz, align 2, !tbaa !46
  %i.cc = icmp eq i16 %i.ca, %i.cb
  br i1 %i.cc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_118hlineSmooth5NabcbaIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.cd, align 8, !tbaa !47
  br label %.loopexit159.i.i

bb.ac:                                            ; preds = %bb.aa, %.thread.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth5NIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.ce, align 8, !tbaa !47
  br label %.loopexit159.i.i

bb.ad:                                            ; preds = %bb.j
  %i.cf = and i32 %3, -2147483647
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %12 = add nsw i32 %3, -1
  %i.ch = lshr exact i32 %12, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !46
  %i.cl = icmp eq i16 %i.ck, 256
  %spec.select.i.i = select i1 %i.cl, ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_114hlineSmooth1N1IhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_120hlineSmoothONa_yzy_aIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  store ptr %spec.select.i.i, ptr %i.cm, align 8, !tbaa !47
  %13 = lshr i32 %3, 1                            ; 2 uses
  %.not163.i.i = icmp eq i32 %13, 0
  br i1 %.not163.i.i, label %.loopexit159.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ae
  %i.cn = zext nneg i32 %3 to i64
  %wide.trip.count.i.i = zext nneg i32 %13 to i64
  %i.co = getelementptr [2 x i8], ptr %2, i64 %i.cn
  br label %.lr.ph.i.i

bb.af:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit159.i.i, label %.lr.ph.i.i, !llvm.loop !124

.lr.ph.i.i:                                       ; preds = %bb.af, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.af ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.cq = xor i64 %indvars.iv.i.i, -1
  %i.cr = getelementptr [2 x i8], ptr %i.co, i64 %i.cq
  %i.cs = load i16, ptr %i.cp, align 2, !tbaa !46
  %i.ct = load i16, ptr %i.cr, align 2, !tbaa !46
  %i.cu = icmp eq i16 %i.cs, %i.ct
  br i1 %i.cu, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_111hlineSmoothIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.cm, align 8, !tbaa !47
  br label %.loopexit159.i.i

bb.ah:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_111hlineSmoothIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKT_iPKT0_iPS8_iib, ptr %i.cv, align 8, !tbaa !47
  br label %.loopexit159.i.i

.loopexit159.i.i:                                 ; preds = %bb.af, %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.ab, %bb.z, %bb.t, %bb.s, %bb.q, %bb.m, %bb.l
  switch i32 %5, label %bb.av [
    i32 1, label %bb.ai
    i32 3, label %bb.al
    i32 5, label %bb.ap
  ]

bb.ai:                                            ; preds = %.loopexit159.i.i
  %i.cw = load i16, ptr %4, align 2, !tbaa !46
  %i.cx = icmp eq i16 %i.cw, 256
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  br i1 %i.cx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_114vlineSmooth1N1IhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.cy, align 8, !tbaa !49
  br label %.loopexit.i.i

bb.ak:                                            ; preds = %bb.ai
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth1NIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.cy, align 8, !tbaa !49
  br label %.loopexit.i.i

bb.al:                                            ; preds = %.loopexit159.i.i
  %i.cz = load i16, ptr %4, align 2, !tbaa !46
  %i.da = icmp eq i16 %i.cz, 64
  br i1 %i.da, label %bb.am, label %.critedge2.i.i

bb.am:                                            ; preds = %bb.al
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !46
  %i.dd = icmp eq i16 %i.dc, 128
  br i1 %i.dd, label %bb.an, label %.critedge2.i.i

bb.an:                                            ; preds = %bb.am
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.df = load i16, ptr %i.de, align 2, !tbaa !46
  %i.dg = icmp eq i16 %i.df, 64
  br i1 %i.dg, label %bb.ao, label %.critedge2.i.i

bb.ao:                                            ; preds = %bb.an
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_116vlineSmooth3N121IhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.dh, align 8, !tbaa !49
  br label %.loopexit.i.i

.critedge2.i.i:                                   ; preds = %bb.an, %bb.am, %bb.al
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth3NIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.di, align 8, !tbaa !49
  br label %.loopexit.i.i

bb.ap:                                            ; preds = %.loopexit159.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !46
  %i.dl = icmp eq i16 %i.dk, 96
  br i1 %i.dl, label %bb.aq, label %.thread150.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !46
  %i.do = icmp eq i16 %i.dn, 64
  br i1 %i.do, label %bb.ar, label %.thread150.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !46
  %i.dr = icmp eq i16 %i.dq, 64
  br i1 %i.dr, label %bb.as, label %.thread150.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ds = load i16, ptr %4, align 2, !tbaa !46
  %i.dt = icmp eq i16 %i.ds, 16
  br i1 %i.dt, label %bb.at, label %.thread150.i.i

bb.at:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !46
  %i.dw = icmp eq i16 %i.dv, 16
  br i1 %i.dw, label %bb.au, label %.thread150.i.i

bb.au:                                            ; preds = %bb.at
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_118vlineSmooth5N14641IhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.dx, align 8, !tbaa !49
  br label %.loopexit.i.i

.thread150.i.i:                                   ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth5NIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.dy, align 8, !tbaa !49
  br label %.loopexit.i.i

bb.av:                                            ; preds = %.loopexit159.i.i
  %i.dz = and i32 %5, -2147483647
  %i.ea = icmp eq i32 %i.dz, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 3 uses
  br i1 %i.ea, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_120vlineSmoothONa_yzy_aIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.eb, align 8, !tbaa !49
  %i.ec = lshr i32 %5, 1                          ; 2 uses
  %.not164.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not164.i.i, label %.loopexit.i.i, label %.lr.ph162.preheader.i.i

.lr.ph162.preheader.i.i:                          ; preds = %bb.aw
  %i.ed = zext nneg i32 %5 to i64
  %wide.trip.count169.i.i = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr [2 x i8], ptr %4, i64 %i.ed
  br label %.lr.ph162.i.i

bb.ax:                                            ; preds = %.lr.ph162.i.i
  %indvars.iv.next167.i.i = add nuw nsw i64 %indvars.iv166.i.i, 1 ; 2 uses
  %exitcond170.not.i.i = icmp eq i64 %indvars.iv.next167.i.i, %wide.trip.count169.i.i
  br i1 %exitcond170.not.i.i, label %.loopexit.i.i, label %.lr.ph162.i.i, !llvm.loop !125

.lr.ph162.i.i:                                    ; preds = %bb.ax, %.lr.ph162.preheader.i.i
  %indvars.iv166.i.i = phi i64 [ 0, %.lr.ph162.preheader.i.i ], [ %indvars.iv.next167.i.i, %bb.ax ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv166.i.i
  %i.eg = xor i64 %indvars.iv166.i.i, -1
  %i.eh = getelementptr [2 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = load i16, ptr %i.ef, align 2, !tbaa !46
  %i.ej = load i16, ptr %i.eh, align 2, !tbaa !46
  %i.ek = icmp eq i16 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ax, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph162.i.i
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_111vlineSmoothIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.eb, align 8, !tbaa !49
  br label %.loopexit.i.i

bb.az:                                            ; preds = %bb.av
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_111vlineSmoothIhNS_12_GLOBAL__N_113ufixedpoint16EEEvPKPKT0_S7_iPT_iib, ptr %i.eb, align 8, !tbaa !49
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ax, %bb.az, %bb.ay, %bb.aw, %.thread150.i.i, %bb.au, %.critedge2.i.i, %bb.ao, %bb.ak, %bb.aj
  %i.el = icmp sgt i32 %i.u, 3
  br i1 %i.el, label %bb.ba, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEC2EPKhmPhmiiiPKS4_iSA_ii.exit.i

bb.ba:                                            ; preds = %.loopexit.i.i
  %i.em = icmp sgt i32 %i.w, 3
  %i.en = icmp eq i32 %3, 3
  %or.cond.i.i = and i1 %i.en, %i.em
  br i1 %or.cond.i.i, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.eo = load i16, ptr %2, align 2, !tbaa !46
  %i.ep = icmp eq i16 %i.eo, 64
  br i1 %i.ep, label %bb.bc, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEC2EPKhmPhmiiiPKS4_iSA_ii.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !46
  %i.es = icmp eq i16 %i.er, 128
  br i1 %i.es, label %bb.bd, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEC2EPKhmPhmiiiPKS4_iSA_ii.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !46
  %i.ev = icmp eq i16 %i.eu, 64
  br i1 %i.ev, label %bb.be, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEC2EPKhmPhmiiiPKS4_iSA_ii.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.ew = load i16, ptr %4, align 2, !tbaa !46
  %i.ex = icmp eq i16 %i.ew, 64
  br i1 %i.ex, label %bb.bf, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEC2EPKhmPhmiiiPKS4_iSA_ii.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !46
  %i.fa = icmp eq i16 %i.ez, 128
  br i1 %i.fa, label %bb.bg, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEC2EPKhmPhmiiiPKS4_iSA_ii.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !46
  %i.fd = icmp eq i16 %i.fc, 64
  br i1 %i.fd, label %bb.bh, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEC2EPKhmPhmiiiPKS4_iSA_ii.exit.i

bb.bh:                                            ; preds = %bb.bg
  store i8 1, ptr %i.ao, align 4, !tbaa !43
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerIhNS_12_GLOBAL__N_113ufixedpoint16EEC2EPKhmPhmiiiPKS4_iSA_ii.exit.i

bb.bi:                                            ; preds = %bb.ba
  %i.fe = icmp eq i32 %3, 5
  %i.ff = icmp samesign ugt i32 %i.u, 5
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baseline22GaussianBlurFixedPointIjEEvRKNS_3MatERS2_PKT_iS8_ii:bb.a

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %8, align 8, !tbaa !20     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.h, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ca

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 0)
          to label %bb.i unwind label %bb.bx

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 0)
          to label %bb.j unwind label %bb.bx

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !24   ; 4 uses
  %i.x = load i32, ptr %1, align 8, !tbaa !16
  %i.y = lshr i32 %i.x, 5
  %i.z = and i32 %i.y, 127
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = and i32 %6, -17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEE, i64 16), ptr %10, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.o, ptr %i.ac, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.r, ptr %i.ad, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.p, ptr %i.ae, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.s, ptr %i.af, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %i.u, ptr %i.ag, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 %i.w, ptr %i.ah, align 4, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 %i.aa, ptr %i.ai, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr %2, ptr %i.aj, align 8, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 64
  store ptr %4, ptr %i.ak, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i32 %3, ptr %i.al, align 8, !tbaa !68
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 76
  store i32 %5, ptr %i.am, align 4, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i32 %i.ab, ptr %i.an, align 8, !tbaa !70
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  store i8 0, ptr %i.ao, align 4, !tbaa !71
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 85 ; 2 uses
  store i8 0, ptr %i.ap, align 1, !tbaa !132
  switch i32 %3, label %bb.ad [
    i32 1, label %bb.k
    i32 3, label %bb.n
    i32 5, label %bb.u
  ]

bb.k:                                             ; preds = %bb.j
  %i.aq = load i32, ptr %2, align 4, !tbaa !73
  %i.ar = icmp eq i32 %i.aq, 65536
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_114hlineSmooth1N1ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.as, align 8, !tbaa !74
  br label %.loopexit157.i.i

bb.m:                                             ; preds = %bb.k
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth1NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.as, align 8, !tbaa !74
  br label %.loopexit157.i.i

bb.n:                                             ; preds = %bb.j
  %i.at = load i32, ptr %2, align 4, !tbaa !73    ; 2 uses
  %i.au = icmp eq i32 %i.at, 16384
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !73
  %i.ax = icmp eq i32 %i.aw, 32768
  br i1 %i.ax, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.ba = icmp eq i32 %i.az, 16384
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_116hlineSmooth3N121ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.bb, align 8, !tbaa !74
  br label %.loopexit157.i.i

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !73, !noalias !133
  %.not.i.i = icmp ugt i32 %i.at, %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_116hlineSmooth3NabaItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.be, align 8, !tbaa !74
  br label %.loopexit157.i.i

bb.t:                                             ; preds = %bb.r
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth3NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.be, align 8, !tbaa !74
  br label %.loopexit157.i.i

bb.u:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !73
  %i.bh = icmp eq i32 %i.bg, 24576
  br i1 %i.bh, label %bb.v, label %.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !73
  %i.bk = icmp eq i32 %i.bj, 16384
  br i1 %i.bk, label %bb.w, label %.thread.i.i

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !73
  %i.bn = icmp eq i32 %i.bm, 16384
  br i1 %i.bn, label %bb.x, label %.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.bo = load i32, ptr %2, align 4, !tbaa !73
  %i.bp = icmp eq i32 %i.bo, 4096
  br i1 %i.bp, label %bb.y, label %.thread.i.i

bb.y:                                             ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !73
  %i.bs = icmp eq i32 %i.br, 4096
  br i1 %i.bs, label %bb.z, label %.thread.i.i

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_118hlineSmooth5N14641ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.bt, align 8, !tbaa !74
  br label %.loopexit157.i.i

.thread.i.i:                                      ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bv = load i32, ptr %2, align 4, !tbaa !73
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.thread.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !73
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !73
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_118hlineSmooth5NabcbaItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.cd, align 8, !tbaa !74
  br label %.loopexit157.i.i

bb.ac:                                            ; preds = %bb.aa, %.thread.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113hlineSmooth5NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.ce, align 8, !tbaa !74
  br label %.loopexit157.i.i

bb.ad:                                            ; preds = %bb.j
  %i.cf = and i32 %3, -2147483647
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %12 = add nsw i32 %3, -1
  %i.ch = lshr exact i32 %12, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !73
  %i.cl = icmp eq i32 %i.ck, 65536
  %spec.select.i.i = select i1 %i.cl, ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_114hlineSmooth1N1ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_120hlineSmoothONa_yzy_aItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  store ptr %spec.select.i.i, ptr %i.cm, align 8, !tbaa !74
  %13 = lshr i32 %3, 1                            ; 2 uses
  %.not161.i.i = icmp eq i32 %13, 0
  br i1 %.not161.i.i, label %.loopexit157.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ae
  %i.cn = zext nneg i32 %3 to i64
  %wide.trip.count.i.i = zext nneg i32 %13 to i64
  %i.co = getelementptr [4 x i8], ptr %2, i64 %i.cn
  br label %.lr.ph.i.i

bb.af:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit157.i.i, label %.lr.ph.i.i, !llvm.loop !130

.lr.ph.i.i:                                       ; preds = %bb.af, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.af ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.cq = xor i64 %indvars.iv.i.i, -1
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %i.cq
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !73
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !73
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.af, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_111hlineSmoothItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.cm, align 8, !tbaa !74
  br label %.loopexit157.i.i

bb.ah:                                            ; preds = %bb.ad
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 88
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_111hlineSmoothItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKT_iPKT0_iPS8_iib, ptr %i.cv, align 8, !tbaa !74
  br label %.loopexit157.i.i

.loopexit157.i.i:                                 ; preds = %bb.af, %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.ab, %bb.z, %bb.t, %bb.s, %bb.q, %bb.m, %bb.l
  switch i32 %5, label %bb.av [
    i32 1, label %bb.ai
    i32 3, label %bb.al
    i32 5, label %bb.ap
  ]

bb.ai:                                            ; preds = %.loopexit157.i.i
  %i.cw = load i32, ptr %4, align 4, !tbaa !73
  %i.cx = icmp eq i32 %i.cw, 65536
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  br i1 %i.cx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_114vlineSmooth1N1ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.cy, align 8, !tbaa !75
  br label %.loopexit.i.i

bb.ak:                                            ; preds = %bb.ai
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth1NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.cy, align 8, !tbaa !75
  br label %.loopexit.i.i

bb.al:                                            ; preds = %.loopexit157.i.i
  %i.cz = load i32, ptr %4, align 4, !tbaa !73
  %i.da = icmp eq i32 %i.cz, 16384
  br i1 %i.da, label %bb.am, label %.critedge2.i.i

bb.am:                                            ; preds = %bb.al
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !73
  %i.dd = icmp eq i32 %i.dc, 32768
  br i1 %i.dd, label %bb.an, label %.critedge2.i.i

bb.an:                                            ; preds = %bb.am
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !73
  %i.dg = icmp eq i32 %i.df, 16384
  br i1 %i.dg, label %bb.ao, label %.critedge2.i.i

bb.ao:                                            ; preds = %bb.an
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_116vlineSmooth3N121ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.dh, align 8, !tbaa !75
  br label %.loopexit.i.i

.critedge2.i.i:                                   ; preds = %bb.an, %bb.am, %bb.al
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth3NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.di, align 8, !tbaa !75
  br label %.loopexit.i.i

bb.ap:                                            ; preds = %.loopexit157.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !73
  %i.dl = icmp eq i32 %i.dk, 24576
  br i1 %i.dl, label %bb.aq, label %.thread148.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !73
  %i.do = icmp eq i32 %i.dn, 16384
  br i1 %i.do, label %bb.ar, label %.thread148.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !73
  %i.dr = icmp eq i32 %i.dq, 16384
  br i1 %i.dr, label %bb.as, label %.thread148.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ds = load i32, ptr %4, align 4, !tbaa !73
  %i.dt = icmp eq i32 %i.ds, 4096
  br i1 %i.dt, label %bb.at, label %.thread148.i.i

bb.at:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !73
  %i.dw = icmp eq i32 %i.dv, 4096
  br i1 %i.dw, label %bb.au, label %.thread148.i.i

bb.au:                                            ; preds = %bb.at
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_118vlineSmooth5N14641ItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.dx, align 8, !tbaa !75
  br label %.loopexit.i.i

.thread148.i.i:                                   ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 96
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_113vlineSmooth5NItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.dy, align 8, !tbaa !75
  br label %.loopexit.i.i

bb.av:                                            ; preds = %.loopexit157.i.i
  %i.dz = and i32 %5, -2147483647
  %i.ea = icmp eq i32 %i.dz, 1
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 3 uses
  br i1 %i.ea, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_120vlineSmoothONa_yzy_aItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.eb, align 8, !tbaa !75
  %i.ec = lshr i32 %5, 1                          ; 2 uses
  %.not162.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not162.i.i, label %.loopexit.i.i, label %.lr.ph160.preheader.i.i

.lr.ph160.preheader.i.i:                          ; preds = %bb.aw
  %i.ed = zext nneg i32 %5 to i64
  %wide.trip.count167.i.i = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr [4 x i8], ptr %4, i64 %i.ed
  br label %.lr.ph160.i.i

bb.ax:                                            ; preds = %.lr.ph160.i.i
  %indvars.iv.next165.i.i = add nuw nsw i64 %indvars.iv164.i.i, 1 ; 2 uses
  %exitcond168.not.i.i = icmp eq i64 %indvars.iv.next165.i.i, %wide.trip.count167.i.i
  br i1 %exitcond168.not.i.i, label %.loopexit.i.i, label %.lr.ph160.i.i, !llvm.loop !131

.lr.ph160.i.i:                                    ; preds = %bb.ax, %.lr.ph160.preheader.i.i
  %indvars.iv164.i.i = phi i64 [ 0, %.lr.ph160.preheader.i.i ], [ %indvars.iv.next165.i.i, %bb.ax ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv164.i.i
  %i.eg = xor i64 %indvars.iv164.i.i, -1
  %i.eh = getelementptr [4 x i8], ptr %i.ee, i64 %i.eg
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !73
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !73
  %i.ek = icmp eq i32 %i.ei, %i.ej
  br i1 %i.ek, label %bb.ax, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph160.i.i
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_111vlineSmoothItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.eb, align 8, !tbaa !75
  br label %.loopexit.i.i

bb.az:                                            ; preds = %bb.av
  store ptr @_ZN2cv12cpu_baseline12_GLOBAL__N_111vlineSmoothItNS_12_GLOBAL__N_113ufixedpoint32EEEvPKPKT0_S7_iPT_iib, ptr %i.eb, align 8, !tbaa !75
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.ax, %bb.az, %bb.ay, %bb.aw, %.thread148.i.i, %bb.au, %.critedge2.i.i, %bb.ao, %bb.ak, %bb.aj
  %i.el = icmp sgt i32 %i.u, 3
  br i1 %i.el, label %bb.ba, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEC2EPKtmPtmiiiPKS4_iSA_ii.exit.i

bb.ba:                                            ; preds = %.loopexit.i.i
  %i.em = icmp sgt i32 %i.w, 3
  %i.en = icmp eq i32 %3, 3
  %or.cond.i.i = and i1 %i.en, %i.em
  br i1 %or.cond.i.i, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.eo = load i32, ptr %2, align 4, !tbaa !73
  %i.ep = icmp eq i32 %i.eo, 16384
  br i1 %i.ep, label %bb.bc, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEC2EPKtmPtmiiiPKS4_iSA_ii.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !73
  %i.es = icmp eq i32 %i.er, 32768
  br i1 %i.es, label %bb.bd, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEC2EPKtmPtmiiiPKS4_iSA_ii.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !73
  %i.ev = icmp eq i32 %i.eu, 16384
  br i1 %i.ev, label %bb.be, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEC2EPKtmPtmiiiPKS4_iSA_ii.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.ew = load i32, ptr %4, align 4, !tbaa !73
  %i.ex = icmp eq i32 %i.ew, 16384
  br i1 %i.ex, label %bb.bf, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEC2EPKtmPtmiiiPKS4_iSA_ii.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !73
  %i.fa = icmp eq i32 %i.ez, 32768
  br i1 %i.fa, label %bb.bg, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEC2EPKtmPtmiiiPKS4_iSA_ii.exit.i

bb.bg:                                            ; preds = %bb.bf
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !73
  %i.fd = icmp eq i32 %i.fc, 16384
  br i1 %i.fd, label %bb.bh, label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEC2EPKtmPtmiiiPKS4_iSA_ii.exit.i

bb.bh:                                            ; preds = %bb.bg
  store i8 1, ptr %i.ao, align 4, !tbaa !71
  br label %_ZN2cv12cpu_baseline12_GLOBAL__N_118fixedSmoothInvokerItNS_12_GLOBAL__N_113ufixedpoint32EEC2EPKtmPtmiiiPKS4_iSA_ii.exit.i

bb.bi:                                            ; preds = %bb.ba
  %i.fe = icmp eq i32 %3, 5
  %i.ff = icmp samesign ugt i32 %i.u, 5
end_hunk_1
