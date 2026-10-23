Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/Clustering?download=true
inline.NumInlined: 768
inline.NumDeleted: 393
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5faiss10Clustering13train_encodedElPKhPKNS_5IndexERS3_PKf:bb.a
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !58 ; 2 uses
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = ashr exact i64 %i.es, 2                 ; 3 uses
  %i.eu = icmp ugt i64 %i.em, %i.et
  br i1 %i.eu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ev = sub nuw i64 %i.em, %i.et
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 noundef %i.ev)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.an

bb.av:                                            ; preds = %bb.at
  %i.ew = icmp ult i64 %i.em, %i.et
  br i1 %i.ew, label %bb.aw, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.aw:                                            ; preds = %bb.av
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.em ; 2 uses
  %.not.i.i305 = icmp eq ptr %i.eo, %i.ex
  br i1 %.not.i.i305, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.aw
  store ptr %i.ex, ptr %i.en, align 8, !tbaa !58
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.aw, %bb.av, %bb.au
  %i.ey = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 2 uses
  br i1 %.not252, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ez = load i64, ptr %i.dj, align 8, !tbaa !45
  %i.fa = shl i64 %i.ez, 2
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !46
  %i.fc = mul i64 %i.fa, %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ey, ptr align 1 %2, i64 %i.fc, i1 false)
  br label %bb.az

bb.ay:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.fd = load ptr, ptr %3, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 208
  %i.ff = load ptr, ptr %i.fe, align 8
  invoke void %i.ff(ptr noundef nonnull align 8 dereferenceable(36) %3, i64 noundef %.0228, ptr noundef %2, ptr noundef %i.ey)
          to label %bb.az unwind label %bb.an

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !73 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !15
  %.not.i = icmp eq ptr %i.fi, %i.fk
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i8 0, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store double 1.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !52
  %.sroa.7459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store i64 0, ptr %.sroa.7459.0..sroa_idx, align 8
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !73
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  store ptr %i.fm, ptr %i.fh, align 8, !tbaa !73
  br label %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE9push_backERKS1_.exit

bb.bb:                                            ; preds = %bb.az
  %i.fn = load ptr, ptr %i.fg, align 8, !tbaa !14 ; 4 uses
  %i.fo = ptrtoint ptr %i.fi to i64
  %i.fp = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fq = sub i64 %i.fo, %i.fp                    ; 5 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775800
  br i1 %i.fr, label %bb.bc, label %_ZNKSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #22
          to label %.noexc306 unwind label %bb.bq

.noexc306:                                        ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bb
  %i.fs = sdiv exact i64 %i.fq, 40                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 230584300921369395)
  %i.fw = select i1 %i.fu, i64 230584300921369395, i64 %i.fv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 40
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #20
          to label %.noexc307 unwind label %bb.bq ; 4 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 %i.fq ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i8 0, i64 24, i1 false)
  %.sroa.6.0..sroa_idx457 = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store double 1.000000e+00, ptr %.sroa.6.0..sroa_idx457, align 8, !tbaa !52
  %.sroa.7459.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  store i64 0, ptr %.sroa.7459.0..sroa_idx460, align 8
  %i.ga = icmp sgt i64 %i.fq, 0
  br i1 %i.ga, label %bb.bd, label %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bd:                                            ; preds = %.noexc307
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fy, ptr align 8 %i.fn, i64 %i.fq, i1 false)
  br label %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bd, %.noexc307
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %.not.i17.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.gc = load ptr, ptr %i.fj, align 8, !tbaa !15
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = sub i64 %i.gd, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.ge) #19
  br label %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.be, %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.fy, ptr %i.fg, align 8, !tbaa !14
  store ptr %i.gb, ptr %i.fh, align 8, !tbaa !73
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gf, ptr %i.fj, align 8, !tbaa !15
  br label %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ba
  %i.gg = load ptr, ptr %4, align 8, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 112
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %bb.bf unwind label %bb.bq

