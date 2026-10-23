Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/read_params?download=true
inline.NumInlined: 1214
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN3gmx9AwhParamsC2EPSt6vectorI9t_inpfileSaIS2_EEP14WarningHandler:bb.a
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull @.str.78, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.i = load ptr, ptr %4, align 8, !tbaa !20
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.k = invoke noundef i32 @_Z7getEnumIN3gmx16AwhPotentialTypeEET_PSt6vectorI9t_inpfileSaIS4_EEPKcP14WarningHandler(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.k, ptr %i.l, align 4, !tbaa !92
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.m, ptr noundef nonnull @.str.79)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8, !tbaa !24
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.80, i64 noundef 8)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19: ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.r = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14WarningHandler(ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1, ptr noundef %i.q)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !265
  %i.u = icmp eq i32 %i.r, -1
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = invoke noundef i64 @_ZN3gmx14makeRandomSeedEv()
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.w = shl i64 %i.v, 32
  %i.x = ashr exact i64 %i.w, 32                  ; 2 uses
  store i64 %i.x, ptr %i.t, align 8, !tbaa !265
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.y, ptr noundef nonnull @.str.81, i64 noundef %i.x) #26 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.aa, ptr noundef nonnull @.str.82)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !24
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull @.str.83, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit20: ; preds = %bb.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.af = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14WarningHandler(ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 100000, ptr noundef %i.ae)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !93
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.ah, ptr noundef nonnull @.str.84)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !24
  %i.aj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ai, ptr noundef nonnull @.str.85, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit21: ; preds = %bb.k
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.am = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14WarningHandler(ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 10, ptr noundef %i.al)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.am, ptr %i.an, align 4, !tbaa !94
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.ao, ptr noundef nonnull @.str.86)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !24
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.ap, ptr noundef nonnull @.str.87, i64 noundef 19)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit22: ; preds = %bb.m
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.at = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14WarningHandler(ptr noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 100, ptr noundef %i.as)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit22
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.av, ptr noundef nonnull @.str.88)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.aw = load i64, ptr %i.e, align 8, !tbaa !24
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.aw, ptr noundef nonnull @.str.89, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit23: ; preds = %bb.o
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.az = load ptr, ptr %4, align 8, !tbaa !20
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.bb = invoke noundef i32 @_Z7getEnumI7BooleanET_PSt6vectorI9t_inpfileSaIS3_EEPKcP14WarningHandler(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %i.ba)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit23
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = zext i1 %i.bc to i8
  store i8 %i.be, ptr %i.bd, align 8, !tbaa !266
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !45
  invoke void @_Z20printStringNoNewlinePSt6vectorI9t_inpfileSaIS0_EEPKc(ptr noundef %i.bf, ptr noundef nonnull @.str.90)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.bg = load i64, ptr %i.e, align 8, !tbaa !24
  %i.bh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.bg, ptr noundef nonnull @.str.91, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit24: ; preds = %bb.q
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.bk = invoke noundef i32 @_Z8get_eintPSt6vectorI9t_inpfileSaIS0_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiP14WarningHandler(ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1, ptr noundef %i.bj)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit24
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.an

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA79_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(79) @.str.39, i8 noundef zeroext 2)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %4, align 8, !tbaa !20
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1039, ptr noundef nonnull @.str.92, ptr noundef %i.bp) #25
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ai, %bb.am, %.noexc26, %bb.al, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.d, %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit19, %bb.f, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit20, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit21, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit22, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit23, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit24
  %lpad.loopexit.split-lp132 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn15 = phi { ptr, i32 } [ %i.br, %bb.w ], [ %i.bq, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !47  ; 4 uses
  %i.bt = load ptr, ptr %0, align 8, !tbaa !96    ; 4 uses
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 104
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph99.i, label %._crit_edge100.i

.lr.ph99.i:                                       ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br label %bb.z

._crit_edge100.i:                                 ; preds = %._crit_edge95.i, %bb.y
  %.0.lcssa.i = phi i1 [ false, %bb.y ], [ %spec.select.i, %._crit_edge95.i ]
  %i.cd = load i8, ptr %i.bd, align 8, !tbaa !266, !range !59, !noundef !60
  %i.ce = trunc nuw i8 %i.cd to i1
  %.not.i = xor i1 %i.ce, true
  %or.cond.i.a = select i1 %.not.i, i1 true, i1 %.0.lcssa.i
  br i1 %or.cond.i.a, label %.noexc26, label %bb.al

bb.z:                                             ; preds = %._crit_edge95.i, %.lr.ph99.i
  %i.cf = phi ptr [ %i.bt, %.lr.ph99.i ], [ %i.cv, %._crit_edge95.i ] ; 2 uses
  %i.cg = phi ptr [ %i.bu, %.lr.ph99.i ], [ %i.cw, %._crit_edge95.i ] ; 2 uses
  %indvars.iv121.i.a = phi i64 [ 0, %.lr.ph99.i ], [ %indvars.iv.next122.pre-phi.i.a, %._crit_edge95.i ] ; 6 uses
  %.097.i = phi i1 [ false, %.lr.ph99.i ], [ %spec.select.i, %._crit_edge95.i ]
  %i.ch = getelementptr inbounds nuw [104 x i8], ptr %i.bt, i64 %indvars.iv121.i.a ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !69
  %i.ck = icmp sgt i32 %i.cj, 0
  %spec.select.i = select i1 %i.ck, i1 true, i1 %.097.i ; 2 uses
  %i.cl = ptrtoint ptr %i.cg to i64
  %i.cm = ptrtoint ptr %i.cf to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = sdiv exact i64 %i.cn, 104
  %i.cp = shl i64 %i.co, 32
  %i.cq = ashr exact i64 %i.cp, 32                ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv121.i.a, %i.cq
  br i1 %i.cr, label %.lr.ph.i, label %.._crit_edge95_crit_edge.i

.._crit_edge95_crit_edge.i:                       ; preds = %bb.z
  %.pre133.i = add nuw nsw i64 %indvars.iv121.i.a, 1
  br label %._crit_edge95.i

.lr.ph.i:                                         ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ct = add nuw nsw i64 %indvars.iv121.i.a, 1   ; 2 uses
  %i.cu = trunc nuw nsw i64 %i.ct to i32          ; 2 uses
  br label %bb.aa

._crit_edge95.loopexit.i:                         ; preds = %._crit_edge.i
  %sext.i = shl i64 %i.fr, 32
  %.pre.i = ashr exact i64 %sext.i, 32
  br label %._crit_edge95.i

._crit_edge95.i:                                  ; preds = %._crit_edge95.loopexit.i, %.._crit_edge95_crit_edge.i
  %indvars.iv.next122.pre-phi.i.a = phi i64 [ %.pre133.i, %.._crit_edge95_crit_edge.i ], [ %i.ct, %._crit_edge95.loopexit.i ] ; 2 uses
  %.pre-phi130.i = phi i64 [ %i.cq, %.._crit_edge95_crit_edge.i ], [ %.pre.i, %._crit_edge95.loopexit.i ]
  %i.cv = phi ptr [ %i.cf, %.._crit_edge95_crit_edge.i ], [ %i.fn, %._crit_edge95.loopexit.i ]
  %i.cw = phi ptr [ %i.cg, %.._crit_edge95_crit_edge.i ], [ %i.fm, %._crit_edge95.loopexit.i ]
  %i.cx = icmp slt i64 %indvars.iv.next122.pre-phi.i.a, %.pre-phi130.i
  br i1 %i.cx, label %bb.z, label %._crit_edge100.i, !llvm.loop !260

bb.aa:                                            ; preds = %._crit_edge.i, %.lr.ph.i
  %indvars.iv123.i = phi i64 [ %indvars.iv121.i.a, %.lr.ph.i ], [ %indvars.iv.next124.pre-phi.i, %._crit_edge.i ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [104 x i8], ptr %i.bt, i64 %indvars.iv123.i ; 2 uses
  %i.cz = load ptr, ptr %i.ch, align 8, !tbaa !75 ; 3 uses
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !72
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !75 ; 3 uses
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dd, %i.db
  %i.df = ashr exact i64 %i.de, 6                 ; 3 uses
  %i.dg = icmp sgt i64 %i.df, 0
  br i1 %i.dg, label %.lr.ph79.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.aa
  %.pre132.i.a = add nuw nsw i64 %indvars.iv123.i, 1
  br label %._crit_edge.i

.lr.ph79.i:                                       ; preds = %bb.aa
  %i.dh = ptrtoint ptr %i.dc to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !72
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.dh
  %.fr.i = freeze i64 %i.dl
  %i.dm = ashr i64 %.fr.i, 6                      ; 3 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  %i.do = add nuw nsw i64 %indvars.iv123.i, 1     ; 4 uses
  br i1 %i.dn, label %.lr.ph79.split.us.i, label %._crit_edge.i

.lr.ph79.split.us.i:                              ; preds = %.lr.ph79.i
  %.not52.i = icmp eq i64 %indvars.iv121.i.a, %indvars.iv123.i
  %.not52.fr.i = freeze i1 %.not52.i
  %i.dp = trunc nuw i64 %i.do to i32              ; 2 uses
  br i1 %.not52.fr.i, label %.lr.ph79.split.us.split.us.i, label %.lr.ph79.split.us.split.i

.lr.ph79.split.us.split.us.i:                     ; preds = %.lr.ph79.split.us.i, %..loopexit_crit_edge.split.us85.us.i
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.pre-phi.i, %..loopexit_crit_edge.split.us85.us.i ], [ 0, %.lr.ph79.split.us.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr %i.cz, i64 %indvars.iv117.i ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !28
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %.lr.ph79.split.us.split.us...loopexit_crit_edge.split.us85.us_crit_edge.i, label %.preheader.us.us.i

.lr.ph79.split.us.split.us...loopexit_crit_edge.split.us85.us_crit_edge.i: ; preds = %.lr.ph79.split.us.split.us.i
  %.pre131.i = add nuw nsw i64 %indvars.iv117.i, 1
  br label %..loopexit_crit_edge.split.us85.us.i

.preheader.us.us.i:                               ; preds = %.lr.ph79.split.us.split.us.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.du = add nuw nsw i64 %indvars.iv117.i, 1     ; 2 uses
  %i.dv = trunc nuw i64 %i.du to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.preheader.us.us.i
  %indvars.iv113.i = phi i64 [ %indvars.iv.next114.i, %bb.af ], [ 0, %.preheader.us.us.i ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %indvars.iv113.i ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !28
  %i.dy = icmp eq i32 %i.dx, 1
  %.not51.us.us.i = icmp eq i64 %indvars.iv117.i, %indvars.iv113.i
  %or.cond101.i = or i1 %.not51.us.us.i, %i.dy
  br i1 %or.cond101.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = load i32, ptr %i.dt, align 4, !tbaa !29
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !29
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ed = load i32, ptr %i.dt, align 4, !tbaa !29
  %i.ee = add nsw i32 %i.ed, 1
  %i.ef = trunc i64 %indvars.iv113.i to i32
  %i.eg = add i32 %i.ef, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.96, i32 noundef %i.ee, i32 noundef %i.cu, i32 noundef %i.dv, i32 noundef %i.dp, i32 noundef %i.eg)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.ad
  %i.eh = load ptr, ptr %3, align 8, !tbaa !20
  %i.ei = load i64, ptr %i.cb, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 %i.ei, ptr %i.eh)
          to label %bb.ae unwind label %.split.us.split.us.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %.noexc
  %i.ej = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.cc
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us84.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us82.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us82.us.i: ; preds = %bb.ae
  %i.el = load i64, ptr %i.cc, align 8, !tbaa !21
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us84.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us84.us.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us82.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us84.us.i, %bb.ac, %bb.ab
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next114.i, %i.dm
  br i1 %exitcond116.not.i, label %..loopexit_crit_edge.split.us85.us.i, label %bb.ab, !llvm.loop !261

..loopexit_crit_edge.split.us85.us.i:             ; preds = %bb.af, %.lr.ph79.split.us.split.us...loopexit_crit_edge.split.us85.us_crit_edge.i
  %indvars.iv.next118.pre-phi.i = phi i64 [ %.pre131.i, %.lr.ph79.split.us.split.us...loopexit_crit_edge.split.us85.us_crit_edge.i ], [ %i.du, %bb.af ] ; 2 uses
  %exitcond120.not.i = icmp eq i64 %indvars.iv.next118.pre-phi.i, %i.df
  br i1 %exitcond120.not.i, label %._crit_edge.i, label %.lr.ph79.split.us.split.us.i, !llvm.loop !262

.lr.ph79.split.us.split.i:                        ; preds = %.lr.ph79.split.us.i, %..loopexit_crit_edge.split.us.us.i
  %indvars.iv109.i = phi i64 [ %indvars.iv.next110.pre-phi.i, %..loopexit_crit_edge.split.us.us.i ], [ 0, %.lr.ph79.split.us.i ] ; 3 uses
  %i.en = getelementptr inbounds nuw [64 x i8], ptr %i.cz, i64 %indvars.iv109.i ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !28
  %i.ep = icmp eq i32 %i.eo, 1
  br i1 %i.ep, label %.lr.ph79.split.us.split...loopexit_crit_edge.split.us.us_crit_edge.i, label %.preheader.us.i

.lr.ph79.split.us.split...loopexit_crit_edge.split.us.us_crit_edge.i: ; preds = %.lr.ph79.split.us.split.i
  %.pre134.i = add nuw nsw i64 %indvars.iv109.i, 1
  br label %..loopexit_crit_edge.split.us.us.i

.preheader.us.i:                                  ; preds = %.lr.ph79.split.us.split.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.er = add nuw nsw i64 %indvars.iv109.i, 1     ; 2 uses
  %i.es = trunc nuw i64 %i.er to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ak, %.preheader.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ak ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.et = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %indvars.iv.i ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !28
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i32, ptr %i.eq, align 4, !tbaa !29
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !29
  %i.ez = icmp eq i32 %i.ew, %i.ey
  br i1 %i.ez, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.fa = load i32, ptr %i.eq, align 4, !tbaa !29
  %i.fb = add nsw i32 %i.fa, 1
  %i.fc = trunc i64 %indvars.iv.i to i32
  %i.fd = add i32 %i.fc, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.96, i32 noundef %i.fb, i32 noundef %i.cu, i32 noundef %i.es, i32 noundef %i.dp, i32 noundef %i.fd)
          to label %.noexc25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %bb.ai
  %i.fe = load ptr, ptr %3, align 8, !tbaa !20
  %i.ff = load i64, ptr %i.cb, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, i64 %i.ff, ptr %i.fe)
          to label %bb.aj unwind label %.split.us.split.us.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %.noexc25
  %i.fg = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.cc
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us.i: ; preds = %bb.aj
  %i.fi = load i64, ptr %i.cc, align 8, !tbaa !21
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.us.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us.us.i, %bb.ah, %bb.ag
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dm
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.split.us.us.i, label %bb.ag, !llvm.loop !261

