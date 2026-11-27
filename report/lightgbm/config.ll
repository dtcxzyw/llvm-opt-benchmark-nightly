Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/config?download=true
inline.NumInlined: 2864
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM6Config11DumpAliasesB5cxx11Ev:bb.a

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.g
  %i.ar = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !33
  %i.as = load ptr, ptr %1, align 8, !tbaa !33
  %i.at = call i32 @memcmp(ptr noundef %i.as, ptr noundef %i.ar, i64 noundef %i.al) #27
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.thread, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.thread66

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.f
  %i.av = load ptr, ptr %.sroa.017.0.i, align 8, !tbaa !33 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 16 ; 4 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  %i.ay = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !33 ; 5 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -16 ; 6 uses
  %i.ba = icmp eq ptr %i.ay, %i.az                ; 2 uses
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.thread
  br i1 %i.ba, label %bb.h, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.thread
  br i1 %i.ba, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i
  %i.bb = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.bb)
  switch i64 %i.an, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !36
  store i8 %i.bc, ptr %i.av, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ay, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !34
  %i.bf = load ptr, ptr %.sroa.017.0.i, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !36
  %.pre.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  store ptr %i.ay, ptr %.sroa.017.0.i, align 8, !tbaa !33
  store i64 %i.an, ptr %i.bh, align 8, !tbaa !34
  %i.bi = load i64, ptr %i.az, align 8, !tbaa !36
  store i64 %i.bi, ptr %i.aw, align 8, !tbaa !36
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !36
  store ptr %i.ay, ptr %.sroa.017.0.i, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  store i64 %i.an, ptr %i.bk, align 8, !tbaa !34
  %i.bl = load i64, ptr %i.az, align 8, !tbaa !36
  store i64 %i.bl, ptr %i.aw, align 8, !tbaa !36
  %.not.i.i56 = icmp eq ptr %i.av, null
  br i1 %.not.i.i56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.av, ptr %.sroa.0.0.i, align 8, !tbaa !33
  store i64 %i.bj, ptr %i.az, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.az, ptr %.sroa.0.0.i, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bm = phi ptr [ %i.av, %bb.k ], [ %i.az, %bb.l ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.am, align 8, !tbaa !34
  store i8 0, ptr %i.bm, align 1, !tbaa !36
  br label %bb.f, !llvm.loop !12

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.thread66: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.g
  %i.bn = load ptr, ptr %.sroa.017.0.i, align 8, !tbaa !33 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 16 ; 4 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  %i.bq = load ptr, ptr %1, align 8, !tbaa !33    ; 6 uses
  %i.br = icmp eq ptr %i.bq, %i.m                 ; 2 uses
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.thread66
  br i1 %i.br, label %bb.m, label %.thread.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEclIS7_NS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.thread66
  br i1 %i.br, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.bs = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.bs)
  %.not21.i5.i = icmp eq ptr %1, %.sroa.017.0.i
  br i1 %.not21.i5.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10.i, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  switch i64 %i.al, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !36
  store i8 %i.bt, ptr %i.bn, align 1, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bq, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bu = load i64, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !34
  %i.bw = load ptr, ptr %.sroa.017.0.i, align 8, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  store i8 0, ptr %i.bx, align 1, !tbaa !36
  %.pre.i7.i = load ptr, ptr %1, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10.i

