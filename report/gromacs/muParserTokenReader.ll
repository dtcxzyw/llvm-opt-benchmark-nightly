Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/muParserTokenReader?download=true
inline.NumInlined: 1539
inline.NumDeleted: 555
begin_hunk_0_@_ZN2mu17ParserTokenReader8IsFunTokERNS_11ParserTokenIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:bb.a
  call void @_ZdlPv(ptr noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2mu14ParserCallbackESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2mu17ParserTokenReader9IsBuiltInERNS_11ParserTokenIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !75
  %i.m = tail call noundef ptr @_ZNK2mu10ParserBase10GetOprtDefEv(ptr noundef nonnull align 8 dereferenceable(596) %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !132  ; 2 uses
  %.not300.not = icmp eq ptr %i.p, null
  br i1 %.not300.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.cu, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cu ] ; 3 uses
  %i.y = phi ptr [ %i.p, %.lr.ph ], [ %i.jw, %bb.cu ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 8 uses
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.q, ptr %2, align 8, !tbaa !15
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  store i64 %i.ab, ptr %i.j, align 8, !tbaa !108
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc79 unwind label %.loopexit.split-lp ; 2 uses

.noexc79:                                         ; preds = %.noexc.i
  store ptr %i.ad, ptr %2, align 8, !tbaa !50
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !108
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc79, %bb.b
  %i.af = phi ptr [ %i.ad, %.noexc79 ], [ %i.q, %bb.b ] ; 2 uses
  switch i64 %i.ab, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !19
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.y, i64 %i.ab, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !108 ; 2 uses
  store i64 %i.ah, ptr %i.r, align 8, !tbaa !18
  %i.ai = load ptr, ptr %2, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ak = load i32, ptr %i.s, align 8, !tbaa !130
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.o, i64 %i.al ; 2 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !15
  store i64 0, ptr %i.u, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !108
  %i.an = icmp ugt i64 %i.aa, 15
  br i1 %i.an, label %.noexc.i81, label %._crit_edge.i.i80

.noexc.i81:                                       ; preds = %bb.e
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc82 unwind label %bb.l   ; 2 uses

.noexc82:                                         ; preds = %.noexc.i81
  store ptr %i.ao, ptr %3, align 8, !tbaa !50
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !108
  store i64 %i.ap, ptr %i.t, align 8, !tbaa !19
  br label %._crit_edge.i.i80

._crit_edge.i.i80:                                ; preds = %.noexc82, %bb.e
  %i.aq = phi ptr [ %i.ao, %.noexc82 ], [ %i.t, %bb.e ] ; 2 uses
  switch i64 %i.aa, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i80
  %i.ar = load i8, ptr %i.am, align 1, !tbaa !19
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !19
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.am, i64 %i.aa, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i80
  %i.as = load i64, ptr %i.i, align 8, !tbaa !108 ; 2 uses
  store i64 %i.as, ptr %i.u, align 8, !tbaa !18
  %i.at = load ptr, ptr %3, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  %i.av = load i64, ptr %i.r, align 8, !tbaa !18  ; 3 uses
  %i.aw = load i64, ptr %i.u, align 8, !tbaa !18  ; 2 uses
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.i, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge: ; preds = %bb.h
  %.pre = load ptr, ptr %3, align 8, !tbaa !50
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp eq i64 %i.av, 0
  %.pre345 = load ptr, ptr %3, align 8, !tbaa !50 ; 3 uses
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %2, align 8, !tbaa !50
  %bcmp.i = call i32 @bcmp(ptr %i.az, ptr %.pre345, i64 %i.av)
  %i.ba = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge, %bb.i, %bb.j
  %i.bb = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %.pre345, %bb.j ], [ %.pre345, %bb.i ] ; 2 uses
  %i.bc = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge ], [ %i.ba, %bb.j ], [ true, %bb.i ]
  %i.bd = icmp eq ptr %i.bb, %i.t
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.be = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.be)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @_ZdlPv(ptr noundef %i.bb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bf = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.q
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %i.bc, label %bb.k, label %bb.cu

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  switch i32 %i.bh, label %bb.cj [
    i32 16, label %bb.bz
    i32 17, label %bb.bp
    i32 15, label %bb.au
    i32 14, label %bb.ag
    i32 13, label %bb.m
    i32 0, label %bb.u
    i32 1, label %bb.u
    i32 2, label %bb.u
    i32 3, label %bb.u
    i32 4, label %bb.u
    i32 5, label %bb.u
    i32 6, label %bb.u
    i32 7, label %bb.u
    i32 8, label %bb.u
    i32 9, label %bb.u
    i32 10, label %bb.u
    i32 11, label %bb.u
    i32 12, label %bb.u
  ]

.loopexit.split-lp:                               ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.l:                                             ; preds = %.noexc.i81
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bj = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.q
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.bi, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.cv

bb.m:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.v, align 4, !tbaa !131
  %i.bm = and i32 %i.bl, 2048
  %.not70 = icmp eq i32 %i.bm, 0
  br i1 %.not70, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load i32, ptr %i.s, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bo = load ptr, ptr %i.z, align 8, !tbaa !132 ; 4 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !15
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc91 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store i64 %i.bq, ptr %i.h, align 8, !tbaa !108
  %i.br = icmp ugt i64 %i.bq, 15
  br i1 %i.br, label %.noexc.i90, label %._crit_edge.i.i89

.noexc.i90:                                       ; preds = %bb.p
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc92 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc92:                                         ; preds = %.noexc.i90
  store ptr %i.bs, ptr %4, align 8, !tbaa !50
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !108
  store i64 %i.bt, ptr %i.w, align 8, !tbaa !19
  br label %._crit_edge.i.i89

._crit_edge.i.i89:                                ; preds = %.noexc92, %bb.p
  %i.bu = phi ptr [ %i.bs, %.noexc92 ], [ %i.w, %bb.p ] ; 2 uses
  switch i64 %i.bq, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i89
  %i.bv = load i8, ptr %i.bo, align 1, !tbaa !19
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !19
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.bo, i64 %i.bq, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i89
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !108 ; 2 uses
  store i64 %i.bw, ptr %i.x, align 8, !tbaa !18
  %i.bx = load ptr, ptr %4, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  %i.bz = load ptr, ptr %0, align 8, !tbaa !75
  invoke void @_ZNK2mu10ParserBase5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(596) %i.bz, i32 noundef 0, i32 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.t

_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.s
  %i.ca = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.w
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.ca) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.u

