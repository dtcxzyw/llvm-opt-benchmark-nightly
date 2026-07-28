inline.NumInlined: 89673
inline.NumDeleted: 14428
loop-unroll.NumCompletelyUnrolled: 1689
loop-unroll.NumRuntimeUnrolled: 210
loop-unroll.NumUnrolled: 1899
begin_hunk_0_@_ZN8facebook5velox9functions10stringImpl18stringToCodePointsINS0_10StringViewEEESt6vectorIiSaIiEERKT_:bb.a
bb.e:                                             ; preds = %bb.d
  %i.z = shl nuw nsw i32 %i.t, 6
  %i.aa = zext i8 %i.x to i32
  %i.ab = add nsw i32 %i.z, -12416
  %i.ac = add nsw i32 %i.ab, %i.aa
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp eq i8 %i.s, -19
  %i.ae = and i8 %i.x, -96
  %i.af = icmp eq i8 %i.ae, -96
  %or.cond46.i = select i1 %i.ad, i1 %i.af, i1 false
  %i.ag = icmp eq i64 %gepdiff, 2
  %or.cond47.i = or i1 %i.ag, %or.cond46.i
  br i1 %or.cond47.i, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18  ; 2 uses
  %i.aj = and i8 %i.s, -16
  %or.cond5.i = icmp eq i8 %i.aj, -32
  br i1 %or.cond5.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = shl nuw nsw i32 %i.t, 12
  %i.al = zext i8 %i.x to i32
  %i.am = shl nuw nsw i32 %i.al, 6
  %i.an = zext i8 %i.ai to i32
  %i.ao = add nsw i32 %i.ak, -925824
  %i.ap = add nsw i32 %i.ao, %i.am
  %i.aq = add nsw i32 %i.ap, %i.an
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp samesign ugt i64 %gepdiff, 3
  %i.as = and i8 %i.s, -8
  %or.cond8.i = icmp eq i8 %i.as, -16
  %or.cond48.i = and i1 %i.ar, %or.cond8.i
  br i1 %or.cond48.i, label %bb.j, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = shl nuw nsw i32 %i.t, 18
  %i.aw = zext i8 %i.x to i32
  %i.ax = shl nuw nsw i32 %i.aw, 12
  %i.ay = zext i8 %i.ai to i32
  %i.az = shl nuw nsw i32 %i.ay, 6
  %i.ba = zext i8 %i.au to i32
  %i.bb = add nsw i32 %i.av, -63447168
  %i.bc = add nsw i32 %i.bb, %i.ax
  %i.bd = add nsw i32 %i.bc, %i.az
  %i.be = add nsw i32 %i.bd, %i.ba
  br label %_ZL18utf8proc_codepointPKcS0_Ri.exit

