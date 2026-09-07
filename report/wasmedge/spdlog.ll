Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/spdlog?download=true
inline.NumInlined: 6509
inline.NumDeleted: 3747
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 125
begin_hunk_0_@_ZNSt12__shared_ptrIN6spdlog7details11thread_poolELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #22

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #22

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN6spdlog7details7log_msgEEZNS0_6logger15dump_backtrace_EvE3$_0E9_M_invokeERKSt9_Any_dataS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #6 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !763   ; 2 uses
  %i.a = load ptr, ptr %.val, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(208) %.val, ptr noundef nonnull align 8 dereferenceable(96) %1), !inline_history !761
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN6spdlog7details7log_msgEEZNS0_6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN6spdlog6logger15dump_backtrace_EvE3$_0", ptr %0, align 8, !tbaa !765
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !175
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !169
  store i64 %.val.i, ptr %0, align 8, !tbaa !169
  br label %"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN6spdlog6logger15dump_backtrace_EvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details14full_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.e) #41
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details14full_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %_ZN6spdlog7details14full_formatterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.e) #41
  br label %_ZN6spdlog7details14full_formatterD2Ev.exit

_ZN6spdlog7details14full_formatterD2Ev.exit:      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 320) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details14full_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %10 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !68
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp ne i64 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 56 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 42 uses
  br i1 %or.cond, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  br label %.lr.ph27.i

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.f, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 19 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !66
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 1), !inline_history !28
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ 1, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.q = phi i64 [ 0, %bb.b ], [ %.pre.i, %bb.c ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  store i8 91, ptr %i.s, align 1, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !277  ; 2 uses
  %i.v = add nsw i32 %i.u, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.w = icmp slt i32 %i.u, -1900
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.v, i1 true) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 21 ; 2 uses
  %i.y = icmp samesign ugt i32 %spec.select.i.i.i, 99
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.af, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.x, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ]
  %i.z = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.aa = urem i32 %.021.i.i.i.i.i, 100
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 1
  store i16 %i.ae, ptr %i.z, align 1
  %i.af = udiv i32 %.021.i.i.i.i.i, 100           ; 2 uses
  %i.ag = icmp samesign ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.x, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.z, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.af, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ah = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ai = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.aj = or disjoint i8 %i.ai, 48
  %i.ak = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.al = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.am = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 1
  store i16 %i.ap, ptr %i.al, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ak, %bb.d ], [ %i.al, %bb.e ] ; 2 uses
  br i1 %i.w, label %bb.f, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.f:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.aq, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.f, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.aq, %bb.f ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %.0.i.i.i, ptr %i.ar, align 8, !tbaa !279
  %i.as = ptrtoint ptr %10 to i64
  %i.at = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.au = add i64 %i.as, 21                       ; 3 uses
  %i.av = sub i64 %i.au, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.av
  %.not24.i.i = icmp eq i64 %i.au, %i.at
  %.pre = load i64, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ay = phi i64 [ %.pre, %.lr.ph27.i.i ], [ %i.cd, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.ce, %._crit_edge.i.i ] ; 9 uses
  %i.az = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ba = sub i64 %i.au, %i.az                    ; 2 uses
  %i.bb = add i64 %i.ba, %i.ay                    ; 2 uses
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !66  ; 2 uses
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !64
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(283) %i.i, i64 noundef %i.bb), !inline_history !30
  %.pre30.i.i = load i64, ptr %i.l, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.f, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bf = phi i64 [ %i.ay, %bb.g ], [ %.pre31.i.i, %bb.h ] ; 4 uses
  %i.bg = phi i64 [ %i.bc, %bb.g ], [ %.pre30.i.i, %bb.h ]
  %i.bh = sub i64 %i.bg, %i.bf
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bh, i64 %i.ba) ; 13 uses
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !65  ; 2 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bl = add i64 %i.bf, %i.bj
  %i.bm = sub i64 %i.az, %i.bl
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check415 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check415, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !62
  %wide.load416 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !62
  store <16 x i8> %wide.load416, ptr %i.br, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !766

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec417 = and i64 %spec.select.i.i, -4        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index418 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next420, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index418
  %wide.load419 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index418
  store <4 x i8> %wide.load419, ptr %i.bu, align 1, !tbaa !62
  %index.next420 = add nuw i64 %index418, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next420, %n.vec417
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !767

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n421 = icmp eq i64 %spec.select.i.i, %n.vec417
  br i1 %cmp.n421, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec417, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.023.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !62
  %i.bz = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !768

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.prol ]
  %i.ca = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.f, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.cc = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bf, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.cd = add i64 %i.cc, %spec.select.i.i         ; 3 uses
  store i64 %i.cd, ptr %i.f, align 8, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ce, %i.aw
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.g, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cu, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.023.i.i
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !62
  %i.ci = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !62
  %i.cm = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !62
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !62
  %i.cq = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !62
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !62
  %i.cu = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cu, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !769

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.cv = phi i64 [ %.pre, %_ZN3fmt3v1110format_intC2Ei.exit.i ], [ %i.cd, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.cw = add i64 %i.cv, 1                        ; 3 uses
  %i.cx = load i64, ptr %i.l, align 8, !tbaa !66
  %i.cy = icmp ugt i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit48

bb.i:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !64
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.cw), !inline_history !28
  %.pre.i46 = load i64, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %.pre2.i47 = add i64 %.pre.i46, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit48

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit48: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, %bb.i
  %.pre-phi.i45 = phi i64 [ %i.cw, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre2.i47, %bb.i ]
  %i.db = phi i64 [ %i.cv, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre.i46, %bb.i ]
  %i.dc = load ptr, ptr %i.i, align 8, !tbaa !65
  store i64 %.pre-phi.i45, ptr %i.f, align 8, !tbaa !67
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 45, ptr %i.dd, align 1, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !280
  %i.dg = add nsw i32 %i.df, 1                    ; 3 uses
  %or.cond.i = icmp ult i32 %i.dg, 100
  br i1 %or.cond.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit48
  %.lhs.trunc.i = trunc nuw nsw i32 %i.dg to i8   ; 2 uses
  %i.dh = udiv i8 %.lhs.trunc.i, 10
  %i.di = urem i8 %.lhs.trunc.i, 10
  %i.dj = or disjoint i8 %i.dh, 48
  %i.dk = load i64, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.dl = add i64 %i.dk, 1                        ; 3 uses
  %i.dm = load i64, ptr %i.l, align 8, !tbaa !66
  %i.dn = icmp ugt i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.k, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.k:                                             ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !64
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(283) %i.i, i64 noundef %i.dl), !inline_history !31
  %.pre.i.i49 = load i64, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i49, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i = phi i64 [ %i.dl, %bb.j ], [ %.pre2.i.i, %bb.k ]
  %i.dq = phi i64 [ %i.dk, %bb.j ], [ %.pre.i.i49, %bb.k ]
  %i.dr = load ptr, ptr %i.i, align 8, !tbaa !65
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 %i.dj, ptr %i.ds, align 1, !tbaa !62
  %i.dt = or disjoint i8 %i.di, 48
end_hunk_0
begin_hunk_1_@_ZN6spdlog7details14full_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %min.iters.check508.a = icmp ult i64 %spec.select.i.i203, 4
  br i1 %min.iters.check508.a, label %.lr.ph.i.i205.preheader, label %vector.memcheck506

vector.memcheck506:                               ; preds = %iter.check521
  %i.uf = add i64 %i.tz, %i.ud
  %i.ug = sub i64 %i.tt, %i.uf
  %diff.check507 = icmp ugt i64 %i.ug, -32
  br i1 %diff.check507, label %.lr.ph.i.i205.preheader, label %vector.main.loop.iter.check509

vector.main.loop.iter.check509:                   ; preds = %vector.memcheck506
  %min.iters.check510 = icmp ult i64 %spec.select.i.i203, 32
  br i1 %min.iters.check510, label %vec.epilog.ph525, label %vector.ph511

vector.ph511:                                     ; preds = %vector.main.loop.iter.check509
  %i.uh = and i64 %spec.select.i.i203, 28
  %n.vec512 = and i64 %spec.select.i.i203, -32    ; 4 uses
  br label %vector.body513

vector.body513:                                   ; preds = %vector.body513, %vector.ph511
  %index514 = phi i64 [ 0, %vector.ph511 ], [ %index.next517, %vector.body513 ] ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.01925.i.i201, i64 %index514 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %wide.load515 = load <16 x i8>, ptr %i.ui, align 1, !tbaa !62
  %wide.load516 = load <16 x i8>, ptr %i.uj, align 1, !tbaa !62
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ue, i64 %index514 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 16
  store <16 x i8> %wide.load515, ptr %i.uk, align 1, !tbaa !62
  store <16 x i8> %wide.load516, ptr %i.ul, align 1, !tbaa !62
  %index.next517 = add nuw i64 %index514, 32      ; 2 uses
  %i.um = icmp eq i64 %index.next517, %n.vec512
  br i1 %i.um, label %middle.block518, label %vector.body513, !llvm.loop !782

middle.block518:                                  ; preds = %vector.body513
  %cmp.n519 = icmp eq i64 %spec.select.i.i203, %n.vec512
  br i1 %cmp.n519, label %._crit_edge.loopexit.i.i208, label %vec.epilog.iter.check523

vec.epilog.iter.check523:                         ; preds = %middle.block518
  %min.epilog.iters.check524 = icmp eq i64 %i.uh, 0
  br i1 %min.epilog.iters.check524, label %.lr.ph.i.i205.preheader, label %vec.epilog.ph525, !prof !107

vec.epilog.ph525:                                 ; preds = %vector.main.loop.iter.check509, %vec.epilog.iter.check523
  %vec.epilog.resume.val520 = phi i64 [ %n.vec512, %vec.epilog.iter.check523 ], [ 0, %vector.main.loop.iter.check509 ]
  %n.vec526 = and i64 %spec.select.i.i203, -4     ; 3 uses
  br label %vec.epilog.vector.body527

vec.epilog.vector.body527:                        ; preds = %vec.epilog.vector.body527, %vec.epilog.ph525
  %index528 = phi i64 [ %vec.epilog.resume.val520, %vec.epilog.ph525 ], [ %index.next530, %vec.epilog.vector.body527 ] ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.01925.i.i201, i64 %index528
  %wide.load529 = load <4 x i8>, ptr %i.un, align 1, !tbaa !62
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ue, i64 %index528
  store <4 x i8> %wide.load529, ptr %i.uo, align 1, !tbaa !62
  %index.next530 = add nuw i64 %index528, 4       ; 2 uses
  %i.up = icmp eq i64 %index.next530, %n.vec526
  br i1 %i.up, label %vec.epilog.middle.block531, label %vec.epilog.vector.body527, !llvm.loop !783

vec.epilog.middle.block531:                       ; preds = %vec.epilog.vector.body527
  %cmp.n532 = icmp eq i64 %spec.select.i.i203, %n.vec526
  br i1 %cmp.n532, label %._crit_edge.loopexit.i.i208, label %.lr.ph.i.i205.preheader

.lr.ph.i.i205.preheader:                          ; preds = %vector.memcheck506, %iter.check521, %vec.epilog.iter.check523, %vec.epilog.middle.block531
  %.023.i.i206.ph = phi i64 [ 0, %iter.check521 ], [ 0, %vector.memcheck506 ], [ %n.vec512, %vec.epilog.iter.check523 ], [ %n.vec526, %vec.epilog.middle.block531 ] ; 3 uses
  %xtraiter607 = and i64 %spec.select.i.i203, 3   ; 2 uses
  %lcmp.mod608.not = icmp eq i64 %xtraiter607, 0
  br i1 %lcmp.mod608.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol

.lr.ph.i.i205.prol:                               ; preds = %.lr.ph.i.i205.preheader, %.lr.ph.i.i205.prol
  %.023.i.i206.prol = phi i64 [ %i.ut, %.lr.ph.i.i205.prol ], [ %.023.i.i206.ph, %.lr.ph.i.i205.preheader ] ; 3 uses
  %prol.iter609 = phi i64 [ %prol.iter609.next, %.lr.ph.i.i205.prol ], [ 0, %.lr.ph.i.i205.preheader ]
  %i.uq = getelementptr inbounds nuw i8, ptr %.01925.i.i201, i64 %.023.i.i206.prol
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !62
  %i.us = getelementptr inbounds nuw i8, ptr %i.ue, i64 %.023.i.i206.prol
  store i8 %i.ur, ptr %i.us, align 1, !tbaa !62
  %i.ut = add nuw i64 %.023.i.i206.prol, 1        ; 2 uses
  %prol.iter609.next = add i64 %prol.iter609, 1   ; 2 uses
  %prol.iter609.cmp.not = icmp eq i64 %prol.iter609.next, %xtraiter607
  br i1 %prol.iter609.cmp.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol, !llvm.loop !784

.lr.ph.i.i205.prol.loopexit:                      ; preds = %.lr.ph.i.i205.prol, %.lr.ph.i.i205.preheader
  %.023.i.i206.unr = phi i64 [ %.023.i.i206.ph, %.lr.ph.i.i205.preheader ], [ %i.ut, %.lr.ph.i.i205.prol ]
  %i.uu = sub i64 %.023.i.i206.ph, %spec.select.i.i203
  %i.uv = icmp ugt i64 %i.uu, -4
  br i1 %i.uv, label %._crit_edge.loopexit.i.i208, label %.lr.ph.i.i205

._crit_edge.loopexit.i.i208:                      ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205, %vec.epilog.middle.block531, %middle.block518
  %.pre32.i.i209 = load i64, ptr %i.lx, align 8, !tbaa !67
  br label %._crit_edge.i.i210

._crit_edge.i.i210:                               ; preds = %._crit_edge.loopexit.i.i208, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i202
  %i.uw = phi i64 [ %.pre32.i.i209, %._crit_edge.loopexit.i.i208 ], [ %i.tz, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i202 ]
  %i.ux = add i64 %i.uw, %spec.select.i.i203      ; 3 uses
  store i64 %i.ux, ptr %i.lx, align 8, !tbaa !67
  %i.uy = getelementptr inbounds nuw i8, ptr %.01925.i.i201, i64 %spec.select.i.i203 ; 2 uses
  %.not.i.i211 = icmp eq ptr %i.uy, %i.tq
  br i1 %.not.i.i211, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit214, label %bb.bb, !llvm.loop !3

.lr.ph.i.i205:                                    ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205
  %.023.i.i206 = phi i64 [ %i.vo, %.lr.ph.i.i205 ], [ %.023.i.i206.unr, %.lr.ph.i.i205.prol.loopexit ] ; 6 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.01925.i.i201, i64 %.023.i.i206
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !62
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ue, i64 %.023.i.i206
  store i8 %i.va, ptr %i.vb, align 1, !tbaa !62
  %i.vc = add nuw i64 %.023.i.i206, 1             ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.01925.i.i201, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !62
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.vc
  store i8 %i.ve, ptr %i.vf, align 1, !tbaa !62
  %i.vg = add nuw i64 %.023.i.i206, 2             ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.01925.i.i201, i64 %i.vg
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !62
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.vg
  store i8 %i.vi, ptr %i.vj, align 1, !tbaa !62
  %i.vk = add nuw i64 %.023.i.i206, 3             ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %.01925.i.i201, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !62
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ue, i64 %i.vk
  store i8 %i.vm, ptr %i.vn, align 1, !tbaa !62
  %i.vo = add nuw i64 %.023.i.i206, 4             ; 2 uses
  %exitcond.not.i.i207.3 = icmp eq i64 %i.vo, %spec.select.i.i203
  br i1 %exitcond.not.i.i207.3, label %._crit_edge.loopexit.i.i208, label %.lr.ph.i.i205, !llvm.loop !785

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit214: ; preds = %._crit_edge.i.i210, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit196
  %i.vp = phi i64 [ %.pre308, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit196 ], [ %i.ux, %._crit_edge.i.i210 ] ; 2 uses
  %i.vq = add i64 %i.vp, 1                        ; 3 uses
  %i.vr = load i64, ptr %i.ma, align 8, !tbaa !66
  %i.vs = icmp ugt i64 %i.vq, %i.vr
  br i1 %i.vs, label %bb.bd, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219

bb.bd:                                            ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit214
  %i.vt = load ptr, ptr %i.ql, align 8, !tbaa !64
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.vq), !inline_history !28
  %.pre.i217 = load i64, ptr %i.lx, align 8, !tbaa !67 ; 2 uses
  %.pre2.i218 = add i64 %.pre.i217, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit214, %bb.bd
  %.pre-phi.i216 = phi i64 [ %i.vq, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit214 ], [ %.pre2.i218, %bb.bd ]
  %i.vu = phi i64 [ %i.vp, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit214 ], [ %.pre.i217, %bb.bd ]
  %i.vv = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i216, ptr %i.lx, align 8, !tbaa !67
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 %i.vu
  store i8 58, ptr %i.vw, align 1, !tbaa !62
  %i.vx = load i32, ptr %i.ta, align 8, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.vy = icmp slt i32 %i.vx, 0
  %spec.select.i.i.i220 = call i32 @llvm.abs.i32(i32 %i.vx, i1 false) ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.wa = icmp ugt i32 %spec.select.i.i.i220, 99
  br i1 %i.wa, label %.lr.ph.i.i.i.i.i244, label %._crit_edge.i.i.i.i.i221

.lr.ph.i.i.i.i.i244:                              ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219, %.lr.ph.i.i.i.i.i244
  %.021.i.i.i.i.i245 = phi i32 [ %i.wh, %.lr.ph.i.i.i.i.i244 ], [ %spec.select.i.i.i220, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219 ] ; 3 uses
  %.01920.i.i.i.i.i246 = phi ptr [ %i.wb, %.lr.ph.i.i.i.i.i244 ], [ %i.vz, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219 ]
  %i.wb = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i246, i64 -2 ; 3 uses
  %i.wc = urem i32 %.021.i.i.i.i.i245, 100
  %i.wd = shl nuw nsw i32 %i.wc, 1
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.we
  %i.wg = load i16, ptr %i.wf, align 1
  store i16 %i.wg, ptr %i.wb, align 1
  %i.wh = udiv i32 %.021.i.i.i.i.i245, 100        ; 2 uses
  %i.wi = icmp ugt i32 %.021.i.i.i.i.i245, 9999
  br i1 %i.wi, label %.lr.ph.i.i.i.i.i244, label %._crit_edge.i.i.i.i.i221, !llvm.loop !29

._crit_edge.i.i.i.i.i221:                         ; preds = %.lr.ph.i.i.i.i.i244, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219
  %.019.lcssa.i.i.i.i.i222 = phi ptr [ %i.vz, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219 ], [ %i.wb, %.lr.ph.i.i.i.i.i244 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i223 = phi i32 [ %spec.select.i.i.i220, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit219 ], [ %i.wh, %.lr.ph.i.i.i.i.i244 ] ; 3 uses
  %i.wj = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i223, 10
  br i1 %i.wj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %._crit_edge.i.i.i.i.i221
  %i.wk = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i223 to i8
  %i.wl = or disjoint i8 %i.wk, 48
  %i.wm = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i222, i64 -1 ; 2 uses
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i224

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i221
  %i.wn = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i222, i64 -2 ; 2 uses
  %i.wo = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i223, 1
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.wp
  %i.wr = load i16, ptr %i.wq, align 1
  store i16 %i.wr, ptr %i.wn, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i224

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i224: ; preds = %bb.bf, %bb.be
  %.sroa.0.0.i.i.i.i.i225 = phi ptr [ %i.wm, %bb.be ], [ %i.wn, %bb.bf ] ; 2 uses
  br i1 %i.vy, label %bb.bg, label %_ZN3fmt3v1110format_intC2Ei.exit.i226

bb.bg:                                            ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i224
  %i.ws = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i225, i64 -1 ; 2 uses
  store i8 45, ptr %i.ws, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i226

_ZN3fmt3v1110format_intC2Ei.exit.i226:            ; preds = %bb.bg, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i224
  %.0.i.i.i227 = phi ptr [ %i.ws, %bb.bg ], [ %.sroa.0.0.i.i.i.i.i225, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i224 ] ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i227, ptr %i.wt, align 8, !tbaa !279
  %i.wu = ptrtoint ptr %4 to i64
  %i.wv = ptrtoint ptr %.0.i.i.i227 to i64        ; 2 uses
  %i.ww = add i64 %i.wu, 21                       ; 3 uses
  %i.wx = sub i64 %i.ww, %i.wv
  %i.wy = getelementptr inbounds nuw i8, ptr %.0.i.i.i227, i64 %i.wx
  %.not24.i.i228 = icmp eq i64 %i.ww, %i.wv
  %.pre309 = load i64, ptr %i.lx, align 8, !tbaa !67 ; 2 uses
  br i1 %.not24.i.i228, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit247, label %.lr.ph27.i.i229.a

.lr.ph27.i.i229.a:                                ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i226, %._crit_edge.i.i240
  %i.wz = phi i64 [ %i.ye, %._crit_edge.i.i240 ], [ %.pre309, %_ZN3fmt3v1110format_intC2Ei.exit.i226 ] ; 2 uses
  %.01925.i.i231 = phi ptr [ %i.yf, %._crit_edge.i.i240 ], [ %.0.i.i.i227, %_ZN3fmt3v1110format_intC2Ei.exit.i226 ] ; 9 uses
  %i.xa = ptrtoint ptr %.01925.i.i231 to i64      ; 2 uses
  %i.xb = sub i64 %i.ww, %i.xa                    ; 2 uses
  %i.xc = add i64 %i.xb, %i.wz                    ; 2 uses
  %i.xd = load i64, ptr %i.ma, align 8, !tbaa !66 ; 2 uses
  %i.xe = icmp ugt i64 %i.xc, %i.xd
  br i1 %i.xe, label %bb.bh, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i232

bb.bh:                                            ; preds = %.lr.ph27.i.i229.a
  %i.xf = load ptr, ptr %i.ql, align 8, !tbaa !64
  call void %i.xf(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.xc), !inline_history !30
  %.pre30.i.i242 = load i64, ptr %i.ma, align 8, !tbaa !66
  %.pre31.i.i243 = load i64, ptr %i.lx, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i232

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i232: ; preds = %bb.bh, %.lr.ph27.i.i229.a
  %i.xg = phi i64 [ %i.wz, %.lr.ph27.i.i229.a ], [ %.pre31.i.i243, %bb.bh ] ; 4 uses
  %i.xh = phi i64 [ %i.xd, %.lr.ph27.i.i229.a ], [ %.pre30.i.i242, %bb.bh ]
  %i.xi = sub i64 %i.xh, %i.xg
  %spec.select.i.i233 = call i64 @llvm.umin.i64(i64 %i.xi, i64 %i.xb) ; 13 uses
  %i.xj = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.xk = ptrtoaddr ptr %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 %i.xg ; 7 uses
  %.not29.i.i234 = icmp eq i64 %spec.select.i.i233, 0
  br i1 %.not29.i.i234, label %._crit_edge.i.i240, label %iter.check549

iter.check549:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i232
  %min.iters.check536.a = icmp ult i64 %spec.select.i.i233, 4
  br i1 %min.iters.check536.a, label %.lr.ph.i.i235.preheader, label %vector.memcheck534

vector.memcheck534:                               ; preds = %iter.check549
  %i.xm = add i64 %i.xg, %i.xk
  %i.xn = sub i64 %i.xa, %i.xm
  %diff.check535 = icmp ugt i64 %i.xn, -32
  br i1 %diff.check535, label %.lr.ph.i.i235.preheader, label %vector.main.loop.iter.check537

vector.main.loop.iter.check537:                   ; preds = %vector.memcheck534
  %min.iters.check538 = icmp ult i64 %spec.select.i.i233, 32
  br i1 %min.iters.check538, label %vec.epilog.ph553, label %vector.ph539

vector.ph539:                                     ; preds = %vector.main.loop.iter.check537
  %i.xo = and i64 %spec.select.i.i233, 28
  %n.vec540 = and i64 %spec.select.i.i233, -32    ; 4 uses
  br label %vector.body541

vector.body541:                                   ; preds = %vector.body541, %vector.ph539
  %index542 = phi i64 [ 0, %vector.ph539 ], [ %index.next545, %vector.body541 ] ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.01925.i.i231, i64 %index542 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %wide.load543 = load <16 x i8>, ptr %i.xp, align 1, !tbaa !62
  %wide.load544 = load <16 x i8>, ptr %i.xq, align 1, !tbaa !62
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xl, i64 %index542 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  store <16 x i8> %wide.load543, ptr %i.xr, align 1, !tbaa !62
  store <16 x i8> %wide.load544, ptr %i.xs, align 1, !tbaa !62
  %index.next545 = add nuw i64 %index542, 32      ; 2 uses
  %i.xt = icmp eq i64 %index.next545, %n.vec540
  br i1 %i.xt, label %middle.block546, label %vector.body541, !llvm.loop !786

middle.block546:                                  ; preds = %vector.body541
  %cmp.n547 = icmp eq i64 %spec.select.i.i233, %n.vec540
  br i1 %cmp.n547, label %._crit_edge.loopexit.i.i238, label %vec.epilog.iter.check551

vec.epilog.iter.check551:                         ; preds = %middle.block546
  %min.epilog.iters.check552 = icmp eq i64 %i.xo, 0
  br i1 %min.epilog.iters.check552, label %.lr.ph.i.i235.preheader, label %vec.epilog.ph553, !prof !107

vec.epilog.ph553:                                 ; preds = %vector.main.loop.iter.check537, %vec.epilog.iter.check551
  %vec.epilog.resume.val548 = phi i64 [ %n.vec540, %vec.epilog.iter.check551 ], [ 0, %vector.main.loop.iter.check537 ]
  %n.vec554 = and i64 %spec.select.i.i233, -4     ; 3 uses
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph553
  %index556 = phi i64 [ %vec.epilog.resume.val548, %vec.epilog.ph553 ], [ %index.next558, %vec.epilog.vector.body555 ] ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %.01925.i.i231, i64 %index556
  %wide.load557 = load <4 x i8>, ptr %i.xu, align 1, !tbaa !62
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xl, i64 %index556
  store <4 x i8> %wide.load557, ptr %i.xv, align 1, !tbaa !62
  %index.next558 = add nuw i64 %index556, 4       ; 2 uses
  %i.xw = icmp eq i64 %index.next558, %n.vec554
  br i1 %i.xw, label %vec.epilog.middle.block559, label %vec.epilog.vector.body555, !llvm.loop !787

vec.epilog.middle.block559:                       ; preds = %vec.epilog.vector.body555
  %cmp.n560 = icmp eq i64 %spec.select.i.i233, %n.vec554
  br i1 %cmp.n560, label %._crit_edge.loopexit.i.i238, label %.lr.ph.i.i235.preheader

.lr.ph.i.i235.preheader:                          ; preds = %vector.memcheck534, %iter.check549, %vec.epilog.iter.check551, %vec.epilog.middle.block559
  %.023.i.i236.ph = phi i64 [ 0, %iter.check549 ], [ 0, %vector.memcheck534 ], [ %n.vec540, %vec.epilog.iter.check551 ], [ %n.vec554, %vec.epilog.middle.block559 ] ; 3 uses
  %xtraiter610 = and i64 %spec.select.i.i233, 3   ; 2 uses
  %lcmp.mod611.not = icmp eq i64 %xtraiter610, 0
  br i1 %lcmp.mod611.not, label %.lr.ph.i.i235.prol.loopexit, label %.lr.ph.i.i235.prol

.lr.ph.i.i235.prol:                               ; preds = %.lr.ph.i.i235.preheader, %.lr.ph.i.i235.prol
  %.023.i.i236.prol = phi i64 [ %i.ya, %.lr.ph.i.i235.prol ], [ %.023.i.i236.ph, %.lr.ph.i.i235.preheader ] ; 3 uses
  %prol.iter612 = phi i64 [ %prol.iter612.next, %.lr.ph.i.i235.prol ], [ 0, %.lr.ph.i.i235.preheader ]
  %i.xx = getelementptr inbounds nuw i8, ptr %.01925.i.i231, i64 %.023.i.i236.prol
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !62
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xl, i64 %.023.i.i236.prol
  store i8 %i.xy, ptr %i.xz, align 1, !tbaa !62
  %i.ya = add nuw i64 %.023.i.i236.prol, 1        ; 2 uses
  %prol.iter612.next = add i64 %prol.iter612, 1   ; 2 uses
  %prol.iter612.cmp.not = icmp eq i64 %prol.iter612.next, %xtraiter610
  br i1 %prol.iter612.cmp.not, label %.lr.ph.i.i235.prol.loopexit, label %.lr.ph.i.i235.prol, !llvm.loop !788

.lr.ph.i.i235.prol.loopexit:                      ; preds = %.lr.ph.i.i235.prol, %.lr.ph.i.i235.preheader
  %.023.i.i236.unr = phi i64 [ %.023.i.i236.ph, %.lr.ph.i.i235.preheader ], [ %i.ya, %.lr.ph.i.i235.prol ]
  %i.yb = sub i64 %.023.i.i236.ph, %spec.select.i.i233
  %i.yc = icmp ugt i64 %i.yb, -4
  br i1 %i.yc, label %._crit_edge.loopexit.i.i238, label %.lr.ph.i.i235

._crit_edge.loopexit.i.i238:                      ; preds = %.lr.ph.i.i235.prol.loopexit, %.lr.ph.i.i235, %vec.epilog.middle.block559, %middle.block546
  %.pre32.i.i239 = load i64, ptr %i.lx, align 8, !tbaa !67
  br label %._crit_edge.i.i240

._crit_edge.i.i240:                               ; preds = %._crit_edge.loopexit.i.i238, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i232
  %i.yd = phi i64 [ %.pre32.i.i239, %._crit_edge.loopexit.i.i238 ], [ %i.xg, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i232 ]
  %i.ye = add i64 %i.yd, %spec.select.i.i233      ; 3 uses
  store i64 %i.ye, ptr %i.lx, align 8, !tbaa !67
  %i.yf = getelementptr inbounds nuw i8, ptr %.01925.i.i231, i64 %spec.select.i.i233 ; 2 uses
  %.not.i.i241 = icmp eq ptr %i.yf, %i.wy
  br i1 %.not.i.i241, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit247, label %.lr.ph27.i.i229.a, !llvm.loop !3

.lr.ph.i.i235:                                    ; preds = %.lr.ph.i.i235.prol.loopexit, %.lr.ph.i.i235
  %.023.i.i236 = phi i64 [ %i.yv, %.lr.ph.i.i235 ], [ %.023.i.i236.unr, %.lr.ph.i.i235.prol.loopexit ] ; 6 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.01925.i.i231, i64 %.023.i.i236
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !62
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xl, i64 %.023.i.i236
  store i8 %i.yh, ptr %i.yi, align 1, !tbaa !62
  %i.yj = add nuw i64 %.023.i.i236, 1             ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %.01925.i.i231, i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !62
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.yj
  store i8 %i.yl, ptr %i.ym, align 1, !tbaa !62
  %i.yn = add nuw i64 %.023.i.i236, 2             ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.01925.i.i231, i64 %i.yn
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !62
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.yn
  store i8 %i.yp, ptr %i.yq, align 1, !tbaa !62
  %i.yr = add nuw i64 %.023.i.i236, 3             ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.01925.i.i231, i64 %i.yr
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !62
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xl, i64 %i.yr
  store i8 %i.yt, ptr %i.yu, align 1, !tbaa !62
  %i.yv = add nuw i64 %.023.i.i236, 4             ; 2 uses
  %exitcond.not.i.i237.3 = icmp eq i64 %i.yv, %spec.select.i.i233
  br i1 %exitcond.not.i.i237.3, label %._crit_edge.loopexit.i.i238, label %.lr.ph.i.i235, !llvm.loop !789

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit247: ; preds = %._crit_edge.i.i240, %_ZN3fmt3v1110format_intC2Ei.exit.i226
  %i.yw = phi i64 [ %.pre309, %_ZN3fmt3v1110format_intC2Ei.exit.i226 ], [ %i.ye, %._crit_edge.i.i240 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.yx = add i64 %i.yw, 1                        ; 3 uses
  %i.yy = load i64, ptr %i.ma, align 8, !tbaa !66
  %i.yz = icmp ugt i64 %i.yx, %i.yy
  br i1 %i.yz, label %bb.bi, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit252

bb.bi:                                            ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit247
  %i.za = load ptr, ptr %i.ql, align 8, !tbaa !64
  call void %i.za(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.yx), !inline_history !28
  %.pre.i250 = load i64, ptr %i.lx, align 8, !tbaa !67 ; 2 uses
  %.pre2.i251 = add i64 %.pre.i250, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit252

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit252: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit247, %bb.bi
  %.pre-phi.i249 = phi i64 [ %i.yx, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit247 ], [ %.pre2.i251, %bb.bi ]
  %i.zb = phi i64 [ %i.yw, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit247 ], [ %.pre.i250, %bb.bi ]
  %i.zc = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i249, ptr %i.lx, align 8, !tbaa !67
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.zb
  store i8 93, ptr %i.zd, align 1, !tbaa !62
  %i.ze = load i64, ptr %i.lx, align 8, !tbaa !67 ; 2 uses
  %i.zf = add i64 %i.ze, 1                        ; 3 uses
  %i.zg = load i64, ptr %i.ma, align 8, !tbaa !66
  %i.zh = icmp ugt i64 %i.zf, %i.zg
  br i1 %i.zh, label %bb.bj, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit257

bb.bj:                                            ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit252
  %i.zi = load ptr, ptr %i.ql, align 8, !tbaa !64
  call void %i.zi(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.zf), !inline_history !28
  %.pre.i255 = load i64, ptr %i.lx, align 8, !tbaa !67 ; 2 uses
  %.pre2.i256 = add i64 %.pre.i255, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit257

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit257: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit252, %bb.bj
  %.pre-phi.i254 = phi i64 [ %i.zf, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit252 ], [ %.pre2.i256, %bb.bj ]
  %i.zj = phi i64 [ %i.ze, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit252 ], [ %.pre.i255, %bb.bj ]
  %i.zk = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i254, ptr %i.lx, align 8, !tbaa !67
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.zj
  store i8 32, ptr %i.zl, align 1, !tbaa !62
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit257, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit191
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload = load ptr, ptr %i.zm, align 8, !tbaa !53 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !68 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload ; 2 uses
  %.not24.i.i258 = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not24.i.i258, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit274, label %.lr.ph27.i.i259

.lr.ph27.i.i259:                                  ; preds = %bb.bk
  %i.zo = ptrtoint ptr %i.zn to i64
  %.pre.i.i260 = load i64, ptr %i.lx, align 8, !tbaa !67
end_hunk_1
begin_hunk_2_@_ZN6spdlog7details14full_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a

vec.epilog.middle.block587:                       ; preds = %vec.epilog.vector.body583
  %cmp.n588 = icmp eq i64 %spec.select.i.i263, %n.vec582
  br i1 %cmp.n588, label %._crit_edge.loopexit.i.i268, label %.lr.ph.i.i265.preheader

.lr.ph.i.i265.preheader:                          ; preds = %vector.memcheck562, %iter.check577, %vec.epilog.iter.check579, %vec.epilog.middle.block587
  %.023.i.i266.ph = phi i64 [ 0, %iter.check577 ], [ 0, %vector.memcheck562 ], [ %n.vec568, %vec.epilog.iter.check579 ], [ %n.vec582, %vec.epilog.middle.block587 ] ; 3 uses
  %xtraiter613 = and i64 %spec.select.i.i263, 3   ; 2 uses
  %lcmp.mod614.not = icmp eq i64 %xtraiter613, 0
  br i1 %lcmp.mod614.not, label %.lr.ph.i.i265.prol.loopexit, label %.lr.ph.i.i265.prol

.lr.ph.i.i265.prol:                               ; preds = %.lr.ph.i.i265.preheader, %.lr.ph.i.i265.prol
  %.023.i.i266.prol = phi i64 [ %i.aaq, %.lr.ph.i.i265.prol ], [ %.023.i.i266.ph, %.lr.ph.i.i265.preheader ] ; 3 uses
  %prol.iter615 = phi i64 [ %prol.iter615.next, %.lr.ph.i.i265.prol ], [ 0, %.lr.ph.i.i265.preheader ]
  %i.aan = getelementptr inbounds nuw i8, ptr %.01925.i.i261, i64 %.023.i.i266.prol
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !62
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aab, i64 %.023.i.i266.prol
  store i8 %i.aao, ptr %i.aap, align 1, !tbaa !62
  %i.aaq = add nuw i64 %.023.i.i266.prol, 1       ; 2 uses
  %prol.iter615.next = add i64 %prol.iter615, 1   ; 2 uses
  %prol.iter615.cmp.not = icmp eq i64 %prol.iter615.next, %xtraiter613
  br i1 %prol.iter615.cmp.not, label %.lr.ph.i.i265.prol.loopexit, label %.lr.ph.i.i265.prol, !llvm.loop !792

.lr.ph.i.i265.prol.loopexit:                      ; preds = %.lr.ph.i.i265.prol, %.lr.ph.i.i265.preheader
  %.023.i.i266.unr = phi i64 [ %.023.i.i266.ph, %.lr.ph.i.i265.preheader ], [ %i.aaq, %.lr.ph.i.i265.prol ]
  %i.aar = sub i64 %.023.i.i266.ph, %spec.select.i.i263
  %i.aas = icmp ugt i64 %i.aar, -4
  br i1 %i.aas, label %._crit_edge.loopexit.i.i268, label %.lr.ph.i.i265

._crit_edge.loopexit.i.i268:                      ; preds = %.lr.ph.i.i265.prol.loopexit, %.lr.ph.i.i265, %vec.epilog.middle.block587, %middle.block574
  %.pre32.i.i269 = load i64, ptr %i.lx, align 8, !tbaa !67
  br label %._crit_edge.i.i270

._crit_edge.i.i270:                               ; preds = %._crit_edge.loopexit.i.i268, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i262
  %i.aat = phi i64 [ %.pre32.i.i269, %._crit_edge.loopexit.i.i268 ], [ %i.zw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i262 ]
  %i.aau = add i64 %i.aat, %spec.select.i.i263    ; 2 uses
  store i64 %i.aau, ptr %i.lx, align 8, !tbaa !67
  %i.aav = getelementptr inbounds nuw i8, ptr %.01925.i.i261, i64 %spec.select.i.i263 ; 2 uses
  %.not.i.i271 = icmp eq ptr %i.aav, %i.zn
  br i1 %.not.i.i271, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit274, label %bb.bl, !llvm.loop !3

.lr.ph.i.i265:                                    ; preds = %.lr.ph.i.i265.prol.loopexit, %.lr.ph.i.i265
  %.023.i.i266 = phi i64 [ %i.abl, %.lr.ph.i.i265 ], [ %.023.i.i266.unr, %.lr.ph.i.i265.prol.loopexit ] ; 6 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %.01925.i.i261, i64 %.023.i.i266
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !62
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aab, i64 %.023.i.i266
  store i8 %i.aax, ptr %i.aay, align 1, !tbaa !62
  %i.aaz = add nuw i64 %.023.i.i266, 1            ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.01925.i.i261, i64 %i.aaz
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !62
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aaz
  store i8 %i.abb, ptr %i.abc, align 1, !tbaa !62
  %i.abd = add nuw i64 %.023.i.i266, 2            ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.01925.i.i261, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !62
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.abd
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !62
  %i.abh = add nuw i64 %.023.i.i266, 3            ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.01925.i.i261, i64 %i.abh
  %i.abj = load i8, ptr %i.abi, align 1, !tbaa !62
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.abh
  store i8 %i.abj, ptr %i.abk, align 1, !tbaa !62
  %i.abl = add nuw i64 %.023.i.i266, 4            ; 2 uses
  %exitcond.not.i.i267.3 = icmp eq i64 %i.abl, %spec.select.i.i263
  br i1 %exitcond.not.i.i267.3, label %._crit_edge.loopexit.i.i268, label %.lr.ph.i.i265, !llvm.loop !793

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit274: ; preds = %._crit_edge.i.i270, %bb.bk
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details10fmt_helper4pad3IjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(283) %1) local_unnamed_addr #26 comdat {
bb.a:
  %2 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = icmp ult i32 %0, 1000
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc = trunc nuw nsw i32 %0 to i16       ; 2 uses
  %i.b = udiv i16 %.lhs.trunc, 100
  %i.c = urem i16 %.lhs.trunc, 100
  %i.d = trunc nuw nsw i16 %i.b to i8
  %i.e = or disjoint i8 %i.d, 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !28
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.f, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !62
  %.lhs.trunc21 = trunc nuw nsw i16 %i.c to i8    ; 2 uses
  %i.q = udiv i8 %.lhs.trunc21, 10
  %i.r = urem i8 %.lhs.trunc21, 10
  %i.s = or disjoint i8 %i.q, 48
  %i.t = load i64, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load i64, ptr %i.i, align 8, !tbaa !66
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u), !inline_history !28
  %.pre.i10 = load i64, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %.pre2.i11 = add i64 %.pre.i10, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.d
  %.pre-phi.i9 = phi i64 [ %i.u, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre2.i11, %bb.d ]
  %i.z = phi i64 [ %i.t, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.pre.i10, %bb.d ]
  %i.aa = load ptr, ptr %1, align 8, !tbaa !65
  store i64 %.pre-phi.i9, ptr %i.f, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.s, ptr %i.ab, align 1, !tbaa !62
  %i.ac = or disjoint i8 %i.r, 48
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !66
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit16