bb.bf:                                            ; preds = %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE9push_backERKS1_.exit
  %i.gj = load i64, ptr %i.c, align 8, !tbaa !46
  %i.gk = load ptr, ptr %i.ek, align 8, !tbaa !18
  %i.gl = load ptr, ptr %4, align 8, !tbaa !10
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = load ptr, ptr %i.gm, align 8
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(36) %4, i64 noundef %i.gj, ptr noundef %i.gk)
          to label %bb.fg unwind label %bb.bq

bb.bg:                                            ; preds = %bb.aq
  br i1 %i.eh, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.go = load i64, ptr %i.dj, align 8, !tbaa !45
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !28
  %i.gr = load i32, ptr %i.dm, align 8, !tbaa !27
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i64 noundef %.0228, i64 noundef %i.go, i64 noundef %i.ed, i32 noundef %i.gq, i32 noundef %i.gr) ; 0 uses
  br i1 %.not252, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gt = load ptr, ptr %3, align 8, !tbaa !10
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 192
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = invoke noundef i64 %i.gv(ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %bb.bj unwind label %bb.an

bb.bj:                                            ; preds = %bb.bi
  %i.gx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.gw) ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bh, %bb.bj, %bb.bg
  %i.gy = icmp ugt i64 %.0228, 2305843009213693951 ; 2 uses
  %i.gz = shl nuw i64 %.0228, 3
  %i.ha = select i1 %i.gy, i64 -1, i64 %i.gz
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ha) #20
          to label %bb.bl unwind label %bb.bq     ; 6 uses

bb.bl:                                            ; preds = %bb.bk
  %i.hc = icmp ugt i64 %.0228, 4611686018427387903
  %i.hd = shl i64 %.0228, 2                       ; 2 uses
  %i.he = select i1 %i.hc, i64 -1, i64 %i.hd
  %i.hf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.he) #20
          to label %bb.bm unwind label %bb.br     ; 13 uses

bb.bm:                                            ; preds = %bb.bl
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !115 ; 2 uses
  %i.hi = icmp eq i32 %i.hh, 0
  %i.hj = icmp eq i32 %i.hh, 23
  %i.hk = or i1 %i.hi, %i.hj                      ; 2 uses
  %i.hl = select i1 %i.hk, float -inf, float +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 20 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !58
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !18
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 2                 ; 3 uses
  %i.hu = load i64, ptr %i.dj, align 8, !tbaa !45 ; 3 uses
  %i.hv = urem i64 %i.ht, %i.hu
  %i.hw = udiv i64 %i.ht, %i.hu                   ; 11 uses
  %i.hx = icmp eq i64 %i.hv, 0
  br i1 %i.hx, label %bb.bx, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.hy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.hy, ptr %12, align 8, !tbaa !66
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 0, ptr %i.hz, align 8, !tbaa !68
  store i8 0, ptr %i.hy, align 8, !tbaa !69
  %i.ia = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #21 ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %i.ic = zext nneg i32 %i.ia to i64              ; 2 uses
  %i.id = add nuw nsw i64 %i.ic, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.id)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.ie = load ptr, ptr %12, align 8, !tbaa !70
  %i.if = load i64, ptr %i.hz, align 8, !tbaa !68
  %i.ig = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ie, i64 noundef %i.if, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #21 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ic)
          to label %bb.bt unwind label %bb.bs

bb.bq:                                            ; preds = %_ZNSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE9push_backERKS1_.exit, %bb.bf, %bb.bc, %_ZNKSt6vectorIN5faiss24ClusteringIterationStatsESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.bk
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.br:                                            ; preds = %bb.bl
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_lSt14default_deleteIS0_EED2Ev.exit387

bb.bs:                                            ; preds = %bb.bu, %bb.bp, %bb.bo
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bp, %bb.bn
  %i.ik = call ptr @__cxa_allocate_exception(i64 40) #21 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ik, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss10Clustering13train_encodedElPKhPKNS_5IndexERS3_PKf, ptr noundef nonnull @.str.2, i32 noundef 175)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.ik, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #22
          to label %bb.fl unwind label %bb.bs

