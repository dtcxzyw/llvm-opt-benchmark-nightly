Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_:bb.a
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.al = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.am = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ao = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aq = udiv i64 %.02328.i.i, 10000
  %i.ar = add i32 %.029.i.i, 4                    ; 2 uses
  %i.as = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.as, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.i, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread, %bb.h, %bb.f, %bb.d, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit
  %storemerge.lcssa.i94 = phi i64 [ %storemerge6.i, %bb.h ], [ %storemerge6.i, %bb.d ], [ %storemerge6.i, %bb.f ], [ %storemerge6.i, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit ], [ 0, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread ], [ %storemerge6.i, %bb.i ] ; 3 uses
  %.022.i.i = phi i32 [ %i.ap, %bb.h ], [ %i.al, %bb.d ], [ %i.an, %bb.f ], [ 1, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit ], [ 1, %_ZZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_ENKUlvE_clEv.exit.thread ], [ %i.ar, %bb.i ]
  %i.at = zext i32 %.022.i.i to i64
  store ptr %i.g, ptr %11, align 8, !tbaa !65, !alias.scope !502
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.at, i8 noundef signext 0) #28
  %i.au = load ptr, ptr %11, align 8, !tbaa !67, !alias.scope !502 ; 4 uses
  %i.av = icmp ugt i64 %storemerge.lcssa.i94, 99
  br i1 %i.av, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !68, !alias.scope !502
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.ax, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bb, %.lr.ph.i2.i ], [ %storemerge.lcssa.i94, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bl, %.lr.ph.i2.i ], [ %i.ay, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.az = urem i64 %.020.i.i, 100
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !69, !noalias !502
  %i.bf = zext i32 %.01819.i.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !69
  %i.bh = load i8, ptr %i.bc, align 2, !tbaa !69, !noalias !502
  %i.bi = add i32 %.01819.i.i, -1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bj
  store i8 %i.bh, ptr %i.bk, align 1, !tbaa !69
  %i.bl = add i32 %.01819.i.i, -2
  %i.bm = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bm, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %storemerge.lcssa.i94, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.bb, %.lr.ph.i2.i ] ; 3 uses
  %i.bn = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bo = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !69, !noalias !502
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !69
  %i.bt = load i8, ptr %i.bp, align 2, !tbaa !69, !noalias !502
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bu = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bv = or disjoint i8 %i.bu, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.j, %bb.k
  %storemerge.i.i = phi i8 [ %i.bv, %bb.k ], [ %i.bt, %bb.j ]
  store i8 %storemerge.i.i, ptr %i.au, align 1, !tbaa !69
  call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.bw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.47, i64 noundef 27) #28, !noalias !503 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !65, !alias.scope !503
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !67 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 5 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !68 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 16
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add nuw nsw i64 %i.cb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.by, i64 %i.cd, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  store ptr %i.bx, ptr %10, align 8, !tbaa !67, !alias.scope !503
  %i.ce = load i64, ptr %i.by, align 8, !tbaa !69
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !69, !alias.scope !503
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !68
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cf = phi i64 [ %i.cb, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.cf, ptr %i.j, align 8, !tbaa !68, !alias.scope !503
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !67
  store i64 0, ptr %i.cg, align 8, !tbaa !68
  store i8 0, ptr %i.by, align 8, !tbaa !69
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !68, !noalias !504
  %i.ci = add i64 %i.ch, -4611686018427387875
  %i.cj = icmp ult i64 %i.ci, 29
  br i1 %i.cj, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32, !noalias !504
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ck = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.48, i64 noundef 29) #28, !noalias !504 ; 6 uses
  store ptr %i.k, ptr %9, align 8, !tbaa !65, !alias.scope !504
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !67 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 5 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !68 ; 3 uses
  %i.cq = icmp ult i64 %i.cp, 16
  call void @llvm.assume(i1 %i.cq)
  %i.cr = add nuw nsw i64 %i.cp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.cm, i64 %i.cr, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.cl, ptr %9, align 8, !tbaa !67, !alias.scope !504
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !69
  store i64 %i.cs, ptr %i.k, align 8, !tbaa !69, !alias.scope !504
  %.phi.trans.insert.i9 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.pre.i10 = load i64, ptr %.phi.trans.insert.i9, align 8, !tbaa !68
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.ct = phi i64 [ %i.cp, %bb.n ], [ %.pre.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 %i.ct, ptr %i.l, align 8, !tbaa !68, !alias.scope !504
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !67
  store i64 0, ptr %i.cu, align 8, !tbaa !68
  store i8 0, ptr %i.cm, align 8, !tbaa !69
  call void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #28
  %i.cv = load ptr, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.k
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.cx = load i64, ptr %i.k, align 8, !tbaa !69
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.cz = load ptr, ptr %10, align 8, !tbaa !67   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.i
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.i, align 8, !tbaa !69
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.dd = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.g
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.df = load i64, ptr %i.g, align 8, !tbaa !69
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.dh = load i8, ptr %i.m, align 8, !tbaa !60, !range !61, !noundef !62 ; 2 uses
  %15 = trunc nuw i8 %i.dh to i1
  %i.di = load i64, ptr %i.n, align 8
  %i.dj = icmp ne i64 %i.di, 0
  %or.cond.not = select i1 %15, i1 %i.dj, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.o, label %bb.ad

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 32, i1 false)
  store ptr %i.o, ptr %i.p, align 8, !tbaa !53
  store ptr %i.o, ptr %i.q, align 8, !tbaa !54
  store i64 0, ptr %i.r, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %i.dk = load ptr, ptr %13, align 8, !tbaa !175  ; 3 uses
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !175 ; 2 uses
  %.not113 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not113, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62
  %.pre = load ptr, ptr %13, align 8, !tbaa !177
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %i.dm = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.dk, %bb.o ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.dn = load ptr, ptr %i.x, align 8, !tbaa !182
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.dr = load i64, ptr %i.r, align 8, !tbaa !55  ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, label %bb.y