bb.e:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ae), !inline_history !28
  %.pre.i14 = load i64, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %.pre2.i15 = add i64 %.pre.i14, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit16

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit16: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12, %bb.e
  %.pre-phi.i13 = phi i64 [ %i.ae, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12 ], [ %.pre2.i15, %bb.e ]
  %i.aj = phi i64 [ %i.ad, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit12 ], [ %.pre.i14, %bb.e ]
  %i.ak = load ptr, ptr %1, align 8, !tbaa !65
  store i64 %.pre-phi.i13, ptr %i.f, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 %i.ac, ptr %i.al, align 1, !tbaa !62
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 21
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i32 [ %i.at, %.lr.ph.i.i.i.i ], [ %0, %bb.f ] ; 4 uses
  %.01920.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.am, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 2 uses
  %i.ao = urem i32 %.021.i.i.i.i, 100
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 1
  store i16 %i.as, ptr %i.an, align 1
  %i.at = udiv i32 %.021.i.i.i.i, 100             ; 3 uses
  %i.au = icmp ugt i32 %.021.i.i.i.i, 9999
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i
  %i.av = icmp samesign ult i32 %.021.i.i.i.i, 1000
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aw = trunc nuw nsw i32 %i.at to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -3 ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -4 ; 2 uses
  %i.ba = shl nuw nsw i32 %i.at, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 1
  store i16 %i.bd, ptr %i.az, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

_ZN3fmt3v1110format_intC2Ej.exit.i:               ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ay, %bb.g ], [ %i.az, %bb.h ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.be, align 8, !tbaa !279
  %i.bf = ptrtoint ptr %2 to i64
  %i.bg = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.bh = add i64 %i.bf, 21                       ; 3 uses
  %i.bi = sub i64 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.bi
  %.not24.i.i = icmp eq i64 %i.bh, %i.bg
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ej.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre.i.i = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.bn = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.cs, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.ct, %._crit_edge.i.i ] ; 9 uses
  %i.bo = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.bp = sub i64 %i.bh, %i.bo                    ; 2 uses
  %i.bq = add i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !66 ; 2 uses
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !64
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(283) %1, i64 noundef %i.bq), !inline_history !32
  %.pre30.i.i = load i64, ptr %i.bl, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.j, %bb.i
  %i.bu = phi i64 [ %i.bn, %bb.i ], [ %.pre31.i.i, %bb.j ] ; 4 uses
  %i.bv = phi i64 [ %i.br, %bb.i ], [ %.pre30.i.i, %bb.j ]
  %i.bw = sub i64 %i.bv, %i.bu
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bp) ; 13 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !65    ; 2 uses
  %i.by = ptrtoaddr ptr %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ca = add i64 %i.bu, %i.by
  %i.cb = sub i64 %i.bo, %i.ca
  %diff.check = icmp ugt i64 %i.cb, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cc = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <16 x i8>, ptr %i.cd, align 1, !tbaa !62
  %wide.load36 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <16 x i8> %wide.load, ptr %i.cf, align 1, !tbaa !62
  store <16 x i8> %wide.load36, ptr %i.cg, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.cj, align 1, !tbaa !62
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !795

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %spec.select.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.co, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.023.i.i.prol
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !62
  %i.co = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !796

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %i.cp = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.cr = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.bu, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.cs = add i64 %i.cr, %spec.select.i.i         ; 2 uses
  store i64 %i.cs, ptr %i.bk, align 8, !tbaa !67
  %i.ct = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, %i.bj
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.i, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.dj, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.023.i.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !62
  %i.cx = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !62
  %i.da = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cx
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !62
  %i.db = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !62
  %i.df = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !62
  %i.dj = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.dj, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !797

_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %bb.k

bb.k:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

declare void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64, ptr, ptr) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #31

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !219    ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #40
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #42 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !222
  store i64 %i.r, ptr %i.q, align 8, !tbaa !222
  store ptr null, ptr %2, align 8, !tbaa !222
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN6spdlog7details14flag_formatterESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
end_hunk_2
begin_hunk_3_@_ZN6spdlog7details21short_level_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  br i1 %cmp.n47, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck21, %iter.check36, %vec.epilog.iter.check38, %vec.epilog.middle.block46
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check36 ], [ 0, %vector.memcheck21 ], [ %n.vec27, %vec.epilog.iter.check38 ], [ %n.vec41, %vec.epilog.middle.block46 ] ; 3 uses
  %xtraiter49 = and i64 %spec.select.i.i.i.i, 3   ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.023.i.i.i.i.prol
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !62
  %i.cw = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !863

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.prol ]
  %i.cx = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block46, %middle.block33
  %.pre32.i.i.i.i = load i64, ptr %i.bs, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.cz = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.cc, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.da = add i64 %i.cz, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.da, ptr %i.bs, align 8, !tbaa !67
  %i.db = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, %i.bq
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.dr, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.023.i.i.i.i
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !62
  %i.df = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !62
  %i.dj = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dj
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !62
  %i.dn = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !62
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dn
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !62
  %i.dr = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.dr, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !864

bb.g:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.ds = load ptr, ptr %4, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !252, !range !69, !noundef !70
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.h, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !67
  %i.ea = add nsw i64 %i.dz, %i.bk                ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !66 ; 2 uses
  %i.ed = icmp ugt i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.i, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !64
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(283) %i.dx, i64 noundef %i.ea)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.i
  %.pre.i.i.i = load i64, ptr %i.eb, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.h
  %i.eg = phi i64 [ %i.ec, %bb.h ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.ea, i64 %i.eg)
  store i64 %..i.i.i, ptr %i.dy, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eh = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.eh) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.d, %bb.g, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void

bb.k:                                             ; preds = %bb.c
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %i.ei
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11t_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11t_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.c = or i64 %i.b, 1
  %i.d = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !62
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = icmp ult i64 %i.b, %i.j
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %.neg.i.i.i.i, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(14) %i.n, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.q = icmp ugt i64 %i.o, 99
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i ], [ %i.o, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %bb.a ]
  %i.r = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.s = urem i64 %.021.i.i.i.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1
  store i16 %i.v, ptr %i.r, align 1
  %i.w = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.x = icmp ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.a ], [ %i.r, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.o, %bb.a ], [ %i.w, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.y = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 1
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ab, %bb.b ], [ %i.ac, %bb.c ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ag, align 8, !tbaa !279
  %i.ah = ptrtoint ptr %4 to i64
  %i.ai = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.aj = add i64 %i.ah, 21                       ; 3 uses
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.ak
  %.not24.i.i = icmp eq i64 %i.aj, %i.ai
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ap = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bu, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bv, %._crit_edge.i.i ] ; 9 uses
  %i.aq = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ar = sub i64 %i.aj, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !66 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !64
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.as)
          to label %.noexc unwind label %bb.m, !inline_history !37

.noexc:                                           ; preds = %bb.e
  %.pre30.i.i = load i64, ptr %i.an, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.d
  %i.aw = phi i64 [ %i.ap, %bb.d ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.ax = phi i64 [ %i.at, %bb.d ], [ %.pre30.i.i, %.noexc ]
  %i.ay = sub i64 %i.ax, %i.aw
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ar) ; 13 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.aw, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !62
  %wide.load25 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !62
  store <16 x i8> %wide.load25, ptr %i.bi, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !865

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.bl, align 1, !tbaa !62
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !866

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %spec.select.i.i, %n.vec26
  br i1 %cmp.n30, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !62
  %i.bq = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !867

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %i.br = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bt = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.aw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bu = add i64 %i.bt, %spec.select.i.i         ; 2 uses
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.al
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !62
  %i.bz = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !62
  %i.cd = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !62
  %i.ch = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !62
  %i.cl = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cl, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !868

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !292 ; 4 uses
  %i.co = icmp sgt i64 %i.cn, -1
  br i1 %i.co, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !106 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cn, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i8, %.lr.ph27.i.i.i.i
  %i.cy = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ed, %._crit_edge.i.i.i.i8 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cq, %.lr.ph27.i.i.i.i ], [ %i.ee, %._crit_edge.i.i.i.i8 ] ; 9 uses
  %i.cz = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.da = sub i64 %i.cu, %i.cz                    ; 2 uses
  %i.db = add i64 %i.da, %i.cy                    ; 2 uses
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !66 ; 2 uses
  %i.dd = icmp ugt i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !64
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(283) %i.cs, i64 noundef %i.db)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.h
  %.pre30.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.g
  %i.df = phi i64 [ %i.cy, %bb.g ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.dg = phi i64 [ %i.dc, %bb.g ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.dh = sub i64 %i.dg, %i.df
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dh, i64 %i.da) ; 13 uses
  %i.di = load ptr, ptr %i.cs, align 8, !tbaa !65 ; 2 uses
  %i.dj = ptrtoaddr ptr %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_3
begin_hunk_4_@_ZN6spdlog7details11c_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %i.cr = sub i64 %i.ce, %i.cq
  %diff.check243 = icmp ugt i64 %i.cr, -32
  br i1 %diff.check243, label %.lr.ph.i.i33.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %vector.memcheck242
  %min.iters.check246 = icmp ult i64 %spec.select.i.i31, 32
  br i1 %min.iters.check246, label %vec.epilog.ph261, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.cs = and i64 %spec.select.i.i31, 28
  %n.vec248 = and i64 %spec.select.i.i31, -32     ; 4 uses
  br label %vector.body249

vector.body249:                                   ; preds = %vector.body249, %vector.ph247
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next253, %vector.body249 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01925.i.i29, i64 %index250 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load251 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !62
  %wide.load252 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index250 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <16 x i8> %wide.load251, ptr %i.cv, align 1, !tbaa !62
  store <16 x i8> %wide.load252, ptr %i.cw, align 1, !tbaa !62
  %index.next253 = add nuw i64 %index250, 32      ; 2 uses
  %i.cx = icmp eq i64 %index.next253, %n.vec248
  br i1 %i.cx, label %middle.block254, label %vector.body249, !llvm.loop !917

middle.block254:                                  ; preds = %vector.body249
  %cmp.n255 = icmp eq i64 %spec.select.i.i31, %n.vec248
  br i1 %cmp.n255, label %._crit_edge.loopexit.i.i36, label %vec.epilog.iter.check259

vec.epilog.iter.check259:                         ; preds = %middle.block254
  %min.epilog.iters.check260 = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check260, label %.lr.ph.i.i33.preheader, label %vec.epilog.ph261, !prof !107

vec.epilog.ph261:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check259
  %vec.epilog.resume.val256 = phi i64 [ %n.vec248, %vec.epilog.iter.check259 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec262 = and i64 %spec.select.i.i31, -4      ; 3 uses
  br label %vec.epilog.vector.body263

vec.epilog.vector.body263:                        ; preds = %vec.epilog.vector.body263, %vec.epilog.ph261
  %index264 = phi i64 [ %vec.epilog.resume.val256, %vec.epilog.ph261 ], [ %index.next266, %vec.epilog.vector.body263 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01925.i.i29, i64 %index264
  %wide.load265 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !62
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %index264
  store <4 x i8> %wide.load265, ptr %i.cz, align 1, !tbaa !62
  %index.next266 = add nuw i64 %index264, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next266, %n.vec262
  br i1 %i.da, label %vec.epilog.middle.block267, label %vec.epilog.vector.body263, !llvm.loop !918

vec.epilog.middle.block267:                       ; preds = %vec.epilog.vector.body263
  %cmp.n268 = icmp eq i64 %spec.select.i.i31, %n.vec262
  br i1 %cmp.n268, label %._crit_edge.loopexit.i.i36, label %.lr.ph.i.i33.preheader

.lr.ph.i.i33.preheader:                           ; preds = %vector.memcheck242, %iter.check257, %vec.epilog.iter.check259, %vec.epilog.middle.block267
  %.023.i.i34.ph = phi i64 [ 0, %iter.check257 ], [ 0, %vector.memcheck242 ], [ %n.vec248, %vec.epilog.iter.check259 ], [ %n.vec262, %vec.epilog.middle.block267 ] ; 3 uses
  %xtraiter360 = and i64 %spec.select.i.i31, 3    ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  br i1 %lcmp.mod361.not, label %.lr.ph.i.i33.prol.loopexit, label %.lr.ph.i.i33.prol

.lr.ph.i.i33.prol:                                ; preds = %.lr.ph.i.i33.preheader, %.lr.ph.i.i33.prol
  %.023.i.i34.prol = phi i64 [ %i.de, %.lr.ph.i.i33.prol ], [ %.023.i.i34.ph, %.lr.ph.i.i33.preheader ] ; 3 uses
  %prol.iter362 = phi i64 [ %prol.iter362.next, %.lr.ph.i.i33.prol ], [ 0, %.lr.ph.i.i33.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %.01925.i.i29, i64 %.023.i.i34.prol
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !62
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.023.i.i34.prol
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !62
  %i.de = add nuw i64 %.023.i.i34.prol, 1         ; 2 uses
  %prol.iter362.next = add i64 %prol.iter362, 1   ; 2 uses
  %prol.iter362.cmp.not = icmp eq i64 %prol.iter362.next, %xtraiter360
  br i1 %prol.iter362.cmp.not, label %.lr.ph.i.i33.prol.loopexit, label %.lr.ph.i.i33.prol, !llvm.loop !919

.lr.ph.i.i33.prol.loopexit:                       ; preds = %.lr.ph.i.i33.prol, %.lr.ph.i.i33.preheader
  %.023.i.i34.unr = phi i64 [ %.023.i.i34.ph, %.lr.ph.i.i33.preheader ], [ %i.de, %.lr.ph.i.i33.prol ]
  %i.df = sub i64 %.023.i.i34.ph, %spec.select.i.i31
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge.loopexit.i.i36, label %.lr.ph.i.i33

._crit_edge.loopexit.i.i36:                       ; preds = %.lr.ph.i.i33.prol.loopexit, %.lr.ph.i.i33, %vec.epilog.middle.block267, %middle.block254
  %.pre32.i.i37 = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %._crit_edge.i.i38

._crit_edge.i.i38:                                ; preds = %._crit_edge.loopexit.i.i36, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i30
  %i.dh = phi i64 [ %.pre32.i.i37, %._crit_edge.loopexit.i.i36 ], [ %i.ck, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i30 ]
  %i.di = add i64 %i.dh, %spec.select.i.i31       ; 3 uses
  store i64 %i.di, ptr %i.bk, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %.01925.i.i29, i64 %spec.select.i.i31 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.dj, %i.ca
  br i1 %.not.i.i39, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit43, label %bb.f, !llvm.loop !3

.lr.ph.i.i33:                                     ; preds = %.lr.ph.i.i33.prol.loopexit, %.lr.ph.i.i33
  %.023.i.i34 = phi i64 [ %i.dz, %.lr.ph.i.i33 ], [ %.023.i.i34.unr, %.lr.ph.i.i33.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01925.i.i29, i64 %.023.i.i34
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.023.i.i34
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !62
  %i.dn = add nuw i64 %.023.i.i34, 1              ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01925.i.i29, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !62
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dn
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !62
  %i.dr = add nuw i64 %.023.i.i34, 2              ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01925.i.i29, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dr
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !62
  %i.dv = add nuw i64 %.023.i.i34, 3              ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01925.i.i29, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dv
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !62
  %i.dz = add nuw i64 %.023.i.i34, 4              ; 2 uses
  %exitcond.not.i.i35.3 = icmp eq i64 %i.dz, %spec.select.i.i31
  br i1 %exitcond.not.i.i35.3, label %._crit_edge.loopexit.i.i36, label %.lr.ph.i.i33, !llvm.loop !920

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit43: ; preds = %._crit_edge.i.i38, %bb.e
  %i.ea = phi i64 [ %.pre172, %bb.e ], [ %i.di, %._crit_edge.i.i38 ] ; 2 uses
  %i.eb = add i64 %i.ea, 1                        ; 3 uses
  %i.ec = load i64, ptr %i.bm, align 8, !tbaa !66
  %i.ed = icmp ugt i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit43
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !64
  invoke void %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eb)
          to label %.noexc47 unwind label %bb.av, !inline_history !38

.noexc47:                                         ; preds = %bb.h
  %.pre.i45 = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %.pre2.i46 = add i64 %.pre.i45, 1
  br label %bb.i

bb.i:                                             ; preds = %.noexc47, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit43
  %.pre-phi.i44 = phi i64 [ %i.eb, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit43 ], [ %.pre2.i46, %.noexc47 ]
  %i.eg = phi i64 [ %i.ea, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit43 ], [ %.pre.i45, %.noexc47 ]
  %i.eh = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i44, ptr %i.bk, align 8, !tbaa !67
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 32, ptr %i.ei, align 1, !tbaa !62
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !281 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.el = icmp slt i32 %i.ek, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.ek, i1 false) ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 21 ; 2 uses
  %i.en = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.en, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.eu, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.i ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i ], [ %i.em, %bb.i ]
  %i.eo = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.ep = urem i32 %.021.i.i.i.i.i, 100
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.er
  %i.et = load i16, ptr %i.es, align 1
  store i16 %i.et, ptr %i.eo, align 1
  %i.eu = udiv i32 %.021.i.i.i.i.i, 100           ; 2 uses
  %i.ev = icmp ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.i
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.em, %bb.i ], [ %i.eo, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.i ], [ %i.eu, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ew = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.ew, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ex = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.ey = or disjoint i8 %i.ex, 48
  %i.ez = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fa = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.fb = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 1
  store i16 %i.fe, ptr %i.fa, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ez, %bb.j ], [ %i.fa, %bb.k ] ; 2 uses
  br i1 %i.el, label %bb.l, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.l:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.ff, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.l, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.ff, %bb.l ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.0.i.i.i, ptr %i.fg, align 8, !tbaa !279
  %i.fh = ptrtoint ptr %8 to i64
  %i.fi = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.fj = add i64 %i.fh, 21                       ; 3 uses
  %i.fk = sub i64 %i.fj, %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fk
  %.not24.i.i49 = icmp eq i64 %i.fj, %i.fi
  %.pre173 = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  br i1 %.not24.i.i49, label %.loopexit160, label %.lr.ph27.i.i50

.lr.ph27.i.i50:                                   ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i61, %.lr.ph27.i.i50
  %i.fn = phi i64 [ %.pre173, %.lr.ph27.i.i50 ], [ %i.gs, %._crit_edge.i.i61 ] ; 2 uses
  %.01925.i.i52 = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i50 ], [ %i.gt, %._crit_edge.i.i61 ] ; 9 uses
  %i.fo = ptrtoint ptr %.01925.i.i52 to i64       ; 2 uses
  %i.fp = sub i64 %i.fj, %i.fo                    ; 2 uses
  %i.fq = add i64 %i.fp, %i.fn                    ; 2 uses
  %i.fr = load i64, ptr %i.bm, align 8, !tbaa !66 ; 2 uses
  %i.fs = icmp ugt i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.n, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i53

bb.n:                                             ; preds = %bb.m
  %i.ft = load ptr, ptr %i.fm, align 8, !tbaa !64
  invoke void %i.ft(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.fq)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit, !inline_history !39

.noexc65:                                         ; preds = %bb.n
  %.pre30.i.i63 = load i64, ptr %i.bm, align 8, !tbaa !66
  %.pre31.i.i64 = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i53

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i53: ; preds = %.noexc65, %bb.m
  %i.fu = phi i64 [ %i.fn, %bb.m ], [ %.pre31.i.i64, %.noexc65 ] ; 4 uses
  %i.fv = phi i64 [ %i.fr, %bb.m ], [ %.pre30.i.i63, %.noexc65 ]
  %i.fw = sub i64 %i.fv, %i.fu
  %spec.select.i.i54 = call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.fp) ; 13 uses
  %i.fx = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.fy = ptrtoaddr ptr %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fu ; 7 uses
  %.not29.i.i55 = icmp eq i64 %spec.select.i.i54, 0
  br i1 %.not29.i.i55, label %._crit_edge.i.i61, label %iter.check285

iter.check285:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i53
  %min.iters.check272.a = icmp ult i64 %spec.select.i.i54, 4
  br i1 %min.iters.check272.a, label %.lr.ph.i.i56.preheader, label %vector.memcheck270

vector.memcheck270:                               ; preds = %iter.check285
  %i.ga = add i64 %i.fu, %i.fy
  %i.gb = sub i64 %i.fo, %i.ga
  %diff.check271 = icmp ugt i64 %i.gb, -32
  br i1 %diff.check271, label %.lr.ph.i.i56.preheader, label %vector.main.loop.iter.check273

vector.main.loop.iter.check273:                   ; preds = %vector.memcheck270
  %min.iters.check274 = icmp ult i64 %spec.select.i.i54, 32
  br i1 %min.iters.check274, label %vec.epilog.ph289, label %vector.ph275

vector.ph275:                                     ; preds = %vector.main.loop.iter.check273
  %i.gc = and i64 %spec.select.i.i54, 28
  %n.vec276 = and i64 %spec.select.i.i54, -32     ; 4 uses
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next281, %vector.body277 ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.01925.i.i52, i64 %index278 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load279 = load <16 x i8>, ptr %i.gd, align 1, !tbaa !62
  %wide.load280 = load <16 x i8>, ptr %i.ge, align 1, !tbaa !62
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 %index278 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <16 x i8> %wide.load279, ptr %i.gf, align 1, !tbaa !62
  store <16 x i8> %wide.load280, ptr %i.gg, align 1, !tbaa !62
  %index.next281 = add nuw i64 %index278, 32      ; 2 uses
  %i.gh = icmp eq i64 %index.next281, %n.vec276
  br i1 %i.gh, label %middle.block282, label %vector.body277, !llvm.loop !921

