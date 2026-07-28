inline.NumInlined: 1479
inline.NumDeleted: 659
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK8facebook5velox6memory15MemoryAllocator14allocationSizeEmm:bb.a
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %.noexc64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.cd) #32
  %.pre118.pre = load ptr, ptr %i.o, align 8, !tbaa !61
  %.pre.pre = load ptr, ptr %i.r, align 8, !tbaa !60
  store ptr %i.cl, ptr %i.x, align 8, !tbaa !57
  store ptr %i.co, ptr %i.v, align 8, !tbaa !60
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cj ; 2 uses
  store ptr %i.cp, ptr %i.w, align 8, !tbaa !61
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.n
  %i.cq = phi ptr [ %.pre118.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ai, %bb.n ] ; 3 uses
  %i.cr = phi ptr [ %.pre.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.aj, %bb.n ] ; 3 uses
  %i.cs = phi ptr [ %i.cl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ak, %bb.n ] ; 2 uses
  %i.ct = phi ptr [ %i.cp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.al, %bb.n ] ; 2 uses
  %i.cu = phi ptr [ %i.co, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.ca, %bb.n ] ; 2 uses
  %.not.i = icmp eq ptr %i.cr, %i.cq
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  store i32 %storemerge112, ptr %i.cr, align 4, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  store ptr %i.cv, ptr %i.r, align 8, !tbaa !60
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.cw = load ptr, ptr %0, align 8, !tbaa !57    ; 4 uses
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775804
  br i1 %i.da, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc65 unwind label %.loopexit.split-lp100

.noexc65:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.db = ashr exact i64 %i.cz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 2305843009213693951)
  %i.df = select i1 %i.dd, i64 2305843009213693951, i64 %i.de ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.df, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.dg = shl nuw nsw i64 %i.df, 2
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #33
          to label %.noexc66 unwind label %.loopexit99 ; 4 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %i.cz ; 2 uses
  store i32 %storemerge112, ptr %i.di, align 4, !tbaa !66
  %i.dj = icmp sgt i64 %i.cz, 0
  br i1 %i.dj, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.u:                                             ; preds = %.noexc66
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr align 4 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.u, %.noexc66
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #32
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.dh, ptr %0, align 8, !tbaa !57
  store ptr %i.dk, ptr %i.r, align 8, !tbaa !60
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.df ; 2 uses
  store ptr %i.dl, ptr %i.o, align 8, !tbaa !61
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.r
  %i.dm = phi ptr [ %i.dl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.cq, %bb.r ] ; 2 uses
  %i.dn = phi ptr [ %i.dk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.cv, %bb.r ] ; 2 uses
  %i.do = load i32, ptr %i.ah, align 8, !tbaa !67
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.ah, align 8, !tbaa !67
  %i.dq = add i64 %i.bp, %.044111                 ; 3 uses
  %i.dr = icmp slt i32 %.148, 1
  br i1 %i.dr, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit, label %bb.w

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit99:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp100:                            ; preds = %bb.t
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ds = icmp eq i64 %.0, %i.bc
  br i1 %i.ds, label %bb.x, label %bb.y, !prof !8

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.g, %bb.x, %bb.w
  %i.dt = phi ptr [ %i.ai, %bb.g ], [ %i.dm, %bb.w ], [ %i.dm, %bb.x ]
  %i.du = phi ptr [ %i.aj, %bb.g ], [ %i.dn, %bb.w ], [ %i.dn, %bb.x ]
  %i.dv = phi ptr [ %i.ak, %bb.g ], [ %i.cs, %bb.w ], [ %i.cs, %bb.x ]
  %i.dw = phi ptr [ %i.al, %bb.g ], [ %i.ct, %bb.w ], [ %i.ct, %bb.x ]
  %i.dx = phi ptr [ %i.am, %bb.g ], [ %i.cu, %bb.w ], [ %i.cu, %bb.x ]
  %.089.ph = phi i32 [ %storemerge112, %bb.g ], [ %storemerge112, %bb.w ], [ %storemerge.in109, %bb.x ] ; 2 uses
  %.249.ph = phi i32 [ %.047110, %bb.g ], [ %.148, %bb.w ], [ %.148, %bb.x ]
  %.145.ph = phi i64 [ %.044111, %bb.g ], [ %i.dq, %bb.w ], [ %i.dq, %bb.x ] ; 2 uses
  %storemerge = add i32 %.089.ph, -1              ; 2 uses
  %i.dy = icmp sgt i32 %storemerge, -1
  br i1 %i.dy, label %bb.f, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit, !llvm.loop !72

bb.z:                                             ; preds = %.loopexit99, %.loopexit.split-lp100, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit101, %.loopexit99 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp100 ]
  call void @_ZN8facebook5velox6memory15MemoryAllocator7SizeMixD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #19
  br label %common.resume