.lr.ph:                                           ; preds = %bb.o, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62
  %.sroa.085.0114 = phi ptr [ %i.fw, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit62 ], [ %i.dk, %bb.o ] ; 2 uses
  %i.dt = load i64, ptr %.sroa.085.0114, align 8, !tbaa !45 ; 12 uses
  %i.du = load i8, ptr %3, align 8, !tbaa !110, !range !61, !noundef !62
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.q, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95

bb.q:                                             ; preds = %.lr.ph
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !231, !nonnull !62, !align !232 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !52 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %.not10.i.i.i.i19 = icmp eq ptr %i.dy, null
  br i1 %.not10.i.i.i.i19, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %bb.q, %.lr.ph.i.i.i.i20
  %.012.i.i.i.i21 = phi ptr [ %.1.i.i.i.i26, %.lr.ph.i.i.i.i20 ], [ %i.dy, %bb.q ] ; 3 uses
  %.0811.i.i.i.i22 = phi ptr [ %.19.i.i.i.i23, %.lr.ph.i.i.i.i20 ], [ %i.dz, %bb.q ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !45
  %i.ec = icmp ult i64 %i.eb, %i.dt               ; 2 uses
  %.19.i.i.i.i23 = select i1 %i.ec, ptr %.0811.i.i.i.i22, ptr %.012.i.i.i.i21 ; 3 uses
  %.1.in.v.i.i.i.i24 = select i1 %i.ec, i64 24, i64 16
  %.1.in.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21, i64 %.1.in.v.i.i.i.i24
  %.1.i.i.i.i26 = load ptr, ptr %.1.in.i.i.i.i25, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %.1.i.i.i.i26, null
  br i1 %.not.i.i.i.i27, label %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28, label %.lr.ph.i.i.i.i20, !llvm.loop !9

_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28: ; preds = %.lr.ph.i.i.i.i20
  %i.ed = icmp eq ptr %.19.i.i.i.i23, %i.dz
  br i1 %i.ed, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit: ; preds = %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28
  %i.ee = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i23, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !45
  %.not99 = icmp ult i64 %i.dt, %i.ef
  br i1 %.not99, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95: ; preds = %.lr.ph, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %i.eg = load ptr, ptr %i.u, align 8, !tbaa !52  ; 2 uses
  %.not10.i.i.i.i29 = icmp eq ptr %i.eg, null
  br i1 %.not10.i.i.i.i29, label %.critedge.i, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %.1.i.i.i.i36, %.lr.ph.i.i.i.i30 ], [ %i.eg, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95 ] ; 5 uses
  %.0811.i.i.i.i32 = phi ptr [ %.19.i.i.i.i33, %.lr.ph.i.i.i.i30 ], [ %i.v, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !45
  %i.ej = icmp ult i64 %i.ei, %i.dt               ; 4 uses
  %.19.i.i.i.i33 = select i1 %i.ej, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31 ; 2 uses
  %.1.in.v.i.i.i.i34 = select i1 %i.ej, i64 24, i64 16
  %.1.in.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 %.1.in.v.i.i.i.i34
  %.1.i.i.i.i36 = load ptr, ptr %.1.in.i.i.i.i35, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %.1.i.i.i.i36, null
  br i1 %.not.i.i.i.i37, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i30, !llvm.loop !7

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i30
  %i.ek = icmp eq ptr %.19.i.i.i.i33, %i.v
  br i1 %i.ek, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ej, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31
  %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.el = load i64, ptr %.19.i.i.i.i33.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  %i.em = icmp ult i64 %i.dt, %i.el
  br i1 %i.em, label %.critedge.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit

.critedge.i:                                      ; preds = %bb.r, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread95
  call void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.55) #32
  unreachable

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit: ; preds = %bb.r
  %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel.v = select i1 %i.ej, ptr %.0811.i.i.i.i32, ptr %.012.i.i.i.i31
  %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.en = load i64, ptr %.19.i.i.i.i33.sroa.sel92.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  store i64 %i.en, ptr %12, align 8, !tbaa !237
  %.02022.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !56 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit ] ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !45 ; 2 uses
  %i.eq = icmp ult i64 %i.dt, %i.ep               ; 2 uses
  %.in.v.i.i.i = select i1 %i.eq, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i38, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.eq, label %._crit_edge.thread.i.i.i, label %bb.t

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.o, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE2atERS3_.exit ] ; 4 uses
  %i.er = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.es = icmp eq ptr %.019.lcssa29.i.i.i, %i.er
  br i1 %i.es, label %select.unfold.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.et = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !45
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i.i
  %i.eu = phi i64 [ %.pre.i.i, %bb.s ], [ %i.ep, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.s ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ev = icmp ult i64 %i.eu, %i.dt
  br i1 %i.ev, label %select.unfold.i.i, label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

select.unfold.i.i:                                ; preds = %bb.t, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.t ] ; 3 uses
  %i.ew = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.o
  br i1 %i.ew, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %select.unfold.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !45
  %i.ez = icmp ult i64 %i.dt, %i.ey
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.u, %select.unfold.i.i
  %i.fa = phi i1 [ %i.ez, %bb.u ], [ true, %select.unfold.i.i ]
  %i.fb = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  store i64 %i.dt, ptr %i.fc, align 8, !tbaa !45
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fa, ptr noundef nonnull %i.fb, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #28
  %i.fd = load i64, ptr %i.r, align 8, !tbaa !55
  %i.fe = add i64 %i.fd, 1
  store i64 %i.fe, ptr %i.r, align 8, !tbaa !55
  br label %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread

_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.t, %_ZNKSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_lower_boundEPKSt13_Rb_tree_nodeImEPKSt18_Rb_tree_node_baseRKm.exit.i.i.i28, %bb.q, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit
  %.02022.i.i.i39 = load ptr, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %.not23.i.i.i40 = icmp eq ptr %.02022.i.i.i39, null
  br i1 %.not23.i.i.i40, label %._crit_edge.thread.i.i.i57, label %.lr.ph.i.i.i41

.lr.ph.i.i.i41:                                   ; preds = %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread, %.lr.ph.i.i.i41
  %.02024.i.i.i42 = phi ptr [ %.020.i.i.i45, %.lr.ph.i.i.i41 ], [ %.02022.i.i.i39, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.02024.i.i.i42, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !45 ; 2 uses
  %i.fh = icmp ult i64 %i.dt, %i.fg               ; 2 uses
  %.in.v.i.i.i43 = select i1 %i.fh, i64 16, i64 24
  %.in.i.i.i44 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i42, i64 %.in.v.i.i.i43
  %.020.i.i.i45 = load ptr, ptr %.in.i.i.i44, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.020.i.i.i45, null
  br i1 %.not.i.i.i46, label %._crit_edge.i.i.i47, label %.lr.ph.i.i.i41, !llvm.loop !0

._crit_edge.i.i.i47:                              ; preds = %.lr.ph.i.i.i41
  br i1 %i.fh, label %._crit_edge.thread.i.i.i57, label %bb.w

._crit_edge.thread.i.i.i57:                       ; preds = %._crit_edge.i.i.i47, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread
  %.019.lcssa29.i.i.i58 = phi ptr [ %.02024.i.i.i42, %._crit_edge.i.i.i47 ], [ %i.b, %_ZZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbENKUlmE_clEm.exit.thread ] ; 4 uses
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.fj = icmp eq ptr %.019.lcssa29.i.i.i58, %i.fi
  br i1 %i.fj, label %select.unfold.i.i54, label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread.i.i.i57
  %i.fk = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i58) #30
  %.phi.trans.insert.i.i59 = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
end_hunk_0
begin_hunk_1_@_ZN9Stockfish10NumaConfig23try_get_l3_aware_configIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EESt8optionalIS0_EbmOT_:bb.a
  %.sink = phi i64 [ 0, %bb.ai ], [ %i.ho, %bb.ah ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.ai ], [ %i.hg, %bb.ah ]
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink128.a, ptr %i.hq, align 8, !tbaa !53
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink127, ptr %i.hr, align 8, !tbaa !54
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sink, ptr %i.hs, align 8, !tbaa !55
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.hc, align 8, !tbaa !51
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ht, ptr noundef nonnull align 8 dereferenceable(9) %i.hu, i64 9, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.hv, align 8, !tbaa !114
  %i.hw = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.hw, ptr noundef null)
  %i.hx = load ptr, ptr %14, align 16, !tbaa !75  ; 3 uses
  %i.hy = load ptr, ptr %i.gx, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hx, %i.hy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit, %.lr.ph.i.i.i.i64
  %.05.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i64 ], [ %i.hx, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.ia)
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i65 = icmp eq ptr %i.ib, %i.hy
  br i1 %.not.i.i.i.i65, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i64, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i64
  %.pr.i.i = load ptr, ptr %14, align 16, !tbaa !75
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit
  %i.ic = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.hx, %_ZNSt8optionalIN9Stockfish10NumaConfigEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.id = load ptr, ptr %i.ha, align 16, !tbaa !73
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ic to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ig) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.al

bb.ak:                                            ; preds = %bb.af
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.ih, align 8, !tbaa !114
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN9Stockfish10NumaConfigD2Ev.exit
  %i.ii = load ptr, ptr %i.c, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ii)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ij = load ptr, ptr %6, align 8, !tbaa !243   ; 3 uses
  %i.ik = load ptr, ptr %i.z, align 8, !tbaa !240 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ij, %i.ik
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i, label %.lr.ph.i.i.i66

