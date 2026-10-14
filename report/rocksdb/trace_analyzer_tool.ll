Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/trace_analyzer_tool?download=true
inline.NumInlined: 5310
inline.NumDeleted: 2090
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7rocksdb13TraceAnalyzerC2ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS_15AnalyzerOptionsE:bb.a
  %i.ep = load i8, ptr @_ZN3fLB19FLAGS_analyze_mergeE, align 1, !tbaa !217, !range !218, !noundef !219
  %i.eq = load ptr, ptr %i.ak, align 8, !tbaa !212 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 632
  store i8 %i.ep, ptr %i.er, align 8, !tbaa !224
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 720
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 728
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !75
  %i.ev = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 noundef 0, i64 noundef %i.eu, ptr noundef nonnull @.str.150, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit48 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit46
  %i.ew = load i8, ptr @_ZN3fLB22FLAGS_analyze_iteratorE, align 1, !tbaa !217, !range !218, !noundef !219
  %i.ex = load ptr, ptr %i.ak, align 8, !tbaa !212 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 752
  store i8 %i.ew, ptr %i.ey, align 8, !tbaa !224
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 840
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 848
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !75
  %i.fc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ez, i64 noundef 0, i64 noundef %i.fb, ptr noundef nonnull @.str.151, i64 noundef 20)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit50 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit48
  %i.fd = load i8, ptr @_ZN3fLB22FLAGS_analyze_iteratorE, align 1, !tbaa !217, !range !218, !noundef !219
  %i.fe = load ptr, ptr %i.ak, align 8, !tbaa !212 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 872
  store i8 %i.fd, ptr %i.ff, align 8, !tbaa !224
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 960
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 968
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !75
  %i.fj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, i64 noundef 0, i64 noundef %i.fi, ptr noundef nonnull @.str.152, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit52 unwind label %bb.t ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit50
  %i.fk = load i8, ptr @_ZN3fLB22FLAGS_analyze_multigetE, align 1, !tbaa !217, !range !218, !noundef !219
  %i.fl = load ptr, ptr %i.ak, align 8, !tbaa !212 ; 11 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 992
  store i8 %i.fk, ptr %i.fm, align 8, !tbaa !224
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  store i32 0, ptr %i.fn, align 8, !tbaa !225
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 184
  store i32 0, ptr %i.fo, align 8, !tbaa !225
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 304
  store i32 0, ptr %i.fp, align 8, !tbaa !225
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 424
  store i32 0, ptr %i.fq, align 8, !tbaa !225
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 544
  store i32 0, ptr %i.fr, align 8, !tbaa !225
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 664
  store i32 0, ptr %i.fs, align 8, !tbaa !225
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 784
  store i32 0, ptr %i.ft, align 8, !tbaa !225
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 904
  store i32 0, ptr %i.fu, align 8, !tbaa !225
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 1024
  store i32 0, ptr %i.fv, align 8, !tbaa !225
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 1144
  store i32 0, ptr %i.fw, align 8, !tbaa !225
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit34, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bq, %_ZNSt10unique_ptrIN7rocksdb12WritableFileESt14default_deleteIS1_EED2Ev.exit34 ], [ %i.bp, %bb.s ] ; 2 uses
  %i.fx = load ptr, ptr %i.s, align 8, !tbaa !43  ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.t
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.fz = load i64, ptr %i.t, align 8, !tbaa !44
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.aa ] ; 2 uses
  %i.gb = load ptr, ptr %i.e, align 8, !tbaa !43  ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.f
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gd = load i64, ptr %i.f, align 8, !tbaa !44
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.gf = load ptr, ptr %i.c, align 8, !tbaa !226 ; 3 uses
  %.not.i56 = icmp eq ptr %i.gf, null
  br i1 %.not.i56, label %_ZNSt10unique_ptrIN7rocksdb11TraceReaderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb11TraceReaderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb11TraceReaderEEclEPS1_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !157
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gf) #31, !inline_history !8
  br label %_ZNSt10unique_ptrIN7rocksdb11TraceReaderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb11TraceReaderESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN7rocksdb11TraceReaderEEclEPS1_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.p ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN7rocksdb11TraceReaderEEclEPS1_.exit.i ]
  call void @_ZN7rocksdb10WriteBatch7HandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #31
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN7rocksdb10EnvOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb15AnalyzerOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !67     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, !prof !76

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !69
  %i.n = load ptr, ptr %1, align 8, !tbaa !459
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !459
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !67     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #27
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.bp, %bb.g ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit:     ; preds = %bb.c
  store ptr %i.p, ptr %i.k, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !83   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !72  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i4, label %.noexc6, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit
  %i.ae = icmp ugt i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %.noexc.i.i5, label %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, !prof !76