middle.block282:                                  ; preds = %vector.body277
  %cmp.n283 = icmp eq i64 %spec.select.i.i54, %n.vec276
  br i1 %cmp.n283, label %._crit_edge.loopexit.i.i59, label %vec.epilog.iter.check287

vec.epilog.iter.check287:                         ; preds = %middle.block282
  %min.epilog.iters.check288 = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check288, label %.lr.ph.i.i56.preheader, label %vec.epilog.ph289, !prof !107

vec.epilog.ph289:                                 ; preds = %vector.main.loop.iter.check273, %vec.epilog.iter.check287
  %vec.epilog.resume.val284 = phi i64 [ %n.vec276, %vec.epilog.iter.check287 ], [ 0, %vector.main.loop.iter.check273 ]
  %n.vec290 = and i64 %spec.select.i.i54, -4      ; 3 uses
  br label %vec.epilog.vector.body291

vec.epilog.vector.body291:                        ; preds = %vec.epilog.vector.body291, %vec.epilog.ph289
  %index292 = phi i64 [ %vec.epilog.resume.val284, %vec.epilog.ph289 ], [ %index.next294, %vec.epilog.vector.body291 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.01925.i.i52, i64 %index292
  %wide.load293 = load <4 x i8>, ptr %i.gi, align 1, !tbaa !62
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 %index292
  store <4 x i8> %wide.load293, ptr %i.gj, align 1, !tbaa !62
  %index.next294 = add nuw i64 %index292, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next294, %n.vec290
  br i1 %i.gk, label %vec.epilog.middle.block295, label %vec.epilog.vector.body291, !llvm.loop !922

vec.epilog.middle.block295:                       ; preds = %vec.epilog.vector.body291
  %cmp.n296 = icmp eq i64 %spec.select.i.i54, %n.vec290
  br i1 %cmp.n296, label %._crit_edge.loopexit.i.i59, label %.lr.ph.i.i56.preheader

.lr.ph.i.i56.preheader:                           ; preds = %vector.memcheck270, %iter.check285, %vec.epilog.iter.check287, %vec.epilog.middle.block295
  %.023.i.i57.ph = phi i64 [ 0, %iter.check285 ], [ 0, %vector.memcheck270 ], [ %n.vec276, %vec.epilog.iter.check287 ], [ %n.vec290, %vec.epilog.middle.block295 ] ; 3 uses
  %xtraiter363 = and i64 %spec.select.i.i54, 3    ; 2 uses
  %lcmp.mod364.not = icmp eq i64 %xtraiter363, 0
  br i1 %lcmp.mod364.not, label %.lr.ph.i.i56.prol.loopexit, label %.lr.ph.i.i56.prol

.lr.ph.i.i56.prol:                                ; preds = %.lr.ph.i.i56.preheader, %.lr.ph.i.i56.prol
  %.023.i.i57.prol = phi i64 [ %i.go, %.lr.ph.i.i56.prol ], [ %.023.i.i57.ph, %.lr.ph.i.i56.preheader ] ; 3 uses
  %prol.iter365 = phi i64 [ %prol.iter365.next, %.lr.ph.i.i56.prol ], [ 0, %.lr.ph.i.i56.preheader ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.01925.i.i52, i64 %.023.i.i57.prol
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !62
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.023.i.i57.prol
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !62
  %i.go = add nuw i64 %.023.i.i57.prol, 1         ; 2 uses
  %prol.iter365.next = add i64 %prol.iter365, 1   ; 2 uses
  %prol.iter365.cmp.not = icmp eq i64 %prol.iter365.next, %xtraiter363
  br i1 %prol.iter365.cmp.not, label %.lr.ph.i.i56.prol.loopexit, label %.lr.ph.i.i56.prol, !llvm.loop !923

.lr.ph.i.i56.prol.loopexit:                       ; preds = %.lr.ph.i.i56.prol, %.lr.ph.i.i56.preheader
  %.023.i.i57.unr = phi i64 [ %.023.i.i57.ph, %.lr.ph.i.i56.preheader ], [ %i.go, %.lr.ph.i.i56.prol ]
  %i.gp = sub i64 %.023.i.i57.ph, %spec.select.i.i54
  %i.gq = icmp ugt i64 %i.gp, -4
  br i1 %i.gq, label %._crit_edge.loopexit.i.i59, label %.lr.ph.i.i56

._crit_edge.loopexit.i.i59:                       ; preds = %.lr.ph.i.i56.prol.loopexit, %.lr.ph.i.i56, %vec.epilog.middle.block295, %middle.block282
  %.pre32.i.i60 = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %._crit_edge.i.i61

._crit_edge.i.i61:                                ; preds = %._crit_edge.loopexit.i.i59, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i53
  %i.gr = phi i64 [ %.pre32.i.i60, %._crit_edge.loopexit.i.i59 ], [ %i.fu, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i53 ]
  %i.gs = add i64 %i.gr, %spec.select.i.i54       ; 3 uses
  store i64 %i.gs, ptr %i.bk, align 8, !tbaa !67
  %i.gt = getelementptr inbounds nuw i8, ptr %.01925.i.i52, i64 %spec.select.i.i54 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.gt, %i.fl
  br i1 %.not.i.i62, label %.loopexit160, label %bb.m, !llvm.loop !3

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.prol.loopexit, %.lr.ph.i.i56
  %.023.i.i57 = phi i64 [ %i.hj, %.lr.ph.i.i56 ], [ %.023.i.i57.unr, %.lr.ph.i.i56.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.01925.i.i52, i64 %.023.i.i57
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !62
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.023.i.i57
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !62
  %i.gx = add nuw i64 %.023.i.i57, 1              ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.01925.i.i52, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !62
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gx
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !62
  %i.hb = add nuw i64 %.023.i.i57, 2              ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.01925.i.i52, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !62
  %i.he = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hb
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !62
  %i.hf = add nuw i64 %.023.i.i57, 3              ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.01925.i.i52, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !62
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.hf
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !62
  %i.hj = add nuw i64 %.023.i.i57, 4              ; 2 uses
  %exitcond.not.i.i58.3 = icmp eq i64 %i.hj, %spec.select.i.i54
  br i1 %exitcond.not.i.i58.3, label %._crit_edge.loopexit.i.i59, label %.lr.ph.i.i56, !llvm.loop !924

.loopexit160:                                     ; preds = %._crit_edge.i.i61, %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.hk = phi i64 [ %.pre173, %_ZN3fmt3v1110format_intC2Ei.exit.i ], [ %i.gs, %._crit_edge.i.i61 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %i.hl = add i64 %i.hk, 1                        ; 3 uses
  %i.hm = load i64, ptr %i.bm, align 8, !tbaa !66
  %i.hn = icmp ugt i64 %i.hl, %i.hm
  br i1 %i.hn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.loopexit160
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !64
  invoke void %i.hp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.hl)
          to label %.noexc69 unwind label %bb.aw, !inline_history !38

.noexc69:                                         ; preds = %bb.o
  %.pre.i67 = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %.pre2.i68 = add i64 %.pre.i67, 1
  br label %bb.p

bb.p:                                             ; preds = %.noexc69, %.loopexit160
  %.pre-phi.i66 = phi i64 [ %i.hl, %.loopexit160 ], [ %.pre2.i68, %.noexc69 ]
  %i.hq = phi i64 [ %i.hk, %.loopexit160 ], [ %.pre.i67, %.noexc69 ]
  %i.hr = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i66, ptr %i.bk, align 8, !tbaa !67
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hq
  store i8 32, ptr %i.hs, align 1, !tbaa !62
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !282 ; 3 uses
  %or.cond.i = icmp ult i32 %i.hu, 100
  br i1 %or.cond.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.lhs.trunc.i = trunc nuw nsw i32 %i.hu to i8   ; 2 uses
  %i.hv = udiv i8 %.lhs.trunc.i, 10
  %i.hw = urem i8 %.lhs.trunc.i, 10
  %i.hx = or disjoint i8 %i.hv, 48
  %i.hy = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %i.hz = add i64 %i.hy, 1                        ; 3 uses
  %i.ia = load i64, ptr %i.bm, align 8, !tbaa !66
  %i.ib = icmp ugt i64 %i.hz, %i.ia
  br i1 %i.ib, label %bb.r, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !64
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.hz)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !40

.noexc72:                                         ; preds = %bb.r
  %.pre.i.i71 = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i71, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

end_hunk_4
begin_hunk_5_@_ZN6spdlog7details11c_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %i.jv = phi i64 [ %i.jp, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i83 ], [ %.pre.i5.i87, %.noexc92 ]
  %i.jw = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i86, ptr %i.bk, align 8, !tbaa !67
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jv
  store i8 %i.jo, ptr %i.jx, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit94

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %.sroa.01.0.insert.ext.i.i81 = zext i32 %i.jb to i128
  store i128 %.sroa.01.0.insert.ext.i.i81, ptr %6, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %6, ptr null)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc93:                                         ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit94

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit94: ; preds = %.noexc93, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i85
  %i.jy = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %i.jz = add i64 %i.jy, 1                        ; 3 uses
  %i.ka = load i64, ptr %i.bm, align 8, !tbaa !66
  %i.kb = icmp ugt i64 %i.jz, %i.ka
  br i1 %i.kb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit94
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !64
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.jz)
          to label %.noexc98 unwind label %bb.ay, !inline_history !38

.noexc98:                                         ; preds = %bb.aa
  %.pre.i96 = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %.pre2.i97 = add i64 %.pre.i96, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc98, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit94
  %.pre-phi.i95 = phi i64 [ %i.jz, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit94 ], [ %.pre2.i97, %.noexc98 ]
  %i.ke = phi i64 [ %i.jy, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit94 ], [ %.pre.i96, %.noexc98 ]
  %i.kf = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i95, ptr %i.bk, align 8, !tbaa !67
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ke
  store i8 58, ptr %i.kg, align 1, !tbaa !62
  %i.kh = load i32, ptr %2, align 8, !tbaa !284   ; 3 uses
  %or.cond.i100 = icmp ult i32 %i.kh, 100
  br i1 %or.cond.i100, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.lhs.trunc.i102 = trunc nuw nsw i32 %i.kh to i8 ; 2 uses
  %i.ki = udiv i8 %.lhs.trunc.i102, 10
  %i.kj = urem i8 %.lhs.trunc.i102, 10
  %i.kk = or disjoint i8 %i.ki, 48
  %i.kl = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %i.km = add i64 %i.kl, 1                        ; 3 uses
  %i.kn = load i64, ptr %i.bm, align 8, !tbaa !66
  %i.ko = icmp ugt i64 %i.km, %i.kn
  br i1 %i.ko, label %bb.ad, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i103

bb.ad:                                            ; preds = %bb.ac
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !64
  invoke void %i.kq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.km)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !40

.noexc111:                                        ; preds = %bb.ad
  %.pre.i.i109 = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i110 = add i64 %.pre.i.i109, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i103

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i103: ; preds = %.noexc111, %bb.ac
  %.pre-phi.i.i104 = phi i64 [ %i.km, %bb.ac ], [ %.pre2.i.i110, %.noexc111 ]
  %i.kr = phi i64 [ %i.kl, %bb.ac ], [ %.pre.i.i109, %.noexc111 ]
  %i.ks = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i104, ptr %i.bk, align 8, !tbaa !67
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kr
  store i8 %i.kk, ptr %i.kt, align 1, !tbaa !62
  %i.ku = or disjoint i8 %i.kj, 48
  %i.kv = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %i.kw = add i64 %i.kv, 1                        ; 3 uses
  %i.kx = load i64, ptr %i.bm, align 8, !tbaa !66
  %i.ky = icmp ugt i64 %i.kw, %i.kx
  br i1 %i.ky, label %bb.ae, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i105

bb.ae:                                            ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i103
  %i.kz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !64
  invoke void %i.la(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.kw)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !40

.noexc112:                                        ; preds = %bb.ae
  %.pre.i5.i107 = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i108 = add i64 %.pre.i5.i107, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i105

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i105: ; preds = %.noexc112, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i103
  %.pre-phi.i4.i106 = phi i64 [ %i.kw, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i103 ], [ %.pre2.i6.i108, %.noexc112 ]
  %i.lb = phi i64 [ %i.kv, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i103 ], [ %.pre.i5.i107, %.noexc112 ]
  %i.lc = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i106, ptr %i.bk, align 8, !tbaa !67
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lb
  store i8 %i.ku, ptr %i.ld, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit114

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %.sroa.01.0.insert.ext.i.i101 = zext i32 %i.kh to i128
  store i128 %.sroa.01.0.insert.ext.i.i101, ptr %5, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %5, ptr null)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit114

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit114: ; preds = %.noexc113, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i105
  %i.le = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %i.lf = add i64 %i.le, 1                        ; 3 uses
  %i.lg = load i64, ptr %i.bm, align 8, !tbaa !66
  %i.lh = icmp ugt i64 %i.lf, %i.lg
  br i1 %i.lh, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit114
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !64
  invoke void %i.lj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.lf)
          to label %.noexc118 unwind label %bb.az, !inline_history !38

.noexc118:                                        ; preds = %bb.ag
  %.pre.i116 = load i64, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %.pre2.i117 = add i64 %.pre.i116, 1
  br label %bb.ah

bb.ah:                                            ; preds = %.noexc118, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit114
  %.pre-phi.i115 = phi i64 [ %i.lf, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit114 ], [ %.pre2.i117, %.noexc118 ]
  %i.lk = phi i64 [ %i.le, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit114 ], [ %.pre.i116, %.noexc118 ]
  %i.ll = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i115, ptr %i.bk, align 8, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lk
  store i8 32, ptr %i.lm, align 1, !tbaa !62
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !277 ; 2 uses
  %i.lp = add nsw i32 %i.lo, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.lq = icmp slt i32 %i.lo, -1900
  %spec.select.i.i.i120 = call i32 @llvm.abs.i32(i32 %i.lp, i1 true) ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.ls = icmp samesign ugt i32 %spec.select.i.i.i120, 99
  br i1 %i.ls, label %.lr.ph.i.i.i.i.i144, label %._crit_edge.i.i.i.i.i121

.lr.ph.i.i.i.i.i144:                              ; preds = %bb.ah, %.lr.ph.i.i.i.i.i144
  %.021.i.i.i.i.i145 = phi i32 [ %i.lz, %.lr.ph.i.i.i.i.i144 ], [ %spec.select.i.i.i120, %bb.ah ] ; 3 uses
  %.01920.i.i.i.i.i146 = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i144 ], [ %i.lr, %bb.ah ]
  %i.lt = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i146, i64 -2 ; 3 uses
  %i.lu = urem i32 %.021.i.i.i.i.i145, 100
  %i.lv = shl nuw nsw i32 %i.lu, 1
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 1
  store i16 %i.ly, ptr %i.lt, align 1
  %i.lz = udiv i32 %.021.i.i.i.i.i145, 100        ; 2 uses
  %i.ma = icmp samesign ugt i32 %.021.i.i.i.i.i145, 9999
  br i1 %i.ma, label %.lr.ph.i.i.i.i.i144, label %._crit_edge.i.i.i.i.i121, !llvm.loop !29

._crit_edge.i.i.i.i.i121:                         ; preds = %.lr.ph.i.i.i.i.i144, %bb.ah
  %.019.lcssa.i.i.i.i.i122 = phi ptr [ %i.lr, %bb.ah ], [ %i.lt, %.lr.ph.i.i.i.i.i144 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i123 = phi i32 [ %spec.select.i.i.i120, %bb.ah ], [ %i.lz, %.lr.ph.i.i.i.i.i144 ] ; 3 uses
  %i.mb = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i123, 10
  br i1 %i.mb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i.i121
  %i.mc = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i123 to i8
  %i.md = or disjoint i8 %i.mc, 48
  %i.me = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i122, i64 -1 ; 2 uses
  store i8 %i.md, ptr %i.me, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i124

bb.aj:                                            ; preds = %._crit_edge.i.i.i.i.i121
  %i.mf = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i122, i64 -2 ; 2 uses
  %i.mg = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i123, 1
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 1
  store i16 %i.mj, ptr %i.mf, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i124

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i124: ; preds = %bb.aj, %bb.ai
  %.sroa.0.0.i.i.i.i.i125 = phi ptr [ %i.me, %bb.ai ], [ %i.mf, %bb.aj ] ; 2 uses
  br i1 %i.lq, label %bb.ak, label %_ZN3fmt3v1110format_intC2Ei.exit.i126

bb.ak:                                            ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i124
  %i.mk = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i125, i64 -1 ; 2 uses
  store i8 45, ptr %i.mk, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i126

_ZN3fmt3v1110format_intC2Ei.exit.i126:            ; preds = %bb.ak, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i124
  %.0.i.i.i127 = phi ptr [ %i.mk, %bb.ak ], [ %.sroa.0.0.i.i.i.i.i125, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i124 ] ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i127, ptr %i.ml, align 8, !tbaa !279
  %i.mm = ptrtoint ptr %4 to i64
  %i.mn = ptrtoint ptr %.0.i.i.i127 to i64        ; 2 uses
  %i.mo = add i64 %i.mm, 21                       ; 3 uses
  %i.mp = sub i64 %i.mo, %i.mn
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i.i.i127, i64 %i.mp
  %.not24.i.i128 = icmp eq i64 %i.mo, %i.mn
  br i1 %.not24.i.i128, label %.loopexit156, label %.lr.ph27.i.i129

.lr.ph27.i.i129:                                  ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i126
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i130 = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i140, %.lr.ph27.i.i129
  %i.ms = phi i64 [ %.pre.i.i130, %.lr.ph27.i.i129 ], [ %i.nx, %._crit_edge.i.i140 ] ; 2 uses
  %.01925.i.i131 = phi ptr [ %.0.i.i.i127, %.lr.ph27.i.i129 ], [ %i.ny, %._crit_edge.i.i140 ] ; 9 uses
  %i.mt = ptrtoint ptr %.01925.i.i131 to i64      ; 2 uses
  %i.mu = sub i64 %i.mo, %i.mt                    ; 2 uses
  %i.mv = add i64 %i.mu, %i.ms                    ; 2 uses
  %i.mw = load i64, ptr %i.bm, align 8, !tbaa !66 ; 2 uses
  %i.mx = icmp ugt i64 %i.mv, %i.mw
  br i1 %i.mx, label %bb.am, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i132

bb.am:                                            ; preds = %bb.al
  %i.my = load ptr, ptr %i.mr, align 8, !tbaa !64
  invoke void %i.my(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.mv)
          to label %.noexc147 unwind label %.loopexit, !inline_history !39

.noexc147:                                        ; preds = %bb.am
  %.pre30.i.i142 = load i64, ptr %i.bm, align 8, !tbaa !66
  %.pre31.i.i143 = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i132

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i132: ; preds = %.noexc147, %bb.al
  %i.mz = phi i64 [ %i.ms, %bb.al ], [ %.pre31.i.i143, %.noexc147 ] ; 4 uses
  %i.na = phi i64 [ %i.mw, %bb.al ], [ %.pre30.i.i142, %.noexc147 ]
  %i.nb = sub i64 %i.na, %i.mz
  %spec.select.i.i133 = call i64 @llvm.umin.i64(i64 %i.nb, i64 %i.mu) ; 13 uses
  %i.nc = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.nd = ptrtoaddr ptr %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.mz ; 7 uses
  %.not29.i.i134 = icmp eq i64 %spec.select.i.i133, 0
  br i1 %.not29.i.i134, label %._crit_edge.i.i140, label %iter.check313

iter.check313:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i132
  %min.iters.check300.a = icmp ult i64 %spec.select.i.i133, 4
  br i1 %min.iters.check300.a, label %.lr.ph.i.i135.preheader, label %vector.memcheck298

vector.memcheck298:                               ; preds = %iter.check313
  %i.nf = add i64 %i.mz, %i.nd
  %i.ng = sub i64 %i.mt, %i.nf
  %diff.check299 = icmp ugt i64 %i.ng, -32
  br i1 %diff.check299, label %.lr.ph.i.i135.preheader, label %vector.main.loop.iter.check301

vector.main.loop.iter.check301:                   ; preds = %vector.memcheck298
  %min.iters.check302 = icmp ult i64 %spec.select.i.i133, 32
  br i1 %min.iters.check302, label %vec.epilog.ph317, label %vector.ph303

vector.ph303:                                     ; preds = %vector.main.loop.iter.check301
  %i.nh = and i64 %spec.select.i.i133, 28
  %n.vec304 = and i64 %spec.select.i.i133, -32    ; 4 uses
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next309, %vector.body305 ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.01925.i.i131, i64 %index306 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %wide.load307 = load <16 x i8>, ptr %i.ni, align 1, !tbaa !62
  %wide.load308 = load <16 x i8>, ptr %i.nj, align 1, !tbaa !62
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 %index306 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store <16 x i8> %wide.load307, ptr %i.nk, align 1, !tbaa !62
  store <16 x i8> %wide.load308, ptr %i.nl, align 1, !tbaa !62
  %index.next309 = add nuw i64 %index306, 32      ; 2 uses
  %i.nm = icmp eq i64 %index.next309, %n.vec304
  br i1 %i.nm, label %middle.block310, label %vector.body305, !llvm.loop !925

middle.block310:                                  ; preds = %vector.body305
  %cmp.n311 = icmp eq i64 %spec.select.i.i133, %n.vec304
  br i1 %cmp.n311, label %._crit_edge.loopexit.i.i138, label %vec.epilog.iter.check315

vec.epilog.iter.check315:                         ; preds = %middle.block310
  %min.epilog.iters.check316 = icmp eq i64 %i.nh, 0
  br i1 %min.epilog.iters.check316, label %.lr.ph.i.i135.preheader, label %vec.epilog.ph317, !prof !107

vec.epilog.ph317:                                 ; preds = %vector.main.loop.iter.check301, %vec.epilog.iter.check315
  %vec.epilog.resume.val312 = phi i64 [ %n.vec304, %vec.epilog.iter.check315 ], [ 0, %vector.main.loop.iter.check301 ]
  %n.vec318 = and i64 %spec.select.i.i133, -4     ; 3 uses
  br label %vec.epilog.vector.body319

vec.epilog.vector.body319:                        ; preds = %vec.epilog.vector.body319, %vec.epilog.ph317
  %index320 = phi i64 [ %vec.epilog.resume.val312, %vec.epilog.ph317 ], [ %index.next322, %vec.epilog.vector.body319 ] ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.01925.i.i131, i64 %index320
  %wide.load321 = load <4 x i8>, ptr %i.nn, align 1, !tbaa !62
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 %index320
  store <4 x i8> %wide.load321, ptr %i.no, align 1, !tbaa !62
  %index.next322 = add nuw i64 %index320, 4       ; 2 uses
  %i.np = icmp eq i64 %index.next322, %n.vec318
  br i1 %i.np, label %vec.epilog.middle.block323, label %vec.epilog.vector.body319, !llvm.loop !926

vec.epilog.middle.block323:                       ; preds = %vec.epilog.vector.body319
  %cmp.n324 = icmp eq i64 %spec.select.i.i133, %n.vec318
  br i1 %cmp.n324, label %._crit_edge.loopexit.i.i138, label %.lr.ph.i.i135.preheader

.lr.ph.i.i135.preheader:                          ; preds = %vector.memcheck298, %iter.check313, %vec.epilog.iter.check315, %vec.epilog.middle.block323
  %.023.i.i136.ph = phi i64 [ 0, %iter.check313 ], [ 0, %vector.memcheck298 ], [ %n.vec304, %vec.epilog.iter.check315 ], [ %n.vec318, %vec.epilog.middle.block323 ] ; 3 uses
  %xtraiter366 = and i64 %spec.select.i.i133, 3   ; 2 uses
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod367.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol

.lr.ph.i.i135.prol:                               ; preds = %.lr.ph.i.i135.preheader, %.lr.ph.i.i135.prol
  %.023.i.i136.prol = phi i64 [ %i.nt, %.lr.ph.i.i135.prol ], [ %.023.i.i136.ph, %.lr.ph.i.i135.preheader ] ; 3 uses
  %prol.iter368 = phi i64 [ %prol.iter368.next, %.lr.ph.i.i135.prol ], [ 0, %.lr.ph.i.i135.preheader ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.01925.i.i131, i64 %.023.i.i136.prol
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !62
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.023.i.i136.prol
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !62
  %i.nt = add nuw i64 %.023.i.i136.prol, 1        ; 2 uses
  %prol.iter368.next = add i64 %prol.iter368, 1   ; 2 uses
  %prol.iter368.cmp.not = icmp eq i64 %prol.iter368.next, %xtraiter366
  br i1 %prol.iter368.cmp.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol, !llvm.loop !927

.lr.ph.i.i135.prol.loopexit:                      ; preds = %.lr.ph.i.i135.prol, %.lr.ph.i.i135.preheader
  %.023.i.i136.unr = phi i64 [ %.023.i.i136.ph, %.lr.ph.i.i135.preheader ], [ %i.nt, %.lr.ph.i.i135.prol ]
  %i.nu = sub i64 %.023.i.i136.ph, %spec.select.i.i133
  %i.nv = icmp ugt i64 %i.nu, -4
  br i1 %i.nv, label %._crit_edge.loopexit.i.i138, label %.lr.ph.i.i135

._crit_edge.loopexit.i.i138:                      ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135, %vec.epilog.middle.block323, %middle.block310
  %.pre32.i.i139 = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %._crit_edge.i.i140

._crit_edge.i.i140:                               ; preds = %._crit_edge.loopexit.i.i138, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i132
  %i.nw = phi i64 [ %.pre32.i.i139, %._crit_edge.loopexit.i.i138 ], [ %i.mz, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i132 ]
  %i.nx = add i64 %i.nw, %spec.select.i.i133      ; 2 uses
  store i64 %i.nx, ptr %i.bk, align 8, !tbaa !67
  %i.ny = getelementptr inbounds nuw i8, ptr %.01925.i.i131, i64 %spec.select.i.i133 ; 2 uses
  %.not.i.i141 = icmp eq ptr %i.ny, %i.mq
  br i1 %.not.i.i141, label %.loopexit156, label %bb.al, !llvm.loop !3

.lr.ph.i.i135:                                    ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135
  %.023.i.i136 = phi i64 [ %i.oo, %.lr.ph.i.i135 ], [ %.023.i.i136.unr, %.lr.ph.i.i135.prol.loopexit ] ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.01925.i.i131, i64 %.023.i.i136
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !62
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.023.i.i136
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !62
  %i.oc = add nuw i64 %.023.i.i136, 1             ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.01925.i.i131, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !62
  %i.of = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.oc
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !62
  %i.og = add nuw i64 %.023.i.i136, 2             ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.01925.i.i131, i64 %i.og
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !62
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.og
  store i8 %i.oi, ptr %i.oj, align 1, !tbaa !62
  %i.ok = add nuw i64 %.023.i.i136, 3             ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.01925.i.i131, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !62
  %i.on = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.ok
  store i8 %i.om, ptr %i.on, align 1, !tbaa !62
  %i.oo = add nuw i64 %.023.i.i136, 4             ; 2 uses
  %exitcond.not.i.i137.3 = icmp eq i64 %i.oo, %spec.select.i.i133
  br i1 %exitcond.not.i.i137.3, label %._crit_edge.loopexit.i.i138, label %.lr.ph.i.i135, !llvm.loop !928

.loopexit156:                                     ; preds = %._crit_edge.i.i140, %_ZN3fmt3v1110format_intC2Ei.exit.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.op = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !292 ; 4 uses
  %i.or = icmp sgt i64 %i.oq, -1
  br i1 %i.or, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.loopexit156
  %i.os = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !106 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.oq ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.oq, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.an
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 16 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.oy, align 8, !tbaa !67
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i, %.lr.ph27.i.i.i.i
  %i.pb = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.qg, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.ot, %.lr.ph27.i.i.i.i ], [ %i.qh, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.pc = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.pd = sub i64 %i.ox, %i.pc                    ; 2 uses
  %i.pe = add i64 %i.pd, %i.pb                    ; 2 uses
  %i.pf = load i64, ptr %i.oz, align 8, !tbaa !66 ; 2 uses
  %i.pg = icmp ugt i64 %i.pe, %i.pf
  br i1 %i.pg, label %bb.ap, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.ph = load ptr, ptr %i.pa, align 8, !tbaa !64
  invoke void %i.ph(ptr noundef nonnull align 8 dereferenceable(283) %i.ov, i64 noundef %i.pe)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.ap
  %.pre30.i.i.i.i = load i64, ptr %i.oz, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.oy, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.ao
  %i.pi = phi i64 [ %i.pb, %bb.ao ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.pj = phi i64 [ %i.pf, %bb.ao ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.pk = sub i64 %i.pj, %i.pi
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.pk, i64 %i.pd) ; 13 uses
  %i.pl = load ptr, ptr %i.ov, align 8, !tbaa !65 ; 2 uses
  %i.pm = ptrtoaddr ptr %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pi ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_5
begin_hunk_6_@_ZN6spdlog7details11C_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.023.i.i.i.i.prol
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !62
  %i.bp = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !935

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.prol ]
  %i.bq = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.al, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.bs = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.av, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.bt = add i64 %i.bs, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.bt, ptr %i.al, align 8, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, %i.aj
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.g, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.023.i.i.i.i
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !62
  %i.by = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !62
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.by
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !62
  %i.cc = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !62
  %i.cg = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.cg
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !62
  %i.ck = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ck, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !936

bb.i:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.cl = load ptr, ptr %5, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !252, !range !69, !noundef !70
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.j, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !67
  %i.ct = add nsw i64 %i.cs, %i.ad                ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !66 ; 2 uses
  %i.cw = icmp ugt i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !64
  invoke void %i.cy(ptr noundef nonnull align 8 dereferenceable(283) %i.cq, i64 noundef %i.ct)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.k
  %.pre.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.j
  %i.cz = phi i64 [ %i.cv, %bb.j ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cz)
  store i64 %..i.i.i, ptr %i.cr, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.da = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.da) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.i, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret void

bb.m:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  resume { ptr, i32 } %i.db
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11Y_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11Y_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !277  ; 2 uses
  %i.d = add nsw i32 %i.c, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.e = icmp slt i32 %i.c, -1900
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.d, i1 true) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.g = icmp samesign ugt i32 %spec.select.i.i.i, 99
  br i1 %i.g, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.n, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.a ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %i.f, %bb.a ]
  %i.h = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.i = urem i32 %.021.i.i.i.i.i, 100
  %i.j = shl nuw nsw i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.k
  %i.m = load i16, ptr %i.l, align 1
  store i16 %i.m, ptr %i.h, align 1
  %i.n = udiv i32 %.021.i.i.i.i.i, 100            ; 2 uses
  %i.o = icmp samesign ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.f, %bb.a ], [ %i.h, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.a ], [ %i.n, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.p = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.q = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.r = or disjoint i8 %i.q, 48
  %i.s = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.t = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.u = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.v
  %i.x = load i16, ptr %i.w, align 1
  store i16 %i.x, ptr %i.t, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.s, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  br i1 %i.e, label %bb.d, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.y, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.y, %bb.d ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.z, align 8, !tbaa !279
  %i.aa = ptrtoint ptr %4 to i64
  %i.ab = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ac = add i64 %i.aa, 21                       ; 3 uses
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ad
  %.not24.i.i = icmp eq i64 %i.ac, %i.ab
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.af, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ai = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bn, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bo, %._crit_edge.i.i ] ; 9 uses
  %i.aj = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ak = sub i64 %i.ac, %i.aj                    ; 2 uses
  %i.al = add i64 %i.ak, %i.ai                    ; 2 uses
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !66 ; 2 uses
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !64
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.al)
          to label %.noexc unwind label %bb.n, !inline_history !39