.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i90, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.t:                                             ; preds = %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.w
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.t, %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  %.pn71 = phi { ptr, i32 } [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cc, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.cv

bb.u:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.m
  %i.cf = load ptr, ptr %0, align 8, !tbaa !75
  %i.cg = call noundef zeroext i1 @_ZNK2mu10ParserBase14HasBuiltInOprtEv(ptr noundef nonnull align 8 dereferenceable(596) %i.cf)
  br i1 %i.cg, label %bb.v, label %bb.cu

bb.v:                                             ; preds = %bb.u
  %i.ch = load i32, ptr %i.v, align 4, !tbaa !131
  %i.ci = and i32 %i.ch, 64
  %.not73 = icmp eq i32 %i.ci, 0
  br i1 %.not73, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = call noundef zeroext i1 @_ZN2mu17ParserTokenReader12IsInfixOpTokERNS_11ParserTokenIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(104) %1)
  br i1 %i.cj, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = load i32, ptr %i.s, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cl = load ptr, ptr %i.z, align 8, !tbaa !132 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.cm, ptr %5, align 8, !tbaa !15
  %i.cn = icmp eq ptr %i.cl, null
  br i1 %i.cn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc103 unwind label %bb.ad

.noexc103:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.co = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cl) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i64 %i.co, ptr %i.g, align 8, !tbaa !108
  %i.cp = icmp ugt i64 %i.co, 15
  br i1 %i.cp, label %.noexc.i102, label %._crit_edge.i.i101