_ZL18utf8proc_codepointPKcS0_Ri.exit:             ; preds = %bb.e, %bb.h, %bb.j
  %.1 = phi i64 [ 3, %bb.h ], [ 4, %bb.j ], [ 2, %bb.e ]
  %.3.i = phi i32 [ %i.aq, %bb.h ], [ %i.be, %bb.j ], [ %i.ac, %bb.e ] ; 3 uses
  %i.bf = icmp slt i32 %.3.i, 0
  br i1 %i.bf, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread, label %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread44, !prof !3990

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread:      ; preds = %bb.f, %bb.c, %bb.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i43 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ -1, %bb.i ], [ -1, %bb.c ], [ -1, %bb.f ]
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bg = add nuw nsw i64 %.063, 12
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 %gepdiff)
  %i.bh = trunc i64 %.sroa.speculated to i32
  invoke void @_ZN8facebook5velox10StringViewC2EPKci(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.r, i32 noundef %i.bh)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !3991
  store i32 %.3.i43, ptr %2, align 16, !tbaa !18, !alias.scope !3994, !noalias !3991
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.bi, align 16, !tbaa !18, !alias.scope !3994, !noalias !3991
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %4, ptr %i.bj, align 16, !tbaa !18, !noalias !3991
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @_ZN3fmt3v116detail5valueINS0_7contextEE13format_customIN8facebook5velox10StringViewENS0_9formatterIS8_cvEEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.bk, align 8, !tbaa !18, !noalias !3991
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.244, i64 52, i64 3857, ptr nonnull %2)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !3991
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions10stringImpl18stringToCodePointsINS0_10StringViewEEESt6vectorIiSaIiEERKT_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.244) #50
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %0, align 8
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.n:                                             ; preds = %bb.k, %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %3, align 8, !tbaa !8     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !18
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn23 = phi { ptr, i32 } [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bl, %bb.n ], [ %i.bm, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.u

_ZL18utf8proc_codepointPKcS0_Ri.exit.thread44:    ; preds = %bb.b, %_ZL18utf8proc_codepointPKcS0_Ri.exit
  %.3.i48 = phi i32 [ %.3.i, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ %i.t, %bb.b ] ; 2 uses
  %.147 = phi i64 [ %.1, %_ZL18utf8proc_codepointPKcS0_Ri.exit ], [ 1, %bb.b ]
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread44
  store i32 %.3.i48, ptr %i.k, align 4, !tbaa !77
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.bs, ptr %i.j, align 8, !tbaa !3989
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.q:                                             ; preds = %_ZL18utf8proc_codepointPKcS0_Ri.exit.thread44
  %i.bt = ptrtoint ptr %i.k to i64
  %i.bu = ptrtoint ptr %i.m to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 6 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775804
  br i1 %i.bw, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.l, ptr %i.c, align 8
  store ptr %i.m, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #50
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.bx = ashr exact i64 %i.bv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.by, i64 2305843009213693951)
  %i.cb = select i1 %i.bz, i64 2305843009213693951, i64 %i.ca ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 2
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #49
          to label %.noexc29 unwind label %.loopexit ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store i32 %.3.i48, ptr %i.ce, align 4, !tbaa !77
  %i.cf = icmp sgt i64 %i.bv, 0
  br i1 %i.cf, label %bb.s, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc29
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cd, ptr align 4 %i.m, i64 %i.bv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc29
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.bv) #48
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.cg, ptr %i.j, align 8, !tbaa !3989
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cb
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.p
  %i.ci = phi ptr [ %i.cg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.bs, %bb.p ]
  %i.cj = phi ptr [ %i.cd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.m, %bb.p ] ; 2 uses
  %i.ck = phi ptr [ %i.ch, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.l, %bb.p ] ; 2 uses
  %i.cl = add nsw i64 %.147, %.063                ; 2 uses
  %i.cm = icmp samesign ult i64 %i.cl, %i.b
  br i1 %i.cm, label %bb.b, label %._crit_edge, !llvm.loop !3997

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.a
  %.lcssa59 = phi ptr [ null, %bb.a ], [ %i.cj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.lcssa54 = phi ptr [ null, %bb.a ], [ %i.ck, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa54, ptr %i.c, align 8
  store ptr %.lcssa59, ptr %0, align 8
  ret void

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cn = phi ptr [ %i.k, %.loopexit.split-lp ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %.loopexit ]
  %.pn23.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i30 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.m to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.cq) #48
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.u, %bb.v
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox9functions27LevenshteinDistanceFunctionINS0_4exec10VectorExecEE6doCallIiEEvRlPKT_SA_mm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.1314", align 16 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %bb.a
  %.tr90 = phi ptr [ %2, %bb.a ], [ %.tr91, %tailrecurse ] ; 5 uses
  %.tr91 = phi ptr [ %3, %bb.a ], [ %.tr90, %tailrecurse ] ; 6 uses
  %.tr92 = phi i64 [ %4, %bb.a ], [ %.tr93, %tailrecurse ] ; 11 uses
  %.tr93 = phi i64 [ %5, %bb.a ], [ %.tr92, %tailrecurse ] ; 12 uses
  %i.a = icmp ult i64 %.tr92, %.tr93
  br i1 %i.a, label %tailrecurse, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.b = icmp eq i64 %.tr93, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %.tr92, ptr %1, align 8, !tbaa !370
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.c = mul i64 %.tr93, %.tr92                   ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1000000
  br i1 %i.d, label %bb.e, label %bb.h, !prof !98

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !3998
  store i64 %i.c, ptr %6, align 16, !tbaa !18, !alias.scope !4001, !noalias !3998
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 1000000, ptr %i.e, align 16, !tbaa !18, !alias.scope !4001, !noalias !3998
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %.tr92, ptr %i.f, align 16, !tbaa !18, !alias.scope !4001, !noalias !3998
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %.tr93, ptr %i.g, align 16, !tbaa !18, !alias.scope !4001, !noalias !3998
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.240, i64 159, i64 17428, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !3998
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions27LevenshteinDistanceFunctionINS0_4exec10VectorExecEE6doCallIiEEvRlPKT_SA_mmE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.240) #50
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %7, align 8, !tbaa !8      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !18
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit41