.noexc:                                           ; preds = %bb.f
  %.pre30.i.i = load i64, ptr %i.ag, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.af, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.e
  %i.ap = phi i64 [ %i.ai, %bb.e ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.aq = phi i64 [ %i.am, %bb.e ], [ %.pre30.i.i, %.noexc ]
  %i.ar = sub i64 %i.aq, %i.ap
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ak) ; 13 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.av = add i64 %i.ap, %i.at
  %i.aw = sub i64 %i.aj, %i.av
  %diff.check = icmp ugt i64 %i.aw, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <16 x i8>, ptr %i.ay, align 1, !tbaa !62
  %wide.load19 = load <16 x i8>, ptr %i.az, align 1, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <16 x i8> %wide.load, ptr %i.ba, align 1, !tbaa !62
  store <16 x i8> %wide.load19, ptr %i.bb, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !937

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index21
  %wide.load22 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %index21
  store <4 x i8> %wide.load22, ptr %i.be, align 1, !tbaa !62
  %index.next23 = add nuw i64 %index21, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next23, %n.vec20
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !938

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %spec.select.i.i, %n.vec20
  br i1 %cmp.n24, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec20, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bj, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %.023.i.i.prol
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !62
  %i.bj = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !939

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.prol ]
  %i.bk = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.af, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bm = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ap, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bn = add i64 %i.bm, %spec.select.i.i         ; 2 uses
  store i64 %i.bn, ptr %i.af, align 8, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, %i.ae
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 %.023.i.i
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !62
  %i.bs = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !62
  %i.bw = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !62
  %i.ca = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !62
  %i.ce = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ce, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !940

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !292 ; 4 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  br i1 %i.ch, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !106 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cg, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.g
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.co, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph27.i.i.i.i
  %i.cr = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.dw, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cj, %.lr.ph27.i.i.i.i ], [ %i.dx, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.cs = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.ct = sub i64 %i.cn, %i.cs                    ; 2 uses
  %i.cu = add i64 %i.ct, %i.cr                    ; 2 uses
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !66 ; 2 uses
  %i.cw = icmp ugt i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr %i.cq, align 8, !tbaa !64
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(283) %i.cl, i64 noundef %i.cu)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.i
  %.pre30.i.i.i.i = load i64, ptr %i.cp, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.co, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.h
  %i.cy = phi i64 [ %i.cr, %bb.h ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.cz = phi i64 [ %i.cv, %bb.h ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.da = sub i64 %i.cz, %i.cy
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.ct) ; 13 uses
  %i.db = load ptr, ptr %i.cl, align 8, !tbaa !65 ; 2 uses
  %i.dc = ptrtoaddr ptr %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_6
begin_hunk_7_@_ZN6spdlog7details11f_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !978

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %spec.select.i.i.i.i, %n.vec12
  br i1 %cmp.n16, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.023.i.i.i.i.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !62
  %i.as = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !979

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %i.at = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.av = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.y, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.aw = add i64 %i.av, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.aw, ptr %i.o, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.m
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.023.i.i.i.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !62
  %i.bb = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bb
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !62
  %i.bf = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bf
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !62
  %i.bj = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !62
  %i.bn = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bn, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !980

bb.e:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad6ImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.bo = load ptr, ptr %4, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !252, !range !69, !noundef !70
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.f, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !67
  %i.bw = add nsw i64 %i.bv, %i.g                 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !66 ; 2 uses
  %i.bz = icmp ugt i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.g, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !64
  invoke void %i.cb(ptr noundef nonnull align 8 dereferenceable(283) %i.bt, i64 noundef %i.bw)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.bx, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.f
  %i.cc = phi i64 [ %i.by, %bb.f ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.cc)
  store i64 %..i.i.i, ptr %i.bu, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.cd = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.cd) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.e, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %i.ce
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(i64 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(283) %2) local_unnamed_addr #26 comdat {
bb.a:
  %3 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = or i64 %0, 1
  %i.b = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.c = xor i64 %i.b, 63
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !62    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !68
  %i.j = icmp ult i64 %0, %i.i
  %.neg.i.i.i = sext i1 %i.j to i32
  %i.k = add nsw i32 %.neg.i.i.i, %i.f            ; 2 uses
  %i.l = icmp ult i32 %i.k, %1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 21 ; 2 uses
  %i.q = icmp ugt i64 %0, 99
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i ], [ %0, %._crit_edge ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %._crit_edge ]
  %i.r = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.s = urem i64 %.021.i.i.i.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1
  store i16 %i.v, ptr %i.r, align 1
  %i.w = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.x = icmp ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %._crit_edge
  %.019.lcssa.i.i.i.i = phi ptr [ %i.p, %._crit_edge ], [ %i.r, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %0, %._crit_edge ], [ %i.w, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.y = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 1
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ab, %bb.b ], [ %i.ac, %bb.c ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ag, align 8, !tbaa !279
  %i.ah = ptrtoint ptr %3 to i64
  %i.ai = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.aj = add i64 %i.ah, 21                       ; 3 uses
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.ak
  %.not24.i.i = icmp eq i64 %i.aj, %i.ai
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ap = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bu, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bv, %._crit_edge.i.i ] ; 9 uses
  %i.aq = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ar = sub i64 %i.aj, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !66 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !64
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(283) %2, i64 noundef %i.as), !inline_history !41
  %.pre30.i.i = load i64, ptr %i.an, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.aw = phi i64 [ %i.ap, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ax = phi i64 [ %i.at, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.ay = sub i64 %i.ax, %i.aw
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ar) ; 13 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.aw, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !62
  %wide.load21 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !62
  store <16 x i8> %wide.load21, ptr %i.bi, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !981

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.bl, align 1, !tbaa !62
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !982

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %spec.select.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !62
  %i.bq = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !983

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %i.br = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bt = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.aw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bu = add i64 %i.bt, %spec.select.i.i         ; 2 uses
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.al
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !62
  %i.bz = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !62
  %i.cd = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !62
  %i.ch = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !62
  %i.cl = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cl, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !984

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.07 = phi i32 [ %i.k, %.lr.ph ], [ %i.cu, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ]
  %i.cm = load i64, ptr %i.m, align 8, !tbaa !67  ; 2 uses
  %i.cn = add i64 %i.cm, 1                        ; 3 uses
  %i.co = load i64, ptr %i.n, align 8, !tbaa !66
  %i.cp = icmp ugt i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.g:                                             ; preds = %bb.f
  %i.cq = load ptr, ptr %i.o, align 8, !tbaa !64
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.cn), !inline_history !28
  %.pre.i = load i64, ptr %i.m, align 8, !tbaa !67 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.f, %bb.g
  %.pre-phi.i = phi i64 [ %i.cn, %bb.f ], [ %.pre2.i, %bb.g ]
  %i.cr = phi i64 [ %i.cm, %bb.f ], [ %.pre.i, %bb.g ]
  %i.cs = load ptr, ptr %2, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.m, align 8, !tbaa !67
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 48, ptr %i.ct, align 1, !tbaa !62
  %i.cu = add i32 %.07, 1                         ; 2 uses
  %exitcond.not = icmp eq i32 %i.cu, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !985
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11F_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11F_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !68
  %.fr.i = freeze i64 %.sroa.0.0.copyload
  %i.b = srem i64 %.fr.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef 9, ptr noundef nonnull align 8 dereferenceable(14) %i.c, ptr noundef nonnull align 8 dereferenceable(283) %3)
  invoke void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(i64 noundef %i.b, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(283) %3)
          to label %_ZN6spdlog7details10fmt_helper4pad9ImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit unwind label %bb.i

_ZN6spdlog7details10fmt_helper4pad9ImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !292  ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
end_hunk_7
begin_hunk_8_@_ZN6spdlog7details11F_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %cmp.n16 = icmp eq i64 %spec.select.i.i.i.i, %n.vec12
  br i1 %cmp.n16, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.023.i.i.i.i.prol
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !62
  %i.aq = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !988

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %.lr.ph.i.i.i.i.prol ]
  %i.ar = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.at = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.w, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.au = add i64 %i.at, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.au, ptr %i.m, align 8, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.k
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.023.i.i.i.i
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !62
  %i.az = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !62
  %i.bd = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !62
  %i.bh = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bh
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !62
  %i.bl = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bl, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !989

bb.e:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad9ImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.bm = load ptr, ptr %4, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !252, !range !69, !noundef !70
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.f, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !67
  %i.bu = add nsw i64 %i.bt, %i.e                 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !66 ; 2 uses
  %i.bx = icmp ugt i64 %i.bu, %i.bw
  br i1 %i.bx, label %bb.g, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !64
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(283) %i.br, i64 noundef %i.bu)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.bv, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.f
  %i.ca = phi i64 [ %i.bw, %bb.f ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.ca)
  store i64 %..i.i.i, ptr %i.bs, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.cb = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.cb) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.b, %bb.e, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void

bb.i:                                             ; preds = %bb.a
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %i.cc
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11E_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11E_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef 10, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !tbaa !68 ; 2 uses
  %i.c = sdiv i64 %.sroa.0.0.copyload.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.d = icmp slt i64 %.sroa.0.0.copyload.i, -999999999
  %spec.select.i.i.i = call i64 @llvm.abs.i64(i64 %i.c, i1 true) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.f = icmp samesign ugt i64 %spec.select.i.i.i, 99
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.a ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.h = urem i64 %.021.i.i.i.i.i, 100
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.i
  %i.k = load i16, ptr %i.j, align 1
  store i16 %i.k, ptr %i.g, align 1
  %i.l = udiv i64 %.021.i.i.i.i.i, 100            ; 2 uses
  %i.m = icmp samesign ugt i64 %.021.i.i.i.i.i, 9999
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.g, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.n = icmp samesign ult i64 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = trunc nuw nsw i64 %.0.lcssa.i.i.i.i.i to i8
  %i.p = or disjoint i8 %i.o, 48
  %i.q = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.s = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.s
  %i.u = load i16, ptr %i.t, align 1
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.r, %bb.c ] ; 2 uses
  br i1 %i.d, label %bb.d, label %_ZN3fmt3v1110format_intC2El.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.v, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2El.exit.i

_ZN3fmt3v1110format_intC2El.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.v, %bb.d ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.w, align 8, !tbaa !279
  %i.x = ptrtoint ptr %4 to i64
  %i.y = ptrtoint ptr %.0.i.i.i to i64            ; 2 uses
  %i.z = add i64 %i.x, 21                         ; 3 uses
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.aa
  %.not24.i.i = icmp eq i64 %i.z, %i.y
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2El.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.af = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bk, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bl, %._crit_edge.i.i ] ; 9 uses
  %i.ag = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ah = sub i64 %i.z, %i.ag                     ; 2 uses
  %i.ai = add i64 %i.ah, %i.af                    ; 2 uses
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !66 ; 2 uses
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !64
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ai)
          to label %.noexc unwind label %bb.n, !inline_history !990

.noexc:                                           ; preds = %bb.f
  %.pre30.i.i = load i64, ptr %i.ad, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.e
  %i.am = phi i64 [ %i.af, %bb.e ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.an = phi i64 [ %i.aj, %bb.e ], [ %.pre30.i.i, %.noexc ]
  %i.ao = sub i64 %i.an, %i.am
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ah) ; 13 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.as = add i64 %i.am, %i.aq
  %i.at = sub i64 %i.ag, %i.as
  %diff.check = icmp ugt i64 %i.at, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check22 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <16 x i8>, ptr %i.av, align 1, !tbaa !62
  %wide.load23 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <16 x i8> %wide.load, ptr %i.ax, align 1, !tbaa !62
  store <16 x i8> %wide.load23, ptr %i.ay, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !991

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index25
  %wide.load26 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index25
  store <4 x i8> %wide.load26, ptr %i.bb, align 1, !tbaa !62
  %index.next27 = add nuw i64 %index25, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next27, %n.vec24
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !992

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %spec.select.i.i, %n.vec24
  br i1 %cmp.n28, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec24, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.023.i.i.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !62
  %i.bg = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !993

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.prol ]
  %i.bh = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bj = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.am, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bk = add i64 %i.bj, %spec.select.i.i         ; 2 uses
  store i64 %i.bk, ptr %i.ac, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.ab
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cb, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.023.i.i
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !62
  %i.bp = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !62
  %i.bt = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !62
  %i.bx = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !62
  %i.cb = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cb, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !994

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !292 ; 4 uses
  %i.ce = icmp sgt i64 %i.cd, -1
  br i1 %i.ce, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !106 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cd, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.g
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph27.i.i.i.i
  %i.co = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.dt, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cg, %.lr.ph27.i.i.i.i ], [ %i.du, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.cp = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.cq = sub i64 %i.ck, %i.cp                    ; 2 uses
  %i.cr = add i64 %i.cq, %i.co                    ; 2 uses
  %i.cs = load i64, ptr %i.cm, align 8, !tbaa !66 ; 2 uses
  %i.ct = icmp ugt i64 %i.cr, %i.cs
  br i1 %i.ct, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !64
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(283) %i.ci, i64 noundef %i.cr)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.i
  %.pre30.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.h
  %i.cv = phi i64 [ %i.co, %bb.h ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.cw = phi i64 [ %i.cs, %bb.h ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.cx = sub i64 %i.cw, %i.cv
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.cq) ; 13 uses
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !65 ; 2 uses
  %i.cz = ptrtoaddr ptr %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cv ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_8
begin_hunk_9_@_ZN6spdlog7details11z_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.023.i.i.i.i.prol
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !62
  %i.dz = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1025

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.prol ]
  %i.ea = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.ec = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.df, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.ed = add i64 %i.ec, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.ed, ptr %i.cv, align 8, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %i.ct
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.v, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.eu, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.023.i.i.i.i
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !62
  %i.ei = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ei
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !62
  %i.em = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !62
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.em
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !62
  %i.eq = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eq
  store i8 %i.es, ptr %i.et, align 1, !tbaa !62
  %i.eu = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.eu, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1026

bb.x:                                             ; preds = %bb.t
  %i.ev = load ptr, ptr %5, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !252, !range !69, !noundef !70
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.y, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !67
  %i.fd = add nsw i64 %i.fc, %i.cn                ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !66 ; 2 uses
  %i.fg = icmp ugt i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.z, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.z:                                             ; preds = %bb.y
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !64
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(283) %i.fa, i64 noundef %i.fd)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.z
  %.pre.i.i.i = load i64, ptr %i.fe, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.y
  %i.fj = phi i64 [ %i.ff, %bb.y ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fd, i64 %i.fj)
  store i64 %..i.i.i, ptr %i.fb, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.w
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %bb.z
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fk = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fk) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.u, %bb.x, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret void

bb.ab:                                            ; preds = %bb.s, %bb.r, %bb.o, %bb.n, %bb.m
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.p
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %bb.f, %bb.j, %bb.ab, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.fl, %bb.ab ], [ %i.fm, %bb.ac ], [ %i.y, %bb.f ]
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details13pid_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details13pid_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = tail call noundef i32 @getpid() #39      ; 5 uses
  %i.b = or i32 %i.a, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = zext i32 %i.a to i64
  %i.i = add i64 %i.g, %i.h
  %i.j = lshr i64 %i.i, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(14) %i.k, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.m = icmp ugt i32 %i.a, 99
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i32 [ %i.t, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.l, %bb.a ]
  %i.n = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.o = urem i32 %.021.i.i.i.i, 100
  %i.p = shl nuw nsw i32 %i.o, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.q
  %i.s = load i16, ptr %i.r, align 1
  store i16 %i.s, ptr %i.n, align 1
  %i.t = udiv i32 %.021.i.i.i.i, 100              ; 2 uses
  %i.u = icmp ugt i32 %.021.i.i.i.i, 9999
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.l, %bb.a ], [ %i.n, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i32 [ %i.a, %bb.a ], [ %i.t, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.v = icmp samesign ult i32 %.0.lcssa.i.i.i.i, 10
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = trunc nuw nsw i32 %.0.lcssa.i.i.i.i to i8
  %i.x = or disjoint i8 %i.w, 48
  %i.y = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.aa = shl nuw nsw i32 %.0.lcssa.i.i.i.i, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 1
  store i16 %i.ad, ptr %i.z, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

_ZN3fmt3v1110format_intC2Ej.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.y, %bb.b ], [ %i.z, %bb.c ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ae, align 8, !tbaa !279
  %i.af = ptrtoint ptr %4 to i64
  %i.ag = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.ah = add i64 %i.af, 21                       ; 3 uses
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.ai
  %.not24.i.i = icmp eq i64 %i.ah, %i.ag
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ej.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ak, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.an = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bt, %._crit_edge.i.i ] ; 9 uses
  %i.ao = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ap = sub i64 %i.ah, %i.ao                    ; 2 uses
  %i.aq = add i64 %i.ap, %i.an                    ; 2 uses
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !64
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.aq)
          to label %.noexc unwind label %bb.m, !inline_history !1027

.noexc:                                           ; preds = %bb.e
  %.pre30.i.i = load i64, ptr %i.al, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ak, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.d
  %i.au = phi i64 [ %i.an, %bb.d ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.av = phi i64 [ %i.ar, %bb.d ], [ %.pre30.i.i, %.noexc ]
  %i.aw = sub i64 %i.av, %i.au
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ap) ; 13 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ba = add i64 %i.au, %i.ay
  %i.bb = sub i64 %i.ao, %i.ba
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !62
  %wide.load25 = load <16 x i8>, ptr %i.be, align 1, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %wide.load, ptr %i.bf, align 1, !tbaa !62
  store <16 x i8> %wide.load25, ptr %i.bg, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1028

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.bj, align 1, !tbaa !62
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1029

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %spec.select.i.i, %n.vec26
  br i1 %cmp.n30, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %.023.i.i.prol
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !62
  %i.bo = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1030

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bp = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ak, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.br = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.au, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bs = add i64 %i.br, %spec.select.i.i         ; 2 uses
  store i64 %i.bs, ptr %i.ak, align 8, !tbaa !67
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.aj
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.023.i.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !62
  %i.bx = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !62
  %i.cb = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !62
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !62
  %i.cf = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !62
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !62
  %i.cj = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cj, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1031

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !292 ; 4 uses
  %i.cm = icmp sgt i64 %i.cl, -1
  br i1 %i.cm, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.loopexit
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !106 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cl ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cl, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.ct, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i8, %.lr.ph27.i.i.i.i
  %i.cw = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.eb, %._crit_edge.i.i.i.i8 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.co, %.lr.ph27.i.i.i.i ], [ %i.ec, %._crit_edge.i.i.i.i8 ] ; 9 uses
  %i.cx = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.cy = sub i64 %i.cs, %i.cx                    ; 2 uses
  %i.cz = add i64 %i.cy, %i.cw                    ; 2 uses
  %i.da = load i64, ptr %i.cu, align 8, !tbaa !66 ; 2 uses
  %i.db = icmp ugt i64 %i.cz, %i.da
  br i1 %i.db, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !64
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(283) %i.cq, i64 noundef %i.cz)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.h
  %.pre30.i.i.i.i = load i64, ptr %i.cu, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.ct, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.g
  %i.dd = phi i64 [ %i.cw, %bb.g ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.de = phi i64 [ %i.da, %bb.g ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.df = sub i64 %i.de, %i.dd
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.df, i64 %i.cy) ; 13 uses
  %i.dg = load ptr, ptr %i.cq, align 8, !tbaa !65 ; 2 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dd ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_9
begin_hunk_10_@_ZN6spdlog7details25source_location_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %diff.check = icmp ugt i64 %i.dq, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check90 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dr = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <16 x i8>, ptr %i.ds, align 1, !tbaa !62
  %wide.load91 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <16 x i8> %wide.load, ptr %i.du, align 1, !tbaa !62
  store <16 x i8> %wide.load91, ptr %i.dv, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !1040

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index93
  %wide.load94 = load <4 x i8>, ptr %i.dx, align 1, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %index93
  store <4 x i8> %wide.load94, ptr %i.dy, align 1, !tbaa !62
  %index.next95 = add nuw i64 %index93, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next95, %n.vec92
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1041

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %spec.select.i.i, %n.vec92
  br i1 %cmp.n96, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec92, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ed, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !62
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %.023.i.i.prol
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !62
  %i.ed = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1042

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.prol ]
  %i.ee = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.cz, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.eg = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.dj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.eh = add i64 %i.eg, %spec.select.i.i         ; 3 uses
  store i64 %i.eh, ptr %i.cz, align 8, !tbaa !67
  %i.ei = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ei, %i.cx
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.m, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ey, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 %.023.i.i
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !62
  %i.em = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !62
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.em
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !62
  %i.eq = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eq
  store i8 %i.es, ptr %i.et, align 1, !tbaa !62
  %i.eu = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !62
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.eu
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !62
  %i.ey = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ey, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1043

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit_crit_edge
  %i.ez = phi i64 [ %.pre, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit_crit_edge ], [ %i.eh, %._crit_edge.i.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.fb = add i64 %i.ez, 1                        ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !66
  %i.fe = icmp ugt i64 %i.fb, %i.fd
  br i1 %i.fe, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !64
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fb)
          to label %.noexc16 unwind label %bb.ad, !inline_history !38

.noexc16:                                         ; preds = %bb.o
  %.pre.i = load i64, ptr %i.fa, align 8, !tbaa !67 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %bb.p

bb.p:                                             ; preds = %.noexc16, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %.pre-phi.i = phi i64 [ %i.fb, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre2.i, %.noexc16 ]
  %i.fh = phi i64 [ %i.ez, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre.i, %.noexc16 ]
  %i.fi = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.fa, align 8, !tbaa !67
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 58, ptr %i.fj, align 1, !tbaa !62
  %i.fk = load i32, ptr %i.b, align 8, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.fl = icmp slt i32 %i.fk, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.fk, i1 false) ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.fn = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.fn, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.fu, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.p ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i ], [ %i.fm, %bb.p ]
  %i.fo = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.fp = urem i32 %.021.i.i.i.i.i, 100
  %i.fq = shl nuw nsw i32 %i.fp, 1
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 1
  store i16 %i.ft, ptr %i.fo, align 1
  %i.fu = udiv i32 %.021.i.i.i.i.i, 100           ; 2 uses
  %i.fv = icmp ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.p
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.fm, %bb.p ], [ %i.fo, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.p ], [ %i.fu, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.fw = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.fw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fx = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.fy = or disjoint i8 %i.fx, 48
  %i.fz = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ga = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.gb = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 1
  store i16 %i.ge, ptr %i.ga, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.fz, %bb.q ], [ %i.ga, %bb.r ] ; 2 uses
  br i1 %i.fl, label %bb.s, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.s:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.gf = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.gf, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.s, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.gf, %bb.s ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.gg, align 8, !tbaa !279
  %i.gh = ptrtoint ptr %4 to i64
  %i.gi = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.gj = add i64 %i.gh, 21                       ; 3 uses
  %i.gk = sub i64 %i.gj, %i.gi
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.gk
  %.not24.i.i17 = icmp eq i64 %i.gj, %i.gi
  br i1 %.not24.i.i17, label %.loopexit61, label %.lr.ph27.i.i18

.lr.ph27.i.i18:                                   ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i19 = load i64, ptr %i.fa, align 8, !tbaa !67
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.i29, %.lr.ph27.i.i18
  %i.gn = phi i64 [ %.pre.i.i19, %.lr.ph27.i.i18 ], [ %i.hs, %._crit_edge.i.i29 ] ; 2 uses
  %.01925.i.i20 = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i18 ], [ %i.ht, %._crit_edge.i.i29 ] ; 9 uses
  %i.go = ptrtoint ptr %.01925.i.i20 to i64       ; 2 uses
  %i.gp = sub i64 %i.gj, %i.go                    ; 2 uses
  %i.gq = add i64 %i.gp, %i.gn                    ; 2 uses
  %i.gr = load i64, ptr %i.fc, align 8, !tbaa !66 ; 2 uses
  %i.gs = icmp ugt i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.u, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i21

bb.u:                                             ; preds = %bb.t
  %i.gt = load ptr, ptr %i.gm, align 8, !tbaa !64
  invoke void %i.gt(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.gq)
          to label %.noexc33 unwind label %.loopexit, !inline_history !39

.noexc33:                                         ; preds = %bb.u
  %.pre30.i.i31 = load i64, ptr %i.fc, align 8, !tbaa !66
  %.pre31.i.i32 = load i64, ptr %i.fa, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i21

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i21: ; preds = %.noexc33, %bb.t
  %i.gu = phi i64 [ %i.gn, %bb.t ], [ %.pre31.i.i32, %.noexc33 ] ; 4 uses
  %i.gv = phi i64 [ %i.gr, %bb.t ], [ %.pre30.i.i31, %.noexc33 ]
  %i.gw = sub i64 %i.gv, %i.gu
  %spec.select.i.i22 = call i64 @llvm.umin.i64(i64 %i.gw, i64 %i.gp) ; 13 uses
  %i.gx = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.gy = ptrtoaddr ptr %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gu ; 7 uses
  %.not29.i.i23 = icmp eq i64 %spec.select.i.i22, 0
  br i1 %.not29.i.i23, label %._crit_edge.i.i29, label %iter.check112

iter.check112:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i21
  %min.iters.check99 = icmp ult i64 %spec.select.i.i22, 4
  br i1 %min.iters.check99, label %.lr.ph.i.i24.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %iter.check112
  %i.ha = add i64 %i.gu, %i.gy
  %i.hb = sub i64 %i.go, %i.ha
  %diff.check98 = icmp ugt i64 %i.hb, -32
  br i1 %diff.check98, label %.lr.ph.i.i24.preheader, label %vector.main.loop.iter.check100

vector.main.loop.iter.check100:                   ; preds = %vector.memcheck97
  %min.iters.check101 = icmp ult i64 %spec.select.i.i22, 32
  br i1 %min.iters.check101, label %vec.epilog.ph116, label %vector.ph102

vector.ph102:                                     ; preds = %vector.main.loop.iter.check100
  %i.hc = and i64 %spec.select.i.i22, 28
  %n.vec103 = and i64 %spec.select.i.i22, -32     ; 4 uses
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body104 ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.01925.i.i20, i64 %index105 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load106.a = load <16 x i8>, ptr %i.hd, align 1, !tbaa !62
  %wide.load107 = load <16 x i8>, ptr %i.he, align 1, !tbaa !62
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 %index105 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <16 x i8> %wide.load106.a, ptr %i.hf, align 1, !tbaa !62
  store <16 x i8> %wide.load107, ptr %i.hg, align 1, !tbaa !62
  %index.next108 = add nuw i64 %index105, 32      ; 2 uses
  %i.hh = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.hh, label %middle.block109, label %vector.body104, !llvm.loop !1044

middle.block109:                                  ; preds = %vector.body104
  %cmp.n110 = icmp eq i64 %spec.select.i.i22, %n.vec103
  br i1 %cmp.n110, label %._crit_edge.loopexit.i.i27, label %vec.epilog.iter.check114

vec.epilog.iter.check114:                         ; preds = %middle.block109
  %min.epilog.iters.check115 = icmp eq i64 %i.hc, 0
  br i1 %min.epilog.iters.check115, label %.lr.ph.i.i24.preheader, label %vec.epilog.ph116, !prof !107

vec.epilog.ph116:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check114
  %vec.epilog.resume.val111 = phi i64 [ %n.vec103, %vec.epilog.iter.check114 ], [ 0, %vector.main.loop.iter.check100 ]
  %n.vec117 = and i64 %spec.select.i.i22, -4      ; 3 uses
  br label %vec.epilog.vector.body118