bb.bv:                                            ; preds = %bb.bt
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ik) #21
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  %.pn259 = phi { ptr, i32 } [ %i.ij, %bb.bs ], [ %i.il, %bb.bv ]
  %i.im = load ptr, ptr %12, align 8, !tbaa !70   ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.hy
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.bw
  %i.io = load i64, ptr %i.hy, align 8, !tbaa !69
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit377

bb.bx:                                            ; preds = %bb.bm
  %i.iq = load i8, ptr %i.ef, align 8, !tbaa !72, !range !55, !noundef !56 ; 2 uses
  %i.ir = trunc nuw i8 %i.iq to i1
  %i.is = icmp ule i64 %i.hu, %i.ht               ; 2 uses
  %or.cond = and i1 %i.is, %i.ir
  br i1 %or.cond, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.iu = load i8, ptr %i.it, align 4, !tbaa !116, !range !55, !noundef !56
  %i.iv = trunc nuw i8 %i.iu to i1
  %i.iw = select i1 %i.iv, ptr @.str.16, ptr @.str.17
  %i.ix = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %i.hw, ptr noundef nonnull %i.iw) ; 0 uses
  %.pre584 = load i8, ptr %i.ef, align 8, !tbaa !72, !range !55
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.iy = phi i8 [ %.pre584, %bb.by ], [ %i.iq, %bb.bx ]
  %i.iz = trunc nuw i8 %i.iy to i1
  br i1 %i.iz, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.ja = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.jb = fsub double %i.ja, %i.di
  %i.jc = fdiv double %i.jb, 1.000000e+03
  %i.jd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %i.jc) ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %i.je = invoke noundef double @_ZN5faiss12getmillisecsEv()
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !31
  %i.jh = invoke noundef i64 @_ZN5faiss6detail19get_actual_rng_seedEi(i32 noundef %i.jg)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not252, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ji = load i64, ptr %i.dj, align 8, !tbaa !45
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !32
  %i.jl = mul i64 %i.jk, %i.ji                    ; 5 uses
  %i.jm = icmp ugt i64 %i.jl, 2305843009213693951
  br i1 %i.jm, label %bb.cg, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #22
          to label %.noexc311 unwind label %bb.ci

.noexc311:                                        ; preds = %bb.cg
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.cf
  %.not.i.i.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.jn = shl nuw nsw i64 %i.jl, 2
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #20
          to label %.noexc312 unwind label %bb.ci ; 5 uses