.thread.i9.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  store ptr %i.bq, ptr %.sroa.017.0.i, align 8, !tbaa !33
  store i64 %i.al, ptr %i.by, align 8, !tbaa !34
  %i.bz = load i64, ptr %i.m, align 8, !tbaa !36
  store i64 %i.bz, ptr %i.bo, align 8, !tbaa !36
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i2.i
  %i.ca = load i64, ptr %i.bo, align 8, !tbaa !36
  store ptr %i.bq, ptr %.sroa.017.0.i, align 8, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  store i64 %i.al, ptr %i.cb, align 8, !tbaa !34
  %i.cc = load i64, ptr %i.m, align 8, !tbaa !36
  store i64 %i.cc, ptr %i.bo, align 8, !tbaa !36
  %.not.i4.i = icmp eq ptr %i.bn, null
  br i1 %.not.i4.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3.i
  store ptr %i.bn, ptr %1, align 8, !tbaa !33
  store i64 %i.ca, ptr %i.m, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i3.i, %.thread.i9.i
  store ptr %i.m, ptr %1, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10.i: ; preds = %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6.i, %bb.m
  %i.cd = phi ptr [ %i.bn, %bb.q ], [ %i.m, %bb.r ], [ %i.bq, %bb.m ], [ %.pre.i7.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i6.i ]
  store i64 0, ptr %i.n, align 8, !tbaa !34
  store i8 0, ptr %i.cd, align 1, !tbaa !36
  %i.ce = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.m
  br i1 %i.cf, label %.noexc29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10.i
  %i.cg = load i64, ptr %i.m, align 8, !tbaa !36
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #28
  br label %.noexc29

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit10.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, %i.r
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPFbRKS7_SE_EEvT_SH_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !345

bb.s:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS7_SG_EEEEvT_SK_T0_(ptr %i.p, ptr %i.r, ptr nonnull @_ZN8LightGBM6Config9SortAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPFbRKS7_SE_EEvT_SH_T0_.exit unwind label %bb.t

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPFbRKS7_SE_EEvT_SH_T0_.exit: ; preds = %.noexc29, %.noexc28, %bb.b, %bb.s
  %i.cj = load ptr, ptr %.sroa.063.074, align 8, !tbaa !49 ; 2 uses
  %.not70 = icmp eq ptr %i.cj, null
  br i1 %.not70, label %._crit_edge, label %bb.b

bb.t:                                             ; preds = %bb.s, %bb.d, %bb.c
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body57

bb.u:                                             ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.144, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.u
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !59  ; 6 uses
  %.not7175 = icmp eq ptr %i.cn, null
  br i1 %.not7175, label %._crit_edge79, label %bb.v

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.145, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.peel: ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %.pre93 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !34
  %.pre = load ptr, ptr %i.cr, align 8, !tbaa !33
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %.pre, i64 noundef %.pre93)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.peel
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull @.str.147, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !26
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !27
  %.not.peel = icmp eq ptr %i.cw, %i.cx
  br i1 %.not.peel, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.peel
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.148, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.peel: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke fastcc void @_ZN8LightGBM6CommonL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cu, ptr noundef nonnull @.str.149, i1 noundef zeroext true)
          to label %_ZN8LightGBM7CommonCL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKc.exit.peel unwind label %.loopexit.split-lp84.loopexit.split-lp.loopexit.split-lp

_ZN8LightGBM7CommonCL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKc.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.peel
  %i.cz = load ptr, ptr %5, align 8, !tbaa !33
  %i.da = load i64, ptr %i.co, align 8, !tbaa !34
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %i.cz, i64 noundef %i.da)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.peel unwind label %.loopexit.split-lp88.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.peel: ; preds = %_ZN8LightGBM7CommonCL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKc.exit.peel
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.148, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47.peel unwind label %.loopexit.split-lp88.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.peel
  %i.dd = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cp
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47.peel
  %i.df = load i64, ptr %i.cp, align 8, !tbaa !36
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40.peel
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.137, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.peel: ; preds = %bb.x
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !49 ; 2 uses
  %.not71.peel = icmp eq ptr %i.di, null
  br i1 %.not71.peel, label %._crit_edge79, label %.peel.next

