Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarparse?download=true
inline.NumInlined: 4037
inline.NumDeleted: 1072
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN11colvarparse20mark_key_set_defaultISt6vectorIdSaIdEEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKNS_10Parse_ModeE:bb.a
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !25
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  %i.fj = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !25
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.v ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.fo = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ay
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.fq = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.u ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  %i.fs = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ae
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN12colvarmodule6to_strB5cxx11ERKSt6vectorIdSaIdEEmm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIN12colvarmodule7rvectorESaISC_EERKSE_NS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %5, ptr %i.a, align 4, !tbaa !54
  %i.b = call noundef zeroext i1 @_ZN11colvarparse19_get_keyval_vector_IN12colvarmodule7rvectorEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIT_SaISE_EERKSG_RKNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11colvarparse19_get_keyval_vector_IN12colvarmodule7rvectorEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIT_SaISE_EERKSG_RKNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 17 uses
  %9 = alloca %"class.std::vector.68", align 8    ; 16 uses
  %10 = alloca %"class.colvarmodule::rvector", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !21
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.e, ptr %i.b, align 8, !tbaa !44
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !26
  %i.h = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.h, ptr %i.c, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !25
  store i8 %i.j, ptr %i.i, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %2, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !24
  %i.m = load ptr, ptr %6, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !24
  store i8 0, ptr %i.o, align 8, !tbaa !25
  %i.q = invoke noundef zeroext i1 @_ZN11colvarparse20get_key_string_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRS5_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.at, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 8)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.u = load ptr, ptr %3, align 8, !tbaa !135    ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.ab

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !134
  %i.ac = load ptr, ptr %4, align 8, !tbaa !135
  %.not86 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not86, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6assignEmRKS1_.exit unwind label %bb.m ; 0 uses

bb.k:                                             ; preds = %.critedge94._crit_edge, %bb.bp, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.l:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.m:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.i
  %i.ah = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %.lr.ph.i.i.i.i.i.i.i.preheader unwind label %bb.p ; 3 uses

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %18 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %9, align 8, !tbaa !135   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !136
  store ptr %i.ah, ptr %9, align 8, !tbaa !135
  store ptr %18, ptr %i.ak, align 8, !tbaa !134
  store ptr %18, ptr %i.ai, align 8, !tbaa !136
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6assignEmRKS1_.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6assignEmRKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6assignEmRKS1_.exit: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6assignEmRKS1_.exit
  %.055 = phi i64 [ 0, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE6assignEmRKS1_.exit ], [ %i.cw, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !134
  %i.at = load ptr, ptr %9, align 8, !tbaa !135   ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = sdiv exact i64 %i.aw, 24                ; 2 uses
  %i.ay = icmp ult i64 %.055, %i.ax
  %i.az = add nsw i64 %i.ax, -1
  %spec.select = select i1 %i.ay, i64 %.055, i64 %i.az
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %spec.select
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZrsRSiRN12colvarmodule7rvectorE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %bb.r unwind label %.loopexit  ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !79
  %i.bi = and i32 %i.bh, 5
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %9, align 8, !tbaa !135   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !136
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #20
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.loopexit205

.loopexit:                                        ; preds = %bb.q, %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !134
  %i.bq = load ptr, ptr %9, align 8, !tbaa !135   ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24                ; 2 uses
  %i.bv = icmp ult i64 %.055, %i.bu
  %i.bw = add nsw i64 %i.bu, -1
  %spec.select204 = select i1 %i.bv, i64 %.055, i64 %i.bw
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %spec.select204 ; 2 uses
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !134 ; 5 uses
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !136
  %.not.i97 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !86
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr %i.cb, ptr %i.s, align 8, !tbaa !134
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr %3, align 8, !tbaa !135   ; 5 uses
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.x, label %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.ch = sdiv exact i64 %i.cf, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = call i64 @llvm.umin.i64(i64 %i.ci, i64 384307168202282325)
  %i.cl = select i1 %i.cj, i64 384307168202282325, i64 %i.ck ; 3 uses
  %.not.i.i.i98 = icmp ne i64 %i.cl, 0
  call void @llvm.assume(i1 %.not.i.i.i98)
  %i.cm = mul nuw nsw i64 %i.cl, 24
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #24
          to label %.noexc100 unwind label %.loopexit ; 5 uses

.noexc100:                                        ; preds = %_ZNKSt6vectorIN12colvarmodule7rvectorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false), !tbaa.struct !86
  %.not10.i.i.i.i.i = icmp eq ptr %i.cc, %i.by
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc100, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i ], [ %i.cn, %.noexc100 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %i.cc, %.noexc100 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !86, !alias.scope !1384
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, %i.by
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1362

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc100
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cn, %.noexc100 ], [ %i.cq, %.lr.ph.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.cs = load ptr, ptr %i.ar, align 8, !tbaa !136
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cu) #20
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.cn, ptr %3, align 8, !tbaa !135
  store ptr %i.cr, ptr %i.s, align 8, !tbaa !134
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cl
  store ptr %i.cv, ptr %i.ar, align 8, !tbaa !136
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.v
  %i.cw = add i64 %.055, 1
  br label %bb.q, !llvm.loop !1363

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.m
  %.pn87 = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.ag, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cx = load ptr, ptr %9, align 8, !tbaa !135   ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit102, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !136
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #20
  br label %_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit102