..loopexit_crit_edge.split.us.us.i:               ; preds = %bb.ak, %.lr.ph79.split.us.split...loopexit_crit_edge.split.us.us_crit_edge.i
  %indvars.iv.next110.pre-phi.i = phi i64 [ %.pre134.i, %.lr.ph79.split.us.split...loopexit_crit_edge.split.us.us_crit_edge.i ], [ %i.er, %bb.ak ] ; 2 uses
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next110.pre-phi.i, %i.df
  br i1 %exitcond112.not.i, label %._crit_edge.i, label %.lr.ph79.split.us.split.i, !llvm.loop !262

.split.us.split.us.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc, %.noexc25
  %lpad.loopexit.split-lp129 = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.cc
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i

._crit_edge.i:                                    ; preds = %..loopexit_crit_edge.split.us.us.i, %..loopexit_crit_edge.split.us85.us.i, %.lr.ph79.i, %.._crit_edge_crit_edge.i
  %indvars.iv.next124.pre-phi.i = phi i64 [ %.pre132.i.a, %.._crit_edge_crit_edge.i ], [ %i.do, %.lr.ph79.i ], [ %i.do, %..loopexit_crit_edge.split.us85.us.i ], [ %i.do, %..loopexit_crit_edge.split.us.us.i ] ; 2 uses
  %i.fm = load ptr, ptr %i.bm, align 8, !tbaa !97 ; 2 uses
  %i.fn = load ptr, ptr %0, align 8, !tbaa !96    ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = sdiv exact i64 %i.fq, 104               ; 2 uses
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = trunc nuw i64 %indvars.iv.next124.pre-phi.i to i32
  %i.fu = icmp slt i32 %i.ft, %i.fs
  br i1 %i.fu, label %bb.aa, label %._crit_edge95.loopexit.i, !llvm.loop !263

end_hunk_0