.noexc.i102:                                      ; preds = %bb.z
  %i.cq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc104 unwind label %bb.ad ; 2 uses

.noexc104:                                        ; preds = %.noexc.i102
  store ptr %i.cq, ptr %5, align 8, !tbaa !50
  %i.cr = load i64, ptr %i.g, align 8, !tbaa !108
  store i64 %i.cr, ptr %i.cm, align 8, !tbaa !19
  br label %._crit_edge.i.i101

._crit_edge.i.i101:                               ; preds = %.noexc104, %bb.z
  %i.cs = phi ptr [ %i.cq, %.noexc104 ], [ %i.cm, %bb.z ] ; 2 uses
  switch i64 %i.co, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i101
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !19
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZN2mu17ParserTokenReader9IsBuiltInERNS_11ParserTokenIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE:bb.a

bb.bu:                                            ; preds = %._crit_edge.i.i153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hg, ptr nonnull align 1 %i.gz, i64 %i.hc, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i153
  %i.hi = load i64, ptr %i.c, align 8, !tbaa !108 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !18
  %i.hk = load ptr, ptr %9, align 8, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hi
  store i8 0, ptr %i.hl, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.hm = load ptr, ptr %0, align 8, !tbaa !75
  invoke void @_ZNK2mu10ParserBase5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(596) %i.hm, i32 noundef 32, i32 noundef %i.gy, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit159 unwind label %bb.bx