.noexc312:                                        ; preds = %bb.ch
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jl ; 2 uses
  store float 0.000000e+00, ptr %i.jo, align 4, !tbaa !60
  %i.jq = add nsw i64 %i.jl, -1                   ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc312
  %i.js = getelementptr i8, ptr %i.jo, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.jq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.js, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !60
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %bb.ce, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc312, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0438.0 = phi ptr [ %i.jo, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.jo, %.noexc312 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %bb.ce ] ; 8 uses
  %.sroa.11443.0 = phi ptr [ %i.jp, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.jp, %.noexc312 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %bb.ce ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !28 ; 2 uses
  %i.jv = icmp sgt i32 %i.ju, 0
  br i1 %i.jv, label %.lr.ph548, label %._crit_edge549.thread

.lr.ph548:                                        ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jy = add i64 %i.jh, 1                        ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.kb = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.not.i.i.i.i317 = icmp eq i64 %.0228, 0        ; 2 uses
  %i.kc = add nsw i64 %.0228, -1                  ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 0
  %.idx.i.i.i.i.i.i.i318 = shl nuw nsw i64 %i.kc, 2
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kh = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kj = icmp sgt i64 %.0228, 0
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.neg = add i64 %i.hw, 1
  %xtraiter761 = and i64 %.0228, 7                ; 3 uses
  %i.kq = icmp ult i64 %.0228, 8
  %unroll_iter765 = and i64 %.0228, 9223372036854775800
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  %lcmp.mod764 = icmp ne i64 %xtraiter761, 0
  br label %bb.cj

._crit_edge549:                                   ; preds = %bb.ey
  %i.kr = icmp sgt i32 %i.xv, 1
  br i1 %i.kr, label %bb.ez, label %._crit_edge549.thread

bb.ci:                                            ; preds = %bb.cd, %bb.cc, %bb.ca, %bb.ch, %bb.cg
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit377

bb.cj:                                            ; preds = %.lr.ph548, %bb.ey
  %indvars.iv = phi i64 [ 0, %.lr.ph548 ], [ %indvars.iv.next, %bb.ey ] ; 4 uses
  %i.kt = phi i32 [ %i.ju, %.lr.ph548 ], [ %i.xv, %bb.ey ] ; 2 uses
  %.0188546 = phi double [ 0.000000e+00, %.lr.ph548 ], [ %.2190, %bb.ey ] ; 2 uses
  %.0191545 = phi float [ %i.hl, %.lr.ph548 ], [ %.2193, %bb.ey ] ; 4 uses
  %i.ku = load i8, ptr %i.ef, align 8, !tbaa !72, !range !55, !noundef !56
  %i.kv = trunc nuw i8 %i.ku to i1
  %i.kw = icmp sgt i32 %i.kt, 1
  %or.cond290 = and i1 %i.kw, %i.kv
  br i1 %or.cond290, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.kx = trunc nuw nsw i64 %indvars.iv to i32
  %i.ky = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.kx, i32 noundef %i.kt) ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.kz = load i64, ptr %i.dj, align 8, !tbaa !45
  %i.la = load i64, ptr %i.c, align 8, !tbaa !46  ; 4 uses
  %i.lb = mul i64 %i.la, %i.kz                    ; 4 uses
  %i.lc = load ptr, ptr %i.hn, align 8, !tbaa !58 ; 2 uses
  %i.ld = load ptr, ptr %i.hm, align 8, !tbaa !18 ; 2 uses
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf
  %i.lh = ashr exact i64 %i.lg, 2                 ; 3 uses
  %i.li = icmp ugt i64 %i.lb, %i.lh
  br i1 %i.li, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.lj = sub nuw i64 %i.lb, %i.lh
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, i64 noundef %i.lj)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit316_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt6vectorIfSaIfEE6resizeEm.exit316_crit_edge: ; preds = %bb.cm
  %.pre585 = load i64, ptr %i.c, align 8, !tbaa !46
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit316

bb.cn:                                            ; preds = %bb.cl
  %i.lk = icmp ult i64 %i.lb, %i.lh
  br i1 %i.lk, label %bb.co, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit316

bb.co:                                            ; preds = %bb.cn
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.lb ; 2 uses
  %.not.i.i313 = icmp eq ptr %i.lc, %i.ll
  br i1 %.not.i.i313, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit316, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i314

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i314:     ; preds = %bb.co
  store ptr %i.ll, ptr %i.hn, align 8, !tbaa !58
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit316