._crit_edge79:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.150, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %._crit_edge
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.peel.next:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52
  %.sroa.059.076 = phi ptr [ %i.eh, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 ], [ %i.di, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52.peel ] ; 5 uses
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.146, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %.peel.next
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.059.076, i64 8
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %.sroa.059.076, i64 16
  %.pre97 = load i64, ptr %.phi.trans.insert96, align 8, !tbaa !34
  %.pre95 = load ptr, ptr %i.dm, align 8, !tbaa !33
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %.pre95, i64 noundef %.pre97)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @.str.147, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.059.076, i64 40 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.059.076, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !26
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !27
  %.not = icmp eq ptr %i.dr, %i.ds
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.dt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.148, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke fastcc void @_ZN8LightGBM6CommonL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dp, ptr noundef nonnull @.str.149, i1 noundef zeroext true)
          to label %_ZN8LightGBM7CommonCL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKc.exit unwind label %.loopexit.split-lp84.loopexit.split-lp.loopexit.split-lp

_ZN8LightGBM7CommonCL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKc.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
  %i.du = load ptr, ptr %5, align 8, !tbaa !33
  %i.dv = load i64, ptr %i.co, align 8, !tbaa !34
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef %i.du, i64 noundef %i.dv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45 unwind label %.loopexit.split-lp88.loopexit.split-lp.loopexit.split-lp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45: ; preds = %_ZN8LightGBM7CommonCL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKc.exit
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.148, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %.loopexit.split-lp88.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45
  %i.dy = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cp
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.ea = load i64, ptr %i.cp, align 8, !tbaa !36
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.aa

.loopexit.split-lp84.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

.loopexit.split-lp88.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45, %_ZN8LightGBM7CommonCL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKc.exit, %_ZN8LightGBM7CommonCL4JoinINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKSt6vectorIT_SaIS9_EEPKc.exit.peel, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.peel
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cp
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %.loopexit.split-lp88.loopexit.split-lp.loopexit.split-lp
  %i.ee = load i64, ptr %i.cp, align 8, !tbaa !36
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %.loopexit.split-lp88.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp84.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp84.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp88.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.body

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit40
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.137, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit52: ; preds = %bb.aa
  %i.eh = load ptr, ptr %.sroa.059.076, align 8, !tbaa !49 ; 2 uses
  %.not71 = icmp eq ptr %i.eh, null
  br i1 %.not71, label %._crit_edge79, label %.peel.next, !llvm.loop !346

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33: ; preds = %._crit_edge79
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ei, ptr %0, align 8, !tbaa !30, !alias.scope !357
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ej, align 8, !tbaa !34, !alias.scope !357
  store i8 0, ptr %i.ei, align 8, !tbaa !36, !alias.scope !357
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !139, !noalias !357 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.el, null
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !noalias !357 ; 2 uses
  %i.eo = icmp ugt ptr %i.el, %i.en
  %.08.i.i.i = select i1 %i.eo, ptr %i.el, ptr %i.en ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i53 = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i53, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !140, !noalias !357 ; 2 uses
  %i.er = ptrtoint ptr %.08.i.i.i to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.eq, i64 noundef %i.et)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !357 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ei
  br i1 %i.ex, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ac
  %i.ey = load i64, ptr %i.ei, align 8, !tbaa !36, !alias.scope !357
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #28
  br label %.body

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit33
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.fa)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ac

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.ad, %bb.ab
  %i.fb = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fb, ptr %4, align 8, !tbaa !142
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.fd = getelementptr i8, ptr %i.fb, i64 -24
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = getelementptr inbounds i8, ptr %4, i64 %i.fe
  store ptr %i.fc, ptr %i.ff, align 8, !tbaa !142
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.fg, ptr %i.cl, align 8, !tbaa !142
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fh, align 8, !tbaa !142
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !33 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !36
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fh, align 8, !tbaa !142
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fo) #27
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.fp, ptr %4, align 8, !tbaa !142
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fr = getelementptr i8, ptr %i.fp, i64 -24
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds i8, ptr %4, i64 %i.fs
  store ptr %i.fq, ptr %i.ft, align 8, !tbaa !142
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.fu, align 8, !tbaa !144
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.fv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.fw = load ptr, ptr %i.e, align 8, !tbaa !59
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEELb1EEEEE19_M_deallocate_nodesEPSE_(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.fw)
end_hunk_0