bb.h:                                             ; preds = %bb.d
  %i.n = icmp ugt i64 %.tr93, 2305843009213693951
  br i1 %i.n, label %.noexc, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

.noexc:                                           ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.241) #50
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.o = shl nuw nsw i64 %.tr93, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #49 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.tr93
  br label %bb.k

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.not = icmp eq i64 %.tr92, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph106

.lr.ph106:                                        ; preds = %.preheader
  %.not107 = icmp eq i64 %.tr93, 1
  br i1 %.not107, label %.lr.ph106.split.preheader, label %.lr.ph106.split.us.preheader

.lr.ph106.split.preheader:                        ; preds = %.lr.ph106
  %xtraiter = and i64 %.tr92, 1
  %i.r = icmp eq i64 %.tr92, 1
  br i1 %i.r, label %.lr.ph106.split.epil.preheader, label %.lr.ph106.split.preheader.new

.lr.ph106.split.preheader.new:                    ; preds = %.lr.ph106.split.preheader
  %unroll_iter = and i64 %.tr92, -2
  br label %.lr.ph106.split

.lr.ph106.split.us.preheader:                     ; preds = %.lr.ph106
  %.pre = load i32, ptr %.sroa.0.3, align 4, !tbaa !77
  br label %.lr.ph106.split.us

.lr.ph106.split.us:                               ; preds = %.lr.ph106.split.us.preheader, %._crit_edge.us
  %i.s = phi i32 [ %.pre, %.lr.ph106.split.us.preheader ], [ %storemerge87.us, %._crit_edge.us ] ; 2 uses
  %indvars.iv122 = phi i64 [ 0, %.lr.ph106.split.us.preheader ], [ %indvars.iv.next123, %._crit_edge.us ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.tr90, i64 %indvars.iv122 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !77
  %i.v = load i32, ptr %.tr91, align 4, !tbaa !77
  %i.w = icmp eq i32 %i.u, %i.v
  %i.x = trunc nuw nsw i64 %indvars.iv122 to i32  ; 2 uses
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.x)
  %i.y = add nsw i32 %.sroa.speculated.us, 1
  %storemerge87.us = select i1 %i.w, i32 %i.x, i32 %i.y ; 2 uses
  store i32 %storemerge87.us, ptr %.sroa.0.3, align 4, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph106.split.us, %bb.j
  %.0 = phi i32 [ %i.s, %.lr.ph106.split.us ], [ %i.aa, %bb.j ] ; 2 uses
  %indvars.iv117 = phi i64 [ 1, %.lr.ph106.split.us ], [ %indvars.iv.next118, %bb.j ] ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %.sroa.0.3, i64 %indvars.iv117 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !77  ; 2 uses
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !77
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.tr91, i64 %indvars.iv117
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !77
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.j, label %.cont

.cont:                                            ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.z, i64 -4
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.aa, i32 %.0)
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77
  %i.ah = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.ag)
  %i.ai = add nsw i32 %i.ah, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.cont
  %storemerge88.us = phi i32 [ %i.ai, %.cont ], [ %.0, %bb.i ]
  store i32 %storemerge88.us, ptr %i.z, align 4, !tbaa !77
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %.tr93
  br i1 %exitcond121.not, label %._crit_edge.us, label %bb.i, !llvm.loop !4004

._crit_edge.us:                                   ; preds = %bb.j
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %.tr92
  br i1 %exitcond126.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph106.split.us, !llvm.loop !4005

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %indvars.iv = phi i64 [ 0, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.sroa.0.0102 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %.sroa.0.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %.sroa.20.0101 = phi ptr [ %i.p, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %.sroa.20.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 4 uses
  %.sroa.25.0100 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %.sroa.25.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.20.0101, %.sroa.25.0100
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.aj, ptr %.sroa.20.0101, align 4, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.m:                                             ; preds = %bb.k
  %i.ak = ptrtoint ptr %.sroa.20.0101 to i64
  %i.al = ptrtoint ptr %.sroa.0.0102 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 7 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775804
  br i1 %i.an, label %bb.n, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #50
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
end_hunk_0