_ZNSt6vectorIfSaIfEE6resizeEm.exit316:            ; preds = %._ZNSt6vectorIfSaIfEE6resizeEm.exit316_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i314, %bb.co, %bb.cn
  %i.lm = phi i64 [ %.pre585, %._ZNSt6vectorIfSaIfEE6resizeEm.exit316_crit_edge ], [ %i.la, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i314 ], [ %i.la, %bb.co ], [ %i.la, %bb.cn ] ; 3 uses
  %i.ln = sub i64 %i.lm, %i.hw                    ; 5 uses
  %.not261 = icmp eq i64 %i.lm, %i.hw
  br i1 %.not261, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit316
  %i.lo = load i8, ptr %i.jw, align 2, !tbaa !35
  %i.lp = icmp eq i8 %i.lo, 0
  br i1 %i.lp, label %bb.cq, label %bb.cv

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.gy, label %.invoke, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.cq
  br i1 %.not.i.i.i.i317, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.lq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #20
          to label %.noexc321 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc321:                                        ; preds = %bb.cr
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %.0228 ; 2 uses
  store i32 0, ptr %i.lq, align 4, !tbaa !47
  br i1 %i.kd, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc321
  %i.ls = getelementptr i8, ptr %i.lq, i64 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ls, i8 0, i64 %.idx.i.i.i.i.i.i.i318, i1 false), !tbaa !47
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc321, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0430.0 = phi ptr [ %i.lq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.lq, %.noexc321 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.sroa.12.0 = phi ptr [ %i.lr, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.lr, %.noexc321 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 4 uses
  %i.lt = mul nuw nsw i64 %indvars.iv, 15486557
  %i.lu = add i64 %i.jy, %i.lt
  invoke void @_ZN5faiss9rand_permEPiml(ptr noundef %.sroa.0430.0, i64 noundef %.0228, i64 noundef %i.lu)
          to label %.lr.ph529 unwind label %bb.cs

.lr.ph529:                                        ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  br i1 %.not252, label %.lr.ph529.split.us.preheader, label %.lr.ph529.split

.lr.ph529.split.us.preheader:                     ; preds = %.lr.ph529
  %xtraiter = and i64 %i.ln, 1
  %14 = icmp eq i64 %i.lm, %.neg
  br i1 %14, label %.lr.ph529.split.us.epil.preheader, label %.lr.ph529.split.us.preheader.new

.lr.ph529.split.us.preheader.new:                 ; preds = %.lr.ph529.split.us.preheader
  %unroll_iter = and i64 %i.ln, -2
  br label %.lr.ph529.split.us

.lr.ph529.split.us:                               ; preds = %.lr.ph529.split.us, %.lr.ph529.split.us.preheader.new
  %.0186528.us = phi i64 [ 0, %.lr.ph529.split.us.preheader.new ], [ %i.mq, %.lr.ph529.split.us ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph529.split.us.preheader.new ], [ %niter.next.1, %.lr.ph529.split.us ]
  %i.lv = load ptr, ptr %i.hm, align 8, !tbaa !18
  %i.lw = add i64 %.0186528.us, %i.hw             ; 2 uses
  %i.lx = load i64, ptr %i.dj, align 8, !tbaa !45
  %i.ly = mul i64 %i.lx, %i.lw
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.ly
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0430.0, i64 %i.lw
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !47
  %i.mc = sext i32 %i.mb to i64
  %i.md = mul i64 %i.dk, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.md
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lz, ptr align 1 %i.me, i64 %i.dk, i1 false)
  %i.mf = or disjoint i64 %.0186528.us, 1
  %i.mg = load ptr, ptr %i.hm, align 8, !tbaa !18
  %i.mh = add i64 %i.mf, %i.hw                    ; 2 uses
  %i.mi = load i64, ptr %i.dj, align 8, !tbaa !45
  %i.mj = mul i64 %i.mi, %i.mh
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.mj
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0430.0, i64 %i.mh
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !47
  %i.mn = sext i32 %i.mm to i64
  %i.mo = mul i64 %i.dk, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.mo
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.mk, ptr align 1 %i.mp, i64 %i.dk, i1 false)
  %i.mq = add nuw i64 %.0186528.us, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split.loopexit.unr-lcssa, label %.lr.ph529.split.us, !llvm.loop !99

