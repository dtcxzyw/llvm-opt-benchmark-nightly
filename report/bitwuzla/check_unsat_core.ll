Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/check_unsat_core?download=true
inline.NumInlined: 315
inline.NumDeleted: 232
begin_hunk_0
@_ZTSN4bzla6option11OptionModeTINS0_8BvSolverEEE = linkonce_odr constant [44 x i8] c"N4bzla6option11OptionModeTINS0_8BvSolverEEE\00", comdat, align 1

@_ZN4bzla5check14CheckUnsatCoreC1ERNS_14SolvingContextE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4bzla5check14CheckUnsatCoreC2ERNS_14SolvingContextE

; Function Attrs: mustprogress uwtable
define void @_ZN4bzla5check14CheckUnsatCoreC2ERNS_14SolvingContextE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(12744) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(4048) ptr @_ZN4bzla14SolvingContext3envEv(ptr noundef nonnull align 8 dereferenceable(12744) %1)
  %i.c = tail call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4bzla3Env6loggerEv(ptr noundef nonnull align 8 dereferenceable(4048) %i.b)
  store ptr %i.c, ptr %i.a, align 8, !tbaa !35
  ret void
}

declare noundef nonnull align 8 dereferenceable(4048) ptr @_ZN4bzla14SolvingContext3envEv(ptr noundef nonnull align 8 dereferenceable(12744)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN4bzla3Env6loggerEv(ptr noundef nonnull align 8 dereferenceable(4048)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4bzla5check14CheckUnsatCore5checkEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.bzla::util::Logger::Line", align 8 ; 7 uses
  %2 = alloca %"class.bzla::util::Logger::Line", align 8 ; 7 uses
  %3 = alloca %"class.bzla::util::Logger::Line", align 8 ; 7 uses
  %4 = alloca %"class.bzla::option::Options", align 8 ; 11 uses
  %5 = alloca %"class.bzla::SolvingContext", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.202", align 8   ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.b = tail call noundef nonnull align 8 dereferenceable(3712) ptr @_ZNK4bzla14SolvingContext7optionsEv(ptr noundef nonnull align 8 dereferenceable(12744) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3666
  %i.d = load i8, ptr %i.c, align 2, !tbaa !41, !range !42, !noundef !38
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.g = tail call noundef nonnull align 8 dereferenceable(3712) ptr @_ZNK4bzla14SolvingContext7optionsEv(ptr noundef nonnull align 8 dereferenceable(12744) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 258
  %i.i = load i8, ptr %i.h, align 2, !tbaa !41, !range !42, !noundef !38
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43, !nonnull !38, !align !39
  %i.m = tail call noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 noundef 1)
  br i1 %i.m, label %bb.d, label %.critedge36

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !43, !nonnull !38, !align !39
  call void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %1, ptr noundef nonnull align 8 dereferenceable(56) %i.n, i64 noundef 1)
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.critedge unwind label %bb.n  ; 0 uses

.critedge:                                        ; preds = %bb.d
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.critedge36

.critedge36:                                      ; preds = %bb.c, %.critedge
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !43, !nonnull !38, !align !39
  %i.q = call noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 noundef 1)
  br i1 %i.q, label %bb.e, label %.critedge39

bb.e:                                             ; preds = %.critedge36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !43, !nonnull !38, !align !39
  call void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 noundef 1)
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str, i64 noundef 20)
          to label %.critedge38 unwind label %bb.o ; 0 uses

.critedge38:                                      ; preds = %bb.f
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.critedge39

.critedge39:                                      ; preds = %.critedge36, %.critedge38
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !43, !nonnull !38, !align !39
  %i.v = call noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 noundef 1)
  br i1 %i.v, label %bb.g, label %.critedge42

bb.g:                                             ; preds = %.critedge39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !43, !nonnull !38, !align !39
  call void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind nonnull writable sret(%"class.bzla::util::Logger::Line") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.w, i64 noundef 1)
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.critedge41 unwind label %bb.p ; 0 uses

.critedge41:                                      ; preds = %bb.g
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.critedge42

.critedge42:                                      ; preds = %.critedge39, %.critedge41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @_ZN4bzla6option7OptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(3712) %4)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 3626
  store i8 0, ptr %i.y, align 2, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 3625
  store i8 0, ptr %i.z, align 1, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 3666
  store i8 0, ptr %i.aa, align 2, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 3665
  store i8 0, ptr %i.ab, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.ad = invoke noundef nonnull align 8 dereferenceable(4048) ptr @_ZN4bzla14SolvingContext3envEv(ptr noundef nonnull align 8 dereferenceable(12744) %i.ac)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %.critedge42
  %i.ae = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla3Env2nmEv(ptr noundef nonnull align 8 dereferenceable(4048) %i.ad)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.ag = invoke noundef nonnull align 8 dereferenceable(4048) ptr @_ZN4bzla14SolvingContext3envEv(ptr noundef nonnull align 8 dereferenceable(12744) %i.af)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ah = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla3Env11sat_factoryEv(ptr noundef nonnull align 8 dereferenceable(4048) %i.ag)
          to label %._crit_edge.i.i unwind label %bb.q

