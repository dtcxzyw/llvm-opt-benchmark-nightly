inline.NumInlined: 675
inline.NumDeleted: 297
begin_hunk_0_@_ZN10ODDLParser13OpenDDLParser5parseEv:bb.a
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
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.aa = load ptr, ptr %1, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ac = load i64, ptr %i.p, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.ae = load ptr, ptr %i.o, align 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
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
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 6 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.g, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
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
  %i.az = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #31 ; 4 uses
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
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.az, ptr %i.ah, align 8
  store ptr %i.bc, ptr %i.ai, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr %i.ak, align 8
  br label %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit

_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %bb.e, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bf = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %.not35.not = icmp eq ptr %i.bf, %i.be
  br i1 %.not35.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, %bb.l
  %.01036 = phi ptr [ %i.bk, %bb.l ], [ %i.be, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit ]
  %i.bj = call noundef ptr @_ZN10ODDLParser13OpenDDLParser11parseHeaderEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.01036, ptr noundef nonnull %i.bi), !inline_history !4
  %i.bk = call noundef ptr @_ZN10ODDLParser13OpenDDLParser14parseStructureEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.bj, ptr noundef nonnull %i.bi), !inline_history !4 ; 3 uses
  %.not54.not = icmp ne ptr %i.bk, null           ; 3 uses
  br i1 %.not54.not, label %bb.l, label %.loopexit

bb.j:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser8validateEv.exit.thread
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 8) #28
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %2, align 8               ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.s
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.k
  %i.bp = load i64, ptr %i.s, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.br = load ptr, ptr %1, align 8               ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.p
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.bt = load i64, ptr %i.p, align 8
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bv = load ptr, ptr %i.a, align 8
  %i.bw = ptrtoint ptr %i.bk to i64
  %i.bx = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = load ptr, ptr %i.c, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bx
  %.not = icmp ult i64 %i.by, %i.cb
  br i1 %.not, label %.lr.ph, label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %bb.l, %.lr.ph, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit, %_ZN10ODDLParser13OpenDDLParser8validateEv.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZN10ODDLParser13OpenDDLParser8validateEv.exit ], [ true, %_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE.exit ], [ %.not54.not, %.lr.ph ], [ %.not54.not, %bb.l ]
  ret i1 %.1

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.bl, %bb.j ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser13OpenDDLParser15normalizeBufferERSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.s, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
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
          to label %bb.q unwind label %bb.t       ; 0 uses

bb.b:                                             ; preds = %.lr.ph63, %.critedge2
  %i.m = phi ptr [ null, %.lr.ph63 ], [ %i.bj, %.critedge2 ] ; 10 uses
  %.03762 = phi i64 [ 0, %.lr.ph63 ], [ %i.bk, %.critedge2 ] ; 11 uses
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.03762 ; 6 uses
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
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
  br i1 %i.aa, label %.lr.ph, label %.critedge, !llvm.loop !7

.loopexit:                                        ; preds = %2
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

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
  %i.al = load ptr, ptr %i.i, align 8
  %.not.i43 = icmp eq ptr %i.m, %i.al
  br i1 %.not.i43, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  store i8 %i.p, ptr %i.m, align 1
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.an, ptr %i.h, align 8
  br label %.critedge2

bb.k:                                             ; preds = %.thread
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %i.ap = ptrtoint ptr %i.m to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 8 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %i.as, label %bb.l, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.at = add i64 %.sroa.speculated.i.i.i, %i.ar  ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.ar
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 9223372036854775807)
  %i.aw = select i1 %i.au, i64 9223372036854775807, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i, label %2

2:                                                ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %3 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #31
          to label %._ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i_crit_edge unwind label %.loopexit

._ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i_crit_edge: ; preds = %2
  %.pre = load i8, ptr %i.o, align 1
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %._ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i_crit_edge, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %4 = phi i8 [ %i.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i ], [ %.pre, %._ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i_crit_edge ]
  %5 = phi ptr [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i ], [ %3, %._ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i_crit_edge ] ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.ar ; 2 uses
  store i8 %4, ptr %6, align 1
  %i.ax = icmp sgt i64 %i.ar, 0
  br i1 %i.ax, label %bb.m, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ar) #28
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  store ptr %5, ptr %1, align 8
  store ptr %i.ay, ptr %i.h, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 %i.aw
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
  %.282 = add nuw i64 %.03762, 1                  ; 2 uses
  %i.be = icmp ult i64 %.282, %i.g
  br i1 %i.be, label %.lr.ph84, label %.critedge2

bb.p:                                             ; preds = %.lr.ph84
  %.2 = add nuw i64 %.283, 1                      ; 2 uses
  %i.bf = icmp ult i64 %.2, %i.g
  br i1 %i.bf, label %.lr.ph84, label %.critedge2, !llvm.loop !8

.lr.ph84:                                         ; preds = %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48, %bb.p
  %.283 = phi i64 [ %.2, %bb.p ], [ %.282, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %.283
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = icmp eq i8 %i.bh, 10
  br i1 %i.bi, label %..critedge2.loopexit_crit_edge85, label %bb.p, !llvm.loop !8

..critedge2.loopexit_crit_edge85:                 ; preds = %.lr.ph84
  br label %.critedge2, !llvm.loop !8

.critedge2:                                       ; preds = %bb.p, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48, %..critedge2.loopexit_crit_edge85, %bb.b, %bb.b, %bb.o, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, %bb.j, %.critedge
  %i.bj = phi ptr [ %i.m, %.critedge ], [ %i.m, %bb.b ], [ %i.m, %bb.b ], [ %i.ay, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %i.an, %bb.j ], [ %i.m, %bb.o ], [ %i.m, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ], [ %i.m, %..critedge2.loopexit_crit_edge85 ], [ %i.m, %bb.p ]
  %.3 = phi i64 [ %i.ab, %.critedge ], [ %.03762, %bb.b ], [ %.03762, %bb.b ], [ %.03762, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.03762, %bb.j ], [ %.03762, %bb.o ], [ %umax, %_ZN10ODDLParser9isCommentIcEEbPT_S2_.exit48 ], [ %.283, %..critedge2.loopexit_crit_edge85 ], [ %umax, %bb.p ]
  %i.bk = add i64 %.3, 1                          ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.g
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !9

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
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt6vectorIcSaIcEED2Ev.exit
  ret void

bb.t:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %.pre65 = load ptr, ptr %1, align 8
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %i.bt = phi ptr [ %.pre65, %bb.t ], [ %i.ao, %.loopexit ], [ %i.ao, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i50 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIcSaIcEED2Ev.exit51, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit51

_ZNSt6vectorIcSaIcEED2Ev.exit51:                  ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN10ODDLParser7ContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #16

declare noundef ptr @_ZN10ODDLParser7DDLNode6createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_PS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.45) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ODDLParser13OpenDDLParser8pushNodeEPNS_7DDLNodeE(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE9push_backERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
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
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.e, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
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
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #31 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store ptr %1, ptr %i.u, align 8
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

end_hunk_0