.noexc.i.i5:                                      ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i5
  unreachable

_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.f
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #30
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit
  %i.ag = phi ptr [ null, %_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2ERKS3_.exit ], [ %i.af, %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !73
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !79  ; 7 uses
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !79  ; 3 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc6
  %2 = ptrtoaddr ptr %i.ak to i64                 ; 2 uses
  %i.an = ptrtoaddr ptr %i.ag to i64
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %2                       ; 3 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.aq, 24
  %i.at = sub i64 %2, %i.an
  %diff.check = icmp ugt i64 %i.at, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.aq, 120
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %i.as, 12
  %n.vec = and i64 %i.as, 4611686018427387888     ; 4 uses
  %i.av = shl i64 %n.vec, 3                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.ag, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ak, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ay ; 4 uses
  %next.gep11 = getelementptr i8, ptr %i.ak, i64 %i.ay ; 4 uses
  %i.az = getelementptr i8, ptr %next.gep11, i64 32
  %i.ba = getelementptr i8, ptr %next.gep11, i64 64
  %i.bb = getelementptr i8, ptr %next.gep11, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep11, align 4
  %wide.load12 = load <4 x i64>, ptr %i.az, align 4
  %wide.load13 = load <4 x i64>, ptr %i.ba, align 4
  %wide.load14 = load <4 x i64>, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %next.gep, i64 32
  %i.bd = getelementptr i8, ptr %next.gep, i64 64
  %i.be = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4
  store <4 x i64> %wide.load12, ptr %i.bc, align 4
  store <4 x i64> %wide.load13, ptr %i.bd, align 4
  store <4 x i64> %wide.load14, ptr %i.be, align 4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !456

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.as, 4611686018427387900   ; 3 uses
  %i.bg = shl i64 %n.vec16, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ag, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ak, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = shl i64 %index17, 3                     ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.ag, i64 %i.bj
  %next.gep19 = getelementptr i8, ptr %i.ak, i64 %i.bj
  %wide.load20 = load <4 x i64>, ptr %next.gep19, align 4
  store <4 x i64> %wide.load20, ptr %next.gep18, align 4
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !457

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.as, %n.vec16
  br i1 %cmp.n22, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.ag, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.bl = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 4
  store i64 %i.bl, ptr %.08.i.i.i.i.i, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.al
  br i1 %i.bo, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !458

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc6
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %.noexc6 ], [ %i.bh, %vec.epilog.middle.block ], [ %i.aw, %middle.block ], [ %i.bn, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !83
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIiiEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i5
  %i.bp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #31
  br label %common.resume
}

declare noundef ptr @_ZN7rocksdb3Env7DefaultEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIjN7rocksdb6CfUnitESt4lessIjESaISt4pairIKjS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb6CfUnitEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb6CfUnitEESt10_Select1stIS4_ESt4lessIjESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb6CfUnitEESt10_Select1stIS4_ESt4lessIjESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb8TypeUnitESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !212    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb8TypeUnitEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN7rocksdb8TypeUnitEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb10TraceStatsEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef %i.f)
          to label %_ZNSt3mapIjN7rocksdb10TraceStatsESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit.i.i.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #28
  unreachable

_ZNSt3mapIjN7rocksdb10TraceStatsESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !43 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyIN7rocksdb8TypeUnitEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt3mapIjN7rocksdb10TraceStatsESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !44
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZSt8_DestroyIN7rocksdb8TypeUnitEEvPT_.exit.i.i

_ZSt8_DestroyIN7rocksdb8TypeUnitEEvPT_.exit.i.i:  ; preds = %_ZNSt3mapIjN7rocksdb10TraceStatsESt4lessIjESaISt4pairIKjS1_EEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7rocksdb8TypeUnitEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !212
  br label %_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7rocksdb8TypeUnitESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !227
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #27
  br label %_ZNSt12_Vector_baseIN7rocksdb8TypeUnitESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7rocksdb8TypeUnitESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb8TypeUnitES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb10WriteBatch7HandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb13TraceAnalyzerD2Ev(ptr noundef nonnull align 8 dead_on_return(1476) dereferenceable(1476) initializes((0, 16)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN7rocksdb13TraceAnalyzerE, i64 16), ptr %0, align 8, !tbaa !157
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTVN7rocksdb13TraceAnalyzerE, i64 200), ptr %i.a, align 8, !tbaa !157
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !214
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
end_hunk_0