._crit_edge.i.i:                                  ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ai, ptr %6, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ai, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.aj, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 0, ptr %i.ak, align 1, !tbaa !16
  invoke void @_ZN4bzla14SolvingContextC1ERNS_11NodeManagerERKNS_6option7OptionsERNS_3sat16SatSolverFactoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(12744) %5, ptr noundef nonnull align 8 dereferenceable(216) %i.ae, ptr noundef nonnull align 8 dereferenceable(3712) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.al = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ai
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.ap = load ptr, ptr %0, align 8, !tbaa !37, !nonnull !38, !align !39
  invoke void @_ZN4bzla14SolvingContext14get_unsat_coreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.202") align 8 %7, ptr noundef nonnull align 8 dereferenceable(12744) %i.ap)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load ptr, ptr %7, align 8, !tbaa !50    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %.not53 = icmp eq ptr %i.aq, %i.as
  br i1 %.not53, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %7, align 8, !tbaa !20    ; 3 uses
  %.pre55 = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre55
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #8
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %.pre55
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !20
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.au = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ], [ %i.aq, %bb.l ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #9
  br label %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.ba = invoke noundef i32 @_ZN4bzla14SolvingContext5solveEv(ptr noundef nonnull align 8 dereferenceable(12744) %5)
          to label %bb.v unwind label %8

bb.n:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.z

bb.o:                                             ; preds = %bb.f, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.z

bb.p:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.z

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.h, %.critedge42
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ai
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.r
  %i.bi = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.x

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph:                                           ; preds = %bb.l, %bb.t
  %.sroa.046.054 = phi ptr [ %i.bl, %bb.t ], [ %i.aq, %bb.l ] ; 2 uses
  invoke void @_ZN4bzla14SolvingContext14assert_formulaERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(12744) %5, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.046.054)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.046.054, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.as
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %.lr.ph
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  %i.bn = icmp ne i32 %i.ba, 10
  call void @_ZN4bzla14SolvingContextD1Ev(ptr noundef nonnull align 8 dead_on_return(12744) dereferenceable(12744) %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @_ZN4bzla6option7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(3712) dereferenceable(3712) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.y

8:                                                ; preds = %_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev.exit
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.u, %8
  %.pn31.pn = phi { ptr, i32 } [ %9, %8 ], [ %i.bm, %bb.u ], [ %i.bk, %bb.s ]
  call void @_ZN4bzla14SolvingContextD1Ev(ptr noundef nonnull align 8 dead_on_return(12744) dereferenceable(12744) %5) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.q
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.w ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.be, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @_ZN4bzla6option7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(3712) dereferenceable(3712) %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.z

bb.y:                                             ; preds = %bb.a, %bb.b, %bb.v
  %.029 = phi i1 [ %i.bn, %bb.v ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.029

bb.z:                                             ; preds = %bb.x, %bb.p, %bb.o, %bb.n
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.x ], [ %i.bd, %bb.p ], [ %i.bc, %bb.o ], [ %i.bb, %bb.n ]
  resume { ptr, i32 } %.pn31.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(3712) ptr @_ZNK4bzla14SolvingContext7optionsEv(ptr noundef nonnull align 8 dereferenceable(12744)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN4bzla4util6Logger14is_log_enabledEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN4bzla4util6Logger3logEm(ptr dead_on_unwind writable sret(%"class.bzla::util::Logger::Line") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4bzla4util6Logger4Line6streamEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4bzla4util6Logger4LineD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN4bzla6option7OptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(3712)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(216) ptr @_ZN4bzla3Env2nmEv(ptr noundef nonnull align 8 dereferenceable(4048)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4bzla3Env11sat_factoryEv(ptr noundef nonnull align 8 dereferenceable(4048)) local_unnamed_addr #1

declare void @_ZN4bzla14SolvingContextC1ERNS_11NodeManagerERKNS_6option7OptionsERNS_3sat16SatSolverFactoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(12744), ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(3712), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #1

declare void @_ZN4bzla14SolvingContext14get_unsat_coreEv(ptr dead_on_unwind writable sret(%"class.std::vector.202") align 8, ptr noundef nonnull align 8 dereferenceable(12744)) local_unnamed_addr #1

declare void @_ZN4bzla14SolvingContext14assert_formulaERKNS_4NodeE(ptr noundef nonnull align 8 dereferenceable(12744), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4bzla4NodeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN4bzla4NodeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i) #8
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !20
  br label %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #9
  br label %_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4bzla4NodeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4bzla4NodeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef i32 @_ZN4bzla14SolvingContext5solveEv(ptr noundef nonnull align 8 dereferenceable(12744)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4bzla14SolvingContextD1Ev(ptr noundef nonnull align 8 dead_on_return(12744) dereferenceable(12744)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4bzla6option7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(3712) dereferenceable(3712) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3672
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3632
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3592
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3512
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3432
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3392
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.f) #8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3352
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.g) #8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3312
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.h) #8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3272
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.i) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3232
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.j) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3192
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.k) #8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3152
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.l) #8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3112
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.m) #8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3072
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.n) #8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3032
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.o) #8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2992
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.p) #8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.q) #8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2912
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.r) #8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2872
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.s) #8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2832
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.t) #8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2792
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.u) #8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2632
  tail call void @_ZN4bzla6option11OptionModeTINS0_16InterpolantsAlgoEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.v) #8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2592
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.w) #8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2552
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.x) #8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2512
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.y) #8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2472
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.z) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2432
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.aa) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2392
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.ab) #8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2352
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.ac) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2272
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.ad) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2232
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.ae) #8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2192
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.af) #8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2112
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.ag) #8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2072
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.ah) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1992
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.ai) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1952
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.aj) #8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1912
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.ak) #8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1872
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.al) #8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1832
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.am) #8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1792
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %i.an) #8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1712
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.ao) #8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1632
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.ap) #8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1472
  tail call void @_ZN4bzla6option11OptionModeTINS0_17PropPathSelectionEED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.aq) #8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1392
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.ar) #8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.as) #8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1232
  tail call void @_ZN4bzla6option10OptionBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %i.at) #8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4bzla6option9OptionStrE, i64 16), ptr %i.au, align 8, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #9, !inline_history !26
end_hunk_0