.lr.ph529.split:                                  ; preds = %.lr.ph529, %bb.cu
  %.0186528 = phi i64 [ %i.nk, %bb.cu ], [ 0, %.lr.ph529 ] ; 2 uses
  %i.mr = add i64 %.0186528, %i.hw                ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0430.0, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !47
  %i.mu = sext i32 %i.mt to i64
  %i.mv = mul i64 %i.dk, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.0196, i64 %i.mv
  %i.mx = load ptr, ptr %i.hm, align 8, !tbaa !18
  %i.my = load i64, ptr %i.dj, align 8, !tbaa !45
  %i.mz = mul i64 %i.my, %i.mr
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.mz
  %i.nb = load ptr, ptr %3, align 8, !tbaa !10
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 208
  %i.nd = load ptr, ptr %i.nc, align 8
  invoke void %i.nd(ptr noundef nonnull align 8 dereferenceable(36) %3, i64 noundef 1, ptr noundef %i.mw, ptr noundef %i.na)
          to label %bb.cu unwind label %.thread470

.thread470:                                       ; preds = %.lr.ph529.split
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i323 = icmp eq ptr %.sroa.0430.0, null
  br i1 %.not.i.i.i323, label %_ZNSt6vectorIiSaIiEED2Ev.exit324, label %bb.ct

bb.ct:                                            ; preds = %.thread470, %bb.cs
  %i.ng = phi { ptr, i32 } [ %i.ne, %.thread470 ], [ %i.nf, %bb.cs ]
  %i.nh = ptrtoint ptr %.sroa.12.0 to i64
  %i.ni = ptrtoint ptr %.sroa.0430.0 to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0430.0, i64 noundef %i.nj) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit324

bb.cu:                                            ; preds = %.lr.ph529.split
  %i.nk = add nuw i64 %.0186528, 1                ; 2 uses
  %i.nl = icmp ult i64 %i.nk, %i.ln
  br i1 %i.nl, label %.lr.ph529.split, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split, !llvm.loop !99

bb.cv:                                            ; preds = %bb.cp
  %.pre587 = load i64, ptr %i.dj, align 8, !tbaa !45 ; 2 uses
  br i1 %.not252, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nm = mul i64 %.pre587, %.0228                ; 5 uses
  %.not486 = icmp eq i64 %i.nm, 0
  br i1 %.not486, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit328, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nn = icmp ugt i64 %i.nm, 2305843009213693951
  br i1 %i.nn, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.cx, %bb.cq, %._crit_edge536
  %i.no = phi ptr [ @.str.28, %._crit_edge536 ], [ @.str.26, %bb.cx ], [ @.str.28, %bb.cq ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.no) #22
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.cx
  %i.np = shl nuw nsw i64 %i.nm, 2
  %i.nq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.np) #20
          to label %.noexc396 unwind label %.loopexit500 ; 4 uses

.noexc396:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.nq, align 4, !tbaa !60
  %i.nr = add nsw i64 %i.nm, -1                   ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 0
  br i1 %i.ns, label %.noexc327, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc396
  %i.nt = getelementptr i8, ptr %i.nq, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.nr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.nt, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !60
  br label %.noexc327

.noexc327:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc396
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.nm
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit328

_ZNSt6vectorIfSaIfEE6resizeEm.exit328:            ; preds = %.noexc327, %bb.cw
  %.sroa.0418.3 = phi ptr [ %i.nq, %.noexc327 ], [ null, %bb.cw ] ; 4 uses
  %.sroa.16.3 = phi ptr [ %i.nu, %.noexc327 ], [ null, %bb.cw ] ; 2 uses
  %i.nv = load ptr, ptr %3, align 8, !tbaa !10
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 208
  %i.nx = load ptr, ptr %i.nw, align 8
  invoke void %i.nx(ptr noundef nonnull align 8 dereferenceable(36) %3, i64 noundef %.0228, ptr noundef %.0196, ptr noundef %.sroa.0418.3)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit328._crit_edge unwind label %.loopexit500

_ZNSt6vectorIfSaIfEE6resizeEm.exit328._crit_edge: ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit328
  %.pre586 = load i64, ptr %i.dj, align 8, !tbaa !45
  br label %bb.cy

