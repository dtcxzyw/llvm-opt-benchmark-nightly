Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/testzfp?download=true
inline.NumInlined: 3089
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_Z10test_arrayIN3zfp6array2IfNS0_5codec4zfp2IfEENS0_5index8implicitEEEfEjRT_PKT0_jdd:bb.a
  %i.bw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 72, ptr %i.bx, align 8, !tbaa !101
  %i.by = load i64, ptr %i.bu, align 8
  %i.bz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !46
  %i.cc = and i32 %i.cb, -177
  %i.cd = or disjoint i32 %i.cc, 32
  store i32 %i.cd, ptr %i.ca, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.ce, ptr %6, align 8, !tbaa !42, !alias.scope !401
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.cf, align 8, !tbaa !45, !alias.scope !401
  store i8 0, ptr %i.ce, align 8, !tbaa !38, !alias.scope !401
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !103, !noalias !401 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ch, null
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !401 ; 2 uses
  %i.ck = icmp ugt ptr %i.ch, %i.cj
  %.08.i.i.i = select i1 %i.ck, ptr %i.ch, ptr %i.cj ; 2 uses
  %.not8.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not8.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !104, !noalias !401 ; 2 uses
  %i.cn = ptrtoint ptr %.08.i.i.i to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.cm, i64 noundef %i.cp)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cs = load ptr, ptr %6, align 8, !tbaa !44, !alias.scope !401 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ce
  br i1 %i.ct, label %.body, label %.body.sink.split

bb.o:                                             ; preds = %bb.l
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cu)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.cv = load ptr, ptr %6, align 8, !tbaa !44
  %i.cw = load i64, ptr %i.cf, align 8, !tbaa !45
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cv, i64 noundef %i.cw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.str.48..str.49 = select i1 %i.bi, ptr @.str.49, ptr @.str.48
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %.str.48..str.49, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !14
  %i.da = getelementptr i8, ptr %i.cz, i64 -24
  %i.db = load i64, ptr %i.da, align 8
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 240
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i140 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i140, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc142 unwind label %bb.s

.noexc142:                                        ; preds = %bb.p
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !37
  %.not.i1.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 67
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.de)
          to label %.noexc143 unwind label %bb.s

.noexc143:                                        ; preds = %bb.r
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = invoke noundef signext i8 %i.dl(ptr noundef nonnull align 8 dereferenceable(570) %i.de, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.s, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc143, %bb.q
  %.0.i.i.i141 = phi i8 [ %i.di, %bb.q ], [ %i.dm, %.noexc143 ]
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i8 noundef signext %.0.i.i.i141)
          to label %.noexc145 unwind label %bb.s

.noexc145:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dn)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.s ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc145
  %i.dp = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.ce
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  call void @_ZdlPv(ptr noundef %i.dp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.dr, ptr %7, align 8, !tbaa !42
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ds, align 8, !tbaa !45
  store i8 0, ptr %i.dr, align 8, !tbaa !38
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !45
  %i.dx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.du, i64 noundef 0, i64 noundef %i.dw, ptr noundef nonnull %i.dr, i64 noundef 0)
          to label %.noexc81 unwind label %bb.x   ; 0 uses

bb.s:                                             ; preds = %.noexc145, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc143, %bb.r, %bb.p, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.ce
  br i1 %i.ea, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.n
  %.sink = phi ptr [ %i.cs, %bb.n ], [ %i.dz, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.dy, %bb.s ]
  call void @_ZdlPv(ptr noundef %.sink) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.n ], [ %i.dy, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

.noexc81:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !107
  %i.ed = and i32 %i.ec, 3
  %.not.i.i.i = icmp eq i32 %i.ed, 0
  %i.ee = load i64, ptr %i.dv, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ee
  %i.ef = load ptr, ptr %i.du, align 8, !tbaa !44
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.dt, ptr noundef %i.ef, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.x

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc81
  %i.eg = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dr
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  call void @_ZdlPv(ptr noundef %i.eg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.70, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  invoke void @_Z13update_array2IfEvRN3zfp6array2IT_NS0_5codec4zfp2IS2_EENS0_5index8implicitEEE(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.t unwind label %bb.j

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !140, !nonnull !141, !align !142 ; 2 uses
  %i.em = load i32, ptr %i.ej, align 8, !tbaa !136
  %i.en = and i32 %i.em, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !59
  %i.eq = zext nneg i32 %i.en to i64              ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !144 ; 2 uses
  %i.et = lshr i32 %i.es, 1                       ; 2 uses
  %i.eu = icmp eq i32 %i.et, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !61
  %i.ex = getelementptr inbounds nuw [64 x i8], ptr %i.ew, i64 %i.eq ; 3 uses
  br i1 %i.eu, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89

_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89: ; preds = %bb.t
  store i32 2, ptr %i.er, align 4, !tbaa !39
  %9 = add nsw i32 %i.et, -1                      ; 2 uses
  %10 = zext i32 %9 to i64
  %.not.i.i.i.i.i90 = icmp eq i32 %9, 0
  br i1 %.not.i.i.i.i.i90, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread, label %bb.u

bb.u:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89
  %11 = trunc i32 %i.es to i1
  br i1 %11, label %12, label %bb.v

12:                                               ; preds = %bb.u
  %13 = invoke noundef i64 @_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf(ptr noundef nonnull align 8 dereferenceable(88) %i.el, i64 noundef %10, ptr noundef %i.ex)
          to label %.noexc92 unwind label %bb.y   ; 0 uses

.noexc92:                                         ; preds = %12
  %.pre.i.i.i.i.i91 = load ptr, ptr %i.ek, align 8, !tbaa !140
  br label %bb.v

bb.v:                                             ; preds = %.noexc92, %bb.u
  %i.ey = phi ptr [ %.pre.i.i.i.i.i91, %.noexc92 ], [ %i.el, %bb.u ]
  %i.ez = invoke noundef i64 @_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf(ptr noundef nonnull align 8 dereferenceable(88) %i.ey, i64 noundef 0, ptr noundef %i.ex)
          to label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread unwind label %bb.y ; 0 uses

_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread: ; preds = %bb.t, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89, %bb.v
  %i.fa = load float, ptr %i.ex, align 4, !tbaa !99
  %i.fb = fpext float %i.fa to double             ; 3 uses
  %i.fc = fsub double %i.fb, %4
  %i.fd = call noundef double @llvm.fabs.f64(double %i.fc)
  %i.fe = fmul double %4, 1.000000e-03
  %i.ff = fcmp ole double %i.fd, %i.fe            ; 3 uses
  br i1 %i.ff, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.53, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %bb.w
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.fb)
          to label %_ZNSolsEf.exit98 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit98:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.fi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull @.str.71, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100: ; preds = %_ZNSolsEf.exit98
  %i.fj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fh, double noundef %4)
          to label %bb.ab unwind label %bb.z      ; 0 uses

bb.x:                                             ; preds = %.noexc81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.dr
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.fl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aj

bb.y:                                             ; preds = %bb.v, %12
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %_ZNSolsEd.exit113, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111, %_ZNSolsEf.exit109, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZNSolsEf.exit98, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96, %bb.w
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aa:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107: ; preds = %bb.aa
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.fb)
          to label %_ZNSolsEf.exit109 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit109:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.36, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111: ; preds = %_ZNSolsEf.exit109
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, double noundef %4)
          to label %_ZNSolsEd.exit113 unwind label %bb.z

_ZNSolsEd.exit113:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit111
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull @.str.47, i64 noundef 1)
          to label %bb.ab unwind label %bb.z      ; 0 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit100, %_ZNSolsEd.exit113
  %i.fu = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %i.fv = getelementptr i8, ptr %i.fu, i64 -24    ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 72, ptr %i.fy, align 8, !tbaa !101
  %i.fz = load i64, ptr %i.fv, align 8
  %i.ga = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !46
  %i.gd = and i32 %i.gc, -177
  %i.ge = or disjoint i32 %i.gd, 32
  store i32 %i.ge, ptr %i.gb, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.gf, ptr %8, align 8, !tbaa !42, !alias.scope !404
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.gg, align 8, !tbaa !45, !alias.scope !404
  store i8 0, ptr %i.gf, align 8, !tbaa !38, !alias.scope !404
  %i.gh = load ptr, ptr %i.cg, align 8, !tbaa !103, !noalias !404 ; 3 uses
  %.not.i.not.i.i118 = icmp eq ptr %i.gh, null
  %i.gi = load ptr, ptr %i.ci, align 8, !noalias !404 ; 2 uses
  %i.gj = icmp ugt ptr %i.gh, %i.gi
  %.08.i.i.i119 = select i1 %i.gj, ptr %i.gh, ptr %i.gi ; 2 uses
  %.not8.i.i120 = icmp eq ptr %.08.i.i.i119, null
  %.not.i.i121 = select i1 %.not.i.not.i.i118, i1 true, i1 %.not8.i.i120
  br i1 %.not.i.i121, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !104, !noalias !404 ; 2 uses
  %i.gm = ptrtoint ptr %.08.i.i.i119 to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.gl, i64 noundef %i.go)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit127 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gr = load ptr, ptr %8, align 8, !tbaa !44, !alias.scope !404 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.gf
  br i1 %i.gs, label %.body125, label %.body125.sink.split

bb.ae:                                            ; preds = %bb.ab
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit127 unwind label %bb.ad

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit127: ; preds = %bb.ae, %bb.ac
  %i.gt = load ptr, ptr %8, align 8, !tbaa !44
  %i.gu = load i64, ptr %i.gg, align 8, !tbaa !45
  %i.gv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.gt, i64 noundef %i.gu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit129 unwind label %bb.ai ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit129: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit127
  %.str.48..str.491 = select i1 %i.ff, ptr @.str.48, ptr @.str.49
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull %.str.48..str.491, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit129
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !14
  %i.gy = getelementptr i8, ptr %i.gx, i64 -24
  %i.gz = load i64, ptr %i.gy, align 8
  %i.ha = getelementptr inbounds i8, ptr %i.gv, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 240
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i147 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i147, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc152 unwind label %bb.ai

.noexc152:                                        ; preds = %bb.af
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !37
  %.not.i1.i.i149 = icmp eq i8 %i.he, 0
  br i1 %.not.i1.i.i149, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 67
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i148
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hc)
          to label %.noexc153 unwind label %bb.ai

.noexc153:                                        ; preds = %bb.ah
  %i.hh = load ptr, ptr %i.hc, align 8, !tbaa !14
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = invoke noundef signext i8 %i.hj(ptr noundef nonnull align 8 dereferenceable(570) %i.hc, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150 unwind label %bb.ai, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150: ; preds = %.noexc153, %bb.ag
  %.0.i.i.i151 = phi i8 [ %i.hg, %bb.ag ], [ %i.hk, %.noexc153 ]
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, i8 noundef signext %.0.i.i.i151)
          to label %.noexc155 unwind label %bb.ai

.noexc155:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %_ZNSolsEPFRSoS_E.exit133 unwind label %bb.ai ; 0 uses

_ZNSolsEPFRSoS_E.exit133:                         ; preds = %.noexc155
  %i.hn = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.gf
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSolsEPFRSoS_E.exit133
  call void @_ZdlPv(ptr noundef %i.hn) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSolsEPFRSoS_E.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hp = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.hp, ptr %5, align 8, !tbaa !14
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.hr = getelementptr i8, ptr %i.hp, i64 -24
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds i8, ptr %5, i64 %i.hs
  store ptr %i.hq, ptr %i.ht, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dt, align 8, !tbaa !14
  %i.hu = load ptr, ptr %i.du, align 8, !tbaa !44 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  call void @_ZdlPv(ptr noundef %i.hu) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %spec.select = zext i1 %i.bi to i32
  %i.hx = select i1 %i.bi, i32 2, i32 1
  %spec.select53 = select i1 %i.ff, i32 %spec.select, i32 %i.hx
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dt, align 8, !tbaa !14
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hy) #24
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hz)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %spec.select53

bb.ai:                                            ; preds = %.noexc155, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i150, %.noexc153, %bb.ah, %bb.af, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit129, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit127
  %i.ia = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.gf
  br i1 %i.ic, label %.body125, label %.body125.sink.split

.body125.sink.split:                              ; preds = %bb.ai, %bb.ad
  %.sink187 = phi ptr [ %i.gr, %bb.ad ], [ %i.ib, %bb.ai ]
  %.pn46.ph = phi { ptr, i32 } [ %i.gq, %bb.ad ], [ %i.ia, %bb.ai ]
  call void @_ZdlPv(ptr noundef %.sink187) #26
  br label %.body125

.body125:                                         ; preds = %.body125.sink.split, %bb.ai, %bb.ad
  %.pn46 = phi { ptr, i32 } [ %i.gq, %bb.ad ], [ %i.ia, %bb.ai ], [ %.pn46.ph, %.body125.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.h, %bb.y, %bb.z, %.body125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %.body, %bb.j, %bb.b
  %.pn50.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.av, %bb.h ], [ %i.fn, %bb.y ], [ %.pn, %.body ], [ %i.bn, %bb.j ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn46, %.body125 ], [ %i.fo, %bb.z ]
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
end_hunk_0
begin_hunk_1_@_Z10test_arrayIN3zfp6array3IfNS0_5codec4zfp3IfEENS0_5index8implicitEEEfEjRT_PKT0_jdd:bb.a
  %i.ch = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 72, ptr %i.ci, align 8, !tbaa !101
  %i.cj = load i64, ptr %i.cf, align 8
  %i.ck = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !46
  %i.cn = and i32 %i.cm, -177
  %i.co = or disjoint i32 %i.cn, 32
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.cp, ptr %6, align 8, !tbaa !42, !alias.scope !420
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.cq, align 8, !tbaa !45, !alias.scope !420
  store i8 0, ptr %i.cp, align 8, !tbaa !38, !alias.scope !420
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !103, !noalias !420 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cs, null
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !420 ; 2 uses
  %i.cv = icmp ugt ptr %i.cs, %i.cu
  %.08.i.i.i = select i1 %i.cv, ptr %i.cs, ptr %i.cu ; 2 uses
  %.not8.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not8.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !104, !noalias !420 ; 2 uses
  %i.cy = ptrtoint ptr %.08.i.i.i to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.cx, i64 noundef %i.da)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %6, align 8, !tbaa !44, !alias.scope !420 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cp
  br i1 %i.de, label %.body, label %.body.sink.split

bb.o:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.dg = load ptr, ptr %6, align 8, !tbaa !44
  %i.dh = load i64, ptr %i.cq, align 8, !tbaa !45
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.dg, i64 noundef %i.dh)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.str.48..str.49 = select i1 %i.bt, ptr @.str.49, ptr @.str.48
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull %.str.48..str.49, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !14
  %i.dl = getelementptr i8, ptr %i.dk, i64 -24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.di, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 240
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i141 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i141, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc143 unwind label %bb.s

.noexc143:                                        ; preds = %bb.p
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !37
  %.not.i1.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 67
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dp)
          to label %.noexc144 unwind label %bb.s

.noexc144:                                        ; preds = %bb.r
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef signext i8 %i.dw(ptr noundef nonnull align 8 dereferenceable(570) %i.dp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.s, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc144, %bb.q
  %.0.i.i.i142 = phi i8 [ %i.dt, %bb.q ], [ %i.dx, %.noexc144 ]
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i8 noundef signext %.0.i.i.i142)
          to label %.noexc146 unwind label %bb.s

.noexc146:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.s ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc146
  %i.ea = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cp
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  call void @_ZdlPv(ptr noundef %i.ea) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ec, ptr %7, align 8, !tbaa !42
  %i.ed = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ed, align 8, !tbaa !45
  store i8 0, ptr %i.ec, align 8, !tbaa !38
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !45
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i64 noundef 0, i64 noundef %i.eh, ptr noundef nonnull %i.ec, i64 noundef 0)
          to label %.noexc81 unwind label %bb.x   ; 0 uses

bb.s:                                             ; preds = %.noexc146, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc144, %bb.r, %bb.p, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.cp
  br i1 %i.el, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.n
  %.sink = phi ptr [ %i.dd, %bb.n ], [ %i.ek, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.dc, %bb.n ], [ %i.ej, %bb.s ]
  call void @_ZdlPv(ptr noundef %.sink) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dc, %bb.n ], [ %i.ej, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

.noexc81:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.en = load i32, ptr %i.em, align 8, !tbaa !107
  %i.eo = and i32 %i.en, 3
  %.not.i.i.i = icmp eq i32 %i.eo, 0
  %i.ep = load i64, ptr %i.eg, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ep
  %i.eq = load ptr, ptr %i.ef, align 8, !tbaa !44
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ee, ptr noundef %i.eq, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.x

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc81
  %i.er = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ec
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  call void @_ZdlPv(ptr noundef %i.er) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.70, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  invoke void @_Z13update_array3IfEvRN3zfp6array3IT_NS0_5codec4zfp3IS2_EENS0_5index8implicitEEE(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.t unwind label %bb.j

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !160, !nonnull !141, !align !142 ; 2 uses
  %i.ex = load i32, ptr %i.eu, align 8, !tbaa !156
  %i.ey = and i32 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !65
  %i.fb = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !162 ; 2 uses
  %i.fe = lshr i32 %i.fd, 1                       ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !67
  %i.fi = getelementptr inbounds nuw [256 x i8], ptr %i.fh, i64 %i.fb ; 3 uses
  br i1 %i.ff, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89

_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89: ; preds = %bb.t
  store i32 2, ptr %i.fc, align 4, !tbaa !39
  %9 = add nsw i32 %i.fe, -1                      ; 2 uses
  %10 = zext i32 %9 to i64
  %.not.i.i.i.i.i90 = icmp eq i32 %9, 0
  br i1 %.not.i.i.i.i.i90, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread, label %bb.u

bb.u:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89
  %11 = trunc i32 %i.fd to i1
  br i1 %11, label %12, label %bb.v

12:                                               ; preds = %bb.u
  %13 = invoke noundef i64 @_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf(ptr noundef nonnull align 8 dereferenceable(104) %i.ew, i64 noundef %10, ptr noundef %i.fi)
          to label %.noexc93 unwind label %bb.y   ; 0 uses

.noexc93:                                         ; preds = %12
  %.pre.i.i.i.i.i92 = load ptr, ptr %i.ev, align 8, !tbaa !160
  br label %bb.v

bb.v:                                             ; preds = %.noexc93, %bb.u
  %i.fj = phi ptr [ %.pre.i.i.i.i.i92, %.noexc93 ], [ %i.ew, %bb.u ]
  %i.fk = invoke noundef i64 @_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf(ptr noundef nonnull align 8 dereferenceable(104) %i.fj, i64 noundef 0, ptr noundef %i.fi)
          to label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread unwind label %bb.y ; 0 uses

_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread: ; preds = %bb.t, %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89, %bb.v
  %i.fl = load float, ptr %i.fi, align 4, !tbaa !99
  %i.fm = fpext float %i.fl to double             ; 3 uses
  %i.fn = fsub double %i.fm, %4
  %i.fo = call noundef double @llvm.fabs.f64(double %i.fn)
  %i.fp = fmul double %4, 1.000000e-03
  %i.fq = fcmp ole double %i.fo, %i.fp            ; 3 uses
  br i1 %i.fq, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.53, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %bb.w
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.fm)
          to label %_ZNSolsEf.exit99 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit99:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.ft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef nonnull @.str.71, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101: ; preds = %_ZNSolsEf.exit99
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, double noundef %4)
          to label %bb.ab unwind label %bb.z      ; 0 uses

bb.x:                                             ; preds = %.noexc81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ec
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.fw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aj

bb.y:                                             ; preds = %bb.v, %12
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %_ZNSolsEd.exit114, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %_ZNSolsEf.exit110, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101, %_ZNSolsEf.exit99, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97, %bb.w
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aa:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i89.thread
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %bb.aa
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.fm)
          to label %_ZNSolsEf.exit110 unwind label %bb.z ; 2 uses

_ZNSolsEf.exit110:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.36, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %_ZNSolsEf.exit110
  %i.gd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, double noundef %4)
          to label %_ZNSolsEd.exit114 unwind label %bb.z

_ZNSolsEd.exit114:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.ge = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull @.str.47, i64 noundef 1)
          to label %bb.ab unwind label %bb.z      ; 0 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101, %_ZNSolsEd.exit114
  %i.gf = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24    ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i64 72, ptr %i.gj, align 8, !tbaa !101
  %i.gk = load i64, ptr %i.gg, align 8
  %i.gl = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !46
  %i.go = and i32 %i.gn, -177
  %i.gp = or disjoint i32 %i.go, 32
  store i32 %i.gp, ptr %i.gm, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.gq, ptr %8, align 8, !tbaa !42, !alias.scope !423
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.gr, align 8, !tbaa !45, !alias.scope !423
  store i8 0, ptr %i.gq, align 8, !tbaa !38, !alias.scope !423
  %i.gs = load ptr, ptr %i.cr, align 8, !tbaa !103, !noalias !423 ; 3 uses
  %.not.i.not.i.i119 = icmp eq ptr %i.gs, null
  %i.gt = load ptr, ptr %i.ct, align 8, !noalias !423 ; 2 uses
  %i.gu = icmp ugt ptr %i.gs, %i.gt
  %.08.i.i.i120 = select i1 %i.gu, ptr %i.gs, ptr %i.gt ; 2 uses
  %.not8.i.i121 = icmp eq ptr %.08.i.i.i120, null
  %.not.i.i122 = select i1 %.not.i.not.i.i119, i1 true, i1 %.not8.i.i121
  br i1 %.not.i.i122, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !104, !noalias !423 ; 2 uses
  %i.gx = ptrtoint ptr %.08.i.i.i120 to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.gw, i64 noundef %i.gz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %8, align 8, !tbaa !44, !alias.scope !423 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gq
  br i1 %i.hd, label %.body126, label %.body126.sink.split

bb.ae:                                            ; preds = %bb.ab
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ef)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128 unwind label %bb.ad

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128: ; preds = %bb.ae, %bb.ac
  %i.he = load ptr, ptr %8, align 8, !tbaa !44
  %i.hf = load i64, ptr %i.gr, align 8, !tbaa !45
  %i.hg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.he, i64 noundef %i.hf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130 unwind label %bb.ai ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128
  %.str.48..str.491 = select i1 %i.fq, ptr @.str.48, ptr @.str.49
  %i.hh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, ptr noundef nonnull %.str.48..str.491, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !14
  %i.hj = getelementptr i8, ptr %i.hi, i64 -24
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds i8, ptr %i.hg, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 240
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i148 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i148, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc153 unwind label %bb.ai

.noexc153:                                        ; preds = %bb.af
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !37
  %.not.i1.i.i150 = icmp eq i8 %i.hp, 0
  br i1 %.not.i1.i.i150, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 67
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hn)
          to label %.noexc154 unwind label %bb.ai

.noexc154:                                        ; preds = %bb.ah
  %i.hs = load ptr, ptr %i.hn, align 8, !tbaa !14
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = invoke noundef signext i8 %i.hu(ptr noundef nonnull align 8 dereferenceable(570) %i.hn, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151 unwind label %bb.ai, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151: ; preds = %.noexc154, %bb.ag
  %.0.i.i.i152 = phi i8 [ %i.hr, %bb.ag ], [ %i.hv, %.noexc154 ]
  %i.hw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.hg, i8 noundef signext %.0.i.i.i152)
          to label %.noexc156 unwind label %bb.ai

.noexc156:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151
  %i.hx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hw)
          to label %_ZNSolsEPFRSoS_E.exit134 unwind label %bb.ai ; 0 uses

_ZNSolsEPFRSoS_E.exit134:                         ; preds = %.noexc156
  %i.hy = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.gq
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSolsEPFRSoS_E.exit134
  call void @_ZdlPv(ptr noundef %i.hy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSolsEPFRSoS_E.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.ia = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ia, ptr %5, align 8, !tbaa !14
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ic = getelementptr i8, ptr %i.ia, i64 -24
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds i8, ptr %5, i64 %i.id
  store ptr %i.ib, ptr %i.ie, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ee, align 8, !tbaa !14
  %i.if = load ptr, ptr %i.ef, align 8, !tbaa !44 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  call void @_ZdlPv(ptr noundef %i.if) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %spec.select = zext i1 %i.bt to i32
  %i.ii = select i1 %i.bt, i32 2, i32 1
  %spec.select53 = select i1 %i.fq, i32 %spec.select, i32 %i.ii
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ee, align 8, !tbaa !14
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ij) #24
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ik)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %spec.select53

bb.ai:                                            ; preds = %.noexc156, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151, %.noexc154, %bb.ah, %bb.af, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.gq
  br i1 %i.in, label %.body126, label %.body126.sink.split

.body126.sink.split:                              ; preds = %bb.ai, %bb.ad
  %.sink189 = phi ptr [ %i.hc, %bb.ad ], [ %i.im, %bb.ai ]
  %.pn46.ph = phi { ptr, i32 } [ %i.hb, %bb.ad ], [ %i.il, %bb.ai ]
  call void @_ZdlPv(ptr noundef %.sink189) #26
  br label %.body126

.body126:                                         ; preds = %.body126.sink.split, %bb.ai, %bb.ad
  %.pn46 = phi { ptr, i32 } [ %i.hb, %bb.ad ], [ %i.il, %bb.ai ], [ %.pn46.ph, %.body126.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.h, %bb.y, %bb.z, %.body126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %.body, %bb.j, %bb.b
  %.pn50.pn = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.bg, %bb.h ], [ %i.fy, %bb.y ], [ %.pn, %.body ], [ %i.by, %bb.j ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn46, %.body126 ], [ %i.fz, %bb.z ]
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
end_hunk_1
begin_hunk_2_@_Z13update_array2IfEvRN3zfp6array2IT_NS0_5codec4zfp2IS2_EENS0_5index8implicitEEE:bb.a
  %i.jz = insertelement <2 x i64> %i.jy, i64 %i.jw, i64 1
  %i.ka = shl <2 x i64> %i.jz, splat (i64 2)
  %i.kb = load <2 x i64>, ptr %i.jx, align 8, !tbaa !40 ; 2 uses
  %i.kc = xor <2 x i64> %i.kb, %i.ka
  %i.kd = add <2 x i64> %i.kc, splat (i64 -4)
  %i.ke = lshr <2 x i64> %i.kd, splat (i64 62)
  %i.kf = sub <2 x i64> zeroinitializer, %i.kb
  %i.kg = and <2 x i64> %i.ke, %i.kf              ; 2 uses
  %i.kh = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.kg)
  %i.ki = icmp eq i64 %i.kh, 0
  %i.kj = load ptr, ptr %i.jr, align 8, !tbaa !128 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.kl, i64 noundef %i.ju)
  br i1 %i.ki, label %bb.t, label %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i65

_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i65: ; preds = %bb.s
  %i.km = sub nuw nsw <2 x i64> splat (i64 4), %i.kg ; 2 uses
  %i.kn = extractelement <2 x i64> %i.km, i64 0
  %i.ko = extractelement <2 x i64> %i.km, i64 1
  %i.kp = tail call noundef i64 @zfp_decode_partial_block_strided_float_2(ptr noundef nonnull %i.kj, ptr noundef %i.ii, i64 noundef %i.kn, i64 noundef %i.ko, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit66

bb.t:                                             ; preds = %bb.s
  %i.kq = tail call noundef i64 @zfp_decode_block_float_2(ptr noundef nonnull %i.kj, ptr noundef %i.ii) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit66

_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit66: ; preds = %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i65, %bb.t
  %i.kr = load ptr, ptr %i.kk, align 8, !tbaa !195
  %i.ks = tail call i64 @stream_align(ptr noundef %i.kr) ; 0 uses
  br label %_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit48

_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit48: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i45, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit66
  %i.kt = and i64 %i.hq, 3                        ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.hc
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !99
  %i.kx = load ptr, ptr %i.q, align 8, !tbaa !140, !noalias !480, !nonnull !141, !align !142 ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !135, !noalias !480 ; 4 uses
  %i.la = mul i64 %i.kz, %i.hd
  %i.lb = add i64 %i.la, %i.hs                    ; 5 uses
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = add i32 %i.lc, 1                        ; 3 uses
  %i.le = load i32, ptr %i.p, align 8, !tbaa !136, !noalias !480
  %i.lf = and i32 %i.ld, %i.le
  %i.lg = load ptr, ptr %i.r, align 8, !tbaa !59, !noalias !480
  %i.lh = zext i32 %i.lf to i64                   ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !144, !noalias !480 ; 3 uses
  %i.lk = lshr i32 %i.lj, 1                       ; 2 uses
  %i.ll = icmp eq i32 %i.lk, %i.ld                ; 2 uses
  %i.lm = load ptr, ptr %i.s, align 8, !tbaa !61, !noalias !480
  %i.ln = getelementptr inbounds nuw [64 x i8], ptr %i.lm, i64 %i.lh ; 5 uses
  %i.lo = shl i32 %i.ld, 1
  %.sink.i.i.v.i.i.i49 = select i1 %i.ll, i32 %i.lj, i32 %i.lo
  %.sink.i.i.i.i.i50 = or i32 %.sink.i.i.v.i.i.i49, 1
  store i32 %.sink.i.i.i.i.i50, ptr %i.li, align 4, !tbaa !39, !noalias !480
  %i.lp = add nsw i32 %i.lk, -1
  %i.lq = zext i32 %i.lp to i64                   ; 4 uses
  %.not.i.i.i.i51 = icmp eq i64 %i.lb, %i.lq
  br i1 %.not.i.i.i.i51, label %_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEmIEf.exit56, label %bb.u

bb.u:                                             ; preds = %_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit48
  %i.lr = trunc i32 %i.lj to i1
  %i.ls = or i1 %i.ll, %i.lr
  br i1 %i.ls, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !178, !noalias !480
  %i.lw = mul i64 %i.lv, %i.lq
  %i.lx = urem i64 %i.lq, %i.kz
  %i.ly = udiv i64 %i.lq, %i.kz
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  %i.ma = insertelement <2 x i64> poison, i64 %i.lx, i64 0
  %i.mb = insertelement <2 x i64> %i.ma, i64 %i.ly, i64 1
  %i.mc = shl nuw nsw <2 x i64> %i.mb, splat (i64 2)
  %i.md = load <2 x i64>, ptr %i.lz, align 8, !tbaa !40, !noalias !480 ; 2 uses
  %i.me = xor <2 x i64> %i.md, %i.mc
  %i.mf = add <2 x i64> %i.me, splat (i64 -4)
  %i.mg = lshr <2 x i64> %i.mf, splat (i64 62)
  %i.mh = sub <2 x i64> zeroinitializer, %i.md
  %i.mi = and <2 x i64> %i.mg, %i.mh              ; 2 uses
  %i.mj = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.mi)
  %i.mk = icmp eq i64 %i.mj, 0
  %i.ml = load ptr, ptr %i.lt, align 8, !tbaa !128, !noalias !480 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !195, !noalias !480
  tail call void @stream_wseek(ptr noundef %i.mn, i64 noundef %i.lw), !noalias !480
  br i1 %i.mk, label %bb.w, label %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i71

_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i71: ; preds = %bb.v
  %i.mo = sub nuw nsw <2 x i64> splat (i64 4), %i.mi ; 2 uses
  %i.mp = extractelement <2 x i64> %i.mo, i64 0
  %i.mq = extractelement <2 x i64> %i.mo, i64 1
  %i.mr = tail call noundef i64 @zfp_encode_partial_block_strided_float_2(ptr noundef nonnull %i.ml, ptr noundef %i.ln, i64 noundef %i.mp, i64 noundef %i.mq, i64 noundef 1, i64 noundef 4), !noalias !480 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit72

bb.w:                                             ; preds = %bb.v
  %i.ms = tail call noundef i64 @zfp_encode_block_float_2(ptr noundef nonnull %i.ml, ptr noundef %i.ln), !noalias !480 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit72

_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit72: ; preds = %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i71, %bb.w
  %i.mt = load ptr, ptr %i.mm, align 8, !tbaa !195, !noalias !480
  %i.mu = tail call i64 @stream_flush(ptr noundef %i.mt), !noalias !480 ; 0 uses
  %.pre.i.i.i.i55 = load ptr, ptr %i.q, align 8, !tbaa !140, !noalias !480 ; 2 uses
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i55, i64 72
  %.pre162 = load i64, ptr %.phi.trans.insert161, align 8, !tbaa !135, !noalias !480
  br label %bb.x

bb.x:                                             ; preds = %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit72, %bb.u
  %i.mv = phi i64 [ %.pre162, %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit72 ], [ %i.kz, %bb.u ] ; 2 uses
  %i.mw = phi ptr [ %.pre.i.i.i.i55, %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit72 ], [ %i.kx, %bb.u ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 40
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !178, !noalias !480
  %i.na = mul i64 %i.mz, %i.lb
  %i.nb = urem i64 %i.lb, %i.mv
  %i.nc = udiv i64 %i.lb, %i.mv
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 56
  %i.ne = insertelement <2 x i64> poison, i64 %i.nb, i64 0
  %i.nf = insertelement <2 x i64> %i.ne, i64 %i.nc, i64 1
  %i.ng = shl <2 x i64> %i.nf, splat (i64 2)
  %i.nh = load <2 x i64>, ptr %i.nd, align 8, !tbaa !40, !noalias !480 ; 2 uses
  %i.ni = xor <2 x i64> %i.nh, %i.ng
  %i.nj = add <2 x i64> %i.ni, splat (i64 -4)
  %i.nk = lshr <2 x i64> %i.nj, splat (i64 62)
  %i.nl = sub <2 x i64> zeroinitializer, %i.nh
  %i.nm = and <2 x i64> %i.nk, %i.nl              ; 2 uses
  %i.nn = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.nm)
  %i.no = icmp eq i64 %i.nn, 0
  %i.np = load ptr, ptr %i.mx, align 8, !tbaa !128, !noalias !480 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !195, !noalias !480
  tail call void @stream_rseek(ptr noundef %i.nr, i64 noundef %i.na), !noalias !480
  br i1 %i.no, label %bb.y, label %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i69

_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i69: ; preds = %bb.x
  %i.ns = sub nuw nsw <2 x i64> splat (i64 4), %i.nm ; 2 uses
  %i.nt = extractelement <2 x i64> %i.ns, i64 0
  %i.nu = extractelement <2 x i64> %i.ns, i64 1
  %i.nv = tail call noundef i64 @zfp_decode_partial_block_strided_float_2(ptr noundef nonnull %i.np, ptr noundef %i.ln, i64 noundef %i.nt, i64 noundef %i.nu, i64 noundef 1, i64 noundef 4), !noalias !480 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit70

bb.y:                                             ; preds = %bb.x
  %i.nw = tail call noundef i64 @zfp_decode_block_float_2(ptr noundef nonnull %i.np, ptr noundef %i.ln), !noalias !480 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit70

_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit70: ; preds = %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i69, %bb.y
  %i.nx = load ptr, ptr %i.nq, align 8, !tbaa !195, !noalias !480
  %i.ny = tail call i64 @stream_align(ptr noundef %i.nx), !noalias !480 ; 0 uses
  br label %_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEmIEf.exit56

_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEmIEf.exit56: ; preds = %_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit48, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit70
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.hf
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.kt ; 2 uses
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !99, !noalias !480
  %i.oc = fsub float %i.ob, %i.kw
  store float %i.oc, ptr %i.oa, align 4, !tbaa !99, !noalias !480
  %i.od = add i32 %.035139, 1                     ; 2 uses
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = load i64, ptr %i.o, align 8, !tbaa !126 ; 2 uses
  %i.og = icmp ugt i64 %i.of, %i.oe
  br i1 %i.og, label %bb.n, label %._crit_edge141.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge145
  %i.oh = phi i64 [ %i.hg, %.preheader.lr.ph ], [ %i.on, %._crit_edge145 ]
  %i.oi = phi i64 [ %.pre164, %.preheader.lr.ph ], [ %i.oo, %._crit_edge145 ]
  %i.oj = phi i64 [ 0, %.preheader.lr.ph ], [ %i.oq, %._crit_edge145 ] ; 3 uses
  %.034146 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.op, %._crit_edge145 ]
  %.not153 = icmp eq i64 %i.oi, 1
  br i1 %.not153, label %._crit_edge145, label %.lr.ph144

.lr.ph144:                                        ; preds = %.preheader
  %i.ok = lshr i64 %i.oj, 2
  %i.ol = shl nuw nsw i64 %i.oj, 2
  %i.om = and i64 %i.ol, 12
  br label %bb.z

._crit_edge147:                                   ; preds = %._crit_edge145, %.preheader135, %.preheader133
  ret void

._crit_edge145.loopexit:                          ; preds = %_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEaSERKSA_.exit
  %.pre182 = load i64, ptr %i.a, align 8, !tbaa !138
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit, %.preheader
  %i.on = phi i64 [ %.pre182, %._crit_edge145.loopexit ], [ %i.oh, %.preheader ] ; 2 uses
  %i.oo = phi i64 [ %i.aab, %._crit_edge145.loopexit ], [ 1, %.preheader ]
  %i.op = add i32 %.034146, 1                     ; 2 uses
  %i.oq = zext i32 %i.op to i64                   ; 2 uses
  %i.or = add i64 %i.on, -1
  %i.os = icmp ugt i64 %i.or, %i.oq
  br i1 %i.os, label %.preheader, label %._crit_edge147

bb.z:                                             ; preds = %.lr.ph144, %_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEaSERKSA_.exit
  %i.ot = phi i64 [ 0, %.lr.ph144 ], [ %i.aaa, %_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEaSERKSA_.exit ] ; 3 uses
  %.0143 = phi i32 [ 0, %.lr.ph144 ], [ %i.zz, %_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEaSERKSA_.exit ]
  %i.ou = load ptr, ptr %i.hj, align 8, !tbaa !140, !nonnull !141, !align !142 ; 7 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 72
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !135 ; 4 uses
  %i.ox = load i32, ptr %i.hi, align 8, !tbaa !136
  %i.oy = and i32 %i.ox, 1
  %i.oz = load ptr, ptr %i.hk, align 8, !tbaa !59 ; 3 uses
  %i.pa = zext nneg i32 %i.oy to i64              ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.pa ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !144 ; 2 uses
  %i.pd = lshr i32 %i.pc, 1                       ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 1
  %i.pf = load ptr, ptr %i.hl, align 8, !tbaa !61 ; 3 uses
  %i.pg = getelementptr inbounds nuw [64 x i8], ptr %i.pf, i64 %i.pa ; 5 uses
  br i1 %i.pe, label %_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i

_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i: ; preds = %bb.z
  store i32 2, ptr %i.pb, align 4, !tbaa !39
  %1 = add nsw i32 %i.pd, -1                      ; 2 uses
  %2 = zext i32 %1 to i64                         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit.i, label %3

3:                                                ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i
  %4 = trunc i32 %i.pc to i1
  br i1 %4, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %3
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !178
  %i.pk = mul i64 %i.pj, %2
  %i.pl = urem i64 %2, %i.ow
  %i.pm = udiv i64 %2, %i.ow
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ou, i64 56
  %i.po = insertelement <2 x i64> poison, i64 %i.pl, i64 0
  %i.pp = insertelement <2 x i64> %i.po, i64 %i.pm, i64 1
  %i.pq = shl nuw nsw <2 x i64> %i.pp, splat (i64 2)
  %i.pr = load <2 x i64>, ptr %i.pn, align 8, !tbaa !40 ; 2 uses
  %i.ps = xor <2 x i64> %i.pr, %i.pq
  %i.pt = add <2 x i64> %i.ps, splat (i64 -4)
  %i.pu = lshr <2 x i64> %i.pt, splat (i64 62)
  %i.pv = sub <2 x i64> zeroinitializer, %i.pr
  %i.pw = and <2 x i64> %i.pu, %i.pv              ; 2 uses
  %i.px = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.pw)
  %i.py = icmp eq i64 %i.px, 0
  %i.pz = load ptr, ptr %i.ph, align 8, !tbaa !128 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.qb, i64 noundef %i.pk)
  br i1 %i.py, label %bb.ab, label %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i79

_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i79: ; preds = %bb.aa
  %i.qc = sub nuw nsw <2 x i64> splat (i64 4), %i.pw ; 2 uses
  %i.qd = extractelement <2 x i64> %i.qc, i64 0
  %i.qe = extractelement <2 x i64> %i.qc, i64 1
  %i.qf = tail call noundef i64 @zfp_encode_partial_block_strided_float_2(ptr noundef nonnull %i.pz, ptr noundef %i.pg, i64 noundef %i.qd, i64 noundef %i.qe, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit80

bb.ab:                                            ; preds = %bb.aa
  %i.qg = tail call noundef i64 @zfp_encode_block_float_2(ptr noundef nonnull %i.pz, ptr noundef %i.pg) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit80

_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit80: ; preds = %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i79, %bb.ab
  %i.qh = load ptr, ptr %i.qa, align 8, !tbaa !195
  %i.qi = tail call i64 @stream_flush(ptr noundef %i.qh) ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.hj, align 8, !tbaa !140
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit80, %3
  %i.qj = phi ptr [ %.pre.i.i.i.i.i.i, %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit80 ], [ %i.ou, %3 ] ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 48
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.qm = load <2 x i64>, ptr %i.ql, align 8, !tbaa !40 ; 2 uses
  %i.qn = add <2 x i64> %i.qm, splat (i64 -4)
  %i.qo = lshr <2 x i64> %i.qn, splat (i64 62)
  %i.qp = sub <2 x i64> zeroinitializer, %i.qm
  %i.qq = and <2 x i64> %i.qo, %i.qp              ; 2 uses
  %i.qr = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.qq)
  %i.qs = icmp eq i64 %i.qr, 0
  %i.qt = load ptr, ptr %i.qk, align 8, !tbaa !128 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.qv, i64 noundef 0)
  br i1 %i.qs, label %bb.ad, label %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i77

_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i77: ; preds = %bb.ac
  %i.qw = sub nuw nsw <2 x i64> splat (i64 4), %i.qq ; 2 uses
  %i.qx = extractelement <2 x i64> %i.qw, i64 0
  %i.qy = extractelement <2 x i64> %i.qw, i64 1
  %i.qz = tail call noundef i64 @zfp_decode_partial_block_strided_float_2(ptr noundef nonnull %i.qt, ptr noundef %i.pg, i64 noundef %i.qx, i64 noundef %i.qy, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit78

bb.ad:                                            ; preds = %bb.ac
  %i.ra = tail call noundef i64 @zfp_decode_block_float_2(ptr noundef nonnull %i.qt, ptr noundef %i.pg) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit78

_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit78: ; preds = %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i77, %bb.ad
  %i.rb = load ptr, ptr %i.qu, align 8, !tbaa !195
  %i.rc = tail call i64 @stream_align(ptr noundef %i.rb) ; 0 uses
  %.pre165 = load ptr, ptr %i.hj, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %.pre165, i64 72
  %.pre167 = load i64, ptr %.phi.trans.insert166, align 8, !tbaa !135
  %.pre168 = load ptr, ptr %i.hk, align 8, !tbaa !59
  %.pre169 = load ptr, ptr %i.hl, align 8, !tbaa !61
  br label %_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit.i

_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit.i: ; preds = %bb.z, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit78, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i
  %5 = phi ptr [ %.pre169, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit78 ], [ %i.pf, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i ], [ %i.pf, %bb.z ] ; 2 uses
  %6 = phi ptr [ %.pre168, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit78 ], [ %i.oz, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i ], [ %i.oz, %bb.z ] ; 2 uses
  %7 = phi i64 [ %.pre167, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit78 ], [ %i.ow, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i ], [ %i.ow, %bb.z ] ; 4 uses
  %8 = phi ptr [ %.pre165, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit78 ], [ %i.ou, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i ], [ %i.ou, %bb.z ] ; 5 uses
  %i.rd = load float, ptr %i.pg, align 4, !tbaa !99
  %i.re = lshr i64 %i.ot, 2
  %i.rf = mul i64 %7, %i.ok
  %i.rg = add i64 %i.rf, %i.re                    ; 5 uses
  %i.rh = trunc i64 %i.rg to i32
  %i.ri = add i32 %i.rh, 1                        ; 3 uses
  %i.rj = load i32, ptr %i.hi, align 8, !tbaa !136
  %i.rk = and i32 %i.ri, %i.rj
  %i.rl = zext i32 %i.rk to i64                   ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.rl ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !144 ; 2 uses
  %i.ro = lshr i32 %i.rn, 1                       ; 2 uses
  %i.rp = icmp eq i32 %i.ro, %i.ri
  %i.rq = getelementptr inbounds nuw [64 x i8], ptr %5, i64 %i.rl ; 5 uses
  br i1 %i.rp, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit.i
  %i.rr = shl i32 %i.ri, 1
  store i32 %i.rr, ptr %i.rm, align 4, !tbaa !39
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i

_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i: ; preds = %bb.ae, %_ZNK3zfp8internal4dim215const_referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEcvfEv.exit.i
  %i.rs = add nsw i32 %i.ro, -1
  %i.rt = zext i32 %i.rs to i64                   ; 4 uses
  %.not.i.i.i.i.i6.i = icmp eq i64 %i.rg, %i.rt
  br i1 %.not.i.i.i.i.i6.i, label %_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IfNS0_5codec4zfp2IfEENS0_5index8implicitEEEEEERKT_SE_SE_.exit, label %bb.af

bb.af:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i
  %i.ru = trunc i32 %i.rn to i1
  br i1 %i.ru, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.rv = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.rw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !178
  %i.ry = mul i64 %i.rx, %i.rt
  %i.rz = urem i64 %i.rt, %7
  %i.sa = udiv i64 %i.rt, %7
  %i.sb = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.sc = insertelement <2 x i64> poison, i64 %i.rz, i64 0
  %i.sd = insertelement <2 x i64> %i.sc, i64 %i.sa, i64 1
  %i.se = shl nuw nsw <2 x i64> %i.sd, splat (i64 2)
  %i.sf = load <2 x i64>, ptr %i.sb, align 8, !tbaa !40 ; 2 uses
  %i.sg = xor <2 x i64> %i.sf, %i.se
  %i.sh = add <2 x i64> %i.sg, splat (i64 -4)
  %i.si = lshr <2 x i64> %i.sh, splat (i64 62)
  %i.sj = sub <2 x i64> zeroinitializer, %i.sf
  %i.sk = and <2 x i64> %i.si, %i.sj              ; 2 uses
  %i.sl = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.sk)
  %i.sm = icmp eq i64 %i.sl, 0
  %i.sn = load ptr, ptr %i.rv, align 8, !tbaa !128 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.sp, i64 noundef %i.ry)
  br i1 %i.sm, label %bb.ah, label %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i75

_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i75: ; preds = %bb.ag
  %i.sq = sub nuw nsw <2 x i64> splat (i64 4), %i.sk ; 2 uses
  %i.sr = extractelement <2 x i64> %i.sq, i64 0
  %i.ss = extractelement <2 x i64> %i.sq, i64 1
  %i.st = tail call noundef i64 @zfp_encode_partial_block_strided_float_2(ptr noundef nonnull %i.sn, ptr noundef %i.rq, i64 noundef %i.sr, i64 noundef %i.ss, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit76

bb.ah:                                            ; preds = %bb.ag
  %i.su = tail call noundef i64 @zfp_encode_block_float_2(ptr noundef nonnull %i.sn, ptr noundef %i.rq) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit76

_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit76: ; preds = %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i75, %bb.ah
  %i.sv = load ptr, ptr %i.so, align 8, !tbaa !195
  %i.sw = tail call i64 @stream_flush(ptr noundef %i.sv) ; 0 uses
  %.pre.i.i.i.i.i7.i = load ptr, ptr %i.hj, align 8, !tbaa !140 ; 2 uses
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i7.i, i64 72
  %.pre171 = load i64, ptr %.phi.trans.insert170, align 8, !tbaa !135
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit76, %bb.af
  %i.sx = phi i64 [ %.pre171, %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit76 ], [ %7, %bb.af ] ; 2 uses
  %i.sy = phi ptr [ %.pre.i.i.i.i.i7.i, %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit76 ], [ %8, %bb.af ] ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 48
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 40
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !178
  %i.tc = mul i64 %i.tb, %i.rg
  %i.td = urem i64 %i.rg, %i.sx
  %i.te = udiv i64 %i.rg, %i.sx
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 56
  %i.tg = insertelement <2 x i64> poison, i64 %i.td, i64 0
  %i.th = insertelement <2 x i64> %i.tg, i64 %i.te, i64 1
  %i.ti = shl <2 x i64> %i.th, splat (i64 2)
  %i.tj = load <2 x i64>, ptr %i.tf, align 8, !tbaa !40 ; 2 uses
  %i.tk = xor <2 x i64> %i.tj, %i.ti
  %i.tl = add <2 x i64> %i.tk, splat (i64 -4)
  %i.tm = lshr <2 x i64> %i.tl, splat (i64 62)
  %i.tn = sub <2 x i64> zeroinitializer, %i.tj
  %i.to = and <2 x i64> %i.tm, %i.tn              ; 2 uses
  %i.tp = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.to)
  %i.tq = icmp eq i64 %i.tp, 0
  %i.tr = load ptr, ptr %i.sz, align 8, !tbaa !128 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.tt, i64 noundef %i.tc)
  br i1 %i.tq, label %bb.aj, label %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i73

_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i73: ; preds = %bb.ai
  %i.tu = sub nuw nsw <2 x i64> splat (i64 4), %i.to ; 2 uses
  %i.tv = extractelement <2 x i64> %i.tu, i64 0
  %i.tw = extractelement <2 x i64> %i.tu, i64 1
  %i.tx = tail call noundef i64 @zfp_decode_partial_block_strided_float_2(ptr noundef nonnull %i.tr, ptr noundef %i.rq, i64 noundef %i.tv, i64 noundef %i.tw, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit74

bb.aj:                                            ; preds = %bb.ai
  %i.ty = tail call noundef i64 @zfp_decode_block_float_2(ptr noundef nonnull %i.tr, ptr noundef %i.rq) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit74

_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit74: ; preds = %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i73, %bb.aj
  %i.tz = load ptr, ptr %i.ts, align 8, !tbaa !195
  %i.ua = tail call i64 @stream_align(ptr noundef %i.tz) ; 0 uses
  %.pre172 = load ptr, ptr %i.hj, align 8, !tbaa !140, !noalias !481
  %.pre173 = load ptr, ptr %i.hk, align 8, !tbaa !59, !noalias !481
  %.pre174 = load ptr, ptr %i.hl, align 8, !tbaa !61, !noalias !481
  br label %_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IfNS0_5codec4zfp2IfEENS0_5index8implicitEEEEEERKT_SE_SE_.exit

_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IfNS0_5codec4zfp2IfEENS0_5index8implicitEEEEEERKT_SE_SE_.exit: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit74
  %i.ub = phi ptr [ %5, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i ], [ %.pre174, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit74 ] ; 2 uses
  %i.uc = phi ptr [ %6, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i ], [ %.pre173, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit74 ] ; 2 uses
  %i.ud = phi ptr [ %8, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i ], [ %.pre172, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit74 ] ; 6 uses
  %i.ue = and i64 %i.ot, 3
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %i.om
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %i.ue
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !99
  %i.ui = fcmp olt float %i.rd, %i.uh             ; 2 uses
  %.sroa.speculated101 = select i1 %i.ui, i64 %i.ot, i64 0 ; 2 uses
  %.sroa.speculated = select i1 %i.ui, i64 %i.oj, i64 0 ; 2 uses
  %i.uj = lshr i64 %.sroa.speculated101, 2
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ud, i64 72
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !135, !noalias !481 ; 5 uses
  %i.um = lshr i64 %.sroa.speculated, 2
  %i.un = mul i64 %i.um, %i.ul
  %i.uo = add i64 %i.un, %i.uj                    ; 5 uses
  %i.up = trunc i64 %i.uo to i32
  %i.uq = add i32 %i.up, 1                        ; 3 uses
  %i.ur = load i32, ptr %i.hi, align 8, !tbaa !136, !noalias !481
  %i.us = and i32 %i.uq, %i.ur
  %i.ut = zext i32 %i.us to i64                   ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ut ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !144, !noalias !481 ; 2 uses
  %i.uw = lshr i32 %i.uv, 1                       ; 2 uses
  %i.ux = icmp eq i32 %i.uw, %i.uq
  %i.uy = getelementptr inbounds nuw [64 x i8], ptr %i.ub, i64 %i.ut ; 5 uses
  br i1 %i.ux, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57, label %bb.ak

bb.ak:                                            ; preds = %_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IfNS0_5codec4zfp2IfEENS0_5index8implicitEEEEEERKT_SE_SE_.exit
  %i.uz = shl i32 %i.uq, 1
  store i32 %i.uz, ptr %i.uu, align 4, !tbaa !39, !noalias !481
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57

_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57: ; preds = %bb.ak, %_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IfNS0_5codec4zfp2IfEENS0_5index8implicitEEEEEERKT_SE_SE_.exit
  %i.va = add nsw i32 %i.uw, -1
  %i.vb = zext i32 %i.va to i64                   ; 4 uses
  %.not.i.i.i.i.i58 = icmp eq i64 %i.uo, %i.vb
  br i1 %.not.i.i.i.i.i58, label %_ZNK3zfp8internal4dim212const_handleINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE3getEv.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57
  %i.vc = trunc i32 %i.uv to i1
  br i1 %i.vc, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !178, !noalias !481
  %i.vg = mul i64 %i.vf, %i.vb
  %i.vh = urem i64 %i.vb, %i.ul
  %i.vi = udiv i64 %i.vb, %i.ul
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ud, i64 56
  %i.vk = insertelement <2 x i64> poison, i64 %i.vh, i64 0
  %i.vl = insertelement <2 x i64> %i.vk, i64 %i.vi, i64 1
  %i.vm = shl nuw nsw <2 x i64> %i.vl, splat (i64 2)
  %i.vn = load <2 x i64>, ptr %i.vj, align 8, !tbaa !40, !noalias !481 ; 2 uses
  %i.vo = xor <2 x i64> %i.vn, %i.vm
  %i.vp = add <2 x i64> %i.vo, splat (i64 -4)
  %i.vq = lshr <2 x i64> %i.vp, splat (i64 62)
  %i.vr = sub <2 x i64> zeroinitializer, %i.vn
  %i.vs = and <2 x i64> %i.vq, %i.vr              ; 2 uses
  %i.vt = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.vs)
  %i.vu = icmp eq i64 %i.vt, 0
  %i.vv = load ptr, ptr %i.vd, align 8, !tbaa !128, !noalias !481 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16 ; 2 uses
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !195, !noalias !481
  tail call void @stream_wseek(ptr noundef %i.vx, i64 noundef %i.vg), !noalias !481
  br i1 %i.vu, label %bb.an, label %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i87

_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i87: ; preds = %bb.am
  %i.vy = sub nuw nsw <2 x i64> splat (i64 4), %i.vs ; 2 uses
  %i.vz = extractelement <2 x i64> %i.vy, i64 0
  %i.wa = extractelement <2 x i64> %i.vy, i64 1
  %i.wb = tail call noundef i64 @zfp_encode_partial_block_strided_float_2(ptr noundef nonnull %i.vv, ptr noundef %i.uy, i64 noundef %i.vz, i64 noundef %i.wa, i64 noundef 1, i64 noundef 4), !noalias !481 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit88

bb.an:                                            ; preds = %bb.am
  %i.wc = tail call noundef i64 @zfp_encode_block_float_2(ptr noundef nonnull %i.vv, ptr noundef %i.uy), !noalias !481 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit88

_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit88: ; preds = %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i87, %bb.an
  %i.wd = load ptr, ptr %i.vw, align 8, !tbaa !195, !noalias !481
  %i.we = tail call i64 @stream_flush(ptr noundef %i.wd), !noalias !481 ; 0 uses
  %.pre.i.i.i.i.i60 = load ptr, ptr %i.hj, align 8, !tbaa !140, !noalias !481 ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i60, i64 72
  %.pre176 = load i64, ptr %.phi.trans.insert175, align 8, !tbaa !135, !noalias !481
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit88, %bb.al
  %i.wf = phi i64 [ %.pre176, %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit88 ], [ %i.ul, %bb.al ] ; 2 uses
  %i.wg = phi ptr [ %.pre.i.i.i.i.i60, %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit88 ], [ %i.ud, %bb.al ] ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 48
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 40
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !178, !noalias !481
  %i.wk = mul i64 %i.wj, %i.uo
  %i.wl = urem i64 %i.uo, %i.wf
  %i.wm = udiv i64 %i.uo, %i.wf
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wg, i64 56
  %i.wo = insertelement <2 x i64> poison, i64 %i.wl, i64 0
  %i.wp = insertelement <2 x i64> %i.wo, i64 %i.wm, i64 1
  %i.wq = shl <2 x i64> %i.wp, splat (i64 2)
  %i.wr = load <2 x i64>, ptr %i.wn, align 8, !tbaa !40, !noalias !481 ; 2 uses
  %i.ws = xor <2 x i64> %i.wr, %i.wq
  %i.wt = add <2 x i64> %i.ws, splat (i64 -4)
  %i.wu = lshr <2 x i64> %i.wt, splat (i64 62)
  %i.wv = sub <2 x i64> zeroinitializer, %i.wr
  %i.ww = and <2 x i64> %i.wu, %i.wv              ; 2 uses
  %i.wx = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.ww)
  %i.wy = icmp eq i64 %i.wx, 0
  %i.wz = load ptr, ptr %i.wh, align 8, !tbaa !128, !noalias !481 ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !195, !noalias !481
  tail call void @stream_rseek(ptr noundef %i.xb, i64 noundef %i.wk), !noalias !481
  br i1 %i.wy, label %bb.ap, label %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i85

_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i85: ; preds = %bb.ao
  %i.xc = sub nuw nsw <2 x i64> splat (i64 4), %i.ww ; 2 uses
  %i.xd = extractelement <2 x i64> %i.xc, i64 0
  %i.xe = extractelement <2 x i64> %i.xc, i64 1
  %i.xf = tail call noundef i64 @zfp_decode_partial_block_strided_float_2(ptr noundef nonnull %i.wz, ptr noundef %i.uy, i64 noundef %i.xd, i64 noundef %i.xe, i64 noundef 1, i64 noundef 4), !noalias !481 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit86

bb.ap:                                            ; preds = %bb.ao
  %i.xg = tail call noundef i64 @zfp_decode_block_float_2(ptr noundef nonnull %i.wz, ptr noundef %i.uy), !noalias !481 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit86

_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit86: ; preds = %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i85, %bb.ap
  %i.xh = load ptr, ptr %i.xa, align 8, !tbaa !195, !noalias !481
  %i.xi = tail call i64 @stream_align(ptr noundef %i.xh), !noalias !481 ; 0 uses
  %.pre177 = load ptr, ptr %i.hj, align 8, !tbaa !140, !noalias !481 ; 2 uses
  %.phi.trans.insert178 = getelementptr inbounds nuw i8, ptr %.pre177, i64 72
  %.pre179 = load i64, ptr %.phi.trans.insert178, align 8, !tbaa !135, !noalias !481
  %.pre180 = load ptr, ptr %i.hk, align 8, !tbaa !59, !noalias !481
  %.pre181 = load ptr, ptr %i.hl, align 8, !tbaa !61, !noalias !481
  br label %_ZNK3zfp8internal4dim212const_handleINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE3getEv.exit.i

_ZNK3zfp8internal4dim212const_handleINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE3getEv.exit.i: ; preds = %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit86, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57
  %i.xj = phi ptr [ %.pre181, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit86 ], [ %i.ub, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57 ]
  %i.xk = phi ptr [ %.pre180, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit86 ], [ %i.uc, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57 ]
  %i.xl = phi i64 [ %.pre179, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit86 ], [ %i.ul, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57 ] ; 2 uses
  %i.xm = phi ptr [ %.pre177, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit86 ], [ %i.ud, %_ZN3zfp8internal5CacheINS0_11BlockCache2IfNS0_11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57 ] ; 4 uses
  %i.xn = and i64 %.sroa.speculated101, 3
  %i.xo = shl nuw nsw i64 %.sroa.speculated, 2
  %i.xp = and i64 %i.xo, 12
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.xp
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.xn
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !99, !noalias !481
  %i.xt = load i32, ptr %i.hi, align 8, !tbaa !136, !noalias !481
  %i.xu = and i32 %i.xt, 1
  %i.xv = zext nneg i32 %i.xu to i64              ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.xv ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !144, !noalias !481 ; 2 uses
  %i.xy = lshr i32 %i.xx, 1                       ; 2 uses
  %i.xz = getelementptr inbounds nuw [64 x i8], ptr %i.xj, i64 %i.xv ; 5 uses
  store i32 3, ptr %i.xw, align 4, !tbaa !39, !noalias !481
  %i.ya = add nsw i32 %i.xy, -1                   ; 2 uses
  %i.yb = zext i32 %i.ya to i64                   ; 3 uses
  %.not.i.i.i.i2.i = icmp eq i32 %i.ya, 0
  br i1 %.not.i.i.i.i2.i, label %_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEaSERKSA_.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNK3zfp8internal4dim212const_handleINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE3getEv.exit.i
  %9 = icmp eq i32 %i.xy, 1
  %i.yc = trunc i32 %i.xx to i1
  %10 = or i1 %9, %i.yc
  br i1 %10, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xm, i64 40
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !178, !noalias !481
  %i.yg = mul i64 %i.yf, %i.yb
  %i.yh = urem i64 %i.yb, %i.xl
  %i.yi = udiv i64 %i.yb, %i.xl
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xm, i64 56
  %i.yk = insertelement <2 x i64> poison, i64 %i.yh, i64 0
  %i.yl = insertelement <2 x i64> %i.yk, i64 %i.yi, i64 1
  %i.ym = shl nuw nsw <2 x i64> %i.yl, splat (i64 2)
  %i.yn = load <2 x i64>, ptr %i.yj, align 8, !tbaa !40, !noalias !481 ; 2 uses
  %i.yo = xor <2 x i64> %i.yn, %i.ym
  %i.yp = add <2 x i64> %i.yo, splat (i64 -4)
  %i.yq = lshr <2 x i64> %i.yp, splat (i64 62)
  %i.yr = sub <2 x i64> zeroinitializer, %i.yn
  %i.ys = and <2 x i64> %i.yq, %i.yr              ; 2 uses
  %i.yt = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.ys)
  %i.yu = icmp eq i64 %i.yt, 0
  %i.yv = load ptr, ptr %i.yd, align 8, !tbaa !128, !noalias !481 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16 ; 2 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !195, !noalias !481
  tail call void @stream_wseek(ptr noundef %i.yx, i64 noundef %i.yg), !noalias !481
  br i1 %i.yu, label %bb.as, label %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i83

_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i83: ; preds = %bb.ar
  %i.yy = sub nuw nsw <2 x i64> splat (i64 4), %i.ys ; 2 uses
  %i.yz = extractelement <2 x i64> %i.yy, i64 0
  %i.za = extractelement <2 x i64> %i.yy, i64 1
  %i.zb = tail call noundef i64 @zfp_encode_partial_block_strided_float_2(ptr noundef nonnull %i.yv, ptr noundef %i.xz, i64 noundef %i.yz, i64 noundef %i.za, i64 noundef 1, i64 noundef 4), !noalias !481 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit84

bb.as:                                            ; preds = %bb.ar
  %i.zc = tail call noundef i64 @zfp_encode_block_float_2(ptr noundef nonnull %i.yv, ptr noundef %i.xz), !noalias !481 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit84

_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit84: ; preds = %_ZNK3zfp5codec4zfp2IfE20encode_block_stridedEmjPKfll.exit.i.i83, %bb.as
  %i.zd = load ptr, ptr %i.yw, align 8, !tbaa !195, !noalias !481
  %i.ze = tail call i64 @stream_flush(ptr noundef %i.zd), !noalias !481 ; 0 uses
  %.pre.i.i.i.i3.i = load ptr, ptr %i.hj, align 8, !tbaa !140, !noalias !481
  br label %bb.at

bb.at:                                            ; preds = %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit84, %bb.aq
  %i.zf = phi ptr [ %.pre.i.i.i.i3.i, %_ZN3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6encodeEmPKf.exit84 ], [ %i.xm, %bb.aq ] ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 48
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 56
  %i.zi = load <2 x i64>, ptr %i.zh, align 8, !tbaa !40, !noalias !481 ; 2 uses
  %i.zj = add <2 x i64> %i.zi, splat (i64 -4)
  %i.zk = lshr <2 x i64> %i.zj, splat (i64 62)
  %i.zl = sub <2 x i64> zeroinitializer, %i.zi
  %i.zm = and <2 x i64> %i.zk, %i.zl              ; 2 uses
  %i.zn = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.zm)
  %i.zo = icmp eq i64 %i.zn, 0
  %i.zp = load ptr, ptr %i.zg, align 8, !tbaa !128, !noalias !481 ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !195, !noalias !481
  tail call void @stream_rseek(ptr noundef %i.zr, i64 noundef 0), !noalias !481
  br i1 %i.zo, label %bb.au, label %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i81

_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i81: ; preds = %bb.at
  %i.zs = sub nuw nsw <2 x i64> splat (i64 4), %i.zm ; 2 uses
  %i.zt = extractelement <2 x i64> %i.zs, i64 0
  %i.zu = extractelement <2 x i64> %i.zs, i64 1
  %i.zv = tail call noundef i64 @zfp_decode_partial_block_strided_float_2(ptr noundef nonnull %i.zp, ptr noundef %i.xz, i64 noundef %i.zt, i64 noundef %i.zu, i64 noundef 1, i64 noundef 4), !noalias !481 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit82

bb.au:                                            ; preds = %bb.at
  %i.zw = tail call noundef i64 @zfp_decode_block_float_2(ptr noundef nonnull %i.zp, ptr noundef %i.xz), !noalias !481 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit82

_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit82: ; preds = %_ZNK3zfp5codec4zfp2IfE20decode_block_stridedEmjPfll.exit.i.i81, %bb.au
  %i.zx = load ptr, ptr %i.zq, align 8, !tbaa !195, !noalias !481
  %i.zy = tail call i64 @stream_align(ptr noundef %i.zx), !noalias !481 ; 0 uses
  br label %_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEaSERKSA_.exit

_ZN3zfp8internal4dim29referenceINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEEaSERKSA_.exit: ; preds = %_ZNK3zfp8internal4dim212const_handleINS_6array2IfNS_5codec4zfp2IfEENS_5index8implicitEEEE3getEv.exit.i, %_ZNK3zfp8internal11BlockStore2IfNS_5codec4zfp2IfEENS_5index8implicitEE6decodeEmPf.exit82
  store float %i.xs, ptr %i.xz, align 4, !tbaa !99, !noalias !481
  %i.zz = add i32 %.0143, 1                       ; 2 uses
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = load i64, ptr %i.hh, align 8, !tbaa !126 ; 2 uses
  %i.aac = add i64 %i.aab, -1
  %i.aad = icmp ugt i64 %i.aac, %i.aaa
  br i1 %i.aad, label %bb.z, label %._crit_edge145.loopexit
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp6array3IfNS_5codec4zfp3IfEENS_5index8implicitEE3setEPKf(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [64 x float], align 16            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !155  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !154  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !153  ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !126  ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !138  ; 3 uses
  %i.l = mul i64 %i.k, %i.i                       ; 2 uses
  %.not56 = icmp eq i64 %i.g, 0
  br i1 %.not56, label %.loopexit, label %.preheader34.lr.ph

.preheader34.lr.ph:                               ; preds = %bb.b
  %.not57 = icmp eq i64 %i.e, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.q = add i64 %i.k, -4
  %i.r = mul i64 %i.q, %i.i                       ; 3 uses
  %i.s = shl nsw i64 %i.i, 2
  %.not58 = icmp eq i64 %i.c, 0
  %or.cond = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond, label %.loopexit, label %.preheader34.us

.preheader34.us:                                  ; preds = %.preheader34.lr.ph, %._crit_edge46.split.us.us
  %.02652.us = phi i64 [ %i.nt, %._crit_edge46.split.us.us ], [ 0, %.preheader34.lr.ph ]
  %.02751.us = phi i64 [ %i.t, %._crit_edge46.split.us.us ], [ 0, %.preheader34.lr.ph ]
  %.02850.us = phi ptr [ %i.nx, %._crit_edge46.split.us.us ], [ %1, %.preheader34.lr.ph ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader34.us
  %.02545.us.us = phi i64 [ 0, %.preheader34.us ], [ %i.np, %._crit_edge.us.us ]
  %.144.us.us = phi i64 [ %.02751.us, %.preheader34.us ], [ %i.t, %._crit_edge.us.us ] ; 2 uses
  %.12943.us.us = phi ptr [ %.02850.us, %.preheader34.us ], [ %i.ns, %._crit_edge.us.us ]
  %i.t = add i64 %i.c, %.144.us.us                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9put_blockEmPKflll.exit.us.us, %.preheader.us.us
  %.240.us.us = phi i64 [ %.144.us.us, %.preheader.us.us ], [ %i.u, %_ZNK3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9put_blockEmPKflll.exit.us.us ] ; 7 uses
  %.23038.us.us = phi ptr [ %.12943.us.us, %.preheader.us.us ], [ %i.no, %_ZNK3zfp8internal11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9put_blockEmPKflll.exit.us.us ] ; 9 uses
  %i.u = add i64 %.240.us.us, 1                   ; 2 uses
  %i.v = trunc i64 %.240.us.us to i32
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = load i32, ptr %i.m, align 8, !tbaa !156
  %i.y = and i32 %i.x, %i.w
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.aa = zext i32 %i.y to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !162 ; 2 uses
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = icmp eq i32 %i.ad, %i.w
  br i1 %i.ae, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us, label %._ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us_crit_edge

._ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !160
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us

_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us: ; preds = %bb.c
  %i.af = or i32 %i.ac, 1
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !162
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr %i.ag, i64 %i.aa ; 65 uses
  %.not.i.us.us = icmp eq ptr %i.ag, null
  %.pre71 = load ptr, ptr %i.p, align 8, !tbaa !160 ; 6 uses
  br i1 %.not.i.us.us, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us, label %bb.d

bb.d:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre71, i64 80
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !155 ; 2 uses
  %i.ak = urem i64 %.240.us.us, %i.aj
  %i.al = shl i64 %i.ak, 2
  %i.am = udiv i64 %.240.us.us, %i.aj             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre71, i64 88
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !154 ; 2 uses
  %i.ap = urem i64 %i.am, %i.ao
  %i.aq = shl i64 %i.ap, 2
  %i.ar = udiv i64 %i.am, %i.ao
  %i.as = shl i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.pre71, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !152 ; 2 uses
  %i.av = xor i64 %i.au, %i.al
  %i.aw = add i64 %i.av, -4
  %i.ax = lshr i64 %i.aw, 62
  %i.ay = sub i64 0, %i.au
  %i.az = and i64 %i.ax, %i.ay                    ; 18 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre71, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !151 ; 2 uses
  %i.bc = xor i64 %i.bb, %i.aq
  %i.bd = add i64 %i.bc, -4
  %i.be = lshr i64 %i.bd, 62
  %i.bf = sub i64 0, %i.bb
  %i.bg = and i64 %i.be, %i.bf                    ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre71, i64 72
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !150 ; 2 uses
  %i.bj = xor i64 %i.bi, %i.as
  %i.bk = add i64 %i.bj, -4
  %i.bl = lshr i64 %i.bk, 62
  %i.bm = sub i64 0, %i.bi
  %i.bn = and i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = or i64 %i.bg, %i.az
  %i.bp = or i64 %i.bo, %i.bn
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.w, label %bb.e
end_hunk_2
begin_hunk_3_@_Z13update_array3IfEvRN3zfp6array3IT_NS0_5codec4zfp3IS2_EENS0_5index8implicitEEE:bb.a
  %i.agg = phi i64 [ %i.aou, %_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE3setEf.exit ], [ 0, %.preheader ]
  %.0231 = phi i32 [ %i.aot, %_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE3setEf.exit ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %0, ptr %1, align 8, !tbaa !203, !alias.scope !511
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vj, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8, !tbaa !203, !alias.scope !512
  store i64 %i.agg, ptr %i.vk, align 8, !tbaa !204, !alias.scope !512
  store i64 %i.afs, ptr %i.vl, align 8, !tbaa !205, !alias.scope !512
  store i64 %i.afp, ptr %i.vm, align 8, !tbaa !206, !alias.scope !512
  %i.agh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZSt3maxIN3zfp8internal4dim39referenceINS0_6array3IfNS0_5codec4zfp3IfEENS0_5index8implicitEEEEEERKT_SE_SE_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 4 uses
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !203, !noalias !513 ; 4 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !204, !noalias !513 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !205, !noalias !513 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !206, !noalias !513 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 152
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agi, i64 176 ; 2 uses
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !160, !noalias !513, !nonnull !141, !align !142 ; 7 uses
  %i.ags = lshr i64 %i.agk, 2
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 80
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !155, !noalias !513 ; 4 uses
  %i.agv = lshr i64 %i.agm, 2
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 88
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !154, !noalias !513 ; 4 uses
  %i.agy = lshr i64 %i.ago, 2
  %i.agz = mul i64 %i.agx, %i.agy
  %i.aha = add i64 %i.agz, %i.agv
  %i.ahb = mul i64 %i.aha, %i.agu
  %i.ahc = add i64 %i.ahb, %i.ags                 ; 5 uses
  %i.ahd = trunc i64 %i.ahc to i32
  %i.ahe = add i32 %i.ahd, 1                      ; 3 uses
  %i.ahf = load i32, ptr %i.agp, align 8, !tbaa !156, !noalias !513
  %i.ahg = and i32 %i.ahe, %i.ahf
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agi, i64 160
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !65, !noalias !513
  %i.ahj = zext i32 %i.ahg to i64                 ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.ahj ; 2 uses
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !162, !noalias !513 ; 2 uses
  %i.ahm = lshr i32 %i.ahl, 1                     ; 2 uses
  %i.ahn = icmp eq i32 %i.ahm, %i.ahe
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agi, i64 168
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !67, !noalias !513
  %i.ahq = getelementptr inbounds nuw [256 x i8], ptr %i.ahp, i64 %i.ahj ; 5 uses
  br i1 %i.ahn, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118, label %bb.al

bb.al:                                            ; preds = %.lr.ph232
  %i.ahr = shl i32 %i.ahe, 1
  store i32 %i.ahr, ptr %i.ahk, align 4, !tbaa !39, !noalias !513
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118

_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118: ; preds = %bb.al, %.lr.ph232
  %i.ahs = add nsw i32 %i.ahm, -1
  %i.aht = zext i32 %i.ahs to i64                 ; 4 uses
  %.not.i.i.i.i.i119 = icmp eq i64 %i.ahc, %i.aht
  br i1 %.not.i.i.i.i.i119, label %_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEaSERKSA_.exit, label %bb.am

bb.am:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118
  %i.ahu = trunc i32 %i.ahl to i1
  br i1 %i.ahu, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agr, i64 48
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agr, i64 40
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !178, !noalias !513
  %i.ahy = mul i64 %i.ahx, %i.aht
  %i.ahz = urem i64 %i.aht, %i.agu
  %i.aia = shl nuw nsw i64 %i.ahz, 2
  %i.aib = udiv i64 %i.aht, %i.agu                ; 2 uses
  %i.aic = urem i64 %i.aib, %i.agx
  %i.aid = udiv i64 %i.aib, %i.agx
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agr, i64 56
  %i.aif = load i64, ptr %i.aie, align 8, !tbaa !152, !noalias !513 ; 2 uses
  %i.aig = xor i64 %i.aif, %i.aia
  %i.aih = add i64 %i.aig, -4
  %i.aii = lshr i64 %i.aih, 62
  %i.aij = sub i64 0, %i.aif
  %i.aik = and i64 %i.aii, %i.aij                 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.agr, i64 64
  %i.aim = insertelement <2 x i64> poison, i64 %i.aic, i64 0
  %i.ain = insertelement <2 x i64> %i.aim, i64 %i.aid, i64 1
  %i.aio = shl nuw nsw <2 x i64> %i.ain, splat (i64 2)
  %i.aip = load <2 x i64>, ptr %i.ail, align 8, !tbaa !40, !noalias !513 ; 2 uses
  %i.aiq = xor <2 x i64> %i.aip, %i.aio
  %i.air = add <2 x i64> %i.aiq, splat (i64 -4)
  %i.ais = lshr <2 x i64> %i.air, splat (i64 62)
  %i.ait = sub <2 x i64> zeroinitializer, %i.aip
  %i.aiu = and <2 x i64> %i.ais, %i.ait           ; 2 uses
  %i.aiv = extractelement <2 x i64> %i.aiu, i64 0 ; 2 uses
  %i.aiw = or i64 %i.aiv, %i.aik
  %i.aix = extractelement <2 x i64> %i.aiu, i64 1 ; 2 uses
  %i.aiy = or i64 %i.aiw, %i.aix
  %i.aiz = icmp eq i64 %i.aiy, 0
  %i.aja = load ptr, ptr %i.ahv, align 8, !tbaa !146, !noalias !513 ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 16 ; 2 uses
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !195, !noalias !513
  call void @stream_wseek(ptr noundef %i.ajc, i64 noundef %i.ahy), !noalias !513
  br i1 %i.aiz, label %bb.ao, label %_ZNK3zfp5codec4zfp3IfE20encode_block_stridedEmjPKflll.exit.i.i149

_ZNK3zfp5codec4zfp3IfE20encode_block_stridedEmjPKflll.exit.i.i149: ; preds = %bb.an
  %i.ajd = sub nuw nsw i64 4, %i.aik
  %i.aje = sub nuw nsw i64 4, %i.aiv
  %i.ajf = sub nuw nsw i64 4, %i.aix
  %i.ajg = call noundef i64 @zfp_encode_partial_block_strided_float_3(ptr noundef nonnull %i.aja, ptr noundef %i.ahq, i64 noundef %i.ajd, i64 noundef %i.aje, i64 noundef %i.ajf, i64 noundef 1, i64 noundef 4, i64 noundef 16), !noalias !513 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit150

bb.ao:                                            ; preds = %bb.an
  %i.ajh = call noundef i64 @zfp_encode_block_float_3(ptr noundef nonnull %i.aja, ptr noundef %i.ahq), !noalias !513 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit150

_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit150: ; preds = %_ZNK3zfp5codec4zfp3IfE20encode_block_stridedEmjPKflll.exit.i.i149, %bb.ao
  %i.aji = load ptr, ptr %i.ajb, align 8, !tbaa !195, !noalias !513
  %i.ajj = call i64 @stream_flush(ptr noundef %i.aji), !noalias !513 ; 0 uses
  %.pre.i.i.i.i.i121 = load ptr, ptr %i.agq, align 8, !tbaa !160, !noalias !513 ; 3 uses
  %.phi.trans.insert289 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i121, i64 80
  %.pre290 = load i64, ptr %.phi.trans.insert289, align 8, !tbaa !155, !noalias !513
  %.phi.trans.insert291 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i121, i64 88
  %.pre292 = load i64, ptr %.phi.trans.insert291, align 8, !tbaa !154, !noalias !513
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit150, %bb.am
  %i.ajk = phi i64 [ %.pre292, %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit150 ], [ %i.agx, %bb.am ] ; 2 uses
  %i.ajl = phi i64 [ %.pre290, %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit150 ], [ %i.agu, %bb.am ] ; 2 uses
  %i.ajm = phi ptr [ %.pre.i.i.i.i.i121, %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit150 ], [ %i.agr, %bb.am ] ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 48
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !178, !noalias !513
  %i.ajq = mul i64 %i.ajp, %i.ahc
  %i.ajr = urem i64 %i.ahc, %i.ajl
  %i.ajs = shl i64 %i.ajr, 2
  %i.ajt = udiv i64 %i.ahc, %i.ajl                ; 2 uses
  %i.aju = urem i64 %i.ajt, %i.ajk
  %i.ajv = udiv i64 %i.ajt, %i.ajk
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajm, i64 56
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !152, !noalias !513 ; 2 uses
  %i.ajy = xor i64 %i.ajx, %i.ajs
  %i.ajz = add i64 %i.ajy, -4
  %i.aka = lshr i64 %i.ajz, 62
  %i.akb = sub i64 0, %i.ajx
  %i.akc = and i64 %i.aka, %i.akb                 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajm, i64 64
  %i.ake = insertelement <2 x i64> poison, i64 %i.aju, i64 0
  %i.akf = insertelement <2 x i64> %i.ake, i64 %i.ajv, i64 1
  %i.akg = shl <2 x i64> %i.akf, splat (i64 2)
  %i.akh = load <2 x i64>, ptr %i.akd, align 8, !tbaa !40, !noalias !513 ; 2 uses
  %i.aki = xor <2 x i64> %i.akh, %i.akg
  %i.akj = add <2 x i64> %i.aki, splat (i64 -4)
  %i.akk = lshr <2 x i64> %i.akj, splat (i64 62)
  %i.akl = sub <2 x i64> zeroinitializer, %i.akh
  %i.akm = and <2 x i64> %i.akk, %i.akl           ; 2 uses
  %i.akn = extractelement <2 x i64> %i.akm, i64 0 ; 2 uses
  %i.ako = or i64 %i.akn, %i.akc
  %i.akp = extractelement <2 x i64> %i.akm, i64 1 ; 2 uses
  %i.akq = or i64 %i.ako, %i.akp
  %i.akr = icmp eq i64 %i.akq, 0
  %i.aks = load ptr, ptr %i.ajn, align 8, !tbaa !146, !noalias !513 ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 16 ; 2 uses
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !195, !noalias !513
  call void @stream_rseek(ptr noundef %i.aku, i64 noundef %i.ajq), !noalias !513
  br i1 %i.akr, label %bb.aq, label %_ZNK3zfp5codec4zfp3IfE20decode_block_stridedEmjPflll.exit.i.i147

_ZNK3zfp5codec4zfp3IfE20decode_block_stridedEmjPflll.exit.i.i147: ; preds = %bb.ap
  %i.akv = sub nuw nsw i64 4, %i.akc
  %i.akw = sub nuw nsw i64 4, %i.akn
  %i.akx = sub nuw nsw i64 4, %i.akp
  %i.aky = call noundef i64 @zfp_decode_partial_block_strided_float_3(ptr noundef nonnull %i.aks, ptr noundef %i.ahq, i64 noundef %i.akv, i64 noundef %i.akw, i64 noundef %i.akx, i64 noundef 1, i64 noundef 4, i64 noundef 16), !noalias !513 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf.exit148

bb.aq:                                            ; preds = %bb.ap
  %i.akz = call noundef i64 @zfp_decode_block_float_3(ptr noundef nonnull %i.aks, ptr noundef %i.ahq), !noalias !513 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf.exit148

_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf.exit148: ; preds = %_ZNK3zfp5codec4zfp3IfE20decode_block_stridedEmjPflll.exit.i.i147, %bb.aq
  %i.ala = load ptr, ptr %i.akt, align 8, !tbaa !195, !noalias !513
  %i.alb = call i64 @stream_align(ptr noundef %i.ala), !noalias !513 ; 0 uses
  br label %_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEaSERKSA_.exit

_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEaSERKSA_.exit: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118, %_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf.exit148
  %i.alc = and i64 %i.agk, 3
  %i.ald = and i64 %i.agm, 3
  %i.ale = shl i64 %i.ago, 2
  %i.alf = and i64 %i.ale, 12
  %i.alg = or disjoint i64 %i.alf, %i.ald
  %.idx.i.i.i.i.i120 = shl nuw nsw i64 %i.alg, 4
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %.idx.i.i.i.i.i120
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.alh, i64 %i.alc
  %i.alj = load float, ptr %i.ali, align 4, !tbaa !99, !noalias !513
  %i.alk = load ptr, ptr %i.vo, align 8, !tbaa !160, !noalias !513, !nonnull !141, !align !142 ; 7 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 80
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !155, !noalias !513 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alk, i64 88
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !154, !noalias !513 ; 2 uses
  %i.alp = load i32, ptr %i.vn, align 8, !tbaa !156, !noalias !513
  %i.alq = and i32 %i.alp, 1
  %i.alr = load ptr, ptr %i.vp, align 8, !tbaa !65, !noalias !513
  %i.als = zext nneg i32 %i.alq to i64            ; 2 uses
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.alr, i64 %i.als ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !162, !noalias !513 ; 2 uses
  %i.alv = lshr i32 %i.alu, 1                     ; 2 uses
  %i.alw = load ptr, ptr %i.vq, align 8, !tbaa !67, !noalias !513
  %i.alx = getelementptr inbounds nuw [256 x i8], ptr %i.alw, i64 %i.als ; 5 uses
  store i32 3, ptr %i.alt, align 4, !tbaa !39, !noalias !513
  %i.aly = add nsw i32 %i.alv, -1                 ; 2 uses
  %i.alz = zext i32 %i.aly to i64                 ; 3 uses
  %.not.i.i.i.i144 = icmp eq i32 %i.aly, 0
  br i1 %.not.i.i.i.i144, label %_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE3setEf.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEaSERKSA_.exit
  %3 = icmp eq i32 %i.alv, 1
  %i.ama = trunc i32 %i.alu to i1
  %4 = or i1 %3, %i.ama
  br i1 %4, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alk, i64 48
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alk, i64 40
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !178, !noalias !513
  %i.ame = mul i64 %i.amd, %i.alz
  %i.amf = urem i64 %i.alz, %i.alm
  %i.amg = shl nuw nsw i64 %i.amf, 2
  %i.amh = udiv i64 %i.alz, %i.alm                ; 2 uses
  %i.ami = urem i64 %i.amh, %i.alo
  %i.amj = udiv i64 %i.amh, %i.alo
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alk, i64 56
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !152, !noalias !513 ; 2 uses
  %i.amm = xor i64 %i.aml, %i.amg
  %i.amn = add i64 %i.amm, -4
  %i.amo = lshr i64 %i.amn, 62
  %i.amp = sub i64 0, %i.aml
  %i.amq = and i64 %i.amo, %i.amp                 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.alk, i64 64
  %i.ams = insertelement <2 x i64> poison, i64 %i.ami, i64 0
  %i.amt = insertelement <2 x i64> %i.ams, i64 %i.amj, i64 1
  %i.amu = shl nuw nsw <2 x i64> %i.amt, splat (i64 2)
  %i.amv = load <2 x i64>, ptr %i.amr, align 8, !tbaa !40, !noalias !513 ; 2 uses
  %i.amw = xor <2 x i64> %i.amv, %i.amu
  %i.amx = add <2 x i64> %i.amw, splat (i64 -4)
  %i.amy = lshr <2 x i64> %i.amx, splat (i64 62)
  %i.amz = sub <2 x i64> zeroinitializer, %i.amv
  %i.ana = and <2 x i64> %i.amy, %i.amz           ; 2 uses
  %i.anb = extractelement <2 x i64> %i.ana, i64 0 ; 2 uses
  %i.anc = or i64 %i.anb, %i.amq
  %i.and = extractelement <2 x i64> %i.ana, i64 1 ; 2 uses
  %i.ane = or i64 %i.anc, %i.and
  %i.anf = icmp eq i64 %i.ane, 0
  %i.ang = load ptr, ptr %i.amb, align 8, !tbaa !146, !noalias !513 ; 3 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 16 ; 2 uses
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !195, !noalias !513
  call void @stream_wseek(ptr noundef %i.ani, i64 noundef %i.ame), !noalias !513
  br i1 %i.anf, label %bb.at, label %_ZNK3zfp5codec4zfp3IfE20encode_block_stridedEmjPKflll.exit.i.i153

_ZNK3zfp5codec4zfp3IfE20encode_block_stridedEmjPKflll.exit.i.i153: ; preds = %bb.as
  %i.anj = sub nuw nsw i64 4, %i.amq
  %i.ank = sub nuw nsw i64 4, %i.anb
  %i.anl = sub nuw nsw i64 4, %i.and
  %i.anm = call noundef i64 @zfp_encode_partial_block_strided_float_3(ptr noundef nonnull %i.ang, ptr noundef %i.alx, i64 noundef %i.anj, i64 noundef %i.ank, i64 noundef %i.anl, i64 noundef 1, i64 noundef 4, i64 noundef 16), !noalias !513 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit154

bb.at:                                            ; preds = %bb.as
  %i.ann = call noundef i64 @zfp_encode_block_float_3(ptr noundef nonnull %i.ang, ptr noundef %i.alx), !noalias !513 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit154

_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit154: ; preds = %_ZNK3zfp5codec4zfp3IfE20encode_block_stridedEmjPKflll.exit.i.i153, %bb.at
  %i.ano = load ptr, ptr %i.anh, align 8, !tbaa !195, !noalias !513
  %i.anp = call i64 @stream_flush(ptr noundef %i.ano), !noalias !513 ; 0 uses
  %.pre.i.i.i.i146 = load ptr, ptr %i.vo, align 8, !tbaa !160, !noalias !513
  br label %bb.au

bb.au:                                            ; preds = %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit154, %bb.ar
  %i.anq = phi ptr [ %.pre.i.i.i.i146, %_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf.exit154 ], [ %i.alk, %bb.ar ] ; 3 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 48
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 56
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !152, !noalias !513 ; 2 uses
  %i.anu = add i64 %i.ant, -4
  %i.anv = lshr i64 %i.anu, 62
  %i.anw = sub i64 0, %i.ant
  %i.anx = and i64 %i.anv, %i.anw                 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anq, i64 64
  %i.anz = load <2 x i64>, ptr %i.any, align 8, !tbaa !40, !noalias !513 ; 2 uses
  %i.aoa = add <2 x i64> %i.anz, splat (i64 -4)
  %i.aob = lshr <2 x i64> %i.aoa, splat (i64 62)
  %i.aoc = sub <2 x i64> zeroinitializer, %i.anz
  %i.aod = and <2 x i64> %i.aob, %i.aoc           ; 2 uses
  %i.aoe = extractelement <2 x i64> %i.aod, i64 0 ; 2 uses
  %i.aof = or i64 %i.aoe, %i.anx
  %i.aog = extractelement <2 x i64> %i.aod, i64 1 ; 2 uses
  %i.aoh = or i64 %i.aof, %i.aog
  %i.aoi = icmp eq i64 %i.aoh, 0
  %i.aoj = load ptr, ptr %i.anr, align 8, !tbaa !146, !noalias !513 ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 16 ; 2 uses
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !195, !noalias !513
  call void @stream_rseek(ptr noundef %i.aol, i64 noundef 0), !noalias !513
  br i1 %i.aoi, label %bb.av, label %_ZNK3zfp5codec4zfp3IfE20decode_block_stridedEmjPflll.exit.i.i151

_ZNK3zfp5codec4zfp3IfE20decode_block_stridedEmjPflll.exit.i.i151: ; preds = %bb.au
  %i.aom = sub nuw nsw i64 4, %i.anx
  %i.aon = sub nuw nsw i64 4, %i.aoe
  %i.aoo = sub nuw nsw i64 4, %i.aog
  %i.aop = call noundef i64 @zfp_decode_partial_block_strided_float_3(ptr noundef nonnull %i.aoj, ptr noundef %i.alx, i64 noundef %i.aom, i64 noundef %i.aon, i64 noundef %i.aoo, i64 noundef 1, i64 noundef 4, i64 noundef 16), !noalias !513 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf.exit152

bb.av:                                            ; preds = %bb.au
  %i.aoq = call noundef i64 @zfp_decode_block_float_3(ptr noundef nonnull %i.aoj, ptr noundef %i.alx), !noalias !513 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf.exit152

_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf.exit152: ; preds = %_ZNK3zfp5codec4zfp3IfE20decode_block_stridedEmjPflll.exit.i.i151, %bb.av
  %i.aor = load ptr, ptr %i.aok, align 8, !tbaa !195, !noalias !513
  %i.aos = call i64 @stream_align(ptr noundef %i.aor), !noalias !513 ; 0 uses
  br label %_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE3setEf.exit

_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE3setEf.exit: ; preds = %_ZN3zfp8internal4dim39referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEaSERKSA_.exit, %_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf.exit152
  store float %i.alj, ptr %i.alx, align 4, !tbaa !99, !noalias !513
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.aot = add i32 %.0231, 1                      ; 2 uses
  %i.aou = zext i32 %i.aot to i64                 ; 2 uses
  %i.aov = load i64, ptr %i.vi, align 8, !tbaa !126 ; 2 uses
  %i.aow = add i64 %i.aov, -1
  %i.aox = icmp ugt i64 %i.aow, %i.aou
  br i1 %i.aox, label %.lr.ph232, label %._crit_edge233.loopexit
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZSt3maxIN3zfp8internal4dim39referenceINS0_6array3IfNS0_5codec4zfp3IfEENS0_5index8implicitEEEEEERKT_SE_SE_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !203    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !204  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !205  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !206  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160, !nonnull !141, !align !142 ; 4 uses
  %i.k = lshr i64 %i.c, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.m = load i64, ptr %i.l, align 8, !tbaa !155
  %i.n = lshr i64 %i.e, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !154
  %i.q = lshr i64 %i.g, 2
  %i.r = mul i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.n
  %i.t = mul i64 %i.s, %i.m
  %i.u = add i64 %i.t, %i.k                       ; 3 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 1                          ; 3 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !156
  %i.y = and i32 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !162 ; 2 uses
  %i.ae = lshr i32 %i.ad, 1                       ; 2 uses
  %i.af = icmp eq i32 %i.ae, %i.w
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr %i.ah, i64 %i.ab ; 3 uses
  br i1 %i.af, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = shl i32 %i.w, 1
  store i32 %i.aj, ptr %i.ac, align 4, !tbaa !39
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i

_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.ak = add nsw i32 %i.ae, -1
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.u, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNK3zfp8internal4dim315const_referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEcvfEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i
  %i.am = trunc i32 %i.ad to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = tail call noundef i64 @_ZN3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6encodeEmPKf(ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef %i.al, ptr noundef %i.ai) ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !160
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = phi ptr [ %.pre.i.i.i.i.i, %bb.d ], [ %i.j, %bb.c ]
  %i.ap = tail call noundef i64 @_ZNK3zfp8internal11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEE6decodeEmPf(ptr noundef nonnull align 8 dereferenceable(104) %i.ao, i64 noundef %i.u, ptr noundef %i.ai) ; 0 uses
  br label %_ZNK3zfp8internal4dim315const_referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEcvfEv.exit

_ZNK3zfp8internal4dim315const_referenceINS_6array3IfNS_5codec4zfp3IfEENS_5index8implicitEEEEcvfEv.exit: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IfNS0_11BlockStore3IfNS_5codec4zfp3IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i, %bb.e
  %i.aq = and i64 %i.c, 3
  %i.ar = and i64 %i.e, 3
  %i.as = shl i64 %i.g, 2
  %i.at = and i64 %i.as, 12
  %i.au = or disjoint i64 %i.at, %i.ar
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.au, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aq
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !99
  %i.ay = load ptr, ptr %1, align 8, !tbaa !203   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !204 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !205 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !206 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 176 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !160, !nonnull !141, !align !142 ; 4 uses
  %i.bi = lshr i64 %i.ba, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !155
  %i.bl = lshr i64 %i.bc, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
end_hunk_3
begin_hunk_4_@_Z13update_array4IfEvRN3zfp6array4IT_NS0_5codec4zfp4IS2_EENS0_5index8implicitEEE:bb.a

_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i222: ; preds = %bb.at
  %i.awr = sub nuw nsw <2 x i64> splat (i64 4), %i.avy ; 2 uses
  %i.aws = sub nuw nsw <2 x i64> splat (i64 4), %i.awi ; 2 uses
  %i.awt = extractelement <2 x i64> %i.awr, i64 0
  %i.awu = extractelement <2 x i64> %i.awr, i64 1
  %i.awv = extractelement <2 x i64> %i.aws, i64 0
  %i.aww = extractelement <2 x i64> %i.aws, i64 1
  %i.awx = tail call noundef i64 @zfp_encode_partial_block_strided_float_4(ptr noundef nonnull %i.awo, ptr noundef %i.auz, i64 noundef %i.awt, i64 noundef %i.awu, i64 noundef %i.awv, i64 noundef %i.aww, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !546 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit223

bb.au:                                            ; preds = %bb.at
  %i.awy = tail call noundef i64 @zfp_encode_block_float_4(ptr noundef nonnull %i.awo, ptr noundef %i.auz), !noalias !546 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit223

_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit223: ; preds = %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i222, %bb.au
  %i.awz = load ptr, ptr %i.awp, align 8, !tbaa !195, !noalias !546
  %i.axa = tail call i64 @stream_flush(ptr noundef %i.awz), !noalias !546 ; 0 uses
  %.pre.i.i.i176 = load ptr, ptr %i.zv, align 8, !tbaa !223, !noalias !546 ; 4 uses
  %.phi.trans.insert512 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i176, i64 88
  %.phi.trans.insert514 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i176, i64 96
  %.pre513 = load i64, ptr %.phi.trans.insert512, align 8, !tbaa !219, !noalias !546
  %.pre515 = load i64, ptr %.phi.trans.insert514, align 8, !tbaa !218, !noalias !546
  %.phi.trans.insert516 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i176, i64 104
  %.pre517 = load i64, ptr %.phi.trans.insert516, align 8, !tbaa !217, !noalias !546
  br label %bb.av

bb.av:                                            ; preds = %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit223, %bb.as
  %i.axb = phi i64 [ %.pre517, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit223 ], [ %i.auh, %bb.as ] ; 2 uses
  %i.axc = phi i64 [ %.pre515, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit223 ], [ %i.auf, %bb.as ] ; 2 uses
  %i.axd = phi i64 [ %.pre513, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit223 ], [ %i.aue, %bb.as ] ; 2 uses
  %i.axe = phi ptr [ %.pre.i.i.i176, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit223 ], [ %i.aub, %bb.as ] ; 4 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 48
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axe, i64 40
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !178, !noalias !546
  %i.axi = mul i64 %i.axh, %i.aun
  %i.axj = udiv i64 %i.aun, %i.axd                ; 2 uses
  %i.axk = udiv i64 %i.axj, %i.axc                ; 2 uses
  %i.axl = urem i64 %i.axk, %i.axb
  %i.axm = udiv i64 %i.axk, %i.axb
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axe, i64 56
  %i.axo = urem i64 %i.aun, %i.axd
  %i.axp = urem i64 %i.axj, %i.axc
  %i.axq = insertelement <2 x i64> poison, i64 %i.axo, i64 0
  %i.axr = insertelement <2 x i64> %i.axq, i64 %i.axp, i64 1
  %i.axs = shl <2 x i64> %i.axr, splat (i64 2)
  %i.axt = load <2 x i64>, ptr %i.axn, align 8, !tbaa !40, !noalias !546 ; 2 uses
  %i.axu = xor <2 x i64> %i.axt, %i.axs
  %i.axv = add <2 x i64> %i.axu, splat (i64 -4)
  %i.axw = lshr <2 x i64> %i.axv, splat (i64 62)
  %i.axx = sub <2 x i64> zeroinitializer, %i.axt
  %i.axy = and <2 x i64> %i.axw, %i.axx           ; 3 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axe, i64 72
  %i.aya = insertelement <2 x i64> poison, i64 %i.axl, i64 0
  %i.ayb = insertelement <2 x i64> %i.aya, i64 %i.axm, i64 1
  %i.ayc = shl <2 x i64> %i.ayb, splat (i64 2)
  %i.ayd = load <2 x i64>, ptr %i.axz, align 8, !tbaa !40, !noalias !546 ; 2 uses
  %i.aye = xor <2 x i64> %i.ayd, %i.ayc
  %i.ayf = add <2 x i64> %i.aye, splat (i64 -4)
  %i.ayg = lshr <2 x i64> %i.ayf, splat (i64 62)
  %i.ayh = sub <2 x i64> zeroinitializer, %i.ayd
  %i.ayi = and <2 x i64> %i.ayg, %i.ayh           ; 3 uses
  %i.ayj = or <2 x i64> %i.axy, %i.ayi
  %i.ayk = shufflevector <2 x i64> %i.ayj, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ayl = or <2 x i64> %i.ayk, %i.axy
  %foldExtExtBinop834 = or <2 x i64> %i.ayl, %i.ayi
  %i.aym = extractelement <2 x i64> %foldExtExtBinop834, i64 0
  %i.ayn = icmp eq i64 %i.aym, 0
  %i.ayo = load ptr, ptr %i.axf, align 8, !tbaa !208, !noalias !546 ; 3 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 16 ; 2 uses
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !195, !noalias !546
  tail call void @stream_rseek(ptr noundef %i.ayq, i64 noundef %i.axi), !noalias !546
  br i1 %i.ayn, label %bb.aw, label %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i220

_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i220: ; preds = %bb.av
  %i.ayr = sub nuw nsw <2 x i64> splat (i64 4), %i.axy ; 2 uses
  %i.ays = sub nuw nsw <2 x i64> splat (i64 4), %i.ayi ; 2 uses
  %i.ayt = extractelement <2 x i64> %i.ayr, i64 0
  %i.ayu = extractelement <2 x i64> %i.ayr, i64 1
  %i.ayv = extractelement <2 x i64> %i.ays, i64 0
  %i.ayw = extractelement <2 x i64> %i.ays, i64 1
  %i.ayx = tail call noundef i64 @zfp_decode_partial_block_strided_float_4(ptr noundef nonnull %i.ayo, ptr noundef %i.auz, i64 noundef %i.ayt, i64 noundef %i.ayu, i64 noundef %i.ayv, i64 noundef %i.ayw, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !546 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit221

bb.aw:                                            ; preds = %bb.av
  %i.ayy = tail call noundef i64 @zfp_decode_block_float_4(ptr noundef nonnull %i.ayo, ptr noundef %i.auz), !noalias !546 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit221

_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit221: ; preds = %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i220, %bb.aw
  %i.ayz = load ptr, ptr %i.ayp, align 8, !tbaa !195, !noalias !546
  %i.aza = tail call i64 @stream_align(ptr noundef %i.ayz), !noalias !546 ; 0 uses
  br label %_ZN3zfp6array4IfNS_5codec4zfp4IfEENS_5index8implicitEE3subEmmmmf.exit177

_ZN3zfp6array4IfNS_5codec4zfp4IfEENS_5index8implicitEE3subEmmmmf.exit177: ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit171, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit221
  %i.azb = getelementptr inbounds nuw i8, ptr %i.auz, i64 %.idx.i.i.i175
  %i.azc = getelementptr inbounds nuw [4 x i8], ptr %i.azb, i64 %i.aog
  %i.azd = getelementptr inbounds nuw [4 x i8], ptr %i.azc, i64 %i.atw ; 2 uses
  %i.aze = load float, ptr %i.azd, align 4, !tbaa !99, !noalias !546
  %i.azf = fsub float %i.aze, %i.aua
  store float %i.azf, ptr %i.azd, align 4, !tbaa !99, !noalias !546
  %i.azg = add i32 %.0109406, 1                   ; 2 uses
  %i.azh = zext i32 %i.azg to i64                 ; 2 uses
  %i.azi = load i64, ptr %i.zt, align 8, !tbaa !126 ; 2 uses
  %i.azj = icmp ugt i64 %i.azi, %i.azh
  br i1 %i.azj, label %bb.al, label %._crit_edge408.loopexit

.preheader367:                                    ; preds = %.preheader367.lr.ph, %._crit_edge420
  %i.azk = phi i64 [ %i.amy, %.preheader367.lr.ph ], [ %i.azy, %._crit_edge420 ]
  %i.azl = phi i64 [ %.pre521, %.preheader367.lr.ph ], [ %i.azz, %._crit_edge420 ] ; 2 uses
  %i.azm = phi i64 [ %.pre521, %.preheader367.lr.ph ], [ %i.baa, %._crit_edge420 ]
  %i.azn = phi i64 [ 0, %.preheader367.lr.ph ], [ %i.bac, %._crit_edge420 ] ; 3 uses
  %.0108421 = phi i32 [ 0, %.preheader367.lr.ph ], [ %i.bab, %._crit_edge420 ]
  %.not448 = icmp eq i64 %i.azm, 1
  br i1 %.not448, label %._crit_edge420, label %.preheader366.lr.ph

.preheader366.lr.ph:                              ; preds = %.preheader367
  %i.azo = lshr i64 %i.azn, 2
  %i.azp = shl nuw nsw i64 %i.azn, 2
  %i.azq = and i64 %i.azp, 12
  %.pre522 = load i64, ptr %i.ana, align 8, !tbaa !138 ; 2 uses
  br label %.preheader366

._crit_edge422:                                   ; preds = %._crit_edge420, %.preheader372, %.preheader368
  ret void

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge418
  %i.azr = phi i64 [ %i.azl, %.preheader366.lr.ph ], [ %i.bal, %._crit_edge418 ]
  %i.azs = phi i64 [ %.pre522, %.preheader366.lr.ph ], [ %i.bam, %._crit_edge418 ] ; 2 uses
  %i.azt = phi i64 [ %.pre522, %.preheader366.lr.ph ], [ %i.ban, %._crit_edge418 ]
  %i.azu = phi i64 [ 0, %.preheader366.lr.ph ], [ %i.bap, %._crit_edge418 ] ; 3 uses
  %.0107419 = phi i32 [ 0, %.preheader366.lr.ph ], [ %i.bao, %._crit_edge418 ]
  %.not449 = icmp eq i64 %i.azt, 1
  br i1 %.not449, label %._crit_edge418, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader366
  %i.azv = lshr i64 %i.azu, 2
  %i.azw = and i64 %i.azu, 3
  %i.azx = or disjoint i64 %i.azw, %i.azq
  %.idx.i.i.i.i180 = shl nuw nsw i64 %i.azx, 6
  %.pre523 = load i64, ptr %i.anb, align 8, !tbaa !126
  br label %.preheader

._crit_edge420.loopexit:                          ; preds = %._crit_edge418
  %.pre559 = load i64, ptr %i.a, align 8, !tbaa !165
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %._crit_edge420.loopexit, %.preheader367
  %i.azy = phi i64 [ %.pre559, %._crit_edge420.loopexit ], [ %i.azk, %.preheader367 ] ; 2 uses
  %i.azz = phi i64 [ %i.bal, %._crit_edge420.loopexit ], [ %i.azl, %.preheader367 ]
  %i.baa = phi i64 [ %i.bal, %._crit_edge420.loopexit ], [ 1, %.preheader367 ]
  %i.bab = add i32 %.0108421, 1                   ; 2 uses
  %i.bac = zext i32 %i.bab to i64                 ; 2 uses
  %i.bad = add i64 %i.azy, -1
  %i.bae = icmp ugt i64 %i.bad, %i.bac
  br i1 %i.bae, label %.preheader367, label %._crit_edge422

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge416
  %i.baf = phi i64 [ %i.azs, %.preheader.lr.ph ], [ %i.bas, %._crit_edge416 ]
  %i.bag = phi i64 [ %.pre523, %.preheader.lr.ph ], [ %i.bat, %._crit_edge416 ]
  %i.bah = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bav, %._crit_edge416 ] ; 3 uses
  %.0106417 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bau, %._crit_edge416 ]
  %.not450 = icmp eq i64 %i.bag, 1
  br i1 %.not450, label %._crit_edge416, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader
  %i.bai = lshr i64 %i.bah, 2
  %i.baj = shl nuw nsw i64 %i.bah, 2
  %i.bak = and i64 %i.baj, 12
  br label %bb.ax

._crit_edge418.loopexit:                          ; preds = %._crit_edge416
  %.pre558 = load i64, ptr %i.amz, align 8, !tbaa !158
  br label %._crit_edge418

._crit_edge418:                                   ; preds = %._crit_edge418.loopexit, %.preheader366
  %i.bal = phi i64 [ %.pre558, %._crit_edge418.loopexit ], [ %i.azr, %.preheader366 ] ; 4 uses
  %i.bam = phi i64 [ %i.bas, %._crit_edge418.loopexit ], [ %i.azs, %.preheader366 ]
  %i.ban = phi i64 [ %i.bas, %._crit_edge418.loopexit ], [ 1, %.preheader366 ]
  %i.bao = add i32 %.0107419, 1                   ; 2 uses
  %i.bap = zext i32 %i.bao to i64                 ; 2 uses
  %i.baq = add i64 %i.bal, -1
  %i.bar = icmp ugt i64 %i.baq, %i.bap
  br i1 %i.bar, label %.preheader366, label %._crit_edge420.loopexit

._crit_edge416.loopexit:                          ; preds = %_ZN3zfp8internal4dim49referenceINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3setEf.exit
  %.pre557 = load i64, ptr %i.ana, align 8, !tbaa !138
  br label %._crit_edge416

._crit_edge416:                                   ; preds = %._crit_edge416.loopexit, %.preheader
  %i.bas = phi i64 [ %.pre557, %._crit_edge416.loopexit ], [ %i.baf, %.preheader ] ; 4 uses
  %i.bat = phi i64 [ %i.bsk, %._crit_edge416.loopexit ], [ 1, %.preheader ]
  %i.bau = add i32 %.0106417, 1                   ; 2 uses
  %i.bav = zext i32 %i.bau to i64                 ; 2 uses
  %i.baw = add i64 %i.bas, -1
  %i.bax = icmp ugt i64 %i.baw, %i.bav
  br i1 %i.bax, label %.preheader, label %._crit_edge418.loopexit

bb.ax:                                            ; preds = %.lr.ph415, %_ZN3zfp8internal4dim49referenceINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3setEf.exit
  %i.bay = phi i64 [ 0, %.lr.ph415 ], [ %i.bsj, %_ZN3zfp8internal4dim49referenceINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3setEf.exit ] ; 3 uses
  %.0414 = phi i32 [ 0, %.lr.ph415 ], [ %i.bsi, %_ZN3zfp8internal4dim49referenceINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3setEf.exit ]
  %i.baz = load ptr, ptr %i.and, align 8, !tbaa !223, !nonnull !141, !align !142 ; 10 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 88
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baz, i64 96
  %i.bbc = load i64, ptr %i.bba, align 8, !tbaa !219 ; 4 uses
  %i.bbd = load i64, ptr %i.bbb, align 8, !tbaa !218 ; 4 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baz, i64 104
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !217 ; 4 uses
  %i.bbg = load i32, ptr %i.anc, align 8, !tbaa !163
  %i.bbh = and i32 %i.bbg, 1
  %i.bbi = load ptr, ptr %i.ane, align 8, !tbaa !71 ; 3 uses
  %i.bbj = zext nneg i32 %i.bbh to i64            ; 2 uses
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %i.bbj ; 2 uses
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !221 ; 2 uses
  %i.bbm = lshr i32 %i.bbl, 1                     ; 2 uses
  %i.bbn = icmp eq i32 %i.bbm, 1
  %i.bbo = load ptr, ptr %i.anf, align 8, !tbaa !73 ; 3 uses
  %i.bbp = getelementptr inbounds nuw [1024 x i8], ptr %i.bbo, i64 %i.bbj ; 5 uses
  br i1 %i.bbn, label %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit187, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183: ; preds = %bb.ax
  store i32 2, ptr %i.bbk, align 4, !tbaa !39
  %1 = add nsw i32 %i.bbm, -1                     ; 2 uses
  %2 = zext i32 %1 to i64                         ; 3 uses
  %.not.i.i.i.i184 = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i184, label %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit187, label %3

3:                                                ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183
  %4 = trunc i32 %i.bbl to i1
  br i1 %4, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %3
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.baz, i64 48
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.baz, i64 40
  %i.bbs = load i64, ptr %i.bbr, align 8, !tbaa !178
  %i.bbt = mul i64 %i.bbs, %2
  %i.bbu = udiv i64 %2, %i.bbc                    ; 2 uses
  %i.bbv = udiv i64 %i.bbu, %i.bbd                ; 2 uses
  %i.bbw = urem i64 %i.bbv, %i.bbf
  %i.bbx = udiv i64 %i.bbv, %i.bbf
  %i.bby = getelementptr inbounds nuw i8, ptr %i.baz, i64 56
  %i.bbz = urem i64 %2, %i.bbc
  %i.bca = urem i64 %i.bbu, %i.bbd
  %i.bcb = insertelement <2 x i64> poison, i64 %i.bbz, i64 0
  %i.bcc = insertelement <2 x i64> %i.bcb, i64 %i.bca, i64 1
  %i.bcd = shl nuw nsw <2 x i64> %i.bcc, splat (i64 2)
  %i.bce = load <2 x i64>, ptr %i.bby, align 8, !tbaa !40 ; 2 uses
  %i.bcf = xor <2 x i64> %i.bce, %i.bcd
  %i.bcg = add <2 x i64> %i.bcf, splat (i64 -4)
  %i.bch = lshr <2 x i64> %i.bcg, splat (i64 62)
  %i.bci = sub <2 x i64> zeroinitializer, %i.bce
  %i.bcj = and <2 x i64> %i.bch, %i.bci           ; 3 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.baz, i64 72
  %i.bcl = insertelement <2 x i64> poison, i64 %i.bbw, i64 0
  %i.bcm = insertelement <2 x i64> %i.bcl, i64 %i.bbx, i64 1
  %i.bcn = shl nuw nsw <2 x i64> %i.bcm, splat (i64 2)
  %i.bco = load <2 x i64>, ptr %i.bck, align 8, !tbaa !40 ; 2 uses
  %i.bcp = xor <2 x i64> %i.bco, %i.bcn
  %i.bcq = add <2 x i64> %i.bcp, splat (i64 -4)
  %i.bcr = lshr <2 x i64> %i.bcq, splat (i64 62)
  %i.bcs = sub <2 x i64> zeroinitializer, %i.bco
  %i.bct = and <2 x i64> %i.bcr, %i.bcs           ; 3 uses
  %i.bcu = or <2 x i64> %i.bcj, %i.bct
  %i.bcv = shufflevector <2 x i64> %i.bcu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bcw = or <2 x i64> %i.bcv, %i.bcj
  %foldExtExtBinop842 = or <2 x i64> %i.bcw, %i.bct
  %i.bcx = extractelement <2 x i64> %foldExtExtBinop842, i64 0
  %i.bcy = icmp eq i64 %i.bcx, 0
  %i.bcz = load ptr, ptr %i.bbq, align 8, !tbaa !208 ; 3 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 16 ; 2 uses
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.bdb, i64 noundef %i.bbt)
  br i1 %i.bcy, label %bb.az, label %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i230

_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i230: ; preds = %bb.ay
  %i.bdc = sub nuw nsw <2 x i64> splat (i64 4), %i.bcj ; 2 uses
  %i.bdd = sub nuw nsw <2 x i64> splat (i64 4), %i.bct ; 2 uses
  %i.bde = extractelement <2 x i64> %i.bdc, i64 0
  %i.bdf = extractelement <2 x i64> %i.bdc, i64 1
  %i.bdg = extractelement <2 x i64> %i.bdd, i64 0
  %i.bdh = extractelement <2 x i64> %i.bdd, i64 1
  %i.bdi = tail call noundef i64 @zfp_encode_partial_block_strided_float_4(ptr noundef nonnull %i.bcz, ptr noundef %i.bbp, i64 noundef %i.bde, i64 noundef %i.bdf, i64 noundef %i.bdg, i64 noundef %i.bdh, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit231

bb.az:                                            ; preds = %bb.ay
  %i.bdj = tail call noundef i64 @zfp_encode_block_float_4(ptr noundef nonnull %i.bcz, ptr noundef %i.bbp) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit231

_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit231: ; preds = %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i230, %bb.az
  %i.bdk = load ptr, ptr %i.bda, align 8, !tbaa !195
  %i.bdl = tail call i64 @stream_flush(ptr noundef %i.bdk) ; 0 uses
  %.pre.i.i.i.i186 = load ptr, ptr %i.and, align 8, !tbaa !223
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit231, %3
  %i.bdm = phi ptr [ %.pre.i.i.i.i186, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit231 ], [ %i.baz, %3 ] ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 48
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdm, i64 56
  %i.bdp = load <4 x i64>, ptr %i.bdo, align 8, !tbaa !40 ; 2 uses
  %i.bdq = add <4 x i64> %i.bdp, splat (i64 -4)
  %i.bdr = lshr <4 x i64> %i.bdq, splat (i64 62)
  %i.bds = sub <4 x i64> zeroinitializer, %i.bdp
  %i.bdt = and <4 x i64> %i.bdr, %i.bds           ; 3 uses
  %i.bdu = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.bdt)
  %i.bdv = icmp eq i64 %i.bdu, 0
  %i.bdw = load ptr, ptr %i.bdn, align 8, !tbaa !208 ; 3 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 16 ; 2 uses
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.bdy, i64 noundef 0)
  br i1 %i.bdv, label %bb.bb, label %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i228

_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i228: ; preds = %bb.ba
  %i.bdz = shufflevector <4 x i64> %i.bdt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bea = sub nuw nsw <2 x i64> splat (i64 4), %i.bdz ; 2 uses
  %i.beb = shufflevector <4 x i64> %i.bdt, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.bec = sub nuw nsw <2 x i64> splat (i64 4), %i.beb ; 2 uses
  %i.bed = extractelement <2 x i64> %i.bea, i64 0
  %i.bee = extractelement <2 x i64> %i.bea, i64 1
  %i.bef = extractelement <2 x i64> %i.bec, i64 0
  %i.beg = extractelement <2 x i64> %i.bec, i64 1
  %i.beh = tail call noundef i64 @zfp_decode_partial_block_strided_float_4(ptr noundef nonnull %i.bdw, ptr noundef %i.bbp, i64 noundef %i.bed, i64 noundef %i.bee, i64 noundef %i.bef, i64 noundef %i.beg, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229

bb.bb:                                            ; preds = %bb.ba
  %i.bei = tail call noundef i64 @zfp_decode_block_float_4(ptr noundef nonnull %i.bdw, ptr noundef %i.bbp) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229

_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229: ; preds = %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i228, %bb.bb
  %i.bej = load ptr, ptr %i.bdx, align 8, !tbaa !195
  %i.bek = tail call i64 @stream_align(ptr noundef %i.bej) ; 0 uses
  %.pre524 = load ptr, ptr %i.and, align 8, !tbaa !223 ; 4 uses
  %.phi.trans.insert525 = getelementptr inbounds nuw i8, ptr %.pre524, i64 88
  %.phi.trans.insert527 = getelementptr inbounds nuw i8, ptr %.pre524, i64 96
  %.pre526 = load i64, ptr %.phi.trans.insert525, align 8, !tbaa !219
  %.pre528 = load i64, ptr %.phi.trans.insert527, align 8, !tbaa !218
  %.phi.trans.insert529 = getelementptr inbounds nuw i8, ptr %.pre524, i64 104
  %.pre530 = load i64, ptr %.phi.trans.insert529, align 8, !tbaa !217
  %.pre531 = load ptr, ptr %i.ane, align 8, !tbaa !71
  %.pre532 = load ptr, ptr %i.anf, align 8, !tbaa !73
  br label %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit187

_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit187: ; preds = %bb.ax, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229
  %5 = phi ptr [ %i.bbo, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre532, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229 ], [ %i.bbo, %bb.ax ] ; 2 uses
  %6 = phi ptr [ %i.bbi, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre531, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229 ], [ %i.bbi, %bb.ax ] ; 2 uses
  %7 = phi i64 [ %i.bbf, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre530, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229 ], [ %i.bbf, %bb.ax ] ; 4 uses
  %8 = phi i64 [ %i.bbd, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre528, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229 ], [ %i.bbd, %bb.ax ] ; 4 uses
  %9 = phi i64 [ %i.bbc, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre526, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229 ], [ %i.bbc, %bb.ax ] ; 4 uses
  %10 = phi ptr [ %i.baz, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre524, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit229 ], [ %i.baz, %bb.ax ] ; 6 uses
  %i.bel = load float, ptr %i.bbp, align 4, !tbaa !99
  %i.bem = lshr i64 %i.bay, 2
  %i.ben = mul i64 %7, %i.azo
  %i.beo = add i64 %i.ben, %i.azv
  %i.bep = mul i64 %i.beo, %8
  %i.beq = add i64 %i.bep, %i.bai
  %i.ber = mul i64 %i.beq, %9
  %i.bes = add i64 %i.ber, %i.bem                 ; 5 uses
  %i.bet = trunc i64 %i.bes to i32
  %i.beu = add i32 %i.bet, 1                      ; 3 uses
  %i.bev = load i32, ptr %i.anc, align 8, !tbaa !163
  %i.bew = and i32 %i.beu, %i.bev
  %i.bex = zext i32 %i.bew to i64                 ; 2 uses
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bex ; 2 uses
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !221 ; 2 uses
  %i.bfa = lshr i32 %i.bez, 1                     ; 2 uses
  %i.bfb = icmp eq i32 %i.bfa, %i.beu
  %i.bfc = getelementptr inbounds nuw [1024 x i8], ptr %5, i64 %i.bex ; 5 uses
  br i1 %i.bfb, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178, label %bb.bc

bb.bc:                                            ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit187
  %i.bfd = shl i32 %i.beu, 1
  store i32 %i.bfd, ptr %i.bey, align 4, !tbaa !39
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178: ; preds = %bb.bc, %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit187
  %i.bfe = add nsw i32 %i.bfa, -1
  %i.bff = zext i32 %i.bfe to i64                 ; 4 uses
  %.not.i.i.i.i179 = icmp eq i64 %i.bes, %i.bff
  br i1 %.not.i.i.i.i179, label %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit182, label %bb.bd

bb.bd:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178
  %i.bfg = trunc i32 %i.bez to i1
  br i1 %i.bfg, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.bfh = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bfi = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bfj = load i64, ptr %i.bfi, align 8, !tbaa !178
  %i.bfk = mul i64 %i.bfj, %i.bff
  %i.bfl = udiv i64 %i.bff, %9                    ; 2 uses
  %i.bfm = udiv i64 %i.bfl, %8                    ; 2 uses
  %i.bfn = urem i64 %i.bfm, %7
  %i.bfo = udiv i64 %i.bfm, %7
  %i.bfp = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bfq = urem i64 %i.bff, %9
  %i.bfr = urem i64 %i.bfl, %8
  %i.bfs = insertelement <2 x i64> poison, i64 %i.bfq, i64 0
  %i.bft = insertelement <2 x i64> %i.bfs, i64 %i.bfr, i64 1
  %i.bfu = shl nuw nsw <2 x i64> %i.bft, splat (i64 2)
  %i.bfv = load <2 x i64>, ptr %i.bfp, align 8, !tbaa !40 ; 2 uses
  %i.bfw = xor <2 x i64> %i.bfv, %i.bfu
  %i.bfx = add <2 x i64> %i.bfw, splat (i64 -4)
  %i.bfy = lshr <2 x i64> %i.bfx, splat (i64 62)
  %i.bfz = sub <2 x i64> zeroinitializer, %i.bfv
  %i.bga = and <2 x i64> %i.bfy, %i.bfz           ; 3 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.bgc = insertelement <2 x i64> poison, i64 %i.bfn, i64 0
  %i.bgd = insertelement <2 x i64> %i.bgc, i64 %i.bfo, i64 1
  %i.bge = shl nuw nsw <2 x i64> %i.bgd, splat (i64 2)
  %i.bgf = load <2 x i64>, ptr %i.bgb, align 8, !tbaa !40 ; 2 uses
  %i.bgg = xor <2 x i64> %i.bgf, %i.bge
  %i.bgh = add <2 x i64> %i.bgg, splat (i64 -4)
  %i.bgi = lshr <2 x i64> %i.bgh, splat (i64 62)
  %i.bgj = sub <2 x i64> zeroinitializer, %i.bgf
  %i.bgk = and <2 x i64> %i.bgi, %i.bgj           ; 3 uses
  %i.bgl = or <2 x i64> %i.bga, %i.bgk
  %i.bgm = shufflevector <2 x i64> %i.bgl, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bgn = or <2 x i64> %i.bgm, %i.bga
  %foldExtExtBinop850 = or <2 x i64> %i.bgn, %i.bgk
  %i.bgo = extractelement <2 x i64> %foldExtExtBinop850, i64 0
  %i.bgp = icmp eq i64 %i.bgo, 0
  %i.bgq = load ptr, ptr %i.bfh, align 8, !tbaa !208 ; 3 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 16 ; 2 uses
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.bgs, i64 noundef %i.bfk)
  br i1 %i.bgp, label %bb.bf, label %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i226

_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i226: ; preds = %bb.be
  %i.bgt = sub nuw nsw <2 x i64> splat (i64 4), %i.bga ; 2 uses
  %i.bgu = sub nuw nsw <2 x i64> splat (i64 4), %i.bgk ; 2 uses
  %i.bgv = extractelement <2 x i64> %i.bgt, i64 0
  %i.bgw = extractelement <2 x i64> %i.bgt, i64 1
  %i.bgx = extractelement <2 x i64> %i.bgu, i64 0
  %i.bgy = extractelement <2 x i64> %i.bgu, i64 1
  %i.bgz = tail call noundef i64 @zfp_encode_partial_block_strided_float_4(ptr noundef nonnull %i.bgq, ptr noundef %i.bfc, i64 noundef %i.bgv, i64 noundef %i.bgw, i64 noundef %i.bgx, i64 noundef %i.bgy, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit227

bb.bf:                                            ; preds = %bb.be
  %i.bha = tail call noundef i64 @zfp_encode_block_float_4(ptr noundef nonnull %i.bgq, ptr noundef %i.bfc) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit227

_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit227: ; preds = %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i226, %bb.bf
  %i.bhb = load ptr, ptr %i.bgr, align 8, !tbaa !195
  %i.bhc = tail call i64 @stream_flush(ptr noundef %i.bhb) ; 0 uses
  %.pre.i.i.i.i181 = load ptr, ptr %i.and, align 8, !tbaa !223 ; 4 uses
  %.phi.trans.insert533 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i181, i64 88
  %.phi.trans.insert535 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i181, i64 96
  %.pre534 = load i64, ptr %.phi.trans.insert533, align 8, !tbaa !219
  %.pre536 = load i64, ptr %.phi.trans.insert535, align 8, !tbaa !218
  %.phi.trans.insert537 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i181, i64 104
  %.pre538 = load i64, ptr %.phi.trans.insert537, align 8, !tbaa !217
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit227, %bb.bd
  %i.bhd = phi i64 [ %.pre538, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit227 ], [ %7, %bb.bd ] ; 2 uses
  %i.bhe = phi i64 [ %.pre536, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit227 ], [ %8, %bb.bd ] ; 2 uses
  %i.bhf = phi i64 [ %.pre534, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit227 ], [ %9, %bb.bd ] ; 2 uses
  %i.bhg = phi ptr [ %.pre.i.i.i.i181, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit227 ], [ %10, %bb.bd ] ; 4 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 48
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 40
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !178
  %i.bhk = mul i64 %i.bhj, %i.bes
  %i.bhl = udiv i64 %i.bes, %i.bhf                ; 2 uses
  %i.bhm = udiv i64 %i.bhl, %i.bhe                ; 2 uses
  %i.bhn = urem i64 %i.bhm, %i.bhd
  %i.bho = udiv i64 %i.bhm, %i.bhd
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhg, i64 56
  %i.bhq = urem i64 %i.bes, %i.bhf
  %i.bhr = urem i64 %i.bhl, %i.bhe
  %i.bhs = insertelement <2 x i64> poison, i64 %i.bhq, i64 0
  %i.bht = insertelement <2 x i64> %i.bhs, i64 %i.bhr, i64 1
  %i.bhu = shl <2 x i64> %i.bht, splat (i64 2)
  %i.bhv = load <2 x i64>, ptr %i.bhp, align 8, !tbaa !40 ; 2 uses
  %i.bhw = xor <2 x i64> %i.bhv, %i.bhu
  %i.bhx = add <2 x i64> %i.bhw, splat (i64 -4)
  %i.bhy = lshr <2 x i64> %i.bhx, splat (i64 62)
  %i.bhz = sub <2 x i64> zeroinitializer, %i.bhv
  %i.bia = and <2 x i64> %i.bhy, %i.bhz           ; 3 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhg, i64 72
  %i.bic = insertelement <2 x i64> poison, i64 %i.bhn, i64 0
  %i.bid = insertelement <2 x i64> %i.bic, i64 %i.bho, i64 1
  %i.bie = shl <2 x i64> %i.bid, splat (i64 2)
  %i.bif = load <2 x i64>, ptr %i.bib, align 8, !tbaa !40 ; 2 uses
  %i.big = xor <2 x i64> %i.bif, %i.bie
  %i.bih = add <2 x i64> %i.big, splat (i64 -4)
  %i.bii = lshr <2 x i64> %i.bih, splat (i64 62)
  %i.bij = sub <2 x i64> zeroinitializer, %i.bif
  %i.bik = and <2 x i64> %i.bii, %i.bij           ; 3 uses
  %i.bil = or <2 x i64> %i.bia, %i.bik
  %i.bim = shufflevector <2 x i64> %i.bil, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bin = or <2 x i64> %i.bim, %i.bia
  %foldExtExtBinop858 = or <2 x i64> %i.bin, %i.bik
  %i.bio = extractelement <2 x i64> %foldExtExtBinop858, i64 0
  %i.bip = icmp eq i64 %i.bio, 0
  %i.biq = load ptr, ptr %i.bhh, align 8, !tbaa !208 ; 3 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 16 ; 2 uses
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.bis, i64 noundef %i.bhk)
  br i1 %i.bip, label %bb.bh, label %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i224

_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i224: ; preds = %bb.bg
  %i.bit = sub nuw nsw <2 x i64> splat (i64 4), %i.bia ; 2 uses
  %i.biu = sub nuw nsw <2 x i64> splat (i64 4), %i.bik ; 2 uses
  %i.biv = extractelement <2 x i64> %i.bit, i64 0
  %i.biw = extractelement <2 x i64> %i.bit, i64 1
  %i.bix = extractelement <2 x i64> %i.biu, i64 0
  %i.biy = extractelement <2 x i64> %i.biu, i64 1
  %i.biz = tail call noundef i64 @zfp_decode_partial_block_strided_float_4(ptr noundef nonnull %i.biq, ptr noundef %i.bfc, i64 noundef %i.biv, i64 noundef %i.biw, i64 noundef %i.bix, i64 noundef %i.biy, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit225

bb.bh:                                            ; preds = %bb.bg
  %i.bja = tail call noundef i64 @zfp_decode_block_float_4(ptr noundef nonnull %i.biq, ptr noundef %i.bfc) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit225

_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit225: ; preds = %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i224, %bb.bh
  %i.bjb = load ptr, ptr %i.bir, align 8, !tbaa !195
  %i.bjc = tail call i64 @stream_align(ptr noundef %i.bjb) ; 0 uses
  %.pre539 = load ptr, ptr %i.and, align 8, !tbaa !223, !noalias !547
  %.pre540 = load ptr, ptr %i.ane, align 8, !tbaa !71, !noalias !547
  %.pre541 = load ptr, ptr %i.anf, align 8, !tbaa !73, !noalias !547
  br label %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit182

_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit182: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit225
  %i.bjd = phi ptr [ %5, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178 ], [ %.pre541, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit225 ] ; 2 uses
  %i.bje = phi ptr [ %6, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178 ], [ %.pre540, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit225 ] ; 2 uses
  %i.bjf = phi ptr [ %10, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178 ], [ %.pre539, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit225 ] ; 9 uses
  %i.bjg = and i64 %i.bay, 3
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bfc, i64 %.idx.i.i.i.i180
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.bjh, i64 %i.bak
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bji, i64 %i.bjg
  %i.bjk = load float, ptr %i.bjj, align 4, !tbaa !99
  %i.bjl = fcmp olt float %i.bel, %i.bjk          ; 4 uses
  %.sroa.speculated270 = select i1 %i.bjl, i64 %i.bay, i64 0 ; 2 uses
  %.sroa.speculated267 = select i1 %i.bjl, i64 %i.bah, i64 0 ; 2 uses
  %.sroa.speculated264 = select i1 %i.bjl, i64 %i.azu, i64 0 ; 2 uses
  %.sroa.speculated = select i1 %i.bjl, i64 %i.azn, i64 0 ; 2 uses
  %i.bjm = lshr i64 %.sroa.speculated270, 2
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjf, i64 88
  %i.bjo = lshr i64 %.sroa.speculated267, 2
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjf, i64 96
  %i.bjq = load i64, ptr %i.bjn, align 8, !tbaa !219, !noalias !547 ; 5 uses
  %i.bjr = load i64, ptr %i.bjp, align 8, !tbaa !218, !noalias !547 ; 5 uses
  %i.bjs = lshr i64 %.sroa.speculated264, 2
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjf, i64 104
  %i.bju = load i64, ptr %i.bjt, align 8, !tbaa !217, !noalias !547 ; 5 uses
  %i.bjv = lshr i64 %.sroa.speculated, 2
  %i.bjw = mul i64 %i.bju, %i.bjv
  %i.bjx = add i64 %i.bjw, %i.bjs
  %i.bjy = mul i64 %i.bjx, %i.bjr
  %i.bjz = add i64 %i.bjy, %i.bjo
  %i.bka = mul i64 %i.bjz, %i.bjq
  %i.bkb = add i64 %i.bka, %i.bjm                 ; 5 uses
  %i.bkc = trunc i64 %i.bkb to i32
  %i.bkd = add i32 %i.bkc, 1                      ; 3 uses
  %i.bke = load i32, ptr %i.anc, align 8, !tbaa !163, !noalias !547
  %i.bkf = and i32 %i.bkd, %i.bke
  %i.bkg = zext i32 %i.bkf to i64                 ; 2 uses
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.bje, i64 %i.bkg ; 2 uses
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !221, !noalias !547 ; 2 uses
  %i.bkj = lshr i32 %i.bki, 1                     ; 2 uses
  %i.bkk = icmp eq i32 %i.bkj, %i.bkd
  %i.bkl = getelementptr inbounds nuw [1024 x i8], ptr %i.bjd, i64 %i.bkg ; 5 uses
  br i1 %i.bkk, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191, label %bb.bi

bb.bi:                                            ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit182
  %i.bkm = shl i32 %i.bkd, 1
  store i32 %i.bkm, ptr %i.bkh, align 4, !tbaa !39, !noalias !547
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191: ; preds = %bb.bi, %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit182
  %i.bkn = add nsw i32 %i.bkj, -1
  %i.bko = zext i32 %i.bkn to i64                 ; 4 uses
  %.not.i.i.i.i192 = icmp eq i64 %i.bkb, %i.bko
  br i1 %.not.i.i.i.i192, label %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit195, label %bb.bj

bb.bj:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191
  %i.bkp = trunc i32 %i.bki to i1
  br i1 %i.bkp, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bjf, i64 48
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bjf, i64 40
  %i.bks = load i64, ptr %i.bkr, align 8, !tbaa !178, !noalias !547
  %i.bkt = mul i64 %i.bks, %i.bko
  %i.bku = udiv i64 %i.bko, %i.bjq                ; 2 uses
  %i.bkv = udiv i64 %i.bku, %i.bjr                ; 2 uses
  %i.bkw = urem i64 %i.bkv, %i.bju
  %i.bkx = udiv i64 %i.bkv, %i.bju
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bjf, i64 56
  %i.bkz = urem i64 %i.bko, %i.bjq
  %i.bla = urem i64 %i.bku, %i.bjr
  %i.blb = insertelement <2 x i64> poison, i64 %i.bkz, i64 0
  %i.blc = insertelement <2 x i64> %i.blb, i64 %i.bla, i64 1
  %i.bld = shl nuw nsw <2 x i64> %i.blc, splat (i64 2)
  %i.ble = load <2 x i64>, ptr %i.bky, align 8, !tbaa !40, !noalias !547 ; 2 uses
  %i.blf = xor <2 x i64> %i.ble, %i.bld
  %i.blg = add <2 x i64> %i.blf, splat (i64 -4)
  %i.blh = lshr <2 x i64> %i.blg, splat (i64 62)
  %i.bli = sub <2 x i64> zeroinitializer, %i.ble
  %i.blj = and <2 x i64> %i.blh, %i.bli           ; 3 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bjf, i64 72
  %i.bll = insertelement <2 x i64> poison, i64 %i.bkw, i64 0
  %i.blm = insertelement <2 x i64> %i.bll, i64 %i.bkx, i64 1
  %i.bln = shl nuw nsw <2 x i64> %i.blm, splat (i64 2)
  %i.blo = load <2 x i64>, ptr %i.blk, align 8, !tbaa !40, !noalias !547 ; 2 uses
  %i.blp = xor <2 x i64> %i.blo, %i.bln
  %i.blq = add <2 x i64> %i.blp, splat (i64 -4)
  %i.blr = lshr <2 x i64> %i.blq, splat (i64 62)
  %i.bls = sub <2 x i64> zeroinitializer, %i.blo
  %i.blt = and <2 x i64> %i.blr, %i.bls           ; 3 uses
  %i.blu = or <2 x i64> %i.blj, %i.blt
  %i.blv = shufflevector <2 x i64> %i.blu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.blw = or <2 x i64> %i.blv, %i.blj
  %foldExtExtBinop866 = or <2 x i64> %i.blw, %i.blt
  %i.blx = extractelement <2 x i64> %foldExtExtBinop866, i64 0
  %i.bly = icmp eq i64 %i.blx, 0
  %i.blz = load ptr, ptr %i.bkq, align 8, !tbaa !208, !noalias !547 ; 3 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 16 ; 2 uses
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !195, !noalias !547
  tail call void @stream_wseek(ptr noundef %i.bmb, i64 noundef %i.bkt), !noalias !547
  br i1 %i.bly, label %bb.bl, label %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i238

_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i238: ; preds = %bb.bk
  %i.bmc = sub nuw nsw <2 x i64> splat (i64 4), %i.blj ; 2 uses
  %i.bmd = sub nuw nsw <2 x i64> splat (i64 4), %i.blt ; 2 uses
  %i.bme = extractelement <2 x i64> %i.bmc, i64 0
  %i.bmf = extractelement <2 x i64> %i.bmc, i64 1
  %i.bmg = extractelement <2 x i64> %i.bmd, i64 0
  %i.bmh = extractelement <2 x i64> %i.bmd, i64 1
  %i.bmi = tail call noundef i64 @zfp_encode_partial_block_strided_float_4(ptr noundef nonnull %i.blz, ptr noundef %i.bkl, i64 noundef %i.bme, i64 noundef %i.bmf, i64 noundef %i.bmg, i64 noundef %i.bmh, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !547 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit239

bb.bl:                                            ; preds = %bb.bk
  %i.bmj = tail call noundef i64 @zfp_encode_block_float_4(ptr noundef nonnull %i.blz, ptr noundef %i.bkl), !noalias !547 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit239

_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit239: ; preds = %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i238, %bb.bl
  %i.bmk = load ptr, ptr %i.bma, align 8, !tbaa !195, !noalias !547
  %i.bml = tail call i64 @stream_flush(ptr noundef %i.bmk), !noalias !547 ; 0 uses
  %.pre.i.i.i.i194 = load ptr, ptr %i.and, align 8, !tbaa !223, !noalias !547 ; 4 uses
  %.phi.trans.insert542 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i194, i64 88
  %.phi.trans.insert544 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i194, i64 96
  %.pre543 = load i64, ptr %.phi.trans.insert542, align 8, !tbaa !219, !noalias !547
  %.pre545 = load i64, ptr %.phi.trans.insert544, align 8, !tbaa !218, !noalias !547
  %.phi.trans.insert546 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i194, i64 104
  %.pre547 = load i64, ptr %.phi.trans.insert546, align 8, !tbaa !217, !noalias !547
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit239, %bb.bj
  %i.bmm = phi i64 [ %.pre547, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit239 ], [ %i.bju, %bb.bj ] ; 2 uses
  %i.bmn = phi i64 [ %.pre545, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit239 ], [ %i.bjr, %bb.bj ] ; 2 uses
  %i.bmo = phi i64 [ %.pre543, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit239 ], [ %i.bjq, %bb.bj ] ; 2 uses
  %i.bmp = phi ptr [ %.pre.i.i.i.i194, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit239 ], [ %i.bjf, %bb.bj ] ; 4 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 48
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmp, i64 40
  %i.bms = load i64, ptr %i.bmr, align 8, !tbaa !178, !noalias !547
  %i.bmt = mul i64 %i.bms, %i.bkb
  %i.bmu = udiv i64 %i.bkb, %i.bmo                ; 2 uses
  %i.bmv = udiv i64 %i.bmu, %i.bmn                ; 2 uses
  %i.bmw = urem i64 %i.bmv, %i.bmm
  %i.bmx = udiv i64 %i.bmv, %i.bmm
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmp, i64 56
  %i.bmz = urem i64 %i.bkb, %i.bmo
  %i.bna = urem i64 %i.bmu, %i.bmn
  %i.bnb = insertelement <2 x i64> poison, i64 %i.bmz, i64 0
  %i.bnc = insertelement <2 x i64> %i.bnb, i64 %i.bna, i64 1
  %i.bnd = shl <2 x i64> %i.bnc, splat (i64 2)
  %i.bne = load <2 x i64>, ptr %i.bmy, align 8, !tbaa !40, !noalias !547 ; 2 uses
  %i.bnf = xor <2 x i64> %i.bne, %i.bnd
  %i.bng = add <2 x i64> %i.bnf, splat (i64 -4)
  %i.bnh = lshr <2 x i64> %i.bng, splat (i64 62)
  %i.bni = sub <2 x i64> zeroinitializer, %i.bne
  %i.bnj = and <2 x i64> %i.bnh, %i.bni           ; 3 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bmp, i64 72
  %i.bnl = insertelement <2 x i64> poison, i64 %i.bmw, i64 0
  %i.bnm = insertelement <2 x i64> %i.bnl, i64 %i.bmx, i64 1
  %i.bnn = shl <2 x i64> %i.bnm, splat (i64 2)
  %i.bno = load <2 x i64>, ptr %i.bnk, align 8, !tbaa !40, !noalias !547 ; 2 uses
  %i.bnp = xor <2 x i64> %i.bno, %i.bnn
  %i.bnq = add <2 x i64> %i.bnp, splat (i64 -4)
  %i.bnr = lshr <2 x i64> %i.bnq, splat (i64 62)
  %i.bns = sub <2 x i64> zeroinitializer, %i.bno
  %i.bnt = and <2 x i64> %i.bnr, %i.bns           ; 3 uses
  %i.bnu = or <2 x i64> %i.bnj, %i.bnt
  %i.bnv = shufflevector <2 x i64> %i.bnu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bnw = or <2 x i64> %i.bnv, %i.bnj
  %foldExtExtBinop874 = or <2 x i64> %i.bnw, %i.bnt
  %i.bnx = extractelement <2 x i64> %foldExtExtBinop874, i64 0
  %i.bny = icmp eq i64 %i.bnx, 0
  %i.bnz = load ptr, ptr %i.bmq, align 8, !tbaa !208, !noalias !547 ; 3 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 16 ; 2 uses
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !195, !noalias !547
  tail call void @stream_rseek(ptr noundef %i.bob, i64 noundef %i.bmt), !noalias !547
  br i1 %i.bny, label %bb.bn, label %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i236

_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i236: ; preds = %bb.bm
  %i.boc = sub nuw nsw <2 x i64> splat (i64 4), %i.bnj ; 2 uses
  %i.bod = sub nuw nsw <2 x i64> splat (i64 4), %i.bnt ; 2 uses
  %i.boe = extractelement <2 x i64> %i.boc, i64 0
  %i.bof = extractelement <2 x i64> %i.boc, i64 1
  %i.bog = extractelement <2 x i64> %i.bod, i64 0
  %i.boh = extractelement <2 x i64> %i.bod, i64 1
  %i.boi = tail call noundef i64 @zfp_decode_partial_block_strided_float_4(ptr noundef nonnull %i.bnz, ptr noundef %i.bkl, i64 noundef %i.boe, i64 noundef %i.bof, i64 noundef %i.bog, i64 noundef %i.boh, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !547 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237

bb.bn:                                            ; preds = %bb.bm
  %i.boj = tail call noundef i64 @zfp_decode_block_float_4(ptr noundef nonnull %i.bnz, ptr noundef %i.bkl), !noalias !547 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237

_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237: ; preds = %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i236, %bb.bn
  %i.bok = load ptr, ptr %i.boa, align 8, !tbaa !195, !noalias !547
  %i.bol = tail call i64 @stream_align(ptr noundef %i.bok), !noalias !547 ; 0 uses
  %.pre548 = load ptr, ptr %i.and, align 8, !tbaa !223, !noalias !547 ; 4 uses
  %.phi.trans.insert549 = getelementptr inbounds nuw i8, ptr %.pre548, i64 88
  %.phi.trans.insert551 = getelementptr inbounds nuw i8, ptr %.pre548, i64 96
  %.pre550 = load i64, ptr %.phi.trans.insert549, align 8, !tbaa !219, !noalias !547
  %.pre552 = load i64, ptr %.phi.trans.insert551, align 8, !tbaa !218, !noalias !547
  %.phi.trans.insert553 = getelementptr inbounds nuw i8, ptr %.pre548, i64 104
  %.pre554 = load i64, ptr %.phi.trans.insert553, align 8, !tbaa !217, !noalias !547
  %.pre555 = load ptr, ptr %i.ane, align 8, !tbaa !71, !noalias !547
  %.pre556 = load ptr, ptr %i.anf, align 8, !tbaa !73, !noalias !547
  br label %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit195

_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit195: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237
  %i.bom = phi ptr [ %i.bjd, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre556, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237 ]
  %i.bon = phi ptr [ %i.bje, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre555, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237 ]
  %i.boo = phi i64 [ %i.bju, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre554, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237 ] ; 2 uses
  %i.bop = phi i64 [ %i.bjr, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre552, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237 ] ; 2 uses
  %i.boq = phi i64 [ %i.bjq, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre550, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237 ] ; 2 uses
  %i.bor = phi ptr [ %i.bjf, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre548, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit237 ] ; 5 uses
  %i.bos = and i64 %.sroa.speculated270, 3
  %i.bot = and i64 %.sroa.speculated264, 3
  %i.bou = shl nuw nsw i64 %.sroa.speculated, 2
  %i.bov = and i64 %i.bou, 12
  %i.bow = or disjoint i64 %i.bov, %i.bot
  %i.box = shl nuw nsw i64 %.sroa.speculated267, 2
  %i.boy = and i64 %i.box, 12
  %.idx.i.i.i.i193 = shl nuw nsw i64 %i.bow, 6
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bkl, i64 %.idx.i.i.i.i193
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.boz, i64 %i.boy
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.bpa, i64 %i.bos
  %i.bpc = load float, ptr %i.bpb, align 4, !tbaa !99, !noalias !547
  %i.bpd = load i32, ptr %i.anc, align 8, !tbaa !163, !noalias !547
  %i.bpe = and i32 %i.bpd, 1
  %i.bpf = zext nneg i32 %i.bpe to i64            ; 2 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bpf ; 2 uses
  %i.bph = load i32, ptr %i.bpg, align 4, !tbaa !221, !noalias !547 ; 2 uses
  %i.bpi = lshr i32 %i.bph, 1                     ; 2 uses
  %i.bpj = getelementptr inbounds nuw [1024 x i8], ptr %i.bom, i64 %i.bpf ; 5 uses
  store i32 3, ptr %i.bpg, align 4, !tbaa !39, !noalias !547
  %i.bpk = add nsw i32 %i.bpi, -1                 ; 2 uses
  %i.bpl = zext i32 %i.bpk to i64                 ; 3 uses
  %.not.i.i.i.i188 = icmp eq i32 %i.bpk, 0
  br i1 %.not.i.i.i.i188, label %_ZN3zfp8internal4dim49referenceINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3setEf.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit195
  %11 = icmp eq i32 %i.bpi, 1
  %i.bpm = trunc i32 %i.bph to i1
  %12 = or i1 %11, %i.bpm
  br i1 %12, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bor, i64 48
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bor, i64 40
  %i.bpp = load i64, ptr %i.bpo, align 8, !tbaa !178, !noalias !547
  %i.bpq = mul i64 %i.bpp, %i.bpl
  %i.bpr = udiv i64 %i.bpl, %i.boq                ; 2 uses
  %i.bps = udiv i64 %i.bpr, %i.bop                ; 2 uses
  %i.bpt = urem i64 %i.bps, %i.boo
  %i.bpu = udiv i64 %i.bps, %i.boo
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bor, i64 56
  %i.bpw = urem i64 %i.bpl, %i.boq
  %i.bpx = urem i64 %i.bpr, %i.bop
  %i.bpy = insertelement <2 x i64> poison, i64 %i.bpw, i64 0
  %i.bpz = insertelement <2 x i64> %i.bpy, i64 %i.bpx, i64 1
  %i.bqa = shl nuw nsw <2 x i64> %i.bpz, splat (i64 2)
  %i.bqb = load <2 x i64>, ptr %i.bpv, align 8, !tbaa !40, !noalias !547 ; 2 uses
  %i.bqc = xor <2 x i64> %i.bqb, %i.bqa
  %i.bqd = add <2 x i64> %i.bqc, splat (i64 -4)
  %i.bqe = lshr <2 x i64> %i.bqd, splat (i64 62)
  %i.bqf = sub <2 x i64> zeroinitializer, %i.bqb
  %i.bqg = and <2 x i64> %i.bqe, %i.bqf           ; 3 uses
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bor, i64 72
  %i.bqi = insertelement <2 x i64> poison, i64 %i.bpt, i64 0
  %i.bqj = insertelement <2 x i64> %i.bqi, i64 %i.bpu, i64 1
  %i.bqk = shl nuw nsw <2 x i64> %i.bqj, splat (i64 2)
  %i.bql = load <2 x i64>, ptr %i.bqh, align 8, !tbaa !40, !noalias !547 ; 2 uses
  %i.bqm = xor <2 x i64> %i.bql, %i.bqk
  %i.bqn = add <2 x i64> %i.bqm, splat (i64 -4)
  %i.bqo = lshr <2 x i64> %i.bqn, splat (i64 62)
  %i.bqp = sub <2 x i64> zeroinitializer, %i.bql
  %i.bqq = and <2 x i64> %i.bqo, %i.bqp           ; 3 uses
  %i.bqr = or <2 x i64> %i.bqg, %i.bqq
  %i.bqs = shufflevector <2 x i64> %i.bqr, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bqt = or <2 x i64> %i.bqs, %i.bqg
  %foldExtExtBinop882 = or <2 x i64> %i.bqt, %i.bqq
  %i.bqu = extractelement <2 x i64> %foldExtExtBinop882, i64 0
  %i.bqv = icmp eq i64 %i.bqu, 0
  %i.bqw = load ptr, ptr %i.bpn, align 8, !tbaa !208, !noalias !547 ; 3 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqw, i64 16 ; 2 uses
  %i.bqy = load ptr, ptr %i.bqx, align 8, !tbaa !195, !noalias !547
  tail call void @stream_wseek(ptr noundef %i.bqy, i64 noundef %i.bpq), !noalias !547
  br i1 %i.bqv, label %bb.bq, label %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i234

_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i234: ; preds = %bb.bp
  %i.bqz = sub nuw nsw <2 x i64> splat (i64 4), %i.bqg ; 2 uses
  %i.bra = sub nuw nsw <2 x i64> splat (i64 4), %i.bqq ; 2 uses
  %i.brb = extractelement <2 x i64> %i.bqz, i64 0
  %i.brc = extractelement <2 x i64> %i.bqz, i64 1
  %i.brd = extractelement <2 x i64> %i.bra, i64 0
  %i.bre = extractelement <2 x i64> %i.bra, i64 1
  %i.brf = tail call noundef i64 @zfp_encode_partial_block_strided_float_4(ptr noundef nonnull %i.bqw, ptr noundef %i.bpj, i64 noundef %i.brb, i64 noundef %i.brc, i64 noundef %i.brd, i64 noundef %i.bre, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !547 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit235

bb.bq:                                            ; preds = %bb.bp
  %i.brg = tail call noundef i64 @zfp_encode_block_float_4(ptr noundef nonnull %i.bqw, ptr noundef %i.bpj), !noalias !547 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit235

_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit235: ; preds = %_ZNK3zfp5codec4zfp4IfE20encode_block_stridedEmjPKfllll.exit.i.i234, %bb.bq
  %i.brh = load ptr, ptr %i.bqx, align 8, !tbaa !195, !noalias !547
  %i.bri = tail call i64 @stream_flush(ptr noundef %i.brh), !noalias !547 ; 0 uses
  %.pre.i.i.i.i190 = load ptr, ptr %i.and, align 8, !tbaa !223, !noalias !547
  br label %bb.br

bb.br:                                            ; preds = %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit235, %bb.bo
  %i.brj = phi ptr [ %.pre.i.i.i.i190, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKf.exit235 ], [ %i.bor, %bb.bo ] ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 48
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brj, i64 56
  %i.brm = load <4 x i64>, ptr %i.brl, align 8, !tbaa !40, !noalias !547 ; 2 uses
  %i.brn = add <4 x i64> %i.brm, splat (i64 -4)
  %i.bro = lshr <4 x i64> %i.brn, splat (i64 62)
  %i.brp = sub <4 x i64> zeroinitializer, %i.brm
  %i.brq = and <4 x i64> %i.bro, %i.brp           ; 3 uses
  %i.brr = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.brq)
  %i.brs = icmp eq i64 %i.brr, 0
  %i.brt = load ptr, ptr %i.brk, align 8, !tbaa !208, !noalias !547 ; 3 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 16 ; 2 uses
  %i.brv = load ptr, ptr %i.bru, align 8, !tbaa !195, !noalias !547
  tail call void @stream_rseek(ptr noundef %i.brv, i64 noundef 0), !noalias !547
  br i1 %i.brs, label %bb.bs, label %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i232

_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i232: ; preds = %bb.br
  %i.brw = shufflevector <4 x i64> %i.brq, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.brx = sub nuw nsw <2 x i64> splat (i64 4), %i.brw ; 2 uses
  %i.bry = shufflevector <4 x i64> %i.brq, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.brz = sub nuw nsw <2 x i64> splat (i64 4), %i.bry ; 2 uses
  %i.bsa = extractelement <2 x i64> %i.brx, i64 0
  %i.bsb = extractelement <2 x i64> %i.brx, i64 1
  %i.bsc = extractelement <2 x i64> %i.brz, i64 0
  %i.bsd = extractelement <2 x i64> %i.brz, i64 1
  %i.bse = tail call noundef i64 @zfp_decode_partial_block_strided_float_4(ptr noundef nonnull %i.brt, ptr noundef %i.bpj, i64 noundef %i.bsa, i64 noundef %i.bsb, i64 noundef %i.bsc, i64 noundef %i.bsd, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !547 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit233

bb.bs:                                            ; preds = %bb.br
  %i.bsf = tail call noundef i64 @zfp_decode_block_float_4(ptr noundef nonnull %i.brt, ptr noundef %i.bpj), !noalias !547 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit233

_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit233: ; preds = %_ZNK3zfp5codec4zfp4IfE20decode_block_stridedEmjPfllll.exit.i.i232, %bb.bs
  %i.bsg = load ptr, ptr %i.bru, align 8, !tbaa !195, !noalias !547
  %i.bsh = tail call i64 @stream_align(ptr noundef %i.bsg), !noalias !547 ; 0 uses
  br label %_ZN3zfp8internal4dim49referenceINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3setEf.exit

_ZN3zfp8internal4dim49referenceINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3setEf.exit: ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE3getEv.exit195, %_ZNK3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6decodeEmPf.exit233
  store float %i.bpc, ptr %i.bpj, align 4, !tbaa !99, !noalias !547
  %i.bsi = add i32 %.0414, 1                      ; 2 uses
  %i.bsj = zext i32 %i.bsi to i64                 ; 2 uses
  %i.bsk = load i64, ptr %i.anb, align 8, !tbaa !126 ; 2 uses
  %i.bsl = add i64 %i.bsk, -1
  %i.bsm = icmp ugt i64 %i.bsl, %i.bsj
  br i1 %i.bsm, label %bb.ax, label %._crit_edge416.loopexit
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_Z10initializeIdEvPT_j9ArraySize(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i32 %2, 0
  %i.b = select i1 %i.a, i32 12, i32 24
  %i.c = udiv i32 %i.b, %1                        ; 3 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = shl nuw nsw i64 1, %i.d                  ; 5 uses
  switch i32 %1, label %bb.b [
    i32 4, label %bb.e
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_Z12gen_array_1dIdEbPT_m(ptr noundef %0, i64 noundef %i.e) ; 0 uses
  br label %_Z12gen_array_2dIdEbPT_m.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i32 %i.c, 1
  br i1 %i.g, label %.preheader.preheader.i, label %_Z12gen_array_2dIdEbPT_m.exit

.preheader.preheader.i:                           ; preds = %bb.c
  %i.h = shl nuw nsw i64 %i.e, %i.d               ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #28 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.j, i8 0, i64 64, i1 false), !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 65536, ptr %i.k, align 4, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 -65536, ptr %i.l, align 4, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 -65536, ptr %i.m, align 4, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i32 65536, ptr %i.n, align 4, !tbaa !39
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #28 ; 2 uses
  %.not = icmp eq i32 %i.c, 2
  br i1 %.not, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.preheader.i, %.lr.ph.i
  %.041.i = phi i64 [ %i.p, %.lr.ph.i ], [ 4, %.preheader.preheader.i ] ; 2 uses
  %.03540.i = phi ptr [ %.03639.i, %.lr.ph.i ], [ %i.o, %.preheader.preheader.i ] ; 3 uses
  %.03639.i = phi ptr [ %.03540.i, %.lr.ph.i ], [ %i.j, %.preheader.preheader.i ] ; 3 uses
  tail call void @_Z8refine2dPiPKim(ptr noundef %.03540.i, ptr noundef %.03639.i, i64 noundef %.041.i)
  %i.p = shl nuw nsw i64 %.041.i, 1               ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.e
  br i1 %i.q, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.preheader.i
  %.036.lcssa.i = phi ptr [ %i.j, %.preheader.preheader.i ], [ %.03540.i, %.lr.ph.i ] ; 2 uses
  %.035.lcssa.i = phi ptr [ %i.o, %.preheader.preheader.i ], [ %.03639.i, %.lr.ph.i ]
  tail call void @_ZdaPv(ptr noundef nonnull %.035.lcssa.i) #26
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit.i, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ 0, %.loopexit.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.036.lcssa.i, i64 %.06.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !39
  %i.t = sitofp i32 %i.s to double
  %i.u = tail call double @ldexp(double noundef %i.t, i32 noundef -12) #24
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.06.i.i
  store double %i.u, ptr %i.v, align 8, !tbaa !49
  %i.w = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.h
  br i1 %exitcond.not.i.i, label %_Z21convert_ints_to_realsIdEvPT_PKim.exit.thread.i, label %.lr.ph.i.i

_Z21convert_ints_to_realsIdEvPT_PKim.exit.thread.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.036.lcssa.i) #26
  br label %_Z12gen_array_2dIdEbPT_m.exit

bb.d:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_Z12gen_array_3dIdEbPT_m(ptr noundef %0, i64 noundef %i.e) ; 0 uses
  br label %_Z12gen_array_2dIdEbPT_m.exit

bb.e:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_Z12gen_array_4dIdEbPT_m(ptr noundef %0, i64 noundef %i.e) ; 0 uses
  br label %_Z12gen_array_2dIdEbPT_m.exit

_Z12gen_array_2dIdEbPT_m.exit:                    ; preds = %_Z21convert_ints_to_realsIdEvPT_PKim.exit.thread.i, %bb.c, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef i32 @_Z9test_rateIdEjP10zfp_streamPK9zfp_fielddT_b(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, i1 noundef zeroext %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 53 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_4
begin_hunk_5_@_Z10test_arrayIN3zfp6array2IdNS0_5codec4zfp2IdEENS0_5index8implicitEEEdEjRT_PKT0_jdd:bb.a
  %i.bv = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 72, ptr %i.bw, align 8, !tbaa !101
  %i.bx = load i64, ptr %i.bt, align 8
  %i.by = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !46
  %i.cb = and i32 %i.ca, -177
  %i.cc = or disjoint i32 %i.cb, 32
  store i32 %i.cc, ptr %i.bz, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !42, !alias.scope !635
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !45, !alias.scope !635
  store i8 0, ptr %i.cd, align 8, !tbaa !38, !alias.scope !635
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !103, !noalias !635 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !635 ; 2 uses
  %i.cj = icmp ugt ptr %i.cg, %i.ci
  %.08.i.i.i = select i1 %i.cj, ptr %i.cg, ptr %i.ci ; 2 uses
  %.not8.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not8.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !104, !noalias !635 ; 2 uses
  %i.cm = ptrtoint ptr %.08.i.i.i to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.cl, i64 noundef %i.co)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %6, align 8, !tbaa !44, !alias.scope !635 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cd
  br i1 %i.cs, label %.body, label %.body.sink.split

bb.o:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.cu = load ptr, ptr %6, align 8, !tbaa !44
  %i.cv = load i64, ptr %i.ce, align 8, !tbaa !45
  %i.cw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.cu, i64 noundef %i.cv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.str.48..str.49 = select i1 %i.bh, ptr @.str.49, ptr @.str.48
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %.str.48..str.49, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !14
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 240
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i141 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i141, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc143 unwind label %bb.s

.noexc143:                                        ; preds = %bb.p
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load i8, ptr %i.de, align 8, !tbaa !37
  %.not.i1.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 67
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dd)
          to label %.noexc144 unwind label %bb.s

.noexc144:                                        ; preds = %bb.r
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = invoke noundef signext i8 %i.dk(ptr noundef nonnull align 8 dereferenceable(570) %i.dd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.s, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc144, %bb.q
  %.0.i.i.i142 = phi i8 [ %i.dh, %bb.q ], [ %i.dl, %.noexc144 ]
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i8 noundef signext %.0.i.i.i142)
          to label %.noexc146 unwind label %bb.s

.noexc146:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.s ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc146
  %i.do = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cd
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  call void @_ZdlPv(ptr noundef %i.do) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.dq, ptr %7, align 8, !tbaa !42
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.dr, align 8, !tbaa !45
  store i8 0, ptr %i.dq, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !45
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i64 noundef 0, i64 noundef %i.dv, ptr noundef nonnull %i.dq, i64 noundef 0)
          to label %.noexc82 unwind label %bb.x   ; 0 uses

bb.s:                                             ; preds = %.noexc146, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc144, %bb.r, %bb.p, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cd
  br i1 %i.dz, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.n
  %.sink = phi ptr [ %i.cr, %bb.n ], [ %i.dy, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.cq, %bb.n ], [ %i.dx, %bb.s ]
  call void @_ZdlPv(ptr noundef %.sink) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.n ], [ %i.dx, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

.noexc82:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !107
  %i.ec = and i32 %i.eb, 3
  %.not.i.i.i = icmp eq i32 %i.ec, 0
  %i.ed = load i64, ptr %i.du, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.ed
  %i.ee = load ptr, ptr %i.dt, align 8, !tbaa !44
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ds, ptr noundef %i.ee, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.x

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc82
  %i.ef = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.dq
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  call void @_ZdlPv(ptr noundef %i.ef) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.70, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  invoke void @_Z13update_array2IdEvRN3zfp6array2IT_NS0_5codec4zfp2IS2_EENS0_5index8implicitEEE(ptr noundef nonnull align 8 dereferenceable(168) %0)
          to label %bb.t unwind label %bb.j

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !247, !nonnull !141, !align !142 ; 2 uses
  %i.el = load i32, ptr %i.ei, align 8, !tbaa !244
  %i.em = and i32 %i.el, 1
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !83
  %i.ep = zext nneg i32 %i.em to i64              ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !249 ; 2 uses
  %i.es = lshr i32 %i.er, 1                       ; 2 uses
  %i.et = icmp eq i32 %i.es, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !85
  %i.ew = getelementptr inbounds nuw [128 x i8], ptr %i.ev, i64 %i.ep ; 3 uses
  br i1 %i.et, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90

_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90: ; preds = %bb.t
  store i32 2, ptr %i.eq, align 4, !tbaa !39
  %9 = add nsw i32 %i.es, -1                      ; 2 uses
  %10 = zext i32 %9 to i64
  %.not.i.i.i.i.i91 = icmp eq i32 %9, 0
  br i1 %.not.i.i.i.i.i91, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread, label %bb.u

bb.u:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90
  %11 = trunc i32 %i.er to i1
  br i1 %11, label %12, label %bb.v

12:                                               ; preds = %bb.u
  %13 = invoke noundef i64 @_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd(ptr noundef nonnull align 8 dereferenceable(88) %i.ek, i64 noundef %10, ptr noundef %i.ew)
          to label %.noexc93 unwind label %bb.y   ; 0 uses

.noexc93:                                         ; preds = %12
  %.pre.i.i.i.i.i92 = load ptr, ptr %i.ej, align 8, !tbaa !247
  br label %bb.v

bb.v:                                             ; preds = %.noexc93, %bb.u
  %i.ex = phi ptr [ %.pre.i.i.i.i.i92, %.noexc93 ], [ %i.ek, %bb.u ]
  %i.ey = invoke noundef i64 @_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd(ptr noundef nonnull align 8 dereferenceable(88) %i.ex, i64 noundef 0, ptr noundef %i.ew)
          to label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread unwind label %bb.y ; 0 uses

_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread: ; preds = %bb.t, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90, %bb.v
  %i.ez = load double, ptr %i.ew, align 8, !tbaa !49 ; 3 uses
  %i.fa = fsub double %i.ez, %4
  %i.fb = call noundef double @llvm.fabs.f64(double %i.fa)
  %i.fc = fmul double %4, 1.000000e-03
  %i.fd = fcmp ole double %i.fb, %i.fc            ; 3 uses
  br i1 %i.fd, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread
  %i.fe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.53, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %bb.w
  %i.ff = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.ez)
          to label %_ZNSolsEd.exit99 unwind label %bb.z ; 2 uses

_ZNSolsEd.exit99:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull @.str.71, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101: ; preds = %_ZNSolsEd.exit99
  %i.fh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, double noundef %4)
          to label %bb.ab unwind label %bb.z      ; 0 uses

bb.x:                                             ; preds = %.noexc82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.dq
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.fj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aj

bb.y:                                             ; preds = %bb.v, %12
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %_ZNSolsEd.exit114, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112, %_ZNSolsEd.exit110, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101, %_ZNSolsEd.exit99, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97, %bb.w
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aa:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108: ; preds = %bb.aa
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.ez)
          to label %_ZNSolsEd.exit110 unwind label %bb.z ; 2 uses

_ZNSolsEd.exit110:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit108
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull @.str.36, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112: ; preds = %_ZNSolsEd.exit110
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, double noundef %4)
          to label %_ZNSolsEd.exit114 unwind label %bb.z

_ZNSolsEd.exit114:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit112
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.47, i64 noundef 1)
          to label %bb.ab unwind label %bb.z      ; 0 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit101, %_ZNSolsEd.exit114
  %i.fs = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %i.ft = getelementptr i8, ptr %i.fs, i64 -24    ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store i64 72, ptr %i.fw, align 8, !tbaa !101
  %i.fx = load i64, ptr %i.ft, align 8
  %i.fy = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !46
  %i.gb = and i32 %i.ga, -177
  %i.gc = or disjoint i32 %i.gb, 32
  store i32 %i.gc, ptr %i.fz, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.gd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.gd, ptr %8, align 8, !tbaa !42, !alias.scope !638
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.ge, align 8, !tbaa !45, !alias.scope !638
  store i8 0, ptr %i.gd, align 8, !tbaa !38, !alias.scope !638
  %i.gf = load ptr, ptr %i.cf, align 8, !tbaa !103, !noalias !638 ; 3 uses
  %.not.i.not.i.i119 = icmp eq ptr %i.gf, null
  %i.gg = load ptr, ptr %i.ch, align 8, !noalias !638 ; 2 uses
  %i.gh = icmp ugt ptr %i.gf, %i.gg
  %.08.i.i.i120 = select i1 %i.gh, ptr %i.gf, ptr %i.gg ; 2 uses
  %.not8.i.i121 = icmp eq ptr %.08.i.i.i120, null
  %.not.i.i122 = select i1 %.not.i.not.i.i119, i1 true, i1 %.not8.i.i121
  br i1 %.not.i.i122, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !104, !noalias !638 ; 2 uses
  %i.gk = ptrtoint ptr %.08.i.i.i120 to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.gj, i64 noundef %i.gm)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = load ptr, ptr %8, align 8, !tbaa !44, !alias.scope !638 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.gd
  br i1 %i.gq, label %.body126, label %.body126.sink.split

bb.ae:                                            ; preds = %bb.ab
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128 unwind label %bb.ad

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128: ; preds = %bb.ae, %bb.ac
  %i.gr = load ptr, ptr %8, align 8, !tbaa !44
  %i.gs = load i64, ptr %i.ge, align 8, !tbaa !45
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.gr, i64 noundef %i.gs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130 unwind label %bb.ai ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128
  %.str.48..str.491 = select i1 %i.fd, ptr @.str.48, ptr @.str.49
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull %.str.48..str.491, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !14
  %i.gw = getelementptr i8, ptr %i.gv, i64 -24
  %i.gx = load i64, ptr %i.gw, align 8
  %i.gy = getelementptr inbounds i8, ptr %i.gt, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 240
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i148 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i148, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc153 unwind label %bb.ai

.noexc153:                                        ; preds = %bb.af
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !37
  %.not.i1.i.i150 = icmp eq i8 %i.hc, 0
  br i1 %.not.i1.i.i150, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 67
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ha)
          to label %.noexc154 unwind label %bb.ai

.noexc154:                                        ; preds = %bb.ah
  %i.hf = load ptr, ptr %i.ha, align 8, !tbaa !14
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = invoke noundef signext i8 %i.hh(ptr noundef nonnull align 8 dereferenceable(570) %i.ha, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151 unwind label %bb.ai, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151: ; preds = %.noexc154, %bb.ag
  %.0.i.i.i152 = phi i8 [ %i.he, %bb.ag ], [ %i.hi, %.noexc154 ]
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, i8 noundef signext %.0.i.i.i152)
          to label %.noexc156 unwind label %bb.ai

.noexc156:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hj)
          to label %_ZNSolsEPFRSoS_E.exit134 unwind label %bb.ai ; 0 uses

_ZNSolsEPFRSoS_E.exit134:                         ; preds = %.noexc156
  %i.hl = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.gd
  br i1 %i.hm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZNSolsEPFRSoS_E.exit134
  call void @_ZdlPv(ptr noundef %i.hl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZNSolsEPFRSoS_E.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hn = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.hn, ptr %5, align 8, !tbaa !14
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.hp = getelementptr i8, ptr %i.hn, i64 -24
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds i8, ptr %5, i64 %i.hq
  store ptr %i.ho, ptr %i.hr, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ds, align 8, !tbaa !14
  %i.hs = load ptr, ptr %i.dt, align 8, !tbaa !44 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  call void @_ZdlPv(ptr noundef %i.hs) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %spec.select = zext i1 %i.bh to i32
  %i.hv = select i1 %i.bh, i32 2, i32 1
  %spec.select53 = select i1 %i.fd, i32 %spec.select, i32 %i.hv
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ds, align 8, !tbaa !14
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hw) #24
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.hx)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %spec.select53

bb.ai:                                            ; preds = %.noexc156, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151, %.noexc154, %bb.ah, %bb.af, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit128
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.gd
  br i1 %i.ia, label %.body126, label %.body126.sink.split

.body126.sink.split:                              ; preds = %bb.ai, %bb.ad
  %.sink186 = phi ptr [ %i.gp, %bb.ad ], [ %i.hz, %bb.ai ]
  %.pn46.ph = phi { ptr, i32 } [ %i.go, %bb.ad ], [ %i.hy, %bb.ai ]
  call void @_ZdlPv(ptr noundef %.sink186) #26
  br label %.body126

.body126:                                         ; preds = %.body126.sink.split, %bb.ai, %bb.ad
  %.pn46 = phi { ptr, i32 } [ %i.go, %bb.ad ], [ %i.hy, %bb.ai ], [ %.pn46.ph, %.body126.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.h, %bb.y, %bb.z, %.body126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %.body, %bb.j, %bb.b
  %.pn50.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.av, %bb.h ], [ %i.fl, %bb.y ], [ %.pn, %.body ], [ %i.bm, %bb.j ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn46, %.body126 ], [ %i.fm, %bb.z ]
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
end_hunk_5
begin_hunk_6_@_Z10test_arrayIN3zfp6array3IdNS0_5codec4zfp3IdEENS0_5index8implicitEEEdEjRT_PKT0_jdd:bb.a
  %i.cg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 72, ptr %i.ch, align 8, !tbaa !101
  %i.ci = load i64, ptr %i.ce, align 8
  %i.cj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !46
  %i.cm = and i32 %i.cl, -177
  %i.cn = or disjoint i32 %i.cm, 32
  store i32 %i.cn, ptr %i.ck, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.co, ptr %6, align 8, !tbaa !42, !alias.scope !654
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !45, !alias.scope !654
  store i8 0, ptr %i.co, align 8, !tbaa !38, !alias.scope !654
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !103, !noalias !654 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.cr, null
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !654 ; 2 uses
  %i.cu = icmp ugt ptr %i.cr, %i.ct
  %.08.i.i.i = select i1 %i.cu, ptr %i.cr, ptr %i.ct ; 2 uses
  %.not8.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not8.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !104, !noalias !654 ; 2 uses
  %i.cx = ptrtoint ptr %.08.i.i.i to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.cw, i64 noundef %i.cz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %6, align 8, !tbaa !44, !alias.scope !654 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.co
  br i1 %i.dd, label %.body, label %.body.sink.split

bb.o:                                             ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.o, %bb.m
  %i.df = load ptr, ptr %6, align 8, !tbaa !44
  %i.dg = load i64, ptr %i.cp, align 8, !tbaa !45
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.df, i64 noundef %i.dg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.str.48..str.49 = select i1 %i.bs, ptr @.str.49, ptr @.str.48
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %.str.48..str.49, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !14
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 240
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i142 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i142, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc144 unwind label %bb.s

.noexc144:                                        ; preds = %bb.p
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !37
  %.not.i1.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 67
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.do)
          to label %.noexc145 unwind label %bb.s

.noexc145:                                        ; preds = %bb.r
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef signext i8 %i.dv(ptr noundef nonnull align 8 dereferenceable(570) %i.do, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.s, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc145, %bb.q
  %.0.i.i.i143 = phi i8 [ %i.ds, %bb.q ], [ %i.dw, %.noexc145 ]
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i8 noundef signext %.0.i.i.i143)
          to label %.noexc147 unwind label %bb.s

.noexc147:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.s ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc147
  %i.dz = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.co
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  call void @_ZdlPv(ptr noundef %i.dz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.eb, ptr %7, align 8, !tbaa !42
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ec, align 8, !tbaa !45
  store i8 0, ptr %i.eb, align 8, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !45
  %i.eh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 noundef 0, i64 noundef %i.eg, ptr noundef nonnull %i.eb, i64 noundef 0)
          to label %.noexc82 unwind label %bb.x   ; 0 uses

bb.s:                                             ; preds = %.noexc147, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc145, %bb.r, %bb.p, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.co
  br i1 %i.ek, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.n
  %.sink = phi ptr [ %i.dc, %bb.n ], [ %i.ej, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.db, %bb.n ], [ %i.ei, %bb.s ]
  call void @_ZdlPv(ptr noundef %.sink) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.n
  %.pn = phi { ptr, i32 } [ %i.db, %bb.n ], [ %i.ei, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.aj

.noexc82:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.em = load i32, ptr %i.el, align 8, !tbaa !107
  %i.en = and i32 %i.em, 3
  %.not.i.i.i = icmp eq i32 %i.en, 0
  %i.eo = load i64, ptr %i.ef, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, i64 0, i64 %i.eo
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !44
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ed, ptr noundef %i.ep, i64 noundef 0, i64 noundef %.0.i.i.i)
          to label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit unwind label %bb.x

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit: ; preds = %.noexc82
  %i.eq = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.eb
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit
  call void @_ZdlPv(ptr noundef %i.eq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.70, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  invoke void @_Z13update_array3IdEvRN3zfp6array3IT_NS0_5codec4zfp3IS2_EENS0_5index8implicitEEE(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.t unwind label %bb.j

bb.t:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit88
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !264, !nonnull !141, !align !142 ; 2 uses
  %i.ew = load i32, ptr %i.et, align 8, !tbaa !261
  %i.ex = and i32 %i.ew, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !89
  %i.fa = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !266 ; 2 uses
  %i.fd = lshr i32 %i.fc, 1                       ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 1
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !91
  %i.fh = getelementptr inbounds nuw [512 x i8], ptr %i.fg, i64 %i.fa ; 3 uses
  br i1 %i.fe, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90: ; preds = %bb.t
  store i32 2, ptr %i.fb, align 4, !tbaa !39
  %9 = add nsw i32 %i.fd, -1                      ; 2 uses
  %10 = zext i32 %9 to i64
  %.not.i.i.i.i.i91 = icmp eq i32 %9, 0
  br i1 %.not.i.i.i.i.i91, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread, label %bb.u

bb.u:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90
  %11 = trunc i32 %i.fc to i1
  br i1 %11, label %12, label %bb.v

12:                                               ; preds = %bb.u
  %13 = invoke noundef i64 @_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd(ptr noundef nonnull align 8 dereferenceable(104) %i.ev, i64 noundef %10, ptr noundef %i.fh)
          to label %.noexc94 unwind label %bb.y   ; 0 uses

.noexc94:                                         ; preds = %12
  %.pre.i.i.i.i.i93 = load ptr, ptr %i.eu, align 8, !tbaa !264
  br label %bb.v

bb.v:                                             ; preds = %.noexc94, %bb.u
  %i.fi = phi ptr [ %.pre.i.i.i.i.i93, %.noexc94 ], [ %i.ev, %bb.u ]
  %i.fj = invoke noundef i64 @_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd(ptr noundef nonnull align 8 dereferenceable(104) %i.fi, i64 noundef 0, ptr noundef %i.fh)
          to label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread unwind label %bb.y ; 0 uses

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread: ; preds = %bb.t, %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90, %bb.v
  %i.fk = load double, ptr %i.fh, align 8, !tbaa !49 ; 3 uses
  %i.fl = fsub double %i.fk, %4
  %i.fm = call noundef double @llvm.fabs.f64(double %i.fl)
  %i.fn = fmul double %4, 1.000000e-03
  %i.fo = fcmp ole double %i.fm, %i.fn            ; 3 uses
  br i1 %i.fo, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.53, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %bb.w
  %i.fq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.fk)
          to label %_ZNSolsEd.exit100 unwind label %bb.z ; 2 uses

_ZNSolsEd.exit100:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.fr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, ptr noundef nonnull @.str.71, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102: ; preds = %_ZNSolsEd.exit100
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fq, double noundef %4)
          to label %bb.ab unwind label %bb.z      ; 0 uses

bb.x:                                             ; preds = %.noexc82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.eb
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.fu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aj

bb.y:                                             ; preds = %bb.v, %12
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.z:                                             ; preds = %_ZNSolsEd.exit115, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113, %_ZNSolsEd.exit111, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %_ZNSolsEd.exit100, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98, %bb.w
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aa:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i90.thread
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.46, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %bb.aa
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %5, double noundef %i.fk)
          to label %_ZNSolsEd.exit111 unwind label %bb.z ; 2 uses

_ZNSolsEd.exit111:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109
  %i.ga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull @.str.36, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113 unwind label %bb.z ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113: ; preds = %_ZNSolsEd.exit111
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, double noundef %4)
          to label %_ZNSolsEd.exit115 unwind label %bb.z

_ZNSolsEd.exit115:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit113
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.47, i64 noundef 1)
          to label %bb.ab unwind label %bb.z      ; 0 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit102, %_ZNSolsEd.exit115
  %i.gd = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %i.ge = getelementptr i8, ptr %i.gd, i64 -24    ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store i64 72, ptr %i.gh, align 8, !tbaa !101
  %i.gi = load i64, ptr %i.ge, align 8
  %i.gj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !46
  %i.gm = and i32 %i.gl, -177
  %i.gn = or disjoint i32 %i.gm, 32
  store i32 %i.gn, ptr %i.gk, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.go, ptr %8, align 8, !tbaa !42, !alias.scope !657
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.gp, align 8, !tbaa !45, !alias.scope !657
  store i8 0, ptr %i.go, align 8, !tbaa !38, !alias.scope !657
  %i.gq = load ptr, ptr %i.cq, align 8, !tbaa !103, !noalias !657 ; 3 uses
  %.not.i.not.i.i120 = icmp eq ptr %i.gq, null
  %i.gr = load ptr, ptr %i.cs, align 8, !noalias !657 ; 2 uses
  %i.gs = icmp ugt ptr %i.gq, %i.gr
  %.08.i.i.i121 = select i1 %i.gs, ptr %i.gq, ptr %i.gr ; 2 uses
  %.not8.i.i122 = icmp eq ptr %.08.i.i.i121, null
  %.not.i.i123 = select i1 %.not.i.not.i.i120, i1 true, i1 %.not8.i.i122
  br i1 %.not.i.i123, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !104, !noalias !657 ; 2 uses
  %i.gv = ptrtoint ptr %.08.i.i.i121 to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.gu, i64 noundef %i.gx)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %8, align 8, !tbaa !44, !alias.scope !657 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.go
  br i1 %i.hb, label %.body127, label %.body127.sink.split

bb.ae:                                            ; preds = %bb.ab
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129 unwind label %bb.ad

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129: ; preds = %bb.ae, %bb.ac
  %i.hc = load ptr, ptr %8, align 8, !tbaa !44
  %i.hd = load i64, ptr %i.gp, align 8, !tbaa !45
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.hc, i64 noundef %i.hd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit131 unwind label %bb.ai ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit131: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129
  %.str.48..str.491 = select i1 %i.fo, ptr @.str.48, ptr @.str.49
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.he, ptr noundef nonnull %.str.48..str.491, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.ai ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit131
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !14
  %i.hh = getelementptr i8, ptr %i.hg, i64 -24
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds i8, ptr %i.he, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 240
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !31 ; 6 uses
  %.not.i.i.i149 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i149, label %bb.af, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc154 unwind label %bb.ai

.noexc154:                                        ; preds = %bb.af
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 56
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !37
  %.not.i1.i.i151 = icmp eq i8 %i.hn, 0
  br i1 %.not.i1.i.i151, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 67
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !38
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i150
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hl)
          to label %.noexc155 unwind label %bb.ai

.noexc155:                                        ; preds = %bb.ah
  %i.hq = load ptr, ptr %i.hl, align 8, !tbaa !14
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = invoke noundef signext i8 %i.hs(ptr noundef nonnull align 8 dereferenceable(570) %i.hl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152 unwind label %bb.ai, !inline_history !1

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152: ; preds = %.noexc155, %bb.ag
  %.0.i.i.i153 = phi i8 [ %i.hp, %bb.ag ], [ %i.ht, %.noexc155 ]
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.he, i8 noundef signext %.0.i.i.i153)
          to label %.noexc157 unwind label %bb.ai

.noexc157:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152
  %i.hv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hu)
          to label %_ZNSolsEPFRSoS_E.exit135 unwind label %bb.ai ; 0 uses

_ZNSolsEPFRSoS_E.exit135:                         ; preds = %.noexc157
  %i.hw = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.go
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSolsEPFRSoS_E.exit135
  call void @_ZdlPv(ptr noundef %i.hw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSolsEPFRSoS_E.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.hy = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.hy, ptr %5, align 8, !tbaa !14
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ia = getelementptr i8, ptr %i.hy, i64 -24
  %i.ib = load i64, ptr %i.ia, align 8
  %i.ic = getelementptr inbounds i8, ptr %5, i64 %i.ib
  store ptr %i.hz, ptr %i.ic, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ed, align 8, !tbaa !14
  %i.id = load ptr, ptr %i.ee, align 8, !tbaa !44 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  call void @_ZdlPv(ptr noundef %i.id) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %spec.select = zext i1 %i.bs to i32
  %i.ig = select i1 %i.bs, i32 2, i32 1
  %spec.select53 = select i1 %i.fo, i32 %spec.select, i32 %i.ig
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ed, align 8, !tbaa !14
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ih) #24
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ii)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i32 %spec.select53

bb.ai:                                            ; preds = %.noexc157, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i152, %.noexc155, %bb.ah, %bb.af, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit131, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ik = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.go
  br i1 %i.il, label %.body127, label %.body127.sink.split

.body127.sink.split:                              ; preds = %bb.ai, %bb.ad
  %.sink188 = phi ptr [ %i.ha, %bb.ad ], [ %i.ik, %bb.ai ]
  %.pn46.ph = phi { ptr, i32 } [ %i.gz, %bb.ad ], [ %i.ij, %bb.ai ]
  call void @_ZdlPv(ptr noundef %.sink188) #26
  br label %.body127

.body127:                                         ; preds = %.body127.sink.split, %bb.ai, %bb.ad
  %.pn46 = phi { ptr, i32 } [ %i.gz, %bb.ad ], [ %i.ij, %bb.ai ], [ %.pn46.ph, %.body127.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.h, %bb.y, %bb.z, %.body127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %.body, %bb.j, %bb.b
  %.pn50.pn = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.bg, %bb.h ], [ %i.fw, %bb.y ], [ %.pn, %.body ], [ %i.bx, %bb.j ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %.pn46, %.body127 ], [ %i.fx, %bb.z ]
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
end_hunk_6
begin_hunk_7_@_Z13update_array2IdEvRN3zfp6array2IT_NS0_5codec4zfp2IS2_EENS0_5index8implicitEEE:bb.a
  %i.jz = insertelement <2 x i64> %i.jy, i64 %i.jw, i64 1
  %i.ka = shl <2 x i64> %i.jz, splat (i64 2)
  %i.kb = load <2 x i64>, ptr %i.jx, align 8, !tbaa !40 ; 2 uses
  %i.kc = xor <2 x i64> %i.kb, %i.ka
  %i.kd = add <2 x i64> %i.kc, splat (i64 -4)
  %i.ke = lshr <2 x i64> %i.kd, splat (i64 62)
  %i.kf = sub <2 x i64> zeroinitializer, %i.kb
  %i.kg = and <2 x i64> %i.ke, %i.kf              ; 2 uses
  %i.kh = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.kg)
  %i.ki = icmp eq i64 %i.kh, 0
  %i.kj = load ptr, ptr %i.jr, align 8, !tbaa !236 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.kl, i64 noundef %i.ju)
  br i1 %i.ki, label %bb.t, label %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i65

_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i65: ; preds = %bb.s
  %i.km = sub nuw nsw <2 x i64> splat (i64 4), %i.kg ; 2 uses
  %i.kn = extractelement <2 x i64> %i.km, i64 0
  %i.ko = extractelement <2 x i64> %i.km, i64 1
  %i.kp = tail call noundef i64 @zfp_decode_partial_block_strided_double_2(ptr noundef nonnull %i.kj, ptr noundef %i.ii, i64 noundef %i.kn, i64 noundef %i.ko, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit66

bb.t:                                             ; preds = %bb.s
  %i.kq = tail call noundef i64 @zfp_decode_block_double_2(ptr noundef nonnull %i.kj, ptr noundef %i.ii) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit66

_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit66: ; preds = %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i65, %bb.t
  %i.kr = load ptr, ptr %i.kk, align 8, !tbaa !195
  %i.ks = tail call i64 @stream_align(ptr noundef %i.kr) ; 0 uses
  br label %_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit48

_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit48: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i45, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit66
  %i.kt = and i64 %i.hq, 3                        ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.hc
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kt
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !49
  %i.kx = load ptr, ptr %i.q, align 8, !tbaa !247, !noalias !714, !nonnull !141, !align !142 ; 5 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !243, !noalias !714 ; 4 uses
  %i.la = mul i64 %i.kz, %i.hd
  %i.lb = add i64 %i.la, %i.hs                    ; 5 uses
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = add i32 %i.lc, 1                        ; 3 uses
  %i.le = load i32, ptr %i.p, align 8, !tbaa !244, !noalias !714
  %i.lf = and i32 %i.ld, %i.le
  %i.lg = load ptr, ptr %i.r, align 8, !tbaa !83, !noalias !714
  %i.lh = zext i32 %i.lf to i64                   ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !249, !noalias !714 ; 3 uses
  %i.lk = lshr i32 %i.lj, 1                       ; 2 uses
  %i.ll = icmp eq i32 %i.lk, %i.ld                ; 2 uses
  %i.lm = load ptr, ptr %i.s, align 8, !tbaa !85, !noalias !714
  %i.ln = getelementptr inbounds nuw [128 x i8], ptr %i.lm, i64 %i.lh ; 5 uses
  %i.lo = shl i32 %i.ld, 1
  %.sink.i.i.v.i.i.i49 = select i1 %i.ll, i32 %i.lj, i32 %i.lo
  %.sink.i.i.i.i.i50 = or i32 %.sink.i.i.v.i.i.i49, 1
  store i32 %.sink.i.i.i.i.i50, ptr %i.li, align 4, !tbaa !39, !noalias !714
  %i.lp = add nsw i32 %i.lk, -1
  %i.lq = zext i32 %i.lp to i64                   ; 4 uses
  %.not.i.i.i.i51 = icmp eq i64 %i.lb, %i.lq
  br i1 %.not.i.i.i.i51, label %_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEmIEd.exit56, label %bb.u

bb.u:                                             ; preds = %_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit48
  %i.lr = trunc i32 %i.lj to i1
  %i.ls = or i1 %i.ll, %i.lr
  br i1 %i.ls, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !178, !noalias !714
  %i.lw = mul i64 %i.lv, %i.lq
  %i.lx = urem i64 %i.lq, %i.kz
  %i.ly = udiv i64 %i.lq, %i.kz
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  %i.ma = insertelement <2 x i64> poison, i64 %i.lx, i64 0
  %i.mb = insertelement <2 x i64> %i.ma, i64 %i.ly, i64 1
  %i.mc = shl nuw nsw <2 x i64> %i.mb, splat (i64 2)
  %i.md = load <2 x i64>, ptr %i.lz, align 8, !tbaa !40, !noalias !714 ; 2 uses
  %i.me = xor <2 x i64> %i.md, %i.mc
  %i.mf = add <2 x i64> %i.me, splat (i64 -4)
  %i.mg = lshr <2 x i64> %i.mf, splat (i64 62)
  %i.mh = sub <2 x i64> zeroinitializer, %i.md
  %i.mi = and <2 x i64> %i.mg, %i.mh              ; 2 uses
  %i.mj = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.mi)
  %i.mk = icmp eq i64 %i.mj, 0
  %i.ml = load ptr, ptr %i.lt, align 8, !tbaa !236, !noalias !714 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !195, !noalias !714
  tail call void @stream_wseek(ptr noundef %i.mn, i64 noundef %i.lw), !noalias !714
  br i1 %i.mk, label %bb.w, label %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i71

_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i71: ; preds = %bb.v
  %i.mo = sub nuw nsw <2 x i64> splat (i64 4), %i.mi ; 2 uses
  %i.mp = extractelement <2 x i64> %i.mo, i64 0
  %i.mq = extractelement <2 x i64> %i.mo, i64 1
  %i.mr = tail call noundef i64 @zfp_encode_partial_block_strided_double_2(ptr noundef nonnull %i.ml, ptr noundef %i.ln, i64 noundef %i.mp, i64 noundef %i.mq, i64 noundef 1, i64 noundef 4), !noalias !714 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit72

bb.w:                                             ; preds = %bb.v
  %i.ms = tail call noundef i64 @zfp_encode_block_double_2(ptr noundef nonnull %i.ml, ptr noundef %i.ln), !noalias !714 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit72

_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit72: ; preds = %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i71, %bb.w
  %i.mt = load ptr, ptr %i.mm, align 8, !tbaa !195, !noalias !714
  %i.mu = tail call i64 @stream_flush(ptr noundef %i.mt), !noalias !714 ; 0 uses
  %.pre.i.i.i.i55 = load ptr, ptr %i.q, align 8, !tbaa !247, !noalias !714 ; 2 uses
  %.phi.trans.insert161 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i55, i64 72
  %.pre162 = load i64, ptr %.phi.trans.insert161, align 8, !tbaa !243, !noalias !714
  br label %bb.x

bb.x:                                             ; preds = %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit72, %bb.u
  %i.mv = phi i64 [ %.pre162, %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit72 ], [ %i.kz, %bb.u ] ; 2 uses
  %i.mw = phi ptr [ %.pre.i.i.i.i55, %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit72 ], [ %i.kx, %bb.u ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 48
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 40
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !178, !noalias !714
  %i.na = mul i64 %i.mz, %i.lb
  %i.nb = urem i64 %i.lb, %i.mv
  %i.nc = udiv i64 %i.lb, %i.mv
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 56
  %i.ne = insertelement <2 x i64> poison, i64 %i.nb, i64 0
  %i.nf = insertelement <2 x i64> %i.ne, i64 %i.nc, i64 1
  %i.ng = shl <2 x i64> %i.nf, splat (i64 2)
  %i.nh = load <2 x i64>, ptr %i.nd, align 8, !tbaa !40, !noalias !714 ; 2 uses
  %i.ni = xor <2 x i64> %i.nh, %i.ng
  %i.nj = add <2 x i64> %i.ni, splat (i64 -4)
  %i.nk = lshr <2 x i64> %i.nj, splat (i64 62)
  %i.nl = sub <2 x i64> zeroinitializer, %i.nh
  %i.nm = and <2 x i64> %i.nk, %i.nl              ; 2 uses
  %i.nn = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.nm)
  %i.no = icmp eq i64 %i.nn, 0
  %i.np = load ptr, ptr %i.mx, align 8, !tbaa !236, !noalias !714 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !195, !noalias !714
  tail call void @stream_rseek(ptr noundef %i.nr, i64 noundef %i.na), !noalias !714
  br i1 %i.no, label %bb.y, label %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i69

_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i69: ; preds = %bb.x
  %i.ns = sub nuw nsw <2 x i64> splat (i64 4), %i.nm ; 2 uses
  %i.nt = extractelement <2 x i64> %i.ns, i64 0
  %i.nu = extractelement <2 x i64> %i.ns, i64 1
  %i.nv = tail call noundef i64 @zfp_decode_partial_block_strided_double_2(ptr noundef nonnull %i.np, ptr noundef %i.ln, i64 noundef %i.nt, i64 noundef %i.nu, i64 noundef 1, i64 noundef 4), !noalias !714 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit70

bb.y:                                             ; preds = %bb.x
  %i.nw = tail call noundef i64 @zfp_decode_block_double_2(ptr noundef nonnull %i.np, ptr noundef %i.ln), !noalias !714 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit70

_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit70: ; preds = %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i69, %bb.y
  %i.nx = load ptr, ptr %i.nq, align 8, !tbaa !195, !noalias !714
  %i.ny = tail call i64 @stream_align(ptr noundef %i.nx), !noalias !714 ; 0 uses
  br label %_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEmIEd.exit56

_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEmIEd.exit56: ; preds = %_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit48, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit70
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.hf
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.kt ; 2 uses
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !49, !noalias !714
  %i.oc = fsub double %i.ob, %i.kw
  store double %i.oc, ptr %i.oa, align 8, !tbaa !49, !noalias !714
  %i.od = add i32 %.035139, 1                     ; 2 uses
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = load i64, ptr %i.o, align 8, !tbaa !126 ; 2 uses
  %i.og = icmp ugt i64 %i.of, %i.oe
  br i1 %i.og, label %bb.n, label %._crit_edge141.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge145
  %i.oh = phi i64 [ %i.hg, %.preheader.lr.ph ], [ %i.on, %._crit_edge145 ]
  %i.oi = phi i64 [ %.pre164, %.preheader.lr.ph ], [ %i.oo, %._crit_edge145 ]
  %i.oj = phi i64 [ 0, %.preheader.lr.ph ], [ %i.oq, %._crit_edge145 ] ; 3 uses
  %.034146 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.op, %._crit_edge145 ]
  %.not153 = icmp eq i64 %i.oi, 1
  br i1 %.not153, label %._crit_edge145, label %.lr.ph144

.lr.ph144:                                        ; preds = %.preheader
  %i.ok = lshr i64 %i.oj, 2
  %i.ol = shl nuw nsw i64 %i.oj, 2
  %i.om = and i64 %i.ol, 12
  br label %bb.z

._crit_edge147:                                   ; preds = %._crit_edge145, %.preheader135, %.preheader133
  ret void

._crit_edge145.loopexit:                          ; preds = %_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEaSERKSA_.exit
  %.pre182 = load i64, ptr %i.a, align 8, !tbaa !138
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit, %.preheader
  %i.on = phi i64 [ %.pre182, %._crit_edge145.loopexit ], [ %i.oh, %.preheader ] ; 2 uses
  %i.oo = phi i64 [ %i.aab, %._crit_edge145.loopexit ], [ 1, %.preheader ]
  %i.op = add i32 %.034146, 1                     ; 2 uses
  %i.oq = zext i32 %i.op to i64                   ; 2 uses
  %i.or = add i64 %i.on, -1
  %i.os = icmp ugt i64 %i.or, %i.oq
  br i1 %i.os, label %.preheader, label %._crit_edge147

bb.z:                                             ; preds = %.lr.ph144, %_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEaSERKSA_.exit
  %i.ot = phi i64 [ 0, %.lr.ph144 ], [ %i.aaa, %_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEaSERKSA_.exit ] ; 3 uses
  %.0143 = phi i32 [ 0, %.lr.ph144 ], [ %i.zz, %_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEaSERKSA_.exit ]
  %i.ou = load ptr, ptr %i.hj, align 8, !tbaa !247, !nonnull !141, !align !142 ; 7 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 72
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !243 ; 4 uses
  %i.ox = load i32, ptr %i.hi, align 8, !tbaa !244
  %i.oy = and i32 %i.ox, 1
  %i.oz = load ptr, ptr %i.hk, align 8, !tbaa !83 ; 3 uses
  %i.pa = zext nneg i32 %i.oy to i64              ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.pa ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !249 ; 2 uses
  %i.pd = lshr i32 %i.pc, 1                       ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 1
  %i.pf = load ptr, ptr %i.hl, align 8, !tbaa !85 ; 3 uses
  %i.pg = getelementptr inbounds nuw [128 x i8], ptr %i.pf, i64 %i.pa ; 5 uses
  br i1 %i.pe, label %_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i

_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i: ; preds = %bb.z
  store i32 2, ptr %i.pb, align 4, !tbaa !39
  %1 = add nsw i32 %i.pd, -1                      ; 2 uses
  %2 = zext i32 %1 to i64                         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit.i, label %3

3:                                                ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i
  %4 = trunc i32 %i.pc to i1
  br i1 %4, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %3
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ou, i64 48
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !178
  %i.pk = mul i64 %i.pj, %2
  %i.pl = urem i64 %2, %i.ow
  %i.pm = udiv i64 %2, %i.ow
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ou, i64 56
  %i.po = insertelement <2 x i64> poison, i64 %i.pl, i64 0
  %i.pp = insertelement <2 x i64> %i.po, i64 %i.pm, i64 1
  %i.pq = shl nuw nsw <2 x i64> %i.pp, splat (i64 2)
  %i.pr = load <2 x i64>, ptr %i.pn, align 8, !tbaa !40 ; 2 uses
  %i.ps = xor <2 x i64> %i.pr, %i.pq
  %i.pt = add <2 x i64> %i.ps, splat (i64 -4)
  %i.pu = lshr <2 x i64> %i.pt, splat (i64 62)
  %i.pv = sub <2 x i64> zeroinitializer, %i.pr
  %i.pw = and <2 x i64> %i.pu, %i.pv              ; 2 uses
  %i.px = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.pw)
  %i.py = icmp eq i64 %i.px, 0
  %i.pz = load ptr, ptr %i.ph, align 8, !tbaa !236 ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.qb, i64 noundef %i.pk)
  br i1 %i.py, label %bb.ab, label %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i79

_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i79: ; preds = %bb.aa
  %i.qc = sub nuw nsw <2 x i64> splat (i64 4), %i.pw ; 2 uses
  %i.qd = extractelement <2 x i64> %i.qc, i64 0
  %i.qe = extractelement <2 x i64> %i.qc, i64 1
  %i.qf = tail call noundef i64 @zfp_encode_partial_block_strided_double_2(ptr noundef nonnull %i.pz, ptr noundef %i.pg, i64 noundef %i.qd, i64 noundef %i.qe, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit80

bb.ab:                                            ; preds = %bb.aa
  %i.qg = tail call noundef i64 @zfp_encode_block_double_2(ptr noundef nonnull %i.pz, ptr noundef %i.pg) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit80

_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit80: ; preds = %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i79, %bb.ab
  %i.qh = load ptr, ptr %i.qa, align 8, !tbaa !195
  %i.qi = tail call i64 @stream_flush(ptr noundef %i.qh) ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.hj, align 8, !tbaa !247
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit80, %3
  %i.qj = phi ptr [ %.pre.i.i.i.i.i.i, %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit80 ], [ %i.ou, %3 ] ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 48
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 56
  %i.qm = load <2 x i64>, ptr %i.ql, align 8, !tbaa !40 ; 2 uses
  %i.qn = add <2 x i64> %i.qm, splat (i64 -4)
  %i.qo = lshr <2 x i64> %i.qn, splat (i64 62)
  %i.qp = sub <2 x i64> zeroinitializer, %i.qm
  %i.qq = and <2 x i64> %i.qo, %i.qp              ; 2 uses
  %i.qr = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.qq)
  %i.qs = icmp eq i64 %i.qr, 0
  %i.qt = load ptr, ptr %i.qk, align 8, !tbaa !236 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 16 ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.qv, i64 noundef 0)
  br i1 %i.qs, label %bb.ad, label %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i77

_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i77: ; preds = %bb.ac
  %i.qw = sub nuw nsw <2 x i64> splat (i64 4), %i.qq ; 2 uses
  %i.qx = extractelement <2 x i64> %i.qw, i64 0
  %i.qy = extractelement <2 x i64> %i.qw, i64 1
  %i.qz = tail call noundef i64 @zfp_decode_partial_block_strided_double_2(ptr noundef nonnull %i.qt, ptr noundef %i.pg, i64 noundef %i.qx, i64 noundef %i.qy, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit78

bb.ad:                                            ; preds = %bb.ac
  %i.ra = tail call noundef i64 @zfp_decode_block_double_2(ptr noundef nonnull %i.qt, ptr noundef %i.pg) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit78

_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit78: ; preds = %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i77, %bb.ad
  %i.rb = load ptr, ptr %i.qu, align 8, !tbaa !195
  %i.rc = tail call i64 @stream_align(ptr noundef %i.rb) ; 0 uses
  %.pre165 = load ptr, ptr %i.hj, align 8, !tbaa !247 ; 2 uses
  %.phi.trans.insert166 = getelementptr inbounds nuw i8, ptr %.pre165, i64 72
  %.pre167 = load i64, ptr %.phi.trans.insert166, align 8, !tbaa !243
  %.pre168 = load ptr, ptr %i.hk, align 8, !tbaa !83
  %.pre169 = load ptr, ptr %i.hl, align 8, !tbaa !85
  br label %_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit.i

_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit.i: ; preds = %bb.z, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit78, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i
  %5 = phi ptr [ %.pre169, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit78 ], [ %i.pf, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i ], [ %i.pf, %bb.z ] ; 2 uses
  %6 = phi ptr [ %.pre168, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit78 ], [ %i.oz, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i ], [ %i.oz, %bb.z ] ; 2 uses
  %7 = phi i64 [ %.pre167, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit78 ], [ %i.ow, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i ], [ %i.ow, %bb.z ] ; 4 uses
  %8 = phi ptr [ %.pre165, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit78 ], [ %i.ou, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i.i ], [ %i.ou, %bb.z ] ; 5 uses
  %i.rd = load double, ptr %i.pg, align 8, !tbaa !49
  %i.re = lshr i64 %i.ot, 2
  %i.rf = mul i64 %7, %i.ok
  %i.rg = add i64 %i.rf, %i.re                    ; 5 uses
  %i.rh = trunc i64 %i.rg to i32
  %i.ri = add i32 %i.rh, 1                        ; 3 uses
  %i.rj = load i32, ptr %i.hi, align 8, !tbaa !244
  %i.rk = and i32 %i.ri, %i.rj
  %i.rl = zext i32 %i.rk to i64                   ; 2 uses
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.rl ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !249 ; 2 uses
  %i.ro = lshr i32 %i.rn, 1                       ; 2 uses
  %i.rp = icmp eq i32 %i.ro, %i.ri
  %i.rq = getelementptr inbounds nuw [128 x i8], ptr %5, i64 %i.rl ; 5 uses
  br i1 %i.rp, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit.i
  %i.rr = shl i32 %i.ri, 1
  store i32 %i.rr, ptr %i.rm, align 4, !tbaa !39
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i

_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i: ; preds = %bb.ae, %_ZNK3zfp8internal4dim215const_referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEcvdEv.exit.i
  %i.rs = add nsw i32 %i.ro, -1
  %i.rt = zext i32 %i.rs to i64                   ; 4 uses
  %.not.i.i.i.i.i6.i = icmp eq i64 %i.rg, %i.rt
  br i1 %.not.i.i.i.i.i6.i, label %_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IdNS0_5codec4zfp2IdEENS0_5index8implicitEEEEEERKT_SE_SE_.exit, label %bb.af

bb.af:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i
  %i.ru = trunc i32 %i.rn to i1
  br i1 %i.ru, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.rv = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.rw = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !178
  %i.ry = mul i64 %i.rx, %i.rt
  %i.rz = urem i64 %i.rt, %7
  %i.sa = udiv i64 %i.rt, %7
  %i.sb = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.sc = insertelement <2 x i64> poison, i64 %i.rz, i64 0
  %i.sd = insertelement <2 x i64> %i.sc, i64 %i.sa, i64 1
  %i.se = shl nuw nsw <2 x i64> %i.sd, splat (i64 2)
  %i.sf = load <2 x i64>, ptr %i.sb, align 8, !tbaa !40 ; 2 uses
  %i.sg = xor <2 x i64> %i.sf, %i.se
  %i.sh = add <2 x i64> %i.sg, splat (i64 -4)
  %i.si = lshr <2 x i64> %i.sh, splat (i64 62)
  %i.sj = sub <2 x i64> zeroinitializer, %i.sf
  %i.sk = and <2 x i64> %i.si, %i.sj              ; 2 uses
  %i.sl = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.sk)
  %i.sm = icmp eq i64 %i.sl, 0
  %i.sn = load ptr, ptr %i.rv, align 8, !tbaa !236 ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.sp, i64 noundef %i.ry)
  br i1 %i.sm, label %bb.ah, label %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i75

_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i75: ; preds = %bb.ag
  %i.sq = sub nuw nsw <2 x i64> splat (i64 4), %i.sk ; 2 uses
  %i.sr = extractelement <2 x i64> %i.sq, i64 0
  %i.ss = extractelement <2 x i64> %i.sq, i64 1
  %i.st = tail call noundef i64 @zfp_encode_partial_block_strided_double_2(ptr noundef nonnull %i.sn, ptr noundef %i.rq, i64 noundef %i.sr, i64 noundef %i.ss, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit76

bb.ah:                                            ; preds = %bb.ag
  %i.su = tail call noundef i64 @zfp_encode_block_double_2(ptr noundef nonnull %i.sn, ptr noundef %i.rq) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit76

_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit76: ; preds = %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i75, %bb.ah
  %i.sv = load ptr, ptr %i.so, align 8, !tbaa !195
  %i.sw = tail call i64 @stream_flush(ptr noundef %i.sv) ; 0 uses
  %.pre.i.i.i.i.i7.i = load ptr, ptr %i.hj, align 8, !tbaa !247 ; 2 uses
  %.phi.trans.insert170 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i7.i, i64 72
  %.pre171 = load i64, ptr %.phi.trans.insert170, align 8, !tbaa !243
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit76, %bb.af
  %i.sx = phi i64 [ %.pre171, %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit76 ], [ %7, %bb.af ] ; 2 uses
  %i.sy = phi ptr [ %.pre.i.i.i.i.i7.i, %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit76 ], [ %8, %bb.af ] ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 48
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 40
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !178
  %i.tc = mul i64 %i.tb, %i.rg
  %i.td = urem i64 %i.rg, %i.sx
  %i.te = udiv i64 %i.rg, %i.sx
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 56
  %i.tg = insertelement <2 x i64> poison, i64 %i.td, i64 0
  %i.th = insertelement <2 x i64> %i.tg, i64 %i.te, i64 1
  %i.ti = shl <2 x i64> %i.th, splat (i64 2)
  %i.tj = load <2 x i64>, ptr %i.tf, align 8, !tbaa !40 ; 2 uses
  %i.tk = xor <2 x i64> %i.tj, %i.ti
  %i.tl = add <2 x i64> %i.tk, splat (i64 -4)
  %i.tm = lshr <2 x i64> %i.tl, splat (i64 62)
  %i.tn = sub <2 x i64> zeroinitializer, %i.tj
  %i.to = and <2 x i64> %i.tm, %i.tn              ; 2 uses
  %i.tp = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.to)
  %i.tq = icmp eq i64 %i.tp, 0
  %i.tr = load ptr, ptr %i.sz, align 8, !tbaa !236 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.tt, i64 noundef %i.tc)
  br i1 %i.tq, label %bb.aj, label %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i73

_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i73: ; preds = %bb.ai
  %i.tu = sub nuw nsw <2 x i64> splat (i64 4), %i.to ; 2 uses
  %i.tv = extractelement <2 x i64> %i.tu, i64 0
  %i.tw = extractelement <2 x i64> %i.tu, i64 1
  %i.tx = tail call noundef i64 @zfp_decode_partial_block_strided_double_2(ptr noundef nonnull %i.tr, ptr noundef %i.rq, i64 noundef %i.tv, i64 noundef %i.tw, i64 noundef 1, i64 noundef 4) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit74

bb.aj:                                            ; preds = %bb.ai
  %i.ty = tail call noundef i64 @zfp_decode_block_double_2(ptr noundef nonnull %i.tr, ptr noundef %i.rq) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit74

_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit74: ; preds = %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i73, %bb.aj
  %i.tz = load ptr, ptr %i.ts, align 8, !tbaa !195
  %i.ua = tail call i64 @stream_align(ptr noundef %i.tz) ; 0 uses
  %.pre172 = load ptr, ptr %i.hj, align 8, !tbaa !247, !noalias !715
  %.pre173 = load ptr, ptr %i.hk, align 8, !tbaa !83, !noalias !715
  %.pre174 = load ptr, ptr %i.hl, align 8, !tbaa !85, !noalias !715
  br label %_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IdNS0_5codec4zfp2IdEENS0_5index8implicitEEEEEERKT_SE_SE_.exit

_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IdNS0_5codec4zfp2IdEENS0_5index8implicitEEEEEERKT_SE_SE_.exit: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit74
  %i.ub = phi ptr [ %5, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i ], [ %.pre174, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit74 ] ; 2 uses
  %i.uc = phi ptr [ %6, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i ], [ %.pre173, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit74 ] ; 2 uses
  %i.ud = phi ptr [ %8, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i5.i ], [ %.pre172, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit74 ] ; 6 uses
  %i.ue = and i64 %i.ot, 3
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.om
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.ue
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !49
  %i.ui = fcmp olt double %i.rd, %i.uh            ; 2 uses
  %.sroa.speculated101 = select i1 %i.ui, i64 %i.ot, i64 0 ; 2 uses
  %.sroa.speculated = select i1 %i.ui, i64 %i.oj, i64 0 ; 2 uses
  %i.uj = lshr i64 %.sroa.speculated101, 2
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ud, i64 72
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !243, !noalias !715 ; 5 uses
  %i.um = lshr i64 %.sroa.speculated, 2
  %i.un = mul i64 %i.um, %i.ul
  %i.uo = add i64 %i.un, %i.uj                    ; 5 uses
  %i.up = trunc i64 %i.uo to i32
  %i.uq = add i32 %i.up, 1                        ; 3 uses
  %i.ur = load i32, ptr %i.hi, align 8, !tbaa !244, !noalias !715
  %i.us = and i32 %i.uq, %i.ur
  %i.ut = zext i32 %i.us to i64                   ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ut ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !249, !noalias !715 ; 2 uses
  %i.uw = lshr i32 %i.uv, 1                       ; 2 uses
  %i.ux = icmp eq i32 %i.uw, %i.uq
  %i.uy = getelementptr inbounds nuw [128 x i8], ptr %i.ub, i64 %i.ut ; 5 uses
  br i1 %i.ux, label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57, label %bb.ak

bb.ak:                                            ; preds = %_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IdNS0_5codec4zfp2IdEENS0_5index8implicitEEEEEERKT_SE_SE_.exit
  %i.uz = shl i32 %i.uq, 1
  store i32 %i.uz, ptr %i.uu, align 4, !tbaa !39, !noalias !715
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57

_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57: ; preds = %bb.ak, %_ZSt3maxIN3zfp8internal4dim29referenceINS0_6array2IdNS0_5codec4zfp2IdEENS0_5index8implicitEEEEEERKT_SE_SE_.exit
  %i.va = add nsw i32 %i.uw, -1
  %i.vb = zext i32 %i.va to i64                   ; 4 uses
  %.not.i.i.i.i.i58 = icmp eq i64 %i.uo, %i.vb
  br i1 %.not.i.i.i.i.i58, label %_ZNK3zfp8internal4dim212const_handleINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE3getEv.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57
  %i.vc = trunc i32 %i.uv to i1
  br i1 %i.vc, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ud, i64 48
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ud, i64 40
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !178, !noalias !715
  %i.vg = mul i64 %i.vf, %i.vb
  %i.vh = urem i64 %i.vb, %i.ul
  %i.vi = udiv i64 %i.vb, %i.ul
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ud, i64 56
  %i.vk = insertelement <2 x i64> poison, i64 %i.vh, i64 0
  %i.vl = insertelement <2 x i64> %i.vk, i64 %i.vi, i64 1
  %i.vm = shl nuw nsw <2 x i64> %i.vl, splat (i64 2)
  %i.vn = load <2 x i64>, ptr %i.vj, align 8, !tbaa !40, !noalias !715 ; 2 uses
  %i.vo = xor <2 x i64> %i.vn, %i.vm
  %i.vp = add <2 x i64> %i.vo, splat (i64 -4)
  %i.vq = lshr <2 x i64> %i.vp, splat (i64 62)
  %i.vr = sub <2 x i64> zeroinitializer, %i.vn
  %i.vs = and <2 x i64> %i.vq, %i.vr              ; 2 uses
  %i.vt = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.vs)
  %i.vu = icmp eq i64 %i.vt, 0
  %i.vv = load ptr, ptr %i.vd, align 8, !tbaa !236, !noalias !715 ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16 ; 2 uses
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !195, !noalias !715
  tail call void @stream_wseek(ptr noundef %i.vx, i64 noundef %i.vg), !noalias !715
  br i1 %i.vu, label %bb.an, label %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i87

_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i87: ; preds = %bb.am
  %i.vy = sub nuw nsw <2 x i64> splat (i64 4), %i.vs ; 2 uses
  %i.vz = extractelement <2 x i64> %i.vy, i64 0
  %i.wa = extractelement <2 x i64> %i.vy, i64 1
  %i.wb = tail call noundef i64 @zfp_encode_partial_block_strided_double_2(ptr noundef nonnull %i.vv, ptr noundef %i.uy, i64 noundef %i.vz, i64 noundef %i.wa, i64 noundef 1, i64 noundef 4), !noalias !715 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit88

bb.an:                                            ; preds = %bb.am
  %i.wc = tail call noundef i64 @zfp_encode_block_double_2(ptr noundef nonnull %i.vv, ptr noundef %i.uy), !noalias !715 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit88

_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit88: ; preds = %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i87, %bb.an
  %i.wd = load ptr, ptr %i.vw, align 8, !tbaa !195, !noalias !715
  %i.we = tail call i64 @stream_flush(ptr noundef %i.wd), !noalias !715 ; 0 uses
  %.pre.i.i.i.i.i60 = load ptr, ptr %i.hj, align 8, !tbaa !247, !noalias !715 ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i60, i64 72
  %.pre176 = load i64, ptr %.phi.trans.insert175, align 8, !tbaa !243, !noalias !715
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit88, %bb.al
  %i.wf = phi i64 [ %.pre176, %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit88 ], [ %i.ul, %bb.al ] ; 2 uses
  %i.wg = phi ptr [ %.pre.i.i.i.i.i60, %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit88 ], [ %i.ud, %bb.al ] ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 48
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 40
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !178, !noalias !715
  %i.wk = mul i64 %i.wj, %i.uo
  %i.wl = urem i64 %i.uo, %i.wf
  %i.wm = udiv i64 %i.uo, %i.wf
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wg, i64 56
  %i.wo = insertelement <2 x i64> poison, i64 %i.wl, i64 0
  %i.wp = insertelement <2 x i64> %i.wo, i64 %i.wm, i64 1
  %i.wq = shl <2 x i64> %i.wp, splat (i64 2)
  %i.wr = load <2 x i64>, ptr %i.wn, align 8, !tbaa !40, !noalias !715 ; 2 uses
  %i.ws = xor <2 x i64> %i.wr, %i.wq
  %i.wt = add <2 x i64> %i.ws, splat (i64 -4)
  %i.wu = lshr <2 x i64> %i.wt, splat (i64 62)
  %i.wv = sub <2 x i64> zeroinitializer, %i.wr
  %i.ww = and <2 x i64> %i.wu, %i.wv              ; 2 uses
  %i.wx = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.ww)
  %i.wy = icmp eq i64 %i.wx, 0
  %i.wz = load ptr, ptr %i.wh, align 8, !tbaa !236, !noalias !715 ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !195, !noalias !715
  tail call void @stream_rseek(ptr noundef %i.xb, i64 noundef %i.wk), !noalias !715
  br i1 %i.wy, label %bb.ap, label %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i85

_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i85: ; preds = %bb.ao
  %i.xc = sub nuw nsw <2 x i64> splat (i64 4), %i.ww ; 2 uses
  %i.xd = extractelement <2 x i64> %i.xc, i64 0
  %i.xe = extractelement <2 x i64> %i.xc, i64 1
  %i.xf = tail call noundef i64 @zfp_decode_partial_block_strided_double_2(ptr noundef nonnull %i.wz, ptr noundef %i.uy, i64 noundef %i.xd, i64 noundef %i.xe, i64 noundef 1, i64 noundef 4), !noalias !715 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit86

bb.ap:                                            ; preds = %bb.ao
  %i.xg = tail call noundef i64 @zfp_decode_block_double_2(ptr noundef nonnull %i.wz, ptr noundef %i.uy), !noalias !715 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit86

_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit86: ; preds = %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i85, %bb.ap
  %i.xh = load ptr, ptr %i.xa, align 8, !tbaa !195, !noalias !715
  %i.xi = tail call i64 @stream_align(ptr noundef %i.xh), !noalias !715 ; 0 uses
  %.pre177 = load ptr, ptr %i.hj, align 8, !tbaa !247, !noalias !715 ; 2 uses
  %.phi.trans.insert178 = getelementptr inbounds nuw i8, ptr %.pre177, i64 72
  %.pre179 = load i64, ptr %.phi.trans.insert178, align 8, !tbaa !243, !noalias !715
  %.pre180 = load ptr, ptr %i.hk, align 8, !tbaa !83, !noalias !715
  %.pre181 = load ptr, ptr %i.hl, align 8, !tbaa !85, !noalias !715
  br label %_ZNK3zfp8internal4dim212const_handleINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE3getEv.exit.i

_ZNK3zfp8internal4dim212const_handleINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE3getEv.exit.i: ; preds = %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit86, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57
  %i.xj = phi ptr [ %.pre181, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit86 ], [ %i.ub, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57 ]
  %i.xk = phi ptr [ %.pre180, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit86 ], [ %i.uc, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57 ]
  %i.xl = phi i64 [ %.pre179, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit86 ], [ %i.ul, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57 ] ; 2 uses
  %i.xm = phi ptr [ %.pre177, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit86 ], [ %i.ud, %_ZN3zfp8internal5CacheINS0_11BlockCache2IdNS0_11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i57 ] ; 4 uses
  %i.xn = and i64 %.sroa.speculated101, 3
  %i.xo = shl nuw nsw i64 %.sroa.speculated, 2
  %i.xp = and i64 %i.xo, 12
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %i.xp
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.xn
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !49, !noalias !715
  %i.xt = load i32, ptr %i.hi, align 8, !tbaa !244, !noalias !715
  %i.xu = and i32 %i.xt, 1
  %i.xv = zext nneg i32 %i.xu to i64              ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.xv ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !249, !noalias !715 ; 2 uses
  %i.xy = lshr i32 %i.xx, 1                       ; 2 uses
  %i.xz = getelementptr inbounds nuw [128 x i8], ptr %i.xj, i64 %i.xv ; 5 uses
  store i32 3, ptr %i.xw, align 4, !tbaa !39, !noalias !715
  %i.ya = add nsw i32 %i.xy, -1                   ; 2 uses
  %i.yb = zext i32 %i.ya to i64                   ; 3 uses
  %.not.i.i.i.i2.i = icmp eq i32 %i.ya, 0
  br i1 %.not.i.i.i.i2.i, label %_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEaSERKSA_.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNK3zfp8internal4dim212const_handleINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE3getEv.exit.i
  %9 = icmp eq i32 %i.xy, 1
  %i.yc = trunc i32 %i.xx to i1
  %10 = or i1 %9, %i.yc
  br i1 %10, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xm, i64 40
  %i.yf = load i64, ptr %i.ye, align 8, !tbaa !178, !noalias !715
  %i.yg = mul i64 %i.yf, %i.yb
  %i.yh = urem i64 %i.yb, %i.xl
  %i.yi = udiv i64 %i.yb, %i.xl
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xm, i64 56
  %i.yk = insertelement <2 x i64> poison, i64 %i.yh, i64 0
  %i.yl = insertelement <2 x i64> %i.yk, i64 %i.yi, i64 1
  %i.ym = shl nuw nsw <2 x i64> %i.yl, splat (i64 2)
  %i.yn = load <2 x i64>, ptr %i.yj, align 8, !tbaa !40, !noalias !715 ; 2 uses
  %i.yo = xor <2 x i64> %i.yn, %i.ym
  %i.yp = add <2 x i64> %i.yo, splat (i64 -4)
  %i.yq = lshr <2 x i64> %i.yp, splat (i64 62)
  %i.yr = sub <2 x i64> zeroinitializer, %i.yn
  %i.ys = and <2 x i64> %i.yq, %i.yr              ; 2 uses
  %i.yt = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.ys)
  %i.yu = icmp eq i64 %i.yt, 0
  %i.yv = load ptr, ptr %i.yd, align 8, !tbaa !236, !noalias !715 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16 ; 2 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !195, !noalias !715
  tail call void @stream_wseek(ptr noundef %i.yx, i64 noundef %i.yg), !noalias !715
  br i1 %i.yu, label %bb.as, label %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i83

_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i83: ; preds = %bb.ar
  %i.yy = sub nuw nsw <2 x i64> splat (i64 4), %i.ys ; 2 uses
  %i.yz = extractelement <2 x i64> %i.yy, i64 0
  %i.za = extractelement <2 x i64> %i.yy, i64 1
  %i.zb = tail call noundef i64 @zfp_encode_partial_block_strided_double_2(ptr noundef nonnull %i.yv, ptr noundef %i.xz, i64 noundef %i.yz, i64 noundef %i.za, i64 noundef 1, i64 noundef 4), !noalias !715 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit84

bb.as:                                            ; preds = %bb.ar
  %i.zc = tail call noundef i64 @zfp_encode_block_double_2(ptr noundef nonnull %i.yv, ptr noundef %i.xz), !noalias !715 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit84

_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit84: ; preds = %_ZNK3zfp5codec4zfp2IdE20encode_block_stridedEmjPKdll.exit.i.i83, %bb.as
  %i.zd = load ptr, ptr %i.yw, align 8, !tbaa !195, !noalias !715
  %i.ze = tail call i64 @stream_flush(ptr noundef %i.zd), !noalias !715 ; 0 uses
  %.pre.i.i.i.i3.i = load ptr, ptr %i.hj, align 8, !tbaa !247, !noalias !715
  br label %bb.at

bb.at:                                            ; preds = %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit84, %bb.aq
  %i.zf = phi ptr [ %.pre.i.i.i.i3.i, %_ZN3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6encodeEmPKd.exit84 ], [ %i.xm, %bb.aq ] ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 48
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 56
  %i.zi = load <2 x i64>, ptr %i.zh, align 8, !tbaa !40, !noalias !715 ; 2 uses
  %i.zj = add <2 x i64> %i.zi, splat (i64 -4)
  %i.zk = lshr <2 x i64> %i.zj, splat (i64 62)
  %i.zl = sub <2 x i64> zeroinitializer, %i.zi
  %i.zm = and <2 x i64> %i.zk, %i.zl              ; 2 uses
  %i.zn = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.zm)
  %i.zo = icmp eq i64 %i.zn, 0
  %i.zp = load ptr, ptr %i.zg, align 8, !tbaa !236, !noalias !715 ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !195, !noalias !715
  tail call void @stream_rseek(ptr noundef %i.zr, i64 noundef 0), !noalias !715
  br i1 %i.zo, label %bb.au, label %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i81

_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i81: ; preds = %bb.at
  %i.zs = sub nuw nsw <2 x i64> splat (i64 4), %i.zm ; 2 uses
  %i.zt = extractelement <2 x i64> %i.zs, i64 0
  %i.zu = extractelement <2 x i64> %i.zs, i64 1
  %i.zv = tail call noundef i64 @zfp_decode_partial_block_strided_double_2(ptr noundef nonnull %i.zp, ptr noundef %i.xz, i64 noundef %i.zt, i64 noundef %i.zu, i64 noundef 1, i64 noundef 4), !noalias !715 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit82

bb.au:                                            ; preds = %bb.at
  %i.zw = tail call noundef i64 @zfp_decode_block_double_2(ptr noundef nonnull %i.zp, ptr noundef %i.xz), !noalias !715 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit82

_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit82: ; preds = %_ZNK3zfp5codec4zfp2IdE20decode_block_stridedEmjPdll.exit.i.i81, %bb.au
  %i.zx = load ptr, ptr %i.zq, align 8, !tbaa !195, !noalias !715
  %i.zy = tail call i64 @stream_align(ptr noundef %i.zx), !noalias !715 ; 0 uses
  br label %_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEaSERKSA_.exit

_ZN3zfp8internal4dim29referenceINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEEaSERKSA_.exit: ; preds = %_ZNK3zfp8internal4dim212const_handleINS_6array2IdNS_5codec4zfp2IdEENS_5index8implicitEEEE3getEv.exit.i, %_ZNK3zfp8internal11BlockStore2IdNS_5codec4zfp2IdEENS_5index8implicitEE6decodeEmPd.exit82
  store double %i.xs, ptr %i.xz, align 8, !tbaa !49, !noalias !715
  %i.zz = add i32 %.0143, 1                       ; 2 uses
  %i.aaa = zext i32 %i.zz to i64                  ; 2 uses
  %i.aab = load i64, ptr %i.hh, align 8, !tbaa !126 ; 2 uses
  %i.aac = add i64 %i.aab, -1
  %i.aad = icmp ugt i64 %i.aac, %i.aaa
  br i1 %i.aad, label %bb.z, label %._crit_edge145.loopexit
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp6array3IdNS_5codec4zfp3IdEENS_5index8implicitEE3setEPKd(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [64 x double], align 16           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !260  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i64, ptr %i.d, align 8, !tbaa !259  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !258  ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !126  ; 22 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !138  ; 3 uses
  %i.l = mul i64 %i.k, %i.i                       ; 2 uses
  %.not56 = icmp eq i64 %i.g, 0
  br i1 %.not56, label %.loopexit, label %.preheader34.lr.ph

.preheader34.lr.ph:                               ; preds = %bb.b
  %.not57 = icmp eq i64 %i.e, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.q = add i64 %i.k, -4
  %i.r = mul i64 %i.q, %i.i                       ; 3 uses
  %i.s = shl nsw i64 %i.i, 2
  %.not58 = icmp eq i64 %i.c, 0
  %or.cond = select i1 %.not57, i1 true, i1 %.not58
  br i1 %or.cond, label %.loopexit, label %.preheader34.us

.preheader34.us:                                  ; preds = %.preheader34.lr.ph, %._crit_edge46.split.us.us
  %.02652.us = phi i64 [ %i.nt, %._crit_edge46.split.us.us ], [ 0, %.preheader34.lr.ph ]
  %.02751.us = phi i64 [ %i.t, %._crit_edge46.split.us.us ], [ 0, %.preheader34.lr.ph ]
  %.02850.us = phi ptr [ %i.nx, %._crit_edge46.split.us.us ], [ %1, %.preheader34.lr.ph ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader34.us
  %.02545.us.us = phi i64 [ 0, %.preheader34.us ], [ %i.np, %._crit_edge.us.us ]
  %.144.us.us = phi i64 [ %.02751.us, %.preheader34.us ], [ %i.t, %._crit_edge.us.us ] ; 2 uses
  %.12943.us.us = phi ptr [ %.02850.us, %.preheader34.us ], [ %i.ns, %._crit_edge.us.us ]
  %i.t = add i64 %i.c, %.144.us.us                ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9put_blockEmPKdlll.exit.us.us, %.preheader.us.us
  %.240.us.us = phi i64 [ %.144.us.us, %.preheader.us.us ], [ %i.u, %_ZNK3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9put_blockEmPKdlll.exit.us.us ] ; 7 uses
  %.23038.us.us = phi ptr [ %.12943.us.us, %.preheader.us.us ], [ %i.no, %_ZNK3zfp8internal11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9put_blockEmPKdlll.exit.us.us ] ; 9 uses
  %i.u = add i64 %.240.us.us, 1                   ; 2 uses
  %i.v = trunc i64 %.240.us.us to i32
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = load i32, ptr %i.m, align 8, !tbaa !261
  %i.y = and i32 %i.x, %i.w
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !89
  %i.aa = zext i32 %i.y to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !266 ; 2 uses
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = icmp eq i32 %i.ad, %i.w
  br i1 %i.ae, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us, label %._ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us_crit_edge

._ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !264
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us: ; preds = %bb.c
  %i.af = or i32 %i.ac, 1
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !266
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !91  ; 2 uses
  %i.ah = getelementptr inbounds nuw [512 x i8], ptr %i.ag, i64 %i.aa ; 65 uses
  %.not.i.us.us = icmp eq ptr %i.ag, null
  %.pre71 = load ptr, ptr %i.p, align 8, !tbaa !264 ; 6 uses
  br i1 %.not.i.us.us, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us, label %bb.d

bb.d:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre71, i64 80
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !260 ; 2 uses
  %i.ak = urem i64 %.240.us.us, %i.aj
  %i.al = shl i64 %i.ak, 2
  %i.am = udiv i64 %.240.us.us, %i.aj             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre71, i64 88
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !259 ; 2 uses
  %i.ap = urem i64 %i.am, %i.ao
  %i.aq = shl i64 %i.ap, 2
  %i.ar = udiv i64 %i.am, %i.ao
  %i.as = shl i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.pre71, i64 56
  %i.au = load i64, ptr %i.at, align 8, !tbaa !257 ; 2 uses
  %i.av = xor i64 %i.au, %i.al
  %i.aw = add i64 %i.av, -4
  %i.ax = lshr i64 %i.aw, 62
  %i.ay = sub i64 0, %i.au
  %i.az = and i64 %i.ax, %i.ay                    ; 18 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre71, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !256 ; 2 uses
  %i.bc = xor i64 %i.bb, %i.aq
  %i.bd = add i64 %i.bc, -4
  %i.be = lshr i64 %i.bd, 62
  %i.bf = sub i64 0, %i.bb
  %i.bg = and i64 %i.be, %i.bf                    ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre71, i64 72
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !255 ; 2 uses
  %i.bj = xor i64 %i.bi, %i.as
  %i.bk = add i64 %i.bj, -4
  %i.bl = lshr i64 %i.bk, 62
  %i.bm = sub i64 0, %i.bi
  %i.bn = and i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = or i64 %i.bg, %i.az
  %i.bp = or i64 %i.bo, %i.bn
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.w, label %bb.e
end_hunk_7
begin_hunk_8_@_Z13update_array3IdEvRN3zfp6array3IT_NS0_5codec4zfp3IS2_EENS0_5index8implicitEEE:bb.a
  %i.agg = phi i64 [ %i.aou, %_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE3setEd.exit ], [ 0, %.preheader ]
  %.0231 = phi i32 [ %i.aot, %_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE3setEd.exit ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store ptr %0, ptr %1, align 8, !tbaa !288, !alias.scope !745
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vj, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8, !tbaa !288, !alias.scope !746
  store i64 %i.agg, ptr %i.vk, align 8, !tbaa !289, !alias.scope !746
  store i64 %i.afs, ptr %i.vl, align 8, !tbaa !290, !alias.scope !746
  store i64 %i.afp, ptr %i.vm, align 8, !tbaa !291, !alias.scope !746
  %i.agh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZSt3maxIN3zfp8internal4dim39referenceINS0_6array3IdNS0_5codec4zfp3IdEENS0_5index8implicitEEEEEERKT_SE_SE_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 4 uses
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !288, !noalias !747 ; 4 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !289, !noalias !747 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !290, !noalias !747 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !291, !noalias !747 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agi, i64 152
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agi, i64 176 ; 2 uses
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !264, !noalias !747, !nonnull !141, !align !142 ; 7 uses
  %i.ags = lshr i64 %i.agk, 2
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agr, i64 80
  %i.agu = load i64, ptr %i.agt, align 8, !tbaa !260, !noalias !747 ; 4 uses
  %i.agv = lshr i64 %i.agm, 2
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 88
  %i.agx = load i64, ptr %i.agw, align 8, !tbaa !259, !noalias !747 ; 4 uses
  %i.agy = lshr i64 %i.ago, 2
  %i.agz = mul i64 %i.agx, %i.agy
  %i.aha = add i64 %i.agz, %i.agv
  %i.ahb = mul i64 %i.aha, %i.agu
  %i.ahc = add i64 %i.ahb, %i.ags                 ; 5 uses
  %i.ahd = trunc i64 %i.ahc to i32
  %i.ahe = add i32 %i.ahd, 1                      ; 3 uses
  %i.ahf = load i32, ptr %i.agp, align 8, !tbaa !261, !noalias !747
  %i.ahg = and i32 %i.ahe, %i.ahf
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agi, i64 160
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !89, !noalias !747
  %i.ahj = zext i32 %i.ahg to i64                 ; 2 uses
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.ahi, i64 %i.ahj ; 2 uses
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !266, !noalias !747 ; 2 uses
  %i.ahm = lshr i32 %i.ahl, 1                     ; 2 uses
  %i.ahn = icmp eq i32 %i.ahm, %i.ahe
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agi, i64 168
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !91, !noalias !747
  %i.ahq = getelementptr inbounds nuw [512 x i8], ptr %i.ahp, i64 %i.ahj ; 5 uses
  br i1 %i.ahn, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118, label %bb.al

bb.al:                                            ; preds = %.lr.ph232
  %i.ahr = shl i32 %i.ahe, 1
  store i32 %i.ahr, ptr %i.ahk, align 4, !tbaa !39, !noalias !747
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118: ; preds = %bb.al, %.lr.ph232
  %i.ahs = add nsw i32 %i.ahm, -1
  %i.aht = zext i32 %i.ahs to i64                 ; 4 uses
  %.not.i.i.i.i.i119 = icmp eq i64 %i.ahc, %i.aht
  br i1 %.not.i.i.i.i.i119, label %_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEaSERKSA_.exit, label %bb.am

bb.am:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118
  %i.ahu = trunc i32 %i.ahl to i1
  br i1 %i.ahu, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agr, i64 48
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agr, i64 40
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !178, !noalias !747
  %i.ahy = mul i64 %i.ahx, %i.aht
  %i.ahz = urem i64 %i.aht, %i.agu
  %i.aia = shl nuw nsw i64 %i.ahz, 2
  %i.aib = udiv i64 %i.aht, %i.agu                ; 2 uses
  %i.aic = urem i64 %i.aib, %i.agx
  %i.aid = udiv i64 %i.aib, %i.agx
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agr, i64 56
  %i.aif = load i64, ptr %i.aie, align 8, !tbaa !257, !noalias !747 ; 2 uses
  %i.aig = xor i64 %i.aif, %i.aia
  %i.aih = add i64 %i.aig, -4
  %i.aii = lshr i64 %i.aih, 62
  %i.aij = sub i64 0, %i.aif
  %i.aik = and i64 %i.aii, %i.aij                 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.agr, i64 64
  %i.aim = insertelement <2 x i64> poison, i64 %i.aic, i64 0
  %i.ain = insertelement <2 x i64> %i.aim, i64 %i.aid, i64 1
  %i.aio = shl nuw nsw <2 x i64> %i.ain, splat (i64 2)
  %i.aip = load <2 x i64>, ptr %i.ail, align 8, !tbaa !40, !noalias !747 ; 2 uses
  %i.aiq = xor <2 x i64> %i.aip, %i.aio
  %i.air = add <2 x i64> %i.aiq, splat (i64 -4)
  %i.ais = lshr <2 x i64> %i.air, splat (i64 62)
  %i.ait = sub <2 x i64> zeroinitializer, %i.aip
  %i.aiu = and <2 x i64> %i.ais, %i.ait           ; 2 uses
  %i.aiv = extractelement <2 x i64> %i.aiu, i64 0 ; 2 uses
  %i.aiw = or i64 %i.aiv, %i.aik
  %i.aix = extractelement <2 x i64> %i.aiu, i64 1 ; 2 uses
  %i.aiy = or i64 %i.aiw, %i.aix
  %i.aiz = icmp eq i64 %i.aiy, 0
  %i.aja = load ptr, ptr %i.ahv, align 8, !tbaa !251, !noalias !747 ; 3 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 16 ; 2 uses
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !195, !noalias !747
  call void @stream_wseek(ptr noundef %i.ajc, i64 noundef %i.ahy), !noalias !747
  br i1 %i.aiz, label %bb.ao, label %_ZNK3zfp5codec4zfp3IdE20encode_block_stridedEmjPKdlll.exit.i.i149

_ZNK3zfp5codec4zfp3IdE20encode_block_stridedEmjPKdlll.exit.i.i149: ; preds = %bb.an
  %i.ajd = sub nuw nsw i64 4, %i.aik
  %i.aje = sub nuw nsw i64 4, %i.aiv
  %i.ajf = sub nuw nsw i64 4, %i.aix
  %i.ajg = call noundef i64 @zfp_encode_partial_block_strided_double_3(ptr noundef nonnull %i.aja, ptr noundef %i.ahq, i64 noundef %i.ajd, i64 noundef %i.aje, i64 noundef %i.ajf, i64 noundef 1, i64 noundef 4, i64 noundef 16), !noalias !747 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit150

bb.ao:                                            ; preds = %bb.an
  %i.ajh = call noundef i64 @zfp_encode_block_double_3(ptr noundef nonnull %i.aja, ptr noundef %i.ahq), !noalias !747 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit150

_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit150: ; preds = %_ZNK3zfp5codec4zfp3IdE20encode_block_stridedEmjPKdlll.exit.i.i149, %bb.ao
  %i.aji = load ptr, ptr %i.ajb, align 8, !tbaa !195, !noalias !747
  %i.ajj = call i64 @stream_flush(ptr noundef %i.aji), !noalias !747 ; 0 uses
  %.pre.i.i.i.i.i121 = load ptr, ptr %i.agq, align 8, !tbaa !264, !noalias !747 ; 3 uses
  %.phi.trans.insert289 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i121, i64 80
  %.pre290 = load i64, ptr %.phi.trans.insert289, align 8, !tbaa !260, !noalias !747
  %.phi.trans.insert291 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i121, i64 88
  %.pre292 = load i64, ptr %.phi.trans.insert291, align 8, !tbaa !259, !noalias !747
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit150, %bb.am
  %i.ajk = phi i64 [ %.pre292, %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit150 ], [ %i.agx, %bb.am ] ; 2 uses
  %i.ajl = phi i64 [ %.pre290, %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit150 ], [ %i.agu, %bb.am ] ; 2 uses
  %i.ajm = phi ptr [ %.pre.i.i.i.i.i121, %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit150 ], [ %i.agr, %bb.am ] ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 48
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !178, !noalias !747
  %i.ajq = mul i64 %i.ajp, %i.ahc
  %i.ajr = urem i64 %i.ahc, %i.ajl
  %i.ajs = shl i64 %i.ajr, 2
  %i.ajt = udiv i64 %i.ahc, %i.ajl                ; 2 uses
  %i.aju = urem i64 %i.ajt, %i.ajk
  %i.ajv = udiv i64 %i.ajt, %i.ajk
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajm, i64 56
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !257, !noalias !747 ; 2 uses
  %i.ajy = xor i64 %i.ajx, %i.ajs
  %i.ajz = add i64 %i.ajy, -4
  %i.aka = lshr i64 %i.ajz, 62
  %i.akb = sub i64 0, %i.ajx
  %i.akc = and i64 %i.aka, %i.akb                 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajm, i64 64
  %i.ake = insertelement <2 x i64> poison, i64 %i.aju, i64 0
  %i.akf = insertelement <2 x i64> %i.ake, i64 %i.ajv, i64 1
  %i.akg = shl <2 x i64> %i.akf, splat (i64 2)
  %i.akh = load <2 x i64>, ptr %i.akd, align 8, !tbaa !40, !noalias !747 ; 2 uses
  %i.aki = xor <2 x i64> %i.akh, %i.akg
  %i.akj = add <2 x i64> %i.aki, splat (i64 -4)
  %i.akk = lshr <2 x i64> %i.akj, splat (i64 62)
  %i.akl = sub <2 x i64> zeroinitializer, %i.akh
  %i.akm = and <2 x i64> %i.akk, %i.akl           ; 2 uses
  %i.akn = extractelement <2 x i64> %i.akm, i64 0 ; 2 uses
  %i.ako = or i64 %i.akn, %i.akc
  %i.akp = extractelement <2 x i64> %i.akm, i64 1 ; 2 uses
  %i.akq = or i64 %i.ako, %i.akp
  %i.akr = icmp eq i64 %i.akq, 0
  %i.aks = load ptr, ptr %i.ajn, align 8, !tbaa !251, !noalias !747 ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 16 ; 2 uses
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !195, !noalias !747
  call void @stream_rseek(ptr noundef %i.aku, i64 noundef %i.ajq), !noalias !747
  br i1 %i.akr, label %bb.aq, label %_ZNK3zfp5codec4zfp3IdE20decode_block_stridedEmjPdlll.exit.i.i147

_ZNK3zfp5codec4zfp3IdE20decode_block_stridedEmjPdlll.exit.i.i147: ; preds = %bb.ap
  %i.akv = sub nuw nsw i64 4, %i.akc
  %i.akw = sub nuw nsw i64 4, %i.akn
  %i.akx = sub nuw nsw i64 4, %i.akp
  %i.aky = call noundef i64 @zfp_decode_partial_block_strided_double_3(ptr noundef nonnull %i.aks, ptr noundef %i.ahq, i64 noundef %i.akv, i64 noundef %i.akw, i64 noundef %i.akx, i64 noundef 1, i64 noundef 4, i64 noundef 16), !noalias !747 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd.exit148

bb.aq:                                            ; preds = %bb.ap
  %i.akz = call noundef i64 @zfp_decode_block_double_3(ptr noundef nonnull %i.aks, ptr noundef %i.ahq), !noalias !747 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd.exit148

_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd.exit148: ; preds = %_ZNK3zfp5codec4zfp3IdE20decode_block_stridedEmjPdlll.exit.i.i147, %bb.aq
  %i.ala = load ptr, ptr %i.akt, align 8, !tbaa !195, !noalias !747
  %i.alb = call i64 @stream_align(ptr noundef %i.ala), !noalias !747 ; 0 uses
  br label %_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEaSERKSA_.exit

_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEaSERKSA_.exit: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i118, %_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd.exit148
  %i.alc = and i64 %i.agk, 3
  %i.ald = and i64 %i.agm, 3
  %i.ale = shl i64 %i.ago, 2
  %i.alf = and i64 %i.ale, 12
  %i.alg = or disjoint i64 %i.alf, %i.ald
  %.idx.i.i.i.i.i120 = shl nuw nsw i64 %i.alg, 5
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %.idx.i.i.i.i.i120
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.alh, i64 %i.alc
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !49, !noalias !747
  %i.alk = load ptr, ptr %i.vo, align 8, !tbaa !264, !noalias !747, !nonnull !141, !align !142 ; 7 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 80
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !260, !noalias !747 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alk, i64 88
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !259, !noalias !747 ; 2 uses
  %i.alp = load i32, ptr %i.vn, align 8, !tbaa !261, !noalias !747
  %i.alq = and i32 %i.alp, 1
  %i.alr = load ptr, ptr %i.vp, align 8, !tbaa !89, !noalias !747
  %i.als = zext nneg i32 %i.alq to i64            ; 2 uses
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.alr, i64 %i.als ; 2 uses
  %i.alu = load i32, ptr %i.alt, align 4, !tbaa !266, !noalias !747 ; 2 uses
  %i.alv = lshr i32 %i.alu, 1                     ; 2 uses
  %i.alw = load ptr, ptr %i.vq, align 8, !tbaa !91, !noalias !747
  %i.alx = getelementptr inbounds nuw [512 x i8], ptr %i.alw, i64 %i.als ; 5 uses
  store i32 3, ptr %i.alt, align 4, !tbaa !39, !noalias !747
  %i.aly = add nsw i32 %i.alv, -1                 ; 2 uses
  %i.alz = zext i32 %i.aly to i64                 ; 3 uses
  %.not.i.i.i.i144 = icmp eq i32 %i.aly, 0
  br i1 %.not.i.i.i.i144, label %_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE3setEd.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEaSERKSA_.exit
  %3 = icmp eq i32 %i.alv, 1
  %i.ama = trunc i32 %i.alu to i1
  %4 = or i1 %3, %i.ama
  br i1 %4, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alk, i64 48
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alk, i64 40
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !178, !noalias !747
  %i.ame = mul i64 %i.amd, %i.alz
  %i.amf = urem i64 %i.alz, %i.alm
  %i.amg = shl nuw nsw i64 %i.amf, 2
  %i.amh = udiv i64 %i.alz, %i.alm                ; 2 uses
  %i.ami = urem i64 %i.amh, %i.alo
  %i.amj = udiv i64 %i.amh, %i.alo
  %i.amk = getelementptr inbounds nuw i8, ptr %i.alk, i64 56
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !257, !noalias !747 ; 2 uses
  %i.amm = xor i64 %i.aml, %i.amg
  %i.amn = add i64 %i.amm, -4
  %i.amo = lshr i64 %i.amn, 62
  %i.amp = sub i64 0, %i.aml
  %i.amq = and i64 %i.amo, %i.amp                 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.alk, i64 64
  %i.ams = insertelement <2 x i64> poison, i64 %i.ami, i64 0
  %i.amt = insertelement <2 x i64> %i.ams, i64 %i.amj, i64 1
  %i.amu = shl nuw nsw <2 x i64> %i.amt, splat (i64 2)
  %i.amv = load <2 x i64>, ptr %i.amr, align 8, !tbaa !40, !noalias !747 ; 2 uses
  %i.amw = xor <2 x i64> %i.amv, %i.amu
  %i.amx = add <2 x i64> %i.amw, splat (i64 -4)
  %i.amy = lshr <2 x i64> %i.amx, splat (i64 62)
  %i.amz = sub <2 x i64> zeroinitializer, %i.amv
  %i.ana = and <2 x i64> %i.amy, %i.amz           ; 2 uses
  %i.anb = extractelement <2 x i64> %i.ana, i64 0 ; 2 uses
  %i.anc = or i64 %i.anb, %i.amq
  %i.and = extractelement <2 x i64> %i.ana, i64 1 ; 2 uses
  %i.ane = or i64 %i.anc, %i.and
  %i.anf = icmp eq i64 %i.ane, 0
  %i.ang = load ptr, ptr %i.amb, align 8, !tbaa !251, !noalias !747 ; 3 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 16 ; 2 uses
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !195, !noalias !747
  call void @stream_wseek(ptr noundef %i.ani, i64 noundef %i.ame), !noalias !747
  br i1 %i.anf, label %bb.at, label %_ZNK3zfp5codec4zfp3IdE20encode_block_stridedEmjPKdlll.exit.i.i153

_ZNK3zfp5codec4zfp3IdE20encode_block_stridedEmjPKdlll.exit.i.i153: ; preds = %bb.as
  %i.anj = sub nuw nsw i64 4, %i.amq
  %i.ank = sub nuw nsw i64 4, %i.anb
  %i.anl = sub nuw nsw i64 4, %i.and
  %i.anm = call noundef i64 @zfp_encode_partial_block_strided_double_3(ptr noundef nonnull %i.ang, ptr noundef %i.alx, i64 noundef %i.anj, i64 noundef %i.ank, i64 noundef %i.anl, i64 noundef 1, i64 noundef 4, i64 noundef 16), !noalias !747 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit154

bb.at:                                            ; preds = %bb.as
  %i.ann = call noundef i64 @zfp_encode_block_double_3(ptr noundef nonnull %i.ang, ptr noundef %i.alx), !noalias !747 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit154

_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit154: ; preds = %_ZNK3zfp5codec4zfp3IdE20encode_block_stridedEmjPKdlll.exit.i.i153, %bb.at
  %i.ano = load ptr, ptr %i.anh, align 8, !tbaa !195, !noalias !747
  %i.anp = call i64 @stream_flush(ptr noundef %i.ano), !noalias !747 ; 0 uses
  %.pre.i.i.i.i146 = load ptr, ptr %i.vo, align 8, !tbaa !264, !noalias !747
  br label %bb.au

bb.au:                                            ; preds = %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit154, %bb.ar
  %i.anq = phi ptr [ %.pre.i.i.i.i146, %_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd.exit154 ], [ %i.alk, %bb.ar ] ; 3 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 48
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 56
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !257, !noalias !747 ; 2 uses
  %i.anu = add i64 %i.ant, -4
  %i.anv = lshr i64 %i.anu, 62
  %i.anw = sub i64 0, %i.ant
  %i.anx = and i64 %i.anv, %i.anw                 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anq, i64 64
  %i.anz = load <2 x i64>, ptr %i.any, align 8, !tbaa !40, !noalias !747 ; 2 uses
  %i.aoa = add <2 x i64> %i.anz, splat (i64 -4)
  %i.aob = lshr <2 x i64> %i.aoa, splat (i64 62)
  %i.aoc = sub <2 x i64> zeroinitializer, %i.anz
  %i.aod = and <2 x i64> %i.aob, %i.aoc           ; 2 uses
  %i.aoe = extractelement <2 x i64> %i.aod, i64 0 ; 2 uses
  %i.aof = or i64 %i.aoe, %i.anx
  %i.aog = extractelement <2 x i64> %i.aod, i64 1 ; 2 uses
  %i.aoh = or i64 %i.aof, %i.aog
  %i.aoi = icmp eq i64 %i.aoh, 0
  %i.aoj = load ptr, ptr %i.anr, align 8, !tbaa !251, !noalias !747 ; 3 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 16 ; 2 uses
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !195, !noalias !747
  call void @stream_rseek(ptr noundef %i.aol, i64 noundef 0), !noalias !747
  br i1 %i.aoi, label %bb.av, label %_ZNK3zfp5codec4zfp3IdE20decode_block_stridedEmjPdlll.exit.i.i151

_ZNK3zfp5codec4zfp3IdE20decode_block_stridedEmjPdlll.exit.i.i151: ; preds = %bb.au
  %i.aom = sub nuw nsw i64 4, %i.anx
  %i.aon = sub nuw nsw i64 4, %i.aoe
  %i.aoo = sub nuw nsw i64 4, %i.aog
  %i.aop = call noundef i64 @zfp_decode_partial_block_strided_double_3(ptr noundef nonnull %i.aoj, ptr noundef %i.alx, i64 noundef %i.aom, i64 noundef %i.aon, i64 noundef %i.aoo, i64 noundef 1, i64 noundef 4, i64 noundef 16), !noalias !747 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd.exit152

bb.av:                                            ; preds = %bb.au
  %i.aoq = call noundef i64 @zfp_decode_block_double_3(ptr noundef nonnull %i.aoj, ptr noundef %i.alx), !noalias !747 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd.exit152

_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd.exit152: ; preds = %_ZNK3zfp5codec4zfp3IdE20decode_block_stridedEmjPdlll.exit.i.i151, %bb.av
  %i.aor = load ptr, ptr %i.aok, align 8, !tbaa !195, !noalias !747
  %i.aos = call i64 @stream_align(ptr noundef %i.aor), !noalias !747 ; 0 uses
  br label %_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE3setEd.exit

_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE3setEd.exit: ; preds = %_ZN3zfp8internal4dim39referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEaSERKSA_.exit, %_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd.exit152
  store double %i.alj, ptr %i.alx, align 8, !tbaa !49, !noalias !747
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.aot = add i32 %.0231, 1                      ; 2 uses
  %i.aou = zext i32 %i.aot to i64                 ; 2 uses
  %i.aov = load i64, ptr %i.vi, align 8, !tbaa !126 ; 2 uses
  %i.aow = add i64 %i.aov, -1
  %i.aox = icmp ugt i64 %i.aow, %i.aou
  br i1 %i.aox, label %.lr.ph232, label %._crit_edge233.loopexit
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZSt3maxIN3zfp8internal4dim39referenceINS0_6array3IdNS0_5codec4zfp3IdEENS0_5index8implicitEEEEEERKT_SE_SE_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !288    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !289  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !290  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !291  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !264, !nonnull !141, !align !142 ; 4 uses
  %i.k = lshr i64 %i.c, 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.m = load i64, ptr %i.l, align 8, !tbaa !260
  %i.n = lshr i64 %i.e, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !259
  %i.q = lshr i64 %i.g, 2
  %i.r = mul i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.n
  %i.t = mul i64 %i.s, %i.m
  %i.u = add i64 %i.t, %i.k                       ; 3 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 1                          ; 3 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !261
  %i.y = and i32 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !89
  %i.ab = zext i32 %i.y to i64                    ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !266 ; 2 uses
  %i.ae = lshr i32 %i.ad, 1                       ; 2 uses
  %i.af = icmp eq i32 %i.ae, %i.w
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !91
  %i.ai = getelementptr inbounds nuw [512 x i8], ptr %i.ah, i64 %i.ab ; 3 uses
  br i1 %i.af, label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = shl i32 %i.w, 1
  store i32 %i.aj, ptr %i.ac, align 4, !tbaa !39
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i

_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.ak = add nsw i32 %i.ae, -1
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.u, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNK3zfp8internal4dim315const_referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEcvdEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i
  %i.am = trunc i32 %i.ad to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = tail call noundef i64 @_ZN3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6encodeEmPKd(ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef %i.al, ptr noundef %i.ai) ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !264
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = phi ptr [ %.pre.i.i.i.i.i, %bb.d ], [ %i.j, %bb.c ]
  %i.ap = tail call noundef i64 @_ZNK3zfp8internal11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEE6decodeEmPd(ptr noundef nonnull align 8 dereferenceable(104) %i.ao, i64 noundef %i.u, ptr noundef %i.ai) ; 0 uses
  br label %_ZNK3zfp8internal4dim315const_referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEcvdEv.exit

_ZNK3zfp8internal4dim315const_referenceINS_6array3IdNS_5codec4zfp3IdEENS_5index8implicitEEEEcvdEv.exit: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache3IdNS0_11BlockStore3IdNS_5codec4zfp3IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i.i, %bb.e
  %i.aq = and i64 %i.c, 3
  %i.ar = and i64 %i.e, 3
  %i.as = shl i64 %i.g, 2
  %i.at = and i64 %i.as, 12
  %i.au = or disjoint i64 %i.at, %i.ar
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.au, 5
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aq
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !49
  %i.ay = load ptr, ptr %1, align 8, !tbaa !288   ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !289 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !290 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !291 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 176 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !264, !nonnull !141, !align !142 ; 4 uses
  %i.bi = lshr i64 %i.ba, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !260
  %i.bl = lshr i64 %i.bc, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
end_hunk_8
begin_hunk_9_@_Z13update_array4IdEvRN3zfp6array4IT_NS0_5codec4zfp4IS2_EENS0_5index8implicitEEE:bb.a

_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i222: ; preds = %bb.at
  %i.awr = sub nuw nsw <2 x i64> splat (i64 4), %i.avy ; 2 uses
  %i.aws = sub nuw nsw <2 x i64> splat (i64 4), %i.awi ; 2 uses
  %i.awt = extractelement <2 x i64> %i.awr, i64 0
  %i.awu = extractelement <2 x i64> %i.awr, i64 1
  %i.awv = extractelement <2 x i64> %i.aws, i64 0
  %i.aww = extractelement <2 x i64> %i.aws, i64 1
  %i.awx = tail call noundef i64 @zfp_encode_partial_block_strided_double_4(ptr noundef nonnull %i.awo, ptr noundef %i.auz, i64 noundef %i.awt, i64 noundef %i.awu, i64 noundef %i.awv, i64 noundef %i.aww, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !780 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit223

bb.au:                                            ; preds = %bb.at
  %i.awy = tail call noundef i64 @zfp_encode_block_double_4(ptr noundef nonnull %i.awo, ptr noundef %i.auz), !noalias !780 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit223

_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit223: ; preds = %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i222, %bb.au
  %i.awz = load ptr, ptr %i.awp, align 8, !tbaa !195, !noalias !780
  %i.axa = tail call i64 @stream_flush(ptr noundef %i.awz), !noalias !780 ; 0 uses
  %.pre.i.i.i176 = load ptr, ptr %i.zv, align 8, !tbaa !308, !noalias !780 ; 4 uses
  %.phi.trans.insert512 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i176, i64 88
  %.phi.trans.insert514 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i176, i64 96
  %.pre513 = load i64, ptr %.phi.trans.insert512, align 8, !tbaa !304, !noalias !780
  %.pre515 = load i64, ptr %.phi.trans.insert514, align 8, !tbaa !303, !noalias !780
  %.phi.trans.insert516 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i176, i64 104
  %.pre517 = load i64, ptr %.phi.trans.insert516, align 8, !tbaa !302, !noalias !780
  br label %bb.av

bb.av:                                            ; preds = %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit223, %bb.as
  %i.axb = phi i64 [ %.pre517, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit223 ], [ %i.auh, %bb.as ] ; 2 uses
  %i.axc = phi i64 [ %.pre515, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit223 ], [ %i.auf, %bb.as ] ; 2 uses
  %i.axd = phi i64 [ %.pre513, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit223 ], [ %i.aue, %bb.as ] ; 2 uses
  %i.axe = phi ptr [ %.pre.i.i.i176, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit223 ], [ %i.aub, %bb.as ] ; 4 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 48
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axe, i64 40
  %i.axh = load i64, ptr %i.axg, align 8, !tbaa !178, !noalias !780
  %i.axi = mul i64 %i.axh, %i.aun
  %i.axj = udiv i64 %i.aun, %i.axd                ; 2 uses
  %i.axk = udiv i64 %i.axj, %i.axc                ; 2 uses
  %i.axl = urem i64 %i.axk, %i.axb
  %i.axm = udiv i64 %i.axk, %i.axb
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axe, i64 56
  %i.axo = urem i64 %i.aun, %i.axd
  %i.axp = urem i64 %i.axj, %i.axc
  %i.axq = insertelement <2 x i64> poison, i64 %i.axo, i64 0
  %i.axr = insertelement <2 x i64> %i.axq, i64 %i.axp, i64 1
  %i.axs = shl <2 x i64> %i.axr, splat (i64 2)
  %i.axt = load <2 x i64>, ptr %i.axn, align 8, !tbaa !40, !noalias !780 ; 2 uses
  %i.axu = xor <2 x i64> %i.axt, %i.axs
  %i.axv = add <2 x i64> %i.axu, splat (i64 -4)
  %i.axw = lshr <2 x i64> %i.axv, splat (i64 62)
  %i.axx = sub <2 x i64> zeroinitializer, %i.axt
  %i.axy = and <2 x i64> %i.axw, %i.axx           ; 3 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axe, i64 72
  %i.aya = insertelement <2 x i64> poison, i64 %i.axl, i64 0
  %i.ayb = insertelement <2 x i64> %i.aya, i64 %i.axm, i64 1
  %i.ayc = shl <2 x i64> %i.ayb, splat (i64 2)
  %i.ayd = load <2 x i64>, ptr %i.axz, align 8, !tbaa !40, !noalias !780 ; 2 uses
  %i.aye = xor <2 x i64> %i.ayd, %i.ayc
  %i.ayf = add <2 x i64> %i.aye, splat (i64 -4)
  %i.ayg = lshr <2 x i64> %i.ayf, splat (i64 62)
  %i.ayh = sub <2 x i64> zeroinitializer, %i.ayd
  %i.ayi = and <2 x i64> %i.ayg, %i.ayh           ; 3 uses
  %i.ayj = or <2 x i64> %i.axy, %i.ayi
  %i.ayk = shufflevector <2 x i64> %i.ayj, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ayl = or <2 x i64> %i.ayk, %i.axy
  %foldExtExtBinop834 = or <2 x i64> %i.ayl, %i.ayi
  %i.aym = extractelement <2 x i64> %foldExtExtBinop834, i64 0
  %i.ayn = icmp eq i64 %i.aym, 0
  %i.ayo = load ptr, ptr %i.axf, align 8, !tbaa !293, !noalias !780 ; 3 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 16 ; 2 uses
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !195, !noalias !780
  tail call void @stream_rseek(ptr noundef %i.ayq, i64 noundef %i.axi), !noalias !780
  br i1 %i.ayn, label %bb.aw, label %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i220

_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i220: ; preds = %bb.av
  %i.ayr = sub nuw nsw <2 x i64> splat (i64 4), %i.axy ; 2 uses
  %i.ays = sub nuw nsw <2 x i64> splat (i64 4), %i.ayi ; 2 uses
  %i.ayt = extractelement <2 x i64> %i.ayr, i64 0
  %i.ayu = extractelement <2 x i64> %i.ayr, i64 1
  %i.ayv = extractelement <2 x i64> %i.ays, i64 0
  %i.ayw = extractelement <2 x i64> %i.ays, i64 1
  %i.ayx = tail call noundef i64 @zfp_decode_partial_block_strided_double_4(ptr noundef nonnull %i.ayo, ptr noundef %i.auz, i64 noundef %i.ayt, i64 noundef %i.ayu, i64 noundef %i.ayv, i64 noundef %i.ayw, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !780 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit221

bb.aw:                                            ; preds = %bb.av
  %i.ayy = tail call noundef i64 @zfp_decode_block_double_4(ptr noundef nonnull %i.ayo, ptr noundef %i.auz), !noalias !780 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit221

_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit221: ; preds = %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i220, %bb.aw
  %i.ayz = load ptr, ptr %i.ayp, align 8, !tbaa !195, !noalias !780
  %i.aza = tail call i64 @stream_align(ptr noundef %i.ayz), !noalias !780 ; 0 uses
  br label %_ZN3zfp6array4IdNS_5codec4zfp4IdEENS_5index8implicitEE3subEmmmmd.exit177

_ZN3zfp6array4IdNS_5codec4zfp4IdEENS_5index8implicitEE3subEmmmmd.exit177: ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit171, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit221
  %i.azb = getelementptr inbounds nuw i8, ptr %i.auz, i64 %.idx.i.i.i175
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %i.azb, i64 %i.aog
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %i.azc, i64 %i.atw ; 2 uses
  %i.aze = load double, ptr %i.azd, align 8, !tbaa !49, !noalias !780
  %i.azf = fsub double %i.aze, %i.aua
  store double %i.azf, ptr %i.azd, align 8, !tbaa !49, !noalias !780
  %i.azg = add i32 %.0109406, 1                   ; 2 uses
  %i.azh = zext i32 %i.azg to i64                 ; 2 uses
  %i.azi = load i64, ptr %i.zt, align 8, !tbaa !126 ; 2 uses
  %i.azj = icmp ugt i64 %i.azi, %i.azh
  br i1 %i.azj, label %bb.al, label %._crit_edge408.loopexit

.preheader367:                                    ; preds = %.preheader367.lr.ph, %._crit_edge420
  %i.azk = phi i64 [ %i.amy, %.preheader367.lr.ph ], [ %i.azy, %._crit_edge420 ]
  %i.azl = phi i64 [ %.pre521, %.preheader367.lr.ph ], [ %i.azz, %._crit_edge420 ] ; 2 uses
  %i.azm = phi i64 [ %.pre521, %.preheader367.lr.ph ], [ %i.baa, %._crit_edge420 ]
  %i.azn = phi i64 [ 0, %.preheader367.lr.ph ], [ %i.bac, %._crit_edge420 ] ; 3 uses
  %.0108421 = phi i32 [ 0, %.preheader367.lr.ph ], [ %i.bab, %._crit_edge420 ]
  %.not448 = icmp eq i64 %i.azm, 1
  br i1 %.not448, label %._crit_edge420, label %.preheader366.lr.ph

.preheader366.lr.ph:                              ; preds = %.preheader367
  %i.azo = lshr i64 %i.azn, 2
  %i.azp = shl nuw nsw i64 %i.azn, 2
  %i.azq = and i64 %i.azp, 12
  %.pre522 = load i64, ptr %i.ana, align 8, !tbaa !138 ; 2 uses
  br label %.preheader366

._crit_edge422:                                   ; preds = %._crit_edge420, %.preheader372, %.preheader368
  ret void

.preheader366:                                    ; preds = %.preheader366.lr.ph, %._crit_edge418
  %i.azr = phi i64 [ %i.azl, %.preheader366.lr.ph ], [ %i.bal, %._crit_edge418 ]
  %i.azs = phi i64 [ %.pre522, %.preheader366.lr.ph ], [ %i.bam, %._crit_edge418 ] ; 2 uses
  %i.azt = phi i64 [ %.pre522, %.preheader366.lr.ph ], [ %i.ban, %._crit_edge418 ]
  %i.azu = phi i64 [ 0, %.preheader366.lr.ph ], [ %i.bap, %._crit_edge418 ] ; 3 uses
  %.0107419 = phi i32 [ 0, %.preheader366.lr.ph ], [ %i.bao, %._crit_edge418 ]
  %.not449 = icmp eq i64 %i.azt, 1
  br i1 %.not449, label %._crit_edge418, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader366
  %i.azv = lshr i64 %i.azu, 2
  %i.azw = and i64 %i.azu, 3
  %i.azx = or disjoint i64 %i.azw, %i.azq
  %.idx.i.i.i.i180 = shl nuw nsw i64 %i.azx, 7
  %.pre523 = load i64, ptr %i.anb, align 8, !tbaa !126
  br label %.preheader

._crit_edge420.loopexit:                          ; preds = %._crit_edge418
  %.pre559 = load i64, ptr %i.a, align 8, !tbaa !165
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %._crit_edge420.loopexit, %.preheader367
  %i.azy = phi i64 [ %.pre559, %._crit_edge420.loopexit ], [ %i.azk, %.preheader367 ] ; 2 uses
  %i.azz = phi i64 [ %i.bal, %._crit_edge420.loopexit ], [ %i.azl, %.preheader367 ]
  %i.baa = phi i64 [ %i.bal, %._crit_edge420.loopexit ], [ 1, %.preheader367 ]
  %i.bab = add i32 %.0108421, 1                   ; 2 uses
  %i.bac = zext i32 %i.bab to i64                 ; 2 uses
  %i.bad = add i64 %i.azy, -1
  %i.bae = icmp ugt i64 %i.bad, %i.bac
  br i1 %i.bae, label %.preheader367, label %._crit_edge422

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge416
  %i.baf = phi i64 [ %i.azs, %.preheader.lr.ph ], [ %i.bas, %._crit_edge416 ]
  %i.bag = phi i64 [ %.pre523, %.preheader.lr.ph ], [ %i.bat, %._crit_edge416 ]
  %i.bah = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bav, %._crit_edge416 ] ; 3 uses
  %.0106417 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bau, %._crit_edge416 ]
  %.not450 = icmp eq i64 %i.bag, 1
  br i1 %.not450, label %._crit_edge416, label %.lr.ph415

.lr.ph415:                                        ; preds = %.preheader
  %i.bai = lshr i64 %i.bah, 2
  %i.baj = shl nuw nsw i64 %i.bah, 2
  %i.bak = and i64 %i.baj, 12
  br label %bb.ax

._crit_edge418.loopexit:                          ; preds = %._crit_edge416
  %.pre558 = load i64, ptr %i.amz, align 8, !tbaa !158
  br label %._crit_edge418

._crit_edge418:                                   ; preds = %._crit_edge418.loopexit, %.preheader366
  %i.bal = phi i64 [ %.pre558, %._crit_edge418.loopexit ], [ %i.azr, %.preheader366 ] ; 4 uses
  %i.bam = phi i64 [ %i.bas, %._crit_edge418.loopexit ], [ %i.azs, %.preheader366 ]
  %i.ban = phi i64 [ %i.bas, %._crit_edge418.loopexit ], [ 1, %.preheader366 ]
  %i.bao = add i32 %.0107419, 1                   ; 2 uses
  %i.bap = zext i32 %i.bao to i64                 ; 2 uses
  %i.baq = add i64 %i.bal, -1
  %i.bar = icmp ugt i64 %i.baq, %i.bap
  br i1 %i.bar, label %.preheader366, label %._crit_edge420.loopexit

._crit_edge416.loopexit:                          ; preds = %_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit
  %.pre557 = load i64, ptr %i.ana, align 8, !tbaa !138
  br label %._crit_edge416

._crit_edge416:                                   ; preds = %._crit_edge416.loopexit, %.preheader
  %i.bas = phi i64 [ %.pre557, %._crit_edge416.loopexit ], [ %i.baf, %.preheader ] ; 4 uses
  %i.bat = phi i64 [ %i.bsk, %._crit_edge416.loopexit ], [ 1, %.preheader ]
  %i.bau = add i32 %.0106417, 1                   ; 2 uses
  %i.bav = zext i32 %i.bau to i64                 ; 2 uses
  %i.baw = add i64 %i.bas, -1
  %i.bax = icmp ugt i64 %i.baw, %i.bav
  br i1 %i.bax, label %.preheader, label %._crit_edge418.loopexit

bb.ax:                                            ; preds = %.lr.ph415, %_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit
  %i.bay = phi i64 [ 0, %.lr.ph415 ], [ %i.bsj, %_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit ] ; 3 uses
  %.0414 = phi i32 [ 0, %.lr.ph415 ], [ %i.bsi, %_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit ]
  %i.baz = load ptr, ptr %i.and, align 8, !tbaa !308, !nonnull !141, !align !142 ; 10 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 88
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baz, i64 96
  %i.bbc = load i64, ptr %i.bba, align 8, !tbaa !304 ; 4 uses
  %i.bbd = load i64, ptr %i.bbb, align 8, !tbaa !303 ; 4 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.baz, i64 104
  %i.bbf = load i64, ptr %i.bbe, align 8, !tbaa !302 ; 4 uses
  %i.bbg = load i32, ptr %i.anc, align 8, !tbaa !267
  %i.bbh = and i32 %i.bbg, 1
  %i.bbi = load ptr, ptr %i.ane, align 8, !tbaa !95 ; 3 uses
  %i.bbj = zext nneg i32 %i.bbh to i64            ; 2 uses
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %i.bbj ; 2 uses
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !306 ; 2 uses
  %i.bbm = lshr i32 %i.bbl, 1                     ; 2 uses
  %i.bbn = icmp eq i32 %i.bbm, 1
  %i.bbo = load ptr, ptr %i.anf, align 8, !tbaa !97 ; 3 uses
  %i.bbp = getelementptr inbounds nuw [2048 x i8], ptr %i.bbo, i64 %i.bbj ; 5 uses
  br i1 %i.bbn, label %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit187, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183: ; preds = %bb.ax
  store i32 2, ptr %i.bbk, align 4, !tbaa !39
  %1 = add nsw i32 %i.bbm, -1                     ; 2 uses
  %2 = zext i32 %1 to i64                         ; 3 uses
  %.not.i.i.i.i184 = icmp eq i32 %1, 0
  br i1 %.not.i.i.i.i184, label %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit187, label %3

3:                                                ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183
  %4 = trunc i32 %i.bbl to i1
  br i1 %4, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %3
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.baz, i64 48
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.baz, i64 40
  %i.bbs = load i64, ptr %i.bbr, align 8, !tbaa !178
  %i.bbt = mul i64 %i.bbs, %2
  %i.bbu = udiv i64 %2, %i.bbc                    ; 2 uses
  %i.bbv = udiv i64 %i.bbu, %i.bbd                ; 2 uses
  %i.bbw = urem i64 %i.bbv, %i.bbf
  %i.bbx = udiv i64 %i.bbv, %i.bbf
  %i.bby = getelementptr inbounds nuw i8, ptr %i.baz, i64 56
  %i.bbz = urem i64 %2, %i.bbc
  %i.bca = urem i64 %i.bbu, %i.bbd
  %i.bcb = insertelement <2 x i64> poison, i64 %i.bbz, i64 0
  %i.bcc = insertelement <2 x i64> %i.bcb, i64 %i.bca, i64 1
  %i.bcd = shl nuw nsw <2 x i64> %i.bcc, splat (i64 2)
  %i.bce = load <2 x i64>, ptr %i.bby, align 8, !tbaa !40 ; 2 uses
  %i.bcf = xor <2 x i64> %i.bce, %i.bcd
  %i.bcg = add <2 x i64> %i.bcf, splat (i64 -4)
  %i.bch = lshr <2 x i64> %i.bcg, splat (i64 62)
  %i.bci = sub <2 x i64> zeroinitializer, %i.bce
  %i.bcj = and <2 x i64> %i.bch, %i.bci           ; 3 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.baz, i64 72
  %i.bcl = insertelement <2 x i64> poison, i64 %i.bbw, i64 0
  %i.bcm = insertelement <2 x i64> %i.bcl, i64 %i.bbx, i64 1
  %i.bcn = shl nuw nsw <2 x i64> %i.bcm, splat (i64 2)
  %i.bco = load <2 x i64>, ptr %i.bck, align 8, !tbaa !40 ; 2 uses
  %i.bcp = xor <2 x i64> %i.bco, %i.bcn
  %i.bcq = add <2 x i64> %i.bcp, splat (i64 -4)
  %i.bcr = lshr <2 x i64> %i.bcq, splat (i64 62)
  %i.bcs = sub <2 x i64> zeroinitializer, %i.bco
  %i.bct = and <2 x i64> %i.bcr, %i.bcs           ; 3 uses
  %i.bcu = or <2 x i64> %i.bcj, %i.bct
  %i.bcv = shufflevector <2 x i64> %i.bcu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bcw = or <2 x i64> %i.bcv, %i.bcj
  %foldExtExtBinop842 = or <2 x i64> %i.bcw, %i.bct
  %i.bcx = extractelement <2 x i64> %foldExtExtBinop842, i64 0
  %i.bcy = icmp eq i64 %i.bcx, 0
  %i.bcz = load ptr, ptr %i.bbq, align 8, !tbaa !293 ; 3 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 16 ; 2 uses
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.bdb, i64 noundef %i.bbt)
  br i1 %i.bcy, label %bb.az, label %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i230

_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i230: ; preds = %bb.ay
  %i.bdc = sub nuw nsw <2 x i64> splat (i64 4), %i.bcj ; 2 uses
  %i.bdd = sub nuw nsw <2 x i64> splat (i64 4), %i.bct ; 2 uses
  %i.bde = extractelement <2 x i64> %i.bdc, i64 0
  %i.bdf = extractelement <2 x i64> %i.bdc, i64 1
  %i.bdg = extractelement <2 x i64> %i.bdd, i64 0
  %i.bdh = extractelement <2 x i64> %i.bdd, i64 1
  %i.bdi = tail call noundef i64 @zfp_encode_partial_block_strided_double_4(ptr noundef nonnull %i.bcz, ptr noundef %i.bbp, i64 noundef %i.bde, i64 noundef %i.bdf, i64 noundef %i.bdg, i64 noundef %i.bdh, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit231

bb.az:                                            ; preds = %bb.ay
  %i.bdj = tail call noundef i64 @zfp_encode_block_double_4(ptr noundef nonnull %i.bcz, ptr noundef %i.bbp) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit231

_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit231: ; preds = %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i230, %bb.az
  %i.bdk = load ptr, ptr %i.bda, align 8, !tbaa !195
  %i.bdl = tail call i64 @stream_flush(ptr noundef %i.bdk) ; 0 uses
  %.pre.i.i.i.i186 = load ptr, ptr %i.and, align 8, !tbaa !308
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit231, %3
  %i.bdm = phi ptr [ %.pre.i.i.i.i186, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit231 ], [ %i.baz, %3 ] ; 2 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 48
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdm, i64 56
  %i.bdp = load <4 x i64>, ptr %i.bdo, align 8, !tbaa !40 ; 2 uses
  %i.bdq = add <4 x i64> %i.bdp, splat (i64 -4)
  %i.bdr = lshr <4 x i64> %i.bdq, splat (i64 62)
  %i.bds = sub <4 x i64> zeroinitializer, %i.bdp
  %i.bdt = and <4 x i64> %i.bdr, %i.bds           ; 3 uses
  %i.bdu = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.bdt)
  %i.bdv = icmp eq i64 %i.bdu, 0
  %i.bdw = load ptr, ptr %i.bdn, align 8, !tbaa !293 ; 3 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 16 ; 2 uses
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.bdy, i64 noundef 0)
  br i1 %i.bdv, label %bb.bb, label %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i228

_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i228: ; preds = %bb.ba
  %i.bdz = shufflevector <4 x i64> %i.bdt, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bea = sub nuw nsw <2 x i64> splat (i64 4), %i.bdz ; 2 uses
  %i.beb = shufflevector <4 x i64> %i.bdt, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.bec = sub nuw nsw <2 x i64> splat (i64 4), %i.beb ; 2 uses
  %i.bed = extractelement <2 x i64> %i.bea, i64 0
  %i.bee = extractelement <2 x i64> %i.bea, i64 1
  %i.bef = extractelement <2 x i64> %i.bec, i64 0
  %i.beg = extractelement <2 x i64> %i.bec, i64 1
  %i.beh = tail call noundef i64 @zfp_decode_partial_block_strided_double_4(ptr noundef nonnull %i.bdw, ptr noundef %i.bbp, i64 noundef %i.bed, i64 noundef %i.bee, i64 noundef %i.bef, i64 noundef %i.beg, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229

bb.bb:                                            ; preds = %bb.ba
  %i.bei = tail call noundef i64 @zfp_decode_block_double_4(ptr noundef nonnull %i.bdw, ptr noundef %i.bbp) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229

_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229: ; preds = %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i228, %bb.bb
  %i.bej = load ptr, ptr %i.bdx, align 8, !tbaa !195
  %i.bek = tail call i64 @stream_align(ptr noundef %i.bej) ; 0 uses
  %.pre524 = load ptr, ptr %i.and, align 8, !tbaa !308 ; 4 uses
  %.phi.trans.insert525 = getelementptr inbounds nuw i8, ptr %.pre524, i64 88
  %.phi.trans.insert527 = getelementptr inbounds nuw i8, ptr %.pre524, i64 96
  %.pre526 = load i64, ptr %.phi.trans.insert525, align 8, !tbaa !304
  %.pre528 = load i64, ptr %.phi.trans.insert527, align 8, !tbaa !303
  %.phi.trans.insert529 = getelementptr inbounds nuw i8, ptr %.pre524, i64 104
  %.pre530 = load i64, ptr %.phi.trans.insert529, align 8, !tbaa !302
  %.pre531 = load ptr, ptr %i.ane, align 8, !tbaa !95
  %.pre532 = load ptr, ptr %i.anf, align 8, !tbaa !97
  br label %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit187

_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit187: ; preds = %bb.ax, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229
  %5 = phi ptr [ %i.bbo, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre532, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229 ], [ %i.bbo, %bb.ax ] ; 2 uses
  %6 = phi ptr [ %i.bbi, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre531, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229 ], [ %i.bbi, %bb.ax ] ; 2 uses
  %7 = phi i64 [ %i.bbf, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre530, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229 ], [ %i.bbf, %bb.ax ] ; 4 uses
  %8 = phi i64 [ %i.bbd, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre528, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229 ], [ %i.bbd, %bb.ax ] ; 4 uses
  %9 = phi i64 [ %i.bbc, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre526, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229 ], [ %i.bbc, %bb.ax ] ; 4 uses
  %10 = phi ptr [ %i.baz, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i183 ], [ %.pre524, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit229 ], [ %i.baz, %bb.ax ] ; 6 uses
  %i.bel = load double, ptr %i.bbp, align 8, !tbaa !49
  %i.bem = lshr i64 %i.bay, 2
  %i.ben = mul i64 %7, %i.azo
  %i.beo = add i64 %i.ben, %i.azv
  %i.bep = mul i64 %i.beo, %8
  %i.beq = add i64 %i.bep, %i.bai
  %i.ber = mul i64 %i.beq, %9
  %i.bes = add i64 %i.ber, %i.bem                 ; 5 uses
  %i.bet = trunc i64 %i.bes to i32
  %i.beu = add i32 %i.bet, 1                      ; 3 uses
  %i.bev = load i32, ptr %i.anc, align 8, !tbaa !267
  %i.bew = and i32 %i.beu, %i.bev
  %i.bex = zext i32 %i.bew to i64                 ; 2 uses
  %i.bey = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bex ; 2 uses
  %i.bez = load i32, ptr %i.bey, align 4, !tbaa !306 ; 2 uses
  %i.bfa = lshr i32 %i.bez, 1                     ; 2 uses
  %i.bfb = icmp eq i32 %i.bfa, %i.beu
  %i.bfc = getelementptr inbounds nuw [2048 x i8], ptr %5, i64 %i.bex ; 5 uses
  br i1 %i.bfb, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178, label %bb.bc

bb.bc:                                            ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit187
  %i.bfd = shl i32 %i.beu, 1
  store i32 %i.bfd, ptr %i.bey, align 4, !tbaa !39
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178: ; preds = %bb.bc, %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit187
  %i.bfe = add nsw i32 %i.bfa, -1
  %i.bff = zext i32 %i.bfe to i64                 ; 4 uses
  %.not.i.i.i.i179 = icmp eq i64 %i.bes, %i.bff
  br i1 %.not.i.i.i.i179, label %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit182, label %bb.bd

bb.bd:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178
  %i.bfg = trunc i32 %i.bez to i1
  br i1 %i.bfg, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.bfh = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bfi = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bfj = load i64, ptr %i.bfi, align 8, !tbaa !178
  %i.bfk = mul i64 %i.bfj, %i.bff
  %i.bfl = udiv i64 %i.bff, %9                    ; 2 uses
  %i.bfm = udiv i64 %i.bfl, %8                    ; 2 uses
  %i.bfn = urem i64 %i.bfm, %7
  %i.bfo = udiv i64 %i.bfm, %7
  %i.bfp = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bfq = urem i64 %i.bff, %9
  %i.bfr = urem i64 %i.bfl, %8
  %i.bfs = insertelement <2 x i64> poison, i64 %i.bfq, i64 0
  %i.bft = insertelement <2 x i64> %i.bfs, i64 %i.bfr, i64 1
  %i.bfu = shl nuw nsw <2 x i64> %i.bft, splat (i64 2)
  %i.bfv = load <2 x i64>, ptr %i.bfp, align 8, !tbaa !40 ; 2 uses
  %i.bfw = xor <2 x i64> %i.bfv, %i.bfu
  %i.bfx = add <2 x i64> %i.bfw, splat (i64 -4)
  %i.bfy = lshr <2 x i64> %i.bfx, splat (i64 62)
  %i.bfz = sub <2 x i64> zeroinitializer, %i.bfv
  %i.bga = and <2 x i64> %i.bfy, %i.bfz           ; 3 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.bgc = insertelement <2 x i64> poison, i64 %i.bfn, i64 0
  %i.bgd = insertelement <2 x i64> %i.bgc, i64 %i.bfo, i64 1
  %i.bge = shl nuw nsw <2 x i64> %i.bgd, splat (i64 2)
  %i.bgf = load <2 x i64>, ptr %i.bgb, align 8, !tbaa !40 ; 2 uses
  %i.bgg = xor <2 x i64> %i.bgf, %i.bge
  %i.bgh = add <2 x i64> %i.bgg, splat (i64 -4)
  %i.bgi = lshr <2 x i64> %i.bgh, splat (i64 62)
  %i.bgj = sub <2 x i64> zeroinitializer, %i.bgf
  %i.bgk = and <2 x i64> %i.bgi, %i.bgj           ; 3 uses
  %i.bgl = or <2 x i64> %i.bga, %i.bgk
  %i.bgm = shufflevector <2 x i64> %i.bgl, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bgn = or <2 x i64> %i.bgm, %i.bga
  %foldExtExtBinop850 = or <2 x i64> %i.bgn, %i.bgk
  %i.bgo = extractelement <2 x i64> %foldExtExtBinop850, i64 0
  %i.bgp = icmp eq i64 %i.bgo, 0
  %i.bgq = load ptr, ptr %i.bfh, align 8, !tbaa !293 ; 3 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgq, i64 16 ; 2 uses
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.bgs, i64 noundef %i.bfk)
  br i1 %i.bgp, label %bb.bf, label %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i226

_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i226: ; preds = %bb.be
  %i.bgt = sub nuw nsw <2 x i64> splat (i64 4), %i.bga ; 2 uses
  %i.bgu = sub nuw nsw <2 x i64> splat (i64 4), %i.bgk ; 2 uses
  %i.bgv = extractelement <2 x i64> %i.bgt, i64 0
  %i.bgw = extractelement <2 x i64> %i.bgt, i64 1
  %i.bgx = extractelement <2 x i64> %i.bgu, i64 0
  %i.bgy = extractelement <2 x i64> %i.bgu, i64 1
  %i.bgz = tail call noundef i64 @zfp_encode_partial_block_strided_double_4(ptr noundef nonnull %i.bgq, ptr noundef %i.bfc, i64 noundef %i.bgv, i64 noundef %i.bgw, i64 noundef %i.bgx, i64 noundef %i.bgy, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit227

bb.bf:                                            ; preds = %bb.be
  %i.bha = tail call noundef i64 @zfp_encode_block_double_4(ptr noundef nonnull %i.bgq, ptr noundef %i.bfc) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit227

_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit227: ; preds = %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i226, %bb.bf
  %i.bhb = load ptr, ptr %i.bgr, align 8, !tbaa !195
  %i.bhc = tail call i64 @stream_flush(ptr noundef %i.bhb) ; 0 uses
  %.pre.i.i.i.i181 = load ptr, ptr %i.and, align 8, !tbaa !308 ; 4 uses
  %.phi.trans.insert533 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i181, i64 88
  %.phi.trans.insert535 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i181, i64 96
  %.pre534 = load i64, ptr %.phi.trans.insert533, align 8, !tbaa !304
  %.pre536 = load i64, ptr %.phi.trans.insert535, align 8, !tbaa !303
  %.phi.trans.insert537 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i181, i64 104
  %.pre538 = load i64, ptr %.phi.trans.insert537, align 8, !tbaa !302
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit227, %bb.bd
  %i.bhd = phi i64 [ %.pre538, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit227 ], [ %7, %bb.bd ] ; 2 uses
  %i.bhe = phi i64 [ %.pre536, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit227 ], [ %8, %bb.bd ] ; 2 uses
  %i.bhf = phi i64 [ %.pre534, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit227 ], [ %9, %bb.bd ] ; 2 uses
  %i.bhg = phi ptr [ %.pre.i.i.i.i181, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit227 ], [ %10, %bb.bd ] ; 4 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 48
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhg, i64 40
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !178
  %i.bhk = mul i64 %i.bhj, %i.bes
  %i.bhl = udiv i64 %i.bes, %i.bhf                ; 2 uses
  %i.bhm = udiv i64 %i.bhl, %i.bhe                ; 2 uses
  %i.bhn = urem i64 %i.bhm, %i.bhd
  %i.bho = udiv i64 %i.bhm, %i.bhd
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhg, i64 56
  %i.bhq = urem i64 %i.bes, %i.bhf
  %i.bhr = urem i64 %i.bhl, %i.bhe
  %i.bhs = insertelement <2 x i64> poison, i64 %i.bhq, i64 0
  %i.bht = insertelement <2 x i64> %i.bhs, i64 %i.bhr, i64 1
  %i.bhu = shl <2 x i64> %i.bht, splat (i64 2)
  %i.bhv = load <2 x i64>, ptr %i.bhp, align 8, !tbaa !40 ; 2 uses
  %i.bhw = xor <2 x i64> %i.bhv, %i.bhu
  %i.bhx = add <2 x i64> %i.bhw, splat (i64 -4)
  %i.bhy = lshr <2 x i64> %i.bhx, splat (i64 62)
  %i.bhz = sub <2 x i64> zeroinitializer, %i.bhv
  %i.bia = and <2 x i64> %i.bhy, %i.bhz           ; 3 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhg, i64 72
  %i.bic = insertelement <2 x i64> poison, i64 %i.bhn, i64 0
  %i.bid = insertelement <2 x i64> %i.bic, i64 %i.bho, i64 1
  %i.bie = shl <2 x i64> %i.bid, splat (i64 2)
  %i.bif = load <2 x i64>, ptr %i.bib, align 8, !tbaa !40 ; 2 uses
  %i.big = xor <2 x i64> %i.bif, %i.bie
  %i.bih = add <2 x i64> %i.big, splat (i64 -4)
  %i.bii = lshr <2 x i64> %i.bih, splat (i64 62)
  %i.bij = sub <2 x i64> zeroinitializer, %i.bif
  %i.bik = and <2 x i64> %i.bii, %i.bij           ; 3 uses
  %i.bil = or <2 x i64> %i.bia, %i.bik
  %i.bim = shufflevector <2 x i64> %i.bil, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bin = or <2 x i64> %i.bim, %i.bia
  %foldExtExtBinop858 = or <2 x i64> %i.bin, %i.bik
  %i.bio = extractelement <2 x i64> %foldExtExtBinop858, i64 0
  %i.bip = icmp eq i64 %i.bio, 0
  %i.biq = load ptr, ptr %i.bhh, align 8, !tbaa !293 ; 3 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.biq, i64 16 ; 2 uses
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !195
  tail call void @stream_rseek(ptr noundef %i.bis, i64 noundef %i.bhk)
  br i1 %i.bip, label %bb.bh, label %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i224

_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i224: ; preds = %bb.bg
  %i.bit = sub nuw nsw <2 x i64> splat (i64 4), %i.bia ; 2 uses
  %i.biu = sub nuw nsw <2 x i64> splat (i64 4), %i.bik ; 2 uses
  %i.biv = extractelement <2 x i64> %i.bit, i64 0
  %i.biw = extractelement <2 x i64> %i.bit, i64 1
  %i.bix = extractelement <2 x i64> %i.biu, i64 0
  %i.biy = extractelement <2 x i64> %i.biu, i64 1
  %i.biz = tail call noundef i64 @zfp_decode_partial_block_strided_double_4(ptr noundef nonnull %i.biq, ptr noundef %i.bfc, i64 noundef %i.biv, i64 noundef %i.biw, i64 noundef %i.bix, i64 noundef %i.biy, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit225

bb.bh:                                            ; preds = %bb.bg
  %i.bja = tail call noundef i64 @zfp_decode_block_double_4(ptr noundef nonnull %i.biq, ptr noundef %i.bfc) ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit225

_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit225: ; preds = %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i224, %bb.bh
  %i.bjb = load ptr, ptr %i.bir, align 8, !tbaa !195
  %i.bjc = tail call i64 @stream_align(ptr noundef %i.bjb) ; 0 uses
  %.pre539 = load ptr, ptr %i.and, align 8, !tbaa !308, !noalias !781
  %.pre540 = load ptr, ptr %i.ane, align 8, !tbaa !95, !noalias !781
  %.pre541 = load ptr, ptr %i.anf, align 8, !tbaa !97, !noalias !781
  br label %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit182

_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit182: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit225
  %i.bjd = phi ptr [ %5, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178 ], [ %.pre541, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit225 ] ; 2 uses
  %i.bje = phi ptr [ %6, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178 ], [ %.pre540, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit225 ] ; 2 uses
  %i.bjf = phi ptr [ %10, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i178 ], [ %.pre539, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit225 ] ; 9 uses
  %i.bjg = and i64 %i.bay, 3
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bfc, i64 %.idx.i.i.i.i180
  %i.bji = getelementptr inbounds nuw [8 x i8], ptr %i.bjh, i64 %i.bak
  %i.bjj = getelementptr inbounds nuw [8 x i8], ptr %i.bji, i64 %i.bjg
  %i.bjk = load double, ptr %i.bjj, align 8, !tbaa !49
  %i.bjl = fcmp olt double %i.bel, %i.bjk         ; 4 uses
  %.sroa.speculated270 = select i1 %i.bjl, i64 %i.bay, i64 0 ; 2 uses
  %.sroa.speculated267 = select i1 %i.bjl, i64 %i.bah, i64 0 ; 2 uses
  %.sroa.speculated264 = select i1 %i.bjl, i64 %i.azu, i64 0 ; 2 uses
  %.sroa.speculated = select i1 %i.bjl, i64 %i.azn, i64 0 ; 2 uses
  %i.bjm = lshr i64 %.sroa.speculated270, 2
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjf, i64 88
  %i.bjo = lshr i64 %.sroa.speculated267, 2
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjf, i64 96
  %i.bjq = load i64, ptr %i.bjn, align 8, !tbaa !304, !noalias !781 ; 5 uses
  %i.bjr = load i64, ptr %i.bjp, align 8, !tbaa !303, !noalias !781 ; 5 uses
  %i.bjs = lshr i64 %.sroa.speculated264, 2
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjf, i64 104
  %i.bju = load i64, ptr %i.bjt, align 8, !tbaa !302, !noalias !781 ; 5 uses
  %i.bjv = lshr i64 %.sroa.speculated, 2
  %i.bjw = mul i64 %i.bju, %i.bjv
  %i.bjx = add i64 %i.bjw, %i.bjs
  %i.bjy = mul i64 %i.bjx, %i.bjr
  %i.bjz = add i64 %i.bjy, %i.bjo
  %i.bka = mul i64 %i.bjz, %i.bjq
  %i.bkb = add i64 %i.bka, %i.bjm                 ; 5 uses
  %i.bkc = trunc i64 %i.bkb to i32
  %i.bkd = add i32 %i.bkc, 1                      ; 3 uses
  %i.bke = load i32, ptr %i.anc, align 8, !tbaa !267, !noalias !781
  %i.bkf = and i32 %i.bkd, %i.bke
  %i.bkg = zext i32 %i.bkf to i64                 ; 2 uses
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.bje, i64 %i.bkg ; 2 uses
  %i.bki = load i32, ptr %i.bkh, align 4, !tbaa !306, !noalias !781 ; 2 uses
  %i.bkj = lshr i32 %i.bki, 1                     ; 2 uses
  %i.bkk = icmp eq i32 %i.bkj, %i.bkd
  %i.bkl = getelementptr inbounds nuw [2048 x i8], ptr %i.bjd, i64 %i.bkg ; 5 uses
  br i1 %i.bkk, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191, label %bb.bi

bb.bi:                                            ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit182
  %i.bkm = shl i32 %i.bkd, 1
  store i32 %i.bkm, ptr %i.bkh, align 4, !tbaa !39, !noalias !781
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191: ; preds = %bb.bi, %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit182
  %i.bkn = add nsw i32 %i.bkj, -1
  %i.bko = zext i32 %i.bkn to i64                 ; 4 uses
  %.not.i.i.i.i192 = icmp eq i64 %i.bkb, %i.bko
  br i1 %.not.i.i.i.i192, label %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195, label %bb.bj

bb.bj:                                            ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191
  %i.bkp = trunc i32 %i.bki to i1
  br i1 %i.bkp, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bjf, i64 48
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bjf, i64 40
  %i.bks = load i64, ptr %i.bkr, align 8, !tbaa !178, !noalias !781
  %i.bkt = mul i64 %i.bks, %i.bko
  %i.bku = udiv i64 %i.bko, %i.bjq                ; 2 uses
  %i.bkv = udiv i64 %i.bku, %i.bjr                ; 2 uses
  %i.bkw = urem i64 %i.bkv, %i.bju
  %i.bkx = udiv i64 %i.bkv, %i.bju
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bjf, i64 56
  %i.bkz = urem i64 %i.bko, %i.bjq
  %i.bla = urem i64 %i.bku, %i.bjr
  %i.blb = insertelement <2 x i64> poison, i64 %i.bkz, i64 0
  %i.blc = insertelement <2 x i64> %i.blb, i64 %i.bla, i64 1
  %i.bld = shl nuw nsw <2 x i64> %i.blc, splat (i64 2)
  %i.ble = load <2 x i64>, ptr %i.bky, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.blf = xor <2 x i64> %i.ble, %i.bld
  %i.blg = add <2 x i64> %i.blf, splat (i64 -4)
  %i.blh = lshr <2 x i64> %i.blg, splat (i64 62)
  %i.bli = sub <2 x i64> zeroinitializer, %i.ble
  %i.blj = and <2 x i64> %i.blh, %i.bli           ; 3 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.bjf, i64 72
  %i.bll = insertelement <2 x i64> poison, i64 %i.bkw, i64 0
  %i.blm = insertelement <2 x i64> %i.bll, i64 %i.bkx, i64 1
  %i.bln = shl nuw nsw <2 x i64> %i.blm, splat (i64 2)
  %i.blo = load <2 x i64>, ptr %i.blk, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.blp = xor <2 x i64> %i.blo, %i.bln
  %i.blq = add <2 x i64> %i.blp, splat (i64 -4)
  %i.blr = lshr <2 x i64> %i.blq, splat (i64 62)
  %i.bls = sub <2 x i64> zeroinitializer, %i.blo
  %i.blt = and <2 x i64> %i.blr, %i.bls           ; 3 uses
  %i.blu = or <2 x i64> %i.blj, %i.blt
  %i.blv = shufflevector <2 x i64> %i.blu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.blw = or <2 x i64> %i.blv, %i.blj
  %foldExtExtBinop866 = or <2 x i64> %i.blw, %i.blt
  %i.blx = extractelement <2 x i64> %foldExtExtBinop866, i64 0
  %i.bly = icmp eq i64 %i.blx, 0
  %i.blz = load ptr, ptr %i.bkq, align 8, !tbaa !293, !noalias !781 ; 3 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 16 ; 2 uses
  %i.bmb = load ptr, ptr %i.bma, align 8, !tbaa !195, !noalias !781
  tail call void @stream_wseek(ptr noundef %i.bmb, i64 noundef %i.bkt), !noalias !781
  br i1 %i.bly, label %bb.bl, label %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i238

_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i238: ; preds = %bb.bk
  %i.bmc = sub nuw nsw <2 x i64> splat (i64 4), %i.blj ; 2 uses
  %i.bmd = sub nuw nsw <2 x i64> splat (i64 4), %i.blt ; 2 uses
  %i.bme = extractelement <2 x i64> %i.bmc, i64 0
  %i.bmf = extractelement <2 x i64> %i.bmc, i64 1
  %i.bmg = extractelement <2 x i64> %i.bmd, i64 0
  %i.bmh = extractelement <2 x i64> %i.bmd, i64 1
  %i.bmi = tail call noundef i64 @zfp_encode_partial_block_strided_double_4(ptr noundef nonnull %i.blz, ptr noundef %i.bkl, i64 noundef %i.bme, i64 noundef %i.bmf, i64 noundef %i.bmg, i64 noundef %i.bmh, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !781 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit239

bb.bl:                                            ; preds = %bb.bk
  %i.bmj = tail call noundef i64 @zfp_encode_block_double_4(ptr noundef nonnull %i.blz, ptr noundef %i.bkl), !noalias !781 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit239

_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit239: ; preds = %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i238, %bb.bl
  %i.bmk = load ptr, ptr %i.bma, align 8, !tbaa !195, !noalias !781
  %i.bml = tail call i64 @stream_flush(ptr noundef %i.bmk), !noalias !781 ; 0 uses
  %.pre.i.i.i.i194 = load ptr, ptr %i.and, align 8, !tbaa !308, !noalias !781 ; 4 uses
  %.phi.trans.insert542 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i194, i64 88
  %.phi.trans.insert544 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i194, i64 96
  %.pre543 = load i64, ptr %.phi.trans.insert542, align 8, !tbaa !304, !noalias !781
  %.pre545 = load i64, ptr %.phi.trans.insert544, align 8, !tbaa !303, !noalias !781
  %.phi.trans.insert546 = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i194, i64 104
  %.pre547 = load i64, ptr %.phi.trans.insert546, align 8, !tbaa !302, !noalias !781
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit239, %bb.bj
  %i.bmm = phi i64 [ %.pre547, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit239 ], [ %i.bju, %bb.bj ] ; 2 uses
  %i.bmn = phi i64 [ %.pre545, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit239 ], [ %i.bjr, %bb.bj ] ; 2 uses
  %i.bmo = phi i64 [ %.pre543, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit239 ], [ %i.bjq, %bb.bj ] ; 2 uses
  %i.bmp = phi ptr [ %.pre.i.i.i.i194, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit239 ], [ %i.bjf, %bb.bj ] ; 4 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 48
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmp, i64 40
  %i.bms = load i64, ptr %i.bmr, align 8, !tbaa !178, !noalias !781
  %i.bmt = mul i64 %i.bms, %i.bkb
  %i.bmu = udiv i64 %i.bkb, %i.bmo                ; 2 uses
  %i.bmv = udiv i64 %i.bmu, %i.bmn                ; 2 uses
  %i.bmw = urem i64 %i.bmv, %i.bmm
  %i.bmx = udiv i64 %i.bmv, %i.bmm
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmp, i64 56
  %i.bmz = urem i64 %i.bkb, %i.bmo
  %i.bna = urem i64 %i.bmu, %i.bmn
  %i.bnb = insertelement <2 x i64> poison, i64 %i.bmz, i64 0
  %i.bnc = insertelement <2 x i64> %i.bnb, i64 %i.bna, i64 1
  %i.bnd = shl <2 x i64> %i.bnc, splat (i64 2)
  %i.bne = load <2 x i64>, ptr %i.bmy, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.bnf = xor <2 x i64> %i.bne, %i.bnd
  %i.bng = add <2 x i64> %i.bnf, splat (i64 -4)
  %i.bnh = lshr <2 x i64> %i.bng, splat (i64 62)
  %i.bni = sub <2 x i64> zeroinitializer, %i.bne
  %i.bnj = and <2 x i64> %i.bnh, %i.bni           ; 3 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bmp, i64 72
  %i.bnl = insertelement <2 x i64> poison, i64 %i.bmw, i64 0
  %i.bnm = insertelement <2 x i64> %i.bnl, i64 %i.bmx, i64 1
  %i.bnn = shl <2 x i64> %i.bnm, splat (i64 2)
  %i.bno = load <2 x i64>, ptr %i.bnk, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.bnp = xor <2 x i64> %i.bno, %i.bnn
  %i.bnq = add <2 x i64> %i.bnp, splat (i64 -4)
  %i.bnr = lshr <2 x i64> %i.bnq, splat (i64 62)
  %i.bns = sub <2 x i64> zeroinitializer, %i.bno
  %i.bnt = and <2 x i64> %i.bnr, %i.bns           ; 3 uses
  %i.bnu = or <2 x i64> %i.bnj, %i.bnt
  %i.bnv = shufflevector <2 x i64> %i.bnu, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bnw = or <2 x i64> %i.bnv, %i.bnj
  %foldExtExtBinop874 = or <2 x i64> %i.bnw, %i.bnt
  %i.bnx = extractelement <2 x i64> %foldExtExtBinop874, i64 0
  %i.bny = icmp eq i64 %i.bnx, 0
  %i.bnz = load ptr, ptr %i.bmq, align 8, !tbaa !293, !noalias !781 ; 3 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 16 ; 2 uses
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !195, !noalias !781
  tail call void @stream_rseek(ptr noundef %i.bob, i64 noundef %i.bmt), !noalias !781
  br i1 %i.bny, label %bb.bn, label %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i236

_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i236: ; preds = %bb.bm
  %i.boc = sub nuw nsw <2 x i64> splat (i64 4), %i.bnj ; 2 uses
  %i.bod = sub nuw nsw <2 x i64> splat (i64 4), %i.bnt ; 2 uses
  %i.boe = extractelement <2 x i64> %i.boc, i64 0
  %i.bof = extractelement <2 x i64> %i.boc, i64 1
  %i.bog = extractelement <2 x i64> %i.bod, i64 0
  %i.boh = extractelement <2 x i64> %i.bod, i64 1
  %i.boi = tail call noundef i64 @zfp_decode_partial_block_strided_double_4(ptr noundef nonnull %i.bnz, ptr noundef %i.bkl, i64 noundef %i.boe, i64 noundef %i.bof, i64 noundef %i.bog, i64 noundef %i.boh, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !781 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237

bb.bn:                                            ; preds = %bb.bm
  %i.boj = tail call noundef i64 @zfp_decode_block_double_4(ptr noundef nonnull %i.bnz, ptr noundef %i.bkl), !noalias !781 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237

_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237: ; preds = %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i236, %bb.bn
  %i.bok = load ptr, ptr %i.boa, align 8, !tbaa !195, !noalias !781
  %i.bol = tail call i64 @stream_align(ptr noundef %i.bok), !noalias !781 ; 0 uses
  %.pre548 = load ptr, ptr %i.and, align 8, !tbaa !308, !noalias !781 ; 4 uses
  %.phi.trans.insert549 = getelementptr inbounds nuw i8, ptr %.pre548, i64 88
  %.phi.trans.insert551 = getelementptr inbounds nuw i8, ptr %.pre548, i64 96
  %.pre550 = load i64, ptr %.phi.trans.insert549, align 8, !tbaa !304, !noalias !781
  %.pre552 = load i64, ptr %.phi.trans.insert551, align 8, !tbaa !303, !noalias !781
  %.phi.trans.insert553 = getelementptr inbounds nuw i8, ptr %.pre548, i64 104
  %.pre554 = load i64, ptr %.phi.trans.insert553, align 8, !tbaa !302, !noalias !781
  %.pre555 = load ptr, ptr %i.ane, align 8, !tbaa !95, !noalias !781
  %.pre556 = load ptr, ptr %i.anf, align 8, !tbaa !97, !noalias !781
  br label %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195

_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195: ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237
  %i.bom = phi ptr [ %i.bjd, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre556, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ]
  %i.bon = phi ptr [ %i.bje, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre555, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ]
  %i.boo = phi i64 [ %i.bju, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre554, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ] ; 2 uses
  %i.bop = phi i64 [ %i.bjr, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre552, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ] ; 2 uses
  %i.boq = phi i64 [ %i.bjq, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre550, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ] ; 2 uses
  %i.bor = phi ptr [ %i.bjf, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6accessERPSB_jb.exit.i.i.i.i191 ], [ %.pre548, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit237 ] ; 5 uses
  %i.bos = and i64 %.sroa.speculated270, 3
  %i.bot = and i64 %.sroa.speculated264, 3
  %i.bou = shl nuw nsw i64 %.sroa.speculated, 2
  %i.bov = and i64 %i.bou, 12
  %i.bow = or disjoint i64 %i.bov, %i.bot
  %i.box = shl nuw nsw i64 %.sroa.speculated267, 2
  %i.boy = and i64 %i.box, 12
  %.idx.i.i.i.i193 = shl nuw nsw i64 %i.bow, 7
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bkl, i64 %.idx.i.i.i.i193
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %i.boy
  %i.bpb = getelementptr inbounds nuw [8 x i8], ptr %i.bpa, i64 %i.bos
  %i.bpc = load double, ptr %i.bpb, align 8, !tbaa !49, !noalias !781
  %i.bpd = load i32, ptr %i.anc, align 8, !tbaa !267, !noalias !781
  %i.bpe = and i32 %i.bpd, 1
  %i.bpf = zext nneg i32 %i.bpe to i64            ; 2 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bpf ; 2 uses
  %i.bph = load i32, ptr %i.bpg, align 4, !tbaa !306, !noalias !781 ; 2 uses
  %i.bpi = lshr i32 %i.bph, 1                     ; 2 uses
  %i.bpj = getelementptr inbounds nuw [2048 x i8], ptr %i.bom, i64 %i.bpf ; 5 uses
  store i32 3, ptr %i.bpg, align 4, !tbaa !39, !noalias !781
  %i.bpk = add nsw i32 %i.bpi, -1                 ; 2 uses
  %i.bpl = zext i32 %i.bpk to i64                 ; 3 uses
  %.not.i.i.i.i188 = icmp eq i32 %i.bpk, 0
  br i1 %.not.i.i.i.i188, label %_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195
  %11 = icmp eq i32 %i.bpi, 1
  %i.bpm = trunc i32 %i.bph to i1
  %12 = or i1 %11, %i.bpm
  br i1 %12, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bor, i64 48
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bor, i64 40
  %i.bpp = load i64, ptr %i.bpo, align 8, !tbaa !178, !noalias !781
  %i.bpq = mul i64 %i.bpp, %i.bpl
  %i.bpr = udiv i64 %i.bpl, %i.boq                ; 2 uses
  %i.bps = udiv i64 %i.bpr, %i.bop                ; 2 uses
  %i.bpt = urem i64 %i.bps, %i.boo
  %i.bpu = udiv i64 %i.bps, %i.boo
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bor, i64 56
  %i.bpw = urem i64 %i.bpl, %i.boq
  %i.bpx = urem i64 %i.bpr, %i.bop
  %i.bpy = insertelement <2 x i64> poison, i64 %i.bpw, i64 0
  %i.bpz = insertelement <2 x i64> %i.bpy, i64 %i.bpx, i64 1
  %i.bqa = shl nuw nsw <2 x i64> %i.bpz, splat (i64 2)
  %i.bqb = load <2 x i64>, ptr %i.bpv, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.bqc = xor <2 x i64> %i.bqb, %i.bqa
  %i.bqd = add <2 x i64> %i.bqc, splat (i64 -4)
  %i.bqe = lshr <2 x i64> %i.bqd, splat (i64 62)
  %i.bqf = sub <2 x i64> zeroinitializer, %i.bqb
  %i.bqg = and <2 x i64> %i.bqe, %i.bqf           ; 3 uses
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bor, i64 72
  %i.bqi = insertelement <2 x i64> poison, i64 %i.bpt, i64 0
  %i.bqj = insertelement <2 x i64> %i.bqi, i64 %i.bpu, i64 1
  %i.bqk = shl nuw nsw <2 x i64> %i.bqj, splat (i64 2)
  %i.bql = load <2 x i64>, ptr %i.bqh, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.bqm = xor <2 x i64> %i.bql, %i.bqk
  %i.bqn = add <2 x i64> %i.bqm, splat (i64 -4)
  %i.bqo = lshr <2 x i64> %i.bqn, splat (i64 62)
  %i.bqp = sub <2 x i64> zeroinitializer, %i.bql
  %i.bqq = and <2 x i64> %i.bqo, %i.bqp           ; 3 uses
  %i.bqr = or <2 x i64> %i.bqg, %i.bqq
  %i.bqs = shufflevector <2 x i64> %i.bqr, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.bqt = or <2 x i64> %i.bqs, %i.bqg
  %foldExtExtBinop882 = or <2 x i64> %i.bqt, %i.bqq
  %i.bqu = extractelement <2 x i64> %foldExtExtBinop882, i64 0
  %i.bqv = icmp eq i64 %i.bqu, 0
  %i.bqw = load ptr, ptr %i.bpn, align 8, !tbaa !293, !noalias !781 ; 3 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqw, i64 16 ; 2 uses
  %i.bqy = load ptr, ptr %i.bqx, align 8, !tbaa !195, !noalias !781
  tail call void @stream_wseek(ptr noundef %i.bqy, i64 noundef %i.bpq), !noalias !781
  br i1 %i.bqv, label %bb.bq, label %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i234

_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i234: ; preds = %bb.bp
  %i.bqz = sub nuw nsw <2 x i64> splat (i64 4), %i.bqg ; 2 uses
  %i.bra = sub nuw nsw <2 x i64> splat (i64 4), %i.bqq ; 2 uses
  %i.brb = extractelement <2 x i64> %i.bqz, i64 0
  %i.brc = extractelement <2 x i64> %i.bqz, i64 1
  %i.brd = extractelement <2 x i64> %i.bra, i64 0
  %i.bre = extractelement <2 x i64> %i.bra, i64 1
  %i.brf = tail call noundef i64 @zfp_encode_partial_block_strided_double_4(ptr noundef nonnull %i.bqw, ptr noundef %i.bpj, i64 noundef %i.brb, i64 noundef %i.brc, i64 noundef %i.brd, i64 noundef %i.bre, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !781 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235

bb.bq:                                            ; preds = %bb.bp
  %i.brg = tail call noundef i64 @zfp_encode_block_double_4(ptr noundef nonnull %i.bqw, ptr noundef %i.bpj), !noalias !781 ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235

_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235: ; preds = %_ZNK3zfp5codec4zfp4IdE20encode_block_stridedEmjPKdllll.exit.i.i234, %bb.bq
  %i.brh = load ptr, ptr %i.bqx, align 8, !tbaa !195, !noalias !781
  %i.bri = tail call i64 @stream_flush(ptr noundef %i.brh), !noalias !781 ; 0 uses
  %.pre.i.i.i.i190 = load ptr, ptr %i.and, align 8, !tbaa !308, !noalias !781
  br label %bb.br

bb.br:                                            ; preds = %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235, %bb.bo
  %i.brj = phi ptr [ %.pre.i.i.i.i190, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKd.exit235 ], [ %i.bor, %bb.bo ] ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 48
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brj, i64 56
  %i.brm = load <4 x i64>, ptr %i.brl, align 8, !tbaa !40, !noalias !781 ; 2 uses
  %i.brn = add <4 x i64> %i.brm, splat (i64 -4)
  %i.bro = lshr <4 x i64> %i.brn, splat (i64 62)
  %i.brp = sub <4 x i64> zeroinitializer, %i.brm
  %i.brq = and <4 x i64> %i.bro, %i.brp           ; 3 uses
  %i.brr = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.brq)
  %i.brs = icmp eq i64 %i.brr, 0
  %i.brt = load ptr, ptr %i.brk, align 8, !tbaa !293, !noalias !781 ; 3 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 16 ; 2 uses
  %i.brv = load ptr, ptr %i.bru, align 8, !tbaa !195, !noalias !781
  tail call void @stream_rseek(ptr noundef %i.brv, i64 noundef 0), !noalias !781
  br i1 %i.brs, label %bb.bs, label %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i232

_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i232: ; preds = %bb.br
  %i.brw = shufflevector <4 x i64> %i.brq, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.brx = sub nuw nsw <2 x i64> splat (i64 4), %i.brw ; 2 uses
  %i.bry = shufflevector <4 x i64> %i.brq, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.brz = sub nuw nsw <2 x i64> splat (i64 4), %i.bry ; 2 uses
  %i.bsa = extractelement <2 x i64> %i.brx, i64 0
  %i.bsb = extractelement <2 x i64> %i.brx, i64 1
  %i.bsc = extractelement <2 x i64> %i.brz, i64 0
  %i.bsd = extractelement <2 x i64> %i.brz, i64 1
  %i.bse = tail call noundef i64 @zfp_decode_partial_block_strided_double_4(ptr noundef nonnull %i.brt, ptr noundef %i.bpj, i64 noundef %i.bsa, i64 noundef %i.bsb, i64 noundef %i.bsc, i64 noundef %i.bsd, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64), !noalias !781 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit233

bb.bs:                                            ; preds = %bb.br
  %i.bsf = tail call noundef i64 @zfp_decode_block_double_4(ptr noundef nonnull %i.brt, ptr noundef %i.bpj), !noalias !781 ; 0 uses
  br label %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit233

_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit233: ; preds = %_ZNK3zfp5codec4zfp4IdE20decode_block_stridedEmjPdllll.exit.i.i232, %bb.bs
  %i.bsg = load ptr, ptr %i.bru, align 8, !tbaa !195, !noalias !781
  %i.bsh = tail call i64 @stream_align(ptr noundef %i.bsg), !noalias !781 ; 0 uses
  br label %_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit

_ZN3zfp8internal4dim49referenceINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3setEd.exit: ; preds = %_ZNK3zfp8internal4dim412const_handleINS_6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE3getEv.exit195, %_ZNK3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6decodeEmPd.exit233
  store double %i.bpc, ptr %i.bpj, align 8, !tbaa !49, !noalias !781
  %i.bsi = add i32 %.0414, 1                      ; 2 uses
  %i.bsj = zext i32 %i.bsi to i64                 ; 2 uses
  %i.bsk = load i64, ptr %i.anb, align 8, !tbaa !126 ; 2 uses
  %i.bsl = add i64 %i.bsk, -1
  %i.bsm = icmp ugt i64 %i.bsl, %i.bsj
  br i1 %i.bsm, label %bb.ax, label %._crit_edge416.loopexit
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #14

attributes #0 = { norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"vtable pointer", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !15, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!22 = !{!"_ZTSSt6locale", !21, i64 0}
!23 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !19, i64 48, !7, i64 64, !8, i64 192, !20, i64 200, !22, i64 208}
!24 = !{!"p1 _ZTSSo", !11, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0, !24, i64 216, !7, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!31 = !{!30, !27, i64 240}
end_hunk_9