.lr.ph.i.i.i66:                                   ; preds = %bb.al, %.lr.ph.i.i.i66
  %.05.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i66 ], [ %i.ij, %bb.al ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.il, ptr noundef %i.in)
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.io, %i.ik
  br i1 %.not.i.i.i67, label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i66, !llvm.loop !10

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i66
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !243
  br label %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i, %bb.al
  %i.ip = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i ], [ %i.ij, %bb.al ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i
  %i.iq = load ptr, ptr %i.aa, align 8, !tbaa !241
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.it) #33
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.iu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.iv = load ptr, ptr %i.u, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, ptr noundef %i.iv)
  %i.iw = load ptr, ptr %4, align 8, !tbaa !75    ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !76 ; 2 uses
  %.not4.i.i.i.i68 = icmp eq ptr %i.iw, %i.iy
  br i1 %.not4.i.i.i.i68, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74, label %.lr.ph.i.i.i.i69

.lr.ph.i.i.i.i69:                                 ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i69
  %.05.i.i.i.i70 = phi ptr [ %i.jb, %.lr.ph.i.i.i.i69 ], [ %i.iw, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit ] ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !52
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i70, ptr noundef %i.ja)
  %i.jb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i70, i64 48 ; 2 uses
  %.not.i.i.i.i71 = icmp eq ptr %i.jb, %i.iy
  br i1 %.not.i.i.i.i71, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72, label %.lr.ph.i.i.i.i69, !llvm.loop !1

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72: ; preds = %.lr.ph.i.i.i.i69
  %.pr.i.i73 = load ptr, ptr %4, align 8, !tbaa !75
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit
  %i.jc = phi ptr [ %.pr.i.i73, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i72 ], [ %i.iw, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i75 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i1.i.i75, label %_ZN9Stockfish10NumaConfigD2Ev.exit76, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !73
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = sub i64 %i.jf, %i.jg
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.jh) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit76

_ZN9Stockfish10NumaConfigD2Ev.exit76:             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i74, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.213, align 8            ; 6 uses
  %4 = alloca %"class.std::optional", align 8     ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.33", align 8    ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::optional", align 8    ; 8 uses
  %12 = alloca %"class.std::vector.33", align 8   ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !514
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !51, !alias.scope !514
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !52, !alias.scope !514
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.f, align 8, !tbaa !53, !alias.scope !514
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.g, align 8, !tbaa !54, !alias.scope !514
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false), !alias.scope !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 0, ptr %i.c, align 1, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.c, ptr %3, align 8, !tbaa !515
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.i, align 8, !tbaa !246
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 31, ptr %i.b, align 8, !tbaa !45
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #28 ; 2 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !67
  %i.l = load i64, ptr %i.b, align 8, !tbaa !45   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.k, ptr noundef nonnull align 1 dereferenceable(31) @.str.56, i64 31, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !68
  %i.n = load ptr, ptr %5, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  %i.p = load ptr, ptr %5, align 8, !tbaa !67     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.j
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.r = load i64, ptr %i.j, align 8, !tbaa !69
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !60, !range !61, !noundef !62
  %13 = trunc nuw i8 %i.u to i1
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %14 = icmp ne i64 %i.w, 0
  %or.cond.not = select i1 %13, i1 %14, i1 false
  br i1 %or.cond.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.y

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN9Stockfish17remove_whitespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.x = load ptr, ptr %6, align 8, !tbaa !175    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !175  ; 2 uses
  %.not76 = icmp eq ptr %i.x, %i.z
  br i1 %.not76, label %._crit_edge78, label %._crit_edge.i.i18.lr.ph

._crit_edge.i.i18.lr.ph:                          ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %._crit_edge.i.i18