.loopexit500:                                     ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit328, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %.sroa.0418.0.ph = phi ptr [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0418.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit328 ]
  %.sroa.16.0.ph = phi ptr [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i ], [ %.sroa.16.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit328 ]
  %lpad.loopexit502 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.cy:                                            ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit328._crit_edge, %bb.cv
  %i.ny = phi i64 [ %.pre587, %bb.cv ], [ %.pre586, %_ZNSt6vectorIfSaIfEE6resizeEm.exit328._crit_edge ]
  %.sroa.0418.1 = phi ptr [ null, %bb.cv ], [ %.sroa.0418.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit328._crit_edge ] ; 3 uses
  %.sroa.16.1 = phi ptr [ null, %bb.cv ], [ %.sroa.16.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit328._crit_edge ] ; 2 uses
  %.0185 = phi ptr [ %.0196, %bb.cv ], [ %.sroa.0418.3, %_ZNSt6vectorIfSaIfEE6resizeEm.exit328._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZN5faiss24ClusteringInitializationC1Emm(ptr noundef nonnull align 8 dereferenceable(34) %13, i64 noundef %i.ny, i64 noundef %i.ln)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.nz = load i8, ptr %i.jw, align 2, !tbaa !35
  store i8 %i.nz, ptr %i.jx, align 8, !tbaa !118
  %i.oa = mul nuw nsw i64 %indvars.iv, 15486557
  %i.ob = add i64 %i.jy, %i.oa
  store i64 %i.ob, ptr %i.jz, align 8, !tbaa !119
  %i.oc = load i16, ptr %i.ka, align 4, !tbaa !36
  store i16 %i.oc, ptr %i.kb, align 8, !tbaa !120
  %i.od = load ptr, ptr %i.hm, align 8, !tbaa !18 ; 2 uses
  %i.oe = load i64, ptr %i.dj, align 8, !tbaa !45
  %i.of = mul i64 %i.oe, %i.hw
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.of
  %spec.select485 = select i1 %i.is, ptr %i.od, ptr null
  invoke void @_ZNK5faiss24ClusteringInitialization14init_centroidsEmPKfPfmS2_(ptr noundef nonnull align 8 dereferenceable(34) %13, i64 noundef %.0228, ptr noundef %.0185, ptr noundef %i.og, i64 noundef %i.hw, ptr noundef %spec.select485)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %.not.i.i.i329 = icmp eq ptr %.sroa.0418.1, null
  br i1 %.not.i.i.i329, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit500, %bb.db
  %.sroa.0418.2 = phi ptr [ %.sroa.0418.1, %bb.db ], [ %.sroa.0418.0.ph, %.loopexit500 ] ; 3 uses
  %.sroa.16.2 = phi ptr [ %.sroa.16.1, %bb.db ], [ %.sroa.16.0.ph, %.loopexit500 ]
  %.pn262 = phi { ptr, i32 } [ %i.oh, %bb.db ], [ %lpad.loopexit502, %.loopexit500 ] ; 2 uses
  %.not.i.i.i330 = icmp eq ptr %.sroa.0418.2, null
  br i1 %.not.i.i.i330, label %_ZNSt6vectorIiSaIiEED2Ev.exit324, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oi = ptrtoint ptr %.sroa.16.2 to i64
  %i.oj = ptrtoint ptr %.sroa.0418.2 to i64
  %i.ok = sub i64 %i.oi, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0418.2, i64 noundef %i.ok) #19
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit324

_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split.loopexit.unr-lcssa: ; preds = %.lr.ph529.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split, label %.lr.ph529.split.us.epil.preheader

.lr.ph529.split.us.epil.preheader:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split.loopexit.unr-lcssa, %.lr.ph529.split.us.preheader
  %.0186528.us.epil.init = phi i64 [ 0, %.lr.ph529.split.us.preheader ], [ %i.mq, %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod760 = trunc i64 %i.ln to i1
  call void @llvm.assume(i1 %lcmp.mod760)
  %i.ol = load ptr, ptr %i.hm, align 8, !tbaa !18
end_hunk_0
