Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OpenDDLParser?download=true
inline.NumInlined: 677
inline.NumDeleted: 297
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10ODDLParser13OpenDDLParser5parseEv:bb.a
  br i1 %or.cond.i, label %_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread, label %.loopexit

_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread: ; preds = %bb.b, %_ZN10ODDLParser13OpenDDLParser8validateEv.exit
  %i.n = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 3 uses
  invoke void @_ZN10ODDLParser7ContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %._crit_edge.i.i unwind label %bb.j

._crit_edge.i.i:                                  ; preds = %_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.p, ptr %1, align 8
  store i32 1953460082, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 0, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.s, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.t, align 8
  store i8 0, ptr %i.s, align 8
  %i.u = invoke noundef ptr @_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.v = load ptr, ptr %i.o, align 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.s, align 8
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.aa = load ptr, ptr %1, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.p, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.af, ptr %i.aj, align 8
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ai, align 8
  br label %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit

bb.f:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.ap = ptrtoint ptr %i.aj to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.g, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #31
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #30 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store ptr %i.af, ptr %i.ba, align 8
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.h, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bd = load ptr, ptr %i.ak, align 8
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bf) #27
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.az, ptr %i.ah, align 8
  store ptr %i.bc, ptr %i.ai, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bg, ptr %i.ak, align 8
  br label %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit

_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.e, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.bh = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 2 uses
  %.not35.not = icmp eq ptr %i.bi, %i.bh
  br i1 %.not35.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, %bb.l
  %.0936 = phi ptr [ %i.bn, %bb.l ], [ %i.bh, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit ]
  %i.bm = call noundef ptr @_ZN10ODDLParser13OpenDDLParser11parseHeaderEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.0936, ptr noundef nonnull %i.bl), !inline_history !47
  %i.bn = call noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseStructureEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.bm, ptr noundef nonnull %i.bl), !inline_history !47 ; 3 uses
  %.not53.not = icmp ne ptr %i.bn, null           ; 3 uses
  br i1 %.not53.not, label %bb.l, label %.loopexit

bb.j:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 8) #27
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.s
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.k
  %i.bs = load i64, ptr %i.s, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.bu = load ptr, ptr %1, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.p
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.bw = load i64, ptr %i.p, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.by = load ptr, ptr %i.a, align 8
  %i.bz = ptrtoint ptr %i.bn to i64
  %i.ca = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = load ptr, ptr %i.c, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.ca
  %.not = icmp ult i64 %i.cb, %i.ce
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !66

.loopexit:                                        ; preds = %bb.l, %.lr.ph, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, %_ZN10ODDLParser13OpenDDLParser8validateEv.exit, %bb.a
  %.115 = phi i1 [ false, %bb.a ], [ false, %_ZN10ODDLParser13OpenDDLParser8validateEv.exit ], [ true, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit ], [ %.not53.not, %.lr.ph ], [ %.not53.not, %bb.l ]
  ret i1 %.115

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.bo, %bb.j ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser13OpenDDLParser15normalizeBufferERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !71 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.s, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = xor i64 %i.f, -1
  %i.k = add i64 %i.j, %i.e
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge2
  %i.l = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIcSaIcEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.b:                                             ; preds = %.lr.ph63, %.critedge2
  %i.m = phi ptr [ null, %.lr.ph63 ], [ %i.bj, %.critedge2 ] ; 10 uses
  %.03762 = phi i64 [ 0, %.lr.ph63 ], [ %i.bk, %.critedge2 ] ; 11 uses
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.03762 ; 6 uses
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  switch i8 %i.p, label %.thread [
    i8 47, label %bb.c
    i8 13, label %.critedge2
    i8 10, label %.critedge2
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  %.not.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 42
  br i1 %i.s, label %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader, label %bb.g

_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader: ; preds = %bb.d
  %.158 = add nuw i64 %.03762, 1                  ; 2 uses
  %i.t = icmp ult i64 %.158, %i.g
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader, %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit
  %.160 = phi i64 [ %.1, %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit ], [ %.158, %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader ] ; 3 uses
  %.1.in59 = phi i64 [ %.160, %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit ], [ %.03762, %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %.160 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 42
  br i1 %i.w, label %bb.e, label %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit

bb.e:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %.not.i41 = icmp eq ptr %i.x, %i.c
  br i1 %.not.i41, label %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 47
  br i1 %i.z, label %.critedge, label %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit

_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit: ; preds = %.lr.ph, %bb.e, %bb.f
  %.1 = add nuw i64 %.160, 1                      ; 2 uses
  %i.aa = icmp ult i64 %.1, %i.g
  br i1 %i.aa, label %.lr.ph, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit, %bb.f, %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader
  %.1.in.lcssa = phi i64 [ %.03762, %_ZN10ODDLParser16isCommentOpenTagIcEEbPT_S2_.exit.preheader ], [ %.1.in59, %bb.f ], [ %i.k, %_ZN10ODDLParser17isCommentCloseTagIcEEbPT_S2_.exit ]
  %i.ab = add i64 %.1.in.lcssa, 2
  br label %.critedge2

bb.g:                                             ; preds = %bb.d
  %i.ac = load i8, ptr %i.q, align 1
  %i.ad = icmp eq i8 %i.ac, 47
  br i1 %i.ad, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, -33
  %i.ah = add i8 %i.ag, -65
  %or.cond.i = icmp ult i8 %i.ah, 26
  br i1 %or.cond.i, label %bb.i, label %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 47
  br i1 %i.ak, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.c, %bb.g, %bb.i, %bb.b
  %2 = load ptr, ptr %i.i, align 8
  %.not.i43 = icmp eq ptr %i.m, %2
  br i1 %.not.i43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  store i8 %i.p, ptr %i.m, align 1
  %3 = load ptr, ptr %i.h, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store ptr %i.al, ptr %i.h, align 8
  br label %.critedge2

bb.k:                                             ; preds = %.thread
  %4 = load ptr, ptr %1, align 8                  ; 5 uses
  %i.am = ptrtoint ptr %i.m to i64
  %i.an = ptrtoint ptr %4 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 8 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775807
  br i1 %i.ap, label %bb.l, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #31
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.aq = add i64 %.sroa.speculated.i.i.i, %i.ao  ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 9223372036854775807)
  %i.at = select i1 %i.ar, i64 9223372036854775807, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #30
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao ; 2 uses
  %i.aw = load i8, ptr %i.o, align 1
  store i8 %i.aw, ptr %i.av, align 1
  %i.ax = icmp sgt i64 %i.ao, 0
  br i1 %i.ax, label %bb.m, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %.noexc44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %4, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %.noexc44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %4, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %4, i64 noundef %i.ao) #27
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  store ptr %i.au, ptr %1, align 8
  store ptr %i.ay, ptr %i.h, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store ptr %i.az, ptr %i.i, align 8
  br label %.critedge2