_ZNSt6vectorIN12colvarmodule7rvectorESaIS1_EED2Ev.exit102: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ar

bb.ab:                                            ; preds = %.lr.ph, %bb.an
  %i.dd = phi ptr [ %i.u, %.lr.ph ], [ %i.fl, %bb.an ]
  %.054230 = phi i64 [ 0, %.lr.ph ], [ %i.fj, %bb.an ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.dd, i64 %.054230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !tbaa.struct !86
  %i.df = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZrsRSiRN12colvarmodule7rvectorE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.ac unwind label %bb.ae     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN11colvarparse20mark_key_set_defaultISt6vectorIN12colvarmodule7rvectorESaIS3_EEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKNS_10Parse_ModeE:bb.a
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !25
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ex, %bb.w ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ] ; 2 uses
  %i.fj = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !25
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.v ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.fo = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ay
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.fq = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.u ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  %i.fs = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ae
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN12colvarmodule6to_strB5cxx11ERKSt6vectorINS_7rvectorESaIS1_EEmm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIN12colvarmodule10quaternionESaISC_EERKSE_NS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %5) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %5, ptr %i.a, align 4, !tbaa !54
  %i.b = call noundef zeroext i1 @_ZN11colvarparse19_get_keyval_vector_IN12colvarmodule10quaternionEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIT_SaISE_EERKSG_RKNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11colvarparse19_get_keyval_vector_IN12colvarmodule10quaternionEEEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRSt6vectorIT_SaISE_EERKSG_RKNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 17 uses
  %9 = alloca %"class.std::vector.75", align 8    ; 16 uses
  %10 = alloca %"class.colvarmodule::quaternion", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !21
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.e, ptr %i.b, align 8, !tbaa !44
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !26
  %i.h = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.h, ptr %i.c, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !25
  store i8 %i.j, ptr %i.i, align 1, !tbaa !25
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %2, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !24
  %i.m = load ptr, ptr %6, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.o, ptr %7, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !24
  store i8 0, ptr %i.o, align 8, !tbaa !25
  %i.q = invoke noundef zeroext i1 @_ZN11colvarparse20get_key_string_valueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRS5_(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.at, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 8)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !139
  %i.u = load ptr, ptr %3, align 8, !tbaa !140    ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.ab

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !139
  %i.ac = load ptr, ptr %4, align 8, !tbaa !140
  %.not86 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not86, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE6assignEmRKS1_.exit unwind label %bb.m ; 0 uses