vec.epilog.vector.body118:                        ; preds = %vec.epilog.vector.body118, %vec.epilog.ph116
  %index119 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph116 ], [ %index.next121, %vec.epilog.vector.body118 ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.01925.i.i20, i64 %index119
  %wide.load120 = load <4 x i8>, ptr %i.hi, align 1, !tbaa !62
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 %index119
  store <4 x i8> %wide.load120, ptr %i.hj, align 1, !tbaa !62
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next121, %n.vec117
  br i1 %i.hk, label %vec.epilog.middle.block122, label %vec.epilog.vector.body118, !llvm.loop !1045

vec.epilog.middle.block122:                       ; preds = %vec.epilog.vector.body118
  %cmp.n123 = icmp eq i64 %spec.select.i.i22, %n.vec117
  br i1 %cmp.n123, label %._crit_edge.loopexit.i.i27, label %.lr.ph.i.i24.preheader

.lr.ph.i.i24.preheader:                           ; preds = %vector.memcheck97, %iter.check112, %vec.epilog.iter.check114, %vec.epilog.middle.block122
  %.023.i.i25.ph = phi i64 [ 0, %iter.check112 ], [ 0, %vector.memcheck97 ], [ %n.vec103, %vec.epilog.iter.check114 ], [ %n.vec117, %vec.epilog.middle.block122 ] ; 3 uses
  %xtraiter183 = and i64 %spec.select.i.i22, 3    ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i24.prol.loopexit, label %.lr.ph.i.i24.prol

.lr.ph.i.i24.prol:                                ; preds = %.lr.ph.i.i24.preheader, %.lr.ph.i.i24.prol
  %.023.i.i25.prol = phi i64 [ %i.ho, %.lr.ph.i.i24.prol ], [ %.023.i.i25.ph, %.lr.ph.i.i24.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %.lr.ph.i.i24.prol ], [ 0, %.lr.ph.i.i24.preheader ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.01925.i.i20, i64 %.023.i.i25.prol
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !62
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.023.i.i25.prol
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !62
  %i.ho = add nuw i64 %.023.i.i25.prol, 1         ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %.lr.ph.i.i24.prol.loopexit, label %.lr.ph.i.i24.prol, !llvm.loop !1046

.lr.ph.i.i24.prol.loopexit:                       ; preds = %.lr.ph.i.i24.prol, %.lr.ph.i.i24.preheader
  %.023.i.i25.unr = phi i64 [ %.023.i.i25.ph, %.lr.ph.i.i24.preheader ], [ %i.ho, %.lr.ph.i.i24.prol ]
  %i.hp = sub i64 %.023.i.i25.ph, %spec.select.i.i22
  %i.hq = icmp ugt i64 %i.hp, -4
  br i1 %i.hq, label %._crit_edge.loopexit.i.i27, label %.lr.ph.i.i24

._crit_edge.loopexit.i.i27:                       ; preds = %.lr.ph.i.i24.prol.loopexit, %.lr.ph.i.i24, %vec.epilog.middle.block122, %middle.block109
  %.pre32.i.i28 = load i64, ptr %i.fa, align 8, !tbaa !67
  br label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %._crit_edge.loopexit.i.i27, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i21
  %i.hr = phi i64 [ %.pre32.i.i28, %._crit_edge.loopexit.i.i27 ], [ %i.gu, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i21 ]
  %i.hs = add i64 %i.hr, %spec.select.i.i22       ; 2 uses
  store i64 %i.hs, ptr %i.fa, align 8, !tbaa !67
  %i.ht = getelementptr inbounds nuw i8, ptr %.01925.i.i20, i64 %spec.select.i.i22 ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ht, %i.gl
  br i1 %.not.i.i30, label %.loopexit61, label %bb.t, !llvm.loop !3

.lr.ph.i.i24:                                     ; preds = %.lr.ph.i.i24.prol.loopexit, %.lr.ph.i.i24
  %.023.i.i25 = phi i64 [ %i.ij, %.lr.ph.i.i24 ], [ %.023.i.i25.unr, %.lr.ph.i.i24.prol.loopexit ] ; 6 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.01925.i.i20, i64 %.023.i.i25
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !62
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.023.i.i25
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !62
  %i.hx = add nuw i64 %.023.i.i25, 1              ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.01925.i.i20, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !62
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hx
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !62
  %i.ib = add nuw i64 %.023.i.i25, 2              ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.01925.i.i20, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !62
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.ib
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !62
  %i.if = add nuw i64 %.023.i.i25, 3              ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.01925.i.i20, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !62
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.if
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !62
  %i.ij = add nuw i64 %.023.i.i25, 4              ; 2 uses
  %exitcond.not.i.i26.3 = icmp eq i64 %i.ij, %spec.select.i.i22
  br i1 %exitcond.not.i.i26.3, label %._crit_edge.loopexit.i.i27, label %.lr.ph.i.i24, !llvm.loop !1047

.loopexit61:                                      ; preds = %._crit_edge.i.i29, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.ik = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !292 ; 4 uses
  %i.im = icmp sgt i64 %i.il, -1
  br i1 %i.im, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.loopexit61
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !106 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.il ; 2 uses
  %.not24.i.i.i.i41 = icmp samesign eq i64 %i.il, 0
  br i1 %.not24.i.i.i.i41, label %_ZN6spdlog7details13scoped_padderD2Ev.exit60, label %.lr.ph27.i.i.i.i42

.lr.ph27.i.i.i.i42:                               ; preds = %bb.v
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %.pre.i.i.i.i43 = load i64, ptr %i.it, align 8, !tbaa !67
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.i.i53, %.lr.ph27.i.i.i.i42
  %i.iw = phi i64 [ %.pre.i.i.i.i43, %.lr.ph27.i.i.i.i42 ], [ %i.kb, %._crit_edge.i.i.i.i53 ] ; 2 uses
  %.01925.i.i.i.i44 = phi ptr [ %i.io, %.lr.ph27.i.i.i.i42 ], [ %i.kc, %._crit_edge.i.i.i.i53 ] ; 9 uses
  %i.ix = ptrtoint ptr %.01925.i.i.i.i44 to i64   ; 2 uses
  %i.iy = sub i64 %i.is, %i.ix                    ; 2 uses
  %i.iz = add i64 %i.iy, %i.iw                    ; 2 uses
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !66 ; 2 uses
  %i.jb = icmp ugt i64 %i.iz, %i.ja
  br i1 %i.jb, label %bb.x, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i45

bb.x:                                             ; preds = %bb.w
  %i.jc = load ptr, ptr %i.iv, align 8, !tbaa !64
  invoke void %i.jc(ptr noundef nonnull align 8 dereferenceable(283) %i.iq, i64 noundef %i.iz)
          to label %.noexc.i57 unwind label %.loopexit.i55, !inline_history !34

.noexc.i57:                                       ; preds = %bb.x
  %.pre30.i.i.i.i58 = load i64, ptr %i.iu, align 8, !tbaa !66
  %.pre31.i.i.i.i59 = load i64, ptr %i.it, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i45

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i45: ; preds = %.noexc.i57, %bb.w
  %i.jd = phi i64 [ %i.iw, %bb.w ], [ %.pre31.i.i.i.i59, %.noexc.i57 ] ; 4 uses
  %i.je = phi i64 [ %i.ja, %bb.w ], [ %.pre30.i.i.i.i58, %.noexc.i57 ]
  %i.jf = sub i64 %i.je, %i.jd
  %spec.select.i.i.i.i46 = call i64 @llvm.umin.i64(i64 %i.jf, i64 %i.iy) ; 13 uses
  %i.jg = load ptr, ptr %i.iq, align 8, !tbaa !65 ; 2 uses
  %i.jh = ptrtoaddr ptr %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jd ; 7 uses
  %.not29.i.i.i.i47 = icmp eq i64 %spec.select.i.i.i.i46, 0
end_hunk_10
begin_hunk_11_@_ZN6spdlog7details24source_linenum_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %index114 = phi i64 [ %vec.epilog.resume.val106, %vec.epilog.ph111 ], [ %index.next116, %vec.epilog.vector.body113 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index114
  %wide.load115 = load <4 x i8>, ptr %i.al, align 1, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 %index114
  store <4 x i8> %wide.load115, ptr %i.am, align 1, !tbaa !62
  %index.next116 = add nuw i64 %index114, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next116, %n.vec112
  br i1 %i.an, label %vec.epilog.middle.block117, label %vec.epilog.vector.body113, !llvm.loop !1077

vec.epilog.middle.block117:                       ; preds = %vec.epilog.vector.body113
  %cmp.n118 = icmp eq i64 %spec.select.i.i.i.i, %n.vec112
  br i1 %cmp.n118, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck92, %iter.check107, %vec.epilog.iter.check109, %vec.epilog.middle.block117
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check107 ], [ 0, %vector.memcheck92 ], [ %n.vec98, %vec.epilog.iter.check109 ], [ %n.vec112, %vec.epilog.middle.block117 ] ; 3 uses
  %xtraiter124 = and i64 %spec.select.i.i.i.i, 3  ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.023.i.i.i.i.prol
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !62
  %i.ar = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1078

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %i.as = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block117, %middle.block104
  %.pre32.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.au = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.x, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.av = add i64 %i.au, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.av, ptr %i.n, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.l
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.023.i.i.i.i
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !62
  %i.ba = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ba
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !62
  %i.be = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.be
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !62
  %i.bi = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bi
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !62
  %i.bm = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1079

bb.f:                                             ; preds = %bb.b
  %i.bn = load ptr, ptr %5, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !252, !range !69, !noundef !70
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.g, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !67
  %i.bv = add nsw i64 %i.bu, %i.f                 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !66 ; 2 uses
  %i.by = icmp ugt i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.h, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !64
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(283) %i.bs, i64 noundef %i.bv)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.h
  %.pre.i.i.i = load i64, ptr %i.bw, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.g
  %i.cb = phi i64 [ %i.bx, %bb.g ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.cb)
  store i64 %..i.i.i, ptr %i.bt, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.cc = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.cc) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.c, %bb.f, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.w

bb.j:                                             ; preds = %bb.a
  %i.cd = or i32 %i.b, 1
  %i.ce = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.cf = xor i32 %i.ce, 31
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !68
  %i.cj = zext i32 %i.b to i64
  %i.ck = add i64 %i.ci, %i.cj
  %i.cl = lshr i64 %i.ck, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(14) %i.cm, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.cn = load i32, ptr %i.a, align 8, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.co = icmp slt i32 %i.cn, 0
  %spec.select.i.i.i = call i32 @llvm.abs.i32(i32 %i.cn, i1 false) ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.cq = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.cx, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.j ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %i.cp, %bb.j ]
  %i.cr = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.cs = urem i32 %.021.i.i.i.i.i, 100
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 1
  store i16 %i.cw, ptr %i.cr, align 1
  %i.cx = udiv i32 %.021.i.i.i.i.i, 100           ; 2 uses
  %i.cy = icmp ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.j
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.cp, %bb.j ], [ %i.cr, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.j ], [ %i.cx, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.cz = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.db = or disjoint i8 %i.da, 48
  %i.dc = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dd = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.de = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 1
  store i16 %i.dh, ptr %i.dd, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.dc, %bb.k ], [ %i.dd, %bb.l ] ; 2 uses
  br i1 %i.co, label %bb.m, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.m:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.di, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.m, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.di, %bb.m ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.dj, align 8, !tbaa !279
  %i.dk = ptrtoint ptr %4 to i64
  %i.dl = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.dm = add i64 %i.dk, 21                       ; 3 uses
  %i.dn = sub i64 %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.dn
  %.not24.i.i = icmp eq i64 %i.dm, %i.dl
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.dp, align 8, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ds = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.ex, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.ey, %._crit_edge.i.i ] ; 9 uses
  %i.dt = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.du = sub i64 %i.dm, %i.dt                    ; 2 uses
  %i.dv = add i64 %i.du, %i.ds                    ; 2 uses
  %i.dw = load i64, ptr %i.dq, align 8, !tbaa !66 ; 2 uses
  %i.dx = icmp ugt i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !64
  invoke void %i.dy(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.dv)
          to label %.noexc unwind label %bb.x, !inline_history !39

.noexc:                                           ; preds = %bb.o
  %.pre30.i.i = load i64, ptr %i.dq, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.dp, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.n
  %i.dz = phi i64 [ %i.ds, %bb.n ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.ea = phi i64 [ %i.dw, %bb.n ], [ %.pre30.i.i, %.noexc ]
  %i.eb = sub i64 %i.ea, %i.dz
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.du) ; 13 uses
  %i.ec = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ed = ptrtoaddr ptr %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dz ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ef = add i64 %i.dz, %i.ed
  %i.eg = sub i64 %i.dt, %i.ef
  %diff.check = icmp ugt i64 %i.eg, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check57 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eh = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load = load <16 x i8>, ptr %i.ei, align 1, !tbaa !62
  %wide.load58 = load <16 x i8>, ptr %i.ej, align 1, !tbaa !62
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ee, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <16 x i8> %wide.load, ptr %i.ek, align 1, !tbaa !62
  store <16 x i8> %wide.load58, ptr %i.el, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !1080

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index60
  %wide.load61 = load <4 x i8>, ptr %i.en, align 1, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 %index60
  store <4 x i8> %wide.load61, ptr %i.eo, align 1, !tbaa !62
  %index.next62 = add nuw i64 %index60, 4         ; 2 uses
  %i.ep = icmp eq i64 %index.next62, %n.vec59
  br i1 %i.ep, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1081

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %spec.select.i.i, %n.vec59
  br i1 %cmp.n63, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.et, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.023.i.i.prol
  store i8 %i.er, ptr %i.es, align 1, !tbaa !62
  %i.et = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1082

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.et, %.lr.ph.i.i.prol ]
  %i.eu = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.dp, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ew = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.dz, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.ex = add i64 %i.ew, %spec.select.i.i         ; 2 uses
  store i64 %i.ex, ptr %i.dp, align 8, !tbaa !67
  %i.ey = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ey, %i.do
  br i1 %.not.i.i, label %.loopexit, label %bb.n, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.fo, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !62
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.023.i.i
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !62
  %i.fc = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fc
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !62
  %i.fg = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !62
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fg
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !62
  %i.fk = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !62
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.fk
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !62
  %i.fo = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fo, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1083

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !292 ; 4 uses
  %i.fr = icmp sgt i64 %i.fq, -1
  br i1 %i.fr, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.loopexit
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !106 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fq ; 2 uses
  %.not24.i.i.i.i16 = icmp samesign eq i64 %i.fq, 0
  br i1 %.not24.i.i.i.i16, label %_ZN6spdlog7details13scoped_padderD2Ev.exit35, label %.lr.ph27.i.i.i.i17

.lr.ph27.i.i.i.i17:                               ; preds = %bb.p
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %.pre.i.i.i.i18 = load i64, ptr %i.fy, align 8, !tbaa !67
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i.i.i28, %.lr.ph27.i.i.i.i17
  %i.gb = phi i64 [ %.pre.i.i.i.i18, %.lr.ph27.i.i.i.i17 ], [ %i.hg, %._crit_edge.i.i.i.i28 ] ; 2 uses
  %.01925.i.i.i.i19 = phi ptr [ %i.ft, %.lr.ph27.i.i.i.i17 ], [ %i.hh, %._crit_edge.i.i.i.i28 ] ; 9 uses
  %i.gc = ptrtoint ptr %.01925.i.i.i.i19 to i64   ; 2 uses
  %i.gd = sub i64 %i.fx, %i.gc                    ; 2 uses
  %i.ge = add i64 %i.gd, %i.gb                    ; 2 uses
  %i.gf = load i64, ptr %i.fz, align 8, !tbaa !66 ; 2 uses
  %i.gg = icmp ugt i64 %i.ge, %i.gf
  br i1 %i.gg, label %bb.r, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i20

bb.r:                                             ; preds = %bb.q
  %i.gh = load ptr, ptr %i.ga, align 8, !tbaa !64
  invoke void %i.gh(ptr noundef nonnull align 8 dereferenceable(283) %i.fv, i64 noundef %i.ge)
          to label %.noexc.i32 unwind label %.loopexit.i30, !inline_history !34

.noexc.i32:                                       ; preds = %bb.r
  %.pre30.i.i.i.i33 = load i64, ptr %i.fz, align 8, !tbaa !66
  %.pre31.i.i.i.i34 = load i64, ptr %i.fy, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i20

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i20: ; preds = %.noexc.i32, %bb.q
  %i.gi = phi i64 [ %i.gb, %bb.q ], [ %.pre31.i.i.i.i34, %.noexc.i32 ] ; 4 uses
  %i.gj = phi i64 [ %i.gf, %bb.q ], [ %.pre30.i.i.i.i33, %.noexc.i32 ]
  %i.gk = sub i64 %i.gj, %i.gi
  %spec.select.i.i.i.i21 = call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gd) ; 13 uses
  %i.gl = load ptr, ptr %i.fv, align 8, !tbaa !65 ; 2 uses
  %i.gm = ptrtoaddr ptr %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gi ; 7 uses
  %.not29.i.i.i.i22 = icmp eq i64 %spec.select.i.i.i.i21, 0
end_hunk_11
begin_hunk_12_@_ZN6spdlog7details25source_funcname_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i19, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !62
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.gm
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !62
  %i.gq = add nuw i64 %.023.i.i.i.i24, 2          ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i19, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !62
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.gq
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !62
  %i.gu = add nuw i64 %.023.i.i.i.i24, 3          ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i19, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.gu
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !62
  %i.gy = add nuw i64 %.023.i.i.i.i24, 4          ; 2 uses
  %exitcond.not.i.i.i.i25.3 = icmp eq i64 %i.gy, %spec.select.i.i.i.i21
  br i1 %exitcond.not.i.i.i.i25.3, label %._crit_edge.loopexit.i.i.i.i26, label %.lr.ph.i.i.i.i23, !llvm.loop !1099

bb.r:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.gz = load ptr, ptr %5, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hb = load i8, ptr %i.ha, align 4, !tbaa !252, !range !69, !noundef !70
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.s, label %_ZN6spdlog7details13scoped_padderD2Ev.exit35

bb.s:                                             ; preds = %bb.r
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !67
  %i.hh = add nsw i64 %i.hg, %i.er                ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !66 ; 2 uses
  %i.hk = icmp ugt i64 %i.hh, %i.hj
  br i1 %i.hk, label %bb.t, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i9

bb.t:                                             ; preds = %bb.s
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !64
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(283) %i.he, i64 noundef %i.hh)
          to label %.noexc1.i14 unwind label %.loopexit.split-lp.i11, !inline_history !35

.noexc1.i14:                                      ; preds = %bb.t
  %.pre.i.i.i15 = load i64, ptr %i.hi, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i9

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i9: ; preds = %.noexc1.i14, %bb.s
  %i.hn = phi i64 [ %i.hj, %bb.s ], [ %.pre.i.i.i15, %.noexc1.i14 ]
  %..i.i.i10 = call i64 @llvm.umin.i64(i64 %i.hh, i64 %i.hn)
  store i64 %..i.i.i10, ptr %i.hf, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit35

.loopexit.i30:                                    ; preds = %bb.q
  %lpad.loopexit.i31 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

.loopexit.split-lp.i11:                           ; preds = %bb.t
  %lpad.loopexit.split-lp.i12 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i11, %.loopexit.i30
  %lpad.phi.i13 = phi { ptr, i32 } [ %lpad.loopexit.i31, %.loopexit.i30 ], [ %lpad.loopexit.split-lp.i12, %.loopexit.split-lp.i11 ]
  %i.ho = extractvalue { ptr, i32 } %lpad.phi.i13, 0
  call void @__clang_call_terminate(ptr %i.ho) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit35:     ; preds = %._crit_edge.i.i.i.i28, %bb.o, %bb.r, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.v

bb.v:                                             ; preds = %_ZN6spdlog7details13scoped_padderD2Ev.exit35, %_ZN6spdlog7details13scoped_padderD2Ev.exit
  ret void

bb.w:                                             ; preds = %bb.n
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  resume { ptr, i32 } %i.hp
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details12ch_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details12ch_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.c), !inline_history !28
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !62
  %i.l = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.a, align 8, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 %i.k, ptr %i.m, align 1, !tbaa !62
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0) ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !68
  %i.d = or i64 %.sroa.speculated, 1
  %i.e = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = xor i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !62
  %i.i = zext i8 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !68
  %i.l = icmp ult i64 %.sroa.speculated, %i.k
  %.neg.i.i.i.i = sext i1 %i.l to i64
  %i.m = add nsw i64 %.neg.i.i.i.i, %i.i
  %i.n = and i64 %i.m, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(14) %i.o, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.q = icmp sgt i64 %i.c, 99
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %bb.a ]
  %i.r = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.s = urem i64 %.021.i.i.i.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.t
  %i.v = load i16, ptr %i.u, align 1
  store i16 %i.v, ptr %i.r, align 1
  %i.w = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.x = icmp samesign ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.a ], [ %i.r, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %.sroa.speculated, %bb.a ], [ %i.w, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.y = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.z = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 1
  store i16 %i.af, ptr %i.ac, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ab, %bb.b ], [ %i.ac, %bb.c ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ag, align 8, !tbaa !279
  %i.ah = ptrtoint ptr %4 to i64
  %i.ai = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.aj = add i64 %i.ah, 21                       ; 3 uses
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.ak
  %.not24.i.i = icmp eq i64 %i.aj, %i.ai
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ap = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bu, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bv, %._crit_edge.i.i ] ; 9 uses
  %i.aq = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ar = sub i64 %i.aj, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !66 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !64
  invoke void %i.av(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.as)
          to label %.noexc unwind label %bb.m, !inline_history !37

.noexc:                                           ; preds = %bb.e
  %.pre30.i.i = load i64, ptr %i.an, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.d
  %i.aw = phi i64 [ %i.ap, %bb.d ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.ax = phi i64 [ %i.at, %bb.d ], [ %.pre30.i.i, %.noexc ]
  %i.ay = sub i64 %i.ax, %i.aw
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ar) ; 13 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.aw, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !62
  %wide.load31 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !62
  store <16 x i8> %wide.load31, ptr %i.bi, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index33
  %wide.load34 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index33
  store <4 x i8> %wide.load34, ptr %i.bl, align 1, !tbaa !62
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %spec.select.i.i, %n.vec32
  br i1 %cmp.n36, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !62
  %i.bq = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1102

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %i.br = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.am, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bt = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.aw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bu = add i64 %i.bt, %spec.select.i.i         ; 2 uses
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, %i.al
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !62
  %i.bz = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !62
  %i.cd = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !62
  %i.ch = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !62
  %i.cl = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cl, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1103

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !292 ; 4 uses
  %i.co = icmp sgt i64 %i.cn, -1
  br i1 %i.co, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !106 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.cn, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i10, %.lr.ph27.i.i.i.i
  %i.cy = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ed, %._crit_edge.i.i.i.i10 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cq, %.lr.ph27.i.i.i.i ], [ %i.ee, %._crit_edge.i.i.i.i10 ] ; 9 uses
  %i.cz = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.da = sub i64 %i.cu, %i.cz                    ; 2 uses
  %i.db = add i64 %i.da, %i.cy                    ; 2 uses
  %i.dc = load i64, ptr %i.cw, align 8, !tbaa !66 ; 2 uses
  %i.dd = icmp ugt i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !64
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(283) %i.cs, i64 noundef %i.db)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.h
  %.pre30.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.g
  %i.df = phi i64 [ %i.cy, %bb.g ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.dg = phi i64 [ %i.dc, %bb.g ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.dh = sub i64 %i.dg, %i.df
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dh, i64 %i.da) ; 13 uses
  %i.di = load ptr, ptr %i.cs, align 8, !tbaa !65 ; 2 uses
  %i.dj = ptrtoaddr ptr %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_12
begin_hunk_13_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol

.lr.ph.i.i.i.i9.prol:                             ; preds = %.lr.ph.i.i.i.i9.preheader, %.lr.ph.i.i.i.i9.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i9.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ] ; 3 uses
  %prol.iter68 = phi i64 [ %prol.iter68.next, %.lr.ph.i.i.i.i9.prol ], [ 0, %.lr.ph.i.i.i.i9.preheader ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.023.i.i.i.i.prol
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !62
  %i.dz = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter68.next = add i64 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i64 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol, !llvm.loop !1106

.lr.ph.i.i.i.i9.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i9.prol, %.lr.ph.i.i.i.i9.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ], [ %i.dz, %.lr.ph.i.i.i.i9.prol ]
  %i.ea = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9, %vec.epilog.middle.block62, %middle.block49
  %.pre32.i.i.i.i = load i64, ptr %i.cv, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.ec = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.df, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.ed = add i64 %i.ec, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.ed, ptr %i.cv, align 8, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %i.ct
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.g, !llvm.loop !3

.lr.ph.i.i.i.i9:                                  ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9
  %.023.i.i.i.i = phi i64 [ %i.eu, %.lr.ph.i.i.i.i9 ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i9.prol.loopexit ] ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !62
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.023.i.i.i.i
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !62
  %i.ei = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !62
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ei
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !62
  %i.em = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !62
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.em
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !62
  %i.eq = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !62
  %i.et = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eq
  store i8 %i.es, ptr %i.et, align 1, !tbaa !62
  %i.eu = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.eu, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9, !llvm.loop !1107

bb.i:                                             ; preds = %.loopexit
  %i.ev = load ptr, ptr %5, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !252, !range !69, !noundef !70
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.j, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !67
  %i.fd = add nsw i64 %i.fc, %i.cn                ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !66 ; 2 uses
  %i.fg = icmp ugt i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !64
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(283) %i.fa, i64 noundef %i.fd)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.k
  %.pre.i.i.i = load i64, ptr %i.fe, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.j
  %i.fj = phi i64 [ %i.ff, %bb.j ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fd, i64 %i.fj)
  store i64 %..i.i.i, ptr %i.fb, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fk = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fk) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i10, %bb.f, %bb.i, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret void

bb.m:                                             ; preds = %bb.e
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  resume { ptr, i32 } %i.fl
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000         ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !68
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !62
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.r = icmp sgt i64 %i.c, 99999
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.q, %bb.a ]
  %i.s = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.t = urem i64 %.021.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.y = icmp samesign ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.a ], [ %i.s, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.z = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 1
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.ad, %bb.c ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ah, align 8, !tbaa !279
  %i.ai = ptrtoint ptr %4 to i64
  %i.aj = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.ak = add i64 %i.ai, 21                       ; 3 uses
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.al
  %.not24.i.i = icmp eq i64 %i.ak, %i.aj
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.aq = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bv, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bw, %._crit_edge.i.i ] ; 9 uses
  %i.ar = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.as = sub i64 %i.ak, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !66 ; 2 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !64
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.at)
          to label %.noexc unwind label %bb.m, !inline_history !37

.noexc:                                           ; preds = %bb.e
  %.pre30.i.i = load i64, ptr %i.ao, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.d
  %i.ax = phi i64 [ %i.aq, %bb.d ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.ay = phi i64 [ %i.au, %bb.d ], [ %.pre30.i.i, %.noexc ]
  %i.az = sub i64 %i.ay, %i.ax
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.as) ; 13 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bd = add i64 %i.ax, %i.bb
  %i.be = sub i64 %i.ar, %i.bd
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <16 x i8>, ptr %i.bg, align 1, !tbaa !62
  %wide.load30 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %wide.load, ptr %i.bi, align 1, !tbaa !62
  store <16 x i8> %wide.load30, ptr %i.bj, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !1108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index32
  %wide.load33 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index32
  store <4 x i8> %wide.load33, ptr %i.bm, align 1, !tbaa !62
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1109

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %spec.select.i.i, %n.vec31
  br i1 %cmp.n35, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.023.i.i.prol
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !62
  %i.br = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1110

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.br, %.lr.ph.i.i.prol ]
  %i.bs = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bu = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ax, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bv = add i64 %i.bu, %spec.select.i.i         ; 2 uses
  store i64 %i.bv, ptr %i.an, align 8, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.am
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.023.i.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !62
  %i.ca = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !62
  %i.ce = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !62
  %i.ci = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !62
  %i.cm = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cm, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1111

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !292 ; 4 uses
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !106 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.co, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i10, %.lr.ph27.i.i.i.i
  %i.cz = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ee, %._crit_edge.i.i.i.i10 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cr, %.lr.ph27.i.i.i.i ], [ %i.ef, %._crit_edge.i.i.i.i10 ] ; 9 uses
  %i.da = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.db = sub i64 %i.cv, %i.da                    ; 2 uses
  %i.dc = add i64 %i.db, %i.cz                    ; 2 uses
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !66 ; 2 uses
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !64
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(283) %i.ct, i64 noundef %i.dc)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.h
  %.pre30.i.i.i.i = load i64, ptr %i.cx, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.g
  %i.dg = phi i64 [ %i.cz, %bb.g ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.dh = phi i64 [ %i.dd, %bb.g ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.di = sub i64 %i.dh, %i.dg
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.di, i64 %i.db) ; 13 uses
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !65 ; 2 uses
  %i.dk = ptrtoaddr ptr %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_13
begin_hunk_14_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol

.lr.ph.i.i.i.i9.prol:                             ; preds = %.lr.ph.i.i.i.i9.preheader, %.lr.ph.i.i.i.i9.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.ea, %.lr.ph.i.i.i.i9.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ] ; 3 uses
  %prol.iter67 = phi i64 [ %prol.iter67.next, %.lr.ph.i.i.i.i9.prol ], [ 0, %.lr.ph.i.i.i.i9.preheader ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !62
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.023.i.i.i.i.prol
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !62
  %i.ea = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter67.next = add i64 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i64 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol, !llvm.loop !1114

.lr.ph.i.i.i.i9.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i9.prol, %.lr.ph.i.i.i.i9.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ], [ %i.ea, %.lr.ph.i.i.i.i9.prol ]
  %i.eb = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9, %vec.epilog.middle.block61, %middle.block48
  %.pre32.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.ed = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.dg, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.ee = add i64 %i.ed, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.ee, ptr %i.cw, align 8, !tbaa !67
  %i.ef = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ef, %i.cu
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.g, !llvm.loop !3

.lr.ph.i.i.i.i9:                                  ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9
  %.023.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i9 ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i9.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !62
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.023.i.i.i.i
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !62
  %i.ej = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !62
  %i.en = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !62
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.en
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !62
  %i.er = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.er
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !62
  %i.ev = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ev, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9, !llvm.loop !1115

bb.i:                                             ; preds = %.loopexit
  %i.ew = load ptr, ptr %5, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !252, !range !69, !noundef !70
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.j, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !67
  %i.fe = add nsw i64 %i.fd, %i.co                ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !66 ; 2 uses
  %i.fh = icmp ugt i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !64
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(283) %i.fb, i64 noundef %i.fe)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.k
  %.pre.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.j
  %i.fk = phi i64 [ %i.fg, %bb.j ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.fk)
  store i64 %..i.i.i, ptr %i.fc, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fl = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fl) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i10, %bb.f, %bb.i, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret void

bb.m:                                             ; preds = %bb.e
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  resume { ptr, i32 } %i.fm
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000      ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !68
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !62
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.r = icmp sgt i64 %i.c, 99999999
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.q, %bb.a ]
  %i.s = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.t = urem i64 %.021.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.y = icmp samesign ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.a ], [ %i.s, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.z = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 1
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.ad, %bb.c ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ah, align 8, !tbaa !279
  %i.ai = ptrtoint ptr %4 to i64
  %i.aj = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.ak = add i64 %i.ai, 21                       ; 3 uses
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.al
  %.not24.i.i = icmp eq i64 %i.ak, %i.aj
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.aq = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bv, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bw, %._crit_edge.i.i ] ; 9 uses
  %i.ar = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.as = sub i64 %i.ak, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !66 ; 2 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !64
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.at)
          to label %.noexc unwind label %bb.m, !inline_history !37

.noexc:                                           ; preds = %bb.e
  %.pre30.i.i = load i64, ptr %i.ao, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.d
  %i.ax = phi i64 [ %i.aq, %bb.d ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.ay = phi i64 [ %i.au, %bb.d ], [ %.pre30.i.i, %.noexc ]
  %i.az = sub i64 %i.ay, %i.ax
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.as) ; 13 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bd = add i64 %i.ax, %i.bb
  %i.be = sub i64 %i.ar, %i.bd
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <16 x i8>, ptr %i.bg, align 1, !tbaa !62
  %wide.load30 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %wide.load, ptr %i.bi, align 1, !tbaa !62
  store <16 x i8> %wide.load30, ptr %i.bj, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !1116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index32
  %wide.load33 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index32
  store <4 x i8> %wide.load33, ptr %i.bm, align 1, !tbaa !62
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %spec.select.i.i, %n.vec31
  br i1 %cmp.n35, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.023.i.i.prol
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !62
  %i.br = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1118

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.br, %.lr.ph.i.i.prol ]
  %i.bs = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bu = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ax, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bv = add i64 %i.bu, %spec.select.i.i         ; 2 uses
  store i64 %i.bv, ptr %i.an, align 8, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.am
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.023.i.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !62
  %i.ca = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !62
  %i.ce = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !62
  %i.ci = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !62
  %i.cm = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cm, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1119

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !292 ; 4 uses
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !106 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.co, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i10, %.lr.ph27.i.i.i.i
  %i.cz = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ee, %._crit_edge.i.i.i.i10 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cr, %.lr.ph27.i.i.i.i ], [ %i.ef, %._crit_edge.i.i.i.i10 ] ; 9 uses
  %i.da = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.db = sub i64 %i.cv, %i.da                    ; 2 uses
  %i.dc = add i64 %i.db, %i.cz                    ; 2 uses
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !66 ; 2 uses
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !64
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(283) %i.ct, i64 noundef %i.dc)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.h
  %.pre30.i.i.i.i = load i64, ptr %i.cx, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.g
  %i.dg = phi i64 [ %i.cz, %bb.g ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.dh = phi i64 [ %i.dd, %bb.g ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.di = sub i64 %i.dh, %i.dg
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.di, i64 %i.db) ; 13 uses
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !65 ; 2 uses
  %i.dk = ptrtoaddr ptr %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_14
begin_hunk_15_@_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol

.lr.ph.i.i.i.i9.prol:                             ; preds = %.lr.ph.i.i.i.i9.preheader, %.lr.ph.i.i.i.i9.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.ea, %.lr.ph.i.i.i.i9.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ] ; 3 uses
  %prol.iter67 = phi i64 [ %prol.iter67.next, %.lr.ph.i.i.i.i9.prol ], [ 0, %.lr.ph.i.i.i.i9.preheader ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !62
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.023.i.i.i.i.prol
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !62
  %i.ea = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter67.next = add i64 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i64 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %.lr.ph.i.i.i.i9.prol.loopexit, label %.lr.ph.i.i.i.i9.prol, !llvm.loop !1122

.lr.ph.i.i.i.i9.prol.loopexit:                    ; preds = %.lr.ph.i.i.i.i9.prol, %.lr.ph.i.i.i.i9.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i9.preheader ], [ %i.ea, %.lr.ph.i.i.i.i9.prol ]
  %i.eb = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9, %vec.epilog.middle.block61, %middle.block48
  %.pre32.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i10