bb.o:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = icmp eq i8 %i.bb, 47
  br i1 %i.bc, label %.critedge2, label %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48

_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48:      ; preds = %bb.h, %bb.o
  %i.bd = add nuw i64 %.03762, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.bd) ; 2 uses
  %.281 = add nuw i64 %.03762, 1                  ; 2 uses
  %i.be = icmp ult i64 %.281, %i.g
  br i1 %i.be, label %.lr.ph83, label %.critedge2

bb.p:                                             ; preds = %.lr.ph83
  %.2 = add nuw i64 %.282, 1                      ; 2 uses
  %i.bf = icmp ult i64 %.2, %i.g
  br i1 %i.bf, label %.lr.ph83, label %.critedge2, !llvm.loop !69

.lr.ph83:                                         ; preds = %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48, %bb.p
  %.282 = phi i64 [ %.2, %bb.p ], [ %.281, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %.282
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp eq i8 %i.bh, 10
  br i1 %i.bi, label %..critedge2.loopexit_crit_edge84, label %bb.p, !llvm.loop !69

..critedge2.loopexit_crit_edge84:                 ; preds = %.lr.ph83
  br label %.critedge2, !llvm.loop !69

.critedge2:                                       ; preds = %bb.p, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48, %..critedge2.loopexit_crit_edge84, %bb.b, %bb.b, %bb.o, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, %bb.j, %.critedge
  %i.bj = phi ptr [ %i.m, %.critedge ], [ %i.m, %bb.b ], [ %i.m, %bb.b ], [ %i.ay, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %i.al, %bb.j ], [ %i.m, %bb.o ], [ %i.m, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ], [ %i.m, %..critedge2.loopexit_crit_edge84 ], [ %i.m, %bb.p ]
  %.3 = phi i64 [ %i.ab, %.critedge ], [ %.03762, %bb.b ], [ %.03762, %bb.b ], [ %.03762, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.03762, %bb.j ], [ %.03762, %bb.o ], [ %umax, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ], [ %.282, %..critedge2.loopexit_crit_edge84 ], [ %umax, %bb.p ]
  %i.bk = add i64 %.3, 1                          ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.g
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !70

bb.q:                                             ; preds = %._crit_edge
  %i.bm = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt6vectorIcSaIcEED2Ev.exit
  ret void

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.l, %._crit_edge
  %lpad.loopexit.split-lp64 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %1, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.bs = phi ptr [ %4, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp64, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i50 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIcSaIcEED2Ev.exit51, label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #27
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit51

_ZNSt6vectorIcSaIcEED2Ev.exit51:                  ; preds = %.loopexit.split-lp, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN10ODDLParser7ContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #16

declare noundef ptr @_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !72 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !guid !73 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.d, align 8
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.c, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #31
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #30 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store ptr %1, ptr %i.u, align 8
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #27
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.t, ptr %i.b, align 8
  store ptr %i.w, ptr %i.c, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aa, ptr %i.e, align 8
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ODDLParser13OpenDDLParser13parseNextNodeEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 !guid !74 {
bb.a:
  %i.a = tail call noundef ptr @_ZN10ODDLParser13OpenDDLParser11parseHeaderEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2)
  %i.b = tail call noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseStructureEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.a, ptr noundef %2)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN10ODDLParser13OpenDDLParser13exportContextEPNS_7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !guid !75 {
bb.a:
  %3 = alloca %"class.ODDLParser::OpenDDLExport", align 8 ; 7 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN10ODDLParser13OpenDDLExportC1EPNS_12IOStreamBaseE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef null)
  %i.b = invoke noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport13exportContextEPNS_7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN10ODDLParser13OpenDDLExportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10ODDLParser13OpenDDLExportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i1 [ %i.b, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN10ODDLParser13OpenDDLExportC1EPNS_12IOStreamBaseE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #16

declare noundef zeroext i1 @_ZN10ODDLParser13OpenDDLExport13exportContextEPNS_7ContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZN10ODDLParser13OpenDDLExportD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12
end_hunk_0