_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit159: ; preds = %bb.bv
  %i.hn = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.ha
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit159
  call void @_ZdlPv(ptr noundef %i.hn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.by

bb.bw:                                            ; preds = %.noexc.i154, %bb.br
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

bb.bx:                                            ; preds = %bb.bv
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hr = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.ha
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.bx
  call void @_ZdlPv(ptr noundef %i.hr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.bw
  %.pn60 = phi { ptr, i32 } [ %i.hp, %bb.bw ], [ %i.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %i.hq, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.cv

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %bb.bp
  store i32 14018, ptr %i.v, align 4, !tbaa !131
  br label %bb.cl

bb.bz:                                            ; preds = %bb.k
  %i.ht = load i32, ptr %i.v, align 4, !tbaa !131
  %i.hu = and i32 %i.ht, 4096
  %.not56 = icmp eq i32 %i.hu, 0
  br i1 %.not56, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hv = load i32, ptr %i.s, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.hw = load ptr, ptr %i.z, align 8, !tbaa !132 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.hx, ptr %10, align 8, !tbaa !15
  %i.hy = icmp eq ptr %i.hw, null
  br i1 %i.hy, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc168 unwind label %bb.cg

.noexc168:                                        ; preds = %bb.cb
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.hz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hw) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.hz, ptr %i.b, align 8, !tbaa !108
  %i.ia = icmp ugt i64 %i.hz, 15
  br i1 %i.ia, label %.noexc.i167, label %._crit_edge.i.i166

.noexc.i167:                                      ; preds = %bb.cc
  %i.ib = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc169 unwind label %bb.cg ; 2 uses

.noexc169:                                        ; preds = %.noexc.i167
  store ptr %i.ib, ptr %10, align 8, !tbaa !50
  %i.ic = load i64, ptr %i.b, align 8, !tbaa !108
  store i64 %i.ic, ptr %i.hx, align 8, !tbaa !19
  br label %._crit_edge.i.i166

._crit_edge.i.i166:                               ; preds = %.noexc169, %bb.cc
  %i.id = phi ptr [ %i.ib, %.noexc169 ], [ %i.hx, %bb.cc ] ; 2 uses
  switch i64 %i.hz, label %bb.ce [
    i64 1, label %bb.cd
    i64 0, label %bb.cf
  ]

bb.cd:                                            ; preds = %._crit_edge.i.i166
  %i.ie = load i8, ptr %i.hw, align 1, !tbaa !19
  store i8 %i.ie, ptr %i.id, align 1, !tbaa !19
  br label %bb.cf

bb.ce:                                            ; preds = %._crit_edge.i.i166
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.id, ptr nonnull align 1 %i.hw, i64 %i.hz, i1 false)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %._crit_edge.i.i166
  %i.if = load i64, ptr %i.b, align 8, !tbaa !108 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !18
  %i.ih = load ptr, ptr %10, align 8, !tbaa !50
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.if
  store i8 0, ptr %i.ii, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ij = load ptr, ptr %0, align 8, !tbaa !75
  invoke void @_ZNK2mu10ParserBase5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(596) %i.ij, i32 noundef 32, i32 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit172 unwind label %bb.ch

_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit172: ; preds = %bb.cf
  %i.ik = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.hx
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit172
  call void @_ZdlPv(ptr noundef %i.ik) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit172, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.ci

bb.cg:                                            ; preds = %.noexc.i167, %bb.cb
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

bb.ch:                                            ; preds = %bb.cf
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.hx
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.ch
  call void @_ZdlPv(ptr noundef %i.io) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %bb.cg
  %.pn57 = phi { ptr, i32 } [ %i.im, %bb.cg ], [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %i.in, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cv

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %bb.bz
  store i32 14018, ptr %i.v, align 4, !tbaa !131
  br label %bb.cl

bb.cj:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.iq, ptr %11, align 8, !tbaa !15
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ir, align 8, !tbaa !18
  store i8 0, ptr %i.iq, align 8, !tbaa !19
  %i.is = load ptr, ptr %0, align 8, !tbaa !75
  invoke void @_ZNK2mu10ParserBase5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(596) %i.is, i32 noundef 39, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit180 unwind label %bb.ck

_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit180: ; preds = %bb.cj
  %i.it = load ptr, ptr %11, align 8, !tbaa !50   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.iq
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit180
  call void @_ZdlPv(ptr noundef %i.it) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.iv = landingpad { ptr, i32 }
          cleanup
  %i.iw = load ptr, ptr %11, align 8, !tbaa !50   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.iq
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184: ; preds = %bb.ck
  call void @_ZdlPv(ptr noundef %i.iw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cv

bb.cl:                                            ; preds = %_ZNSt5stackIiSt5dequeIiSaIiEEE3popEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, %bb.ci, %bb.by, %_ZNSt5stackIiSt5dequeIiSaIiEEE4pushEOi.exit, %bb.af
  %i.iy = trunc i64 %i.aa to i32
  %i.iz = load i32, ptr %i.s, align 8, !tbaa !130
  %i.ja = add nsw i32 %i.iz, %i.iy
  store i32 %i.ja, ptr %i.s, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.jb = load ptr, ptr %i.z, align 8, !tbaa !132 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.jc, ptr %12, align 8, !tbaa !15
  %i.jd = icmp eq ptr %i.jb, null
  br i1 %i.jd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #29
          to label %.noexc189 unwind label %bb.cs

.noexc189:                                        ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cl
  %i.je = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jb) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.je, ptr %i.a, align 8, !tbaa !108
  %i.jf = icmp ugt i64 %i.je, 15
  br i1 %i.jf, label %.noexc.i188, label %._crit_edge.i.i187

.noexc.i188:                                      ; preds = %bb.cn
  %i.jg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc190 unwind label %bb.cs ; 2 uses

.noexc190:                                        ; preds = %.noexc.i188
  store ptr %i.jg, ptr %12, align 8, !tbaa !50
  %i.jh = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.jh, ptr %i.jc, align 8, !tbaa !19
  br label %._crit_edge.i.i187

._crit_edge.i.i187:                               ; preds = %.noexc190, %bb.cn
  %i.ji = phi ptr [ %i.jg, %.noexc190 ], [ %i.jc, %bb.cn ] ; 2 uses
  switch i64 %i.je, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %bb.cq
  ]

bb.co:                                            ; preds = %._crit_edge.i.i187
  %i.jj = load i8, ptr %i.jb, align 1, !tbaa !19
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !19
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge.i.i187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ji, ptr nonnull align 1 %i.jb, i64 %i.je, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i.i187
  %i.jk = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.jk, ptr %i.jl, align 8, !tbaa !18
  %i.jm = load ptr, ptr %12, align 8, !tbaa !50
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jk
  store i8 0, ptr %i.jn, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.jo = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN2mu11ParserTokenIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3SetENS_8ECmdCodeERKS6_(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.cr unwind label %bb.ct     ; 0 uses

bb.cr:                                            ; preds = %bb.cq
  %i.jp = load ptr, ptr %12, align 8, !tbaa !50   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.jc
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.jp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.critedge

bb.cs:                                            ; preds = %.noexc.i188, %bb.cm
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

bb.ct:                                            ; preds = %bb.cq
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = load ptr, ptr %12, align 8, !tbaa !50   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.jc
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.ct
  call void @_ZdlPv(ptr noundef %i.jt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %bb.cs
  %.pn76 = phi { ptr, i32 } [ %i.jr, %bb.cs ], [ %i.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %i.js, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cv

bb.cu:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !132 ; 2 uses
  %.not.not = icmp eq ptr %i.jw, null
  br i1 %.not.not, label %.critedge, label %bb.b, !llvm.loop !489

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn76.pn = phi { ptr, i32 } [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %i.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit186 ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %.pn60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  resume { ptr, i32 } %.pn76.pn

.critedge:                                        ; preds = %bb.cu, %bb.a, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %.not228 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ true, %bb.w ], [ false, %bb.a ], [ false, %bb.cu ]
  ret i1 %.not228
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2mu17ParserTokenReader8IsArgSepERNS_11ParserTokenIdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [2 x i8], align 1                 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !130  ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.l = load i8, ptr %i.k, align 8, !tbaa !84
  %i.m = icmp eq i8 %i.j, %i.l                    ; 2 uses
  br i1 %i.m, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 %i.j, ptr %i.c, align 1, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 0, ptr %i.n, align 1, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131
  %i.q = and i32 %i.p, 16
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !15
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.s, ptr %i.b, align 8, !tbaa !108
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.u, ptr %2, align 8, !tbaa !50
  %i.v = load i64, ptr %i.b, align 8, !tbaa !108
  store i64 %i.v, ptr %i.r, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.c
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.r, %bb.c ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  store i8 %i.j, ptr %i.w, align 1, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.c, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !18
  %i.z = load ptr, ptr %2, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ab = load ptr, ptr %0, align 8, !tbaa !75
  invoke void @_ZNK2mu10ParserBase5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(596) %i.ab, i32 noundef 3, i32 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.h

_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f
  %i.ac = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.ac) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNK2mu17ParserTokenReader5ErrorENS_11EErrorCodesEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.pre = load i32, ptr %i.f, align 8, !tbaa !130
  br label %bb.i

bb.g:                                             ; preds = %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.h:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.r
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.p

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ai = phi i32 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %bb.b ]
  store i32 2770, ptr %i.o, align 4, !tbaa !131
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.f, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !15
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.al, ptr %i.a, align 8, !tbaa !108
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %.noexc.i18, label %._crit_edge.i.i17

.noexc.i18:                                       ; preds = %bb.i
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.n   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i18
  store ptr %i.an, ptr %3, align 8, !tbaa !50
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !108
  store i64 %i.ao, ptr %i.ak, align 8, !tbaa !19
  br label %._crit_edge.i.i17

._crit_edge.i.i17:                                ; preds = %.noexc19, %bb.i
  %i.ap = phi ptr [ %i.an, %.noexc19 ], [ %i.ak, %bb.i ] ; 2 uses
  switch i64 %i.al, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i17
  store i8 %i.j, ptr %i.ap, align 1, !tbaa !19
  br label %bb.l

end_hunk_1