._crit_edge.i.i18:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %._crit_edge.i.i18.lr.ph
  %.sroa.058.077 = phi ptr [ %i.x, %._crit_edge.i.i18.lr.ph ], [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ] ; 2 uses
  %i.an = load i64, ptr %.sroa.058.077, align 8, !tbaa !45 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr %i.aa, ptr %9, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 29, ptr %i.a, align 8, !tbaa !45
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ao, ptr %9, align 8, !tbaa !67
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  store i64 %i.ap, ptr %i.aa, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.ao, ptr noundef nonnull align 1 dereferenceable(29) @.str.57, i64 29, i1 false)
  store i64 %i.ap, ptr %i.ab, align 8, !tbaa !68
  %i.aq = load ptr, ptr %9, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.as = icmp ult i64 %i.an, 10
  br i1 %i.as, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i18, %bb.h
  %.029.i.i = phi i32 [ %i.ba, %bb.h ], [ 1, %._crit_edge.i.i18 ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.az, %bb.h ], [ %i.an, %._crit_edge.i.i18 ] ; 5 uses
  %i.at = icmp ult i64 %.02328.i.i, 100
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.au = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.av = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ax = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.h:                                             ; preds = %bb.f
  %i.az = udiv i64 %.02328.i.i, 10000
  %i.ba = add i32 %.029.i.i, 4                    ; 2 uses
  %i.bb = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.bb, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %._crit_edge.i.i18
  %.022.i.i = phi i32 [ %i.ay, %bb.g ], [ %i.au, %bb.c ], [ %i.aw, %bb.e ], [ 1, %._crit_edge.i.i18 ], [ %i.ba, %bb.h ]
  %i.bc = zext i32 %.022.i.i to i64
  store ptr %i.ac, ptr %10, align 8, !tbaa !65, !alias.scope !516
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.bc, i8 noundef signext 0) #28
  %i.bd = load ptr, ptr %10, align 8, !tbaa !67, !alias.scope !516 ; 4 uses
  %i.be = icmp ugt i64 %i.an, 99
  br i1 %i.be, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i20

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.bf = load i64, ptr %i.ad, align 8, !tbaa !68, !alias.scope !516
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %i.bg, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.bk, %.lr.ph.i2.i ], [ %i.an, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bu, %.lr.ph.i2.i ], [ %i.bh, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bi = urem i64 %.020.i.i, 100
  %i.bj = shl nuw nsw i64 %i.bi, 1
  %i.bk = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bj ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !69, !noalias !516
  %i.bo = zext i32 %.01819.i.i to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !69
  %i.bq = load i8, ptr %i.bl, align 2, !tbaa !69, !noalias !516
  %i.br = add i32 %.01819.i.i, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !69
  %i.bu = add i32 %.01819.i.i, -2
  %i.bv = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i2.i, label %._crit_edge.i.i20, !llvm.loop !3

._crit_edge.i.i20:                                ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.an, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.bk, %.lr.ph.i2.i ] ; 3 uses
  %i.bw = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i20
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.by = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !69, !noalias !516
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !69
  %i.cc = load i8, ptr %i.by, align 2, !tbaa !69, !noalias !516
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.j:                                             ; preds = %._crit_edge.i.i20
  %i.cd = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ce = or disjoint i8 %i.cd, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.i, %bb.j
  %storemerge.i.i = phi i8 [ %i.ce, %bb.j ], [ %i.cc, %bb.i ]
  store i8 %storemerge.i.i, ptr %i.bd, align 1, !tbaa !69
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.cf = load i64, ptr %i.ab, align 8, !tbaa !68, !noalias !517 ; 4 uses
  %i.cg = load i64, ptr %i.ad, align 8, !tbaa !68, !noalias !517 ; 4 uses
  %i.ch = add i64 %i.cg, %i.cf                    ; 2 uses
  %i.ci = load ptr, ptr %9, align 8, !tbaa !67, !noalias !517 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.aa
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ck = icmp ult i64 %i.cf, 16
  call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.cl = load i64, ptr %i.aa, align 8, !tbaa !69, !noalias !517
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22
  %i.cm = phi i64 [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22 ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.co = load ptr, ptr %10, align 8, !tbaa !67, !noalias !517
  %i.cp = icmp eq ptr %i.co, %i.ac
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.k
  %i.cq = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.cq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.k
  %i.cr = load i64, ptr %i.ac, align 8, !tbaa !69, !noalias !517
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.cs = phi i64 [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.ch, %i.cs
  br i1 %.not.i, label %bb.m, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.ci, i64 noundef %i.cf) #28, !noalias !517 ; 5 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !65, !alias.scope !517
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !67 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 5 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.l:                                             ; preds = %.critedge.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !68 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
end_hunk_1
begin_hunk_2_@_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !699
  %i.v = load ptr, ptr %1, align 8, !tbaa !67, !noalias !699 ; 9 uses
  %i.w = load i64, ptr %i.g, align 8, !tbaa !68, !noalias !699 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %xtraiter = and i64 %i.w, 7                     ; 3 uses
  %i.x = icmp ult i64 %i.w, 8
  br i1 %i.x, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter = and i64 %i.w, -8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i ] ; 9 uses
  %.078.i.i.i = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !69, !noalias !699
  %i.aa = sext i8 %i.z to i64
  %i.ab = xor i64 %.078.i.i.i, %i.aa
  %i.ac = mul i64 %i.ab, 1099511628211
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !69, !noalias !699
  %i.ag = sext i8 %i.af to i64
  %i.ah = xor i64 %i.ac, %i.ag
  %i.ai = mul i64 %i.ah, 1099511628211
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !69, !noalias !699
  %i.am = sext i8 %i.al to i64
  %i.an = xor i64 %i.ai, %i.am
  %i.ao = mul i64 %i.an, 1099511628211
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !69, !noalias !699
  %i.as = sext i8 %i.ar to i64
  %i.at = xor i64 %i.ao, %i.as
  %i.au = mul i64 %i.at, 1099511628211
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !69, !noalias !699
  %i.ay = sext i8 %i.ax to i64
  %i.az = xor i64 %i.au, %i.ay
  %i.ba = mul i64 %i.az, 1099511628211
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !69, !noalias !699
  %i.be = sext i8 %i.bd to i64
  %i.bf = xor i64 %i.ba, %i.be
  %i.bg = mul i64 %i.bf, 1099511628211
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !69, !noalias !699
  %i.bk = sext i8 %i.bj to i64
  %i.bl = xor i64 %i.bg, %i.bk
  %i.bm = mul i64 %i.bl, 1099511628211
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !69, !noalias !699
  %i.bq = sext i8 %i.bp to i64
  %i.br = xor i64 %i.bm, %i.bq
  %i.bs = mul i64 %i.br, 1099511628211            ; 3 uses
  %i.bt = add nuw i64 %.09.i.i.i, 8               ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !12

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.bt, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %.078.i.i.i.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.i.i.i.preheader ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.09.i.i.i.epil = phi i64 [ %i.bz, %.lr.ph.i.i.i.epil ], [ %.09.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %.078.i.i.i.epil = phi i64 [ %i.by, %.lr.ph.i.i.i.epil ], [ %.078.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.v, i64 %.09.i.i.i.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !69, !noalias !699
  %i.bw = sext i8 %i.bv to i64
  %i.bx = xor i64 %.078.i.i.i.epil, %i.bw
  %i.by = mul i64 %i.bx, 1099511628211            ; 2 uses
  %i.bz = add nuw i64 %.09.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !698

_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.07.lcssa.i.i.i = phi i64 [ -3750763034362895579, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.bs, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.loopexit.unr-lcssa ], [ %i.by, %.lr.ph.i.i.i.epil ]
  %i.ca = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.76, i64 noundef %.07.lcssa.i.i.i) #28, !noalias !699 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.cb, ptr %i.u, align 8, !tbaa !65, !alias.scope !699
  %i.cc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #28, !noalias !699 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !699
  store i64 %i.cc, ptr %i.a, align 8, !tbaa !45, !noalias !699
  %i.cd = icmp ugt i64 %i.cc, 15
  br i1 %i.cd, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ce = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ce, ptr %i.u, align 8, !tbaa !67, !alias.scope !699
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !699
  store i64 %i.cf, ptr %i.cb, align 8, !tbaa !69, !alias.scope !699
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.e, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cg = phi ptr [ %i.ce, %bb.e ], [ %i.cb, %_ZN9Stockfish11hash_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ] ; 2 uses
  switch i64 %i.cc, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.ch = load i8, ptr %i.b, align 16, !tbaa !69, !noalias !699
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !69
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr nonnull align 16 %i.b, i64 %i.cc, i1 false)
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE18make_sentinel_baseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !699 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !68, !alias.scope !699
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !67, !alias.scope !699
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ci
  store i8 0, ptr %i.cl, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !699
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.co, align 8, !tbaa !68
  store i8 0, ptr %i.cn, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE4openERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %3 = alloca %class.anon.310, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr @_ZN9Stockfish3shm6detail12CleanupHooks24register_signal_handlersEv, ptr %3, align 8, !tbaa !140
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !140
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRDoFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !140
  %i.c = call noundef i32 @pthread_once(ptr noundef nonnull @_ZN9Stockfish3shm6detail12CleanupHooks14register_once_E, ptr noundef nonnull @__once_proxy) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #32
  unreachable