bb.k:                                             ; preds = %.critedge94._crit_edge, %bb.bp, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.l:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.m:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %bb.i
  %i.ah = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.lr.ph.i.i.i.i.i.i.i.preheader unwind label %bb.p ; 3 uses

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i8 0, i64 32, i1 false)
  %18 = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %9, align 8, !tbaa !140   ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !141
  store ptr %i.ah, ptr %9, align 8, !tbaa !140
  store ptr %18, ptr %i.ak, align 8, !tbaa !139
  store ptr %18, ptr %i.ai, align 8, !tbaa !141
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE6assignEmRKS1_.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE6assignEmRKS1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE6assignEmRKS1_.exit: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE6assignEmRKS1_.exit
  %.055 = phi i64 [ 0, %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE6assignEmRKS1_.exit ], [ %i.cw, %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !139
  %i.at = load ptr, ptr %9, align 8, !tbaa !140   ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = icmp ult i64 %.055, %i.ax
  %i.az = add nsw i64 %i.ax, -1
  %spec.select = select i1 %i.ay, i64 %.055, i64 %i.az
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %spec.select
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZrsRSiRN12colvarmodule10quaternionE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
          to label %bb.r unwind label %.loopexit  ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !79
  %i.bi = and i32 %i.bh, 5
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %9, align 8, !tbaa !140   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !141
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #20
  br label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EED2Ev.exit

_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EED2Ev.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.loopexit205

.loopexit:                                        ; preds = %bb.q, %_ZNKSt6vectorIN12colvarmodule10quaternionESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  %i.bp = load ptr, ptr %i.aq, align 8, !tbaa !139
  %i.bq = load ptr, ptr %9, align 8, !tbaa !140   ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 5                 ; 2 uses
  %i.bv = icmp ult i64 %.055, %i.bu
  %i.bw = add nsw i64 %i.bu, -1
  %spec.select204 = select i1 %i.bv, i64 %.055, i64 %i.bw
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %spec.select204 ; 2 uses
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !139 ; 5 uses
  %i.bz = load ptr, ptr %i.ar, align 8, !tbaa !141
  %.not.i97 = icmp eq ptr %i.by, %i.bz
  br i1 %.not.i97, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !tbaa.struct !87
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store ptr %i.cb, ptr %i.s, align 8, !tbaa !139
  br label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr %3, align 8, !tbaa !140   ; 5 uses
  %i.cd = ptrtoint ptr %i.by to i64
  %i.ce = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775776
  br i1 %i.cg, label %bb.x, label %_ZNKSt6vectorIN12colvarmodule10quaternionESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
          to label %.noexc99 unwind label %.loopexit.split-lp

.noexc99:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN12colvarmodule10quaternionESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.w
  %i.ch = ashr exact i64 %i.cf, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = call i64 @llvm.umin.i64(i64 %i.ci, i64 288230376151711743)
  %i.cl = select i1 %i.cj, i64 288230376151711743, i64 %i.ck ; 3 uses
  %.not.i.i.i98 = icmp ne i64 %i.cl, 0
  call void @llvm.assume(i1 %.not.i.i.i98)
  %i.cm = shl nuw nsw i64 %i.cl, 5
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #24
          to label %.noexc100 unwind label %.loopexit ; 5 uses

.noexc100:                                        ; preds = %_ZNKSt6vectorIN12colvarmodule10quaternionESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !tbaa.struct !87
  %.not10.i.i.i.i.i = icmp eq ptr %i.cc, %i.by
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc100, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i ], [ %i.cn, %.noexc100 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %i.cc, %.noexc100 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !87, !alias.scope !1465
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, %i.by
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1443

_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc100
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cn, %.noexc100 ], [ %i.cq, %.lr.ph.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.cs = load ptr, ptr %i.ar, align 8, !tbaa !141
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cu) #20
  br label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.cn, ptr %3, align 8, !tbaa !140
  store ptr %i.cr, ptr %i.s, align 8, !tbaa !139
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cl
  store ptr %i.cv, ptr %i.ar, align 8, !tbaa !141
  br label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.v
  %i.cw = add i64 %.055, 1
  br label %bb.q, !llvm.loop !1444

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %bb.m
  %.pn87 = phi { ptr, i32 } [ %i.ap, %bb.p ], [ %i.ag, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cx = load ptr, ptr %9, align 8, !tbaa !140   ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EED2Ev.exit102, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !141
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #20
  br label %_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EED2Ev.exit102

_ZNSt6vectorIN12colvarmodule10quaternionESaIS1_EED2Ev.exit102: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.ar

bb.ab:                                            ; preds = %.lr.ph, %bb.an
  %i.dd = phi ptr [ %i.u, %.lr.ph ], [ %i.fl, %bb.an ]
  %.054230 = phi i64 [ 0, %.lr.ph ], [ %i.fj, %bb.an ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.dd, i64 %.054230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i64 32, i1 false), !tbaa.struct !87
  %i.df = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZrsRSiRN12colvarmodule10quaternionE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ac unwind label %bb.ae     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !17
end_hunk_1
