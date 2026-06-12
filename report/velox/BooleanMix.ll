inline.NumInlined: 647
inline.NumDeleted: 323
begin_hunk_0_@_ZN8facebook5velox13AlignedBuffer10reallocateIcEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E:bb.a

bb.t:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !149 ; 2 uses
  %i.bh = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bg, i64 96) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
  br i1 %i.bi, label %bb.u, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !283

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !285
  store ptr @.str.25, ptr %7, align 16, !tbaa !33, !noalias !285
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.bg, ptr %i.bj, align 16, !tbaa !33, !noalias !285
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 96, ptr %i.bk, align 16, !tbaa !33, !noalias !285
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.38, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !285
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.38) #18
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %8, align 8, !tbaa !34    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !33
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %common.resume80

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.t
  %i.br = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 96) ; 2 uses
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  br i1 %i.bs, label %bb.x, label %bb.aa, !prof !283

bb.x:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !288
  store ptr @.str.25, ptr %5, align 16, !tbaa !33, !noalias !288
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.bt, align 16, !tbaa !33, !noalias !288
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.bu, align 16, !tbaa !33, !noalias !288
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.38, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !288
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.38) #18
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %6, align 8, !tbaa !34    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %bb.z
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !33
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %common.resume80

bb.aa:                                            ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %i.cb = extractvalue { i64, i1 } %i.bh, 0
  %i.cc = extractvalue { i64, i1 } %i.br, 0
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 192
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(264) %i.o, i64 noundef %i.cc) ; 2 uses
  %i.ch = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef nonnull %i.a, i64 noundef %i.cb, i64 noundef %i.cg) ; 11 uses
  store ptr null, ptr %0, align 8, !tbaa !148
  %i.cl = add i64 %i.cg, -96                      ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.o, ptr %i.cn, align 8, !tbaa !162
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !155
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !284
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store i64 %i.cl, ptr %i.cq, align 8, !tbaa !149
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 2 uses
  store i32 0, ptr %i.cr, align 8, !tbaa !291
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 44
  store i8 1, ptr %i.cs, align 4, !tbaa !154
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ck, align 8, !tbaa !113
  %.not.i76 = icmp ugt i64 %1, %i.cl
  br i1 %.not.i76, label %bb.ab, label %_ZN8facebook5velox6Buffer7setSizeEm.exit, !prof !283

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !292
  store i64 %1, ptr %3, align 16, !tbaa !33, !alias.scope !295, !noalias !292
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.cl, ptr %i.cu, align 16, !tbaa !33, !alias.scope !295, !noalias !292
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.3, i64 11, i64 68, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !292
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.3) #18
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77: ; preds = %bb.ad
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !33
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %common.resume80

_ZN8facebook5velox6Buffer7setSizeEm.exit:         ; preds = %bb.aa
  store i64 %1, ptr %i.cp, align 8, !tbaa !284
  tail call void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, i64 noundef %i.c, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %2)
  %i.db = atomicrmw add ptr %i.cr, i32 1 acq_rel, align 4 ; 0 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !148   ; 7 uses
  store ptr %i.ck, ptr %0, align 8, !tbaa !148
  %.not.i.i50 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i50, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN8facebook5velox6Buffer7setSizeEm.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = atomicrmw sub ptr %i.dd, i32 1 acq_rel, align 4
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %.sink.split.i.i.i51, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit

.sink.split.i.i.i51:                              ; preds = %bb.ae
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !113
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(64) %i.dc)
          to label %.noexc.i.i52 unwind label %bb.af, !inline_history !161

.noexc.i.i52:                                     ; preds = %.sink.split.i.i.i51
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !162
  %.not.i.i.i53 = icmp eq ptr %i.dk, null
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !113
  %..i.i.i54 = select i1 %.not.i.i.i53, i64 8, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %..i.i.i54
  %i.dn = load ptr, ptr %i.dm, align 8
  invoke void %i.dn(ptr noundef nonnull align 8 dereferenceable(64) %i.dc)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit unwind label %bb.af, !inline_history !161

bb.af:                                            ; preds = %.noexc.i.i52, %.sink.split.i.i.i51
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #20
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit: ; preds = %.noexc.i.i52, %bb.ae, %_ZN8facebook5velox6Buffer7setSizeEm.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.113", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %.not = icmp ugt i64 %2, %i.b
  br i1 %.not, label %bb.b, label %6, !prof !283

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !298
  store i64 %2, ptr %4, align 16, !tbaa !33, !alias.scope !301, !noalias !298
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.b, ptr %i.c, align 16, !tbaa !33, !alias.scope !301, !noalias !298
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.3, i64 11, i64 68, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !298
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_EE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull @.str.3) #18
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %5, align 8, !tbaa !34     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !33
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %i.d