_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.y
  %.246.ph = phi i64 [ %.145.ph, %bb.y ], [ %i.dq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.dz = trunc i64 %.246.ph to i32
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge

_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit, %_ZN8facebook5velox6memory15MemoryAllocator7SizeMixC2Ev.exit
  %.246 = phi i32 [ 0, %_ZN8facebook5velox6memory15MemoryAllocator7SizeMixC2Ev.exit ], [ %i.dz, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit._crit_edge.loopexit ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.246, ptr %i.ea, align 4, !tbaa !73
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6memory15MemoryAllocator7SizeMixD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt(i64 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %i.b = icmp eq i16 %1, 16
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i16 %1, -16
  %or.cond = icmp ult i16 %i.c, 49
  %i.d = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond9 = select i1 %or.cond, i1 %i.e, i1 false
  br i1 %or.cond9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i64 %i.a, 4294967295
  %2 = and i64 %0, 4294967295
  %i.g = and i64 %2, %i.f
  %i.h = icmp eq i64 %i.g, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory15MemoryAllocator14alignmentCheckEmt(i64 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.48", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = zext i16 %1 to i64                       ; 2 uses
  %i.b = icmp eq i16 %1, 16
  br i1 %i.b, label %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i16 %1, -16
  %or.cond.i = icmp ult i16 %i.c, 49
  %i.d = tail call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.a)
  %i.e = icmp samesign ult i64 %i.d, 2
  %or.cond9.i = select i1 %or.cond.i, i1 %i.e, i1 false
  br i1 %or.cond9.i, label %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit, label %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit.thread3, !prof !74

_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit: ; preds = %bb.b
  %i.f = add nuw nsw i64 %i.a, 4294967295
  %4 = and i64 %0, 4294967295
  %i.g = and i64 %4, %i.f
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit.thread, label %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit.thread3, !prof !75

_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit.thread3: ; preds = %bb.b, %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !76
  store i64 %0, ptr %2, align 16, !tbaa !12, !alias.scope !79, !noalias !76
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = zext i16 %1 to i32
  store i32 %i.j, ptr %i.i, align 16, !tbaa !12, !noalias !76
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.14, i64 59, i64 36, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !76
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory15MemoryAllocator14alignmentCheckEmtE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.14) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit.thread3
  unreachable

bb.d:                                             ; preds = %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit.thread3
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !12
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.k

_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit.thread: ; preds = %bb.a, %_ZN8facebook5velox6memory15MemoryAllocator16isAlignmentValidEmt.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox6memory15MemoryAllocator22roundUpToSizeClassSizeEmRKSt6vectorImSaImEE(i64 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.53", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = add i64 %0, 4095
  %i.b = lshr i64 %i.a, 12                        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.f
  br i1 %.not, label %bb.b, label %bb.e, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !82
  store i64 %i.b, ptr %2, align 16, !tbaa !12, !alias.scope !85, !noalias !82
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.f, ptr %i.g, align 16, !tbaa !12, !alias.scope !85, !noalias !82
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.3, i64 11, i64 68, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !82
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory15MemoryAllocator22roundUpToSizeClassSizeEmRKSt6vectorImSaImEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr nonnull @.str.3) #31
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !12
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !50     ; 3 uses
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.t = lshr i64 %.016.i.i, 1                    ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !29
  %i.w = icmp ult i64 %i.v, %i.b                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = xor i64 %i.t, -1
  %i.z = add nsw i64 %.016.i.i, %i.y
  %.sroa.011.1.i.i = select i1 %i.w, ptr %i.x, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.w, i64 %i.z, i64 %i.t    ; 2 uses
  %i.aa = icmp sgt i64 %.1.i.i, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit, !llvm.loop !88

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEEmET_S8_S8_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.e
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.n, %bb.e ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ]
  %i.ab = load i64, ptr %.sroa.011.0.lcssa.i.i, align 8, !tbaa !29
  ret i64 %i.ab
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory15MemoryAllocator21allocateNonContiguousEmRNS1_10AllocationESt8functionIFvmbEEm(ptr noundef nonnull align 8 dereferenceable(888) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef align 8 %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %5 = alloca %class.anon, align 8                ; 7 uses
  %6 = alloca %"struct.facebook::velox::memory::MemoryAllocator::SizeMix", align 8 ; 13 uses
  %7 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %9 = alloca %"class.std::function.17", align 8  ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !89   ; 3 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = shl nsw i64 %i.k, 12                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %2, ptr %5, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.m, align 8, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.n, align 8, !tbaa !103
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_ZNK8facebook5velox6memory10Allocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %0, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(36) %2), !inline_history !106 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !107
  %.not.i.i.not.i.i = icmp eq ptr %i.v, null
  %i.w = icmp eq i32 %i.j, 0
  %or.cond.not.i = or i1 %i.w, %.not.i.i.not.i.i
  br i1 %or.cond.not.i, label %"_ZZN8facebook5velox6memory15MemoryAllocator21allocateNonContiguousEmRNS1_10AllocationESt8functionIFvmbEEmENK3$_1clEm.exit", label %_ZNKSt8functionIFvmbEEclEmb.exit.i

_ZNKSt8functionIFvmbEEclEmb.exit.i:               ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.l, ptr %i.g, align 8, !tbaa !29
  store i8 0, ptr %i.h, align 1, !tbaa !109
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.h), !inline_history !113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZZN8facebook5velox6memory15MemoryAllocator21allocateNonContiguousEmRNS1_10AllocationESt8functionIFvmbEEmENK3$_1clEm.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNK8facebook5velox6memory15MemoryAllocator14allocationSizeEmm(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::memory::MemoryAllocator::SizeMix") align 8 %6, ptr noundef nonnull align 8 dereferenceable(888) %0, i64 noundef %1, i64 noundef %4)
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !107
  %.not.i.i.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.not.i, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !73 ; 2 uses
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br i1 %.not, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = sub nuw nsw i64 %i.ad, %i.k             ; 2 uses
  %i.ag = shl nsw i64 %i.af, 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !29
  store i8 1, ptr %i.f, align 1, !tbaa !109
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !111
end_hunk_0