._crit_edge.i.i.i.i10:                            ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.ed = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.dg, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.ee = add i64 %i.ed, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.ee, ptr %i.cw, align 8, !tbaa !67
  %i.ef = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ef, %i.cu
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.g, !llvm.loop !3

.lr.ph.i.i.i.i9:                                  ; preds = %.lr.ph.i.i.i.i9.prol.loopexit, %.lr.ph.i.i.i.i9
  %.023.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i9 ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i9.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !62
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.023.i.i.i.i
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !62
  %i.ej = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !62
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !62
  %i.en = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !62
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.en
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !62
  %i.er = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.er
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !62
  %i.ev = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ev, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i9, !llvm.loop !1123

bb.i:                                             ; preds = %.loopexit
  %i.ew = load ptr, ptr %5, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !252, !range !69, !noundef !70
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.j, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !67
  %i.fe = add nsw i64 %i.fd, %i.co                ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !66 ; 2 uses
  %i.fh = icmp ugt i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.k, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !64
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(283) %i.fb, i64 noundef %i.fe)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.k
  %.pre.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.j
  %i.fk = phi i64 [ %i.fg, %bb.j ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.fk)
  store i64 %..i.i.i, ptr %i.fc, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

.loopexit.split-lp.i:                             ; preds = %bb.k
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fl = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fl) #38
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i10, %bb.f, %bb.i, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  ret void

bb.m:                                             ; preds = %bb.e
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  resume { ptr, i32 } %i.fm
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_13scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %5 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000000   ; 4 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !68
  %i.e = or i64 %i.d, 1
  %i.f = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = xor i64 %i.f, 63
  %i.h = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !62
  %i.j = zext i8 %i.i to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = icmp ult i64 %i.d, %i.l
  %.neg.i.i.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %.neg.i.i.i.i, %i.j
  %i.o = and i64 %i.n, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(14) %i.p, ptr noundef nonnull align 8 dereferenceable(283) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.r = icmp sgt i64 %i.c, 99999999999
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.q, %bb.a ]
  %i.s = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.t = urem i64 %.021.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1
  store i16 %i.w, ptr %i.s, align 1
  %i.x = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.y = icmp samesign ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.a ], [ %i.s, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.z = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.ab = or disjoint i8 %i.aa, 48
  %i.ac = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.ae = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 1
  store i16 %i.ag, ptr %i.ad, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.ad, %bb.c ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.ah, align 8, !tbaa !279
  %i.ai = ptrtoint ptr %4 to i64
  %i.aj = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64  ; 2 uses
  %i.ak = add i64 %i.ai, 21                       ; 3 uses
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.al
  %.not24.i.i = icmp eq i64 %i.ak, %i.aj
  br i1 %.not24.i.i, label %.loopexit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.aq = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bv, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bw, %._crit_edge.i.i ] ; 9 uses
  %i.ar = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.as = sub i64 %i.ak, %i.ar                    ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !66 ; 2 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !64
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.at)
          to label %.noexc unwind label %bb.m, !inline_history !37

.noexc:                                           ; preds = %bb.e
  %.pre30.i.i = load i64, ptr %i.ao, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.d
  %i.ax = phi i64 [ %i.aq, %bb.d ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.ay = phi i64 [ %i.au, %bb.d ], [ %.pre30.i.i, %.noexc ]
  %i.az = sub i64 %i.ay, %i.ax
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.as) ; 13 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bd = add i64 %i.ax, %i.bb
  %i.be = sub i64 %i.ar, %i.bd
  %diff.check = icmp ugt i64 %i.be, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check29 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <16 x i8>, ptr %i.bg, align 1, !tbaa !62
  %wide.load30 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <16 x i8> %wide.load, ptr %i.bi, align 1, !tbaa !62
  store <16 x i8> %wide.load30, ptr %i.bj, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !1124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec31 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next34, %vec.epilog.vector.body ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index32
  %wide.load33 = load <4 x i8>, ptr %i.bl, align 1, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %index32
  store <4 x i8> %wide.load33, ptr %i.bm, align 1, !tbaa !62
  %index.next34 = add nuw i64 %index32, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1125

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n35 = icmp eq i64 %spec.select.i.i, %n.vec31
  br i1 %cmp.n35, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec31, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.023.i.i.prol
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !62
  %i.br = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1126

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.br, %.lr.ph.i.i.prol ]
  %i.bs = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bt = icmp ugt i64 %i.bs, -4
  br i1 %i.bt, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.an, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bu = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ax, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bv = add i64 %i.bu, %spec.select.i.i         ; 2 uses
  store i64 %i.bv, ptr %i.an, align 8, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bw, %i.am
  br i1 %.not.i.i, label %.loopexit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cm, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.023.i.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !62
  %i.ca = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !62
  %i.ce = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !62
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !62
  %i.ci = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !62
  %i.cm = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cm, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1127

.loopexit:                                        ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !292 ; 4 uses
  %i.cp = icmp sgt i64 %i.co, -1
  br i1 %i.cp, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.loopexit
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !106 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.co, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.f
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i10, %.lr.ph27.i.i.i.i
  %i.cz = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.ee, %._crit_edge.i.i.i.i10 ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.cr, %.lr.ph27.i.i.i.i ], [ %i.ef, %._crit_edge.i.i.i.i10 ] ; 9 uses
  %i.da = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.db = sub i64 %i.cv, %i.da                    ; 2 uses
  %i.dc = add i64 %i.db, %i.cz                    ; 2 uses
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !66 ; 2 uses
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !64
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(283) %i.ct, i64 noundef %i.dc)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.h
  %.pre30.i.i.i.i = load i64, ptr %i.cx, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.cw, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.g
  %i.dg = phi i64 [ %i.cz, %bb.g ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.dh = phi i64 [ %i.dd, %bb.g ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.di = sub i64 %i.dh, %i.dg
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.di, i64 %i.db) ; 13 uses
  %i.dj = load ptr, ptr %i.ct, align 8, !tbaa !65 ; 2 uses
  %i.dk = ptrtoaddr ptr %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dg ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
end_hunk_15
begin_hunk_16_@_ZN6spdlog7details21short_level_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !64
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.o), !inline_history !23
  %.pre30.i.i = load i64, ptr %i.j, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %i.l, %bb.b ], [ %.pre31.i.i, %bb.c ] ; 4 uses
  %i.t = phi i64 [ %i.p, %bb.b ], [ %.pre30.i.i, %bb.c ]
  %i.u = sub i64 %i.t, %i.s
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.n) ; 13 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.s, %i.w
  %i.z = sub i64 %i.m, %i.y
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <16 x i8>, ptr %i.ab, align 1, !tbaa !62
  %wide.load9 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load, ptr %i.ad, align 1, !tbaa !62
  store <16 x i8> %wide.load9, ptr %i.ae, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %index11
  store <4 x i8> %wide.load12, ptr %i.ah, align 1, !tbaa !62
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1141

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %spec.select.i.i, %n.vec10
  br i1 %cmp.n14, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i.prol
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !62
  %i.am = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1142

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.s, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aq = add i64 %i.ap, %spec.select.i.i         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.b, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i
  store i8 %i.at, ptr %i.au, align 1, !tbaa !62
  %i.av = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !62
  %i.az = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !62
  %i.bd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !62
  %i.bh = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bh, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1143

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11t_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11t_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.d = icmp ugt i64 %i.b, 99
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.f = urem i64 %.021.i.i.i.i, 100
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.g
  %i.i = load i16, ptr %i.h, align 1
  store i16 %i.i, ptr %i.e, align 1
  %i.j = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.k = icmp ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %i.e, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.j, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.l = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.n = or disjoint i8 %i.m, 48
  %i.o = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.n, ptr %i.o, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.q = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.r = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.q
  %i.s = load i16, ptr %i.r, align 1
  store i16 %i.s, ptr %i.p, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.o, %bb.b ], [ %i.p, %bb.c ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.t, align 8, !tbaa !279
  %i.u = ptrtoint ptr %4 to i64
  %i.v = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64   ; 2 uses
  %i.w = add i64 %i.u, 21                         ; 3 uses
  %i.x = sub i64 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.x
  %.not24.i.i = icmp eq i64 %i.w, %i.v
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.z, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ac = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bh, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bi, %._crit_edge.i.i ] ; 9 uses
  %i.ad = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ae = sub i64 %i.w, %i.ad                     ; 2 uses
  %i.af = add i64 %i.ae, %i.ac                    ; 2 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !66 ; 2 uses
  %i.ah = icmp ugt i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !64
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.af), !inline_history !41
  %.pre30.i.i = load i64, ptr %i.aa, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.z, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.aj = phi i64 [ %i.ac, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ak = phi i64 [ %i.ag, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.al = sub i64 %i.ak, %i.aj
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ae) ; 13 uses
  %i.am = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ap = add i64 %i.aj, %i.an
  %i.aq = sub i64 %i.ad, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !62
  %wide.load14 = load <16 x i8>, ptr %i.at, align 1, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %wide.load, ptr %i.au, align 1, !tbaa !62
  store <16 x i8> %wide.load14, ptr %i.av, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.ay, align 1, !tbaa !62
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1145

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.023.i.i.prol
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !62
  %i.bd = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1146

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.prol ]
  %i.be = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.z, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bg = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.aj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bh = add i64 %i.bg, %spec.select.i.i         ; 2 uses
  store i64 %i.bh, ptr %i.z, align 8, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, %i.y
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.by, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.023.i.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !62
  %i.bm = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bm
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !62
  %i.bq = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bq
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !62
  %i.bu = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bu
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !62
  %i.by = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.by, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1147

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11v_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11v_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !53 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !68 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !67
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.g = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.al, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph27.i.i ], [ %i.am, %._crit_edge.i.i ] ; 9 uses
  %i.h = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.i = sub i64 %i.c, %i.h                       ; 2 uses
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = load i64, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !64
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.j), !inline_history !23
  %.pre30.i.i = load i64, ptr %i.e, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.d, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre31.i.i, %bb.c ] ; 4 uses
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre30.i.i, %bb.c ]
  %i.p = sub i64 %i.o, %i.n
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.i) ; 13 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 7 uses
end_hunk_16
begin_hunk_17_@_ZN6spdlog7details11c_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a

vector.memcheck205:                               ; preds = %iter.check220
  %i.cp = add i64 %i.cj, %i.cn
  %i.cq = sub i64 %i.cd, %i.cp
  %diff.check206 = icmp ugt i64 %i.cq, -32
  br i1 %diff.check206, label %.lr.ph.i.i29.preheader, label %vector.main.loop.iter.check208

vector.main.loop.iter.check208:                   ; preds = %vector.memcheck205
  %min.iters.check209 = icmp ult i64 %spec.select.i.i27, 32
  br i1 %min.iters.check209, label %vec.epilog.ph224, label %vector.ph210

vector.ph210:                                     ; preds = %vector.main.loop.iter.check208
  %i.cr = and i64 %spec.select.i.i27, 28
  %n.vec211 = and i64 %spec.select.i.i27, -32     ; 4 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph210
  %index213 = phi i64 [ 0, %vector.ph210 ], [ %index.next216, %vector.body212 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %index213 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load214 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !62
  %wide.load215 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !62
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %index213 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <16 x i8> %wide.load214, ptr %i.cu, align 1, !tbaa !62
  store <16 x i8> %wide.load215, ptr %i.cv, align 1, !tbaa !62
  %index.next216 = add nuw i64 %index213, 32      ; 2 uses
  %i.cw = icmp eq i64 %index.next216, %n.vec211
  br i1 %i.cw, label %middle.block217, label %vector.body212, !llvm.loop !1172

middle.block217:                                  ; preds = %vector.body212
  %cmp.n218 = icmp eq i64 %spec.select.i.i27, %n.vec211
  br i1 %cmp.n218, label %._crit_edge.loopexit.i.i32, label %vec.epilog.iter.check222

vec.epilog.iter.check222:                         ; preds = %middle.block217
  %min.epilog.iters.check223 = icmp eq i64 %i.cr, 0
  br i1 %min.epilog.iters.check223, label %.lr.ph.i.i29.preheader, label %vec.epilog.ph224, !prof !107

vec.epilog.ph224:                                 ; preds = %vector.main.loop.iter.check208, %vec.epilog.iter.check222
  %vec.epilog.resume.val219 = phi i64 [ %n.vec211, %vec.epilog.iter.check222 ], [ 0, %vector.main.loop.iter.check208 ]
  %n.vec225 = and i64 %spec.select.i.i27, -4      ; 3 uses
  br label %vec.epilog.vector.body226

vec.epilog.vector.body226:                        ; preds = %vec.epilog.vector.body226, %vec.epilog.ph224
  %index227 = phi i64 [ %vec.epilog.resume.val219, %vec.epilog.ph224 ], [ %index.next229, %vec.epilog.vector.body226 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %index227
  %wide.load228 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %index227
  store <4 x i8> %wide.load228, ptr %i.cy, align 1, !tbaa !62
  %index.next229 = add nuw i64 %index227, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next229, %n.vec225
  br i1 %i.cz, label %vec.epilog.middle.block230, label %vec.epilog.vector.body226, !llvm.loop !1173

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body226
  %cmp.n231 = icmp eq i64 %spec.select.i.i27, %n.vec225
  br i1 %cmp.n231, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %vector.memcheck205, %iter.check220, %vec.epilog.iter.check222, %vec.epilog.middle.block230
  %.023.i.i30.ph = phi i64 [ 0, %iter.check220 ], [ 0, %vector.memcheck205 ], [ %n.vec211, %vec.epilog.iter.check222 ], [ %n.vec225, %vec.epilog.middle.block230 ] ; 3 uses
  %xtraiter295 = and i64 %spec.select.i.i27, 3    ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29.prol
  %.023.i.i30.prol = phi i64 [ %i.dd, %.lr.ph.i.i29.prol ], [ %.023.i.i30.ph, %.lr.ph.i.i29.preheader ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %.lr.ph.i.i29.prol ], [ 0, %.lr.ph.i.i29.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %.023.i.i30.prol
  %i.db = load i8, ptr %i.da, align 1, !tbaa !62
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 %.023.i.i30.prol
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !62
  %i.dd = add nuw i64 %.023.i.i30.prol, 1         ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol, !llvm.loop !1174

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.i29.preheader
  %.023.i.i30.unr = phi i64 [ %.023.i.i30.ph, %.lr.ph.i.i29.preheader ], [ %i.dd, %.lr.ph.i.i29.prol ]
  %i.de = sub i64 %.023.i.i30.ph, %spec.select.i.i27
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29

._crit_edge.loopexit.i.i32:                       ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %vec.epilog.middle.block230, %middle.block217
  %.pre32.i.i33 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %._crit_edge.i.i34

._crit_edge.i.i34:                                ; preds = %._crit_edge.loopexit.i.i32, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i26
  %i.dg = phi i64 [ %.pre32.i.i33, %._crit_edge.loopexit.i.i32 ], [ %i.cj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i26 ]
  %i.dh = add i64 %i.dg, %spec.select.i.i27       ; 3 uses
  store i64 %i.dh, ptr %i.bj, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %spec.select.i.i27 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.di, %i.bz
  br i1 %.not.i.i35, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit38, label %bb.e, !llvm.loop !3

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %.023.i.i30 = phi i64 [ %i.dy, %.lr.ph.i.i29 ], [ %.023.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %.023.i.i30
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.co, i64 %.023.i.i30
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !62
  %i.dm = add nuw i64 %.023.i.i30, 1              ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !62
  %i.dp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dm
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !62
  %i.dq = add nuw i64 %.023.i.i30, 2              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !62
  %i.dt = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dq
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !62
  %i.du = add nuw i64 %.023.i.i30, 3              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.01925.i.i25, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !62
  %i.dx = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.du
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !62
  %i.dy = add nuw i64 %.023.i.i30, 4              ; 2 uses
  %exitcond.not.i.i31.3 = icmp eq i64 %i.dy, %spec.select.i.i27
  br i1 %exitcond.not.i.i31.3, label %._crit_edge.loopexit.i.i32, label %.lr.ph.i.i29, !llvm.loop !1175

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit38: ; preds = %._crit_edge.i.i34, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %i.dz = phi i64 [ %.pre142, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.dh, %._crit_edge.i.i34 ] ; 2 uses
  %i.ea = add i64 %i.dz, 1                        ; 3 uses
  %i.eb = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.ec = icmp ugt i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

bb.g:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit38
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !64
  tail call void %i.ee(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ea), !inline_history !28
  %.pre.i40 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i41 = add i64 %.pre.i40, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42: ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit38, %bb.g
  %.pre-phi.i39 = phi i64 [ %i.ea, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit38 ], [ %.pre2.i41, %bb.g ]
  %i.ef = phi i64 [ %i.dz, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit38 ], [ %.pre.i40, %bb.g ]
  %i.eg = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i39, ptr %i.bj, align 8, !tbaa !67
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  store i8 32, ptr %i.eh, align 1, !tbaa !62
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !281 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.ek = icmp slt i32 %i.ej, 0
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.ej, i1 false) ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 21 ; 2 uses
  %i.em = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.em, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.et, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i ], [ %i.el, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ]
  %i.en = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.eo = urem i32 %.021.i.i.i.i.i, 100
  %i.ep = shl nuw nsw i32 %i.eo, 1
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 1
  store i16 %i.es, ptr %i.en, align 1
  %i.et = udiv i32 %.021.i.i.i.i.i, 100           ; 2 uses
  %i.eu = icmp ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.el, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %i.en, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit42 ], [ %i.et, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.ev = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.ev, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ew = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.ex = or disjoint i8 %i.ew, 48
  %i.ey = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ez = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.fa = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 1
  store i16 %i.fd, ptr %i.ez, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ey, %bb.h ], [ %i.ez, %bb.i ] ; 2 uses
  br i1 %i.ek, label %bb.j, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.j:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.fe, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.j, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.fe, %bb.j ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.0.i.i.i, ptr %i.ff, align 8, !tbaa !279
  %i.fg = ptrtoint ptr %8 to i64
  %i.fh = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.fi = add i64 %i.fg, 21                       ; 3 uses
  %i.fj = sub i64 %i.fi, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.fj
  %.not24.i.i43 = icmp eq i64 %i.fi, %i.fh
  %.pre143 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  br i1 %.not24.i.i43, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i44

.lr.ph27.i.i44:                                   ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i55, %.lr.ph27.i.i44
  %i.fm = phi i64 [ %.pre143, %.lr.ph27.i.i44 ], [ %i.gr, %._crit_edge.i.i55 ] ; 2 uses
  %.01925.i.i46 = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i44 ], [ %i.gs, %._crit_edge.i.i55 ] ; 9 uses
  %i.fn = ptrtoint ptr %.01925.i.i46 to i64       ; 2 uses
  %i.fo = sub i64 %i.fi, %i.fn                    ; 2 uses
  %i.fp = add i64 %i.fo, %i.fm                    ; 2 uses
  %i.fq = load i64, ptr %i.bl, align 8, !tbaa !66 ; 2 uses
  %i.fr = icmp ugt i64 %i.fp, %i.fq
  br i1 %i.fr, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47

bb.l:                                             ; preds = %bb.k
  %i.fs = load ptr, ptr %i.fl, align 8, !tbaa !64
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.fp), !inline_history !30
  %.pre30.i.i57 = load i64, ptr %i.bl, align 8, !tbaa !66
  %.pre31.i.i58 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47: ; preds = %bb.l, %bb.k
  %i.ft = phi i64 [ %i.fm, %bb.k ], [ %.pre31.i.i58, %bb.l ] ; 4 uses
  %i.fu = phi i64 [ %i.fq, %bb.k ], [ %.pre30.i.i57, %bb.l ]
  %i.fv = sub i64 %i.fu, %i.ft
  %spec.select.i.i48 = call i64 @llvm.umin.i64(i64 %i.fv, i64 %i.fo) ; 13 uses
  %i.fw = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.fx = ptrtoaddr ptr %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ft ; 7 uses
  %.not29.i.i49 = icmp eq i64 %spec.select.i.i48, 0
  br i1 %.not29.i.i49, label %._crit_edge.i.i55, label %iter.check248

iter.check248:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47
  %min.iters.check235.a = icmp ult i64 %spec.select.i.i48, 4
  br i1 %min.iters.check235.a, label %.lr.ph.i.i50.preheader, label %vector.memcheck233

vector.memcheck233:                               ; preds = %iter.check248
  %i.fz = add i64 %i.ft, %i.fx
  %i.ga = sub i64 %i.fn, %i.fz
  %diff.check234 = icmp ugt i64 %i.ga, -32
  br i1 %diff.check234, label %.lr.ph.i.i50.preheader, label %vector.main.loop.iter.check236

vector.main.loop.iter.check236:                   ; preds = %vector.memcheck233
  %min.iters.check237 = icmp ult i64 %spec.select.i.i48, 32
  br i1 %min.iters.check237, label %vec.epilog.ph252, label %vector.ph238

vector.ph238:                                     ; preds = %vector.main.loop.iter.check236
  %i.gb = and i64 %spec.select.i.i48, 28
  %n.vec239 = and i64 %spec.select.i.i48, -32     ; 4 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next244, %vector.body240 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %index241 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load242 = load <16 x i8>, ptr %i.gc, align 1, !tbaa !62
  %wide.load243 = load <16 x i8>, ptr %i.gd, align 1, !tbaa !62
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 %index241 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <16 x i8> %wide.load242, ptr %i.ge, align 1, !tbaa !62
  store <16 x i8> %wide.load243, ptr %i.gf, align 1, !tbaa !62
  %index.next244 = add nuw i64 %index241, 32      ; 2 uses
  %i.gg = icmp eq i64 %index.next244, %n.vec239
  br i1 %i.gg, label %middle.block245, label %vector.body240, !llvm.loop !1176

middle.block245:                                  ; preds = %vector.body240
  %cmp.n246 = icmp eq i64 %spec.select.i.i48, %n.vec239
  br i1 %cmp.n246, label %._crit_edge.loopexit.i.i53, label %vec.epilog.iter.check250

vec.epilog.iter.check250:                         ; preds = %middle.block245
  %min.epilog.iters.check251 = icmp eq i64 %i.gb, 0
  br i1 %min.epilog.iters.check251, label %.lr.ph.i.i50.preheader, label %vec.epilog.ph252, !prof !107

vec.epilog.ph252:                                 ; preds = %vector.main.loop.iter.check236, %vec.epilog.iter.check250
  %vec.epilog.resume.val247 = phi i64 [ %n.vec239, %vec.epilog.iter.check250 ], [ 0, %vector.main.loop.iter.check236 ]
  %n.vec253 = and i64 %spec.select.i.i48, -4      ; 3 uses
  br label %vec.epilog.vector.body254

vec.epilog.vector.body254:                        ; preds = %vec.epilog.vector.body254, %vec.epilog.ph252
  %index255 = phi i64 [ %vec.epilog.resume.val247, %vec.epilog.ph252 ], [ %index.next257, %vec.epilog.vector.body254 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %index255
  %wide.load256 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !62
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fy, i64 %index255
  store <4 x i8> %wide.load256, ptr %i.gi, align 1, !tbaa !62
  %index.next257 = add nuw i64 %index255, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next257, %n.vec253
  br i1 %i.gj, label %vec.epilog.middle.block258, label %vec.epilog.vector.body254, !llvm.loop !1177

vec.epilog.middle.block258:                       ; preds = %vec.epilog.vector.body254
  %cmp.n259 = icmp eq i64 %spec.select.i.i48, %n.vec253
  br i1 %cmp.n259, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50.preheader

.lr.ph.i.i50.preheader:                           ; preds = %vector.memcheck233, %iter.check248, %vec.epilog.iter.check250, %vec.epilog.middle.block258
  %.023.i.i51.ph = phi i64 [ 0, %iter.check248 ], [ 0, %vector.memcheck233 ], [ %n.vec239, %vec.epilog.iter.check250 ], [ %n.vec253, %vec.epilog.middle.block258 ] ; 3 uses
  %xtraiter298 = and i64 %spec.select.i.i48, 3    ; 2 uses
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %.lr.ph.i.i50.prol.loopexit, label %.lr.ph.i.i50.prol

.lr.ph.i.i50.prol:                                ; preds = %.lr.ph.i.i50.preheader, %.lr.ph.i.i50.prol
  %.023.i.i51.prol = phi i64 [ %i.gn, %.lr.ph.i.i50.prol ], [ %.023.i.i51.ph, %.lr.ph.i.i50.preheader ] ; 3 uses
  %prol.iter300 = phi i64 [ %prol.iter300.next, %.lr.ph.i.i50.prol ], [ 0, %.lr.ph.i.i50.preheader ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %.023.i.i51.prol
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !62
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.023.i.i51.prol
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !62
  %i.gn = add nuw i64 %.023.i.i51.prol, 1         ; 2 uses
  %prol.iter300.next = add i64 %prol.iter300, 1   ; 2 uses
  %prol.iter300.cmp.not = icmp eq i64 %prol.iter300.next, %xtraiter298
  br i1 %prol.iter300.cmp.not, label %.lr.ph.i.i50.prol.loopexit, label %.lr.ph.i.i50.prol, !llvm.loop !1178

.lr.ph.i.i50.prol.loopexit:                       ; preds = %.lr.ph.i.i50.prol, %.lr.ph.i.i50.preheader
  %.023.i.i51.unr = phi i64 [ %.023.i.i51.ph, %.lr.ph.i.i50.preheader ], [ %i.gn, %.lr.ph.i.i50.prol ]
  %i.go = sub i64 %.023.i.i51.ph, %spec.select.i.i48
  %i.gp = icmp ugt i64 %i.go, -4
  br i1 %i.gp, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50

._crit_edge.loopexit.i.i53:                       ; preds = %.lr.ph.i.i50.prol.loopexit, %.lr.ph.i.i50, %vec.epilog.middle.block258, %middle.block245
  %.pre32.i.i54 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %._crit_edge.i.i55

._crit_edge.i.i55:                                ; preds = %._crit_edge.loopexit.i.i53, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47
  %i.gq = phi i64 [ %.pre32.i.i54, %._crit_edge.loopexit.i.i53 ], [ %i.ft, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i47 ]
  %i.gr = add i64 %i.gq, %spec.select.i.i48       ; 3 uses
  store i64 %i.gr, ptr %i.bj, align 8, !tbaa !67
  %i.gs = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %spec.select.i.i48 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.gs, %i.fk
  br i1 %.not.i.i56, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.k, !llvm.loop !3

.lr.ph.i.i50:                                     ; preds = %.lr.ph.i.i50.prol.loopexit, %.lr.ph.i.i50
  %.023.i.i51 = phi i64 [ %i.hi, %.lr.ph.i.i50 ], [ %.023.i.i51.unr, %.lr.ph.i.i50.prol.loopexit ] ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %.023.i.i51
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !62
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.023.i.i51
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !62
  %i.gw = add nuw i64 %.023.i.i51, 1              ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !62
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.gw
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !62
  %i.ha = add nuw i64 %.023.i.i51, 2              ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !62
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ha
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !62
  %i.he = add nuw i64 %.023.i.i51, 3              ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.01925.i.i46, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !62
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.he
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !62
  %i.hi = add nuw i64 %.023.i.i51, 4              ; 2 uses
  %exitcond.not.i.i52.3 = icmp eq i64 %i.hi, %spec.select.i.i48
  br i1 %exitcond.not.i.i52.3, label %._crit_edge.loopexit.i.i53, label %.lr.ph.i.i50, !llvm.loop !1179

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i55, %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.hj = phi i64 [ %.pre143, %_ZN3fmt3v1110format_intC2Ei.exit.i ], [ %i.gr, %._crit_edge.i.i55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %i.hk = add i64 %i.hj, 1                        ; 3 uses
  %i.hl = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.hm = icmp ugt i64 %i.hk, %i.hl
  br i1 %i.hm, label %bb.m, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62

bb.m:                                             ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !64
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.hk), !inline_history !28
  %.pre.i60 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i61 = add i64 %.pre.i60, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62: ; preds = %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, %bb.m
  %.pre-phi.i59 = phi i64 [ %i.hk, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre2.i61, %bb.m ]
  %i.hp = phi i64 [ %i.hj, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre.i60, %bb.m ]
  %i.hq = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i59, ptr %i.bj, align 8, !tbaa !67
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp
  store i8 32, ptr %i.hr, align 1, !tbaa !62
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !282 ; 3 uses
  %or.cond.i = icmp ult i32 %i.ht, 100
  br i1 %or.cond.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit62
  %.lhs.trunc.i = trunc nuw nsw i32 %i.ht to i8   ; 2 uses
  %i.hu = udiv i8 %.lhs.trunc.i, 10
  %i.hv = urem i8 %.lhs.trunc.i, 10
  %i.hw = or disjoint i8 %i.hu, 48
  %i.hx = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.hy = add i64 %i.hx, 1                        ; 3 uses
  %i.hz = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.ia = icmp ugt i64 %i.hy, %i.hz
  br i1 %i.ia, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !64
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.hy), !inline_history !31
  %.pre.i.i63 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i63, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i = phi i64 [ %i.hy, %bb.n ], [ %.pre2.i.i, %bb.o ]
  %i.id = phi i64 [ %i.hx, %bb.n ], [ %.pre.i.i63, %bb.o ]
  %i.ie = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i, ptr %i.bj, align 8, !tbaa !67
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.id
  store i8 %i.hw, ptr %i.if, align 1, !tbaa !62
  %i.ig = or disjoint i8 %i.hv, 48
  %i.ih = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
end_hunk_17
begin_hunk_18_@_ZN6spdlog7details11c_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  store i8 %i.jd, ptr %i.jm, align 1, !tbaa !62
  %i.jn = or disjoint i8 %i.jc, 48
  %i.jo = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.jp = add i64 %i.jo, 1                        ; 3 uses
  %i.jq = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.jr = icmp ugt i64 %i.jp, %i.jq
  br i1 %i.jr, label %bb.u, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i73

bb.u:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i71
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !64
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.jp), !inline_history !31
  %.pre.i5.i75 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i76 = add i64 %.pre.i5.i75, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i73

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i73: ; preds = %bb.u, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i71
  %.pre-phi.i4.i74 = phi i64 [ %i.jp, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i71 ], [ %.pre2.i6.i76, %bb.u ]
  %i.ju = phi i64 [ %i.jo, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i71 ], [ %.pre.i5.i75, %bb.u ]
  %i.jv = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i74, ptr %i.bj, align 8, !tbaa !67
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ju
  store i8 %i.jn, ptr %i.jw, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit79

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %.sroa.01.0.insert.ext.i.i69 = zext i32 %i.ja to i128
  store i128 %.sroa.01.0.insert.ext.i.i69, ptr %6, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %6, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit79

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit79: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i73, %bb.v
  %i.jx = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.jy = add i64 %i.jx, 1                        ; 3 uses
  %i.jz = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.ka = icmp ugt i64 %i.jy, %i.jz
  br i1 %i.ka, label %bb.w, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit83