6:                                                ; preds = %bb.a
  %.not8 = icmp ugt i64 %2, %1
  br i1 %.not8, label %bb.e, label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.e:                                             ; preds = %6
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !156, !range !122, !noundef !123
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %_ZSt4fillIPccEvT_S1_RKT0_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i8, ptr %i.m, align 4, !tbaa !154
  %i.o = and i8 %i.n, 2
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, label %bb.g, !prof !28

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIcEEPT_vE18veloxCheckFailArgs) #18
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %1
  %gepdiff = sub nsw i64 %2, %1
  %i.s = load i8, ptr %3, align 1, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.s, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPccEvT_S1_RKT0_.exit

_ZSt4fillIPccEvT_S1_RKT0_.exit:                   ; preds = %_ZNK8facebook5velox6Buffer9asMutableIcEEPT_v.exit, %bb.e, %6
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.112", align 16 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.112", align 16 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  br i1 %4, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %1, -64                          ; 2 uses
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 160) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.c, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit, !prof !283

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17, !noalias !304
  store ptr @.str.25, ptr %7, align 16, !tbaa !33, !noalias !304
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.a, ptr %i.d, align 16, !tbaa !33, !noalias !304
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 160, ptr %i.e, align 16, !tbaa !33, !noalias !304
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.38, i64 20, i64 1100, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17, !noalias !304
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.38) #18
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %8, align 8, !tbaa !34     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21 ], [ %i.ap, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit: ; preds = %bb.b
  %i.l = extractvalue { i64, i1 } %i.b, 0
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 96) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.n, label %bb.g, label %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, !prof !283

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !307
  store ptr @.str.25, ptr %5, align 16, !tbaa !33, !noalias !307
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.o, align 16, !tbaa !33, !noalias !307
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 96, ptr %i.p, align 16, !tbaa !33, !noalias !307
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.38, i64 20, i64 1100, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !307
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusImEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.38) #18
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !34     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %bb.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !33
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %common.resume

_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23: ; preds = %bb.f
  %i.w = extractvalue { i64, i1 } %i.m, 0
  %i.x = load ptr, ptr %2, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %i.w)
  br label %bb.j

bb.j:                                             ; preds = %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit
  %.0 = phi i64 [ %i.l, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit ], [ %i.aa, %_ZN8facebook5velox11checkedPlusImEET_S2_S2_PKc.exit23 ] ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(264) %2, i64 noundef %.0, i64 0) ; 12 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.k, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit, !prof !283

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_EbE18veloxCheckFailArgs) #18
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit: ; preds = %bb.j
  %i.af = add i64 %.0, -96
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %2, ptr %i.ah, align 8, !tbaa !162
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !155
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store i64 %i.af, ptr %i.ak, align 8, !tbaa !149
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !291
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  store i8 1, ptr %i.am, align 4, !tbaa !154
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 -1, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %i.ae, align 8, !tbaa !113
  store i64 %1, ptr %i.aj, align 8, !tbaa !284
  store ptr %i.ae, ptr %0, align 8, !tbaa !148
  %i.ao = atomicrmw add ptr %i.al, i32 1 acq_rel, align 4 ; 0 uses
  invoke void @_ZN8facebook5velox13AlignedBuffer13fillNewMemoryIcEEvmmRKSt8optionalIT_E(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 noundef 0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(2) %3)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  br label %common.resume

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2EPS3_b.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN8facebook5velox13AlignedBufferE, i64 16), ptr %0, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox13AlignedBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6Buffer7setSizeEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.113", align 16 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i8, ptr %i.a, align 4, !tbaa !154
  %i.c = and i8 %i.b, 2
  %.not4 = icmp eq i8 %i.c, 0
  br i1 %.not4, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6Buffer7setSizeEmE18veloxCheckFailArgs) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !149  ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.g, !prof !283

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !310
  store i64 %1, ptr %2, align 16, !tbaa !33, !alias.scope !313, !noalias !310
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.e, ptr %i.f, align 16, !tbaa !33, !alias.scope !313, !noalias !310
end_hunk_0