_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !140
  store ptr null, ptr %i.b, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 22 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit
  %.020 = phi i1 [ false, %_ZN9Stockfish3shm6detail12CleanupHooks17ensure_registeredEv.exit ], [ true, %.backedge.backedge ] ; 2 uses
  %i.m = load i32, ptr %i.d, align 8, !tbaa !189
  %.not.i = icmp eq i32 %i.m, -1
  %i.n = load ptr, ptr %i.e, align 8
  %.not1.i = icmp eq ptr %i.n, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit: ; preds = %.backedge
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !267
  %.not74 = icmp eq ptr %i.o, null
  br i1 %.not74, label %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, label %.thread70

_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread: ; preds = %.backedge, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.q = call i32 @shm_open(ptr noundef %i.p, i32 noundef 194, i32 noundef 438) #28 ; 2 uses
  store i32 %i.q, ptr %i.d, align 8, !tbaa !189
  %i.r = icmp ne i32 %i.q, -1                     ; 7 uses
  br i1 %i.r, label %.preheader.i.preheader, label %bb.c

bb.c:                                             ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.t = call i32 @shm_open(ptr noundef %i.s, i32 noundef 2, i32 noundef 438) #28 ; 2 uses
  store i32 %i.t, ptr %i.d, align 8, !tbaa !189
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.thread70, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit.thread, %bb.c
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.d
  %i.v = load i32, ptr %i.d, align 8, !tbaa !189
  %i.w = call i32 @flock(i32 noundef %i.v, i32 noundef 2) #28
  %.not.i30 = icmp eq i32 %i.w, -1
  br i1 %.not.i30, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.x = tail call ptr @__errno_location() #34
  %i.y = load i32, ptr %i.x, align 4, !tbaa !102
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %.preheader.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit, !llvm.loop !15

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit: ; preds = %bb.d
  %i.aa = load i32, ptr %i.d, align 8, !tbaa !189
  %i.ab = call i32 @close(i32 noundef %i.aa) #28  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !189
  store i64 0, ptr %i.l, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !67
  store i8 0, ptr %i.ac, align 1, !tbaa !69
  br label %.thread70

bb.e:                                             ; preds = %.preheader.i
  br i1 %i.r, label %.split, label %bb.f