bb.w:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit79
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !64
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.jy), !inline_history !28
  %.pre.i81 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i82 = add i64 %.pre.i81, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit83

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit83: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit79, %bb.w
  %.pre-phi.i80 = phi i64 [ %i.jy, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit79 ], [ %.pre2.i82, %bb.w ]
  %i.kd = phi i64 [ %i.jx, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit79 ], [ %.pre.i81, %bb.w ]
  %i.ke = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i80, ptr %i.bj, align 8, !tbaa !67
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kd
  store i8 58, ptr %i.kf, align 1, !tbaa !62
  %i.kg = load i32, ptr %2, align 8, !tbaa !284   ; 3 uses
  %or.cond.i84 = icmp ult i32 %i.kg, 100
  br i1 %or.cond.i84, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit83
  %.lhs.trunc.i86 = trunc nuw nsw i32 %i.kg to i8 ; 2 uses
  %i.kh = udiv i8 %.lhs.trunc.i86, 10
  %i.ki = urem i8 %.lhs.trunc.i86, 10
  %i.kj = or disjoint i8 %i.kh, 48
  %i.kk = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.kl = add i64 %i.kk, 1                        ; 3 uses
  %i.km = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.kn = icmp ugt i64 %i.kl, %i.km
  br i1 %i.kn, label %bb.y, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i87

bb.y:                                             ; preds = %bb.x
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !64
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.kl), !inline_history !31
  %.pre.i.i93 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i94 = add i64 %.pre.i.i93, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i87

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i87: ; preds = %bb.y, %bb.x
  %.pre-phi.i.i88 = phi i64 [ %i.kl, %bb.x ], [ %.pre2.i.i94, %bb.y ]
  %i.kq = phi i64 [ %i.kk, %bb.x ], [ %.pre.i.i93, %bb.y ]
  %i.kr = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i88, ptr %i.bj, align 8, !tbaa !67
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kq
  store i8 %i.kj, ptr %i.ks, align 1, !tbaa !62
  %i.kt = or disjoint i8 %i.ki, 48
  %i.ku = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.kv = add i64 %i.ku, 1                        ; 3 uses
  %i.kw = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.kx = icmp ugt i64 %i.kv, %i.kw
  br i1 %i.kx, label %bb.z, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i89

bb.z:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i87
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !64
  call void %i.kz(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.kv), !inline_history !31
  %.pre.i5.i91 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i92 = add i64 %.pre.i5.i91, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i89

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i89: ; preds = %bb.z, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i87
  %.pre-phi.i4.i90 = phi i64 [ %i.kv, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i87 ], [ %.pre2.i6.i92, %bb.z ]
  %i.la = phi i64 [ %i.ku, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i87 ], [ %.pre.i5.i91, %bb.z ]
  %i.lb = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i90, ptr %i.bj, align 8, !tbaa !67
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.la
  store i8 %i.kt, ptr %i.lc, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit95

bb.aa:                                            ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %.sroa.01.0.insert.ext.i.i85 = zext i32 %i.kg to i128
  store i128 %.sroa.01.0.insert.ext.i.i85, ptr %5, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %5, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit95

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit95: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i89, %bb.aa
  %i.ld = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %i.le = add i64 %i.ld, 1                        ; 3 uses
  %i.lf = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.lg = icmp ugt i64 %i.le, %i.lf
  br i1 %i.lg, label %bb.ab, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99

bb.ab:                                            ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit95
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !64
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.le), !inline_history !28
  %.pre.i97 = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i98 = add i64 %.pre.i97, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit95, %bb.ab
  %.pre-phi.i96 = phi i64 [ %i.le, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit95 ], [ %.pre2.i98, %bb.ab ]
  %i.lj = phi i64 [ %i.ld, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit95 ], [ %.pre.i97, %bb.ab ]
  %i.lk = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i96, ptr %i.bj, align 8, !tbaa !67
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lj
  store i8 32, ptr %i.ll, align 1, !tbaa !62
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !277 ; 2 uses
  %i.lo = add nsw i32 %i.ln, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.lp = icmp slt i32 %i.ln, -1900
  %spec.select.i.i.i100 = call i32 @llvm.abs.i32(i32 %i.lo, i1 true) ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.lr = icmp samesign ugt i32 %spec.select.i.i.i100, 99
  br i1 %i.lr, label %.lr.ph.i.i.i.i.i124, label %._crit_edge.i.i.i.i.i101

.lr.ph.i.i.i.i.i124:                              ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99, %.lr.ph.i.i.i.i.i124
  %.021.i.i.i.i.i125 = phi i32 [ %i.ly, %.lr.ph.i.i.i.i.i124 ], [ %spec.select.i.i.i100, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99 ] ; 3 uses
  %.01920.i.i.i.i.i126 = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i124 ], [ %i.lq, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99 ]
  %i.ls = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i126, i64 -2 ; 3 uses
  %i.lt = urem i32 %.021.i.i.i.i.i125, 100
  %i.lu = shl nuw nsw i32 %i.lt, 1
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.lv
  %i.lx = load i16, ptr %i.lw, align 1
  store i16 %i.lx, ptr %i.ls, align 1
  %i.ly = udiv i32 %.021.i.i.i.i.i125, 100        ; 2 uses
  %i.lz = icmp samesign ugt i32 %.021.i.i.i.i.i125, 9999
  br i1 %i.lz, label %.lr.ph.i.i.i.i.i124, label %._crit_edge.i.i.i.i.i101, !llvm.loop !29

._crit_edge.i.i.i.i.i101:                         ; preds = %.lr.ph.i.i.i.i.i124, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99
  %.019.lcssa.i.i.i.i.i102 = phi ptr [ %i.lq, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99 ], [ %i.ls, %.lr.ph.i.i.i.i.i124 ] ; 2 uses
  %.0.lcssa.i.i.i.i.i103 = phi i32 [ %spec.select.i.i.i100, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit99 ], [ %i.ly, %.lr.ph.i.i.i.i.i124 ] ; 3 uses
  %i.ma = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i103, 10
  br i1 %i.ma, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i101
  %i.mb = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i103 to i8
  %i.mc = or disjoint i8 %i.mb, 48
  %i.md = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i102, i64 -1 ; 2 uses
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i104

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i101
  %i.me = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i102, i64 -2 ; 2 uses
  %i.mf = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i103, 1
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 1
  store i16 %i.mi, ptr %i.me, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i104

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i104: ; preds = %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i.i.i105 = phi ptr [ %i.md, %bb.ac ], [ %i.me, %bb.ad ] ; 2 uses
  br i1 %i.lp, label %bb.ae, label %_ZN3fmt3v1110format_intC2Ei.exit.i106

bb.ae:                                            ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i104
  %i.mj = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i105, i64 -1 ; 2 uses
  store i8 45, ptr %i.mj, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i106

_ZN3fmt3v1110format_intC2Ei.exit.i106:            ; preds = %bb.ae, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i104
  %.0.i.i.i107 = phi ptr [ %i.mj, %bb.ae ], [ %.sroa.0.0.i.i.i.i.i105, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i104 ] ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i107, ptr %i.mk, align 8, !tbaa !279
  %i.ml = ptrtoint ptr %4 to i64
  %i.mm = ptrtoint ptr %.0.i.i.i107 to i64        ; 2 uses
  %i.mn = add i64 %i.ml, 21                       ; 3 uses
  %i.mo = sub i64 %i.mn, %i.mm
  %i.mp = getelementptr inbounds nuw i8, ptr %.0.i.i.i107, i64 %i.mo
  %.not24.i.i108 = icmp eq i64 %i.mn, %i.mm
  br i1 %.not24.i.i108, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit127, label %.lr.ph27.i.i109

.lr.ph27.i.i109:                                  ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i106
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i110 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i120, %.lr.ph27.i.i109
  %i.mr = phi i64 [ %.pre.i.i110, %.lr.ph27.i.i109 ], [ %i.nw, %._crit_edge.i.i120 ] ; 2 uses
  %.01925.i.i111 = phi ptr [ %.0.i.i.i107, %.lr.ph27.i.i109 ], [ %i.nx, %._crit_edge.i.i120 ] ; 9 uses
  %i.ms = ptrtoint ptr %.01925.i.i111 to i64      ; 2 uses
  %i.mt = sub i64 %i.mn, %i.ms                    ; 2 uses
  %i.mu = add i64 %i.mt, %i.mr                    ; 2 uses
  %i.mv = load i64, ptr %i.bl, align 8, !tbaa !66 ; 2 uses
  %i.mw = icmp ugt i64 %i.mu, %i.mv
  br i1 %i.mw, label %bb.ag, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i112

bb.ag:                                            ; preds = %bb.af
  %i.mx = load ptr, ptr %i.mq, align 8, !tbaa !64
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.mu), !inline_history !30
  %.pre30.i.i122 = load i64, ptr %i.bl, align 8, !tbaa !66
  %.pre31.i.i123 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i112

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i112: ; preds = %bb.ag, %bb.af
  %i.my = phi i64 [ %i.mr, %bb.af ], [ %.pre31.i.i123, %bb.ag ] ; 4 uses
  %i.mz = phi i64 [ %i.mv, %bb.af ], [ %.pre30.i.i122, %bb.ag ]
  %i.na = sub i64 %i.mz, %i.my
  %spec.select.i.i113 = call i64 @llvm.umin.i64(i64 %i.na, i64 %i.mt) ; 13 uses
  %i.nb = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.nc = ptrtoaddr ptr %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.my ; 7 uses
  %.not29.i.i114 = icmp eq i64 %spec.select.i.i113, 0
  br i1 %.not29.i.i114, label %._crit_edge.i.i120, label %iter.check276

iter.check276:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i112
  %min.iters.check263.a = icmp ult i64 %spec.select.i.i113, 4
  br i1 %min.iters.check263.a, label %.lr.ph.i.i115.preheader, label %vector.memcheck261

vector.memcheck261:                               ; preds = %iter.check276
  %i.ne = add i64 %i.my, %i.nc
  %i.nf = sub i64 %i.ms, %i.ne
  %diff.check262 = icmp ugt i64 %i.nf, -32
  br i1 %diff.check262, label %.lr.ph.i.i115.preheader, label %vector.main.loop.iter.check264

vector.main.loop.iter.check264:                   ; preds = %vector.memcheck261
  %min.iters.check265 = icmp ult i64 %spec.select.i.i113, 32
  br i1 %min.iters.check265, label %vec.epilog.ph280, label %vector.ph266

vector.ph266:                                     ; preds = %vector.main.loop.iter.check264
  %i.ng = and i64 %spec.select.i.i113, 28
  %n.vec267 = and i64 %spec.select.i.i113, -32    ; 4 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next272, %vector.body268 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.01925.i.i111, i64 %index269 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %wide.load270 = load <16 x i8>, ptr %i.nh, align 1, !tbaa !62
  %wide.load271 = load <16 x i8>, ptr %i.ni, align 1, !tbaa !62
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 %index269 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store <16 x i8> %wide.load270, ptr %i.nj, align 1, !tbaa !62
  store <16 x i8> %wide.load271, ptr %i.nk, align 1, !tbaa !62
  %index.next272 = add nuw i64 %index269, 32      ; 2 uses
  %i.nl = icmp eq i64 %index.next272, %n.vec267
  br i1 %i.nl, label %middle.block273, label %vector.body268, !llvm.loop !1180

middle.block273:                                  ; preds = %vector.body268
  %cmp.n274 = icmp eq i64 %spec.select.i.i113, %n.vec267
  br i1 %cmp.n274, label %._crit_edge.loopexit.i.i118, label %vec.epilog.iter.check278

vec.epilog.iter.check278:                         ; preds = %middle.block273
  %min.epilog.iters.check279 = icmp eq i64 %i.ng, 0
  br i1 %min.epilog.iters.check279, label %.lr.ph.i.i115.preheader, label %vec.epilog.ph280, !prof !107

vec.epilog.ph280:                                 ; preds = %vector.main.loop.iter.check264, %vec.epilog.iter.check278
  %vec.epilog.resume.val275 = phi i64 [ %n.vec267, %vec.epilog.iter.check278 ], [ 0, %vector.main.loop.iter.check264 ]
  %n.vec281 = and i64 %spec.select.i.i113, -4     ; 3 uses
  br label %vec.epilog.vector.body282

vec.epilog.vector.body282:                        ; preds = %vec.epilog.vector.body282, %vec.epilog.ph280
  %index283 = phi i64 [ %vec.epilog.resume.val275, %vec.epilog.ph280 ], [ %index.next285, %vec.epilog.vector.body282 ] ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.01925.i.i111, i64 %index283
  %wide.load284 = load <4 x i8>, ptr %i.nm, align 1, !tbaa !62
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 %index283
  store <4 x i8> %wide.load284, ptr %i.nn, align 1, !tbaa !62
  %index.next285 = add nuw i64 %index283, 4       ; 2 uses
  %i.no = icmp eq i64 %index.next285, %n.vec281
  br i1 %i.no, label %vec.epilog.middle.block286, label %vec.epilog.vector.body282, !llvm.loop !1181

vec.epilog.middle.block286:                       ; preds = %vec.epilog.vector.body282
  %cmp.n287 = icmp eq i64 %spec.select.i.i113, %n.vec281
  br i1 %cmp.n287, label %._crit_edge.loopexit.i.i118, label %.lr.ph.i.i115.preheader

.lr.ph.i.i115.preheader:                          ; preds = %vector.memcheck261, %iter.check276, %vec.epilog.iter.check278, %vec.epilog.middle.block286
  %.023.i.i116.ph = phi i64 [ 0, %iter.check276 ], [ 0, %vector.memcheck261 ], [ %n.vec267, %vec.epilog.iter.check278 ], [ %n.vec281, %vec.epilog.middle.block286 ] ; 3 uses
  %xtraiter301 = and i64 %spec.select.i.i113, 3   ; 2 uses
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %.lr.ph.i.i115.prol.loopexit, label %.lr.ph.i.i115.prol

.lr.ph.i.i115.prol:                               ; preds = %.lr.ph.i.i115.preheader, %.lr.ph.i.i115.prol
  %.023.i.i116.prol = phi i64 [ %i.ns, %.lr.ph.i.i115.prol ], [ %.023.i.i116.ph, %.lr.ph.i.i115.preheader ] ; 3 uses
  %prol.iter303 = phi i64 [ %prol.iter303.next, %.lr.ph.i.i115.prol ], [ 0, %.lr.ph.i.i115.preheader ]
  %i.np = getelementptr inbounds nuw i8, ptr %.01925.i.i111, i64 %.023.i.i116.prol
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !62
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.023.i.i116.prol
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !62
  %i.ns = add nuw i64 %.023.i.i116.prol, 1        ; 2 uses
  %prol.iter303.next = add i64 %prol.iter303, 1   ; 2 uses
  %prol.iter303.cmp.not = icmp eq i64 %prol.iter303.next, %xtraiter301
  br i1 %prol.iter303.cmp.not, label %.lr.ph.i.i115.prol.loopexit, label %.lr.ph.i.i115.prol, !llvm.loop !1182

.lr.ph.i.i115.prol.loopexit:                      ; preds = %.lr.ph.i.i115.prol, %.lr.ph.i.i115.preheader
  %.023.i.i116.unr = phi i64 [ %.023.i.i116.ph, %.lr.ph.i.i115.preheader ], [ %i.ns, %.lr.ph.i.i115.prol ]
  %i.nt = sub i64 %.023.i.i116.ph, %spec.select.i.i113
  %i.nu = icmp ugt i64 %i.nt, -4
  br i1 %i.nu, label %._crit_edge.loopexit.i.i118, label %.lr.ph.i.i115

._crit_edge.loopexit.i.i118:                      ; preds = %.lr.ph.i.i115.prol.loopexit, %.lr.ph.i.i115, %vec.epilog.middle.block286, %middle.block273
  %.pre32.i.i119 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %._crit_edge.i.i120

._crit_edge.i.i120:                               ; preds = %._crit_edge.loopexit.i.i118, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i112
  %i.nv = phi i64 [ %.pre32.i.i119, %._crit_edge.loopexit.i.i118 ], [ %i.my, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i112 ]
  %i.nw = add i64 %i.nv, %spec.select.i.i113      ; 2 uses
  store i64 %i.nw, ptr %i.bj, align 8, !tbaa !67
  %i.nx = getelementptr inbounds nuw i8, ptr %.01925.i.i111, i64 %spec.select.i.i113 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.nx, %i.mp
  br i1 %.not.i.i121, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit127, label %bb.af, !llvm.loop !3

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115.prol.loopexit, %.lr.ph.i.i115
  %.023.i.i116 = phi i64 [ %i.on, %.lr.ph.i.i115 ], [ %.023.i.i116.unr, %.lr.ph.i.i115.prol.loopexit ] ; 6 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.01925.i.i111, i64 %.023.i.i116
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !62
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.023.i.i116
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !62
  %i.ob = add nuw i64 %.023.i.i116, 1             ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.01925.i.i111, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !62
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ob
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !62
  %i.of = add nuw i64 %.023.i.i116, 2             ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.01925.i.i111, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !62
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.of
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !62
  %i.oj = add nuw i64 %.023.i.i116, 3             ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.01925.i.i111, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !62
  %i.om = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.oj
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !62
  %i.on = add nuw i64 %.023.i.i116, 4             ; 2 uses
  %exitcond.not.i.i117.3 = icmp eq i64 %i.on, %spec.select.i.i113
  br i1 %exitcond.not.i.i117.3, label %._crit_edge.loopexit.i.i118, label %.lr.ph.i.i115, !llvm.loop !1183

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit127: ; preds = %._crit_edge.i.i120, %_ZN3fmt3v1110format_intC2Ei.exit.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11C_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11C_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = srem i32 %i.b, 100                       ; 3 uses
  %or.cond.i = icmp sgt i32 %i.c, -1
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.c to i8    ; 2 uses
  %i.d = udiv i8 %.lhs.trunc.i, 10
  %i.e = urem i8 %.lhs.trunc.i, 10
  %i.f = or disjoint i8 %i.d, 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.i), !inline_history !31
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.i, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.o = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i, ptr %i.g, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 %i.f, ptr %i.q, align 1, !tbaa !62
  %i.r = or disjoint i8 %i.e, 48
  %i.s = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = load i64, ptr %i.j, align 8, !tbaa !66
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.t), !inline_history !31
  %.pre.i5.i = load i64, ptr %i.g, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.t, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.y = phi i64 [ %i.s, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.z = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i, ptr %i.g, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 %i.r, ptr %i.aa, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %.sroa.01.0.insert.ext.i.i = zext i32 %i.c to i128
  store i128 %.sroa.01.0.insert.ext.i.i, ptr %4, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %4, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11Y_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11Y_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277  ; 2 uses
  %i.c = add nsw i32 %i.b, 1900
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.d = icmp slt i32 %i.b, -1900
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.f = icmp samesign ugt i32 %spec.select.i.i.i, 99
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.a ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.h = urem i32 %.021.i.i.i.i.i, 100
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.j
  %i.l = load i16, ptr %i.k, align 1
  store i16 %i.l, ptr %i.g, align 1
  %i.m = udiv i32 %.021.i.i.i.i.i, 100            ; 2 uses
  %i.n = icmp samesign ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.g, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.o = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.q = or disjoint i8 %i.p, 48
  %i.r = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.q, ptr %i.r, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.t = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.r, %bb.b ], [ %i.s, %bb.c ] ; 2 uses
  br i1 %i.d, label %bb.d, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.x, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.x, %bb.d ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.y, align 8, !tbaa !279
  %i.z = ptrtoint ptr %4 to i64
  %i.aa = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ab = add i64 %i.z, 21                        ; 3 uses
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ac
  %.not24.i.i = icmp eq i64 %i.ab, %i.aa
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ae, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ah = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bm, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bn, %._crit_edge.i.i ] ; 9 uses
  %i.ai = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.aj = sub i64 %i.ab, %i.ai                    ; 2 uses
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = load i64, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !64
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ak), !inline_history !30
  %.pre30.i.i = load i64, ptr %i.af, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ae, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.ap = phi i64 [ %i.al, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.aq = sub i64 %i.ap, %i.ao
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.aj) ; 13 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.au = add i64 %i.ao, %i.as
  %i.av = sub i64 %i.ai, %i.au
  %diff.check = icmp ugt i64 %i.av, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <16 x i8>, ptr %i.ax, align 1, !tbaa !62
  %wide.load12 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <16 x i8> %wide.load, ptr %i.az, align 1, !tbaa !62
  store <16 x i8> %wide.load12, ptr %i.ba, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.bd, align 1, !tbaa !62
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1185

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %spec.select.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %.023.i.i.prol
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !62
  %i.bi = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1186

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %i.bj = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ae, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bl = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ao, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bm = add i64 %i.bl, %spec.select.i.i         ; 2 uses
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !67
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.ad
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %.023.i.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !62
  %i.br = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !62
  %i.bv = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !62
  %i.bz = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !62
  %i.cd = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cd, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1187

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11D_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11D_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !280
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %or.cond.i = icmp ult i32 %i.c, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.c to i8    ; 2 uses
  %i.d = udiv i8 %.lhs.trunc.i, 10
  %i.e = urem i8 %.lhs.trunc.i, 10
  %i.f = or disjoint i8 %i.d, 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.i), !inline_history !31
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.i, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.o = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.p = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i, ptr %i.g, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 %i.f, ptr %i.q, align 1, !tbaa !62
  %i.r = or disjoint i8 %i.e, 48
  %i.s = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.t = add i64 %i.s, 1                          ; 3 uses
  %i.u = load i64, ptr %i.j, align 8, !tbaa !66
end_hunk_18
begin_hunk_19_@_ZN6spdlog7details11S_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE
define linkonce_odr hidden void @_ZN6spdlog7details11S_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !284    ; 3 uses
  %or.cond.i = icmp ult i32 %i.a, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.a to i8    ; 2 uses
  %i.b = udiv i8 %.lhs.trunc.i, 10
  %i.c = urem i8 %.lhs.trunc.i, 10
  %i.d = or disjoint i8 %i.b, 48
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.g), !inline_history !31
  %.pre.i.i = load i64, ptr %i.e, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.g, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.m = phi i64 [ %i.f, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i, ptr %i.e, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 %i.d, ptr %i.o, align 1, !tbaa !62
  %i.p = or disjoint i8 %i.c, 48
  %i.q = load i64, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  %i.s = load i64, ptr %i.h, align 8, !tbaa !66
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.r), !inline_history !31
  %.pre.i5.i = load i64, ptr %i.e, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.r, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.w = phi i64 [ %i.q, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.x = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i, ptr %i.e, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 %i.p, ptr %i.y, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %.sroa.01.0.insert.ext.i.i = zext i32 %i.a to i128
  store i128 %.sroa.01.0.insert.ext.i.i, ptr %4, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %4, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11e_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11e_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload, 1000000000
  %i.c = sdiv i64 %.sroa.0.0.copyload, 1000000
  %.neg.i = mul i64 %i.b, 4294966296
  %i.d = add i64 %.neg.i, %i.c
  %i.e = trunc i64 %i.d to i32
  tail call void @_ZN6spdlog7details10fmt_helper4pad3IjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11f_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11f_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload, 1000000000
  %i.c = sdiv i64 %.sroa.0.0.copyload, 1000
  %.neg.i = mul nsw i64 %i.b, -1000000
  %i.d = add nsw i64 %.neg.i, %i.c
  tail call void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(i64 noundef %i.d, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11F_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11F_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8, !tbaa !68
  %.fr.i = freeze i64 %.sroa.0.0.copyload
  %i.b = srem i64 %.fr.i, 1000000000
  tail call void @_ZN6spdlog7details10fmt_helper8pad_uintImEEvT_jRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(i64 noundef %i.b, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(283) %3)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %i.b = sdiv i64 %.sroa.0.0.copyload.i, 1000000000
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.c = icmp slt i64 %.sroa.0.0.copyload.i, -999999999
  %spec.select.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.e = icmp samesign ugt i64 %spec.select.i.i.i, 99
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.a ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ]
  %i.f = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.g = urem i64 %.021.i.i.i.i.i, 100
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.h
  %i.j = load i16, ptr %i.i, align 1
  store i16 %i.j, ptr %i.f, align 1
  %i.k = udiv i64 %.021.i.i.i.i.i, 100            ; 2 uses
  %i.l = icmp samesign ugt i64 %.021.i.i.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.m = icmp samesign ult i64 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = trunc nuw nsw i64 %.0.lcssa.i.i.i.i.i to i8
  %i.o = or disjoint i8 %i.n, 48
  %i.p = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.o, ptr %i.p, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.r = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1
  store i16 %i.t, ptr %i.q, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  br i1 %i.c, label %bb.d, label %_ZN3fmt3v1110format_intC2El.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.u, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2El.exit.i

_ZN3fmt3v1110format_intC2El.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.u, %bb.d ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !279
  %i.w = ptrtoint ptr %4 to i64
  %i.x = ptrtoint ptr %.0.i.i.i to i64            ; 2 uses
  %i.y = add i64 %i.w, 21                         ; 3 uses
  %i.z = sub i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.z
  %.not24.i.i = icmp eq i64 %i.y, %i.x
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2El.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ae = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bj, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bk, %._crit_edge.i.i ] ; 9 uses
  %i.af = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ag = sub i64 %i.y, %i.af                     ; 2 uses
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !66 ; 2 uses
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !64
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ah), !inline_history !1188
  %.pre30.i.i = load i64, ptr %i.ac, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.al = phi i64 [ %i.ae, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.am = phi i64 [ %i.ai, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.an = sub i64 %i.am, %i.al
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ag) ; 13 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = add i64 %i.al, %i.ap
  %i.as = sub i64 %i.af, %i.ar
  %diff.check = icmp ugt i64 %i.as, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !62
  %wide.load14 = load <16 x i8>, ptr %i.av, align 1, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <16 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !62
  store <16 x i8> %wide.load14, ptr %i.ax, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.az, align 1, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.ba, align 1, !tbaa !62
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1190

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.023.i.i.prol
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !62
  %i.bf = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1191

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.prol ]
  %i.bg = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bi = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.al, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bj = add i64 %i.bi, %spec.select.i.i         ; 2 uses
  store i64 %i.bj, ptr %i.ab, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %i.aa
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.023.i.i
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !62
  %i.bo = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !62
  %i.bs = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !62
  %i.bw = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !62
  %i.ca = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ca, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1192

_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
.lr.ph27.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !282
  %i.b = icmp sgt i32 %.val, 11                   ; 2 uses
  %i.c = select i1 %i.b, ptr getelementptr inbounds nuw (i8, ptr @.str.96, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.97, i64 2) ; 2 uses
  %.str.96..str.97.i = select i1 %i.b, ptr @.str.96, ptr @.str.97
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.e, align 8, !tbaa !67
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.h = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.am, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.str.96..str.97.i, %.lr.ph27.i.i ], [ %i.an, %._crit_edge.i.i ] ; 9 uses
  %i.i = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.j = sub i64 %i.d, %i.i                       ; 2 uses
  %i.k = add i64 %i.j, %i.h                       ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !66   ; 2 uses
  %i.m = icmp ugt i64 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !64
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.k), !inline_history !23
  %.pre30.i.i = load i64, ptr %i.f, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.e, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.o = phi i64 [ %i.h, %bb.a ], [ %.pre31.i.i, %bb.b ] ; 4 uses
  %i.p = phi i64 [ %i.l, %bb.a ], [ %.pre30.i.i, %bb.b ]
  %i.q = sub i64 %i.p, %i.o
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.j) ; 13 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
end_hunk_19
begin_hunk_20_@_ZN6spdlog7details11z_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
bb.g:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit18, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.0 = phi i32 [ %i.l, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.j, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit18 ] ; 3 uses
  %i.ai = udiv i32 %.0, 60                        ; 2 uses
  %i.aj = urem i32 %.0, 60
  %or.cond.i = icmp samesign ult i32 %.0, 6000
  br i1 %or.cond.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.lhs.trunc.i = trunc nuw nsw i32 %i.ai to i8   ; 2 uses
  %i.ak = udiv i8 %.lhs.trunc.i, 10
  %i.al = urem i8 %.lhs.trunc.i, 10
  %i.am = or disjoint i8 %i.ak, 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %i.ap = add i64 %i.ao, 1                        ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !66
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ap), !inline_history !31
  %.pre.i.i = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.i, %bb.h
  %.pre-phi.i.i = phi i64 [ %i.ap, %bb.h ], [ %.pre2.i.i, %bb.i ]
  %i.av = phi i64 [ %i.ao, %bb.h ], [ %.pre.i.i, %bb.i ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i, ptr %i.an, align 8, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.am, ptr %i.ax, align 1, !tbaa !62
  %i.ay = or disjoint i8 %i.al, 48
  %i.az = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !66
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ba), !inline_history !31
  %.pre.i5.i = load i64, ptr %i.an, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.j, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.ba, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.j ]
  %i.bf = phi i64 [ %i.az, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.j ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i, ptr %i.an, align 8, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  store i8 %i.ay, ptr %i.bh, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %.sroa.01.0.insert.ext.i.i = zext nneg i32 %i.ai to i128
  store i128 %.sroa.01.0.insert.ext.i.i, ptr %4, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %4, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22

bb.l:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !64
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bk), !inline_history !28
  %.pre.i20 = load i64, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %.pre2.i21 = add i64 %.pre.i20, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, %bb.l
  %.pre-phi.i19 = phi i64 [ %i.bk, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre2.i21, %bb.l ]
  %i.bq = phi i64 [ %i.bj, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre.i20, %bb.l ]
  %i.br = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i19, ptr %i.bi, align 8, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 58, ptr %i.bs, align 1, !tbaa !62
  %.lhs.trunc.i25 = trunc nuw nsw i32 %i.aj to i8 ; 2 uses
  %i.bt = udiv i8 %.lhs.trunc.i25, 10
  %i.bu = urem i8 %.lhs.trunc.i25, 10
  %i.bv = or disjoint i8 %i.bt, 48
  %i.bw = load i64, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %i.by = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.bz = icmp ugt i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.m, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i26

bb.m:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !64
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bx), !inline_history !31
  %.pre.i.i32 = load i64, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i33 = add i64 %.pre.i.i32, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i26

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i26: ; preds = %bb.m, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22
  %.pre-phi.i.i27 = phi i64 [ %i.bx, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22 ], [ %.pre2.i.i33, %bb.m ]
  %i.cc = phi i64 [ %i.bw, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit22 ], [ %.pre.i.i32, %bb.m ]
  %i.cd = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i27, ptr %i.bi, align 8, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cc
  store i8 %i.bv, ptr %i.ce, align 1, !tbaa !62
  %i.cf = load i64, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %i.cg = add i64 %i.cf, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34

