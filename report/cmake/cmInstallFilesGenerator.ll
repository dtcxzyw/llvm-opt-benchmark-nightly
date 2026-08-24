Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmInstallFilesGenerator?download=true
inline.NumInlined: 220
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK23cmInstallFilesGenerator8GetFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load i8, ptr %i.b, align 8, !tbaa !59, !range !60, !noundef !64
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %.not39 = icmp eq ptr %i.f, %i.h
  br i1 %.not39, label %_ZN6cmListD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.c

_ZN6cmListD2Ev.exit.loopexit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.p = load <2 x ptr>, ptr %3, align 16, !tbaa !56
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre43 = load ptr, ptr %.phi.trans.insert42, align 16, !tbaa !55
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %_ZN6cmListD2Ev.exit.loopexit, %bb.b
  %i.q = phi ptr [ %.pre43, %_ZN6cmListD2Ev.exit.loopexit ], [ null, %bb.b ]
  %i.r = phi <2 x ptr> [ %i.p, %_ZN6cmListD2Ev.exit.loopexit ], [ splat (ptr null), %bb.b ]
  store <2 x ptr> %i.r, ptr %0, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.s, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.p

bb.c:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %.sroa.027.040 = phi ptr [ %i.f, %.lr.ph ], [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.i, ptr %5, align 8, !tbaa !9
  %i.t = load ptr, ptr %.sroa.027.040, align 8, !tbaa !13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.027.040, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.v, ptr %i.a, align 8, !tbaa !17
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.x, ptr %5, align 8, !tbaa !13
  %i.y = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.y, ptr %i.i, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.z = phi ptr [ %i.x, %.noexc ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !18
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  store i64 %i.ab, ptr %i.j, align 8, !tbaa !16
  %i.ac = load ptr, ptr %5, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.l, ptr %6, align 8, !tbaa !9
  store i64 0, ptr %i.m, align 8, !tbaa !16
  store i8 0, ptr %i.l, align 8, !tbaa !18
  invoke void @_ZN21cmGeneratorExpression8EvaluateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK16cmLocalGeneratorRKS5_PK17cmGeneratorTargetP31cmGeneratorExpressionDAGCheckerSD_SA_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 %5, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.ag = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.af, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1, i32 noundef 0)
          to label %_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit unwind label %bb.j ; 0 uses

_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit: ; preds = %bb.g
  %i.ah = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.o
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !18
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6cmList6appendERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_14ExpandElementsENS_13EmptyElementsE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.l
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.an = load i64, ptr %i.l, align 8, !tbaa !18
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ap = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.i
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !18
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.027.040, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.h
  br i1 %.not, label %_ZN6cmListD2Ev.exit.loopexit, label %bb.c

bb.h:                                             ; preds = %.noexc.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

bb.j:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.o
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.j
  %i.az = load i64, ptr %i.o, align 8, !tbaa !18
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.i
  %.pn = phi { ptr, i32 } [ %i.av, %bb.i ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.aw, %bb.j ] ; 2 uses
  %i.bb = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.l
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !18
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bf = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.i
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

common.resume:                                    ; preds = %bb.n, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bx, %bb.o ], [ %i.bx, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53 ; 3 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !54 ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp ugt i64 %i.bp, 9223372036854775776
  br i1 %i.bq, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !33

.noexc.i.i:                                       ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #21
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !56
  %.pre41 = load ptr, ptr %i.bk, align 8, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %7 = phi ptr [ %i.bl, %bb.k ], [ %.pre41, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ]
  %8 = phi ptr [ %i.bm, %bb.k ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ]
  %i.bs = phi ptr [ null, %bb.k ], [ %i.br, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !54
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !53
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bp
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !55
  %i.bw = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %8, ptr %7, ptr noundef %i.bs)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bp) #19
  br label %common.resume

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.m
  store ptr %i.bw, ptr %i.bt, align 8, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, %_ZN6cmListD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !18
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !62

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #19
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23cmInstallFilesGenerator19AddFilesInstallRuleERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23cmScriptGeneratorIndentRKSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(314) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNK23cmInstallFilesGenerator14GetDestinationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(314) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57, !range !60, !noundef !64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 313
  %i.d = load i8, ptr %i.c, align 1, !tbaa !58, !range !60, !noundef !64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNK23cmInstallFilesGenerator9GetRenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(314) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = trunc nuw i8 %i.d to i1
  %i.h = trunc nuw i8 %i.b to i1
  %i.i = select i1 %i.h, i32 5, i32 4
  %i.j = load ptr, ptr %6, align 8, !tbaa !13
  invoke void @_ZN18cmInstallGenerator14AddInstallRuleERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE13cmInstallTypeRKSt6vectorIS6_SaIS6_EEbPKcSG_SG_SG_23cmScriptGeneratorIndentSG_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext %i.g, ptr noundef %i.f, ptr noundef null, ptr noundef %i.j, ptr noundef null, i32 %3, ptr noundef null)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %6, align 8, !tbaa !13     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.p = load ptr, ptr %5, align 8, !tbaa !13     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = load i64, ptr %i.q, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.d:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.e:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !13     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  %i.z = load i64, ptr %i.x, align 8, !tbaa !18
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ab = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !18
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn
}

declare void @_ZN18cmInstallGenerator14AddInstallRuleERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE13cmInstallTypeRKSt6vectorIS6_SaIS6_EEbPKcSG_SG_SG_23cmScriptGeneratorIndentSG_(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23cmInstallFilesGenerator21GenerateScriptActionsERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(314) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !60, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17cmScriptGenerator21GenerateScriptActionsERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2)
  br label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !16
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke void @_ZN23cmInstallFilesGenerator19AddFilesInstallRuleERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23cmScriptGeneratorIndentRKSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(314) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.d, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