.split:                                           ; preds = %bb.e
  %i.ad = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE16setup_new_regionERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) #28
  br i1 %i.ad, label %bb.n, label %.thread57

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !189
  %i.af = call i32 @fstat(i32 noundef %i.ae, ptr noundef nonnull %2) #28 ; 0 uses
  %i.ag = load i64, ptr %i.h, align 8, !tbaa !702
  %i.ah = load i64, ptr %i.i, align 8, !tbaa !261 ; 2 uses
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %.thread61, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.d, align 8, !tbaa !189
  %i.ak = call ptr @mmap(ptr noundef null, i64 noundef %i.ah, i32 noundef 3, i32 noundef 1, i32 noundef %i.aj, i64 noundef 0) #28 ; 5 uses
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !266
  %i.al = icmp eq ptr %i.ak, inttoptr (i64 -1 to ptr)
  br i1 %i.al, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !267
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849344
  store ptr %i.am, ptr %i.j, align 8, !tbaa !190
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 137849388
  %i.ao = load atomic i8, ptr %i.an acquire, align 1, !range !61, !noundef !62
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !190
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !273
  %.not.i33 = icmp eq i32 %i.as, -1386276334
  br i1 %.not.i33, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !266 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.at, null
  br i1 %.not.i.i31, label %.thread61, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.i, align 8, !tbaa !261
  %i.av = call i32 @munmap(ptr noundef nonnull %i.at, i64 noundef %i.au) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %.thread61

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.preheader.i37.preheader

.thread61:                                        ; preds = %bb.f, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.thread57

bb.l:                                             ; preds = %bb.g
  store ptr null, ptr %i.e, align 8, !tbaa !266
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.thread64

.thread57:                                        ; preds = %.split, %.thread61
  %i.aw = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.ax = call i32 @shm_unlink(ptr noundef %i.aw) #28 ; 0 uses
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !266  ; 2 uses
  %.not25 = icmp eq ptr %.pr, null
  br i1 %.not25, label %.thread64, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit: ; preds = %.thread57
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !261
  %i.az = call i32 @munmap(ptr noundef nonnull %.pr, i64 noundef %i.ay) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %.thread64

.thread64:                                        ; preds = %bb.l, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit, %.thread57
  %.not26 = phi i1 [ %i.r, %.thread57 ], [ %i.r, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit ], [ true, %bb.l ]
  %i.ba = load i32, ptr %i.d, align 8, !tbaa !189
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit, label %.preheader.i35

.preheader.i35:                                   ; preds = %.thread64, %bb.m
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !189
  %i.bd = call i32 @flock(i32 noundef %i.bc, i32 noundef 8) #28
  %i.be = icmp eq i32 %i.bd, -1
  br i1 %i.be, label %bb.m, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit

bb.m:                                             ; preds = %.preheader.i35
  %i.bf = tail call ptr @__errno_location() #34
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !102
  %i.bh = icmp eq i32 %i.bg, 4
  br i1 %i.bh, label %.preheader.i35, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit, !llvm.loop !17

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit: ; preds = %bb.m, %.preheader.i35
  %.pre = load i32, ptr %i.d, align 8, !tbaa !189
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit, %.thread64
  %i.bi = phi i32 [ %.pre, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit.loopexit ], [ -1, %.thread64 ]
  %i.bj = call i32 @close(i32 noundef %i.bi) #28  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !189
  store i64 0, ptr %i.l, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.bk = load ptr, ptr %i.k, align 8, !tbaa !67
  store i8 0, ptr %i.bk, align 1, !tbaa !69
  %or.cond5 = or i1 %.not26, %.020
  br i1 %or.cond5, label %.thread70, label %.backedge.backedge

bb.n:                                             ; preds = %.split
  %.pre96 = load ptr, ptr %i.j, align 8, !tbaa !190
  %.not.i36 = icmp eq ptr %.pre96, null
  br i1 %.not.i36, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, label %.preheader.i37.preheader

.preheader.i37.preheader:                         ; preds = %.thread, %bb.n
  br label %.preheader.i37

.preheader.i37:                                   ; preds = %.preheader.i37.preheader, %.preheader.i37
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !190
  %i.bm = call i32 @pthread_mutex_lock(ptr noundef %i.bl) #28
  switch i32 %i.bm, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread [
    i32 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
    i32 130, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
    i32 4, label %.preheader.i37
  ]

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit: ; preds = %.preheader.i37
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !190
  %i.bo = call i32 @pthread_mutex_consistent(ptr noundef %i.bn) #28
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread: ; preds = %.preheader.i37, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
  br i1 %i.r, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, label %bb.o

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread: ; preds = %bb.n, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.br = call i32 @shm_unlink(ptr noundef %i.bq) #28 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread.thread, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !266 ; 2 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.p, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39: ; preds = %bb.o
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !261
  %i.bu = call i32 @munmap(ptr noundef nonnull %i.bs, i64 noundef %i.bt) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit39, %bb.o
  %i.bv = load i32, ptr %i.d, align 8, !tbaa !189
  %i.bw = icmp eq i32 %i.bv, -1
  br i1 %i.bw, label %.loopexit, label %.preheader.i40

.preheader.i40:                                   ; preds = %bb.p, %bb.q
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !189
  %i.by = call i32 @flock(i32 noundef %i.bx, i32 noundef 8) #28
  %i.bz = icmp eq i32 %i.by, -1
  br i1 %i.bz, label %bb.q, label %.loopexit.loopexit