bb.n:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i26
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !64
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cg), !inline_history !31
  %.pre.i5.i30 = load i64, ptr %i.bi, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i31 = add i64 %.pre.i5.i30, 1
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i26, %bb.n
  %.pre-phi.i4.i29 = phi i64 [ %i.cg, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i26 ], [ %.pre2.i6.i31, %bb.n ]
  %i.cl = phi i64 [ %i.cf, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i26 ], [ %.pre.i5.i30, %bb.n ]
  %i.cm = or disjoint i8 %i.bu, 48
  %i.cn = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i29, ptr %i.bi, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !62
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details13pid_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details13pid_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = tail call noundef i32 @getpid() #39      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.c = icmp ugt i32 %i.a, 99
  br i1 %i.c, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i32 [ %i.j, %.lr.ph.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ]
  %i.d = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.e = urem i32 %.021.i.i.i.i, 100
  %i.f = shl nuw nsw i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.g
  %i.i = load i16, ptr %i.h, align 1
  store i16 %i.i, ptr %i.d, align 1
  %i.j = udiv i32 %.021.i.i.i.i, 100              ; 2 uses
  %i.k = icmp ugt i32 %.021.i.i.i.i, 9999
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.d, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i32 [ %i.a, %bb.a ], [ %i.j, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.l = icmp samesign ult i32 %.0.lcssa.i.i.i.i, 10
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = trunc nuw nsw i32 %.0.lcssa.i.i.i.i to i8
  %i.n = or disjoint i8 %i.m, 48
  %i.o = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.n, ptr %i.o, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.q = shl nuw nsw i32 %.0.lcssa.i.i.i.i, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1
  store i16 %i.t, ptr %i.p, align 1
  br label %_ZN3fmt3v1110format_intC2Ej.exit.i

_ZN3fmt3v1110format_intC2Ej.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.o, %bb.b ], [ %i.p, %bb.c ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.u, align 8, !tbaa !279
  %i.v = ptrtoint ptr %4 to i64
  %i.w = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64   ; 2 uses
  %i.x = add i64 %i.v, 21                         ; 3 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.y
  %.not24.i.i = icmp eq i64 %i.x, %i.w
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ej.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.aa, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ad = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bi, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bj, %._crit_edge.i.i ] ; 9 uses
  %i.ae = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.af = sub i64 %i.x, %i.ae                     ; 2 uses
  %i.ag = add i64 %i.af, %i.ad                    ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !64
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ag), !inline_history !32
  %.pre30.i.i = load i64, ptr %i.ab, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.aa, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ak = phi i64 [ %i.ad, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.am = sub i64 %i.al, %i.ak
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.af) ; 13 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = add i64 %i.ak, %i.ao
  %i.ar = sub i64 %i.ae, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !62
  %wide.load14 = load <16 x i8>, ptr %i.au, align 1, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !62
  store <16 x i8> %wide.load14, ptr %i.aw, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.az, align 1, !tbaa !62
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1202

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.023.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !62
  %i.be = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1203

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.aa, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bh = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ak, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bi = add i64 %i.bh, %spec.select.i.i         ; 2 uses
  store i64 %i.bi, ptr %i.aa, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.z
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bz, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.023.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !62
  %i.bn = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !62
  %i.br = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !62
  %i.bv = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !62
  %i.bz = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bz, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1204

_ZN6spdlog7details10fmt_helper10append_intIjEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ej.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !287
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200  ; 3 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not24.i.i, label %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit_crit_edge, label %.lr.ph27.i.i

._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !67
  br label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit

.lr.ph27.i.i:                                     ; preds = %bb.b
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.l = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.aq, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.e, %.lr.ph27.i.i ], [ %i.ar, %._crit_edge.i.i ] ; 9 uses
  %i.m = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.n = sub i64 %i.h, %i.m                       ; 2 uses
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = load i64, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !64
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.o), !inline_history !23
  %.pre30.i.i = load i64, ptr %i.j, align 8, !tbaa !66
end_hunk_20
begin_hunk_21_@_ZN6spdlog7details25source_location_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.s, %i.w
  %i.z = sub i64 %i.m, %i.y
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check42 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <16 x i8>, ptr %i.ab, align 1, !tbaa !62
  %wide.load43 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load, ptr %i.ad, align 1, !tbaa !62
  store <16 x i8> %wide.load43, ptr %i.ae, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index45
  %wide.load46 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %index45
  store <4 x i8> %wide.load46, ptr %i.ah, align 1, !tbaa !62
  %index.next47 = add nuw i64 %index45, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next47, %n.vec44
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1206

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %spec.select.i.i, %n.vec44
  br i1 %cmp.n48, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec44, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i.prol
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !62
  %i.am = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1207

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.s, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aq = add i64 %i.ap, %spec.select.i.i         ; 3 uses
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i
  store i8 %i.at, ptr %i.au, align 1, !tbaa !62
  %i.av = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !62
  %i.az = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !62
  %i.bd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !62
  %i.bh = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bh, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1208

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit_crit_edge
  %i.bi = phi i64 [ %.pre, %._ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit_crit_edge ], [ %i.aq, %._crit_edge.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bk = add i64 %i.bi, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !66
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.e:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !64
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bk), !inline_history !28
  %.pre.i = load i64, ptr %i.bj, align 8, !tbaa !67 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, %bb.e
  %.pre-phi.i = phi i64 [ %i.bk, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre2.i, %bb.e ]
  %i.bq = phi i64 [ %i.bi, %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre.i, %bb.e ]
  %i.br = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.bj, align 8, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 58, ptr %i.bs, align 1, !tbaa !62
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !288 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.bu = icmp slt i32 %i.bt, 0
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 false) ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.bw = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.cd, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %i.bv, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ]
  %i.bx = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.by = urem i32 %.021.i.i.i.i.i, 100
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 1
  store i16 %i.cc, ptr %i.bx, align 1
  %i.cd = udiv i32 %.021.i.i.i.i.i, 100           ; 2 uses
  %i.ce = icmp ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.bx, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %i.cd, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.cf = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.cf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cg = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.ck = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 1
  store i16 %i.cn, ptr %i.cj, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ci, %bb.f ], [ %i.cj, %bb.g ] ; 2 uses
  br i1 %i.bu, label %bb.h, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.h:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.co, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.h, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.co, %bb.h ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.cp, align 8, !tbaa !279
  %i.cq = ptrtoint ptr %4 to i64
  %i.cr = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.cs = add i64 %i.cq, 21                       ; 3 uses
  %i.ct = sub i64 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ct
  %.not24.i.i11 = icmp eq i64 %i.cs, %i.cr
  br i1 %.not24.i.i11, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i12

.lr.ph27.i.i12:                                   ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i13 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i23, %.lr.ph27.i.i12
  %i.cw = phi i64 [ %.pre.i.i13, %.lr.ph27.i.i12 ], [ %i.eb, %._crit_edge.i.i23 ] ; 2 uses
  %.01925.i.i14 = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i12 ], [ %i.ec, %._crit_edge.i.i23 ] ; 9 uses
  %i.cx = ptrtoint ptr %.01925.i.i14 to i64       ; 2 uses
  %i.cy = sub i64 %i.cs, %i.cx                    ; 2 uses
  %i.cz = add i64 %i.cy, %i.cw                    ; 2 uses
  %i.da = load i64, ptr %i.bl, align 8, !tbaa !66 ; 2 uses
  %i.db = icmp ugt i64 %i.cz, %i.da
  br i1 %i.db, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15

bb.j:                                             ; preds = %bb.i
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !64
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cz), !inline_history !30
  %.pre30.i.i25 = load i64, ptr %i.bl, align 8, !tbaa !66
  %.pre31.i.i26 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15: ; preds = %bb.j, %bb.i
  %i.dd = phi i64 [ %i.cw, %bb.i ], [ %.pre31.i.i26, %bb.j ] ; 4 uses
  %i.de = phi i64 [ %i.da, %bb.i ], [ %.pre30.i.i25, %bb.j ]
  %i.df = sub i64 %i.de, %i.dd
  %spec.select.i.i16 = call i64 @llvm.umin.i64(i64 %i.df, i64 %i.cy) ; 13 uses
  %i.dg = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dd ; 7 uses
  %.not29.i.i17 = icmp eq i64 %spec.select.i.i16, 0
  br i1 %.not29.i.i17, label %._crit_edge.i.i23, label %iter.check64

iter.check64:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15
  %min.iters.check51 = icmp ult i64 %spec.select.i.i16, 4
  br i1 %min.iters.check51, label %.lr.ph.i.i18.preheader, label %vector.memcheck49

vector.memcheck49:                                ; preds = %iter.check64
  %i.dj = add i64 %i.dd, %i.dh
  %i.dk = sub i64 %i.cx, %i.dj
  %diff.check50 = icmp ugt i64 %i.dk, -32
  br i1 %diff.check50, label %.lr.ph.i.i18.preheader, label %vector.main.loop.iter.check52

vector.main.loop.iter.check52:                    ; preds = %vector.memcheck49
  %min.iters.check53 = icmp ult i64 %spec.select.i.i16, 32
  br i1 %min.iters.check53, label %vec.epilog.ph68, label %vector.ph54

vector.ph54:                                      ; preds = %vector.main.loop.iter.check52
  %i.dl = and i64 %spec.select.i.i16, 28
  %n.vec55 = and i64 %spec.select.i.i16, -32      ; 4 uses
  br label %vector.body56

vector.body56:                                    ; preds = %vector.body56, %vector.ph54
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next60, %vector.body56 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %index57 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load58.a = load <16 x i8>, ptr %i.dm, align 1, !tbaa !62
  %wide.load59 = load <16 x i8>, ptr %i.dn, align 1, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 %index57 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <16 x i8> %wide.load58.a, ptr %i.do, align 1, !tbaa !62
  store <16 x i8> %wide.load59, ptr %i.dp, align 1, !tbaa !62
  %index.next60 = add nuw i64 %index57, 32        ; 2 uses
  %i.dq = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.dq, label %middle.block61, label %vector.body56, !llvm.loop !1209

middle.block61:                                   ; preds = %vector.body56
  %cmp.n62 = icmp eq i64 %spec.select.i.i16, %n.vec55
  br i1 %cmp.n62, label %._crit_edge.loopexit.i.i21, label %vec.epilog.iter.check66

vec.epilog.iter.check66:                          ; preds = %middle.block61
  %min.epilog.iters.check67 = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check67, label %.lr.ph.i.i18.preheader, label %vec.epilog.ph68, !prof !107

vec.epilog.ph68:                                  ; preds = %vector.main.loop.iter.check52, %vec.epilog.iter.check66
  %vec.epilog.resume.val63 = phi i64 [ %n.vec55, %vec.epilog.iter.check66 ], [ 0, %vector.main.loop.iter.check52 ]
  %n.vec69 = and i64 %spec.select.i.i16, -4       ; 3 uses
  br label %vec.epilog.vector.body70

vec.epilog.vector.body70:                         ; preds = %vec.epilog.vector.body70, %vec.epilog.ph68
  %index71 = phi i64 [ %vec.epilog.resume.val63, %vec.epilog.ph68 ], [ %index.next73, %vec.epilog.vector.body70 ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %index71
  %wide.load72 = load <4 x i8>, ptr %i.dr, align 1, !tbaa !62
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 %index71
  store <4 x i8> %wide.load72, ptr %i.ds, align 1, !tbaa !62
  %index.next73 = add nuw i64 %index71, 4         ; 2 uses
  %i.dt = icmp eq i64 %index.next73, %n.vec69
  br i1 %i.dt, label %vec.epilog.middle.block74, label %vec.epilog.vector.body70, !llvm.loop !1210

vec.epilog.middle.block74:                        ; preds = %vec.epilog.vector.body70
  %cmp.n75 = icmp eq i64 %spec.select.i.i16, %n.vec69
  br i1 %cmp.n75, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18.preheader

.lr.ph.i.i18.preheader:                           ; preds = %vector.memcheck49, %iter.check64, %vec.epilog.iter.check66, %vec.epilog.middle.block74
  %.023.i.i19.ph = phi i64 [ 0, %iter.check64 ], [ 0, %vector.memcheck49 ], [ %n.vec55, %vec.epilog.iter.check66 ], [ %n.vec69, %vec.epilog.middle.block74 ] ; 3 uses
  %xtraiter79 = and i64 %spec.select.i.i16, 3     ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol

.lr.ph.i.i18.prol:                                ; preds = %.lr.ph.i.i18.preheader, %.lr.ph.i.i18.prol
  %.023.i.i19.prol = phi i64 [ %i.dx, %.lr.ph.i.i18.prol ], [ %.023.i.i19.ph, %.lr.ph.i.i18.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i.i18.prol ], [ 0, %.lr.ph.i.i18.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %.023.i.i19.prol
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !62
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 %.023.i.i19.prol
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !62
  %i.dx = add nuw i64 %.023.i.i19.prol, 1         ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i.i18.prol.loopexit, label %.lr.ph.i.i18.prol, !llvm.loop !1211

.lr.ph.i.i18.prol.loopexit:                       ; preds = %.lr.ph.i.i18.prol, %.lr.ph.i.i18.preheader
  %.023.i.i19.unr = phi i64 [ %.023.i.i19.ph, %.lr.ph.i.i18.preheader ], [ %i.dx, %.lr.ph.i.i18.prol ]
  %i.dy = sub i64 %.023.i.i19.ph, %spec.select.i.i16
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18

._crit_edge.loopexit.i.i21:                       ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18, %vec.epilog.middle.block74, %middle.block61
  %.pre32.i.i22 = load i64, ptr %i.bj, align 8, !tbaa !67
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %._crit_edge.loopexit.i.i21, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15
  %i.ea = phi i64 [ %.pre32.i.i22, %._crit_edge.loopexit.i.i21 ], [ %i.dd, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i15 ]
  %i.eb = add i64 %i.ea, %spec.select.i.i16       ; 2 uses
  store i64 %i.eb, ptr %i.bj, align 8, !tbaa !67
  %i.ec = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %spec.select.i.i16 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.ec, %i.cu
  br i1 %.not.i.i24, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.i, !llvm.loop !3

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i.i18.prol.loopexit, %.lr.ph.i.i18
  %.023.i.i19 = phi i64 [ %i.es, %.lr.ph.i.i18 ], [ %.023.i.i19.unr, %.lr.ph.i.i18.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %.023.i.i19
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !62
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 %.023.i.i19
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !62
  %i.eg = add nuw i64 %.023.i.i19, 1              ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !62
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eg
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !62
  %i.ek = add nuw i64 %.023.i.i19, 2              ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !62
  %i.en = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ek
  store i8 %i.em, ptr %i.en, align 1, !tbaa !62
  %i.eo = add nuw i64 %.023.i.i19, 3              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01925.i.i14, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eo
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !62
  %i.es = add nuw i64 %.023.i.i19, 4              ; 2 uses
  %exitcond.not.i.i20.3 = icmp eq i64 %i.es, %spec.select.i.i16
  br i1 %exitcond.not.i.i20.3, label %._crit_edge.loopexit.i.i21, label %.lr.ph.i.i18, !llvm.loop !1212

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i23, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details24short_filename_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details24short_filename_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !287
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200  ; 2 uses
  %i.f = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.e, i32 noundef 47) #44 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = select i1 %.not.i, ptr %i.e, ptr %i.g    ; 3 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #44 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.i, 0
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.b
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.l, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.o = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.at, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.h, %.lr.ph27.i.i ], [ %i.au, %._crit_edge.i.i ] ; 9 uses
  %i.p = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.q = sub i64 %i.k, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %i.s = load i64, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !64
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.r), !inline_history !23
end_hunk_21
begin_hunk_22_@_ZN6spdlog7details25source_filename_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.s, %i.w
  %i.z = sub i64 %i.m, %i.y
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <16 x i8>, ptr %i.ab, align 1, !tbaa !62
  %wide.load12 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load, ptr %i.ad, align 1, !tbaa !62
  store <16 x i8> %wide.load12, ptr %i.ae, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.ah, align 1, !tbaa !62
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1218

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %spec.select.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i.prol
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !62
  %i.am = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1219

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.s, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aq = add i64 %i.ap, %spec.select.i.i         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i
  store i8 %i.at, ptr %i.au, align 1, !tbaa !62
  %i.av = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !62
  %i.az = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !62
  %i.bd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !62
  %i.bh = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bh, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1220

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details24source_linenum_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details24source_linenum_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !287  ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.d = icmp slt i32 %i.b, 0
  %spec.select.i.i.i = tail call i32 @llvm.abs.i32(i32 %i.b, i1 false) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.f = icmp ugt i32 %spec.select.i.i.i, 99
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.021.i.i.i.i.i = phi i32 [ %i.m, %.lr.ph.i.i.i.i.i ], [ %spec.select.i.i.i, %bb.b ] ; 3 uses
  %.01920.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ]
  %i.g = getelementptr inbounds i8, ptr %.01920.i.i.i.i.i, i64 -2 ; 3 uses
  %i.h = urem i32 %.021.i.i.i.i.i, 100
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.j
  %i.l = load i16, ptr %i.k, align 1
  store i16 %i.l, ptr %i.g, align 1
  %i.m = udiv i32 %.021.i.i.i.i.i, 100            ; 2 uses
  %i.n = icmp ugt i32 %.021.i.i.i.i.i, 9999
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.019.lcssa.i.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.g, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.b ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.o = icmp samesign ult i32 %.0.lcssa.i.i.i.i.i, 10
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.p = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i to i8
  %i.q = or disjoint i8 %i.p, 48
  %i.r = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.q, ptr %i.r, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.s = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i.i, i64 -2 ; 2 uses
  %i.t = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i, 1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.u
  %i.w = load i16, ptr %i.v, align 1
  store i16 %i.w, ptr %i.s, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  br i1 %i.d, label %bb.e, label %_ZN3fmt3v1110format_intC2Ei.exit.i

bb.e:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.x, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Ei.exit.i

_ZN3fmt3v1110format_intC2Ei.exit.i:               ; preds = %bb.e, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.x, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedIjEEPcT_.exit.i.i.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.y, align 8, !tbaa !279
  %i.z = ptrtoint ptr %4 to i64
  %i.aa = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ab = add i64 %i.z, 21                        ; 3 uses
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.ac
  %.not24.i.i = icmp eq i64 %i.ab, %i.aa
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Ei.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ae, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ah = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bm, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bn, %._crit_edge.i.i ] ; 9 uses
  %i.ai = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.aj = sub i64 %i.ab, %i.ai                    ; 2 uses
  %i.ak = add i64 %i.aj, %i.ah                    ; 2 uses
  %i.al = load i64, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.g, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !64
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ak), !inline_history !30
  %.pre30.i.i = load i64, ptr %i.af, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ae, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ao = phi i64 [ %i.ah, %bb.f ], [ %.pre31.i.i, %bb.g ] ; 4 uses
  %i.ap = phi i64 [ %i.al, %bb.f ], [ %.pre30.i.i, %bb.g ]
  %i.aq = sub i64 %i.ap, %i.ao
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.aj) ; 13 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.au = add i64 %i.ao, %i.as
  %i.av = sub i64 %i.ai, %i.au
  %diff.check = icmp ugt i64 %i.av, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check16 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <16 x i8>, ptr %i.ax, align 1, !tbaa !62
  %wide.load17 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <16 x i8> %wide.load, ptr %i.az, align 1, !tbaa !62
  store <16 x i8> %wide.load17, ptr %i.ba, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 %index19
  store <4 x i8> %wide.load20, ptr %i.bd, align 1, !tbaa !62
  %index.next21 = add nuw i64 %index19, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next21, %n.vec18
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1222

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %spec.select.i.i, %n.vec18
  br i1 %cmp.n22, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !62
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 %.023.i.i.prol
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !62
  %i.bi = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1223

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %i.bj = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ae, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bl = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ao, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bm = add i64 %i.bl, %spec.select.i.i         ; 2 uses
  store i64 %i.bm, ptr %i.ae, align 8, !tbaa !67
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.ad
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.f, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %.023.i.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !62
  %i.br = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !62
  %i.bv = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !62
  %i.bz = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !62
  %i.cd = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cd, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1224

_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Ei.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN6spdlog7details10fmt_helper10append_intIiEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details25source_funcname_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !287
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !298  ; 3 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.b
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.l = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.aq, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.e, %.lr.ph27.i.i ], [ %i.ar, %._crit_edge.i.i ] ; 9 uses
  %i.m = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.n = sub i64 %i.h, %i.m                       ; 2 uses
  %i.o = add i64 %i.n, %i.l                       ; 2 uses
  %i.p = load i64, ptr %i.j, align 8, !tbaa !66   ; 2 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !64
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.o), !inline_history !23
  %.pre30.i.i = load i64, ptr %i.j, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.d, %bb.c
  %i.s = phi i64 [ %i.l, %bb.c ], [ %.pre31.i.i, %bb.d ] ; 4 uses
  %i.t = phi i64 [ %i.p, %bb.c ], [ %.pre30.i.i, %bb.d ]
  %i.u = sub i64 %i.t, %i.s
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.n) ; 13 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %i.s, %i.w
  %i.z = sub i64 %i.m, %i.y
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <16 x i8>, ptr %i.ab, align 1, !tbaa !62
  %wide.load12 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <16 x i8> %wide.load, ptr %i.ad, align 1, !tbaa !62
  store <16 x i8> %wide.load12, ptr %i.ae, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.ah, align 1, !tbaa !62
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1226

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %spec.select.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i.prol
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !62
  %i.am = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1227

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.i, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ap = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.s, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aq = add i64 %i.ap, %spec.select.i.i         ; 2 uses
  store i64 %i.aq, ptr %i.i, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.g
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.c, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.023.i.i
  store i8 %i.at, ptr %i.au, align 1, !tbaa !62
  %i.av = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !62
  %i.az = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !62
  %i.bd = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !62
  %i.bh = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bh, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1228

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.e = icmp sgt i64 %i.c, 99
  br i1 %i.e, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ]
  %i.f = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.g = urem i64 %.021.i.i.i.i, 100
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.h
  %i.j = load i16, ptr %i.i, align 1
  store i16 %i.j, ptr %i.f, align 1
  %i.k = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.l = icmp samesign ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %.sroa.speculated, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.m = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.o = or disjoint i8 %i.n, 48
  %i.p = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.o, ptr %i.p, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.r = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.s = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1
  store i16 %i.t, ptr %i.q, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.u, align 8, !tbaa !279
  %i.v = ptrtoint ptr %4 to i64
  %i.w = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64   ; 2 uses
  %i.x = add i64 %i.v, 21                         ; 3 uses
  %i.y = sub i64 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.y
  %.not24.i.i = icmp eq i64 %i.x, %i.w
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.aa, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ad = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bi, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bj, %._crit_edge.i.i ] ; 9 uses
  %i.ae = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.af = sub i64 %i.x, %i.ae                     ; 2 uses
  %i.ag = add i64 %i.af, %i.ad                    ; 2 uses
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !66 ; 2 uses
  %i.ai = icmp ugt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !64
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ag), !inline_history !41
  %.pre30.i.i = load i64, ptr %i.ab, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.aa, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ak = phi i64 [ %i.ad, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.al = phi i64 [ %i.ah, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.am = sub i64 %i.al, %i.ak
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.am, i64 %i.af) ; 13 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ao = ptrtoaddr ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aq = add i64 %i.ak, %i.ao
  %i.ar = sub i64 %i.ae, %i.aq
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <16 x i8>, ptr %i.at, align 1, !tbaa !62
  %wide.load22 = load <16 x i8>, ptr %i.au, align 1, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <16 x i8> %wide.load, ptr %i.av, align 1, !tbaa !62
  store <16 x i8> %wide.load22, ptr %i.aw, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index24
  %wide.load25 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 %index24
  store <4 x i8> %wide.load25, ptr %i.az, align 1, !tbaa !62
  %index.next26 = add nuw i64 %index24, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next26, %n.vec23
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1230

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %spec.select.i.i, %n.vec23
  br i1 %cmp.n27, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.023.i.i.prol
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !62
  %i.be = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1231

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.be, %.lr.ph.i.i.prol ]
  %i.bf = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.aa, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bh = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ak, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bi = add i64 %i.bh, %spec.select.i.i         ; 2 uses
  store i64 %i.bi, ptr %i.aa, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.z
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bz, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !62
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.023.i.i
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !62
  %i.bn = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !62
  %i.br = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !62
  %i.bv = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !62
  %i.bz = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bz, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1232

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000         ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.f = icmp sgt i64 %i.c, 99999
  br i1 %i.f, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.h = urem i64 %.021.i.i.i.i, 100
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.i
  %i.k = load i16, ptr %i.j, align 1
  store i16 %i.k, ptr %i.g, align 1
  %i.l = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.m = icmp samesign ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.n = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.p = or disjoint i8 %i.o, 48
  %i.q = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.s = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.s
  %i.u = load i16, ptr %i.t, align 1
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.r, %bb.c ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.v, align 8, !tbaa !279
  %i.w = ptrtoint ptr %4 to i64
  %i.x = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64   ; 2 uses
  %i.y = add i64 %i.w, 21                         ; 3 uses
  %i.z = sub i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.z
  %.not24.i.i = icmp eq i64 %i.y, %i.x
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ae = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bj, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bk, %._crit_edge.i.i ] ; 9 uses
  %i.af = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ag = sub i64 %i.y, %i.af                     ; 2 uses
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !66 ; 2 uses
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !64
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ah), !inline_history !41
  %.pre30.i.i = load i64, ptr %i.ac, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %i.ae, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.an = sub i64 %i.am, %i.al
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ag) ; 13 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = add i64 %i.al, %i.ap
  %i.as = sub i64 %i.af, %i.ar
  %diff.check = icmp ugt i64 %i.as, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !62
  %wide.load21 = load <16 x i8>, ptr %i.av, align 1, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <16 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !62
  store <16 x i8> %wide.load21, ptr %i.ax, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.az, align 1, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.ba, align 1, !tbaa !62
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1234

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %spec.select.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.023.i.i.prol
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !62
  %i.bf = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1235

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.prol ]
  %i.bg = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bi = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.al, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bj = add i64 %i.bi, %spec.select.i.i         ; 2 uses
  store i64 %i.bj, ptr %i.ab, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %i.aa
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.023.i.i
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !62
  %i.bo = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !62
  %i.bs = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !62
  %i.bw = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !62
  %i.ca = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ca, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1236

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1000EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000      ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.f = icmp sgt i64 %i.c, 99999999
  br i1 %i.f, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.h = urem i64 %.021.i.i.i.i, 100
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.i
  %i.k = load i16, ptr %i.j, align 1
  store i16 %i.k, ptr %i.g, align 1
  %i.l = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.m = icmp samesign ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.n = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.p = or disjoint i8 %i.o, 48
  %i.q = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.s = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.s
  %i.u = load i16, ptr %i.t, align 1
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.r, %bb.c ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.v, align 8, !tbaa !279
  %i.w = ptrtoint ptr %4 to i64
  %i.x = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64   ; 2 uses
  %i.y = add i64 %i.w, 21                         ; 3 uses
  %i.z = sub i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.z
  %.not24.i.i = icmp eq i64 %i.y, %i.x
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ae = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bj, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bk, %._crit_edge.i.i ] ; 9 uses
  %i.af = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ag = sub i64 %i.y, %i.af                     ; 2 uses
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !66 ; 2 uses
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !64
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ah), !inline_history !41
  %.pre30.i.i = load i64, ptr %i.ac, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %i.ae, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.an = sub i64 %i.am, %i.al
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ag) ; 13 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = add i64 %i.al, %i.ap
  %i.as = sub i64 %i.af, %i.ar
  %diff.check = icmp ugt i64 %i.as, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !62
  %wide.load21 = load <16 x i8>, ptr %i.av, align 1, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <16 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !62
  store <16 x i8> %wide.load21, ptr %i.ax, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.az, align 1, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.ba, align 1, !tbaa !62
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1238

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %spec.select.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.023.i.i.prol
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !62
  %i.bf = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1239

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.prol ]
  %i.bg = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bi = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.al, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bj = add i64 %i.bi, %spec.select.i.i         ; 2 uses
  store i64 %i.bj, ptr %i.ab, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %i.aa
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.023.i.i
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !62
  %i.bo = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !62
  %i.bs = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !62
  %i.bw = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !62
  %i.ca = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ca, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1240

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details14flag_formatterD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details17elapsed_formatterINS0_18null_scoped_padderENSt6chrono8durationIlSt5ratioILl1ELl1EEEEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.fmt::v11::format_int", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %i.b, align 8, !tbaa !68
  %i.c = sub nsw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = udiv i64 %.sroa.speculated, 1000000000   ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 21 ; 2 uses
  %i.f = icmp sgt i64 %i.c, 99999999999
  br i1 %i.f, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.01920.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds i8, ptr %.01920.i.i.i.i, i64 -2 ; 3 uses
  %i.h = urem i64 %.021.i.i.i.i, 100
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.i
  %i.k = load i16, ptr %i.j, align 1
  store i16 %i.k, ptr %i.g, align 1
  %i.l = udiv i64 %.021.i.i.i.i, 100              ; 2 uses
  %i.m = icmp samesign ugt i64 %.021.i.i.i.i, 9999
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.019.lcssa.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = phi i64 [ %i.d, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.n = icmp samesign ult i64 %.0.lcssa.i.i.i.i, 10
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = trunc nuw nsw i64 %.0.lcssa.i.i.i.i to i8
  %i.p = or disjoint i8 %i.o, 48
  %i.q = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -1 ; 2 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.019.lcssa.i.i.i.i, i64 -2 ; 2 uses
  %i.s = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.t = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.s
  %i.u = load i16, ptr %i.t, align 1
  store i16 %i.u, ptr %i.r, align 1
  br label %_ZN3fmt3v1110format_intC2Em.exit.i

_ZN3fmt3v1110format_intC2Em.exit.i:               ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.q, %bb.b ], [ %i.r, %bb.c ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.v, align 8, !tbaa !279
  %i.w = ptrtoint ptr %4 to i64
  %i.x = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64   ; 2 uses
  %i.y = add i64 %i.w, 21                         ; 3 uses
  %i.z = sub i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.z
  %.not24.i.i = icmp eq i64 %i.y, %i.x
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2Em.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.ae = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bj, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph27.i.i ], [ %i.bk, %._crit_edge.i.i ] ; 9 uses
  %i.af = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ag = sub i64 %i.y, %i.af                     ; 2 uses
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !66 ; 2 uses
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !64
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ah), !inline_history !41
  %.pre30.i.i = load i64, ptr %i.ac, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %i.ae, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.an = sub i64 %i.am, %i.al
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ag) ; 13 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = add i64 %i.al, %i.ap
  %i.as = sub i64 %i.af, %i.ar
  %diff.check = icmp ugt i64 %i.as, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !62
  %wide.load21 = load <16 x i8>, ptr %i.av, align 1, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <16 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !62
  store <16 x i8> %wide.load21, ptr %i.ax, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1241

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index23
  %wide.load24 = load <4 x i8>, ptr %i.az, align 1, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %index23
  store <4 x i8> %wide.load24, ptr %i.ba, align 1, !tbaa !62
  %index.next25 = add nuw i64 %index23, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next25, %n.vec22
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1242

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %spec.select.i.i, %n.vec22
  br i1 %cmp.n26, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bf, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.023.i.i.prol
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !62
  %i.bf = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1243

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bf, %.lr.ph.i.i.prol ]
  %i.bg = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ab, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bi = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.al, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bj = add i64 %i.bi, %spec.select.i.i         ; 2 uses
  store i64 %i.bj, ptr %i.ab, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %i.aa
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.023.i.i
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !62
  %i.bo = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !62
  %i.bs = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !62
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !62
  %i.bw = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !62
  %i.ca = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ca, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1244

_ZN6spdlog7details10fmt_helper10append_intImEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2Em.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details19aggregate_formatterD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6spdlog7details19aggregate_formatterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !62
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #41
  br label %_ZN6spdlog7details19aggregate_formatterD2Ev.exit

_ZN6spdlog7details19aggregate_formatterD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details19aggregate_formatter6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 2 uses
  %.not24.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.a
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.g, align 8, !tbaa !67
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.j = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.ao, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %i.b, %.lr.ph27.i.i ], [ %i.ap, %._crit_edge.i.i ] ; 9 uses
  %i.k = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.l = sub i64 %i.f, %i.k                       ; 2 uses
  %i.m = add i64 %i.l, %i.j                       ; 2 uses
  %i.n = load i64, ptr %i.h, align 8, !tbaa !66   ; 2 uses
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !64
end_hunk_22