bb.q:                                             ; preds = %.preheader.i40
  %i.ca = tail call ptr @__errno_location() #34
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !102
  %i.cc = icmp eq i32 %i.cb, 4
  br i1 %i.cc, label %.preheader.i40, label %.loopexit.loopexit, !llvm.loop !17

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit, %.preheader.i37
  %i.cd = call noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE27create_sentinel_file_lockedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #28
  %i.ce = load ptr, ptr %i.j, align 8, !tbaa !190 ; 3 uses
  br i1 %i.cd, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
  %.not.i42 = icmp eq ptr %i.ce, null
  br i1 %.not.i42, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ce) #28 ; 0 uses
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit: ; preds = %bb.r, %bb.s
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !266 ; 2 uses
  %.not.i43 = icmp eq ptr %i.cg, null
  br i1 %.not.i43, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44, label %bb.t

bb.t:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !261
  %i.ci = call i32 @munmap(ptr noundef nonnull %i.cg, i64 noundef %i.ch) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit, %bb.t
  br i1 %i.r, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.ck = call i32 @shm_unlink(ptr noundef %i.cj) #28 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12unmap_regionEv.exit44
  %i.cl = load i32, ptr %i.d, align 8, !tbaa !189
  %i.cm = icmp eq i32 %i.cl, -1
  br i1 %i.cm, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46, label %.preheader.i45

.preheader.i45:                                   ; preds = %bb.v, %bb.w
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !189
  %i.co = call i32 @flock(i32 noundef %i.cn, i32 noundef 8) #28
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %bb.w, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit

bb.w:                                             ; preds = %.preheader.i45
  %i.cq = tail call ptr @__errno_location() #34
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !102
  %i.cs = icmp eq i32 %i.cr, 4
  br i1 %i.cs, label %.preheader.i45, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit, !llvm.loop !17

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit: ; preds = %bb.w, %.preheader.i45
  %.pre97 = load i32, ptr %i.d, align 8, !tbaa !189
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit, %bb.v
  %i.ct = phi i32 [ %.pre97, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46.loopexit ], [ -1, %bb.v ]
  %i.cu = call i32 @close(i32 noundef %i.ct) #28  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !189
  store i64 0, ptr %i.l, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !67
  store i8 0, ptr %i.cv, align 1, !tbaa !69
  br label %.thread70

bb.x:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread67
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cx = atomicrmw add ptr %i.cw, i32 1 acq_rel, align 4 ; 0 uses
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !190 ; 2 uses
  %.not.i47 = icmp eq ptr %i.cy, null
  br i1 %.not.i47, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cy) #28 ; 0 uses
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48: ; preds = %bb.x, %bb.y
  %i.da = load i32, ptr %i.d, align 8, !tbaa !189
  %i.db = icmp eq i32 %i.da, -1
  br i1 %i.db, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, label %.preheader.i49

.preheader.i49:                                   ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48, %bb.z
  %i.dc = load i32, ptr %i.d, align 8, !tbaa !189
  %i.dd = call i32 @flock(i32 noundef %i.dc, i32 noundef 8) #28
  %i.de = icmp eq i32 %i.dd, -1
  br i1 %i.de, label %bb.z, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50

bb.z:                                             ; preds = %.preheader.i49
  %i.df = tail call ptr @__errno_location() #34
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !102
  %i.dh = icmp eq i32 %i.dg, 4
  br i1 %i.dh, label %.preheader.i49, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, !llvm.loop !17

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50: ; preds = %.preheader.i49, %bb.z, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit48
  call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  br label %.thread70

.loopexit.loopexit:                               ; preds = %.preheader.i40, %bb.q
  %.pre98 = load i32, ptr %i.d, align 8, !tbaa !189
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.p
  %i.di = phi i32 [ %.pre98, %.loopexit.loopexit ], [ -1, %bb.p ]
  %i.dj = call i32 @close(i32 noundef %i.di) #28  ; 0 uses
  store i32 -1, ptr %i.d, align 8, !tbaa !189
  store i64 0, ptr %i.l, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.k, align 8, !tbaa !67
  store i8 0, ptr %i.dk, align 1, !tbaa !69
  %or.cond7 = or i1 %i.r, %.020
  br i1 %or.cond7, label %.thread70, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.loopexit, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit
  br label %.backedge

.thread70:                                        ; preds = %bb.c, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit, %.loopexit, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit
  %.3 = phi i1 [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit46 ], [ true, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit50 ], [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit ], [ false, %.loopexit ], [ false, %_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE7is_openEv.exit ], [ false, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE11unlock_fileEv.exit ], [ false, %bb.c ]
  ret i1 %.3
}

declare i32 @shm_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE16setup_new_regionERKS4_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 64 dereferenceable(137849344) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %union.pthread_mutexattr_t, align 4 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !189
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !261
  %i.e = tail call i32 @ftruncate(i32 noundef %i.b, i64 noundef %i.d) #28
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE23initialize_shared_mutexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 8, !tbaa !189
  %i.h = load i64, ptr %i.c, align 8, !tbaa !261
  %i.i = tail call noundef i32 @posix_fallocate(i32 noundef %i.g, i64 noundef 0, i64 noundef %i.h) #28
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE23initialize_shared_mutexEv.exit.thread

end_hunk_2
